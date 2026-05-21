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
	.type	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0, %function
ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0:
.LFB4572:
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
	ble	.L436
	mov	x7, x2
	add	x0, x1, x2
	str	x0, [sp, 120]
.L322:
	ldr	x8, [x19, 30120]
	str	x8, [sp, 272]
	ldr	x27, [x19, 29896]
	ldr	x6, [x19, 29904]
	ldr	x24, [x19, 29912]
	ldr	x25, [x19, 30360]
	cbz	w21, .L437
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
	cbz	x4, .L324
	add	x0, x23, x4
	add	x1, x23, 8
	str	x1, [sp, 112]
	stp	x23, x1, [sp, 376]
	ldrb	w0, [x0, -1]
	cmp	x4, 7
	bls	.L325
	sub	x1, x4, #8
	add	x2, x23, x1
	str	x2, [sp, 368]
	ldr	x1, [x23, x1]
	str	x1, [sp, 352]
	cbz	w0, .L324
	clz	w0, w0
	sub	w0, w0, #23
	str	w0, [sp, 360]
	cmn	x4, #120
	bls	.L326
	.p2align 3,,7
.L324:
	mov	x3, -20
	b	.L321
	.p2align 2,,3
.L437:
	mov	x20, x26
	add	x28, x19, 16384
.L323:
	ldr	w0, [x28, 13984]
	cmp	w0, 2
	beq	.L517
	sub	x2, x25, x8
	cmp	x2, x7
	bhi	.L434
.L525:
	cbz	x20, .L435
	mov	x0, x20
	mov	x1, x8
	add	x20, x20, x2
	bl	memcpy
.L435:
	sub	x3, x20, x26
.L321:
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
.L436:
	.cfi_restore_state
	mov	x7, 0
	str	x1, [sp, 120]
	b	.L322
	.p2align 2,,3
.L325:
	ldrb	w1, [x23]
	str	x1, [sp, 352]
	str	x23, [sp, 368]
	cmp	x4, 5
	beq	.L327
	bhi	.L328
	cmp	x4, 3
	beq	.L329
	cmp	x4, 4
	bne	.L518
.L330:
	ldrb	w2, [x23, 3]
	add	x1, x1, x2, lsl 24
.L329:
	ldrb	w2, [x23, 2]
	add	x1, x1, x2, lsl 16
	ldrb	w2, [x23, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 352]
.L332:
	cbz	w0, .L324
	mov	w1, 8
	sub	w1, w1, w4
	clz	w0, w0
	add	w0, w0, w1, lsl 3
	sub	w0, w0, #23
	str	w0, [sp, 360]
.L326:
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
.L373:
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
	bls	.L334
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
.L335:
	stp	x22, x2, [sp, 440]
	cbnz	w7, .L519
.L340:
	cmp	w0, 30
	bhi	.L520
.L341:
	cbnz	w4, .L521
.L345:
	cmp	w24, 1
	beq	.L347
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
	bhi	.L522
	ldr	x0, [sp, 112]
	ldr	x1, [sp, 368]
	cmp	x1, x0
	bcs	.L523
	cmp	x10, x1
	beq	.L347
	lsr	w0, w4, 3
	lsr	w2, w4, 3
	sub	x0, x1, x0
	cmp	x10, x0
	bls	.L351
	sub	x0, x1, x10
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L351:
	ldr	x1, [x0]
	sub	w2, w4, w2, lsl 3
	str	x1, [sp, 352]
	str	w2, [sp, 360]
	str	x0, [sp, 368]
.L347:
	add	x1, x8, x9
	cmp	x1, x16
	bhi	.L352
	sub	x2, x9, #32
	add	x3, x9, x6
	cmp	x21, x1
	add	x2, x8, x2
	add	x7, x20, x3
	add	x4, x20, x9
	ccmp	x2, x7, 0, cs
	sub	x0, x4, x22
	bcc	.L353
	ldr	q0, [x8]
	str	q0, [x20]
	cmp	x9, 16
	bhi	.L354
.L358:
	str	x1, [sp, 272]
	sub	x1, x4, x27
	cmp	x22, x1
	bls	.L356
	ldr	x1, [sp, 128]
	sub	x1, x4, x1
	cmp	x22, x1
	bhi	.L324
	sub	x1, x0, x27
	add	x1, x26, x1
	add	x2, x1, x6
	cmp	x26, x2
	bcs	.L524
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
.L356:
	cmp	x22, 15
	bls	.L362
	ldr	q0, [x0], 16
	str	q0, [x4], 16
	cmp	x6, 16
	ble	.L357
	.p2align 3,,7
.L365:
	ldr	q0, [x0]
	add	x4, x4, 32
	add	x0, x0, 32
	str	q0, [x4, -32]
	ldr	q0, [x0, -16]
	str	q0, [x4, -16]
	cmp	x7, x4
	bhi	.L365
.L357:
	cmn	x3, #120
	bhi	.L321
	add	x20, x20, x3
	subs	w24, w24, #1
	beq	.L513
	ldr	x8, [sp, 272]
	ldr	x16, [x12, 30360]
	b	.L373
	.p2align 2,,3
.L328:
	cmp	x4, 6
	beq	.L333
	ldrb	w2, [x23, 6]
	add	x1, x1, x2, lsl 48
.L333:
	ldrb	w2, [x23, 5]
	add	x1, x1, x2, lsl 40
.L327:
	ldrb	w2, [x23, 4]
	add	x1, x1, x2, lsl 32
	b	.L330
	.p2align 2,,3
.L518:
	cmp	x4, 2
	bne	.L332
	ldrb	w2, [x23, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 352]
	b	.L332
	.p2align 2,,3
.L517:
	sub	x2, x25, x8
	cmp	x7, x2
	bcc	.L434
	cbz	x20, .L433
	mov	x0, x20
	mov	x1, x8
	add	x20, x20, x2
	bl	memmove
.L433:
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
	bls	.L525
.L434:
	mov	x3, -70
	b	.L321
	.p2align 2,,3
.L520:
	ldr	w2, [sp, 360]
	cmp	w2, 64
	bhi	.L526
	ldr	x0, [sp, 112]
	ldr	x7, [sp, 368]
	cmp	x7, x0
	bcs	.L527
	cmp	x10, x7
	beq	.L341
	lsr	w0, w2, 3
	lsr	w17, w2, 3
	sub	x0, x7, x0
	cmp	x10, x0
	bls	.L344
	sub	x0, x7, x10
	mov	w17, w0
	sub	x0, x7, w0, uxtw
.L344:
	ldr	x7, [x0]
	sub	w17, w2, w17, lsl 3
	str	x7, [sp, 352]
	str	w17, [sp, 360]
	str	x0, [sp, 368]
	cbz	w4, .L345
	.p2align 3,,7
.L521:
	ldr	x0, [sp, 352]
	neg	w7, w4
	ldr	w2, [sp, 360]
	add	w4, w4, w2
	str	w4, [sp, 360]
	lsl	x0, x0, x2
	lsr	x0, x0, x7
	add	x9, x9, x0
	b	.L345
	.p2align 2,,3
.L334:
	cmp	w18, 0
	cset	w17, eq
	cmp	w2, 1
	beq	.L336
	cmp	w18, 0
	add	x17, x17, 10
	ldr	x5, [sp, 136]
	cset	x2, ne
	add	x2, x2, 10
	ldr	x22, [x5, x17, lsl 3]
	ldr	x2, [x5, x2, lsl 3]
	stp	x22, x2, [sp, 440]
	cbz	w7, .L340
.L519:
	ldr	x18, [sp, 352]
	neg	w17, w7
	ldr	w2, [sp, 360]
	add	w7, w7, w2
	str	w7, [sp, 360]
	lsl	x18, x18, x2
	lsr	x18, x18, x17
	add	x6, x6, x18
	b	.L340
	.p2align 2,,3
.L524:
	mov	x2, x6
	mov	x0, x4
	stp	x12, x10, [sp, 144]
	str	x3, [sp, 160]
	bl	memmove
	ldp	x12, x10, [sp, 144]
	ldr	x3, [sp, 160]
	b	.L357
	.p2align 2,,3
.L353:
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
	b	.L357
	.p2align 2,,3
.L523:
	lsr	w0, w4, 3
	and	w4, w4, 7
	sub	x0, x1, x0
	str	x0, [sp, 368]
	str	w4, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L347
	.p2align 2,,3
.L354:
	ldr	q0, [x8, 16]
	sub	x9, x9, #16
	str	q0, [x20, 16]
	cmp	x9, 16
	ble	.L358
	add	x8, x8, 32
	add	x2, x20, 32
	.p2align 3,,7
.L359:
	ldr	q0, [x8]
	add	x2, x2, 32
	add	x8, x8, 32
	str	q0, [x2, -32]
	ldr	q0, [x8, -16]
	str	q0, [x2, -16]
	cmp	x4, x2
	bhi	.L359
	b	.L358
	.p2align 2,,3
.L362:
	cmp	x22, 7
	bls	.L528
	ldr	d0, [x0]
	str	d0, [x4]
.L367:
	cmp	x6, 8
	bls	.L357
	sub	x1, x4, x0
	cmp	x1, 15
	bgt	.L368
	add	x0, x0, 8
	add	x4, x4, 8
	.p2align 3,,7
.L369:
	ldr	d0, [x0], 8
	str	d0, [x4], 8
	cmp	x7, x4
	bhi	.L369
	b	.L357
	.p2align 2,,3
.L522:
	ldr	x0, [sp, 216]
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L347
.L352:
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
	ble	.L324
	ldr	x1, [sp, 272]
	ldr	x0, [x19, 30360]
	subs	x2, x0, x1
	bne	.L529
.L374:
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
	bhi	.L375
	mov	x8, 30208
	add	x0, x19, x8
	ldr	q0, [x0, 164]
	str	q0, [x20]
	cmp	x9, 16
	bhi	.L376
.L380:
	sub	x0, x4, x27
	str	x1, [sp, 272]
	cmp	x22, x0
	bls	.L378
	sub	x0, x4, x6
	cmp	x22, x0
	bhi	.L324
	sub	x1, x2, x27
	add	x1, x24, x1
	add	x0, x1, x5
	cmp	x24, x0
	bcs	.L530
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
.L378:
	cmp	x22, 15
	bls	.L384
	mov	x1, x2
	mov	x0, x4
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x5, 16
	ble	.L379
	.p2align 3,,7
.L387:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x11, x0
	bhi	.L387
.L379:
	cmn	x3, #120
	bhi	.L321
	add	x20, x20, x3
	subs	w21, w21, #1
	beq	.L372
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
.L429:
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
	bls	.L393
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
.L394:
	stp	x22, x1, [sp, 440]
	cbnz	w15, .L531
.L399:
	cmp	w0, 30
	bhi	.L532
.L400:
	cbnz	w11, .L533
.L404:
	cmp	w19, 1
	beq	.L406
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
	bhi	.L534
	ldr	x0, [sp, 112]
	ldr	x1, [sp, 368]
	cmp	x1, x0
	bcs	.L535
	ldr	x4, [sp, 144]
	cmp	x4, x1
	beq	.L406
	lsr	w0, w11, 3
	lsr	w3, w11, 3
	sub	x0, x1, x0
	cmp	x4, x0
	bls	.L410
	sub	x0, x1, x4
	mov	w3, w0
	sub	x0, x1, w0, uxtw
.L410:
	ldr	x1, [x0]
	sub	w3, w11, w3, lsl 3
	str	x1, [sp, 352]
	str	w3, [sp, 360]
	str	x0, [sp, 368]
.L406:
	ldr	x1, [sp, 272]
	add	x7, x25, x2
	sub	x0, x7, x22
	add	x3, x2, x6
	add	x15, x1, x2
	add	x11, x25, x3
	cmp	x20, x15
	prfm	PLDL1KEEP, [x0]
	ccmp	x28, x11, 0, cs
	bcc	.L411
	ldr	q0, [x1]
	str	q0, [x25]
	cmp	x2, 16
	bhi	.L412
.L416:
	sub	x1, x7, x26
	str	x15, [sp, 272]
	cmp	x22, x1
	bls	.L414
	ldr	x1, [sp, 128]
	sub	x1, x7, x1
	cmp	x22, x1
	bhi	.L324
	ldr	x4, [sp, 136]
	sub	x1, x0, x26
	add	x1, x4, x1
	add	x2, x1, x6
	cmp	x4, x2
	bcs	.L536
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
.L414:
	cmp	x22, 15
	bls	.L420
	ldr	q0, [x0], 16
	str	q0, [x7], 16
	cmp	x6, 16
	ble	.L415
	.p2align 3,,7
.L423:
	ldr	q0, [x0]
	add	x7, x7, 32
	add	x0, x0, 32
	str	q0, [x7, -32]
	ldr	q0, [x0, -16]
	str	q0, [x7, -16]
	cmp	x11, x7
	bhi	.L423
.L415:
	cmn	x3, #120
	bhi	.L321
	add	x25, x25, x3
	subs	w19, w19, #1
	bne	.L429
	ldp	x19, x26, [sp, 200]
	mov	x0, x25
	ldp	x28, x18, [sp, 216]
	mov	x25, x20
	ldr	x23, [sp, 144]
	mov	x20, x0
.L372:
	ldr	x0, [sp, 368]
	cmp	x23, x0
	bne	.L324
	ldr	w0, [sp, 360]
	cmp	w0, 64
	bne	.L324
	add	x0, sp, 640
	ldr	x8, [sp, 272]
	ldr	q0, [x0, -200]
	ldr	x0, [sp, 120]
	xtn	v0.2s, v0.2d
	sub	x7, x0, x20
	ldr	x0, [sp, 456]
	str	d0, [x18, 60]
	str	w0, [x28, 10308]
	b	.L323
	.p2align 2,,3
.L336:
	ldr	x30, [sp, 352]
	add	w17, w17, w22
	ldr	w18, [sp, 360]
	ldr	x2, [sp, 440]
	lsl	x22, x30, x18
	add	w18, w18, 1
	add	x17, x17, x22, lsr 63
	str	w18, [sp, 360]
	cmp	x17, 3
	beq	.L537
	add	x5, sp, 464
	add	x18, x5, x17, lsl 3
	ldr	x22, [x18, -24]
	cmp	x22, 0
	cset	x18, eq
	sub	x22, x22, x18
	cmp	x17, 1
	beq	.L335
.L338:
	ldr	x17, [sp, 448]
	str	x17, [sp, 456]
	b	.L335
.L528:
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
	b	.L367
.L529:
	ldr	x0, [sp, 120]
	str	x5, [sp, 136]
	mov	x3, -70
	sub	x0, x0, x20
	cmp	x2, x0
	bhi	.L321
	mov	x0, x20
	sub	x9, x9, x2
	add	x20, x20, x2
	bl	ZSTD_safecopyDstBeforeSrc
	ldp	x6, x5, [sp, 128]
	b	.L374
.L532:
	ldr	w1, [sp, 360]
	cmp	w1, 64
	bhi	.L538
	ldr	x0, [sp, 112]
	ldr	x15, [sp, 368]
	cmp	x15, x0
	bcs	.L539
	ldr	x4, [sp, 144]
	cmp	x4, x15
	beq	.L400
	lsr	w0, w1, 3
	lsr	w17, w1, 3
	sub	x0, x15, x0
	cmp	x4, x0
	bls	.L403
	sub	x0, x15, x4
	mov	w17, w0
	sub	x0, x15, w0, uxtw
.L403:
	ldr	x15, [x0]
	sub	w17, w1, w17, lsl 3
	str	x15, [sp, 352]
	str	w17, [sp, 360]
	str	x0, [sp, 368]
	cbz	w11, .L404
	.p2align 3,,7
.L533:
	ldr	x0, [sp, 352]
	neg	w1, w11
	ldr	w15, [sp, 360]
	add	w11, w11, w15
	str	w11, [sp, 360]
	lsl	x0, x0, x15
	lsr	x0, x0, x1
	add	x2, x2, x0
	b	.L404
.L537:
	subs	x22, x2, #1
	cset	x17, eq
	sub	x22, x22, x17
	b	.L338
	.p2align 2,,3
