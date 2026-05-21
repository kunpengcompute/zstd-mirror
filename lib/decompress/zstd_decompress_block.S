	.arch armv8-a
	.file	"zstd_decompress_block.c"
	.text
	.align	2
	.p2align 4,,11
	.type	ZSTD_safecopy, %function
ZSTD_safecopy:
.LFB4537:
	.cfi_startproc
	add	x6, x0, x3
	cmp	x3, 7
	ble	.L75
	cmp	w4, 1
	beq	.L76
	cmp	x6, x1
	bls	.L35
	cmp	x1, x0
	bcs	.L77
.L20:
	cmp	x6, x0
	bls	.L1
	sub	x3, x6, x0
	sub	x5, x3, #1
	cmp	x5, 6
	bls	.L42
	add	x4, x2, 1
	mov	x1, 0
	sub	x4, x0, x4
	cmp	x4, 14
	bhi	.L78
	.p2align 3,,7
.L33:
	ldrb	w4, [x2, x1]
	strb	w4, [x0, x1]
	add	x1, x1, 1
	cmp	x1, x3
	bne	.L33
.L1:
	ret
	.p2align 2,,3
.L76:
	sub	x4, x0, x2
	cmp	x4, 7
	bls	.L79
	ldr	d0, [x2]
	str	d0, [x0]
.L15:
	add	x5, x2, 8
	add	x4, x0, 8
	cmp	x6, x1
	bhi	.L16
	sub	x2, x0, x2
	cmp	x2, 15
	bgt	.L17
	.p2align 3,,7
.L18:
	ldr	d0, [x5], 8
	str	d0, [x4], 8
	cmp	x6, x4
	bhi	.L18
	ret
	.p2align 2,,3
.L75:
	cmp	x6, x0
	bls	.L1
	sub	x1, x3, #1
	cmp	x1, 6
	bls	.L38
	add	x4, x2, 1
	mov	x1, 0
	sub	x4, x0, x4
	cmp	x4, 14
	bhi	.L80
	.p2align 3,,7
.L11:
	ldrb	w4, [x2, x1]
	strb	w4, [x0, x1]
	add	x1, x1, 1
	cmp	x3, x1
	beq	.L1
.L73:
	ldrb	w4, [x2, x1]
	strb	w4, [x0, x1]
	add	x1, x1, 1
	cmp	x3, x1
	bne	.L11
	b	.L1
	.p2align 2,,3
.L80:
	and	x4, x3, -16
	.p2align 3,,7
.L5:
	ldr	q0, [x2, x1]
	str	q0, [x0, x1]
	add	x1, x1, 16
	cmp	x1, x4
	bne	.L5
	and	x5, x3, -16
	add	x1, x0, x5
	add	x4, x2, x5
	cmp	x3, x5
	beq	.L1
	and	x7, x3, 15
	sub	x8, x7, #1
	cmp	x8, 6
	bls	.L31
	ldr	d0, [x2, x5]
	and	x3, x3, 8
	add	x1, x1, x3
	add	x4, x4, x3
	str	d0, [x0, x5]
	cmp	x7, x3
	beq	.L1
.L31:
	mov	x0, x1
	ldrb	w2, [x4]
	strb	w2, [x0], 1
	cmp	x6, x0
	bls	.L1
	ldrb	w2, [x4, 1]
	add	x0, x1, 2
	strb	w2, [x1, 1]
	cmp	x6, x0
	bls	.L1
	ldrb	w2, [x4, 2]
	add	x0, x1, 3
	strb	w2, [x1, 2]
	cmp	x6, x0
	bls	.L1
	ldrb	w2, [x4, 3]
	add	x0, x1, 4
	strb	w2, [x1, 3]
	cmp	x6, x0
	bls	.L1
	ldrb	w2, [x4, 4]
	add	x0, x1, 5
	strb	w2, [x1, 4]
	cmp	x6, x0
	bls	.L1
	ldrb	w2, [x4, 5]
	add	x0, x1, 6
	strb	w2, [x1, 5]
	cmp	x6, x0
	bls	.L1
	ldrb	w0, [x4, 6]
	strb	w0, [x1, 6]
	ret
	.p2align 2,,3
.L79:
	ldrb	w7, [x2]
	adrp	x5, .LANCHOR0
	strb	w7, [x0]
	add	x5, x5, :lo12:.LANCHOR0
	add	x7, x5, 32
	ldrb	w8, [x2, 1]
	strb	w8, [x0, 1]
	ldr	w7, [x7, x4, lsl 2]
	ldrb	w8, [x2, 2]
	strb	w8, [x0, 2]
	add	x8, x2, x7
	ldrsw	x5, [x5, x4, lsl 2]
	ldrb	w4, [x2, 3]
	strb	w4, [x0, 3]
	ldr	w4, [x2, x7]
	sub	x2, x8, x5
	str	w4, [x0, 4]
	b	.L15
	.p2align 2,,3
.L38:
	mov	x1, 0
	ldrb	w4, [x2, x1]
	strb	w4, [x0, x1]
	add	x1, x1, 1
	cmp	x3, x1
	bne	.L73
	b	.L1
	.p2align 2,,3
.L78:
	cmp	x5, 14
	bls	.L44
	and	x4, x3, -16
	.p2align 3,,7
.L28:
	ldr	q0, [x2, x1]
	str	q0, [x0, x1]
	add	x1, x1, 16
	cmp	x1, x4
	bne	.L28
	and	x5, x3, -16
	add	x1, x0, x5
	add	x4, x2, x5
	tst	x3, 15
	beq	.L1
	sub	x3, x3, x5
	sub	x7, x3, #1
	cmp	x7, 6
	bls	.L31
.L27:
	ldr	d0, [x2, x5]
	and	x2, x3, -8
	add	x1, x1, x2
	add	x4, x4, x2
	str	d0, [x0, x5]
	tst	x3, 7
	bne	.L31
	ret
	.p2align 2,,3
.L42:
	mov	x1, 0
	b	.L33
	.p2align 2,,3
.L16:
	cmp	x1, x4
	bcc	.L40
	sub	x7, x1, x4
	sub	x2, x0, x2
	mov	x3, x7
	cmp	x2, 15
	bgt	.L41
	mov	x0, x5
	.p2align 3,,7
.L22:
	ldr	d0, [x0], 8
	str	d0, [x4], 8
	cmp	x1, x4
	bhi	.L22
.L23:
	add	x2, x5, x7
	mov	x0, x1
	b	.L20
.L17:
	sub	x3, x3, #8
	mov	x2, x5
	mov	x0, x4
	.p2align 3,,7
.L35:
	ldr	q0, [x2]
	str	q0, [x0]
	cmp	x3, 16
	ble	.L1
	add	x0, x0, 16
	add	x2, x2, 16
	.p2align 3,,7
.L19:
	ldr	q0, [x2]
	add	x0, x0, 32
	add	x2, x2, 32
	str	q0, [x0, -32]
	ldr	q0, [x2, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L19
	ret
	.p2align 2,,3
.L77:
	sub	x3, x1, x0
	mov	x7, x3
.L21:
	ldr	q0, [x2]
	str	q0, [x0]
	cmp	x3, 16
	ble	.L24
	add	x0, x0, 16
	add	x3, x2, 16
	.p2align 3,,7
.L25:
	ldr	q0, [x3]
	add	x0, x0, 32
	add	x3, x3, 32
	str	q0, [x0, -32]
	ldr	q0, [x3, -16]
	str	q0, [x0, -16]
	cmp	x1, x0
	bhi	.L25
.L24:
	mov	x5, x2
	b	.L23
.L44:
	mov	x4, x2
	mov	x1, x0
	mov	x5, 0
	b	.L27
.L41:
	mov	x2, x5
	mov	x0, x4
	b	.L21
.L40:
	mov	x2, x5
	mov	x0, x4
	b	.L20
	.cfi_endproc
.LFE4537:
	.size	ZSTD_safecopy, .-ZSTD_safecopy
	.align	2
	.p2align 4,,11
	.type	ZSTD_safecopyDstBeforeSrc, %function
ZSTD_safecopyDstBeforeSrc:
.LFB4538:
	.cfi_startproc
	cmp	x2, 7
	sub	x3, x0, x1
	ccmn	x3, #7, 0, gt
	mov	x6, x2
	add	x4, x0, x2
	bge	.L128
	sub	x5, x4, #32
	cmp	x5, x0
	ccmn	x3, #16, 0, cs
	blt	.L129
.L92:
	cmp	x4, x0
	bls	.L81
	sub	x3, x4, x0
	sub	x6, x3, #1
	cmp	x6, 6
	bls	.L107
	add	x5, x1, 1
	mov	x2, 0
	sub	x5, x0, x5
	cmp	x5, 14
	bhi	.L130
	.p2align 3,,7
.L102:
	ldrb	w4, [x1, x2]
	strb	w4, [x0, x2]
	add	x2, x2, 1
	cmp	x2, x3
	bne	.L102
.L81:
	ret
	.p2align 2,,3
.L130:
	cmp	x6, 14
	bls	.L109
	and	x5, x3, -16
	.p2align 3,,7
.L97:
	ldr	q0, [x1, x2]
	str	q0, [x0, x2]
	add	x2, x2, 16
	cmp	x2, x5
	bne	.L97
	and	x6, x3, -16
	add	x2, x0, x6
	add	x5, x1, x6
	tst	x3, 15
	beq	.L81
	sub	x3, x3, x6
	sub	x7, x3, #1
	cmp	x7, 6
	bls	.L100
.L96:
	ldr	d0, [x1, x6]
	and	x1, x3, -8
	add	x2, x2, x1
	add	x5, x5, x1
	str	d0, [x0, x6]
	tst	x3, 7
	beq	.L81
.L100:
	mov	x0, x2
	ldrb	w1, [x5]
	strb	w1, [x0], 1
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 1]
	add	x0, x2, 2
	strb	w1, [x2, 1]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 2]
	add	x0, x2, 3
	strb	w1, [x2, 2]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 3]
	add	x0, x2, 4
	strb	w1, [x2, 3]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 4]
	add	x0, x2, 5
	strb	w1, [x2, 4]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 5]
	add	x0, x2, 6
	strb	w1, [x2, 5]
	cmp	x4, x0
	bls	.L81
	ldrb	w0, [x5, 6]
	strb	w0, [x2, 6]
	ret
	.p2align 2,,3
.L107:
	mov	x2, 0
	ldrb	w4, [x1, x2]
	strb	w4, [x0, x2]
	add	x2, x2, 1
	cmp	x2, x3
	bne	.L102
	b	.L81
	.p2align 2,,3
.L128:
	cmp	x0, x4
	bcs	.L81
	sub	x7, x2, #1
	cmp	x7, 6
	bls	.L104
	add	x5, x1, 1
	mov	x3, 0
	sub	x5, x0, x5
	cmp	x5, 14
	bhi	.L131
	.p2align 3,,7
.L90:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x2, x3
	beq	.L81
.L127:
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L90
	b	.L81
	.p2align 2,,3
.L129:
	ldr	q0, [x1]
	sub	x3, x5, x0
	str	q0, [x0]
	cmp	x3, 16
	ble	.L93
	add	x0, x0, 16
	add	x2, x1, 16
	.p2align 3,,7
.L94:
	ldr	q0, [x2]
	add	x0, x0, 32
	add	x2, x2, 32
	str	q0, [x0, -32]
	ldr	q0, [x2, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L94
.L93:
	add	x1, x1, x3
	mov	x0, x5
	b	.L92
	.p2align 2,,3
.L131:
	cmp	x7, 14
	bls	.L106
	and	x5, x2, -16
	.p2align 3,,7
.L86:
	ldr	q0, [x1, x3]
	str	q0, [x0, x3]
	add	x3, x3, 16
	cmp	x3, x5
	bne	.L86
	and	x7, x2, -16
	add	x3, x0, x7
	add	x5, x1, x7
	cmp	x2, x7
	beq	.L81
	and	x6, x2, 15
	sub	x2, x6, #1
	cmp	x2, 6
	bls	.L88
.L85:
	ldr	d0, [x1, x7]
	and	x1, x6, -8
	add	x3, x3, x1
	add	x5, x5, x1
	str	d0, [x0, x7]
	tst	x6, 7
	beq	.L81
.L88:
	mov	x0, x3
	ldrb	w1, [x5]
	strb	w1, [x0], 1
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 1]
	add	x0, x3, 2
	strb	w1, [x3, 1]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 2]
	add	x0, x3, 3
	strb	w1, [x3, 2]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 3]
	add	x0, x3, 4
	strb	w1, [x3, 3]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 4]
	add	x0, x3, 5
	strb	w1, [x3, 4]
	cmp	x4, x0
	bls	.L81
	ldrb	w1, [x5, 5]
	add	x0, x3, 6
	strb	w1, [x3, 5]
	cmp	x4, x0
	bls	.L81
	ldrb	w0, [x5, 6]
	strb	w0, [x3, 6]
	ret
	.p2align 2,,3
.L104:
	mov	x3, 0
	ldrb	w4, [x1, x3]
	strb	w4, [x0, x3]
	add	x3, x3, 1
	cmp	x2, x3
	bne	.L127
	b	.L81
.L109:
	mov	x5, x1
	mov	x2, x0
	mov	x6, 0
	b	.L96
.L106:
	mov	x5, x1
	mov	x3, x0
	mov	x7, 0
	b	.L85
	.cfi_endproc
.LFE4538:
	.size	ZSTD_safecopyDstBeforeSrc, .-ZSTD_safecopyDstBeforeSrc
	.align	2
	.p2align 4,,11
	.type	ZSTD_execSequenceEndSplitLitBuffer, %function
ZSTD_execSequenceEndSplitLitBuffer:
.LFB4540:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	sub	x1, x1, x0
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldp	x10, x22, [x3]
	add	x21, x10, x22
	cmp	x1, x21
	bcc	.L140
	ldr	x1, [x4]
	mov	x11, x4
	ldr	x9, [x3, 16]
	sub	x5, x5, x1
	cmp	x5, x10
	bcc	.L136
	add	x14, x1, x10
	cmp	x0, x14
	ccmp	x1, x0, 2, cc
	bcc	.L140
	mov	x13, x6
	mov	x12, x7
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -40
	.cfi_offset 19, -48
	add	x19, x0, x10
	mov	x20, x2
	mov	x2, x10
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	bl	ZSTD_safecopyDstBeforeSrc
	str	x14, [x11]
	sub	x0, x19, x13
	sub	x23, x19, x9
	cmp	x0, x9
	bcs	.L135
	sub	x7, x19, x12
	cmp	x7, x9
	bcc	.L142
	ldr	x0, [sp, 64]
	sub	x2, x13, x23
	ldr	x3, [sp, 64]
	sub	x1, x0, x2
	add	x0, x1, x22
	cmp	x3, x0
	bcs	.L143
	mov	x0, x19
	sub	x22, x22, x2
	mov	x23, x13
	add	x19, x19, x2
	bl	memmove
.L135:
	mov	x2, x23
	mov	x1, x20
	mov	x0, x19
	mov	x3, x22
	mov	w4, 1
	bl	ZSTD_safecopy
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x23, [sp, 48]
	.cfi_restore 23
.L132:
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L140:
	.cfi_restore_state
	mov	x21, -70
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L142:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x23, [sp, 48]
	.cfi_restore 23
.L136:
	mov	x21, -20
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L143:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x0, x19
	mov	x2, x22
	bl	memmove
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x23, [sp, 48]
	.cfi_restore 23
	b	.L132
	.cfi_endproc
.LFE4540:
	.size	ZSTD_execSequenceEndSplitLitBuffer, .-ZSTD_execSequenceEndSplitLitBuffer
	.align	2
	.p2align 4,,11
	.type	ZSTD_execSequenceEnd, %function
ZSTD_execSequenceEnd:
.LFB4539:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	sub	x8, x1, x0
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldp	x10, x21, [x2]
	add	x22, x10, x21
	cmp	x8, x22
	bcc	.L151
	ldr	x12, [x3]
	mov	x9, x3
	ldr	x13, [x2, 16]
	sub	x4, x4, x12
	cmp	x4, x10
	bcc	.L148
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -40
	.cfi_offset 19, -48
	sub	x20, x1, #32
	add	x19, x0, x10
	mov	x15, x5
	mov	x2, x12
	mov	x11, x6
	mov	x14, x7
	mov	x1, x20
	mov	x3, x10
	mov	w4, 0
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	bl	ZSTD_safecopy
	add	x12, x12, x10
	sub	x0, x19, x15
	str	x12, [x9]
	sub	x23, x19, x13
	cmp	x0, x13
	bcs	.L147
	sub	x6, x19, x11
	cmp	x6, x13
	bcc	.L153
	sub	x2, x15, x23
	sub	x1, x14, x2
	add	x0, x1, x21
	cmp	x14, x0
	bcs	.L154
	mov	x0, x19
	sub	x21, x21, x2
	mov	x23, x15
	add	x19, x19, x2
	bl	memmove
.L147:
	mov	x2, x23
	mov	x1, x20
	mov	x0, x19
	mov	x3, x21
	mov	w4, 1
	bl	ZSTD_safecopy
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x23, [sp, 48]
	.cfi_restore 23
.L144:
	mov	x0, x22
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L153:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x23, [sp, 48]
	.cfi_restore 23
.L148:
	mov	x22, -20
	mov	x0, x22
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L151:
	.cfi_restore_state
	mov	x22, -70
	mov	x0, x22
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L154:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 23, -16
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x0, x19
	mov	x2, x21
	bl	memmove
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldr	x23, [sp, 48]
	.cfi_restore 23
	b	.L144
	.cfi_endproc
.LFE4539:
	.size	ZSTD_execSequenceEnd, .-ZSTD_execSequenceEnd
	.align	2
	.p2align 4,,11
	.type	ZSTD_buildFSETable_body_default.constprop.0, %function
ZSTD_buildFSETable_body_default.constprop.0:
.LFB4568:
	.cfi_startproc
	sub	w7, w5, #1
	mov	x18, 0
	mov	w14, 1
	bfi	x18, x5, 32, 32
	lsl	w7, w14, w7
	mov	x11, 1
	mov	x16, x1
	lsl	w14, w14, w5
	sxth	w13, w7
	bfi	x18, x11, 0, 32
	sub	w12, w14, #1
	add	x1, x0, 8
	cmn	w2, #1
	beq	.L156
	uxtw	x17, w2
	mov	w9, w12
	mov	x7, 0
	mov	w15, 0
	b	.L160
	.p2align 2,,3
.L157:
	cmp	w13, w8
	strh	w10, [x6, x7, lsl 1]
	csel	w11, w11, wzr, gt
	add	x8, x7, 1
	mov	w15, 1
	cmp	x7, x17
	beq	.L200
.L183:
	mov	x7, x8
.L160:
	ldrsh	w8, [x16, x7, lsl 1]
	and	w10, w8, 65535
	cmn	w8, #1
	bne	.L157
	add	x8, x1, w9, uxtw 3
	mov	w10, 1
	sub	w9, w9, #1
	str	w7, [x8, 4]
	add	x8, x7, 1
	strh	w10, [x6, x7, lsl 1]
	cmp	x7, x17
	bne	.L183
.L200:
	lsr	w7, w18, 0
	cmp	w15, 0
	csel	x11, x11, x7, ne
	bfi	x18, x11, 0, 32
	str	x18, [x0]
	cmp	w12, w9
	beq	.L201
	lsr	w11, w14, 3
	mov	x15, 0
	add	w11, w11, w14, lsr 1
	mov	w2, 0
	add	w11, w11, 3
	.p2align 3,,7
.L180:
	ldrsh	w10, [x16, x15, lsl 1]
	mov	w13, w15
	cmp	w10, 0
	ble	.L176
	mov	w7, 0
	.p2align 3,,7
.L179:
	add	x8, x1, w2, uxtw 3
	add	w2, w2, w11
	and	w2, w12, w2
	str	w13, [x8, 4]
	cmp	w2, w9
	bhi	.L178
.L177:
	add	w7, w7, 1
	cmp	w10, w7
	bne	.L179
.L176:
	add	x7, x15, 1
	cmp	x15, x17
	beq	.L202
	mov	x15, x7
	b	.L180
	.p2align 2,,3
.L178:
	add	w2, w2, w11
	and	w2, w12, w2
	cmp	w2, w9
	bls	.L177
	add	w2, w2, w11
	and	w2, w12, w2
	cmp	w2, w9
	bls	.L177
	b	.L178
	.p2align 2,,3
.L202:
	cbz	w14, .L155
.L174:
	add	x0, x0, 16
	and	w5, w5, 255
	add	x10, x0, w12, uxtw 3
	and	w14, w14, 65535
	mov	w11, 31
	.p2align 3,,7
.L182:
	ldr	w7, [x1, 4]
	add	x1, x1, 8
	ubfiz	x8, x7, 1, 32
	ldrh	w2, [x6, x8]
	clz	w0, w2
	add	w9, w2, 1
	sub	w0, w11, w0
	strh	w9, [x6, x8]
	sub	w0, w5, w0
	and	w0, w0, 255
	strb	w0, [x1, -5]
	lsl	w2, w2, w0
	sub	w2, w2, w14
	strh	w2, [x1, -8]
	ldrb	w0, [x4, w7, uxtw]
	strb	w0, [x1, -6]
	ldr	w0, [x3, w7, uxtw 2]
	str	w0, [x1, -4]
	cmp	x1, x10
	bne	.L182
.L155:
	ret
.L201:
	lsr	w15, w14, 1
	add	x7, x16, 2
	add	w15, w15, w14, lsr 3
	movi	v2.16b, 0x1
	add	x2, x7, w2, uxtw 1
	add	w15, w15, 3
	add	x9, x6, 106
	uxtw	x13, w12
	fmov	d0, xzr
	mov	x10, 0
	.p2align 3,,7
.L167:
	ldrsh	w17, [x16]
	str	d0, [x9, x10]
	cmp	w17, 8
	ble	.L172
	sub	w7, w17, #9
	lsr	w8, w7, 3
	add	w8, w8, 1
	cmp	w7, 7
	bls	.L184
	add	x7, x10, 114
	lsr	w11, w8, 1
	dup	v1.2d, v0.d[0]
	add	x7, x6, x7
	add	x11, x7, w11, uxtw 4
	.p2align 3,,7
.L170:
	str	q1, [x7], 16
	cmp	x7, x11
	bne	.L170
	tbz	x8, 0, .L172
	and	w7, w8, -2
	add	w7, w7, 1
	lsl	w7, w7, 3
.L169:
	add	x8, x9, x10
	str	d0, [x8, w7, sxtw]
.L172:
	add	x16, x16, 2
	add	d0, d0, d2
	add	x10, x10, w17, sxtw
	cmp	x16, x2
	bne	.L167
.L168:
	uxtw	x2, w14
	cbz	w14, .L155
	sub	x11, x2, #1
	add	x2, x6, 108
	and	x11, x11, -2
	add	x11, x11, x2
	mov	x2, 0
	.p2align 3,,7
.L175:
	and	x8, x2, x13
	add	x2, x2, x15
	and	x7, x2, x13
	ldrb	w10, [x9]
	add	x8, x1, x8, lsl 3
	add	x2, x2, x15
	add	x7, x1, x7, lsl 3
	add	x9, x9, 2
	and	x2, x2, x13
	str	w10, [x8, 4]
	ldrb	w8, [x9, -1]
	str	w8, [x7, 4]
	cmp	x9, x11
	bne	.L175
	b	.L174
.L184:
	mov	w7, 8
	b	.L169
.L156:
	lsr	w15, w14, 1
	add	x9, x6, 106
	add	w15, w15, w14, lsr 3
	uxtw	x13, w12
	add	w15, w15, 3
	str	x18, [x0]
	b	.L168
	.cfi_endproc
.LFE4568:
	.size	ZSTD_buildFSETable_body_default.constprop.0, .-ZSTD_buildFSETable_body_default.constprop.0
	.align	2
	.p2align 4,,11
	.type	ZSTD_buildSeqTable.constprop.0, %function
ZSTD_buildSeqTable.constprop.0:
.LFB4569:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	w19, w4
	mov	x20, x7
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	mov	x22, x0
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	mov	x23, x1
	str	w3, [sp, 76]
	cmp	w2, 2
	beq	.L204
	cmp	w2, 3
	beq	.L205
	cmp	w2, 1
	beq	.L221
	ldr	x0, [sp, 216]
	str	x0, [x1]
.L208:
	mov	x21, 0
.L203:
	ldp	x19, x20, [sp, 16]
	mov	x0, x21
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L221:
	.cfi_restore_state
	mov	x21, -72
	cbz	x6, .L203
	ldrb	w0, [x5]
	mov	x21, -20
	cmp	w0, w3
	bhi	.L203
	ldr	x1, [sp, 208]
	uxtw	x2, w0
	mov	x21, 1
	ldrb	w1, [x1, w0, uxtw]
	ldr	w0, [x7, x2, lsl 2]
	str	xzr, [x22]
	strh	wzr, [x22, 8]
	strb	w1, [x22, 10]
	strb	wzr, [x22, 11]
	str	w0, [x22, 12]
	mov	x0, x21
	str	x22, [x23]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L205:
	.cfi_restore_state
	ldr	w0, [sp, 224]
	mov	x21, -20
	cbz	w0, .L203
	ldr	w0, [sp, 232]
	cmp	w0, 0
	ldr	w0, [sp, 240]
	ccmp	w0, 24, 4, ne
	ble	.L208
	mov	w1, 1
	mov	x0, 0
	lsl	w1, w1, w4
	add	w1, w1, 1
	ldr	x2, [x23]
	sbfiz	x1, x1, 3, 32
	.p2align 3,,7
.L210:
	prfm	PLDL2KEEP, [x2, x0]
	add	x0, x0, 64
	cmp	x0, x1
	bcc	.L210
	mov	x21, 0
	b	.L203
	.p2align 2,,3
.L204:
	add	x24, sp, 96
	mov	x4, x6
	mov	x3, x5
	mov	x0, x24
	add	x2, sp, 92
	add	x1, sp, 76
	bl	FSE_readNCount
	mov	x21, x0
	cmn	x0, #120
	bhi	.L216
	ldr	w5, [sp, 92]
	cmp	w19, w5
	bcc	.L216
	ldr	x4, [sp, 208]
	mov	x3, x20
	ldr	x6, [sp, 248]
	mov	x1, x24
	ldr	w2, [sp, 76]
	mov	x0, x22
	bl	ZSTD_buildFSETable_body_default.constprop.0
	str	x22, [x23]
	b	.L203
	.p2align 2,,3
.L216:
	mov	x21, -20
	mov	x0, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 208
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4569:
	.size	ZSTD_buildSeqTable.constprop.0, .-ZSTD_buildSeqTable.constprop.0
	.align	2
	.p2align 4,,11
	.type	ZSTD_initFseState, %function
ZSTD_initFseState:
.LFB4543:
	.cfi_startproc
	ldr	w6, [x2, 4]
	adrp	x5, .LANCHOR0
	add	x5, x5, :lo12:.LANCHOR0
	ldr	w3, [x1, 8]
	add	x7, x5, 64
	ldr	x4, [x1]
	add	w3, w6, w3
	ldr	w6, [x7, w6, uxtw 2]
	neg	w7, w3
	str	w3, [x1, 8]
	lsr	x4, x4, x7
	and	x4, x4, x6
	str	x4, [x0]
	cmp	w3, 64
	bhi	.L227
	ldr	x5, [x1, 16]
	ldr	x4, [x1, 32]
	cmp	x5, x4
	bcs	.L228
	ldr	x6, [x1, 24]
	cmp	x5, x6
	beq	.L224
	lsr	w4, w3, 3
	lsr	w7, w3, 3
	sub	x4, x5, x4
	cmp	x6, x4
	bhi	.L229
.L226:
	ldr	x5, [x4]
	sub	w7, w3, w7, lsl 3
	str	x5, [x1]
	str	w7, [x1, 8]
	str	x4, [x1, 16]
.L224:
	add	x2, x2, 8
	str	x2, [x0, 8]
	ret
	.p2align 2,,3
.L229:
	sub	x6, x5, x6
	mov	w7, w6
	sub	x4, x5, w6, uxtw
	b	.L226
	.p2align 2,,3
.L228:
	lsr	w4, w3, 3
	and	w3, w3, 7
	sub	x5, x5, x4
	str	w3, [x1, 8]
	str	x5, [x1, 16]
	add	x2, x2, 8
	ldr	x3, [x5]
	str	x3, [x1]
	str	x2, [x0, 8]
	ret
	.p2align 2,,3
