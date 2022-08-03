	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sinParams.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	calculateSin1Values
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	calculateSin1Values, %function
calculateSin1Values:
.LFB9:
	.file 1 "sinParams.c"
	.loc 1 91 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 93 0
	ldr	r1, .L10
	ldr	r3, .L10+4
	ldr	r2, [r1]
	sdiv	r3, r3, r2
	uxth	r3, r3
	.loc 1 91 0
	vpush.64	{d8, d9, d10}
	.cfi_def_cfa_offset 40
	.cfi_offset 80, -40
	.cfi_offset 81, -36
	.cfi_offset 82, -32
	.cfi_offset 83, -28
	.cfi_offset 84, -24
	.cfi_offset 85, -20
	.loc 1 93 0
	strh	r3, [r1, #16]	@ movhi
.LVL1:
.LBB2:
	.loc 1 95 0
	cbz	r3, .L1
	.loc 1 96 0
	vldr.32	s15, [r1, #4]	@ int
	vldr.32	s13, .L10+8
	ldr	r4, .L10+12
	vldr.32	s14, .L10+16
.LBE2:
	.loc 1 92 0
	vldr.32	s16, .L10+20
.LBB3:
	.loc 1 97 0
	vldr.32	s21, .L10+24
	.loc 1 98 0
	vldr.32	s20, .L10+28
	.loc 1 96 0
	vcvt.f32.s32	s15, s15
	vmov	s12, r2	@ int
	vdiv.f32	s19, s15, s13
	subs	r3, r3, #1
	uxth	r3, r3
	adds	r5, r4, #2
	add	r5, r5, r3, lsl #1
	vcvt.f32.s32	s17, s12
	vmov.f32	s18, #1.5e+0
	vmul.f32	s17, s17, s14
.LVL2:
.L3:
	.loc 1 96 0 is_stmt 0 discriminator 3
	vmul.f32	s0, s17, s16
	bl	sinf
.LVL3:
	vmov.f32	s15, s18
	vfma.f32	s15, s19, s0
	.loc 1 98 0 is_stmt 1 discriminator 3
	vadd.f32	s16, s16, s20
.LVL4:
	.loc 1 97 0 discriminator 3
	vmul.f32	s15, s15, s21
	vcvt.u32.f32	s15, s15
	vmov	r3, s15	@ int
	strh	r3, [r4], #2	@ movhi
	.loc 1 95 0 discriminator 3
	cmp	r5, r4
	bne	.L3
.LVL5:
.L1:
.LBE3:
	.loc 1 100 0
	vldm	sp!, {d8-d10}
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
	pop	{r3, r4, r5, pc}
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.word	100000
	.word	1120403456
	.word	.LANCHOR1
	.word	1086918608
	.word	0
	.word	1166012416
	.word	925353388
	.cfi_endproc
.LFE9:
	.size	calculateSin1Values, .-calculateSin1Values
	.align	1
	.p2align 2,,3
	.global	increaseAmplitude1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseAmplitude1, %function
increaseAmplitude1:
.LFB1:
	.loc 1 11 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 12 0
	ldr	r1, .L17
	.loc 1 11 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 12 0
	ldr	r3, [r1, #4]
	cmp	r3, #0
	blt	.L13
	.loc 1 12 0 is_stmt 0 discriminator 1
	ldr	r2, [r1, #12]
	cmp	r2, #0
	it	lt
	rsblt	r2, r2, #0
	add	r2, r2, r3
	cmp	r2, #49
	beq	.L15
.L13:
	.loc 1 15 0 is_stmt 1
	adds	r3, r3, #1
	str	r3, [r1, #4]
	.loc 1 16 0
	bl	calculateSin1Values
.LVL6:
	.loc 1 18 0
	movs	r0, #1
	.loc 1 19 0
	pop	{r3, pc}
.L15:
	.loc 1 13 0
	movs	r0, #0
	.loc 1 19 0
	pop	{r3, pc}
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.cfi_endproc
.LFE1:
	.size	increaseAmplitude1, .-increaseAmplitude1
	.align	1
	.p2align 2,,3
	.global	decreaseAmplitude1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseAmplitude1, %function
decreaseAmplitude1:
.LFB3:
	.loc 1 31 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 0
	ldr	r2, .L24
	.loc 1 31 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 32 0
	ldr	r3, [r2, #4]
	cmp	r3, #0
	bgt	.L20
	.loc 1 32 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #12]
	cmp	r1, #0
	it	lt
	rsblt	r1, r1, #0
	subs	r1, r1, r3
	cmp	r1, #49
	beq	.L22
.L20:
	.loc 1 35 0 is_stmt 1
	subs	r3, r3, #1
	str	r3, [r2, #4]
	.loc 1 36 0
	bl	calculateSin1Values
.LVL7:
	.loc 1 38 0
	movs	r0, #1
	.loc 1 39 0
	pop	{r3, pc}
.L22:
	.loc 1 33 0
	movs	r0, #0
	.loc 1 39 0
	pop	{r3, pc}
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.cfi_endproc
.LFE3:
	.size	decreaseAmplitude1, .-decreaseAmplitude1
	.align	1
	.p2align 2,,3
	.global	increaseFrequency1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseFrequency1, %function
increaseFrequency1:
.LFB5:
	.loc 1 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 52 0
	ldr	r2, .L30
	.loc 1 51 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 52 0
	ldr	r3, [r2]
	movw	r1, #10000
	cmp	r3, r1
	beq	.L28
	.loc 1 54 0
	ldr	r1, .L30+4
	.loc 1 55 0
	adds	r3, r3, #100
	.loc 1 54 0
	movs	r0, #0
	strh	r0, [r1, #2000]	@ movhi
	.loc 1 55 0
	str	r3, [r2]
	.loc 1 56 0
	bl	calculateSin1Values
.LVL8:
	.loc 1 58 0
	movs	r0, #1
	.loc 1 59 0
	pop	{r3, pc}
.L28:
	.loc 1 52 0
	movs	r0, #0
	.loc 1 59 0
	pop	{r3, pc}
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE5:
	.size	increaseFrequency1, .-increaseFrequency1
	.align	1
	.p2align 2,,3
	.global	decreaseFrequency1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseFrequency1, %function
decreaseFrequency1:
.LFB7:
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 72 0
	ldr	r2, .L36
	.loc 1 71 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 72 0
	ldr	r3, [r2]
	cmp	r3, #100
	beq	.L34
	.loc 1 74 0
	ldr	r1, .L36+4
	.loc 1 75 0
	subs	r3, r3, #100
	.loc 1 74 0
	movs	r0, #0
	strh	r0, [r1, #2000]	@ movhi
	.loc 1 75 0
	str	r3, [r2]
	.loc 1 76 0
	bl	calculateSin1Values
.LVL9:
	.loc 1 78 0
	movs	r0, #1
	.loc 1 79 0
	pop	{r3, pc}
.L34:
	.loc 1 72 0
	movs	r0, #0
	.loc 1 79 0
	pop	{r3, pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE7:
	.size	decreaseFrequency1, .-decreaseFrequency1
	.align	1
	.p2align 2,,3
	.global	calculateSin2Values
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	calculateSin2Values, %function
calculateSin2Values:
.LFB10:
	.loc 1 102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL10:
	push	{r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 104 0
	ldr	r1, .L46
	ldr	r3, .L46+4
	ldr	r2, [r1, #8]
	sdiv	r3, r3, r2
	uxth	r3, r3
	.loc 1 102 0
	vpush.64	{d8, d9, d10}
	.cfi_def_cfa_offset 40
	.cfi_offset 80, -40
	.cfi_offset 81, -36
	.cfi_offset 82, -32
	.cfi_offset 83, -28
	.cfi_offset 84, -24
	.cfi_offset 85, -20
	.loc 1 104 0
	strh	r3, [r1, #18]	@ movhi
.LVL11:
.LBB4:
	.loc 1 106 0
	cbz	r3, .L38
	.loc 1 107 0
	vldr.32	s15, [r1, #12]	@ int
	vldr.32	s13, .L46+8
	ldr	r4, .L46+12
	vldr.32	s14, .L46+16
.LBE4:
	.loc 1 103 0
	vldr.32	s16, .L46+20
.LBB5:
	.loc 1 108 0
	vldr.32	s20, .L46+24
	.loc 1 109 0
	vldr.32	s19, .L46+28
	.loc 1 107 0
	vcvt.f32.s32	s15, s15
	vmov	s12, r2	@ int
	vdiv.f32	s18, s15, s13
	subs	r3, r3, #1
	uxth	r3, r3
	adds	r5, r4, #2
	add	r5, r5, r3, lsl #1
	vcvt.f32.s32	s17, s12
	vmul.f32	s17, s17, s14
.LVL12:
.L40:
	.loc 1 107 0 is_stmt 0 discriminator 3
	vmul.f32	s0, s17, s16
	bl	sinf
.LVL13:
	vmul.f32	s0, s18, s0
.LVL14:
	.loc 1 109 0 is_stmt 1 discriminator 3
	vadd.f32	s16, s16, s19
.LVL15:
	.loc 1 108 0 discriminator 3
	vmul.f32	s0, s0, s20
.LVL16:
	vcvt.u32.f32	s0, s0
	vmov	r3, s0	@ int
	strh	r3, [r4], #2	@ movhi
	.loc 1 106 0 discriminator 3
	cmp	r4, r5
	bne	.L40
.LVL17:
.L38:
.LBE5:
	.loc 1 111 0
	vldm	sp!, {d8-d10}
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
	pop	{r3, r4, r5, pc}
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	100000
	.word	1120403456
	.word	.LANCHOR1+2004
	.word	1086918608
	.word	0
	.word	1166012416
	.word	925353388
	.cfi_endproc
.LFE10:
	.size	calculateSin2Values, .-calculateSin2Values
	.align	1
	.p2align 2,,3
	.global	increaseAmplitude2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseAmplitude2, %function
increaseAmplitude2:
.LFB2:
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 22 0
	ldr	r1, .L53
	.loc 1 21 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 22 0
	ldr	r3, [r1, #12]
	cmp	r3, #0
	blt	.L49
	.loc 1 22 0 is_stmt 0 discriminator 1
	ldr	r2, [r1, #4]
	cmp	r2, #0
	it	lt
	rsblt	r2, r2, #0
	add	r2, r2, r3
	cmp	r2, #49
	beq	.L51
.L49:
	.loc 1 25 0 is_stmt 1
	adds	r3, r3, #1
	str	r3, [r1, #12]
	.loc 1 26 0
	bl	calculateSin2Values
.LVL18:
	.loc 1 28 0
	movs	r0, #1
	.loc 1 29 0
	pop	{r3, pc}
.L51:
	.loc 1 23 0
	movs	r0, #0
	.loc 1 29 0
	pop	{r3, pc}
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.cfi_endproc
.LFE2:
	.size	increaseAmplitude2, .-increaseAmplitude2
	.align	1
	.p2align 2,,3
	.global	decreaseAmplitude2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseAmplitude2, %function
decreaseAmplitude2:
.LFB4:
	.loc 1 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 42 0
	ldr	r2, .L60
	.loc 1 41 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 42 0
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bgt	.L56
	.loc 1 42 0 is_stmt 0 discriminator 1
	ldr	r1, [r2, #4]
	cmp	r1, #0
	it	lt
	rsblt	r1, r1, #0
	subs	r1, r1, r3
	cmp	r1, #49
	beq	.L58
.L56:
	.loc 1 45 0 is_stmt 1
	subs	r3, r3, #1
	str	r3, [r2, #12]
	.loc 1 46 0
	bl	calculateSin2Values
.LVL19:
	.loc 1 48 0
	movs	r0, #1
	.loc 1 49 0
	pop	{r3, pc}
.L58:
	.loc 1 43 0
	movs	r0, #0
	.loc 1 49 0
	pop	{r3, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.cfi_endproc
.LFE4:
	.size	decreaseAmplitude2, .-decreaseAmplitude2
	.align	1
	.p2align 2,,3
	.global	increaseFrequency2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseFrequency2, %function
increaseFrequency2:
.LFB6:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 0
	ldr	r2, .L66
	.loc 1 61 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 62 0
	ldr	r3, [r2, #8]
	movw	r1, #10000
	cmp	r3, r1
	beq	.L64
	.loc 1 64 0
	ldr	r1, .L66+4
	.loc 1 65 0
	adds	r3, r3, #100
	.loc 1 64 0
	movs	r0, #0
	strh	r0, [r1, #2000]	@ movhi
	.loc 1 65 0
	str	r3, [r2, #8]
	.loc 1 66 0
	bl	calculateSin2Values
.LVL20:
	.loc 1 68 0
	movs	r0, #1
	.loc 1 69 0
	pop	{r3, pc}
.L64:
	.loc 1 62 0
	movs	r0, #0
	.loc 1 69 0
	pop	{r3, pc}
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE6:
	.size	increaseFrequency2, .-increaseFrequency2
	.align	1
	.p2align 2,,3
	.global	decreaseFrequency2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseFrequency2, %function
decreaseFrequency2:
.LFB8:
	.loc 1 81 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 82 0
	ldr	r2, .L72
	.loc 1 81 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 82 0
	ldr	r3, [r2, #8]
	cmp	r3, #100
	beq	.L70
	.loc 1 84 0
	ldr	r1, .L72+4
	.loc 1 85 0
	subs	r3, r3, #100
	.loc 1 84 0
	movs	r0, #0
	strh	r0, [r1, #2000]	@ movhi
	.loc 1 85 0
	str	r3, [r2, #8]
	.loc 1 86 0
	bl	calculateSin2Values
.LVL21:
	.loc 1 88 0
	movs	r0, #1
	.loc 1 89 0
	pop	{r3, pc}
.L70:
	.loc 1 82 0
	movs	r0, #0
	.loc 1 89 0
	pop	{r3, pc}
.L73:
	.align	2
.L72:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE8:
	.size	decreaseFrequency2, .-decreaseFrequency2
	.align	1
	.p2align 2,,3
	.global	prepareValuesinDACbuff1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prepareValuesinDACbuff1, %function
prepareValuesinDACbuff1:
.LFB11:
	.loc 1 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL22:
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
.LBB6:
	.loc 1 116 0
	ldr	r2, .L80
	ldr	r6, .L80+4
	ldr	r4, .L80+8
	ldrh	r3, [r6, #2000]
	ldrh	r0, [r2, #16]
	ldrh	r5, [r2, #18]
	add	r7, r4, #1000
.LVL23:
.L76:
	udiv	r2, r3, r5
	mls	r2, r5, r2, r3
	udiv	r1, r3, r0
	uxth	r2, r2
	mls	r1, r0, r1, r3
	add	r2, r6, r2, lsl #1
	uxth	r1, r1
	.loc 1 118 0
	adds	r3, r3, #1
	.loc 1 116 0
	ldrh	ip, [r2, #2004]
	ldrh	r1, [r6, r1, lsl #1]
	.loc 1 118 0
	uxth	r3, r3
	.loc 1 119 0
	udiv	r2, r3, r0
	mls	r2, r0, r2, r3
	.loc 1 116 0
	add	r1, r1, ip
	.loc 1 119 0
	uxth	r2, r2
	.loc 1 115 0
	strh	r1, [r4, #2]!	@ movhi
	.loc 1 119 0
	cbnz	r2, .L75
	.loc 1 119 0 is_stmt 0 discriminator 1
	udiv	r2, r3, r5
	mls	r2, r5, r2, r3
	uxth	r2, r2
	cmp	r2, #0
	it	eq
	moveq	r3, #0
.L75:
	.loc 1 114 0 is_stmt 1 discriminator 2
	cmp	r7, r4
	bne	.L76
	strh	r3, [r6, #2000]	@ movhi
.LBE6:
	.loc 1 121 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	dac_buffer1-2
	.cfi_endproc
.LFE11:
	.size	prepareValuesinDACbuff1, .-prepareValuesinDACbuff1
	.align	1
	.p2align 2,,3
	.global	prepareValuesinDACbuff2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prepareValuesinDACbuff2, %function
prepareValuesinDACbuff2:
.LFB12:
	.loc 1 123 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL24:
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
.LBB7:
	.loc 1 126 0
	ldr	r2, .L88
	ldr	r6, .L88+4
	ldr	r4, .L88+8
	ldrh	r3, [r6, #2000]
	ldrh	r0, [r2, #16]
	ldrh	r5, [r2, #18]
	add	r7, r4, #1000
.LVL25:
.L84:
	udiv	r2, r3, r5
	mls	r2, r5, r2, r3
	udiv	r1, r3, r0
	uxth	r2, r2
	mls	r1, r0, r1, r3
	add	r2, r6, r2, lsl #1
	uxth	r1, r1
	.loc 1 128 0
	adds	r3, r3, #1
	.loc 1 126 0
	ldrh	ip, [r2, #2004]
	ldrh	r1, [r6, r1, lsl #1]
	.loc 1 128 0
	uxth	r3, r3
	.loc 1 129 0
	udiv	r2, r3, r0
	mls	r2, r0, r2, r3
	.loc 1 126 0
	add	r1, r1, ip
	.loc 1 129 0
	uxth	r2, r2
	.loc 1 125 0
	strh	r1, [r4, #2]!	@ movhi
	.loc 1 129 0
	cbnz	r2, .L83
	.loc 1 129 0 is_stmt 0 discriminator 1
	udiv	r2, r3, r5
	mls	r2, r5, r2, r3
	uxth	r2, r2
	cmp	r2, #0
	it	eq
	moveq	r3, #0
.L83:
	.loc 1 124 0 is_stmt 1 discriminator 2
	cmp	r7, r4
	bne	.L84
	strh	r3, [r6, #2000]	@ movhi
.LBE7:
	.loc 1 131 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L89:
	.align	2
.L88:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	dac_buffer2-2
	.cfi_endproc
.LFE12:
	.size	prepareValuesinDACbuff2, .-prepareValuesinDACbuff2
	.align	1
	.p2align 2,,3
	.global	initLCS
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initLCS, %function
initLCS:
.LFB0:
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 4 0
	bl	calculateSin1Values
.LVL26:
	.loc 1 5 0
	bl	calculateSin2Values
.LVL27:
	.loc 1 7 0
	bl	prepareValuesinDACbuff1
.LVL28:
	.loc 1 9 0
	pop	{r3, lr}
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 8 0
	b	prepareValuesinDACbuff2
.LVL29:
	.cfi_endproc
.LFE0:
	.size	initLCS, .-initLCS
	.comm	dac_buffer2,1000,4
	.comm	dac_buffer1,1000,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sinParams, %object
	.size	sinParams, 16
sinParams:
	.word	100
	.word	20
	.word	100
	.word	20
	.type	numOfsin1values, %object
	.size	numOfsin1values, 2
numOfsin1values:
	.short	1000
	.type	numOfsin2values, %object
	.size	numOfsin2values, 2
numOfsin2values:
	.short	1000
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	sin1values, %object
	.size	sin1values, 2000
sin1values:
	.space	2000
	.type	t, %object
	.size	t, 2
t:
	.space	2
	.space	2
	.type	sin2values, %object
	.size	sin2values, 2000
sin2values:
	.space	2000
	.text
.Letext0:
	.file 2 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 6 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 8 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 9 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/stdlib.h"
	.file 10 "sinParams.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc53
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x39
	.4byte	0x68
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x22
	.4byte	0x8f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x95
	.uleb128 0x6
	.4byte	.LASF119
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x72
	.4byte	0x6f
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x165
	.4byte	0x33
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.4byte	0xdb
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.4byte	0xb0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa9
	.4byte	0xdb
	.byte	0
	.uleb128 0xa
	.4byte	0x4f
	.4byte	0xeb
	.uleb128 0xb
	.4byte	0x33
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.4byte	0x10c
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa5
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.4byte	0xbc
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0xab
	.4byte	0xeb
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0xaf
	.4byte	0x84
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xf
	.4byte	0x12a
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.4byte	0x76
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.4byte	0x194
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.4byte	0x194
	.byte	0
	.uleb128 0x11
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x11
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.4byte	0x19a
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x141
	.uleb128 0xa
	.4byte	0x136
	.4byte	0x1aa
	.uleb128 0xb
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.4byte	0x223
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.4byte	0x2c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.4byte	0x2c
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.4byte	0x2c
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.4byte	0x2c
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.4byte	0x2c
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.4byte	0x263
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.4byte	0x263
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4c
	.4byte	0x263
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.4byte	0x136
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.4byte	0x136
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x122
	.4byte	0x273
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.4byte	0x2b1
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0x5e
	.4byte	0x2b1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5f
	.4byte	0x2c
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.byte	0x61
	.4byte	0x2b7
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.byte	0x62
	.4byte	0x223
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x273
	.uleb128 0xa
	.4byte	0x2c7
	.4byte	0x2c7
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.4byte	0x2f3
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.4byte	0x2f3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4f
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.4byte	0x423
	.uleb128 0x11
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x2f3
	.byte	0
	.uleb128 0x11
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x11
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.4byte	0x2c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.4byte	0x56
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.4byte	0x56
	.byte	0xe
	.uleb128 0x11
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.4byte	0x2ce
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.4byte	0x2c
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc3
	.4byte	0x122
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc5
	.4byte	0x57e
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc7
	.4byte	0x5a8
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x6
	.byte	0xca
	.4byte	0x5cc
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcb
	.4byte	0x5e6
	.byte	0x2c
	.uleb128 0x11
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.4byte	0x2ce
	.byte	0x30
	.uleb128 0x11
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.4byte	0x2f3
	.byte	0x38
	.uleb128 0x11
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd3
	.4byte	0x5ec
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd4
	.4byte	0x5fc
	.byte	0x43
	.uleb128 0x11
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.4byte	0x2ce
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0xda
	.4byte	0x2c
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0xdb
	.4byte	0x9a
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0xde
	.4byte	0x441
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe2
	.4byte	0x117
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe4
	.4byte	0x10c
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe5
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.4byte	0x2c
	.4byte	0x441
	.uleb128 0x16
	.4byte	0x441
	.uleb128 0x16
	.4byte	0x122
	.uleb128 0x16
	.4byte	0x124
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x44c
	.uleb128 0xf
	.4byte	0x441
	.uleb128 0x17
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.4byte	0x57e
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x262
	.4byte	0x2c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x267
	.4byte	0x653
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.4byte	0x653
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.4byte	0x653
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x269
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26a
	.4byte	0x835
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26d
	.4byte	0x2c
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26e
	.4byte	0x84a
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x270
	.4byte	0x2c
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x272
	.4byte	0x85b
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x275
	.4byte	0x194
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x276
	.4byte	0x2c
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x277
	.4byte	0x194
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x278
	.4byte	0x861
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27b
	.4byte	0x2c
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.4byte	0x124
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x29f
	.4byte	0x813
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2a3
	.4byte	0x2b1
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a4
	.4byte	0x273
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a8
	.4byte	0x872
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2ad
	.4byte	0x618
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2af
	.4byte	0x87e
	.2byte	0x2ec
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x423
	.uleb128 0x15
	.4byte	0x2c
	.4byte	0x5a2
	.uleb128 0x16
	.4byte	0x441
	.uleb128 0x16
	.4byte	0x122
	.uleb128 0x16
	.4byte	0x5a2
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x131
	.uleb128 0x5
	.byte	0x4
	.4byte	0x584
	.uleb128 0x15
	.4byte	0xa5
	.4byte	0x5cc
	.uleb128 0x16
	.4byte	0x441
	.uleb128 0x16
	.4byte	0x122
	.uleb128 0x16
	.4byte	0xa5
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5ae
	.uleb128 0x15
	.4byte	0x2c
	.4byte	0x5e6
	.uleb128 0x16
	.4byte	0x441
	.uleb128 0x16
	.4byte	0x122
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5d2
	.uleb128 0xa
	.4byte	0x4f
	.4byte	0x5fc
	.uleb128 0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x4f
	.4byte	0x60c
	.uleb128 0xb
	.4byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x11f
	.4byte	0x2f9
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.4byte	0x64d
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x125
	.4byte	0x64d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x126
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x127
	.4byte	0x653
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x618
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60c
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.4byte	0x68e
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x140
	.4byte	0x68e
	.byte	0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x141
	.4byte	0x68e
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x142
	.4byte	0x68
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x68
	.4byte	0x69e
	.uleb128 0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.4byte	0x79f
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x282
	.4byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x283
	.4byte	0x124
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x284
	.4byte	0x79f
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x285
	.4byte	0x1aa
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x286
	.4byte	0x2c
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x287
	.4byte	0x7d
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x288
	.4byte	0x659
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x289
	.4byte	0x10c
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28a
	.4byte	0x10c
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28b
	.4byte	0x10c
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28c
	.4byte	0x7af
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28d
	.4byte	0x7bf
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28e
	.4byte	0x2c
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28f
	.4byte	0x10c
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x290
	.4byte	0x10c
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x291
	.4byte	0x10c
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x292
	.4byte	0x10c
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x293
	.4byte	0x10c
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x294
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	0x12a
	.4byte	0x7af
	.uleb128 0xb
	.4byte	0x33
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x12a
	.4byte	0x7bf
	.uleb128 0xb
	.4byte	0x33
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x12a
	.4byte	0x7cf
	.uleb128 0xb
	.4byte	0x33
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.4byte	0x7f3
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x29c
	.4byte	0x7f3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x29d
	.4byte	0x803
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.4byte	0x2f3
	.4byte	0x803
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x813
	.uleb128 0xb
	.4byte	0x33
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.4byte	0x835
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x295
	.4byte	0x69e
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x29e
	.4byte	0x7cf
	.byte	0
	.uleb128 0xa
	.4byte	0x12a
	.4byte	0x845
	.uleb128 0xb
	.4byte	0x33
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.uleb128 0x5
	.byte	0x4
	.4byte	0x845
	.uleb128 0x1e
	.4byte	0x85b
	.uleb128 0x16
	.4byte	0x441
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x850
	.uleb128 0x5
	.byte	0x4
	.4byte	0x194
	.uleb128 0x1e
	.4byte	0x872
	.uleb128 0x16
	.4byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x878
	.uleb128 0x5
	.byte	0x4
	.4byte	0x867
	.uleb128 0xa
	.4byte	0x60c
	.4byte	0x88e
	.uleb128 0xb
	.4byte	0x33
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x32e
	.4byte	0x441
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x32f
	.4byte	0x447
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF123
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x5
	.byte	0x1
	.4byte	0x48
	.byte	0x7
	.2byte	0x282
	.4byte	0x8d8
	.uleb128 0x21
	.4byte	.LASF124
	.sleb128 -1
	.uleb128 0x22
	.4byte	.LASF125
	.byte	0
	.uleb128 0x22
	.4byte	.LASF126
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF127
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x28d
	.4byte	0x8ad
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x8
	.byte	0x24
	.4byte	0x5d
	.uleb128 0x23
	.4byte	.LASF130
	.byte	0x9
	.byte	0x63
	.4byte	0x124
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x90a
	.uleb128 0xb
	.4byte	0x33
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF131
	.byte	0xa
	.byte	0x11
	.4byte	0x8fa
	.uleb128 0x5
	.byte	0x3
	.4byte	sinParams
	.uleb128 0x25
	.ascii	"t\000"
	.byte	0xa
	.byte	0x12
	.4byte	0x8e4
	.uleb128 0x5
	.byte	0x3
	.4byte	t
	.uleb128 0xa
	.4byte	0x8e4
	.4byte	0x93b
	.uleb128 0x26
	.4byte	0x33
	.2byte	0x3e7
	.byte	0
	.uleb128 0x24
	.4byte	.LASF132
	.byte	0xa
	.byte	0x14
	.4byte	0x92a
	.uleb128 0x5
	.byte	0x3
	.4byte	sin1values
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0xa
	.byte	0x15
	.4byte	0x8e4
	.uleb128 0x5
	.byte	0x3
	.4byte	numOfsin1values
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0xa
	.byte	0x16
	.4byte	0x92a
	.uleb128 0x5
	.byte	0x3
	.4byte	sin2values
	.uleb128 0x24
	.4byte	.LASF135
	.byte	0xa
	.byte	0x17
	.4byte	0x8e4
	.uleb128 0x5
	.byte	0x3
	.4byte	numOfsin2values
	.uleb128 0xa
	.4byte	0x8e4
	.4byte	0x990
	.uleb128 0x26
	.4byte	0x33
	.2byte	0x1f3
	.byte	0
	.uleb128 0x27
	.4byte	.LASF136
	.byte	0xa
	.byte	0x19
	.4byte	0x97f
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buffer1
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0xa
	.byte	0x1a
	.4byte	0x97f
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buffer2
	.uleb128 0xa
	.4byte	0x9c2
	.4byte	0x9c2
	.uleb128 0xb
	.4byte	0x33
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9c8
	.uleb128 0x28
	.4byte	0x9d3
	.4byte	0x9d3
	.uleb128 0x29
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF138
	.uleb128 0x2a
	.4byte	.LASF139
	.byte	0xa
	.byte	0x2d
	.4byte	0x9b2
	.uleb128 0x2a
	.4byte	.LASF140
	.byte	0xa
	.byte	0x2f
	.4byte	0x9b2
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1d
	.uleb128 0x2c
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2d
	.ascii	"n\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x8e4
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x71
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4a
	.uleb128 0x2c
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x2d
	.ascii	"n\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x8e4
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x66
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa3
	.uleb128 0x2d
	.ascii	"y\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x2d
	.ascii	"t\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2d
	.ascii	"n\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0x8e4
	.4byte	.LLST4
	.uleb128 0x2f
	.4byte	.LVL13
	.4byte	0xc4a
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF144
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf8
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x25
	.uleb128 0x2d
	.ascii	"t\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2d
	.ascii	"n\000"
	.byte	0x1
	.byte	0x5f
	.4byte	0x8e4
	.4byte	.LLST1
	.uleb128 0x2f
	.4byte	.LVL3
	.4byte	0xc4a
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF145
	.byte	0x1
	.byte	0x51
	.4byte	0x9d3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb1b
	.uleb128 0x33
	.4byte	.LVL21
	.4byte	0xa4a
	.byte	0
	.uleb128 0x32
	.4byte	.LASF146
	.byte	0x1
	.byte	0x47
	.4byte	0x9d3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3e
	.uleb128 0x33
	.4byte	.LVL9
	.4byte	0xaa3
	.byte	0
	.uleb128 0x32
	.4byte	.LASF147
	.byte	0x1
	.byte	0x3d
	.4byte	0x9d3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb61
	.uleb128 0x33
	.4byte	.LVL20
	.4byte	0xa4a
	.byte	0
	.uleb128 0x32
	.4byte	.LASF148
	.byte	0x1
	.byte	0x33
	.4byte	0x9d3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb84
	.uleb128 0x33
	.4byte	.LVL8
	.4byte	0xaa3
	.byte	0
	.uleb128 0x32
	.4byte	.LASF149
	.byte	0x1
	.byte	0x29
	.4byte	0x9d3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba7
	.uleb128 0x33
	.4byte	.LVL19
	.4byte	0xa4a
	.byte	0
	.uleb128 0x32
	.4byte	.LASF150
	.byte	0x1
	.byte	0x1f
	.4byte	0x9d3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbca
	.uleb128 0x33
	.4byte	.LVL7
	.4byte	0xaa3
	.byte	0
	.uleb128 0x32
	.4byte	.LASF151
	.byte	0x1
	.byte	0x15
	.4byte	0x9d3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbed
	.uleb128 0x33
	.4byte	.LVL18
	.4byte	0xa4a
	.byte	0
	.uleb128 0x32
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb
	.4byte	0x9d3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc10
	.uleb128 0x33
	.4byte	.LVL6
	.4byte	0xaa3
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x1
	.byte	0x3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4a
	.uleb128 0x33
	.4byte	.LVL26
	.4byte	0xaa3
	.uleb128 0x33
	.4byte	.LVL27
	.4byte	0xa4a
	.uleb128 0x33
	.4byte	.LVL28
	.4byte	0xa1d
	.uleb128 0x34
	.4byte	.LVL29
	.4byte	0x9f0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x7
	.2byte	0x15a
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST6:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"_dso_handle\000"
.LASF49:
	.ascii	"_size\000"
.LASF132:
	.ascii	"sin1values\000"
.LASF93:
	.ascii	"_rand48\000"
.LASF73:
	.ascii	"_emergency\000"
.LASF63:
	.ascii	"_data\000"
.LASF113:
	.ascii	"_wcrtomb_state\000"
.LASF114:
	.ascii	"_wcsrtombs_state\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF127:
	.ascii	"__fdlibm_posix\000"
.LASF53:
	.ascii	"_lbfsize\000"
.LASF120:
	.ascii	"__locale_t\000"
.LASF126:
	.ascii	"__fdlibm_xopen\000"
.LASF111:
	.ascii	"_mbrtowc_state\000"
.LASF153:
	.ascii	"initLCS\000"
.LASF30:
	.ascii	"__tm_sec\000"
.LASF2:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF137:
	.ascii	"dac_buffer2\000"
.LASF59:
	.ascii	"_ubuf\000"
.LASF48:
	.ascii	"_base\000"
.LASF151:
	.ascii	"increaseAmplitude2\000"
.LASF32:
	.ascii	"__tm_hour\000"
.LASF16:
	.ascii	"__wch\000"
.LASF88:
	.ascii	"__sf\000"
.LASF39:
	.ascii	"_on_exit_args\000"
.LASF54:
	.ascii	"_cookie\000"
.LASF134:
	.ascii	"sin2values\000"
.LASF87:
	.ascii	"__sglue\000"
.LASF136:
	.ascii	"dac_buffer1\000"
.LASF8:
	.ascii	"long int\000"
.LASF51:
	.ascii	"_flags\000"
.LASF43:
	.ascii	"_is_cxa\000"
.LASF69:
	.ascii	"_stdin\000"
.LASF125:
	.ascii	"__fdlibm_svid\000"
.LASF61:
	.ascii	"_blksize\000"
.LASF133:
	.ascii	"numOfsin1values\000"
.LASF129:
	.ascii	"uint16_t\000"
.LASF123:
	.ascii	"double\000"
.LASF83:
	.ascii	"_cvtbuf\000"
.LASF62:
	.ascii	"_offset\000"
.LASF155:
	.ascii	"sinParams.c\000"
.LASF112:
	.ascii	"_mbsrtowcs_state\000"
.LASF110:
	.ascii	"_mbrlen_state\000"
.LASF40:
	.ascii	"_fnargs\000"
.LASF46:
	.ascii	"_fns\000"
.LASF26:
	.ascii	"_sign\000"
.LASF21:
	.ascii	"_flock_t\000"
.LASF71:
	.ascii	"_stderr\000"
.LASF28:
	.ascii	"_Bigint\000"
.LASF101:
	.ascii	"_gamma_signgam\000"
.LASF55:
	.ascii	"_read\000"
.LASF79:
	.ascii	"_result_k\000"
.LASF29:
	.ascii	"__tm\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"__wchb\000"
.LASF70:
	.ascii	"_stdout\000"
.LASF82:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF148:
	.ascii	"increaseFrequency1\000"
.LASF52:
	.ascii	"_file\000"
.LASF91:
	.ascii	"_niobs\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF85:
	.ascii	"_atexit0\000"
.LASF108:
	.ascii	"_signal_buf\000"
.LASF99:
	.ascii	"_asctime_buf\000"
.LASF78:
	.ascii	"_result\000"
.LASF154:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF12:
	.ascii	"_LOCK_T\000"
.LASF15:
	.ascii	"wint_t\000"
.LASF64:
	.ascii	"_lock\000"
.LASF66:
	.ascii	"_flags2\000"
.LASF56:
	.ascii	"_write\000"
.LASF35:
	.ascii	"__tm_year\000"
.LASF131:
	.ascii	"sinParams\000"
.LASF3:
	.ascii	"long double\000"
.LASF116:
	.ascii	"_nextf\000"
.LASF34:
	.ascii	"__tm_mon\000"
.LASF44:
	.ascii	"_atexit\000"
.LASF130:
	.ascii	"suboptarg\000"
.LASF76:
	.ascii	"__sdidinit\000"
.LASF13:
	.ascii	"_off_t\000"
.LASF0:
	.ascii	"float\000"
.LASF81:
	.ascii	"_freelist\000"
.LASF142:
	.ascii	"prepareValuesinDACbuff1\000"
.LASF141:
	.ascii	"prepareValuesinDACbuff2\000"
.LASF106:
	.ascii	"_wctomb_state\000"
.LASF152:
	.ascii	"increaseAmplitude1\000"
.LASF138:
	.ascii	"_Bool\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF84:
	.ascii	"_new\000"
.LASF115:
	.ascii	"_h_errno\000"
.LASF6:
	.ascii	"short int\000"
.LASF37:
	.ascii	"__tm_yday\000"
.LASF47:
	.ascii	"__sbuf\000"
.LASF92:
	.ascii	"_iobs\000"
.LASF89:
	.ascii	"__FILE\000"
.LASF20:
	.ascii	"_mbstate_t\000"
.LASF50:
	.ascii	"__sFILE\000"
.LASF140:
	.ascii	"modify2DOWN\000"
.LASF65:
	.ascii	"_mbstate\000"
.LASF102:
	.ascii	"_rand_next\000"
.LASF104:
	.ascii	"_mblen_state\000"
.LASF72:
	.ascii	"_inc\000"
.LASF45:
	.ascii	"_ind\000"
.LASF75:
	.ascii	"_locale\000"
.LASF77:
	.ascii	"__cleanup\000"
.LASF74:
	.ascii	"_unspecified_locale_info\000"
.LASF25:
	.ascii	"_maxwds\000"
.LASF67:
	.ascii	"_reent\000"
.LASF94:
	.ascii	"_seed\000"
.LASF18:
	.ascii	"__count\000"
.LASF119:
	.ascii	"__lock\000"
.LASF19:
	.ascii	"__value\000"
.LASF57:
	.ascii	"_seek\000"
.LASF135:
	.ascii	"numOfsin2values\000"
.LASF121:
	.ascii	"_impure_ptr\000"
.LASF14:
	.ascii	"_fpos_t\000"
.LASF144:
	.ascii	"calculateSin1Values\000"
.LASF68:
	.ascii	"_errno\000"
.LASF22:
	.ascii	"char\000"
.LASF31:
	.ascii	"__tm_min\000"
.LASF156:
	.ascii	"/home/adil/Downloads/MSUT/Zadaca/homework-template\000"
.LASF11:
	.ascii	"__uint16_t\000"
.LASF95:
	.ascii	"_mult\000"
.LASF24:
	.ascii	"_next\000"
.LASF158:
	.ascii	"sinf\000"
.LASF98:
	.ascii	"_strtok_last\000"
.LASF42:
	.ascii	"_fntypes\000"
.LASF146:
	.ascii	"decreaseFrequency1\000"
.LASF145:
	.ascii	"decreaseFrequency2\000"
.LASF96:
	.ascii	"_add\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF109:
	.ascii	"_getdate_err\000"
.LASF157:
	.ascii	"__fdlibm_version\000"
.LASF122:
	.ascii	"_global_impure_ptr\000"
.LASF124:
	.ascii	"__fdlibm_ieee\000"
.LASF97:
	.ascii	"_unused_rand\000"
.LASF27:
	.ascii	"_wds\000"
.LASF36:
	.ascii	"__tm_wday\000"
.LASF90:
	.ascii	"_glue\000"
.LASF128:
	.ascii	"__fdlib_version\000"
.LASF117:
	.ascii	"_nmalloc\000"
.LASF107:
	.ascii	"_l64a_buf\000"
.LASF86:
	.ascii	"_sig_func\000"
.LASF60:
	.ascii	"_nbuf\000"
.LASF118:
	.ascii	"_unused\000"
.LASF150:
	.ascii	"decreaseAmplitude1\000"
.LASF149:
	.ascii	"decreaseAmplitude2\000"
.LASF38:
	.ascii	"__tm_isdst\000"
.LASF100:
	.ascii	"_localtime_buf\000"
.LASF58:
	.ascii	"_close\000"
.LASF103:
	.ascii	"_r48\000"
.LASF147:
	.ascii	"increaseFrequency2\000"
.LASF105:
	.ascii	"_mbtowc_state\000"
.LASF143:
	.ascii	"calculateSin2Values\000"
.LASF80:
	.ascii	"_p5s\000"
.LASF139:
	.ascii	"modify2UP\000"
.LASF33:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