.L393:
	cmp	w18, 0
	cset	w17, eq
	cmp	w1, 1
	beq	.L395
	cmp	w18, 0
	add	x17, x17, 10
	ldr	x4, [sp, 184]
	cset	x1, ne
	add	x1, x1, 10
	ldr	x22, [x4, x17, lsl 3]
	ldr	x1, [x4, x1, lsl 3]
	stp	x22, x1, [sp, 440]
	cbz	w15, .L399
.L531:
	ldr	x18, [sp, 352]
	neg	w17, w15
	ldr	w1, [sp, 360]
	add	w15, w15, w1
	str	w15, [sp, 360]
	lsl	x1, x18, x1
	lsr	x1, x1, x17
	add	x6, x6, x1
	b	.L399
.L513:
	ldp	x26, x28, [sp, 192]
	mov	x25, x21
	ldr	x18, [sp, 208]
	mov	x19, x12
	mov	x23, x10
	b	.L372
.L536:
	mov	x2, x6
	mov	x0, x7
	str	x3, [sp, 152]
	bl	memmove
	ldr	x3, [sp, 152]
	b	.L415
.L411:
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
	b	.L415
.L535:
	lsr	w0, w11, 3
	and	w11, w11, 7
	sub	x0, x1, x0
	str	x0, [sp, 368]
	str	w11, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L406
.L412:
	ldr	q0, [x1, 16]
	sub	x2, x2, #16
	str	q0, [x25, 16]
	cmp	x2, 16
	ble	.L416
	add	x1, x1, 32
	add	x2, x25, 32
	.p2align 3,,7
.L417:
	ldr	q0, [x1]
	add	x2, x2, 32
	add	x1, x1, 32
	str	q0, [x2, -32]
	ldr	q0, [x1, -16]
	str	q0, [x2, -16]
	cmp	x7, x2
	bhi	.L417
	b	.L416
.L527:
	lsr	w0, w2, 3
	and	w2, w2, 7
	sub	x0, x7, x0
	str	x0, [sp, 368]
	str	w2, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L341
.L420:
	cmp	x22, 7
	bhi	.L424
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
.L425:
	cmp	x6, 8
	bls	.L415
	sub	x1, x7, x0
	cmp	x1, 15
	bgt	.L426
	add	x0, x0, 8
	add	x7, x7, 8
	.p2align 3,,7
.L427:
	ldr	d0, [x0], 8
	str	d0, [x7], 8
	cmp	x11, x7
	bhi	.L427
	b	.L415
.L368:
	ldr	q0, [x0, 8]
	str	q0, [x4, 8]
	cmp	x6, 24
	ble	.L357
	add	x4, x4, 24
	add	x0, x0, 24
	.p2align 3,,7
.L370:
	ldr	q0, [x0]
	add	x4, x4, 32
	add	x0, x0, 32
	str	q0, [x4, -32]
	ldr	q0, [x0, -16]
	str	q0, [x4, -16]
	cmp	x7, x4
	bhi	.L370
	b	.L357
.L534:
	ldr	x0, [sp, 232]
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L406
.L526:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L341
.L395:
	ldr	x30, [sp, 352]
	add	w17, w17, w22
	ldr	w18, [sp, 360]
	ldr	x1, [sp, 440]
	lsl	x22, x30, x18
	add	w18, w18, 1
	add	x17, x17, x22, lsr 63
	str	w18, [sp, 360]
	cmp	x17, 3
	beq	.L540
	add	x4, sp, 464
	add	x18, x4, x17, lsl 3
	ldr	x22, [x18, -24]
	cmp	x22, 0
	cset	x18, eq
	sub	x22, x22, x18
	cmp	x17, 1
	beq	.L394
.L397:
	ldr	x17, [sp, 448]
	str	x17, [sp, 456]
	b	.L394
.L424:
	ldr	d0, [x0]
	str	d0, [x7]
	b	.L425
.L530:
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
	b	.L379
.L539:
	lsr	w0, w1, 3
	and	w1, w1, 7
	sub	x0, x15, x0
	str	x0, [sp, 368]
	str	w1, [sp, 360]
	ldr	x0, [x0]
	str	x0, [sp, 352]
	b	.L400
.L375:
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
	b	.L379
.L540:
	subs	x22, x1, #1
	cset	x17, eq
	sub	x22, x22, x17
	b	.L397
.L376:
	ldr	q0, [x0, 180]
	sub	x9, x9, #16
	str	q0, [x20, 16]
	cmp	x9, 16
	ble	.L380
	mov	x7, 30404
	add	x0, x20, 32
	add	x7, x19, x7
.L381:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x4, x0
	bhi	.L381
	b	.L380
.L426:
	ldr	q0, [x0, 8]
	str	q0, [x7, 8]
	cmp	x6, 24
	ble	.L415
	add	x7, x7, 24
	add	x0, x0, 24
.L428:
	ldr	q0, [x0]
	add	x7, x7, 32
	add	x0, x0, 32
	str	q0, [x7, -32]
	ldr	q0, [x0, -16]
	str	q0, [x7, -16]
	cmp	x11, x7
	bhi	.L428
	b	.L415
.L384:
	cmp	x22, 7
	bhi	.L388
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
.L389:
	cmp	x5, 8
	bls	.L379
	sub	x0, x4, x2
	cmp	x0, 15
	bgt	.L390
	add	x1, x2, 8
	add	x0, x4, 8
.L391:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x11, x0
	bhi	.L391
	b	.L379
.L538:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 368]
	b	.L400
.L388:
	ldr	d0, [x2]
	str	d0, [x4]
	b	.L389
.L390:
	ldr	q0, [x2, 8]
	str	q0, [x4, 8]
	cmp	x5, 24
	ble	.L379
	add	x0, x4, 24
	add	x1, x2, 24
.L392:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x11, x0
	bhi	.L392
	b	.L379
	.cfi_endproc
.LFE4572:
	.size	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0, .-ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	.align	2
	.p2align 4,,11
	.type	ZSTD_decompressSequencesLong_default.constprop.0, %function
ZSTD_decompressSequencesLong_default.constprop.0:
.LFB4573:
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
	beq	.L849
	cmp	x2, 0
	add	x2, x1, x2
	csel	x0, x2, x1, gt
	str	x0, [sp, 136]
.L543:
	ldr	x0, [x20, 29904]
	str	x0, [sp, 192]
	ldr	x8, [x20, 30120]
	str	x8, [sp, 360]
	ldr	x0, [x20, 30360]
	str	x0, [sp, 128]
	ldr	x21, [x20, 29896]
	ldr	x28, [x20, 29912]
	cbz	w26, .L725
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
	cbz	x4, .L545
	add	x0, x22, x4
	add	x1, x22, 8
	str	x1, [sp, 144]
	str	x22, [sp, 536]
	str	x1, [sp, 544]
	ldrb	w0, [x0, -1]
	cmp	x4, 7
	bls	.L546
	sub	x1, x4, #8
	add	x2, x22, x1
	str	x2, [sp, 528]
	ldr	x1, [x22, x1]
	str	x1, [sp, 512]
	cbz	w0, .L545
	clz	w0, w0
	sub	w0, w0, #23
	str	w0, [sp, 520]
	cmn	x4, #120
	bls	.L547
	.p2align 3,,7
.L545:
	mov	x4, -20
.L871:
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
.L725:
	.cfi_restore_state
	mov	x9, x11
.L544:
	ldr	x0, [sp, 136]
	sub	x0, x0, x9
	cmp	w10, 2
	beq	.L850
	ldr	x1, [sp, 128]
	sub	x2, x1, x8
	cmp	x2, x0
	bhi	.L722
.L864:
	cbz	x9, .L723
	mov	x0, x9
	add	x9, x9, x2
	mov	x1, x8
	stp	x9, x11, [sp, 120]
	bl	memmove
	ldp	x9, x11, [sp, 120]
.L723:
	sub	x4, x9, x11
.L541:
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
.L849:
	.cfi_restore_state
	ldr	x0, [x0, 30352]
	str	x0, [sp, 136]
	b	.L543
	.p2align 2,,3
.L546:
	ldrb	w1, [x22]
	str	x1, [sp, 512]
	str	x22, [sp, 528]
	cmp	x4, 5
	beq	.L548
	bhi	.L549
	cmp	x4, 3
	beq	.L550
	cmp	x4, 4
	bne	.L851
.L551:
	ldrb	w2, [x22, 3]
	add	x1, x1, x2, lsl 24
.L550:
	ldrb	w2, [x22, 2]
	add	x1, x1, x2, lsl 16
	ldrb	w2, [x22, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 512]
.L553:
	cbz	w0, .L545
	mov	w1, 8
	sub	w1, w1, w4
	clz	w0, w0
	add	w0, w0, w1, lsl 3
	sub	w0, w0, #23
	str	w0, [sp, 520]
.L547:
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
	ble	.L555
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
.L571:
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
	bls	.L556
	neg	w18, w7
	lsl	x15, x16, x2
	add	w2, w2, w7
	mov	w30, 1
	lsr	x15, x15, x18
	add	x7, x20, x15
	ldr	x15, [sp, 600]
	ldr	x18, [sp, 608]
	str	x18, [sp, 616]
.L557:
	str	x7, [sp, 600]
	str	x15, [sp, 608]
	cbnz	w14, .L852
.L562:
	cmp	w0, 30
	bhi	.L853
.L563:
	cbnz	w13, .L854
.L566:
	cmp	w9, w26
	beq	.L567
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
	bhi	.L727
	ldr	x0, [sp, 144]
	cmp	x17, x0
	bcs	.L855
	cmp	x22, x17
	beq	.L728
	lsr	w3, w2, 3
	lsr	w0, w2, 3
	sub	x3, x17, x3
	cmp	x22, x3
	bls	.L729
	sub	x3, x17, x22
	mov	w0, w3
	sub	x17, x17, w3, uxtw
.L569:
	ldr	x16, [x17]
	mov	w24, 1
	sub	w2, w2, w0, lsl 3
	mov	w30, w24
	str	w24, [sp, 176]
	str	w24, [sp, 200]
.L567:
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
	bgt	.L571
	ldp	x8, x3, [sp, 224]
	ldp	x7, x0, [sp, 240]
	ldp	x12, x20, [sp, 256]
	ldr	x11, [sp, 272]
	ldp	x13, x25, [sp, 288]
	ldr	x23, [sp, 304]
	ldr	w10, [sp, 216]
	ldr	w26, [sp, 280]
	cbz	w24, .L731
	str	x17, [sp, 528]
.L572:
	cbz	w30, .L573
	str	w2, [sp, 520]
.L573:
	ldr	w0, [sp, 200]
	cbz	w0, .L574
	str	x16, [sp, 512]
.L574:
	ldr	w0, [sp, 176]
	cbz	w0, .L732
	str	x4, [sp, 552]
	str	x5, [sp, 568]
	str	x1, [sp, 584]
.L575:
	ldr	w12, [sp, 184]
	cmp	w26, w12
	ble	.L733
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
.L657:
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
	bls	.L577
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
.L578:
	str	x19, [sp, 600]
	str	x1, [sp, 608]
	cbnz	w5, .L856
.L583:
	cmp	w0, 30
	bhi	.L857
.L584:
	cbnz	w4, .L858
.L588:
	ldr	w0, [sp, 168]
	cmp	w23, w0
	beq	.L590
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
	bhi	.L859
	ldr	x0, [sp, 144]
	ldr	x1, [sp, 528]
	cmp	x1, x0
	bcs	.L860
	ldr	x3, [sp, 208]
	cmp	x3, x1
	beq	.L590
	lsr	w0, w4, 3
	lsr	w2, w4, 3
	sub	x0, x1, x0
	cmp	x3, x0
	bls	.L594
	sub	x0, x1, x3
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L594:
	ldr	x1, [x0]
	sub	w2, w4, w2, lsl 3
	str	x1, [sp, 512]
	str	w2, [sp, 520]
	str	x0, [sp, 528]
.L590:
	and	x27, x23, 7
	ubfiz	x13, x23, 1, 3
	add	x13, x13, x27
	lsl	x6, x13, 3
	ldr	x8, [x11, x13, lsl 3]
	add	x16, x7, x8
	cmp	w10, 2
	beq	.L861
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
	bcc	.L638
	ldr	q0, [x7]
	str	q0, [x21]
	cmp	x8, 16
	bhi	.L639
.L642:
	sub	x0, x24, x28
	str	x16, [sp, 360]
	cmp	x13, x0
	bls	.L641
	ldr	x0, [sp, 192]
	sub	x0, x24, x0
	cmp	x13, x0
	bhi	.L841
	sub	x1, x2, x28
	add	x1, x25, x1
	add	x0, x1, x5
	cmp	x25, x0
	bcs	.L862
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
.L641:
	cmp	x13, 15
	bls	.L646
	ldr	q0, [x2], 16
	str	q0, [x24], 16
	cmp	x5, 16
	ble	.L624
	.p2align 3,,7
.L648:
	ldr	q0, [x2]
	add	x24, x24, 32
	add	x2, x2, 32
	str	q0, [x24, -32]
	ldr	q0, [x2, -16]
	str	q0, [x24, -16]
	cmp	x6, x24
	bhi	.L648
.L624:
	cmn	x4, #120
	bhi	.L838
	add	x20, x9, x20
	add	x21, x21, x4
	cmp	x19, x20
	sub	x1, x20, x19
	csel	x0, x25, x28, hi
	add	x20, x22, x20
	add	x0, x0, x1
	prfm	PLDL1KEEP, [x0]
	prfm	PLDL1KEEP, [x0, 64]
.L619:
	add	x27, x27, x27, lsl 1
	ldr	w0, [sp, 176]
	add	w23, w23, 1
	str	x9, [x11, x27, lsl 3]
	str	x22, [x12, x27, lsl 3]
	str	x19, [x10, x27, lsl 3]
	cmp	w0, w23
	beq	.L863
	ldr	x7, [sp, 360]
	ldr	x4, [sp, 552]
	ldr	x5, [sp, 568]
	ldr	x1, [sp, 584]
	ldr	w10, [x26, 13984]
	b	.L657
	.p2align 2,,3
.L549:
	.cfi_restore 23
	.cfi_restore 24
	cmp	x4, 6
	beq	.L554
	ldrb	w2, [x22, 6]
	add	x1, x1, x2, lsl 48
.L554:
	ldrb	w2, [x22, 5]
	add	x1, x1, x2, lsl 40
.L548:
	ldrb	w2, [x22, 4]
	add	x1, x1, x2, lsl 32
	b	.L551
	.p2align 2,,3
.L851:
	cmp	x4, 2
	bne	.L553
	ldrb	w2, [x22, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 512]
	b	.L553
	.p2align 2,,3
.L850:
	ldr	x1, [sp, 128]
	sub	x2, x1, x8
	cmp	x2, x0
	bhi	.L722
	cbz	x9, .L721
	mov	x0, x9
	add	x9, x9, x2
	mov	x1, x8
	stp	x9, x11, [sp, 120]
	bl	memmove
	ldp	x9, x11, [sp, 120]
	ldr	x0, [sp, 136]
	sub	x0, x0, x9
.L721:
	add	x1, x20, 94208
	mov	x2, 30372
	add	x1, x1, 1700
	str	x1, [sp, 128]
	add	x8, x20, x2
	str	x8, [sp, 360]
	ldr	x1, [sp, 128]
	sub	x2, x1, x8
	cmp	x2, x0
	bls	.L864
.L722:
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
.L853:
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
	bhi	.L726
	ldr	x0, [sp, 144]
	cmp	x17, x0
	bcs	.L865
	cmp	x22, x17
	beq	.L563
	lsr	w0, w2, 3
	lsr	w14, w2, 3
	sub	x0, x17, x0
	cmp	x22, x0
	bls	.L565
	sub	x0, x17, x22
	mov	w14, w0
	sub	x0, x17, w0, uxtw
.L565:
	mov	w24, 1
	str	w24, [sp, 200]
	ldr	x16, [x0]
	sub	w2, w2, w14, lsl 3
	mov	x17, x0
	mov	w30, w24
	cbz	w13, .L566
	.p2align 3,,7
