/*
Filesystem Lab disigned and implemented by Liang Junkai,RUC
*/

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <fuse.h>
#include <errno.h>
#include <sys/types.h>
#include "disk.h"

#define S_IFDIR 0040000
#define S_IFREG 0100000
#define DIRMODE (S_IFDIR|0755)
#define REGMODE (S_IFREG|0644)

#define DISK "vdisk/"

#define MAX_FILENAME 24    // 文件名最大字节数
#define MAX_PPATHNAME 512    // 父目录路径最大字节数

#define BYTESIZE 8    // 1byte = 8bits
#define BKSIZE 4096    // 1block = 4096bytes
#define FILE_INFO_SIZE 32    // 每个文件夹下一个文件/文件夹信息所占大小
#define FN_IN_DIR 128    // 一个block能装下的文件/文件夹信息份数 4096 / 32 = 128 

#define SUPER_BLOCK_NUM 0    // superblock 所在block编号
#define IBM_BLOCK_NUM 1        // inode bitmap 所在block编号
#define DBM_BLOCK_NUMA 2    // 第一个 datablock bitmap 所在block编号
#define DBM_BLOCK_NUMB 3    // 第二个 datablock bitmap 所在block编号

#define ROOT_INODE_NUM 0    // 第一个inode编号
#define MAX_INODE_NUM 32768    // 最大的inode编号

#define BID(inode_num) (inode_num / 32 + 4)    // 通过inode_num计算出inode所在的block编号
#define BOFST(inode_num) (inode_num % 32)    // 计算该inode_num在这个block中是第多少个

#define DP_NUM 16    // 16个直接指针
#define IP_NUM 2    // 2个间接指针
#define DP_NUM_PER_IP  1024 // 每个间接指针指向1024个直接指针

typedef int inode_t;
typedef int datablock_t;

typedef struct
{
    mode_t      mode;
    nlink_t     nlink;
    off_t       size;
    time_t      atime;
    time_t      mtime;
    time_t      ctime;
    size_t      inode_num;
    int         direct_ptr[DP_NUM];
    int         indirect_ptr[IP_NUM];
}my_stat;

typedef struct
{
    char    filename[MAX_FILENAME];
    int     filetype;
    int     inode_num;
}file_info;

typedef union
{
    char        file_data[BKSIZE];
    file_info   info[FN_IN_DIR];
    int         ptr[DP_NUM_PER_IP];
}disk_block;


int find_free_inode_num()    // 找到一个空的inode编号(0 ~ 2^15-1)
{
    char buff[BKSIZE];
    disk_read(IBM_BLOCK_NUM, buff);

    for (int byte_pos = 0; byte_pos < BKSIZE; byte_pos++) // 遍历所有的bytes
    {
        for (int bit_pos = 0; bit_pos < BYTESIZE; bit_pos++) // 遍历byte所有的bit
        {
            if (!(buff[byte_pos] & (0x1 << bit_pos))) // 如果该bit==0
            {
                return byte_pos * BYTESIZE + bit_pos;
            }
        }
    }

    return -1;
}

void set_inode_bitmap(int inode_num)  // 把对应inode_num的inode bitmap 位置设为1
{
    char buff[BKSIZE];
    disk_read(IBM_BLOCK_NUM, buff);

    int bit_pos = inode_num % BYTESIZE;
    int byte_pos = inode_num / BYTESIZE;


    buff[byte_pos] |= (0x1 << bit_pos);

    disk_write(IBM_BLOCK_NUM, buff);
    return;
}

void free_inode_bitmap(int inode_num)    // 把对应inode_num的inode bit map 位置设为0
{
    char buff[BKSIZE];
    disk_read(IBM_BLOCK_NUM, buff);

    int bit_pos = inode_num % BYTESIZE;
    int byte_pos = inode_num / BYTESIZE;


    buff[byte_pos] &= (~(0x1 << bit_pos));
    disk_write(IBM_BLOCK_NUM, buff);
    return;
}

int find_free_block_num()    // 找到一个空的datablock编号(0 ~ 2^16-1)
{
    char buff[BKSIZE];
    disk_read(DBM_BLOCK_NUMA, buff);

    for (int byte_pos = 0; byte_pos < BKSIZE; byte_pos++)
    {
        for (int bit_pos = 0; bit_pos < BYTESIZE; bit_pos++)
        {
            if (!(buff[byte_pos] & (0x1 << bit_pos)))
            {
                return byte_pos * BYTESIZE + bit_pos;
            }
        }
    }

    char buffb[BKSIZE];
    disk_read(DBM_BLOCK_NUMB, buffb);

    for (int byte_pos = 0; byte_pos < BKSIZE; byte_pos++)
    {
        for (int bit_pos = 0; bit_pos < BYTESIZE; bit_pos++)
        {
            if (buff[byte_pos] & (0x1 << bit_pos))
            {
                return byte_pos * BYTESIZE + bit_pos+32768;
            }
        }
    }

    return -1;
}

void free_block_bitmap(int data_num) // 把非空的datablock bitmap 位置设为0
{
    if (data_num < 32768)
    {
        char buff[BKSIZE];
        disk_read(DBM_BLOCK_NUMA, buff);

        int bit_pos = data_num % BYTESIZE;
        int byte_pos = data_num / BYTESIZE;


        buff[byte_pos] &= (~(0x1 << bit_pos));
        disk_write(DBM_BLOCK_NUMA, buff);
    }
    else if (data_num < 65536)
    {
        int new_data_num = data_num - 32768;
        char buff[BKSIZE];
        disk_read(DBM_BLOCK_NUMB, buff);

        int bit_pos = new_data_num % BYTESIZE;
        int byte_pos = new_data_num / BYTESIZE;
        buff[byte_pos] &= (~(0x1 << bit_pos));
        disk_write(DBM_BLOCK_NUMB, buff);
    }

    return;
}

void set_block_bitmap(int data_num)   // 把空的datablock bit map 位置设为1
{
    if (data_num < 32768)
    {
        char buff[BKSIZE];
        disk_read(DBM_BLOCK_NUMA, buff);

        int bit_pos = data_num % BYTESIZE;
        int byte_pos = data_num / BYTESIZE;


        buff[byte_pos] |= (0x1 << bit_pos);
        disk_write(DBM_BLOCK_NUMA, buff);
    }
    else if (data_num < 65536)
    {
        int new_data_num = data_num - 32768;
        char buff[BKSIZE];
        disk_read(DBM_BLOCK_NUMB, buff);

        int bit_pos = new_data_num % BYTESIZE;
        int byte_pos = new_data_num / BYTESIZE;
        buff[byte_pos] |= (0x1 << bit_pos);
        disk_write(DBM_BLOCK_NUMB, buff);
    }
    return;
}

