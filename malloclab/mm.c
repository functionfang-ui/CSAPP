/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "FF",
    /* First member's full name */
    "Fang Xiaokun",
    /* First member's email address */
    "2413078294@qq.com",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WSIZE        4
#define DSIZE        8
#define CHUNKSIZE   (1<<9)
#define BIG_PAYLOAD  80

#define MAX(x, y)   ((x) > (y)? (x) : (y))

#define PACK(size, alloc)   ((size) | (alloc))

#define GET(p)      (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_ALLOC(p)    (GET(p) & 0x1)

#define HDRP(bp)    ((char *)(bp) - WSIZE)
#define FTRP(bp)    ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

#define NEXT_BLKP(bp)   ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

#define PRED_P(fbp)     ((char *)(fbp))
#define SUCC_P(fbp)     ((char *)(fbp + WSIZE))

#define PRED_BLKP(fbp)  (*(char **)(fbp))
#define SUCC_BLKP(fbp)  (*(char **)(fbp + WSIZE))

void *sfl(int index)
{
    if(0 <= index || index <= 15) return (mem_heap_lo() + index * WSIZE);
    return NULL;
}

void insert_node(void *fbp, size_t size)
{
    int index = 0;
    void *target = NULL, *pred_target = NULL;
    while((index < 15) && (size > 1)){
        index++;
        size >>= 1;
    }
    target = (void *)*(char **)sfl(index);
    while((target != NULL) && (size > GET_SIZE(HDRP(target)))){
        pred_target = target;
        target = SUCC_BLKP(target);
    }

    if(target && pred_target){
        PUT(PRED_P(fbp), pred_target);
        PUT(SUCC_P(pred_target), fbp);
        PUT(SUCC_P(fbp), target);
        PUT(PRED_P(target), fbp);
    }
    else if(target && !pred_target){
        PUT(SUCC_P(fbp), target);
        PUT(PRED_P(target), fbp);
        PUT(PRED_P(fbp), NULL);
        PUT(sfl(index), fbp);
    }
    else if(!target && pred_target){
        PUT(PRED_P(fbp), pred_target);
        PUT(SUCC_P(pred_target), fbp);
        PUT(SUCC_P(fbp), NULL);
    }
    else{
        PUT(PRED_P(fbp), NULL);
        PUT(SUCC_P(fbp), NULL);
        PUT(sfl(index), fbp);
    }
}

void delete_node(void *fbp)
{
    if(fbp == NULL) return;
    int index = 0;
    size_t size = GET_SIZE(HDRP(fbp));
    while ((index < 15) && (size > 1)){
        index++;
        size >>=1;
    }

    void *FBP_SUCC_BLKP = SUCC_BLKP(fbp);
    void *FBP_PRED_BLKP = PRED_BLKP(fbp);

    if(FBP_PRED_BLKP && FBP_SUCC_BLKP){
        PUT(PRED_P(SUCC_BLKP(fbp)), PRED_BLKP(fbp));
        PUT(SUCC_P(PRED_BLKP(fbp)), SUCC_BLKP(fbp));
    }
    else if(!FBP_PRED_BLKP && FBP_SUCC_BLKP){
        PUT(PRED_P(SUCC_BLKP(fbp)), NULL);
        PUT(sfl(index), SUCC_BLKP(fbp));
    }
    else if(FBP_PRED_BLKP && !FBP_SUCC_BLKP){
        PUT(SUCC_P(PRED_BLKP(fbp)), NULL);
    }
    else{
        PUT(sfl(index), NULL);
    }
}

void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if(prev_alloc && next_alloc){
        return bp;
    }
    else if(prev_alloc && !next_alloc){
        delete_node(bp);
        delete_node(NEXT_BLKP(bp));

        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if(!prev_alloc && next_alloc){
        delete_node(bp);
        delete_node(PREV_BLKP(bp));

        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    else{
        delete_node(bp);
        delete_node(PREV_BLKP(bp));
        delete_node(NEXT_BLKP(bp));

        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    insert_node(bp, size);
    return bp;
}

void *extend_heap(size_t size)
{
    char *fbp;
    size_t asize = ALIGN(size);
    if((long)(fbp = mem_sbrk(asize)) == -1)
        return NULL;

    PUT(HDRP(fbp), PACK(size, 0));
    PUT(FTRP(fbp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(fbp)), PACK(0, 1));
    insert_node(fbp, asize);

    return coalesce(fbp);
}

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    void *heap_listp = mem_sbrk(16 * WSIZE);
    for(int i = 0; i < 16; i++)
        PUT(sfl(i), NULL);

    heap_listp = mem_sbrk(4*WSIZE);
    PUT(heap_listp, 0);
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1));
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));

    if(extend_heap(CHUNKSIZE/4) == NULL)
        return -1;
    return 0;
}

