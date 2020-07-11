# $Optlab$实验报告

**时间** <u>2019 12 31</u>				**姓名** <u>方晓坤</u>				**学号** <u>2018202046</u>



## 一、需求分析

- 在学习了$CSAPP$第五章——优化程序性能后，为了进一步加深对程序执行过程的认识，学习如何对程序做常数级别的优化，我们设计并完成了$optlab$——优化程序实验。

- 本实验中，我们需要优化对文本文件`lineorder.tbl`中数据的大规模操作，对其中低效的循环做合并和展开，从而对其产生常数级别的优化。

  

## 二、准备工作

### 1、浏览lab目录

有几个需要注意的文件

- `query.cpp`  我们需要优化的含低效`for`循环的`.cpp`文件
- `VectorizedProcessing_SIMD_new.c`  老师给出的样例程序
- `lineorder.tbl`  需要读取的数据文件
- `dbgen` 可以生成`.tbl`文件的可执行文件

### ２、添加辅助文件

- `query_cmp.cpp`　复制优化前的`query.cpp`，对前后效率进行对比



## 三、详细设计

先行阅读原来低效率的代码

~~~cpp
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
~~~

我们观察可以发现，原代码有以下几个缺点：

- 大量重复的内容。这主要包括指针的重复访问内存，相同的分支判断
- 已经运算过的结果前后没有有效利用
- 每次只迭代一个，没有充分使用`cache`中已经缓存的数据

我们针对这些缺点，主要有以下优化：

- 将重复的内容用临时变量转存，将相同的分支判断合并
- 重复使用临时变量中的值
- 循环展开，比如３×３

优化过后的具体代码如下：

~~~cpp
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
~~~

分别通过`g++ query.cpp -o query -O1`和`g++ query_cmp.cpp -o query_cmp -O1`对`.cpp`文件进行编译，生成了可执行文件`query`和`query_cmp`。再分别运行比较效率，结果如下：

![](/home/fang/Pictures/Screenshot from 2020-01-03 17-12-12.png)

所用时间达到了原先的5/6，有明显的提升。