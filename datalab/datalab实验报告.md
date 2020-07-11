# 计算机系统基础$Datalab$实验报告





## 一、需求分析

**1.**在学习课程第二章——信息的表示和处理之后，为了深入理解计算机系统底层对信息的处理，熟练掌握位运算以及逻辑运算操作，我们设计并完成了$Datalab$实验。

**2.**在本实验中，一共有20余道题要求我们解答，类型均为函数补全。我们需要尽可能少地使用操作符（如$!$ ~ & ^ $|$ $+$ $<<$ $>>$等，具体由题目而定）来实现题干要求的程序功能。

## 二、题目概要和详细设计

### 1. bitXor - x^y using only ~ and &

由于是同时对32位做异或操作，任意两位之间无关联，所以可以单独看一位的运算情况。

| <code>x​</code> | <code>y​</code> | <code>~((~x)&(~y))​</code> | <code>~(x&y)</code> | <code>x^y</code> |
| -------------- | -------------- | ------------------------- | ------------------- | ---------------- |
| 0              | 0              | 0                         | 1                   | 0                |
| 0              | 1              | 1                         | 1                   | 1                |
| 1              | 0              | 1                         | 1                   | 1                |
| 1              | 1              | 1                         | 0                   | 0                |

通过观察，我们不难发现<code>(~((~x)&(~y)))&(~(x&y))</code>等价于与<code>x^y</code>，所以<code>(~((~X)&(~y)))&(~(x&y))</code>即为要求的一个合理解。附代码如下。

~~~c
int bitXor(int x,int y)
{
	return (~((~X)&(~y)))&(~(x&y));
}
~~~

可以换一种思路，利用德摩根律，也可以得到相同的结果。

### 2.evenBits - return word with even-numbered bits set to 1

由于$Datalab$限制了能直接申请的掩码最大为<code>0xFF</code>,所以我们申请$mask$为<code>0x55</code>(即<code>0000……000001010101</code>)。将$mask$左移$8$位，再与原$mask$相加，再迭代一次，即可得到$32$位中偶数位全标为$1$的掩码。附代码如下。

~~~c
int evenBits(void)
{ 
	int x = 0x55;
	int y = x<<8;
	x += y;
	y = x << 16;
	x += y;
    return x;
}
~~~

### 3.fitsShort - return 1 if x can be represented as a 16-bit, two's complement integer

通过观察，我们不难发现：$16$位的$short$型的数据范围为$-2^{15}$ ~ $2^{15}-1$，与此对应的$int$型十六进制范围是<code>0x00007FFF</code>~<code>0xFFFF8000</code>，所以我们只需要验证前$17$位是否全部是$0$或全部是$1$。将$x$右移$15$位，问题就转化为验证前$32$位是否全部是$0$或全部是$1$。为了减少操作数，我们可以将$x$右移$16$位并与右移$15$位的结果做异或。若全部是$0$或全部是$1$则得到$0$，否则得到$1$，再取非即可。附代码如下。

~~~c
int fitsShort(int x) 
{
    return !((x>>15)^(x>>16));
}
~~~

### 4.isTmax - returns 1 if x is the maximum, two's  complement number,and 0 otherwise 

这道题我们可以利用溢出的特点。先让$x$加一得$y$，再让$y$与$x$做异或得$z$。所以若$x=Tmax$，则$y=Tmin$，$z=-1$，我们返回<code>!(z+1)</code>即可。可是我们发现当$x=-1$时也有相同的结果，所以对$y$特判，返回<code>!(z+!y+1)</code>。附代码如下。

~~~c
int isTmax(int x) 
{
	int y=x+1;
	int z=y^x;
	return !(z+!y+1);
}
~~~

### 5.fitsBits - return 1 if x can be represented as an n-bit, two's complement integer.

本题同**3.fitsShort**。附代码如下。

~~~c
int fitsBits(int x, int n) 
{
  	int y= x>>(n+~0);
	return !((y>>1)^y);
}
~~~

### 6.upperBits - pads n upper bits with 1's, assuming 0 <= n <= 32