.L227:
	add	x5, x5, 192
	str	x5, [x1, 16]
	add	x2, x2, 8
	str	x2, [x0, 8]
	ret
	.cfi_endproc
.LFE4543:
	.size	ZSTD_initFseState, .-ZSTD_initFseState
	.align	2
	.p2align 4,,11
	.type	ZSTD_decodeLiteralsBlock, %function
ZSTD_decodeLiteralsBlock:
.LFB4528:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	cmp	x2, 1
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	bls	.L238
	add	x23, x0, 16384
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -56
	.cfi_offset 19, -64
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -40
	.cfi_offset 21, -48
	mov	x22, x1
	mov	x0, 131072
	ldrb	w6, [x1]
	ldr	w1, [x23, 13792]
	and	w19, w6, 3
	cbz	w1, .L233
	ldr	w0, [x23, 13560]
.L233:
	cmp	w19, 2
	beq	.L234
	cmp	w19, 3
	beq	.L235
	cmp	w19, 1
	beq	.L314
	ubfx	x1, x6, 2, 2
	cmp	w1, 1
	beq	.L255
	cmp	w1, 3
	beq	.L256
	ubfx	x19, x6, 3, 5
	mov	x7, 1
.L257:
	cmp	x19, 0
	mov	x24, -70
	ccmp	x3, 0, 0, ne
	beq	.L308
	cmp	x19, x0
	bhi	.L309
	cmp	x4, x0
	csel	x1, x4, x0, ls
	cmp	x19, x1
	bhi	.L308
	cbnz	w5, .L258
	add	x5, x0, 64
	add	x5, x5, x19
	cmp	x4, x5
	bls	.L258
	add	x0, x0, 32
	mov	w4, 1
	add	x0, x3, x0
	add	x1, x0, x19
.L259:
	add	x24, x19, x7
	str	x0, [x20, 30352]
	str	x1, [x20, 30360]
	add	x1, x24, 32
	str	w4, [x23, 13984]
	cmp	x1, x2
	bls	.L261
	cmp	x24, x2
	bhi	.L309
	add	x1, x22, x7
	cmp	w4, 2
	beq	.L315
	mov	x2, x19
	bl	memcpy
.L263:
	ldr	x0, [x20, 30352]
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	str	x0, [x20, 30120]
	str	x19, [x20, 30152]
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	b	.L230
	.p2align 2,,3
.L309:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L238:
	mov	x24, -20
.L230:
	mov	x0, x24
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L235:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	ldr	w1, [x23, 13616]
	mov	x24, -30
	cbz	w1, .L308
.L234:
	cmp	x2, 4
	bls	.L309
	ldr	w1, [x22]
	ubfx	x6, x6, 2, 2
	lsr	w7, w1, 4
	cmp	w6, 2
	beq	.L239
	cmp	w6, 3
	bne	.L316
	ldrb	w8, [x22, 4]
	lsr	w1, w1, 22
	and	x21, x7, 262143
	mov	w6, 0
	mov	x10, 5
	add	x9, x1, x8, lsl 10
.L241:
	cmp	x21, 0
	mov	x24, -70
	ccmp	x3, 0, 0, ne
	beq	.L308
	ldr	w11, [x23, 13844]
	cmp	x21, x0
	bhi	.L309
	cmp	x21, 5
	eor	w7, w6, 1
	cset	w8, ls
	tst	w7, w8
	bne	.L275
	add	x24, x10, x9
	cmp	x24, x2
	bhi	.L309
	cmp	x4, x0
	csel	x7, x4, x0, ls
	cmp	x21, x7
	bhi	.L276
	cbnz	w5, .L242
	add	x1, x0, 64
	add	x1, x1, x21
	cmp	x4, x1
	bls	.L242
	add	x0, x0, 32
	mov	w2, 1
	add	x1, x3, x0
	add	x0, x1, x21
.L243:
	str	x1, [x20, 30352]
	cmp	x21, 768
	str	x0, [x20, 30360]
	ldr	w0, [x23, 13820]
	str	w2, [x23, 13984]
	ccmp	w0, 0, 4, hi
	bne	.L247
.L245:
	cmp	w11, 0
	add	x2, x22, x10
	cset	w5, ne
	lsl	w7, w5, 4
	cmp	w19, 3
	beq	.L317
	mov	x10, 10296
	mov	x11, 27324
	add	x0, x20, x10
	add	x5, x20, x11
	mov	x4, x9
	mov	x3, x2
	cbz	w6, .L251
	mov	x2, x21
	mov	x6, 2560
	bl	HUF_decompress1X1_DCtx_wksp
	mov	x22, x0
.L250:
	ldr	w0, [x23, 13984]
	cmp	w0, 2
	beq	.L318
.L252:
	cmn	x22, #120
	bhi	.L309
	ldr	x0, [x20, 30352]
	str	x0, [x20, 30120]
	str	x21, [x20, 30152]
	mov	w0, 1
	str	w0, [x23, 13616]
	cmp	w19, 2
	bne	.L308
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	mov	x6, 10296
	add	x0, x20, x6
	str	x0, [x20, 24]
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	b	.L230
	.p2align 2,,3
.L314:
	.cfi_restore_state
	ubfx	x1, x6, 2, 2
	str	x25, [sp, 64]
	.cfi_offset 25, -16
	cmp	w1, 1
	beq	.L265
	cmp	w1, 3
	bne	.L319
	cmp	x2, 3
	bls	.L312
	ldrb	w6, [x22, 2]
	mov	x24, 4
	ldrh	w1, [x22]
	mov	x25, 3
	add	w6, w1, w6, lsl 16
	ubfx	x19, x6, 4, 21
.L267:
	cmp	x19, 0
	ccmp	x3, 0, 0, ne
	beq	.L280
	cmp	x19, x0
	bhi	.L312
	cmp	x4, x0
	csel	x1, x4, x0, ls
	cmp	x19, x1
	bhi	.L280
	cbnz	w5, .L268
	add	x2, x0, 64
	add	x2, x2, x19
	cmp	x4, x2
	bls	.L268
	add	x0, x0, 32
	mov	w1, 1
	add	x21, x3, x0
	add	x2, x21, x19
.L269:
	str	x21, [x20, 30352]
	mov	x0, x21
	str	x2, [x20, 30360]
	mov	x2, x19
	str	w1, [x23, 13984]
	ldrb	w1, [x22, x25]
	bl	memset
.L271:
	ldr	x0, [x20, 30352]
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x25, [sp, 64]
	.cfi_restore 25
	str	x0, [x20, 30120]
	str	x19, [x20, 30152]
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	b	.L230
	.p2align 2,,3
.L308:
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	mov	x0, x24
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L316:
	.cfi_restore_state
	eor	w6, w6, 1
	and	x21, x7, 1023
	ubfx	x9, x1, 14, 10
	mov	x10, 3
	b	.L241
	.p2align 2,,3
.L319:
	.cfi_offset 25, -16
	ubfx	x19, x6, 3, 5
	mov	x24, 2
	mov	x25, 1
	b	.L267
	.p2align 2,,3
.L256:
	.cfi_restore 25
	cmp	x2, 2
	beq	.L309
	ldrb	w6, [x22, 2]
	mov	x7, 3
	ldrh	w1, [x22]
	add	w6, w1, w6, lsl 16
	ubfx	x19, x6, 4, 21
	b	.L257
	.p2align 2,,3
.L239:
	and	x21, x7, 16383
	lsr	w9, w1, 18
	mov	w6, 0
	mov	x10, 4
	b	.L241
	.p2align 2,,3
.L265:
	.cfi_offset 25, -16
	cmp	x2, 2
	beq	.L312
	ldrh	w6, [x22]
	mov	x24, 3
	mov	x25, 2
	ubfx	x19, x6, 4, 12
	b	.L267
	.p2align 2,,3
.L255:
	.cfi_restore 25
	ldrh	w6, [x22]
	mov	x7, 2
	ubfx	x19, x6, 4, 12
	b	.L257
	.p2align 2,,3
.L242:
	cmp	x21, 65536
	bls	.L320
	sub	x0, x7, x21
	ldr	w2, [x23, 13820]
	add	x1, x3, x0
	add	x7, x3, x7
	str	x1, [x20, 30352]
	mov	w0, 2
	str	x7, [x20, 30360]
	str	w0, [x23, 13984]
	cbz	w2, .L245
.L247:
	ldr	x4, [x20, 24]
	mov	x12, 16448
	add	x0, x4, x12
	.p2align 3,,7
.L246:
	prfm	PLDL2KEEP, [x4]
	add	x4, x4, 64
	cmp	x0, x4
	bne	.L246
	ldr	x1, [x20, 30352]
	b	.L245
	.p2align 2,,3
.L258:
	cmp	x19, 65536
	bhi	.L260
	mov	x5, 30372
	add	x0, x20, x5
	add	x1, x0, x19
	mov	w4, 0
	b	.L259
	.p2align 2,,3
.L268:
	.cfi_offset 25, -16
	mov	x2, 30372
	add	x21, x20, x2
	cmp	x19, 65536
	bhi	.L270
	add	x2, x21, x19
	mov	w1, 0
	b	.L269
	.p2align 2,,3
.L280:
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	mov	x24, -70
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x25, [sp, 64]
	.cfi_restore 25
	b	.L230
	.p2align 2,,3
.L312:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x25, [sp, 64]
	.cfi_restore 25
	b	.L238
	.p2align 2,,3
.L320:
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x13, 30372
	add	x1, x20, x13
	add	x0, x1, x21
	mov	w2, 0
	b	.L243
	.p2align 2,,3
.L260:
	mov	x4, 65504
	add	x0, x1, x4
	sub	x0, x0, x19
	sub	x1, x19, #65536
	add	x0, x3, x0
	mov	w4, 2
	add	x1, x0, x1
	b	.L259
	.p2align 2,,3
.L270:
	.cfi_offset 25, -16
	mov	x0, 65504
	add	x0, x1, x0
	sub	x0, x0, x19
	sub	x2, x19, #65536
	add	x0, x3, x0
	str	x0, [x20, 30352]
	add	x3, x0, x2
	str	x3, [x20, 30360]
	mov	w1, 2
	str	w1, [x23, 13984]
	ldrb	w1, [x22, x25]
	bl	memset
	ldrb	w1, [x22, x25]
	mov	x0, x21
	mov	x2, 65536
	bl	memset
	b	.L271
	.p2align 2,,3
.L276:
	.cfi_restore 25
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	mov	x24, -70
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L230
	.p2align 2,,3
.L261:
	.cfi_restore_state
	add	x7, x22, x7
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	str	x7, [x20, 30120]
	add	x7, x7, x19
	str	x19, [x20, 30152]
	str	x7, [x20, 30360]
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	str	wzr, [x23, 13984]
	b	.L230
	.p2align 2,,3
.L317:
	.cfi_restore_state
	ldr	x4, [x20, 24]
	mov	x0, x1
	mov	w5, w7
	mov	x3, x9
	mov	x1, x21
	cbz	w6, .L249
	bl	HUF_decompress1X_usingDTable
	mov	x22, x0
	b	.L250
	.p2align 2,,3
.L251:
	mov	x2, x21
	mov	x6, 2560
	bl	HUF_decompress4X_hufOnly_wksp
	mov	x22, x0
	b	.L250