.L854:
	neg	w14, w13
	lsl	x0, x16, x2
	mov	w30, 1
	add	w2, w2, w13
	lsr	x0, x0, x14
	add	x12, x12, x0
	b	.L566
	.p2align 2,,3
.L556:
	cmp	w18, 0
	cset	w15, eq
	cmp	w7, 1
	beq	.L558
	cmp	w18, 0
	add	x15, x15, 10
	ldr	x20, [sp, 208]
	cset	x18, ne
	add	x18, x18, 10
	ldr	x7, [x20, x15, lsl 3]
	ldr	x15, [x20, x18, lsl 3]
	str	x7, [sp, 600]
	str	x15, [sp, 608]
	cbz	w14, .L562
.L852:
	neg	w18, w14
	lsl	x15, x16, x2
	mov	w30, 1
	add	w2, w2, w14
	lsr	x15, x15, x18
	add	x11, x11, x15
	b	.L562
	.p2align 2,,3
.L729:
	mov	x17, x3
	b	.L569
	.p2align 2,,3
.L728:
	mov	w30, 1
	str	w30, [sp, 176]
	b	.L567
	.p2align 2,,3
.L855:
	lsr	w0, w2, 3
	mov	w24, 1
	sub	x17, x17, x0
	and	w2, w2, 7
	mov	w30, w24
	str	w24, [sp, 176]
	str	w24, [sp, 200]
	ldr	x16, [x17]
	b	.L567
	.p2align 2,,3
.L727:
	ldr	x0, [sp, 312]
	mov	w24, 1
	mov	w30, w24
	str	w24, [sp, 176]
	add	x17, x0, 192
	b	.L567
	.p2align 2,,3
.L558:
	add	w15, w15, w20
	lsl	x18, x16, x2
	add	x18, x15, x18, lsr 63
	add	w2, w2, 1
	ldr	x15, [sp, 600]
	cmp	x18, 3
	beq	.L866
	add	x7, sp, 816
	add	x7, x7, x18, lsl 3
	ldr	x7, [x7, -216]
	cmp	x7, 0
	cset	x20, eq
	sub	x7, x7, x20
	cmp	x18, 1
	bne	.L560
	mov	w30, 1
	b	.L557
.L866:
	subs	x7, x15, #1
	cset	x18, eq
	sub	x7, x7, x18
.L560:
	ldr	x18, [sp, 608]
	mov	w30, 1
	str	x18, [sp, 616]
	b	.L557
	.p2align 2,,3
.L731:
	mov	x17, x0
	b	.L572
	.p2align 2,,3
.L857:
	ldr	w5, [sp, 520]
	cmp	w5, 64
	bhi	.L867
	ldr	x0, [sp, 144]
	ldr	x12, [sp, 528]
	cmp	x12, x0
	bcs	.L868
	ldr	x8, [sp, 208]
	cmp	x8, x12
	beq	.L584
	lsr	w0, w5, 3
	lsr	w1, w5, 3
	sub	x0, x12, x0
	cmp	x8, x0
	bls	.L587
	sub	x0, x12, x8
	mov	w1, w0
	sub	x0, x12, w0, uxtw
.L587:
	ldr	x12, [x0]
	sub	w1, w5, w1, lsl 3
	str	x12, [sp, 512]
	str	w1, [sp, 520]
	str	x0, [sp, 528]
	cbz	w4, .L588
	.p2align 3,,7
.L858:
	ldr	x0, [sp, 512]
	neg	w5, w4
	ldr	w1, [sp, 520]
	add	w4, w4, w1
	str	w4, [sp, 520]
	lsl	x0, x0, x1
	lsr	x0, x0, x5
	add	x9, x9, x0
	b	.L588
.L732:
	mov	x1, x3
	mov	x5, x7
	mov	x4, x12
	b	.L575
	.p2align 2,,3
.L577:
	cmp	w13, 0
	cset	w12, eq
	cmp	w1, 1
	beq	.L579
	cmp	w13, 0
	add	x12, x12, 10
	cset	x1, ne
	add	x13, sp, 520
	add	x1, x1, 10
	ldr	x19, [x13, x12, lsl 3]
	ldr	x1, [x13, x1, lsl 3]
	str	x19, [sp, 600]
	str	x1, [sp, 608]
	cbz	w5, .L583
.L856:
	ldr	x1, [sp, 512]
	neg	w13, w5
	ldr	w12, [sp, 520]
	add	w5, w5, w12
	str	w5, [sp, 520]
	lsl	x1, x1, x12
	lsr	x1, x1, x13
	add	x22, x22, x1
	b	.L583
	.p2align 2,,3
.L861:
	ldr	x0, [sp, 200]
	ldr	x2, [x0, 30360]
	cmp	x2, x16
	bcs	.L596
	subs	x2, x2, x7
	beq	.L597
	ldr	x0, [sp, 136]
	sub	x0, x0, x21
	cmp	x2, x0
	bhi	.L662
	mov	x0, x21
	sub	x8, x8, x2
	add	x21, x21, x2
	mov	x1, x7
	bl	ZSTD_safecopyDstBeforeSrc
	str	x8, [x11, x13, lsl 3]
.L597:
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
	bcc	.L600
	mov	x14, 30208
	add	x1, x3, x14
	ldr	q0, [x1, 164]
	str	q0, [x21]
	cmp	x8, 16
	bhi	.L601
.L605:
	str	x0, [sp, 360]
	sub	x0, x7, x28
	cmp	x24, x0
	bls	.L603
	ldr	x0, [sp, 192]
	sub	x0, x7, x0
	cmp	x24, x0
	bhi	.L841
	sub	x1, x2, x28
	add	x1, x25, x1
	add	x0, x1, x6
	cmp	x25, x0
	bcs	.L869
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
.L603:
	cmp	x24, 15
	bls	.L609
	mov	x1, x2
	mov	x0, x7
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x6, 16
	ble	.L604
	.p2align 3,,7
.L612:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L612
.L604:
	cmn	x4, #120
	bhi	.L838
	add	x20, x9, x20
	add	x21, x21, x4
	subs	x1, x20, x19
	add	x20, x20, x22
	csel	x0, x25, x28, cc
	add	x0, x0, x1
	prfm	PLDL1KEEP, [x0]
	prfm	PLDL1KEEP, [x0, 64]
	b	.L619
	.p2align 2,,3
.L596:
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
	bcc	.L620
	ldr	q0, [x7]
	str	q0, [x21]
	cmp	x8, 16
	bhi	.L621
.L625:
	sub	x1, x5, x28
	str	x16, [sp, 360]
	cmp	x24, x1
	bls	.L623
	ldr	x1, [sp, 192]
	sub	x1, x5, x1
	cmp	x24, x1
	bhi	.L841
	sub	x1, x0, x28
	add	x1, x25, x1
	add	x2, x1, x6
	cmp	x25, x2
	bcs	.L870
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
.L623:
	cmp	x24, 15
	bls	.L629
	ldr	q0, [x0], 16
	str	q0, [x5], 16
	cmp	x6, 16
	ble	.L624
	.p2align 3,,7
.L632:
	ldr	q0, [x0]
	add	x5, x5, 32
	add	x0, x0, 32
	str	q0, [x5, -32]
	ldr	q0, [x0, -16]
	str	q0, [x5, -16]
	cmp	x13, x5
	bhi	.L632
	b	.L624
	.p2align 2,,3
.L860:
	lsr	w0, w4, 3
	and	w4, w4, 7
	sub	x1, x1, x0
	str	w4, [sp, 520]
	str	x1, [sp, 528]
	ldr	x0, [x1]
	str	x0, [sp, 512]
	b	.L590
	.p2align 2,,3
.L862:
	mov	x2, x5
	mov	x0, x24
	stp	x9, x12, [sp, 216]
	stp	x10, x11, [sp, 232]
	stp	x18, x4, [sp, 248]
.L843:
	bl	memmove
	ldp	x9, x12, [sp, 216]
	ldp	x10, x11, [sp, 232]
	ldp	x18, x4, [sp, 248]
	b	.L624
	.p2align 2,,3
.L638:
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
.L842:
	ldp	x9, x12, [sp, 216]
	mov	x4, x0
	ldp	x10, x11, [sp, 232]
	ldr	x18, [sp, 248]
	b	.L624
	.p2align 2,,3
.L639:
	ldr	q0, [x7, 16]
	sub	x3, x8, #16
	str	q0, [x21, 16]
	cmp	x3, 16
	ble	.L642
	add	x7, x7, 32
	add	x0, x21, 32
	.p2align 3,,7
.L643:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x24, x0
	bhi	.L643
	b	.L642
	.p2align 2,,3
.L859:
	ldr	x0, [sp, 296]
	add	x0, x0, 192
	str	x0, [sp, 528]
	b	.L590
	.p2align 2,,3
.L646:
	cmp	x13, 7
	bhi	.L650
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
.L651:
	cmp	x5, 8
	bls	.L624
	sub	x0, x24, x2
	cmp	x0, 15
	bgt	.L652
	add	x2, x2, 8
	add	x24, x24, 8
	.p2align 3,,7
.L653:
	ldr	d0, [x2], 8
	str	d0, [x24], 8
	cmp	x6, x24
	bhi	.L653
	b	.L624
	.p2align 2,,3
.L841:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x4, -20
	b	.L871
	.p2align 2,,3
.L579:
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
	beq	.L872
	add	x8, sp, 816
	add	x13, x8, x12, lsl 3
	ldr	x19, [x13, -216]
	cmp	x19, 0
	cset	x13, eq
	sub	x19, x19, x13
	cmp	x12, 1
	beq	.L578
.L581:
	ldr	x12, [sp, 608]
	str	x12, [sp, 616]
	b	.L578
	.p2align 2,,3
.L838:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	b	.L541
.L863:
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
.L576:
	cmp	x22, x17
	bne	.L545
	ldr	w0, [sp, 520]
	cmp	w0, 64
	bne	.L545
	ldr	w0, [sp, 184]
	stp	x23, x24, [sp, 64]
	.cfi_offset 24, -744
	.cfi_offset 23, -752
	sub	w24, w12, w0
	cmp	w26, w24
	ble	.L658
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
.L717:
	and	x18, x24, 7
	ubfiz	x13, x24, 1, 3
	ldr	w0, [x20, 13984]
	add	x13, x13, x18
	ldr	x7, [sp, 360]
	lsl	x6, x13, 3
	ldr	x14, [x21, x13, lsl 3]
	add	x15, x7, x14
	cmp	w0, 2
	beq	.L873
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
	bcc	.L700
	ldr	q0, [x7]
	str	q0, [x25]
	cmp	x14, 16
	bhi	.L701
.L704:
	sub	x0, x3, x23
	str	x15, [sp, 360]
	cmp	x13, x0
	bls	.L703
	ldr	x0, [sp, 192]
	sub	x0, x3, x0
	cmp	x13, x0
	bhi	.L841
	sub	x1, x2, x23
	add	x1, x28, x1
	add	x0, x1, x5
	cmp	x28, x0
	bcs	.L847
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
.L703:
	cmp	x13, 15
	bls	.L708
	mov	x1, x2
	mov	x0, x3
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x5, 16
	ble	.L686
	.p2align 3,,7
.L711:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L711
.L686:
	cmn	x27, #120
	bhi	.L832
	add	w24, w24, 1
	add	x25, x25, x27
	cmp	w26, w24
	bne	.L717
	ldp	x11, x13, [sp, 200]
	mov	x9, x25
	mov	x25, x20
	ldr	x20, [sp, 120]
.L658:
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
	b	.L544
	.p2align 2,,3
.L650:
	.cfi_restore_state
	ldr	d0, [x2]
	str	d0, [x24]
	b	.L651
.L870:
	mov	x2, x6
	mov	x0, x5
	stp	x9, x12, [sp, 216]
	stp	x10, x11, [sp, 232]
	stp	x18, x4, [sp, 248]
	b	.L843
.L869:
	mov	x2, x6
	mov	x0, x7
	stp	x9, x12, [sp, 216]
	stp	x10, x11, [sp, 232]
	stp	x18, x4, [sp, 248]
	bl	memmove
	ldp	x9, x12, [sp, 216]
	ldp	x10, x11, [sp, 232]
	ldp	x18, x4, [sp, 248]
	b	.L604
.L868:
	lsr	w0, w5, 3
	and	w5, w5, 7
	sub	x0, x12, x0
	str	x0, [sp, 528]
	str	w5, [sp, 520]
	ldr	x0, [x0]
	str	x0, [sp, 512]
	b	.L584
.L600:
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
	b	.L604
.L620:
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
	b	.L842
.L621:
	ldr	q0, [x7, 16]
	sub	x3, x8, #16
	str	q0, [x21, 16]
	cmp	x3, 16
	ble	.L625
	add	x7, x7, 32
	add	x1, x21, 32
	.p2align 3,,7
.L626:
	ldr	q0, [x7]
	add	x1, x1, 32
	add	x7, x7, 32
	str	q0, [x1, -32]
	ldr	q0, [x7, -16]
	str	q0, [x1, -16]
	cmp	x5, x1
	bhi	.L626
	b	.L625
.L601:
	ldr	q0, [x1, 180]
	sub	x3, x8, #16
	str	q0, [x21, 16]
	cmp	x3, 16
	ble	.L605
	ldr	x3, [sp, 200]
	mov	x13, 30404
	add	x1, x21, 32
	add	x3, x3, x13
	.p2align 3,,7
.L606:
	ldr	q0, [x3]
	add	x1, x1, 32
	add	x3, x3, 32
	str	q0, [x1, -32]
	ldr	q0, [x3, -16]
	str	q0, [x1, -16]
	cmp	x7, x1
	bhi	.L606
	b	.L605
.L865:
	lsr	w0, w2, 3
	mov	w24, 1
	sub	x17, x17, x0
	and	w2, w2, 7
	mov	w30, w24
	str	w24, [sp, 200]
	ldr	x16, [x17]
	b	.L563
.L872:
	subs	x19, x1, #1
	cset	x12, eq
	sub	x19, x19, x12
	b	.L581
.L629:
	cmp	x24, 7
	bhi	.L633
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
.L634:
	cmp	x6, 8
	bls	.L624
	sub	x1, x5, x0
	cmp	x1, 15
	bgt	.L635
	add	x0, x0, 8
	add	x5, x5, 8
	.p2align 3,,7
.L636:
	ldr	d0, [x0], 8
	str	d0, [x5], 8
	cmp	x13, x5
	bhi	.L636
	b	.L624
.L609:
	cmp	x24, 7
	bhi	.L613
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
.L614:
	cmp	x6, 8
	bls	.L604
	sub	x0, x7, x2
	cmp	x0, 15
	bgt	.L615
	add	x1, x2, 8
	add	x0, x7, 8
	.p2align 3,,7
.L616:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x5, x0
	bhi	.L616
	b	.L604
.L555:
	.cfi_restore 23
	.cfi_restore 24
	ldr	x17, [sp, 528]
	mov	x9, x11
	mov	w12, 0
	b	.L576
.L867:
	.cfi_offset 23, -752
	.cfi_offset 24, -744
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 528]
	b	.L584
.L873:
	ldr	x0, [sp, 120]
	ldr	x0, [x0, 30360]
	cmp	x0, x15
	bcs	.L660
	subs	x2, x0, x7
	beq	.L661
	sub	x0, x22, x25
	cmp	x2, x0
	bhi	.L662
	mov	x0, x25
	sub	x14, x14, x2
	add	x25, x25, x2
	mov	x1, x7
	bl	ZSTD_safecopyDstBeforeSrc
	str	x14, [x21, x13, lsl 3]
.L661:
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
	bcc	.L663
	ldr	x0, [sp, 120]
	mov	x8, 30208
	add	x0, x0, x8
	ldr	q0, [x0, 164]
	str	q0, [x25]
	cmp	x14, 16
	bhi	.L664
