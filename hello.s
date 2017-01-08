	.file	"hello.c"
	.section	.rodata
.LC0:
	.string	"hello, world"
.LC1:
	.string	"My name is %s\n"
.LC2:
	.string	"My age is %d\n"
.LC3:
	.string	"My favorite alphabet is %c\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$.LC0, (%esp)
	call	puts
	movl	$20, 24(%esp)
	movb	$65, 17(%esp)
	movb	$109, 18(%esp)
	movb	$97, 19(%esp)
	movb	$114, 20(%esp)
	movb	$97, 21(%esp)
	movb	$104, 22(%esp)
	movb	$0, 23(%esp)
	movb	$81, 31(%esp)
	movl	$.LC1, %eax
	leal	17(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$.LC2, %eax
	movl	24(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movsbl	31(%esp), %edx
	movl	$.LC3, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-16)"
	.section	.note.GNU-stack,"",@progbits
