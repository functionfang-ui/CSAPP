
./rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000000dc8 <_init>:
 dc8:	48 83 ec 08          	sub    $0x8,%rsp
 dcc:	48 8b 05 15 42 20 00 	mov    0x204215(%rip),%rax        # 204fe8 <__gmon_start__>
 dd3:	48 85 c0             	test   %rax,%rax
 dd6:	74 02                	je     dda <_init+0x12>
 dd8:	ff d0                	callq  *%rax
 dda:	48 83 c4 08          	add    $0x8,%rsp
 dde:	c3                   	retq   

Disassembly of section .plt:

0000000000000de0 <.plt>:
     de0:	ff 35 da 40 20 00    	pushq  0x2040da(%rip)        # 204ec0 <_GLOBAL_OFFSET_TABLE_+0x8>
     de6:	ff 25 dc 40 20 00    	jmpq   *0x2040dc(%rip)        # 204ec8 <_GLOBAL_OFFSET_TABLE_+0x10>
     dec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000df0 <strcasecmp@plt>:
     df0:	ff 25 da 40 20 00    	jmpq   *0x2040da(%rip)        # 204ed0 <strcasecmp@GLIBC_2.2.5>
     df6:	68 00 00 00 00       	pushq  $0x0
     dfb:	e9 e0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e00 <__errno_location@plt>:
     e00:	ff 25 d2 40 20 00    	jmpq   *0x2040d2(%rip)        # 204ed8 <__errno_location@GLIBC_2.2.5>
     e06:	68 01 00 00 00       	pushq  $0x1
     e0b:	e9 d0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e10 <srandom@plt>:
     e10:	ff 25 ca 40 20 00    	jmpq   *0x2040ca(%rip)        # 204ee0 <srandom@GLIBC_2.2.5>
     e16:	68 02 00 00 00       	pushq  $0x2
     e1b:	e9 c0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e20 <strncmp@plt>:
     e20:	ff 25 c2 40 20 00    	jmpq   *0x2040c2(%rip)        # 204ee8 <strncmp@GLIBC_2.2.5>
     e26:	68 03 00 00 00       	pushq  $0x3
     e2b:	e9 b0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e30 <strcpy@plt>:
     e30:	ff 25 ba 40 20 00    	jmpq   *0x2040ba(%rip)        # 204ef0 <strcpy@GLIBC_2.2.5>
     e36:	68 04 00 00 00       	pushq  $0x4
     e3b:	e9 a0 ff ff ff       	jmpq   de0 <.plt>

0000000000000e40 <puts@plt>:
     e40:	ff 25 b2 40 20 00    	jmpq   *0x2040b2(%rip)        # 204ef8 <puts@GLIBC_2.2.5>
     e46:	68 05 00 00 00       	pushq  $0x5
     e4b:	e9 90 ff ff ff       	jmpq   de0 <.plt>

0000000000000e50 <write@plt>:
     e50:	ff 25 aa 40 20 00    	jmpq   *0x2040aa(%rip)        # 204f00 <write@GLIBC_2.2.5>
     e56:	68 06 00 00 00       	pushq  $0x6
     e5b:	e9 80 ff ff ff       	jmpq   de0 <.plt>

0000000000000e60 <__stack_chk_fail@plt>:
     e60:	ff 25 a2 40 20 00    	jmpq   *0x2040a2(%rip)        # 204f08 <__stack_chk_fail@GLIBC_2.4>
     e66:	68 07 00 00 00       	pushq  $0x7
     e6b:	e9 70 ff ff ff       	jmpq   de0 <.plt>

0000000000000e70 <mmap@plt>:
     e70:	ff 25 9a 40 20 00    	jmpq   *0x20409a(%rip)        # 204f10 <mmap@GLIBC_2.2.5>
     e76:	68 08 00 00 00       	pushq  $0x8
     e7b:	e9 60 ff ff ff       	jmpq   de0 <.plt>

0000000000000e80 <memset@plt>:
     e80:	ff 25 92 40 20 00    	jmpq   *0x204092(%rip)        # 204f18 <memset@GLIBC_2.2.5>
     e86:	68 09 00 00 00       	pushq  $0x9
     e8b:	e9 50 ff ff ff       	jmpq   de0 <.plt>

0000000000000e90 <alarm@plt>:
     e90:	ff 25 8a 40 20 00    	jmpq   *0x20408a(%rip)        # 204f20 <alarm@GLIBC_2.2.5>
     e96:	68 0a 00 00 00       	pushq  $0xa
     e9b:	e9 40 ff ff ff       	jmpq   de0 <.plt>

0000000000000ea0 <close@plt>:
     ea0:	ff 25 82 40 20 00    	jmpq   *0x204082(%rip)        # 204f28 <close@GLIBC_2.2.5>
     ea6:	68 0b 00 00 00       	pushq  $0xb
     eab:	e9 30 ff ff ff       	jmpq   de0 <.plt>

0000000000000eb0 <read@plt>:
     eb0:	ff 25 7a 40 20 00    	jmpq   *0x20407a(%rip)        # 204f30 <read@GLIBC_2.2.5>
     eb6:	68 0c 00 00 00       	pushq  $0xc
     ebb:	e9 20 ff ff ff       	jmpq   de0 <.plt>

0000000000000ec0 <signal@plt>:
     ec0:	ff 25 72 40 20 00    	jmpq   *0x204072(%rip)        # 204f38 <signal@GLIBC_2.2.5>
     ec6:	68 0d 00 00 00       	pushq  $0xd
     ecb:	e9 10 ff ff ff       	jmpq   de0 <.plt>

0000000000000ed0 <gethostbyname@plt>:
     ed0:	ff 25 6a 40 20 00    	jmpq   *0x20406a(%rip)        # 204f40 <gethostbyname@GLIBC_2.2.5>
     ed6:	68 0e 00 00 00       	pushq  $0xe
     edb:	e9 00 ff ff ff       	jmpq   de0 <.plt>

0000000000000ee0 <__memmove_chk@plt>:
     ee0:	ff 25 62 40 20 00    	jmpq   *0x204062(%rip)        # 204f48 <__memmove_chk@GLIBC_2.3.4>
     ee6:	68 0f 00 00 00       	pushq  $0xf
     eeb:	e9 f0 fe ff ff       	jmpq   de0 <.plt>

0000000000000ef0 <strtol@plt>:
     ef0:	ff 25 5a 40 20 00    	jmpq   *0x20405a(%rip)        # 204f50 <strtol@GLIBC_2.2.5>
     ef6:	68 10 00 00 00       	pushq  $0x10
     efb:	e9 e0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f00 <memcpy@plt>:
     f00:	ff 25 52 40 20 00    	jmpq   *0x204052(%rip)        # 204f58 <memcpy@GLIBC_2.14>
     f06:	68 11 00 00 00       	pushq  $0x11
     f0b:	e9 d0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f10 <time@plt>:
     f10:	ff 25 4a 40 20 00    	jmpq   *0x20404a(%rip)        # 204f60 <time@GLIBC_2.2.5>
     f16:	68 12 00 00 00       	pushq  $0x12
     f1b:	e9 c0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f20 <random@plt>:
     f20:	ff 25 42 40 20 00    	jmpq   *0x204042(%rip)        # 204f68 <random@GLIBC_2.2.5>
     f26:	68 13 00 00 00       	pushq  $0x13
     f2b:	e9 b0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f30 <_IO_getc@plt>:
     f30:	ff 25 3a 40 20 00    	jmpq   *0x20403a(%rip)        # 204f70 <_IO_getc@GLIBC_2.2.5>
     f36:	68 14 00 00 00       	pushq  $0x14
     f3b:	e9 a0 fe ff ff       	jmpq   de0 <.plt>

0000000000000f40 <__isoc99_sscanf@plt>:
     f40:	ff 25 32 40 20 00    	jmpq   *0x204032(%rip)        # 204f78 <__isoc99_sscanf@GLIBC_2.7>
     f46:	68 15 00 00 00       	pushq  $0x15
     f4b:	e9 90 fe ff ff       	jmpq   de0 <.plt>

0000000000000f50 <munmap@plt>:
     f50:	ff 25 2a 40 20 00    	jmpq   *0x20402a(%rip)        # 204f80 <munmap@GLIBC_2.2.5>
     f56:	68 16 00 00 00       	pushq  $0x16
     f5b:	e9 80 fe ff ff       	jmpq   de0 <.plt>

0000000000000f60 <__printf_chk@plt>:
     f60:	ff 25 22 40 20 00    	jmpq   *0x204022(%rip)        # 204f88 <__printf_chk@GLIBC_2.3.4>
     f66:	68 17 00 00 00       	pushq  $0x17
     f6b:	e9 70 fe ff ff       	jmpq   de0 <.plt>

0000000000000f70 <fopen@plt>:
     f70:	ff 25 1a 40 20 00    	jmpq   *0x20401a(%rip)        # 204f90 <fopen@GLIBC_2.2.5>
     f76:	68 18 00 00 00       	pushq  $0x18
     f7b:	e9 60 fe ff ff       	jmpq   de0 <.plt>

0000000000000f80 <getopt@plt>:
     f80:	ff 25 12 40 20 00    	jmpq   *0x204012(%rip)        # 204f98 <getopt@GLIBC_2.2.5>
     f86:	68 19 00 00 00       	pushq  $0x19
     f8b:	e9 50 fe ff ff       	jmpq   de0 <.plt>

0000000000000f90 <strtoul@plt>:
     f90:	ff 25 0a 40 20 00    	jmpq   *0x20400a(%rip)        # 204fa0 <strtoul@GLIBC_2.2.5>
     f96:	68 1a 00 00 00       	pushq  $0x1a
     f9b:	e9 40 fe ff ff       	jmpq   de0 <.plt>

0000000000000fa0 <gethostname@plt>:
     fa0:	ff 25 02 40 20 00    	jmpq   *0x204002(%rip)        # 204fa8 <gethostname@GLIBC_2.2.5>
     fa6:	68 1b 00 00 00       	pushq  $0x1b
     fab:	e9 30 fe ff ff       	jmpq   de0 <.plt>

0000000000000fb0 <exit@plt>:
     fb0:	ff 25 fa 3f 20 00    	jmpq   *0x203ffa(%rip)        # 204fb0 <exit@GLIBC_2.2.5>
     fb6:	68 1c 00 00 00       	pushq  $0x1c
     fbb:	e9 20 fe ff ff       	jmpq   de0 <.plt>

0000000000000fc0 <connect@plt>:
     fc0:	ff 25 f2 3f 20 00    	jmpq   *0x203ff2(%rip)        # 204fb8 <connect@GLIBC_2.2.5>
     fc6:	68 1d 00 00 00       	pushq  $0x1d
     fcb:	e9 10 fe ff ff       	jmpq   de0 <.plt>

0000000000000fd0 <__fprintf_chk@plt>:
     fd0:	ff 25 ea 3f 20 00    	jmpq   *0x203fea(%rip)        # 204fc0 <__fprintf_chk@GLIBC_2.3.4>
     fd6:	68 1e 00 00 00       	pushq  $0x1e
     fdb:	e9 00 fe ff ff       	jmpq   de0 <.plt>

0000000000000fe0 <__sprintf_chk@plt>:
     fe0:	ff 25 e2 3f 20 00    	jmpq   *0x203fe2(%rip)        # 204fc8 <__sprintf_chk@GLIBC_2.3.4>
     fe6:	68 1f 00 00 00       	pushq  $0x1f
     feb:	e9 f0 fd ff ff       	jmpq   de0 <.plt>

0000000000000ff0 <socket@plt>:
     ff0:	ff 25 da 3f 20 00    	jmpq   *0x203fda(%rip)        # 204fd0 <socket@GLIBC_2.2.5>
     ff6:	68 20 00 00 00       	pushq  $0x20
     ffb:	e9 e0 fd ff ff       	jmpq   de0 <.plt>

Disassembly of section .plt.got:

0000000000001000 <__cxa_finalize@plt>:
    1000:	ff 25 f2 3f 20 00    	jmpq   *0x203ff2(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    1006:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001010 <_start>:
    1010:	31 ed                	xor    %ebp,%ebp
    1012:	49 89 d1             	mov    %rdx,%r9
    1015:	5e                   	pop    %rsi
    1016:	48 89 e2             	mov    %rsp,%rdx
    1019:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    101d:	50                   	push   %rax
    101e:	54                   	push   %rsp
    101f:	4c 8d 05 4a 22 00 00 	lea    0x224a(%rip),%r8        # 3270 <__libc_csu_fini>
    1026:	48 8d 0d d3 21 00 00 	lea    0x21d3(%rip),%rcx        # 3200 <__libc_csu_init>
    102d:	48 8d 3d 0d 03 00 00 	lea    0x30d(%rip),%rdi        # 1341 <main>
    1034:	ff 15 a6 3f 20 00    	callq  *0x203fa6(%rip)        # 204fe0 <__libc_start_main@GLIBC_2.2.5>
    103a:	f4                   	hlt    
    103b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001040 <deregister_tm_clones>:
    1040:	48 8d 3d 29 43 20 00 	lea    0x204329(%rip),%rdi        # 205370 <__TMC_END__>
    1047:	55                   	push   %rbp
    1048:	48 8d 05 21 43 20 00 	lea    0x204321(%rip),%rax        # 205370 <__TMC_END__>
    104f:	48 39 f8             	cmp    %rdi,%rax
    1052:	48 89 e5             	mov    %rsp,%rbp
    1055:	74 19                	je     1070 <deregister_tm_clones+0x30>
    1057:	48 8b 05 7a 3f 20 00 	mov    0x203f7a(%rip),%rax        # 204fd8 <_ITM_deregisterTMCloneTable>
    105e:	48 85 c0             	test   %rax,%rax
    1061:	74 0d                	je     1070 <deregister_tm_clones+0x30>
    1063:	5d                   	pop    %rbp
    1064:	ff e0                	jmpq   *%rax
    1066:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    106d:	00 00 00 
    1070:	5d                   	pop    %rbp
    1071:	c3                   	retq   
    1072:	0f 1f 40 00          	nopl   0x0(%rax)
    1076:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    107d:	00 00 00 

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d e9 42 20 00 	lea    0x2042e9(%rip),%rdi        # 205370 <__TMC_END__>
    1087:	48 8d 35 e2 42 20 00 	lea    0x2042e2(%rip),%rsi        # 205370 <__TMC_END__>
    108e:	55                   	push   %rbp
    108f:	48 29 fe             	sub    %rdi,%rsi
    1092:	48 89 e5             	mov    %rsp,%rbp
    1095:	48 c1 fe 03          	sar    $0x3,%rsi
    1099:	48 89 f0             	mov    %rsi,%rax
    109c:	48 c1 e8 3f          	shr    $0x3f,%rax
    10a0:	48 01 c6             	add    %rax,%rsi
    10a3:	48 d1 fe             	sar    %rsi
    10a6:	74 18                	je     10c0 <register_tm_clones+0x40>
    10a8:	48 8b 05 41 3f 20 00 	mov    0x203f41(%rip),%rax        # 204ff0 <_ITM_registerTMCloneTable>
    10af:	48 85 c0             	test   %rax,%rax
    10b2:	74 0c                	je     10c0 <register_tm_clones+0x40>
    10b4:	5d                   	pop    %rbp
    10b5:	ff e0                	jmpq   *%rax
    10b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    10be:	00 00 
    10c0:	5d                   	pop    %rbp
    10c1:	c3                   	retq   
    10c2:	0f 1f 40 00          	nopl   0x0(%rax)
    10c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10cd:	00 00 00 

00000000000010d0 <__do_global_dtors_aux>:
    10d0:	80 3d d1 42 20 00 00 	cmpb   $0x0,0x2042d1(%rip)        # 2053a8 <completed.7697>
    10d7:	75 2f                	jne    1108 <__do_global_dtors_aux+0x38>
    10d9:	48 83 3d 17 3f 20 00 	cmpq   $0x0,0x203f17(%rip)        # 204ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e0:	00 
    10e1:	55                   	push   %rbp
    10e2:	48 89 e5             	mov    %rsp,%rbp
    10e5:	74 0c                	je     10f3 <__do_global_dtors_aux+0x23>
    10e7:	48 8b 3d 1a 3f 20 00 	mov    0x203f1a(%rip),%rdi        # 205008 <__dso_handle>
    10ee:	e8 0d ff ff ff       	callq  1000 <__cxa_finalize@plt>
    10f3:	e8 48 ff ff ff       	callq  1040 <deregister_tm_clones>
    10f8:	c6 05 a9 42 20 00 01 	movb   $0x1,0x2042a9(%rip)        # 2053a8 <completed.7697>
    10ff:	5d                   	pop    %rbp
    1100:	c3                   	retq   
    1101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1108:	f3 c3                	repz retq 
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <frame_dummy>:
    1110:	55                   	push   %rbp
    1111:	48 89 e5             	mov    %rsp,%rbp
    1114:	5d                   	pop    %rbp
    1115:	e9 66 ff ff ff       	jmpq   1080 <register_tm_clones>

000000000000111a <usage>:
    111a:	48 83 ec 08          	sub    $0x8,%rsp
    111e:	48 89 fa             	mov    %rdi,%rdx
    1121:	83 3d c0 42 20 00 00 	cmpl   $0x0,0x2042c0(%rip)        # 2053e8 <is_checker>
    1128:	74 50                	je     117a <usage+0x60>
    112a:	48 8d 35 57 21 00 00 	lea    0x2157(%rip),%rsi        # 3288 <_IO_stdin_used+0x8>
    1131:	bf 01 00 00 00       	mov    $0x1,%edi
    1136:	b8 00 00 00 00       	mov    $0x0,%eax
    113b:	e8 20 fe ff ff       	callq  f60 <__printf_chk@plt>
    1140:	48 8d 3d 79 21 00 00 	lea    0x2179(%rip),%rdi        # 32c0 <_IO_stdin_used+0x40>
    1147:	e8 f4 fc ff ff       	callq  e40 <puts@plt>
    114c:	48 8d 3d e5 22 00 00 	lea    0x22e5(%rip),%rdi        # 3438 <_IO_stdin_used+0x1b8>
    1153:	e8 e8 fc ff ff       	callq  e40 <puts@plt>
    1158:	48 8d 3d 89 21 00 00 	lea    0x2189(%rip),%rdi        # 32e8 <_IO_stdin_used+0x68>
    115f:	e8 dc fc ff ff       	callq  e40 <puts@plt>
    1164:	48 8d 3d e7 22 00 00 	lea    0x22e7(%rip),%rdi        # 3452 <_IO_stdin_used+0x1d2>
    116b:	e8 d0 fc ff ff       	callq  e40 <puts@plt>
    1170:	bf 00 00 00 00       	mov    $0x0,%edi
    1175:	e8 36 fe ff ff       	callq  fb0 <exit@plt>
    117a:	48 8d 35 ed 22 00 00 	lea    0x22ed(%rip),%rsi        # 346e <_IO_stdin_used+0x1ee>
    1181:	bf 01 00 00 00       	mov    $0x1,%edi
    1186:	b8 00 00 00 00       	mov    $0x0,%eax
    118b:	e8 d0 fd ff ff       	callq  f60 <__printf_chk@plt>
    1190:	48 8d 3d 79 21 00 00 	lea    0x2179(%rip),%rdi        # 3310 <_IO_stdin_used+0x90>
    1197:	e8 a4 fc ff ff       	callq  e40 <puts@plt>
    119c:	48 8d 3d 95 21 00 00 	lea    0x2195(%rip),%rdi        # 3338 <_IO_stdin_used+0xb8>
    11a3:	e8 98 fc ff ff       	callq  e40 <puts@plt>
    11a8:	48 8d 3d dd 22 00 00 	lea    0x22dd(%rip),%rdi        # 348c <_IO_stdin_used+0x20c>
    11af:	e8 8c fc ff ff       	callq  e40 <puts@plt>
    11b4:	eb ba                	jmp    1170 <usage+0x56>

00000000000011b6 <initialize_target>:
    11b6:	55                   	push   %rbp
    11b7:	53                   	push   %rbx
    11b8:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
    11bf:	89 f5                	mov    %esi,%ebp
    11c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11c8:	00 00 
    11ca:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
    11d1:	00 
    11d2:	31 c0                	xor    %eax,%eax
    11d4:	89 3d fe 41 20 00    	mov    %edi,0x2041fe(%rip)        # 2053d8 <check_level>
    11da:	8b 3d 30 3e 20 00    	mov    0x203e30(%rip),%edi        # 205010 <target_id>
    11e0:	e8 fc 1f 00 00       	callq  31e1 <gencookie>
    11e5:	89 05 f9 41 20 00    	mov    %eax,0x2041f9(%rip)        # 2053e4 <cookie>
    11eb:	89 c7                	mov    %eax,%edi
    11ed:	e8 ef 1f 00 00       	callq  31e1 <gencookie>
    11f2:	89 05 e8 41 20 00    	mov    %eax,0x2041e8(%rip)        # 2053e0 <authkey>
    11f8:	8b 05 12 3e 20 00    	mov    0x203e12(%rip),%eax        # 205010 <target_id>
    11fe:	8d 78 01             	lea    0x1(%rax),%edi
    1201:	e8 0a fc ff ff       	callq  e10 <srandom@plt>
    1206:	e8 15 fd ff ff       	callq  f20 <random@plt>
    120b:	89 c7                	mov    %eax,%edi
    120d:	e8 1a 03 00 00       	callq  152c <scramble>
    1212:	89 c3                	mov    %eax,%ebx
    1214:	85 ed                	test   %ebp,%ebp
    1216:	75 54                	jne    126c <initialize_target+0xb6>
    1218:	b8 00 00 00 00       	mov    $0x0,%eax
    121d:	01 d8                	add    %ebx,%eax
    121f:	0f b7 c0             	movzwl %ax,%eax
    1222:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
    1229:	89 c0                	mov    %eax,%eax
    122b:	48 89 05 2e 41 20 00 	mov    %rax,0x20412e(%rip)        # 205360 <buf_offset>
    1232:	c6 05 cf 4d 20 00 72 	movb   $0x72,0x204dcf(%rip)        # 206008 <target_prefix>
    1239:	83 3d 28 41 20 00 00 	cmpl   $0x0,0x204128(%rip)        # 205368 <notify>
    1240:	74 09                	je     124b <initialize_target+0x95>
    1242:	83 3d 9f 41 20 00 00 	cmpl   $0x0,0x20419f(%rip)        # 2053e8 <is_checker>
    1249:	74 39                	je     1284 <initialize_target+0xce>
    124b:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
    1252:	00 
    1253:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    125a:	00 00 
    125c:	0f 85 da 00 00 00    	jne    133c <initialize_target+0x186>
    1262:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
    1269:	5b                   	pop    %rbx
    126a:	5d                   	pop    %rbp
    126b:	c3                   	retq   
    126c:	bf 00 00 00 00       	mov    $0x0,%edi
    1271:	e8 9a fc ff ff       	callq  f10 <time@plt>
    1276:	89 c7                	mov    %eax,%edi
    1278:	e8 93 fb ff ff       	callq  e10 <srandom@plt>
    127d:	e8 9e fc ff ff       	callq  f20 <random@plt>
    1282:	eb 99                	jmp    121d <initialize_target+0x67>
    1284:	48 89 e7             	mov    %rsp,%rdi
    1287:	be 00 01 00 00       	mov    $0x100,%esi
    128c:	e8 0f fd ff ff       	callq  fa0 <gethostname@plt>
    1291:	89 c5                	mov    %eax,%ebp
    1293:	85 c0                	test   %eax,%eax
    1295:	75 26                	jne    12bd <initialize_target+0x107>
    1297:	89 c3                	mov    %eax,%ebx
    1299:	48 63 c3             	movslq %ebx,%rax
    129c:	48 8d 15 9d 3d 20 00 	lea    0x203d9d(%rip),%rdx        # 205040 <host_table>
    12a3:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    12a7:	48 85 ff             	test   %rdi,%rdi
    12aa:	74 2c                	je     12d8 <initialize_target+0x122>
    12ac:	48 89 e6             	mov    %rsp,%rsi
    12af:	e8 3c fb ff ff       	callq  df0 <strcasecmp@plt>
    12b4:	85 c0                	test   %eax,%eax
    12b6:	74 1b                	je     12d3 <initialize_target+0x11d>
    12b8:	83 c3 01             	add    $0x1,%ebx
    12bb:	eb dc                	jmp    1299 <initialize_target+0xe3>
    12bd:	48 8d 3d a4 20 00 00 	lea    0x20a4(%rip),%rdi        # 3368 <_IO_stdin_used+0xe8>
    12c4:	e8 77 fb ff ff       	callq  e40 <puts@plt>
    12c9:	bf 08 00 00 00       	mov    $0x8,%edi
    12ce:	e8 dd fc ff ff       	callq  fb0 <exit@plt>
    12d3:	bd 01 00 00 00       	mov    $0x1,%ebp
    12d8:	85 ed                	test   %ebp,%ebp
    12da:	74 3d                	je     1319 <initialize_target+0x163>
    12dc:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    12e3:	00 
    12e4:	e8 28 1c 00 00       	callq  2f11 <init_driver>
    12e9:	85 c0                	test   %eax,%eax
    12eb:	0f 89 5a ff ff ff    	jns    124b <initialize_target+0x95>
    12f1:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    12f8:	00 
    12f9:	48 8d 35 e0 20 00 00 	lea    0x20e0(%rip),%rsi        # 33e0 <_IO_stdin_used+0x160>
    1300:	bf 01 00 00 00       	mov    $0x1,%edi
    1305:	b8 00 00 00 00       	mov    $0x0,%eax
    130a:	e8 51 fc ff ff       	callq  f60 <__printf_chk@plt>
    130f:	bf 08 00 00 00       	mov    $0x8,%edi
    1314:	e8 97 fc ff ff       	callq  fb0 <exit@plt>
    1319:	48 89 e2             	mov    %rsp,%rdx
    131c:	48 8d 35 7d 20 00 00 	lea    0x207d(%rip),%rsi        # 33a0 <_IO_stdin_used+0x120>
    1323:	bf 01 00 00 00       	mov    $0x1,%edi
    1328:	b8 00 00 00 00       	mov    $0x0,%eax
    132d:	e8 2e fc ff ff       	callq  f60 <__printf_chk@plt>
    1332:	bf 08 00 00 00       	mov    $0x8,%edi
    1337:	e8 74 fc ff ff       	callq  fb0 <exit@plt>
    133c:	e8 1f fb ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001341 <main>:
    1341:	41 56                	push   %r14
    1343:	41 55                	push   %r13
    1345:	41 54                	push   %r12
    1347:	55                   	push   %rbp
    1348:	53                   	push   %rbx
    1349:	41 89 fc             	mov    %edi,%r12d
    134c:	48 89 f3             	mov    %rsi,%rbx
    134f:	48 8d 35 c2 0e 00 00 	lea    0xec2(%rip),%rsi        # 2218 <seghandler>
    1356:	bf 0b 00 00 00       	mov    $0xb,%edi
    135b:	e8 60 fb ff ff       	callq  ec0 <signal@plt>
    1360:	48 8d 35 5d 0e 00 00 	lea    0xe5d(%rip),%rsi        # 21c4 <bushandler>
    1367:	bf 07 00 00 00       	mov    $0x7,%edi
    136c:	e8 4f fb ff ff       	callq  ec0 <signal@plt>
    1371:	48 8d 35 f4 0e 00 00 	lea    0xef4(%rip),%rsi        # 226c <illegalhandler>
    1378:	bf 04 00 00 00       	mov    $0x4,%edi
    137d:	e8 3e fb ff ff       	callq  ec0 <signal@plt>
    1382:	83 3d 5f 40 20 00 00 	cmpl   $0x0,0x20405f(%rip)        # 2053e8 <is_checker>
    1389:	75 26                	jne    13b1 <main+0x70>
    138b:	48 8d 2d 13 21 00 00 	lea    0x2113(%rip),%rbp        # 34a5 <_IO_stdin_used+0x225>
    1392:	48 8b 05 e7 3f 20 00 	mov    0x203fe7(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    1399:	48 89 05 30 40 20 00 	mov    %rax,0x204030(%rip)        # 2053d0 <infile>
    13a0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    13a6:	41 be 00 00 00 00    	mov    $0x0,%r14d
    13ac:	e9 8d 00 00 00       	jmpq   143e <main+0xfd>
    13b1:	48 8d 35 08 0f 00 00 	lea    0xf08(%rip),%rsi        # 22c0 <sigalrmhandler>
    13b8:	bf 0e 00 00 00       	mov    $0xe,%edi
    13bd:	e8 fe fa ff ff       	callq  ec0 <signal@plt>
    13c2:	bf 05 00 00 00       	mov    $0x5,%edi
    13c7:	e8 c4 fa ff ff       	callq  e90 <alarm@plt>
    13cc:	48 8d 2d d7 20 00 00 	lea    0x20d7(%rip),%rbp        # 34aa <_IO_stdin_used+0x22a>
    13d3:	eb bd                	jmp    1392 <main+0x51>
    13d5:	48 8b 3b             	mov    (%rbx),%rdi
    13d8:	e8 3d fd ff ff       	callq  111a <usage>
    13dd:	48 8d 35 29 23 00 00 	lea    0x2329(%rip),%rsi        # 370d <_IO_stdin_used+0x48d>
    13e4:	48 8b 3d 9d 3f 20 00 	mov    0x203f9d(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13eb:	e8 80 fb ff ff       	callq  f70 <fopen@plt>
    13f0:	48 89 05 d9 3f 20 00 	mov    %rax,0x203fd9(%rip)        # 2053d0 <infile>
    13f7:	48 85 c0             	test   %rax,%rax
    13fa:	75 42                	jne    143e <main+0xfd>
    13fc:	48 8b 0d 85 3f 20 00 	mov    0x203f85(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    1403:	48 8d 15 a8 20 00 00 	lea    0x20a8(%rip),%rdx        # 34b2 <_IO_stdin_used+0x232>
    140a:	be 01 00 00 00       	mov    $0x1,%esi
    140f:	48 8b 3d 8a 3f 20 00 	mov    0x203f8a(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    1416:	e8 b5 fb ff ff       	callq  fd0 <__fprintf_chk@plt>
    141b:	b8 01 00 00 00       	mov    $0x1,%eax
    1420:	e9 d9 00 00 00       	jmpq   14fe <main+0x1bd>
    1425:	ba 10 00 00 00       	mov    $0x10,%edx
    142a:	be 00 00 00 00       	mov    $0x0,%esi
    142f:	48 8b 3d 52 3f 20 00 	mov    0x203f52(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    1436:	e8 55 fb ff ff       	callq  f90 <strtoul@plt>
    143b:	41 89 c6             	mov    %eax,%r14d
    143e:	48 89 ea             	mov    %rbp,%rdx
    1441:	48 89 de             	mov    %rbx,%rsi
    1444:	44 89 e7             	mov    %r12d,%edi
    1447:	e8 34 fb ff ff       	callq  f80 <getopt@plt>
    144c:	3c ff                	cmp    $0xff,%al
    144e:	74 62                	je     14b2 <main+0x171>
    1450:	0f be d0             	movsbl %al,%edx
    1453:	83 e8 61             	sub    $0x61,%eax
    1456:	3c 10                	cmp    $0x10,%al
    1458:	77 3a                	ja     1494 <main+0x153>
    145a:	0f b6 c0             	movzbl %al,%eax
    145d:	48 8d 0d 8c 20 00 00 	lea    0x208c(%rip),%rcx        # 34f0 <_IO_stdin_used+0x270>
    1464:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    1468:	48 01 c8             	add    %rcx,%rax
    146b:	ff e0                	jmpq   *%rax
    146d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1472:	be 00 00 00 00       	mov    $0x0,%esi
    1477:	48 8b 3d 0a 3f 20 00 	mov    0x203f0a(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    147e:	e8 6d fa ff ff       	callq  ef0 <strtol@plt>
    1483:	41 89 c5             	mov    %eax,%r13d
    1486:	eb b6                	jmp    143e <main+0xfd>
    1488:	c7 05 d6 3e 20 00 00 	movl   $0x0,0x203ed6(%rip)        # 205368 <notify>
    148f:	00 00 00 
    1492:	eb aa                	jmp    143e <main+0xfd>
    1494:	48 8d 35 34 20 00 00 	lea    0x2034(%rip),%rsi        # 34cf <_IO_stdin_used+0x24f>
    149b:	bf 01 00 00 00       	mov    $0x1,%edi
    14a0:	b8 00 00 00 00       	mov    $0x0,%eax
    14a5:	e8 b6 fa ff ff       	callq  f60 <__printf_chk@plt>
    14aa:	48 8b 3b             	mov    (%rbx),%rdi
    14ad:	e8 68 fc ff ff       	callq  111a <usage>
    14b2:	be 01 00 00 00       	mov    $0x1,%esi
    14b7:	44 89 ef             	mov    %r13d,%edi
    14ba:	e8 f7 fc ff ff       	callq  11b6 <initialize_target>
    14bf:	83 3d 22 3f 20 00 00 	cmpl   $0x0,0x203f22(%rip)        # 2053e8 <is_checker>
    14c6:	74 09                	je     14d1 <main+0x190>
    14c8:	44 39 35 11 3f 20 00 	cmp    %r14d,0x203f11(%rip)        # 2053e0 <authkey>
    14cf:	75 36                	jne    1507 <main+0x1c6>
    14d1:	8b 15 0d 3f 20 00    	mov    0x203f0d(%rip),%edx        # 2053e4 <cookie>
    14d7:	48 8d 35 04 20 00 00 	lea    0x2004(%rip),%rsi        # 34e2 <_IO_stdin_used+0x262>
    14de:	bf 01 00 00 00       	mov    $0x1,%edi
    14e3:	b8 00 00 00 00       	mov    $0x0,%eax
    14e8:	e8 73 fa ff ff       	callq  f60 <__printf_chk@plt>
    14ed:	48 8b 3d 6c 3e 20 00 	mov    0x203e6c(%rip),%rdi        # 205360 <buf_offset>
    14f4:	e8 1e 0e 00 00       	callq  2317 <launch>
    14f9:	b8 00 00 00 00       	mov    $0x0,%eax
    14fe:	5b                   	pop    %rbx
    14ff:	5d                   	pop    %rbp
    1500:	41 5c                	pop    %r12
    1502:	41 5d                	pop    %r13
    1504:	41 5e                	pop    %r14
    1506:	c3                   	retq   
    1507:	44 89 f2             	mov    %r14d,%edx
    150a:	48 8d 35 f7 1e 00 00 	lea    0x1ef7(%rip),%rsi        # 3408 <_IO_stdin_used+0x188>
    1511:	bf 01 00 00 00       	mov    $0x1,%edi
    1516:	b8 00 00 00 00       	mov    $0x0,%eax
    151b:	e8 40 fa ff ff       	callq  f60 <__printf_chk@plt>
    1520:	b8 00 00 00 00       	mov    $0x0,%eax
    1525:	e8 fa 08 00 00       	callq  1e24 <check_fail>
    152a:	eb a5                	jmp    14d1 <main+0x190>

000000000000152c <scramble>:
    152c:	48 83 ec 38          	sub    $0x38,%rsp
    1530:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1537:	00 00 
    1539:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    153e:	31 c0                	xor    %eax,%eax
    1540:	eb 10                	jmp    1552 <scramble+0x26>
    1542:	69 d0 96 57 00 00    	imul   $0x5796,%eax,%edx
    1548:	01 fa                	add    %edi,%edx
    154a:	89 c1                	mov    %eax,%ecx
    154c:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    154f:	83 c0 01             	add    $0x1,%eax
    1552:	83 f8 09             	cmp    $0x9,%eax
    1555:	76 eb                	jbe    1542 <scramble+0x16>
    1557:	8b 44 24 14          	mov    0x14(%rsp),%eax
    155b:	69 c0 75 e6 00 00    	imul   $0xe675,%eax,%eax
    1561:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1565:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1569:	69 c0 2b 74 00 00    	imul   $0x742b,%eax,%eax
    156f:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1573:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1577:	69 c0 e9 58 00 00    	imul   $0x58e9,%eax,%eax
    157d:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1581:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1585:	69 c0 09 fd 00 00    	imul   $0xfd09,%eax,%eax
    158b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    158f:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1593:	69 c0 74 7c 00 00    	imul   $0x7c74,%eax,%eax
    1599:	89 44 24 18          	mov    %eax,0x18(%rsp)
    159d:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15a1:	69 c0 86 de 00 00    	imul   $0xde86,%eax,%eax
    15a7:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15ab:	8b 44 24 24          	mov    0x24(%rsp),%eax
    15af:	69 c0 71 eb 00 00    	imul   $0xeb71,%eax,%eax
    15b5:	89 44 24 24          	mov    %eax,0x24(%rsp)
    15b9:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15bd:	69 c0 39 07 00 00    	imul   $0x739,%eax,%eax
    15c3:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15c7:	8b 44 24 20          	mov    0x20(%rsp),%eax
    15cb:	69 c0 47 8f 00 00    	imul   $0x8f47,%eax,%eax
    15d1:	89 44 24 20          	mov    %eax,0x20(%rsp)
    15d5:	8b 44 24 10          	mov    0x10(%rsp),%eax
    15d9:	69 c0 7b bb 00 00    	imul   $0xbb7b,%eax,%eax
    15df:	89 44 24 10          	mov    %eax,0x10(%rsp)
    15e3:	8b 44 24 04          	mov    0x4(%rsp),%eax
    15e7:	69 c0 35 96 00 00    	imul   $0x9635,%eax,%eax
    15ed:	89 44 24 04          	mov    %eax,0x4(%rsp)
    15f1:	8b 44 24 14          	mov    0x14(%rsp),%eax
    15f5:	69 c0 37 e7 00 00    	imul   $0xe737,%eax,%eax
    15fb:	89 44 24 14          	mov    %eax,0x14(%rsp)
    15ff:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1603:	69 c0 e4 0c 00 00    	imul   $0xce4,%eax,%eax
    1609:	89 44 24 20          	mov    %eax,0x20(%rsp)
    160d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1611:	69 c0 f7 47 00 00    	imul   $0x47f7,%eax,%eax
    1617:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    161b:	8b 44 24 18          	mov    0x18(%rsp),%eax
    161f:	69 c0 da 58 00 00    	imul   $0x58da,%eax,%eax
    1625:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1629:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    162d:	69 c0 fb c3 00 00    	imul   $0xc3fb,%eax,%eax
    1633:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1637:	8b 44 24 14          	mov    0x14(%rsp),%eax
    163b:	69 c0 c4 32 00 00    	imul   $0x32c4,%eax,%eax
    1641:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1645:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1649:	69 c0 b6 4d 00 00    	imul   $0x4db6,%eax,%eax
    164f:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1653:	8b 04 24             	mov    (%rsp),%eax
    1656:	69 c0 40 81 00 00    	imul   $0x8140,%eax,%eax
    165c:	89 04 24             	mov    %eax,(%rsp)
    165f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1663:	69 c0 e0 4a 00 00    	imul   $0x4ae0,%eax,%eax
    1669:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    166d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1671:	69 c0 dc 50 00 00    	imul   $0x50dc,%eax,%eax
    1677:	89 44 24 20          	mov    %eax,0x20(%rsp)
    167b:	8b 44 24 24          	mov    0x24(%rsp),%eax
    167f:	69 c0 c3 0c 00 00    	imul   $0xcc3,%eax,%eax
    1685:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1689:	8b 44 24 14          	mov    0x14(%rsp),%eax
    168d:	69 c0 30 55 00 00    	imul   $0x5530,%eax,%eax
    1693:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1697:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    169b:	69 c0 81 70 00 00    	imul   $0x7081,%eax,%eax
    16a1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    16a5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    16a9:	69 c0 af d6 00 00    	imul   $0xd6af,%eax,%eax
    16af:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    16b3:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16b7:	69 c0 4f a4 00 00    	imul   $0xa44f,%eax,%eax
    16bd:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16c1:	8b 44 24 10          	mov    0x10(%rsp),%eax
    16c5:	69 c0 22 4f 00 00    	imul   $0x4f22,%eax,%eax
    16cb:	89 44 24 10          	mov    %eax,0x10(%rsp)
    16cf:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16d3:	69 c0 bf 0b 00 00    	imul   $0xbbf,%eax,%eax
    16d9:	89 44 24 08          	mov    %eax,0x8(%rsp)
    16dd:	8b 04 24             	mov    (%rsp),%eax
    16e0:	69 c0 28 74 00 00    	imul   $0x7428,%eax,%eax
    16e6:	89 04 24             	mov    %eax,(%rsp)
    16e9:	8b 44 24 20          	mov    0x20(%rsp),%eax
    16ed:	69 c0 6b c8 00 00    	imul   $0xc86b,%eax,%eax
    16f3:	89 44 24 20          	mov    %eax,0x20(%rsp)
    16f7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    16fb:	69 c0 6d 17 00 00    	imul   $0x176d,%eax,%eax
    1701:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    1705:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1709:	69 c0 51 0c 00 00    	imul   $0xc51,%eax,%eax
    170f:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1713:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1717:	69 c0 8e c4 00 00    	imul   $0xc48e,%eax,%eax
    171d:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1721:	8b 04 24             	mov    (%rsp),%eax
    1724:	69 c0 de d5 00 00    	imul   $0xd5de,%eax,%eax
    172a:	89 04 24             	mov    %eax,(%rsp)
    172d:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1731:	69 c0 c8 a4 00 00    	imul   $0xa4c8,%eax,%eax
    1737:	89 44 24 18          	mov    %eax,0x18(%rsp)
    173b:	8b 44 24 08          	mov    0x8(%rsp),%eax
    173f:	69 c0 83 43 00 00    	imul   $0x4383,%eax,%eax
    1745:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1749:	8b 44 24 04          	mov    0x4(%rsp),%eax
    174d:	69 c0 25 4a 00 00    	imul   $0x4a25,%eax,%eax
    1753:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1757:	8b 44 24 14          	mov    0x14(%rsp),%eax
    175b:	69 c0 f1 31 00 00    	imul   $0x31f1,%eax,%eax
    1761:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1765:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1769:	69 c0 44 64 00 00    	imul   $0x6444,%eax,%eax
    176f:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1773:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1777:	69 c0 cc 83 00 00    	imul   $0x83cc,%eax,%eax
    177d:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1781:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1785:	69 c0 6f ce 00 00    	imul   $0xce6f,%eax,%eax
    178b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    178f:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1793:	69 c0 d7 a7 00 00    	imul   $0xa7d7,%eax,%eax
    1799:	89 44 24 14          	mov    %eax,0x14(%rsp)
    179d:	8b 44 24 10          	mov    0x10(%rsp),%eax
    17a1:	69 c0 a1 b3 00 00    	imul   $0xb3a1,%eax,%eax
    17a7:	89 44 24 10          	mov    %eax,0x10(%rsp)
    17ab:	8b 44 24 14          	mov    0x14(%rsp),%eax
    17af:	69 c0 98 79 00 00    	imul   $0x7998,%eax,%eax
    17b5:	89 44 24 14          	mov    %eax,0x14(%rsp)
    17b9:	8b 44 24 24          	mov    0x24(%rsp),%eax
    17bd:	69 c0 4c 07 00 00    	imul   $0x74c,%eax,%eax
    17c3:	89 44 24 24          	mov    %eax,0x24(%rsp)
    17c7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    17cb:	69 c0 cb f4 00 00    	imul   $0xf4cb,%eax,%eax
    17d1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    17d5:	8b 44 24 20          	mov    0x20(%rsp),%eax
    17d9:	69 c0 6a ce 00 00    	imul   $0xce6a,%eax,%eax
    17df:	89 44 24 20          	mov    %eax,0x20(%rsp)
    17e3:	8b 44 24 08          	mov    0x8(%rsp),%eax
    17e7:	69 c0 ea 68 00 00    	imul   $0x68ea,%eax,%eax
    17ed:	89 44 24 08          	mov    %eax,0x8(%rsp)
    17f1:	8b 44 24 10          	mov    0x10(%rsp),%eax
    17f5:	69 c0 24 5b 00 00    	imul   $0x5b24,%eax,%eax
    17fb:	89 44 24 10          	mov    %eax,0x10(%rsp)
    17ff:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1803:	69 c0 c7 d8 00 00    	imul   $0xd8c7,%eax,%eax
    1809:	89 44 24 20          	mov    %eax,0x20(%rsp)
    180d:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1811:	69 c0 87 5f 00 00    	imul   $0x5f87,%eax,%eax
    1817:	89 44 24 08          	mov    %eax,0x8(%rsp)
    181b:	8b 44 24 20          	mov    0x20(%rsp),%eax
    181f:	69 c0 90 f5 00 00    	imul   $0xf590,%eax,%eax
    1825:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1829:	8b 44 24 14          	mov    0x14(%rsp),%eax
    182d:	69 c0 91 6c 00 00    	imul   $0x6c91,%eax,%eax
    1833:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1837:	8b 44 24 04          	mov    0x4(%rsp),%eax
    183b:	69 c0 01 49 00 00    	imul   $0x4901,%eax,%eax
    1841:	89 44 24 04          	mov    %eax,0x4(%rsp)
    1845:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1849:	69 c0 f4 c9 00 00    	imul   $0xc9f4,%eax,%eax
    184f:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1853:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1857:	69 c0 c8 0b 00 00    	imul   $0xbc8,%eax,%eax
    185d:	89 44 24 24          	mov    %eax,0x24(%rsp)
    1861:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1865:	69 c0 e8 f4 00 00    	imul   $0xf4e8,%eax,%eax
    186b:	89 44 24 24          	mov    %eax,0x24(%rsp)
    186f:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1873:	69 c0 f5 b5 00 00    	imul   $0xb5f5,%eax,%eax
    1879:	89 44 24 14          	mov    %eax,0x14(%rsp)
    187d:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1881:	69 c0 35 67 00 00    	imul   $0x6735,%eax,%eax
    1887:	89 44 24 24          	mov    %eax,0x24(%rsp)
    188b:	8b 04 24             	mov    (%rsp),%eax
    188e:	69 c0 52 d0 00 00    	imul   $0xd052,%eax,%eax
    1894:	89 04 24             	mov    %eax,(%rsp)
    1897:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    189b:	69 c0 90 71 00 00    	imul   $0x7190,%eax,%eax
    18a1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    18a5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    18a9:	69 c0 3b 8d 00 00    	imul   $0x8d3b,%eax,%eax
    18af:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
    18b3:	8b 44 24 08          	mov    0x8(%rsp),%eax
    18b7:	69 c0 39 c6 00 00    	imul   $0xc639,%eax,%eax
    18bd:	89 44 24 08          	mov    %eax,0x8(%rsp)
    18c1:	8b 04 24             	mov    (%rsp),%eax
    18c4:	69 c0 f3 d2 00 00    	imul   $0xd2f3,%eax,%eax
    18ca:	89 04 24             	mov    %eax,(%rsp)
    18cd:	8b 44 24 08          	mov    0x8(%rsp),%eax
    18d1:	69 c0 ee 34 00 00    	imul   $0x34ee,%eax,%eax
    18d7:	89 44 24 08          	mov    %eax,0x8(%rsp)
    18db:	8b 44 24 04          	mov    0x4(%rsp),%eax
    18df:	69 c0 4a 21 00 00    	imul   $0x214a,%eax,%eax
    18e5:	89 44 24 04          	mov    %eax,0x4(%rsp)
    18e9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    18ed:	69 c0 05 c8 00 00    	imul   $0xc805,%eax,%eax
    18f3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    18f7:	8b 04 24             	mov    (%rsp),%eax
    18fa:	69 c0 21 3e 00 00    	imul   $0x3e21,%eax,%eax
    1900:	89 04 24             	mov    %eax,(%rsp)
    1903:	8b 44 24 18          	mov    0x18(%rsp),%eax
    1907:	69 c0 5c 3e 00 00    	imul   $0x3e5c,%eax,%eax
    190d:	89 44 24 18          	mov    %eax,0x18(%rsp)
    1911:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1915:	69 c0 6c 05 00 00    	imul   $0x56c,%eax,%eax
    191b:	89 44 24 08          	mov    %eax,0x8(%rsp)
    191f:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1923:	69 c0 ef 53 00 00    	imul   $0x53ef,%eax,%eax
    1929:	89 44 24 20          	mov    %eax,0x20(%rsp)
    192d:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1931:	69 c0 b4 a0 00 00    	imul   $0xa0b4,%eax,%eax
    1937:	89 44 24 14          	mov    %eax,0x14(%rsp)
    193b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    193f:	69 c0 d4 c4 00 00    	imul   $0xc4d4,%eax,%eax
    1945:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1949:	8b 44 24 14          	mov    0x14(%rsp),%eax
    194d:	69 c0 60 f1 00 00    	imul   $0xf160,%eax,%eax
    1953:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1957:	8b 44 24 10          	mov    0x10(%rsp),%eax
    195b:	69 c0 36 86 00 00    	imul   $0x8636,%eax,%eax
    1961:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1965:	8b 04 24             	mov    (%rsp),%eax
    1968:	69 c0 8b 9a 00 00    	imul   $0x9a8b,%eax,%eax
    196e:	89 04 24             	mov    %eax,(%rsp)
    1971:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    1975:	69 c0 cf 86 00 00    	imul   $0x86cf,%eax,%eax
    197b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    197f:	8b 44 24 04          	mov    0x4(%rsp),%eax
    1983:	69 c0 c1 37 00 00    	imul   $0x37c1,%eax,%eax
    1989:	89 44 24 04          	mov    %eax,0x4(%rsp)
    198d:	8b 44 24 24          	mov    0x24(%rsp),%eax
    1991:	69 c0 ed 1d 00 00    	imul   $0x1ded,%eax,%eax
    1997:	89 44 24 24          	mov    %eax,0x24(%rsp)
    199b:	8b 44 24 14          	mov    0x14(%rsp),%eax
    199f:	69 c0 67 6e 00 00    	imul   $0x6e67,%eax,%eax
    19a5:	89 44 24 14          	mov    %eax,0x14(%rsp)
    19a9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    19ad:	69 c0 6f b6 00 00    	imul   $0xb66f,%eax,%eax
    19b3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    19b7:	8b 44 24 20          	mov    0x20(%rsp),%eax
    19bb:	69 c0 51 e7 00 00    	imul   $0xe751,%eax,%eax
    19c1:	89 44 24 20          	mov    %eax,0x20(%rsp)
    19c5:	8b 04 24             	mov    (%rsp),%eax
    19c8:	69 c0 8c a6 00 00    	imul   $0xa68c,%eax,%eax
    19ce:	89 04 24             	mov    %eax,(%rsp)
    19d1:	8b 44 24 14          	mov    0x14(%rsp),%eax
    19d5:	69 c0 0b b3 00 00    	imul   $0xb30b,%eax,%eax
    19db:	89 44 24 14          	mov    %eax,0x14(%rsp)
    19df:	8b 44 24 14          	mov    0x14(%rsp),%eax
    19e3:	69 c0 95 ac 00 00    	imul   $0xac95,%eax,%eax
    19e9:	89 44 24 14          	mov    %eax,0x14(%rsp)
    19ed:	8b 04 24             	mov    (%rsp),%eax
    19f0:	69 c0 39 ed 00 00    	imul   $0xed39,%eax,%eax
    19f6:	89 04 24             	mov    %eax,(%rsp)
    19f9:	8b 44 24 14          	mov    0x14(%rsp),%eax
    19fd:	69 c0 ab c9 00 00    	imul   $0xc9ab,%eax,%eax
    1a03:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1a07:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1a0b:	69 c0 5c 49 00 00    	imul   $0x495c,%eax,%eax
    1a11:	89 44 24 14          	mov    %eax,0x14(%rsp)
    1a15:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1a19:	69 c0 96 e4 00 00    	imul   $0xe496,%eax,%eax
    1a1f:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1a23:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1a27:	69 c0 89 ba 00 00    	imul   $0xba89,%eax,%eax
    1a2d:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1a31:	8b 04 24             	mov    (%rsp),%eax
    1a34:	69 c0 6f fc 00 00    	imul   $0xfc6f,%eax,%eax
    1a3a:	89 04 24             	mov    %eax,(%rsp)
    1a3d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1a41:	69 c0 93 62 00 00    	imul   $0x6293,%eax,%eax
    1a47:	89 44 24 20          	mov    %eax,0x20(%rsp)
    1a4b:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1a4f:	69 c0 db 7c 00 00    	imul   $0x7cdb,%eax,%eax
    1a55:	89 44 24 10          	mov    %eax,0x10(%rsp)
    1a59:	8b 44 24 08          	mov    0x8(%rsp),%eax
    1a5d:	69 c0 47 d0 00 00    	imul   $0xd047,%eax,%eax
    1a63:	89 44 24 08          	mov    %eax,0x8(%rsp)
    1a67:	ba 00 00 00 00       	mov    $0x0,%edx
    1a6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1a71:	eb 0a                	jmp    1a7d <scramble+0x551>
    1a73:	89 d1                	mov    %edx,%ecx
    1a75:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
    1a78:	01 c8                	add    %ecx,%eax
    1a7a:	83 c2 01             	add    $0x1,%edx
    1a7d:	83 fa 09             	cmp    $0x9,%edx
    1a80:	76 f1                	jbe    1a73 <scramble+0x547>
    1a82:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    1a87:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1a8e:	00 00 
    1a90:	75 05                	jne    1a97 <scramble+0x56b>
    1a92:	48 83 c4 38          	add    $0x38,%rsp
    1a96:	c3                   	retq   
    1a97:	e8 c4 f3 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001a9c <getbuf>:
    1a9c:	48 83 ec 28          	sub    $0x28,%rsp
    1aa0:	48 89 e7             	mov    %rsp,%rdi
    1aa3:	e8 b4 03 00 00       	callq  1e5c <Gets>
    1aa8:	b8 01 00 00 00       	mov    $0x1,%eax
    1aad:	48 83 c4 28          	add    $0x28,%rsp
    1ab1:	c3                   	retq   

0000000000001ab2 <touch1>:
    1ab2:	48 83 ec 08          	sub    $0x8,%rsp
    1ab6:	c7 05 1c 39 20 00 01 	movl   $0x1,0x20391c(%rip)        # 2053dc <vlevel>
    1abd:	00 00 00 
    1ac0:	48 8d 3d 9b 1a 00 00 	lea    0x1a9b(%rip),%rdi        # 3562 <_IO_stdin_used+0x2e2>
    1ac7:	e8 74 f3 ff ff       	callq  e40 <puts@plt>
    1acc:	bf 01 00 00 00       	mov    $0x1,%edi
    1ad1:	e8 f6 05 00 00       	callq  20cc <validate>
    1ad6:	bf 00 00 00 00       	mov    $0x0,%edi
    1adb:	e8 d0 f4 ff ff       	callq  fb0 <exit@plt>

0000000000001ae0 <touch2>:                                        # 0x0000555555555ae0
    1ae0:	48 83 ec 08          	sub    $0x8,%rsp
    1ae4:	89 fa                	mov    %edi,%edx
    1ae6:	c7 05 ec 38 20 00 02 	movl   $0x2,0x2038ec(%rip)        # 2053dc <vlevel>
    1aed:	00 00 00 
    1af0:	39 3d ee 38 20 00    	cmp    %edi,0x2038ee(%rip)        # 2053e4 <cookie>
    1af6:	74 2a                	je     1b22 <touch2+0x42>
    1af8:	48 8d 35 b1 1a 00 00 	lea    0x1ab1(%rip),%rsi        # 35b0 <_IO_stdin_used+0x330>
    1aff:	bf 01 00 00 00       	mov    $0x1,%edi
    1b04:	b8 00 00 00 00       	mov    $0x0,%eax
    1b09:	e8 52 f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b0e:	bf 02 00 00 00       	mov    $0x2,%edi
    1b13:	e8 84 06 00 00       	callq  219c <fail>
    1b18:	bf 00 00 00 00       	mov    $0x0,%edi
    1b1d:	e8 8e f4 ff ff       	callq  fb0 <exit@plt>
    1b22:	48 8d 35 5f 1a 00 00 	lea    0x1a5f(%rip),%rsi        # 3588 <_IO_stdin_used+0x308>
    1b29:	bf 01 00 00 00       	mov    $0x1,%edi
    1b2e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b33:	e8 28 f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b38:	bf 02 00 00 00       	mov    $0x2,%edi
    1b3d:	e8 8a 05 00 00       	callq  20cc <validate>
    1b42:	eb d4                	jmp    1b18 <touch2+0x38>

0000000000001b44 <hexmatch>:
    1b44:	41 54                	push   %r12
    1b46:	55                   	push   %rbp
    1b47:	53                   	push   %rbx
    1b48:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1b4c:	89 fd                	mov    %edi,%ebp
    1b4e:	48 89 f3             	mov    %rsi,%rbx
    1b51:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b58:	00 00 
    1b5a:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    1b5f:	31 c0                	xor    %eax,%eax
    1b61:	e8 ba f3 ff ff       	callq  f20 <random@plt>
    1b66:	48 89 c1             	mov    %rax,%rcx
    1b69:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
    1b70:	0a d7 a3 
    1b73:	48 f7 ea             	imul   %rdx
    1b76:	48 01 ca             	add    %rcx,%rdx
    1b79:	48 c1 fa 06          	sar    $0x6,%rdx
    1b7d:	48 89 c8             	mov    %rcx,%rax
    1b80:	48 c1 f8 3f          	sar    $0x3f,%rax
    1b84:	48 29 c2             	sub    %rax,%rdx
    1b87:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    1b8b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1b8f:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
    1b96:	00 
    1b97:	48 29 c1             	sub    %rax,%rcx
    1b9a:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
    1b9e:	41 89 e8             	mov    %ebp,%r8d
    1ba1:	48 8d 0d d7 19 00 00 	lea    0x19d7(%rip),%rcx        # 357f <_IO_stdin_used+0x2ff>
    1ba8:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    1baf:	be 01 00 00 00       	mov    $0x1,%esi
    1bb4:	4c 89 e7             	mov    %r12,%rdi
    1bb7:	b8 00 00 00 00       	mov    $0x0,%eax
    1bbc:	e8 1f f4 ff ff       	callq  fe0 <__sprintf_chk@plt>
    1bc1:	ba 09 00 00 00       	mov    $0x9,%edx
    1bc6:	4c 89 e6             	mov    %r12,%rsi
    1bc9:	48 89 df             	mov    %rbx,%rdi
    1bcc:	e8 4f f2 ff ff       	callq  e20 <strncmp@plt>
    1bd1:	85 c0                	test   %eax,%eax
    1bd3:	0f 94 c0             	sete   %al
    1bd6:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
    1bdb:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    1be2:	00 00 
    1be4:	75 0c                	jne    1bf2 <hexmatch+0xae>
    1be6:	0f b6 c0             	movzbl %al,%eax
    1be9:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    1bed:	5b                   	pop    %rbx
    1bee:	5d                   	pop    %rbp
    1bef:	41 5c                	pop    %r12
    1bf1:	c3                   	retq   
    1bf2:	e8 69 f2 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001bf7 <touch3>:
    1bf7:	53                   	push   %rbx
    1bf8:	48 89 fb             	mov    %rdi,%rbx
    1bfb:	c7 05 d7 37 20 00 03 	movl   $0x3,0x2037d7(%rip)        # 2053dc <vlevel>
    1c02:	00 00 00 
    1c05:	48 89 fe             	mov    %rdi,%rsi
    1c08:	8b 3d d6 37 20 00    	mov    0x2037d6(%rip),%edi        # 2053e4 <cookie>
    1c0e:	e8 31 ff ff ff       	callq  1b44 <hexmatch>
    1c13:	85 c0                	test   %eax,%eax
    1c15:	74 2d                	je     1c44 <touch3+0x4d>
    1c17:	48 89 da             	mov    %rbx,%rdx
    1c1a:	48 8d 35 b7 19 00 00 	lea    0x19b7(%rip),%rsi        # 35d8 <_IO_stdin_used+0x358>
    1c21:	bf 01 00 00 00       	mov    $0x1,%edi
    1c26:	b8 00 00 00 00       	mov    $0x0,%eax
    1c2b:	e8 30 f3 ff ff       	callq  f60 <__printf_chk@plt>
    1c30:	bf 03 00 00 00       	mov    $0x3,%edi
    1c35:	e8 92 04 00 00       	callq  20cc <validate>
    1c3a:	bf 00 00 00 00       	mov    $0x0,%edi
    1c3f:	e8 6c f3 ff ff       	callq  fb0 <exit@plt>
    1c44:	48 89 da             	mov    %rbx,%rdx
    1c47:	48 8d 35 b2 19 00 00 	lea    0x19b2(%rip),%rsi        # 3600 <_IO_stdin_used+0x380>
    1c4e:	bf 01 00 00 00       	mov    $0x1,%edi
    1c53:	b8 00 00 00 00       	mov    $0x0,%eax
    1c58:	e8 03 f3 ff ff       	callq  f60 <__printf_chk@plt>
    1c5d:	bf 03 00 00 00       	mov    $0x3,%edi
    1c62:	e8 35 05 00 00       	callq  219c <fail>
    1c67:	eb d1                	jmp    1c3a <touch3+0x43>

0000000000001c69 <test>:                                            # 0x0000555555555c69
    1c69:	48 83 ec 08          	sub    $0x8,%rsp
    1c6d:	b8 00 00 00 00       	mov    $0x0,%eax
    1c72:	e8 25 fe ff ff       	callq  1a9c <getbuf>
    1c77:	89 c2                	mov    %eax,%edx
    1c79:	48 8d 35 a8 19 00 00 	lea    0x19a8(%rip),%rsi        # 3628 <_IO_stdin_used+0x3a8>
    1c80:	bf 01 00 00 00       	mov    $0x1,%edi
    1c85:	b8 00 00 00 00       	mov    $0x0,%eax
    1c8a:	e8 d1 f2 ff ff       	callq  f60 <__printf_chk@plt>
    1c8f:	48 83 c4 08          	add    $0x8,%rsp
    1c93:	c3                   	retq   

0000000000001c94 <start_farm>:
    1c94:	b8 01 00 00 00       	mov    $0x1,%eax
    1c99:	c3                   	retq   

0000000000001c9a <addval_435>:
    1c9a:	8d 87 48 89 c7 c7    	lea    -0x383876b8(%rdi),%eax
    1ca0:	c3                   	retq   

0000000000001ca1 <addval_412>:  # popq %rax                       # 0x0000555555555ca1
    1ca1:	8d 87 d7 83 58 90    	lea    -0x6fa77c29(%rdi),%eax
    1ca7:	c3                   	retq   

0000000000001ca8 <getval_292>:
    1ca8:	b8 48 89 c7 92       	mov    $0x92c78948,%eax
    1cad:	c3                   	retq   

0000000000001cae <getval_423>:
    1cae:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
    1cb3:	c3                   	retq   

0000000000001cb4 <addval_281>: # movq %rax, %rdi                  # 0x0000555555555cb4
    1cb4:	8d 87 14 48 89 c7    	lea    -0x3876b7ec(%rdi),%eax
    1cba:	c3                   	retq   

0000000000001cbb <getval_338>:
    1cbb:	b8 18 90 90 c3       	mov    $0xc3909018,%eax
    1cc0:	c3                   	retq   

0000000000001cc1 <addval_427>:
    1cc1:	8d 87 36 c0 d8 90    	lea    -0x6f273fca(%rdi),%eax
    1cc7:	c3                   	retq   

0000000000001cc8 <setval_388>:
    1cc8:	c7 07 35 58 90 90    	movl   $0x90905835,(%rdi)
    1cce:	c3                   	retq   

0000000000001ccf <mid_farm>:
    1ccf:	b8 01 00 00 00       	mov    $0x1,%eax
    1cd4:	c3                   	retq   

0000000000001cd5 <add_xy>:
    1cd5:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    1cd9:	c3                   	retq   

0000000000001cda <addval_105>:
    1cda:	8d 87 89 d1 78 c0    	lea    -0x3f872e77(%rdi),%eax
    1ce0:	c3                   	retq   

0000000000001ce1 <getval_371>:
    1ce1:	b8 89 d1 18 d2       	mov    $0xd218d189,%eax
    1ce6:	c3                   	retq   

0000000000001ce7 <addval_129>:
    1ce7:	8d 87 89 d1 18 c0    	lea    -0x3fe72e77(%rdi),%eax
    1ced:	c3                   	retq   

0000000000001cee <getval_137>:
    1cee:	b8 89 ce 90 90       	mov    $0x9090ce89,%eax
    1cf3:	c3                   	retq   

0000000000001cf4 <addval_362>:
    1cf4:	8d 87 48 89 e0 c7    	lea    -0x381f76b8(%rdi),%eax
    1cfa:	c3                   	retq   

0000000000001cfb <addval_236>:
    1cfb:	8d 87 89 ce 30 c0    	lea    -0x3fcf3177(%rdi),%eax
    1d01:	c3                   	retq   

0000000000001d02 <setval_151>:
    1d02:	c7 07 c9 c2 84 db    	movl   $0xdb84c2c9,(%rdi)
    1d08:	c3                   	retq   

0000000000001d09 <getval_102>:
    1d09:	b8 89 d1 90 c3       	mov    $0xc390d189,%eax
    1d0e:	c3                   	retq   

0000000000001d0f <addval_121>:
    1d0f:	8d 87 a9 c2 38 db    	lea    -0x24c73d57(%rdi),%eax
    1d15:	c3                   	retq   

0000000000001d16 <addval_378>:
    1d16:	8d 87 89 c2 94 c0    	lea    -0x3f6b3d77(%rdi),%eax
    1d1c:	c3                   	retq   

0000000000001d1d <setval_443>:
    1d1d:	c7 07 89 ce 94 d2    	movl   $0xd294ce89,(%rdi)
    1d23:	c3                   	retq   

0000000000001d24 <getval_467>:
    1d24:	b8 89 ce 60 c0       	mov    $0xc060ce89,%eax
    1d29:	c3                   	retq   

0000000000001d2a <addval_479>:
    1d2a:	8d 87 99 c2 84 c9    	lea    -0x367b3d67(%rdi),%eax
    1d30:	c3                   	retq   

0000000000001d31 <getval_125>:
    1d31:	b8 99 ce 84 d2       	mov    $0xd284ce99,%eax
    1d36:	c3                   	retq   

0000000000001d37 <getval_276>:
    1d37:	b8 89 08 89 e0       	mov    $0xe0890889,%eax
    1d3c:	c3                   	retq   

0000000000001d3d <getval_287>:
    1d3d:	b8 89 d1 91 c3       	mov    $0xc391d189,%eax
    1d42:	c3                   	retq   

0000000000001d43 <setval_265>:
    1d43:	c7 07 a9 d1 c3 4e    	movl   $0x4ec3d1a9,(%rdi)
    1d49:	c3                   	retq   

0000000000001d4a <addval_480>:
    1d4a:	8d 87 89 ce 90 c3    	lea    -0x3c6f3177(%rdi),%eax
    1d50:	c3                   	retq   

0000000000001d51 <addval_297>:
    1d51:	8d 87 4a 89 e0 c3    	lea    -0x3c1f76b6(%rdi),%eax
    1d57:	c3                   	retq   

0000000000001d58 <setval_313>:
    1d58:	c7 07 89 d1 08 c0    	movl   $0xc008d189,(%rdi)
    1d5e:	c3                   	retq   

0000000000001d5f <getval_100>:
    1d5f:	b8 89 d1 28 db       	mov    $0xdb28d189,%eax
    1d64:	c3                   	retq   

0000000000001d65 <addval_107>:
    1d65:	8d 87 a9 ce 20 c0    	lea    -0x3fdf3157(%rdi),%eax
    1d6b:	c3                   	retq   

0000000000001d6c <setval_367>:
    1d6c:	c7 07 89 c2 20 c0    	movl   $0xc020c289,(%rdi)
    1d72:	c3                   	retq   

0000000000001d73 <addval_191>:
    1d73:	8d 87 89 c2 20 c9    	lea    -0x36df3d77(%rdi),%eax
    1d79:	c3                   	retq   

0000000000001d7a <addval_237>:
    1d7a:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
    1d80:	c3                   	retq   

0000000000001d81 <getval_208>:
    1d81:	b8 8b c2 90 c3       	mov    $0xc390c28b,%eax
    1d86:	c3                   	retq   

0000000000001d87 <getval_228>:
    1d87:	b8 ed 40 89 e0       	mov    $0xe08940ed,%eax
    1d8c:	c3                   	retq   

0000000000001d8d <addval_293>:
    1d8d:	8d 87 09 c2 84 c0    	lea    -0x3f7b3df7(%rdi),%eax
    1d93:	c3                   	retq   

0000000000001d94 <setval_363>:
    1d94:	c7 07 6e 89 ce 94    	movl   $0x94ce896e,(%rdi)
    1d9a:	c3                   	retq   

0000000000001d9b <getval_491>:
    1d9b:	b8 48 99 e0 c3       	mov    $0xc3e09948,%eax
    1da0:	c3                   	retq   

0000000000001da1 <addval_175>:
    1da1:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
    1da7:	c3                   	retq   

0000000000001da8 <getval_377>:
    1da8:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
    1dad:	c3                   	retq   

0000000000001dae <end_farm>:
    1dae:	b8 01 00 00 00       	mov    $0x1,%eax
    1db3:	c3                   	retq   

0000000000001db4 <save_char>:
    1db4:	8b 05 4a 42 20 00    	mov    0x20424a(%rip),%eax        # 206004 <gets_cnt>
    1dba:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    1dbf:	7f 4a                	jg     1e0b <save_char+0x57>
    1dc1:	89 f9                	mov    %edi,%ecx
    1dc3:	c0 e9 04             	shr    $0x4,%cl
    1dc6:	8d 14 40             	lea    (%rax,%rax,2),%edx
    1dc9:	4c 8d 05 80 1b 00 00 	lea    0x1b80(%rip),%r8        # 3950 <trans_char>
    1dd0:	83 e1 0f             	and    $0xf,%ecx
    1dd3:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
    1dd8:	48 8d 0d 21 36 20 00 	lea    0x203621(%rip),%rcx        # 205400 <gets_buf>
    1ddf:	48 63 f2             	movslq %edx,%rsi
    1de2:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
    1de6:	8d 72 01             	lea    0x1(%rdx),%esi
    1de9:	83 e7 0f             	and    $0xf,%edi
    1dec:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
    1df1:	48 63 f6             	movslq %esi,%rsi
    1df4:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
    1df8:	83 c2 02             	add    $0x2,%edx
    1dfb:	48 63 d2             	movslq %edx,%rdx
    1dfe:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
    1e02:	83 c0 01             	add    $0x1,%eax
    1e05:	89 05 f9 41 20 00    	mov    %eax,0x2041f9(%rip)        # 206004 <gets_cnt>
    1e0b:	f3 c3                	repz retq 

0000000000001e0d <save_term>:
    1e0d:	8b 05 f1 41 20 00    	mov    0x2041f1(%rip),%eax        # 206004 <gets_cnt>
    1e13:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1e16:	48 98                	cltq   
    1e18:	48 8d 15 e1 35 20 00 	lea    0x2035e1(%rip),%rdx        # 205400 <gets_buf>
    1e1f:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1e23:	c3                   	retq   

0000000000001e24 <check_fail>:
    1e24:	48 83 ec 08          	sub    $0x8,%rsp
    1e28:	0f be 15 d9 41 20 00 	movsbl 0x2041d9(%rip),%edx        # 206008 <target_prefix>
    1e2f:	4c 8d 05 ca 35 20 00 	lea    0x2035ca(%rip),%r8        # 205400 <gets_buf>
    1e36:	8b 0d 9c 35 20 00    	mov    0x20359c(%rip),%ecx        # 2053d8 <check_level>
    1e3c:	48 8d 35 08 18 00 00 	lea    0x1808(%rip),%rsi        # 364b <_IO_stdin_used+0x3cb>
    1e43:	bf 01 00 00 00       	mov    $0x1,%edi
    1e48:	b8 00 00 00 00       	mov    $0x0,%eax
    1e4d:	e8 0e f1 ff ff       	callq  f60 <__printf_chk@plt>
    1e52:	bf 01 00 00 00       	mov    $0x1,%edi
    1e57:	e8 54 f1 ff ff       	callq  fb0 <exit@plt>

0000000000001e5c <Gets>:
    1e5c:	41 54                	push   %r12
    1e5e:	55                   	push   %rbp
    1e5f:	53                   	push   %rbx
    1e60:	49 89 fc             	mov    %rdi,%r12
    1e63:	c7 05 97 41 20 00 00 	movl   $0x0,0x204197(%rip)        # 206004 <gets_cnt>
    1e6a:	00 00 00 
    1e6d:	48 89 fb             	mov    %rdi,%rbx
    1e70:	eb 11                	jmp    1e83 <Gets+0x27>
    1e72:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    1e76:	88 03                	mov    %al,(%rbx)
    1e78:	0f b6 f8             	movzbl %al,%edi
    1e7b:	e8 34 ff ff ff       	callq  1db4 <save_char>
    1e80:	48 89 eb             	mov    %rbp,%rbx
    1e83:	48 8b 3d 46 35 20 00 	mov    0x203546(%rip),%rdi        # 2053d0 <infile>
    1e8a:	e8 a1 f0 ff ff       	callq  f30 <_IO_getc@plt>
    1e8f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1e92:	74 05                	je     1e99 <Gets+0x3d>
    1e94:	83 f8 0a             	cmp    $0xa,%eax
    1e97:	75 d9                	jne    1e72 <Gets+0x16>
    1e99:	c6 03 00             	movb   $0x0,(%rbx)
    1e9c:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea1:	e8 67 ff ff ff       	callq  1e0d <save_term>
    1ea6:	4c 89 e0             	mov    %r12,%rax
    1ea9:	5b                   	pop    %rbx
    1eaa:	5d                   	pop    %rbp
    1eab:	41 5c                	pop    %r12
    1ead:	c3                   	retq   

0000000000001eae <notify_server>:
    1eae:	55                   	push   %rbp
    1eaf:	53                   	push   %rbx
    1eb0:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1eb7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ebe:	00 00 
    1ec0:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1ec7:	00 
    1ec8:	31 c0                	xor    %eax,%eax
    1eca:	83 3d 17 35 20 00 00 	cmpl   $0x0,0x203517(%rip)        # 2053e8 <is_checker>
    1ed1:	0f 85 d2 00 00 00    	jne    1fa9 <notify_server+0xfb>
    1ed7:	89 fb                	mov    %edi,%ebx
    1ed9:	8b 05 25 41 20 00    	mov    0x204125(%rip),%eax        # 206004 <gets_cnt>
    1edf:	83 c0 64             	add    $0x64,%eax
    1ee2:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1ee7:	0f 8f dd 00 00 00    	jg     1fca <notify_server+0x11c>
    1eed:	0f be 05 14 41 20 00 	movsbl 0x204114(%rip),%eax        # 206008 <target_prefix>
    1ef4:	83 3d 6d 34 20 00 00 	cmpl   $0x0,0x20346d(%rip)        # 205368 <notify>
    1efb:	0f 84 e9 00 00 00    	je     1fea <notify_server+0x13c>
    1f01:	8b 15 d9 34 20 00    	mov    0x2034d9(%rip),%edx        # 2053e0 <authkey>
    1f07:	85 db                	test   %ebx,%ebx
    1f09:	0f 84 e5 00 00 00    	je     1ff4 <notify_server+0x146>
    1f0f:	48 8d 2d 4b 17 00 00 	lea    0x174b(%rip),%rbp        # 3661 <_IO_stdin_used+0x3e1>
    1f16:	48 89 e7             	mov    %rsp,%rdi
    1f19:	48 8d 0d e0 34 20 00 	lea    0x2034e0(%rip),%rcx        # 205400 <gets_buf>
    1f20:	51                   	push   %rcx
    1f21:	56                   	push   %rsi
    1f22:	50                   	push   %rax
    1f23:	52                   	push   %rdx
    1f24:	49 89 e9             	mov    %rbp,%r9
    1f27:	44 8b 05 e2 30 20 00 	mov    0x2030e2(%rip),%r8d        # 205010 <target_id>
    1f2e:	48 8d 0d 36 17 00 00 	lea    0x1736(%rip),%rcx        # 366b <_IO_stdin_used+0x3eb>
    1f35:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f3a:	be 01 00 00 00       	mov    $0x1,%esi
    1f3f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f44:	e8 97 f0 ff ff       	callq  fe0 <__sprintf_chk@plt>
    1f49:	48 83 c4 20          	add    $0x20,%rsp
    1f4d:	83 3d 14 34 20 00 00 	cmpl   $0x0,0x203414(%rip)        # 205368 <notify>
    1f54:	0f 84 df 00 00 00    	je     2039 <notify_server+0x18b>
    1f5a:	85 db                	test   %ebx,%ebx
    1f5c:	0f 84 c6 00 00 00    	je     2028 <notify_server+0x17a>
    1f62:	48 89 e1             	mov    %rsp,%rcx
    1f65:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1f6c:	00 
    1f6d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1f73:	48 8b 15 ae 30 20 00 	mov    0x2030ae(%rip),%rdx        # 205028 <lab>
    1f7a:	48 8b 35 af 30 20 00 	mov    0x2030af(%rip),%rsi        # 205030 <course>
    1f81:	48 8b 3d 98 30 20 00 	mov    0x203098(%rip),%rdi        # 205020 <user_id>
    1f88:	e8 af 11 00 00       	callq  313c <driver_post>
    1f8d:	85 c0                	test   %eax,%eax
    1f8f:	78 6f                	js     2000 <notify_server+0x152>
    1f91:	48 8d 3d 18 18 00 00 	lea    0x1818(%rip),%rdi        # 37b0 <_IO_stdin_used+0x530>
    1f98:	e8 a3 ee ff ff       	callq  e40 <puts@plt>
    1f9d:	48 8d 3d ef 16 00 00 	lea    0x16ef(%rip),%rdi        # 3693 <_IO_stdin_used+0x413>
    1fa4:	e8 97 ee ff ff       	callq  e40 <puts@plt>
    1fa9:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1fb0:	00 
    1fb1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1fb8:	00 00 
    1fba:	0f 85 07 01 00 00    	jne    20c7 <notify_server+0x219>
    1fc0:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1fc7:	5b                   	pop    %rbx
    1fc8:	5d                   	pop    %rbp
    1fc9:	c3                   	retq   
    1fca:	48 8d 35 af 17 00 00 	lea    0x17af(%rip),%rsi        # 3780 <_IO_stdin_used+0x500>
    1fd1:	bf 01 00 00 00       	mov    $0x1,%edi
    1fd6:	b8 00 00 00 00       	mov    $0x0,%eax
    1fdb:	e8 80 ef ff ff       	callq  f60 <__printf_chk@plt>
    1fe0:	bf 01 00 00 00       	mov    $0x1,%edi
    1fe5:	e8 c6 ef ff ff       	callq  fb0 <exit@plt>
    1fea:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1fef:	e9 13 ff ff ff       	jmpq   1f07 <notify_server+0x59>
    1ff4:	48 8d 2d 6b 16 00 00 	lea    0x166b(%rip),%rbp        # 3666 <_IO_stdin_used+0x3e6>
    1ffb:	e9 16 ff ff ff       	jmpq   1f16 <notify_server+0x68>
    2000:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
    2007:	00 
    2008:	48 8d 35 78 16 00 00 	lea    0x1678(%rip),%rsi        # 3687 <_IO_stdin_used+0x407>
    200f:	bf 01 00 00 00       	mov    $0x1,%edi
    2014:	b8 00 00 00 00       	mov    $0x0,%eax
    2019:	e8 42 ef ff ff       	callq  f60 <__printf_chk@plt>
    201e:	bf 01 00 00 00       	mov    $0x1,%edi
    2023:	e8 88 ef ff ff       	callq  fb0 <exit@plt>
    2028:	48 8d 3d 6e 16 00 00 	lea    0x166e(%rip),%rdi        # 369d <_IO_stdin_used+0x41d>
    202f:	e8 0c ee ff ff       	callq  e40 <puts@plt>
    2034:	e9 70 ff ff ff       	jmpq   1fa9 <notify_server+0xfb>
    2039:	48 89 ea             	mov    %rbp,%rdx
    203c:	48 8d 35 a5 17 00 00 	lea    0x17a5(%rip),%rsi        # 37e8 <_IO_stdin_used+0x568>
    2043:	bf 01 00 00 00       	mov    $0x1,%edi
    2048:	b8 00 00 00 00       	mov    $0x0,%eax
    204d:	e8 0e ef ff ff       	callq  f60 <__printf_chk@plt>
    2052:	48 8b 15 c7 2f 20 00 	mov    0x202fc7(%rip),%rdx        # 205020 <user_id>
    2059:	48 8d 35 44 16 00 00 	lea    0x1644(%rip),%rsi        # 36a4 <_IO_stdin_used+0x424>
    2060:	bf 01 00 00 00       	mov    $0x1,%edi
    2065:	b8 00 00 00 00       	mov    $0x0,%eax
    206a:	e8 f1 ee ff ff       	callq  f60 <__printf_chk@plt>
    206f:	48 8b 15 ba 2f 20 00 	mov    0x202fba(%rip),%rdx        # 205030 <course>
    2076:	48 8d 35 34 16 00 00 	lea    0x1634(%rip),%rsi        # 36b1 <_IO_stdin_used+0x431>
    207d:	bf 01 00 00 00       	mov    $0x1,%edi
    2082:	b8 00 00 00 00       	mov    $0x0,%eax
    2087:	e8 d4 ee ff ff       	callq  f60 <__printf_chk@plt>
    208c:	48 8b 15 95 2f 20 00 	mov    0x202f95(%rip),%rdx        # 205028 <lab>
    2093:	48 8d 35 23 16 00 00 	lea    0x1623(%rip),%rsi        # 36bd <_IO_stdin_used+0x43d>
    209a:	bf 01 00 00 00       	mov    $0x1,%edi
    209f:	b8 00 00 00 00       	mov    $0x0,%eax
    20a4:	e8 b7 ee ff ff       	callq  f60 <__printf_chk@plt>
    20a9:	48 89 e2             	mov    %rsp,%rdx
    20ac:	48 8d 35 13 16 00 00 	lea    0x1613(%rip),%rsi        # 36c6 <_IO_stdin_used+0x446>
    20b3:	bf 01 00 00 00       	mov    $0x1,%edi
    20b8:	b8 00 00 00 00       	mov    $0x0,%eax
    20bd:	e8 9e ee ff ff       	callq  f60 <__printf_chk@plt>
    20c2:	e9 e2 fe ff ff       	jmpq   1fa9 <notify_server+0xfb>
    20c7:	e8 94 ed ff ff       	callq  e60 <__stack_chk_fail@plt>

00000000000020cc <validate>:
    20cc:	53                   	push   %rbx
    20cd:	89 fb                	mov    %edi,%ebx
    20cf:	83 3d 12 33 20 00 00 	cmpl   $0x0,0x203312(%rip)        # 2053e8 <is_checker>
    20d6:	74 72                	je     214a <validate+0x7e>
    20d8:	39 3d fe 32 20 00    	cmp    %edi,0x2032fe(%rip)        # 2053dc <vlevel>
    20de:	75 32                	jne    2112 <validate+0x46>
    20e0:	8b 15 f2 32 20 00    	mov    0x2032f2(%rip),%edx        # 2053d8 <check_level>
    20e6:	39 fa                	cmp    %edi,%edx
    20e8:	75 3e                	jne    2128 <validate+0x5c>
    20ea:	0f be 15 17 3f 20 00 	movsbl 0x203f17(%rip),%edx        # 206008 <target_prefix>
    20f1:	4c 8d 05 08 33 20 00 	lea    0x203308(%rip),%r8        # 205400 <gets_buf>
    20f8:	89 f9                	mov    %edi,%ecx
    20fa:	48 8d 35 ef 15 00 00 	lea    0x15ef(%rip),%rsi        # 36f0 <_IO_stdin_used+0x470>
    2101:	bf 01 00 00 00       	mov    $0x1,%edi
    2106:	b8 00 00 00 00       	mov    $0x0,%eax
    210b:	e8 50 ee ff ff       	callq  f60 <__printf_chk@plt>
    2110:	5b                   	pop    %rbx
    2111:	c3                   	retq   
    2112:	48 8d 3d b9 15 00 00 	lea    0x15b9(%rip),%rdi        # 36d2 <_IO_stdin_used+0x452>
    2119:	e8 22 ed ff ff       	callq  e40 <puts@plt>
    211e:	b8 00 00 00 00       	mov    $0x0,%eax
    2123:	e8 fc fc ff ff       	callq  1e24 <check_fail>
    2128:	89 f9                	mov    %edi,%ecx
    212a:	48 8d 35 df 16 00 00 	lea    0x16df(%rip),%rsi        # 3810 <_IO_stdin_used+0x590>
    2131:	bf 01 00 00 00       	mov    $0x1,%edi
    2136:	b8 00 00 00 00       	mov    $0x0,%eax
    213b:	e8 20 ee ff ff       	callq  f60 <__printf_chk@plt>
    2140:	b8 00 00 00 00       	mov    $0x0,%eax
    2145:	e8 da fc ff ff       	callq  1e24 <check_fail>
    214a:	39 3d 8c 32 20 00    	cmp    %edi,0x20328c(%rip)        # 2053dc <vlevel>
    2150:	74 1a                	je     216c <validate+0xa0>
    2152:	48 8d 3d 79 15 00 00 	lea    0x1579(%rip),%rdi        # 36d2 <_IO_stdin_used+0x452>
    2159:	e8 e2 ec ff ff       	callq  e40 <puts@plt>
    215e:	89 de                	mov    %ebx,%esi
    2160:	bf 00 00 00 00       	mov    $0x0,%edi
    2165:	e8 44 fd ff ff       	callq  1eae <notify_server>
    216a:	eb a4                	jmp    2110 <validate+0x44>
    216c:	0f be 0d 95 3e 20 00 	movsbl 0x203e95(%rip),%ecx        # 206008 <target_prefix>
    2173:	89 fa                	mov    %edi,%edx
    2175:	48 8d 35 bc 16 00 00 	lea    0x16bc(%rip),%rsi        # 3838 <_IO_stdin_used+0x5b8>
    217c:	bf 01 00 00 00       	mov    $0x1,%edi
    2181:	b8 00 00 00 00       	mov    $0x0,%eax
    2186:	e8 d5 ed ff ff       	callq  f60 <__printf_chk@plt>
    218b:	89 de                	mov    %ebx,%esi
    218d:	bf 01 00 00 00       	mov    $0x1,%edi
    2192:	e8 17 fd ff ff       	callq  1eae <notify_server>
    2197:	e9 74 ff ff ff       	jmpq   2110 <validate+0x44>

000000000000219c <fail>:
    219c:	48 83 ec 08          	sub    $0x8,%rsp
    21a0:	83 3d 41 32 20 00 00 	cmpl   $0x0,0x203241(%rip)        # 2053e8 <is_checker>
    21a7:	75 11                	jne    21ba <fail+0x1e>
    21a9:	89 fe                	mov    %edi,%esi
    21ab:	bf 00 00 00 00       	mov    $0x0,%edi
    21b0:	e8 f9 fc ff ff       	callq  1eae <notify_server>
    21b5:	48 83 c4 08          	add    $0x8,%rsp
    21b9:	c3                   	retq   
    21ba:	b8 00 00 00 00       	mov    $0x0,%eax
    21bf:	e8 60 fc ff ff       	callq  1e24 <check_fail>

00000000000021c4 <bushandler>:
    21c4:	48 83 ec 08          	sub    $0x8,%rsp
    21c8:	83 3d 19 32 20 00 00 	cmpl   $0x0,0x203219(%rip)        # 2053e8 <is_checker>
    21cf:	74 16                	je     21e7 <bushandler+0x23>
    21d1:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 3705 <_IO_stdin_used+0x485>
    21d8:	e8 63 ec ff ff       	callq  e40 <puts@plt>
    21dd:	b8 00 00 00 00       	mov    $0x0,%eax
    21e2:	e8 3d fc ff ff       	callq  1e24 <check_fail>
    21e7:	48 8d 3d 82 16 00 00 	lea    0x1682(%rip),%rdi        # 3870 <_IO_stdin_used+0x5f0>
    21ee:	e8 4d ec ff ff       	callq  e40 <puts@plt>
    21f3:	48 8d 3d 15 15 00 00 	lea    0x1515(%rip),%rdi        # 370f <_IO_stdin_used+0x48f>
    21fa:	e8 41 ec ff ff       	callq  e40 <puts@plt>
    21ff:	be 00 00 00 00       	mov    $0x0,%esi
    2204:	bf 00 00 00 00       	mov    $0x0,%edi
    2209:	e8 a0 fc ff ff       	callq  1eae <notify_server>
    220e:	bf 01 00 00 00       	mov    $0x1,%edi
    2213:	e8 98 ed ff ff       	callq  fb0 <exit@plt>

0000000000002218 <seghandler>:
    2218:	48 83 ec 08          	sub    $0x8,%rsp
    221c:	83 3d c5 31 20 00 00 	cmpl   $0x0,0x2031c5(%rip)        # 2053e8 <is_checker>
    2223:	74 16                	je     223b <seghandler+0x23>
    2225:	48 8d 3d f9 14 00 00 	lea    0x14f9(%rip),%rdi        # 3725 <_IO_stdin_used+0x4a5>
    222c:	e8 0f ec ff ff       	callq  e40 <puts@plt>
    2231:	b8 00 00 00 00       	mov    $0x0,%eax
    2236:	e8 e9 fb ff ff       	callq  1e24 <check_fail>
    223b:	48 8d 3d 4e 16 00 00 	lea    0x164e(%rip),%rdi        # 3890 <_IO_stdin_used+0x610>
    2242:	e8 f9 eb ff ff       	callq  e40 <puts@plt>
    2247:	48 8d 3d c1 14 00 00 	lea    0x14c1(%rip),%rdi        # 370f <_IO_stdin_used+0x48f>
    224e:	e8 ed eb ff ff       	callq  e40 <puts@plt>
    2253:	be 00 00 00 00       	mov    $0x0,%esi
    2258:	bf 00 00 00 00       	mov    $0x0,%edi
    225d:	e8 4c fc ff ff       	callq  1eae <notify_server>
    2262:	bf 01 00 00 00       	mov    $0x1,%edi
    2267:	e8 44 ed ff ff       	callq  fb0 <exit@plt>

000000000000226c <illegalhandler>:
    226c:	48 83 ec 08          	sub    $0x8,%rsp
    2270:	83 3d 71 31 20 00 00 	cmpl   $0x0,0x203171(%rip)        # 2053e8 <is_checker>
    2277:	74 16                	je     228f <illegalhandler+0x23>
    2279:	48 8d 3d b8 14 00 00 	lea    0x14b8(%rip),%rdi        # 3738 <_IO_stdin_used+0x4b8>
    2280:	e8 bb eb ff ff       	callq  e40 <puts@plt>
    2285:	b8 00 00 00 00       	mov    $0x0,%eax
    228a:	e8 95 fb ff ff       	callq  1e24 <check_fail>
    228f:	48 8d 3d 22 16 00 00 	lea    0x1622(%rip),%rdi        # 38b8 <_IO_stdin_used+0x638>
    2296:	e8 a5 eb ff ff       	callq  e40 <puts@plt>
    229b:	48 8d 3d 6d 14 00 00 	lea    0x146d(%rip),%rdi        # 370f <_IO_stdin_used+0x48f>
    22a2:	e8 99 eb ff ff       	callq  e40 <puts@plt>
    22a7:	be 00 00 00 00       	mov    $0x0,%esi
    22ac:	bf 00 00 00 00       	mov    $0x0,%edi
    22b1:	e8 f8 fb ff ff       	callq  1eae <notify_server>
    22b6:	bf 01 00 00 00       	mov    $0x1,%edi
    22bb:	e8 f0 ec ff ff       	callq  fb0 <exit@plt>

00000000000022c0 <sigalrmhandler>:
    22c0:	48 83 ec 08          	sub    $0x8,%rsp
    22c4:	83 3d 1d 31 20 00 00 	cmpl   $0x0,0x20311d(%rip)        # 2053e8 <is_checker>
    22cb:	74 16                	je     22e3 <sigalrmhandler+0x23>
    22cd:	48 8d 3d 78 14 00 00 	lea    0x1478(%rip),%rdi        # 374c <_IO_stdin_used+0x4cc>
    22d4:	e8 67 eb ff ff       	callq  e40 <puts@plt>
    22d9:	b8 00 00 00 00       	mov    $0x0,%eax
    22de:	e8 41 fb ff ff       	callq  1e24 <check_fail>
    22e3:	ba 05 00 00 00       	mov    $0x5,%edx
    22e8:	48 8d 35 f9 15 00 00 	lea    0x15f9(%rip),%rsi        # 38e8 <_IO_stdin_used+0x668>
    22ef:	bf 01 00 00 00       	mov    $0x1,%edi
    22f4:	b8 00 00 00 00       	mov    $0x0,%eax
    22f9:	e8 62 ec ff ff       	callq  f60 <__printf_chk@plt>
    22fe:	be 00 00 00 00       	mov    $0x0,%esi
    2303:	bf 00 00 00 00       	mov    $0x0,%edi
    2308:	e8 a1 fb ff ff       	callq  1eae <notify_server>
    230d:	bf 01 00 00 00       	mov    $0x1,%edi
    2312:	e8 99 ec ff ff       	callq  fb0 <exit@plt>

0000000000002317 <launch>:
    2317:	55                   	push   %rbp
    2318:	48 89 e5             	mov    %rsp,%rbp
    231b:	48 83 ec 10          	sub    $0x10,%rsp
    231f:	48 89 fa             	mov    %rdi,%rdx
    2322:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2329:	00 00 
    232b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    232f:	31 c0                	xor    %eax,%eax
    2331:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
    2335:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2339:	48 29 c4             	sub    %rax,%rsp
    233c:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
    2341:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    2345:	be f4 00 00 00       	mov    $0xf4,%esi
    234a:	e8 31 eb ff ff       	callq  e80 <memset@plt>
    234f:	48 8b 05 2a 30 20 00 	mov    0x20302a(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    2356:	48 39 05 73 30 20 00 	cmp    %rax,0x203073(%rip)        # 2053d0 <infile>
    235d:	74 3a                	je     2399 <launch+0x82>
    235f:	c7 05 73 30 20 00 00 	movl   $0x0,0x203073(%rip)        # 2053dc <vlevel>
    2366:	00 00 00 
    2369:	b8 00 00 00 00       	mov    $0x0,%eax
    236e:	e8 f6 f8 ff ff       	callq  1c69 <test>
    2373:	83 3d 6e 30 20 00 00 	cmpl   $0x0,0x20306e(%rip)        # 2053e8 <is_checker>
    237a:	75 35                	jne    23b1 <launch+0x9a>
    237c:	48 8d 3d e9 13 00 00 	lea    0x13e9(%rip),%rdi        # 376c <_IO_stdin_used+0x4ec>
    2383:	e8 b8 ea ff ff       	callq  e40 <puts@plt>
    2388:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    238c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2393:	00 00 
    2395:	75 30                	jne    23c7 <launch+0xb0>
    2397:	c9                   	leaveq 
    2398:	c3                   	retq   
    2399:	48 8d 35 b4 13 00 00 	lea    0x13b4(%rip),%rsi        # 3754 <_IO_stdin_used+0x4d4>
    23a0:	bf 01 00 00 00       	mov    $0x1,%edi
    23a5:	b8 00 00 00 00       	mov    $0x0,%eax
    23aa:	e8 b1 eb ff ff       	callq  f60 <__printf_chk@plt>
    23af:	eb ae                	jmp    235f <launch+0x48>
    23b1:	48 8d 3d a9 13 00 00 	lea    0x13a9(%rip),%rdi        # 3761 <_IO_stdin_used+0x4e1>
    23b8:	e8 83 ea ff ff       	callq  e40 <puts@plt>
    23bd:	b8 00 00 00 00       	mov    $0x0,%eax
    23c2:	e8 5d fa ff ff       	callq  1e24 <check_fail>
    23c7:	e8 94 ea ff ff       	callq  e60 <__stack_chk_fail@plt>

00000000000023cc <stable_launch>:
    23cc:	53                   	push   %rbx
    23cd:	48 89 3d f4 2f 20 00 	mov    %rdi,0x202ff4(%rip)        # 2053c8 <global_offset>
    23d4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    23da:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    23e0:	b9 32 01 00 00       	mov    $0x132,%ecx
    23e5:	ba 07 00 00 00       	mov    $0x7,%edx
    23ea:	be 00 00 10 00       	mov    $0x100000,%esi
    23ef:	bf 00 60 58 55       	mov    $0x55586000,%edi
    23f4:	e8 77 ea ff ff       	callq  e70 <mmap@plt>
    23f9:	48 89 c3             	mov    %rax,%rbx
    23fc:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
    2402:	75 43                	jne    2447 <stable_launch+0x7b>
    2404:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
    240b:	48 89 15 fe 3b 20 00 	mov    %rdx,0x203bfe(%rip)        # 206010 <stack_top>
    2412:	48 89 e0             	mov    %rsp,%rax
    2415:	48 89 d4             	mov    %rdx,%rsp
    2418:	48 89 c2             	mov    %rax,%rdx
    241b:	48 89 15 9e 2f 20 00 	mov    %rdx,0x202f9e(%rip)        # 2053c0 <global_save_stack>
    2422:	48 8b 3d 9f 2f 20 00 	mov    0x202f9f(%rip),%rdi        # 2053c8 <global_offset>
    2429:	e8 e9 fe ff ff       	callq  2317 <launch>
    242e:	48 8b 05 8b 2f 20 00 	mov    0x202f8b(%rip),%rax        # 2053c0 <global_save_stack>
    2435:	48 89 c4             	mov    %rax,%rsp
    2438:	be 00 00 10 00       	mov    $0x100000,%esi
    243d:	48 89 df             	mov    %rbx,%rdi
    2440:	e8 0b eb ff ff       	callq  f50 <munmap@plt>
    2445:	5b                   	pop    %rbx
    2446:	c3                   	retq   
    2447:	be 00 00 10 00       	mov    $0x100000,%esi
    244c:	48 89 c7             	mov    %rax,%rdi
    244f:	e8 fc ea ff ff       	callq  f50 <munmap@plt>
    2454:	b9 00 60 58 55       	mov    $0x55586000,%ecx
    2459:	48 8d 15 c0 14 00 00 	lea    0x14c0(%rip),%rdx        # 3920 <_IO_stdin_used+0x6a0>
    2460:	be 01 00 00 00       	mov    $0x1,%esi
    2465:	48 8b 3d 34 2f 20 00 	mov    0x202f34(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    246c:	b8 00 00 00 00       	mov    $0x0,%eax
    2471:	e8 5a eb ff ff       	callq  fd0 <__fprintf_chk@plt>
    2476:	bf 01 00 00 00       	mov    $0x1,%edi
    247b:	e8 30 eb ff ff       	callq  fb0 <exit@plt>

0000000000002480 <rio_readinitb>:
    2480:	89 37                	mov    %esi,(%rdi)
    2482:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    2489:	48 8d 47 10          	lea    0x10(%rdi),%rax
    248d:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2491:	c3                   	retq   

0000000000002492 <sigalrm_handler>:
    2492:	48 83 ec 08          	sub    $0x8,%rsp
    2496:	b9 00 00 00 00       	mov    $0x0,%ecx
    249b:	48 8d 15 be 14 00 00 	lea    0x14be(%rip),%rdx        # 3960 <trans_char+0x10>
    24a2:	be 01 00 00 00       	mov    $0x1,%esi
    24a7:	48 8b 3d f2 2e 20 00 	mov    0x202ef2(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    24ae:	b8 00 00 00 00       	mov    $0x0,%eax
    24b3:	e8 18 eb ff ff       	callq  fd0 <__fprintf_chk@plt>
    24b8:	bf 01 00 00 00       	mov    $0x1,%edi
    24bd:	e8 ee ea ff ff       	callq  fb0 <exit@plt>

00000000000024c2 <rio_writen>:
    24c2:	41 55                	push   %r13
    24c4:	41 54                	push   %r12
    24c6:	55                   	push   %rbp
    24c7:	53                   	push   %rbx
    24c8:	48 83 ec 08          	sub    $0x8,%rsp
    24cc:	41 89 fc             	mov    %edi,%r12d
    24cf:	48 89 f5             	mov    %rsi,%rbp
    24d2:	49 89 d5             	mov    %rdx,%r13
    24d5:	48 89 d3             	mov    %rdx,%rbx
    24d8:	eb 06                	jmp    24e0 <rio_writen+0x1e>
    24da:	48 29 c3             	sub    %rax,%rbx
    24dd:	48 01 c5             	add    %rax,%rbp
    24e0:	48 85 db             	test   %rbx,%rbx
    24e3:	74 24                	je     2509 <rio_writen+0x47>
    24e5:	48 89 da             	mov    %rbx,%rdx
    24e8:	48 89 ee             	mov    %rbp,%rsi
    24eb:	44 89 e7             	mov    %r12d,%edi
    24ee:	e8 5d e9 ff ff       	callq  e50 <write@plt>
    24f3:	48 85 c0             	test   %rax,%rax
    24f6:	7f e2                	jg     24da <rio_writen+0x18>
    24f8:	e8 03 e9 ff ff       	callq  e00 <__errno_location@plt>
    24fd:	83 38 04             	cmpl   $0x4,(%rax)
    2500:	75 15                	jne    2517 <rio_writen+0x55>
    2502:	b8 00 00 00 00       	mov    $0x0,%eax
    2507:	eb d1                	jmp    24da <rio_writen+0x18>
    2509:	4c 89 e8             	mov    %r13,%rax
    250c:	48 83 c4 08          	add    $0x8,%rsp
    2510:	5b                   	pop    %rbx
    2511:	5d                   	pop    %rbp
    2512:	41 5c                	pop    %r12
    2514:	41 5d                	pop    %r13
    2516:	c3                   	retq   
    2517:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    251e:	eb ec                	jmp    250c <rio_writen+0x4a>

0000000000002520 <rio_read>:
    2520:	41 55                	push   %r13
    2522:	41 54                	push   %r12
    2524:	55                   	push   %rbp
    2525:	53                   	push   %rbx
    2526:	48 83 ec 08          	sub    $0x8,%rsp
    252a:	48 89 fb             	mov    %rdi,%rbx
    252d:	49 89 f5             	mov    %rsi,%r13
    2530:	49 89 d4             	mov    %rdx,%r12
    2533:	eb 0a                	jmp    253f <rio_read+0x1f>
    2535:	e8 c6 e8 ff ff       	callq  e00 <__errno_location@plt>
    253a:	83 38 04             	cmpl   $0x4,(%rax)
    253d:	75 5c                	jne    259b <rio_read+0x7b>
    253f:	8b 6b 04             	mov    0x4(%rbx),%ebp
    2542:	85 ed                	test   %ebp,%ebp
    2544:	7f 24                	jg     256a <rio_read+0x4a>
    2546:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    254a:	8b 3b                	mov    (%rbx),%edi
    254c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2551:	48 89 ee             	mov    %rbp,%rsi
    2554:	e8 57 e9 ff ff       	callq  eb0 <read@plt>
    2559:	89 43 04             	mov    %eax,0x4(%rbx)
    255c:	85 c0                	test   %eax,%eax
    255e:	78 d5                	js     2535 <rio_read+0x15>
    2560:	85 c0                	test   %eax,%eax
    2562:	74 40                	je     25a4 <rio_read+0x84>
    2564:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2568:	eb d5                	jmp    253f <rio_read+0x1f>
    256a:	89 e8                	mov    %ebp,%eax
    256c:	4c 39 e0             	cmp    %r12,%rax
    256f:	72 03                	jb     2574 <rio_read+0x54>
    2571:	44 89 e5             	mov    %r12d,%ebp
    2574:	4c 63 e5             	movslq %ebp,%r12
    2577:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    257b:	4c 89 e2             	mov    %r12,%rdx
    257e:	4c 89 ef             	mov    %r13,%rdi
    2581:	e8 7a e9 ff ff       	callq  f00 <memcpy@plt>
    2586:	4c 01 63 08          	add    %r12,0x8(%rbx)
    258a:	29 6b 04             	sub    %ebp,0x4(%rbx)
    258d:	4c 89 e0             	mov    %r12,%rax
    2590:	48 83 c4 08          	add    $0x8,%rsp
    2594:	5b                   	pop    %rbx
    2595:	5d                   	pop    %rbp
    2596:	41 5c                	pop    %r12
    2598:	41 5d                	pop    %r13
    259a:	c3                   	retq   
    259b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    25a2:	eb ec                	jmp    2590 <rio_read+0x70>
    25a4:	b8 00 00 00 00       	mov    $0x0,%eax
    25a9:	eb e5                	jmp    2590 <rio_read+0x70>

00000000000025ab <rio_readlineb>:
    25ab:	41 55                	push   %r13
    25ad:	41 54                	push   %r12
    25af:	55                   	push   %rbp
    25b0:	53                   	push   %rbx
    25b1:	48 83 ec 18          	sub    $0x18,%rsp
    25b5:	49 89 fd             	mov    %rdi,%r13
    25b8:	48 89 f5             	mov    %rsi,%rbp
    25bb:	49 89 d4             	mov    %rdx,%r12
    25be:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25c5:	00 00 
    25c7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    25cc:	31 c0                	xor    %eax,%eax
    25ce:	bb 01 00 00 00       	mov    $0x1,%ebx
    25d3:	4c 39 e3             	cmp    %r12,%rbx
    25d6:	73 47                	jae    261f <rio_readlineb+0x74>
    25d8:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    25dd:	ba 01 00 00 00       	mov    $0x1,%edx
    25e2:	4c 89 ef             	mov    %r13,%rdi
    25e5:	e8 36 ff ff ff       	callq  2520 <rio_read>
    25ea:	83 f8 01             	cmp    $0x1,%eax
    25ed:	75 1c                	jne    260b <rio_readlineb+0x60>
    25ef:	48 8d 45 01          	lea    0x1(%rbp),%rax
    25f3:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    25f8:	88 55 00             	mov    %dl,0x0(%rbp)
    25fb:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    2600:	74 1a                	je     261c <rio_readlineb+0x71>
    2602:	48 83 c3 01          	add    $0x1,%rbx
    2606:	48 89 c5             	mov    %rax,%rbp
    2609:	eb c8                	jmp    25d3 <rio_readlineb+0x28>
    260b:	85 c0                	test   %eax,%eax
    260d:	75 32                	jne    2641 <rio_readlineb+0x96>
    260f:	48 83 fb 01          	cmp    $0x1,%rbx
    2613:	75 0a                	jne    261f <rio_readlineb+0x74>
    2615:	b8 00 00 00 00       	mov    $0x0,%eax
    261a:	eb 0a                	jmp    2626 <rio_readlineb+0x7b>
    261c:	48 89 c5             	mov    %rax,%rbp
    261f:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2623:	48 89 d8             	mov    %rbx,%rax
    2626:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    262b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2632:	00 00 
    2634:	75 14                	jne    264a <rio_readlineb+0x9f>
    2636:	48 83 c4 18          	add    $0x18,%rsp
    263a:	5b                   	pop    %rbx
    263b:	5d                   	pop    %rbp
    263c:	41 5c                	pop    %r12
    263e:	41 5d                	pop    %r13
    2640:	c3                   	retq   
    2641:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2648:	eb dc                	jmp    2626 <rio_readlineb+0x7b>
    264a:	e8 11 e8 ff ff       	callq  e60 <__stack_chk_fail@plt>

000000000000264f <urlencode>:
    264f:	41 54                	push   %r12
    2651:	55                   	push   %rbp
    2652:	53                   	push   %rbx
    2653:	48 83 ec 10          	sub    $0x10,%rsp
    2657:	48 89 fb             	mov    %rdi,%rbx
    265a:	48 89 f5             	mov    %rsi,%rbp
    265d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2664:	00 00 
    2666:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    266b:	31 c0                	xor    %eax,%eax
    266d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2674:	f2 ae                	repnz scas %es:(%rdi),%al
    2676:	48 89 ce             	mov    %rcx,%rsi
    2679:	48 f7 d6             	not    %rsi
    267c:	8d 46 ff             	lea    -0x1(%rsi),%eax
    267f:	eb 0f                	jmp    2690 <urlencode+0x41>
    2681:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2685:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2689:	48 83 c3 01          	add    $0x1,%rbx
    268d:	44 89 e0             	mov    %r12d,%eax
    2690:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2694:	85 c0                	test   %eax,%eax
    2696:	0f 84 a8 00 00 00    	je     2744 <urlencode+0xf5>
    269c:	44 0f b6 03          	movzbl (%rbx),%r8d
    26a0:	41 80 f8 2a          	cmp    $0x2a,%r8b
    26a4:	0f 94 c2             	sete   %dl
    26a7:	41 80 f8 2d          	cmp    $0x2d,%r8b
    26ab:	0f 94 c0             	sete   %al
    26ae:	08 c2                	or     %al,%dl
    26b0:	75 cf                	jne    2681 <urlencode+0x32>
    26b2:	41 80 f8 2e          	cmp    $0x2e,%r8b
    26b6:	74 c9                	je     2681 <urlencode+0x32>
    26b8:	41 80 f8 5f          	cmp    $0x5f,%r8b
    26bc:	74 c3                	je     2681 <urlencode+0x32>
    26be:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    26c2:	3c 09                	cmp    $0x9,%al
    26c4:	76 bb                	jbe    2681 <urlencode+0x32>
    26c6:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    26ca:	3c 19                	cmp    $0x19,%al
    26cc:	76 b3                	jbe    2681 <urlencode+0x32>
    26ce:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    26d2:	3c 19                	cmp    $0x19,%al
    26d4:	76 ab                	jbe    2681 <urlencode+0x32>
    26d6:	41 80 f8 20          	cmp    $0x20,%r8b
    26da:	74 56                	je     2732 <urlencode+0xe3>
    26dc:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    26e0:	3c 5f                	cmp    $0x5f,%al
    26e2:	0f 96 c2             	setbe  %dl
    26e5:	41 80 f8 09          	cmp    $0x9,%r8b
    26e9:	0f 94 c0             	sete   %al
    26ec:	08 c2                	or     %al,%dl
    26ee:	74 4f                	je     273f <urlencode+0xf0>
    26f0:	48 89 e7             	mov    %rsp,%rdi
    26f3:	45 0f b6 c0          	movzbl %r8b,%r8d
    26f7:	48 8d 0d fa 12 00 00 	lea    0x12fa(%rip),%rcx        # 39f8 <trans_char+0xa8>
    26fe:	ba 08 00 00 00       	mov    $0x8,%edx
    2703:	be 01 00 00 00       	mov    $0x1,%esi
    2708:	b8 00 00 00 00       	mov    $0x0,%eax
    270d:	e8 ce e8 ff ff       	callq  fe0 <__sprintf_chk@plt>
    2712:	0f b6 04 24          	movzbl (%rsp),%eax
    2716:	88 45 00             	mov    %al,0x0(%rbp)
    2719:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    271e:	88 45 01             	mov    %al,0x1(%rbp)
    2721:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2726:	88 45 02             	mov    %al,0x2(%rbp)
    2729:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    272d:	e9 57 ff ff ff       	jmpq   2689 <urlencode+0x3a>
    2732:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2736:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    273a:	e9 4a ff ff ff       	jmpq   2689 <urlencode+0x3a>
    273f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2744:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    2749:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2750:	00 00 
    2752:	75 09                	jne    275d <urlencode+0x10e>
    2754:	48 83 c4 10          	add    $0x10,%rsp
    2758:	5b                   	pop    %rbx
    2759:	5d                   	pop    %rbp
    275a:	41 5c                	pop    %r12
    275c:	c3                   	retq   
    275d:	e8 fe e6 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002762 <submitr>:
    2762:	41 57                	push   %r15
    2764:	41 56                	push   %r14
    2766:	41 55                	push   %r13
    2768:	41 54                	push   %r12
    276a:	55                   	push   %rbp
    276b:	53                   	push   %rbx
    276c:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    2773:	49 89 fd             	mov    %rdi,%r13
    2776:	89 74 24 14          	mov    %esi,0x14(%rsp)
    277a:	49 89 d7             	mov    %rdx,%r15
    277d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    2782:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2787:	4d 89 ce             	mov    %r9,%r14
    278a:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    2791:	00 
    2792:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2799:	00 00 
    279b:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    27a2:	00 
    27a3:	31 c0                	xor    %eax,%eax
    27a5:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    27ac:	00 
    27ad:	ba 00 00 00 00       	mov    $0x0,%edx
    27b2:	be 01 00 00 00       	mov    $0x1,%esi
    27b7:	bf 02 00 00 00       	mov    $0x2,%edi
    27bc:	e8 2f e8 ff ff       	callq  ff0 <socket@plt>
    27c1:	85 c0                	test   %eax,%eax
    27c3:	0f 88 a9 02 00 00    	js     2a72 <submitr+0x310>
    27c9:	89 c3                	mov    %eax,%ebx
    27cb:	4c 89 ef             	mov    %r13,%rdi
    27ce:	e8 fd e6 ff ff       	callq  ed0 <gethostbyname@plt>
    27d3:	48 85 c0             	test   %rax,%rax
    27d6:	0f 84 e2 02 00 00    	je     2abe <submitr+0x35c>
    27dc:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    27e1:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    27e8:	00 00 
    27ea:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    27f1:	00 
    27f2:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    27f9:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2800:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2804:	48 8b 40 18          	mov    0x18(%rax),%rax
    2808:	48 8b 30             	mov    (%rax),%rsi
    280b:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2810:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2815:	e8 c6 e6 ff ff       	callq  ee0 <__memmove_chk@plt>
    281a:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
    281f:	66 c1 c8 08          	ror    $0x8,%ax
    2823:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    2828:	ba 10 00 00 00       	mov    $0x10,%edx
    282d:	4c 89 e6             	mov    %r12,%rsi
    2830:	89 df                	mov    %ebx,%edi
    2832:	e8 89 e7 ff ff       	callq  fc0 <connect@plt>
    2837:	85 c0                	test   %eax,%eax
    2839:	0f 88 e7 02 00 00    	js     2b26 <submitr+0x3c4>
    283f:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2846:	b8 00 00 00 00       	mov    $0x0,%eax
    284b:	48 89 f1             	mov    %rsi,%rcx
    284e:	4c 89 f7             	mov    %r14,%rdi
    2851:	f2 ae                	repnz scas %es:(%rdi),%al
    2853:	48 89 ca             	mov    %rcx,%rdx
    2856:	48 f7 d2             	not    %rdx
    2859:	48 89 f1             	mov    %rsi,%rcx
    285c:	4c 89 ff             	mov    %r15,%rdi
    285f:	f2 ae                	repnz scas %es:(%rdi),%al
    2861:	48 f7 d1             	not    %rcx
    2864:	49 89 c8             	mov    %rcx,%r8
    2867:	48 89 f1             	mov    %rsi,%rcx
    286a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    286f:	f2 ae                	repnz scas %es:(%rdi),%al
    2871:	48 f7 d1             	not    %rcx
    2874:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    2879:	48 89 f1             	mov    %rsi,%rcx
    287c:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2881:	f2 ae                	repnz scas %es:(%rdi),%al
    2883:	48 89 c8             	mov    %rcx,%rax
    2886:	48 f7 d0             	not    %rax
    2889:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    288e:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    2893:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    289a:	00 
    289b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    28a1:	0f 87 d9 02 00 00    	ja     2b80 <submitr+0x41e>
    28a7:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    28ae:	00 
    28af:	b9 00 04 00 00       	mov    $0x400,%ecx
    28b4:	b8 00 00 00 00       	mov    $0x0,%eax
    28b9:	48 89 f7             	mov    %rsi,%rdi
    28bc:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    28bf:	4c 89 f7             	mov    %r14,%rdi
    28c2:	e8 88 fd ff ff       	callq  264f <urlencode>
    28c7:	85 c0                	test   %eax,%eax
    28c9:	0f 88 24 03 00 00    	js     2bf3 <submitr+0x491>
    28cf:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    28d6:	00 
    28d7:	41 55                	push   %r13
    28d9:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    28e0:	00 
    28e1:	50                   	push   %rax
    28e2:	4d 89 f9             	mov    %r15,%r9
    28e5:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    28ea:	48 8d 0d 97 10 00 00 	lea    0x1097(%rip),%rcx        # 3988 <trans_char+0x38>
    28f1:	ba 00 20 00 00       	mov    $0x2000,%edx
    28f6:	be 01 00 00 00       	mov    $0x1,%esi
    28fb:	4c 89 e7             	mov    %r12,%rdi
    28fe:	b8 00 00 00 00       	mov    $0x0,%eax
    2903:	e8 d8 e6 ff ff       	callq  fe0 <__sprintf_chk@plt>
    2908:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    290f:	b8 00 00 00 00       	mov    $0x0,%eax
    2914:	4c 89 e7             	mov    %r12,%rdi
    2917:	f2 ae                	repnz scas %es:(%rdi),%al
    2919:	48 89 ca             	mov    %rcx,%rdx
    291c:	48 f7 d2             	not    %rdx
    291f:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    2923:	4c 89 e6             	mov    %r12,%rsi
    2926:	89 df                	mov    %ebx,%edi
    2928:	e8 95 fb ff ff       	callq  24c2 <rio_writen>
    292d:	48 83 c4 10          	add    $0x10,%rsp
    2931:	48 85 c0             	test   %rax,%rax
    2934:	0f 88 44 03 00 00    	js     2c7e <submitr+0x51c>
    293a:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    293f:	89 de                	mov    %ebx,%esi
    2941:	4c 89 e7             	mov    %r12,%rdi
    2944:	e8 37 fb ff ff       	callq  2480 <rio_readinitb>
    2949:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2950:	00 
    2951:	ba 00 20 00 00       	mov    $0x2000,%edx
    2956:	4c 89 e7             	mov    %r12,%rdi
    2959:	e8 4d fc ff ff       	callq  25ab <rio_readlineb>
    295e:	48 85 c0             	test   %rax,%rax
    2961:	0f 8e 86 03 00 00    	jle    2ced <submitr+0x58b>
    2967:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    296c:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2973:	00 
    2974:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    297b:	00 
    297c:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2983:	00 
    2984:	48 8d 35 74 10 00 00 	lea    0x1074(%rip),%rsi        # 39ff <trans_char+0xaf>
    298b:	b8 00 00 00 00       	mov    $0x0,%eax
    2990:	e8 ab e5 ff ff       	callq  f40 <__isoc99_sscanf@plt>
    2995:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    299c:	00 
    299d:	b9 03 00 00 00       	mov    $0x3,%ecx
    29a2:	48 8d 3d 6d 10 00 00 	lea    0x106d(%rip),%rdi        # 3a16 <trans_char+0xc6>
    29a9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    29ab:	0f 97 c0             	seta   %al
    29ae:	1c 00                	sbb    $0x0,%al
    29b0:	84 c0                	test   %al,%al
    29b2:	0f 84 b3 03 00 00    	je     2d6b <submitr+0x609>
    29b8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    29bf:	00 
    29c0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    29c5:	ba 00 20 00 00       	mov    $0x2000,%edx
    29ca:	e8 dc fb ff ff       	callq  25ab <rio_readlineb>
    29cf:	48 85 c0             	test   %rax,%rax
    29d2:	7f c1                	jg     2995 <submitr+0x233>
    29d4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    29db:	3a 20 43 
    29de:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    29e5:	20 75 6e 
    29e8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29ec:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29f7:	74 6f 20 
    29fa:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2a01:	68 65 61 
    2a04:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a08:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a0c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2a13:	66 72 6f 
    2a16:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
    2a1d:	20 72 65 
    2a20:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a24:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a28:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
    2a2f:	73 65 72 
    2a32:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2a36:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
    2a3d:	89 df                	mov    %ebx,%edi
    2a3f:	e8 5c e4 ff ff       	callq  ea0 <close@plt>
    2a44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a49:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2a50:	00 
    2a51:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2a58:	00 00 
    2a5a:	0f 85 7e 04 00 00    	jne    2ede <submitr+0x77c>
    2a60:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2a67:	5b                   	pop    %rbx
    2a68:	5d                   	pop    %rbp
    2a69:	41 5c                	pop    %r12
    2a6b:	41 5d                	pop    %r13
    2a6d:	41 5e                	pop    %r14
    2a6f:	41 5f                	pop    %r15
    2a71:	c3                   	retq   
    2a72:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a79:	3a 20 43 
    2a7c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a83:	20 75 6e 
    2a86:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a8a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a8e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a95:	74 6f 20 
    2a98:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2a9f:	65 20 73 
    2aa2:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2aa6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2aaa:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2ab1:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2ab7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2abc:	eb 8b                	jmp    2a49 <submitr+0x2e7>
    2abe:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2ac5:	3a 20 44 
    2ac8:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2acf:	20 75 6e 
    2ad2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ad6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ada:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ae1:	74 6f 20 
    2ae4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2aeb:	76 65 20 
    2aee:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2af2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2af6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2afd:	72 20 61 
    2b00:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b04:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2b0b:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2b11:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2b15:	89 df                	mov    %ebx,%edi
    2b17:	e8 84 e3 ff ff       	callq  ea0 <close@plt>
    2b1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b21:	e9 23 ff ff ff       	jmpq   2a49 <submitr+0x2e7>
    2b26:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2b2d:	3a 20 55 
    2b30:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2b37:	20 74 6f 
    2b3a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b3e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b42:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2b49:	65 63 74 
    2b4c:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2b53:	68 65 20 
    2b56:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b5a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b5e:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
    2b65:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
    2b6b:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
    2b6f:	89 df                	mov    %ebx,%edi
    2b71:	e8 2a e3 ff ff       	callq  ea0 <close@plt>
    2b76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b7b:	e9 c9 fe ff ff       	jmpq   2a49 <submitr+0x2e7>
    2b80:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2b87:	3a 20 52 
    2b8a:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2b91:	20 73 74 
    2b94:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b98:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b9c:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2ba3:	74 6f 6f 
    2ba6:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2bad:	65 2e 20 
    2bb0:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bb4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bb8:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2bbf:	61 73 65 
    2bc2:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2bc9:	49 54 52 
    2bcc:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2bd0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2bd4:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2bdb:	55 46 00 
    2bde:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2be2:	89 df                	mov    %ebx,%edi
    2be4:	e8 b7 e2 ff ff       	callq  ea0 <close@plt>
    2be9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bee:	e9 56 fe ff ff       	jmpq   2a49 <submitr+0x2e7>
    2bf3:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2bfa:	3a 20 52 
    2bfd:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2c04:	20 73 74 
    2c07:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c0b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c0f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2c16:	63 6f 6e 
    2c19:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2c20:	20 61 6e 
    2c23:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c27:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c2b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2c32:	67 61 6c 
    2c35:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2c3c:	6e 70 72 
    2c3f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c43:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c47:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2c4e:	6c 65 20 
    2c51:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2c58:	63 74 65 
    2c5b:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c5f:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2c63:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2c69:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2c6d:	89 df                	mov    %ebx,%edi
    2c6f:	e8 2c e2 ff ff       	callq  ea0 <close@plt>
    2c74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c79:	e9 cb fd ff ff       	jmpq   2a49 <submitr+0x2e7>
    2c7e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c85:	3a 20 43 
    2c88:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c8f:	20 75 6e 
    2c92:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c96:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c9a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ca1:	74 6f 20 
    2ca4:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2cab:	20 74 6f 
    2cae:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2cb2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2cb6:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
    2cbd:	72 65 73 
    2cc0:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
    2cc7:	65 72 76 
    2cca:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2cce:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2cd2:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
    2cd8:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
    2cdc:	89 df                	mov    %ebx,%edi
    2cde:	e8 bd e1 ff ff       	callq  ea0 <close@plt>
    2ce3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ce8:	e9 5c fd ff ff       	jmpq   2a49 <submitr+0x2e7>
    2ced:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2cf4:	3a 20 43 
    2cf7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2cfe:	20 75 6e 
    2d01:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d05:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d09:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d10:	74 6f 20 
    2d13:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2d1a:	66 69 72 
    2d1d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d21:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d25:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2d2c:	61 64 65 
    2d2f:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
    2d36:	6d 20 72 
    2d39:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d3d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d41:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
    2d48:	20 73 65 
    2d4b:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2d4f:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
    2d56:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
    2d5a:	89 df                	mov    %ebx,%edi
    2d5c:	e8 3f e1 ff ff       	callq  ea0 <close@plt>
    2d61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d66:	e9 de fc ff ff       	jmpq   2a49 <submitr+0x2e7>
    2d6b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2d72:	00 
    2d73:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2d78:	ba 00 20 00 00       	mov    $0x2000,%edx
    2d7d:	e8 29 f8 ff ff       	callq  25ab <rio_readlineb>
    2d82:	48 85 c0             	test   %rax,%rax
    2d85:	0f 8e 96 00 00 00    	jle    2e21 <submitr+0x6bf>
    2d8b:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2d90:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2d97:	0f 85 08 01 00 00    	jne    2ea5 <submitr+0x743>
    2d9d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2da4:	00 
    2da5:	48 89 ef             	mov    %rbp,%rdi
    2da8:	e8 83 e0 ff ff       	callq  e30 <strcpy@plt>
    2dad:	89 df                	mov    %ebx,%edi
    2daf:	e8 ec e0 ff ff       	callq  ea0 <close@plt>
    2db4:	b9 04 00 00 00       	mov    $0x4,%ecx
    2db9:	48 8d 3d 50 0c 00 00 	lea    0xc50(%rip),%rdi        # 3a10 <trans_char+0xc0>
    2dc0:	48 89 ee             	mov    %rbp,%rsi
    2dc3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2dc5:	0f 97 c0             	seta   %al
    2dc8:	1c 00                	sbb    $0x0,%al
    2dca:	0f be c0             	movsbl %al,%eax
    2dcd:	85 c0                	test   %eax,%eax
    2dcf:	0f 84 74 fc ff ff    	je     2a49 <submitr+0x2e7>
    2dd5:	b9 05 00 00 00       	mov    $0x5,%ecx
    2dda:	48 8d 3d 33 0c 00 00 	lea    0xc33(%rip),%rdi        # 3a14 <trans_char+0xc4>
    2de1:	48 89 ee             	mov    %rbp,%rsi
    2de4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2de6:	0f 97 c0             	seta   %al
    2de9:	1c 00                	sbb    $0x0,%al
    2deb:	0f be c0             	movsbl %al,%eax
    2dee:	85 c0                	test   %eax,%eax
    2df0:	0f 84 53 fc ff ff    	je     2a49 <submitr+0x2e7>
    2df6:	b9 03 00 00 00       	mov    $0x3,%ecx
    2dfb:	48 8d 3d 17 0c 00 00 	lea    0xc17(%rip),%rdi        # 3a19 <trans_char+0xc9>
    2e02:	48 89 ee             	mov    %rbp,%rsi
    2e05:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2e07:	0f 97 c0             	seta   %al
    2e0a:	1c 00                	sbb    $0x0,%al
    2e0c:	0f be c0             	movsbl %al,%eax
    2e0f:	85 c0                	test   %eax,%eax
    2e11:	0f 84 32 fc ff ff    	je     2a49 <submitr+0x2e7>
    2e17:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e1c:	e9 28 fc ff ff       	jmpq   2a49 <submitr+0x2e7>
    2e21:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2e28:	3a 20 43 
    2e2b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2e32:	20 75 6e 
    2e35:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2e39:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2e3d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2e44:	74 6f 20 
    2e47:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2e4e:	73 74 61 
    2e51:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2e55:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2e59:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2e60:	65 73 73 
    2e63:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2e6a:	72 6f 6d 
    2e6d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2e71:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2e75:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
    2e7c:	6c 74 20 
    2e7f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2e83:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
    2e8a:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
    2e90:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
    2e94:	89 df                	mov    %ebx,%edi
    2e96:	e8 05 e0 ff ff       	callq  ea0 <close@plt>
    2e9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ea0:	e9 a4 fb ff ff       	jmpq   2a49 <submitr+0x2e7>
    2ea5:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2eac:	00 
    2ead:	48 8d 0d 14 0b 00 00 	lea    0xb14(%rip),%rcx        # 39c8 <trans_char+0x78>
    2eb4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2ebb:	be 01 00 00 00       	mov    $0x1,%esi
    2ec0:	48 89 ef             	mov    %rbp,%rdi
    2ec3:	b8 00 00 00 00       	mov    $0x0,%eax
    2ec8:	e8 13 e1 ff ff       	callq  fe0 <__sprintf_chk@plt>
    2ecd:	89 df                	mov    %ebx,%edi
    2ecf:	e8 cc df ff ff       	callq  ea0 <close@plt>
    2ed4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ed9:	e9 6b fb ff ff       	jmpq   2a49 <submitr+0x2e7>
    2ede:	e8 7d df ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002ee3 <init_timeout>:
    2ee3:	85 ff                	test   %edi,%edi
    2ee5:	74 28                	je     2f0f <init_timeout+0x2c>
    2ee7:	53                   	push   %rbx
    2ee8:	89 fb                	mov    %edi,%ebx
    2eea:	85 ff                	test   %edi,%edi
    2eec:	78 1a                	js     2f08 <init_timeout+0x25>
    2eee:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 2492 <sigalrm_handler>
    2ef5:	bf 0e 00 00 00       	mov    $0xe,%edi
    2efa:	e8 c1 df ff ff       	callq  ec0 <signal@plt>
    2eff:	89 df                	mov    %ebx,%edi
    2f01:	e8 8a df ff ff       	callq  e90 <alarm@plt>
    2f06:	5b                   	pop    %rbx
    2f07:	c3                   	retq   
    2f08:	bb 00 00 00 00       	mov    $0x0,%ebx
    2f0d:	eb df                	jmp    2eee <init_timeout+0xb>
    2f0f:	f3 c3                	repz retq 

0000000000002f11 <init_driver>:
    2f11:	41 54                	push   %r12
    2f13:	55                   	push   %rbp
    2f14:	53                   	push   %rbx
    2f15:	48 83 ec 20          	sub    $0x20,%rsp
    2f19:	49 89 fc             	mov    %rdi,%r12
    2f1c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f23:	00 00 
    2f25:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2f2a:	31 c0                	xor    %eax,%eax
    2f2c:	be 01 00 00 00       	mov    $0x1,%esi
    2f31:	bf 0d 00 00 00       	mov    $0xd,%edi
    2f36:	e8 85 df ff ff       	callq  ec0 <signal@plt>
    2f3b:	be 01 00 00 00       	mov    $0x1,%esi
    2f40:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2f45:	e8 76 df ff ff       	callq  ec0 <signal@plt>
    2f4a:	be 01 00 00 00       	mov    $0x1,%esi
    2f4f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2f54:	e8 67 df ff ff       	callq  ec0 <signal@plt>
    2f59:	ba 00 00 00 00       	mov    $0x0,%edx
    2f5e:	be 01 00 00 00       	mov    $0x1,%esi
    2f63:	bf 02 00 00 00       	mov    $0x2,%edi
    2f68:	e8 83 e0 ff ff       	callq  ff0 <socket@plt>
    2f6d:	85 c0                	test   %eax,%eax
    2f6f:	0f 88 a3 00 00 00    	js     3018 <init_driver+0x107>
    2f75:	89 c3                	mov    %eax,%ebx
    2f77:	48 8d 3d 9e 0a 00 00 	lea    0xa9e(%rip),%rdi        # 3a1c <trans_char+0xcc>
    2f7e:	e8 4d df ff ff       	callq  ed0 <gethostbyname@plt>
    2f83:	48 85 c0             	test   %rax,%rax
    2f86:	0f 84 df 00 00 00    	je     306b <init_driver+0x15a>
    2f8c:	48 89 e5             	mov    %rsp,%rbp
    2f8f:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2f96:	00 00 
    2f98:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2f9f:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2fa5:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2fab:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2faf:	48 8b 40 18          	mov    0x18(%rax),%rax
    2fb3:	48 8b 30             	mov    (%rax),%rsi
    2fb6:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2fba:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2fbf:	e8 1c df ff ff       	callq  ee0 <__memmove_chk@plt>
    2fc4:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
    2fcb:	ba 10 00 00 00       	mov    $0x10,%edx
    2fd0:	48 89 ee             	mov    %rbp,%rsi
    2fd3:	89 df                	mov    %ebx,%edi
    2fd5:	e8 e6 df ff ff       	callq  fc0 <connect@plt>
    2fda:	85 c0                	test   %eax,%eax
    2fdc:	0f 88 fb 00 00 00    	js     30dd <init_driver+0x1cc>
    2fe2:	89 df                	mov    %ebx,%edi
    2fe4:	e8 b7 de ff ff       	callq  ea0 <close@plt>
    2fe9:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2ff0:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2ff6:	b8 00 00 00 00       	mov    $0x0,%eax
    2ffb:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    3000:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3007:	00 00 
    3009:	0f 85 28 01 00 00    	jne    3137 <init_driver+0x226>
    300f:	48 83 c4 20          	add    $0x20,%rsp
    3013:	5b                   	pop    %rbx
    3014:	5d                   	pop    %rbp
    3015:	41 5c                	pop    %r12
    3017:	c3                   	retq   
    3018:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    301f:	3a 20 43 
    3022:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3029:	20 75 6e 
    302c:	49 89 04 24          	mov    %rax,(%r12)
    3030:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    3035:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    303c:	74 6f 20 
    303f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3046:	65 20 73 
    3049:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    304e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    3053:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    305a:	6b 65 
    305c:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    3063:	00 
    3064:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3069:	eb 90                	jmp    2ffb <init_driver+0xea>
    306b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3072:	3a 20 44 
    3075:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    307c:	20 75 6e 
    307f:	49 89 04 24          	mov    %rax,(%r12)
    3083:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    3088:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    308f:	74 6f 20 
    3092:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3099:	76 65 20 
    309c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    30a1:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    30a6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    30ad:	72 20 61 
    30b0:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    30b5:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    30bc:	72 65 
    30be:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    30c5:	73 
    30c6:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    30cc:	89 df                	mov    %ebx,%edi
    30ce:	e8 cd dd ff ff       	callq  ea0 <close@plt>
    30d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    30d8:	e9 1e ff ff ff       	jmpq   2ffb <init_driver+0xea>
    30dd:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    30e4:	3a 20 55 
    30e7:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    30ee:	20 74 6f 
    30f1:	49 89 04 24          	mov    %rax,(%r12)
    30f5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    30fa:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3101:	65 63 74 
    3104:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    310b:	65 72 76 
    310e:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    3113:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    3118:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    311f:	72 
    3120:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    3126:	89 df                	mov    %ebx,%edi
    3128:	e8 73 dd ff ff       	callq  ea0 <close@plt>
    312d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3132:	e9 c4 fe ff ff       	jmpq   2ffb <init_driver+0xea>
    3137:	e8 24 dd ff ff       	callq  e60 <__stack_chk_fail@plt>

000000000000313c <driver_post>:
    313c:	53                   	push   %rbx
    313d:	4c 89 cb             	mov    %r9,%rbx
    3140:	45 85 c0             	test   %r8d,%r8d
    3143:	75 18                	jne    315d <driver_post+0x21>
    3145:	48 85 ff             	test   %rdi,%rdi
    3148:	74 05                	je     314f <driver_post+0x13>
    314a:	80 3f 00             	cmpb   $0x0,(%rdi)
    314d:	75 37                	jne    3186 <driver_post+0x4a>
    314f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3154:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3158:	44 89 c0             	mov    %r8d,%eax
    315b:	5b                   	pop    %rbx
    315c:	c3                   	retq   
    315d:	48 89 ca             	mov    %rcx,%rdx
    3160:	48 8d 35 c5 08 00 00 	lea    0x8c5(%rip),%rsi        # 3a2c <trans_char+0xdc>
    3167:	bf 01 00 00 00       	mov    $0x1,%edi
    316c:	b8 00 00 00 00       	mov    $0x0,%eax
    3171:	e8 ea dd ff ff       	callq  f60 <__printf_chk@plt>
    3176:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    317b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    317f:	b8 00 00 00 00       	mov    $0x0,%eax
    3184:	eb d5                	jmp    315b <driver_post+0x1f>
    3186:	48 83 ec 08          	sub    $0x8,%rsp
    318a:	41 51                	push   %r9
    318c:	49 89 c9             	mov    %rcx,%r9
    318f:	49 89 d0             	mov    %rdx,%r8
    3192:	48 89 f9             	mov    %rdi,%rcx
    3195:	48 89 f2             	mov    %rsi,%rdx
    3198:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
    319d:	48 8d 3d 78 08 00 00 	lea    0x878(%rip),%rdi        # 3a1c <trans_char+0xcc>
    31a4:	e8 b9 f5 ff ff       	callq  2762 <submitr>
    31a9:	48 83 c4 10          	add    $0x10,%rsp
    31ad:	eb ac                	jmp    315b <driver_post+0x1f>

00000000000031af <check>:
    31af:	89 f8                	mov    %edi,%eax
    31b1:	c1 e8 1c             	shr    $0x1c,%eax
    31b4:	85 c0                	test   %eax,%eax
    31b6:	74 1d                	je     31d5 <check+0x26>
    31b8:	b9 00 00 00 00       	mov    $0x0,%ecx
    31bd:	83 f9 1f             	cmp    $0x1f,%ecx
    31c0:	7f 0d                	jg     31cf <check+0x20>
    31c2:	89 f8                	mov    %edi,%eax
    31c4:	d3 e8                	shr    %cl,%eax
    31c6:	3c 0a                	cmp    $0xa,%al
    31c8:	74 11                	je     31db <check+0x2c>
    31ca:	83 c1 08             	add    $0x8,%ecx
    31cd:	eb ee                	jmp    31bd <check+0xe>
    31cf:	b8 01 00 00 00       	mov    $0x1,%eax
    31d4:	c3                   	retq   
    31d5:	b8 00 00 00 00       	mov    $0x0,%eax
    31da:	c3                   	retq   
    31db:	b8 00 00 00 00       	mov    $0x0,%eax
    31e0:	c3                   	retq   

00000000000031e1 <gencookie>:
    31e1:	53                   	push   %rbx
    31e2:	83 c7 01             	add    $0x1,%edi
    31e5:	e8 26 dc ff ff       	callq  e10 <srandom@plt>
    31ea:	e8 31 dd ff ff       	callq  f20 <random@plt>
    31ef:	89 c3                	mov    %eax,%ebx
    31f1:	89 c7                	mov    %eax,%edi
    31f3:	e8 b7 ff ff ff       	callq  31af <check>
    31f8:	85 c0                	test   %eax,%eax
    31fa:	74 ee                	je     31ea <gencookie+0x9>
    31fc:	89 d8                	mov    %ebx,%eax
    31fe:	5b                   	pop    %rbx
    31ff:	c3                   	retq   

0000000000003200 <__libc_csu_init>:
    3200:	41 57                	push   %r15
    3202:	41 56                	push   %r14
    3204:	49 89 d7             	mov    %rdx,%r15
    3207:	41 55                	push   %r13
    3209:	41 54                	push   %r12
    320b:	4c 8d 25 a6 1a 20 00 	lea    0x201aa6(%rip),%r12        # 204cb8 <__frame_dummy_init_array_entry>
    3212:	55                   	push   %rbp
    3213:	48 8d 2d a6 1a 20 00 	lea    0x201aa6(%rip),%rbp        # 204cc0 <__init_array_end>
    321a:	53                   	push   %rbx
    321b:	41 89 fd             	mov    %edi,%r13d
    321e:	49 89 f6             	mov    %rsi,%r14
    3221:	4c 29 e5             	sub    %r12,%rbp
    3224:	48 83 ec 08          	sub    $0x8,%rsp
    3228:	48 c1 fd 03          	sar    $0x3,%rbp
    322c:	e8 97 db ff ff       	callq  dc8 <_init>
    3231:	48 85 ed             	test   %rbp,%rbp
    3234:	74 20                	je     3256 <__libc_csu_init+0x56>
    3236:	31 db                	xor    %ebx,%ebx
    3238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    323f:	00 
    3240:	4c 89 fa             	mov    %r15,%rdx
    3243:	4c 89 f6             	mov    %r14,%rsi
    3246:	44 89 ef             	mov    %r13d,%edi
    3249:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    324d:	48 83 c3 01          	add    $0x1,%rbx
    3251:	48 39 dd             	cmp    %rbx,%rbp
    3254:	75 ea                	jne    3240 <__libc_csu_init+0x40>
    3256:	48 83 c4 08          	add    $0x8,%rsp
    325a:	5b                   	pop    %rbx
    325b:	5d                   	pop    %rbp
    325c:	41 5c                	pop    %r12
    325e:	41 5d                	pop    %r13
    3260:	41 5e                	pop    %r14
    3262:	41 5f                	pop    %r15
    3264:	c3                   	retq   
    3265:	90                   	nop
    3266:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    326d:	00 00 00 

0000000000003270 <__libc_csu_fini>:
    3270:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000003274 <_fini>:
    3274:	48 83 ec 08          	sub    $0x8,%rsp
    3278:	48 83 c4 08          	add    $0x8,%rsp
    327c:	c3                   	retq   