.L275:
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	mov	x24, -24
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L230
.L318:
	.cfi_restore_state
	ldr	x1, [x20, 30360]
	mov	x7, 30372
	mov	x2, 65536
	add	x0, x20, x7
	sub	x1, x1, #65536
	bl	memcpy
	ldr	x1, [x20, 30352]
	mov	x8, 65504
	sub	x2, x21, #65536
	add	x0, x1, x8
	bl	memmove
	adrp	x0, .LC0
	ldr	q0, [x20, 30352]
	ldr	q1, [x0, #:lo12:.LC0]
	add	v0.2d, v0.2d, v1.2d
	str	q0, [x20, 30352]
	b	.L252
.L249:
	bl	HUF_decompress4X_usingDTable
	mov	x22, x0
	b	.L250
.L315:
	sub	x2, x19, #65536
	bl	memcpy
	mov	x3, 30372
	sub	x1, x24, #65536
	add	x1, x22, x1
	add	x0, x20, x3
	mov	x2, 65536
	bl	memcpy
	b	.L263
	.cfi_endproc
.LFE4528:
	.size	ZSTD_decodeLiteralsBlock, .-ZSTD_decodeLiteralsBlock
	.align	2
	.p2align 4,,11
	.type	ZSTD_decompressSequencesLong_default.constprop.0, %function
ZSTD_decompressSequencesLong_default.constprop.0:
.LFB4572:
	.cfi_startproc
	sub	sp, sp, #816
	.cfi_def_cfa_offset 816
	mov	x11, x1
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -800
	.cfi_offset 30, -792
	add	x29, sp, 16
	stp	x25, x26, [sp, 80]
	.cfi_offset 25, -736
	.cfi_offset 26, -728
	add	x25, x0, 16384
	mov	w26, w5
	stp	x19, x20, [sp, 32]
	.cfi_offset 19, -784
	.cfi_offset 20, -776
	mov	x20, x0
	ldr	w10, [x25, 13984]
	stp	x21, x22, [sp, 48]
	.cfi_offset 21, -768
	.cfi_offset 22, -760
	mov	x22, x3
	stp	x27, x28, [sp, 96]
	cmp	w10, 1
	.cfi_offset 27, -720
	.cfi_offset 28, -712
	beq	.L629
	cmp	x2, 0
	add	x2, x1, x2
	csel	x0, x2, x1, gt
	str	x0, [sp, 136]
.L323:
	ldr	x0, [x20, 29904]
	str	x0, [sp, 192]
	ldr	x8, [x20, 30120]
	str	x8, [sp, 360]
	ldr	x0, [x20, 30360]
	str	x0, [sp, 128]
	ldr	x21, [x20, 29896]
	ldr	x28, [x20, 29912]
	cbz	w26, .L505
	mov	x18, 26624
	add	x13, x20, x18
	mov	w0, 1
	str	w0, [x25, 13620]
	ldr	w0, [x25, 10308]
	ldr	d0, [x13, 60]
	str	x0, [sp, 616]
	add	x0, sp, 720
	uxtl	v0.2d, v0.2s
	str	q0, [x0, -120]
	cbz	x4, .L325
	add	x0, x22, x4
	add	x1, x22, 8
	str	x1, [sp, 144]
	str	x22, [sp, 536]
	str	x1, [sp, 544]
	ldrb	w0, [x0, -1]
	cmp	x4, 7
	bls	.L326
	sub	x1, x4, #8
	add	x2, x22, x1
	str	x2, [sp, 528]
	ldr	x1, [x22, x1]
	str	x1, [sp, 512]
	cbz	w0, .L325
	clz	w0, w0
	sub	w0, w0, #23
	str	w0, [sp, 520]
	cmn	x4, #120
	bls	.L327
	.p2align 3,,7
.L325:
	mov	x4, -20
.L651:
	ldp	x29, x30, [sp, 16]
	mov	x0, x4
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 816
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L505:
	.cfi_restore_state
	mov	x9, x11
.L324:
	ldr	x0, [sp, 136]
	sub	x0, x0, x9
	cmp	w10, 2
	beq	.L630
	ldr	x1, [sp, 128]
	sub	x2, x1, x8
	cmp	x2, x0
	bhi	.L502
.L644:
	cbz	x9, .L503
	mov	x0, x9
	add	x9, x9, x2
	mov	x1, x8
	stp	x9, x11, [sp, 120]
	bl	memmove
	ldp	x9, x11, [sp, 120]
.L503:
	sub	x4, x9, x11
.L321:
	ldp	x29, x30, [sp, 16]
	mov	x0, x4
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 816
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L629:
	.cfi_restore_state
	ldr	x0, [x0, 30352]
	str	x0, [sp, 136]
	b	.L323
	.p2align 2,,3
.L326:
	ldrb	w1, [x22]
	str	x1, [sp, 512]
	str	x22, [sp, 528]
	cmp	x4, 5
	beq	.L328
	bhi	.L329
	cmp	x4, 3
	beq	.L330
	cmp	x4, 4
	bne	.L631
.L331:
	ldrb	w2, [x22, 3]
	add	x1, x1, x2, lsl 24
.L330:
	ldrb	w2, [x22, 2]
	add	x1, x1, x2, lsl 16
	ldrb	w2, [x22, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 512]
.L333:
	cbz	w0, .L325
	mov	w1, 8
	sub	w1, w1, w4
	clz	w0, w0
	add	w0, w0, w1, lsl 3
	sub	w0, w0, #23
	str	w0, [sp, 520]
.L327:
	ldr	x2, [x20]
	cmp	w26, 8
	mov	w0, 8
	csel	w0, w26, w0, le
	add	x1, sp, 512
	str	w0, [sp, 184]
	add	x0, sp, 552
	bl	ZSTD_initFseState
	ldr	x2, [x20, 16]
	add	x0, sp, 568
	bl	ZSTD_initFseState
	add	x0, sp, 584
	ldr	x2, [x20, 8]
	bl	ZSTD_initFseState
	cmp	w26, 0
	ble	.L335
	add	x17, sp, 552
	sub	w18, w26, #1
	ldr	x0, [sp, 528]
	adrp	x1, .LANCHOR0
	ldp	x12, x5, [x17]
	add	x1, x1, :lo12:.LANCHOR0
	ldp	x7, x14, [x17, 16]
	stp	x23, x24, [sp, 64]
	.cfi_offset 24, -744
	.cfi_offset 23, -752
	ldr	w2, [sp, 520]
	ldr	x3, [sp, 584]
	add	x23, sp, 624
	ldr	x15, [sp, 592]
	add	x9, sp, 520
	ldr	x16, [sp, 512]
	add	x27, x1, 64
	mov	x6, x23
	sub	x19, x11, x21
	mov	x4, x12
	mov	x17, x0
	str	x5, [sp, 120]
	mov	x5, x7
	str	w26, [sp, 280]
	mov	w26, w18
	stp	x13, x25, [sp, 288]
	mov	x25, x14
	mov	w24, 0
	stp	x23, x1, [sp, 304]
	mov	x1, x3
	mov	x23, x15
	mov	w30, 0
	stp	x15, x14, [sp, 152]
	str	w18, [sp, 168]
	str	wzr, [sp, 176]
	str	wzr, [sp, 200]
	str	x9, [sp, 208]
	mov	w9, 0
	str	w10, [sp, 216]
	stp	x8, x3, [sp, 224]
	stp	x7, x0, [sp, 240]
	stp	x12, x20, [sp, 256]
	str	x11, [sp, 272]
	.p2align 3,,7
.L351:
	ldr	x0, [sp, 120]
	ldr	x10, [x23, x1, lsl 3]
	ldr	x3, [x0, x4, lsl 3]
	ldr	x8, [x25, x5, lsl 3]
	ubfx	w14, w10, 16, 8
	ubfx	w13, w3, 16, 8
	lsr	x18, x3, 32
	add	w0, w13, w14
	lsr	x11, x10, 32
	ubfx	w7, w8, 16, 8
	lsr	x20, x8, 32
	add	w0, w7, w0
	mov	x12, x18
	and	w0, w0, 255
	cmp	w7, 1
	bls	.L336
	neg	w18, w7
	lsl	x15, x16, x2
	add	w2, w2, w7
	mov	w30, 1
	lsr	x15, x15, x18
	add	x7, x20, x15
	ldr	x15, [sp, 600]
	ldr	x18, [sp, 608]
	str	x18, [sp, 616]
.L337:
	str	x7, [sp, 600]
	str	x15, [sp, 608]
	cbnz	w14, .L632
.L342:
	cmp	w0, 30
	bhi	.L633
.L343:
	cbnz	w13, .L634
.L346:
	cmp	w9, w26
	beq	.L347
	lsr	w13, w3, 24
	lsr	w5, w10, 24
	add	w4, w13, w2
	lsr	w0, w8, 24
	add	w1, w5, w4
	neg	w4, w4
	add	w2, w0, w1
	ldr	w5, [x27, x5, lsl 2]
	neg	w1, w1
	ldr	w13, [x27, x13, lsl 2]
	ldr	w0, [x27, x0, lsl 2]
	lsr	x4, x16, x4
	lsr	x1, x16, x1
	and	x1, x1, x5
	neg	w5, w2
	and	x4, x4, x13
	add	x4, x4, w3, uxth
	add	x1, x1, w10, uxth
	lsr	x5, x16, x5
	and	x5, x5, x0
	add	x5, x5, w8, uxth
	cmp	w2, 64
	bhi	.L507
	ldr	x0, [sp, 144]
	cmp	x17, x0
	bcs	.L635
	cmp	x22, x17
	beq	.L508
	lsr	w3, w2, 3
	lsr	w0, w2, 3
	sub	x3, x17, x3
	cmp	x22, x3
	bls	.L509
	sub	x3, x17, x22
	mov	w0, w3
	sub	x17, x17, w3, uxtw
.L349:
	ldr	x16, [x17]
	mov	w24, 1
	sub	w2, w2, w0, lsl 3
	mov	w30, w24
	str	w24, [sp, 176]
	str	w24, [sp, 200]
.L347:
	add	x19, x12, x19
	add	w9, w9, 1
	subs	x3, x19, x7
	add	x19, x19, x11
	csel	x0, x28, x21, cc
	add	x0, x0, x3
	prfm	PLDL1KEEP, [x0]
	prfm	PLDL1KEEP, [x0, 64]
	ldr	w0, [sp, 184]
	stp	x12, x11, [x6]
	add	x6, x6, 24
	str	x7, [x6, -8]
	cmp	w0, w9
	bgt	.L351
	ldp	x8, x3, [sp, 224]
	ldp	x7, x0, [sp, 240]
	ldp	x12, x20, [sp, 256]
	ldr	x11, [sp, 272]
	ldp	x13, x25, [sp, 288]
	ldr	x23, [sp, 304]
	ldr	w10, [sp, 216]
	ldr	w26, [sp, 280]
	cbz	w24, .L511
	str	x17, [sp, 528]
.L352:
	cbz	w30, .L353
	str	w2, [sp, 520]
.L353:
	ldr	w0, [sp, 200]
	cbz	w0, .L354
	str	x16, [sp, 512]
.L354:
	ldr	w0, [sp, 176]
	cbz	w0, .L512
	str	x4, [sp, 552]
	str	x5, [sp, 568]
	str	x1, [sp, 584]
.L355:
	ldr	w12, [sp, 184]
	cmp	w26, w12
	ble	.L513
	adrp	x0, .LANCHOR0
	add	x17, x0, :lo12:.LANCHOR0
	add	x18, x17, 64
	add	x0, x20, 94208
	mov	x7, x8
	str	w26, [sp, 176]
	mov	x26, x25
	mov	x25, x28
	mov	x28, x21
	mov	x21, x11
	stp	x20, x22, [sp, 200]
	mov	x20, x19
	add	x0, x0, 1700
	stp	x11, x13, [sp, 304]
	mov	x11, x23
	mov	w23, w12
	stp	x0, x17, [sp, 288]
	.p2align 3,,7
.L437:
	ldr	x0, [sp, 120]
	ldr	x2, [x0, x4, lsl 3]
	ldr	x0, [sp, 152]
	ubfx	w4, w2, 16, 8
	lsr	x13, x2, 32
	mov	x9, x13
	ldr	x6, [x0, x1, lsl 3]
	ldr	x0, [sp, 160]
	lsr	x22, x6, 32
	ldr	x3, [x0, x5, lsl 3]
	ubfx	w5, w6, 16, 8
	add	w0, w4, w5
	ubfx	w1, w3, 16, 8
	lsr	x19, x3, 32
	add	w0, w1, w0
	and	w0, w0, 255
	cmp	w1, 1
	bls	.L357
	ldr	x16, [sp, 512]
	neg	w13, w1
	ldr	w12, [sp, 520]
	ldr	x17, [sp, 608]
	add	w1, w1, w12
	lsl	x12, x16, x12
	str	w1, [sp, 520]
	ldr	x1, [sp, 600]
	lsr	x12, x12, x13
	add	x19, x19, x12
	str	x17, [sp, 616]
.L358:
	str	x19, [sp, 600]
	str	x1, [sp, 608]
	cbnz	w5, .L636
.L363:
	cmp	w0, 30
	bhi	.L637
.L364:
	cbnz	w4, .L638
.L368:
	ldr	w0, [sp, 168]
	cmp	w23, w0
	beq	.L370
	ldr	w4, [sp, 520]
	lsr	w16, w2, 24
	mov	x1, x16
	lsr	w13, w6, 24
	ldr	x5, [sp, 512]
	add	w1, w1, w4
	mov	x0, x13
	lsr	w12, w3, 24
	add	w0, w0, w1
	ldr	w13, [x18, x13, lsl 2]
	add	w4, w12, w0
	neg	w0, w0
	ldr	w16, [x18, x16, lsl 2]
	neg	w1, w1
	lsr	x0, x5, x0
	ldr	w12, [x18, x12, lsl 2]
	and	x0, x0, x13
	neg	w13, w4
	lsr	x1, x5, x1
	and	x1, x1, x16
	lsr	x5, x5, x13
	and	x5, x5, x12
	add	x1, x1, w2, uxth
	add	x0, x0, w6, uxth
	add	x3, x5, w3, uxth
	str	w4, [sp, 520]
	str	x1, [sp, 552]
	str	x3, [sp, 568]
	str	x0, [sp, 584]
	cmp	w4, 64
	bhi	.L639
	ldr	x0, [sp, 144]
	ldr	x1, [sp, 528]
	cmp	x1, x0
	bcs	.L640
	ldr	x3, [sp, 208]
	cmp	x3, x1
	beq	.L370
	lsr	w0, w4, 3
	lsr	w2, w4, 3
	sub	x0, x1, x0
	cmp	x3, x0
	bls	.L374
	sub	x0, x1, x3
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L374:
	ldr	x1, [x0]
	sub	w2, w4, w2, lsl 3
	str	x1, [sp, 512]
	str	w2, [sp, 520]
	str	x0, [sp, 528]
.L370:
	and	x27, x23, 7
	ubfiz	x13, x23, 1, 3
	add	x13, x13, x27
	lsl	x6, x13, 3
	ldr	x8, [x11, x13, lsl 3]
	add	x16, x7, x8
	cmp	w10, 2
	beq	.L641
	add	x12, sp, 632
	add	x10, sp, 640
	ldr	x0, [sp, 136]
	add	x6, x11, x6
	ldr	x5, [x12, x13, lsl 3]
	add	x24, x21, x8
	ldr	x13, [x10, x13, lsl 3]
	add	x3, sp, 512
	sub	x17, x0, #32
	add	x4, x5, x8
	sub	x2, x24, x13
	ldp	x0, x1, [x6]
	ldr	x30, [x6, 16]
	add	x6, x21, x4
	prfm	PLDL1KEEP, [x2]
	cmp	x6, x17
	stp	x0, x1, [x3, -120]
	ldr	x0, [sp, 128]
	str	x30, [sp, 408]
	ccmp	x0, x16, 0, ls
	bcc	.L418
	ldr	q0, [x7]
	str	q0, [x21]
	cmp	x8, 16
	bhi	.L419
.L422:
	sub	x0, x24, x28
	str	x16, [sp, 360]
	cmp	x13, x0
	bls	.L421
	ldr	x0, [sp, 192]
	sub	x0, x24, x0
	cmp	x13, x0
	bhi	.L621
	sub	x1, x2, x28
	add	x1, x25, x1
	add	x0, x1, x5
	cmp	x25, x0
	bcs	.L642
	sub	x2, x28, x2
	mov	x0, x24
	sub	x5, x5, x2
	add	x24, x24, x2
	stp	x5, x9, [sp, 216]
	stp	x13, x6, [sp, 232]
	stp	x12, x10, [sp, 248]
	stp	x11, x18, [sp, 264]
	str	x4, [sp, 280]
	bl	memmove
	ldp	x5, x9, [sp, 216]
	mov	x2, x28
	ldp	x13, x6, [sp, 232]
	ldp	x12, x10, [sp, 248]
	ldp	x11, x18, [sp, 264]
	ldr	x4, [sp, 280]
.L421:
	cmp	x13, 15
	bls	.L426
	ldr	q0, [x2], 16
	str	q0, [x24], 16
	cmp	x5, 16
	ble	.L404
	.p2align 3,,7
.L428:
	ldr	q0, [x2]
	add	x24, x24, 32
	add	x2, x2, 32
	str	q0, [x24, -32]
	ldr	q0, [x2, -16]
	str	q0, [x24, -16]
	cmp	x6, x24
	bhi	.L428
.L404:
	cmn	x4, #120
	bhi	.L618
	add	x20, x9, x20
	add	x21, x21, x4
	cmp	x19, x20
	sub	x1, x20, x19
	csel	x0, x25, x28, hi
	add	x20, x22, x20
	add	x0, x0, x1
	prfm	PLDL1KEEP, [x0]
	prfm	PLDL1KEEP, [x0, 64]
.L399:
	add	x27, x27, x27, lsl 1
	ldr	w0, [sp, 176]
	add	w23, w23, 1
	str	x9, [x11, x27, lsl 3]
	str	x22, [x12, x27, lsl 3]
	str	x19, [x10, x27, lsl 3]
	cmp	w0, w23
	beq	.L643
	ldr	x7, [sp, 360]
	ldr	x4, [sp, 552]
	ldr	x5, [sp, 568]
	ldr	x1, [sp, 584]
	ldr	w10, [x26, 13984]
	b	.L437
	.p2align 2,,3
.L329:
	.cfi_restore 23
	.cfi_restore 24
	cmp	x4, 6
	beq	.L334
	ldrb	w2, [x22, 6]
	add	x1, x1, x2, lsl 48
.L334:
	ldrb	w2, [x22, 5]
	add	x1, x1, x2, lsl 40
.L328:
	ldrb	w2, [x22, 4]
	add	x1, x1, x2, lsl 32
	b	.L331
	.p2align 2,,3
.L631:
	cmp	x4, 2
	bne	.L333
	ldrb	w2, [x22, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 512]
	b	.L333
	.p2align 2,,3
.L630:
	ldr	x1, [sp, 128]
	sub	x2, x1, x8
	cmp	x2, x0
	bhi	.L502
	cbz	x9, .L501
	mov	x0, x9
	add	x9, x9, x2
	mov	x1, x8
	stp	x9, x11, [sp, 120]
	bl	memmove
	ldp	x9, x11, [sp, 120]
	ldr	x0, [sp, 136]
	sub	x0, x0, x9
.L501:
	add	x1, x20, 94208
	mov	x2, 30372
	add	x1, x1, 1700
	str	x1, [sp, 128]
	add	x8, x20, x2
	str	x8, [sp, 360]
	ldr	x1, [sp, 128]
	sub	x2, x1, x8
	cmp	x2, x0
	bls	.L644
.L502:
	ldp	x29, x30, [sp, 16]
	mov	x4, -70
	ldp	x19, x20, [sp, 32]
	mov	x0, x4
	ldp	x21, x22, [sp, 48]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 816
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L633:
	.cfi_def_cfa_offset 816
	.cfi_offset 19, -784
	.cfi_offset 20, -776
	.cfi_offset 21, -768
	.cfi_offset 22, -760
	.cfi_offset 23, -752
	.cfi_offset 24, -744
	.cfi_offset 25, -736
	.cfi_offset 26, -728
	.cfi_offset 27, -720
	.cfi_offset 28, -712
	.cfi_offset 29, -800
	.cfi_offset 30, -792
	cmp	w2, 64
	bhi	.L506
	ldr	x0, [sp, 144]
	cmp	x17, x0
	bcs	.L645
	cmp	x22, x17
	beq	.L343
	lsr	w0, w2, 3
	lsr	w14, w2, 3
	sub	x0, x17, x0
	cmp	x22, x0
	bls	.L345
	sub	x0, x17, x22
	mov	w14, w0
	sub	x0, x17, w0, uxtw
.L345:
	mov	w24, 1
	str	w24, [sp, 200]
	ldr	x16, [x0]
	sub	w2, w2, w14, lsl 3
	mov	x17, x0
	mov	w30, w24
	cbz	w13, .L346
	.p2align 3,,7
.L634:
	neg	w14, w13
	lsl	x0, x16, x2
	mov	w30, 1
	add	w2, w2, w13
	lsr	x0, x0, x14
	add	x12, x12, x0
	b	.L346
	.p2align 2,,3
.L336:
	cmp	w18, 0
	cset	w15, eq
	cmp	w7, 1
	beq	.L338
	cmp	w18, 0
	add	x15, x15, 10
	ldr	x20, [sp, 208]
	cset	x18, ne
	add	x18, x18, 10
	ldr	x7, [x20, x15, lsl 3]
	ldr	x15, [x20, x18, lsl 3]
	str	x7, [sp, 600]
	str	x15, [sp, 608]
	cbz	w14, .L342
.L632:
	neg	w18, w14
	lsl	x15, x16, x2
	mov	w30, 1
	add	w2, w2, w14
	lsr	x15, x15, x18
	add	x11, x11, x15
	b	.L342
	.p2align 2,,3
.L509:
	mov	x17, x3
	b	.L349
	.p2align 2,,3
.L508:
	mov	w30, 1
	str	w30, [sp, 176]
	b	.L347
	.p2align 2,,3
.L635:
	lsr	w0, w2, 3
	mov	w24, 1
	sub	x17, x17, x0
	and	w2, w2, 7
	mov	w30, w24
	str	w24, [sp, 176]
	str	w24, [sp, 200]
	ldr	x16, [x17]
	b	.L347
	.p2align 2,,3
.L507:
	ldr	x0, [sp, 312]
	mov	w24, 1
	mov	w30, w24
	str	w24, [sp, 176]
	add	x17, x0, 192
	b	.L347
	.p2align 2,,3
.L338:
	add	w15, w15, w20
	lsl	x18, x16, x2
	add	x18, x15, x18, lsr 63
	add	w2, w2, 1
	ldr	x15, [sp, 600]
	cmp	x18, 3
	beq	.L646
	add	x7, sp, 816
	add	x7, x7, x18, lsl 3
	ldr	x7, [x7, -216]
	cmp	x7, 0
	cset	x20, eq
	sub	x7, x7, x20
	cmp	x18, 1
	bne	.L340
	mov	w30, 1
	b	.L337
.L646:
	subs	x7, x15, #1
	cset	x18, eq
	sub	x7, x7, x18
.L340:
	ldr	x18, [sp, 608]
	mov	w30, 1
	str	x18, [sp, 616]
	b	.L337
	.p2align 2,,3
.L511:
	mov	x17, x0
	b	.L352
	.p2align 2,,3
.L637:
	ldr	w5, [sp, 520]
	cmp	w5, 64
	bhi	.L647
	ldr	x0, [sp, 144]
	ldr	x12, [sp, 528]
	cmp	x12, x0
	bcs	.L648
	ldr	x8, [sp, 208]
	cmp	x8, x12
	beq	.L364
	lsr	w0, w5, 3
	lsr	w1, w5, 3
	sub	x0, x12, x0
	cmp	x8, x0
	bls	.L367
	sub	x0, x12, x8
	mov	w1, w0
	sub	x0, x12, w0, uxtw
.L367:
	ldr	x12, [x0]
	sub	w1, w5, w1, lsl 3
	str	x12, [sp, 512]
	str	w1, [sp, 520]
	str	x0, [sp, 528]
	cbz	w4, .L368
	.p2align 3,,7
.L638:
	ldr	x0, [sp, 512]
	neg	w5, w4
	ldr	w1, [sp, 520]
	add	w4, w4, w1
	str	w4, [sp, 520]
	lsl	x0, x0, x1
	lsr	x0, x0, x5
	add	x9, x9, x0
	b	.L368
.L512:
	mov	x1, x3
	mov	x5, x7
	mov	x4, x12
	b	.L355
	.p2align 2,,3
.L357:
	cmp	w13, 0
	cset	w12, eq
	cmp	w1, 1
	beq	.L359
	cmp	w13, 0
	add	x12, x12, 10
	cset	x1, ne
	add	x13, sp, 520
	add	x1, x1, 10
	ldr	x19, [x13, x12, lsl 3]
	ldr	x1, [x13, x1, lsl 3]
	str	x19, [sp, 600]
	str	x1, [sp, 608]
	cbz	w5, .L363
.L636:
	ldr	x1, [sp, 512]
	neg	w13, w5
	ldr	w12, [sp, 520]
	add	w5, w5, w12
	str	w5, [sp, 520]
	lsl	x1, x1, x12
	lsr	x1, x1, x13
	add	x22, x22, x1
	b	.L363
	.p2align 2,,3
.L641:
	ldr	x0, [sp, 200]
	ldr	x2, [x0, 30360]
	cmp	x2, x16
	bcs	.L376
	subs	x2, x2, x7
	beq	.L377
	ldr	x0, [sp, 136]
	sub	x0, x0, x21
	cmp	x2, x0
	bhi	.L442
	mov	x0, x21
	sub	x8, x8, x2
	add	x21, x21, x2
	mov	x1, x7
	bl	ZSTD_safecopyDstBeforeSrc
	str	x8, [x11, x13, lsl 3]
.L377:
	add	x0, x27, x27, lsl 1
	add	x12, sp, 632
	add	x10, sp, 640
	add	x7, x21, x8
	add	x2, x11, x0, lsl 3
	mov	x15, 30372
	ldr	x6, [x12, x0, lsl 3]
	ldr	x24, [x10, x0, lsl 3]
	add	x4, x6, x8
	ldr	x1, [sp, 136]
	add	x5, x21, x4
	ldp	x16, x17, [x2]
	sub	x1, x1, #32
	ldr	x0, [x2, 16]
	sub	x2, x7, x24
	ldr	x3, [sp, 200]
	cmp	x5, x1
	ldr	x1, [sp, 288]
	add	x13, x3, x15
	prfm	PLDL1KEEP, [x2]
	str	x1, [sp, 128]
	str	x13, [sp, 360]
	stp	x16, x17, [sp, 368]
	str	x0, [sp, 384]
	add	x0, x13, x8
	str	wzr, [x26, 13984]
	ccmp	x1, x0, 0, ls
	bcc	.L380
	mov	x14, 30208
	add	x1, x3, x14
	ldr	q0, [x1, 164]
	str	q0, [x21]
	cmp	x8, 16
	bhi	.L381
.L385:
	str	x0, [sp, 360]
	sub	x0, x7, x28
	cmp	x24, x0
	bls	.L383
	ldr	x0, [sp, 192]
	sub	x0, x7, x0
	cmp	x24, x0
	bhi	.L621
	sub	x1, x2, x28
	add	x1, x25, x1
	add	x0, x1, x6
	cmp	x25, x0
	bcs	.L649
	sub	x2, x28, x2
	mov	x0, x7
	sub	x6, x6, x2
	add	x7, x7, x2
	stp	x7, x6, [sp, 216]
	stp	x9, x5, [sp, 232]
	stp	x12, x10, [sp, 248]
	stp	x11, x18, [sp, 264]
	str	x4, [sp, 280]
	bl	memmove
	ldp	x7, x6, [sp, 216]
	mov	x2, x28
	ldp	x9, x5, [sp, 232]
	ldp	x12, x10, [sp, 248]
	ldp	x11, x18, [sp, 264]
	ldr	x4, [sp, 280]
.L383:
	cmp	x24, 15
	bls	.L389
	mov	x1, x2
	mov	x0, x7
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x6, 16
	ble	.L384
	.p2align 3,,7
.L392:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L392
.L384:
	cmn	x4, #120
	bhi	.L618
	add	x20, x9, x20
	add	x21, x21, x4
	subs	x1, x20, x19
	add	x20, x20, x22
	csel	x0, x25, x28, cc
	add	x0, x0, x1
	prfm	PLDL1KEEP, [x0]
	prfm	PLDL1KEEP, [x0, 64]
	b	.L399
	.p2align 2,,3
.L376:
	ldr	x0, [sp, 128]
	add	x5, x11, x6
	add	x12, sp, 632
	add	x10, sp, 640
	cmp	x0, x16
	sub	x2, x8, #32
	ldp	x0, x1, [x5]
	stp	x0, x1, [sp, 416]
	add	x2, x7, x2
	ldr	x6, [x12, x13, lsl 3]
	ldr	x24, [x10, x13, lsl 3]
	add	x4, x6, x8
	ldr	x0, [x5, 16]
	str	x0, [sp, 432]
	add	x13, x21, x4
	add	x5, x21, x8
	ccmp	x2, x13, 0, cs
	sub	x0, x5, x24
	bcc	.L400
	ldr	q0, [x7]
	str	q0, [x21]
	cmp	x8, 16
	bhi	.L401
.L405:
	sub	x1, x5, x28
	str	x16, [sp, 360]
	cmp	x24, x1
	bls	.L403
	ldr	x1, [sp, 192]
	sub	x1, x5, x1
	cmp	x24, x1
	bhi	.L621
	sub	x1, x0, x28
	add	x1, x25, x1
	add	x2, x1, x6
	cmp	x25, x2
	bcs	.L650
	sub	x2, x28, x0
	mov	x0, x5
	sub	x6, x6, x2
	add	x5, x5, x2
	stp	x5, x6, [sp, 216]
	stp	x9, x13, [sp, 232]
	stp	x12, x10, [sp, 248]
	stp	x11, x18, [sp, 264]
	str	x4, [sp, 280]
	bl	memmove
	ldp	x5, x6, [sp, 216]
	mov	x0, x28
	ldp	x9, x13, [sp, 232]
	ldp	x12, x10, [sp, 248]
	ldp	x11, x18, [sp, 264]
	ldr	x4, [sp, 280]
.L403:
	cmp	x24, 15
	bls	.L409
	ldr	q0, [x0], 16
	str	q0, [x5], 16
	cmp	x6, 16
	ble	.L404
	.p2align 3,,7
.L412:
	ldr	q0, [x0]
	add	x5, x5, 32
	add	x0, x0, 32
	str	q0, [x5, -32]
	ldr	q0, [x0, -16]
	str	q0, [x5, -16]
	cmp	x13, x5
	bhi	.L412
	b	.L404
	.p2align 2,,3
.L640:
	lsr	w0, w4, 3
	and	w4, w4, 7
	sub	x1, x1, x0
	str	w4, [sp, 520]
	str	x1, [sp, 528]
	ldr	x0, [x1]
	str	x0, [sp, 512]
	b	.L370
	.p2align 2,,3
.L642:
	mov	x2, x5
	mov	x0, x24
	stp	x9, x12, [sp, 216]
	stp	x10, x11, [sp, 232]
	stp	x18, x4, [sp, 248]
.L623:
	bl	memmove
	ldp	x9, x12, [sp, 216]
	ldp	x10, x11, [sp, 232]
	ldp	x18, x4, [sp, 248]
	b	.L404
	.p2align 2,,3
.L418:
	mov	x4, x0
	add	x0, sp, 512
	stp	x5, x13, [sp, 400]
	add	x2, sp, 320
	mov	x7, x25
	ldp	x0, x1, [x0, -120]
	stp	x0, x1, [sp, 320]
	add	x3, sp, 360
	ldr	x1, [sp, 136]
	stp	x9, x12, [sp, 216]
	mov	x5, x28
	ldr	x6, [sp, 192]
	stp	x10, x11, [sp, 232]
	mov	x0, x21
	str	x18, [sp, 248]
	str	x13, [x2, 16]
	bl	ZSTD_execSequenceEnd
.L622:
	ldp	x9, x12, [sp, 216]
	mov	x4, x0
	ldp	x10, x11, [sp, 232]
	ldr	x18, [sp, 248]
	b	.L404
	.p2align 2,,3
.L419:
	ldr	q0, [x7, 16]
	sub	x3, x8, #16
	str	q0, [x21, 16]
	cmp	x3, 16
	ble	.L422
	add	x7, x7, 32
	add	x0, x21, 32
	.p2align 3,,7
.L423:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x24, x0
	bhi	.L423
	b	.L422
	.p2align 2,,3
.L639:
	ldr	x0, [sp, 296]
	add	x0, x0, 192
	str	x0, [sp, 528]
	b	.L370
	.p2align 2,,3
.L426:
	cmp	x13, 7
	bhi	.L430
	ldrb	w1, [x2]
	adrp	x0, .LANCHOR0
	strb	w1, [x24]
	add	x0, x0, :lo12:.LANCHOR0
	add	x1, x0, 32
	ldrb	w3, [x2, 1]
	strb	w3, [x24, 1]
	ldr	w1, [x1, x13, lsl 2]
	ldrb	w3, [x2, 2]
	strb	w3, [x24, 2]
	add	x7, x2, x1
	ldrsw	x3, [x0, x13, lsl 2]
	ldrb	w0, [x2, 3]
	strb	w0, [x24, 3]
	ldr	w0, [x2, x1]
	sub	x2, x7, x3
	str	w0, [x24, 4]
.L431:
	cmp	x5, 8
	bls	.L404
	sub	x0, x24, x2
	cmp	x0, 15
	bgt	.L432
	add	x2, x2, 8
	add	x24, x24, 8
	.p2align 3,,7
.L433:
	ldr	d0, [x2], 8
	str	d0, [x24], 8
	cmp	x6, x24
	bhi	.L433
	b	.L404
	.p2align 2,,3
.L621:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x4, -20
	b	.L651
	.p2align 2,,3
.L359:
	.cfi_restore_state
	ldr	x16, [sp, 512]
	add	w12, w12, w19
	ldr	w13, [sp, 520]
	ldr	x1, [sp, 600]
	lsl	x16, x16, x13
	add	w13, w13, 1
	add	x12, x12, x16, lsr 63
	str	w13, [sp, 520]
	cmp	x12, 3
	beq	.L652
	add	x8, sp, 816
	add	x13, x8, x12, lsl 3
	ldr	x19, [x13, -216]
	cmp	x19, 0
	cset	x13, eq
	sub	x19, x19, x13
	cmp	x12, 1
	beq	.L358
.L361:
	ldr	x12, [sp, 608]
	str	x12, [sp, 616]
	b	.L358
	.p2align 2,,3
.L618:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	b	.L321
.L643:
	.cfi_restore_state
	ldp	x20, x22, [sp, 200]
	mov	w12, w23
	ldp	x23, x24, [sp, 64]
	.cfi_restore 24
	.cfi_restore 23
	mov	x9, x21
	ldp	x11, x13, [sp, 304]
	mov	x21, x28
	ldr	x17, [sp, 528]
	mov	x28, x25
	mov	x25, x26
	mov	x26, x0
.L356:
	cmp	x22, x17
	bne	.L325
	ldr	w0, [sp, 520]
	cmp	w0, 64
	bne	.L325
	ldr	w0, [sp, 184]
	stp	x23, x24, [sp, 64]
	.cfi_offset 24, -744
	.cfi_offset 23, -752
	sub	w24, w12, w0
	cmp	w26, w24
	ble	.L438
	mov	x10, 30372
	add	x0, x20, x10
	str	x0, [sp, 184]
	add	x0, x20, 94208
	add	x23, sp, 624
	add	x0, x0, 1700
	ldr	x22, [sp, 136]
	str	x0, [sp, 176]
	mov	x0, x23
	add	x19, sp, 632
	mov	x23, x21
	mov	x21, x0
	str	x20, [sp, 120]
	mov	x20, x25
	mov	x25, x9
	stp	x11, x13, [sp, 200]
	.p2align 3,,7
.L497:
	and	x18, x24, 7
	ubfiz	x13, x24, 1, 3
	ldr	w0, [x20, 13984]
	add	x13, x13, x18
	ldr	x7, [sp, 360]
	lsl	x6, x13, 3
	ldr	x14, [x21, x13, lsl 3]
	add	x15, x7, x14
	cmp	w0, 2
	beq	.L653
	add	x0, sp, 640
	add	x6, x21, x6
	ldr	x5, [x19, x13, lsl 3]
	add	x3, x25, x14
	ldr	x13, [x0, x13, lsl 3]
	add	x27, x5, x14
	ldp	x0, x1, [x6]
	sub	x2, x3, x13
	ldr	x17, [x6, 16]
	stp	x0, x1, [sp, 464]
	prfm	PLDL1KEEP, [x2]
	ldr	x0, [sp, 128]
	sub	x16, x22, #32
	add	x6, x25, x27
	str	x17, [sp, 480]
	cmp	x6, x16
	ccmp	x0, x15, 0, ls
	bcc	.L480
	ldr	q0, [x7]
	str	q0, [x25]
	cmp	x14, 16
	bhi	.L481
.L484:
	sub	x0, x3, x23
	str	x15, [sp, 360]
	cmp	x13, x0
	bls	.L483
	ldr	x0, [sp, 192]
	sub	x0, x3, x0
	cmp	x13, x0
	bhi	.L621
	sub	x1, x2, x23
	add	x1, x28, x1
	add	x0, x1, x5
	cmp	x28, x0
	bcs	.L627
	sub	x2, x23, x2
	mov	x0, x3
	sub	x5, x5, x2
	add	x3, x3, x2
	stp	x3, x5, [sp, 144]
	stp	x13, x6, [sp, 160]
	bl	memmove
	mov	x2, x23
	ldp	x3, x5, [sp, 144]
	ldp	x13, x6, [sp, 160]
.L483:
	cmp	x13, 15
	bls	.L488
	mov	x1, x2
	mov	x0, x3
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x5, 16
	ble	.L466
	.p2align 3,,7
.L491:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L491
.L466:
	cmn	x27, #120
	bhi	.L612
	add	w24, w24, 1
	add	x25, x25, x27
	cmp	w26, w24
	bne	.L497
	ldp	x11, x13, [sp, 200]
	mov	x9, x25
	mov	x25, x20
	ldr	x20, [sp, 120]
.L438:
	add	x0, sp, 720
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldr	q0, [x0, -120]
	ldr	x0, [sp, 616]
	xtn	v0.2s, v0.2d
	ldr	x8, [sp, 360]
	str	d0, [x13, 60]
	ldr	w10, [x25, 13984]
	str	w0, [x25, 10308]
	b	.L324
	.p2align 2,,3
.L430:
	.cfi_restore_state
	ldr	d0, [x2]
	str	d0, [x24]
	b	.L431
.L650:
	mov	x2, x6
	mov	x0, x5
	stp	x9, x12, [sp, 216]
	stp	x10, x11, [sp, 232]
	stp	x18, x4, [sp, 248]
	b	.L623
.L649:
	mov	x2, x6
	mov	x0, x7
	stp	x9, x12, [sp, 216]
	stp	x10, x11, [sp, 232]
	stp	x18, x4, [sp, 248]
	bl	memmove
	ldp	x9, x12, [sp, 216]
	ldp	x10, x11, [sp, 232]
	ldp	x18, x4, [sp, 248]
	b	.L384
.L648:
	lsr	w0, w5, 3
	and	w5, w5, 7
	sub	x0, x12, x0
	str	x0, [sp, 528]
	str	w5, [sp, 520]
	ldr	x0, [x0]
	str	x0, [sp, 512]
	b	.L364
.L380:
	stp	x6, x24, [sp, 376]
	mov	x4, x1
	add	x2, sp, 320
	ldp	x0, x1, [sp, 368]
	stp	x0, x1, [sp, 320]
	mov	x7, x25
	ldr	x1, [sp, 136]
	stp	x9, x12, [sp, 216]
	mov	x5, x28
	ldr	x6, [sp, 192]
	stp	x10, x11, [sp, 232]
	add	x3, sp, 360
	str	x18, [sp, 248]
	mov	x0, x21
	str	x24, [x2, 16]
	bl	ZSTD_execSequenceEnd
	mov	x4, x0
	ldp	x9, x12, [sp, 216]
	ldp	x10, x11, [sp, 232]
	ldr	x18, [sp, 248]
	b	.L384
.L400:
	stp	x6, x24, [sp, 424]
	add	x3, sp, 320
	add	x4, sp, 360
	ldp	x0, x1, [sp, 416]
	stp	x0, x1, [sp, 320]
	mov	x6, x28
	ldr	x5, [sp, 128]
	str	x25, [sp]
	ldr	x1, [sp, 136]
	stp	x9, x12, [sp, 216]
	mov	x0, x21
	ldr	x7, [sp, 192]
	stp	x10, x11, [sp, 232]
	str	x18, [sp, 248]
	str	x24, [x3, 16]
	bl	ZSTD_execSequenceEndSplitLitBuffer
	b	.L622
.L401:
	ldr	q0, [x7, 16]
	sub	x3, x8, #16
	str	q0, [x21, 16]
	cmp	x3, 16
	ble	.L405
	add	x7, x7, 32
	add	x1, x21, 32
	.p2align 3,,7
.L406:
	ldr	q0, [x7]
	add	x1, x1, 32
	add	x7, x7, 32
	str	q0, [x1, -32]
	ldr	q0, [x7, -16]
	str	q0, [x1, -16]
	cmp	x5, x1
	bhi	.L406
	b	.L405
.L381:
	ldr	q0, [x1, 180]
	sub	x3, x8, #16
	str	q0, [x21, 16]
	cmp	x3, 16
	ble	.L385
	ldr	x3, [sp, 200]
	mov	x13, 30404
	add	x1, x21, 32
	add	x3, x3, x13
	.p2align 3,,7
.L386:
	ldr	q0, [x3]
	add	x1, x1, 32
	add	x3, x3, 32
	str	q0, [x1, -32]
	ldr	q0, [x3, -16]
	str	q0, [x1, -16]
	cmp	x7, x1
	bhi	.L386
	b	.L385
.L645:
	lsr	w0, w2, 3
	mov	w24, 1
	sub	x17, x17, x0
	and	w2, w2, 7
	mov	w30, w24
	str	w24, [sp, 200]
	ldr	x16, [x17]
	b	.L343
.L652:
	subs	x19, x1, #1
	cset	x12, eq
	sub	x19, x19, x12
	b	.L361
.L409:
	cmp	x24, 7
	bhi	.L413
	ldrb	w2, [x0]
	adrp	x1, .LANCHOR0
	strb	w2, [x5]
	add	x1, x1, :lo12:.LANCHOR0
	add	x2, x1, 32
	ldrb	w3, [x0, 1]
	strb	w3, [x5, 1]
	ldr	w2, [x2, x24, lsl 2]
	ldrb	w3, [x0, 2]
	strb	w3, [x5, 2]
	add	x7, x0, x2
	ldrsw	x3, [x1, x24, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x5, 3]
	ldr	w1, [x0, x2]
	sub	x0, x7, x3
	str	w1, [x5, 4]
.L414:
	cmp	x6, 8
	bls	.L404
	sub	x1, x5, x0
	cmp	x1, 15
	bgt	.L415
	add	x0, x0, 8
	add	x5, x5, 8
	.p2align 3,,7
.L416:
	ldr	d0, [x0], 8
	str	d0, [x5], 8
	cmp	x13, x5
	bhi	.L416
	b	.L404
.L389:
	cmp	x24, 7
	bhi	.L393
	ldrb	w1, [x2]
	adrp	x0, .LANCHOR0
	strb	w1, [x7]
	add	x0, x0, :lo12:.LANCHOR0
	add	x1, x0, 32
	ldrb	w3, [x2, 1]
	strb	w3, [x7, 1]
	ldr	w1, [x1, x24, lsl 2]
	ldrb	w3, [x2, 2]
	strb	w3, [x7, 2]
	add	x13, x2, x1
	ldrsw	x3, [x0, x24, lsl 2]
	ldrb	w0, [x2, 3]
	strb	w0, [x7, 3]
	ldr	w0, [x2, x1]
	sub	x2, x13, x3
	str	w0, [x7, 4]
.L394:
	cmp	x6, 8
	bls	.L384
	sub	x0, x7, x2
	cmp	x0, 15
	bgt	.L395
	add	x1, x2, 8
	add	x0, x7, 8
	.p2align 3,,7
.L396:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x5, x0
	bhi	.L396
	b	.L384
.L335:
	.cfi_restore 23
	.cfi_restore 24
	ldr	x17, [sp, 528]
	mov	x9, x11
	mov	w12, 0
	b	.L356
.L647:
	.cfi_offset 23, -752
	.cfi_offset 24, -744
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 528]
	b	.L364
.L653:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 30360]
	cmp	x0, x15
	bcs	.L440
	subs	x2, x0, x7
	beq	.L441
	sub	x0, x22, x25
	cmp	x2, x0
	bhi	.L442
	mov	x0, x25
	sub	x14, x14, x2
	add	x25, x25, x2
	mov	x1, x7
	bl	ZSTD_safecopyDstBeforeSrc
	str	x14, [x21, x13, lsl 3]
.L441:
	add	x0, x18, x18, lsl 1
	add	x2, sp, 640
	sub	x1, x22, #32
	str	wzr, [x20, 13984]
	add	x6, x21, x0, lsl 3
	ldr	x5, [x19, x0, lsl 3]
	ldr	x13, [x2, x0, lsl 3]
	add	x0, sp, 512
	ldp	x16, x17, [x6]
	add	x27, x5, x14
	stp	x16, x17, [x0, -72]
	ldp	x0, x3, [sp, 176]
	str	x3, [sp, 360]
	ldr	x15, [x6, 16]
	add	x6, x25, x27
	str	x15, [sp, 456]
	cmp	x6, x1
	add	x7, x3, x14
	add	x3, x25, x14
	sub	x2, x3, x13
	ccmp	x0, x7, 0, ls
	prfm	PLDL1KEEP, [x2]
	str	x0, [sp, 128]
	bcc	.L443
	ldr	x0, [sp, 120]
	mov	x8, 30208
	add	x0, x0, x8
	ldr	q0, [x0, 164]
	str	q0, [x25]
	cmp	x14, 16
	bhi	.L444
