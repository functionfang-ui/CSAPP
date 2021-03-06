#include <cstdio>
#include "dataload.h"
#define limit_orderdate 19950630

const char lineorder_name[] = "lineorder.tbl";

static __inline__ uint64_t curtick() {
	uint64_t tick;
	unsigned long lo,hi;
	__asm__ __volatile__ ("rdtsc":"=a"(lo),"=d"(hi));
	tick = (uint64_t) hi << 32 | lo;
	return tick;
}

static __inline__ void startTimer(uint64_t *t) {
	(*t) = curtick();
}

static __inline__ void stopTimer(uint64_t *t) {
	(*t) = curtick() - *t;
}


int main() {
	table_info lineorder_table_info;
	FILE * lineorder_file;
	
	//load lineorder table from file
	lineorder_file = fopen(lineorder_name,"r");	
	loadTable(lineorder_file, &lineorder_table_info);

	unsigned int quantity_sum = 0;
	double discount_total_price = 0;
	double tax_discount_total_price = 0;
	unsigned int quantity_sum_with_condition = 0;
	double discount_total_price_with_condition = 0;
	double tax_discount_total_price_with_condition = 0;
	
	uint64_t beg;
	startTimer(&beg);
	
	long len = lineorder_table_info.rows;
	long len_offset = (len/3)*3;

	lineorder_struct *tb = lineorder_table_info.table;
	int *quantity = tb->lo_quantity;//防止重复的指针访问
	int *price = tb->lo_extendedprice;
	double *discount = tb->lo_discount;
	double *tax = tb->lo_tax;
	int *orderdate = tb->lo_orderdate;

	int tmp1=0,tmp2=0,tmp3=0;//定义临时变量
	double tmpp1=0,tmpp2=0,tmpp3=0;
    double tmppp1=0,tmppp2=0,tmppp3=0;
	int tep1=0,tep2=0,tep3=0;
	double tepp1=0,tepp2=0,tepp3=0;
    double teppp1=0,teppp2=0,teppp3=0;

	for(int i=0;i<len_offset;i+=3){//一次迭代3个
		tmp1+=quantity[i];
		tmp2+=quantity[i+1];
		tmp3+=quantity[i+2];

		tmpp1+=price[i]*(1-discount[i]);
		tmpp2+=price[i+1]*(1-discount[i+1]);
		tmpp3+=price[i+2]*(1-discount[i+2]);

		tmppp1+=price[i]*(1-discount[i])*(1+tax[i]);
		tmppp2+=price[i+1]*(1-discount[i+1])*(1+tax[i+1]);
		tmppp3+=price[i+2]*(1-discount[i+2])*(1+tax[i+2]);
		
		if(orderdate[i]<=limit_orderdate){//合并判断
			tep1+=quantity[i];
			tepp1+=price[i]*(1-discount[i]);
			teppp1+=price[i]*(1-discount[i])*(1+tax[i]);
		}
		if(orderdate[i+1]<=limit_orderdate){
			tep2+=quantity[i+1];
			tepp2+=price[i+1]*(1-discount[i+1]);
			teppp2+=price[i+1]*(1-discount[i+1])*(1+tax[i+1]);
		}
		if(orderdate[i+2]<=limit_orderdate){//合并判断
			tep1+=quantity[i+2];
			tepp1+=price[i+2]*(1-discount[i+2]);
			teppp1+=price[i+2]*(1-discount[i+2])*(1+tax[i+2]);
		}
	}
	for(int i=len_offset;i<len;i++){//简单处理剩余的几个
		quantity_sum+=quantity[i];
		discount_total_price+=price[i]*(1-discount[i]);
		tax_discount_total_price+=price[i]*(1-discount[i])*(1+tax[i]);
		if(orderdate[i]<=limit_orderdate){
			quantity_sum_with_condition+=quantity[i];
			discount_total_price_with_condition+=price[i]*(1-discount[i]);
			tax_discount_total_price_with_condition+=price[i]*(1-discount[i])*(1+tax[i]);
		}
	}
	quantity_sum+=tmp1+tmp2+tmp3;
	discount_total_price+=tmpp1+tmpp2+tmpp3;
	tax_discount_total_price+=tmppp1+tmppp2+tmppp3;
	quantity_sum_with_condition+=tep1+tep2+tep3;
	discount_total_price_with_condition+=tepp1+tepp2+tepp3;
	tax_discount_total_price_with_condition+=teppp1+teppp2+teppp3;
	
	stopTimer(&beg); 

	//output
	printf("%d\n",quantity_sum);
	printf("%0.6lf\n",discount_total_price);
	printf("%0.6lf\n",tax_discount_total_price);
	printf("%d\n",quantity_sum_with_condition);
	printf("%0.6lf\n",discount_total_price_with_condition);
	printf("%0.6lf\n",tax_discount_total_price_with_condition);
	printf("running time is %ld\n", (long)(beg));
}