inode_t match_path(const char*path)    // 通过path找到所在的inode编号
{
    // printf("calling match_path:%s\n", path);

    if (strcmp(path, "/") == 0)     // 只有根目录   "/"
        return ROOT_INODE_NUM;
    else
    {
        char *p = (char *)path;
        inode_t dir_inode = ROOT_INODE_NUM;

        while (*p != '\0')
        {
            p++;
            // printf("inode_num is:%d\n", dir_inode);
            long inode_blockid = BID(dir_inode);
            long inode_blockoffset = BOFST(dir_inode);    // 获取dir_inode在 inode blocks 中的位置（4-1027）（0-31）

            my_stat inode_data[32];
            disk_read(inode_blockid, inode_data);

            size_t count_file = inode_data[inode_blockoffset].size / FILE_INFO_SIZE ;    // 文件目录条数

            if (inode_data[inode_blockoffset].size == 0)
            {
                return -1;
            }

            if (count_file > DP_NUM * FN_IN_DIR)
            {
                printf("can't support such large dir or file !\n");
            }

            size_t block_num = count_file / FN_IN_DIR;    // size / 2^12 = 占用的block数目
            size_t block_left = count_file % FN_IN_DIR;     // size / 32 % 128 最后一条在block中的偏移

            char dir_name[MAX_FILENAME];
            char *index = dir_name;
            while (*p != '\0' && *p != '/')
            {
                *index = *p;
                index++;
                p++;
            }
            *index = '\0';

            // printf("index:%s\n", dir_name);    // 打印下一级的文件夹名

            if (*p == '\0')
            {//到达了路径末尾
                for (int i = 0; i < block_num; i++)
                {
                    disk_block dir_search;
                    disk_read(inode_data[inode_blockoffset].direct_ptr[i], &dir_search);
                    for (int j = 0; j < FN_IN_DIR; j++)
                    {
                        if (strcmp(dir_search.info[j].filename, dir_name) == 0)
                        {
                            return dir_search.info[j].inode_num;
                        }
                    }
                }
                if (block_left != 0)
                {
                    disk_block dir_search;
                    disk_read(inode_data[inode_blockoffset].direct_ptr[block_num], &dir_search);
                    for (int j = 0; j < block_left; j++)
                    {
                        // printf("dir_file:name:%s\n", dir_search.info[j].filename);
                        if (strcmp(dir_search.info[j].filename, dir_name) == 0)
                        {
                            // printf("match inode:%d name:%s!!\n", dir_search.info[j].inode_num, dir_search.info[j].filename);
                            return dir_search.info[j].inode_num;
                        }
                    }
                }
                return -1;
            }
            else//没到末尾 更新dir_node 继续循环
            {
                int flag = 0;
                
                for (int i = 0; i < block_num; i++)
                {
                    disk_block dir_search[1];
                    disk_read(inode_data[inode_blockoffset].direct_ptr[i], dir_search);

                    for (int j = 0; j < FN_IN_DIR; j++)
                    {
                        if (strcmp(dir_search[0].info[j].filename, dir_name) == 0)
                        {
                            if ((unsigned int)(dir_search[0].info[j].filetype) == (unsigned int)(DIRMODE))
                            {
                                // printf("match_dir:%s\n", dir_search[0].info[j].filename);
                                dir_inode = dir_search[0].info[j].inode_num;
                                flag = 1;
                                break;
                            }
                            else
                            {
                                printf("mode error\n");
                            }
                        }
                    }
                }

                if (!flag && block_left != 0)    // 如果没找到且有不满一个block的剩余页
                {
                    disk_block dir_search[1];
                    disk_read(inode_data[inode_blockoffset].direct_ptr[block_num], dir_search);
                    for (int j = 0; j < block_left; j++)
                    {
                        // printf("filename:%s dir_name:%s\n", dir_search[0].info[j].filename, dir_name);
                        if (strcmp(dir_search[0].info[j].filename, dir_name) == 0)
                        {
                            if ((unsigned int)(dir_search[0].info[j].filetype) == (unsigned int)(DIRMODE))
                            {
                                dir_inode = dir_search[0].info[j].inode_num;
                                flag = 1;
                                break;
                            }
                            else
                            {
                                printf("mode error\n");
                            }
                        }
                    }
                }
                if (flag == 0)
                {
                    printf("the file or dir not exits!\n");
                    return -1;
                }
            }
        }
    }
}

char* strrev(char* s)    // 将倒置的文件名再倒回来
{
    char* h = s;
    char* t = s;
    char ch;

    while (*t++) {};
    t--;
    t--;
    while (h < t)
    {
        ch = *h;
        *h++ = *t;
        *t-- = ch;
    }
    return s;
}
       
int collect_dir_filename(const char *path, char *parent_path, char *file_name)  // 将路径分割成 目录+文件名
{
    printf("calling collect_dir_filename:%s\n", path);
    char *path_pointer = (char *)path;
    int pathlen = strlen(path);
    path_pointer += pathlen-1;

    char temp_filename[MAX_FILENAME] = {0};
    int index = 0;

    if (*path_pointer == '/')
    {
        return -1;
    }
    while (*path_pointer != '/')
    {
        temp_filename[index++] = *path_pointer;
        path_pointer--;
    }

    strcpy(file_name, strrev(temp_filename));
    strncpy(parent_path, path, pathlen - index);
    
    parent_path[pathlen - index] = '\0';
    if (strcmp(parent_path, "/") == 0) 
        return 0;
    else
        parent_path[pathlen - index - 1] = '\0';

    printf("parent_path file_name:%s %s\n", parent_path, file_name);
    return 0;
}
      
//Format the virtual block device in the following function
int mkfs() 
{
    printf("\n\ncalling mkfs!\n");

    char buff[BKSIZE];
    memset(buff, 0, sizeof(buff));

    buff[0] |= 0x1;
    disk_write(IBM_BLOCK_NUM, buff);    //占用第一个InodeBitmap位

    memset(buff, 0, sizeof(buff));
    for (int i = 0; i < 128; i++)
        buff[i] = 0xFF;
    buff[128] = 0xF;    //前1024+4个bit设为1 标记占用
    disk_write(DBM_BLOCK_NUMA, buff);   //初始化第一个DataBlockBitmap

    memset(buff, 0, sizeof(buff));
    disk_write(DBM_BLOCK_NUMB, buff);   //初始化第二个～

    my_stat root_stat[32];
    root_stat[0].mode = DIRMODE;
    root_stat[0].nlink = 1;
    root_stat[0].size = 0;
    root_stat[0].atime = time(NULL);
    root_stat[0].mtime = time(NULL);
    root_stat[0].ctime = time(NULL);
    root_stat[0].inode_num = ROOT_INODE_NUM;
    memset(root_stat->direct_ptr, 0, sizeof(root_stat->direct_ptr));
    memset(root_stat->indirect_ptr, 0, sizeof(root_stat->indirect_ptr));
    disk_write(BID(ROOT_INODE_NUM), root_stat); //初始化SuperBlcok

    //superblock
    struct statvfs s;
    s.f_bsize = BKSIZE;
    s.f_blocks = BLOCK_NUM;
    s.f_bfree = BLOCK_NUM - 1028;
    s.f_bavail = BLOCK_NUM - 1028;
    s.f_files = 1;
    s.f_ffree = MAX_INODE_NUM - 1;
    s.f_favail = MAX_INODE_NUM - 1;
    s.f_namemax = MAX_FILENAME;
    disk_write(SUPER_BLOCK_NUM, &s);

    printf("leaving mkfs!\n");
    return 0;
}

//Filesystem operations that you need to implement
int fs_getattr (const char *path, struct stat *attr)
{
    // printf("\n\ngetattr is called:%s\n", path);

    inode_t inode_num = match_path(path);
    if (inode_num == -1)
        return -ENOENT;

    my_stat buff[32];
    memset(buff, 0, sizeof(buff));
    disk_read(BID(inode_num), buff);
    int offset = BOFST(inode_num);

    attr->st_mode = buff[offset].mode;
    attr->st_nlink = buff[offset].nlink;
    attr->st_size = buff[offset].size;
    attr->st_atime = buff[offset].atime;
    attr->st_mtime = buff[offset].mtime;

    // printf("leave getattr\n");
    return 0;
}

