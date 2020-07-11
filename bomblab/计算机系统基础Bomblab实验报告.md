# 计算机系统基础$Bomblab$实验报告



班级：<u>信息学院1班</u> 	姓名：<u>方晓坤</u> 	学号：<u>2018202046</u> 	完成日期：<u>2019.11.8</u>



## 一、需求分析

**1.**在学习课程第三章——程序的机器级表示之后，为了深入理解计算机系统底层对程序的处理，提高对汇编代码的读写能力，我们完成了$Bomb$$lab$实验。

**2.**在本实验中，一共有6道题要求我们解答（不计算secret_phase），类型均为读汇编。我们需要使用调试工具GDB来破解六个密码。

## 二、题目概要和详细解答

### 1、题目概要

最初每个人都获取了一个可执行文件bomb。它包括6道密码，必须全部输入正确，否则将会导致炸弹爆炸。由于bomb.c文件调用的函数均为隐藏的而无法直接查看，所以要求我们将可执行文件bomb反汇编。通过<code>objdump –d ./bomb > asm.s</code>，我们将生成的汇编代码保存到了asm.s文件中，以便传回本地查看。

### 2、详细解答

#### ① phase_1

话不多说，先上汇编。

~~~assembly
0000000000001254 <phase_1>:
    1254:	48 83 ec 08          	sub    $0x8,%rsp
    1258:	48 8d 35 91 18 00 00 	lea    0x1891(%rip),%rsi
    125f:	e8 4a 05 00 00       	callq  17ae <strings_not_equal>
    1264:	85 c0                	test   %eax,%eax
    1266:	75 05                	jne    126d <phase_1+0x19>
    1268:	48 83 c4 08          	add    $0x8,%rsp
    126c:	c3                   	retq   
    126d:	e8 40 08 00 00       	callq  1ab2 <explode_bomb>
    1272:	eb f4                	jmp    1268 <phase_1+0x14>
~~~

第一题的结构相对简单，意思就是将读进来的一个字符串与内存里的一个字符串进行比较，这里主要是调用了<code>strings_not_equal</code>函数，我们再来看一下这个函数的汇编。

~~~assembly
00000000000017ae <strings_not_equal>:
    17ae:	41 54                	push   %r12
    17b0:	55                   	push   %rbp
    17b1:	53                   	push   %rbx
    17b2:	48 89 fb             	mov    %rdi,%rbx
    17b5:	48 89 f5             	mov    %rsi,%rbp
    17b8:	e8 d4 ff ff ff       	callq  1791 <string_length>
    17bd:	41 89 c4             	mov    %eax,%r12d
    17c0:	48 89 ef             	mov    %rbp,%rdi
    17c3:	e8 c9 ff ff ff       	callq  1791 <string_length>
    17c8:	ba 01 00 00 00       	mov    $0x1,%edx
    17cd:	41 39 c4             	cmp    %eax,%r12d
    17d0:	74 07                	je     17d9 <strings_not_equal+0x2b>
    17d2:	89 d0                	mov    %edx,%eax
    17d4:	5b                   	pop    %rbx
    17d5:	5d                   	pop    %rbp
    17d6:	41 5c                	pop    %r12
    17d8:	c3                   	retq   
    17d9:	0f b6 03             	movzbl (%rbx),%eax
    17dc:	84 c0                	test   %al,%al
    17de:	74 27                	je     1807 <strings_not_equal+0x59>
    17e0:	3a 45 00             	cmp    0x0(%rbp),%al
    17e3:	75 29                	jne    180e <strings_not_equal+0x60>
    17e5:	48 83 c3 01          	add    $0x1,%rbx
    17e9:	48 83 c5 01          	add    $0x1,%rbp
    17ed:	0f b6 03             	movzbl (%rbx),%eax
    17f0:	84 c0                	test   %al,%al
    17f2:	74 0c                	je     1800 <strings_not_equal+0x52>
    17f4:	38 45 00             	cmp    %al,0x0(%rbp)
    17f7:	74 ec                	je     17e5 <strings_not_equal+0x37>
    17f9:	ba 01 00 00 00       	mov    $0x1,%edx
    17fe:	eb d2                	jmp    17d2 <strings_not_equal+0x24>
    1800:	ba 00 00 00 00       	mov    $0x0,%edx
    1805:	eb cb                	jmp    17d2 <strings_not_equal+0x24>
    1807:	ba 00 00 00 00       	mov    $0x0,%edx
    180c:	eb c4                	jmp    17d2 <strings_not_equal+0x24>
    180e:	ba 01 00 00 00       	mov    $0x1,%edx
    1813:	eb bd                	jmp    17d2 <strings_not_equal+0x24>