.L448:
	sub	x0, x3, x23
	str	x7, [sp, 360]
	cmp	x13, x0
	bls	.L446
	ldr	x0, [sp, 192]
	sub	x0, x3, x0
	cmp	x13, x0
	bhi	.L621
	sub	x1, x2, x23
	add	x1, x28, x1
	add	x0, x1, x5
	cmp	x28, x0
	bcs	.L627
	sub	x2, x23, x2
	mov	x0, x3
	sub	x5, x5, x2
	add	x3, x3, x2
	stp	x3, x5, [sp, 144]
	stp	x13, x6, [sp, 160]
	bl	memmove
	mov	x2, x23
	ldp	x3, x5, [sp, 144]
	ldp	x13, x6, [sp, 160]
.L446:
	cmp	x13, 15
	bls	.L452
	mov	x1, x2
	mov	x0, x3
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x5, 16
	ble	.L466
.L455:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L455
	b	.L466
.L506:
	adrp	x17, .LANCHOR0
	add	x17, x17, :lo12:.LANCHOR0
	add	x17, x17, 192
	mov	w24, 1
	b	.L343
.L432:
	ldr	q0, [x2, 8]
	str	q0, [x24, 8]
	cmp	x5, 24
	ble	.L404
	add	x24, x24, 24
	add	x2, x2, 24
	.p2align 3,,7
.L434:
	ldr	q0, [x2]
	add	x24, x24, 32
	add	x2, x2, 32
	str	q0, [x24, -32]
	ldr	q0, [x2, -16]
	str	q0, [x24, -16]
	cmp	x6, x24
	bhi	.L434
	b	.L404
.L413:
	ldr	d0, [x0]
	str	d0, [x5]
	b	.L414
.L393:
	ldr	d0, [x2]
	str	d0, [x7]
	b	.L394
.L440:
	add	x6, x21, x6
	add	x4, sp, 720
	add	x5, sp, 640
	sub	x2, x14, #32
	ldr	x3, [x19, x13, lsl 3]
	add	x2, x7, x2
	ldp	x0, x1, [x6]
	stp	x0, x1, [x4, -232]
	add	x27, x3, x14
	ldr	x0, [sp, 128]
	ldr	x13, [x5, x13, lsl 3]
	cmp	x0, x15
	ldr	x0, [x6, 16]
	str	x0, [sp, 504]
	add	x5, x25, x14
	add	x6, x25, x27
	sub	x16, x5, x13
	ccmp	x2, x6, 0, cs
	bcc	.L462
	ldr	q0, [x7]
	str	q0, [x25]
	cmp	x14, 16
	bhi	.L463
.L467:
	sub	x0, x5, x23
	str	x15, [sp, 360]
	cmp	x13, x0
	bls	.L465
	ldr	x0, [sp, 192]
	sub	x0, x5, x0
	cmp	x13, x0
	bhi	.L621
	sub	x1, x16, x23
	add	x1, x28, x1
	add	x0, x1, x3
	cmp	x28, x0
	bcs	.L654
	sub	x2, x23, x16
	mov	x0, x5
	sub	x3, x3, x2
	add	x5, x5, x2
	stp	x5, x3, [sp, 144]
	stp	x13, x6, [sp, 160]
	bl	memmove
	mov	x16, x23
	ldp	x5, x3, [sp, 144]
	ldp	x13, x6, [sp, 160]
.L465:
	cmp	x13, 15
	bls	.L471
	mov	x1, x16
	mov	x0, x5
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x3, 16
	ble	.L466
.L473:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L473
	b	.L466
.L627:
	mov	x2, x5
	mov	x0, x3
	bl	memmove
	b	.L466
.L442:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x4, -70
	b	.L321
.L415:
	.cfi_restore_state
	ldr	q0, [x0, 8]
	str	q0, [x5, 8]
	cmp	x6, 24
	ble	.L404
	add	x5, x5, 24
	add	x0, x0, 24
.L417:
	ldr	q0, [x0]
	add	x5, x5, 32
	add	x0, x0, 32
	str	q0, [x5, -32]
	ldr	q0, [x0, -16]
	str	q0, [x5, -16]
	cmp	x13, x5
	bhi	.L417
	b	.L404
.L395:
	ldr	q0, [x2, 8]
	str	q0, [x7, 8]
	cmp	x6, 24
	ble	.L384
	add	x0, x7, 24
	add	x1, x2, 24
.L397:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L397
	b	.L384
.L481:
	ldr	q0, [x7, 16]
	sub	x14, x14, #16
	str	q0, [x25, 16]
	cmp	x14, 16
	ble	.L484
	add	x7, x7, 32
	add	x0, x25, 32
.L485:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x3, x0
	bhi	.L485
	b	.L484
.L480:
	stp	x5, x13, [sp, 472]
	mov	x4, x0
	add	x2, sp, 320
	ldr	x6, [sp, 192]
	mov	x7, x28
	ldp	x0, x1, [sp, 464]
	add	x3, sp, 360
	mov	x5, x23
	stp	x0, x1, [sp, 320]
.L626:
	mov	x1, x22
	str	x13, [x2, 16]
	mov	x0, x25
	bl	ZSTD_execSequenceEnd
	mov	x27, x0
	b	.L466
.L488:
	cmp	x13, 7
	bhi	.L492
	ldrb	w1, [x2]
	adrp	x0, .LANCHOR0
	strb	w1, [x3]
	add	x0, x0, :lo12:.LANCHOR0
	add	x1, x0, 32
	ldrb	w7, [x2, 1]
	strb	w7, [x3, 1]
	ldr	w1, [x1, x13, lsl 2]
	ldrb	w7, [x2, 2]
	strb	w7, [x3, 2]
	ldrsw	x7, [x0, x13, lsl 2]
	add	x13, x2, x1
	ldrb	w0, [x2, 3]
	strb	w0, [x3, 3]
	ldr	w0, [x2, x1]
	sub	x2, x13, x7
	str	w0, [x3, 4]
.L493:
	cmp	x5, 8
	bls	.L466
	sub	x0, x3, x2
	cmp	x0, 15
	bgt	.L494
	add	x1, x2, 8
	add	x0, x3, 8
.L495:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x6, x0
	bhi	.L495
	b	.L466
.L612:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x4, x27
	b	.L321
.L492:
	.cfi_restore_state
	ldr	d0, [x2]
	str	d0, [x3]
	b	.L493
.L654:
	mov	x2, x3
	mov	x0, x5
	bl	memmove
	b	.L466
.L462:
	add	x0, sp, 720
	add	x4, sp, 320
	str	x28, [sp]
	mov	x6, x23
	stp	x3, x13, [sp, 496]
	mov	x3, x4
	add	x4, sp, 360
	ldp	x0, x1, [x0, -232]
	stp	x0, x1, [sp, 320]
	ldr	x5, [sp, 128]
	mov	x1, x22
	ldr	x7, [sp, 192]
	str	x13, [x3, 16]
	mov	x0, x25
	bl	ZSTD_execSequenceEndSplitLitBuffer
	mov	x27, x0
	b	.L466
.L463:
	ldr	q0, [x7, 16]
	sub	x14, x14, #16
	str	q0, [x25, 16]
	cmp	x14, 16
	ble	.L467
	add	x7, x7, 32
	add	x0, x25, 32
.L468:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L468
	b	.L467
.L513:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x9, x11
	ldr	w12, [sp, 184]
	b	.L356
.L444:
	.cfi_restore_state
	ldr	q0, [x0, 180]
	sub	x14, x14, #16
	str	q0, [x25, 16]
	cmp	x14, 16
	ble	.L448
	ldr	x1, [sp, 120]
	mov	x4, 30404
	add	x0, x25, 32
	add	x1, x1, x4
.L449:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x3, x0
	bhi	.L449
	b	.L448
.L443:
	mov	x4, x0
	add	x0, sp, 512
	stp	x5, x13, [sp, 448]
	add	x2, sp, 320
	mov	x7, x28
	ldp	x0, x1, [x0, -72]
	add	x3, sp, 360
	ldr	x6, [sp, 192]
	mov	x5, x23
	stp	x0, x1, [sp, 320]
	b	.L626
.L494:
	ldr	q0, [x2, 8]
	str	q0, [x3, 8]
	cmp	x5, 24
	ble	.L466
	add	x0, x3, 24
	add	x1, x2, 24
.L496:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L496
	b	.L466
.L452:
	cmp	x13, 7
	bhi	.L456
	ldrb	w1, [x2]
	adrp	x0, .LANCHOR0
	strb	w1, [x3]
	add	x0, x0, :lo12:.LANCHOR0
	add	x1, x0, 32
	ldrb	w7, [x2, 1]
	strb	w7, [x3, 1]
	ldr	w1, [x1, x13, lsl 2]
	ldrb	w7, [x2, 2]
	strb	w7, [x3, 2]
	ldrsw	x7, [x0, x13, lsl 2]
	add	x13, x2, x1
	ldrb	w0, [x2, 3]
	strb	w0, [x3, 3]
	ldr	w0, [x2, x1]
	sub	x2, x13, x7
	str	w0, [x3, 4]
.L457:
	cmp	x5, 8
	bls	.L466
	sub	x0, x3, x2
	cmp	x0, 15
	bgt	.L458
	add	x1, x2, 8
	add	x0, x3, 8
.L459:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x6, x0
	bhi	.L459
	b	.L466
.L471:
	cmp	x13, 7
	bhi	.L475
	ldrb	w1, [x16]
	adrp	x0, .LANCHOR0
	strb	w1, [x5]
	add	x0, x0, :lo12:.LANCHOR0
	add	x1, x0, 32
	ldrb	w2, [x16, 1]
	strb	w2, [x5, 1]
	ldr	w1, [x1, x13, lsl 2]
	ldrb	w2, [x16, 2]
	strb	w2, [x5, 2]
	add	x7, x16, x1
	ldrsw	x2, [x0, x13, lsl 2]
	ldrb	w0, [x16, 3]
	strb	w0, [x5, 3]
	ldr	w0, [x16, x1]
	sub	x16, x7, x2
	str	w0, [x5, 4]
.L476:
	cmp	x3, 8
	bls	.L466
	sub	x0, x5, x16
	cmp	x0, 15
	bgt	.L477
	add	x1, x16, 8
	add	x0, x5, 8
.L478:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x6, x0
	bhi	.L478
	b	.L466
.L456:
	ldr	d0, [x2]
	str	d0, [x3]
	b	.L457
.L475:
	ldr	d0, [x16]
	str	d0, [x5]
	b	.L476
.L458:
	ldr	q0, [x2, 8]
	str	q0, [x3, 8]
	cmp	x5, 24
	ble	.L466
	add	x0, x3, 24
	add	x1, x2, 24
.L460:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L460
	b	.L466
.L477:
	ldr	q0, [x16, 8]
	str	q0, [x5, 8]
	cmp	x3, 24
	ble	.L466
	add	x0, x5, 24
	add	x1, x16, 24
.L479:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L479
	b	.L466
	.cfi_endproc
.LFE4572:
	.size	ZSTD_decompressSequencesLong_default.constprop.0, .-ZSTD_decompressSequencesLong_default.constprop.0
	.align	2
	.p2align 4,,11
	.type	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0, %function
ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0:
.LFB4573:
	.cfi_startproc
	sub	sp, sp, #464
	.cfi_def_cfa_offset 464
	stp	x29, x30, [sp, 16]
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	add	x29, sp, 16
	stp	x19, x20, [sp, 32]
	.cfi_offset 19, -432
	.cfi_offset 20, -424
	mov	x19, x0
	stp	x21, x22, [sp, 48]
	.cfi_offset 21, -416
	.cfi_offset 22, -408
	mov	w21, w5
	stp	x23, x24, [sp, 64]
	.cfi_offset 23, -400
	.cfi_offset 24, -392
	mov	x23, x3
	stp	x25, x26, [sp, 80]
	.cfi_offset 25, -384
	.cfi_offset 26, -376
	mov	x26, x1
	stp	x27, x28, [sp, 96]
	.cfi_offset 27, -368
	.cfi_offset 28, -360
	cmp	x2, 0
	ble	.L770
	mov	x7, x2
	add	x0, x1, x2
	str	x0, [sp, 120]
.L656:
	ldr	x8, [x19, 30120]
	str	x8, [sp, 272]
	ldr	x27, [x19, 29896]
	ldr	x6, [x19, 29904]
	ldr	x24, [x19, 29912]
	ldr	x25, [x19, 30360]
	cbz	w21, .L771
	add	x28, x19, 16384
	mov	x11, 26624
	add	x18, x19, x11
	mov	w0, 1
	str	w0, [x28, 13620]
	ldr	w0, [x28, 10308]
	ldr	d0, [x18, 60]
	str	x0, [sp, 456]
	add	x0, sp, 640
	uxtl	v0.2d, v0.2s
	str	q0, [x0, -200]
	cbz	x4, .L658
	add	x0, x23, x4
	add	x1, x23, 8
	str	x1, [sp, 112]
	stp	x23, x1, [sp, 376]
	ldrb	w0, [x0, -1]
	cmp	x4, 7
	bls	.L659
	sub	x1, x4, #8
	add	x2, x23, x1
	str	x2, [sp, 368]
	ldr	x1, [x23, x1]
	str	x1, [sp, 352]
	cbz	w0, .L658
	clz	w0, w0
	sub	w0, w0, #23
	str	w0, [sp, 360]
	cmn	x4, #120
	bls	.L660
	.p2align 3,,7
.L658:
	mov	x3, -20
	b	.L655
	.p2align 2,,3
.L771:
	mov	x20, x26
	add	x28, x19, 16384
.L657:
	ldr	w0, [x28, 13984]
	cmp	w0, 2
	beq	.L851
	sub	x2, x25, x8
	cmp	x2, x7
	bhi	.L768
.L859:
	cbz	x20, .L769
	mov	x0, x20
	mov	x1, x8
	add	x20, x20, x2
	bl	memcpy
.L769:
	sub	x3, x20, x26
.L655:
	ldp	x29, x30, [sp, 16]
	mov	x0, x3
	ldp	x19, x20, [sp, 32]
	ldp	x21, x22, [sp, 48]
	ldp	x23, x24, [sp, 64]
	ldp	x25, x26, [sp, 80]
	ldp	x27, x28, [sp, 96]
	add	sp, sp, 464
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L770:
	.cfi_restore_state
	mov	x7, 0
	str	x1, [sp, 120]
	b	.L656
	.p2align 2,,3
.L659:
	ldrb	w1, [x23]
	str	x1, [sp, 352]
	str	x23, [sp, 368]
	cmp	x4, 5
	beq	.L661
	bhi	.L662
	cmp	x4, 3
	beq	.L663
	cmp	x4, 4
	bne	.L852
.L664:
	ldrb	w2, [x23, 3]
	add	x1, x1, x2, lsl 24
.L663:
	ldrb	w2, [x23, 2]
	add	x1, x1, x2, lsl 16
	ldrb	w2, [x23, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 352]
.L666:
	cbz	w0, .L658
	mov	w1, 8
	sub	w1, w1, w4
	clz	w0, w0
	add	w0, w0, w1, lsl 3
	sub	w0, w0, #23
	str	w0, [sp, 360]
.L660:
	ldr	x2, [x19]
	add	x3, sp, 360
	add	x1, sp, 352
	add	x0, sp, 392
	stp	x6, x3, [sp, 128]
	mov	x20, x26
	bl	ZSTD_initFseState
	ldr	x2, [x19, 16]
	add	x0, sp, 408
	bl	ZSTD_initFseState
	add	x0, sp, 424
	ldr	x2, [x19, 8]
	bl	ZSTD_initFseState
	adrp	x0, .LANCHOR0
	ldr	x12, [sp, 400]
	add	x10, x0, :lo12:.LANCHOR0
	ldr	x14, [sp, 416]
	add	x11, x10, 64
	ldr	x13, [sp, 432]
	mov	x16, x25
	stp	x26, x28, [sp, 192]
	mov	x26, x24
	mov	x28, x13
	mov	w24, w21
	mov	x21, x25
	mov	x25, x14
	stp	x18, x10, [sp, 208]
	mov	x10, x23
	mov	x23, x12
	mov	x12, x19
	mov	x19, x11
	.p2align 3,,7
.L707:
	ldr	x1, [sp, 392]
	ldr	x2, [sp, 424]
	ldr	x0, [sp, 408]
	ldr	x15, [x28, x2, lsl 3]
	ldr	x1, [x23, x1, lsl 3]
	ldr	x3, [x25, x0, lsl 3]
	ubfx	w7, w15, 16, 8
	ubfx	w4, w1, 16, 8
	lsr	x18, x1, 32
	add	w0, w4, w7
	lsr	x6, x15, 32
	ubfx	w2, w3, 16, 8
	mov	x9, x18
	add	w0, w2, w0
	lsr	x22, x3, 32
	and	w0, w0, 255
	cmp	w2, 1
	bls	.L668
	ldr	x30, [sp, 352]
	neg	w18, w2
	ldr	w17, [sp, 360]
	ldr	x5, [sp, 448]
	add	w2, w2, w17
	lsl	x17, x30, x17
	str	w2, [sp, 360]
	ldr	x2, [sp, 440]
	lsr	x17, x17, x18
	add	x22, x22, x17
	str	x5, [sp, 456]
.L669:
	stp	x22, x2, [sp, 440]
	cbnz	w7, .L853
.L674:
	cmp	w0, 30
	bhi	.L854
.L675:
	cbnz	w4, .L855
.L679:
	cmp	w24, 1
	beq	.L681
	ldr	w4, [sp, 360]
	lsr	w30, w1, 24
	mov	x2, x30
	lsr	w18, w15, 24
	ldr	x7, [sp, 352]
	add	w2, w2, w4
	mov	x0, x18
	lsr	w17, w3, 24
	add	w0, w0, w2
	ldr	w18, [x19, x18, lsl 2]
	add	w4, w17, w0
	neg	w0, w0
	ldr	w30, [x19, x30, lsl 2]
	neg	w2, w2
	lsr	x0, x7, x0
	ldr	w17, [x19, x17, lsl 2]
	and	x0, x0, x18
	neg	w18, w4
	lsr	x2, x7, x2
	and	x2, x2, x30
	lsr	x7, x7, x18
	and	x7, x7, x17
	add	x1, x2, w1, uxth
	add	x0, x0, w15, uxth
	add	x3, x7, w3, uxth
	str	w4, [sp, 360]
	str	x1, [sp, 392]
	str	x3, [sp, 408]
	str	x0, [sp, 424]
	cmp	w4, 64
	bhi	.L856
	ldr	x0, [sp, 112]
	ldr	x1, [sp, 368]
	cmp	x1, x0
	bcs	.L857
	cmp	x10, x1
	beq	.L681
	lsr	w0, w4, 3
	lsr	w2, w4, 3
	sub	x0, x1, x0
	cmp	x10, x0
	bls	.L685
	sub	x0, x1, x10
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L685:
	ldr	x1, [x0]
	sub	w2, w4, w2, lsl 3
	str	x1, [sp, 352]
	str	w2, [sp, 360]
	str	x0, [sp, 368]
.L681:
	add	x1, x8, x9
	cmp	x1, x16
	bhi	.L686
	sub	x2, x9, #32
	add	x3, x9, x6
	cmp	x21, x1
	add	x2, x8, x2
	add	x7, x20, x3
	add	x4, x20, x9
	ccmp	x2, x7, 0, cs
	sub	x0, x4, x22
	bcc	.L687
	ldr	q0, [x8]
	str	q0, [x20]
	cmp	x9, 16
	bhi	.L688
.L692:
	str	x1, [sp, 272]
	sub	x1, x4, x27
	cmp	x22, x1
	bls	.L690
	ldr	x1, [sp, 128]
	sub	x1, x4, x1
	cmp	x22, x1
	bhi	.L658
	sub	x1, x0, x27
	add	x1, x26, x1
	add	x2, x1, x6
	cmp	x26, x2
	bcs	.L858
	sub	x2, x27, x0
	mov	x0, x4
	sub	x6, x6, x2
	add	x4, x4, x2
	stp	x4, x6, [sp, 144]
	stp	x7, x12, [sp, 160]
	stp	x10, x3, [sp, 176]
	bl	memmove
	mov	x0, x27
	ldp	x4, x6, [sp, 144]
	ldp	x7, x12, [sp, 160]
	ldp	x10, x3, [sp, 176]
.L690:
	cmp	x22, 15
	bls	.L696
	ldr	q0, [x0], 16
	str	q0, [x4], 16
	cmp	x6, 16
	ble	.L691
	.p2align 3,,7
.L699:
	ldr	q0, [x0]
	add	x4, x4, 32
	add	x0, x0, 32
	str	q0, [x4, -32]
	ldr	q0, [x0, -16]
	str	q0, [x4, -16]
	cmp	x7, x4
	bhi	.L699
.L691:
	cmn	x3, #120
	bhi	.L655
	add	x20, x20, x3
	subs	w24, w24, #1
	beq	.L847
	ldr	x8, [sp, 272]
	ldr	x16, [x12, 30360]
	b	.L707
	.p2align 2,,3
.L662:
	cmp	x4, 6
	beq	.L667
	ldrb	w2, [x23, 6]
	add	x1, x1, x2, lsl 48
.L667:
	ldrb	w2, [x23, 5]
	add	x1, x1, x2, lsl 40
.L661:
	ldrb	w2, [x23, 4]
	add	x1, x1, x2, lsl 32
	b	.L664
	.p2align 2,,3
.L852:
	cmp	x4, 2
	bne	.L666
	ldrb	w2, [x23, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 352]
	b	.L666
	.p2align 2,,3
.L851:
	sub	x2, x25, x8
	cmp	x7, x2
	bcc	.L768
	cbz	x20, .L767
	mov	x0, x20
	mov	x1, x8
	add	x20, x20, x2
	bl	memmove
.L767:
	mov	x0, 30372
	add	x8, x19, x0
	ldr	x0, [sp, 120]
	add	x25, x19, 94208
	add	x25, x25, 1700
	str	x8, [sp, 272]
	sub	x7, x0, x20
	sub	x2, x25, x8
	str	wzr, [x28, 13984]
	cmp	x2, x7
	bls	.L859
.L768:
	mov	x3, -70
	b	.L655
	.p2align 2,,3
.L854:
	ldr	w2, [sp, 360]
	cmp	w2, 64
	bhi	.L860
	ldr	x0, [sp, 112]
	ldr	x7, [sp, 368]
	cmp	x7, x0
	bcs	.L861
	cmp	x10, x7
	beq	.L675
	lsr	w0, w2, 3
	lsr	w17, w2, 3
	sub	x0, x7, x0
	cmp	x10, x0
	bls	.L678
	sub	x0, x7, x10
	mov	w17, w0
	sub	x0, x7, w0, uxtw
.L678:
	ldr	x7, [x0]
	sub	w17, w2, w17, lsl 3
	str	x7, [sp, 352]
	str	w17, [sp, 360]
	str	x0, [sp, 368]
	cbz	w4, .L679
	.p2align 3,,7
.L855:
	ldr	x0, [sp, 352]
	neg	w7, w4
	ldr	w2, [sp, 360]
	add	w4, w4, w2
	str	w4, [sp, 360]
	lsl	x0, x0, x2
	lsr	x0, x0, x7
	add	x9, x9, x0
	b	.L679
	.p2align 2,,3
.L668:
	cmp	w18, 0
	cset	w17, eq
	cmp	w2, 1
	beq	.L670
	cmp	w18, 0
	add	x17, x17, 10
	ldr	x5, [sp, 136]
	cset	x2, ne
	add	x2, x2, 10
	ldr	x22, [x5, x17, lsl 3]
	ldr	x2, [x5, x2, lsl 3]
	stp	x22, x2, [sp, 440]
	cbz	w7, .L674
.L853:
	ldr	x18, [sp, 352]
	neg	w17, w7
	ldr	w2, [sp, 360]
	add	w7, w7, w2
	str	w7, [sp, 360]
	lsl	x18, x18, x2
	lsr	x18, x18, x17
	add	x6, x6, x18
	b	.L674
	.p2align 2,,3
.L858:
	mov	x2, x6
	mov	x0, x4
	stp	x12, x10, [sp, 144]
	str	x3, [sp, 160]
	bl	memmove
	ldp	x12, x10, [sp, 144]
	ldr	x3, [sp, 160]
	b	.L691
	.p2align 2,,3
.L687:
	add	x0, sp, 512
	str	x26, [sp]
	stp	x9, x6, [sp, 280]
	add	x3, sp, 240
	mov	x5, x21
	ldp	x0, x1, [x0, -232]
	stp	x0, x1, [sp, 240]
	add	x4, sp, 272
	ldr	x1, [sp, 120]
	stp	x12, x10, [sp, 144]
	mov	x6, x27
	ldr	x7, [sp, 128]
	str	x22, [sp, 296]
	str	x22, [x3, 16]
	mov	x0, x20
	bl	ZSTD_execSequenceEndSplitLitBuffer
	mov	x3, x0
	ldp	x12, x10, [sp, 144]
	b	.L691
	.p2align 2,,3
.L857:
	lsr	w0, w4, 3
	and	w4, w4, 7
	sub	x0, x1, x0
	str	x0, [sp, 368]
	str	w4, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L681
	.p2align 2,,3
.L688:
	ldr	q0, [x8, 16]
	sub	x9, x9, #16
	str	q0, [x20, 16]
	cmp	x9, 16
	ble	.L692
	add	x8, x8, 32
	add	x2, x20, 32
	.p2align 3,,7
.L693:
	ldr	q0, [x8]
	add	x2, x2, 32
	add	x8, x8, 32
	str	q0, [x2, -32]
	ldr	q0, [x8, -16]
	str	q0, [x2, -16]
	cmp	x4, x2
	bhi	.L693
	b	.L692
	.p2align 2,,3
.L696:
	cmp	x22, 7
	bls	.L862
	ldr	d0, [x0]
	str	d0, [x4]
.L701:
	cmp	x6, 8
	bls	.L691
	sub	x1, x4, x0
	cmp	x1, 15
	bgt	.L702
	add	x0, x0, 8
	add	x4, x4, 8
	.p2align 3,,7
.L703:
	ldr	d0, [x0], 8
	str	d0, [x4], 8
	cmp	x7, x4
	bhi	.L703
	b	.L691
	.p2align 2,,3
.L856:
	ldr	x0, [sp, 216]
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L681
.L686:
	mov	w21, w24
	mov	x5, x6
	ldr	x6, [sp, 128]
	mov	x13, x28
	ldr	x18, [sp, 208]
	mov	x19, x12
	mov	x24, x26
	mov	x12, x23
	ldp	x26, x28, [sp, 192]
	mov	x14, x25
	mov	x23, x10
	cmp	w21, 0
	ble	.L658
	ldr	x1, [sp, 272]
	ldr	x0, [x19, 30360]
	subs	x2, x0, x1
	bne	.L863
.L708:
	add	x4, x20, x9
	mov	x10, 30372
	sub	x2, x4, x22
	add	x0, x19, x10
	add	x1, x0, x9
	add	x25, x19, 94208
	add	x25, x25, 1700
	add	x3, x5, x9
	prfm	PLDL1KEEP, [x2]
	cmp	x25, x1
	str	x0, [sp, 272]
	add	x11, x20, x3
	ldr	x0, [sp, 120]
	str	wzr, [x28, 13984]
	sub	x10, x0, #32
	ccmp	x11, x10, 2, cs
	bhi	.L709
	mov	x8, 30208
	add	x0, x19, x8
	ldr	q0, [x0, 164]
	str	q0, [x20]
	cmp	x9, 16
	bhi	.L710
.L714:
	sub	x0, x4, x27
	str	x1, [sp, 272]
	cmp	x22, x0
	bls	.L712
	sub	x0, x4, x6
	cmp	x22, x0
	bhi	.L658
	sub	x1, x2, x27
	add	x1, x24, x1
	add	x0, x1, x5
	cmp	x24, x0
	bcs	.L864
	sub	x2, x27, x2
	mov	x0, x4
	sub	x5, x5, x2
	add	x4, x4, x2
	stp	x4, x5, [sp, 128]
	stp	x6, x11, [sp, 144]
	stp	x10, x12, [sp, 160]
	stp	x13, x14, [sp, 176]
	stp	x3, x18, [sp, 192]
	bl	memmove
	mov	x2, x27
	ldp	x4, x5, [sp, 128]
	ldp	x6, x11, [sp, 144]
	ldp	x10, x12, [sp, 160]
	ldp	x13, x14, [sp, 176]
	ldp	x3, x18, [sp, 192]
