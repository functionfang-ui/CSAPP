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
	
	//you should editor the following the part to accelerate the calculation
	/*--------------------------------*/
	for (int i = 0; i < lineorder_table_info.rows; ++i) {

		quantity_sum = quantity_sum + lineorder_table_info.table -> lo_quantity[i];
		discount_total_price = discount_total_price + lineorder_table_info.table -> lo_extendedprice[i] * (1 - lineorder_table_info.table -> lo_discount[i]);
		tax_discount_total_price = tax_discount_total_price + lineorder_table_info.table -> lo_extendedprice[i] * (1 - lineorder_table_info.table -> lo_discount[i]) * 
								   (1 + lineorder_table_info.table -> lo_tax[i] );

		if (lineorder_table_info.table -> lo_orderdate[i] <= limit_orderdate) {
			quantity_sum_with_condition = quantity_sum_with_condition + lineorder_table_info.table -> lo_quantity[i];
		}

		if (lineorder_table_info.table -> lo_orderdate[i] <= limit_orderdate) {
			discount_total_price_with_condition = discount_total_price_with_condition 
			+ lineorder_table_info.table -> lo_extendedprice[i] * (1 - lineorder_table_info.table -> lo_discount[i]);
		}

		if (lineorder_table_info.table -> lo_orderdate[i] <= limit_orderdate) {
			tax_discount_total_price_with_condition = tax_discount_total_price_with_condition 
			+ lineorder_table_info.table -> lo_extendedprice[i] * (1 - lineorder_table_info.table -> lo_discount[i]) * (1 + lineorder_table_info.table -> lo_tax[i] );
		}
	}
	
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