.L668:
	sub	x0, x3, x23
	str	x7, [sp, 360]
	cmp	x13, x0
	bls	.L666
	ldr	x0, [sp, 192]
	sub	x0, x3, x0
	cmp	x13, x0
	bhi	.L841
	sub	x1, x2, x23
	add	x1, x28, x1
	add	x0, x1, x5
	cmp	x28, x0
	bcs	.L847
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
.L666:
	cmp	x13, 15
	bls	.L672
	mov	x1, x2
	mov	x0, x3
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x5, 16
	ble	.L686
.L675:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L675
	b	.L686
.L726:
	adrp	x17, .LANCHOR0
	add	x17, x17, :lo12:.LANCHOR0
	add	x17, x17, 192
	mov	w24, 1
	b	.L563
.L652:
	ldr	q0, [x2, 8]
	str	q0, [x24, 8]
	cmp	x5, 24
	ble	.L624
	add	x24, x24, 24
	add	x2, x2, 24
	.p2align 3,,7
.L654:
	ldr	q0, [x2]
	add	x24, x24, 32
	add	x2, x2, 32
	str	q0, [x24, -32]
	ldr	q0, [x2, -16]
	str	q0, [x24, -16]
	cmp	x6, x24
	bhi	.L654
	b	.L624
.L633:
	ldr	d0, [x0]
	str	d0, [x5]
	b	.L634
.L613:
	ldr	d0, [x2]
	str	d0, [x7]
	b	.L614
.L660:
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
	bcc	.L682
	ldr	q0, [x7]
	str	q0, [x25]
	cmp	x14, 16
	bhi	.L683
.L687:
	sub	x0, x5, x23
	str	x15, [sp, 360]
	cmp	x13, x0
	bls	.L685
	ldr	x0, [sp, 192]
	sub	x0, x5, x0
	cmp	x13, x0
	bhi	.L841
	sub	x1, x16, x23
	add	x1, x28, x1
	add	x0, x1, x3
	cmp	x28, x0
	bcs	.L874
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
.L685:
	cmp	x13, 15
	bls	.L691
	mov	x1, x16
	mov	x0, x5
	ldr	q0, [x1], 16
	str	q0, [x0], 16
	cmp	x3, 16
	ble	.L686
.L693:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L693
	b	.L686
.L847:
	mov	x2, x5
	mov	x0, x3
	bl	memmove
	b	.L686
.L662:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x4, -70
	b	.L541
.L635:
	.cfi_restore_state
	ldr	q0, [x0, 8]
	str	q0, [x5, 8]
	cmp	x6, 24
	ble	.L624
	add	x5, x5, 24
	add	x0, x0, 24
.L637:
	ldr	q0, [x0]
	add	x5, x5, 32
	add	x0, x0, 32
	str	q0, [x5, -32]
	ldr	q0, [x0, -16]
	str	q0, [x5, -16]
	cmp	x13, x5
	bhi	.L637
	b	.L624
.L615:
	ldr	q0, [x2, 8]
	str	q0, [x7, 8]
	cmp	x6, 24
	ble	.L604
	add	x0, x7, 24
	add	x1, x2, 24
.L617:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L617
	b	.L604
.L701:
	ldr	q0, [x7, 16]
	sub	x14, x14, #16
	str	q0, [x25, 16]
	cmp	x14, 16
	ble	.L704
	add	x7, x7, 32
	add	x0, x25, 32
.L705:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x3, x0
	bhi	.L705
	b	.L704
.L700:
	stp	x5, x13, [sp, 472]
	mov	x4, x0
	add	x2, sp, 320
	ldr	x6, [sp, 192]
	mov	x7, x28
	ldp	x0, x1, [sp, 464]
	add	x3, sp, 360
	mov	x5, x23
	stp	x0, x1, [sp, 320]
.L846:
	mov	x1, x22
	str	x13, [x2, 16]
	mov	x0, x25
	bl	ZSTD_execSequenceEnd
	mov	x27, x0
	b	.L686
.L708:
	cmp	x13, 7
	bhi	.L712
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
.L713:
	cmp	x5, 8
	bls	.L686
	sub	x0, x3, x2
	cmp	x0, 15
	bgt	.L714
	add	x1, x2, 8
	add	x0, x3, 8
.L715:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x6, x0
	bhi	.L715
	b	.L686
.L832:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x4, x27
	b	.L541
.L712:
	.cfi_restore_state
	ldr	d0, [x2]
	str	d0, [x3]
	b	.L713
.L874:
	mov	x2, x3
	mov	x0, x5
	bl	memmove
	b	.L686
.L682:
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
	b	.L686
.L683:
	ldr	q0, [x7, 16]
	sub	x14, x14, #16
	str	q0, [x25, 16]
	cmp	x14, 16
	ble	.L687
	add	x7, x7, 32
	add	x0, x25, 32
.L688:
	ldr	q0, [x7]
	add	x0, x0, 32
	add	x7, x7, 32
	str	q0, [x0, -32]
	ldr	q0, [x7, -16]
	str	q0, [x0, -16]
	cmp	x5, x0
	bhi	.L688
	b	.L687
.L733:
	ldp	x23, x24, [sp, 64]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	mov	x9, x11
	ldr	w12, [sp, 184]
	b	.L576
.L664:
	.cfi_restore_state
	ldr	q0, [x0, 180]
	sub	x14, x14, #16
	str	q0, [x25, 16]
	cmp	x14, 16
	ble	.L668
	ldr	x1, [sp, 120]
	mov	x4, 30404
	add	x0, x25, 32
	add	x1, x1, x4
.L669:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x3, x0
	bhi	.L669
	b	.L668
.L663:
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
	b	.L846
.L714:
	ldr	q0, [x2, 8]
	str	q0, [x3, 8]
	cmp	x5, 24
	ble	.L686
	add	x0, x3, 24
	add	x1, x2, 24
.L716:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L716
	b	.L686
.L672:
	cmp	x13, 7
	bhi	.L676
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
.L677:
	cmp	x5, 8
	bls	.L686
	sub	x0, x3, x2
	cmp	x0, 15
	bgt	.L678
	add	x1, x2, 8
	add	x0, x3, 8
.L679:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x6, x0
	bhi	.L679
	b	.L686
.L691:
	cmp	x13, 7
	bhi	.L695
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
.L696:
	cmp	x3, 8
	bls	.L686
	sub	x0, x5, x16
	cmp	x0, 15
	bgt	.L697
	add	x1, x16, 8
	add	x0, x5, 8
.L698:
	ldr	d0, [x1], 8
	str	d0, [x0], 8
	cmp	x6, x0
	bhi	.L698
	b	.L686
.L676:
	ldr	d0, [x2]
	str	d0, [x3]
	b	.L677
.L695:
	ldr	d0, [x16]
	str	d0, [x5]
	b	.L696
.L678:
	ldr	q0, [x2, 8]
	str	q0, [x3, 8]
	cmp	x5, 24
	ble	.L686
	add	x0, x3, 24
	add	x1, x2, 24
.L680:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L680
	b	.L686
.L697:
	ldr	q0, [x16, 8]
	str	q0, [x5, 8]
	cmp	x3, 24
	ble	.L686
	add	x0, x5, 24
	add	x1, x16, 24
.L699:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x6, x0
	bhi	.L699
	b	.L686
	.cfi_endproc
.LFE4573:
	.size	ZSTD_decompressSequencesLong_default.constprop.0, .-ZSTD_decompressSequencesLong_default.constprop.0
	.align	2
	.p2align 4,,11
	.type	ZSTD_decompressSequences_default.constprop.0, %function
ZSTD_decompressSequences_default.constprop.0:
.LFB4574:
	.cfi_startproc
	stp	x29, x30, [sp, -416]!
	.cfi_def_cfa_offset 416
	.cfi_offset 29, -416
	.cfi_offset 30, -408
	mov	x8, x0
	mov	x29, sp
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -352
	.cfi_offset 26, -344
	add	x25, x0, 16384
	mov	x26, x3
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -400
	.cfi_offset 20, -392
	mov	x20, x1
	ldr	w0, [x25, 13984]
	stp	x21, x22, [sp, 32]
	stp	x27, x28, [sp, 80]
	str	w5, [sp, 104]
	.cfi_offset 21, -384
	.cfi_offset 22, -376
	.cfi_offset 27, -336
	.cfi_offset 28, -328
	cbnz	w0, .L876
	cmp	x2, 0
	add	x2, x1, x2
	csel	x0, x2, x1, gt
	str	x0, [sp, 112]
.L877:
	ldr	x7, [x8, 30120]
	str	x7, [sp, 272]
	ldr	x0, [x8, 30152]
	ldr	x5, [x8, 29896]
	add	x19, x7, x0
	ldr	x0, [x8, 29904]
	str	x0, [sp, 120]
	ldr	w0, [sp, 104]
	ldr	x28, [x8, 29912]
	cbz	w0, .L1075
	mov	x0, 26624
	add	x18, x8, x0
	mov	w0, 1
	str	w0, [x25, 13620]
	ldr	w0, [x25, 10308]
	ldr	d0, [x18, 60]
	str	x0, [sp, 408]
	add	x0, sp, 512
	uxtl	v0.2d, v0.2s
	str	q0, [x0, -120]
	cbz	x4, .L879
	add	x0, x26, x4
	add	x3, x26, 8
	stp	x26, x3, [sp, 328]
	ldrb	w0, [x0, -1]
	cmp	x4, 7
	bls	.L880
	sub	x1, x4, #8
	add	x2, x26, x1
	str	x2, [sp, 320]
	ldr	x1, [x26, x1]
	str	x1, [sp, 304]
	cbz	w0, .L879
	clz	w0, w0
	sub	w0, w0, #23
	str	w0, [sp, 312]
	cmn	x4, #120
	bhi	.L879
	stp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_offset 24, -360
	.cfi_offset 23, -368
	b	.L881
	.p2align 2,,3
.L876:
	.cfi_restore_state
	ldr	x0, [x8, 30352]
	str	x0, [sp, 112]
	b	.L877
	.p2align 2,,3
.L1075:
	mov	x22, x20
.L878:
	ldr	x0, [sp, 112]
	sub	x2, x19, x7
	mov	x12, -70
	sub	x0, x0, x22
	cmp	x2, x0
	bhi	.L875
	cbz	x22, .L1073
	mov	x0, x22
	mov	x1, x7
	add	x22, x22, x2
	bl	memcpy
.L1073:
	sub	x12, x22, x20
.L875:
	ldp	x19, x20, [sp, 16]
	mov	x0, x12
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 416
	.cfi_restore 30
	.cfi_restore 29
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
.L1070:
	.cfi_def_cfa_offset 416
	.cfi_offset 19, -400
	.cfi_offset 20, -392
	.cfi_offset 21, -384
	.cfi_offset 22, -376
	.cfi_offset 23, -368
	.cfi_offset 24, -360
	.cfi_offset 25, -352
	.cfi_offset 26, -344
	.cfi_offset 27, -336
	.cfi_offset 28, -328
	.cfi_offset 29, -416
	.cfi_offset 30, -408
	ldr	x0, [sp, 320]
	mov	x19, x20
	ldp	x20, x25, [sp, 184]
	ldr	x18, [sp, 200]
	cmp	x15, x0
	beq	.L1179
.L1176:
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
.L879:
	mov	x12, -20
	ldp	x19, x20, [sp, 16]
	mov	x0, x12
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 416
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
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
.L880:
	.cfi_restore_state
	ldrb	w1, [x26]
	str	x1, [sp, 304]
	str	x26, [sp, 320]
	cmp	x4, 5
	beq	.L882
	bhi	.L883
	cmp	x4, 3
	beq	.L884
	cmp	x4, 4
	bne	.L1180
.L885:
	ldrb	w2, [x26, 3]
	add	x1, x1, x2, lsl 24
.L884:
	ldrb	w2, [x26, 2]
	add	x1, x1, x2, lsl 16
	ldrb	w2, [x26, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 304]
.L887:
	cbz	w0, .L879
	mov	w1, 8
	sub	w1, w1, w4
	clz	w0, w0
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -360
	.cfi_offset 23, -368
	add	w0, w0, w1, lsl 3
	sub	w0, w0, #23
	str	w0, [sp, 312]
.L881:
	ldr	x2, [x8]
	add	x1, sp, 304
	add	x0, sp, 344
	stp	x7, x5, [sp, 128]
	str	x3, [sp, 144]
	bl	ZSTD_initFseState
	ldr	x2, [x8, 16]
	add	x0, sp, 360
	bl	ZSTD_initFseState
	add	x0, sp, 376
	ldr	x2, [x8, 8]
	bl	ZSTD_initFseState
	ldr	w4, [sp, 104]
	ldp	x7, x5, [sp, 128]
	cmp	w4, 12
	ldr	x3, [sp, 144]
	ble	.L889
	ldp	x11, x8, [sp, 344]
	adrp	x13, .LANCHOR0
	ldp	x6, x10, [sp, 360]
	add	x24, x13, :lo12:.LANCHOR0
	ldp	x14, x9, [sp, 376]
	fmov	x23, d0
	ldr	w21, [sp, 312]
	mov	w22, w4
	add	x24, x24, 64
	mov	x4, x20
	mov	x27, x8
	stp	x19, x20, [sp, 128]
	stp	x25, x18, [sp, 144]
	.p2align 3,,7
.L1032:
	ldr	x2, [x27, x11, lsl 3]
	ldr	x11, [x10, x6, lsl 3]
	ldr	x12, [x9, x14, lsl 3]
	ubfx	w16, w2, 16, 8
	ldr	q0, [x7]
	ubfx	w15, w11, 16, 8
	add	w8, w15, w16
	ubfx	w17, w12, 16, 8
	add	w8, w17, w8
	lsr	x19, x2, 32
	str	q0, [x4]
	and	w8, w8, 255
	mov	x1, x19
	lsr	x6, x12, 32
	lsr	x18, x11, 32
	lsr	w14, w2, 24
	lsr	w0, w12, 24
	lsr	w25, w11, 24
	cmp	w15, 1
	bhi	.L1181
	cbnz	w15, .L892
	cbz	x19, .L1182
	cbnz	w17, .L1183
.L896:
	cbnz	w16, .L1184
.L897:
	cmp	w8, 30
	bhi	.L898
.L1177:
	ldr	x19, [sp, 304]
.L899:
	add	w21, w14, w21
	uxtw	x8, w0
	uxtw	x15, w25
	add	w0, w0, w21
	ldr	w14, [x24, x14, lsl 2]
	add	w25, w25, w0
	neg	w21, w21
	ldr	w16, [x24, x8, lsl 2]
	neg	w0, w0
	ldr	w15, [x24, x15, lsl 2]
	neg	w8, w25
	lsr	x21, x19, x21
	and	x21, x21, x14
	lsr	x0, x19, x0
	and	x20, x0, x16
	lsr	x8, x19, x8
	and	x8, x8, x15
	add	x8, x8, w11, uxth
	add	x21, x21, w2, uxth
	add	x20, x20, w12, uxth
	str	w25, [sp, 312]
	str	x21, [sp, 344]
	add	x11, x4, x1
	str	x8, [sp, 360]
	str	x20, [sp, 376]
	cmp	x1, 16
	bhi	.L904
.L907:
	add	x7, x7, x1
	str	x7, [sp, 272]
	add	x12, x1, x6
	sub	x0, x11, x23
	cbnz	x28, .L1185
.L906:
	cmp	x23, 15
	bls	.L911
	ldr	q0, [x0]
	str	q0, [x11]
	cmp	x6, 16
	ble	.L910
	add	x6, x11, x6
	add	x0, x0, 16
	add	x11, x11, 16
	.p2align 3,,7
.L913:
	ldr	q0, [x0]
	add	x11, x11, 32
	add	x0, x0, 32
	str	q0, [x11, -32]
	ldr	q0, [x0, -16]
	str	q0, [x11, -16]
	cmp	x6, x11
	bhi	.L913
.L910:
	add	x4, x4, x12
	cmp	w25, 64
	bhi	.L1186
	ldr	x1, [sp, 320]
	cmp	x1, x3
	bcs	.L1187
	cmp	x26, x1
	beq	.L921
	lsr	w0, w25, 3
	lsr	w2, w25, 3
	sub	x0, x1, x0
	cmp	x26, x0
	bls	.L924
	sub	x0, x1, x26
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L924:
	ldr	x19, [x0]
	sub	w25, w25, w2, lsl 3
	str	x19, [sp, 304]
	str	w25, [sp, 312]
	str	x0, [sp, 320]