.L712:
	cmp	x22, 15
	bls	.L718
	mov	x1, x2
	mov	x0, x4
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x5, 16
	ble	.L713
	.p2align 3,,7
.L721:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x11, x0
	bhi	.L721
.L713:
	cmn	x3, #120
	bhi	.L655
	add	x20, x20, x3
	subs	w21, w21, #1
	beq	.L706
	add	x1, sp, 360
	adrp	x0, .LANCHOR0
	add	x16, x0, :lo12:.LANCHOR0
	str	x1, [sp, 184]
	add	x1, sp, 240
	add	x0, x16, 64
	str	x1, [sp, 192]
	mov	x1, x20
	mov	x20, x25
	mov	x25, x1
	stp	x6, x24, [sp, 128]
	mov	x24, x14
	str	x23, [sp, 144]
	mov	x23, x0
	stp	x19, x26, [sp, 200]
	mov	w19, w21
	mov	x26, x27
	mov	x21, x13
	mov	x27, x12
	stp	x28, x18, [sp, 216]
	mov	x28, x10
	str	x16, [sp, 232]
	.p2align 3,,7
.L763:
	ldr	x2, [sp, 392]
	ldr	x1, [sp, 424]
	ldr	x0, [sp, 408]
	ldr	x7, [x27, x2, lsl 3]
	ldr	x16, [x21, x1, lsl 3]
	ldr	x3, [x24, x0, lsl 3]
	ubfx	w11, w7, 16, 8
	ubfx	w15, w16, 16, 8
	lsr	x18, x7, 32
	add	w0, w11, w15
	lsr	x6, x16, 32
	ubfx	w1, w3, 16, 8
	mov	x2, x18
	add	w0, w1, w0
	lsr	x22, x3, 32
	and	w0, w0, 255
	cmp	w1, 1
	bls	.L727
	ldr	x30, [sp, 352]
	neg	w18, w1
	ldr	w17, [sp, 360]
	ldr	x4, [sp, 448]
	add	w1, w1, w17
	lsl	x17, x30, x17
	str	w1, [sp, 360]
	ldr	x1, [sp, 440]
	lsr	x17, x17, x18
	add	x22, x22, x17
	str	x4, [sp, 456]
.L728:
	stp	x22, x1, [sp, 440]
	cbnz	w15, .L865
.L733:
	cmp	w0, 30
	bhi	.L866
.L734:
	cbnz	w11, .L867
.L738:
	cmp	w19, 1
	beq	.L740
	ldr	w11, [sp, 360]
	lsr	w30, w7, 24
	mov	x1, x30
	lsr	w18, w16, 24
	ldr	x15, [sp, 352]
	add	w1, w1, w11
	mov	x0, x18
	lsr	w17, w3, 24
	add	w0, w0, w1
	ldr	w18, [x23, x18, lsl 2]
	add	w11, w17, w0
	neg	w0, w0
	ldr	w30, [x23, x30, lsl 2]
	neg	w1, w1
	ldr	w17, [x23, x17, lsl 2]
	lsr	x0, x15, x0
	and	x0, x0, x18
	neg	w18, w11
	lsr	x1, x15, x1
	and	x1, x1, x30
	add	x1, x1, w7, uxth
	lsr	x7, x15, x18
	and	x7, x7, x17
	add	x0, x0, w16, uxth
	add	x3, x7, w3, uxth
	str	w11, [sp, 360]
	str	x1, [sp, 392]
	str	x3, [sp, 408]
	str	x0, [sp, 424]
	cmp	w11, 64
	bhi	.L868
	ldr	x0, [sp, 112]
	ldr	x1, [sp, 368]
	cmp	x1, x0
	bcs	.L869
	ldr	x4, [sp, 144]
	cmp	x4, x1
	beq	.L740
	lsr	w0, w11, 3
	lsr	w3, w11, 3
	sub	x0, x1, x0
	cmp	x4, x0
	bls	.L744
	sub	x0, x1, x4
	mov	w3, w0
	sub	x0, x1, w0, uxtw
.L744:
	ldr	x1, [x0]
	sub	w3, w11, w3, lsl 3
	str	x1, [sp, 352]
	str	w3, [sp, 360]
	str	x0, [sp, 368]
.L740:
	ldr	x1, [sp, 272]
	add	x7, x25, x2
	sub	x0, x7, x22
	add	x3, x2, x6
	add	x15, x1, x2
	add	x11, x25, x3
	cmp	x20, x15
	prfm	PLDL1KEEP, [x0]
	ccmp	x28, x11, 0, cs
	bcc	.L745
	ldr	q0, [x1]
	str	q0, [x25]
	cmp	x2, 16
	bhi	.L746
.L750:
	sub	x1, x7, x26
	str	x15, [sp, 272]
	cmp	x22, x1
	bls	.L748
	ldr	x1, [sp, 128]
	sub	x1, x7, x1
	cmp	x22, x1
	bhi	.L658
	ldr	x4, [sp, 136]
	sub	x1, x0, x26
	add	x1, x4, x1
	add	x2, x1, x6
	cmp	x4, x2
	bcs	.L870
	sub	x2, x26, x0
	mov	x0, x7
	sub	x6, x6, x2
	add	x7, x7, x2
	stp	x7, x6, [sp, 152]
	stp	x11, x3, [sp, 168]
	bl	memmove
	mov	x0, x26
	ldp	x7, x6, [sp, 152]
	ldp	x11, x3, [sp, 168]
.L748:
	cmp	x22, 15
	bls	.L754
	ldr	q0, [x0], 16
	str	q0, [x7], 16
	cmp	x6, 16
	ble	.L749
	.p2align 3,,7
.L757:
	ldr	q0, [x0]
	add	x7, x7, 32
	add	x0, x0, 32
	str	q0, [x7, -32]
	ldr	q0, [x0, -16]
	str	q0, [x7, -16]
	cmp	x11, x7
	bhi	.L757
.L749:
	cmn	x3, #120
	bhi	.L655
	add	x25, x25, x3
	subs	w19, w19, #1
	bne	.L763
	ldp	x19, x26, [sp, 200]
	mov	x0, x25
	ldp	x28, x18, [sp, 216]
	mov	x25, x20
	ldr	x23, [sp, 144]
	mov	x20, x0
.L706:
	ldr	x0, [sp, 368]
	cmp	x23, x0
	bne	.L658
	ldr	w0, [sp, 360]
	cmp	w0, 64
	bne	.L658
	add	x0, sp, 640
	ldr	x8, [sp, 272]
	ldr	q0, [x0, -200]
	ldr	x0, [sp, 120]
	xtn	v0.2s, v0.2d
	sub	x7, x0, x20
	ldr	x0, [sp, 456]
	str	d0, [x18, 60]
	str	w0, [x28, 10308]
	b	.L657
	.p2align 2,,3
.L670:
	ldr	x30, [sp, 352]
	add	w17, w17, w22
	ldr	w18, [sp, 360]
	ldr	x2, [sp, 440]
	lsl	x22, x30, x18
	add	w18, w18, 1
	add	x17, x17, x22, lsr 63
	str	w18, [sp, 360]
	cmp	x17, 3
	beq	.L871
	add	x5, sp, 464
	add	x18, x5, x17, lsl 3
	ldr	x22, [x18, -24]
	cmp	x22, 0
	cset	x18, eq
	sub	x22, x22, x18
	cmp	x17, 1
	beq	.L669
.L672:
	ldr	x17, [sp, 448]
	str	x17, [sp, 456]
	b	.L669
.L862:
	ldrb	w2, [x0]
	adrp	x1, .LANCHOR0
	strb	w2, [x4]
	add	x1, x1, :lo12:.LANCHOR0
	add	x2, x1, 32
	ldrb	w8, [x0, 1]
	strb	w8, [x4, 1]
	ldr	w2, [x2, x22, lsl 2]
	ldrb	w8, [x0, 2]
	strb	w8, [x4, 2]
	add	x9, x0, x2
	ldrsw	x8, [x1, x22, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x4, 3]
	ldr	w1, [x0, x2]
	sub	x0, x9, x8
	str	w1, [x4, 4]
	b	.L701
.L863:
	ldr	x0, [sp, 120]
	str	x5, [sp, 136]
	mov	x3, -70
	sub	x0, x0, x20
	cmp	x2, x0
	bhi	.L655
	mov	x0, x20
	sub	x9, x9, x2
	add	x20, x20, x2
	bl	ZSTD_safecopyDstBeforeSrc
	ldp	x6, x5, [sp, 128]
	b	.L708
.L866:
	ldr	w1, [sp, 360]
	cmp	w1, 64
	bhi	.L872
	ldr	x0, [sp, 112]
	ldr	x15, [sp, 368]
	cmp	x15, x0
	bcs	.L873
	ldr	x4, [sp, 144]
	cmp	x4, x15
	beq	.L734
	lsr	w0, w1, 3
	lsr	w17, w1, 3
	sub	x0, x15, x0
	cmp	x4, x0
	bls	.L737
	sub	x0, x15, x4
	mov	w17, w0
	sub	x0, x15, w0, uxtw
.L737:
	ldr	x15, [x0]
	sub	w17, w1, w17, lsl 3
	str	x15, [sp, 352]
	str	w17, [sp, 360]
	str	x0, [sp, 368]
	cbz	w11, .L738
	.p2align 3,,7
.L867:
	ldr	x0, [sp, 352]
	neg	w1, w11
	ldr	w15, [sp, 360]
	add	w11, w11, w15
	str	w11, [sp, 360]
	lsl	x0, x0, x15
	lsr	x0, x0, x1
	add	x2, x2, x0
	b	.L738
.L871:
	subs	x22, x2, #1
	cset	x17, eq
	sub	x22, x22, x17
	b	.L672
	.p2align 2,,3
.L727:
	cmp	w18, 0
	cset	w17, eq
	cmp	w1, 1
	beq	.L729
	cmp	w18, 0
	add	x17, x17, 10
	ldr	x4, [sp, 184]
	cset	x1, ne
	add	x1, x1, 10
	ldr	x22, [x4, x17, lsl 3]
	ldr	x1, [x4, x1, lsl 3]
	stp	x22, x1, [sp, 440]
	cbz	w15, .L733
.L865:
	ldr	x18, [sp, 352]
	neg	w17, w15
	ldr	w1, [sp, 360]
	add	w15, w15, w1
	str	w15, [sp, 360]
	lsl	x1, x18, x1
	lsr	x1, x1, x17
	add	x6, x6, x1
	b	.L733
.L847:
	ldp	x26, x28, [sp, 192]
	mov	x25, x21
	ldr	x18, [sp, 208]
	mov	x19, x12
	mov	x23, x10
	b	.L706
.L870:
	mov	x2, x6
	mov	x0, x7
	str	x3, [sp, 152]
	bl	memmove
	ldr	x3, [sp, 152]
	b	.L749
.L745:
	add	x0, sp, 512
	stp	x2, x6, [sp, 328]
	add	x3, sp, 272
	ldr	x8, [sp, 192]
	str	x22, [sp, 344]
	ldp	x0, x1, [x0, -184]
	mov	x5, x26
	ldr	x6, [sp, 128]
	mov	x4, x20
	ldr	x7, [sp, 136]
	stp	x0, x1, [x8]
	mov	x2, x8
	ldr	x1, [sp, 120]
	str	x22, [x8, 16]
	mov	x0, x25
	bl	ZSTD_execSequenceEnd
	mov	x3, x0
	b	.L749
.L869:
	lsr	w0, w11, 3
	and	w11, w11, 7
	sub	x0, x1, x0
	str	x0, [sp, 368]
	str	w11, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L740
.L746:
	ldr	q0, [x1, 16]
	sub	x2, x2, #16
	str	q0, [x25, 16]
	cmp	x2, 16
	ble	.L750
	add	x1, x1, 32
	add	x2, x25, 32
	.p2align 3,,7
.L751:
	ldr	q0, [x1]
	add	x2, x2, 32
	add	x1, x1, 32
	str	q0, [x2, -32]
	ldr	q0, [x1, -16]
	str	q0, [x2, -16]
	cmp	x7, x2
	bhi	.L751
	b	.L750
.L861:
	lsr	w0, w2, 3
	and	w2, w2, 7
	sub	x0, x7, x0
	str	x0, [sp, 368]
	str	w2, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L675
.L754:
	cmp	x22, 7
	bhi	.L758
	ldrb	w2, [x0]
	adrp	x1, .LANCHOR0
	strb	w2, [x7]
	add	x1, x1, :lo12:.LANCHOR0
	add	x2, x1, 32
	ldrb	w15, [x0, 1]
	strb	w15, [x7, 1]
	ldr	w2, [x2, x22, lsl 2]
	ldrb	w15, [x0, 2]
	strb	w15, [x7, 2]
	add	x16, x0, x2
	ldrsw	x15, [x1, x22, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x7, 3]
	ldr	w1, [x0, x2]
	sub	x0, x16, x15
	str	w1, [x7, 4]
.L759:
	cmp	x6, 8
	bls	.L749
	sub	x1, x7, x0
	cmp	x1, 15
	bgt	.L760
	add	x0, x0, 8
	add	x7, x7, 8
	.p2align 3,,7
.L761:
	ldr	d0, [x0], 8
	str	d0, [x7], 8
	cmp	x11, x7
	bhi	.L761
	b	.L749
.L702:
	ldr	q0, [x0, 8]
	str	q0, [x4, 8]
	cmp	x6, 24
	ble	.L691
	add	x4, x4, 24
	add	x0, x0, 24
	.p2align 3,,7
.L704:
	ldr	q0, [x0]
	add	x4, x4, 32
	add	x0, x0, 32
	str	q0, [x4, -32]
	ldr	q0, [x0, -16]
	str	q0, [x4, -16]
	cmp	x7, x4
	bhi	.L704
	b	.L691
.L868:
	ldr	x0, [sp, 232]
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L740
.L860:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L675
.L729:
	ldr	x30, [sp, 352]
	add	w17, w17, w22
	ldr	w18, [sp, 360]
	ldr	x1, [sp, 440]
	lsl	x22, x30, x18
	add	w18, w18, 1
	add	x17, x17, x22, lsr 63
	str	w18, [sp, 360]
	cmp	x17, 3
	beq	.L874
	add	x4, sp, 464
	add	x18, x4, x17, lsl 3
	ldr	x22, [x18, -24]
	cmp	x22, 0
	cset	x18, eq
	sub	x22, x22, x18
	cmp	x17, 1
	beq	.L728
.L731:
	ldr	x17, [sp, 448]
	str	x17, [sp, 456]
	b	.L728
.L758:
	ldr	d0, [x0]
	str	d0, [x7]
	b	.L759
.L864:
	mov	x2, x5
	mov	x0, x4
	stp	x6, x10, [sp, 128]
	stp	x12, x13, [sp, 144]
	stp	x14, x3, [sp, 160]
	str	x18, [sp, 176]
	bl	memmove
	ldp	x6, x10, [sp, 128]
	ldp	x12, x13, [sp, 144]
	ldp	x14, x3, [sp, 160]
	ldr	x18, [sp, 176]
	b	.L713
.L873:
	lsr	w0, w1, 3
	and	w1, w1, 7
	sub	x0, x15, x0
	str	x0, [sp, 368]
	str	w1, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L734
.L709:
	stp	x9, x5, [sp, 304]
	add	x2, sp, 240
	add	x3, sp, 272
	ldp	x0, x1, [sp, 304]
	stp	x0, x1, [sp, 240]
	mov	x7, x24
	ldr	x1, [sp, 120]
	stp	x6, x10, [sp, 128]
	mov	x4, x25
	stp	x12, x13, [sp, 144]
	mov	x5, x27
	mov	x0, x20
	stp	x14, x18, [sp, 160]
	str	x22, [sp, 320]
	str	x22, [x2, 16]
	bl	ZSTD_execSequenceEnd
	mov	x3, x0
	ldp	x6, x10, [sp, 128]
	ldp	x12, x13, [sp, 144]
	ldp	x14, x18, [sp, 160]
	b	.L713
.L874:
	subs	x22, x1, #1
	cset	x17, eq
	sub	x22, x22, x17
	b	.L731
.L710:
	ldr	q0, [x0, 180]
	sub	x9, x9, #16
	str	q0, [x20, 16]
	cmp	x9, 16
	ble	.L714
	mov	x7, 30404
	add	x0, x20, 32
	add	x7, x19, x7
.L715:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x4, x0
	bhi	.L715
	b	.L714
.L760:
	ldr	q0, [x0, 8]
	str	q0, [x7, 8]
	cmp	x6, 24
	ble	.L749
	add	x7, x7, 24
	add	x0, x0, 24
.L762:
	ldr	q0, [x0]
	add	x7, x7, 32
	add	x0, x0, 32
	str	q0, [x7, -32]
	ldr	q0, [x0, -16]
	str	q0, [x7, -16]
	cmp	x11, x7
	bhi	.L762
	b	.L749
.L718:
	cmp	x22, 7
	bhi	.L722
	ldrb	w1, [x2]
	adrp	x0, .LANCHOR0
	strb	w1, [x4]
	add	x0, x0, :lo12:.LANCHOR0
	add	x1, x0, 32
	ldrb	w7, [x2, 1]
	strb	w7, [x4, 1]
	ldr	w1, [x1, x22, lsl 2]
	ldrb	w7, [x2, 2]
	strb	w7, [x4, 2]
	add	x8, x2, x1
	ldrsw	x7, [x0, x22, lsl 2]
	ldrb	w0, [x2, 3]
	strb	w0, [x4, 3]
	ldr	w0, [x2, x1]
	sub	x2, x8, x7
	str	w0, [x4, 4]
.L723:
	cmp	x5, 8
	bls	.L713
	sub	x0, x4, x2
	cmp	x0, 15
	bgt	.L724
	add	x1, x2, 8
	add	x0, x4, 8
.L725:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x11, x0
	bhi	.L725
	b	.L713
.L872:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L734
.L722:
	ldr	d0, [x2]
	str	d0, [x4]
	b	.L723
.L724:
	ldr	q0, [x2, 8]
	str	q0, [x4, 8]
	cmp	x5, 24
	ble	.L713
	add	x0, x4, 24
	add	x1, x2, 24
.L726:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x11, x0
	bhi	.L726
	b	.L713
	.cfi_endproc
.LFE4573:
	.size	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0, .-ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	.align	2
	.p2align 4,,11
	.type	ZSTD_decompressSequences_default.constprop.0, %function
ZSTD_decompressSequences_default.constprop.0:
.LFB4574:
	.cfi_startproc
	stp	x29, x30, [sp, -432]!
	.cfi_def_cfa_offset 432
	.cfi_offset 29, -432
	.cfi_offset 30, -424
	mov	x10, x0
	mov	w8, w5
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -416
	.cfi_offset 20, -408
	add	x20, x0, 16384
	stp	x21, x22, [sp, 32]
	ldr	w0, [x20, 13984]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -400
	.cfi_offset 22, -392
	.cfi_offset 23, -384
	.cfi_offset 24, -376
	mov	x24, x3
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -368
	.cfi_offset 26, -360
	mov	x26, x1
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -352
	.cfi_offset 28, -344
	cbnz	w0, .L876
	cmp	x2, 0
	add	x2, x1, x2
	csel	x21, x2, x1, gt
.L877:
	ldr	x0, [x10, 29904]
	str	x0, [sp, 96]
	ldr	x0, [x10, 29912]
	str	x0, [sp, 104]
	ldr	x25, [x10, 30120]
	str	x25, [sp, 288]
	ldr	x28, [x10, 30152]
	ldr	x5, [x10, 29896]
	add	x28, x25, x28
	cbz	w8, .L1076
	mov	x0, 26624
	add	x11, x10, x0
	mov	w0, 1
	str	w0, [x20, 13620]
	ldr	w0, [x20, 10308]
	ldr	d0, [x11, 60]
	str	x0, [sp, 424]
	add	x0, sp, 512
	uxtl	v0.2d, v0.2s
	str	q0, [x0, -104]
	cbz	x4, .L879
	add	x0, x24, x4
	add	x3, x24, 8
	stp	x24, x3, [sp, 344]
	ldrb	w0, [x0, -1]
	cmp	x4, 7
	bls	.L880
	sub	x1, x4, #8
	add	x2, x24, x1
	str	x2, [sp, 336]
	ldr	x1, [x24, x1]
	str	x1, [sp, 320]
	cbz	w0, .L879
	clz	w0, w0
	sub	w0, w0, #23
	str	w0, [sp, 328]
	cmn	x4, #120
	bls	.L881
	.p2align 3,,7
.L879:
	mov	x23, -20
.L875:
	ldp	x19, x20, [sp, 16]
	mov	x0, x23
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 432
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L876:
	.cfi_restore_state
	ldr	x21, [x10, 30352]
	b	.L877
	.p2align 2,,3
.L1076:
	mov	x22, x26
.L878:
	sub	x2, x28, x25
	sub	x21, x21, x22
	mov	x23, -70
	cmp	x2, x21
	bhi	.L875
	cbz	x22, .L1074
	mov	x0, x22
	mov	x1, x25
	add	x22, x22, x2
	bl	memcpy
.L1074:
	sub	x23, x22, x26
	ldp	x19, x20, [sp, 16]
	mov	x0, x23
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 432
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L880:
	.cfi_restore_state
	ldrb	w1, [x24]
	str	x1, [sp, 320]
	str	x24, [sp, 336]
	cmp	x4, 5
	beq	.L882
	bhi	.L883
	cmp	x4, 3
	beq	.L884
	cmp	x4, 4
	bne	.L1184
.L885:
	ldrb	w2, [x24, 3]
	add	x1, x1, x2, lsl 24
.L884:
	ldrb	w2, [x24, 2]
	add	x1, x1, x2, lsl 16
	ldrb	w2, [x24, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 320]
.L887:
	cbz	w0, .L879
	mov	w1, 8
	sub	w1, w1, w4
	clz	w0, w0
	add	w0, w0, w1, lsl 3
	sub	w0, w0, #23
	str	w0, [sp, 328]
.L881:
	ldr	x2, [x10]
	add	x1, sp, 320
	add	x0, sp, 360
	sub	x12, x21, #32
	stp	x5, x3, [sp, 112]
	str	x12, [sp, 128]
	bl	ZSTD_initFseState
	ldr	x2, [x10, 16]
	add	x0, sp, 376
	bl	ZSTD_initFseState
	add	x0, sp, 392
	ldr	x2, [x10, 8]
	bl	ZSTD_initFseState
	ldp	x5, x3, [sp, 112]
	cmp	w8, 12
	ble	.L889
	ldp	x15, x9, [sp, 360]
	adrp	x0, .LANCHOR0
	ldp	x18, x10, [sp, 376]
	add	x27, x0, :lo12:.LANCHOR0
	ldp	x14, x6, [sp, 392]
	fmov	x4, d0
	ldr	w19, [sp, 328]
	add	x27, x27, 64
	mov	x22, x26
	mov	x7, x12
	mov	x23, x9
	stp	x6, x21, [sp, 112]
	mov	x21, x15
	stp	x26, x11, [sp, 136]
	mov	x11, x25
	str	x20, [sp, 152]
	mov	x20, x18
.L1034:
	ldr	x1, [x23, x21, lsl 3]
	ldr	x9, [x10, x20, lsl 3]
	ldr	x15, [x6, x14, lsl 3]
	ubfx	w17, w1, 16, 8
	ubfx	w14, w9, 16, 8
	lsr	x25, x1, 32
	add	w2, w14, w17
	mov	x16, x25
	ubfx	w18, w15, 16, 8
	lsr	x13, x15, 32
	add	w2, w18, w2
	lsr	x20, x9, 32
	and	w2, w2, 255
	lsr	w12, w1, 24
	lsr	w0, w15, 24
	lsr	w21, w9, 24
	cmp	w14, 1
	bhi	.L1185
	cbnz	w14, .L892
	cbz	x25, .L1186
	cbnz	w18, .L1187
.L896:
	cbnz	w17, .L1188
.L897:
	cmp	w2, 30
	bhi	.L898
.L1182:
	ldr	x20, [sp, 320]
.L899:
	add	w19, w12, w19
	uxtw	x2, w21
	uxtw	x14, w0
	add	w0, w0, w19
	ldr	w12, [x27, x12, lsl 2]
	add	w21, w21, w0
	neg	w19, w19
	ldr	w14, [x27, x14, lsl 2]
	neg	w0, w0
	ldr	w17, [x27, x2, lsl 2]
	neg	w2, w21
	lsr	x19, x20, x19
	and	x19, x19, x12
	lsr	x0, x20, x0
	and	x0, x0, x14
	lsr	x2, x20, x2
	and	x2, x2, x17
	add	x25, x19, w1, uxth
	add	x15, x0, w15, uxth
	add	x14, x2, w9, uxth
	add	x12, x11, x16
	add	x9, x16, x13
	str	w21, [sp, 328]
	str	x25, [sp, 360]
	add	x26, x22, x9
	str	x14, [sp, 376]
	cmp	x28, x12
	str	x15, [sp, 392]
	add	x19, x22, x16
	ccmp	x26, x7, 2, cs
	sub	x0, x19, x4
	bhi	.L941
	ldr	q0, [x11]
	str	q0, [x22]
	cmp	x16, 16
	bhi	.L906
.L909:
	sub	x1, x19, x5
	str	x12, [sp, 288]
	cmp	x4, x1
	bhi	.L1189
.L908:
	cmp	x4, 15
	bls	.L913
	ldr	q0, [x0], 16
	str	q0, [x19], 16
	cmp	x13, 16
	ble	.L912
	.p2align 3,,7
.L915:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x26, x19
	bhi	.L915
.L912:
	cmn	x9, #120
	bhi	.L1178
	cmp	w21, 64
	bhi	.L1190
	ldr	x1, [sp, 336]
	cmp	x1, x3
	bcs	.L1191
	cmp	x24, x1
	beq	.L923
	lsr	w0, w21, 3
	lsr	w2, w21, 3
	sub	x0, x1, x0
	cmp	x24, x0
	bls	.L926
	sub	x0, x1, x24
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L926:
	ldr	x20, [x0]
	sub	w21, w21, w2, lsl 3
	str	x20, [sp, 320]
	str	w21, [sp, 328]
	str	x0, [sp, 336]
.L923:
	ldr	x1, [x23, x25, lsl 3]
	ldr	x15, [x6, x15, lsl 3]
	ldr	x14, [x10, x14, lsl 3]
	ubfx	w17, w1, 16, 8
	ubfx	w18, w15, 16, 8
	lsr	x25, x1, 32
	add	w2, w17, w18
	mov	x16, x25
	ubfx	w11, w14, 16, 8
	lsr	x13, x15, 32
	add	w2, w11, w2
	lsr	x19, x14, 32
	and	w2, w2, 255
	lsr	w9, w1, 24
	lsr	w0, w15, 24
	lsr	w22, w14, 24
	cmp	w11, 1
	bhi	.L1192
	cbnz	w11, .L929
	cbz	x25, .L1193
	cbnz	w18, .L1194
.L933:
	cbnz	w17, .L1195
.L934:
	cmp	w2, 30
	bhi	.L1196
.L936:
	add	w21, w9, w21
	uxtw	x11, w0
	uxtw	x2, w22
	add	w0, w0, w21
	add	w22, w22, w0
	ldr	w9, [x27, x9, lsl 2]
	ldr	w11, [x27, x11, lsl 2]
	neg	w21, w21
	ldr	w2, [x27, x2, lsl 2]
	neg	w0, w0
	neg	w17, w22
	lsr	x21, x20, x21
	lsr	x0, x20, x0
	and	x21, x21, x9
	and	x0, x0, x11
	add	x9, x16, x13
	lsr	x17, x20, x17
	and	x17, x17, x2
	add	x15, x0, w15, uxth
	add	x21, x21, w1, uxth
	add	x14, x17, w14, uxth
	add	x25, x26, x9
	str	w22, [sp, 328]
	cmp	x25, x7
	str	x21, [sp, 360]
	add	x11, x12, x16
	str	x14, [sp, 376]
	add	x19, x26, x16
	str	x15, [sp, 392]
	ccmp	x28, x11, 0, ls
	sub	x0, x19, x4
	bcc	.L941
	ldr	q0, [x12]
	str	q0, [x26]
	cmp	x16, 16
	bhi	.L942
