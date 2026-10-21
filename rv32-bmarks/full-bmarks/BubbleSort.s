	.file	"BubbleSort.c"
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
	addi	sp,sp,-96
	sw	ra,92(sp)
	sw	s0,88(sp)
	addi	s0,sp,96
	addi	a5,s0,-96
	li	a4,80
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	li	a5,42
	sw	a5,-96(s0)
	li	a5,115
	sw	a5,-92(s0)
	li	a5,23
	sw	a5,-88(s0)
	li	a5,89
	sw	a5,-84(s0)
	li	a5,142
	sw	a5,-80(s0)
	li	a5,7
	sw	a5,-76(s0)
	li	a5,64
	sw	a5,-72(s0)
	li	a5,128
	sw	a5,-68(s0)
	li	a5,91
	sw	a5,-64(s0)
	li	a5,12
	sw	a5,-60(s0)
	li	a5,105
	sw	a5,-56(s0)
	li	a5,53
	sw	a5,-52(s0)
	li	a5,77
	sw	a5,-48(s0)
	li	a5,134
	sw	a5,-44(s0)
	li	a5,999
	sw	a5,-40(s0)
	addi	a5,s0,-96
	li	a1,20
	mv	a0,a5
	call	bubble_srt
	addi	a5,s0,-96
	mv	a0,a5
	call	test
	mv	a5,a0
	mv	a0,a5
	lw	ra,92(sp)
	lw	s0,88(sp)
	addi	sp,sp,96
	jr	ra
	.size	main, .-main
	.section	.text.bubble_srt,"ax",@progbits
	.align	2
	.globl	bubble_srt
	.type	bubble_srt, @function
bubble_srt:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	zero,-20(s0)
	j	.L8
.L12:
	li	a5,1
	sw	a5,-24(s0)
	j	.L9
.L11:
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L10
	lw	a4,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a4,a5
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a3,-24(s0)
	li	a5,1073741824
	addi	a5,a5,-1
	add	a5,a3,a5
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L10:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L9:
	lw	a4,-40(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	lw	a4,-24(s0)
	blt	a4,a5,.L11
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L12
	nop
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	bubble_srt, .-bubble_srt
	.section	.text.test,"ax",@progbits
	.align	2
	.globl	test
	.type	test, @function
test:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	li	a5,1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	sw	zero,-20(s0)
	j	.L14
.L17:
	lw	a5,-20(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	ble	a4,a5,.L15
	call	fail
	mv	a5,a0
	j	.L16
.L15:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L14:
	lw	a4,-20(s0)
	li	a5,18
	ble	a4,a5,.L17
	call	pass
	mv	a5,a0
.L16:
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
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
