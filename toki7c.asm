	.file	"toki7c.cpp"
	.text
	.globl	a
	.bss
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.zero	4
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
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
	subq	$16, %rsp
	leaq	a(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	movl	$1, -4(%rbp)
.L6:
	movl	a(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L2
	movl	$0, -8(%rbp)
.L5:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L3
	movl	n(%rip), %eax
	cmpl	$10, %eax
	jne	.L4
	movl	$0, n(%rip)
.L4:
	movl	n(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	n(%rip), %eax
	addl	$1, %eax
	movl	%eax, n(%rip)
	addl	$1, -8(%rbp)
	jmp	.L5
.L3:
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
	jmp	.L6
.L2:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