int fs_readdir(const char *path, void *buffer, fuse_fill_dir_t filler, off_t offset, struct fuse_file_info *fi)
{
    // printf("\n\nreaddir is called:%s\n", path);

    size_t inode_num = match_path(path);

    my_stat dir_data[32];
    disk_read(BID(inode_num), dir_data);
    dir_data[BOFST(inode_num)].atime = time(NULL);

    size_t file_count = dir_data[BOFST(inode_num)].size / FILE_INFO_SIZE;

    size_t block_count = file_count / FN_IN_DIR;
    size_t file_left = file_count % FN_IN_DIR;

    if (dir_data[BOFST(inode_num)].size <= 0)
    {
        return 0;
    }
    else if (dir_data[BOFST(inode_num)].size > FN_IN_DIR * DP_NUM * FILE_INFO_SIZE)
    {
        printf("can't support such large file or dir\n");
        return 0;
    }
    else
    {
        for (int i = 0; i < block_count; i++)
        {
            disk_block block_data;
            disk_read(dir_data[BOFST(inode_num)].direct_ptr[i], &block_data);
            for (int j = 0; j < FN_IN_DIR; j++)
            {
                filler(buffer, block_data.info[j].filename, NULL, 0);
            }
        }
        if (file_left != 0)
        {
            disk_block block_data;
            disk_read(dir_data[BOFST(inode_num)].direct_ptr[block_count], &block_data);
            for (int j = 0; j < file_left; j++)
            {
                filler(buffer, block_data.info[j].filename, NULL, 0);
            }
        }
    }

    // printf("leave readdir\n");
    return 0;
}

int fs_read(const char *path, char *buffer, size_t size, off_t offset, struct fuse_file_info *fi)
{
    printf("\nread is called:%s %d %d\n", path, size, offset);

    inode_t file_inode = match_path(path);
    if (file_inode == -1)
    {
        printf("read error!\n");
        return 0;
    }

    my_stat inode_info[32];
    disk_read(BID(file_inode), inode_info);
    long blockoffset = BOFST(file_inode);
    inode_info[blockoffset].atime = time(NULL);

    char filename[MAX_FILENAME] = {0};
    char parent_path[256] = {0};
    collect_dir_filename(path, parent_path, filename);

    datablock_t begin_block_num = offset / BKSIZE;
    off_t read_size = size;

    if (( inode_info[blockoffset].size ) <= (offset + size))
    {
        read_size = inode_info[blockoffset].size - offset;

        disk_write(BID(file_inode), inode_info);
        if ((int)inode_info[blockoffset].size <= 0)
        {
            disk_read(BID(file_inode), inode_info);
            printf("size:%ld\n", inode_info[blockoffset].size);
            fflush(stdout);
        }
    }

    datablock_t end_block_num = (offset + read_size) / BKSIZE;
    char *Buff = buffer;
    off_t block_num_left = (offset + read_size) % BKSIZE;

    // 只从一个块中读数据
    if (begin_block_num == end_block_num)
    {
        printf("read from only one block\n");
        if (begin_block_num < DP_NUM) {
            char data[BKSIZE];
            disk_read(inode_info[blockoffset].direct_ptr[begin_block_num], data);
            memcpy(buffer, data + (offset % BKSIZE), read_size);
            return read_size;
        }
        else if ((begin_block_num - DP_NUM) < DP_NUM_PER_IP)
        {
            char data[BKSIZE];
            disk_block pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[0], pointer_data);
            disk_read(pointer_data[0].ptr[(begin_block_num - DP_NUM)], data);
            memcpy(buffer, data + (offset % BKSIZE), read_size);
            return read_size;
        }
        else if ((begin_block_num - DP_NUM) < 2 * DP_NUM_PER_IP)
        {
            char data[BKSIZE];
            disk_block pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[1], pointer_data);
            disk_read(pointer_data[0].ptr[(begin_block_num - DP_NUM - DP_NUM_PER_IP)], data);
            memcpy(buffer, data + (offset % BKSIZE), read_size);
            return read_size;
        }
        else
        {
            return 0;
        }
    }

    //处理开始端
    printf("manage start\n");
    if (begin_block_num < DP_NUM) {
        printf("a\n");
        char data[BKSIZE] = {0};
        disk_read(inode_info[blockoffset].direct_ptr[begin_block_num], data);
        memcpy(Buff, data + (offset % BKSIZE), BKSIZE-((offset % BKSIZE)));
    }
    else if ((begin_block_num - DP_NUM) < DP_NUM_PER_IP)
    {
        printf("b\n");
        char data[BKSIZE] = {0};
        disk_block pointer_data[1];
        disk_read(inode_info[blockoffset].indirect_ptr[0], pointer_data);
        disk_read(pointer_data[0].ptr[(begin_block_num - DP_NUM)], data);
        memcpy(Buff, data + (offset % BKSIZE), BKSIZE - ((offset % BKSIZE)));
    }
    else if ((begin_block_num - DP_NUM) < 2 * DP_NUM_PER_IP)
    {
        printf("c\n");
        char data[BKSIZE] = {0};
        disk_block pointer_data[1];
        disk_read(inode_info[blockoffset].indirect_ptr[1], pointer_data);
        disk_read(pointer_data[0].ptr[(begin_block_num - DP_NUM - DP_NUM_PER_IP)], data);
        memcpy(Buff, data + (offset % BKSIZE), BKSIZE - ((offset % BKSIZE)));
    }
    else
    {
        return 0;
    }

    Buff += (BKSIZE - ((offset % BKSIZE)));
    //处理中间块
    printf("manage middle\n");
    for (int i = begin_block_num+1; i < end_block_num; i++)
    {
        if (i < DP_NUM) {
            printf("d\n");
            char data[BKSIZE] = {0};
            disk_read(inode_info[blockoffset].direct_ptr[i], data);
            memcpy(Buff, data, BKSIZE);
        }
        else if ((i - DP_NUM) < DP_NUM_PER_IP)
        {
            printf("e\n");
            char data[BKSIZE] = {0};
            disk_block pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[0], pointer_data);
            disk_read(pointer_data[0].ptr[(i - DP_NUM)], data);
            memcpy(Buff, data, BKSIZE);
        }
        else if ((i - DP_NUM) < 2 * DP_NUM_PER_IP)
        {
            printf("f\n");
            char data[BKSIZE] = {0};
            disk_block pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[1], pointer_data);
            disk_read(pointer_data[0].ptr[(i - DP_NUM -DP_NUM_PER_IP)], data);
            memcpy(Buff, data, BKSIZE);
        }
        Buff += BKSIZE;
    }

    // 处理末尾端
    printf("manage end\n");
    if (end_block_num < DP_NUM) 
    {
        printf("g\n");
        char data[BKSIZE] = {0};
        disk_read(inode_info[blockoffset].direct_ptr[end_block_num], data);
        memcpy(Buff, data, ((offset+ read_size) % BKSIZE));

        return read_size;
    }
    else if ((end_block_num - DP_NUM) < DP_NUM_PER_IP)
    {
        printf("h\n");
        char data[BKSIZE] = {0};
        disk_block pointer_data[1];
        disk_read(inode_info[blockoffset].indirect_ptr[0], pointer_data);
        disk_read(pointer_data[0].ptr[(end_block_num - DP_NUM)], data);
        memcpy(Buff, data, ((offset + read_size) % BKSIZE));

        return read_size;
    }
    else if ((end_block_num - DP_NUM) < (2 * DP_NUM_PER_IP))
    {
        printf("i\n");
        char data[BKSIZE] = {0};
        disk_block pointer_data[1];
        disk_read(inode_info[blockoffset].indirect_ptr[1], pointer_data);
        disk_read(pointer_data[0].ptr[(end_block_num - DP_NUM - DP_NUM_PER_IP)], data);
        memcpy(Buff, data, ((offset + read_size) % BKSIZE));

        return read_size;
    }
    else
    {
        return 0;
    }

    return 0;
}

