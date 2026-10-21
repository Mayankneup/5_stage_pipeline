	.file	"CheckVowel.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.memset,"ax",@progbits
	.align	2
	.globl	memset
	.type	memset, @function
memset:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	lw	a4,-40(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	memset, .-memset
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	sw	ra,124(sp)
	sw	s0,120(sp)
	addi	s0,sp,128
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	li	a5,1635344384
	addi	a5,a5,333
	sw	a5,-124(s0)
	li	a5,560689152
	addi	a5,a5,-415
	sw	a5,-120(s0)
	li	a5,10
	sw	a5,-116(s0)
	addi	a5,s0,-112
	li	a4,87
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	sw	zero,-20(s0)
	j	.L6
.L9:
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,97
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,65
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,101
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,69
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,105
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,73
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,111
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,79
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,117
	beq	a4,a5,.L7
	lw	a5,-20(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-108(a5)
	li	a5,85
	bne	a4,a5,.L8
.L7:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L8:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L9
	lw	a0,-24(s0)
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,124(sp)
	lw	s0,120(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.section	.text.test,"ax",@progbits
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a4,-20(s0)
	li	a5,3
	bne	a4,a5,.L12
	call	pass
	mv	a5,a0
	j	.L13
.L12:
	call	fail
	mv	a5,a0
.L13:
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	test, .-test
	.section	.text.pass,"ax",@progbits
	.align	2
	.globl	pass
	.type	pass, @function
pass:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a5,1
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	pass, .-pass
	.section	.text.fail,"ax",@progbits
	.align	2
	.globl	fail
	.type	fail, @function
fail:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a5,0
	mv	a0,a5
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	fail, .-fail
	.ident	"GCC: (GNU) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