~~~

它汇编实现十分繁琐，但主要意思是先通过<code>string_length</code>获取两个串的长度。若长度不等则直接返回false(0)，若相等则一位一位地进行比较，完全相等则返回true(1)。

它的实现并不重要，重要的是我们了解到写入的字串存储在<code>%rdi</code>，用于比较的串储存在<code>%rsi</code>中。于是我们可以<code>p/s $rsi</code>检查寄存器内容，这样我们就得到了第一题答案——<code>"The future will be better tomorrow"</code>。



#### ② phase_2

先上汇编。

~~~assembly
0000000000001274 <phase_2>:
    1274:	55                   	push   %rbp
    1275:	53                   	push   %rbx
    1276:	48 83 ec 28          	sub    $0x28,%rsp
    127a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1281:	00 00 
    1283:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1288:	31 c0                	xor    %eax,%eax
    128a:	48 89 e6             	mov    %rsp,%rsi
    128d:	e8 5c 08 00 00       	callq  1aee <read_six_numbers>
    1292:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1296:	78 0a                	js     12a2 <phase_2+0x2e>
    1298:	bb 01 00 00 00       	mov    $0x1,%ebx
    129d:	48 89 e5             	mov    %rsp,%rbp
    12a0:	eb 11                	jmp    12b3 <phase_2+0x3f>
    12a2:	e8 0b 08 00 00       	callq  1ab2 <explode_bomb>
    12a7:	eb ef                	jmp    1298 <phase_2+0x24>
    12a9:	48 83 c3 01          	add    $0x1,%rbx                
    12ad:	48 83 fb 06          	cmp    $0x6,%rbx
    12b1:	74 13                	je     12c6 <phase_2+0x52>
    12b3:	89 d8                	mov    %ebx,%eax
    12b5:	03 44 9d fc          	add    -0x4(%rbp,%rbx,4),%eax   
    12b9:	39 44 9d 00          	cmp    %eax,0x0(%rbp,%rbx,4)
    12bd:	74 ea                	je     12a9 <phase_2+0x35>
    12bf:	e8 ee 07 00 00       	callq  1ab2 <explode_bomb>
    12c4:	eb e3                	jmp    12a9 <phase_2+0x35>
    12c6:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    12cb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    12d2:	00 00 
    12d4:	75 07                	jne    12dd <phase_2+0x69>
    12d6:	48 83 c4 28          	add    $0x28,%rsp
    12da:	5b                   	pop    %rbx
    12db:	5d                   	pop    %rbp
    12dc:	c3                   	retq   
    12dd:	e8 ae fb ff ff       	callq  e90 <__stack_chk_fail@plt>
~~~

我们先随便写入8个数，如1，2，3，4，5，6，不妨称$a$<sub>1</sub>，$a$<sub>2</sub>，$a$<sub>3</sub>，$a$<sub>4</sub>，$a$<sub>5</sub>，$a$<sub>6</sub>。这六个数通过<code>read_six_numbers</code>被读入<code>%rsp</code>，再将<code>%rsp</code>付给<code>%rbp</code>，通过<code>x/6dw $rbp</code>即可检查输入的六个数。

接下来程序<code>jump 12b3</code>进入一个循环，循环即用来检查这六个数是否符合规范，即检查当前的数字是否等于前一个数字加上循环变量。循环变量存储于<code>%rbx</code>或<code>%ebx</code>和<code>%eax</code>中，为<code>0 1 2 3 4 5</code>。发现需要满足$a$<sub>2</sub>=$a$<sub>1</sub>+1，$a$<sub>3</sub>=$a$<sub>2</sub>+2，$a$<sub>4</sub>=$a$<sub>3</sub>+3，$a$<sub>5</sub>=$a$<sub>4</sub>+4，$a$<sub>6</sub>=$a$<sub>5</sub>+5。这意味着有无穷多组解，我们可以令$a$<sub>1</sub>$=21845$，所以答案为<code>21845 21846 21848 21851 21855 21860</code>。



#### ③ phase_3

先上汇编。