.L921:
	ldr	x1, [x27, x21, lsl 3]
	ldr	x12, [x9, x20, lsl 3]
	ldr	x11, [x10, x8, lsl 3]
	ubfx	w15, w1, 16, 8
	ldr	q0, [x7]
	ubfx	w16, w12, 16, 8
	add	w2, w15, w16
	ubfx	w14, w11, 16, 8
	add	w2, w14, w2
	lsr	x18, x1, 32
	str	q0, [x4]
	and	w2, w2, 255
	mov	x6, x18
	lsr	x20, x12, 32
	lsr	x17, x11, 32
	lsr	w8, w1, 24
	lsr	w0, w12, 24
	lsr	w21, w11, 24
	cmp	w14, 1
	bhi	.L1188
	cbnz	w14, .L927
	cbz	x18, .L1189
	cbnz	w16, .L1190
.L931:
	cbnz	w15, .L1191
.L932:
	cmp	w2, 30
	bhi	.L1192
.L934:
	add	w25, w8, w25
	uxtw	x2, w0
	uxtw	x14, w21
	add	w0, w0, w25
	add	w21, w21, w0
	ldr	w8, [x24, x8, lsl 2]
	ldr	w15, [x24, x2, lsl 2]
	neg	w25, w25
	ldr	w14, [x24, x14, lsl 2]
	neg	w0, w0
	neg	w2, w21
	lsr	x25, x19, x25
	lsr	x0, x19, x0
	and	x25, x25, x8
	and	x0, x0, x15
	lsr	x2, x19, x2
	and	x2, x2, x14
	add	x25, x25, w1, uxth
	add	x12, x0, w12, uxth
	add	x11, x2, w11, uxth
	str	w21, [sp, 312]
	add	x8, x4, x6
	str	x25, [sp, 344]
	str	x11, [sp, 360]
	str	x12, [sp, 376]
	cmp	x6, 16
	bhi	.L939
.L942:
	add	x7, x7, x6
	str	x7, [sp, 272]
	add	x6, x6, x20
	sub	x0, x8, x23
	cbnz	x28, .L1193
.L941:
	cmp	x23, 15
	bls	.L946
	ldr	q0, [x0]
	str	q0, [x8]
	cmp	x20, 16
	ble	.L945
	add	x20, x8, x20
	add	x0, x0, 16
	add	x8, x8, 16
	.p2align 3,,7
.L948:
	ldr	q0, [x0]
	add	x8, x8, 32
	add	x0, x0, 32
	str	q0, [x8, -32]
	ldr	q0, [x0, -16]
	str	q0, [x8, -16]
	cmp	x20, x8
	bhi	.L948
.L945:
	add	x8, x4, x6
	cmp	w21, 64
	bhi	.L1194
	ldr	x1, [sp, 320]
	cmp	x1, x3
	bcs	.L1195
	cmp	x26, x1
	beq	.L956
	lsr	w0, w21, 3
	lsr	w2, w21, 3
	sub	x0, x1, x0
	cmp	x26, x0
	bls	.L959
	sub	x0, x1, x26
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L959:
	ldr	x19, [x0]
	sub	w21, w21, w2, lsl 3
	str	x19, [sp, 304]
	str	w21, [sp, 312]
	str	x0, [sp, 320]
.L956:
	ldr	x1, [x27, x25, lsl 3]
	ldr	x12, [x9, x12, lsl 3]
	ldr	x11, [x10, x11, lsl 3]
	ubfx	w15, w1, 16, 8
	ldr	q0, [x7]
	ubfx	w16, w12, 16, 8
	add	w2, w15, w16
	ubfx	w14, w11, 16, 8
	add	w2, w14, w2
	lsr	x17, x1, 32
	str	q0, [x4, x6]
	and	w2, w2, 255
	lsr	x25, x12, 32
	lsr	x18, x11, 32
	lsr	w0, w12, 24
	lsr	w20, w11, 24
	mov	x4, x17
	lsr	w6, w1, 24
	cmp	w14, 1
	bhi	.L1196
	cbnz	w14, .L962
	cbz	x17, .L1197
	cbnz	w16, .L1198
.L966:
	cbnz	w15, .L1199
.L967:
	cmp	w2, 30
	bhi	.L1200
.L969:
	add	w21, w6, w21
	uxtw	x2, w0
	uxtw	x14, w20
	add	w0, w0, w21
	add	w20, w20, w0
	ldr	w6, [x24, x6, lsl 2]
	ldr	w15, [x24, x2, lsl 2]
	neg	w21, w21
	ldr	w14, [x24, x14, lsl 2]
	neg	w0, w0
	neg	w2, w20
	lsr	x21, x19, x21
	lsr	x0, x19, x0
	and	x21, x21, x6
	and	x0, x0, x15
	lsr	x2, x19, x2
	and	x2, x2, x14
	add	x21, x21, w1, uxth
	add	x12, x0, w12, uxth
	add	x6, x2, w11, uxth
	str	w20, [sp, 312]
	add	x14, x8, x4
	str	x21, [sp, 344]
	str	x6, [sp, 360]
	str	x12, [sp, 376]
	cmp	x4, 16
	bhi	.L974
.L977:
	add	x7, x7, x4
	str	x7, [sp, 272]
	add	x11, x4, x25
	sub	x0, x14, x23
	cbnz	x28, .L1201
.L976:
	cmp	x23, 15
	bls	.L981
	ldr	q0, [x0]
	str	q0, [x14]
	cmp	x25, 16
	ble	.L980
	add	x25, x14, x25
	add	x0, x0, 16
	add	x14, x14, 16
	.p2align 3,,7
.L983:
	ldr	q0, [x0]
	add	x14, x14, 32
	add	x0, x0, 32
	str	q0, [x14, -32]
	ldr	q0, [x0, -16]
	str	q0, [x14, -16]
	cmp	x25, x14
	bhi	.L983
.L980:
	add	x4, x8, x11
	cmp	w20, 64
	bhi	.L1202
	ldr	x1, [sp, 320]
	cmp	x1, x3
	bcs	.L1203
	cmp	x26, x1
	beq	.L991
	lsr	w0, w20, 3
	lsr	w2, w20, 3
	sub	x0, x1, x0
	cmp	x26, x0
	bls	.L994
	sub	x0, x1, x26
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L994:
	ldr	x19, [x0]
	sub	w20, w20, w2, lsl 3
	str	x19, [sp, 304]
	str	w20, [sp, 312]
	str	x0, [sp, 320]
.L991:
	ldr	x2, [x27, x21, lsl 3]
	ldr	x14, [x9, x12, lsl 3]
	ldr	x12, [x10, x6, lsl 3]
	ubfx	w16, w2, 16, 8
	ldr	q0, [x7]
	ubfx	w17, w14, 16, 8
	add	w6, w16, w17
	ubfx	w15, w12, 16, 8
	add	w6, w15, w6
	lsr	x18, x2, 32
	str	q0, [x8, x11]
	and	w6, w6, 255
	mov	x1, x18
	lsr	x25, x14, 32
	lsr	w0, w14, 24
	lsr	w21, w12, 24
	lsr	x11, x12, 32
	lsr	w8, w2, 24
	cmp	w15, 1
	bhi	.L1204
	cbnz	w15, .L997
	cbz	x18, .L1205
	cbnz	w17, .L1206
.L1001:
	cbnz	w16, .L1207
.L1002:
	cmp	w6, 30
	bhi	.L1208
.L1004:
	add	w20, w8, w20
	uxtw	x6, w0
	uxtw	x15, w21
	add	w0, w0, w20
	add	w21, w21, w0
	ldr	w8, [x24, x8, lsl 2]
	ldr	w6, [x24, x6, lsl 2]
	neg	w20, w20
	ldr	w15, [x24, x15, lsl 2]
	neg	w0, w0
	neg	w16, w21
	lsr	x20, x19, x20
	lsr	x0, x19, x0
	and	x11, x20, x8
	and	x0, x0, x6
	lsr	x6, x19, x16
	and	x6, x6, x15
	add	x11, x11, w2, uxth
	add	x14, x0, w14, uxth
	add	x6, x6, w12, uxth
	str	w21, [sp, 312]
	add	x19, x4, x1
	str	x11, [sp, 344]
	str	x6, [sp, 360]
	str	x14, [sp, 376]
	cmp	x1, 16
	bhi	.L1009
.L1012:
	add	x7, x7, x1
	str	x7, [sp, 272]
	add	x20, x1, x25
	sub	x0, x19, x23
	cbnz	x28, .L1209
.L1011:
	cmp	x23, 15
	bls	.L1016
	ldr	q0, [x0]
	str	q0, [x19]
	cmp	x25, 16
	ble	.L1015
	add	x25, x19, x25
	add	x0, x0, 16
	add	x19, x19, 16
	.p2align 3,,7
.L1018:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x25, x19
	bhi	.L1018
.L1015:
	add	x4, x4, x20
	cmp	w21, 64
	bhi	.L1210
	ldr	x1, [sp, 320]
	cmp	x1, x3
	bcs	.L1211
	cmp	x26, x1
	beq	.L1026
	lsr	w0, w21, 3
	lsr	w2, w21, 3
	sub	x0, x1, x0
	cmp	x26, x0
	bls	.L1029
	sub	x0, x1, x26
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L1029:
	ldr	x1, [x0]
	sub	w21, w21, w2, lsl 3
	str	x1, [sp, 304]
	str	w21, [sp, 312]
	str	x0, [sp, 320]
.L1026:
	sub	w22, w22, #4
	cmp	w22, 12
	ble	.L1212
.L1030:
	ldr	x23, [sp, 392]
	b	.L1032
.L883:
	.cfi_restore 23
	.cfi_restore 24
	cmp	x4, 6
	beq	.L888
	ldrb	w2, [x26, 6]
	add	x1, x1, x2, lsl 48
.L888:
	ldrb	w2, [x26, 5]
	add	x1, x1, x2, lsl 40
.L882:
	ldrb	w2, [x26, 4]
	add	x1, x1, x2, lsl 32
	b	.L885
.L1180:
	cmp	x4, 2
	bne	.L887
	ldrb	w2, [x26, 1]
	add	x1, x1, x2, lsl 8
	str	x1, [sp, 304]
	b	.L887
	.p2align 2,,3
.L1206:
	.cfi_offset 23, -368
	.cfi_offset 24, -360
	lsl	x11, x19, x20
	neg	w15, w17
	add	w20, w20, w17
	str	w20, [sp, 312]
	lsr	x11, x11, x15
	add	x25, x25, x11
	cbz	w16, .L1002
.L1207:
	neg	w15, w16
	lsl	x11, x19, x20
	add	w20, w20, w16
	str	w20, [sp, 312]
	lsr	x11, x11, x15
	add	x1, x1, x11
	cmp	w6, 30
	bls	.L1004
.L1208:
	cmp	w20, 64
	bhi	.L1213
	ldr	x11, [sp, 320]
	cmp	x11, x3
	bcs	.L1214
	cmp	x26, x11
	beq	.L1004
	lsr	w6, w20, 3
	lsr	w15, w20, 3
	sub	x6, x11, x6
	cmp	x26, x6
	bls	.L1008
	sub	x6, x11, x26
	mov	w15, w6
	sub	x6, x11, w6, uxtw
.L1008:
	ldr	x19, [x6]
	sub	w20, w20, w15, lsl 3
	str	x19, [sp, 304]
	str	x6, [sp, 320]
	b	.L1004
	.p2align 2,,3
.L1198:
	lsl	x14, x19, x21
	neg	w17, w16
	add	w21, w21, w16
	str	w21, [sp, 312]
	lsr	x14, x14, x17
	add	x25, x25, x14
	cbz	w15, .L967
.L1199:
	neg	w16, w15
	lsl	x14, x19, x21
	add	w21, w21, w15
	str	w21, [sp, 312]
	lsr	x14, x14, x16
	add	x4, x4, x14
	cmp	w2, 30
	bls	.L969
.L1200:
	cmp	w21, 64
	bhi	.L1215
	ldr	x14, [sp, 320]
	cmp	x14, x3
	bcs	.L1216
	cmp	x26, x14
	beq	.L969
	lsr	w2, w21, 3
	lsr	w15, w21, 3
	sub	x2, x14, x2
	cmp	x26, x2
	bls	.L973
	sub	x2, x14, x26
	mov	w15, w2
	sub	x2, x14, w2, uxtw
.L973:
	ldr	x19, [x2]
	sub	w21, w21, w15, lsl 3
	str	x19, [sp, 304]
	str	x2, [sp, 320]
	b	.L969
	.p2align 2,,3
.L1190:
	lsl	x14, x19, x25
	neg	w17, w16
	add	w25, w25, w16
	str	w25, [sp, 312]
	lsr	x14, x14, x17
	add	x20, x20, x14
	cbz	w15, .L932
.L1191:
	neg	w16, w15
	lsl	x14, x19, x25
	add	w25, w25, w15
	str	w25, [sp, 312]
	lsr	x14, x14, x16
	add	x6, x6, x14
	cmp	w2, 30
	bls	.L934
.L1192:
	cmp	w25, 64
	bhi	.L1217
	ldr	x14, [sp, 320]
	cmp	x14, x3
	bcs	.L1218
	cmp	x26, x14
	beq	.L934
	lsr	w2, w25, 3
	lsr	w15, w25, 3
	sub	x2, x14, x2
	cmp	x26, x2
	bls	.L938
	sub	x2, x14, x26
	mov	w15, w2
	sub	x2, x14, w2, uxtw
.L938:
	ldr	x19, [x2]
	sub	w25, w25, w15, lsl 3
	str	x19, [sp, 304]
	str	x2, [sp, 320]
	b	.L934
	.p2align 2,,3
.L1183:
	ldr	x15, [sp, 304]
	neg	w18, w17
	lsl	x15, x15, x21
	add	w21, w21, w17
	str	w21, [sp, 312]
	lsr	x15, x15, x18
	add	x6, x6, x15
	cbz	w16, .L897
.L1184:
	ldr	x15, [sp, 304]
	neg	w17, w16
	lsl	x15, x15, x21
	add	w21, w21, w16
	str	w21, [sp, 312]
	lsr	x15, x15, x17
	add	x1, x1, x15
	cmp	w8, 30
	bls	.L1177
.L898:
	cmp	w21, 64
	bhi	.L1219
	ldr	x15, [sp, 320]
	cmp	x15, x3
	bcs	.L1220
	cmp	x26, x15
	beq	.L1177
	lsr	w8, w21, 3
	lsr	w16, w21, 3
	sub	x8, x15, x8
	cmp	x26, x8
	bls	.L903
	sub	x8, x15, x26
	mov	w16, w8
	sub	x8, x15, w8, uxtw
.L903:
	ldr	x19, [x8]
	sub	w21, w21, w16, lsl 3
	str	x19, [sp, 304]
	str	x8, [sp, 320]
	b	.L899
	.p2align 2,,3
.L1205:
	ldr	x11, [sp, 400]
	stp	x11, x23, [sp, 392]
	mov	x23, x11
	cbz	w17, .L1001
	b	.L1206
	.p2align 2,,3
.L1189:
	ldr	x14, [sp, 400]
	stp	x14, x23, [sp, 392]
	mov	x23, x14
	cbz	w16, .L931
	b	.L1190
	.p2align 2,,3
.L1182:
	ldr	x15, [sp, 400]
	stp	x15, x23, [sp, 392]
	mov	x23, x15
	cbz	w17, .L896
	b	.L1183
	.p2align 2,,3
.L1197:
	ldr	x14, [sp, 400]
	stp	x14, x23, [sp, 392]
	mov	x23, x14
	cbz	w16, .L966
	b	.L1198
	.p2align 2,,3
