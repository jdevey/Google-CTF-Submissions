
rand2:     file format elf64-x86-64


Disassembly of section .init:

0000000000000680 <_init>:
 680:	48 83 ec 08          	sub    $0x8,%rsp
 684:	48 8b 05 5d 09 20 00 	mov    0x20095d(%rip),%rax        # 200fe8 <__gmon_start__>
 68b:	48 85 c0             	test   %rax,%rax
 68e:	74 02                	je     692 <_init+0x12>
 690:	ff d0                	callq  *%rax
 692:	48 83 c4 08          	add    $0x8,%rsp
 696:	c3                   	retq   

Disassembly of section .plt:

00000000000006a0 <.plt>:
 6a0:	ff 35 62 09 20 00    	pushq  0x200962(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 6a6:	ff 25 64 09 20 00    	jmpq   *0x200964(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 6ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006b0 <puts@plt>:
 6b0:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 201018 <puts@GLIBC_2.2.5>
 6b6:	68 00 00 00 00       	pushq  $0x0
 6bb:	e9 e0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006c0 <printf@plt>:
 6c0:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 201020 <printf@GLIBC_2.2.5>
 6c6:	68 01 00 00 00       	pushq  $0x1
 6cb:	e9 d0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006d0 <strcmp@plt>:
 6d0:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 201028 <strcmp@GLIBC_2.2.5>
 6d6:	68 02 00 00 00       	pushq  $0x2
 6db:	e9 c0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006e0 <time@plt>:
 6e0:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 201030 <time@GLIBC_2.2.5>
 6e6:	68 03 00 00 00       	pushq  $0x3
 6eb:	e9 b0 ff ff ff       	jmpq   6a0 <.plt>

00000000000006f0 <__isoc99_scanf@plt>:
 6f0:	ff 25 42 09 20 00    	jmpq   *0x200942(%rip)        # 201038 <__isoc99_scanf@GLIBC_2.7>
 6f6:	68 04 00 00 00       	pushq  $0x4
 6fb:	e9 a0 ff ff ff       	jmpq   6a0 <.plt>

Disassembly of section .plt.got:

0000000000000700 <__cxa_finalize@plt>:
 700:	ff 25 f2 08 20 00    	jmpq   *0x2008f2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 706:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000710 <_start>:
 710:	31 ed                	xor    %ebp,%ebp
 712:	49 89 d1             	mov    %rdx,%r9
 715:	5e                   	pop    %rsi
 716:	48 89 e2             	mov    %rsp,%rdx
 719:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 71d:	50                   	push   %rax
 71e:	54                   	push   %rsp
 71f:	4c 8d 05 3a 03 00 00 	lea    0x33a(%rip),%r8        # a60 <__libc_csu_fini>
 726:	48 8d 0d d3 02 00 00 	lea    0x2d3(%rip),%rcx        # a00 <__libc_csu_init>
 72d:	48 8d 3d 3e 01 00 00 	lea    0x13e(%rip),%rdi        # 872 <main>
 734:	ff 15 a6 08 20 00    	callq  *0x2008a6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 73a:	f4                   	hlt    
 73b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000740 <deregister_tm_clones>:
 740:	48 8d 3d 49 09 20 00 	lea    0x200949(%rip),%rdi        # 201090 <__TMC_END__>
 747:	55                   	push   %rbp
 748:	48 8d 05 41 09 20 00 	lea    0x200941(%rip),%rax        # 201090 <__TMC_END__>
 74f:	48 39 f8             	cmp    %rdi,%rax
 752:	48 89 e5             	mov    %rsp,%rbp
 755:	74 19                	je     770 <deregister_tm_clones+0x30>
 757:	48 8b 05 7a 08 20 00 	mov    0x20087a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 75e:	48 85 c0             	test   %rax,%rax
 761:	74 0d                	je     770 <deregister_tm_clones+0x30>
 763:	5d                   	pop    %rbp
 764:	ff e0                	jmpq   *%rax
 766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 76d:	00 00 00 
 770:	5d                   	pop    %rbp
 771:	c3                   	retq   
 772:	0f 1f 40 00          	nopl   0x0(%rax)
 776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 77d:	00 00 00 

0000000000000780 <register_tm_clones>:
 780:	48 8d 3d 09 09 20 00 	lea    0x200909(%rip),%rdi        # 201090 <__TMC_END__>
 787:	48 8d 35 02 09 20 00 	lea    0x200902(%rip),%rsi        # 201090 <__TMC_END__>
 78e:	55                   	push   %rbp
 78f:	48 29 fe             	sub    %rdi,%rsi
 792:	48 89 e5             	mov    %rsp,%rbp
 795:	48 c1 fe 03          	sar    $0x3,%rsi
 799:	48 89 f0             	mov    %rsi,%rax
 79c:	48 c1 e8 3f          	shr    $0x3f,%rax
 7a0:	48 01 c6             	add    %rax,%rsi
 7a3:	48 d1 fe             	sar    %rsi
 7a6:	74 18                	je     7c0 <register_tm_clones+0x40>
 7a8:	48 8b 05 41 08 20 00 	mov    0x200841(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 7af:	48 85 c0             	test   %rax,%rax
 7b2:	74 0c                	je     7c0 <register_tm_clones+0x40>
 7b4:	5d                   	pop    %rbp
 7b5:	ff e0                	jmpq   *%rax
 7b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 7be:	00 00 
 7c0:	5d                   	pop    %rbp
 7c1:	c3                   	retq   
 7c2:	0f 1f 40 00          	nopl   0x0(%rax)
 7c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7cd:	00 00 00 

00000000000007d0 <__do_global_dtors_aux>:
 7d0:	80 3d b9 08 20 00 00 	cmpb   $0x0,0x2008b9(%rip)        # 201090 <__TMC_END__>
 7d7:	75 2f                	jne    808 <__do_global_dtors_aux+0x38>
 7d9:	48 83 3d 17 08 20 00 	cmpq   $0x0,0x200817(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 7e0:	00 
 7e1:	55                   	push   %rbp
 7e2:	48 89 e5             	mov    %rsp,%rbp
 7e5:	74 0c                	je     7f3 <__do_global_dtors_aux+0x23>
 7e7:	48 8b 3d 5a 08 20 00 	mov    0x20085a(%rip),%rdi        # 201048 <__dso_handle>
 7ee:	e8 0d ff ff ff       	callq  700 <__cxa_finalize@plt>
 7f3:	e8 48 ff ff ff       	callq  740 <deregister_tm_clones>
 7f8:	c6 05 91 08 20 00 01 	movb   $0x1,0x200891(%rip)        # 201090 <__TMC_END__>
 7ff:	5d                   	pop    %rbp
 800:	c3                   	retq   
 801:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 808:	f3 c3                	repz retq 
 80a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000810 <frame_dummy>:
 810:	55                   	push   %rbp
 811:	48 89 e5             	mov    %rsp,%rbp
 814:	5d                   	pop    %rbp
 815:	e9 66 ff ff ff       	jmpq   780 <register_tm_clones>

000000000000081a <next_destination>:
 81a:	55                   	push   %rbp
 81b:	48 89 e5             	mov    %rsp,%rbp
 81e:	48 8b 15 73 08 20 00 	mov    0x200873(%rip),%rdx        # 201098 <seed>
 825:	48 b8 6d e6 ec de 05 	movabs $0x5deece66d,%rax
 82c:	00 00 00 
 82f:	48 0f af c2          	imul   %rdx,%rax
 833:	48 8d 48 0b          	lea    0xb(%rax),%rcx
 837:	ba 01 00 01 00       	mov    $0x10001,%edx
 83c:	48 89 c8             	mov    %rcx,%rax
 83f:	48 f7 e2             	mul    %rdx
 842:	48 89 c8             	mov    %rcx,%rax
 845:	48 29 d0             	sub    %rdx,%rax
 848:	48 d1 e8             	shr    %rax
 84b:	48 01 d0             	add    %rdx,%rax
 84e:	48 c1 e8 2f          	shr    $0x2f,%rax
 852:	48 89 c2             	mov    %rax,%rdx
 855:	48 c1 e2 30          	shl    $0x30,%rdx
 859:	48 29 c2             	sub    %rax,%rdx
 85c:	48 89 c8             	mov    %rcx,%rax
 85f:	48 29 d0             	sub    %rdx,%rax
 862:	48 89 05 2f 08 20 00 	mov    %rax,0x20082f(%rip)        # 201098 <seed>
 869:	48 8b 05 28 08 20 00 	mov    0x200828(%rip),%rax        # 201098 <seed>
 870:	5d                   	pop    %rbp
 871:	c3                   	retq   

0000000000000872 <main>:
 872:	55                   	push   %rbp
 873:	48 89 e5             	mov    %rsp,%rbp
 876:	53                   	push   %rbx
 877:	48 83 ec 38          	sub    $0x38,%rsp
 87b:	89 7d cc             	mov    %edi,-0x34(%rbp)
 87e:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
 882:	bf 00 00 00 00       	mov    $0x0,%edi
 887:	e8 54 fe ff ff       	callq  6e0 <time@plt>
 88c:	48 89 05 05 08 20 00 	mov    %rax,0x200805(%rip)        # 201098 <seed>
 893:	48 8d 3d 29 02 00 00 	lea    0x229(%rip),%rdi        # ac3 <_IO_stdin_used+0x53>
 89a:	e8 11 fe ff ff       	callq  6b0 <puts@plt>
 89f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
 8a6:	00 
 8a7:	e9 9a 00 00 00       	jmpq   946 <main+0xd4>
 8ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8b0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 8b7:	00 
 8b8:	48 8d 05 a1 07 20 00 	lea    0x2007a1(%rip),%rax        # 201060 <destinations>
 8bf:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
 8c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8c7:	48 89 c6             	mov    %rax,%rsi
 8ca:	48 8d 3d 05 02 00 00 	lea    0x205(%rip),%rdi        # ad6 <_IO_stdin_used+0x66>
 8d1:	b8 00 00 00 00       	mov    $0x0,%eax
 8d6:	e8 e5 fd ff ff       	callq  6c0 <printf@plt>
 8db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 8df:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 8e6:	00 
 8e7:	48 8d 05 72 07 20 00 	lea    0x200772(%rip),%rax        # 201060 <destinations>
 8ee:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
 8f2:	48 8d 35 c6 01 00 00 	lea    0x1c6(%rip),%rsi        # abf <_IO_stdin_used+0x4f>
 8f9:	48 89 c7             	mov    %rax,%rdi
 8fc:	e8 cf fd ff ff       	callq  6d0 <strcmp@plt>
 901:	85 c0                	test   %eax,%eax
 903:	75 0e                	jne    913 <main+0xa1>
 905:	48 8d 3d d5 01 00 00 	lea    0x1d5(%rip),%rdi        # ae1 <_IO_stdin_used+0x71>
 90c:	e8 9f fd ff ff       	callq  6b0 <puts@plt>
 911:	eb 2e                	jmp    941 <main+0xcf>
 913:	b8 00 00 00 00       	mov    $0x0,%eax
 918:	e8 fd fe ff ff       	callq  81a <next_destination>
 91d:	48 89 c3             	mov    %rax,%rbx
 920:	b8 00 00 00 00       	mov    $0x0,%eax
 925:	e8 f0 fe ff ff       	callq  81a <next_destination>
 92a:	48 89 da             	mov    %rbx,%rdx
 92d:	48 89 c6             	mov    %rax,%rsi
 930:	48 8d 3d b5 01 00 00 	lea    0x1b5(%rip),%rdi        # aec <_IO_stdin_used+0x7c>
 937:	b8 00 00 00 00       	mov    $0x0,%eax
 93c:	e8 7f fd ff ff       	callq  6c0 <printf@plt>
 941:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
 946:	48 83 7d e8 05       	cmpq   $0x5,-0x18(%rbp)
 94b:	0f 86 5b ff ff ff    	jbe    8ac <main+0x3a>
 951:	48 8d 3d a0 01 00 00 	lea    0x1a0(%rip),%rdi        # af8 <_IO_stdin_used+0x88>
 958:	b8 00 00 00 00       	mov    $0x0,%eax
 95d:	e8 5e fd ff ff       	callq  6c0 <printf@plt>
 962:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 966:	48 89 c6             	mov    %rax,%rsi
 969:	48 8d 3d b5 01 00 00 	lea    0x1b5(%rip),%rdi        # b25 <_IO_stdin_used+0xb5>
 970:	b8 00 00 00 00       	mov    $0x0,%eax
 975:	e8 76 fd ff ff       	callq  6f0 <__isoc99_scanf@plt>
 97a:	48 8d 3d af 01 00 00 	lea    0x1af(%rip),%rdi        # b30 <_IO_stdin_used+0xc0>
 981:	b8 00 00 00 00       	mov    $0x0,%eax
 986:	e8 35 fd ff ff       	callq  6c0 <printf@plt>
 98b:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
 98f:	48 89 c6             	mov    %rax,%rsi
 992:	48 8d 3d 8c 01 00 00 	lea    0x18c(%rip),%rdi        # b25 <_IO_stdin_used+0xb5>
 999:	b8 00 00 00 00       	mov    $0x0,%eax
 99e:	e8 4d fd ff ff       	callq  6f0 <__isoc99_scanf@plt>
 9a3:	b8 00 00 00 00       	mov    $0x0,%eax
 9a8:	e8 6d fe ff ff       	callq  81a <next_destination>
 9ad:	48 89 c2             	mov    %rax,%rdx
 9b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 9b4:	48 39 c2             	cmp    %rax,%rdx
 9b7:	75 22                	jne    9db <main+0x169>
 9b9:	b8 00 00 00 00       	mov    $0x0,%eax
 9be:	e8 57 fe ff ff       	callq  81a <next_destination>
 9c3:	48 89 c2             	mov    %rax,%rdx
 9c6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 9ca:	48 39 c2             	cmp    %rax,%rdx
 9cd:	75 0c                	jne    9db <main+0x169>
 9cf:	48 8d 3d 8a 01 00 00 	lea    0x18a(%rip),%rdi        # b60 <_IO_stdin_used+0xf0>
 9d6:	e8 d5 fc ff ff       	callq  6b0 <puts@plt>
 9db:	48 8d 3d c6 01 00 00 	lea    0x1c6(%rip),%rdi        # ba8 <_IO_stdin_used+0x138>
 9e2:	e8 c9 fc ff ff       	callq  6b0 <puts@plt>
 9e7:	b8 00 00 00 00       	mov    $0x0,%eax
 9ec:	48 83 c4 38          	add    $0x38,%rsp
 9f0:	5b                   	pop    %rbx
 9f1:	5d                   	pop    %rbp
 9f2:	c3                   	retq   
 9f3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fa:	00 00 00 
 9fd:	0f 1f 00             	nopl   (%rax)

0000000000000a00 <__libc_csu_init>:
 a00:	41 57                	push   %r15
 a02:	49 89 d7             	mov    %rdx,%r15
 a05:	41 56                	push   %r14
 a07:	49 89 f6             	mov    %rsi,%r14
 a0a:	41 55                	push   %r13
 a0c:	41 89 fd             	mov    %edi,%r13d
 a0f:	41 54                	push   %r12
 a11:	4c 8d 25 d0 03 20 00 	lea    0x2003d0(%rip),%r12        # 200de8 <__frame_dummy_init_array_entry>
 a18:	55                   	push   %rbp
 a19:	48 8d 2d d0 03 20 00 	lea    0x2003d0(%rip),%rbp        # 200df0 <__init_array_end>
 a20:	53                   	push   %rbx
 a21:	4c 29 e5             	sub    %r12,%rbp
 a24:	48 83 ec 08          	sub    $0x8,%rsp
 a28:	e8 53 fc ff ff       	callq  680 <_init>
 a2d:	48 c1 fd 03          	sar    $0x3,%rbp
 a31:	74 1b                	je     a4e <__libc_csu_init+0x4e>
 a33:	31 db                	xor    %ebx,%ebx
 a35:	0f 1f 00             	nopl   (%rax)
 a38:	4c 89 fa             	mov    %r15,%rdx
 a3b:	4c 89 f6             	mov    %r14,%rsi
 a3e:	44 89 ef             	mov    %r13d,%edi
 a41:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 a45:	48 83 c3 01          	add    $0x1,%rbx
 a49:	48 39 dd             	cmp    %rbx,%rbp
 a4c:	75 ea                	jne    a38 <__libc_csu_init+0x38>
 a4e:	48 83 c4 08          	add    $0x8,%rsp
 a52:	5b                   	pop    %rbx
 a53:	5d                   	pop    %rbp
 a54:	41 5c                	pop    %r12
 a56:	41 5d                	pop    %r13
 a58:	41 5e                	pop    %r14
 a5a:	41 5f                	pop    %r15
 a5c:	c3                   	retq   
 a5d:	0f 1f 00             	nopl   (%rax)

0000000000000a60 <__libc_csu_fini>:
 a60:	c3                   	retq   

Disassembly of section .fini:

0000000000000a64 <_fini>:
 a64:	48 83 ec 08          	sub    $0x8,%rsp
 a68:	48 83 c4 08          	add    $0x8,%rsp
 a6c:	c3                   	retq   