.L945:
	sub	x1, x19, x5
	str	x11, [sp, 288]
	cmp	x4, x1
	bhi	.L1197
.L944:
	cmp	x4, 15
	bls	.L949
	ldr	q0, [x0], 16
	str	q0, [x19], 16
	cmp	x13, 16
	ble	.L948
	.p2align 3,,7
.L951:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x25, x19
	bhi	.L951
.L948:
	cmn	x9, #120
	bhi	.L1178
	cmp	w22, 64
	bhi	.L1198
	ldr	x1, [sp, 336]
	cmp	x1, x3
	bcs	.L1199
	cmp	x24, x1
	beq	.L959
	lsr	w0, w22, 3
	lsr	w2, w22, 3
	sub	x0, x1, x0
	cmp	x24, x0
	bls	.L962
	sub	x0, x1, x24
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L962:
	ldr	x20, [x0]
	sub	w22, w22, w2, lsl 3
	str	x20, [sp, 320]
	str	w22, [sp, 328]
	str	x0, [sp, 336]
.L959:
	ldr	x1, [x23, x21, lsl 3]
	ldr	x15, [x6, x15, lsl 3]
	ldr	x14, [x10, x14, lsl 3]
	ubfx	w17, w1, 16, 8
	ubfx	w18, w15, 16, 8
	lsr	x26, x1, 32
	add	w2, w17, w18
	mov	x16, x26
	ubfx	w9, w14, 16, 8
	lsr	x13, x15, 32
	add	w2, w9, w2
	lsr	x19, x14, 32
	ldr	x12, [sp, 408]
	and	w2, w2, 255
	lsr	w4, w1, 24
	lsr	w0, w15, 24
	lsr	w21, w14, 24
	cmp	w9, 1
	bhi	.L1200
	cbnz	w9, .L965
	cbz	x26, .L1201
	cbnz	w18, .L1202
.L969:
	cbnz	w17, .L1203
.L970:
	cmp	w2, 30
	bhi	.L1204
.L972:
	add	w22, w4, w22
	uxtw	x9, w0
	uxtw	x2, w21
	add	w0, w0, w22
	add	w21, w21, w0
	ldr	w4, [x27, x4, lsl 2]
	ldr	w9, [x27, x9, lsl 2]
	neg	w22, w22
	ldr	w2, [x27, x2, lsl 2]
	neg	w0, w0
	neg	w17, w21
	lsr	x22, x20, x22
	lsr	x0, x20, x0
	and	x22, x22, x4
	and	x0, x0, x9
	lsr	x17, x20, x17
	add	x9, x16, x13
	and	x17, x17, x2
	add	x15, x0, w15, uxth
	add	x22, x22, w1, uxth
	add	x14, x17, w14, uxth
	add	x26, x25, x9
	str	w21, [sp, 328]
	cmp	x26, x7
	str	x22, [sp, 360]
	add	x4, x11, x16
	str	x14, [sp, 376]
	add	x19, x25, x16
	str	x15, [sp, 392]
	ccmp	x28, x4, 0, ls
	sub	x0, x19, x12
	bcc	.L941
	ldr	q0, [x11]
	str	q0, [x25]
	cmp	x16, 16
	bhi	.L977
.L980:
	sub	x1, x19, x5
	str	x4, [sp, 288]
	cmp	x12, x1
	bhi	.L1205
.L979:
	cmp	x12, 15
	bls	.L984
	ldr	q0, [x0], 16
	str	q0, [x19], 16
	cmp	x13, 16
	ble	.L983
	.p2align 3,,7
.L986:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x26, x19
	bhi	.L986
.L983:
	cmn	x9, #120
	bhi	.L1178
	cmp	w21, 64
	bhi	.L1206
	ldr	x1, [sp, 336]
	cmp	x1, x3
	bcs	.L1207
	cmp	x24, x1
	beq	.L994
	lsr	w0, w21, 3
	lsr	w2, w21, 3
	sub	x0, x1, x0
	cmp	x24, x0
	bls	.L997
	sub	x0, x1, x24
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L997:
	ldr	x20, [x0]
	sub	w21, w21, w2, lsl 3
	str	x20, [sp, 320]
	str	w21, [sp, 328]
	str	x0, [sp, 336]
.L994:
	ldr	x1, [x23, x22, lsl 3]
	ldr	x15, [x6, x15, lsl 3]
	ldr	x11, [x10, x14, lsl 3]
	ubfx	w16, w1, 16, 8
	ubfx	w17, w15, 16, 8
	lsr	x22, x1, 32
	add	w2, w16, w17
	mov	x13, x22
	ubfx	w14, w11, 16, 8
	lsr	x12, x15, 32
	add	w2, w14, w2
	lsr	x18, x11, 32
	ldr	x25, [sp, 408]
	and	w2, w2, 255
	lsr	w9, w1, 24
	lsr	w0, w15, 24
	lsr	w19, w11, 24
	cmp	w14, 1
	bhi	.L1208
	cbnz	w14, .L1000
	cbz	x22, .L1209
	cbnz	w17, .L1210
.L1004:
	cbnz	w16, .L1211
.L1005:
	cmp	w2, 30
	bhi	.L1212
.L1007:
	add	w21, w9, w21
	uxtw	x2, w0
	uxtw	x14, w19
	add	w0, w0, w21
	add	w19, w19, w0
	ldr	w9, [x27, x9, lsl 2]
	ldr	w2, [x27, x2, lsl 2]
	neg	w21, w21
	ldr	w14, [x27, x14, lsl 2]
	neg	w0, w0
	neg	w16, w19
	lsr	x21, x20, x21
	lsr	x0, x20, x0
	and	x21, x21, x9
	and	x0, x0, x2
	add	x9, x13, x12
	lsr	x20, x20, x16
	and	x20, x20, x14
	add	x20, x20, w11, uxth
	add	x14, x0, w15, uxth
	add	x21, x21, w1, uxth
	add	x22, x26, x9
	str	w19, [sp, 328]
	cmp	x22, x7
	str	x21, [sp, 360]
	add	x11, x4, x13
	str	x20, [sp, 376]
	add	x15, x26, x13
	str	x14, [sp, 392]
	ccmp	x28, x11, 0, ls
	sub	x0, x15, x25
	bcc	.L941
	ldr	q0, [x4]
	str	q0, [x26]
	cmp	x13, 16
	bhi	.L1012
.L1015:
	sub	x1, x15, x5
	str	x11, [sp, 288]
	cmp	x25, x1
	bhi	.L1213
.L1014:
	cmp	x25, 15
	bls	.L1019
	ldr	q0, [x0], 16
	str	q0, [x15], 16
	cmp	x12, 16
	ble	.L1018
	.p2align 3,,7
.L1021:
	ldr	q0, [x0]
	add	x15, x15, 32
	add	x0, x0, 32
	str	q0, [x15, -32]
	ldr	q0, [x0, -16]
	str	q0, [x15, -16]
	cmp	x22, x15
	bhi	.L1021
.L1018:
	cmn	x9, #120
	bhi	.L1178
	cmp	w19, 64
	bhi	.L1214
	ldr	x1, [sp, 336]
	cmp	x1, x3
	bcs	.L1215
	cmp	x24, x1
	beq	.L1029
	lsr	w0, w19, 3
	lsr	w2, w19, 3
	sub	x0, x1, x0
	cmp	x24, x0
	bls	.L1032
	sub	x0, x1, x24
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L1032:
	ldr	x1, [x0]
	sub	w19, w19, w2, lsl 3
	str	x1, [sp, 320]
	str	w19, [sp, 328]
	str	x0, [sp, 336]
.L1029:
	sub	w8, w8, #4
	cmp	w8, 12
	ble	.L1179
	ldr	x4, [sp, 408]
	b	.L1034
	.p2align 2,,3
.L883:
	cmp	x4, 6
	beq	.L888
	ldrb	w2, [x24, 6]
	add	x1, x1, x2, lsl 48
.L888:
	ldrb	w2, [x24, 5]
	add	x1, x1, x2, lsl 40
.L882:
	ldrb	w2, [x24, 4]
	add	x1, x1, x2, lsl 32
	b	.L885
	.p2align 2,,3
.L1184:
	cmp	x4, 2
	bne	.L887
	ldrb	w2, [x24, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 320]
	b	.L887
	.p2align 2,,3
.L1187:
	ldr	x14, [sp, 320]
	neg	w20, w18
	lsl	x14, x14, x19
	add	w19, w19, w18
	str	w19, [sp, 328]
	lsr	x14, x14, x20
	add	x13, x13, x14
	cbz	w17, .L897
.L1188:
	ldr	x14, [sp, 320]
	neg	w18, w17
	lsl	x14, x14, x19
	add	w19, w19, w17
	lsr	x14, x14, x18
	add	x16, x16, x14
	str	w19, [sp, 328]
	b	.L897
	.p2align 2,,3
.L1194:
	lsl	x11, x20, x21
	neg	w19, w18
	add	w21, w21, w18
	str	w21, [sp, 328]
	lsr	x11, x11, x19
	add	x13, x13, x11
	cbz	w17, .L934
.L1195:
	neg	w18, w17
	lsl	x11, x20, x21
	add	w21, w21, w17
	str	w21, [sp, 328]
	lsr	x11, x11, x18
	add	x16, x16, x11
	b	.L934
	.p2align 2,,3
.L1202:
	lsl	x9, x20, x22
	neg	w19, w18
	add	w22, w22, w18
	str	w22, [sp, 328]
	lsr	x9, x9, x19
	add	x13, x13, x9
	cbz	w17, .L970
.L1203:
	neg	w18, w17
	lsl	x9, x20, x22
	add	w22, w22, w17
	str	w22, [sp, 328]
	lsr	x9, x9, x18
	add	x16, x16, x9
	b	.L970
	.p2align 2,,3
.L1210:
	lsl	x14, x20, x21
	neg	w18, w17
	add	w21, w21, w17
	str	w21, [sp, 328]
	lsr	x14, x14, x18
	add	x12, x12, x14
	cbz	w16, .L1005
.L1211:
	neg	w17, w16
	lsl	x14, x20, x21
	add	w21, w21, w16
	str	w21, [sp, 328]
	lsr	x14, x14, x17
	add	x13, x13, x14
	b	.L1005
	.p2align 2,,3
.L898:
	cmp	w19, 64
	bhi	.L1216
	ldr	x14, [sp, 336]
	cmp	x14, x3
	bcs	.L1217
	cmp	x24, x14
	beq	.L1182
	lsr	w2, w19, 3
	lsr	w17, w19, 3
	sub	x2, x14, x2
	cmp	x24, x2
	bls	.L903
	sub	x2, x14, x24
	mov	w17, w2
	sub	x2, x14, w2, uxtw
.L903:
	ldr	x20, [x2]
	sub	w19, w19, w17, lsl 3
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L899
	.p2align 2,,3
.L1186:
	ldr	x14, [sp, 416]
	stp	x14, x4, [sp, 408]
	mov	x4, x14
	cbz	w18, .L896
	b	.L1187
	.p2align 2,,3
.L941:
	mov	x23, -70
	mov	x0, x23
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 432
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1191:
	.cfi_restore_state
	lsr	w0, w21, 3
	and	w21, w21, 7
	sub	x1, x1, x0
	str	w21, [sp, 328]
	str	x1, [sp, 336]
	ldr	x20, [x1]
	str	x20, [sp, 320]
	b	.L923
	.p2align 2,,3
.L1199:
	lsr	w0, w22, 3
	and	w22, w22, 7
	sub	x1, x1, x0
	str	w22, [sp, 328]
	str	x1, [sp, 336]
	ldr	x20, [x1]
	str	x20, [sp, 320]
	b	.L959
	.p2align 2,,3
.L1207:
	lsr	w0, w21, 3
	and	w21, w21, 7
	sub	x1, x1, x0
	str	w21, [sp, 328]
	str	x1, [sp, 336]
	ldr	x20, [x1]
	str	x20, [sp, 320]
	b	.L994
	.p2align 2,,3
.L1215:
	lsr	w0, w19, 3
	and	w19, w19, 7
	sub	x1, x1, x0
	str	w19, [sp, 328]
	str	x1, [sp, 336]
	ldr	x0, [x1]
	str	x0, [sp, 320]
	b	.L1029
	.p2align 2,,3
.L1185:
	ldr	x25, [sp, 320]
	neg	w30, w14
	ldr	x26, [sp, 416]
	str	x26, [sp, 424]
	lsl	x25, x25, x19
	add	w19, w19, w14
	lsr	x25, x25, x30
	add	x14, x20, x25
	str	w19, [sp, 328]
	stp	x14, x4, [sp, 408]
	mov	x4, x14
	cbz	w18, .L896
	b	.L1187
	.p2align 2,,3
.L892:
	ldr	x26, [sp, 320]
	cmp	w25, 0
	cinc	w14, w20, eq
	uxtw	x14, w14
	lsl	x20, x26, x19
	add	w19, w19, 1
	add	x14, x14, x20, lsr 63
	str	w19, [sp, 328]
	sub	x20, x4, #1
	cmp	x14, 3
	beq	.L894
	add	x20, sp, 432
	add	x20, x20, x14, lsl 3
	ldr	x20, [x20, -24]
	cmp	x14, 1
	bne	.L894
.L895:
	stp	x20, x4, [sp, 408]
	mov	x4, x20
	cbz	w18, .L896
	b	.L1187
	.p2align 2,,3
.L1192:
	ldr	x25, [sp, 416]
	neg	w30, w11
	stp	x4, x25, [sp, 416]
	lsl	x25, x20, x21
	lsr	x25, x25, x30
	add	w21, w21, w11
	add	x25, x19, x25
	str	w21, [sp, 328]
	mov	x4, x25
	str	x25, [sp, 408]
	cbz	w18, .L933
	b	.L1194
	.p2align 2,,3
.L1190:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 336]
	b	.L923
	.p2align 2,,3
.L1196:
	cmp	w21, 64
	bhi	.L1218
	ldr	x11, [sp, 336]
	cmp	x11, x3
	bcs	.L1219
	cmp	x24, x11
	beq	.L936
	lsr	w2, w21, 3
	lsr	w17, w21, 3
	sub	x2, x11, x2
	cmp	x24, x2
	bls	.L940
	sub	x2, x11, x24
	mov	w17, w2
	sub	x2, x11, w2, uxtw
.L940:
	ldr	x20, [x2]
	sub	w21, w21, w17, lsl 3
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L936
	.p2align 2,,3
.L929:
	cmp	w25, 0
	lsl	x25, x20, x21
	cinc	w11, w19, eq
	add	w21, w21, 1
	uxtw	x11, w11
	str	w21, [sp, 328]
	add	x11, x11, x25, lsr 63
	sub	x19, x4, #1
	cmp	x11, 3
	beq	.L931
	add	x19, sp, 432
	add	x19, x19, x11, lsl 3
	ldr	x19, [x19, -24]
	cmp	x11, 1
	bne	.L931
.L932:
	stp	x19, x4, [sp, 408]
	mov	x4, x19
	cbz	w18, .L933
	b	.L1194
	.p2align 2,,3
.L1198:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 336]
	b	.L959
	.p2align 2,,3
.L1189:
	ldr	x1, [sp, 96]
	sub	x1, x19, x1
	cmp	x4, x1
	bhi	.L879
	ldr	x11, [sp, 104]
	sub	x1, x0, x5
	add	x1, x11, x1
	add	x2, x1, x13
	cmp	x11, x2
	bcs	.L1220
	sub	x2, x5, x0
	mov	x0, x19
	sub	x13, x13, x2
	add	x19, x19, x2
	stp	x13, x5, [sp, 160]
	stp	x15, x14, [sp, 176]
	stp	x12, x4, [sp, 192]
	stp	x3, x6, [sp, 208]
	stp	x10, x7, [sp, 224]
	str	w8, [sp, 240]
	str	x9, [sp, 248]
	bl	memmove
	ldp	x13, x5, [sp, 160]
	ldp	x15, x14, [sp, 176]
	ldp	x12, x4, [sp, 192]
	ldp	x3, x6, [sp, 208]
	mov	x0, x5
	ldp	x10, x7, [sp, 224]
	ldr	x9, [sp, 248]
	ldr	w8, [sp, 240]
	b	.L908
	.p2align 2,,3
.L906:
	ldr	q0, [x11, 16]
	sub	x16, x16, #16
	str	q0, [x22, 16]
	cmp	x16, 16
	ble	.L909
	add	x22, x22, 32
	add	x11, x11, 32
	.p2align 3,,7
.L910:
	ldr	q0, [x11]
	add	x22, x22, 32
	add	x11, x11, 32
	str	q0, [x22, -32]
	ldr	q0, [x11, -16]
	str	q0, [x22, -16]
	cmp	x19, x22
	bhi	.L910
	b	.L909
	.p2align 2,,3
.L1200:
	ldr	x26, [sp, 416]
	neg	w30, w9
	stp	x12, x26, [sp, 416]
	lsl	x26, x20, x22
	lsr	x26, x26, x30
	add	w22, w22, w9
	add	x26, x19, x26
	str	w22, [sp, 328]
	mov	x12, x26
	str	x26, [sp, 408]
	cbz	w18, .L969
	b	.L1202
	.p2align 2,,3
.L1204:
	cmp	w22, 64
	bhi	.L1221
	ldr	x9, [sp, 336]
	cmp	x9, x3
	bcs	.L1222
	cmp	x24, x9
	beq	.L972
	lsr	w2, w22, 3
	lsr	w17, w22, 3
	sub	x2, x9, x2
	cmp	x24, x2
	bls	.L976
	sub	x2, x9, x24
	mov	w17, w2
	sub	x2, x9, w2, uxtw
.L976:
	ldr	x20, [x2]
	sub	w22, w22, w17, lsl 3
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L972
	.p2align 2,,3
.L913:
	cmp	x4, 7
	bls	.L1223
	ldr	d0, [x0]
	str	d0, [x19]
.L918:
	cmp	x13, 8
	bls	.L912
	sub	x1, x19, x0
	cmp	x1, 15
	bgt	.L919
	add	x19, x19, 8
	add	x0, x0, 8
	.p2align 3,,7
.L920:
	ldr	d0, [x0], 8
	str	d0, [x19], 8
	cmp	x26, x19
	bhi	.L920
	b	.L912
	.p2align 2,,3
.L1193:
	ldr	x11, [sp, 416]
	stp	x11, x4, [sp, 408]
	mov	x4, x11
	cbz	w18, .L933
	b	.L1194
	.p2align 2,,3
.L1201:
	ldr	x9, [sp, 416]
	stp	x9, x12, [sp, 408]
	mov	x12, x9
	cbz	w18, .L969
	b	.L1202
	.p2align 2,,3
.L1209:
	ldr	x14, [sp, 416]
	stp	x14, x25, [sp, 408]
	mov	x25, x14
	cbz	w17, .L1004
	b	.L1210
.L1223:
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x19]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w11, [x0, 1]
	strb	w11, [x19, 1]
	ldr	w2, [x2, x4, lsl 2]
	ldrb	w11, [x0, 2]
	strb	w11, [x19, 2]
	add	x16, x0, x2
	ldrsw	x11, [x1, x4, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x19, 3]
	ldr	w1, [x0, x2]
	sub	x0, x16, x11
	str	w1, [x19, 4]
	b	.L918
	.p2align 2,,3
.L894:
	ldr	x14, [sp, 416]
	str	x14, [sp, 424]
	b	.L895
	.p2align 2,,3
.L931:
	ldr	x11, [sp, 416]
	str	x11, [sp, 424]
	b	.L932
.L1217:
	lsr	w2, w19, 3
	and	w19, w19, 7
	sub	x2, x14, x2
	ldr	x20, [x2]
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L899
.L1219:
	lsr	w2, w21, 3
	and	w21, w21, 7
	sub	x2, x11, x2
	ldr	x20, [x2]
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L936
.L1221:
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	add	x2, x2, 192
	str	x2, [sp, 336]
	b	.L972
	.p2align 2,,3
.L1208:
	ldr	x22, [sp, 416]
	neg	w30, w14
	stp	x25, x22, [sp, 416]
	lsl	x22, x20, x21
	lsr	x22, x22, x30
	add	w21, w21, w14
	add	x22, x18, x22
	str	w21, [sp, 328]
	mov	x25, x22
	str	x22, [sp, 408]
	cbz	w17, .L1004
	b	.L1210
	.p2align 2,,3
.L965:
	cmp	w26, 0
	lsl	x26, x20, x22
	cinc	w9, w19, eq
	add	w22, w22, 1
	uxtw	x9, w9
	str	w22, [sp, 328]
	add	x9, x9, x26, lsr 63
	sub	x19, x12, #1
	cmp	x9, 3
	beq	.L967
	add	x19, sp, 432
	add	x19, x19, x9, lsl 3
	ldr	x19, [x19, -24]
	cmp	x9, 1
	bne	.L967
.L968:
	stp	x19, x12, [sp, 408]
	mov	x12, x19
	cbz	w18, .L969
	b	.L1202
	.p2align 2,,3
.L1197:
	ldr	x1, [sp, 96]
	sub	x1, x19, x1
	cmp	x4, x1
	bhi	.L879
	ldr	x12, [sp, 104]
	sub	x1, x0, x5
	add	x1, x12, x1
	add	x2, x1, x13
	cmp	x12, x2
	bcs	.L1224
	sub	x2, x5, x0
	mov	x0, x19
	sub	x13, x13, x2
	add	x19, x19, x2
	stp	x13, x5, [sp, 160]
	stp	x15, x14, [sp, 176]
	stp	x11, x4, [sp, 192]
	stp	x3, x6, [sp, 208]
	stp	x10, x7, [sp, 224]
	str	w8, [sp, 240]
	str	x9, [sp, 248]
	bl	memmove
	ldp	x13, x5, [sp, 160]
	ldp	x15, x14, [sp, 176]
	ldp	x11, x4, [sp, 192]
	ldp	x3, x6, [sp, 208]
	mov	x0, x5
	ldp	x10, x7, [sp, 224]
	ldr	x9, [sp, 248]
	ldr	w8, [sp, 240]
	b	.L944
	.p2align 2,,3
.L1212:
	cmp	w21, 64
	bhi	.L1225
	ldr	x14, [sp, 336]
	cmp	x14, x3
	bcs	.L1226
	cmp	x24, x14
	beq	.L1007
	lsr	w2, w21, 3
	lsr	w16, w21, 3
	sub	x2, x14, x2
	cmp	x24, x2
	bls	.L1011
	sub	x2, x14, x24
	mov	w16, w2
	sub	x2, x14, w2, uxtw
.L1011:
	ldr	x20, [x2]
	sub	w21, w21, w16, lsl 3
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L1007
	.p2align 2,,3
.L942:
	ldr	q0, [x12, 16]
	sub	x16, x16, #16
	str	q0, [x26, 16]
	cmp	x16, 16
	ble	.L945
	add	x26, x26, 32
	add	x12, x12, 32
	.p2align 3,,7
.L946:
	ldr	q0, [x12]
	add	x26, x26, 32
	add	x12, x12, 32
	str	q0, [x26, -32]
	ldr	q0, [x12, -16]
	str	q0, [x26, -16]
	cmp	x19, x26
	bhi	.L946
	b	.L945
	.p2align 2,,3
.L1206:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 336]
	b	.L994
	.p2align 2,,3
.L949:
	cmp	x4, 7
	bhi	.L953
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x19]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w12, [x0, 1]
	strb	w12, [x19, 1]
	ldr	w2, [x2, x4, lsl 2]
	ldrb	w12, [x0, 2]
	strb	w12, [x19, 2]
	add	x12, x0, x2
	ldrsw	x4, [x1, x4, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x19, 3]
	ldr	w1, [x0, x2]
	sub	x0, x12, x4
	str	w1, [x19, 4]
.L954:
	cmp	x13, 8
	bls	.L948
	sub	x1, x19, x0
	cmp	x1, 15
	bgt	.L955
	add	x19, x19, 8
	add	x0, x0, 8
	.p2align 3,,7
.L956:
	ldr	d0, [x0], 8
	str	d0, [x19], 8
	cmp	x25, x19
	bhi	.L956
	b	.L948
	.p2align 2,,3
.L1214:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 336]
	b	.L1029
	.p2align 2,,3
.L1000:
	cmp	w22, 0
	lsl	x22, x20, x21
	cinc	w14, w18, eq
	add	w21, w21, 1
	uxtw	x14, w14
	str	w21, [sp, 328]
	add	x14, x14, x22, lsr 63
	sub	x18, x25, #1
	cmp	x14, 3
	beq	.L1002
	add	x18, sp, 432
	add	x18, x18, x14, lsl 3
	ldr	x18, [x18, -24]
	cmp	x14, 1
	bne	.L1002
.L1003:
	stp	x18, x25, [sp, 408]
	mov	x25, x18
	cbz	w17, .L1004
	b	.L1210
	.p2align 2,,3
.L1205:
	ldr	x1, [sp, 96]
	sub	x1, x19, x1
	cmp	x12, x1
	bhi	.L879
	ldr	x11, [sp, 104]
	sub	x1, x0, x5
	add	x1, x11, x1
	add	x2, x1, x13
	cmp	x11, x2
	bcs	.L1227
	sub	x2, x5, x0
	mov	x0, x19
	sub	x13, x13, x2
	add	x19, x19, x2
	stp	x13, x5, [sp, 160]
	stp	x15, x14, [sp, 176]
	stp	x12, x4, [sp, 192]
	stp	x3, x6, [sp, 208]
	stp	x10, x7, [sp, 224]
	str	w8, [sp, 240]
	str	x9, [sp, 248]
	bl	memmove
	ldp	x13, x5, [sp, 160]
	ldp	x15, x14, [sp, 176]
	ldp	x12, x4, [sp, 192]
	ldp	x3, x6, [sp, 208]
	mov	x0, x5
	ldp	x10, x7, [sp, 224]
	ldr	x9, [sp, 248]
	ldr	w8, [sp, 240]
	b	.L979
	.p2align 2,,3
.L977:
	ldr	q0, [x11, 16]
	sub	x16, x16, #16
	str	q0, [x25, 16]
	cmp	x16, 16
	ble	.L980
	add	x25, x25, 32
	add	x11, x11, 32
	.p2align 3,,7
.L981:
	ldr	q0, [x11]
	add	x25, x25, 32
	add	x11, x11, 32
	str	q0, [x25, -32]
	ldr	q0, [x11, -16]
	str	q0, [x25, -16]
	cmp	x19, x25
	bhi	.L981
	b	.L980
	.p2align 2,,3
.L984:
	cmp	x12, 7
	bhi	.L988
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x19]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w11, [x0, 1]
	strb	w11, [x19, 1]
	ldr	w2, [x2, x12, lsl 2]
	ldrb	w11, [x0, 2]
	strb	w11, [x19, 2]
	ldrsw	x11, [x1, x12, lsl 2]
	add	x12, x0, x2
	ldrb	w1, [x0, 3]
	strb	w1, [x19, 3]
	ldr	w1, [x0, x2]
	sub	x0, x12, x11
	str	w1, [x19, 4]
.L989:
	cmp	x13, 8
	bls	.L983
	sub	x1, x19, x0
	cmp	x1, 15
	bgt	.L990
	add	x19, x19, 8
	add	x0, x0, 8
	.p2align 3,,7
.L991:
	ldr	d0, [x0], 8
	str	d0, [x19], 8
	cmp	x26, x19
	bhi	.L991
	b	.L983
	.p2align 2,,3
.L1213:
	ldr	x1, [sp, 96]
	sub	x1, x15, x1
	cmp	x25, x1
	bhi	.L879
	ldr	x4, [sp, 104]
	sub	x1, x0, x5
	add	x1, x4, x1
	add	x2, x1, x12
	cmp	x4, x2
	bcs	.L1228
	sub	x2, x5, x0
	mov	x0, x15
	sub	x12, x12, x2
	add	x15, x15, x2
	stp	x15, x12, [sp, 160]
	stp	x5, x11, [sp, 176]
	stp	x14, x3, [sp, 192]
	stp	x6, x10, [sp, 208]
	str	x7, [sp, 224]
	str	w8, [sp, 232]
	str	x9, [sp, 240]
	bl	memmove
	ldp	x5, x11, [sp, 176]
	ldp	x15, x12, [sp, 160]
	ldp	x14, x3, [sp, 192]
	ldp	x6, x10, [sp, 208]
	mov	x0, x5
	ldr	x7, [sp, 224]
	ldr	x9, [sp, 240]
	ldr	w8, [sp, 232]
	b	.L1014
	.p2align 2,,3