.L1211:
	lsr	w0, w21, 3
	sub	w22, w22, #4
	sub	x1, x1, x0
	and	w21, w21, 7
	str	w21, [sp, 312]
	str	x1, [sp, 320]
	ldr	x0, [x1]
	str	x0, [sp, 304]
	cmp	w22, 12
	bgt	.L1030
	.p2align 3,,7
.L1212:
	ldr	w1, [sp, 104]
	mov	x8, x27
	ldp	x19, x20, [sp, 128]
	sub	w0, w1, #13
	ldp	x25, x18, [sp, 144]
	neg	w0, w0, lsr 2
	sub	w27, w1, #4
	mov	x22, x4
	add	w0, w27, w0, lsl 2
	str	w0, [sp, 104]
.L1031:
	ldr	x0, [sp, 112]
	adrp	x15, .LANCHOR0
	add	x15, x15, :lo12:.LANCHOR0
	add	x27, sp, 312
	add	x21, x15, 64
	sub	x23, x0, #32
	mov	x13, x23
	mov	x23, x8
	stp	x20, x25, [sp, 184]
	mov	x20, x19
	mov	x25, x28
	mov	x19, x5
	ldr	w28, [sp, 104]
	str	x27, [sp, 104]
	mov	x27, x10
	stp	x18, x15, [sp, 200]
	mov	x15, x26
	mov	x26, x21
	mov	x21, x9
	str	x3, [sp, 128]
	.p2align 3,,7
.L1071:
	ldr	x2, [x23, x11, lsl 3]
	ldr	x12, [x21, x14, lsl 3]
	ldr	x5, [x27, x6, lsl 3]
	ubfx	w11, w2, 16, 8
	ubfx	w14, w12, 16, 8
	lsr	x17, x2, 32
	add	w0, w11, w14
	lsr	x6, x12, 32
	ubfx	w1, w5, 16, 8
	mov	x3, x17
	add	w0, w1, w0
	lsr	x24, x5, 32
	and	w0, w0, 255
	cmp	w1, 1
	bls	.L1033
	ldr	x30, [sp, 304]
	neg	w17, w1
	ldr	w16, [sp, 312]
	ldr	x4, [sp, 400]
	add	w1, w1, w16
	lsl	x16, x30, x16
	str	w1, [sp, 312]
	ldr	x1, [sp, 392]
	lsr	x16, x16, x17
	add	x24, x24, x16
	str	x4, [sp, 408]
.L1034:
	stp	x24, x1, [sp, 392]
	cbnz	w14, .L1221
.L1039:
	cmp	w0, 30
	bhi	.L1222
.L1040:
	cbnz	w11, .L1223
.L1044:
	cmp	w28, 1
	beq	.L1046
	ldr	w11, [sp, 312]
	lsr	w30, w2, 24
	mov	x1, x30
	lsr	w17, w12, 24
	ldr	x14, [sp, 304]
	add	w1, w1, w11
	mov	x0, x17
	lsr	w16, w5, 24
	add	w0, w0, w1
	ldr	w17, [x26, x17, lsl 2]
	add	w11, w16, w0
	neg	w0, w0
	ldr	w30, [x26, x30, lsl 2]
	neg	w1, w1
	lsr	x0, x14, x0
	ldr	w16, [x26, x16, lsl 2]
	and	x0, x0, x17
	neg	w17, w11
	lsr	x1, x14, x1
	and	x1, x1, x30
	lsr	x14, x14, x17
	and	x14, x14, x16
	add	x1, x1, w2, uxth
	add	x0, x0, w12, uxth
	add	x5, x14, w5, uxth
	str	w11, [sp, 312]
	str	x1, [sp, 344]
	str	x5, [sp, 360]
	str	x0, [sp, 376]
	cmp	w11, 64
	bhi	.L1224
	ldr	x0, [sp, 128]
	ldr	x1, [sp, 320]
	cmp	x1, x0
	bcs	.L1225
	cmp	x15, x1
	beq	.L1046
	lsr	w0, w11, 3
	lsr	w2, w11, 3
	sub	x0, x1, x0
	cmp	x15, x0
	bls	.L1050
	sub	x0, x1, x15
	mov	w2, w0
	sub	x0, x1, w0, uxtw
.L1050:
	ldr	x1, [x0]
	sub	w2, w11, w2, lsl 3
	str	x1, [sp, 304]
	str	w2, [sp, 312]
	str	x0, [sp, 320]
.L1046:
	add	x5, x22, x3
	add	x12, x3, x6
	sub	x0, x5, x24
	add	x1, x7, x3
	add	x11, x22, x12
	cmp	x20, x1
	ccmp	x11, x13, 2, cs
	prfm	PLDL1KEEP, [x0]
	bhi	.L1051
	ldr	q0, [x7]
	str	q0, [x22]
	cmp	x3, 16
	bhi	.L1052
.L1056:
	str	x1, [sp, 272]
	sub	x1, x5, x19
	cmp	x24, x1
	bls	.L1054
	ldr	x1, [sp, 120]
	sub	x1, x5, x1
	cmp	x24, x1
	bhi	.L1176
	sub	x1, x0, x19
	add	x1, x25, x1
	add	x2, x1, x6
	cmp	x25, x2
	bcs	.L1226
	sub	x2, x19, x0
	mov	x0, x5
	sub	x6, x6, x2
	add	x5, x5, x2
	stp	x5, x6, [sp, 136]
	stp	x11, x13, [sp, 152]
	stp	x15, x12, [sp, 168]
	bl	memmove
	mov	x0, x19
	ldp	x5, x6, [sp, 136]
	ldp	x11, x13, [sp, 152]
	ldp	x15, x12, [sp, 168]
.L1054:
	cmp	x24, 15
	bls	.L1060
	ldr	q0, [x0], 16
	str	q0, [x5], 16
	cmp	x6, 16
	ble	.L1055
	.p2align 3,,7
.L1063:
	ldr	q0, [x0]
	add	x5, x5, 32
	add	x0, x0, 32
	str	q0, [x5, -32]
	ldr	q0, [x0, -16]
	str	q0, [x5, -16]
	cmp	x11, x5
	bhi	.L1063
.L1055:
	cmn	x12, #120
	bhi	.L1174
	add	x22, x22, x12
	subs	w28, w28, #1
	beq	.L1070
	ldr	x7, [sp, 272]
	ldr	x11, [sp, 344]
	ldr	x6, [sp, 360]
	ldr	x14, [sp, 376]
	b	.L1071
	.p2align 2,,3
.L1195:
	lsr	w0, w21, 3
	and	w21, w21, 7
	sub	x0, x1, x0
	str	w21, [sp, 312]
	str	x0, [sp, 320]
	ldr	x19, [x0]
	str	x19, [sp, 304]
	b	.L956
	.p2align 2,,3
.L1187:
	lsr	w0, w25, 3
	and	w25, w25, 7
	sub	x1, x1, x0
	str	w25, [sp, 312]
	str	x1, [sp, 320]
	ldr	x19, [x1]
	str	x19, [sp, 304]
	b	.L921
	.p2align 2,,3
.L1203:
	lsr	w0, w20, 3
	and	w20, w20, 7
	sub	x0, x1, x0
	str	w20, [sp, 312]
	str	x0, [sp, 320]
	ldr	x19, [x0]
	str	x19, [sp, 304]
	b	.L991
	.p2align 2,,3
.L1222:
	ldr	w1, [sp, 312]
	cmp	w1, 64
	bhi	.L1227
	ldr	x0, [sp, 128]
	ldr	x14, [sp, 320]
	cmp	x14, x0
	bcs	.L1228
	cmp	x15, x14
	beq	.L1040
	lsr	w0, w1, 3
	lsr	w16, w1, 3
	sub	x0, x14, x0
	cmp	x15, x0
	bls	.L1043
	sub	x0, x14, x15
	mov	w16, w0
	sub	x0, x14, w0, uxtw
.L1043:
	ldr	x14, [x0]
	sub	w16, w1, w16, lsl 3
	str	x14, [sp, 304]
	str	w16, [sp, 312]
	str	x0, [sp, 320]
	cbz	w11, .L1044
	.p2align 3,,7
.L1223:
	ldr	x0, [sp, 304]
	neg	w1, w11
	ldr	w14, [sp, 312]
	add	w11, w11, w14
	str	w11, [sp, 312]
	lsl	x0, x0, x14
	lsr	x0, x0, x1
	add	x3, x3, x0
	b	.L1044
	.p2align 2,,3
.L1033:
	cmp	w17, 0
	cset	w16, eq
	cmp	w1, 1
	beq	.L1035
	cmp	w17, 0
	add	x16, x16, 10
	ldr	x4, [sp, 104]
	cset	x1, ne
	add	x1, x1, 10
	ldr	x24, [x4, x16, lsl 3]
	ldr	x1, [x4, x1, lsl 3]
	stp	x24, x1, [sp, 392]
	cbz	w14, .L1039
.L1221:
	ldr	x17, [sp, 304]
	neg	w16, w14
	ldr	w1, [sp, 312]
	add	w14, w14, w1
	str	w14, [sp, 312]
	lsl	x17, x17, x1
	lsr	x17, x17, x16
	add	x6, x6, x17
	b	.L1039
	.p2align 2,,3
.L1226:
	mov	x2, x6
	mov	x0, x5
	stp	x13, x15, [sp, 136]
	str	x12, [sp, 152]
	bl	memmove
	ldp	x13, x15, [sp, 136]
	ldr	x12, [sp, 152]
	b	.L1055
	.p2align 2,,3
.L1204:
	ldr	x18, [sp, 400]
	neg	w30, w15
	stp	x23, x18, [sp, 400]
	lsl	x18, x19, x20
	lsr	x18, x18, x30
	add	w20, w20, w15
	add	x18, x11, x18
	str	w20, [sp, 312]
	mov	x23, x18
	str	x18, [sp, 392]
	cbz	w17, .L1001
	b	.L1206
	.p2align 2,,3
.L1181:
	ldr	x19, [sp, 304]
	neg	w30, w15
	ldr	x20, [sp, 400]
	str	x20, [sp, 408]
	lsl	x19, x19, x21
	add	w21, w21, w15
	lsr	x19, x19, x30
	add	x15, x18, x19
	str	w21, [sp, 312]
	stp	x15, x23, [sp, 392]
	mov	x23, x15
	cbz	w17, .L896
	b	.L1183
	.p2align 2,,3
.L1196:
	ldr	x17, [sp, 400]
	neg	w30, w14
	stp	x23, x17, [sp, 400]
	lsl	x17, x19, x21
	lsr	x17, x17, x30
	add	w21, w21, w14
	add	x17, x18, x17
	str	w21, [sp, 312]
	mov	x23, x17
	str	x17, [sp, 392]
	cbz	w16, .L966
	b	.L1198
	.p2align 2,,3
.L1185:
	sub	x1, x11, x5
	cmp	x23, x1
	bls	.L906
	sub	x1, x0, x5
	add	x1, x28, x1
	add	x2, x1, x6
	cmp	x28, x2
	bcs	.L1229
	sub	x2, x5, x0
	mov	x0, x11
	sub	x6, x6, x2
	add	x11, x11, x2
	stp	x11, x6, [sp, 160]
	stp	x5, x8, [sp, 176]
	stp	x12, x7, [sp, 192]
	stp	x4, x3, [sp, 208]
	stp	x9, x10, [sp, 224]
	bl	memmove
	adrp	x13, .LANCHOR0
	ldp	x5, x8, [sp, 176]
	ldp	x11, x6, [sp, 160]
	ldp	x12, x7, [sp, 192]
	ldp	x4, x3, [sp, 208]
	mov	x0, x5
	ldp	x9, x10, [sp, 224]
	b	.L906
	.p2align 2,,3
.L974:
	ldr	q0, [x7, 16]
	sub	x0, x4, #16
	str	q0, [x8, 16]
	cmp	x0, 16
	ble	.L977
	add	x0, x8, 32
	add	x1, x7, 32
	.p2align 3,,7
.L978:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x0, x14
	bcc	.L978
	add	x7, x7, x4
	str	x7, [sp, 272]
	add	x11, x4, x25
	sub	x0, x14, x23
	cbz	x28, .L976
	.p2align 3,,7
.L1201:
	sub	x1, x14, x5
	cmp	x23, x1
	bls	.L976
	sub	x1, x0, x5
	add	x1, x28, x1
	add	x2, x1, x25
	cmp	x28, x2
	bcs	.L1230
	sub	x2, x5, x0
	mov	x0, x14
	add	x14, x14, x2
	sub	x25, x25, x2
	stp	x14, x5, [sp, 160]
	stp	x8, x12, [sp, 176]
	stp	x6, x11, [sp, 192]
	stp	x7, x3, [sp, 208]
	stp	x9, x10, [sp, 224]
	bl	memmove
	adrp	x13, .LANCHOR0
	ldp	x14, x5, [sp, 160]
	ldp	x8, x12, [sp, 176]
	ldp	x6, x11, [sp, 192]
	ldp	x7, x3, [sp, 208]
	mov	x0, x5
	ldp	x9, x10, [sp, 224]
	b	.L976
	.p2align 2,,3
.L1194:
	add	x0, x13, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 320]
	b	.L956
	.p2align 2,,3
.L1193:
	sub	x1, x8, x5
	cmp	x23, x1
	bls	.L941
	sub	x1, x0, x5
	add	x1, x28, x1
	add	x2, x1, x20
	cmp	x28, x2
	bcs	.L1231
	sub	x2, x5, x0
	mov	x0, x8
	add	x8, x8, x2
	sub	x20, x20, x2
	stp	x8, x5, [sp, 160]
	stp	x4, x12, [sp, 176]
	stp	x11, x6, [sp, 192]
	stp	x7, x3, [sp, 208]
	stp	x9, x10, [sp, 224]
	bl	memmove
	adrp	x13, .LANCHOR0
	ldp	x8, x5, [sp, 160]
	ldp	x4, x12, [sp, 176]
	ldp	x11, x6, [sp, 192]
	ldp	x7, x3, [sp, 208]
	mov	x0, x5
	ldp	x9, x10, [sp, 224]
	b	.L941
	.p2align 2,,3
.L939:
	ldr	q0, [x7, 16]
	sub	x0, x6, #16
	str	q0, [x4, 16]
	cmp	x0, 16
	ble	.L942
	add	x0, x4, 32
	add	x1, x7, 32
	.p2align 3,,7
.L943:
	ldr	q0, [x1]
	add	x0, x0, 32
	add	x1, x1, 32
	str	q0, [x0, -32]
	ldr	q0, [x1, -16]
	str	q0, [x0, -16]
	cmp	x0, x8
	bcc	.L943
	b	.L942
	.p2align 2,,3
.L1186:
	add	x0, x13, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 320]
	b	.L921
	.p2align 2,,3
.L1202:
	add	x0, x13, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 320]
	b	.L991
	.p2align 2,,3
.L1210:
	add	x0, x13, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 320]
	b	.L1026
	.p2align 2,,3
.L1188:
	ldr	x18, [sp, 400]
	neg	w30, w14
	stp	x23, x18, [sp, 400]
	lsl	x18, x19, x25
	lsr	x18, x18, x30
	add	w25, w25, w14
	add	x18, x17, x18
	str	w25, [sp, 312]
	mov	x23, x18
	str	x18, [sp, 392]
	cbz	w16, .L931
	b	.L1190
	.p2align 2,,3
.L904:
	ldr	q0, [x7, 16]
	sub	x0, x1, #16
	str	q0, [x4, 16]
	cmp	x0, 16
	ble	.L907
	add	x0, x4, 32
	add	x2, x7, 32
	.p2align 3,,7
.L908:
	ldr	q0, [x2]
	add	x0, x0, 32
	add	x2, x2, 32
	str	q0, [x0, -32]
	ldr	q0, [x2, -16]
	str	q0, [x0, -16]
	cmp	x0, x11
	bcc	.L908
	b	.L907
	.p2align 2,,3
