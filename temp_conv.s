	.file	"temp_conv.c"
	.section	.rodata
.LC6:
	.string	"%0.3f %6.1f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	.LC1(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	.LC2(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L2
.L3:
	movss	-20(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm2
	movss	%xmm2, -4(%rbp)
	movss	-4(%rbp), %xmm1
	cvtps2pd	%xmm1, %xmm1
	movss	-20(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC6, %edi
	movl	$2, %eax
	call	printf
	movss	-20(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
.L2:
	movss	-12(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jae	.L3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1133903872
	.align 4
.LC2:
	.long	1101004800
	.align 8
.LC3:
	.long	0
	.long	1077936128
	.align 8
.LC4:
	.long	0
	.long	1075052544
	.align 8
.LC5:
	.long	0
	.long	1075970048
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