int fs_mknod (const char *path, mode_t mode, dev_t dev)
{
    printf("\n\nmknod is called:%s\n", path);

    inode_t inode_num = find_free_inode_num();
    if (inode_num == -1)
    {
        printf("can't create new file!\n");
        return -ENOSPC;
    }
    set_inode_bitmap(inode_num);

    my_stat inode_info[32];
    disk_read(BID(inode_num), inode_info);
    inode_info[BOFST(inode_num)].mode = REGMODE;
    inode_info[BOFST(inode_num)].nlink = 1;
    inode_info[BOFST(inode_num)].size = 0;
    inode_info[BOFST(inode_num)].atime = time(NULL);
    inode_info[BOFST(inode_num)].mtime = time(NULL);
    inode_info[BOFST(inode_num)].ctime = time(NULL);
    inode_info[BOFST(inode_num)].inode_num = inode_num;
    disk_write(BID(inode_num), inode_info);

    char filename[MAX_FILENAME] = {0};
    char parent_path[MAX_PPATHNAME] = {0};
    if (collect_dir_filename(path, parent_path, filename) == -1)
    {
        printf("there is no file\n");
        return 0;
    }
    else
    {
        inode_t parent_inode_num = match_path(parent_path);
        my_stat parent_inode_info[32];
        disk_read(BID(parent_inode_num), parent_inode_info);
        parent_inode_info[BOFST(parent_inode_num)].mtime = time(NULL);
        parent_inode_info[BOFST(parent_inode_num)].ctime = time(NULL);

        int file_num = parent_inode_info[BOFST(parent_inode_num)].size / FILE_INFO_SIZE;
        if (file_num >= DP_NUM*FN_IN_DIR)
        {
            printf("can't create new file\n");
            return -ENOSPC;
        }
        
        int dp_num = file_num / FN_IN_DIR;
        int dp_left = file_num % FN_IN_DIR;

        if (dp_left != 0)
        {
            disk_block dirfile[1];
            disk_read(parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num], dirfile);
            strcpy(dirfile[0].info[dp_left].filename, filename);
            dirfile[0].info[dp_left].filetype = REGMODE;
            dirfile[0].info[dp_left].inode_num = inode_num;
            parent_inode_info[BOFST(parent_inode_num)].size += 32;
            disk_write(parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num], dirfile);
            disk_write(BID(parent_inode_num), parent_inode_info);
            return 0;
        }
        else// 需要一个新的block在父目录下存储新文件的信息
        {
            datablock_t new_block = find_free_block_num();
            set_block_bitmap(new_block);
            printf("new_block_id:%d\n", new_block);
            parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num] = new_block;
            parent_inode_info[BOFST(parent_inode_num)].size += 32;
            disk_block dirfile[1];
            strcpy(dirfile[0].info[0].filename, filename);
            dirfile[0].info[0].filetype = REGMODE;
            dirfile[0].info[0].inode_num = inode_num;
            disk_write(new_block, dirfile);
            disk_write(BID(parent_inode_num), parent_inode_info);
            return 0;
        }
    }
    return 0;
}

int fs_mkdir (const char *path, mode_t mode)
{
    printf("\n\nmkdir is called:%s\n",path);

    inode_t inode_num = find_free_inode_num();
    if (inode_num == -1)
    {
        printf("can't create new dir!\n");
        return -ENOSPC;
    }
    set_inode_bitmap(inode_num);

    my_stat inode_info[32];
    disk_read(BID(inode_num), inode_info);

    inode_info[BOFST(inode_num)].mode = DIRMODE;
    inode_info[BOFST(inode_num)].nlink = 1;
    inode_info[BOFST(inode_num)].size = 0;
    inode_info[BOFST(inode_num)].atime = time(NULL);
    inode_info[BOFST(inode_num)].mtime = time(NULL);
    inode_info[BOFST(inode_num)].ctime = time(NULL);
    inode_info[BOFST(inode_num)].inode_num = inode_num;

    disk_write(BID(inode_num), inode_info);

    char filename[MAX_FILENAME] = {0};
    char parent_path[MAX_PPATHNAME] = {0};
    if (collect_dir_filename(path, parent_path, filename) == -1)
    {
        printf("there is no file!\n");
        return 0;
    }
    else
    {
        inode_t parent_inode_num = match_path(parent_path);
        my_stat parent_inode_info[32];
        disk_read(BID(parent_inode_num), parent_inode_info);
        parent_inode_info[BOFST(parent_inode_num)].mtime = time(NULL);
        parent_inode_info[BOFST(parent_inode_num)].ctime = time(NULL);

        off_t file_num = (parent_inode_info[BOFST(parent_inode_num)].size) / FILE_INFO_SIZE;
        if (file_num >= DP_NUM * FN_IN_DIR)
        {
            printf("can't create new file!\n");
            return -ENOSPC;
        }

        long dp_num = file_num / FN_IN_DIR;
        long dp_left = file_num % FN_IN_DIR;

        if (dp_left != 0)
        {
            disk_block dirfile[1];
            disk_read(parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num], dirfile);

            memcpy(dirfile[0].info[dp_left].filename, filename, MAX_FILENAME);
            dirfile[0].info[dp_left].filetype = DIRMODE;
            dirfile[0].info[dp_left].inode_num = inode_num;
            parent_inode_info[BOFST(parent_inode_num)].size += 32;

            disk_write(parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num], dirfile);
            disk_write(BID(parent_inode_num), parent_inode_info);
        }
        else//需要新的datablock
        {
            datablock_t new_block = find_free_block_num();
            set_block_bitmap(new_block);
            parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num] = new_block;
            parent_inode_info[BOFST(parent_inode_num)].size += 32;
            
            disk_block dirfile[1];
            memcpy(dirfile[0].info[0].filename, filename, MAX_FILENAME);
            dirfile[0].info[0].filetype = DIRMODE;
            dirfile[0].info[0].inode_num = inode_num;

            disk_write(new_block, dirfile);
            disk_write(BID(parent_inode_num), parent_inode_info);
        }
    }
    return 0;
}

