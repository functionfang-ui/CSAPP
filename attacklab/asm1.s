
./ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000000dc8 <_init>:
 dc8:	48 83 ec 09          	sub    $0x8,%rsp
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
    101f:	4c 8d 05 2a 21 00 00 	lea    0x212a(%rip),%r8        # 3150 <__libc_csu_fini>
    1026:	48 8d 0d b3 20 00 00 	lea    0x20b3(%rip),%rcx        # 30e0 <__libc_csu_init>
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
    112a:	48 8d 35 37 20 00 00 	lea    0x2037(%rip),%rsi        # 3168 <_IO_stdin_used+0x8>
    1131:	bf 01 00 00 00       	mov    $0x1,%edi
    1136:	b8 00 00 00 00       	mov    $0x0,%eax
    113b:	e8 20 fe ff ff       	callq  f60 <__printf_chk@plt>
    1140:	48 8d 3d 59 20 00 00 	lea    0x2059(%rip),%rdi        # 31a0 <_IO_stdin_used+0x40>
    1147:	e8 f4 fc ff ff       	callq  e40 <puts@plt>
    114c:	48 8d 3d c5 21 00 00 	lea    0x21c5(%rip),%rdi        # 3318 <_IO_stdin_used+0x1b8>
    1153:	e8 e8 fc ff ff       	callq  e40 <puts@plt>
    1158:	48 8d 3d 69 20 00 00 	lea    0x2069(%rip),%rdi        # 31c8 <_IO_stdin_used+0x68>
    115f:	e8 dc fc ff ff       	callq  e40 <puts@plt>
    1164:	48 8d 3d c7 21 00 00 	lea    0x21c7(%rip),%rdi        # 3332 <_IO_stdin_used+0x1d2>
    116b:	e8 d0 fc ff ff       	callq  e40 <puts@plt>
    1170:	bf 00 00 00 00       	mov    $0x0,%edi
    1175:	e8 36 fe ff ff       	callq  fb0 <exit@plt>
    117a:	48 8d 35 cd 21 00 00 	lea    0x21cd(%rip),%rsi        # 334e <_IO_stdin_used+0x1ee>
    1181:	bf 01 00 00 00       	mov    $0x1,%edi
    1186:	b8 00 00 00 00       	mov    $0x0,%eax
    118b:	e8 d0 fd ff ff       	callq  f60 <__printf_chk@plt>
    1190:	48 8d 3d 59 20 00 00 	lea    0x2059(%rip),%rdi        # 31f0 <_IO_stdin_used+0x90>
    1197:	e8 a4 fc ff ff       	callq  e40 <puts@plt>
    119c:	48 8d 3d 75 20 00 00 	lea    0x2075(%rip),%rdi        # 3218 <_IO_stdin_used+0xb8>
    11a3:	e8 98 fc ff ff       	callq  e40 <puts@plt>
    11a8:	48 8d 3d bd 21 00 00 	lea    0x21bd(%rip),%rdi        # 336c <_IO_stdin_used+0x20c>
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
    11e0:	e8 dc 1e 00 00       	callq  30c1 <gencookie>
    11e5:	89 05 f9 41 20 00    	mov    %eax,0x2041f9(%rip)        # 2053e4 <cookie>
    11eb:	89 c7                	mov    %eax,%edi
    11ed:	e8 cf 1e 00 00       	callq  30c1 <gencookie>
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
    1232:	c6 05 cf 4d 20 00 63 	movb   $0x63,0x204dcf(%rip)        # 206008 <target_prefix>
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
    12bd:	48 8d 3d 84 1f 00 00 	lea    0x1f84(%rip),%rdi        # 3248 <_IO_stdin_used+0xe8>
    12c4:	e8 77 fb ff ff       	callq  e40 <puts@plt>
    12c9:	bf 08 00 00 00       	mov    $0x8,%edi
    12ce:	e8 dd fc ff ff       	callq  fb0 <exit@plt>
    12d3:	bd 01 00 00 00       	mov    $0x1,%ebp
    12d8:	85 ed                	test   %ebp,%ebp
    12da:	74 3d                	je     1319 <initialize_target+0x163>
    12dc:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
    12e3:	00 
    12e4:	e8 08 1b 00 00       	callq  2df1 <init_driver>
    12e9:	85 c0                	test   %eax,%eax
    12eb:	0f 89 5a ff ff ff    	jns    124b <initialize_target+0x95>
    12f1:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
    12f8:	00 
    12f9:	48 8d 35 c0 1f 00 00 	lea    0x1fc0(%rip),%rsi        # 32c0 <_IO_stdin_used+0x160>
    1300:	bf 01 00 00 00       	mov    $0x1,%edi
    1305:	b8 00 00 00 00       	mov    $0x0,%eax
    130a:	e8 51 fc ff ff       	callq  f60 <__printf_chk@plt>
    130f:	bf 08 00 00 00       	mov    $0x8,%edi
    1314:	e8 97 fc ff ff       	callq  fb0 <exit@plt>
    1319:	48 89 e2             	mov    %rsp,%rdx
    131c:	48 8d 35 5d 1f 00 00 	lea    0x1f5d(%rip),%rsi        # 3280 <_IO_stdin_used+0x120>
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
    134f:	48 8d 35 a2 0d 00 00 	lea    0xda2(%rip),%rsi        # 20f8 <seghandler>
    1356:	bf 0b 00 00 00       	mov    $0xb,%edi
    135b:	e8 60 fb ff ff       	callq  ec0 <signal@plt>
    1360:	48 8d 35 3d 0d 00 00 	lea    0xd3d(%rip),%rsi        # 20a4 <bushandler>
    1367:	bf 07 00 00 00       	mov    $0x7,%edi
    136c:	e8 4f fb ff ff       	callq  ec0 <signal@plt>
    1371:	48 8d 35 d4 0d 00 00 	lea    0xdd4(%rip),%rsi        # 214c <illegalhandler>
    1378:	bf 04 00 00 00       	mov    $0x4,%edi
    137d:	e8 3e fb ff ff       	callq  ec0 <signal@plt>
    1382:	83 3d 5f 40 20 00 00 	cmpl   $0x0,0x20405f(%rip)        # 2053e8 <is_checker>
    1389:	75 26                	jne    13b1 <main+0x70>
    138b:	48 8d 2d f3 1f 00 00 	lea    0x1ff3(%rip),%rbp        # 3385 <_IO_stdin_used+0x225>
    1392:	48 8b 05 e7 3f 20 00 	mov    0x203fe7(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    1399:	48 89 05 30 40 20 00 	mov    %rax,0x204030(%rip)        # 2053d0 <infile>
    13a0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    13a6:	41 be 00 00 00 00    	mov    $0x0,%r14d
    13ac:	e9 8d 00 00 00       	jmpq   143e <main+0xfd>
    13b1:	48 8d 35 e8 0d 00 00 	lea    0xde8(%rip),%rsi        # 21a0 <sigalrmhandler>
    13b8:	bf 0e 00 00 00       	mov    $0xe,%edi
    13bd:	e8 fe fa ff ff       	callq  ec0 <signal@plt>
    13c2:	bf 05 00 00 00       	mov    $0x5,%edi
    13c7:	e8 c4 fa ff ff       	callq  e90 <alarm@plt>
    13cc:	48 8d 2d b7 1f 00 00 	lea    0x1fb7(%rip),%rbp        # 338a <_IO_stdin_used+0x22a>
    13d3:	eb bd                	jmp    1392 <main+0x51>
    13d5:	48 8b 3b             	mov    (%rbx),%rdi
    13d8:	e8 3d fd ff ff       	callq  111a <usage>
    13dd:	48 8d 35 09 22 00 00 	lea    0x2209(%rip),%rsi        # 35ed <_IO_stdin_used+0x48d>
    13e4:	48 8b 3d 9d 3f 20 00 	mov    0x203f9d(%rip),%rdi        # 205388 <optarg@@GLIBC_2.2.5>
    13eb:	e8 80 fb ff ff       	callq  f70 <fopen@plt>
    13f0:	48 89 05 d9 3f 20 00 	mov    %rax,0x203fd9(%rip)        # 2053d0 <infile>
    13f7:	48 85 c0             	test   %rax,%rax
    13fa:	75 42                	jne    143e <main+0xfd>
    13fc:	48 8b 0d 85 3f 20 00 	mov    0x203f85(%rip),%rcx        # 205388 <optarg@@GLIBC_2.2.5>
    1403:	48 8d 15 88 1f 00 00 	lea    0x1f88(%rip),%rdx        # 3392 <_IO_stdin_used+0x232>
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
    145d:	48 8d 0d 6c 1f 00 00 	lea    0x1f6c(%rip),%rcx        # 33d0 <_IO_stdin_used+0x270>
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
    1494:	48 8d 35 14 1f 00 00 	lea    0x1f14(%rip),%rsi        # 33af <_IO_stdin_used+0x24f>
    149b:	bf 01 00 00 00       	mov    $0x1,%edi
    14a0:	b8 00 00 00 00       	mov    $0x0,%eax
    14a5:	e8 b6 fa ff ff       	callq  f60 <__printf_chk@plt>
    14aa:	48 8b 3b             	mov    (%rbx),%rdi
    14ad:	e8 68 fc ff ff       	callq  111a <usage>
    14b2:	be 00 00 00 00       	mov    $0x0,%esi
    14b7:	44 89 ef             	mov    %r13d,%edi
    14ba:	e8 f7 fc ff ff       	callq  11b6 <initialize_target>
    14bf:	83 3d 22 3f 20 00 00 	cmpl   $0x0,0x203f22(%rip)        # 2053e8 <is_checker>
    14c6:	74 09                	je     14d1 <main+0x190>
    14c8:	44 39 35 11 3f 20 00 	cmp    %r14d,0x203f11(%rip)        # 2053e0 <authkey>
    14cf:	75 36                	jne    1507 <main+0x1c6>
    14d1:	8b 15 0d 3f 20 00    	mov    0x203f0d(%rip),%edx        # 2053e4 <cookie>
    14d7:	48 8d 35 e4 1e 00 00 	lea    0x1ee4(%rip),%rsi        # 33c2 <_IO_stdin_used+0x262>
    14de:	bf 01 00 00 00       	mov    $0x1,%edi
    14e3:	b8 00 00 00 00       	mov    $0x0,%eax
    14e8:	e8 73 fa ff ff       	callq  f60 <__printf_chk@plt>
    14ed:	48 8b 3d 6c 3e 20 00 	mov    0x203e6c(%rip),%rdi        # 205360 <buf_offset>
    14f4:	e8 b3 0d 00 00       	callq  22ac <stable_launch>
    14f9:	b8 00 00 00 00       	mov    $0x0,%eax
    14fe:	5b                   	pop    %rbx
    14ff:	5d                   	pop    %rbp
    1500:	41 5c                	pop    %r12
    1502:	41 5d                	pop    %r13
    1504:	41 5e                	pop    %r14
    1506:	c3                   	retq   
    1507:	44 89 f2             	mov    %r14d,%edx
    150a:	48 8d 35 d7 1d 00 00 	lea    0x1dd7(%rip),%rsi        # 32e8 <_IO_stdin_used+0x188>
    1511:	bf 01 00 00 00       	mov    $0x1,%edi
    1516:	b8 00 00 00 00       	mov    $0x0,%eax
    151b:	e8 40 fa ff ff       	callq  f60 <__printf_chk@plt>
    1520:	b8 00 00 00 00       	mov    $0x0,%eax
    1525:	e8 da 07 00 00       	callq  1d04 <check_fail>
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
    1a9c:	48 83 ec 28          	sub    $0x28,%rsp                 # 分配了0x28/40个字节的空间
    1aa0:	48 89 e7             	mov    %rsp,%rdi
    1aa3:	e8 94 02 00 00       	callq  1d3c <Gets>
    1aa8:	b8 01 00 00 00       	mov    $0x1,%eax                  # 0x555555555aa8
    1aad:	48 83 c4 28          	add    $0x28,%rsp
    1ab1:	c3                   	retq   

0000000000001ab2 <touch1>:
    1ab2:	48 83 ec 08          	sub    $0x8,%rsp                  # 0x0000555555555ab2
    1ab6:	c7 05 1c 39 20 00 01 	movl   $0x1,0x20391c(%rip)        # 2053dc <vlevel>
    1abd:	00 00 00 
    1ac0:	48 8d 3d 7b 19 00 00 	lea    0x197b(%rip),%rdi        # 3442 <_IO_stdin_used+0x2e2>
    1ac7:	e8 74 f3 ff ff       	callq  e40 <puts@plt>
    1acc:	bf 01 00 00 00       	mov    $0x1,%edi
    1ad1:	e8 d6 04 00 00       	callq  1fac <validate>
    1ad6:	bf 00 00 00 00       	mov    $0x0,%edi
    1adb:	e8 d0 f4 ff ff       	callq  fb0 <exit@plt>

0000000000001ae0 <touch2>:
    1ae0:	48 83 ec 08          	sub    $0x8,%rsp                  # 0x555555555ae0
    1ae4:	89 fa                	mov    %edi,%edx
    1ae6:	c7 05 ec 38 20 00 02 	movl   $0x2,0x2038ec(%rip)        # 2053dc <vlevel>
    1aed:	00 00 00 
    1af0:	39 3d ee 38 20 00    	cmp    %edi,0x2038ee(%rip)        # 2053e4 <cookie>
    1af6:	74 2a                	je     1b22 <touch2+0x42>
    1af8:	48 8d 35 91 19 00 00 	lea    0x1991(%rip),%rsi        # 3490 <_IO_stdin_used+0x330>
    1aff:	bf 01 00 00 00       	mov    $0x1,%edi
    1b04:	b8 00 00 00 00       	mov    $0x0,%eax
    1b09:	e8 52 f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b0e:	bf 02 00 00 00       	mov    $0x2,%edi
    1b13:	e8 64 05 00 00       	callq  207c <fail>
    1b18:	bf 00 00 00 00       	mov    $0x0,%edi
    1b1d:	e8 8e f4 ff ff       	callq  fb0 <exit@plt>
    1b22:	48 8d 35 3f 19 00 00 	lea    0x193f(%rip),%rsi        # 3468 <_IO_stdin_used+0x308>
    1b29:	bf 01 00 00 00       	mov    $0x1,%edi
    1b2e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b33:	e8 28 f4 ff ff       	callq  f60 <__printf_chk@plt>
    1b38:	bf 02 00 00 00       	mov    $0x2,%edi
    1b3d:	e8 6a 04 00 00       	callq  1fac <validate>
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
    1ba1:	48 8d 0d b7 18 00 00 	lea    0x18b7(%rip),%rcx        # 345f <_IO_stdin_used+0x2ff>
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
    1bf7:	53                   	push   %rbx                       # 0x555555555bf7
    1bf8:	48 89 fb             	mov    %rdi,%rbx
    1bfb:	c7 05 d7 37 20 00 03 	movl   $0x3,0x2037d7(%rip)        # 2053dc <vlevel>
    1c02:	00 00 00 
    1c05:	48 89 fe             	mov    %rdi,%rsi
    1c08:	8b 3d d6 37 20 00    	mov    0x2037d6(%rip),%edi        # 2053e4 <cookie>
    1c0e:	e8 31 ff ff ff       	callq  1b44 <hexmatch>
    1c13:	85 c0                	test   %eax,%eax
    1c15:	74 2d                	je     1c44 <touch3+0x4d>
    1c17:	48 89 da             	mov    %rbx,%rdx
    1c1a:	48 8d 35 97 18 00 00 	lea    0x1897(%rip),%rsi        # 34b8 <_IO_stdin_used+0x358>
    1c21:	bf 01 00 00 00       	mov    $0x1,%edi
    1c26:	b8 00 00 00 00       	mov    $0x0,%eax
    1c2b:	e8 30 f3 ff ff       	callq  f60 <__printf_chk@plt>
    1c30:	bf 03 00 00 00       	mov    $0x3,%edi
    1c35:	e8 72 03 00 00       	callq  1fac <validate>
    1c3a:	bf 00 00 00 00       	mov    $0x0,%edi
    1c3f:	e8 6c f3 ff ff       	callq  fb0 <exit@plt>
    1c44:	48 89 da             	mov    %rbx,%rdx
    1c47:	48 8d 35 92 18 00 00 	lea    0x1892(%rip),%rsi        # 34e0 <_IO_stdin_used+0x380>
    1c4e:	bf 01 00 00 00       	mov    $0x1,%edi
    1c53:	b8 00 00 00 00       	mov    $0x0,%eax
    1c58:	e8 03 f3 ff ff       	callq  f60 <__printf_chk@plt>
    1c5d:	bf 03 00 00 00       	mov    $0x3,%edi
    1c62:	e8 15 04 00 00       	callq  207c <fail>
    1c67:	eb d1                	jmp    1c3a <touch3+0x43>

0000000000001c69 <test>:
    1c69:	48 83 ec 08          	sub    $0x8,%rsp
    1c6d:	b8 00 00 00 00       	mov    $0x0,%eax
    1c72:	e8 25 fe ff ff       	callq  1a9c <getbuf>
    1c77:	89 c2                	mov    %eax,%edx
    1c79:	48 8d 35 88 18 00 00 	lea    0x1888(%rip),%rsi        # 3508 <_IO_stdin_used+0x3a8>
    1c80:	bf 01 00 00 00       	mov    $0x1,%edi
    1c85:	b8 00 00 00 00       	mov    $0x0,%eax
    1c8a:	e8 d1 f2 ff ff       	callq  f60 <__printf_chk@plt>
    1c8f:	48 83 c4 08          	add    $0x8,%rsp
    1c93:	c3                   	retq   

0000000000001c94 <save_char>:
    1c94:	8b 05 6a 43 20 00    	mov    0x20436a(%rip),%eax        # 206004 <gets_cnt>
    1c9a:	3d ff 03 00 00       	cmp    $0x3ff,%eax
    1c9f:	7f 4a                	jg     1ceb <save_char+0x57>
    1ca1:	89 f9                	mov    %edi,%ecx
    1ca3:	c0 e9 04             	shr    $0x4,%cl
    1ca6:	8d 14 40             	lea    (%rax,%rax,2),%edx
    1ca9:	4c 8d 05 80 1b 00 00 	lea    0x1b80(%rip),%r8        # 3830 <trans_char>
    1cb0:	83 e1 0f             	and    $0xf,%ecx
    1cb3:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
    1cb8:	48 8d 0d 41 37 20 00 	lea    0x203741(%rip),%rcx        # 205400 <gets_buf>
    1cbf:	48 63 f2             	movslq %edx,%rsi
    1cc2:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
    1cc6:	8d 72 01             	lea    0x1(%rdx),%esi
    1cc9:	83 e7 0f             	and    $0xf,%edi
    1ccc:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
    1cd1:	48 63 f6             	movslq %esi,%rsi
    1cd4:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
    1cd8:	83 c2 02             	add    $0x2,%edx
    1cdb:	48 63 d2             	movslq %edx,%rdx
    1cde:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
    1ce2:	83 c0 01             	add    $0x1,%eax
    1ce5:	89 05 19 43 20 00    	mov    %eax,0x204319(%rip)        # 206004 <gets_cnt>
    1ceb:	f3 c3                	repz retq 

0000000000001ced <save_term>:
    1ced:	8b 05 11 43 20 00    	mov    0x204311(%rip),%eax        # 206004 <gets_cnt>
    1cf3:	8d 04 40             	lea    (%rax,%rax,2),%eax
    1cf6:	48 98                	cltq   
    1cf8:	48 8d 15 01 37 20 00 	lea    0x203701(%rip),%rdx        # 205400 <gets_buf>
    1cff:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d03:	c3                   	retq   

0000000000001d04 <check_fail>:
    1d04:	48 83 ec 08          	sub    $0x8,%rsp
    1d08:	0f be 15 f9 42 20 00 	movsbl 0x2042f9(%rip),%edx        # 206008 <target_prefix>
    1d0f:	4c 8d 05 ea 36 20 00 	lea    0x2036ea(%rip),%r8        # 205400 <gets_buf>
    1d16:	8b 0d bc 36 20 00    	mov    0x2036bc(%rip),%ecx        # 2053d8 <check_level>
    1d1c:	48 8d 35 08 18 00 00 	lea    0x1808(%rip),%rsi        # 352b <_IO_stdin_used+0x3cb>
    1d23:	bf 01 00 00 00       	mov    $0x1,%edi
    1d28:	b8 00 00 00 00       	mov    $0x0,%eax
    1d2d:	e8 2e f2 ff ff       	callq  f60 <__printf_chk@plt>
    1d32:	bf 01 00 00 00       	mov    $0x1,%edi
    1d37:	e8 74 f2 ff ff       	callq  fb0 <exit@plt>

0000000000001d3c <Gets>:
    1d3c:	41 54                	push   %r12
    1d3e:	55                   	push   %rbp
    1d3f:	53                   	push   %rbx
    1d40:	49 89 fc             	mov    %rdi,%r12
    1d43:	c7 05 b7 42 20 00 00 	movl   $0x0,0x2042b7(%rip)        # 206004 <gets_cnt>
    1d4a:	00 00 00 
    1d4d:	48 89 fb             	mov    %rdi,%rbx
    1d50:	eb 11                	jmp    1d63 <Gets+0x27>
    1d52:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
    1d56:	88 03                	mov    %al,(%rbx)
    1d58:	0f b6 f8             	movzbl %al,%edi
    1d5b:	e8 34 ff ff ff       	callq  1c94 <save_char>
    1d60:	48 89 eb             	mov    %rbp,%rbx
    1d63:	48 8b 3d 66 36 20 00 	mov    0x203666(%rip),%rdi        # 2053d0 <infile>
    1d6a:	e8 c1 f1 ff ff       	callq  f30 <_IO_getc@plt>
    1d6f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1d72:	74 05                	je     1d79 <Gets+0x3d>
    1d74:	83 f8 0a             	cmp    $0xa,%eax
    1d77:	75 d9                	jne    1d52 <Gets+0x16>
    1d79:	c6 03 00             	movb   $0x0,(%rbx)
    1d7c:	b8 00 00 00 00       	mov    $0x0,%eax
    1d81:	e8 67 ff ff ff       	callq  1ced <save_term>
    1d86:	4c 89 e0             	mov    %r12,%rax
    1d89:	5b                   	pop    %rbx
    1d8a:	5d                   	pop    %rbp
    1d8b:	41 5c                	pop    %r12
    1d8d:	c3                   	retq   

0000000000001d8e <notify_server>:
    1d8e:	55                   	push   %rbp
    1d8f:	53                   	push   %rbx
    1d90:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1d97:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d9e:	00 00 
    1da0:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1da7:	00 
    1da8:	31 c0                	xor    %eax,%eax
    1daa:	83 3d 37 36 20 00 00 	cmpl   $0x0,0x203637(%rip)        # 2053e8 <is_checker>
    1db1:	0f 85 d2 00 00 00    	jne    1e89 <notify_server+0xfb>
    1db7:	89 fb                	mov    %edi,%ebx
    1db9:	8b 05 45 42 20 00    	mov    0x204245(%rip),%eax        # 206004 <gets_cnt>
    1dbf:	83 c0 64             	add    $0x64,%eax
    1dc2:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1dc7:	0f 8f dd 00 00 00    	jg     1eaa <notify_server+0x11c>
    1dcd:	0f be 05 34 42 20 00 	movsbl 0x204234(%rip),%eax        # 206008 <target_prefix>
    1dd4:	83 3d 8d 35 20 00 00 	cmpl   $0x0,0x20358d(%rip)        # 205368 <notify>
    1ddb:	0f 84 e9 00 00 00    	je     1eca <notify_server+0x13c>
    1de1:	8b 15 f9 35 20 00    	mov    0x2035f9(%rip),%edx        # 2053e0 <authkey>
    1de7:	85 db                	test   %ebx,%ebx
    1de9:	0f 84 e5 00 00 00    	je     1ed4 <notify_server+0x146>
    1def:	48 8d 2d 4b 17 00 00 	lea    0x174b(%rip),%rbp        # 3541 <_IO_stdin_used+0x3e1>
    1df6:	48 89 e7             	mov    %rsp,%rdi
    1df9:	48 8d 0d 00 36 20 00 	lea    0x203600(%rip),%rcx        # 205400 <gets_buf>
    1e00:	51                   	push   %rcx
    1e01:	56                   	push   %rsi
    1e02:	50                   	push   %rax
    1e03:	52                   	push   %rdx
    1e04:	49 89 e9             	mov    %rbp,%r9
    1e07:	44 8b 05 02 32 20 00 	mov    0x203202(%rip),%r8d        # 205010 <target_id>
    1e0e:	48 8d 0d 36 17 00 00 	lea    0x1736(%rip),%rcx        # 354b <_IO_stdin_used+0x3eb>
    1e15:	ba 00 20 00 00       	mov    $0x2000,%edx
    1e1a:	be 01 00 00 00       	mov    $0x1,%esi
    1e1f:	b8 00 00 00 00       	mov    $0x0,%eax
    1e24:	e8 b7 f1 ff ff       	callq  fe0 <__sprintf_chk@plt>
    1e29:	48 83 c4 20          	add    $0x20,%rsp
    1e2d:	83 3d 34 35 20 00 00 	cmpl   $0x0,0x203534(%rip)        # 205368 <notify>
    1e34:	0f 84 df 00 00 00    	je     1f19 <notify_server+0x18b>
    1e3a:	85 db                	test   %ebx,%ebx
    1e3c:	0f 84 c6 00 00 00    	je     1f08 <notify_server+0x17a>
    1e42:	48 89 e1             	mov    %rsp,%rcx
    1e45:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1e4c:	00 
    1e4d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1e53:	48 8b 15 ce 31 20 00 	mov    0x2031ce(%rip),%rdx        # 205028 <lab>
    1e5a:	48 8b 35 cf 31 20 00 	mov    0x2031cf(%rip),%rsi        # 205030 <course>
    1e61:	48 8b 3d b8 31 20 00 	mov    0x2031b8(%rip),%rdi        # 205020 <user_id>
    1e68:	e8 af 11 00 00       	callq  301c <driver_post>
    1e6d:	85 c0                	test   %eax,%eax
    1e6f:	78 6f                	js     1ee0 <notify_server+0x152>
    1e71:	48 8d 3d 18 18 00 00 	lea    0x1818(%rip),%rdi        # 3690 <_IO_stdin_used+0x530>
    1e78:	e8 c3 ef ff ff       	callq  e40 <puts@plt>
    1e7d:	48 8d 3d ef 16 00 00 	lea    0x16ef(%rip),%rdi        # 3573 <_IO_stdin_used+0x413>
    1e84:	e8 b7 ef ff ff       	callq  e40 <puts@plt>
    1e89:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1e90:	00 
    1e91:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1e98:	00 00 
    1e9a:	0f 85 07 01 00 00    	jne    1fa7 <notify_server+0x219>
    1ea0:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1ea7:	5b                   	pop    %rbx
    1ea8:	5d                   	pop    %rbp
    1ea9:	c3                   	retq   
    1eaa:	48 8d 35 af 17 00 00 	lea    0x17af(%rip),%rsi        # 3660 <_IO_stdin_used+0x500>
    1eb1:	bf 01 00 00 00       	mov    $0x1,%edi
    1eb6:	b8 00 00 00 00       	mov    $0x0,%eax
    1ebb:	e8 a0 f0 ff ff       	callq  f60 <__printf_chk@plt>
    1ec0:	bf 01 00 00 00       	mov    $0x1,%edi
    1ec5:	e8 e6 f0 ff ff       	callq  fb0 <exit@plt>
    1eca:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1ecf:	e9 13 ff ff ff       	jmpq   1de7 <notify_server+0x59>
    1ed4:	48 8d 2d 6b 16 00 00 	lea    0x166b(%rip),%rbp        # 3546 <_IO_stdin_used+0x3e6>
    1edb:	e9 16 ff ff ff       	jmpq   1df6 <notify_server+0x68>
    1ee0:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
    1ee7:	00 
    1ee8:	48 8d 35 78 16 00 00 	lea    0x1678(%rip),%rsi        # 3567 <_IO_stdin_used+0x407>
    1eef:	bf 01 00 00 00       	mov    $0x1,%edi
    1ef4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef9:	e8 62 f0 ff ff       	callq  f60 <__printf_chk@plt>
    1efe:	bf 01 00 00 00       	mov    $0x1,%edi
    1f03:	e8 a8 f0 ff ff       	callq  fb0 <exit@plt>
    1f08:	48 8d 3d 6e 16 00 00 	lea    0x166e(%rip),%rdi        # 357d <_IO_stdin_used+0x41d>
    1f0f:	e8 2c ef ff ff       	callq  e40 <puts@plt>
    1f14:	e9 70 ff ff ff       	jmpq   1e89 <notify_server+0xfb>
    1f19:	48 89 ea             	mov    %rbp,%rdx
    1f1c:	48 8d 35 a5 17 00 00 	lea    0x17a5(%rip),%rsi        # 36c8 <_IO_stdin_used+0x568>
    1f23:	bf 01 00 00 00       	mov    $0x1,%edi
    1f28:	b8 00 00 00 00       	mov    $0x0,%eax
    1f2d:	e8 2e f0 ff ff       	callq  f60 <__printf_chk@plt>
    1f32:	48 8b 15 e7 30 20 00 	mov    0x2030e7(%rip),%rdx        # 205020 <user_id>
    1f39:	48 8d 35 44 16 00 00 	lea    0x1644(%rip),%rsi        # 3584 <_IO_stdin_used+0x424>
    1f40:	bf 01 00 00 00       	mov    $0x1,%edi
    1f45:	b8 00 00 00 00       	mov    $0x0,%eax
    1f4a:	e8 11 f0 ff ff       	callq  f60 <__printf_chk@plt>
    1f4f:	48 8b 15 da 30 20 00 	mov    0x2030da(%rip),%rdx        # 205030 <course>
    1f56:	48 8d 35 34 16 00 00 	lea    0x1634(%rip),%rsi        # 3591 <_IO_stdin_used+0x431>
    1f5d:	bf 01 00 00 00       	mov    $0x1,%edi
    1f62:	b8 00 00 00 00       	mov    $0x0,%eax
    1f67:	e8 f4 ef ff ff       	callq  f60 <__printf_chk@plt>
    1f6c:	48 8b 15 b5 30 20 00 	mov    0x2030b5(%rip),%rdx        # 205028 <lab>
    1f73:	48 8d 35 23 16 00 00 	lea    0x1623(%rip),%rsi        # 359d <_IO_stdin_used+0x43d>
    1f7a:	bf 01 00 00 00       	mov    $0x1,%edi
    1f7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f84:	e8 d7 ef ff ff       	callq  f60 <__printf_chk@plt>
    1f89:	48 89 e2             	mov    %rsp,%rdx
    1f8c:	48 8d 35 13 16 00 00 	lea    0x1613(%rip),%rsi        # 35a6 <_IO_stdin_used+0x446>
    1f93:	bf 01 00 00 00       	mov    $0x1,%edi
    1f98:	b8 00 00 00 00       	mov    $0x0,%eax
    1f9d:	e8 be ef ff ff       	callq  f60 <__printf_chk@plt>
    1fa2:	e9 e2 fe ff ff       	jmpq   1e89 <notify_server+0xfb>
    1fa7:	e8 b4 ee ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000001fac <validate>:
    1fac:	53                   	push   %rbx
    1fad:	89 fb                	mov    %edi,%ebx
    1faf:	83 3d 32 34 20 00 00 	cmpl   $0x0,0x203432(%rip)        # 2053e8 <is_checker>
    1fb6:	74 72                	je     202a <validate+0x7e>
    1fb8:	39 3d 1e 34 20 00    	cmp    %edi,0x20341e(%rip)        # 2053dc <vlevel>
    1fbe:	75 32                	jne    1ff2 <validate+0x46>
    1fc0:	8b 15 12 34 20 00    	mov    0x203412(%rip),%edx        # 2053d8 <check_level>
    1fc6:	39 fa                	cmp    %edi,%edx
    1fc8:	75 3e                	jne    2008 <validate+0x5c>
    1fca:	0f be 15 37 40 20 00 	movsbl 0x204037(%rip),%edx        # 206008 <target_prefix>
    1fd1:	4c 8d 05 28 34 20 00 	lea    0x203428(%rip),%r8        # 205400 <gets_buf>
    1fd8:	89 f9                	mov    %edi,%ecx
    1fda:	48 8d 35 ef 15 00 00 	lea    0x15ef(%rip),%rsi        # 35d0 <_IO_stdin_used+0x470>
    1fe1:	bf 01 00 00 00       	mov    $0x1,%edi
    1fe6:	b8 00 00 00 00       	mov    $0x0,%eax
    1feb:	e8 70 ef ff ff       	callq  f60 <__printf_chk@plt>
    1ff0:	5b                   	pop    %rbx
    1ff1:	c3                   	retq   
    1ff2:	48 8d 3d b9 15 00 00 	lea    0x15b9(%rip),%rdi        # 35b2 <_IO_stdin_used+0x452>
    1ff9:	e8 42 ee ff ff       	callq  e40 <puts@plt>
    1ffe:	b8 00 00 00 00       	mov    $0x0,%eax
    2003:	e8 fc fc ff ff       	callq  1d04 <check_fail>
    2008:	89 f9                	mov    %edi,%ecx
    200a:	48 8d 35 df 16 00 00 	lea    0x16df(%rip),%rsi        # 36f0 <_IO_stdin_used+0x590>
    2011:	bf 01 00 00 00       	mov    $0x1,%edi
    2016:	b8 00 00 00 00       	mov    $0x0,%eax
    201b:	e8 40 ef ff ff       	callq  f60 <__printf_chk@plt>
    2020:	b8 00 00 00 00       	mov    $0x0,%eax
    2025:	e8 da fc ff ff       	callq  1d04 <check_fail>
    202a:	39 3d ac 33 20 00    	cmp    %edi,0x2033ac(%rip)        # 2053dc <vlevel>
    2030:	74 1a                	je     204c <validate+0xa0>
    2032:	48 8d 3d 79 15 00 00 	lea    0x1579(%rip),%rdi        # 35b2 <_IO_stdin_used+0x452>
    2039:	e8 02 ee ff ff       	callq  e40 <puts@plt>
    203e:	89 de                	mov    %ebx,%esi
    2040:	bf 00 00 00 00       	mov    $0x0,%edi
    2045:	e8 44 fd ff ff       	callq  1d8e <notify_server>
    204a:	eb a4                	jmp    1ff0 <validate+0x44>
    204c:	0f be 0d b5 3f 20 00 	movsbl 0x203fb5(%rip),%ecx        # 206008 <target_prefix>
    2053:	89 fa                	mov    %edi,%edx
    2055:	48 8d 35 bc 16 00 00 	lea    0x16bc(%rip),%rsi        # 3718 <_IO_stdin_used+0x5b8>
    205c:	bf 01 00 00 00       	mov    $0x1,%edi
    2061:	b8 00 00 00 00       	mov    $0x0,%eax
    2066:	e8 f5 ee ff ff       	callq  f60 <__printf_chk@plt>
    206b:	89 de                	mov    %ebx,%esi
    206d:	bf 01 00 00 00       	mov    $0x1,%edi
    2072:	e8 17 fd ff ff       	callq  1d8e <notify_server>
    2077:	e9 74 ff ff ff       	jmpq   1ff0 <validate+0x44>

000000000000207c <fail>:
    207c:	48 83 ec 08          	sub    $0x8,%rsp
    2080:	83 3d 61 33 20 00 00 	cmpl   $0x0,0x203361(%rip)        # 2053e8 <is_checker>
    2087:	75 11                	jne    209a <fail+0x1e>
    2089:	89 fe                	mov    %edi,%esi
    208b:	bf 00 00 00 00       	mov    $0x0,%edi
    2090:	e8 f9 fc ff ff       	callq  1d8e <notify_server>
    2095:	48 83 c4 08          	add    $0x8,%rsp
    2099:	c3                   	retq   
    209a:	b8 00 00 00 00       	mov    $0x0,%eax
    209f:	e8 60 fc ff ff       	callq  1d04 <check_fail>

00000000000020a4 <bushandler>:
    20a4:	48 83 ec 08          	sub    $0x8,%rsp
    20a8:	83 3d 39 33 20 00 00 	cmpl   $0x0,0x203339(%rip)        # 2053e8 <is_checker>
    20af:	74 16                	je     20c7 <bushandler+0x23>
    20b1:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 35e5 <_IO_stdin_used+0x485>
    20b8:	e8 83 ed ff ff       	callq  e40 <puts@plt>
    20bd:	b8 00 00 00 00       	mov    $0x0,%eax
    20c2:	e8 3d fc ff ff       	callq  1d04 <check_fail>
    20c7:	48 8d 3d 82 16 00 00 	lea    0x1682(%rip),%rdi        # 3750 <_IO_stdin_used+0x5f0>
    20ce:	e8 6d ed ff ff       	callq  e40 <puts@plt>
    20d3:	48 8d 3d 15 15 00 00 	lea    0x1515(%rip),%rdi        # 35ef <_IO_stdin_used+0x48f>
    20da:	e8 61 ed ff ff       	callq  e40 <puts@plt>
    20df:	be 00 00 00 00       	mov    $0x0,%esi
    20e4:	bf 00 00 00 00       	mov    $0x0,%edi
    20e9:	e8 a0 fc ff ff       	callq  1d8e <notify_server>
    20ee:	bf 01 00 00 00       	mov    $0x1,%edi
    20f3:	e8 b8 ee ff ff       	callq  fb0 <exit@plt>

00000000000020f8 <seghandler>:
    20f8:	48 83 ec 08          	sub    $0x8,%rsp
    20fc:	83 3d e5 32 20 00 00 	cmpl   $0x0,0x2032e5(%rip)        # 2053e8 <is_checker>
    2103:	74 16                	je     211b <seghandler+0x23>
    2105:	48 8d 3d f9 14 00 00 	lea    0x14f9(%rip),%rdi        # 3605 <_IO_stdin_used+0x4a5>
    210c:	e8 2f ed ff ff       	callq  e40 <puts@plt>
    2111:	b8 00 00 00 00       	mov    $0x0,%eax
    2116:	e8 e9 fb ff ff       	callq  1d04 <check_fail>
    211b:	48 8d 3d 4e 16 00 00 	lea    0x164e(%rip),%rdi        # 3770 <_IO_stdin_used+0x610>
    2122:	e8 19 ed ff ff       	callq  e40 <puts@plt>
    2127:	48 8d 3d c1 14 00 00 	lea    0x14c1(%rip),%rdi        # 35ef <_IO_stdin_used+0x48f>
    212e:	e8 0d ed ff ff       	callq  e40 <puts@plt>
    2133:	be 00 00 00 00       	mov    $0x0,%esi
    2138:	bf 00 00 00 00       	mov    $0x0,%edi
    213d:	e8 4c fc ff ff       	callq  1d8e <notify_server>
    2142:	bf 01 00 00 00       	mov    $0x1,%edi
    2147:	e8 64 ee ff ff       	callq  fb0 <exit@plt>

000000000000214c <illegalhandler>:
    214c:	48 83 ec 08          	sub    $0x8,%rsp
    2150:	83 3d 91 32 20 00 00 	cmpl   $0x0,0x203291(%rip)        # 2053e8 <is_checker>
    2157:	74 16                	je     216f <illegalhandler+0x23>
    2159:	48 8d 3d b8 14 00 00 	lea    0x14b8(%rip),%rdi        # 3618 <_IO_stdin_used+0x4b8>
    2160:	e8 db ec ff ff       	callq  e40 <puts@plt>
    2165:	b8 00 00 00 00       	mov    $0x0,%eax
    216a:	e8 95 fb ff ff       	callq  1d04 <check_fail>
    216f:	48 8d 3d 22 16 00 00 	lea    0x1622(%rip),%rdi        # 3798 <_IO_stdin_used+0x638>
    2176:	e8 c5 ec ff ff       	callq  e40 <puts@plt>
    217b:	48 8d 3d 6d 14 00 00 	lea    0x146d(%rip),%rdi        # 35ef <_IO_stdin_used+0x48f>
    2182:	e8 b9 ec ff ff       	callq  e40 <puts@plt>
    2187:	be 00 00 00 00       	mov    $0x0,%esi
    218c:	bf 00 00 00 00       	mov    $0x0,%edi
    2191:	e8 f8 fb ff ff       	callq  1d8e <notify_server>
    2196:	bf 01 00 00 00       	mov    $0x1,%edi
    219b:	e8 10 ee ff ff       	callq  fb0 <exit@plt>

00000000000021a0 <sigalrmhandler>:
    21a0:	48 83 ec 08          	sub    $0x8,%rsp
    21a4:	83 3d 3d 32 20 00 00 	cmpl   $0x0,0x20323d(%rip)        # 2053e8 <is_checker>
    21ab:	74 16                	je     21c3 <sigalrmhandler+0x23>
    21ad:	48 8d 3d 78 14 00 00 	lea    0x1478(%rip),%rdi        # 362c <_IO_stdin_used+0x4cc>
    21b4:	e8 87 ec ff ff       	callq  e40 <puts@plt>
    21b9:	b8 00 00 00 00       	mov    $0x0,%eax
    21be:	e8 41 fb ff ff       	callq  1d04 <check_fail>
    21c3:	ba 05 00 00 00       	mov    $0x5,%edx
    21c8:	48 8d 35 f9 15 00 00 	lea    0x15f9(%rip),%rsi        # 37c8 <_IO_stdin_used+0x668>
    21cf:	bf 01 00 00 00       	mov    $0x1,%edi
    21d4:	b8 00 00 00 00       	mov    $0x0,%eax
    21d9:	e8 82 ed ff ff       	callq  f60 <__printf_chk@plt>
    21de:	be 00 00 00 00       	mov    $0x0,%esi
    21e3:	bf 00 00 00 00       	mov    $0x0,%edi
    21e8:	e8 a1 fb ff ff       	callq  1d8e <notify_server>
    21ed:	bf 01 00 00 00       	mov    $0x1,%edi
    21f2:	e8 b9 ed ff ff       	callq  fb0 <exit@plt>

00000000000021f7 <launch>:
    21f7:	55                   	push   %rbp
    21f8:	48 89 e5             	mov    %rsp,%rbp
    21fb:	48 83 ec 10          	sub    $0x10,%rsp
    21ff:	48 89 fa             	mov    %rdi,%rdx
    2202:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2209:	00 00 
    220b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    220f:	31 c0                	xor    %eax,%eax
    2211:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
    2215:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    2219:	48 29 c4             	sub    %rax,%rsp
    221c:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
    2221:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    2225:	be f4 00 00 00       	mov    $0xf4,%esi
    222a:	e8 51 ec ff ff       	callq  e80 <memset@plt>
    222f:	48 8b 05 4a 31 20 00 	mov    0x20314a(%rip),%rax        # 205380 <stdin@@GLIBC_2.2.5>
    2236:	48 39 05 93 31 20 00 	cmp    %rax,0x203193(%rip)        # 2053d0 <infile>
    223d:	74 3a                	je     2279 <launch+0x82>
    223f:	c7 05 93 31 20 00 00 	movl   $0x0,0x203193(%rip)        # 2053dc <vlevel>
    2246:	00 00 00 
    2249:	b8 00 00 00 00       	mov    $0x0,%eax
    224e:	e8 16 fa ff ff       	callq  1c69 <test>
    2253:	83 3d 8e 31 20 00 00 	cmpl   $0x0,0x20318e(%rip)        # 2053e8 <is_checker>
    225a:	75 35                	jne    2291 <launch+0x9a>
    225c:	48 8d 3d e9 13 00 00 	lea    0x13e9(%rip),%rdi        # 364c <_IO_stdin_used+0x4ec>
    2263:	e8 d8 eb ff ff       	callq  e40 <puts@plt>
    2268:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    226c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2273:	00 00 
    2275:	75 30                	jne    22a7 <launch+0xb0>
    2277:	c9                   	leaveq 
    2278:	c3                   	retq   
    2279:	48 8d 35 b4 13 00 00 	lea    0x13b4(%rip),%rsi        # 3634 <_IO_stdin_used+0x4d4>
    2280:	bf 01 00 00 00       	mov    $0x1,%edi
    2285:	b8 00 00 00 00       	mov    $0x0,%eax
    228a:	e8 d1 ec ff ff       	callq  f60 <__printf_chk@plt>
    228f:	eb ae                	jmp    223f <launch+0x48>
    2291:	48 8d 3d a9 13 00 00 	lea    0x13a9(%rip),%rdi        # 3641 <_IO_stdin_used+0x4e1>
    2298:	e8 a3 eb ff ff       	callq  e40 <puts@plt>
    229d:	b8 00 00 00 00       	mov    $0x0,%eax
    22a2:	e8 5d fa ff ff       	callq  1d04 <check_fail>
    22a7:	e8 b4 eb ff ff       	callq  e60 <__stack_chk_fail@plt>

00000000000022ac <stable_launch>:
    22ac:	53                   	push   %rbx
    22ad:	48 89 3d 14 31 20 00 	mov    %rdi,0x203114(%rip)        # 2053c8 <global_offset>
    22b4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    22ba:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    22c0:	b9 32 01 00 00       	mov    $0x132,%ecx
    22c5:	ba 07 00 00 00       	mov    $0x7,%edx
    22ca:	be 00 00 10 00       	mov    $0x100000,%esi
    22cf:	bf 00 60 58 55       	mov    $0x55586000,%edi
    22d4:	e8 97 eb ff ff       	callq  e70 <mmap@plt>
    22d9:	48 89 c3             	mov    %rax,%rbx
    22dc:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
    22e2:	75 43                	jne    2327 <stable_launch+0x7b>
    22e4:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
    22eb:	48 89 15 1e 3d 20 00 	mov    %rdx,0x203d1e(%rip)        # 206010 <stack_top>
    22f2:	48 89 e0             	mov    %rsp,%rax
    22f5:	48 89 d4             	mov    %rdx,%rsp
    22f8:	48 89 c2             	mov    %rax,%rdx
    22fb:	48 89 15 be 30 20 00 	mov    %rdx,0x2030be(%rip)        # 2053c0 <global_save_stack>
    2302:	48 8b 3d bf 30 20 00 	mov    0x2030bf(%rip),%rdi        # 2053c8 <global_offset>
    2309:	e8 e9 fe ff ff       	callq  21f7 <launch>
    230e:	48 8b 05 ab 30 20 00 	mov    0x2030ab(%rip),%rax        # 2053c0 <global_save_stack>
    2315:	48 89 c4             	mov    %rax,%rsp
    2318:	be 00 00 10 00       	mov    $0x100000,%esi
    231d:	48 89 df             	mov    %rbx,%rdi
    2320:	e8 2b ec ff ff       	callq  f50 <munmap@plt>
    2325:	5b                   	pop    %rbx
    2326:	c3                   	retq   
    2327:	be 00 00 10 00       	mov    $0x100000,%esi
    232c:	48 89 c7             	mov    %rax,%rdi
    232f:	e8 1c ec ff ff       	callq  f50 <munmap@plt>
    2334:	b9 00 60 58 55       	mov    $0x55586000,%ecx
    2339:	48 8d 15 c0 14 00 00 	lea    0x14c0(%rip),%rdx        # 3800 <_IO_stdin_used+0x6a0>
    2340:	be 01 00 00 00       	mov    $0x1,%esi
    2345:	48 8b 3d 54 30 20 00 	mov    0x203054(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    234c:	b8 00 00 00 00       	mov    $0x0,%eax
    2351:	e8 7a ec ff ff       	callq  fd0 <__fprintf_chk@plt>
    2356:	bf 01 00 00 00       	mov    $0x1,%edi
    235b:	e8 50 ec ff ff       	callq  fb0 <exit@plt>

0000000000002360 <rio_readinitb>:
    2360:	89 37                	mov    %esi,(%rdi)
    2362:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    2369:	48 8d 47 10          	lea    0x10(%rdi),%rax
    236d:	48 89 47 08          	mov    %rax,0x8(%rdi)
    2371:	c3                   	retq   

0000000000002372 <sigalrm_handler>:
    2372:	48 83 ec 08          	sub    $0x8,%rsp
    2376:	b9 00 00 00 00       	mov    $0x0,%ecx
    237b:	48 8d 15 be 14 00 00 	lea    0x14be(%rip),%rdx        # 3840 <trans_char+0x10>
    2382:	be 01 00 00 00       	mov    $0x1,%esi
    2387:	48 8b 3d 12 30 20 00 	mov    0x203012(%rip),%rdi        # 2053a0 <stderr@@GLIBC_2.2.5>
    238e:	b8 00 00 00 00       	mov    $0x0,%eax
    2393:	e8 38 ec ff ff       	callq  fd0 <__fprintf_chk@plt>
    2398:	bf 01 00 00 00       	mov    $0x1,%edi
    239d:	e8 0e ec ff ff       	callq  fb0 <exit@plt>

00000000000023a2 <rio_writen>:
    23a2:	41 55                	push   %r13
    23a4:	41 54                	push   %r12
    23a6:	55                   	push   %rbp
    23a7:	53                   	push   %rbx
    23a8:	48 83 ec 08          	sub    $0x8,%rsp
    23ac:	41 89 fc             	mov    %edi,%r12d
    23af:	48 89 f5             	mov    %rsi,%rbp
    23b2:	49 89 d5             	mov    %rdx,%r13
    23b5:	48 89 d3             	mov    %rdx,%rbx
    23b8:	eb 06                	jmp    23c0 <rio_writen+0x1e>
    23ba:	48 29 c3             	sub    %rax,%rbx
    23bd:	48 01 c5             	add    %rax,%rbp
    23c0:	48 85 db             	test   %rbx,%rbx
    23c3:	74 24                	je     23e9 <rio_writen+0x47>
    23c5:	48 89 da             	mov    %rbx,%rdx
    23c8:	48 89 ee             	mov    %rbp,%rsi
    23cb:	44 89 e7             	mov    %r12d,%edi
    23ce:	e8 7d ea ff ff       	callq  e50 <write@plt>
    23d3:	48 85 c0             	test   %rax,%rax
    23d6:	7f e2                	jg     23ba <rio_writen+0x18>
    23d8:	e8 23 ea ff ff       	callq  e00 <__errno_location@plt>
    23dd:	83 38 04             	cmpl   $0x4,(%rax)
    23e0:	75 15                	jne    23f7 <rio_writen+0x55>
    23e2:	b8 00 00 00 00       	mov    $0x0,%eax
    23e7:	eb d1                	jmp    23ba <rio_writen+0x18>
    23e9:	4c 89 e8             	mov    %r13,%rax
    23ec:	48 83 c4 08          	add    $0x8,%rsp
    23f0:	5b                   	pop    %rbx
    23f1:	5d                   	pop    %rbp
    23f2:	41 5c                	pop    %r12
    23f4:	41 5d                	pop    %r13
    23f6:	c3                   	retq   
    23f7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    23fe:	eb ec                	jmp    23ec <rio_writen+0x4a>

0000000000002400 <rio_read>:
    2400:	41 55                	push   %r13
    2402:	41 54                	push   %r12
    2404:	55                   	push   %rbp
    2405:	53                   	push   %rbx
    2406:	48 83 ec 08          	sub    $0x8,%rsp
    240a:	48 89 fb             	mov    %rdi,%rbx
    240d:	49 89 f5             	mov    %rsi,%r13
    2410:	49 89 d4             	mov    %rdx,%r12
    2413:	eb 0a                	jmp    241f <rio_read+0x1f>
    2415:	e8 e6 e9 ff ff       	callq  e00 <__errno_location@plt>
    241a:	83 38 04             	cmpl   $0x4,(%rax)
    241d:	75 5c                	jne    247b <rio_read+0x7b>
    241f:	8b 6b 04             	mov    0x4(%rbx),%ebp
    2422:	85 ed                	test   %ebp,%ebp
    2424:	7f 24                	jg     244a <rio_read+0x4a>
    2426:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    242a:	8b 3b                	mov    (%rbx),%edi
    242c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2431:	48 89 ee             	mov    %rbp,%rsi
    2434:	e8 77 ea ff ff       	callq  eb0 <read@plt>
    2439:	89 43 04             	mov    %eax,0x4(%rbx)
    243c:	85 c0                	test   %eax,%eax
    243e:	78 d5                	js     2415 <rio_read+0x15>
    2440:	85 c0                	test   %eax,%eax
    2442:	74 40                	je     2484 <rio_read+0x84>
    2444:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2448:	eb d5                	jmp    241f <rio_read+0x1f>
    244a:	89 e8                	mov    %ebp,%eax
    244c:	4c 39 e0             	cmp    %r12,%rax
    244f:	72 03                	jb     2454 <rio_read+0x54>
    2451:	44 89 e5             	mov    %r12d,%ebp
    2454:	4c 63 e5             	movslq %ebp,%r12
    2457:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    245b:	4c 89 e2             	mov    %r12,%rdx
    245e:	4c 89 ef             	mov    %r13,%rdi
    2461:	e8 9a ea ff ff       	callq  f00 <memcpy@plt>
    2466:	4c 01 63 08          	add    %r12,0x8(%rbx)
    246a:	29 6b 04             	sub    %ebp,0x4(%rbx)
    246d:	4c 89 e0             	mov    %r12,%rax
    2470:	48 83 c4 08          	add    $0x8,%rsp
    2474:	5b                   	pop    %rbx
    2475:	5d                   	pop    %rbp
    2476:	41 5c                	pop    %r12
    2478:	41 5d                	pop    %r13
    247a:	c3                   	retq   
    247b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2482:	eb ec                	jmp    2470 <rio_read+0x70>
    2484:	b8 00 00 00 00       	mov    $0x0,%eax
    2489:	eb e5                	jmp    2470 <rio_read+0x70>

000000000000248b <rio_readlineb>:
    248b:	41 55                	push   %r13
    248d:	41 54                	push   %r12
    248f:	55                   	push   %rbp
    2490:	53                   	push   %rbx
    2491:	48 83 ec 18          	sub    $0x18,%rsp
    2495:	49 89 fd             	mov    %rdi,%r13
    2498:	48 89 f5             	mov    %rsi,%rbp
    249b:	49 89 d4             	mov    %rdx,%r12
    249e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24a5:	00 00 
    24a7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24ac:	31 c0                	xor    %eax,%eax
    24ae:	bb 01 00 00 00       	mov    $0x1,%ebx
    24b3:	4c 39 e3             	cmp    %r12,%rbx
    24b6:	73 47                	jae    24ff <rio_readlineb+0x74>
    24b8:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    24bd:	ba 01 00 00 00       	mov    $0x1,%edx
    24c2:	4c 89 ef             	mov    %r13,%rdi
    24c5:	e8 36 ff ff ff       	callq  2400 <rio_read>
    24ca:	83 f8 01             	cmp    $0x1,%eax
    24cd:	75 1c                	jne    24eb <rio_readlineb+0x60>
    24cf:	48 8d 45 01          	lea    0x1(%rbp),%rax
    24d3:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    24d8:	88 55 00             	mov    %dl,0x0(%rbp)
    24db:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    24e0:	74 1a                	je     24fc <rio_readlineb+0x71>
    24e2:	48 83 c3 01          	add    $0x1,%rbx
    24e6:	48 89 c5             	mov    %rax,%rbp
    24e9:	eb c8                	jmp    24b3 <rio_readlineb+0x28>
    24eb:	85 c0                	test   %eax,%eax
    24ed:	75 32                	jne    2521 <rio_readlineb+0x96>
    24ef:	48 83 fb 01          	cmp    $0x1,%rbx
    24f3:	75 0a                	jne    24ff <rio_readlineb+0x74>
    24f5:	b8 00 00 00 00       	mov    $0x0,%eax
    24fa:	eb 0a                	jmp    2506 <rio_readlineb+0x7b>
    24fc:	48 89 c5             	mov    %rax,%rbp
    24ff:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2503:	48 89 d8             	mov    %rbx,%rax
    2506:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    250b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2512:	00 00 
    2514:	75 14                	jne    252a <rio_readlineb+0x9f>
    2516:	48 83 c4 18          	add    $0x18,%rsp
    251a:	5b                   	pop    %rbx
    251b:	5d                   	pop    %rbp
    251c:	41 5c                	pop    %r12
    251e:	41 5d                	pop    %r13
    2520:	c3                   	retq   
    2521:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2528:	eb dc                	jmp    2506 <rio_readlineb+0x7b>
    252a:	e8 31 e9 ff ff       	callq  e60 <__stack_chk_fail@plt>

000000000000252f <urlencode>:
    252f:	41 54                	push   %r12
    2531:	55                   	push   %rbp
    2532:	53                   	push   %rbx
    2533:	48 83 ec 10          	sub    $0x10,%rsp
    2537:	48 89 fb             	mov    %rdi,%rbx
    253a:	48 89 f5             	mov    %rsi,%rbp
    253d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2544:	00 00 
    2546:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    254b:	31 c0                	xor    %eax,%eax
    254d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2554:	f2 ae                	repnz scas %es:(%rdi),%al
    2556:	48 89 ce             	mov    %rcx,%rsi
    2559:	48 f7 d6             	not    %rsi
    255c:	8d 46 ff             	lea    -0x1(%rsi),%eax
    255f:	eb 0f                	jmp    2570 <urlencode+0x41>
    2561:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2565:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2569:	48 83 c3 01          	add    $0x1,%rbx
    256d:	44 89 e0             	mov    %r12d,%eax
    2570:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2574:	85 c0                	test   %eax,%eax
    2576:	0f 84 a8 00 00 00    	je     2624 <urlencode+0xf5>
    257c:	44 0f b6 03          	movzbl (%rbx),%r8d
    2580:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2584:	0f 94 c2             	sete   %dl
    2587:	41 80 f8 2d          	cmp    $0x2d,%r8b
    258b:	0f 94 c0             	sete   %al
    258e:	08 c2                	or     %al,%dl
    2590:	75 cf                	jne    2561 <urlencode+0x32>
    2592:	41 80 f8 2e          	cmp    $0x2e,%r8b
    2596:	74 c9                	je     2561 <urlencode+0x32>
    2598:	41 80 f8 5f          	cmp    $0x5f,%r8b
    259c:	74 c3                	je     2561 <urlencode+0x32>
    259e:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    25a2:	3c 09                	cmp    $0x9,%al
    25a4:	76 bb                	jbe    2561 <urlencode+0x32>
    25a6:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    25aa:	3c 19                	cmp    $0x19,%al
    25ac:	76 b3                	jbe    2561 <urlencode+0x32>
    25ae:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    25b2:	3c 19                	cmp    $0x19,%al
    25b4:	76 ab                	jbe    2561 <urlencode+0x32>
    25b6:	41 80 f8 20          	cmp    $0x20,%r8b
    25ba:	74 56                	je     2612 <urlencode+0xe3>
    25bc:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    25c0:	3c 5f                	cmp    $0x5f,%al
    25c2:	0f 96 c2             	setbe  %dl
    25c5:	41 80 f8 09          	cmp    $0x9,%r8b
    25c9:	0f 94 c0             	sete   %al
    25cc:	08 c2                	or     %al,%dl
    25ce:	74 4f                	je     261f <urlencode+0xf0>
    25d0:	48 89 e7             	mov    %rsp,%rdi
    25d3:	45 0f b6 c0          	movzbl %r8b,%r8d
    25d7:	48 8d 0d fa 12 00 00 	lea    0x12fa(%rip),%rcx        # 38d8 <trans_char+0xa8>
    25de:	ba 08 00 00 00       	mov    $0x8,%edx
    25e3:	be 01 00 00 00       	mov    $0x1,%esi
    25e8:	b8 00 00 00 00       	mov    $0x0,%eax
    25ed:	e8 ee e9 ff ff       	callq  fe0 <__sprintf_chk@plt>
    25f2:	0f b6 04 24          	movzbl (%rsp),%eax
    25f6:	88 45 00             	mov    %al,0x0(%rbp)
    25f9:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    25fe:	88 45 01             	mov    %al,0x1(%rbp)
    2601:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    2606:	88 45 02             	mov    %al,0x2(%rbp)
    2609:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    260d:	e9 57 ff ff ff       	jmpq   2569 <urlencode+0x3a>
    2612:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2616:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    261a:	e9 4a ff ff ff       	jmpq   2569 <urlencode+0x3a>
    261f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2624:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    2629:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2630:	00 00 
    2632:	75 09                	jne    263d <urlencode+0x10e>
    2634:	48 83 c4 10          	add    $0x10,%rsp
    2638:	5b                   	pop    %rbx
    2639:	5d                   	pop    %rbp
    263a:	41 5c                	pop    %r12
    263c:	c3                   	retq   
    263d:	e8 1e e8 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002642 <submitr>:
    2642:	41 57                	push   %r15
    2644:	41 56                	push   %r14
    2646:	41 55                	push   %r13
    2648:	41 54                	push   %r12
    264a:	55                   	push   %rbp
    264b:	53                   	push   %rbx
    264c:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    2653:	49 89 fd             	mov    %rdi,%r13
    2656:	89 74 24 14          	mov    %esi,0x14(%rsp)
    265a:	49 89 d7             	mov    %rdx,%r15
    265d:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    2662:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2667:	4d 89 ce             	mov    %r9,%r14
    266a:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    2671:	00 
    2672:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2679:	00 00 
    267b:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    2682:	00 
    2683:	31 c0                	xor    %eax,%eax
    2685:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    268c:	00 
    268d:	ba 00 00 00 00       	mov    $0x0,%edx
    2692:	be 01 00 00 00       	mov    $0x1,%esi
    2697:	bf 02 00 00 00       	mov    $0x2,%edi
    269c:	e8 4f e9 ff ff       	callq  ff0 <socket@plt>
    26a1:	85 c0                	test   %eax,%eax
    26a3:	0f 88 a9 02 00 00    	js     2952 <submitr+0x310>
    26a9:	89 c3                	mov    %eax,%ebx
    26ab:	4c 89 ef             	mov    %r13,%rdi
    26ae:	e8 1d e8 ff ff       	callq  ed0 <gethostbyname@plt>
    26b3:	48 85 c0             	test   %rax,%rax
    26b6:	0f 84 e2 02 00 00    	je     299e <submitr+0x35c>
    26bc:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    26c1:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    26c8:	00 00 
    26ca:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    26d1:	00 
    26d2:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    26d9:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    26e0:	48 63 50 14          	movslq 0x14(%rax),%rdx
    26e4:	48 8b 40 18          	mov    0x18(%rax),%rax
    26e8:	48 8b 30             	mov    (%rax),%rsi
    26eb:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    26f0:	b9 0c 00 00 00       	mov    $0xc,%ecx
    26f5:	e8 e6 e7 ff ff       	callq  ee0 <__memmove_chk@plt>
    26fa:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
    26ff:	66 c1 c8 08          	ror    $0x8,%ax
    2703:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    2708:	ba 10 00 00 00       	mov    $0x10,%edx
    270d:	4c 89 e6             	mov    %r12,%rsi
    2710:	89 df                	mov    %ebx,%edi
    2712:	e8 a9 e8 ff ff       	callq  fc0 <connect@plt>
    2717:	85 c0                	test   %eax,%eax
    2719:	0f 88 e7 02 00 00    	js     2a06 <submitr+0x3c4>
    271f:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2726:	b8 00 00 00 00       	mov    $0x0,%eax
    272b:	48 89 f1             	mov    %rsi,%rcx
    272e:	4c 89 f7             	mov    %r14,%rdi
    2731:	f2 ae                	repnz scas %es:(%rdi),%al
    2733:	48 89 ca             	mov    %rcx,%rdx
    2736:	48 f7 d2             	not    %rdx
    2739:	48 89 f1             	mov    %rsi,%rcx
    273c:	4c 89 ff             	mov    %r15,%rdi
    273f:	f2 ae                	repnz scas %es:(%rdi),%al
    2741:	48 f7 d1             	not    %rcx
    2744:	49 89 c8             	mov    %rcx,%r8
    2747:	48 89 f1             	mov    %rsi,%rcx
    274a:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    274f:	f2 ae                	repnz scas %es:(%rdi),%al
    2751:	48 f7 d1             	not    %rcx
    2754:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    2759:	48 89 f1             	mov    %rsi,%rcx
    275c:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2761:	f2 ae                	repnz scas %es:(%rdi),%al
    2763:	48 89 c8             	mov    %rcx,%rax
    2766:	48 f7 d0             	not    %rax
    2769:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    276e:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    2773:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    277a:	00 
    277b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2781:	0f 87 d9 02 00 00    	ja     2a60 <submitr+0x41e>
    2787:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    278e:	00 
    278f:	b9 00 04 00 00       	mov    $0x400,%ecx
    2794:	b8 00 00 00 00       	mov    $0x0,%eax
    2799:	48 89 f7             	mov    %rsi,%rdi
    279c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    279f:	4c 89 f7             	mov    %r14,%rdi
    27a2:	e8 88 fd ff ff       	callq  252f <urlencode>
    27a7:	85 c0                	test   %eax,%eax
    27a9:	0f 88 24 03 00 00    	js     2ad3 <submitr+0x491>
    27af:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    27b6:	00 
    27b7:	41 55                	push   %r13
    27b9:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    27c0:	00 
    27c1:	50                   	push   %rax
    27c2:	4d 89 f9             	mov    %r15,%r9
    27c5:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    27ca:	48 8d 0d 97 10 00 00 	lea    0x1097(%rip),%rcx        # 3868 <trans_char+0x38>
    27d1:	ba 00 20 00 00       	mov    $0x2000,%edx
    27d6:	be 01 00 00 00       	mov    $0x1,%esi
    27db:	4c 89 e7             	mov    %r12,%rdi
    27de:	b8 00 00 00 00       	mov    $0x0,%eax
    27e3:	e8 f8 e7 ff ff       	callq  fe0 <__sprintf_chk@plt>
    27e8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    27ef:	b8 00 00 00 00       	mov    $0x0,%eax
    27f4:	4c 89 e7             	mov    %r12,%rdi
    27f7:	f2 ae                	repnz scas %es:(%rdi),%al
    27f9:	48 89 ca             	mov    %rcx,%rdx
    27fc:	48 f7 d2             	not    %rdx
    27ff:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    2803:	4c 89 e6             	mov    %r12,%rsi
    2806:	89 df                	mov    %ebx,%edi
    2808:	e8 95 fb ff ff       	callq  23a2 <rio_writen>
    280d:	48 83 c4 10          	add    $0x10,%rsp
    2811:	48 85 c0             	test   %rax,%rax
    2814:	0f 88 44 03 00 00    	js     2b5e <submitr+0x51c>
    281a:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    281f:	89 de                	mov    %ebx,%esi
    2821:	4c 89 e7             	mov    %r12,%rdi
    2824:	e8 37 fb ff ff       	callq  2360 <rio_readinitb>
    2829:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2830:	00 
    2831:	ba 00 20 00 00       	mov    $0x2000,%edx
    2836:	4c 89 e7             	mov    %r12,%rdi
    2839:	e8 4d fc ff ff       	callq  248b <rio_readlineb>
    283e:	48 85 c0             	test   %rax,%rax
    2841:	0f 8e 86 03 00 00    	jle    2bcd <submitr+0x58b>
    2847:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    284c:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2853:	00 
    2854:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    285b:	00 
    285c:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2863:	00 
    2864:	48 8d 35 74 10 00 00 	lea    0x1074(%rip),%rsi        # 38df <trans_char+0xaf>
    286b:	b8 00 00 00 00       	mov    $0x0,%eax
    2870:	e8 cb e6 ff ff       	callq  f40 <__isoc99_sscanf@plt>
    2875:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    287c:	00 
    287d:	b9 03 00 00 00       	mov    $0x3,%ecx
    2882:	48 8d 3d 6d 10 00 00 	lea    0x106d(%rip),%rdi        # 38f6 <trans_char+0xc6>
    2889:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    288b:	0f 97 c0             	seta   %al
    288e:	1c 00                	sbb    $0x0,%al
    2890:	84 c0                	test   %al,%al
    2892:	0f 84 b3 03 00 00    	je     2c4b <submitr+0x609>
    2898:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    289f:	00 
    28a0:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    28a5:	ba 00 20 00 00       	mov    $0x2000,%edx
    28aa:	e8 dc fb ff ff       	callq  248b <rio_readlineb>
    28af:	48 85 c0             	test   %rax,%rax
    28b2:	7f c1                	jg     2875 <submitr+0x233>
    28b4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28bb:	3a 20 43 
    28be:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28c5:	20 75 6e 
    28c8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28cc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28d0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28d7:	74 6f 20 
    28da:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    28e1:	68 65 61 
    28e4:	48 89 45 10          	mov    %rax,0x10(%rbp)
    28e8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    28ec:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    28f3:	66 72 6f 
    28f6:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
    28fd:	20 72 65 
    2900:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2904:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2908:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
    290f:	73 65 72 
    2912:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2916:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
    291d:	89 df                	mov    %ebx,%edi
    291f:	e8 7c e5 ff ff       	callq  ea0 <close@plt>
    2924:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2929:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    2930:	00 
    2931:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2938:	00 00 
    293a:	0f 85 7e 04 00 00    	jne    2dbe <submitr+0x77c>
    2940:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2947:	5b                   	pop    %rbx
    2948:	5d                   	pop    %rbp
    2949:	41 5c                	pop    %r12
    294b:	41 5d                	pop    %r13
    294d:	41 5e                	pop    %r14
    294f:	41 5f                	pop    %r15
    2951:	c3                   	retq   
    2952:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2959:	3a 20 43 
    295c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2963:	20 75 6e 
    2966:	48 89 45 00          	mov    %rax,0x0(%rbp)
    296a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    296e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2975:	74 6f 20 
    2978:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    297f:	65 20 73 
    2982:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2986:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    298a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2991:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2997:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    299c:	eb 8b                	jmp    2929 <submitr+0x2e7>
    299e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    29a5:	3a 20 44 
    29a8:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    29af:	20 75 6e 
    29b2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29b6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29ba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29c1:	74 6f 20 
    29c4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    29cb:	76 65 20 
    29ce:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29d2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29d6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    29dd:	72 20 61 
    29e0:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29e4:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    29eb:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    29f1:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    29f5:	89 df                	mov    %ebx,%edi
    29f7:	e8 a4 e4 ff ff       	callq  ea0 <close@plt>
    29fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a01:	e9 23 ff ff ff       	jmpq   2929 <submitr+0x2e7>
    2a06:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2a0d:	3a 20 55 
    2a10:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2a17:	20 74 6f 
    2a1a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a1e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a22:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2a29:	65 63 74 
    2a2c:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2a33:	68 65 20 
    2a36:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a3a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a3e:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
    2a45:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
    2a4b:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
    2a4f:	89 df                	mov    %ebx,%edi
    2a51:	e8 4a e4 ff ff       	callq  ea0 <close@plt>
    2a56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a5b:	e9 c9 fe ff ff       	jmpq   2929 <submitr+0x2e7>
    2a60:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a67:	3a 20 52 
    2a6a:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2a71:	20 73 74 
    2a74:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a78:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a7c:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2a83:	74 6f 6f 
    2a86:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2a8d:	65 2e 20 
    2a90:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a94:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a98:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2a9f:	61 73 65 
    2aa2:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2aa9:	49 54 52 
    2aac:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ab0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2ab4:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2abb:	55 46 00 
    2abe:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2ac2:	89 df                	mov    %ebx,%edi
    2ac4:	e8 d7 e3 ff ff       	callq  ea0 <close@plt>
    2ac9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ace:	e9 56 fe ff ff       	jmpq   2929 <submitr+0x2e7>
    2ad3:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2ada:	3a 20 52 
    2add:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2ae4:	20 73 74 
    2ae7:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2aeb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2aef:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2af6:	63 6f 6e 
    2af9:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b00:	20 61 6e 
    2b03:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b07:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b0b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b12:	67 61 6c 
    2b15:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b1c:	6e 70 72 
    2b1f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b23:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b27:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b2e:	6c 65 20 
    2b31:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b38:	63 74 65 
    2b3b:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b3f:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2b43:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b49:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b4d:	89 df                	mov    %ebx,%edi
    2b4f:	e8 4c e3 ff ff       	callq  ea0 <close@plt>
    2b54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b59:	e9 cb fd ff ff       	jmpq   2929 <submitr+0x2e7>
    2b5e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b65:	3a 20 43 
    2b68:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b6f:	20 75 6e 
    2b72:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b76:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b7a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b81:	74 6f 20 
    2b84:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2b8b:	20 74 6f 
    2b8e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b92:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b96:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
    2b9d:	72 65 73 
    2ba0:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
    2ba7:	65 72 76 
    2baa:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2bae:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2bb2:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
    2bb8:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
    2bbc:	89 df                	mov    %ebx,%edi
    2bbe:	e8 dd e2 ff ff       	callq  ea0 <close@plt>
    2bc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bc8:	e9 5c fd ff ff       	jmpq   2929 <submitr+0x2e7>
    2bcd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2bd4:	3a 20 43 
    2bd7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2bde:	20 75 6e 
    2be1:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2be5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2be9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bf0:	74 6f 20 
    2bf3:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2bfa:	66 69 72 
    2bfd:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c01:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c05:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c0c:	61 64 65 
    2c0f:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
    2c16:	6d 20 72 
    2c19:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c1d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c21:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
    2c28:	20 73 65 
    2c2b:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c2f:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
    2c36:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
    2c3a:	89 df                	mov    %ebx,%edi
    2c3c:	e8 5f e2 ff ff       	callq  ea0 <close@plt>
    2c41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c46:	e9 de fc ff ff       	jmpq   2929 <submitr+0x2e7>
    2c4b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2c52:	00 
    2c53:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2c58:	ba 00 20 00 00       	mov    $0x2000,%edx
    2c5d:	e8 29 f8 ff ff       	callq  248b <rio_readlineb>
    2c62:	48 85 c0             	test   %rax,%rax
    2c65:	0f 8e 96 00 00 00    	jle    2d01 <submitr+0x6bf>
    2c6b:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2c70:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2c77:	0f 85 08 01 00 00    	jne    2d85 <submitr+0x743>
    2c7d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2c84:	00 
    2c85:	48 89 ef             	mov    %rbp,%rdi
    2c88:	e8 a3 e1 ff ff       	callq  e30 <strcpy@plt>
    2c8d:	89 df                	mov    %ebx,%edi
    2c8f:	e8 0c e2 ff ff       	callq  ea0 <close@plt>
    2c94:	b9 04 00 00 00       	mov    $0x4,%ecx
    2c99:	48 8d 3d 50 0c 00 00 	lea    0xc50(%rip),%rdi        # 38f0 <trans_char+0xc0>
    2ca0:	48 89 ee             	mov    %rbp,%rsi
    2ca3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2ca5:	0f 97 c0             	seta   %al
    2ca8:	1c 00                	sbb    $0x0,%al
    2caa:	0f be c0             	movsbl %al,%eax
    2cad:	85 c0                	test   %eax,%eax
    2caf:	0f 84 74 fc ff ff    	je     2929 <submitr+0x2e7>
    2cb5:	b9 05 00 00 00       	mov    $0x5,%ecx
    2cba:	48 8d 3d 33 0c 00 00 	lea    0xc33(%rip),%rdi        # 38f4 <trans_char+0xc4>
    2cc1:	48 89 ee             	mov    %rbp,%rsi
    2cc4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2cc6:	0f 97 c0             	seta   %al
    2cc9:	1c 00                	sbb    $0x0,%al
    2ccb:	0f be c0             	movsbl %al,%eax
    2cce:	85 c0                	test   %eax,%eax
    2cd0:	0f 84 53 fc ff ff    	je     2929 <submitr+0x2e7>
    2cd6:	b9 03 00 00 00       	mov    $0x3,%ecx
    2cdb:	48 8d 3d 17 0c 00 00 	lea    0xc17(%rip),%rdi        # 38f9 <trans_char+0xc9>
    2ce2:	48 89 ee             	mov    %rbp,%rsi
    2ce5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2ce7:	0f 97 c0             	seta   %al
    2cea:	1c 00                	sbb    $0x0,%al
    2cec:	0f be c0             	movsbl %al,%eax
    2cef:	85 c0                	test   %eax,%eax
    2cf1:	0f 84 32 fc ff ff    	je     2929 <submitr+0x2e7>
    2cf7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cfc:	e9 28 fc ff ff       	jmpq   2929 <submitr+0x2e7>
    2d01:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d08:	3a 20 43 
    2d0b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d12:	20 75 6e 
    2d15:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d19:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d1d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d24:	74 6f 20 
    2d27:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d2e:	73 74 61 
    2d31:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d35:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d39:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2d40:	65 73 73 
    2d43:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2d4a:	72 6f 6d 
    2d4d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d51:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d55:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
    2d5c:	6c 74 20 
    2d5f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2d63:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
    2d6a:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
    2d70:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
    2d74:	89 df                	mov    %ebx,%edi
    2d76:	e8 25 e1 ff ff       	callq  ea0 <close@plt>
    2d7b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d80:	e9 a4 fb ff ff       	jmpq   2929 <submitr+0x2e7>
    2d85:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2d8c:	00 
    2d8d:	48 8d 0d 14 0b 00 00 	lea    0xb14(%rip),%rcx        # 38a8 <trans_char+0x78>
    2d94:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2d9b:	be 01 00 00 00       	mov    $0x1,%esi
    2da0:	48 89 ef             	mov    %rbp,%rdi
    2da3:	b8 00 00 00 00       	mov    $0x0,%eax
    2da8:	e8 33 e2 ff ff       	callq  fe0 <__sprintf_chk@plt>
    2dad:	89 df                	mov    %ebx,%edi
    2daf:	e8 ec e0 ff ff       	callq  ea0 <close@plt>
    2db4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2db9:	e9 6b fb ff ff       	jmpq   2929 <submitr+0x2e7>
    2dbe:	e8 9d e0 ff ff       	callq  e60 <__stack_chk_fail@plt>

0000000000002dc3 <init_timeout>:
    2dc3:	85 ff                	test   %edi,%edi
    2dc5:	74 28                	je     2def <init_timeout+0x2c>
    2dc7:	53                   	push   %rbx
    2dc8:	89 fb                	mov    %edi,%ebx
    2dca:	85 ff                	test   %edi,%edi
    2dcc:	78 1a                	js     2de8 <init_timeout+0x25>
    2dce:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 2372 <sigalrm_handler>
    2dd5:	bf 0e 00 00 00       	mov    $0xe,%edi
    2dda:	e8 e1 e0 ff ff       	callq  ec0 <signal@plt>
    2ddf:	89 df                	mov    %ebx,%edi
    2de1:	e8 aa e0 ff ff       	callq  e90 <alarm@plt>
    2de6:	5b                   	pop    %rbx
    2de7:	c3                   	retq   
    2de8:	bb 00 00 00 00       	mov    $0x0,%ebx
    2ded:	eb df                	jmp    2dce <init_timeout+0xb>
    2def:	f3 c3                	repz retq 

0000000000002df1 <init_driver>:
    2df1:	41 54                	push   %r12
    2df3:	55                   	push   %rbp
    2df4:	53                   	push   %rbx
    2df5:	48 83 ec 20          	sub    $0x20,%rsp
    2df9:	49 89 fc             	mov    %rdi,%r12
    2dfc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e03:	00 00 
    2e05:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e0a:	31 c0                	xor    %eax,%eax
    2e0c:	be 01 00 00 00       	mov    $0x1,%esi
    2e11:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e16:	e8 a5 e0 ff ff       	callq  ec0 <signal@plt>
    2e1b:	be 01 00 00 00       	mov    $0x1,%esi
    2e20:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e25:	e8 96 e0 ff ff       	callq  ec0 <signal@plt>
    2e2a:	be 01 00 00 00       	mov    $0x1,%esi
    2e2f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e34:	e8 87 e0 ff ff       	callq  ec0 <signal@plt>
    2e39:	ba 00 00 00 00       	mov    $0x0,%edx
    2e3e:	be 01 00 00 00       	mov    $0x1,%esi
    2e43:	bf 02 00 00 00       	mov    $0x2,%edi
    2e48:	e8 a3 e1 ff ff       	callq  ff0 <socket@plt>
    2e4d:	85 c0                	test   %eax,%eax
    2e4f:	0f 88 a3 00 00 00    	js     2ef8 <init_driver+0x107>
    2e55:	89 c3                	mov    %eax,%ebx
    2e57:	48 8d 3d 9e 0a 00 00 	lea    0xa9e(%rip),%rdi        # 38fc <trans_char+0xcc>
    2e5e:	e8 6d e0 ff ff       	callq  ed0 <gethostbyname@plt>
    2e63:	48 85 c0             	test   %rax,%rax
    2e66:	0f 84 df 00 00 00    	je     2f4b <init_driver+0x15a>
    2e6c:	48 89 e5             	mov    %rsp,%rbp
    2e6f:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2e76:	00 00 
    2e78:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2e7f:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2e85:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2e8b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2e8f:	48 8b 40 18          	mov    0x18(%rax),%rax
    2e93:	48 8b 30             	mov    (%rax),%rsi
    2e96:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2e9a:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2e9f:	e8 3c e0 ff ff       	callq  ee0 <__memmove_chk@plt>
    2ea4:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
    2eab:	ba 10 00 00 00       	mov    $0x10,%edx
    2eb0:	48 89 ee             	mov    %rbp,%rsi
    2eb3:	89 df                	mov    %ebx,%edi
    2eb5:	e8 06 e1 ff ff       	callq  fc0 <connect@plt>
    2eba:	85 c0                	test   %eax,%eax
    2ebc:	0f 88 fb 00 00 00    	js     2fbd <init_driver+0x1cc>
    2ec2:	89 df                	mov    %ebx,%edi
    2ec4:	e8 d7 df ff ff       	callq  ea0 <close@plt>
    2ec9:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2ed0:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2ed6:	b8 00 00 00 00       	mov    $0x0,%eax
    2edb:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2ee0:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2ee7:	00 00 
    2ee9:	0f 85 28 01 00 00    	jne    3017 <init_driver+0x226>
    2eef:	48 83 c4 20          	add    $0x20,%rsp
    2ef3:	5b                   	pop    %rbx
    2ef4:	5d                   	pop    %rbp
    2ef5:	41 5c                	pop    %r12
    2ef7:	c3                   	retq   
    2ef8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2eff:	3a 20 43 
    2f02:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f09:	20 75 6e 
    2f0c:	49 89 04 24          	mov    %rax,(%r12)
    2f10:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2f15:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f1c:	74 6f 20 
    2f1f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2f26:	65 20 73 
    2f29:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2f2e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2f33:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2f3a:	6b 65 
    2f3c:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2f43:	00 
    2f44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f49:	eb 90                	jmp    2edb <init_driver+0xea>
    2f4b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2f52:	3a 20 44 
    2f55:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2f5c:	20 75 6e 
    2f5f:	49 89 04 24          	mov    %rax,(%r12)
    2f63:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2f68:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f6f:	74 6f 20 
    2f72:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2f79:	76 65 20 
    2f7c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2f81:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2f86:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2f8d:	72 20 61 
    2f90:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2f95:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2f9c:	72 65 
    2f9e:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2fa5:	73 
    2fa6:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2fac:	89 df                	mov    %ebx,%edi
    2fae:	e8 ed de ff ff       	callq  ea0 <close@plt>
    2fb3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fb8:	e9 1e ff ff ff       	jmpq   2edb <init_driver+0xea>
    2fbd:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2fc4:	3a 20 55 
    2fc7:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2fce:	20 74 6f 
    2fd1:	49 89 04 24          	mov    %rax,(%r12)
    2fd5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2fda:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2fe1:	65 63 74 
    2fe4:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2feb:	65 72 76 
    2fee:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2ff3:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2ff8:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2fff:	72 
    3000:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    3006:	89 df                	mov    %ebx,%edi
    3008:	e8 93 de ff ff       	callq  ea0 <close@plt>
    300d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3012:	e9 c4 fe ff ff       	jmpq   2edb <init_driver+0xea>
    3017:	e8 44 de ff ff       	callq  e60 <__stack_chk_fail@plt>

000000000000301c <driver_post>:
    301c:	53                   	push   %rbx
    301d:	4c 89 cb             	mov    %r9,%rbx
    3020:	45 85 c0             	test   %r8d,%r8d
    3023:	75 18                	jne    303d <driver_post+0x21>
    3025:	48 85 ff             	test   %rdi,%rdi
    3028:	74 05                	je     302f <driver_post+0x13>
    302a:	80 3f 00             	cmpb   $0x0,(%rdi)
    302d:	75 37                	jne    3066 <driver_post+0x4a>
    302f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3034:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3038:	44 89 c0             	mov    %r8d,%eax
    303b:	5b                   	pop    %rbx
    303c:	c3                   	retq   
    303d:	48 89 ca             	mov    %rcx,%rdx
    3040:	48 8d 35 c5 08 00 00 	lea    0x8c5(%rip),%rsi        # 390c <trans_char+0xdc>
    3047:	bf 01 00 00 00       	mov    $0x1,%edi
    304c:	b8 00 00 00 00       	mov    $0x0,%eax
    3051:	e8 0a df ff ff       	callq  f60 <__printf_chk@plt>
    3056:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    305b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    305f:	b8 00 00 00 00       	mov    $0x0,%eax
    3064:	eb d5                	jmp    303b <driver_post+0x1f>
    3066:	48 83 ec 08          	sub    $0x8,%rsp
    306a:	41 51                	push   %r9
    306c:	49 89 c9             	mov    %rcx,%r9
    306f:	49 89 d0             	mov    %rdx,%r8
    3072:	48 89 f9             	mov    %rdi,%rcx
    3075:	48 89 f2             	mov    %rsi,%rdx
    3078:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
    307d:	48 8d 3d 78 08 00 00 	lea    0x878(%rip),%rdi        # 38fc <trans_char+0xcc>
    3084:	e8 b9 f5 ff ff       	callq  2642 <submitr>
    3089:	48 83 c4 10          	add    $0x10,%rsp
    308d:	eb ac                	jmp    303b <driver_post+0x1f>

000000000000308f <check>:
    308f:	89 f8                	mov    %edi,%eax
    3091:	c1 e8 1c             	shr    $0x1c,%eax
    3094:	85 c0                	test   %eax,%eax
    3096:	74 1d                	je     30b5 <check+0x26>
    3098:	b9 00 00 00 00       	mov    $0x0,%ecx
    309d:	83 f9 1f             	cmp    $0x1f,%ecx
    30a0:	7f 0d                	jg     30af <check+0x20>
    30a2:	89 f8                	mov    %edi,%eax
    30a4:	d3 e8                	shr    %cl,%eax
    30a6:	3c 0a                	cmp    $0xa,%al
    30a8:	74 11                	je     30bb <check+0x2c>
    30aa:	83 c1 08             	add    $0x8,%ecx
    30ad:	eb ee                	jmp    309d <check+0xe>
    30af:	b8 01 00 00 00       	mov    $0x1,%eax
    30b4:	c3                   	retq   
    30b5:	b8 00 00 00 00       	mov    $0x0,%eax
    30ba:	c3                   	retq   
    30bb:	b8 00 00 00 00       	mov    $0x0,%eax
    30c0:	c3                   	retq   

00000000000030c1 <gencookie>:
    30c1:	53                   	push   %rbx
    30c2:	83 c7 01             	add    $0x1,%edi
    30c5:	e8 46 dd ff ff       	callq  e10 <srandom@plt>
    30ca:	e8 51 de ff ff       	callq  f20 <random@plt>
    30cf:	89 c3                	mov    %eax,%ebx
    30d1:	89 c7                	mov    %eax,%edi
    30d3:	e8 b7 ff ff ff       	callq  308f <check>
    30d8:	85 c0                	test   %eax,%eax
    30da:	74 ee                	je     30ca <gencookie+0x9>
    30dc:	89 d8                	mov    %ebx,%eax
    30de:	5b                   	pop    %rbx
    30df:	c3                   	retq   

00000000000030e0 <__libc_csu_init>:
    30e0:	41 57                	push   %r15
    30e2:	41 56                	push   %r14
    30e4:	49 89 d7             	mov    %rdx,%r15
    30e7:	41 55                	push   %r13
    30e9:	41 54                	push   %r12
    30eb:	4c 8d 25 c6 1b 20 00 	lea    0x201bc6(%rip),%r12        # 204cb8 <__frame_dummy_init_array_entry>
    30f2:	55                   	push   %rbp
    30f3:	48 8d 2d c6 1b 20 00 	lea    0x201bc6(%rip),%rbp        # 204cc0 <__init_array_end>
    30fa:	53                   	push   %rbx
    30fb:	41 89 fd             	mov    %edi,%r13d
    30fe:	49 89 f6             	mov    %rsi,%r14
    3101:	4c 29 e5             	sub    %r12,%rbp
    3104:	48 83 ec 08          	sub    $0x8,%rsp
    3108:	48 c1 fd 03          	sar    $0x3,%rbp
    310c:	e8 b7 dc ff ff       	callq  dc8 <_init>
    3111:	48 85 ed             	test   %rbp,%rbp
    3114:	74 20                	je     3136 <__libc_csu_init+0x56>
    3116:	31 db                	xor    %ebx,%ebx
    3118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    311f:	00 
    3120:	4c 89 fa             	mov    %r15,%rdx
    3123:	4c 89 f6             	mov    %r14,%rsi
    3126:	44 89 ef             	mov    %r13d,%edi
    3129:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    312d:	48 83 c3 01          	add    $0x1,%rbx
    3131:	48 39 dd             	cmp    %rbx,%rbp
    3134:	75 ea                	jne    3120 <__libc_csu_init+0x40>
    3136:	48 83 c4 08          	add    $0x8,%rsp
    313a:	5b                   	pop    %rbx
    313b:	5d                   	pop    %rbp
    313c:	41 5c                	pop    %r12
    313e:	41 5d                	pop    %r13
    3140:	41 5e                	pop    %r14
    3142:	41 5f                	pop    %r15
    3144:	c3                   	retq   
    3145:	90                   	nop
    3146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    314d:	00 00 00 

0000000000003150 <__libc_csu_fini>:
    3150:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000003154 <_fini>:
    3154:	48 83 ec 08          	sub    $0x8,%rsp
    3158:	48 83 c4 08          	add    $0x8,%rsp
    315c:	c3                   	retq   