~~~assembly
00000000000012e2 <phase_3>:
    12e2:	48 83 ec 28          	sub    $0x28,%rsp
    12e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12ed:	00 00 
    12ef:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    12f4:	31 c0                	xor    %eax,%eax
    12f6:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    12fb:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1300:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1305:	48 8d 35 32 18 00 00 	lea    0x1832(%rip),%rsi       
    130c:	e8 1f fc ff ff       	callq  f30 <__isoc99_sscanf@plt>
    1311:	83 f8 02             	cmp    $0x2,%eax
    1314:	7e 1f                	jle    1335 <phase_3+0x53>
    1316:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    131b:	0f 87 0c 01 00 00    	ja     142d <phase_3+0x14b>
    1321:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1325:	48 8d 15 34 18 00 00 	lea    0x1834(%rip),%rdx       
    132c:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1330:	48 01 d0             	add    %rdx,%rax
    1333:	ff e0                	jmpq   *%rax                    
    1335:	e8 78 07 00 00       	callq  1ab2 <explode_bomb>
    133a:	eb da                	jmp    1316 <phase_3+0x34>
    133c:	b8 63 00 00 00       	mov    $0x63,%eax               
    1341:	81 7c 24 14 7d 03 00 	cmpl   $0x37d,0x14(%rsp)        
    1348:	00 
    1349:	0f 84 e8 00 00 00    	je     1437 <phase_3+0x155>
    134f:	e8 5e 07 00 00       	callq  1ab2 <explode_bomb>
    1354:	b8 63 00 00 00       	mov    $0x63,%eax
    1359:	e9 d9 00 00 00       	jmpq   1437 <phase_3+0x155>
    135e:	b8 61 00 00 00       	mov    $0x61,%eax               
    1363:	81 7c 24 14 08 02 00 	cmpl   $0x208,0x14(%rsp)        
    136a:	00 
    136b:	0f 84 c6 00 00 00    	je     1437 <phase_3+0x155>
    1371:	e8 3c 07 00 00       	callq  1ab2 <explode_bomb>
    1376:	b8 61 00 00 00       	mov    $0x61,%eax
    137b:	e9 b7 00 00 00       	jmpq   1437 <phase_3+0x155>
    1380:	b8 6b 00 00 00       	mov    $0x6b,%eax
    1385:	81 7c 24 14 1d 01 00 	cmpl   $0x11d,0x14(%rsp)
    138c:	00 
    138d:	0f 84 a4 00 00 00    	je     1437 <phase_3+0x155>
    1393:	e8 1a 07 00 00       	callq  1ab2 <explode_bomb>
    1398:	b8 6b 00 00 00       	mov    $0x6b,%eax
    139d:	e9 95 00 00 00       	jmpq   1437 <phase_3+0x155>
    13a2:	b8 67 00 00 00       	mov    $0x67,%eax
    13a7:	81 7c 24 14 dd 03 00 	cmpl   $0x3dd,0x14(%rsp)
    13ae:	00 
    13af:	0f 84 82 00 00 00    	je     1437 <phase_3+0x155>
    13b5:	e8 f8 06 00 00       	callq  1ab2 <explode_bomb>
    13ba:	b8 67 00 00 00       	mov    $0x67,%eax
    13bf:	eb 76                	jmp    1437 <phase_3+0x155>
    13c1:	b8 70 00 00 00       	mov    $0x70,%eax
    13c6:	81 7c 24 14 0f 01 00 	cmpl   $0x10f,0x14(%rsp)
    13cd:	00 
    13ce:	74 67                	je     1437 <phase_3+0x155>
    13d0:	e8 dd 06 00 00       	callq  1ab2 <explode_bomb>
    13d5:	b8 70 00 00 00       	mov    $0x70,%eax
    13da:	eb 5b                	jmp    1437 <phase_3+0x155>
    13dc:	b8 72 00 00 00       	mov    $0x72,%eax
    13e1:	81 7c 24 14 28 02 00 	cmpl   $0x228,0x14(%rsp)
    13e8:	00 
    13e9:	74 4c                	je     1437 <phase_3+0x155>
    13eb:	e8 c2 06 00 00       	callq  1ab2 <explode_bomb>
    13f0:	b8 72 00 00 00       	mov    $0x72,%eax
    13f5:	eb 40                	jmp    1437 <phase_3+0x155>
    13f7:	b8 6d 00 00 00       	mov    $0x6d,%eax
    13fc:	81 7c 24 14 75 03 00 	cmpl   $0x375,0x14(%rsp)
    1403:	00 
    1404:	74 31                	je     1437 <phase_3+0x155>
    1406:	e8 a7 06 00 00       	callq  1ab2 <explode_bomb>
    140b:	b8 6d 00 00 00       	mov    $0x6d,%eax
    1410:	eb 25                	jmp    1437 <phase_3+0x155>
    1412:	b8 69 00 00 00       	mov    $0x69,%eax
    1417:	81 7c 24 14 96 01 00 	cmpl   $0x196,0x14(%rsp)
    141e:	00 
    141f:	74 16                	je     1437 <phase_3+0x155>
    1421:	e8 8c 06 00 00       	callq  1ab2 <explode_bomb>
    1426:	b8 69 00 00 00       	mov    $0x69,%eax
    142b:	eb 0a                	jmp    1437 <phase_3+0x155>
    142d:	e8 80 06 00 00       	callq  1ab2 <explode_bomb>
    1432:	b8 6f 00 00 00       	mov    $0x6f,%eax
    1437:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    143b:	74 05                	je     1442 <phase_3+0x160>
    143d:	e8 70 06 00 00       	callq  1ab2 <explode_bomb>
    1442:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1447:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    144e:	00 00 
    1450:	75 05                	jne    1457 <phase_3+0x175>
    1452:	48 83 c4 28          	add    $0x28,%rsp
    1456:	c3                   	retq   
    1457:	e8 34 fa ff ff       	callq  e90 <__stack_chk_fail@plt>
