
./bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000e00 <_init>:
 e00:	48 83 ec 08          	sub    $0x8,%rsp
 e04:	48 8b 05 dd 31 20 00 	mov    0x2031dd(%rip),%rax        # 203fe8 <__gmon_start__>
 e0b:	48 85 c0             	test   %rax,%rax
 e0e:	74 02                	je     e12 <_init+0x12>
 e10:	ff d0                	callq  *%rax
 e12:	48 83 c4 08          	add    $0x8,%rsp
 e16:	c3                   	retq   

Disassembly of section .plt:

0000000000000e20 <.plt>:
 e20:	ff 35 ca 30 20 00    	pushq  0x2030ca(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
 e26:	ff 25 cc 30 20 00    	jmpq   *0x2030cc(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
 e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000e30 <getenv@plt>:
 e30:	ff 25 ca 30 20 00    	jmpq   *0x2030ca(%rip)        # 203f00 <getenv@GLIBC_2.2.5>
 e36:	68 00 00 00 00       	pushq  $0x0
 e3b:	e9 e0 ff ff ff       	jmpq   e20 <.plt>

0000000000000e40 <strcasecmp@plt>:
 e40:	ff 25 c2 30 20 00    	jmpq   *0x2030c2(%rip)        # 203f08 <strcasecmp@GLIBC_2.2.5>
 e46:	68 01 00 00 00       	pushq  $0x1
 e4b:	e9 d0 ff ff ff       	jmpq   e20 <.plt>

0000000000000e50 <__errno_location@plt>:
 e50:	ff 25 ba 30 20 00    	jmpq   *0x2030ba(%rip)        # 203f10 <__errno_location@GLIBC_2.2.5>
 e56:	68 02 00 00 00       	pushq  $0x2
 e5b:	e9 c0 ff ff ff       	jmpq   e20 <.plt>

0000000000000e60 <strcpy@plt>:
 e60:	ff 25 b2 30 20 00    	jmpq   *0x2030b2(%rip)        # 203f18 <strcpy@GLIBC_2.2.5>
 e66:	68 03 00 00 00       	pushq  $0x3
 e6b:	e9 b0 ff ff ff       	jmpq   e20 <.plt>

0000000000000e70 <puts@plt>:
 e70:	ff 25 aa 30 20 00    	jmpq   *0x2030aa(%rip)        # 203f20 <puts@GLIBC_2.2.5>
 e76:	68 04 00 00 00       	pushq  $0x4
 e7b:	e9 a0 ff ff ff       	jmpq   e20 <.plt>

0000000000000e80 <write@plt>:
 e80:	ff 25 a2 30 20 00    	jmpq   *0x2030a2(%rip)        # 203f28 <write@GLIBC_2.2.5>
 e86:	68 05 00 00 00       	pushq  $0x5
 e8b:	e9 90 ff ff ff       	jmpq   e20 <.plt>

0000000000000e90 <__stack_chk_fail@plt>:
 e90:	ff 25 9a 30 20 00    	jmpq   *0x20309a(%rip)        # 203f30 <__stack_chk_fail@GLIBC_2.4>
 e96:	68 06 00 00 00       	pushq  $0x6
 e9b:	e9 80 ff ff ff       	jmpq   e20 <.plt>

0000000000000ea0 <alarm@plt>:
 ea0:	ff 25 92 30 20 00    	jmpq   *0x203092(%rip)        # 203f38 <alarm@GLIBC_2.2.5>
 ea6:	68 07 00 00 00       	pushq  $0x7
 eab:	e9 70 ff ff ff       	jmpq   e20 <.plt>

0000000000000eb0 <close@plt>:
 eb0:	ff 25 8a 30 20 00    	jmpq   *0x20308a(%rip)        # 203f40 <close@GLIBC_2.2.5>
 eb6:	68 08 00 00 00       	pushq  $0x8
 ebb:	e9 60 ff ff ff       	jmpq   e20 <.plt>

0000000000000ec0 <read@plt>:
 ec0:	ff 25 82 30 20 00    	jmpq   *0x203082(%rip)        # 203f48 <read@GLIBC_2.2.5>
 ec6:	68 09 00 00 00       	pushq  $0x9
 ecb:	e9 50 ff ff ff       	jmpq   e20 <.plt>

0000000000000ed0 <fgets@plt>:
 ed0:	ff 25 7a 30 20 00    	jmpq   *0x20307a(%rip)        # 203f50 <fgets@GLIBC_2.2.5>
 ed6:	68 0a 00 00 00       	pushq  $0xa
 edb:	e9 40 ff ff ff       	jmpq   e20 <.plt>

0000000000000ee0 <signal@plt>:
 ee0:	ff 25 72 30 20 00    	jmpq   *0x203072(%rip)        # 203f58 <signal@GLIBC_2.2.5>
 ee6:	68 0b 00 00 00       	pushq  $0xb
 eeb:	e9 30 ff ff ff       	jmpq   e20 <.plt>

0000000000000ef0 <gethostbyname@plt>:
 ef0:	ff 25 6a 30 20 00    	jmpq   *0x20306a(%rip)        # 203f60 <gethostbyname@GLIBC_2.2.5>
 ef6:	68 0c 00 00 00       	pushq  $0xc
 efb:	e9 20 ff ff ff       	jmpq   e20 <.plt>

0000000000000f00 <__memmove_chk@plt>:
 f00:	ff 25 62 30 20 00    	jmpq   *0x203062(%rip)        # 203f68 <__memmove_chk@GLIBC_2.3.4>
 f06:	68 0d 00 00 00       	pushq  $0xd
 f0b:	e9 10 ff ff ff       	jmpq   e20 <.plt>

0000000000000f10 <strtol@plt>:
 f10:	ff 25 5a 30 20 00    	jmpq   *0x20305a(%rip)        # 203f70 <strtol@GLIBC_2.2.5>
 f16:	68 0e 00 00 00       	pushq  $0xe
 f1b:	e9 00 ff ff ff       	jmpq   e20 <.plt>

0000000000000f20 <fflush@plt>:
 f20:	ff 25 52 30 20 00    	jmpq   *0x203052(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
 f26:	68 0f 00 00 00       	pushq  $0xf
 f2b:	e9 f0 fe ff ff       	jmpq   e20 <.plt>

0000000000000f30 <__isoc99_sscanf@plt>:
 f30:	ff 25 4a 30 20 00    	jmpq   *0x20304a(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
 f36:	68 10 00 00 00       	pushq  $0x10
 f3b:	e9 e0 fe ff ff       	jmpq   e20 <.plt>

0000000000000f40 <__printf_chk@plt>:
 f40:	ff 25 42 30 20 00    	jmpq   *0x203042(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
 f46:	68 11 00 00 00       	pushq  $0x11
 f4b:	e9 d0 fe ff ff       	jmpq   e20 <.plt>

0000000000000f50 <fopen@plt>:
 f50:	ff 25 3a 30 20 00    	jmpq   *0x20303a(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
 f56:	68 12 00 00 00       	pushq  $0x12
 f5b:	e9 c0 fe ff ff       	jmpq   e20 <.plt>

0000000000000f60 <gethostname@plt>:
 f60:	ff 25 32 30 20 00    	jmpq   *0x203032(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
 f66:	68 13 00 00 00       	pushq  $0x13
 f6b:	e9 b0 fe ff ff       	jmpq   e20 <.plt>

0000000000000f70 <exit@plt>:
 f70:	ff 25 2a 30 20 00    	jmpq   *0x20302a(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
 f76:	68 14 00 00 00       	pushq  $0x14
 f7b:	e9 a0 fe ff ff       	jmpq   e20 <.plt>

0000000000000f80 <connect@plt>:
 f80:	ff 25 22 30 20 00    	jmpq   *0x203022(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
 f86:	68 15 00 00 00       	pushq  $0x15
 f8b:	e9 90 fe ff ff       	jmpq   e20 <.plt>

0000000000000f90 <__fprintf_chk@plt>:
 f90:	ff 25 1a 30 20 00    	jmpq   *0x20301a(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
 f96:	68 16 00 00 00       	pushq  $0x16
 f9b:	e9 80 fe ff ff       	jmpq   e20 <.plt>

0000000000000fa0 <sleep@plt>:
 fa0:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
 fa6:	68 17 00 00 00       	pushq  $0x17
 fab:	e9 70 fe ff ff       	jmpq   e20 <.plt>

0000000000000fb0 <__ctype_b_loc@plt>:
 fb0:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
 fb6:	68 18 00 00 00       	pushq  $0x18
 fbb:	e9 60 fe ff ff       	jmpq   e20 <.plt>

0000000000000fc0 <__sprintf_chk@plt>:
 fc0:	ff 25 02 30 20 00    	jmpq   *0x203002(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
 fc6:	68 19 00 00 00       	pushq  $0x19
 fcb:	e9 50 fe ff ff       	jmpq   e20 <.plt>

0000000000000fd0 <socket@plt>:
 fd0:	ff 25 fa 2f 20 00    	jmpq   *0x202ffa(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
 fd6:	68 1a 00 00 00       	pushq  $0x1a
 fdb:	e9 40 fe ff ff       	jmpq   e20 <.plt>

Disassembly of section .plt.got:

0000000000000fe0 <__cxa_finalize@plt>:
 fe0:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
 fe6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000ff0 <_start>:
     ff0:	31 ed                	xor    %ebp,%ebp
     ff2:	49 89 d1             	mov    %rdx,%r9
     ff5:	5e                   	pop    %rsi
     ff6:	48 89 e2             	mov    %rsp,%rdx
     ff9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     ffd:	50                   	push   %rax
     ffe:	54                   	push   %rsp
     fff:	4c 8d 05 7a 19 00 00 	lea    0x197a(%rip),%r8        # 2980 <__libc_csu_fini>
    1006:	48 8d 0d 03 19 00 00 	lea    0x1903(%rip),%rcx        # 2910 <__libc_csu_init>
    100d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 10fa <main>
    1014:	ff 15 c6 2f 20 00    	callq  *0x202fc6(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    101a:	f4                   	hlt    
    101b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001020 <deregister_tm_clones>:
    1020:	48 8d 3d 59 36 20 00 	lea    0x203659(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1027:	55                   	push   %rbp
    1028:	48 8d 05 51 36 20 00 	lea    0x203651(%rip),%rax        # 204680 <stdout@@GLIBC_2.2.5>
    102f:	48 39 f8             	cmp    %rdi,%rax
    1032:	48 89 e5             	mov    %rsp,%rbp
    1035:	74 19                	je     1050 <deregister_tm_clones+0x30>
    1037:	48 8b 05 9a 2f 20 00 	mov    0x202f9a(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    103e:	48 85 c0             	test   %rax,%rax
    1041:	74 0d                	je     1050 <deregister_tm_clones+0x30>
    1043:	5d                   	pop    %rbp
    1044:	ff e0                	jmpq   *%rax
    1046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    104d:	00 00 00 
    1050:	5d                   	pop    %rbp
    1051:	c3                   	retq   
    1052:	0f 1f 40 00          	nopl   0x0(%rax)
    1056:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    105d:	00 00 00 

0000000000001060 <register_tm_clones>:
    1060:	48 8d 3d 19 36 20 00 	lea    0x203619(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1067:	48 8d 35 12 36 20 00 	lea    0x203612(%rip),%rsi        # 204680 <stdout@@GLIBC_2.2.5>
    106e:	55                   	push   %rbp
    106f:	48 29 fe             	sub    %rdi,%rsi
    1072:	48 89 e5             	mov    %rsp,%rbp
    1075:	48 c1 fe 03          	sar    $0x3,%rsi
    1079:	48 89 f0             	mov    %rsi,%rax
    107c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1080:	48 01 c6             	add    %rax,%rsi
    1083:	48 d1 fe             	sar    %rsi
    1086:	74 18                	je     10a0 <register_tm_clones+0x40>
    1088:	48 8b 05 61 2f 20 00 	mov    0x202f61(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    108f:	48 85 c0             	test   %rax,%rax
    1092:	74 0c                	je     10a0 <register_tm_clones+0x40>
    1094:	5d                   	pop    %rbp
    1095:	ff e0                	jmpq   *%rax
    1097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    109e:	00 00 
    10a0:	5d                   	pop    %rbp
    10a1:	c3                   	retq   
    10a2:	0f 1f 40 00          	nopl   0x0(%rax)
    10a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <__do_global_dtors_aux>:
    10b0:	80 3d f1 35 20 00 00 	cmpb   $0x0,0x2035f1(%rip)        # 2046a8 <completed.7697>
    10b7:	75 2f                	jne    10e8 <__do_global_dtors_aux+0x38>
    10b9:	48 83 3d 37 2f 20 00 	cmpq   $0x0,0x202f37(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    10c0:	00 
    10c1:	55                   	push   %rbp
    10c2:	48 89 e5             	mov    %rsp,%rbp
    10c5:	74 0c                	je     10d3 <__do_global_dtors_aux+0x23>
    10c7:	48 8b 3d 3a 2f 20 00 	mov    0x202f3a(%rip),%rdi        # 204008 <__dso_handle>
    10ce:	e8 0d ff ff ff       	callq  fe0 <__cxa_finalize@plt>
    10d3:	e8 48 ff ff ff       	callq  1020 <deregister_tm_clones>
    10d8:	c6 05 c9 35 20 00 01 	movb   $0x1,0x2035c9(%rip)        # 2046a8 <completed.7697>
    10df:	5d                   	pop    %rbp
    10e0:	c3                   	retq   
    10e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e8:	f3 c3                	repz retq 
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <frame_dummy>:
    10f0:	55                   	push   %rbp
    10f1:	48 89 e5             	mov    %rsp,%rbp
    10f4:	5d                   	pop    %rbp
    10f5:	e9 66 ff ff ff       	jmpq   1060 <register_tm_clones>

00000000000010fa <main>:
    10fa:	53                   	push   %rbx
    10fb:	83 ff 01             	cmp    $0x1,%edi
    10fe:	0f 84 f8 00 00 00    	je     11fc <main+0x102>
    1104:	48 89 f3             	mov    %rsi,%rbx
    1107:	83 ff 02             	cmp    $0x2,%edi
    110a:	0f 85 21 01 00 00    	jne    1231 <main+0x137>
    1110:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1114:	48 8d 35 89 18 00 00 	lea    0x1889(%rip),%rsi        # 29a4 <_IO_stdin_used+0x4>
    111b:	e8 30 fe ff ff       	callq  f50 <fopen@plt>
    1120:	48 89 05 89 35 20 00 	mov    %rax,0x203589(%rip)        # 2046b0 <infile>
    1127:	48 85 c0             	test   %rax,%rax
    112a:	0f 84 df 00 00 00    	je     120f <main+0x115>
    1130:	e8 e0 06 00 00       	callq  1815 <initialize_bomb>
    1135:	48 8d 3d ec 18 00 00 	lea    0x18ec(%rip),%rdi        # 2a28 <_IO_stdin_used+0x88>
    113c:	e8 2f fd ff ff       	callq  e70 <puts@plt>
    1141:	48 8d 3d 20 19 00 00 	lea    0x1920(%rip),%rdi        # 2a68 <_IO_stdin_used+0xc8>
    1148:	e8 23 fd ff ff       	callq  e70 <puts@plt>
    114d:	e8 dd 09 00 00       	callq  1b2f <read_line>
    1152:	48 89 c7             	mov    %rax,%rdi
    1155:	e8 fa 00 00 00       	callq  1254 <phase_1>
    115a:	e8 14 0b 00 00       	callq  1c73 <phase_defused>
    115f:	48 8d 3d 32 19 00 00 	lea    0x1932(%rip),%rdi        # 2a98 <_IO_stdin_used+0xf8>
    1166:	e8 05 fd ff ff       	callq  e70 <puts@plt>
    116b:	e8 bf 09 00 00       	callq  1b2f <read_line>
    1170:	48 89 c7             	mov    %rax,%rdi
    1173:	e8 fc 00 00 00       	callq  1274 <phase_2>
    1178:	e8 f6 0a 00 00       	callq  1c73 <phase_defused>
    117d:	48 8d 3d 59 18 00 00 	lea    0x1859(%rip),%rdi        # 29dd <_IO_stdin_used+0x3d>
    1184:	e8 e7 fc ff ff       	callq  e70 <puts@plt>
    1189:	e8 a1 09 00 00       	callq  1b2f <read_line>
    118e:	48 89 c7             	mov    %rax,%rdi
    1191:	e8 4c 01 00 00       	callq  12e2 <phase_3>
    1196:	e8 d8 0a 00 00       	callq  1c73 <phase_defused>
    119b:	48 8d 3d 59 18 00 00 	lea    0x1859(%rip),%rdi        # 29fb <_IO_stdin_used+0x5b>
    11a2:	e8 c9 fc ff ff       	callq  e70 <puts@plt>
    11a7:	e8 83 09 00 00       	callq  1b2f <read_line>
    11ac:	48 89 c7             	mov    %rax,%rdi
    11af:	e8 e7 02 00 00       	callq  149b <phase_4>
    11b4:	e8 ba 0a 00 00       	callq  1c73 <phase_defused>
    11b9:	48 8d 3d 08 19 00 00 	lea    0x1908(%rip),%rdi        # 2ac8 <_IO_stdin_used+0x128>
    11c0:	e8 ab fc ff ff       	callq  e70 <puts@plt>
    11c5:	e8 65 09 00 00       	callq  1b2f <read_line>
    11ca:	48 89 c7             	mov    %rax,%rdi
    11cd:	e8 3e 03 00 00       	callq  1510 <phase_5>
    11d2:	e8 9c 0a 00 00       	callq  1c73 <phase_defused>
    11d7:	48 8d 3d 2c 18 00 00 	lea    0x182c(%rip),%rdi        # 2a0a <_IO_stdin_used+0x6a>
    11de:	e8 8d fc ff ff       	callq  e70 <puts@plt>
    11e3:	e8 47 09 00 00       	callq  1b2f <read_line>
    11e8:	48 89 c7             	mov    %rax,%rdi
    11eb:	e8 66 03 00 00       	callq  1556 <phase_6>
    11f0:	e8 7e 0a 00 00       	callq  1c73 <phase_defused>
    11f5:	b8 00 00 00 00       	mov    $0x0,%eax
    11fa:	5b                   	pop    %rbx
    11fb:	c3                   	retq   
    11fc:	48 8b 05 8d 34 20 00 	mov    0x20348d(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1203:	48 89 05 a6 34 20 00 	mov    %rax,0x2034a6(%rip)        # 2046b0 <infile>
    120a:	e9 21 ff ff ff       	jmpq   1130 <main+0x36>
    120f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1213:	48 8b 13             	mov    (%rbx),%rdx
    1216:	48 8d 35 89 17 00 00 	lea    0x1789(%rip),%rsi        # 29a6 <_IO_stdin_used+0x6>
    121d:	bf 01 00 00 00       	mov    $0x1,%edi
    1222:	e8 19 fd ff ff       	callq  f40 <__printf_chk@plt>
    1227:	bf 08 00 00 00       	mov    $0x8,%edi
    122c:	e8 3f fd ff ff       	callq  f70 <exit@plt>
    1231:	48 8b 16             	mov    (%rsi),%rdx
    1234:	48 8d 35 88 17 00 00 	lea    0x1788(%rip),%rsi        # 29c3 <_IO_stdin_used+0x23>
    123b:	bf 01 00 00 00       	mov    $0x1,%edi
    1240:	b8 00 00 00 00       	mov    $0x0,%eax
    1245:	e8 f6 fc ff ff       	callq  f40 <__printf_chk@plt>
    124a:	bf 08 00 00 00       	mov    $0x8,%edi
    124f:	e8 1c fd ff ff       	callq  f70 <exit@plt>

0000000000001254 <phase_1>:
    1254:	48 83 ec 08          	sub    $0x8,%rsp
    1258:	48 8d 35 91 18 00 00 	lea    0x1891(%rip),%rsi        # 2af0 <_IO_stdin_used+0x150>
    125f:	e8 4a 05 00 00       	callq  17ae <strings_not_equal> # %rsi "The future will be better tomorrow."
    1264:	85 c0                	test   %eax,%eax
    1266:	75 05                	jne    126d <phase_1+0x19>
    1268:	48 83 c4 08          	add    $0x8,%rsp
    126c:	c3                   	retq   
    126d:	e8 40 08 00 00       	callq  1ab2 <explode_bomb>
    1272:	eb f4                	jmp    1268 <phase_1+0x14>

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
    12a9:	48 83 c3 01          	add    $0x1,%rbx                # 循环
    12ad:	48 83 fb 06          	cmp    $0x6,%rbx
    12b1:	74 13                	je     12c6 <phase_2+0x52>
    12b3:	89 d8                	mov    %ebx,%eax
    12b5:	03 44 9d fc          	add    -0x4(%rbp,%rbx,4),%eax   # 第一个数字 -0x4(%rbp) 21845
    12b9:	39 44 9d 00          	cmp    %eax,0x0(%rbp,%rbx,4)    # %eax每次加上循环变量 1 2 3 4 5 形成二级等差数列
    12bd:	74 ea                	je     12a9 <phase_2+0x35>      # 21845 21846 21848 21851 21855 21860
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

00000000000012e2 <phase_3>:
    12e2:	48 83 ec 28          	sub    $0x28,%rsp
    12e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12ed:	00 00 
    12ef:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    12f4:	31 c0                	xor    %eax,%eax
    12f6:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    12fb:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1300:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1305:	48 8d 35 32 18 00 00 	lea    0x1832(%rip),%rsi         # 2b3e <_IO_stdin_used+0x19e>
    130c:	e8 1f fc ff ff       	callq  f30 <__isoc99_sscanf@plt> # %d %c %d
    1311:	83 f8 02             	cmp    $0x2,%eax
    1314:	7e 1f                	jle    1335 <phase_3+0x53>
    1316:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    131b:	0f 87 0c 01 00 00    	ja     142d <phase_3+0x14b>
    1321:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1325:	48 8d 15 34 18 00 00 	lea    0x1834(%rip),%rdx        # 2b60 <_IO_stdin_used+0x1c0>
    132c:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1330:	48 01 d0             	add    %rdx,%rax
    1333:	ff e0                	jmpq   *%rax                    # switch case 结构
    1335:	e8 78 07 00 00       	callq  1ab2 <explode_bomb>
    133a:	eb da                	jmp    1316 <phase_3+0x34>
    133c:	b8 63 00 00 00       	mov    $0x63,%eax               
    1341:	81 7c 24 14 7d 03 00 	cmpl   $0x37d,0x14(%rsp)        
    1348:	00 
    1349:	0f 84 e8 00 00 00    	je     1437 <phase_3+0x155>
    134f:	e8 5e 07 00 00       	callq  1ab2 <explode_bomb>
    1354:	b8 63 00 00 00       	mov    $0x63,%eax
    1359:	e9 d9 00 00 00       	jmpq   1437 <phase_3+0x155>
    135e:	b8 61 00 00 00       	mov    $0x61,%eax               # case '1' 'a'
    1363:	81 7c 24 14 08 02 00 	cmpl   $0x208,0x14(%rsp)        # 520 只是其中一个答案
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

000000000000145c <func4>:
    145c:	48 83 ec 08          	sub    $0x8,%rsp
    1460:	89 d0                	mov    %edx,%eax
    1462:	29 f0                	sub    %esi,%eax
    1464:	89 c1                	mov    %eax,%ecx
    1466:	c1 e9 1f             	shr    $0x1f,%ecx
    1469:	01 c1                	add    %eax,%ecx
    146b:	d1 f9                	sar    %ecx
    146d:	01 f1                	add    %esi,%ecx
    146f:	39 f9                	cmp    %edi,%ecx
    1471:	7f 0e                	jg     1481 <func4+0x25>
    1473:	b8 00 00 00 00       	mov    $0x0,%eax
    1478:	39 f9                	cmp    %edi,%ecx
    147a:	7c 11                	jl     148d <func4+0x31>
    147c:	48 83 c4 08          	add    $0x8,%rsp
    1480:	c3                   	retq   
    1481:	8d 51 ff             	lea    -0x1(%rcx),%edx
    1484:	e8 d3 ff ff ff       	callq  145c <func4>
    1489:	01 c0                	add    %eax,%eax
    148b:	eb ef                	jmp    147c <func4+0x20>
    148d:	8d 71 01             	lea    0x1(%rcx),%esi
    1490:	e8 c7 ff ff ff       	callq  145c <func4>
    1495:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1499:	eb e1                	jmp    147c <func4+0x20>

000000000000149b <phase_4>:
    149b:	48 83 ec 18          	sub    $0x18,%rsp
    149f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14a6:	00 00 
    14a8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14ad:	31 c0                	xor    %eax,%eax
    14af:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    14b4:	48 89 e2             	mov    %rsp,%rdx
    14b7:	48 8d 35 4f 19 00 00 	lea    0x194f(%rip),%rsi        # 2e0d <array.3418+0x28d>
    14be:	e8 6d fa ff ff       	callq  f30 <__isoc99_sscanf@plt> 
    14c3:	83 f8 02             	cmp    $0x2,%eax                # (x, y)
    14c6:	75 06                	jne    14ce <phase_4+0x33>
    14c8:	83 3c 24 0e          	cmpl   $0xe,(%rsp)              # x <= 14
    14cc:	76 05                	jbe    14d3 <phase_4+0x38>
    14ce:	e8 df 05 00 00       	callq  1ab2 <explode_bomb>
    14d3:	ba 0e 00 00 00       	mov    $0xe,%edx
    14d8:	be 00 00 00 00       	mov    $0x0,%esi                # (x, 0, 14) 可以尝试数字 发现 x= 8或 9或 11
    14dd:	8b 3c 24             	mov    (%rsp),%edi
    14e0:	e8 77 ff ff ff       	callq  145c <func4>
    14e5:	83 f8 01             	cmp    $0x1,%eax                # func(x, 0, 14)=1
    14e8:	75 07                	jne    14f1 <phase_4+0x56>
    14ea:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)           # y = 1
    14ef:	74 05                	je     14f6 <phase_4+0x5b>
    14f1:	e8 bc 05 00 00       	callq  1ab2 <explode_bomb>
    14f6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    14fb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1502:	00 00 
    1504:	75 05                	jne    150b <phase_4+0x70>
    1506:	48 83 c4 18          	add    $0x18,%rsp
    150a:	c3                   	retq   
    150b:	e8 80 f9 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000001510 <phase_5>:
    1510:	53                   	push   %rbx
    1511:	48 89 fb             	mov    %rdi,%rbx
    1514:	e8 78 02 00 00       	callq  1791 <string_length>
    1519:	83 f8 06             	cmp    $0x6,%eax
    151c:	75 31                	jne    154f <phase_5+0x3f>
    151e:	48 89 d8             	mov    %rbx,%rax
    1521:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1525:	b9 00 00 00 00       	mov    $0x0,%ecx
    152a:	48 8d 35 4f 16 00 00 	lea    0x164f(%rip),%rsi        # 2b80 <array.3418>
    1531:	0f b6 10             	movzbl (%rax),%edx
    1534:	83 e2 0f             	and    $0xf,%edx                # mod 16
    1537:	03 0c 96             	add    (%rsi,%rdx,4),%ecx       # 根据余数从数组中选择
    153a:	48 83 c0 01          	add    $0x1,%rax                # 2 10 6 1 12 16 9 3 4 7 14 5 11 8 15 13
    153e:	48 39 f8             	cmp    %rdi,%rax
    1541:	75 ee                	jne    1531 <phase_5+0x21>
    1543:	83 f9 2c             	cmp    $0x2c,%ecx               # 六个数相加等于44 2 10 6 1 12 13 下标分别为0 1 2 3 4 15
    1546:	74 05                	je     154d <phase_5+0x3d>      # 这意味着答案为六个aci码 mod16 余 0 1 2 3 4 15 的字符 不限顺序
    1548:	e8 65 05 00 00       	callq  1ab2 <explode_bomb>
    154d:	5b                   	pop    %rbx
    154e:	c3                   	retq   
    154f:	e8 5e 05 00 00       	callq  1ab2 <explode_bomb>
    1554:	eb c8                	jmp    151e <phase_5+0xe>

0000000000001556 <phase_6>:
    1556:	41 55                	push   %r13
    1558:	41 54                	push   %r12
    155a:	55                   	push   %rbp
    155b:	53                   	push   %rbx
    155c:	48 83 ec 68          	sub    $0x68,%rsp
    1560:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1567:	00 00 
    1569:	48 89 44 24 58       	mov    %rax,0x58(%rsp)          # 0x0000555555555569
    156e:	31 c0                	xor    %eax,%eax
    1570:	49 89 e4             	mov    %rsp,%r12
    1573:	4c 89 e6             	mov    %r12,%rsi
    1576:	e8 73 05 00 00       	callq  1aee <read_six_numbers>  # %rsp 0x7fffffffe230
    157b:	41 bd 00 00 00 00    	mov    $0x0,%r13d               # 0x000055555555557b
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
    15b2:	83 f8 05             	cmp    $0x5,%eax            # 6-1=5
    15b5:	77 cc                	ja     1583 <phase_6+0x2d>
    15b7:	41 83 c5 01          	add    $0x1,%r13d           # %r13d 循环变量 1 2 3 4 5 6
    15bb:	41 83 fd 06          	cmp    $0x6,%r13d
    15bf:	74 35                	je     15f6 <phase_6+0xa0>
    15c1:	44 89 eb             	mov    %r13d,%ebx
    15c4:	eb cc                	jmp    1592 <phase_6+0x3c>
    15c6:	48 8b 52 08          	mov    0x8(%rdx),%rdx       # !!!!
    15ca:	83 c0 01             	add    $0x1,%eax
    15cd:	39 c8                	cmp    %ecx,%eax
    15cf:	75 f5                	jne    15c6 <phase_6+0x70>
    15d1:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    15d6:	48 83 c6 01          	add    $0x1,%rsi
    15da:	48 83 fe 06          	cmp    $0x6,%rsi
    15de:	74 1d                	je     15fd <phase_6+0xa7>
    15e0:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    15e3:	b8 01 00 00 00       	mov    $0x1,%eax
    15e8:	48 8d 15 41 2c 20 00 	lea    0x202c41(%rip),%rdx        # 204230 <node1>
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
    1637:	bd 05 00 00 00       	mov    $0x5,%ebp                # 前面都是废话 下面才有点用
    163c:	eb 09                	jmp    1647 <phase_6+0xf1>      # node1~6 637 262 523 213 779 890
    163e:	48 8b 5b 08          	mov    0x8(%rbx),%rbx           # 0x555555758230 <node1>:	637
    1642:	83 ed 01             	sub    $0x1,%ebp                # 0x555555758240 <node2>:   262
    1645:	74 11                	je     1658 <phase_6+0x102>     # 0x555555758250 <node3>:   523
    1647:	48 8b 43 08          	mov    0x8(%rbx),%rax           # 0x555555758260 <node4>:   213
    164b:	8b 00                	mov    (%rax),%eax              # 0x555555758270 <node5>:   779
    164d:	39 03                	cmp    %eax,(%rbx)              # 0x555555758110 <node6>:   890
    164f:	7d ed                	jge    163e <phase_6+0xe8>      # 选择一个顺序排列 1～6 使得链表呈现降序即可
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

0000000000001678 <fun7>:
    1678:	48 85 ff             	test   %rdi,%rdi
    167b:	74 34                	je     16b1 <fun7+0x39>
    167d:	48 83 ec 08          	sub    $0x8,%rsp
    1681:	8b 17                	mov    (%rdi),%edx
    1683:	39 f2                	cmp    %esi,%edx
    1685:	7f 0e                	jg     1695 <fun7+0x1d>
    1687:	b8 00 00 00 00       	mov    $0x0,%eax
    168c:	39 f2                	cmp    %esi,%edx
    168e:	75 12                	jne    16a2 <fun7+0x2a>
    1690:	48 83 c4 08          	add    $0x8,%rsp
    1694:	c3                   	retq   
    1695:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1699:	e8 da ff ff ff       	callq  1678 <fun7>
    169e:	01 c0                	add    %eax,%eax
    16a0:	eb ee                	jmp    1690 <fun7+0x18>
    16a2:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    16a6:	e8 cd ff ff ff       	callq  1678 <fun7>
    16ab:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    16af:	eb df                	jmp    1690 <fun7+0x18>
    16b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    16b6:	c3                   	retq   

00000000000016b7 <secret_phase>:
    16b7:	53                   	push   %rbx
    16b8:	e8 72 04 00 00       	callq  1b2f <read_line>
    16bd:	ba 0a 00 00 00       	mov    $0xa,%edx
    16c2:	be 00 00 00 00       	mov    $0x0,%esi
    16c7:	48 89 c7             	mov    %rax,%rdi
    16ca:	e8 41 f8 ff ff       	callq  f10 <strtol@plt>
    16cf:	48 89 c3             	mov    %rax,%rbx
    16d2:	8d 40 ff             	lea    -0x1(%rax),%eax
    16d5:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    16da:	77 2b                	ja     1707 <secret_phase+0x50>
    16dc:	89 de                	mov    %ebx,%esi
    16de:	48 8d 3d 6b 2a 20 00 	lea    0x202a6b(%rip),%rdi        # 204150 <n1>
    16e5:	e8 8e ff ff ff       	callq  1678 <fun7>
    16ea:	83 f8 06             	cmp    $0x6,%eax
    16ed:	74 05                	je     16f4 <secret_phase+0x3d>
    16ef:	e8 be 03 00 00       	callq  1ab2 <explode_bomb>
    16f4:	48 8d 3d 1d 14 00 00 	lea    0x141d(%rip),%rdi        # 2b18 <_IO_stdin_used+0x178>
    16fb:	e8 70 f7 ff ff       	callq  e70 <puts@plt>
    1700:	e8 6e 05 00 00       	callq  1c73 <phase_defused>
    1705:	5b                   	pop    %rbx
    1706:	c3                   	retq   
    1707:	e8 a6 03 00 00       	callq  1ab2 <explode_bomb>
    170c:	eb ce                	jmp    16dc <secret_phase+0x25>

000000000000170e <sig_handler>:
    170e:	48 83 ec 08          	sub    $0x8,%rsp
    1712:	48 8d 3d a7 14 00 00 	lea    0x14a7(%rip),%rdi        # 2bc0 <array.3418+0x40>
    1719:	e8 52 f7 ff ff       	callq  e70 <puts@plt>
    171e:	bf 03 00 00 00       	mov    $0x3,%edi
    1723:	e8 78 f8 ff ff       	callq  fa0 <sleep@plt>
    1728:	48 8d 35 5a 16 00 00 	lea    0x165a(%rip),%rsi        # 2d89 <array.3418+0x209>
    172f:	bf 01 00 00 00       	mov    $0x1,%edi
    1734:	b8 00 00 00 00       	mov    $0x0,%eax
    1739:	e8 02 f8 ff ff       	callq  f40 <__printf_chk@plt>
    173e:	48 8b 3d 3b 2f 20 00 	mov    0x202f3b(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1745:	e8 d6 f7 ff ff       	callq  f20 <fflush@plt>
    174a:	bf 01 00 00 00       	mov    $0x1,%edi
    174f:	e8 4c f8 ff ff       	callq  fa0 <sleep@plt>
    1754:	48 8d 3d 36 16 00 00 	lea    0x1636(%rip),%rdi        # 2d91 <array.3418+0x211>
    175b:	e8 10 f7 ff ff       	callq  e70 <puts@plt>
    1760:	bf 10 00 00 00       	mov    $0x10,%edi
    1765:	e8 06 f8 ff ff       	callq  f70 <exit@plt>

000000000000176a <invalid_phase>:
    176a:	48 83 ec 08          	sub    $0x8,%rsp
    176e:	48 89 fa             	mov    %rdi,%rdx
    1771:	48 8d 35 21 16 00 00 	lea    0x1621(%rip),%rsi        # 2d99 <array.3418+0x219>
    1778:	bf 01 00 00 00       	mov    $0x1,%edi
    177d:	b8 00 00 00 00       	mov    $0x0,%eax
    1782:	e8 b9 f7 ff ff       	callq  f40 <__printf_chk@plt>
    1787:	bf 08 00 00 00       	mov    $0x8,%edi
    178c:	e8 df f7 ff ff       	callq  f70 <exit@plt>

0000000000001791 <string_length>:
    1791:	80 3f 00             	cmpb   $0x0,(%rdi)
    1794:	74 12                	je     17a8 <string_length+0x17>
    1796:	48 89 fa             	mov    %rdi,%rdx
    1799:	48 83 c2 01          	add    $0x1,%rdx
    179d:	89 d0                	mov    %edx,%eax
    179f:	29 f8                	sub    %edi,%eax
    17a1:	80 3a 00             	cmpb   $0x0,(%rdx)
    17a4:	75 f3                	jne    1799 <string_length+0x8>
    17a6:	f3 c3                	repz retq 
    17a8:	b8 00 00 00 00       	mov    $0x0,%eax
    17ad:	c3                   	retq   

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
    17d0:	74 07                	je     17d9 <strings_not_equal+0x2b>    # 字串长度不等 直接返回false
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

0000000000001815 <initialize_bomb>:
    1815:	55                   	push   %rbp
    1816:	53                   	push   %rbx
    1817:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    181e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1825:	00 00 
    1827:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    182e:	00 
    182f:	31 c0                	xor    %eax,%eax
    1831:	48 8d 35 d6 fe ff ff 	lea    -0x12a(%rip),%rsi        # 170e <sig_handler>
    1838:	bf 02 00 00 00       	mov    $0x2,%edi
    183d:	e8 9e f6 ff ff       	callq  ee0 <signal@plt>
    1842:	48 89 e7             	mov    %rsp,%rdi
    1845:	be 40 00 00 00       	mov    $0x40,%esi
    184a:	e8 11 f7 ff ff       	callq  f60 <gethostname@plt>
    184f:	85 c0                	test   %eax,%eax
    1851:	75 45                	jne    1898 <initialize_bomb+0x83>
    1853:	48 8b 3d 26 2a 20 00 	mov    0x202a26(%rip),%rdi        # 204280 <host_table>
    185a:	48 8d 1d 27 2a 20 00 	lea    0x202a27(%rip),%rbx        # 204288 <host_table+0x8>
    1861:	48 89 e5             	mov    %rsp,%rbp
    1864:	48 85 ff             	test   %rdi,%rdi
    1867:	74 19                	je     1882 <initialize_bomb+0x6d>
    1869:	48 89 ee             	mov    %rbp,%rsi
    186c:	e8 cf f5 ff ff       	callq  e40 <strcasecmp@plt>
    1871:	85 c0                	test   %eax,%eax
    1873:	74 5e                	je     18d3 <initialize_bomb+0xbe>
    1875:	48 83 c3 08          	add    $0x8,%rbx
    1879:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    187d:	48 85 ff             	test   %rdi,%rdi
    1880:	75 e7                	jne    1869 <initialize_bomb+0x54>
    1882:	48 8d 3d a7 13 00 00 	lea    0x13a7(%rip),%rdi        # 2c30 <array.3418+0xb0>
    1889:	e8 e2 f5 ff ff       	callq  e70 <puts@plt>
    188e:	bf 08 00 00 00       	mov    $0x8,%edi
    1893:	e8 d8 f6 ff ff       	callq  f70 <exit@plt>
    1898:	48 8d 3d 59 13 00 00 	lea    0x1359(%rip),%rdi        # 2bf8 <array.3418+0x78>
    189f:	e8 cc f5 ff ff       	callq  e70 <puts@plt>
    18a4:	bf 08 00 00 00       	mov    $0x8,%edi
    18a9:	e8 c2 f6 ff ff       	callq  f70 <exit@plt>
    18ae:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    18b3:	48 8d 35 f0 14 00 00 	lea    0x14f0(%rip),%rsi        # 2daa <array.3418+0x22a>
    18ba:	bf 01 00 00 00       	mov    $0x1,%edi
    18bf:	b8 00 00 00 00       	mov    $0x0,%eax
    18c4:	e8 77 f6 ff ff       	callq  f40 <__printf_chk@plt>
    18c9:	bf 08 00 00 00       	mov    $0x8,%edi
    18ce:	e8 9d f6 ff ff       	callq  f70 <exit@plt>
    18d3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    18d8:	e8 b2 0d 00 00       	callq  268f <init_driver>
    18dd:	85 c0                	test   %eax,%eax
    18df:	78 cd                	js     18ae <initialize_bomb+0x99>
    18e1:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    18e8:	00 
    18e9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    18f0:	00 00 
    18f2:	75 0a                	jne    18fe <initialize_bomb+0xe9>
    18f4:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    18fb:	5b                   	pop    %rbx
    18fc:	5d                   	pop    %rbp
    18fd:	c3                   	retq   
    18fe:	e8 8d f5 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000001903 <initialize_bomb_solve>:
    1903:	f3 c3                	repz retq 

0000000000001905 <blank_line>:
    1905:	55                   	push   %rbp
    1906:	53                   	push   %rbx
    1907:	48 83 ec 08          	sub    $0x8,%rsp
    190b:	48 89 fd             	mov    %rdi,%rbp
    190e:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1912:	84 db                	test   %bl,%bl
    1914:	74 1e                	je     1934 <blank_line+0x2f>
    1916:	e8 95 f6 ff ff       	callq  fb0 <__ctype_b_loc@plt>
    191b:	48 83 c5 01          	add    $0x1,%rbp
    191f:	48 0f be db          	movsbq %bl,%rbx
    1923:	48 8b 00             	mov    (%rax),%rax
    1926:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    192b:	75 e1                	jne    190e <blank_line+0x9>
    192d:	b8 00 00 00 00       	mov    $0x0,%eax
    1932:	eb 05                	jmp    1939 <blank_line+0x34>
    1934:	b8 01 00 00 00       	mov    $0x1,%eax
    1939:	48 83 c4 08          	add    $0x8,%rsp
    193d:	5b                   	pop    %rbx
    193e:	5d                   	pop    %rbp
    193f:	c3                   	retq   

0000000000001940 <skip>:
    1940:	55                   	push   %rbp
    1941:	53                   	push   %rbx
    1942:	48 83 ec 08          	sub    $0x8,%rsp
    1946:	48 8d 2d 73 2d 20 00 	lea    0x202d73(%rip),%rbp        # 2046c0 <input_strings>
    194d:	48 63 05 58 2d 20 00 	movslq 0x202d58(%rip),%rax        # 2046ac <num_input_strings>
    1954:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1958:	48 c1 e7 04          	shl    $0x4,%rdi
    195c:	48 01 ef             	add    %rbp,%rdi
    195f:	48 8b 15 4a 2d 20 00 	mov    0x202d4a(%rip),%rdx        # 2046b0 <infile>
    1966:	be 50 00 00 00       	mov    $0x50,%esi
    196b:	e8 60 f5 ff ff       	callq  ed0 <fgets@plt>
    1970:	48 89 c3             	mov    %rax,%rbx
    1973:	48 85 c0             	test   %rax,%rax
    1976:	74 0c                	je     1984 <skip+0x44>
    1978:	48 89 c7             	mov    %rax,%rdi
    197b:	e8 85 ff ff ff       	callq  1905 <blank_line>
    1980:	85 c0                	test   %eax,%eax
    1982:	75 c9                	jne    194d <skip+0xd>
    1984:	48 89 d8             	mov    %rbx,%rax
    1987:	48 83 c4 08          	add    $0x8,%rsp
    198b:	5b                   	pop    %rbx
    198c:	5d                   	pop    %rbp
    198d:	c3                   	retq   

000000000000198e <send_msg>:
    198e:	53                   	push   %rbx
    198f:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1996:	41 89 f8             	mov    %edi,%r8d
    1999:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19a0:	00 00 
    19a2:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    19a9:	00 
    19aa:	31 c0                	xor    %eax,%eax
    19ac:	8b 35 fa 2c 20 00    	mov    0x202cfa(%rip),%esi        # 2046ac <num_input_strings>
    19b2:	8d 46 ff             	lea    -0x1(%rsi),%eax
    19b5:	48 98                	cltq   
    19b7:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    19bb:	48 c1 e2 04          	shl    $0x4,%rdx
    19bf:	48 8d 05 fa 2c 20 00 	lea    0x202cfa(%rip),%rax        # 2046c0 <input_strings>
    19c6:	48 01 c2             	add    %rax,%rdx
    19c9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    19d0:	b8 00 00 00 00       	mov    $0x0,%eax
    19d5:	48 89 d7             	mov    %rdx,%rdi
    19d8:	f2 ae                	repnz scas %es:(%rdi),%al
    19da:	48 89 c8             	mov    %rcx,%rax
    19dd:	48 f7 d0             	not    %rax
    19e0:	48 83 c0 63          	add    $0x63,%rax
    19e4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    19ea:	0f 87 86 00 00 00    	ja     1a76 <send_msg+0xe8>
    19f0:	45 85 c0             	test   %r8d,%r8d
    19f3:	4c 8d 0d ca 13 00 00 	lea    0x13ca(%rip),%r9        # 2dc4 <array.3418+0x244>
    19fa:	48 8d 05 cb 13 00 00 	lea    0x13cb(%rip),%rax        # 2dcc <array.3418+0x24c>
    1a01:	4c 0f 44 c8          	cmove  %rax,%r9
    1a05:	48 89 e3             	mov    %rsp,%rbx
    1a08:	52                   	push   %rdx
    1a09:	56                   	push   %rsi
    1a0a:	44 8b 05 33 27 20 00 	mov    0x202733(%rip),%r8d        # 204144 <bomb_id>
    1a11:	48 8d 0d bd 13 00 00 	lea    0x13bd(%rip),%rcx        # 2dd5 <array.3418+0x255>
    1a18:	ba 00 20 00 00       	mov    $0x2000,%edx
    1a1d:	be 01 00 00 00       	mov    $0x1,%esi
    1a22:	48 89 df             	mov    %rbx,%rdi
    1a25:	b8 00 00 00 00       	mov    $0x0,%eax
    1a2a:	e8 91 f5 ff ff       	callq  fc0 <__sprintf_chk@plt>
    1a2f:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1a36:	00 
    1a37:	b9 00 00 00 00       	mov    $0x0,%ecx
    1a3c:	48 89 da             	mov    %rbx,%rdx
    1a3f:	48 8d 35 da 26 20 00 	lea    0x2026da(%rip),%rsi        # 204120 <user_password>
    1a46:	48 8d 3d eb 26 20 00 	lea    0x2026eb(%rip),%rdi        # 204138 <userid>
    1a4d:	e8 46 0e 00 00       	callq  2898 <driver_post>
    1a52:	48 83 c4 10          	add    $0x10,%rsp
    1a56:	85 c0                	test   %eax,%eax
    1a58:	78 3c                	js     1a96 <send_msg+0x108>
    1a5a:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1a61:	00 
    1a62:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a69:	00 00 
    1a6b:	75 40                	jne    1aad <send_msg+0x11f>
    1a6d:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1a74:	5b                   	pop    %rbx
    1a75:	c3                   	retq   
    1a76:	48 8d 35 eb 11 00 00 	lea    0x11eb(%rip),%rsi        # 2c68 <array.3418+0xe8>
    1a7d:	bf 01 00 00 00       	mov    $0x1,%edi
    1a82:	b8 00 00 00 00       	mov    $0x0,%eax
    1a87:	e8 b4 f4 ff ff       	callq  f40 <__printf_chk@plt>
    1a8c:	bf 08 00 00 00       	mov    $0x8,%edi
    1a91:	e8 da f4 ff ff       	callq  f70 <exit@plt>
    1a96:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1a9d:	00 
    1a9e:	e8 cd f3 ff ff       	callq  e70 <puts@plt>
    1aa3:	bf 00 00 00 00       	mov    $0x0,%edi
    1aa8:	e8 c3 f4 ff ff       	callq  f70 <exit@plt>
    1aad:	e8 de f3 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000001ab2 <explode_bomb>:
    1ab2:	48 83 ec 08          	sub    $0x8,%rsp
    1ab6:	48 8d 3d 24 13 00 00 	lea    0x1324(%rip),%rdi        # 2de1 <array.3418+0x261>
    1abd:	e8 ae f3 ff ff       	callq  e70 <puts@plt>
    1ac2:	48 8d 3d 21 13 00 00 	lea    0x1321(%rip),%rdi        # 2dea <array.3418+0x26a>
    1ac9:	e8 a2 f3 ff ff       	callq  e70 <puts@plt>
    1ace:	bf 00 00 00 00       	mov    $0x0,%edi
    1ad3:	e8 b6 fe ff ff       	callq  198e <send_msg>
    1ad8:	48 8d 3d b1 11 00 00 	lea    0x11b1(%rip),%rdi        # 2c90 <array.3418+0x110>
    1adf:	e8 8c f3 ff ff       	callq  e70 <puts@plt>
    1ae4:	bf 08 00 00 00       	mov    $0x8,%edi
    1ae9:	e8 82 f4 ff ff       	callq  f70 <exit@plt>

0000000000001aee <read_six_numbers>:
    1aee:	48 83 ec 08          	sub    $0x8,%rsp
    1af2:	48 89 f2             	mov    %rsi,%rdx
    1af5:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1af9:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1afd:	50                   	push   %rax
    1afe:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1b02:	50                   	push   %rax
    1b03:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1b07:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1b0b:	48 8d 35 ef 12 00 00 	lea    0x12ef(%rip),%rsi        # 2e01 <array.3418+0x281>
    1b12:	b8 00 00 00 00       	mov    $0x0,%eax
    1b17:	e8 14 f4 ff ff       	callq  f30 <__isoc99_sscanf@plt>
    1b1c:	48 83 c4 10          	add    $0x10,%rsp
    1b20:	83 f8 05             	cmp    $0x5,%eax
    1b23:	7e 05                	jle    1b2a <read_six_numbers+0x3c>
    1b25:	48 83 c4 08          	add    $0x8,%rsp
    1b29:	c3                   	retq   
    1b2a:	e8 83 ff ff ff       	callq  1ab2 <explode_bomb>

0000000000001b2f <read_line>:
    1b2f:	48 83 ec 08          	sub    $0x8,%rsp
    1b33:	b8 00 00 00 00       	mov    $0x0,%eax
    1b38:	e8 03 fe ff ff       	callq  1940 <skip>
    1b3d:	48 85 c0             	test   %rax,%rax
    1b40:	74 6f                	je     1bb1 <read_line+0x82>
    1b42:	8b 35 64 2b 20 00    	mov    0x202b64(%rip),%esi        # 2046ac <num_input_strings>
    1b48:	48 63 c6             	movslq %esi,%rax
    1b4b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1b4f:	48 c1 e2 04          	shl    $0x4,%rdx
    1b53:	48 8d 05 66 2b 20 00 	lea    0x202b66(%rip),%rax        # 2046c0 <input_strings>
    1b5a:	48 01 c2             	add    %rax,%rdx
    1b5d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1b64:	b8 00 00 00 00       	mov    $0x0,%eax
    1b69:	48 89 d7             	mov    %rdx,%rdi
    1b6c:	f2 ae                	repnz scas %es:(%rdi),%al
    1b6e:	48 f7 d1             	not    %rcx
    1b71:	48 83 e9 01          	sub    $0x1,%rcx
    1b75:	83 f9 4e             	cmp    $0x4e,%ecx
    1b78:	0f 8f ab 00 00 00    	jg     1c29 <read_line+0xfa>
    1b7e:	83 e9 01             	sub    $0x1,%ecx
    1b81:	48 63 c9             	movslq %ecx,%rcx
    1b84:	48 63 c6             	movslq %esi,%rax
    1b87:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1b8b:	48 c1 e0 04          	shl    $0x4,%rax
    1b8f:	48 89 c7             	mov    %rax,%rdi
    1b92:	48 8d 05 27 2b 20 00 	lea    0x202b27(%rip),%rax        # 2046c0 <input_strings>
    1b99:	48 01 f8             	add    %rdi,%rax
    1b9c:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1ba0:	83 c6 01             	add    $0x1,%esi
    1ba3:	89 35 03 2b 20 00    	mov    %esi,0x202b03(%rip)        # 2046ac <num_input_strings>
    1ba9:	48 89 d0             	mov    %rdx,%rax
    1bac:	48 83 c4 08          	add    $0x8,%rsp
    1bb0:	c3                   	retq   
    1bb1:	48 8b 05 d8 2a 20 00 	mov    0x202ad8(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1bb8:	48 39 05 f1 2a 20 00 	cmp    %rax,0x202af1(%rip)        # 2046b0 <infile>
    1bbf:	74 1b                	je     1bdc <read_line+0xad>
    1bc1:	48 8d 3d 69 12 00 00 	lea    0x1269(%rip),%rdi        # 2e31 <array.3418+0x2b1>
    1bc8:	e8 63 f2 ff ff       	callq  e30 <getenv@plt>
    1bcd:	48 85 c0             	test   %rax,%rax
    1bd0:	74 20                	je     1bf2 <read_line+0xc3>
    1bd2:	bf 00 00 00 00       	mov    $0x0,%edi
    1bd7:	e8 94 f3 ff ff       	callq  f70 <exit@plt>
    1bdc:	48 8d 3d 30 12 00 00 	lea    0x1230(%rip),%rdi        # 2e13 <array.3418+0x293>
    1be3:	e8 88 f2 ff ff       	callq  e70 <puts@plt>
    1be8:	bf 08 00 00 00       	mov    $0x8,%edi
    1bed:	e8 7e f3 ff ff       	callq  f70 <exit@plt>
    1bf2:	48 8b 05 97 2a 20 00 	mov    0x202a97(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1bf9:	48 89 05 b0 2a 20 00 	mov    %rax,0x202ab0(%rip)        # 2046b0 <infile>
    1c00:	b8 00 00 00 00       	mov    $0x0,%eax
    1c05:	e8 36 fd ff ff       	callq  1940 <skip>
    1c0a:	48 85 c0             	test   %rax,%rax
    1c0d:	0f 85 2f ff ff ff    	jne    1b42 <read_line+0x13>
    1c13:	48 8d 3d f9 11 00 00 	lea    0x11f9(%rip),%rdi        # 2e13 <array.3418+0x293>
    1c1a:	e8 51 f2 ff ff       	callq  e70 <puts@plt>
    1c1f:	bf 00 00 00 00       	mov    $0x0,%edi
    1c24:	e8 47 f3 ff ff       	callq  f70 <exit@plt>
    1c29:	48 8d 3d 0c 12 00 00 	lea    0x120c(%rip),%rdi        # 2e3c <array.3418+0x2bc>
    1c30:	e8 3b f2 ff ff       	callq  e70 <puts@plt>
    1c35:	8b 05 71 2a 20 00    	mov    0x202a71(%rip),%eax        # 2046ac <num_input_strings>
    1c3b:	8d 50 01             	lea    0x1(%rax),%edx
    1c3e:	89 15 68 2a 20 00    	mov    %edx,0x202a68(%rip)        # 2046ac <num_input_strings>
    1c44:	48 98                	cltq   
    1c46:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1c4a:	48 8d 15 6f 2a 20 00 	lea    0x202a6f(%rip),%rdx        # 2046c0 <input_strings>
    1c51:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1c58:	75 6e 63 
    1c5b:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1c62:	2a 2a 00 
    1c65:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1c69:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1c6e:	e8 3f fe ff ff       	callq  1ab2 <explode_bomb>

0000000000001c73 <phase_defused>:
    1c73:	48 83 ec 78          	sub    $0x78,%rsp
    1c77:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1c7e:	00 00 
    1c80:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1c85:	31 c0                	xor    %eax,%eax
    1c87:	bf 01 00 00 00       	mov    $0x1,%edi
    1c8c:	e8 fd fc ff ff       	callq  198e <send_msg>
    1c91:	83 3d 14 2a 20 00 06 	cmpl   $0x6,0x202a14(%rip)        # 2046ac <num_input_strings>
    1c98:	74 19                	je     1cb3 <phase_defused+0x40>
    1c9a:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1c9f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1ca6:	00 00 
    1ca8:	0f 85 84 00 00 00    	jne    1d32 <phase_defused+0xbf>
    1cae:	48 83 c4 78          	add    $0x78,%rsp
    1cb2:	c3                   	retq   
    1cb3:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1cb8:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1cbd:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1cc2:	48 8d 35 8e 11 00 00 	lea    0x118e(%rip),%rsi        # 2e57 <array.3418+0x2d7>
    1cc9:	48 8d 3d e0 2a 20 00 	lea    0x202ae0(%rip),%rdi        # 2047b0 <input_strings+0xf0>
    1cd0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd5:	e8 56 f2 ff ff       	callq  f30 <__isoc99_sscanf@plt>
    1cda:	83 f8 03             	cmp    $0x3,%eax
    1cdd:	74 1a                	je     1cf9 <phase_defused+0x86>
    1cdf:	48 8d 3d 32 10 00 00 	lea    0x1032(%rip),%rdi        # 2d18 <array.3418+0x198>
    1ce6:	e8 85 f1 ff ff       	callq  e70 <puts@plt>
    1ceb:	48 8d 3d 56 10 00 00 	lea    0x1056(%rip),%rdi        # 2d48 <array.3418+0x1c8>
    1cf2:	e8 79 f1 ff ff       	callq  e70 <puts@plt>
    1cf7:	eb a1                	jmp    1c9a <phase_defused+0x27>
    1cf9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1cfe:	48 8d 35 5b 11 00 00 	lea    0x115b(%rip),%rsi        # 2e60 <array.3418+0x2e0>
    1d05:	e8 a4 fa ff ff       	callq  17ae <strings_not_equal>
    1d0a:	85 c0                	test   %eax,%eax
    1d0c:	75 d1                	jne    1cdf <phase_defused+0x6c>
    1d0e:	48 8d 3d a3 0f 00 00 	lea    0xfa3(%rip),%rdi        # 2cb8 <array.3418+0x138>
    1d15:	e8 56 f1 ff ff       	callq  e70 <puts@plt>
    1d1a:	48 8d 3d bf 0f 00 00 	lea    0xfbf(%rip),%rdi        # 2ce0 <array.3418+0x160>
    1d21:	e8 4a f1 ff ff       	callq  e70 <puts@plt>
    1d26:	b8 00 00 00 00       	mov    $0x0,%eax
    1d2b:	e8 87 f9 ff ff       	callq  16b7 <secret_phase>
    1d30:	eb ad                	jmp    1cdf <phase_defused+0x6c>
    1d32:	e8 59 f1 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000001d37 <sigalrm_handler>:
    1d37:	48 83 ec 08          	sub    $0x8,%rsp
    1d3b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1d40:	48 8d 15 31 11 00 00 	lea    0x1131(%rip),%rdx        # 2e78 <array.3418+0x2f8>
    1d47:	be 01 00 00 00       	mov    $0x1,%esi
    1d4c:	48 8b 3d 4d 29 20 00 	mov    0x20294d(%rip),%rdi        # 2046a0 <stderr@@GLIBC_2.2.5>
    1d53:	b8 00 00 00 00       	mov    $0x0,%eax
    1d58:	e8 33 f2 ff ff       	callq  f90 <__fprintf_chk@plt>
    1d5d:	bf 01 00 00 00       	mov    $0x1,%edi
    1d62:	e8 09 f2 ff ff       	callq  f70 <exit@plt>

0000000000001d67 <rio_readlineb>:
    1d67:	41 56                	push   %r14
    1d69:	41 55                	push   %r13
    1d6b:	41 54                	push   %r12
    1d6d:	55                   	push   %rbp
    1d6e:	53                   	push   %rbx
    1d6f:	48 89 fb             	mov    %rdi,%rbx
    1d72:	49 89 f4             	mov    %rsi,%r12
    1d75:	49 89 d6             	mov    %rdx,%r14
    1d78:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1d7e:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1d82:	48 83 fa 01          	cmp    $0x1,%rdx
    1d86:	77 0c                	ja     1d94 <rio_readlineb+0x2d>
    1d88:	eb 60                	jmp    1dea <rio_readlineb+0x83>
    1d8a:	e8 c1 f0 ff ff       	callq  e50 <__errno_location@plt>
    1d8f:	83 38 04             	cmpl   $0x4,(%rax)
    1d92:	75 67                	jne    1dfb <rio_readlineb+0x94>
    1d94:	8b 43 04             	mov    0x4(%rbx),%eax
    1d97:	85 c0                	test   %eax,%eax
    1d99:	7f 20                	jg     1dbb <rio_readlineb+0x54>
    1d9b:	ba 00 20 00 00       	mov    $0x2000,%edx
    1da0:	48 89 ee             	mov    %rbp,%rsi
    1da3:	8b 3b                	mov    (%rbx),%edi
    1da5:	e8 16 f1 ff ff       	callq  ec0 <read@plt>
    1daa:	89 43 04             	mov    %eax,0x4(%rbx)
    1dad:	85 c0                	test   %eax,%eax
    1daf:	78 d9                	js     1d8a <rio_readlineb+0x23>
    1db1:	85 c0                	test   %eax,%eax
    1db3:	74 4f                	je     1e04 <rio_readlineb+0x9d>
    1db5:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1db9:	eb d9                	jmp    1d94 <rio_readlineb+0x2d>
    1dbb:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1dbf:	0f b6 0a             	movzbl (%rdx),%ecx
    1dc2:	48 83 c2 01          	add    $0x1,%rdx
    1dc6:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1dca:	83 e8 01             	sub    $0x1,%eax
    1dcd:	89 43 04             	mov    %eax,0x4(%rbx)
    1dd0:	49 83 c4 01          	add    $0x1,%r12
    1dd4:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1dd9:	80 f9 0a             	cmp    $0xa,%cl
    1ddc:	74 0c                	je     1dea <rio_readlineb+0x83>
    1dde:	41 83 c5 01          	add    $0x1,%r13d
    1de2:	49 63 c5             	movslq %r13d,%rax
    1de5:	4c 39 f0             	cmp    %r14,%rax
    1de8:	72 aa                	jb     1d94 <rio_readlineb+0x2d>
    1dea:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1def:	49 63 c5             	movslq %r13d,%rax
    1df2:	5b                   	pop    %rbx
    1df3:	5d                   	pop    %rbp
    1df4:	41 5c                	pop    %r12
    1df6:	41 5d                	pop    %r13
    1df8:	41 5e                	pop    %r14
    1dfa:	c3                   	retq   
    1dfb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1e02:	eb 05                	jmp    1e09 <rio_readlineb+0xa2>
    1e04:	b8 00 00 00 00       	mov    $0x0,%eax
    1e09:	85 c0                	test   %eax,%eax
    1e0b:	75 0d                	jne    1e1a <rio_readlineb+0xb3>
    1e0d:	b8 00 00 00 00       	mov    $0x0,%eax
    1e12:	41 83 fd 01          	cmp    $0x1,%r13d
    1e16:	75 d2                	jne    1dea <rio_readlineb+0x83>
    1e18:	eb d8                	jmp    1df2 <rio_readlineb+0x8b>
    1e1a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1e21:	eb cf                	jmp    1df2 <rio_readlineb+0x8b>

0000000000001e23 <submitr>:
    1e23:	41 57                	push   %r15
    1e25:	41 56                	push   %r14
    1e27:	41 55                	push   %r13
    1e29:	41 54                	push   %r12
    1e2b:	55                   	push   %rbp
    1e2c:	53                   	push   %rbx
    1e2d:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1e34:	49 89 fd             	mov    %rdi,%r13
    1e37:	89 f5                	mov    %esi,%ebp
    1e39:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1e3e:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1e43:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1e48:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1e4d:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1e54:	00 
    1e55:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1e5c:	00 
    1e5d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e64:	00 00 
    1e66:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1e6d:	00 
    1e6e:	31 c0                	xor    %eax,%eax
    1e70:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1e77:	00 
    1e78:	ba 00 00 00 00       	mov    $0x0,%edx
    1e7d:	be 01 00 00 00       	mov    $0x1,%esi
    1e82:	bf 02 00 00 00       	mov    $0x2,%edi
    1e87:	e8 44 f1 ff ff       	callq  fd0 <socket@plt>
    1e8c:	85 c0                	test   %eax,%eax
    1e8e:	0f 88 35 01 00 00    	js     1fc9 <submitr+0x1a6>
    1e94:	41 89 c4             	mov    %eax,%r12d
    1e97:	4c 89 ef             	mov    %r13,%rdi
    1e9a:	e8 51 f0 ff ff       	callq  ef0 <gethostbyname@plt>
    1e9f:	48 85 c0             	test   %rax,%rax
    1ea2:	0f 84 71 01 00 00    	je     2019 <submitr+0x1f6>
    1ea8:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    1ead:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    1eb4:	00 00 
    1eb6:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    1ebd:	00 
    1ebe:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    1ec5:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    1ecc:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1ed0:	48 8b 40 18          	mov    0x18(%rax),%rax
    1ed4:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1ed9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    1ede:	48 8b 30             	mov    (%rax),%rsi
    1ee1:	e8 1a f0 ff ff       	callq  f00 <__memmove_chk@plt>
    1ee6:	66 c1 cd 08          	ror    $0x8,%bp
    1eea:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    1eef:	ba 10 00 00 00       	mov    $0x10,%edx
    1ef4:	4c 89 ee             	mov    %r13,%rsi
    1ef7:	44 89 e7             	mov    %r12d,%edi
    1efa:	e8 81 f0 ff ff       	callq  f80 <connect@plt>
    1eff:	85 c0                	test   %eax,%eax
    1f01:	0f 88 7d 01 00 00    	js     2084 <submitr+0x261>
    1f07:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    1f0e:	b8 00 00 00 00       	mov    $0x0,%eax
    1f13:	4c 89 c9             	mov    %r9,%rcx
    1f16:	48 89 df             	mov    %rbx,%rdi
    1f19:	f2 ae                	repnz scas %es:(%rdi),%al
    1f1b:	48 89 ce             	mov    %rcx,%rsi
    1f1e:	48 f7 d6             	not    %rsi
    1f21:	4c 89 c9             	mov    %r9,%rcx
    1f24:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1f29:	f2 ae                	repnz scas %es:(%rdi),%al
    1f2b:	49 89 c8             	mov    %rcx,%r8
    1f2e:	4c 89 c9             	mov    %r9,%rcx
    1f31:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1f36:	f2 ae                	repnz scas %es:(%rdi),%al
    1f38:	48 89 ca             	mov    %rcx,%rdx
    1f3b:	48 f7 d2             	not    %rdx
    1f3e:	4c 89 c9             	mov    %r9,%rcx
    1f41:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    1f46:	f2 ae                	repnz scas %es:(%rdi),%al
    1f48:	4c 29 c2             	sub    %r8,%rdx
    1f4b:	48 29 ca             	sub    %rcx,%rdx
    1f4e:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    1f53:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    1f58:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1f5e:	0f 87 7d 01 00 00    	ja     20e1 <submitr+0x2be>
    1f64:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    1f6b:	00 
    1f6c:	b9 00 04 00 00       	mov    $0x400,%ecx
    1f71:	b8 00 00 00 00       	mov    $0x0,%eax
    1f76:	48 89 d7             	mov    %rdx,%rdi
    1f79:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1f7c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1f83:	48 89 df             	mov    %rbx,%rdi
    1f86:	f2 ae                	repnz scas %es:(%rdi),%al
    1f88:	48 89 ca             	mov    %rcx,%rdx
    1f8b:	48 f7 d2             	not    %rdx
    1f8e:	48 89 d1             	mov    %rdx,%rcx
    1f91:	48 83 e9 01          	sub    $0x1,%rcx
    1f95:	85 c9                	test   %ecx,%ecx
    1f97:	0f 84 3f 06 00 00    	je     25dc <submitr+0x7b9>
    1f9d:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1fa0:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    1fa5:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    1fac:	00 
    1fad:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    1fb4:	00 
    1fb5:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1fba:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    1fc1:	00 20 00 
    1fc4:	e9 a6 01 00 00       	jmpq   216f <submitr+0x34c>
    1fc9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1fd0:	3a 20 43 
    1fd3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1fda:	20 75 6e 
    1fdd:	49 89 07             	mov    %rax,(%r15)
    1fe0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1fe4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1feb:	74 6f 20 
    1fee:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    1ff5:	65 20 73 
    1ff8:	49 89 47 10          	mov    %rax,0x10(%r15)
    1ffc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2000:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2007:	65 
    2008:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    200f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2014:	e9 9a 04 00 00       	jmpq   24b3 <submitr+0x690>
    2019:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2020:	3a 20 44 
    2023:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    202a:	20 75 6e 
    202d:	49 89 07             	mov    %rax,(%r15)
    2030:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2034:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    203b:	74 6f 20 
    203e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2045:	76 65 20 
    2048:	49 89 47 10          	mov    %rax,0x10(%r15)
    204c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2050:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2057:	72 20 61 
    205a:	49 89 47 20          	mov    %rax,0x20(%r15)
    205e:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2065:	65 
    2066:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    206d:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2072:	44 89 e7             	mov    %r12d,%edi
    2075:	e8 36 ee ff ff       	callq  eb0 <close@plt>
    207a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    207f:	e9 2f 04 00 00       	jmpq   24b3 <submitr+0x690>
    2084:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    208b:	3a 20 55 
    208e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2095:	20 74 6f 
    2098:	49 89 07             	mov    %rax,(%r15)
    209b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    209f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    20a6:	65 63 74 
    20a9:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    20b0:	68 65 20 
    20b3:	49 89 47 10          	mov    %rax,0x10(%r15)
    20b7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    20bb:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    20c2:	76 
    20c3:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    20ca:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    20cf:	44 89 e7             	mov    %r12d,%edi
    20d2:	e8 d9 ed ff ff       	callq  eb0 <close@plt>
    20d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    20dc:	e9 d2 03 00 00       	jmpq   24b3 <submitr+0x690>
    20e1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    20e8:	3a 20 52 
    20eb:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    20f2:	20 73 74 
    20f5:	49 89 07             	mov    %rax,(%r15)
    20f8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    20fc:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2103:	74 6f 6f 
    2106:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    210d:	65 2e 20 
    2110:	49 89 47 10          	mov    %rax,0x10(%r15)
    2114:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2118:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    211f:	61 73 65 
    2122:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2129:	49 54 52 
    212c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2130:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2134:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    213b:	55 46 00 
    213e:	49 89 47 30          	mov    %rax,0x30(%r15)
    2142:	44 89 e7             	mov    %r12d,%edi
    2145:	e8 66 ed ff ff       	callq  eb0 <close@plt>
    214a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    214f:	e9 5f 03 00 00       	jmpq   24b3 <submitr+0x690>
    2154:	49 0f a3 c5          	bt     %rax,%r13
    2158:	73 21                	jae    217b <submitr+0x358>
    215a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    215e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2162:	48 83 c3 01          	add    $0x1,%rbx
    2166:	4c 39 f3             	cmp    %r14,%rbx
    2169:	0f 84 6d 04 00 00    	je     25dc <submitr+0x7b9>
    216f:	44 0f b6 03          	movzbl (%rbx),%r8d
    2173:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2177:	3c 35                	cmp    $0x35,%al
    2179:	76 d9                	jbe    2154 <submitr+0x331>
    217b:	44 89 c0             	mov    %r8d,%eax
    217e:	83 e0 df             	and    $0xffffffdf,%eax
    2181:	83 e8 41             	sub    $0x41,%eax
    2184:	3c 19                	cmp    $0x19,%al
    2186:	76 d2                	jbe    215a <submitr+0x337>
    2188:	41 80 f8 20          	cmp    $0x20,%r8b
    218c:	74 60                	je     21ee <submitr+0x3cb>
    218e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2192:	3c 5f                	cmp    $0x5f,%al
    2194:	76 0a                	jbe    21a0 <submitr+0x37d>
    2196:	41 80 f8 09          	cmp    $0x9,%r8b
    219a:	0f 85 af 03 00 00    	jne    254f <submitr+0x72c>
    21a0:	45 0f b6 c0          	movzbl %r8b,%r8d
    21a4:	48 8d 0d a5 0d 00 00 	lea    0xda5(%rip),%rcx        # 2f50 <array.3418+0x3d0>
    21ab:	ba 08 00 00 00       	mov    $0x8,%edx
    21b0:	be 01 00 00 00       	mov    $0x1,%esi
    21b5:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    21ba:	b8 00 00 00 00       	mov    $0x0,%eax
    21bf:	e8 fc ed ff ff       	callq  fc0 <__sprintf_chk@plt>
    21c4:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    21cb:	00 
    21cc:	88 45 00             	mov    %al,0x0(%rbp)
    21cf:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    21d6:	00 
    21d7:	88 45 01             	mov    %al,0x1(%rbp)
    21da:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    21e1:	00 
    21e2:	88 45 02             	mov    %al,0x2(%rbp)
    21e5:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    21e9:	e9 74 ff ff ff       	jmpq   2162 <submitr+0x33f>
    21ee:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    21f2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    21f6:	e9 67 ff ff ff       	jmpq   2162 <submitr+0x33f>
    21fb:	49 01 c5             	add    %rax,%r13
    21fe:	48 29 c5             	sub    %rax,%rbp
    2201:	74 26                	je     2229 <submitr+0x406>
    2203:	48 89 ea             	mov    %rbp,%rdx
    2206:	4c 89 ee             	mov    %r13,%rsi
    2209:	44 89 e7             	mov    %r12d,%edi
    220c:	e8 6f ec ff ff       	callq  e80 <write@plt>
    2211:	48 85 c0             	test   %rax,%rax
    2214:	7f e5                	jg     21fb <submitr+0x3d8>
    2216:	e8 35 ec ff ff       	callq  e50 <__errno_location@plt>
    221b:	83 38 04             	cmpl   $0x4,(%rax)
    221e:	0f 85 31 01 00 00    	jne    2355 <submitr+0x532>
    2224:	4c 89 f0             	mov    %r14,%rax
    2227:	eb d2                	jmp    21fb <submitr+0x3d8>
    2229:	48 85 db             	test   %rbx,%rbx
    222c:	0f 88 23 01 00 00    	js     2355 <submitr+0x532>
    2232:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2237:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    223e:	00 
    223f:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2244:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2248:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    224d:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2254:	00 
    2255:	ba 00 20 00 00       	mov    $0x2000,%edx
    225a:	e8 08 fb ff ff       	callq  1d67 <rio_readlineb>
    225f:	48 85 c0             	test   %rax,%rax
    2262:	0f 8e 4c 01 00 00    	jle    23b4 <submitr+0x591>
    2268:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    226d:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2274:	00 
    2275:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    227c:	00 
    227d:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2284:	00 
    2285:	48 8d 35 cb 0c 00 00 	lea    0xccb(%rip),%rsi        # 2f57 <array.3418+0x3d7>
    228c:	b8 00 00 00 00       	mov    $0x0,%eax
    2291:	e8 9a ec ff ff       	callq  f30 <__isoc99_sscanf@plt>
    2296:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    229b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    22a2:	0f 85 80 01 00 00    	jne    2428 <submitr+0x605>
    22a8:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    22af:	00 
    22b0:	48 8d 2d b1 0c 00 00 	lea    0xcb1(%rip),%rbp        # 2f68 <array.3418+0x3e8>
    22b7:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    22bc:	b9 03 00 00 00       	mov    $0x3,%ecx
    22c1:	48 89 de             	mov    %rbx,%rsi
    22c4:	48 89 ef             	mov    %rbp,%rdi
    22c7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    22c9:	0f 97 c0             	seta   %al
    22cc:	1c 00                	sbb    $0x0,%al
    22ce:	84 c0                	test   %al,%al
    22d0:	0f 84 89 01 00 00    	je     245f <submitr+0x63c>
    22d6:	ba 00 20 00 00       	mov    $0x2000,%edx
    22db:	48 89 de             	mov    %rbx,%rsi
    22de:	4c 89 ef             	mov    %r13,%rdi
    22e1:	e8 81 fa ff ff       	callq  1d67 <rio_readlineb>
    22e6:	48 85 c0             	test   %rax,%rax
    22e9:	7f d1                	jg     22bc <submitr+0x499>
    22eb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    22f2:	3a 20 43 
    22f5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    22fc:	20 75 6e 
    22ff:	49 89 07             	mov    %rax,(%r15)
    2302:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2306:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    230d:	74 6f 20 
    2310:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2317:	68 65 61 
    231a:	49 89 47 10          	mov    %rax,0x10(%r15)
    231e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2322:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2329:	66 72 6f 
    232c:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2333:	76 65 72 
    2336:	49 89 47 20          	mov    %rax,0x20(%r15)
    233a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    233e:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2343:	44 89 e7             	mov    %r12d,%edi
    2346:	e8 65 eb ff ff       	callq  eb0 <close@plt>
    234b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2350:	e9 5e 01 00 00       	jmpq   24b3 <submitr+0x690>
    2355:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    235c:	3a 20 43 
    235f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2366:	20 75 6e 
    2369:	49 89 07             	mov    %rax,(%r15)
    236c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2370:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2377:	74 6f 20 
    237a:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2381:	20 74 6f 
    2384:	49 89 47 10          	mov    %rax,0x10(%r15)
    2388:	49 89 57 18          	mov    %rdx,0x18(%r15)
    238c:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2393:	73 65 72 
    2396:	49 89 47 20          	mov    %rax,0x20(%r15)
    239a:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    23a1:	00 
    23a2:	44 89 e7             	mov    %r12d,%edi
    23a5:	e8 06 eb ff ff       	callq  eb0 <close@plt>
    23aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23af:	e9 ff 00 00 00       	jmpq   24b3 <submitr+0x690>
    23b4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23bb:	3a 20 43 
    23be:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23c5:	20 75 6e 
    23c8:	49 89 07             	mov    %rax,(%r15)
    23cb:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23cf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23d6:	74 6f 20 
    23d9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    23e0:	66 69 72 
    23e3:	49 89 47 10          	mov    %rax,0x10(%r15)
    23e7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23eb:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    23f2:	61 64 65 
    23f5:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    23fc:	6d 20 73 
    23ff:	49 89 47 20          	mov    %rax,0x20(%r15)
    2403:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2407:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    240e:	65 
    240f:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2416:	44 89 e7             	mov    %r12d,%edi
    2419:	e8 92 ea ff ff       	callq  eb0 <close@plt>
    241e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2423:	e9 8b 00 00 00       	jmpq   24b3 <submitr+0x690>
    2428:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    242f:	00 
    2430:	48 8d 0d 69 0a 00 00 	lea    0xa69(%rip),%rcx        # 2ea0 <array.3418+0x320>
    2437:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    243e:	be 01 00 00 00       	mov    $0x1,%esi
    2443:	4c 89 ff             	mov    %r15,%rdi
    2446:	b8 00 00 00 00       	mov    $0x0,%eax
    244b:	e8 70 eb ff ff       	callq  fc0 <__sprintf_chk@plt>
    2450:	44 89 e7             	mov    %r12d,%edi
    2453:	e8 58 ea ff ff       	callq  eb0 <close@plt>
    2458:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    245d:	eb 54                	jmp    24b3 <submitr+0x690>
    245f:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2466:	00 
    2467:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    246c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2471:	e8 f1 f8 ff ff       	callq  1d67 <rio_readlineb>
    2476:	48 85 c0             	test   %rax,%rax
    2479:	7e 61                	jle    24dc <submitr+0x6b9>
    247b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2482:	00 
    2483:	4c 89 ff             	mov    %r15,%rdi
    2486:	e8 d5 e9 ff ff       	callq  e60 <strcpy@plt>
    248b:	44 89 e7             	mov    %r12d,%edi
    248e:	e8 1d ea ff ff       	callq  eb0 <close@plt>
    2493:	b9 03 00 00 00       	mov    $0x3,%ecx
    2498:	48 8d 3d cc 0a 00 00 	lea    0xacc(%rip),%rdi        # 2f6b <array.3418+0x3eb>
    249f:	4c 89 fe             	mov    %r15,%rsi
    24a2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    24a4:	0f 97 c0             	seta   %al
    24a7:	1c 00                	sbb    $0x0,%al
    24a9:	84 c0                	test   %al,%al
    24ab:	0f 95 c0             	setne  %al
    24ae:	0f b6 c0             	movzbl %al,%eax
    24b1:	f7 d8                	neg    %eax
    24b3:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    24ba:	00 
    24bb:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    24c2:	00 00 
    24c4:	0f 85 95 01 00 00    	jne    265f <submitr+0x83c>
    24ca:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    24d1:	5b                   	pop    %rbx
    24d2:	5d                   	pop    %rbp
    24d3:	41 5c                	pop    %r12
    24d5:	41 5d                	pop    %r13
    24d7:	41 5e                	pop    %r14
    24d9:	41 5f                	pop    %r15
    24db:	c3                   	retq   
    24dc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24e3:	3a 20 43 
    24e6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24ed:	20 75 6e 
    24f0:	49 89 07             	mov    %rax,(%r15)
    24f3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24f7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24fe:	74 6f 20 
    2501:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2508:	73 74 61 
    250b:	49 89 47 10          	mov    %rax,0x10(%r15)
    250f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2513:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    251a:	65 73 73 
    251d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2524:	72 6f 6d 
    2527:	49 89 47 20          	mov    %rax,0x20(%r15)
    252b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    252f:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2536:	65 72 00 
    2539:	49 89 47 30          	mov    %rax,0x30(%r15)
    253d:	44 89 e7             	mov    %r12d,%edi
    2540:	e8 6b e9 ff ff       	callq  eb0 <close@plt>
    2545:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    254a:	e9 64 ff ff ff       	jmpq   24b3 <submitr+0x690>
    254f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2556:	3a 20 52 
    2559:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2560:	20 73 74 
    2563:	49 89 07             	mov    %rax,(%r15)
    2566:	49 89 57 08          	mov    %rdx,0x8(%r15)
    256a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2571:	63 6f 6e 
    2574:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    257b:	20 61 6e 
    257e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2582:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2586:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    258d:	67 61 6c 
    2590:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2597:	6e 70 72 
    259a:	49 89 47 20          	mov    %rax,0x20(%r15)
    259e:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25a2:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    25a9:	6c 65 20 
    25ac:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    25b3:	63 74 65 
    25b6:	49 89 47 30          	mov    %rax,0x30(%r15)
    25ba:	49 89 57 38          	mov    %rdx,0x38(%r15)
    25be:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    25c5:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    25ca:	44 89 e7             	mov    %r12d,%edi
    25cd:	e8 de e8 ff ff       	callq  eb0 <close@plt>
    25d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25d7:	e9 d7 fe ff ff       	jmpq   24b3 <submitr+0x690>
    25dc:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    25e3:	00 
    25e4:	48 83 ec 08          	sub    $0x8,%rsp
    25e8:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    25ef:	00 
    25f0:	50                   	push   %rax
    25f1:	ff 74 24 28          	pushq  0x28(%rsp)
    25f5:	ff 74 24 38          	pushq  0x38(%rsp)
    25f9:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    25fe:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2603:	48 8d 0d c6 08 00 00 	lea    0x8c6(%rip),%rcx        # 2ed0 <array.3418+0x350>
    260a:	ba 00 20 00 00       	mov    $0x2000,%edx
    260f:	be 01 00 00 00       	mov    $0x1,%esi
    2614:	48 89 df             	mov    %rbx,%rdi
    2617:	b8 00 00 00 00       	mov    $0x0,%eax
    261c:	e8 9f e9 ff ff       	callq  fc0 <__sprintf_chk@plt>
    2621:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2628:	b8 00 00 00 00       	mov    $0x0,%eax
    262d:	48 89 df             	mov    %rbx,%rdi
    2630:	f2 ae                	repnz scas %es:(%rdi),%al
    2632:	48 f7 d1             	not    %rcx
    2635:	48 89 cb             	mov    %rcx,%rbx
    2638:	48 83 eb 01          	sub    $0x1,%rbx
    263c:	48 83 c4 20          	add    $0x20,%rsp
    2640:	48 89 dd             	mov    %rbx,%rbp
    2643:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    264a:	00 
    264b:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2651:	48 85 db             	test   %rbx,%rbx
    2654:	0f 85 a9 fb ff ff    	jne    2203 <submitr+0x3e0>
    265a:	e9 d3 fb ff ff       	jmpq   2232 <submitr+0x40f>
    265f:	e8 2c e8 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000002664 <init_timeout>:
    2664:	85 ff                	test   %edi,%edi
    2666:	74 25                	je     268d <init_timeout+0x29>
    2668:	53                   	push   %rbx
    2669:	89 fb                	mov    %edi,%ebx
    266b:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 1d37 <sigalrm_handler>
    2672:	bf 0e 00 00 00       	mov    $0xe,%edi
    2677:	e8 64 e8 ff ff       	callq  ee0 <signal@plt>
    267c:	85 db                	test   %ebx,%ebx
    267e:	bf 00 00 00 00       	mov    $0x0,%edi
    2683:	0f 49 fb             	cmovns %ebx,%edi
    2686:	e8 15 e8 ff ff       	callq  ea0 <alarm@plt>
    268b:	5b                   	pop    %rbx
    268c:	c3                   	retq   
    268d:	f3 c3                	repz retq 

000000000000268f <init_driver>:
    268f:	41 54                	push   %r12
    2691:	55                   	push   %rbp
    2692:	53                   	push   %rbx
    2693:	48 83 ec 20          	sub    $0x20,%rsp
    2697:	49 89 fc             	mov    %rdi,%r12
    269a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26a1:	00 00 
    26a3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    26a8:	31 c0                	xor    %eax,%eax
    26aa:	be 01 00 00 00       	mov    $0x1,%esi
    26af:	bf 0d 00 00 00       	mov    $0xd,%edi
    26b4:	e8 27 e8 ff ff       	callq  ee0 <signal@plt>
    26b9:	be 01 00 00 00       	mov    $0x1,%esi
    26be:	bf 1d 00 00 00       	mov    $0x1d,%edi
    26c3:	e8 18 e8 ff ff       	callq  ee0 <signal@plt>
    26c8:	be 01 00 00 00       	mov    $0x1,%esi
    26cd:	bf 1d 00 00 00       	mov    $0x1d,%edi
    26d2:	e8 09 e8 ff ff       	callq  ee0 <signal@plt>
    26d7:	ba 00 00 00 00       	mov    $0x0,%edx
    26dc:	be 01 00 00 00       	mov    $0x1,%esi
    26e1:	bf 02 00 00 00       	mov    $0x2,%edi
    26e6:	e8 e5 e8 ff ff       	callq  fd0 <socket@plt>
    26eb:	85 c0                	test   %eax,%eax
    26ed:	0f 88 a3 00 00 00    	js     2796 <init_driver+0x107>
    26f3:	89 c3                	mov    %eax,%ebx
    26f5:	48 8d 3d 72 08 00 00 	lea    0x872(%rip),%rdi        # 2f6e <array.3418+0x3ee>
    26fc:	e8 ef e7 ff ff       	callq  ef0 <gethostbyname@plt>
    2701:	48 85 c0             	test   %rax,%rax
    2704:	0f 84 df 00 00 00    	je     27e9 <init_driver+0x15a>
    270a:	48 89 e5             	mov    %rsp,%rbp
    270d:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2714:	00 00 
    2716:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    271d:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2723:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2729:	48 63 50 14          	movslq 0x14(%rax),%rdx
    272d:	48 8b 40 18          	mov    0x18(%rax),%rax
    2731:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2735:	b9 0c 00 00 00       	mov    $0xc,%ecx
    273a:	48 8b 30             	mov    (%rax),%rsi
    273d:	e8 be e7 ff ff       	callq  f00 <__memmove_chk@plt>
    2742:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2749:	ba 10 00 00 00       	mov    $0x10,%edx
    274e:	48 89 ee             	mov    %rbp,%rsi
    2751:	89 df                	mov    %ebx,%edi
    2753:	e8 28 e8 ff ff       	callq  f80 <connect@plt>
    2758:	85 c0                	test   %eax,%eax
    275a:	0f 88 fb 00 00 00    	js     285b <init_driver+0x1cc>
    2760:	89 df                	mov    %ebx,%edi
    2762:	e8 49 e7 ff ff       	callq  eb0 <close@plt>
    2767:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    276e:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2774:	b8 00 00 00 00       	mov    $0x0,%eax
    2779:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    277e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2785:	00 00 
    2787:	0f 85 06 01 00 00    	jne    2893 <init_driver+0x204>
    278d:	48 83 c4 20          	add    $0x20,%rsp
    2791:	5b                   	pop    %rbx
    2792:	5d                   	pop    %rbp
    2793:	41 5c                	pop    %r12
    2795:	c3                   	retq   
    2796:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    279d:	3a 20 43 
    27a0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27a7:	20 75 6e 
    27aa:	49 89 04 24          	mov    %rax,(%r12)
    27ae:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    27b3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27ba:	74 6f 20 
    27bd:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    27c4:	65 20 73 
    27c7:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    27cc:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    27d1:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    27d8:	6b 65 
    27da:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    27e1:	00 
    27e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27e7:	eb 90                	jmp    2779 <init_driver+0xea>
    27e9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    27f0:	3a 20 44 
    27f3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    27fa:	20 75 6e 
    27fd:	49 89 04 24          	mov    %rax,(%r12)
    2801:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2806:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    280d:	74 6f 20 
    2810:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2817:	76 65 20 
    281a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    281f:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2824:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    282b:	72 20 61 
    282e:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2833:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    283a:	72 65 
    283c:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2843:	73 
    2844:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    284a:	89 df                	mov    %ebx,%edi
    284c:	e8 5f e6 ff ff       	callq  eb0 <close@plt>
    2851:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2856:	e9 1e ff ff ff       	jmpq   2779 <init_driver+0xea>
    285b:	4c 8d 05 0c 07 00 00 	lea    0x70c(%rip),%r8        # 2f6e <array.3418+0x3ee>
    2862:	48 8d 0d bf 06 00 00 	lea    0x6bf(%rip),%rcx        # 2f28 <array.3418+0x3a8>
    2869:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2870:	be 01 00 00 00       	mov    $0x1,%esi
    2875:	4c 89 e7             	mov    %r12,%rdi
    2878:	b8 00 00 00 00       	mov    $0x0,%eax
    287d:	e8 3e e7 ff ff       	callq  fc0 <__sprintf_chk@plt>
    2882:	89 df                	mov    %ebx,%edi
    2884:	e8 27 e6 ff ff       	callq  eb0 <close@plt>
    2889:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    288e:	e9 e6 fe ff ff       	jmpq   2779 <init_driver+0xea>
    2893:	e8 f8 e5 ff ff       	callq  e90 <__stack_chk_fail@plt>

0000000000002898 <driver_post>:
    2898:	53                   	push   %rbx
    2899:	4c 89 c3             	mov    %r8,%rbx
    289c:	85 c9                	test   %ecx,%ecx
    289e:	75 17                	jne    28b7 <driver_post+0x1f>
    28a0:	48 85 ff             	test   %rdi,%rdi
    28a3:	74 05                	je     28aa <driver_post+0x12>
    28a5:	80 3f 00             	cmpb   $0x0,(%rdi)
    28a8:	75 33                	jne    28dd <driver_post+0x45>
    28aa:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    28af:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    28b3:	89 c8                	mov    %ecx,%eax
    28b5:	5b                   	pop    %rbx
    28b6:	c3                   	retq   
    28b7:	48 8d 35 c0 06 00 00 	lea    0x6c0(%rip),%rsi        # 2f7e <array.3418+0x3fe>
    28be:	bf 01 00 00 00       	mov    $0x1,%edi
    28c3:	b8 00 00 00 00       	mov    $0x0,%eax
    28c8:	e8 73 e6 ff ff       	callq  f40 <__printf_chk@plt>
    28cd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    28d2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    28d6:	b8 00 00 00 00       	mov    $0x0,%eax
    28db:	eb d8                	jmp    28b5 <driver_post+0x1d>
    28dd:	41 50                	push   %r8
    28df:	52                   	push   %rdx
    28e0:	4c 8d 0d ae 06 00 00 	lea    0x6ae(%rip),%r9        # 2f95 <array.3418+0x415>
    28e7:	49 89 f0             	mov    %rsi,%r8
    28ea:	48 89 f9             	mov    %rdi,%rcx
    28ed:	48 8d 15 ac 06 00 00 	lea    0x6ac(%rip),%rdx        # 2fa0 <array.3418+0x420>
    28f4:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    28f9:	48 8d 3d 6e 06 00 00 	lea    0x66e(%rip),%rdi        # 2f6e <array.3418+0x3ee>
    2900:	e8 1e f5 ff ff       	callq  1e23 <submitr>
    2905:	48 83 c4 10          	add    $0x10,%rsp
    2909:	eb aa                	jmp    28b5 <driver_post+0x1d>
    290b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002910 <__libc_csu_init>:
    2910:	41 57                	push   %r15
    2912:	41 56                	push   %r14
    2914:	49 89 d7             	mov    %rdx,%r15
    2917:	41 55                	push   %r13
    2919:	41 54                	push   %r12
    291b:	4c 8d 25 c6 13 20 00 	lea    0x2013c6(%rip),%r12        # 203ce8 <__frame_dummy_init_array_entry>
    2922:	55                   	push   %rbphost_table
    2923:	48 8d 2d c6 13 20 00 	lea    0x2013c6(%rip),%rbp        # 203cf0 <__init_array_end>
    292a:	53                   	push   %rbx
    292b:	41 89 fd             	mov    %edi,%r13d
    292e:	49 89 f6             	mov    %rsi,%r14
    2931:	4c 29 e5             	sub    %r12,%rbp
    2934:	48 83 ec 08          	sub    $0x8,%rsp
    2938:	48 c1 fd 03          	sar    $0x3,%rbp
    293c:	e8 bf e4 ff ff       	callq  e00 <_init>
    2941:	48 85 ed             	test   %rbp,%rbp
    2944:	74 20                	je     2966 <__libc_csu_init+0x56>
    2946:	31 db                	xor    %ebx,%ebx
    2948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    294f:	00 
    2950:	4c 89 fa             	mov    %r15,%rdx
    2953:	4c 89 f6             	mov    %r14,%rsi
    2956:	44 89 ef             	mov    %r13d,%edi
    2959:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    295d:	48 83 c3 01          	add    $0x1,%rbx
    2961:	48 39 dd             	cmp    %rbx,%rbp
    2964:	75 ea                	jne    2950 <__libc_csu_init+0x40>
    2966:	48 83 c4 08          	add    $0x8,%rsp
    296a:	5b                   	pop    %rbx
    296b:	5d                   	pop    %rbp
    296c:	41 5c                	pop    %r12
    296e:	41 5d                	pop    %r13
    2970:	41 5e                	pop    %r14
    2972:	41 5f                	pop    %r15
    2974:	c3                   	retq   
    2975:	90                   	nop
    2976:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    297d:	00 00 00 

0000000000002980 <__libc_csu_fini>:
    2980:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002984 <_fini>:
    2984:	48 83 ec 08          	sub    $0x8,%rsp
    2988:	48 83 c4 08          	add    $0x8,%rsp
    298c:	c3                   	retq   