int fs_rmdir (const char *path)
{
    printf("\n\nrmdir is called:%s\n", path);

    inode_t inode_num = match_path(path);
    if (inode_num == -1)
    {
        printf("the dir not exit!\n");
        return 0;
    }
    free_inode_bitmap(inode_num);

    char parent_path[MAX_PPATHNAME] = {0};
    char filename[MAX_FILENAME] = {0};
    if (collect_dir_filename(path, parent_path, filename) == -1)
    {
        printf("collect_error!\n");
        return 0;
    }

    inode_t parent_inode_num = match_path(parent_path);
    my_stat parent_stat[32];
    disk_read(BID(parent_inode_num), parent_stat);
    long parent_blockoffset = BOFST(parent_inode_num);

    parent_stat[parent_blockoffset].mtime = time(NULL);
    parent_stat[parent_blockoffset].ctime = time(NULL);
    parent_stat[parent_blockoffset].size -= 32;

    disk_write(BID(parent_inode_num), parent_stat);
    long file_count = parent_stat[parent_blockoffset].size / FILE_INFO_SIZE;

    long datablock_num = file_count / FN_IN_DIR;
    long datablock_left = file_count % FN_IN_DIR;

    disk_block last_dir_data[1];
    disk_read(parent_stat[parent_blockoffset].direct_ptr[datablock_num], last_dir_data);
    
    file_info last_files = last_dir_data[0].info[(file_count) % FN_IN_DIR];
    inode_t last_file_inode = last_files.inode_num;

    for (int i = 0; i < datablock_num; i++)
    {
        disk_block Dir_data[1];
        disk_read(parent_stat[parent_blockoffset].direct_ptr[i], Dir_data);
        for (int j = 0; j < FN_IN_DIR; j++)
        {
            if (Dir_data[0].info[j].inode_num == inode_num)
            {//根据inode_num找到
                if(inode_num != last_file_inode)
                {//不是最后一个
                    memcpy(&(Dir_data[0].info[j]), &last_files, 32);
                    disk_write(parent_stat[parent_blockoffset].direct_ptr[i], Dir_data);
                    return 0;
                }
            }
        }
    }

    if (datablock_left == 0)
    {
        printf("free empty datablock\n");
        free_block_bitmap(parent_stat[parent_blockoffset].direct_ptr[datablock_num]);
        return 0;
    }

    disk_block dir_data2[1];
    disk_read(parent_stat[parent_blockoffset].direct_ptr[datablock_num], dir_data2);
    for (int j = 0; j < (datablock_left+1); j++)
    {
        if (dir_data2[0].info[j].inode_num == inode_num)
        {//根据inode_num找到
            if (inode_num != last_file_inode)
            {//不是最后一个
                memcpy(&(dir_data2[0].info[j]), &last_files, 32);
                disk_write(parent_stat[parent_blockoffset].direct_ptr[datablock_num], dir_data2);
                return 0;
            }
        }
    }
    return 0;
}

int fs_unlink (const char *path)
{
    printf("\n\nunlink is callded:%s\n", path);
    
    inode_t inode_num = match_path(path);
    if (inode_num == -1)
    {
        printf("the file not exits\n");
        return 0;
    }
    free_inode_bitmap(inode_num);

    my_stat inode_stat[32];
    disk_read(BID(inode_num), inode_stat);

    long now_inode_offset = BOFST(inode_num);

    long inode_datablock_count = inode_stat[now_inode_offset].size / BKSIZE;
    long inode_datablock_left = inode_stat[now_inode_offset].size % BKSIZE;

    if (inode_datablock_left != 0)    // 根据文件大小得到的block数向上取整
    {
        inode_datablock_count++;
    }

    //释放 datablock
    if (inode_datablock_count <= DP_NUM)
    {
        for (int i = 0; i < inode_datablock_count; i++)
        {
            free_block_bitmap(inode_stat[now_inode_offset].direct_ptr[i]);
        }
    }
    else if (inode_datablock_count <= (DP_NUM + DP_NUM_PER_IP))
    {
        for (int i = 0; i < DP_NUM; i++)
        {
            free_block_bitmap(inode_stat[now_inode_offset].direct_ptr[i]);
        }
        disk_block indirect_pointer_data[1];
        disk_read(inode_stat[now_inode_offset].indirect_ptr[0], indirect_pointer_data);
        for (int j = 0; j < (inode_datablock_count - DP_NUM); j++)
        {
            free_block_bitmap(indirect_pointer_data[0].ptr[j]);
            free_block_bitmap(inode_stat[now_inode_offset].indirect_ptr[0]);
        }
    }
    else
    {
        for (int i = 0; i < DP_NUM; i++)
        {
            free_block_bitmap(inode_stat[now_inode_offset].direct_ptr[i]);
        }

        disk_block indirect_pointer_data[1];
        disk_read(inode_stat[now_inode_offset].indirect_ptr[0], indirect_pointer_data);
        for (int j = 0; j < DP_NUM_PER_IP; j++)
        {
            free_block_bitmap(indirect_pointer_data[0].ptr[j]);
            free_block_bitmap(inode_stat[now_inode_offset].indirect_ptr[0]);
        }

        disk_read(inode_stat[now_inode_offset].indirect_ptr[1], indirect_pointer_data);
        for (int j = 0; j < (inode_datablock_count - DP_NUM - DP_NUM_PER_IP); j++)
        {
            free_block_bitmap(indirect_pointer_data[1].ptr[j]);
            free_block_bitmap(inode_stat[now_inode_offset].indirect_ptr[1]);
        }
    }

    char parent_path[MAX_PPATHNAME] = {0};
    char filename[MAX_FILENAME] = {0};
    if (collect_dir_filename(path, parent_path, filename) == -1)
    {
        printf("the dir not exits\n");
        return 0;
    }

    inode_t parent_inode_num = match_path(parent_path);
    my_stat parent_stat[32];
    disk_read(BID(parent_inode_num), parent_stat);
    int parent_blockoffset = BOFST(parent_inode_num);

    parent_stat[parent_blockoffset].mtime = time(NULL);        //更新父目录的mtime和ctime
    parent_stat[parent_blockoffset].ctime = time(NULL);
    parent_stat[parent_blockoffset].size -= 32;

    disk_write(BID(parent_inode_num), parent_stat);
    long file_count = parent_stat[parent_blockoffset].size / FILE_INFO_SIZE;

    long datablock_num = file_count / FN_IN_DIR;
    long datablock_left = file_count % FN_IN_DIR;

    disk_block last_dir_data[1];
    disk_read(parent_stat[parent_blockoffset].direct_ptr[datablock_num], last_dir_data);

    file_info last_files = last_dir_data[0].info[(file_count) % 128];
    inode_t last_file_inode = last_files.inode_num;

    for (int i = 0; i < datablock_num; i++)
    {
        disk_block dir_data[1];
        disk_read(parent_stat[parent_blockoffset].direct_ptr[i], dir_data);
        for (int j = 0; j < FN_IN_DIR; j++)
        {
            if (dir_data[0].info[j].inode_num == inode_num)
            {// 根据inode_num匹配出要删除的文件
                if (inode_num != last_file_inode)
                {// 如果不是最后一个文件，就把最后一个文件信息拷贝过去 //如果是最后一个实际上不需要处理，因为根据size已经访问不到了
                    memcpy(&(dir_data[0].info[j]), &last_files, 32);
                    disk_write(parent_stat[parent_blockoffset].direct_ptr[i], dir_data);
                    return 0;
                }
            }
        }
    }

    if (datablock_left == 0)    //删除的文件信息是该block1最后的一个，需要释放整个block
    {
        printf("free empty datablock\n");
        free_block_bitmap(parent_stat[parent_blockoffset].direct_ptr[datablock_num]);
        return 0;
    }

    disk_block dir_data2[1];
    disk_read(parent_stat[parent_blockoffset].direct_ptr[datablock_num], dir_data2);
    for (int j = 0; j < (datablock_left + 1); j++)
    {
        if (dir_data2[0].info[j].inode_num == inode_num)
        {// 根据inode_num匹配出要删除的文件
            if (inode_num != last_file_inode)
            {// 如果不是最后一个文件，就把最后一个文件信息拷贝过去
                memcpy(&(dir_data2[0].info[j]), &last_files, 32);
                disk_write(parent_stat[parent_blockoffset].direct_ptr[datablock_num], dir_data2);
                return 0;
            }
        }
    }
    return 0;
}