.L1209:
	sub	x1, x19, x5
	cmp	x23, x1
	bls	.L1011
	sub	x1, x0, x5
	stp	x11, x14, [sp, 184]
	add	x1, x28, x1
	add	x2, x1, x25
	stp	x6, x3, [sp, 200]
	stp	x9, x10, [sp, 216]
	cmp	x28, x2
	bcs	.L1232
	sub	x2, x5, x0
	mov	x0, x19
	sub	x25, x25, x2
	add	x19, x19, x2
	stp	x5, x4, [sp, 160]
	str	x7, [sp, 176]
	bl	memmove
	ldp	x5, x4, [sp, 160]
	adrp	x13, .LANCHOR0
	ldp	x7, x11, [sp, 176]
	ldp	x14, x6, [sp, 192]
	ldp	x3, x9, [sp, 208]
	mov	x0, x5
	ldr	x10, [sp, 224]
	b	.L1011
	.p2align 2,,3
.L1009:
	ldr	q0, [x7, 16]
	sub	x0, x1, #16
	str	q0, [x4, 16]
	cmp	x0, 16
	ble	.L1012
	add	x0, x4, 32
	add	x2, x7, 32
	.p2align 3,,7
.L1013:
	ldr	q0, [x2]
	add	x0, x0, 32
	add	x2, x2, 32
	str	q0, [x0, -32]
	ldr	q0, [x2, -16]
	str	q0, [x0, -16]
	cmp	x0, x19
	bcc	.L1013
	b	.L1012
	.p2align 2,,3
.L911:
	cmp	x23, 7
	bhi	.L915
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x11]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w14, [x0, 1]
	strb	w14, [x11, 1]
	ldr	w2, [x2, x23, lsl 2]
	ldrb	w14, [x0, 2]
	strb	w14, [x11, 2]
	add	x15, x0, x2
	ldrsw	x14, [x1, x23, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x11, 3]
	ldr	w1, [x0, x2]
	sub	x0, x15, x14
	str	w1, [x11, 4]
.L916:
	cmp	x6, 8
	bls	.L910
	sub	x2, x11, x0
	add	x1, x11, x6
	cmp	x2, 15
	bgt	.L917
	add	x11, x11, 8
	add	x0, x0, 8
	.p2align 3,,7
.L918:
	ldr	d0, [x0], 8
	str	d0, [x11], 8
	cmp	x1, x11
	bhi	.L918
	b	.L910
	.p2align 2,,3
.L946:
	cmp	x23, 7
	bhi	.L950
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x8]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w14, [x0, 1]
	strb	w14, [x8, 1]
	ldr	w2, [x2, x23, lsl 2]
	ldrb	w14, [x0, 2]
	strb	w14, [x8, 2]
	add	x15, x0, x2
	ldrsw	x14, [x1, x23, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x8, 3]
	ldr	w1, [x0, x2]
	sub	x0, x15, x14
	str	w1, [x8, 4]
.L951:
	cmp	x20, 8
	bls	.L945
	sub	x2, x8, x0
	add	x1, x8, x20
	cmp	x2, 15
	bgt	.L952
	add	x8, x8, 8
	add	x0, x0, 8
	.p2align 3,,7
.L953:
	ldr	d0, [x0], 8
	str	d0, [x8], 8
	cmp	x1, x8
	bhi	.L953
	b	.L945
	.p2align 2,,3
.L981:
	cmp	x23, 7
	bhi	.L985
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x14]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w4, [x0, 1]
	strb	w4, [x14, 1]
	ldr	w2, [x2, x23, lsl 2]
	ldrb	w4, [x0, 2]
	strb	w4, [x14, 2]
	add	x15, x0, x2
	ldrsw	x4, [x1, x23, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x14, 3]
	ldr	w1, [x0, x2]
	sub	x0, x15, x4
	str	w1, [x14, 4]
.L986:
	cmp	x25, 8
	bls	.L980
	sub	x2, x14, x0
	add	x1, x14, x25
	cmp	x2, 15
	bgt	.L987
	add	x14, x14, 8
	add	x0, x0, 8
	.p2align 3,,7
.L988:
	ldr	d0, [x0], 8
	str	d0, [x14], 8
	cmp	x1, x14
	bhi	.L988
	b	.L980
	.p2align 2,,3
.L1016:
	cmp	x23, 7
	bhi	.L1020
	ldrb	w1, [x0]
	adrp	x2, dec32table.0
	strb	w1, [x19]
	add	x2, x2, :lo12:dec32table.0
	adrp	x1, dec64table.1
	add	x1, x1, :lo12:dec64table.1
	ldrb	w8, [x0, 1]
	strb	w8, [x19, 1]
	ldr	w2, [x2, x23, lsl 2]
	ldrb	w8, [x0, 2]
	strb	w8, [x19, 2]
	add	x12, x0, x2
	ldrsw	x8, [x1, x23, lsl 2]
	ldrb	w1, [x0, 3]
	strb	w1, [x19, 3]
	ldr	w1, [x0, x2]
	sub	x0, x12, x8
	str	w1, [x19, 4]
.L1021:
	cmp	x25, 8
	bls	.L1015
	sub	x2, x19, x0
	add	x1, x19, x25
	cmp	x2, 15
	bgt	.L1022
	add	x19, x19, 8
	add	x0, x0, 8
	.p2align 3,,7
.L1023:
	ldr	d0, [x0], 8
	str	d0, [x19], 8
	cmp	x1, x19
	bhi	.L1023
	b	.L1015
	.p2align 2,,3
.L997:
	cmp	w18, 0
	lsl	x15, x19, x20
	cinc	w11, w11, eq
	add	w20, w20, 1
	uxtw	x11, w11
	str	w20, [sp, 312]
	add	x11, x11, x15, lsr 63
	sub	x15, x23, #1
	cmp	x11, 3
	beq	.L999
	add	x15, sp, 416
	add	x15, x15, x11, lsl 3
	ldr	x15, [x15, -24]
	cmp	x11, 1
	bne	.L999
.L1000:
	stp	x15, x23, [sp, 392]
	mov	x23, x15
	cbz	w17, .L1001
	b	.L1206
	.p2align 2,,3
.L927:
	cmp	w18, 0
	lsl	x18, x19, x25
	cinc	w14, w17, eq
	add	w25, w25, 1
	uxtw	x14, w14
	str	w25, [sp, 312]
	add	x14, x14, x18, lsr 63
	sub	x17, x23, #1
	cmp	x14, 3
	beq	.L929
	add	x17, sp, 416
	add	x17, x17, x14, lsl 3
	ldr	x17, [x17, -24]
	cmp	x14, 1
	bne	.L929
.L930:
	stp	x17, x23, [sp, 392]
	mov	x23, x17
	cbz	w16, .L931
	b	.L1190
	.p2align 2,,3
.L892:
	ldr	x20, [sp, 304]
	cmp	w19, 0
	cinc	w15, w18, eq
	uxtw	x15, w15
	lsl	x18, x20, x21
	add	w21, w21, 1
	add	x15, x15, x18, lsr 63
	str	w21, [sp, 312]
	sub	x18, x23, #1
	cmp	x15, 3
	beq	.L894
	add	x18, sp, 416
	add	x18, x18, x15, lsl 3
	ldr	x18, [x18, -24]
	cmp	x15, 1
	bne	.L894
.L895:
	stp	x18, x23, [sp, 392]
	mov	x23, x18
	cbz	w17, .L896
	b	.L1183
	.p2align 2,,3
.L962:
	cmp	w17, 0
	lsl	x17, x19, x21
	cinc	w14, w18, eq
	add	w21, w21, 1
	uxtw	x14, w14
	str	w21, [sp, 312]
	add	x14, x14, x17, lsr 63
	sub	x17, x23, #1
	cmp	x14, 3
	beq	.L964
	add	x17, sp, 416
	add	x17, x17, x14, lsl 3
	ldr	x17, [x17, -24]
	cmp	x14, 1
	bne	.L964
.L965:
	stp	x17, x23, [sp, 392]
	mov	x23, x17
	cbz	w16, .L966
	b	.L1198
	.p2align 2,,3
.L1051:
	add	x0, sp, 512
	stp	x3, x6, [sp, 280]
	add	x2, sp, 240
	stp	x13, x15, [sp, 136]
	mov	x7, x25
	mov	x5, x19
	ldp	x0, x1, [x0, -232]
	stp	x0, x1, [sp, 240]
	mov	x4, x20
	ldp	x1, x6, [sp, 112]
	str	x24, [sp, 296]
	str	x24, [x2, 16]
	add	x3, sp, 272
	mov	x0, x22
	bl	ZSTD_execSequenceEnd
	mov	x12, x0
	ldp	x13, x15, [sp, 136]
	b	.L1055
	.p2align 2,,3
.L1225:
	lsr	w0, w11, 3
	and	w11, w11, 7
	sub	x0, x1, x0
	str	x0, [sp, 320]
	str	w11, [sp, 312]
	ldr	x0, [x0]
	str	x0, [sp, 304]
	b	.L1046
	.p2align 2,,3
.L1052:
	ldr	q0, [x7, 16]
	sub	x3, x3, #16
	str	q0, [x22, 16]
	cmp	x3, 16
	ble	.L1056
	add	x7, x7, 32
	add	x2, x22, 32
	.p2align 3,,7
.L1057:
	ldr	q0, [x7]
	add	x2, x2, 32
	add	x7, x7, 32
	str	q0, [x2, -32]
	ldr	q0, [x7, -16]
	str	q0, [x2, -16]
	cmp	x5, x2
	bhi	.L1057
	b	.L1056
.L964:
	ldr	x14, [sp, 400]
	str	x14, [sp, 408]
	b	.L965
.L999:
	ldr	x11, [sp, 400]
	str	x11, [sp, 408]
	b	.L1000
.L929:
	ldr	x14, [sp, 400]
	str	x14, [sp, 408]
	b	.L930
.L894:
	ldr	x15, [sp, 400]
	str	x15, [sp, 408]
	b	.L895
	.p2align 2,,3
.L1060:
	cmp	x24, 7
	bhi	.L1064
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
.L1065:
	cmp	x6, 8
	bls	.L1055
	sub	x1, x5, x0
	cmp	x1, 15
	bgt	.L1066
	add	x0, x0, 8
	add	x5, x5, 8
	.p2align 3,,7
.L1067:
	ldr	d0, [x0], 8
	str	d0, [x5], 8
	cmp	x11, x5
	bhi	.L1067
	b	.L1055
.L915:
	ldr	d0, [x0]
	str	d0, [x11]
	b	.L916
.L950:
	ldr	d0, [x0]
	str	d0, [x8]
	b	.L951
.L985:
	ldr	d0, [x0]
	str	d0, [x14]
	b	.L986
.L1020:
	ldr	d0, [x0]
	str	d0, [x19]
	b	.L1021
.L1174:
	ldp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	b	.L875
.L1224:
	.cfi_restore_state
	ldr	x0, [sp, 208]
	add	x0, x0, 192
	str	x0, [sp, 320]
	b	.L1046
.L1035:
	ldr	x30, [sp, 304]
	add	w16, w16, w24
	ldr	w17, [sp, 312]
	ldr	x1, [sp, 392]
	lsl	x24, x30, x17
	add	w17, w17, 1
	add	x16, x16, x24, lsr 63
	str	w17, [sp, 312]
	cmp	x16, 3
	beq	.L1233
	add	x4, sp, 416
	add	x17, x4, x16, lsl 3
	ldr	x24, [x17, -24]
	cmp	x24, 0
	cset	x17, eq
	sub	x24, x24, x17
	cmp	x16, 1
	beq	.L1034
.L1037:
	ldr	x16, [sp, 400]
	str	x16, [sp, 408]
	b	.L1034
.L1064:
	ldr	d0, [x0]
	str	d0, [x5]
	b	.L1065
.L1179:
	ldr	w0, [sp, 312]
	cmp	w0, 64
	bne	.L1176
	add	x0, sp, 512
	ldp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldr	q0, [x0, -120]
	ldr	x0, [sp, 408]
	xtn	v0.2s, v0.2d
	ldr	x7, [sp, 272]
	str	d0, [x18, 60]
	str	w0, [x25, 10308]
	b	.L878
.L1233:
	.cfi_restore_state
	subs	x24, x1, #1
	cset	x16, eq
	sub	x24, x24, x16
	b	.L1037
.L1066:
	ldr	q0, [x0, 8]
	str	q0, [x5, 8]
	cmp	x6, 24
	ble	.L1055
	add	x5, x5, 24
	add	x0, x0, 24
	.p2align 3,,7
.L1068:
	ldr	q0, [x0]
	add	x5, x5, 32
	add	x0, x0, 32
	str	q0, [x5, -32]
	ldr	q0, [x0, -16]
	str	q0, [x5, -16]
	cmp	x11, x5
	bhi	.L1068
	b	.L1055
.L1214:
	lsr	w6, w20, 3
	and	w20, w20, 7
	sub	x6, x11, x6
	ldr	x19, [x6]
	str	x19, [sp, 304]
	str	x6, [sp, 320]
	b	.L1004
.L1220:
	lsr	w8, w21, 3
	and	w21, w21, 7
	sub	x8, x15, x8
	ldr	x19, [x8]
	str	x19, [sp, 304]
	str	x8, [sp, 320]
	b	.L899
.L1216:
	lsr	w2, w21, 3
	and	w21, w21, 7
	sub	x2, x14, x2
	ldr	x19, [x2]
	str	x19, [sp, 304]
	str	x2, [sp, 320]
	b	.L969
.L1218:
	lsr	w2, w25, 3
	and	w25, w25, 7
	sub	x2, x14, x2
	ldr	x19, [x2]
	str	x19, [sp, 304]
	str	x2, [sp, 320]
	b	.L934
.L1022:
	ldr	q0, [x0, 8]
	str	q0, [x19, 8]
	cmp	x25, 24
	ble	.L1015
	add	x19, x19, 24
	add	x0, x0, 24
	.p2align 3,,7
.L1024:
	ldr	q0, [x0]
	add	x19, x19, 32
	add	x0, x0, 32
	str	q0, [x19, -32]
	ldr	q0, [x0, -16]
	str	q0, [x19, -16]
	cmp	x1, x19
	bhi	.L1024
	b	.L1015
.L987:
	ldr	q0, [x0, 8]
	str	q0, [x14, 8]
	cmp	x25, 24
	ble	.L980
	add	x14, x14, 24
	add	x0, x0, 24
	.p2align 3,,7
.L989:
	ldr	q0, [x0]
	add	x14, x14, 32
	add	x0, x0, 32
	str	q0, [x14, -32]
	ldr	q0, [x0, -16]
	str	q0, [x14, -16]
	cmp	x1, x14
	bhi	.L989
	b	.L980
.L952:
	ldr	q0, [x0, 8]
	str	q0, [x8, 8]
	cmp	x20, 24
	ble	.L945
	add	x8, x8, 24
	add	x0, x0, 24
	.p2align 3,,7
.L954:
	ldr	q0, [x0]
	add	x8, x8, 32
	add	x0, x0, 32
	str	q0, [x8, -32]
	ldr	q0, [x0, -16]
	str	q0, [x8, -16]
	cmp	x1, x8
	bhi	.L954
	b	.L945
.L917:
	ldr	q0, [x0, 8]
	str	q0, [x11, 8]
	cmp	x6, 24
	ble	.L910
	add	x11, x11, 24
	add	x0, x0, 24
	.p2align 3,,7
.L919:
	ldr	q0, [x0]
	add	x11, x11, 32
	add	x0, x0, 32
	str	q0, [x11, -32]
	ldr	q0, [x0, -16]
	str	q0, [x11, -16]
	cmp	x1, x11
	bhi	.L919
	b	.L910
.L1228:
	lsr	w0, w1, 3
	and	w1, w1, 7
	sub	x0, x14, x0
	str	x0, [sp, 320]
	str	w1, [sp, 312]
	ldr	x0, [x0]
	str	x0, [sp, 304]
	b	.L1040
.L889:
	ldp	x11, x8, [sp, 344]
	mov	x22, x20
	ldp	x6, x10, [sp, 360]
	ldp	x14, x9, [sp, 376]
	b	.L1031
.L1219:
	add	x8, x13, :lo12:.LANCHOR0
	add	x8, x8, 192
	str	x8, [sp, 320]
	b	.L1177