本题思路比较直白。先获取一个全一的掩码<code>0xFFFFFFFF</code>，再把它左移$32-n$位即可。考虑到$n=0$时，左移$32$位是未定义行为，掩码未操作，所以需要对$n=0$进行特判。原先掩码的值位$-1$，$n=0$时想要得到$0$，只要加$1$即可。附代码如下。

~~~c
int upperBits(int n)
{
  	return ((~0)<<(33+~n))+!n;
}
~~~

### 7.allOddBits - return 1 if all odd-numbered bits in word set to 1

同**2.evenBits**，构建掩码$0xAA$，左移迭代两次，再异或取反特判即可。附代码如下。

~~~c
int allOddBits(int x) 
{
	int a = 0xAA;
    int b = a<<8;
    int c;
    a+=b;
    b=a<<16;
    a+=b;
    c=a&x;
  	return !(c^a);
}
~~~

### 8.byteSwap - swaps the nth byte and the mth byte

这道题很有意思。注意到课堂上有教如何在不利用中间变量的情况下，交换两个变量的值的做法。其核心思想是利用异或。有公式<code>x^y^x=y</code>和下<code>x^y^y=x</code>，所以我们只要将需要交换的两个$byte$取异或，再分别与对应$byte$再异或即可。附代码如下。

~~~c
int byteSwap(int x, int n, int m) 
{
    int a;int b;
	int mask=0xff; 
	n<<=3;m<<=3;
	a=(exp>>n);
	b=(exp>>m);
	mask&=(a^b);
	return (mask<<n)^(mask<<m)^x;
}
~~~

### 9.absVal - absolute value of x

这需要分情况讨论。当$x$为正，直接返回即可；当$x$为负，要取反加一。我们先可以通过右移31位取到$x$的符号位，再对符号为进行特判。附代码如下。

~~~c
int absVal(int x) 
{
  	int y=x>>31;
	return (x^y)+~y+1;
}
~~~

### 10.divpwr2 - Compute x/(2^n), for 0 <= n <= 30

这也是需要分情况讨论。当$x$为正，直接右移$n$位返回即可；当$x$为负，要加上一个偏移量 $2^n-1$在右移$n$位。对负数的处理用到了偏置技术：对于整数$x$和$y$ $ (y>0)$， $x/y=(x+y-1)/y$ 
变量$x$和$k$分别有补码值$x$和无符号数值$k$，则当执行算术移位时，<code>(x+(1<<k)-1)>>k</code>产生数值 $x/2^k$ 。附代码如下。

~~~c
int divpwr2(int x, int n) 
{
	int y=x>>31;
	int z=((1<<n)+~0)&y;
    return (x+z)>>n;
}
~~~

### 11.leastBitPos - return a mask that marks the position of the least significant 1 bit. If x == 0, return 0

将$x$取反加一，则$x$的最末有效位又因进位置$1$，高位全部取反，低位全部为$0$。再和$x$做与即可。附代码如下。

~~~c
int leastBitPos(int x) 
{
  	return x&(~x+1);
}
~~~

### 12.logicalNeg - implement the ! operator, using all of the legal operators except !

分情况讨论的一道题，难点在于判断$x$是否为$0$。实际上若$x$和$-x$的符号位为均为$0$，则返回$1$，否则返回$0$。附代码如下。

~~~c
int logicalNeg(int x) 
{
  	return (~((x|(~x+1))>>31))&1;
}
~~~

### 13.bitMask - Generate a mask consisting of all 1's lowbit and highbit

按题目要求，我们需要将$highbit$和$lowbit$之间的位置一。需要注意的是，若$lowbit > highbit$，则应返回全$0$的掩码。所以不能直接赋值$1$，而应该赋$0$再取反。附代码如下。

~~~c
int bitMask(int highbit, int lowbit) 
{
	int a=~0;
	int b=(a<<hightbit)<<1;
	int c=~(a<<lowbit);
	return ~(b|c);
}
~~~

### 14.isLess - if x < y  then return 1, else return 0 