int fs_rename (const char *oldpath, const char *newpath)
{
    printf("\n\nrename is called:%s -> %s\n", oldpath, newpath);

    char old_filename[MAX_FILENAME] = {0};
    char new_filename[MAX_FILENAME] = {0};
    char old_parent_path[MAX_PPATHNAME] = {0};
    char new_parent_path[MAX_PPATHNAME] = {0};

    collect_dir_filename(oldpath, old_parent_path, old_filename);
    collect_dir_filename(newpath, new_parent_path, new_filename);

    if (strcmp(old_parent_path, new_parent_path) == 0)  //在原文件夹下更名
    {
        inode_t inode_num = match_path(old_parent_path);
        if(inode_num == -1)
        {
            printf("error rename!\n");
            return 0;
        }
        my_stat inode_stat[32];
        disk_read(BID(inode_num), inode_stat);
        long offset = BOFST(inode_num);
        
        long file_count = inode_stat[offset].size / FILE_INFO_SIZE;

        long block_num = file_count / FN_IN_DIR;
        long block_left = file_count % FN_IN_DIR;

        for (int i = 0; i < block_num; i++)
        {
            disk_block blockdata[1];
            disk_read(inode_stat[offset].direct_ptr[i], blockdata);
            for (int j = 0; j < FN_IN_DIR; j++)
            {
                if (strcmp(blockdata[0].info[j].filename, old_filename) == 0)
                {
                    memset(blockdata[0].info[j].filename, 0, MAX_FILENAME);
                    strcpy(blockdata[0].info[j].filename, new_filename);
                    disk_write(inode_stat[offset].direct_ptr[i], blockdata);
                    return 0;
                }
            }
        }
        if (block_left != 0)
        {
            disk_block blockdata2[1];
            disk_read(inode_stat[offset].direct_ptr[block_num], blockdata2);
            for (int j = 0; j < block_left; j++)
            {
                if (strcmp(blockdata2[0].info[j].filename, old_filename) == 0)
                {
                    memset(blockdata2[0].info[j].filename, 0, MAX_FILENAME);
                    strcpy(blockdata2[0].info[j].filename, new_filename);
                    disk_write(inode_stat[offset].direct_ptr[block_num], blockdata2);
                    return 0;
                }
            }
        }
    }
    else    // 两个文件夹不同
    {
        printf("two different folders\n");

        inode_t old_inode_num = match_path(old_parent_path);
        inode_t new_inode_num = match_path(new_parent_path);
        if(old_inode_num == -1 || new_inode_num == -1)
        {
            printf("error rename!\n");
            return 0;
        }

        file_info info; // 将要被移动/更名的文件/文件夹信息
        my_stat inode_stat[32];
        disk_read(BID(old_inode_num), inode_stat);
        long offset = BOFST(old_inode_num);
        long file_count = inode_stat[offset].size / FILE_INFO_SIZE;
        long block_num = file_count / FN_IN_DIR;
        long block_left = file_count % FN_IN_DIR;

        // 获取要移动的文件夹/文件信息
        for (int i = 0; i < block_num; i++)
        {
            disk_block blockdata[1];
            disk_read(inode_stat[offset].direct_ptr[i], blockdata);
            for (int j = 0; j < FN_IN_DIR; j++)
            {
                if (strcmp(blockdata[0].info[j].filename, old_filename) == 0)
                {
                    info = blockdata[0].info[j];
                }
            }
        }
        if (block_left != 0)
        {
            disk_block blockdata2[1];
            disk_read(inode_stat[offset].direct_ptr[block_num], blockdata2);
            for (int j = 0; j < block_left; j++)
            {
                if (strcmp(blockdata2[0].info[j].filename, old_filename) == 0)
                {
                    info = blockdata2[0].info[j];
                }
            }
        }

        // 在新文件夹列表中添加info
        inode_t parent_inode_num = new_inode_num;
        my_stat parent_inode_info[32];
        disk_read(BID(parent_inode_num), parent_inode_info);
        parent_inode_info[BOFST(parent_inode_num)].mtime = time(NULL);
        parent_inode_info[BOFST(parent_inode_num)].ctime = time(NULL);

        int file_num = parent_inode_info[BOFST(parent_inode_num)].size / FILE_INFO_SIZE;

        if (file_num >= DP_NUM*FN_IN_DIR)
        {
            printf("can't create new file\n");
            return -ENOSPC;
        }
        
        int dp_num = file_num / FN_IN_DIR;
        int dp_left = file_num % FN_IN_DIR;

        if (dp_left != 0)
        {
            disk_block dirfile[1];
            disk_read(parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num], dirfile);
            dirfile[0].info[dp_left] = info;
            strcpy(dirfile[0].info[dp_left].filename, new_filename);

            parent_inode_info[BOFST(parent_inode_num)].size += 32;
            disk_write(parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num], dirfile);
            disk_write(BID(parent_inode_num), parent_inode_info);
        }
        else// 需要一个新的block在父目录下存储新文件的信息
        {
            datablock_t new_block = find_free_block_num();
            set_block_bitmap(new_block);

            parent_inode_info[BOFST(parent_inode_num)].direct_ptr[dp_num] = new_block;
            parent_inode_info[BOFST(parent_inode_num)].size += 32;
            disk_block dirfile[1];

            dirfile[0].info[0] = info;
            strcpy(dirfile[0].info[0].filename, new_filename);
            disk_write(new_block, dirfile);
            disk_write(BID(parent_inode_num), parent_inode_info);
        }

        // 从原文件夹信息列表中删掉info
        inode_t inode_num = match_path(oldpath);
        parent_inode_num = old_inode_num;

        my_stat parent_stat[32];
        disk_read(BID(parent_inode_num), parent_stat);
        int parent_blockoffset = BOFST(parent_inode_num);

        parent_stat[parent_blockoffset].mtime = time(NULL);        //更新父目录的mtime和ctime
        parent_stat[parent_blockoffset].ctime = time(NULL);
        parent_stat[parent_blockoffset].size -= 32;

        disk_write(BID(parent_inode_num), parent_stat);
        file_count = parent_stat[parent_blockoffset].size / FILE_INFO_SIZE;

        long datablock_num = file_count / FN_IN_DIR;
        long datablock_left = file_count % FN_IN_DIR;

        disk_block last_dir_data[1];
        disk_read(parent_stat[parent_blockoffset].direct_ptr[datablock_num], last_dir_data);

        file_info last_files = last_dir_data[0].info[(file_count) % 128];
        inode_t last_file_inode = last_files.inode_num;

        for (int i = 0; i < datablock_num; i++)
        {
            disk_block Dir_data[1];
            disk_read(parent_stat[parent_blockoffset].direct_ptr[i], Dir_data);
            for (int j = 0; j < FN_IN_DIR; j++)
            {
                if (Dir_data[0].info[j].inode_num == inode_num)
                {// 根据inode_num匹配出要删除的文件
                    if (inode_num != last_file_inode)
                    {// 如果不是最后一个文件，就把最后一个文件信息拷贝过去 //如果是最后一个实际上不需要处理，因为根据size已经访问不到了
                        memcpy(&(Dir_data[0].info[j]), &last_files, 32);
                        disk_write(parent_stat[parent_blockoffset].direct_ptr[i], Dir_data);
                        return 0;
                    }
                }
            }
        }

        if (datablock_left == 0)    //删除的文件信息是该block1最后的一个，需要释放整个block
        {
            free_block_bitmap(parent_stat[parent_blockoffset].direct_ptr[datablock_num]);
            return 0;
        }

        disk_block dir_data2[1];
        disk_read(parent_stat[parent_blockoffset].direct_ptr[datablock_num], dir_data2);
        for (int j = 0; j < (datablock_left + 1); j++)
        {
            if (dir_data2[0].info[j].inode_num == inode_num)
            {// 根据inode_num匹配出要删除的文件
                if (inode_num != last_file_inode)
                {// 如果不是最后一个文件，就把最后一个文件信息拷贝过去
                    memcpy(&(dir_data2[0].info[j]), &last_files, 32);
                    disk_write(parent_stat[parent_blockoffset].direct_ptr[datablock_num], dir_data2);
                    return 0;
                }
            }
        }
    }
    return 0;
}