.L1215:
	add	x2, x13, :lo12:.LANCHOR0
	add	x2, x2, 192
	str	x2, [sp, 320]
	b	.L969
.L1213:
	add	x6, x13, :lo12:.LANCHOR0
	add	x6, x6, 192
	str	x6, [sp, 320]
	b	.L1004
.L1217:
	add	x2, x13, :lo12:.LANCHOR0
	add	x2, x2, 192
	str	x2, [sp, 320]
	b	.L934
.L1227:
	adrp	x0, .LANCHOR0
	add	x0, x0, :lo12:.LANCHOR0
	add	x0, x0, 192
	str	x0, [sp, 320]
	b	.L1040
.L1232:
	mov	x2, x25
	mov	x0, x19
	stp	x4, x7, [sp, 160]
	str	x5, [sp, 176]
	bl	memmove
	ldp	x4, x7, [sp, 160]
	adrp	x13, .LANCHOR0
	ldp	x5, x11, [sp, 176]
	ldp	x14, x6, [sp, 192]
	ldp	x3, x9, [sp, 208]
	ldr	x10, [sp, 224]
	b	.L1015
.L1229:
	mov	x2, x6
	mov	x0, x11
	stp	x8, x12, [sp, 160]
	stp	x7, x5, [sp, 176]
	stp	x4, x3, [sp, 192]
	stp	x9, x10, [sp, 208]
	bl	memmove
	adrp	x13, .LANCHOR0
	ldp	x8, x12, [sp, 160]
	ldp	x7, x5, [sp, 176]
	ldp	x4, x3, [sp, 192]
	ldp	x9, x10, [sp, 208]
	b	.L910
.L1231:
	mov	x2, x20
	mov	x0, x8
	stp	x4, x12, [sp, 160]
	stp	x11, x6, [sp, 176]
	stp	x7, x5, [sp, 192]
	stp	x3, x9, [sp, 208]
	str	x10, [sp, 224]
	bl	memmove
	ldp	x4, x12, [sp, 160]
	adrp	x13, .LANCHOR0
	ldp	x11, x6, [sp, 176]
	ldp	x7, x5, [sp, 192]
	ldp	x3, x9, [sp, 208]
	ldr	x10, [sp, 224]
	b	.L945
.L1230:
	mov	x2, x25
	mov	x0, x14
	stp	x8, x12, [sp, 160]
	stp	x6, x11, [sp, 176]
	stp	x7, x5, [sp, 192]
	stp	x3, x9, [sp, 208]
	str	x10, [sp, 224]
	bl	memmove
	ldp	x8, x12, [sp, 160]
	adrp	x13, .LANCHOR0
	ldp	x6, x11, [sp, 176]
	ldp	x7, x5, [sp, 192]
	ldp	x3, x9, [sp, 208]
	ldr	x10, [sp, 224]
	b	.L980
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
	bls	.L1234
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
	beq	.L1234
	cmp	w1, 3
	mov	x0, -20
	csel	x0, x3, x0, ne
.L1234:
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
	cbz	x3, .L1247
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
	ble	.L1245
	cmp	w21, 255
	beq	.L1281
	cmp	x26, x2
	bls	.L1271
	ldrb	w0, [x20, 1]
	sub	w21, w21, #128
	add	x2, x20, 2
	add	w21, w0, w21, lsl 8
.L1245:
	str	w21, [x1]
	cbnz	w21, .L1248
	mov	x0, x3
	cmp	x2, x26
	beq	.L1280
	mov	x0, -20
.L1280:
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
.L1281:
	.cfi_restore_state
	add	x2, x20, 3
	cmp	x2, x26
	bhi	.L1271
	ldrh	w21, [x20, 1]
	mov	w11, 32512
	add	w21, w21, w11
	str	w21, [x1]
.L1248:
	add	x19, x2, 1
	cmp	x19, x26
	bhi	.L1271
	stp	x23, x24, [sp, 96]
	.cfi_offset 24, -184
	.cfi_offset 23, -192
	ldrb	w23, [x2]
	tst	x23, 3
	bne	.L1272
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
	beq	.L1251
	cmp	w0, 3
	beq	.L1252
	cmp	w0, 1
	beq	.L1282
	adrp	x22, .LANCHOR0
	add	x0, x22, :lo12:.LANCHOR0
	add	x0, x0, 400
	str	x0, [x25]
.L1256:
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
	bhi	.L1279
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
	bhi	.L1279
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
	b	.L1242
	.p2align 2,,3
.L1271:
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
.L1247:
	mov	x0, -72
.L1242:
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
.L1272:
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
	b	.L1280
	.p2align 2,,3
.L1279:
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
	b	.L1280
	.p2align 2,,3
.L1252:
	.cfi_restore_state
	cbz	w1, .L1279
	cmp	w3, 0
	adrp	x22, .LANCHOR0
	ccmp	w21, 24, 4, ne
	ble	.L1256
	ldr	x0, [x25]
	mov	x9, 4160
	add	x2, x0, x9
	.p2align 3,,7
.L1258:
	prfm	PLDL2KEEP, [x0]
	add	x0, x0, 64
	cmp	x2, x0
	bne	.L1258
	adrp	x22, .LANCHOR0
	b	.L1256
	.p2align 2,,3
.L1282:
	cbz	x6, .L1279
	ldrb	w4, [x2, 1]
	cmp	w4, 35
	bhi	.L1279
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
	b	.L1256
	.p2align 2,,3
.L1251:
	add	x0, sp, 176
	mov	x4, x6
	mov	x3, x19
	add	x2, sp, 172
	add	x1, sp, 168
	str	x0, [sp, 152]
	bl	FSE_readNCount
	cmn	x0, #120
	bhi	.L1279
	ldr	w5, [sp, 172]
	cmp	w5, 9
	bhi	.L1279
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
	b	.L1256
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
	cbz	w1, .L1284
	ldr	w0, [x27, 13560]
.L1284:
	cmp	x19, x0
	bhi	.L1300
	mov	x4, x23
	mov	x3, x22
	mov	x2, x19
	mov	x1, x21
	mov	x0, x20
	bl	ZSTD_decodeLiteralsBlock
	cmn	x0, #120
	bhi	.L1283
	ldr	w1, [x27, 13792]
	add	x21, x21, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	sub	x19, x19, x0
	cbz	w1, .L1323
	ldr	w0, [x27, 13560]
	cmp	x0, x23
	csel	x0, x0, x23, ls
.L1288:
	mov	x25, x22
	cbz	x0, .L1289
.L1287:
	add	x25, x22, x0
.L1289:
	ldr	x26, [x20, 29904]
	mov	x3, x19
	ldr	w24, [x27, 13820]
	mov	x2, x21
	add	x1, sp, 108
	mov	x0, x20
	bl	ZSTD_decodeSeqHeaders
	cmn	x0, #120
	bhi	.L1322
	cmp	x22, 0
	ccmp	x23, 0, 4, ne
	bne	.L1291
	ldr	w1, [sp, 108]
	cmp	w1, 0
	ble	.L1291
.L1304:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x0, -70
.L1283:
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
.L1291:
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
	bhi	.L1304
	sub	x25, x25, x26
	cmp	w24, 0
	add	x3, x21, x0
	sub	x4, x19, x0
	ldr	w5, [sp, 108]
	mov	x0, 16777216
	ccmp	x25, x0, 0, eq
	bls	.L1292
	cmp	w5, 8
	ble	.L1295
	ldr	x0, [x20, 16]
	mov	w1, 1
	ldr	w7, [x0, 4]
	lsl	w1, w1, w7
	cbz	w1, .L1295
	sub	w1, w1, #1
	add	x6, x0, 18
	add	x0, x0, 10
	mov	w2, 0
	add	x1, x6, w1, uxtw 3
	.p2align 3,,7
.L1297:
	ldrb	w6, [x0], 8
	cmp	w6, 22
	cinc	w2, w2, hi
	cmp	x0, x1
	bne	.L1297
	mov	w0, 8
	sub	w0, w0, w7
	lsl	w2, w2, w0
	cmp	w2, 6
	cset	w24, hi
	.p2align 3,,7
.L1292:
	str	wzr, [x27, 13820]
	cbnz	w24, .L1324
.L1294:
	ldr	w0, [x27, 13984]
	mov	x2, x23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	cmp	w0, 2
	mov	x1, x22
	mov	x0, x20
	beq	.L1325
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
.L1300:
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
.L1323:
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
	bhi	.L1301
	mov	x0, x23
	b	.L1288
	.p2align 2,,3
.L1322:
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
.L1301:
	.cfi_restore_state
	mov	x0, 131072
	b	.L1287
	.p2align 2,,3
.L1295:
	str	wzr, [x27, 13820]
	b	.L1294
	.p2align 2,,3
.L1325:
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
.L1324:
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
	bne	.L1331
	ret
	.p2align 2,,3
.L1331:
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
	beq	.L1333
	ldr	x1, [x19, 29896]
	str	x20, [x19, 29888]
	str	x20, [x19, 29896]
	sub	x1, x0, x1
	str	x0, [x19, 29912]
	sub	x0, x20, x1
	str	x0, [x19, 29904]
.L1333:
	mov	x0, -72
	cmp	x21, 131072
	bhi	.L1332
	mov	x4, x22
	mov	x3, x20
	mov	x2, x21
	mov	x1, x23
	mov	x0, x19
	mov	w5, 0
	bl	ZSTD_decodeLiteralsBlock
	cmn	x0, #120
	bhi	.L1332
	ldr	w1, [x27, 13792]
	add	x23, x23, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	sub	x21, x21, x0
	cbz	w1, .L1374
	ldr	w0, [x27, 13560]
	cmp	x0, x22
	csel	x0, x0, x22, ls
.L1337:
	mov	x25, x20
	cbz	x0, .L1338
.L1336:
	add	x25, x20, x0
.L1338:
	ldr	x26, [x19, 29904]
	mov	x3, x21
	ldr	w24, [x27, 13820]
	mov	x2, x23
	add	x1, sp, 108
	mov	x0, x19
	bl	ZSTD_decodeSeqHeaders
	cmn	x0, #120
	bhi	.L1373
	cmp	x20, 0
	ccmp	x22, 0, 4, ne
	bne	.L1340
	ldr	w1, [sp, 108]
	cmp	w1, 0
	ble	.L1340
.L1341:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x0, -70
.L1332:
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
.L1340:
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
	bhi	.L1341
	sub	x25, x25, x26
	cmp	w24, 0
	add	x3, x23, x0
	sub	x4, x21, x0
	ldr	w5, [sp, 108]
	mov	x0, 16777216
	ccmp	x25, x0, 0, eq
	bls	.L1342
	cmp	w5, 8
	ble	.L1345
	ldr	x0, [x19, 16]
	mov	w1, 1
	ldr	w7, [x0, 4]
	lsl	w1, w1, w7
	cbz	w1, .L1345
	sub	w1, w1, #1
	add	x6, x0, 18
	add	x0, x0, 10
	mov	w2, 0
	add	x1, x6, w1, uxtw 3
	.p2align 3,,7
.L1347:
	ldrb	w6, [x0], 8
	cmp	w6, 22
	cinc	w2, w2, hi
	cmp	x0, x1
	bne	.L1347
	mov	w0, 8
	sub	w0, w0, w7
	lsl	w2, w2, w0
	cmp	w2, 6
	cset	w24, hi
	.p2align 3,,7
.L1342:
	str	wzr, [x27, 13820]
	cbnz	w24, .L1375
.L1344:
	ldr	w0, [x27, 13984]
	mov	x2, x22
	mov	x1, x20
	cmp	w0, 2
	mov	x0, x19
	beq	.L1376
	bl	ZSTD_decompressSequences_default.constprop.0
.L1348:
	cmn	x0, #120
	bhi	.L1373
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
.L1374:
	.cfi_restore_state
	mov	x0, 131071
	cmp	x22, x0
	bhi	.L1352
	mov	x0, x22
	b	.L1337
	.p2align 2,,3
.L1373:
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
.L1352:
	.cfi_restore_state
	mov	x0, 131072
	b	.L1336
	.p2align 2,,3
.L1345:
	str	wzr, [x27, 13820]
	b	.L1344
	.p2align 2,,3
.L1376:
	bl	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	b	.L1348
	.p2align 2,,3
.L1375:
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	bl	ZSTD_decompressSequencesLong_default.constprop.0
	b	.L1348
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
	beq	.L1378
	ldr	x1, [x19, 29896]
	str	x20, [x19, 29888]
	str	x20, [x19, 29896]
	sub	x1, x0, x1
	str	x0, [x19, 29912]
	sub	x0, x20, x1
	str	x0, [x19, 29904]
.L1378:
	mov	x0, -72
	cmp	x21, 131072
	bhi	.L1377
	mov	x4, x22
	mov	x3, x20
	mov	x2, x21
	mov	x1, x23
	mov	x0, x19
	mov	w5, 0
	bl	ZSTD_decodeLiteralsBlock
	cmn	x0, #120
	bhi	.L1377
	ldr	w1, [x27, 13792]
	add	x23, x23, x0
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	sub	x21, x21, x0
	cbz	w1, .L1420
	ldr	w0, [x27, 13560]
	cmp	x0, x22
	csel	x0, x0, x22, ls
.L1382:
	mov	x25, x20
	cbz	x0, .L1383
.L1381:
	add	x25, x20, x0
.L1383:
	ldr	x26, [x19, 29904]
	mov	x3, x21
	ldr	w24, [x27, 13820]
	mov	x2, x23
	add	x1, sp, 108
	mov	x0, x19
	bl	ZSTD_decodeSeqHeaders
	cmn	x0, #120
	bhi	.L1419
	cmp	x20, 0
	ccmp	x22, 0, 4, ne
	bne	.L1385
	ldr	w1, [sp, 108]
	cmp	w1, 0
	ble	.L1385
.L1386:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	mov	x0, -70
.L1377:
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
.L1385:
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
	bhi	.L1386
	sub	x25, x25, x26
	cmp	w24, 0
	add	x3, x23, x0
	sub	x4, x21, x0
	ldr	w5, [sp, 108]
	mov	x0, 16777216
	ccmp	x25, x0, 0, eq
	bls	.L1387
	cmp	w5, 8
	ble	.L1390
	ldr	x0, [x19, 16]
	mov	w1, 1
	ldr	w7, [x0, 4]
	lsl	w1, w1, w7
	cbz	w1, .L1390
	sub	w1, w1, #1
	add	x6, x0, 18
	add	x0, x0, 10
	mov	w2, 0
	add	x1, x6, w1, uxtw 3
	.p2align 3,,7
.L1392:
	ldrb	w6, [x0], 8
	cmp	w6, 22
	cinc	w2, w2, hi
	cmp	x0, x1
	bne	.L1392
	mov	w0, 8
	sub	w0, w0, w7
	lsl	w2, w2, w0
	cmp	w2, 6
	cset	w24, hi
	.p2align 3,,7
.L1387:
	str	wzr, [x27, 13820]
	cbnz	w24, .L1421
.L1389:
	ldr	w0, [x27, 13984]
	mov	x2, x22
	mov	x1, x20
	cmp	w0, 2
	mov	x0, x19
	beq	.L1422
	bl	ZSTD_decompressSequences_default.constprop.0
.L1393:
	cmn	x0, #120
	bhi	.L1419
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
.L1420:
	.cfi_restore_state
	mov	x0, 131071
	cmp	x22, x0
	bhi	.L1398
	mov	x0, x22
	b	.L1382
	.p2align 2,,3
.L1419:
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
.L1398:
	.cfi_restore_state
	mov	x0, 131072
	b	.L1381
	.p2align 2,,3
.L1390:
	str	wzr, [x27, 13820]
	b	.L1389
	.p2align 2,,3
.L1422:
	bl	ZSTD_decompressSequencesSplitLitBuffer_default.constprop.0
	b	.L1393
	.p2align 2,,3
.L1421:
	mov	x2, x22
	mov	x1, x20
	mov	x0, x19
	bl	ZSTD_decompressSequencesLong_default.constprop.0
	b	.L1393
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