~~~

由于程序中调用了<code>sscanf</code>，我们需要了解它的正则形式。通过<code>x/s $rsi</code>，发现它的正则表达式为<code>"%d %c %d"</code>，即要求我们输入一个整型数，一个字符和一个整型数。由于它包含结构

~~~assembly
    132c:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1330:	48 01 d0             	add    %rdx,%rax
    1333:	ff e0                	jmpq   *%rax
~~~

可以发现这是一个明显的$switch-case$结构，所以答案不唯一，我们选取一组解即可。通过调试我们发现，当第一个数为$1$时，汇编跳转至<code>135e</code>。又由于十六进制数<code>0x208</code>十进制下为520，且<code>0x61</code>为<code>'a'</code>对应的ascii码。所以综上所述，<code>1 a 520</code>为一组符合要求的答案。



#### ④ phase_4

先上汇编。

~~~assembly
000000000000149b <phase_4>:
    149b:	48 83 ec 18          	sub    $0x18,%rsp
    149f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14a6:	00 00 
    14a8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14ad:	31 c0                	xor    %eax,%eax
    14af:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    14b4:	48 89 e2             	mov    %rsp,%rdx
    14b7:	48 8d 35 4f 19 00 00 	lea    0x194f(%rip),%rsi
    14be:	e8 6d fa ff ff       	callq  f30 <__isoc99_sscanf@plt> 
    14c3:	83 f8 02             	cmp    $0x2,%eax               
    14c6:	75 06                	jne    14ce <phase_4+0x33>
    14c8:	83 3c 24 0e          	cmpl   $0xe,(%rsp)             
    14cc:	76 05                	jbe    14d3 <phase_4+0x38>
    14ce:	e8 df 05 00 00       	callq  1ab2 <explode_bomb>
    14d3:	ba 0e 00 00 00       	mov    $0xe,%edx
    14d8:	be 00 00 00 00       	mov    $0x0,%esi               
    14dd:	8b 3c 24             	mov    (%rsp),%edi
    14e0:	e8 77 ff ff ff       	callq  145c <func4>
    14e5:	83 f8 01             	cmp    $0x1,%eax                
    14e8:	75 07                	jne    14f1 <phase_4+0x56>
    14ea:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)          
    14ef:	74 05                	je     14f6 <phase_4+0x5b>
    14f1:	e8 bc 05 00 00       	callq  1ab2 <explode_bomb>
    14f6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    14fb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1502:	00 00 
    1504:	75 05                	jne    150b <phase_4+0x70>
    1506:	48 83 c4 18          	add    $0x18,%rsp
    150a:	c3                   	retq   
    150b:	e8 80 f9 ff ff       	callq  e90 <__stack_chk_fail@plt>
~~~