int fs_write (const char *path, const char *buffer, size_t size, off_t offset, struct fuse_file_info *fi)
{
    printf("\nwrite is called:%s %d %d\n", path, size, offset);

    inode_t inode_num = match_path(path);
    if (inode_num == -1)
    {
        printf("file_not exits\n");
        return 0;
    }

    my_stat inode_info[32];
    disk_read(BID(inode_num), inode_info);
    int blockoffset = BOFST(inode_num);

    inode_info[blockoffset].ctime = time(NULL);        //更新ctime和mtime
    inode_info[blockoffset].mtime = time(NULL);

    off_t nowsize = inode_info[blockoffset].size;
    inode_info[blockoffset].size += size;

    //    得到现在块的位置
    datablock_t now_block_num = nowsize / BKSIZE;

    if (nowsize % BKSIZE != 0)
    {// 
        printf("enter somewhere not welcome!\n");
        int data_left_num = nowsize % BKSIZE;

        if (now_block_num < DP_NUM)
        {//
            char buff[BKSIZE]={0};
            disk_read(inode_info[blockoffset].direct_ptr[now_block_num], buff);
            memcpy(buff + data_left_num, buffer, size);
            disk_write(inode_info[blockoffset].direct_ptr[now_block_num], buff);
            disk_write(BID(inode_num), inode_info);
            return size;
        }
        else if (now_block_num < DP_NUM + DP_NUM_PER_IP)
        {//
            char buff[BKSIZE]={0};
            int now_indirect_block_num = now_block_num - DP_NUM;
            disk_block indirect_pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[0], indirect_pointer_data);
            disk_read(indirect_pointer_data[0].ptr[now_indirect_block_num], buff);
            memcpy(buff + data_left_num, buffer, size);
            disk_write(indirect_pointer_data[0].ptr[now_indirect_block_num], buff);
            disk_write(BID(inode_num), inode_info);
            return size;

        }
        else if (now_block_num < DP_NUM + 2*DP_NUM_PER_IP)
        {
            char buff[BKSIZE]={0};
            int now_indirect_block_num = now_block_num - DP_NUM - DP_NUM_PER_IP;
            disk_block indirect_pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[1], indirect_pointer_data);
            disk_read(indirect_pointer_data[0].ptr[now_indirect_block_num], buff);
            memcpy(buff + data_left_num, buffer, size);
            disk_write(indirect_pointer_data[1].ptr[now_indirect_block_num], buff);
            disk_write(BID(inode_num), inode_info);
            return size;
        }
    }
    else // 追加一个block
    {
        datablock_t new_blockid = find_free_block_num();
        printf("new_blockid:%d\n", new_blockid);
        set_block_bitmap(new_blockid);

        if (now_block_num < DP_NUM)
        {
            inode_info[blockoffset].direct_ptr[now_block_num] = new_blockid;
            char buff[BKSIZE]={0};
            memcpy(buff, buffer, size);
            disk_write(new_blockid, buff);
            disk_write(BID(inode_num), inode_info);
            return size;
        }
        else if (now_block_num == DP_NUM)
        {
            datablock_t new_indirect_blockid = find_free_block_num();
            set_block_bitmap(new_indirect_blockid);
            inode_info[blockoffset].indirect_ptr[0] = new_indirect_blockid;

            disk_block pointer_data[1];
            pointer_data[0].ptr[0] = new_blockid;

            char buff[BKSIZE]={0};
            memcpy(buff, buffer, size);
            disk_write(new_indirect_blockid, pointer_data);
            disk_write(new_blockid, buff);
            disk_write(BID(inode_num), inode_info);

            return size;
        }
        else if (now_block_num < DP_NUM + DP_NUM_PER_IP)
        {
            printf("now_block_num:%d\n", now_block_num);

            disk_block pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[0], pointer_data);
            pointer_data[0].ptr[now_block_num - DP_NUM] = new_blockid;

            char buff[BKSIZE]={0};
            memcpy(buff, buffer, size);
            
            disk_write(inode_info[blockoffset].indirect_ptr[0], pointer_data);
            disk_write(new_blockid, buff);
            disk_write(BID(inode_num), inode_info);

            return size;
        }
        else if (now_block_num == DP_NUM + DP_NUM_PER_IP)
        {
            printf("enter somewhere not welcome!\n");
            datablock_t new_indirect_blockid = find_free_block_num();
            set_block_bitmap(new_indirect_blockid);
            inode_info[blockoffset].indirect_ptr[1] = new_indirect_blockid;

            disk_block pointer_data[1];
            pointer_data[0].ptr[0] = new_blockid;

            char buff[BKSIZE]={0};
            memcpy(buff, buffer, size);
            disk_write(new_indirect_blockid, pointer_data);
            disk_write(new_blockid, buff);
            disk_write(BID(inode_num), inode_info);
            return size;
        }
        else if (now_block_num < DP_NUM + 2 * DP_NUM_PER_IP)
        {
            printf("enter somewhere not welcome!\n");
            disk_block pointer_data[1];
            disk_read(inode_info[blockoffset].indirect_ptr[1], pointer_data);
            pointer_data[0].ptr[now_block_num - DP_NUM - DP_NUM_PER_IP] = new_blockid;

            char buff[BKSIZE] = {0};
            memcpy(buff, buffer, size);
            disk_write(inode_info[blockoffset].indirect_ptr[1], pointer_data);
            disk_write(new_blockid, buff);
            disk_write(BID(inode_num), inode_info);
            return size;
        }
        else
        {
            return 0;
        }
    }
    return 0;
}