.L1012:
	ldr	q0, [x4, 16]
	sub	x13, x13, #16
	str	q0, [x26, 16]
	cmp	x13, 16
	ble	.L1015
	add	x26, x26, 32
	add	x4, x4, 32
	.p2align 3,,7
.L1016:
	ldr	q0, [x4]
	add	x26, x26, 32
	add	x4, x4, 32
	str	q0, [x26, -32]
	ldr	q0, [x4, -16]
	str	q0, [x26, -16]
	cmp	x15, x26
	bhi	.L1016
	b	.L1015
	.p2align 2,,3
.L1019:
	cmp	x25, 7
	bhi	.L1023
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x15]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w4, [x0, 1]
	strb	w4, [x15, 1]
	ldr	w2, [x2, x25, lsl 2]
	ldrb	w4, [x0, 2]
	strb	w4, [x15, 2]
	add	x13, x0, x2
	ldrsw	x4, [x1, x25, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x15, 3]
	ldr	w1, [x0, x2]
	sub	x0, x13, x4
	str	w1, [x15, 4]
.L1024:
	cmp	x12, 8
	bls	.L1018
	sub	x1, x15, x0
	cmp	x1, 15
	bgt	.L1025
	add	x15, x15, 8
	add	x0, x0, 8
	.p2align 3,,7
.L1026:
	ldr	d0, [x0], 8
	str	d0, [x15], 8
	cmp	x22, x15
	bhi	.L1026
	b	.L1018
.L967:
	ldr	x9, [sp, 416]
	str	x9, [sp, 424]
	b	.L968
.L1002:
	ldr	x14, [sp, 416]
	str	x14, [sp, 424]
	b	.L1003
.L953:
	ldr	d0, [x0]
	str	d0, [x19]
	b	.L954
.L988:
	ldr	d0, [x0]
	str	d0, [x19]
	b	.L989
.L1023:
	ldr	d0, [x0]
	str	d0, [x15]
	b	.L1024
.L1220:
	mov	x2, x13
	mov	x0, x19
	stp	x15, x14, [sp, 160]
	stp	x12, x5, [sp, 176]
	stp	x4, x3, [sp, 192]
	stp	x6, x10, [sp, 208]
	str	x7, [sp, 224]
	str	w8, [sp, 232]
	str	x9, [sp, 240]
	bl	memmove
	ldp	x15, x14, [sp, 160]
	ldp	x12, x5, [sp, 176]
	ldp	x4, x3, [sp, 192]
	ldp	x6, x10, [sp, 208]
	ldr	x7, [sp, 224]
	ldr	x9, [sp, 240]
	ldr	w8, [sp, 232]
	b	.L912
.L1224:
	mov	x2, x13
	mov	x0, x19
	stp	x15, x14, [sp, 160]
	stp	x11, x5, [sp, 176]
	stp	x3, x6, [sp, 192]
	stp	x10, x7, [sp, 208]
	str	w8, [sp, 224]
	str	x9, [sp, 232]
	bl	memmove
	ldp	x15, x14, [sp, 160]
	ldp	x11, x5, [sp, 176]
	ldp	x3, x6, [sp, 192]
	ldp	x10, x7, [sp, 208]
	ldr	x9, [sp, 232]
	ldr	w8, [sp, 224]
	b	.L948
.L1227:
	mov	x2, x13
	mov	x0, x19
	stp	x15, x14, [sp, 160]
	stp	x4, x5, [sp, 176]
	stp	x3, x6, [sp, 192]
	stp	x10, x7, [sp, 208]
	str	w8, [sp, 224]
	str	x9, [sp, 232]
	bl	memmove
	ldp	x15, x14, [sp, 160]
	ldp	x4, x5, [sp, 176]
	ldp	x3, x6, [sp, 192]
	ldp	x10, x7, [sp, 208]
	ldr	x9, [sp, 232]
	ldr	w8, [sp, 224]
	b	.L983
.L1228:
	mov	x2, x12
	mov	x0, x15
	stp	x11, x5, [sp, 160]
	stp	x14, x3, [sp, 176]
	stp	x6, x10, [sp, 192]
	str	x7, [sp, 208]
	str	w8, [sp, 216]
	str	x9, [sp, 224]
	bl	memmove
	ldp	x11, x5, [sp, 160]
	ldp	x14, x3, [sp, 176]
	ldp	x6, x10, [sp, 192]
	ldr	x7, [sp, 208]
	ldr	x9, [sp, 224]
	ldr	w8, [sp, 216]
	b	.L1018
.L1178:
	mov	x23, x9
	b	.L875
.L1222:
	lsr	w2, w22, 3
	and	w22, w22, 7
	sub	x2, x9, x2
	ldr	x20, [x2]
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L972
.L1179:
	mov	x25, x11
	mov	x15, x21
	ldp	x26, x11, [sp, 136]
	mov	x18, x20
	ldr	x21, [sp, 120]
	mov	x9, x23
	ldr	x20, [sp, 152]
.L1033:
	adrp	x0, .LANCHOR0
	add	x17, x0, :lo12:.LANCHOR0
	add	x0, sp, 328
	ldr	x27, [sp, 128]
	stp	x0, x21, [sp, 160]
	add	x0, x17, 64
	mov	x23, x24
	mov	w21, w8
	mov	x24, x5
	str	x3, [sp, 120]
	mov	x3, x25
	mov	x25, x28
	mov	x28, x22
	mov	x22, x9
	stp	x26, x11, [sp, 176]
	mov	x26, x0
	stp	x20, x17, [sp, 192]
	mov	x20, x10
	.p2align 3,,7
.L1072:
	ldr	x0, [sp, 112]
	ldr	x6, [x22, x15, lsl 3]
	ldr	x15, [x0, x14, lsl 3]
	ldr	x7, [x20, x18, lsl 3]
	ubfx	w14, w6, 16, 8
	ubfx	w16, w15, 16, 8
	lsr	x18, x6, 32
	add	w0, w14, w16
	mov	x2, x18
	ubfx	w1, w7, 16, 8
	lsr	x19, x7, 32
	add	w0, w1, w0
	lsr	x13, x15, 32
	and	w0, w0, 255
	cmp	w1, 1
	bls	.L1035
	ldr	x30, [sp, 320]
	neg	w18, w1
	ldr	w17, [sp, 328]
	ldr	x4, [sp, 416]
	add	w1, w1, w17
	lsl	x17, x30, x17
	str	w1, [sp, 328]
	ldr	x1, [sp, 408]
	lsr	x17, x17, x18
	add	x19, x19, x17
	str	x4, [sp, 424]
.L1036:
	stp	x19, x1, [sp, 408]
	cbnz	w16, .L1229
.L1041:
	cmp	w0, 30
	bhi	.L1230
.L1042:
	cbnz	w14, .L1231
.L1046:
	cmp	w21, 1
	beq	.L1048
	ldr	w14, [sp, 328]
	lsr	w30, w6, 24
	mov	x1, x30
	lsr	w18, w15, 24
	ldr	x16, [sp, 320]
	add	w1, w1, w14
	mov	x0, x18
	lsr	w17, w7, 24
	add	w0, w0, w1
	ldr	w18, [x26, x18, lsl 2]
	add	w14, w17, w0
	neg	w0, w0
	ldr	w30, [x26, x30, lsl 2]
	neg	w1, w1
	ldr	w17, [x26, x17, lsl 2]
	lsr	x0, x16, x0
	and	x0, x0, x18
	neg	w18, w14
	lsr	x1, x16, x1
	and	x1, x1, x30
	add	x1, x1, w6, uxth
	lsr	x6, x16, x18
	and	x6, x6, x17
	add	x0, x0, w15, uxth
	add	x7, x6, w7, uxth
	str	w14, [sp, 328]
	str	x1, [sp, 360]
	str	x7, [sp, 376]
	str	x0, [sp, 392]
	cmp	w14, 64
	bhi	.L1232
	ldr	x0, [sp, 120]
	ldr	x1, [sp, 336]
	cmp	x1, x0
	bcs	.L1233
	cmp	x23, x1
	beq	.L1048
	lsr	w0, w14, 3
	lsr	w6, w14, 3
	sub	x0, x1, x0
	cmp	x23, x0
	bls	.L1052
	sub	x0, x1, x23
	mov	w6, w0
	sub	x0, x1, w0, uxtw
.L1052:
	ldr	x1, [x0]
	sub	w6, w14, w6, lsl 3
	str	x1, [sp, 320]
	str	w6, [sp, 328]
	str	x0, [sp, 336]
.L1048:
	add	x6, x28, x2
	add	x14, x2, x13
	sub	x0, x6, x19
	add	x1, x3, x2
	add	x7, x28, x14
	cmp	x25, x1
	ccmp	x7, x27, 2, cs
	prfm	PLDL1KEEP, [x0]
	bhi	.L1053
	ldr	q0, [x3]
	str	q0, [x28]
	cmp	x2, 16
	bhi	.L1054
.L1058:
	str	x1, [sp, 288]
	sub	x1, x6, x24
	cmp	x19, x1
	bls	.L1056
	ldr	x1, [sp, 96]
	sub	x1, x6, x1
	cmp	x19, x1
	bhi	.L879
	ldr	x3, [sp, 104]
	sub	x1, x0, x24
	add	x1, x3, x1
	add	x2, x1, x13
	cmp	x3, x2
	bcs	.L1234
	sub	x2, x24, x0
	mov	x0, x6
	sub	x13, x13, x2
	add	x6, x6, x2
	stp	x6, x13, [sp, 128]
	stp	x7, x14, [sp, 144]
	bl	memmove
	mov	x0, x24
	ldp	x6, x13, [sp, 128]
	ldp	x7, x14, [sp, 144]
.L1056:
	cmp	x19, 15
	bls	.L1062
	ldr	q0, [x0], 16
	str	q0, [x6], 16
	cmp	x13, 16
	ble	.L1057
	.p2align 3,,7
.L1065:
	ldr	q0, [x0]
	add	x6, x6, 32
	add	x0, x0, 32
	str	q0, [x6, -32]
	ldr	q0, [x0, -16]
	str	q0, [x6, -16]
	cmp	x7, x6
	bhi	.L1065
.L1057:
	cmn	x14, #120
	bhi	.L1180
	add	x28, x28, x14
	subs	w21, w21, #1
	beq	.L1071
	ldr	x3, [sp, 288]
	ldr	x15, [sp, 360]
	ldr	x18, [sp, 376]
	ldr	x14, [sp, 392]
	b	.L1072
.L1230:
	ldr	w0, [sp, 328]
	cmp	w0, 64
	bhi	.L1235
	ldr	x1, [sp, 120]
	ldr	x16, [sp, 336]
	cmp	x16, x1
	bcs	.L1236
	cmp	x23, x16
	beq	.L1042
	lsr	w1, w0, 3
	lsr	w17, w0, 3
	sub	x1, x16, x1
	cmp	x23, x1
	bls	.L1045
	sub	x1, x16, x23
	mov	w17, w1
	sub	x1, x16, w1, uxtw
.L1045:
	ldr	x16, [x1]
	sub	w17, w0, w17, lsl 3
	str	x16, [sp, 320]
	str	w17, [sp, 328]
	str	x1, [sp, 336]
	b	.L1042
	.p2align 2,,3
.L1035:
	cmp	w18, 0
	cset	w17, eq
	cmp	w1, 1
	beq	.L1037
	cmp	w18, 0
	add	x17, x17, 10
	ldr	x4, [sp, 160]
	cset	x1, ne
	add	x1, x1, 10
	ldr	x19, [x4, x17, lsl 3]
	ldr	x1, [x4, x1, lsl 3]
	b	.L1036
	.p2align 2,,3
.L1231:
	ldr	x0, [sp, 320]
	neg	w1, w14
	ldr	w16, [sp, 328]
	add	w14, w14, w16
	str	w14, [sp, 328]
	lsl	x0, x0, x16
	lsr	x0, x0, x1
	add	x2, x2, x0
	b	.L1046
	.p2align 2,,3
.L1229:
	ldr	x18, [sp, 320]
	neg	w17, w16
	ldr	w1, [sp, 328]
	add	w16, w16, w1
	str	w16, [sp, 328]
	lsl	x1, x18, x1
	lsr	x1, x1, x17
	add	x13, x13, x1
	b	.L1041
.L1234:
	mov	x2, x13
	mov	x0, x6
	str	x14, [sp, 128]
	bl	memmove
	ldr	x14, [sp, 128]
	b	.L1057
.L1053:
	add	x0, sp, 256
	stp	x2, x13, [sp, 296]
	mov	x2, x0
	add	x0, sp, 512
	str	x19, [sp, 312]
	ldp	x6, x7, [sp, 96]
	mov	x5, x24
	ldp	x0, x1, [x0, -216]
	stp	x0, x1, [sp, 256]
	mov	x4, x25
	ldr	x1, [sp, 168]
	str	x19, [x2, 16]
	add	x3, sp, 288
	mov	x0, x28
	bl	ZSTD_execSequenceEnd
	mov	x14, x0
	b	.L1057
.L1226:
	lsr	w2, w21, 3
	and	w21, w21, 7
	sub	x2, x14, x2
	ldr	x20, [x2]
	str	x20, [sp, 320]
	str	x2, [sp, 336]
	b	.L1007
.L1233:
	lsr	w0, w14, 3
	and	w14, w14, 7
	sub	x0, x1, x0
	str	x0, [sp, 336]
	str	w14, [sp, 328]
	ldr	x0, [x0]
	str	x0, [sp, 320]
	b	.L1048
.L919:
	ldr	q0, [x0, 8]
	str	q0, [x19, 8]
	cmp	x13, 24
	ble	.L912
	add	x19, x19, 24
	add	x0, x0, 24
	.p2align 3,,7
.L921:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x26, x19
	bhi	.L921
	b	.L912
.L1054:
	ldr	q0, [x3, 16]
	sub	x2, x2, #16
	str	q0, [x28, 16]
	cmp	x2, 16
	ble	.L1058
	add	x3, x3, 32
	add	x2, x28, 32
	.p2align 3,,7
.L1059:
	ldr	q0, [x3]
	add	x2, x2, 32
	add	x3, x3, 32
	str	q0, [x2, -32]
	ldr	q0, [x3, -16]
	str	q0, [x2, -16]
	cmp	x6, x2
	bhi	.L1059
	b	.L1058
.L955:
	ldr	q0, [x0, 8]
	str	q0, [x19, 8]
	cmp	x13, 24
	ble	.L948
	add	x19, x19, 24
	add	x0, x0, 24
	.p2align 3,,7
.L957:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x25, x19
	bhi	.L957
	b	.L948
.L990:
	ldr	q0, [x0, 8]
	str	q0, [x19, 8]
	cmp	x13, 24
	ble	.L983
	add	x19, x19, 24
	add	x0, x0, 24
	.p2align 3,,7
.L992:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x26, x19
	bhi	.L992
	b	.L983
.L1216:
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	add	x2, x2, 192
	str	x2, [sp, 336]
	b	.L1182
.L1062:
	cmp	x19, 7
	bhi	.L1066
	ldrb	w2, [x0]
	adrp	x1, .LANCHOR0
	strb	w2, [x6]
	add	x1, x1, :lo12:.LANCHOR0
	add	x2, x1, 32
	ldrb	w3, [x0, 1]
	strb	w3, [x6, 1]
	ldr	w2, [x2, x19, lsl 2]
	ldrb	w3, [x0, 2]
	strb	w3, [x6, 2]
	add	x15, x0, x2
	ldrsw	x3, [x1, x19, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x6, 3]
	ldr	w1, [x0, x2]
	sub	x0, x15, x3
	str	w1, [x6, 4]
.L1067:
	cmp	x13, 8
	bls	.L1057
	sub	x1, x6, x0
	cmp	x1, 15
	bgt	.L1068
	add	x0, x0, 8
	add	x6, x6, 8
.L1069:
	ldr	d0, [x0], 8
	str	d0, [x6], 8
	cmp	x7, x6
	bhi	.L1069
	b	.L1057
.L1025:
	ldr	q0, [x0, 8]
	str	q0, [x15, 8]
	cmp	x12, 24
	ble	.L1018
	add	x15, x15, 24
	add	x0, x0, 24
	.p2align 3,,7
.L1027:
	ldr	q0, [x0]
	add	x15, x15, 32
	add	x0, x0, 32
	str	q0, [x15, -32]
	ldr	q0, [x0, -16]
	str	q0, [x15, -16]
	cmp	x22, x15
	bhi	.L1027
	b	.L1018
.L1218:
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	add	x2, x2, 192
	str	x2, [sp, 336]
	b	.L936
.L1071:
	ldr	x0, [sp, 336]
	mov	x22, x28
	ldp	x21, x26, [sp, 168]
	mov	x28, x25
	ldp	x11, x20, [sp, 184]
	cmp	x23, x0
	bne	.L879
	ldr	w0, [sp, 328]
	cmp	w0, 64
	bne	.L879
	add	x0, sp, 512
	ldr	x25, [sp, 288]
	ldr	q0, [x0, -104]
	ldr	x0, [sp, 424]
	xtn	v0.2s, v0.2d
	str	d0, [x11, 60]
	str	w0, [x20, 10308]
	b	.L878
.L889:
	ldp	x14, x0, [sp, 392]
	mov	x22, x26
	ldp	x15, x9, [sp, 360]
	str	x0, [sp, 112]
	ldp	x18, x10, [sp, 376]
	b	.L1033
.L1180:
	mov	x23, x14
	b	.L875
.L1232:
	ldr	x0, [sp, 200]
	add	x0, x0, 192
	str	x0, [sp, 336]
	b	.L1048
.L1225:
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	add	x2, x2, 192
	str	x2, [sp, 336]
	b	.L1007
.L1037:
	ldr	x30, [sp, 320]
	add	w19, w17, w19
	ldr	w18, [sp, 328]
	ldr	x1, [sp, 408]
	lsl	x17, x30, x18
	add	w18, w18, 1
	add	x17, x19, x17, lsr 63
	str	w18, [sp, 328]
	cmp	x17, 3
	beq	.L1237
	add	x4, sp, 432
	add	x18, x4, x17, lsl 3
	ldr	x19, [x18, -24]
	cmp	x19, 0
	cset	x18, eq
	sub	x19, x19, x18
	cmp	x17, 1
	beq	.L1036
.L1039:
	ldr	x17, [sp, 416]
	str	x17, [sp, 424]
	b	.L1036
.L1066:
	ldr	d0, [x0]
	str	d0, [x6]
	b	.L1067
.L1236:
	lsr	w1, w0, 3
	and	w0, w0, 7
	sub	x1, x16, x1
	str	w0, [sp, 328]
	str	x1, [sp, 336]
	ldr	x0, [x1]
	str	x0, [sp, 320]
	b	.L1042
.L1237:
	subs	x19, x1, #1
	cset	x17, eq
	sub	x19, x19, x17
	b	.L1039
.L1068:
	ldr	q0, [x0, 8]
	str	q0, [x6, 8]
	cmp	x13, 24
	ble	.L1057
	add	x6, x6, 24
	add	x0, x0, 24
.L1070:
	ldr	q0, [x0]
	add	x6, x6, 32
	add	x0, x0, 32
	str	q0, [x6, -32]
	ldr	q0, [x0, -16]
	str	q0, [x6, -16]
	cmp	x7, x6
	bhi	.L1070
	b	.L1057
.L1235:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 336]
	b	.L1042
	.cfi_endproc
.LFE4574:
	.size	ZSTD_decompressSequences_default.constprop.0, .-ZSTD_decompressSequences_default.constprop.0
	.align	2
	.p2align 4,,11
	.global	ZSTD_getcBlockSize
	.type	ZSTD_getcBlockSize, %function
ZSTD_getcBlockSize:
.LFB4526:
	.cfi_startproc
	mov	x3, x0
	mov	x0, -72
	cmp	x1, 2
	bls	.L1238
	ldrb	w1, [x3, 2]
	mov	x0, 1
	ldrh	w3, [x3]
	add	w1, w3, w1, lsl 16
	and	w3, w1, 1
	str	w3, [x2, 4]
	lsr	w3, w1, 3
	ubfx	x1, x1, 1, 2
	str	w1, [x2]
	str	w3, [x2, 8]
	cmp	w1, 1
	beq	.L1238
	cmp	w1, 3
	mov	x0, -20
	csel	x0, x3, x0, ne
.L1238:
	ret
	.cfi_endproc
.LFE4526:
	.size	ZSTD_getcBlockSize, .-ZSTD_getcBlockSize
	.align	2
	.p2align 4,,11
	.global	ZSTD_decodeLiteralsBlock_wrapper
	.type	ZSTD_decodeLiteralsBlock_wrapper, %function
ZSTD_decodeLiteralsBlock_wrapper:
.LFB4529:
	.cfi_startproc
	add	x6, x0, 16384
	mov	w5, 0
	str	wzr, [x6, 13792]
	b	ZSTD_decodeLiteralsBlock
	.cfi_endproc
.LFE4529:
	.size	ZSTD_decodeLiteralsBlock_wrapper, .-ZSTD_decodeLiteralsBlock_wrapper
	.align	2
	.p2align 4,,11
	.global	ZSTD_buildFSETable
	.type	ZSTD_buildFSETable, %function
ZSTD_buildFSETable:
.LFB4533:
	.cfi_startproc
	b	ZSTD_buildFSETable_body_default.constprop.0
	.cfi_endproc
.LFE4533:
	.size	ZSTD_buildFSETable, .-ZSTD_buildFSETable
	.align	2
	.p2align 4,,11
	.global	ZSTD_decodeSeqHeaders
	.type	ZSTD_decodeSeqHeaders, %function
ZSTD_decodeSeqHeaders:
.LFB4535:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 48]
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	add	x29, sp, 48
	stp	x25, x26, [sp, 112]
	.cfi_offset 25, -176
	.cfi_offset 26, -168
	add	x26, x2, x3
	cbz	x3, .L1251
	stp	x19, x20, [sp, 64]
	.cfi_offset 20, -216
	.cfi_offset 19, -224
	mov	x20, x2
	mov	x25, x0
	stp	x21, x22, [sp, 80]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldrb	w21, [x2], 1
	cmp	w21, 127
	ble	.L1249
	cmp	w21, 255
	beq	.L1285
	cmp	x26, x2
	bls	.L1275
	ldrb	w0, [x20, 1]
	sub	w21, w21, #128
	add	x2, x20, 2
	add	w21, w0, w21, lsl 8
.L1249:
	str	w21, [x1]
	cbnz	w21, .L1252
	mov	x0, x3
	cmp	x2, x26
	beq	.L1284
	mov	x0, -20
.L1284:
	ldp	x29, x30, [sp, 48]
	ldp	x19, x20, [sp, 64]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 80]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x25, x26, [sp, 112]
	add	sp, sp, 288
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1285:
	.cfi_restore_state
	add	x2, x20, 3
	cmp	x2, x26
	bhi	.L1275
	ldrh	w21, [x20, 1]
	mov	w11, 32512
	add	w21, w21, w11
	str	w21, [x1]
.L1252:
	add	x19, x2, 1
	cmp	x19, x26
	bhi	.L1275
	stp	x23, x24, [sp, 96]
	.cfi_offset 24, -184
	.cfi_offset 23, -192
	ldrb	w23, [x2]
	tst	x23, 3
	bne	.L1276
	add	x24, x25, 16384
	mov	w1, 35
	lsr	w0, w23, 6
	stp	x27, x28, [sp, 128]
	.cfi_offset 28, -152
	.cfi_offset 27, -160
	mov	x10, 27324
	str	w1, [sp, 168]
	add	x28, x25, 32
	ldr	w3, [x24, 13820]
	sub	x6, x26, x19
	ldr	w1, [x24, 13620]
	add	x27, x25, x10
	cmp	w0, 2
	beq	.L1255
	cmp	w0, 3
	beq	.L1256
	cmp	w0, 1
	beq	.L1286
	adrp	x22, .LANCHOR0
	add	x0, x22, :lo12:.LANCHOR0
	add	x0, x0, 400
	str	x0, [x25]
.L1260:
	add	x22, x22, :lo12:.LANCHOR0
	mov	x8, 4136
	add	x0, x22, 1056
	str	x0, [sp, 8]
	str	w1, [sp, 16]
	add	x1, x22, 1328
	str	x1, [sp]
	add	x7, x22, 928
	str	w3, [sp, 24]
	mov	x5, x19
	str	w21, [sp, 32]
	ubfx	x2, x23, 4, 2
	str	x27, [sp, 40]
	add	x0, x25, x8
	add	x1, x25, 16
	mov	w4, 8
	mov	w3, 31
	bl	ZSTD_buildSeqTable.constprop.0
	cmn	x0, #120
	bhi	.L1283
	ldr	w2, [x24, 13620]
	add	x3, x22, 1584
	ldr	w1, [x24, 13820]
	add	x4, x22, 2112
	stp	x4, x3, [sp]
	add	x19, x19, x0
	sub	x6, x26, x19
	str	w2, [sp, 16]
	mov	x0, 6192
	str	w1, [sp, 24]
	mov	x5, x19
	str	w21, [sp, 32]
	add	x7, x22, 1360
	str	x27, [sp, 40]
	add	x0, x25, x0
	ubfx	x2, x23, 2, 2
	add	x1, x25, 8
	mov	w4, 9
	mov	w3, 52
	bl	ZSTD_buildSeqTable.constprop.0
	cmn	x0, #120
	bhi	.L1283
	add	x19, x19, x0
	ldp	x21, x22, [sp, 80]
	.cfi_restore 22
	.cfi_restore 21
	sub	x0, x19, x20
	ldp	x19, x20, [sp, 64]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 96]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 128]
	.cfi_restore 28
	.cfi_restore 27
	b	.L1246
	.p2align 2,,3
.L1275:
	.cfi_offset 19, -224
	.cfi_offset 20, -216
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	ldp	x19, x20, [sp, 64]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 80]
	.cfi_restore 22
	.cfi_restore 21
.L1251:
	mov	x0, -72
.L1246:
	ldp	x29, x30, [sp, 48]
	ldp	x25, x26, [sp, 112]
	add	sp, sp, 288
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1276:
	.cfi_def_cfa_offset 288
	.cfi_offset 19, -224
	.cfi_offset 20, -216
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 23, -192
	.cfi_offset 24, -184
	.cfi_offset 25, -176
	.cfi_offset 26, -168
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	ldp	x23, x24, [sp, 96]
	.cfi_restore 24
	.cfi_restore 23
	mov	x0, -20
	b	.L1284
	.p2align 2,,3
.L1283:
	.cfi_offset 23, -192
	.cfi_offset 24, -184
	.cfi_offset 27, -160
	.cfi_offset 28, -152
	ldp	x23, x24, [sp, 96]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x0, -20
	ldp	x27, x28, [sp, 128]
	.cfi_restore 28
	.cfi_restore 27
	b	.L1284
	.p2align 2,,3
.L1256:
	.cfi_restore_state
	cbz	w1, .L1283
	cmp	w3, 0
	adrp	x22, .LANCHOR0
	ccmp	w21, 24, 4, ne
	ble	.L1260
	ldr	x0, [x25]
	mov	x9, 4160
	add	x2, x0, x9
	.p2align 3,,7
.L1262:
	prfm	PLDL2KEEP, [x0]
	add	x0, x0, 64
	cmp	x2, x0
	bne	.L1262
	adrp	x22, .LANCHOR0
	b	.L1260
	.p2align 2,,3
.L1286:
	cbz	x6, .L1283
	ldrb	w4, [x2, 1]
	cmp	w4, 35
	bhi	.L1283
	adrp	x22, .LANCHOR0
	add	x0, x22, :lo12:.LANCHOR0
	add	x5, x0, 208
	uxtw	x8, w4
	add	x0, x0, 352
	add	x19, x2, 2
	sub	x6, x26, x19
	ldrb	w2, [x0, w4, uxtw]
	ldr	w0, [x5, x8, lsl 2]
	str	x28, [x25]
	str	xzr, [x25, 32]
	strh	wzr, [x25, 40]
	strb	w2, [x25, 42]
	strb	wzr, [x25, 43]
	str	w0, [x25, 44]
	b	.L1260
	.p2align 2,,3