同前用<code>x/s \$rsi</code>，发现<code>sscanf</code>读入了两个$int$，不妨设为$x $ $y$。该段代码主要是调用了<code>func4</code>，传入三个参数，若返回值为$1$则正确。可以看出后两个参数为$0$和$14$，第一个参数为$x$，且$x$的大小不超过$14$。这里由于<code>func4</code>的结构相对复杂，我们可以通过调试工具进行尝试。通过<code>p (int)func4(x,0,14)</code>对$x$进行遍历尝试，发现$x$为$8$或$9$或$11$时<code>func4</code>均返回$1$。除此以外容易发现$y=1$，所以综上所述，<code>8 1</code>是一个合理的答案。



#### ⑤ phase_5

先上汇编。

~~~assembly
0000000000001510 <phase_5>:
    1510:	53                   	push   %rbx
    1511:	48 89 fb             	mov    %rdi,%rbx
    1514:	e8 78 02 00 00       	callq  1791 <string_length>
    1519:	83 f8 06             	cmp    $0x6,%eax
    151c:	75 31                	jne    154f <phase_5+0x3f>
    151e:	48 89 d8             	mov    %rbx,%rax
    1521:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1525:	b9 00 00 00 00       	mov    $0x0,%ecx
    152a:	48 8d 35 4f 16 00 00 	lea    0x164f(%rip),%rsi
    1531:	0f b6 10             	movzbl (%rax),%edx
    1534:	83 e2 0f             	and    $0xf,%edx              
    1537:	03 0c 96             	add    (%rsi,%rdx,4),%ecx    
    153a:	48 83 c0 01          	add    $0x1,%rax           
    153e:	48 39 f8             	cmp    %rdi,%rax
    1541:	75 ee                	jne    1531 <phase_5+0x21>
    1543:	83 f9 2c             	cmp    $0x2c,%ecx            
    1546:	74 05                	je     154d <phase_5+0x3d>     
    1548:	e8 65 05 00 00       	callq  1ab2 <explode_bomb>
    154d:	5b                   	pop    %rbx
    154e:	c3                   	retq   
    154f:	e8 5e 05 00 00       	callq  1ab2 <explode_bomb>
    1554:	eb c8                	jmp    151e <phase_5+0xe>
~~~

题干的要求是——输入六个字符，然后将它们的ascii码<code>mod 16</code>，并以求余的结果为数组下标在一个数组内取六个数，使得这六个数的和等于$44$。通过<code>x/16dw \$rsi</code>，我们了解到这个数组为<code>arry[]={2,10,6,1,12,16,9,3,4,7,14,5,11,8,15,13}</code>。符合要求的有$a$<sub>0</sub>，$a$<sub>1</sub>，$a$<sub>2</sub>，$a$<sub>3</sub>，$a$<sub>4</sub>，$a$<sub>14</sub>，所以一组解ascii为$48$，$49$，$50$，$51$，$52$，$62$，对应的字符为<code>01234?</code>。



#### ⑥ phase_6

先上汇编。