int fs_truncate (const char *path, off_t size)
{ 
    printf("\n\ntruncate is called:%s\n", path);
    inode_t inode_num = match_path(path);
    my_stat inode_info[32];

    disk_read(BID(inode_num), inode_info);
    inode_info[BOFST(inode_num)].ctime = time(NULL);    // 更新文件ctime

    int blockoffset = BOFST(inode_num);
    off_t nowsize = inode_info[BOFST(inode_num)].size;
    inode_info[BOFST(inode_num)].size = size;
    disk_write(BID(inode_num), inode_info);

    if (size == 0)
    {// 不处理
    }
    else if (nowsize > size)
    {//    释放
        int block_num_begin = size / BKSIZE;
        if (size % BKSIZE == 0)//处理下一个剩余块
            block_num_begin--;
        int block_num_end = nowsize / BKSIZE;

        if (nowsize % BKSIZE == 0)
            block_num_end--;

        if (block_num_begin != block_num_end)
        {//相等不处理
            for (int i = block_num_begin+1; i <= block_num_end; i++)
            {
                if (i < DP_NUM)
                    free_block_bitmap(inode_info[BOFST(inode_num)].direct_ptr[i]);

                else if ((i - DP_NUM) < DP_NUM_PER_IP)
                {
                    disk_block data[1];
                    disk_read(inode_info[blockoffset].indirect_ptr[0],data);
                    free_block_bitmap(data[0].ptr[i - DP_NUM]);

                    if(i == DP_NUM)
                    free_block_bitmap(inode_info[blockoffset].indirect_ptr[0]);

                }
                else if ((i - DP_NUM) < 2 * DP_NUM_PER_IP)
                {

                    disk_block data[1];
                    disk_read(inode_info[blockoffset].indirect_ptr[1], data);
                    free_block_bitmap(data[0].ptr[i - DP_NUM - DP_NUM_PER_IP]);

                    if(i == (DP_NUM+DP_NUM_PER_IP))
                    free_block_bitmap(inode_info[blockoffset].indirect_ptr[1]);
                }
            }
        }
    }
    else
    {//    分配
        int block_num_end = size / BKSIZE;
        if (size % BKSIZE == 0)//处理下一剩余块
            block_num_end--;
        int block_num_begin = nowsize / BKSIZE;

        if (nowsize % BKSIZE == 0)
            block_num_begin--;

        if (block_num_begin != block_num_end)
        {//相等不处理

            int findirect_num = 0;
            int sindirect_num = 0;

            for (int i = block_num_begin + 1; i <= block_num_end; i++)
            {
                if (i < DP_NUM) {
                    int datablock_num = find_free_block_num();
                    if (datablock_num == -1)
                        return -ENOSPC;
                    set_block_bitmap(datablock_num);

                    inode_info[BOFST(inode_num)].direct_ptr[i] = datablock_num;
                }
                else if ((i - DP_NUM) < DP_NUM_PER_IP)
                {

                    if (i == DP_NUM)
                    {//分配一个间接指针
                        findirect_num = find_free_block_num();
                        if (findirect_num == -1)
                            return -ENOSPC;
                        set_block_bitmap(findirect_num);

                        inode_info[blockoffset].indirect_ptr[0] = findirect_num;
                    }

                    int datablock_num = find_free_block_num();
                    if (datablock_num == -1)
                        return -ENOSPC;
                    set_block_bitmap(datablock_num);

                    disk_block data[1];
                    disk_read(findirect_num, data);
                    data[0].ptr[i - DP_NUM] = datablock_num;
                    disk_write(findirect_num, data);

                }
                else
                {
                    if (i == (DP_NUM + DP_NUM_PER_IP))
                    {//分配第二个间接指针
                        sindirect_num= find_free_block_num();
                        if (sindirect_num == -1)
                            return -ENOSPC;
                        set_block_bitmap(sindirect_num);

                        inode_info[blockoffset].indirect_ptr[1] = sindirect_num;
                    }

                    int datablock_num = find_free_block_num();
                    if (datablock_num == -1)
                        return -ENOSPC;
                    set_block_bitmap(datablock_num);

                    disk_block data[1];
                    disk_read(sindirect_num, data);
                    data[0].ptr[i - DP_NUM - DP_NUM_PER_IP] = datablock_num;
                    disk_write(sindirect_num, data);
                }
            }
        }
    }

    return 0;
}

int fs_utime (const char *path, struct utimbuf *buffer)
{
    printf("\n\nutime is called:%s\n", path);

    inode_t inode_num = match_path(path);
    my_stat inode_info[32];

    disk_read(BID(inode_num), inode_info);
    inode_info[BOFST(inode_num)].ctime = time(NULL);
    inode_info[BOFST(inode_num)].atime = buffer->actime;
    inode_info[BOFST(inode_num)].mtime = buffer->modtime;
    disk_write(BID(inode_num), inode_info);

    return 0;
}

int fs_statfs (const char *path, struct statvfs *stat)
{
    printf("\n\nstatfs is called:%s\n", path);

    int bfree_num = 0;
    int bfiles = 0;

    char bfree_data1[BKSIZE];
    char bfree_data2[BKSIZE];
    char file_data[BKSIZE];
    disk_read(DBM_BLOCK_NUMA, bfree_data1);
    disk_read(DBM_BLOCK_NUMB, bfree_data2);
    disk_read(IBM_BLOCK_NUM, file_data);

    for (int byte_pos = 0; byte_pos < BKSIZE; byte_pos++)
    {
        for (int bit_pos = 0; bit_pos < BYTESIZE; bit_pos++)
        {
            if (!(bfree_data1[byte_pos] & (0x1 << bit_pos)))
                bfree_num++;
            
            if (!(bfree_data2[byte_pos] & (0x1 << bit_pos)))
                bfree_num++;
            
            if (!(file_data[byte_pos] & (0x1 << bit_pos)))
                bfiles++;
        }
    }

    stat->f_bfree = bfree_num;
    stat->f_bavail = bfree_num;
    stat->f_bsize = BKSIZE;
    stat->f_blocks = BLOCK_NUM;    //6W+ in disk.h
    stat->f_files = 32768;
    stat->f_namemax = MAX_FILENAME;
    stat->f_files = MAX_INODE_NUM - bfiles;
    stat->f_ffree = bfiles;
    stat->f_favail = bfiles;

    disk_write(SUPER_BLOCK_NUM, stat);
    return 0;
}

int fs_open (const char *path, struct fuse_file_info *fi)
{
    printf("Open is called:%s\n",path);
    return 0;
}

//Functions you don't actually need to modify
int fs_release (const char *path, struct fuse_file_info *fi)
{
    printf("Release is called:%s\n",path);
    return 0;
}

int fs_opendir (const char *path, struct fuse_file_info *fi)
{
    printf("Opendir is called:%s\n",path);
    return 0;
}

int fs_releasedir (const char * path, struct fuse_file_info *fi)
{
    printf("Releasedir is called:%s\n",path);
    return 0;
}

static struct fuse_operations fs_operations = {
    .getattr    = fs_getattr,
    .readdir    = fs_readdir,
    .read       = fs_read,
    .mkdir      = fs_mkdir,
    .rmdir      = fs_rmdir,
    .unlink     = fs_unlink,
    .rename     = fs_rename,
    .truncate   = fs_truncate,
    .utime      = fs_utime,
    .mknod      = fs_mknod,
    .write      = fs_write,
    .statfs     = fs_statfs,
    .open       = fs_open,
    .release    = fs_release,
    .opendir    = fs_opendir,
    .releasedir = fs_releasedir
};

int main(int argc, char *argv[])
{
    if(disk_init())
    {
        printf("Can't open virtual disk!\n");
        return -1;
    }
    if(mkfs())
    {
        printf("Mkfs failed!\n");
        return -2;
    }
    return fuse_main(argc, argv, &fs_operations, NULL);
}