这道题充分考察了对符号位的应用和分情况讨论的思想。$x<y$只有两种情况：$x$ $ y$异号，即$x$为正$y$为负；$x$ $ y$同号，但$x-y$符号位为$1$。附代码如下。

~~~c
int isLess(int x, int y) 
{
	int a = x>>31;
	int b = y>>31;
	int sub = x+~y+1;
	int c = sub>>31;
	return (a&!b)|c&!(a^b);
}
~~~

### 15.logicalShift - shift x to the right by n, using a logical shift assuming 0 <= n <= 31

本题只需要构建前$n$个$bits$为$0$，其余$bits$为$1$的掩码，再将$x$与其做算数与操作即可。附代码如下。

~~~c
int logicalShift(int x, int n) 
{
  	int y=~0<<1;
	int z=y<<(32+~n);
	return (x>>n)&~z;
}
~~~

### 16.satMul2 - multiplies by 2, saturating to Tmin or Tmax if overflow

这可能是本次lab中最难的题了，有几个难点，比如判断$x+x$有没有溢出，通过$x+x$的符号位生成对应的$Tmin$或$Tmax$，还有自己写一个三元运算符实现分情况讨论。

溢出较好判断，比较$x$和$x+x$的符号位即可。若相同，则未溢出；不同，则溢出。

生成对应的$Tmin$或$Tmax$需要一些脑洞，主要有两种方法。

~~~c
//法一：
int sign=x>>31;
return (sign^(~(1<<31)));
//法二：
return (x_x>>31)^(1<<31);
~~~

相比较而言，法二的操作数更少，更加优秀。

最后三元运算符的编写可以引入一个$flag$用以储存条件判断的结果，若为真则$flag$置$-1$，若为假则$flag$置$0$。再分别于对应条件下的结果做与，取或返回即可。

附代码如下。

~~~c
int satMul2(int x) 
{
    int x_x=x+x;
	int flag=(x_x^x)>>31;
	int over = (x_x>>31)^(1<<31);
	return (~flag&x_x)|(flag&over);
}
~~~

### 17.subOK - Determine if can compute x-y without overflow

同**14.isLess**，分别取出$x$，$y$，$x-y$的符号位，当$x-y$不溢出只有两种情况：$x$，$y$同号；$x$，$y$异号，但$x-y$与$x$同号。附代码如下。

~~~c
int subOK(int x, int y) 
{
    int a = x>>31;
	int b = y>>31;
	int sub = x+~y+1;
	int c = sub>>31;
	return !(a^b)|!(a^c);
}
~~~

### 18.bang - Compute !x without using !

同**12.logicalNeg**。附代码如下。

~~~c
int bang(int x) 
{
  	return (~((x|(~x+1))>>31))&1;
}
~~~

### 19.bitParity - returns 1 if x contains an odd number of 0's

上课时的一道例题，考察折半的思想。题目可以转化为$x$含奇数个$1$时返回$1$。让前一半与后一半做异或，会抵消掉偶数个$1$。迭代$5$次，看最后一位。若最后一位是$1$，返回$1$；是$0$，则返回$0$。附代码如下。

~~~c
int bitParity(int x) 
{
	int y = x>>16;
	y=y^x;
	int z = y>>8;
	z=z^y;
	int a = z>>4;
	a=a^z;
	int b = a>>2;
	b=b^a;
	int c = b>>1;
	c=c^b;
	return c&1;
}
~~~

### 20.isPower2 - returns 1 if x is a power of 2, and 0 otherwise

若$x$为$2$的幂次，那必然有这样的形式：<code>0000…0100…0000</code>。我们可以将$x$减一再与$x$做异或，得到<code>0000…0111…1111</code>，再取反得到<code>1111…1000…0000</code>。将它加上两倍的$x$则会溢出到0，取非返回即可。实际上需要对<code>0x80000000</code>和$0$做规避。附代码如下。

~~~c
int isPower2(int x) 
{
	int sign=x>>31;
	int y=x+~0;
	int z=x^y;
	int a=~z;
	return !(a+x+x+sign+!x);
}
~~~