~~~assembly
0000000000001556 <phase_6>:
    1556:	41 55                	push   %r13
    1558:	41 54                	push   %r12
    155a:	55                   	push   %rbp
    155b:	53                   	push   %rbx
    155c:	48 83 ec 68          	sub    $0x68,%rsp
    1560:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1567:	00 00 
    1569:	48 89 44 24 58       	mov    %rax,0x58(%rsp)          
    156e:	31 c0                	xor    %eax,%eax
    1570:	49 89 e4             	mov    %rsp,%r12
    1573:	4c 89 e6             	mov    %r12,%rsi
    1576:	e8 73 05 00 00       	callq  1aee <read_six_numbers>  
    157b:	41 bd 00 00 00 00    	mov    $0x0,%r13d              
    1581:	eb 25                	jmp    15a8 <phase_6+0x52>
    1583:	e8 2a 05 00 00       	callq  1ab2 <explode_bomb>
    1588:	eb 2d                	jmp    15b7 <phase_6+0x61>
    158a:	83 c3 01             	add    $0x1,%ebx
    158d:	83 fb 05             	cmp    $0x5,%ebx
    1590:	7f 12                	jg     15a4 <phase_6+0x4e>
    1592:	48 63 c3             	movslq %ebx,%rax
    1595:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1598:	39 45 00             	cmp    %eax,0x0(%rbp)
    159b:	75 ed                	jne    158a <phase_6+0x34>
    159d:	e8 10 05 00 00       	callq  1ab2 <explode_bomb>
    15a2:	eb e6                	jmp    158a <phase_6+0x34>
    15a4:	49 83 c4 04          	add    $0x4,%r12
    15a8:	4c 89 e5             	mov    %r12,%rbp
    15ab:	41 8b 04 24          	mov    (%r12),%eax
    15af:	83 e8 01             	sub    $0x1,%eax
    15b2:	83 f8 05             	cmp    $0x5,%eax            
    15b5:	77 cc                	ja     1583 <phase_6+0x2d>
    15b7:	41 83 c5 01          	add    $0x1,%r13d           
    15bb:	41 83 fd 06          	cmp    $0x6,%r13d
    15bf:	74 35                	je     15f6 <phase_6+0xa0>
    15c1:	44 89 eb             	mov    %r13d,%ebx
    15c4:	eb cc                	jmp    1592 <phase_6+0x3c>
    15c6:	48 8b 52 08          	mov    0x8(%rdx),%rdx       
    15ca:	83 c0 01             	add    $0x1,%eax
    15cd:	39 c8                	cmp    %ecx,%eax
    15cf:	75 f5                	jne    15c6 <phase_6+0x70>
    15d1:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    15d6:	48 83 c6 01          	add    $0x1,%rsi
    15da:	48 83 fe 06          	cmp    $0x6,%rsi
    15de:	74 1d                	je     15fd <phase_6+0xa7>
    15e0:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    15e3:	b8 01 00 00 00       	mov    $0x1,%eax
    15e8:	48 8d 15 41 2c 20 00 	lea    0x202c41(%rip),%rdx        
    15ef:	83 f9 01             	cmp    $0x1,%ecx
    15f2:	7f d2                	jg     15c6 <phase_6+0x70>
    15f4:	eb db                	jmp    15d1 <phase_6+0x7b>
    15f6:	be 00 00 00 00       	mov    $0x0,%esi
    15fb:	eb e3                	jmp    15e0 <phase_6+0x8a>
    15fd:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1602:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1607:	48 89 43 08          	mov    %rax,0x8(%rbx)
    160b:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1610:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1614:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1619:	48 89 42 08          	mov    %rax,0x8(%rdx)
    161d:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1622:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1626:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    162b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    162f:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1636:	00 
    1637:	bd 05 00 00 00       	mov    $0x5,%ebp               
    163c:	eb 09                	jmp    1647 <phase_6+0xf1>     
    163e:	48 8b 5b 08          	mov    0x8(%rbx),%rbx           
    1642:	83 ed 01             	sub    $0x1,%ebp               
    1645:	74 11                	je     1658 <phase_6+0x102>     
    1647:	48 8b 43 08          	mov    0x8(%rbx),%rax           
    164b:	8b 00                	mov    (%rax),%eax              
    164d:	39 03                	cmp    %eax,(%rbx)              
    164f:	7d ed                	jge    163e <phase_6+0xe8>      
    1651:	e8 5c 04 00 00       	callq  1ab2 <explode_bomb>
    1656:	eb e6                	jmp    163e <phase_6+0xe8>
    1658:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    165d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1664:	00 00 
    1666:	75 0b                	jne    1673 <phase_6+0x11d>
    1668:	48 83 c4 68          	add    $0x68,%rsp
    166c:	5b                   	pop    %rbx
    166d:	5d                   	pop    %rbp
    166e:	41 5c                	pop    %r12
    1670:	41 5d                	pop    %r13
    1672:	c3                   	retq   
    1673:	e8 18 f8 ff ff       	callq  e90 <__stack_chk_fail@plt>
~~~

这可能是本次$Bomblab$最难的一道题了。说它难，因为它不仅汇编冗长难懂，还涉及到了数据结构——链表，通过<code>mov  0x8(%rdx),%rdx</code>可以很直观地发现它的链表访问结构。题干的意思是输入六个数，然后以输入的顺序将这六个<code>node</code>排成一条链表，且要求链表每个节点大小是降序的。我们先可以试探性地输入一组数据，比如<code>1 2 3 4 5 6</code>。通过迭代，我们发现$0x555555758230 <node1>:  637$，$0x555555758240 <node2>:  262$，$0x555555758250 <node3>:  523$，$0x555555758260 <node4>:  213$，$0x555555758270 <node5>:  779$，$0x555555758110 <node6>:  890$。所以降序排列的话应输入答案<code>6 5 1 3 2 4</code>。



### 3、答案汇总

~~~txt
The future will be better tomorrow.
21845 21846 21848 21851 21855 21860
1 a 520
8 1
01234?
6 5 1 3 2 4
~~~