.L1255:
	add	x0, sp, 176
	mov	x4, x6
	mov	x3, x19
	add	x2, sp, 172
	add	x1, sp, 168
	str	x0, [sp, 152]
	bl	FSE_readNCount
	cmn	x0, #120
	bhi	.L1283
	ldr	w5, [sp, 172]
	cmp	w5, 9
	bhi	.L1283
	ldr	x1, [sp, 152]
	adrp	x22, .LANCHOR0
	ldr	w2, [sp, 168]
	add	x3, x22, :lo12:.LANCHOR0
	add	x19, x19, x0
	add	x4, x3, 352
	mov	x6, x27
	add	x3, x3, 208
	mov	x0, x28
	bl	ZSTD_buildFSETable_body_default.constprop.0
	ldr	w3, [x24, 13820]
	ldr	w1, [x24, 13620]
	sub	x6, x26, x19
	str	x28, [x25]
	b	.L1260
	.cfi_endproc
.LFE4535:
	.size	ZSTD_decodeSeqHeaders, .-ZSTD_decodeSeqHeaders
	.align	2
	.p2align 4,,11
	.global	ZSTD_decompressBlock_internal
	.type	ZSTD_decompressBlock_internal, %function
ZSTD_decompressBlock_internal:
.LFB4561:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	str	x27, [sp, 80]
	.cfi_offset 27, -32
	add	x27, x0, 16384
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x1
	mov	x21, x3
	ldr	w1, [x27, 13792]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	mov	x20, x0
	mov	x19, x4
	stp	x23, x24, [sp, 48]
	mov	x0, 131072
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	mov	x23, x2
	cbz	w1, .L1288
	ldr	w0, [x27, 13560]
.L1288:
	cmp	x19, x0
	bhi	.L1304
	mov	x4, x23
	mov	x3, x22
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
	bl	ZSTD_decodeLiteralsBlock
	cmn	x0, #120
	bhi	.L1287
	ldr	w1, [x27, 13792]
	add	x21, x21, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	sub	x19, x19, x0
	cbz	w1, .L1327
	ldr	w0, [x27, 13560]
	cmp	x0, x23
	csel	x0, x0, x23, ls
.L1292:
	mov	x25, x22
	cbz	x0, .L1293
.L1291:
	add	x25, x22, x0
.L1293:
	ldr	x26, [x20, 29904]
	mov	x3, x19
	ldr	w24, [x27, 13820]
	mov	x2, x21
	add	x1, sp, 108
	mov	x0, x20
	bl	ZSTD_decodeSeqHeaders
	cmn	x0, #120
	bhi	.L1326
	cmp	x22, 0
	ccmp	x23, 0, 4, ne
	bne	.L1295
	ldr	w1, [sp, 108]
	cmp	w1, 0
	ble	.L1295
.L1308:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x0, -70
.L1287:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1295:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x1, -1048577
	cmp	x22, x1
	bhi	.L1308
	sub	x25, x25, x26
	cmp	w24, 0
	add	x3, x21, x0
	sub	x4, x19, x0
	ldr	w5, [sp, 108]
	mov	x0, 16777216
	ccmp	x25, x0, 0, eq
	bls	.L1296
	cmp	w5, 8
	ble	.L1299
	ldr	x0, [x20, 16]
	mov	w1, 1
	ldr	w7, [x0, 4]
	lsl	w1, w1, w7
	cbz	w1, .L1299
	sub	w1, w1, #1
	add	x6, x0, 18
	add	x0, x0, 10
	mov	w2, 0
	add	x1, x6, w1, uxtw 3
	.p2align 3,,7
.L1301:
	ldrb	w6, [x0], 8
	cmp	w6, 22
	cinc	w2, w2, hi
	cmp	x0, x1
	bne	.L1301
	mov	w0, 8
	sub	w0, w0, w7
	lsl	w2, w2, w0
	cmp	w2, 6
	cset	w24, hi
	.p2align 3,,7
.L1296:
	str	wzr, [x27, 13820]
	cbnz	w24, .L1328
.L1298:
	ldr	w0, [x27, 13984]
	mov	x2, x23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	cmp	w0, 2
	mov	x1, x22
	mov	x0, x20
	beq	.L1329
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	ZSTD_decompressSequences_default.constprop.0
	.p2align 2,,3
.L1304:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	mov	x0, -72
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1327:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x0, 131071
	cmp	x23, x0
	bhi	.L1305
	mov	x0, x23
	b	.L1292
	.p2align 2,,3
.L1326:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1305:
	.cfi_restore_state
	mov	x0, 131072
	b	.L1291
	.p2align 2,,3
.L1299:
	str	wzr, [x27, 13820]
	b	.L1298
	.p2align 2,,3
.L1329:
	.cfi_restore 25
	.cfi_restore 26
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	.p2align 2,,3
.L1328:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x2, x23
	ldp	x23, x24, [sp, 48]
	mov	x1, x22
	ldp	x21, x22, [sp, 32]
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	ZSTD_decompressSequencesLong_default.constprop.0
	.cfi_endproc
.LFE4561:
	.size	ZSTD_decompressBlock_internal, .-ZSTD_decompressBlock_internal
	.align	2
	.p2align 4,,11
	.global	ZSTD_checkContinuity
	.type	ZSTD_checkContinuity, %function
ZSTD_checkContinuity:
.LFB4562:
	.cfi_startproc
	cmp	x2, 0
	ldr	x2, [x0, 29888]
	ccmp	x2, x1, 4, ne
	bne	.L1335
	ret
	.p2align 2,,3
.L1335:
	ldr	x3, [x0, 29896]
	str	x1, [x0, 29888]
	str	x1, [x0, 29896]
	sub	x3, x2, x3
	str	x2, [x0, 29912]
	sub	x1, x1, x3
	str	x1, [x0, 29904]
	ret
	.cfi_endproc
.LFE4562:
	.size	ZSTD_checkContinuity, .-ZSTD_checkContinuity
	.align	2
	.p2align 4,,11
	.global	ZSTD_decompressBlock_deprecated
	.type	ZSTD_decompressBlock_deprecated, %function
ZSTD_decompressBlock_deprecated:
.LFB4563:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	cmp	x2, 0
	mov	x29, sp
	str	x27, [sp, 80]
	.cfi_offset 27, -32
	add	x27, x0, 16384
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	mov	x19, x0
	mov	x20, x1
	ldr	x0, [x0, 29888]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x2
	stp	x23, x24, [sp, 48]
	mov	x21, x4
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	mov	x23, x3
	str	wzr, [x27, 13792]
	ccmp	x1, x0, 4, ne
	beq	.L1337
	ldr	x1, [x19, 29896]
	str	x20, [x19, 29888]
	str	x20, [x19, 29896]
	sub	x1, x0, x1
	str	x0, [x19, 29912]
	sub	x0, x20, x1
	str	x0, [x19, 29904]
.L1337:
	mov	x0, -72
	cmp	x21, 131072
	bhi	.L1336
	mov	x4, x22
	mov	x3, x20
	mov	x2, x21
	mov	x1, x23
	mov	x0, x19
	mov	w5, 0
	bl	ZSTD_decodeLiteralsBlock
	cmn	x0, #120
	bhi	.L1336
	ldr	w1, [x27, 13792]
	add	x23, x23, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	sub	x21, x21, x0
	cbz	w1, .L1378
	ldr	w0, [x27, 13560]
	cmp	x0, x22
	csel	x0, x0, x22, ls
.L1341:
	mov	x25, x20
	cbz	x0, .L1342
.L1340:
	add	x25, x20, x0
.L1342:
	ldr	x26, [x19, 29904]
	mov	x3, x21
	ldr	w24, [x27, 13820]
	mov	x2, x23
	add	x1, sp, 108
	mov	x0, x19
	bl	ZSTD_decodeSeqHeaders
	cmn	x0, #120
	bhi	.L1377
	cmp	x20, 0
	ccmp	x22, 0, 4, ne
	bne	.L1344
	ldr	w1, [sp, 108]
	cmp	w1, 0
	ble	.L1344
.L1345:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x0, -70
.L1336:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1344:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x1, -1048577
	cmp	x20, x1
	bhi	.L1345
	sub	x25, x25, x26
	cmp	w24, 0
	add	x3, x23, x0
	sub	x4, x21, x0
	ldr	w5, [sp, 108]
	mov	x0, 16777216
	ccmp	x25, x0, 0, eq
	bls	.L1346
	cmp	w5, 8
	ble	.L1349
	ldr	x0, [x19, 16]
	mov	w1, 1
	ldr	w7, [x0, 4]
	lsl	w1, w1, w7
	cbz	w1, .L1349
	sub	w1, w1, #1
	add	x6, x0, 18
	add	x0, x0, 10
	mov	w2, 0
	add	x1, x6, w1, uxtw 3
	.p2align 3,,7
.L1351:
	ldrb	w6, [x0], 8
	cmp	w6, 22
	cinc	w2, w2, hi
	cmp	x0, x1
	bne	.L1351
	mov	w0, 8
	sub	w0, w0, w7
	lsl	w2, w2, w0
	cmp	w2, 6
	cset	w24, hi
	.p2align 3,,7
.L1346:
	str	wzr, [x27, 13820]
	cbnz	w24, .L1379
.L1348:
	ldr	w0, [x27, 13984]
	mov	x2, x22
	mov	x1, x20
	cmp	w0, 2
	mov	x0, x19
	beq	.L1380
	bl	ZSTD_decompressSequences_default.constprop.0
.L1352:
	cmn	x0, #120
	bhi	.L1377
	ldp	x25, x26, [sp, 64]
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	add	x20, x20, x0
	str	x20, [x19, 29888]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1378:
	.cfi_restore_state
	mov	x0, 131071
	cmp	x22, x0
	bhi	.L1356
	mov	x0, x22
	b	.L1341
	.p2align 2,,3
.L1377:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1356:
	.cfi_restore_state
	mov	x0, 131072
	b	.L1340
	.p2align 2,,3
.L1349:
	str	wzr, [x27, 13820]
	b	.L1348
	.p2align 2,,3
.L1380:
	bl	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	b	.L1352
	.p2align 2,,3
.L1379:
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	bl	ZSTD_decompressSequencesLong_default.constprop.0
	b	.L1352
	.cfi_endproc
.LFE4563:
	.size	ZSTD_decompressBlock_deprecated, .-ZSTD_decompressBlock_deprecated
	.align	2
	.p2align 4,,11
	.global	ZSTD_decompressBlock
	.type	ZSTD_decompressBlock, %function
ZSTD_decompressBlock:
.LFB4564:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	cmp	x2, 0
	mov	x29, sp
	str	x27, [sp, 80]
	.cfi_offset 27, -32
	add	x27, x0, 16384
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	mov	x19, x0
	mov	x20, x1
	ldr	x0, [x0, 29888]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x2
	stp	x23, x24, [sp, 48]
	mov	x21, x4
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	mov	x23, x3
	str	wzr, [x27, 13792]
	ccmp	x1, x0, 4, ne
	beq	.L1382
	ldr	x1, [x19, 29896]
	str	x20, [x19, 29888]
	str	x20, [x19, 29896]
	sub	x1, x0, x1
	str	x0, [x19, 29912]
	sub	x0, x20, x1
	str	x0, [x19, 29904]
.L1382:
	mov	x0, -72
	cmp	x21, 131072
	bhi	.L1381
	mov	x4, x22
	mov	x3, x20
	mov	x2, x21
	mov	x1, x23
	mov	x0, x19
	mov	w5, 0
	bl	ZSTD_decodeLiteralsBlock
	cmn	x0, #120
	bhi	.L1381
	ldr	w1, [x27, 13792]
	add	x23, x23, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	sub	x21, x21, x0
	cbz	w1, .L1424
	ldr	w0, [x27, 13560]
	cmp	x0, x22
	csel	x0, x0, x22, ls
.L1386:
	mov	x25, x20
	cbz	x0, .L1387
.L1385:
	add	x25, x20, x0
.L1387:
	ldr	x26, [x19, 29904]
	mov	x3, x21
	ldr	w24, [x27, 13820]
	mov	x2, x23
	add	x1, sp, 108
	mov	x0, x19
	bl	ZSTD_decodeSeqHeaders
	cmn	x0, #120
	bhi	.L1423
	cmp	x20, 0
	ccmp	x22, 0, 4, ne
	bne	.L1389
	ldr	w1, [sp, 108]
	cmp	w1, 0
	ble	.L1389
.L1390:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x0, -70
.L1381:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1389:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x1, -1048577
	cmp	x20, x1
	bhi	.L1390
	sub	x25, x25, x26
	cmp	w24, 0
	add	x3, x23, x0
	sub	x4, x21, x0
	ldr	w5, [sp, 108]
	mov	x0, 16777216
	ccmp	x25, x0, 0, eq
	bls	.L1391
	cmp	w5, 8
	ble	.L1394
	ldr	x0, [x19, 16]
	mov	w1, 1
	ldr	w7, [x0, 4]
	lsl	w1, w1, w7
	cbz	w1, .L1394
	sub	w1, w1, #1
	add	x6, x0, 18
	add	x0, x0, 10
	mov	w2, 0
	add	x1, x6, w1, uxtw 3
	.p2align 3,,7
.L1396:
	ldrb	w6, [x0], 8
	cmp	w6, 22
	cinc	w2, w2, hi
	cmp	x0, x1
	bne	.L1396
	mov	w0, 8
	sub	w0, w0, w7
	lsl	w2, w2, w0
	cmp	w2, 6
	cset	w24, hi
	.p2align 3,,7
.L1391:
	str	wzr, [x27, 13820]
	cbnz	w24, .L1425
.L1393:
	ldr	w0, [x27, 13984]
	mov	x2, x22
	mov	x1, x20
	cmp	w0, 2
	mov	x0, x19
	beq	.L1426
	bl	ZSTD_decompressSequences_default.constprop.0
.L1397:
	cmn	x0, #120
	bhi	.L1423
	ldp	x25, x26, [sp, 64]
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	add	x20, x20, x0
	str	x20, [x19, 29888]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1424:
	.cfi_restore_state
	mov	x0, 131071
	cmp	x22, x0
	bhi	.L1402
	mov	x0, x22
	b	.L1386
	.p2align 2,,3
.L1423:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 25
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1402:
	.cfi_restore_state
	mov	x0, 131072
	b	.L1385
	.p2align 2,,3
.L1394:
	str	wzr, [x27, 13820]
	b	.L1393
	.p2align 2,,3
.L1426:
	bl	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	b	.L1397
	.p2align 2,,3
.L1425:
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	bl	ZSTD_decompressSequencesLong_default.constprop.0
	b	.L1397
	.cfi_endproc
.LFE4564:
	.size	ZSTD_decompressBlock, .-ZSTD_decompressBlock
	.set	dec32table.0,dec32table.2
	.set	dec64table.1,dec64table.3
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.xword	65504
	.xword	-32
	.section	.rodata
	.align	4
	.set	.LANCHOR0,. + 0
	.type	dec64table.3, %object
	.size	dec64table.3, 32
dec64table.3:
	.word	8
	.word	8
	.word	8
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.type	dec32table.2, %object
	.size	dec32table.2, 32
dec32table.2:
	.word	0
	.word	1
	.word	2
	.word	1
	.word	4
	.word	4
	.word	4
	.word	4
	.type	BIT_mask, %object
	.size	BIT_mask, 128
BIT_mask:
	.word	0
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	65535
	.word	131071
	.word	262143
	.word	524287
	.word	1048575
	.word	2097151
	.word	4194303
	.word	8388607
	.word	16777215
	.word	33554431
	.word	67108863
	.word	134217727
	.word	268435455
	.word	536870911
	.word	1073741823
	.word	2147483647
	.type	zeroFilled.4, %object
	.size	zeroFilled.4, 8
zeroFilled.4:
	.zero	8
	.zero	8
	.type	LL_base, %object
	.size	LL_base, 144
LL_base:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	18
	.word	20
	.word	22
	.word	24
	.word	28
	.word	32
	.word	40
	.word	48
	.word	64
	.word	128
	.word	256
	.word	512
	.word	1024
	.word	2048
	.word	4096
	.word	8192
	.word	16384
	.word	32768
	.word	65536
	.type	LL_bits, %object
	.size	LL_bits, 36
LL_bits:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\001\001\001\001\002\002\003\003\004\006\007\b\t\n\013\f\r\016"
	.ascii	"\017\020"
	.zero	12
	.type	LL_defaultDTable, %object
	.size	LL_defaultDTable, 520
LL_defaultDTable:
	.hword	1
	.byte	1
	.byte	1
	.word	6
	.hword	0
	.byte	0
	.byte	4
	.word	0
	.hword	16
	.byte	0
	.byte	4
	.word	0
	.hword	32
	.byte	0
	.byte	5
	.word	1
	.hword	0
	.byte	0
	.byte	5
	.word	3
	.hword	0
	.byte	0
	.byte	5
	.word	4
	.hword	0
	.byte	0
	.byte	5
	.word	6
	.hword	0
	.byte	0
	.byte	5
	.word	7
	.hword	0
	.byte	0
	.byte	5
	.word	9
	.hword	0
	.byte	0
	.byte	5
	.word	10
	.hword	0
	.byte	0
	.byte	5
	.word	12
	.hword	0
	.byte	0
	.byte	6
	.word	14
	.hword	0
	.byte	1
	.byte	5
	.word	16
	.hword	0
	.byte	1
	.byte	5
	.word	20
	.hword	0
	.byte	1
	.byte	5
	.word	22
	.hword	0
	.byte	2
	.byte	5
	.word	28
	.hword	0
	.byte	3
	.byte	5
	.word	32
	.hword	0
	.byte	4
	.byte	5
	.word	48
	.hword	32
	.byte	6
	.byte	5
	.word	64
	.hword	0
	.byte	7
	.byte	5
	.word	128
	.hword	0
	.byte	8
	.byte	6
	.word	256
	.hword	0
	.byte	10
	.byte	6
	.word	1024
	.hword	0
	.byte	12
	.byte	6
	.word	4096
	.hword	32
	.byte	0
	.byte	4
	.word	0
	.hword	0
	.byte	0
	.byte	4
	.word	1
	.hword	0
	.byte	0
	.byte	5
	.word	2
	.hword	32
	.byte	0
	.byte	5
	.word	4
	.hword	0
	.byte	0
	.byte	5
	.word	5
	.hword	32
	.byte	0
	.byte	5
	.word	7
	.hword	0
	.byte	0
	.byte	5
	.word	8
	.hword	32
	.byte	0
	.byte	5
	.word	10
	.hword	0
	.byte	0
	.byte	5
	.word	11
	.hword	0
	.byte	0
	.byte	6
	.word	13
	.hword	32
	.byte	1
	.byte	5
	.word	16
	.hword	0
	.byte	1
	.byte	5
	.word	18
	.hword	32
	.byte	1
	.byte	5
	.word	22
	.hword	0
	.byte	2
	.byte	5
	.word	24
	.hword	32
	.byte	3
	.byte	5
	.word	32
	.hword	0
	.byte	3
	.byte	5
	.word	40
	.hword	0
	.byte	6
	.byte	4
	.word	64
	.hword	16
	.byte	6
	.byte	4
	.word	64
	.hword	32
	.byte	7
	.byte	5
	.word	128
	.hword	0
	.byte	9
	.byte	6
	.word	512
	.hword	0
	.byte	11
	.byte	6
	.word	2048
	.hword	48
	.byte	0
	.byte	4
	.word	0
	.hword	16
	.byte	0
	.byte	4
	.word	1
	.hword	32
	.byte	0
	.byte	5
	.word	2
	.hword	32
	.byte	0
	.byte	5
	.word	3
	.hword	32
	.byte	0
	.byte	5
	.word	5
	.hword	32
	.byte	0
	.byte	5
	.word	6
	.hword	32
	.byte	0
	.byte	5
	.word	8
	.hword	32
	.byte	0
	.byte	5
	.word	9
	.hword	32
	.byte	0
	.byte	5
	.word	11
	.hword	32
	.byte	0
	.byte	5
	.word	12
	.hword	0
	.byte	0
	.byte	6
	.word	15
	.hword	32
	.byte	1
	.byte	5
	.word	18
	.hword	32
	.byte	1
	.byte	5
	.word	20
	.hword	32
	.byte	2
	.byte	5
	.word	24
	.hword	32
	.byte	2
	.byte	5
	.word	28
	.hword	32
	.byte	3
	.byte	5
	.word	40
	.hword	32
	.byte	4
	.byte	5
	.word	48
	.hword	0
	.byte	16
	.byte	6
	.word	65536
	.hword	0
	.byte	15
	.byte	6
	.word	32768
	.hword	0
	.byte	14
	.byte	6
	.word	16384
	.hword	0
	.byte	13
	.byte	6
	.word	8192
	.zero	8
	.type	OF_base, %object
	.size	OF_base, 128
OF_base:
	.word	0
	.word	1
	.word	1
	.word	5
	.word	13
	.word	29
	.word	61
	.word	125
	.word	253
	.word	509
	.word	1021
	.word	2045
	.word	4093
	.word	8189
	.word	16381
	.word	32765
	.word	65533
	.word	131069
	.word	262141
	.word	524285
	.word	1048573
	.word	2097149
	.word	4194301
	.word	8388605
	.word	16777213
	.word	33554429
	.word	67108861
	.word	134217725
	.word	268435453
	.word	536870909
	.word	1073741821
	.word	2147483645
	.type	OF_defaultDTable, %object
	.size	OF_defaultDTable, 264
OF_defaultDTable:
	.hword	1
	.byte	1
	.byte	1
	.word	5
	.hword	0
	.byte	0
	.byte	5
	.word	0
	.hword	0
	.byte	6
	.byte	4
	.word	61
	.hword	0
	.byte	9
	.byte	5
	.word	509
	.hword	0
	.byte	15
	.byte	5
	.word	32765
	.hword	0
	.byte	21
	.byte	5
	.word	2097149
	.hword	0
	.byte	3
	.byte	5
	.word	5
	.hword	0
	.byte	7
	.byte	4
	.word	125
	.hword	0
	.byte	12
	.byte	5
	.word	4093
	.hword	0
	.byte	18
	.byte	5
	.word	262141
	.hword	0
	.byte	23
	.byte	5
	.word	8388605
	.hword	0
	.byte	5
	.byte	5
	.word	29
	.hword	0
	.byte	8
	.byte	4
	.word	253
	.hword	0
	.byte	14
	.byte	5
	.word	16381
	.hword	0
	.byte	20
	.byte	5
	.word	1048573
	.hword	0
	.byte	2
	.byte	5
	.word	1
	.hword	16
	.byte	7
	.byte	4
	.word	125
	.hword	0
	.byte	11
	.byte	5
	.word	2045
	.hword	0
	.byte	17
	.byte	5
	.word	131069
	.hword	0
	.byte	22
	.byte	5
	.word	4194301
	.hword	0
	.byte	4
	.byte	5
	.word	13
	.hword	16
	.byte	8
	.byte	4
	.word	253
	.hword	0
	.byte	13
	.byte	5
	.word	8189
	.hword	0
	.byte	19
	.byte	5
	.word	524285
	.hword	0
	.byte	1
	.byte	5
	.word	1
	.hword	16
	.byte	6
	.byte	4
	.word	61
	.hword	0
	.byte	10
	.byte	5
	.word	1021
	.hword	0
	.byte	16
	.byte	5
	.word	65533
	.hword	0
	.byte	28
	.byte	5
	.word	268435453
	.hword	0
	.byte	27
	.byte	5
	.word	134217725
	.hword	0
	.byte	26
	.byte	5
	.word	67108861
	.hword	0
	.byte	25
	.byte	5
	.word	33554429
	.hword	0
	.byte	24
	.byte	5
	.word	16777213
	.zero	8
	.type	OF_bits, %object
	.size	OF_bits, 32
OF_bits:
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\032\033\034\035\036\037"
	.type	ML_base, %object
	.size	ML_base, 212
ML_base:
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	26
	.word	27
	.word	28
	.word	29
	.word	30
	.word	31
	.word	32
	.word	33
	.word	34
	.word	35
	.word	37
	.word	39
	.word	41
	.word	43
	.word	47
	.word	51
	.word	59
	.word	67
	.word	83
	.word	99
	.word	131
	.word	259
	.word	515
	.word	1027
	.word	2051
	.word	4099
	.word	8195
	.word	16387
	.word	32771
	.word	65539
	.zero	12
	.type	ML_defaultDTable, %object
	.size	ML_defaultDTable, 520
ML_defaultDTable:
	.hword	1
	.byte	1
	.byte	1
	.word	6
	.hword	0
	.byte	0
	.byte	6
	.word	3
	.hword	0
	.byte	0
	.byte	4
	.word	4
	.hword	32
	.byte	0
	.byte	5
	.word	5
	.hword	0
	.byte	0
	.byte	5
	.word	6
	.hword	0
	.byte	0
	.byte	5
	.word	8
	.hword	0
	.byte	0
	.byte	5
	.word	9
	.hword	0
	.byte	0
	.byte	5
	.word	11
	.hword	0
	.byte	0
	.byte	6
	.word	13
	.hword	0
	.byte	0
	.byte	6
	.word	16
	.hword	0
	.byte	0
	.byte	6
	.word	19
	.hword	0
	.byte	0
	.byte	6
	.word	22
	.hword	0
	.byte	0
	.byte	6
	.word	25
	.hword	0
	.byte	0
	.byte	6
	.word	28
	.hword	0
	.byte	0
	.byte	6
	.word	31
	.hword	0
	.byte	0
	.byte	6
	.word	34
	.hword	0
	.byte	1
	.byte	6
	.word	37
	.hword	0
	.byte	1
	.byte	6
	.word	41
	.hword	0
	.byte	2
	.byte	6
	.word	47
	.hword	0
	.byte	3
	.byte	6
	.word	59
	.hword	0
	.byte	4
	.byte	6
	.word	83
	.hword	0
	.byte	7
	.byte	6
	.word	131
	.hword	0
	.byte	9
	.byte	6
	.word	515
	.hword	16
	.byte	0
	.byte	4
	.word	4
	.hword	0
	.byte	0
	.byte	4
	.word	5
	.hword	32
	.byte	0
	.byte	5
	.word	6
	.hword	0
	.byte	0
	.byte	5
	.word	7
	.hword	32
	.byte	0
	.byte	5
	.word	9
	.hword	0
	.byte	0
	.byte	5
	.word	10
	.hword	0
	.byte	0
	.byte	6
	.word	12
	.hword	0
	.byte	0
	.byte	6
	.word	15
	.hword	0
	.byte	0
	.byte	6
	.word	18
	.hword	0
	.byte	0
	.byte	6
	.word	21
	.hword	0
	.byte	0
	.byte	6
	.word	24
	.hword	0
	.byte	0
	.byte	6
	.word	27
	.hword	0
	.byte	0
	.byte	6
	.word	30
	.hword	0
	.byte	0
	.byte	6
	.word	33
	.hword	0
	.byte	1
	.byte	6
	.word	35
	.hword	0
	.byte	1
	.byte	6
	.word	39
	.hword	0
	.byte	2
	.byte	6
	.word	43
	.hword	0
	.byte	3
	.byte	6
	.word	51
	.hword	0
	.byte	4
	.byte	6
	.word	67
	.hword	0
	.byte	5
	.byte	6
	.word	99
	.hword	0
	.byte	8
	.byte	6
	.word	259
	.hword	32
	.byte	0
	.byte	4
	.word	4
	.hword	48
	.byte	0
	.byte	4
	.word	4
	.hword	16
	.byte	0
	.byte	4
	.word	5
	.hword	32
	.byte	0
	.byte	5
	.word	7
	.hword	32
	.byte	0
	.byte	5
	.word	8
	.hword	32
	.byte	0
	.byte	5
	.word	10
	.hword	32
	.byte	0
	.byte	5
	.word	11
	.hword	0
	.byte	0
	.byte	6
	.word	14
	.hword	0
	.byte	0
	.byte	6
	.word	17
	.hword	0
	.byte	0
	.byte	6
	.word	20
	.hword	0
	.byte	0
	.byte	6
	.word	23
	.hword	0
	.byte	0
	.byte	6
	.word	26
	.hword	0
	.byte	0
	.byte	6
	.word	29
	.hword	0
	.byte	0
	.byte	6
	.word	32
	.hword	0
	.byte	16
	.byte	6
	.word	65539
	.hword	0
	.byte	15
	.byte	6
	.word	32771
	.hword	0
	.byte	14
	.byte	6
	.word	16387
	.hword	0
	.byte	13
	.byte	6
	.word	8195
	.hword	0
	.byte	12
	.byte	6
	.word	4099
	.hword	0
	.byte	11
	.byte	6
	.word	2051
	.hword	0
	.byte	10
	.byte	6
	.word	1027
	.zero	8
	.type	ML_bits, %object
	.size	ML_bits, 53
ML_bits:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\001\001\001\001\002\002\003\003\004\004\005\007\b\t\n\013\f"
	.ascii	"\r\016\017\020"
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
