	.file	"query.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	filepath
	.data
	.align 32
	.type	filepath, @object
	.size	filepath, 43
filepath:
	.string	"/home/fang/Desktop/workshop/\350\256\241\345\237\272/optlab/"
	.globl	name1
	.align 8
	.type	name1, @object
	.size	name1, 14
name1:
	.string	"lineorder.tbl"
	.globl	name2
	.align 16
	.type	name2, @object
	.size	name2, 17
name2:
	.string	"lineorder001.tbl"
	.section	.rodata
.LC0:
	.string	"|"
	.text
	.globl	_Z9loadTableP8_IO_FILEP10table_info
	.type	_Z9loadTableP8_IO_FILEP10table_info, @function
_Z9loadTableP8_IO_FILEP10table_info:
.LFB1493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -60(%rbp)
.L4:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$-1, %rax
	setne	%al
	testb	%al, %al
	je	.L2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L4
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L4
.L2:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$144, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 8(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 16(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 32(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 40(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 48(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 56(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 64(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 72(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 80(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 88(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 96(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 104(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 112(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 120(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 128(%rbx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rbx
	movq	%rdx, %rdi
	call	malloc@PLT
	movq	%rax, 136(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
.L14:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	cmpq	$-1, %rax
	setne	%al
	testb	%al, %al
	je	.L5
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movq	%rax, (%rdx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movq	%rax, (%rdx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movq	%rax, (%rdx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movq	%rax, (%rdx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	$136, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	cvtsi2sd	%eax, %xmm0
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	cvtsi2sd	%eax, %xmm0
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC0(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	$96, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L6
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 16(%rax)
.L6:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L7
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 20(%rax)
.L7:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L8
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 32(%rax)
.L8:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L9
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 36(%rax)
.L9:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L10
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 24(%rax)
.L10:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L11
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 28(%rax)
.L11:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	%eax, %edx
	jge	.L12
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 40(%rax)
.L12:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	%eax, %edx
	jle	.L13
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 44(%rax)
.L13:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -60(%rbp)
	jmp	.L14
.L5:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, -60(%rbp)
.L16:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L18
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	40(%rax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movq	%rax, (%rdx)
	addl	$1, -60(%rbp)
	jmp	.L16
.L18:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1493:
	.size	_Z9loadTableP8_IO_FILEP10table_info, .-_Z9loadTableP8_IO_FILEP10table_info
	.section	.rodata
	.align 8
	.type	_ZL14lineorder_name, @object
	.size	_ZL14lineorder_name, 14
_ZL14lineorder_name:
	.string	"lineorder.tbl"
	.text
	.type	_ZL7curtickv, @function
_ZL7curtickv:
.LFB1494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 10 "query.cpp" 1
	rdtsc
# 0 "" 2
#NO_APP
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rax
	salq	$32, %rax
	orq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1494:
	.size	_ZL7curtickv, .-_ZL7curtickv
	.type	_ZL10startTimerPm, @function
_ZL10startTimerPm:
.LFB1495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL7curtickv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1495:
	.size	_ZL10startTimerPm, .-_ZL10startTimerPm
	.type	_ZL9stopTimerPm, @function
_ZL9stopTimerPm:
.LFB1496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL7curtickv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1496:
	.size	_ZL9stopTimerPm, .-_ZL9stopTimerPm
	.section	.rodata
.LC3:
	.string	"r"
.LC6:
	.string	"%d\n"
.LC7:
	.string	"%0.6lf\n"
.LC8:
	.string	"running time is %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rsi
	leaq	_ZL14lineorder_name(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -184(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z9loadTableP8_IO_FILEP10table_info
	movl	$0, -240(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	$0, -236(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL10startTimerPm
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-160(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -232(%rbp)
.L28:
	movl	-232(%rbp), %eax
	cltq
	cmpq	%rax, -168(%rbp)
	jle	.L24
	movl	-232(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -240(%rbp)
	movl	-232(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -240(%rbp)
	movl	-232(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -240(%rbp)
	movl	-232(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-232(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-232(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-232(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-232(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-232(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-216(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	-216(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movl	-232(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-232(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-232(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-208(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-208(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-208(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	-232(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$19950630, %eax
	jg	.L25
	movl	-232(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -236(%rbp)
	movsd	-200(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.L25:
	movl	-232(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$19950630, %eax
	jg	.L26
	movl	-232(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -236(%rbp)
	movsd	-200(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.L26:
	movl	-232(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$19950630, %eax
	jg	.L27
	movl	-232(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -236(%rbp)
	movsd	-200(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.L27:
	addl	$3, -232(%rbp)
	jmp	.L28
.L24:
	movq	-168(%rbp), %rax
	movl	%eax, -228(%rbp)
.L31:
	movl	-228(%rbp), %eax
	cltq
	cmpq	%rax, -176(%rbp)
	jle	.L29
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -240(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -216(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-208(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -208(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$19950630, %eax
	jg	.L30
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -236(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -200(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm2
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-192(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
.L30:
	addl	$1, -228(%rbp)
	jmp	.L31
.L29:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL9stopTimerPm
	movl	-240(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-216(%rbp), %rax
	movq	%rax, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	-236(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-200(%rbp), %rax
	movq	%rax, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-192(%rbp), %rax
	movq	%rax, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1497:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1978:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L36
	cmpl	$65535, -8(%rbp)
	jne	.L36
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1978:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_filepath, @function
_GLOBAL__sub_I_filepath:
.LFB1979:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1979:
	.size	_GLOBAL__sub_I_filepath, .-_GLOBAL__sub_I_filepath
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_filepath
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1076101120
	.align 8
.LC2:
	.long	0
	.long	1079574528
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