void *place(void *fbp, size_t asize)
{
    size_t block_size = GET_SIZE(HDRP(fbp));
    size_t left_size = block_size - asize;
    delete_node(fbp);

    if(left_size < 2*DSIZE){
        PUT(HDRP(fbp), PACK(block_size, 1));
        PUT(FTRP(fbp), PACK(block_size, 1));
    }
    else if (asize >= BIG_PAYLOAD){
        PUT(HDRP(fbp), PACK(left_size, 0));
        PUT(FTRP(fbp), PACK(left_size, 0));
        PUT(HDRP(NEXT_BLKP(fbp)), PACK(asize, 1));
        PUT(FTRP(NEXT_BLKP(fbp)), PACK(asize, 1));
        insert_node(fbp, left_size);
        return NEXT_BLKP(fbp);
    }
    else{
        PUT(HDRP(fbp), PACK(asize, 1));
        PUT(FTRP(fbp), PACK(asize, 1));
        PUT(HDRP(NEXT_BLKP(fbp)), PACK(left_size, 0));
        PUT(FTRP(NEXT_BLKP(fbp)), PACK(left_size, 0));
        insert_node(NEXT_BLKP(fbp), left_size);
    }
    return fbp;
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    if(size == 0)
        return NULL;

    size_t asize;
    
    if(size <= DSIZE)
        asize = 2*DSIZE;
    else
        asize = DSIZE + ALIGN(size);
    
    int index = 0;
    size_t target_size = asize;
    void *fbp = NULL;

    while(index < 16){
        if((target_size <= 1) && ((void *)*(char **)sfl(index))){
            fbp = (void *)*(char **)(sfl(index));
            while(fbp && (asize > GET_SIZE(HDRP(fbp)))){
                fbp = SUCC_BLKP(fbp);
            }
            if(fbp) break;
        }
        target_size >>= 1;
        index++;
    }

    if(fbp == NULL){
        if((fbp = extend_heap(MAX(asize, CHUNKSIZE))) == NULL)
            return NULL;
    }
    fbp = place(fbp, asize);
    return fbp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    size_t size = GET_SIZE(HDRP(ptr));

    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    insert_node(ptr, size);

    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    if(size == 0)
        return NULL;

    size_t asize;
    
    if(size <= DSIZE)
        asize = 2*DSIZE;
    else
        asize = DSIZE + ALIGN(size);

    void *newptr = ptr;
    size_t available_size = 0, total_size = 0;

    if(GET_SIZE(HDRP(ptr)) >= asize)
        return ptr;
    else if(!GET_SIZE(NEXT_BLKP(HDRP(ptr))) || 
            (!(GET_ALLOC(NEXT_BLKP(HDRP(ptr)))) && !(GET_SIZE(NEXT_BLKP(NEXT_BLKP(HDRP(ptr))))))){
        available_size = GET_SIZE(HDRP(ptr)) + GET_SIZE(HDRP(NEXT_BLKP(ptr)));
        total_size = available_size;
        if(available_size < asize){
            if(extend_heap(MAX(asize - available_size, CHUNKSIZE)) == NULL)
                return NULL;
            total_size = available_size + MAX(asize - available_size, CHUNKSIZE);
        }
        delete_node(NEXT_BLKP(ptr));
        PUT(HDRP(ptr), PACK(total_size, 1));
        PUT(FTRP(ptr), PACK(total_size, 1));
    }
    else if(!(GET_ALLOC(NEXT_BLKP(HDRP(ptr)))) && (total_size = (GET_SIZE(HDRP(ptr)) + GET_SIZE(HDRP(NEXT_BLKP(ptr))))) >= asize){
        delete_node(NEXT_BLKP(ptr));
        PUT(HDRP(ptr), PACK(total_size, 1));
        PUT(FTRP(ptr), PACK(total_size, 1));
    }
    else{
        newptr = mm_malloc(asize);
        memcpy(newptr, ptr, GET_SIZE(HDRP(ptr)));
        mm_free(ptr);
    }
    return newptr;
}
