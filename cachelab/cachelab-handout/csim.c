#include "cachelab.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>

#define INF 0x7fffffff	//block重新赋值后将Lru置为INF
#define uint unsigned long int

uint Hits=0,Misses=0,Evictions=0,vflag=0;//命中 不命中 冲突数 是否打印每一行的处理信息

struct Cache{
	uint S,E,B;		//组数	每组的行数	block的大小		吐槽一下,为什么命令行不直接传S E B,而是传s E b?
	uint ***cache;
}Cache;

void setCache(uint _S,uint _E,uint _B){
	Cache.S=_S;Cache.E=_E,Cache.B=_B;//初始化三维
	Cache.cache=(uint ***)malloc(Cache.S*sizeof(uint **));//初始化组数
	for(int i=0;i<Cache.S;i++)
		Cache.cache[i]=(uint **)malloc(Cache.E*sizeof(uint *));//初始化每一组的所有行
	for(int i=0;i<Cache.S;i++)
		for(int j=0;j<Cache.E;j++)
			Cache.cache[i][j]=(uint *)malloc(3*sizeof(uint));//为每一行申请3个空间,分别存
	for(int i=0;i<Cache.S;i++)
		for(int j=0;j<Cache.E;j++){
		Cache.cache[i][j][0]=0;		//有效位
		Cache.cache[i][j][1]=0;		//标记位
		Cache.cache[i][j][2]=INF;	//Lru信息,即反应该block是否最近使用过,该值越大,最后一次使用越近。均初始为无穷大INF
	}
}

void freeCache(){//释放空间
	for(int i=0;i<Cache.S;i++)
		for(int j=0;j<Cache.E;j++)
			free(Cache.cache[i][j]);
	for(int i=0;i<Cache.S;i++)
		free(Cache.cache[i]);
	free(Cache.cache);
}

uint getValid(uint _S,uint _E){//返回有效位
	return Cache.cache[_S][_E][0];
}

uint getTag(uint _S,  uint _E){//返回标记位
	return Cache.cache[_S][_E][1];
}

uint getLru(uint _S,  uint _E){//返回Lru值
	return Cache.cache[_S][_E][2];
}

int isHit(uint _S,uint Tag){//遍历该Set中的所有Line,如果有效位为1且Tag吻合,则hit
	for(int i=0;i<Cache.E;i++)
		if(Cache.cache[_S][i][0]==1&&Cache.cache[_S][i][1]==Tag)	return i;
	return -1;//否则miss
}

uint getMinLru(uint _S){//返回第_S组的空位或Lru最小的block位置
	uint Lru=INF,Pos=0;
	for(int i=0;i<Cache.E;i++){
		if(getValid(_S,i)==0)	return i;//发现空位,直接返回空位位置
		if(Lru>getLru(_S,i)){//迭代求Lru最小的block
			Lru=getLru(_S,i);Pos=i;
		}
	}
	return Pos;
}

void Replace(uint _S,uint _E,uint Tag){//更新Lru 或 重置一个block的有效位和标记位 然后更新Lru
	if(getValid(_S,_E)==1&&getTag(_S,_E)!=Tag){//若有效位为1但是Tag位不符,则Eviction
		++Evictions;
		if(vflag)	printf("Eviction ");
	}
	Cache.cache[_S][_E][0]=1;
	Cache.cache[_S][_E][1]=Tag;
	Cache.cache[_S][_E][2]=INF;//将新加入的block的Lru值置为INF
	for(int i=0;i<Cache.E;i++)    if(i!=_E)--Cache.cache[_S][i][2];//更新该组所有其他block的Lru,即为均减一
}

void Solve(uint S,uint Tag){
	int is_Hit=isHit(S,Tag);
	if(is_Hit==-1){
		++Misses;
		if(vflag)	printf("Misses ");
		Replace(S,getMinLru(S),Tag);//这里为miss的这次寻找到Lru最小或闲置的的block,并更新该组所有的Lru
	}
	else {
		++Hits;
		Replace(S,is_Hit,Tag);//这里只会更新Lru
		if(vflag)	printf("Hits ");
	}
}

void printHelp(){//帮助信息
	printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n\n");

	printf("Options:\n");
	printf("	-h         Print this help message.\n");
    printf("	-v         Optional vflag.\n");
    printf("	-s <num>   Number of set index bits.\n");
    printf("	-E <num>   Number of lines per set.\n");
    printf("	-b <num>   Number of block offset bits.\n");
    printf("	-t <file>  Trace file.\n\n");

	printf("Examples:\n");
	printf("linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n");
    printf("linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");

}

int main(int argc,char *const argv[]){
	_Bool wrong=0;	//没有bool型可以使用，所以只能使用_Bool
	FILE *path=NULL;	//文件路径
	char opt,cmd[2],Ch;
	int _s=-1,_E=-1,_b=-1;
	while((opt=getopt(argc,argv,"hvs:E:b:t:"))!=-1){//虽然不太懂getopt，但网上都这样用
		switch(opt){
			case 'h':
				printHelp();break;
			case 'v':
				vflag=1;break;
			case 's':
				_s=atol(optarg);break;
			case 'E':
				_E=atol(optarg);break;
			case 'b':
				_b=atol(optarg);break;
			case 't':
				path=fopen(optarg,"r");break;
			default:
				wrong=1;
		}
	}
	if(_s<=0||_E<=0||_b<=0||path==NULL||wrong){printHelp();return 0;}	
	setCache(1<<(uint)_s,_E,1<<(uint)_b);	//再次吐槽
	uint addr,size,Tag,S;
	while(fscanf(path,"%s%lx%c%lu",cmd,&addr,&Ch,&size)!=EOF){
		if(cmd[0]=='I')	continue;
		Tag=addr>>(_s+_b);				//解析出Tag
		S=(addr&((1lu<<(_s+_b))-1))>>_b;//解析出Set
		if(vflag)printf("%c %lx%c%lu: ",cmd[0],addr,Ch,size);
		if(cmd[0]=='L'||cmd[0]=='S')//读或写只要操作一次
			Solve(S,Tag);
		else {	//读和写要操作两次
			Solve(S,Tag);
			Solve(S,Tag);
		}
		if(vflag)	printf("S=%lu Tag=%lu\t\n",S,Tag);
	}
	printSummary(Hits,Misses,Evictions);
	freeCache();
    return 0;
}
