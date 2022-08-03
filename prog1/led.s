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
	.file	"led.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	modeIDLE
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	modeIDLE, %function
modeIDLE:
.LFB120:
	.file 1 "led.c"
	.loc 1 60 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 61 0
	ldr	r1, .L3
	ldrh	r0, [r0]
.LVL1:
	ldr	r3, [r1, #20]
	mov	r2, #4096
	lsls	r2, r2, r0
	bic	r3, r3, r2
	str	r3, [r1, #20]
	.loc 1 62 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073875968
	.cfi_endproc
.LFE120:
	.size	modeIDLE, .-modeIDLE
	.align	1
	.p2align 2,,3
	.global	modeON
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	modeON, %function
modeON:
.LFB121:
	.loc 1 64 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 65 0
	ldr	r2, .L6
	ldrh	r0, [r0]
.LVL3:
	ldr	r1, [r2, #20]
	mov	r3, #4096
	lsls	r3, r3, r0
	orrs	r3, r3, r1
	str	r3, [r2, #20]
	.loc 1 66 0
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073875968
	.cfi_endproc
.LFE121:
	.size	modeON, .-modeON
	.align	1
	.p2align 2,,3
	.global	modeOFF
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	modeOFF, %function
modeOFF:
.LFB126:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	modeIDLE
	.cfi_endproc
.LFE126:
	.size	modeOFF, .-modeOFF
	.align	1
	.p2align 2,,3
	.global	modeBLINK
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	modeBLINK, %function
modeBLINK:
.LFB123:
	.loc 1 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 73 0
	ldrh	r3, [r0]
	ldr	r2, .L10
	lsls	r1, r3, #1
	mov	r0, #50331648
.LVL5:
	ldr	r3, [r2]
	lsls	r0, r0, r1
	bic	r3, r3, r0
	str	r3, [r2]
	.loc 1 74 0
	ldr	r0, [r2]
	mov	r3, #16777216
	lsls	r3, r3, r1
	orrs	r3, r3, r0
	str	r3, [r2]
	.loc 1 75 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073875968
	.cfi_endproc
.LFE123:
	.size	modeBLINK, .-modeBLINK
	.align	1
	.p2align 2,,3
	.global	nextMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nextMode, %function
nextMode:
.LFB113:
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 4 0
	ldrh	r3, [r0, #2]
	cmp	r3, #4
	beq	.L14
	.loc 1 6 0
	adds	r3, r3, #1
	.loc 1 7 0
	ldr	r1, .L16
	.loc 1 6 0
	uxth	r3, r3
	strh	r3, [r0, #2]	@ movhi
	.loc 1 7 0
	ldr	r3, [r1, r3, lsl #2]
	blx	r3
.LVL7:
	.loc 1 8 0
	movs	r0, #1
	.loc 1 9 0
	pop	{r3, pc}
.LVL8:
.L14:
	.loc 1 4 0
	movs	r0, #0
.LVL9:
	.loc 1 9 0
	pop	{r3, pc}
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.cfi_endproc
.LFE113:
	.size	nextMode, .-nextMode
	.align	1
	.p2align 2,,3
	.global	previousMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	previousMode, %function
previousMode:
.LFB114:
	.loc 1 11 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL10:
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 12 0
	ldrh	r3, [r0, #2]
	cbz	r3, .L20
	.loc 1 14 0
	subs	r3, r3, #1
	.loc 1 15 0
	ldr	r1, .L22
	.loc 1 14 0
	uxth	r3, r3
	strh	r3, [r0, #2]	@ movhi
	.loc 1 15 0
	ldr	r3, [r1, r3, lsl #2]
	blx	r3
.LVL11:
	.loc 1 16 0
	movs	r0, #1
	.loc 1 17 0
	pop	{r3, pc}
.LVL12:
.L20:
	.loc 1 12 0
	mov	r0, r3
.LVL13:
	.loc 1 17 0
	pop	{r3, pc}
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.cfi_endproc
.LFE114:
	.size	previousMode, .-previousMode
	.align	1
	.p2align 2,,3
	.global	increasePeriod
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increasePeriod, %function
increasePeriod:
.LFB115:
	.loc 1 19 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL14:
	.loc 1 20 0
	ldr	r3, [r0, #4]
	cmp	r3, #2000
	.loc 1 22 0
	ittte	ne
	addne	r3, r3, #100
	strne	r3, [r0, #4]
	.loc 1 23 0
	movne	r0, #1
.LVL15:
	.loc 1 20 0
	moveq	r0, #0
	.loc 1 24 0
	bx	lr
	.cfi_endproc
.LFE115:
	.size	increasePeriod, .-increasePeriod
	.align	1
	.p2align 2,,3
	.global	decreasePeriod
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreasePeriod, %function
decreasePeriod:
.LFB116:
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL16:
	.loc 1 27 0
	ldr	r3, [r0, #4]
	cmp	r3, #100
	.loc 1 29 0
	ittte	ne
	subne	r3, r3, #100
	strne	r3, [r0, #4]
	.loc 1 30 0
	movne	r0, #1
.LVL17:
	.loc 1 27 0
	moveq	r0, #0
	.loc 1 31 0
	bx	lr
	.cfi_endproc
.LFE116:
	.size	decreasePeriod, .-decreasePeriod
	.align	1
	.p2align 2,,3
	.global	updateCCR
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	updateCCR, %function
updateCCR:
.LFB117:
	.loc 1 33 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL18:
	.loc 1 34 0
	ldrh	r3, [r0]
	cbz	r3, .L35
	.loc 1 36 0
	cmp	r3, #1
	beq	.L36
	.loc 1 38 0
	cmp	r3, #2
	beq	.L37
	.loc 1 40 0
	cmp	r3, #3
	beq	.L38
.L30:
	.loc 1 42 0
	bx	lr
.L35:
	.loc 1 35 0
	ldrh	r1, [r0, #8]
	ldr	r3, .L39
	ldr	r2, .L39+4
	add	r3, r3, r1, lsl #1
	ldrh	r3, [r3, #20]
	str	r3, [r2, #52]
	bx	lr
.L36:
	.loc 1 37 0
	ldrh	r1, [r0, #8]
	ldr	r3, .L39
	ldr	r2, .L39+4
	add	r3, r3, r1, lsl #1
	ldrh	r3, [r3, #20]
	str	r3, [r2, #56]
	bx	lr
.L38:
	.loc 1 41 0
	ldrh	r1, [r0, #8]
	ldr	r3, .L39
	ldr	r2, .L39+4
	add	r3, r3, r1, lsl #1
	ldrh	r3, [r3, #20]
	str	r3, [r2, #64]
	.loc 1 42 0
	b	.L30
.L37:
	.loc 1 39 0
	ldrh	r1, [r0, #8]
	ldr	r3, .L39
	ldr	r2, .L39+4
	add	r3, r3, r1, lsl #1
	ldrh	r3, [r3, #20]
	str	r3, [r2, #60]
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	1073743872
	.cfi_endproc
.LFE117:
	.size	updateCCR, .-updateCCR
	.align	1
	.p2align 2,,3
	.global	modePWM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	modePWM, %function
modePWM:
.LFB124:
	.loc 1 77 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL19:
	.loc 1 78 0
	ldrh	r3, [r0]
	ldr	r2, .L43
	.loc 1 77 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 78 0
	lsls	r1, r3, #1
	mov	r4, #50331648
	ldr	r3, [r2]
	lsls	r4, r4, r1
	bic	r3, r3, r4
	str	r3, [r2]
	.loc 1 79 0
	ldr	r4, [r2]
	mov	r3, #33554432
	lsls	r3, r3, r1
	orrs	r3, r3, r4
	str	r3, [r2]
	.loc 1 82 0
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 81 0
	b	updateCCR
.LVL20:
.L44:
	.align	2
.L43:
	.word	1073875968
	.cfi_endproc
.LFE124:
	.size	modePWM, .-modePWM
	.align	1
	.p2align 2,,3
	.global	increaseDutyCycle
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseDutyCycle, %function
increaseDutyCycle:
.LFB118:
	.loc 1 44 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL21:
	.loc 1 45 0
	ldrh	r2, [r0, #8]
	cmp	r2, #20
	beq	.L47
	.loc 1 44 0
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 47 0
	adds	r2, r2, #1
	strh	r2, [r0, #8]	@ movhi
	.loc 1 48 0
	bl	updateCCR
.LVL22:
	.loc 1 49 0
	movs	r0, #1
.LVL23:
	.loc 1 50 0
	pop	{r3, pc}
.LVL24:
.L47:
	.cfi_def_cfa_offset 0
	.cfi_restore 3
	.cfi_restore 14
	.loc 1 45 0
	movs	r0, #0
.LVL25:
	.loc 1 50 0
	bx	lr
	.cfi_endproc
.LFE118:
	.size	increaseDutyCycle, .-increaseDutyCycle
	.align	1
	.p2align 2,,3
	.global	decreaseDutyCycle
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseDutyCycle, %function
decreaseDutyCycle:
.LFB119:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL26:
	push	{r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 53 0
	ldrh	r3, [r0, #8]
	cbnz	r3, .L56
	mov	r0, r3
.LVL27:
	.loc 1 58 0
	pop	{r3, pc}
.LVL28:
.L56:
	.loc 1 55 0
	subs	r3, r3, #1
	strh	r3, [r0, #8]	@ movhi
	.loc 1 56 0
	bl	updateCCR
.LVL29:
	.loc 1 57 0
	movs	r0, #1
.LVL30:
	.loc 1 58 0
	pop	{r3, pc}
	.cfi_endproc
.LFE119:
	.size	decreaseDutyCycle, .-decreaseDutyCycle
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	changingModes, %object
	.size	changingModes, 20
changingModes:
	.word	modeIDLE
	.word	modeON
	.word	modeOFF
	.word	modeBLINK
	.word	modePWM
	.type	pwm, %object
	.size	pwm, 42
pwm:
	.short	0
	.short	1
	.short	2
	.short	3
	.short	5
	.short	8
	.short	11
	.short	17
	.short	23
	.short	31
	.short	39
	.short	50
	.short	61
	.short	81
	.short	109
	.short	172
	.short	235
	.short	372
	.short	509
	.short	754
	.short	999
	.text
.Letext0:
	.file 2 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 6 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "../sdk/core_cm4.h"
	.file 9 "../sdk/system_stm32f4xx.h"
	.file 10 "../sdk/stm32f4xx.h"
	.file 11 "led.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe88
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0xc
	.4byte	.LASF184
	.4byte	.LASF185
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.4byte	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x22
	.4byte	0xa0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF120
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x72
	.4byte	0x57
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.4byte	0x85
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.4byte	0xec
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.4byte	0xc1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.4byte	0xec
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0xfc
	.uleb128 0xc
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.4byte	0x11d
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa5
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.4byte	0xcd
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xab
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaf
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.4byte	0x69
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.4byte	0x191
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.byte	0x31
	.4byte	0x191
	.byte	0
	.uleb128 0x10
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x6
	.byte	0x32
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0x32
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.4byte	0x197
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13e
	.uleb128 0xb
	.4byte	0x133
	.4byte	0x1a7
	.uleb128 0xc
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.4byte	0x220
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x6
	.byte	0x39
	.4byte	0x7e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3a
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3b
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3c
	.4byte	0x7e
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3d
	.4byte	0x7e
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.4byte	0x7e
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.4byte	0x7e
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.4byte	0x7e
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.4byte	0x260
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4b
	.4byte	0x260
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4c
	.4byte	0x260
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4e
	.4byte	0x133
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.4byte	0x133
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0x93
	.4byte	0x270
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.4byte	0x2ae
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.byte	0x5e
	.4byte	0x2ae
	.byte	0
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5f
	.4byte	0x7e
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x61
	.4byte	0x2b4
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x62
	.4byte	0x220
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x270
	.uleb128 0xb
	.4byte	0x2c4
	.4byte	0x2c4
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0x13
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.4byte	0x2f0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.byte	0x76
	.4byte	0x2f0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0x77
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.4byte	0x420
	.uleb128 0x10
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x2f0
	.byte	0
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x10
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.4byte	0x7e
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x6
	.byte	0xb9
	.4byte	0x33
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x6
	.byte	0xba
	.4byte	0x33
	.byte	0xe
	.uleb128 0x10
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.4byte	0x2cb
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbc
	.4byte	0x7e
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc3
	.4byte	0x93
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc5
	.4byte	0x58d
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc7
	.4byte	0x5b7
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0xca
	.4byte	0x5db
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcb
	.4byte	0x5f5
	.byte	0x2c
	.uleb128 0x10
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.4byte	0x2cb
	.byte	0x30
	.uleb128 0x10
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.4byte	0x2f0
	.byte	0x38
	.uleb128 0x10
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.4byte	0x7e
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd3
	.4byte	0x5fb
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd4
	.4byte	0x60b
	.byte	0x43
	.uleb128 0x10
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.4byte	0x2cb
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.byte	0xda
	.4byte	0x7e
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.byte	0xdb
	.4byte	0xab
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0xde
	.4byte	0x43e
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe2
	.4byte	0x128
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe4
	.4byte	0x11d
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe5
	.4byte	0x7e
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x43e
	.uleb128 0x15
	.4byte	0x43e
	.uleb128 0x15
	.4byte	0x93
	.uleb128 0x15
	.4byte	0x57b
	.uleb128 0x15
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x449
	.uleb128 0x16
	.4byte	0x43e
	.uleb128 0x17
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.4byte	0x57b
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x262
	.4byte	0x7e
	.byte	0
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x267
	.4byte	0x662
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.4byte	0x662
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.4byte	0x662
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x269
	.4byte	0x7e
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26a
	.4byte	0x844
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26d
	.4byte	0x7e
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26e
	.4byte	0x859
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x270
	.4byte	0x7e
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x272
	.4byte	0x86a
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x275
	.4byte	0x191
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x276
	.4byte	0x7e
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x277
	.4byte	0x191
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x278
	.4byte	0x870
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27b
	.4byte	0x7e
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.4byte	0x57b
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x29f
	.4byte	0x822
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2a3
	.4byte	0x2ae
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a4
	.4byte	0x270
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a8
	.4byte	0x881
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2ad
	.4byte	0x627
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2af
	.4byte	0x88d
	.2byte	0x2ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x581
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.uleb128 0x16
	.4byte	0x581
	.uleb128 0x6
	.byte	0x4
	.4byte	0x420
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x5b1
	.uleb128 0x15
	.4byte	0x43e
	.uleb128 0x15
	.4byte	0x93
	.uleb128 0x15
	.4byte	0x5b1
	.uleb128 0x15
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x588
	.uleb128 0x6
	.byte	0x4
	.4byte	0x593
	.uleb128 0x14
	.4byte	0xb6
	.4byte	0x5db
	.uleb128 0x15
	.4byte	0x43e
	.uleb128 0x15
	.4byte	0x93
	.uleb128 0x15
	.4byte	0xb6
	.uleb128 0x15
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5bd
	.uleb128 0x14
	.4byte	0x7e
	.4byte	0x5f5
	.uleb128 0x15
	.4byte	0x43e
	.uleb128 0x15
	.4byte	0x93
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e1
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x60b
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x61b
	.uleb128 0xc
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x11f
	.4byte	0x2f6
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.4byte	0x65c
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x125
	.4byte	0x65c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x126
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x127
	.4byte	0x662
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x627
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61b
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.4byte	0x69d
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x140
	.4byte	0x69d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x141
	.4byte	0x69d
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x142
	.4byte	0x45
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x45
	.4byte	0x6ad
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.4byte	0x7ae
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x282
	.4byte	0x85
	.byte	0
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x283
	.4byte	0x57b
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x284
	.4byte	0x7ae
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x285
	.4byte	0x1a7
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x286
	.4byte	0x7e
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x287
	.4byte	0x77
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x288
	.4byte	0x668
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x289
	.4byte	0x11d
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28a
	.4byte	0x11d
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28b
	.4byte	0x11d
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28c
	.4byte	0x7be
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28d
	.4byte	0x7ce
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28e
	.4byte	0x7e
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x28f
	.4byte	0x11d
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x290
	.4byte	0x11d
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x291
	.4byte	0x11d
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x292
	.4byte	0x11d
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x293
	.4byte	0x11d
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x294
	.4byte	0x7e
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.4byte	0x581
	.4byte	0x7be
	.uleb128 0xc
	.4byte	0x85
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x581
	.4byte	0x7ce
	.uleb128 0xc
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x581
	.4byte	0x7de
	.uleb128 0xc
	.4byte	0x85
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.4byte	0x802
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x29c
	.4byte	0x802
	.byte	0
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x29d
	.4byte	0x812
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x2f0
	.4byte	0x812
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x85
	.4byte	0x822
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.4byte	0x844
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x295
	.4byte	0x6ad
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x29e
	.4byte	0x7de
	.byte	0
	.uleb128 0xb
	.4byte	0x581
	.4byte	0x854
	.uleb128 0xc
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF121
	.uleb128 0x6
	.byte	0x4
	.4byte	0x854
	.uleb128 0x1e
	.4byte	0x86a
	.uleb128 0x15
	.4byte	0x43e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x191
	.uleb128 0x1e
	.4byte	0x881
	.uleb128 0x15
	.4byte	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x887
	.uleb128 0x6
	.byte	0x4
	.4byte	0x876
	.uleb128 0xb
	.4byte	0x61b
	.4byte	0x89d
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x32e
	.4byte	0x43e
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x32f
	.4byte	0x444
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x24
	.4byte	0x3a
	.uleb128 0x20
	.4byte	0x8b5
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x7
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x20
	.4byte	0x8c5
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x7
	.byte	0x30
	.4byte	0x5e
	.uleb128 0x20
	.4byte	0x8d5
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x51b
	.4byte	0x8d0
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x9
	.byte	0x35
	.4byte	0x8d5
	.uleb128 0x1b
	.byte	0x28
	.byte	0xa
	.2byte	0x28e
	.4byte	0x988
	.uleb128 0x18
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x290
	.4byte	0x8e0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x291
	.4byte	0x8e0
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x292
	.4byte	0x8e0
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x293
	.4byte	0x8e0
	.byte	0xc
	.uleb128 0x22
	.ascii	"IDR\000"
	.byte	0xa
	.2byte	0x294
	.4byte	0x8e0
	.byte	0x10
	.uleb128 0x22
	.ascii	"ODR\000"
	.byte	0xa
	.2byte	0x295
	.4byte	0x8e0
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x296
	.4byte	0x8c0
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x297
	.4byte	0x8c0
	.byte	0x1a
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x298
	.4byte	0x8e0
	.byte	0x1c
	.uleb128 0x22
	.ascii	"AFR\000"
	.byte	0xa
	.2byte	0x299
	.4byte	0x998
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	0x8e0
	.4byte	0x998
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.4byte	0x988
	.uleb128 0x8
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x29a
	.4byte	0x8fc
	.uleb128 0x1b
	.byte	0x54
	.byte	0xa
	.2byte	0x369
	.4byte	0xb85
	.uleb128 0x22
	.ascii	"CR1\000"
	.byte	0xa
	.2byte	0x36b
	.4byte	0x8c0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x36c
	.4byte	0x8b5
	.byte	0x2
	.uleb128 0x22
	.ascii	"CR2\000"
	.byte	0xa
	.2byte	0x36d
	.4byte	0x8c0
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x36e
	.4byte	0x8b5
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x36f
	.4byte	0x8c0
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x370
	.4byte	0x8b5
	.byte	0xa
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x371
	.4byte	0x8c0
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x372
	.4byte	0x8b5
	.byte	0xe
	.uleb128 0x22
	.ascii	"SR\000"
	.byte	0xa
	.2byte	0x373
	.4byte	0x8c0
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x374
	.4byte	0x8b5
	.byte	0x12
	.uleb128 0x22
	.ascii	"EGR\000"
	.byte	0xa
	.2byte	0x375
	.4byte	0x8c0
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x376
	.4byte	0x8b5
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x377
	.4byte	0x8c0
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x378
	.4byte	0x8b5
	.byte	0x1a
	.uleb128 0x18
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x379
	.4byte	0x8c0
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x37a
	.4byte	0x8b5
	.byte	0x1e
	.uleb128 0x18
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x37b
	.4byte	0x8c0
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x37c
	.4byte	0x8b5
	.byte	0x22
	.uleb128 0x22
	.ascii	"CNT\000"
	.byte	0xa
	.2byte	0x37d
	.4byte	0x8e0
	.byte	0x24
	.uleb128 0x22
	.ascii	"PSC\000"
	.byte	0xa
	.2byte	0x37e
	.4byte	0x8c0
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x37f
	.4byte	0x8b5
	.byte	0x2a
	.uleb128 0x22
	.ascii	"ARR\000"
	.byte	0xa
	.2byte	0x380
	.4byte	0x8e0
	.byte	0x2c
	.uleb128 0x22
	.ascii	"RCR\000"
	.byte	0xa
	.2byte	0x381
	.4byte	0x8c0
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x382
	.4byte	0x8b5
	.byte	0x32
	.uleb128 0x18
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x383
	.4byte	0x8e0
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x384
	.4byte	0x8e0
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x385
	.4byte	0x8e0
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x386
	.4byte	0x8e0
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x387
	.4byte	0x8c0
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x388
	.4byte	0x8b5
	.byte	0x46
	.uleb128 0x22
	.ascii	"DCR\000"
	.byte	0xa
	.2byte	0x389
	.4byte	0x8c0
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x38a
	.4byte	0x8b5
	.byte	0x4a
	.uleb128 0x18
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x38b
	.4byte	0x8c0
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x38c
	.4byte	0x8b5
	.byte	0x4e
	.uleb128 0x22
	.ascii	"OR\000"
	.byte	0xa
	.2byte	0x38d
	.4byte	0x8c0
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x38e
	.4byte	0x8b5
	.byte	0x52
	.byte	0
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x38f
	.4byte	0x9a9
	.uleb128 0xb
	.4byte	0x5b1
	.4byte	0xba1
	.uleb128 0xc
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0xb
	.byte	0x12
	.4byte	0xb91
	.uleb128 0xb
	.4byte	0x8b5
	.4byte	0xbbc
	.uleb128 0xc
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x24
	.ascii	"pwm\000"
	.byte	0xb
	.byte	0x13
	.4byte	0xbac
	.uleb128 0x5
	.byte	0x3
	.4byte	pwm
	.uleb128 0x25
	.ascii	"LED\000"
	.byte	0xc
	.byte	0xb
	.byte	0x15
	.4byte	0xc09
	.uleb128 0x10
	.ascii	"id\000"
	.byte	0xb
	.byte	0x16
	.4byte	0x8b5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xb
	.byte	0x17
	.4byte	0x8b5
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xb
	.byte	0x18
	.4byte	0x8d5
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xb
	.byte	0x19
	.4byte	0x8b5
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xc19
	.4byte	0xc19
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc1f
	.uleb128 0x14
	.4byte	0xc2e
	.4byte	0xc2e
	.uleb128 0x15
	.4byte	0xc35
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF167
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbcd
	.uleb128 0x23
	.4byte	.LASF169
	.byte	0xb
	.byte	0x29
	.4byte	0xc09
	.uleb128 0x23
	.4byte	.LASF170
	.byte	0xb
	.byte	0x2a
	.4byte	0xc09
	.uleb128 0xb
	.4byte	0xc61
	.4byte	0xc61
	.uleb128 0xc
	.4byte	0x85
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc67
	.uleb128 0x1e
	.4byte	0xc72
	.uleb128 0x15
	.4byte	0xc35
	.byte	0
	.uleb128 0x26
	.4byte	.LASF171
	.byte	0xb
	.byte	0x2b
	.4byte	0xc51
	.uleb128 0x5
	.byte	0x3
	.4byte	changingModes
	.uleb128 0x27
	.4byte	.LASF172
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb6
	.uleb128 0x28
	.ascii	"led\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0xc35
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.4byte	.LVL20
	.4byte	0xdae
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF173
	.byte	0x1
	.byte	0x48
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdb
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x48
	.4byte	0xc35
	.4byte	.LLST2
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF186
	.byte	0x1
	.byte	0x44
	.4byte	0xcf2
	.uleb128 0x2d
	.ascii	"led\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xc35
	.byte	0
	.uleb128 0x27
	.4byte	.LASF174
	.byte	0x1
	.byte	0x40
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd17
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x40
	.4byte	0xc35
	.4byte	.LLST1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF175
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3c
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0xc35
	.4byte	.LLST0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF176
	.byte	0x1
	.byte	0x34
	.4byte	0xc2e
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd75
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x34
	.4byte	0xc35
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LVL29
	.4byte	0xdae
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.byte	0x2c
	.4byte	0xc2e
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdae
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xc35
	.4byte	.LLST7
	.uleb128 0x2f
	.4byte	.LVL22
	.4byte	0xdae
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF178
	.byte	0x1
	.byte	0x21
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd1
	.uleb128 0x28
	.ascii	"led\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xc35
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF179
	.byte	0x1
	.byte	0x1a
	.4byte	0xc2e
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdfa
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0xc35
	.4byte	.LLST6
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF180
	.byte	0x1
	.byte	0x13
	.4byte	0xc2e
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe23
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x13
	.4byte	0xc35
	.4byte	.LLST5
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF181
	.byte	0x1
	.byte	0xb
	.4byte	0xc2e
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe59
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0xb
	.4byte	0xc35
	.4byte	.LLST4
	.uleb128 0x30
	.4byte	.LVL11
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.byte	0x3
	.4byte	0xc2e
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.ascii	"led\000"
	.byte	0x1
	.byte	0x3
	.4byte	0xc35
	.4byte	.LLST3
	.uleb128 0x30
	.4byte	.LVL7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x28
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
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
	.uleb128 0x2e
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
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x27
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-1-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF132:
	.ascii	"PUPDR\000"
.LASF172:
	.ascii	"modePWM\000"
.LASF135:
	.ascii	"LCKR\000"
.LASF166:
	.ascii	"dutyCycle\000"
.LASF141:
	.ascii	"DIER\000"
.LASF40:
	.ascii	"_fnargs\000"
.LASF94:
	.ascii	"_rand48\000"
.LASF73:
	.ascii	"_emergency\000"
.LASF130:
	.ascii	"OTYPER\000"
.LASF85:
	.ascii	"_atexit0\000"
.LASF169:
	.ascii	"modifyUP\000"
.LASF163:
	.ascii	"TIM_TypeDef\000"
.LASF114:
	.ascii	"_wcrtomb_state\000"
.LASF115:
	.ascii	"_wcsrtombs_state\000"
.LASF129:
	.ascii	"MODER\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF155:
	.ascii	"CCR3\000"
.LASF53:
	.ascii	"_lbfsize\000"
.LASF121:
	.ascii	"__locale_t\000"
.LASF173:
	.ascii	"modeBLINK\000"
.LASF127:
	.ascii	"ITM_RxBuffer\000"
.LASF175:
	.ascii	"modeIDLE\000"
.LASF112:
	.ascii	"_mbrtowc_state\000"
.LASF157:
	.ascii	"BDTR\000"
.LASF107:
	.ascii	"_wctomb_state\000"
.LASF30:
	.ascii	"__tm_sec\000"
.LASF145:
	.ascii	"CCMR1\000"
.LASF147:
	.ascii	"CCMR2\000"
.LASF58:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"_ubuf\000"
.LASF48:
	.ascii	"_base\000"
.LASF32:
	.ascii	"__tm_hour\000"
.LASF17:
	.ascii	"__wch\000"
.LASF88:
	.ascii	"__sf\000"
.LASF39:
	.ascii	"_on_exit_args\000"
.LASF168:
	.ascii	"modes\000"
.LASF161:
	.ascii	"RESERVED13\000"
.LASF162:
	.ascii	"RESERVED14\000"
.LASF54:
	.ascii	"_cookie\000"
.LASF87:
	.ascii	"__sglue\000"
.LASF6:
	.ascii	"long int\000"
.LASF51:
	.ascii	"_flags\000"
.LASF43:
	.ascii	"_is_cxa\000"
.LASF69:
	.ascii	"_stdin\000"
.LASF79:
	.ascii	"_result_k\000"
.LASF149:
	.ascii	"CCER\000"
.LASF9:
	.ascii	"long long int\000"
.LASF124:
	.ascii	"uint16_t\000"
.LASF83:
	.ascii	"_cvtbuf\000"
.LASF62:
	.ascii	"_offset\000"
.LASF113:
	.ascii	"_mbsrtowcs_state\000"
.LASF111:
	.ascii	"_mbrlen_state\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF46:
	.ascii	"_fns\000"
.LASF131:
	.ascii	"OSPEEDR\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"_sign\000"
.LASF122:
	.ascii	"_impure_ptr\000"
.LASF71:
	.ascii	"_stderr\000"
.LASF28:
	.ascii	"_Bigint\000"
.LASF24:
	.ascii	"_next\000"
.LASF55:
	.ascii	"_read\000"
.LASF29:
	.ascii	"__tm\000"
.LASF18:
	.ascii	"__wchb\000"
.LASF128:
	.ascii	"SystemCoreClock\000"
.LASF70:
	.ascii	"_stdout\000"
.LASF82:
	.ascii	"_cvtlen\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF136:
	.ascii	"GPIO_TypeDef\000"
.LASF52:
	.ascii	"_file\000"
.LASF182:
	.ascii	"nextMode\000"
.LASF63:
	.ascii	"_data\000"
.LASF176:
	.ascii	"decreaseDutyCycle\000"
.LASF92:
	.ascii	"_niobs\000"
.LASF139:
	.ascii	"SMCR\000"
.LASF177:
	.ascii	"increaseDutyCycle\000"
.LASF109:
	.ascii	"_signal_buf\000"
.LASF100:
	.ascii	"_asctime_buf\000"
.LASF78:
	.ascii	"_result\000"
.LASF183:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF13:
	.ascii	"_LOCK_T\000"
.LASF84:
	.ascii	"_new\000"
.LASF64:
	.ascii	"_lock\000"
.LASF96:
	.ascii	"_mult\000"
.LASF56:
	.ascii	"_write\000"
.LASF35:
	.ascii	"__tm_year\000"
.LASF14:
	.ascii	"_off_t\000"
.LASF74:
	.ascii	"_unspecified_locale_info\000"
.LASF117:
	.ascii	"_nextf\000"
.LASF158:
	.ascii	"RESERVED11\000"
.LASF159:
	.ascii	"RESERVED12\000"
.LASF171:
	.ascii	"changingModes\000"
.LASF34:
	.ascii	"__tm_mon\000"
.LASF44:
	.ascii	"_atexit\000"
.LASF76:
	.ascii	"__sdidinit\000"
.LASF102:
	.ascii	"_gamma_signgam\000"
.LASF16:
	.ascii	"wint_t\000"
.LASF81:
	.ascii	"_freelist\000"
.LASF137:
	.ascii	"RESERVED0\000"
.LASF138:
	.ascii	"RESERVED1\000"
.LASF140:
	.ascii	"RESERVED2\000"
.LASF142:
	.ascii	"RESERVED3\000"
.LASF143:
	.ascii	"RESERVED4\000"
.LASF144:
	.ascii	"RESERVED5\000"
.LASF146:
	.ascii	"RESERVED6\000"
.LASF150:
	.ascii	"RESERVED8\000"
.LASF151:
	.ascii	"RESERVED9\000"
.LASF184:
	.ascii	"led.c\000"
.LASF167:
	.ascii	"_Bool\000"
.LASF125:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF93:
	.ascii	"_iobs\000"
.LASF116:
	.ascii	"_h_errno\000"
.LASF22:
	.ascii	"_flock_t\000"
.LASF37:
	.ascii	"__tm_yday\000"
.LASF47:
	.ascii	"__sbuf\000"
.LASF66:
	.ascii	"_flags2\000"
.LASF90:
	.ascii	"__FILE\000"
.LASF21:
	.ascii	"_mbstate_t\000"
.LASF50:
	.ascii	"__sFILE\000"
.LASF65:
	.ascii	"_mbstate\000"
.LASF103:
	.ascii	"_rand_next\000"
.LASF105:
	.ascii	"_mblen_state\000"
.LASF72:
	.ascii	"_inc\000"
.LASF45:
	.ascii	"_ind\000"
.LASF174:
	.ascii	"modeON\000"
.LASF75:
	.ascii	"_locale\000"
.LASF77:
	.ascii	"__cleanup\000"
.LASF25:
	.ascii	"_maxwds\000"
.LASF67:
	.ascii	"_reent\000"
.LASF95:
	.ascii	"_seed\000"
.LASF19:
	.ascii	"__count\000"
.LASF120:
	.ascii	"__lock\000"
.LASF20:
	.ascii	"__value\000"
.LASF148:
	.ascii	"RESERVED7\000"
.LASF57:
	.ascii	"_seek\000"
.LASF36:
	.ascii	"__tm_wday\000"
.LASF15:
	.ascii	"_fpos_t\000"
.LASF12:
	.ascii	"long double\000"
.LASF68:
	.ascii	"_errno\000"
.LASF89:
	.ascii	"char\000"
.LASF61:
	.ascii	"_blksize\000"
.LASF164:
	.ascii	"mode\000"
.LASF49:
	.ascii	"_size\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF185:
	.ascii	"/home/adil/Downloads/MSUT/Zadaca/homework-template\000"
.LASF160:
	.ascii	"DMAR\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF165:
	.ascii	"period\000"
.LASF181:
	.ascii	"previousMode\000"
.LASF99:
	.ascii	"_strtok_last\000"
.LASF42:
	.ascii	"_fntypes\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF97:
	.ascii	"_add\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF110:
	.ascii	"_getdate_err\000"
.LASF178:
	.ascii	"updateCCR\000"
.LASF152:
	.ascii	"RESERVED10\000"
.LASF123:
	.ascii	"_global_impure_ptr\000"
.LASF126:
	.ascii	"uint32_t\000"
.LASF153:
	.ascii	"CCR1\000"
.LASF154:
	.ascii	"CCR2\000"
.LASF98:
	.ascii	"_unused_rand\000"
.LASF156:
	.ascii	"CCR4\000"
.LASF133:
	.ascii	"BSRRL\000"
.LASF27:
	.ascii	"_wds\000"
.LASF91:
	.ascii	"_glue\000"
.LASF186:
	.ascii	"modeOFF\000"
.LASF134:
	.ascii	"BSRRH\000"
.LASF179:
	.ascii	"decreasePeriod\000"
.LASF118:
	.ascii	"_nmalloc\000"
.LASF108:
	.ascii	"_l64a_buf\000"
.LASF86:
	.ascii	"_sig_func\000"
.LASF60:
	.ascii	"_nbuf\000"
.LASF119:
	.ascii	"_unused\000"
.LASF38:
	.ascii	"__tm_isdst\000"
.LASF101:
	.ascii	"_localtime_buf\000"
.LASF31:
	.ascii	"__tm_min\000"
.LASF104:
	.ascii	"_r48\000"
.LASF106:
	.ascii	"_mbtowc_state\000"
.LASF180:
	.ascii	"increasePeriod\000"
.LASF80:
	.ascii	"_p5s\000"
.LASF170:
	.ascii	"modifyDOWN\000"
.LASF33:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
