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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	getDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getDNumMISC, %function
getDNumMISC:
.LFB110:
	.file 1 "misc.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 6 0
	ldr	r2, .L9
	.loc 1 16 0
	ldr	r7, .L9+4
	add	r5, r0, #10
	.loc 1 10 0
	movs	r6, #48
.LVL1:
.L4:
	.loc 1 11 0
	cmp	r1, r2
	.loc 1 10 0
	strb	r6, [r5, #-1]!
.LVL2:
	.loc 1 11 0
	bcc	.L2
	movs	r4, #49
	b	.L3
.L5:
	mov	r4, r3
.L3:
	.loc 1 14 0
	subs	r1, r1, r2
.LVL3:
	adds	r3, r4, #1
	.loc 1 11 0
	cmp	r1, r2
	uxtb	r3, r3
	bcs	.L5
	strb	r4, [r5]
.L2:
	.loc 1 16 0 discriminator 2
	umull	r3, r2, r7, r2
.LVL4:
	.loc 1 8 0 discriminator 2
	cmp	r0, r5
	.loc 1 16 0 discriminator 2
	lsr	r2, r2, #3
.LVL5:
	.loc 1 8 0 discriminator 2
	bne	.L4
	.loc 1 18 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6:
	bx	lr
.L10:
	.align	2
.L9:
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE110:
	.size	getDNumMISC, .-getDNumMISC
	.align	1
	.p2align 2,,3
	.global	putDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	putDNumMISC, %function
putDNumMISC:
.LFB111:
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL7:
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	add	r6, r0, #10
	movs	r4, #0
.LVL8:
.L14:
	.loc 1 28 0
	ldrb	r3, [r6, #-1]!	@ zero_extendqisi2
	cmp	r3, #48
	uxtb	r5, r4
	beq	.L24
.LVL9:
	.loc 1 31 0
	ldrh	r4, [r1]
	strb	r3, [r2, r4]
	.loc 1 32 0
	ldrh	r3, [r1]
	.loc 1 24 0
	adds	r4, r5, #1
	.loc 1 32 0
	adds	r3, r3, #1
	.loc 1 24 0
	uxtb	r4, r4
	.loc 1 32 0
	uxth	r3, r3
	.loc 1 24 0
	cmp	r4, #10
	.loc 1 32 0
	strh	r3, [r1]	@ movhi
.LVL10:
	.loc 1 24 0
	beq	.L15
	rsb	r5, r5, #8
	subs	r6, r0, r4
	uxtb	r5, r5
	subs	r5, r6, r5
	rsb	r4, r4, #9
.LVL11:
	adds	r5, r5, #8
	add	r4, r4, r0
.LVL12:
.L16:
	.loc 1 37 0
	ldrb	r0, [r4], #-1	@ zero_extendqisi2
	strb	r0, [r2, r3]
	.loc 1 38 0
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	.loc 1 24 0
	cmp	r5, r4
	.loc 1 38 0
	strh	r3, [r1]	@ movhi
	.loc 1 24 0
	bne	.L16
.L15:
	.loc 1 41 0
	movs	r1, #0
.LVL13:
	strb	r1, [r2, r3]
	.loc 1 42 0
	pop	{r4, r5, r6}
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL14:
.L24:
	.cfi_restore_state
	.loc 1 28 0 discriminator 1
	cmp	r4, #9
	beq	.L13
	adds	r4, r4, #1
.LVL15:
	b	.L14
.LVL16:
.L13:
	.loc 1 31 0
	ldrh	r0, [r1]
.LVL17:
	strb	r3, [r2, r0]
	.loc 1 32 0
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.LVL18:
	b	.L15
	.cfi_endproc
.LFE111:
	.size	putDNumMISC, .-putDNumMISC
	.align	1
	.p2align 2,,3
	.global	getStr4NumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getStr4NumMISC, %function
getStr4NumMISC:
.LFB112:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL19:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	subs	r0, r0, #8
.LVL20:
	sub	sp, sp, #20
	.cfi_def_cfa_offset 40
	uxth	r0, r0
	.loc 1 50 0
	movs	r3, #0
	cmp	r0, #24
	.loc 1 51 0
	strb	r3, [r2]
	.loc 1 50 0
	strh	r3, [sp, #2]	@ movhi
	bhi	.L25
	movs	r4, #1
	lsl	r0, r4, r0
	and	r0, r0, #16843009
	bic	r0, r0, #65536
	cbnz	r0, .L37
.L25:
	.loc 1 85 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L37:
	.cfi_restore_state
.LVL21:
	.loc 1 60 0
	ldr	r3, [r1]
	cmp	r3, #0
	blt	.L38
.L27:
.LBB4:
.LBB5:
	.loc 1 6 0
	ldr	r4, .L39
	.loc 1 16 0
	ldr	ip, .L39+4
.LBE5:
.LBE4:
	.loc 1 67 0
	mov	r1, r3
.LVL22:
	add	r0, sp, #4
.LVL23:
	add	r6, sp, #14
.LBB7:
.LBB6:
	.loc 1 10 0
	movs	r7, #48
.LVL24:
.L30:
	.loc 1 11 0
	cmp	r4, r1
	.loc 1 10 0
	strb	r7, [r6, #-1]!
.LVL25:
	.loc 1 11 0
	bhi	.L28
	movs	r5, #49
	b	.L29
.L31:
	mov	r5, r3
.L29:
	.loc 1 14 0
	subs	r1, r1, r4
.LVL26:
	adds	r3, r5, #1
	.loc 1 11 0
	cmp	r1, r4
	uxtb	r3, r3
	bcs	.L31
	strb	r5, [r6]
.L28:
	.loc 1 16 0
	umull	r3, r4, ip, r4
.LVL27:
	.loc 1 8 0
	cmp	r0, r6
	.loc 1 16 0
	lsr	r4, r4, #3
.LVL28:
	.loc 1 8 0
	bne	.L30
.LVL29:
.LBE6:
.LBE7:
	.loc 1 68 0
	add	r1, sp, #2
	bl	putDNumMISC
.LVL30:
	.loc 1 85 0
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL31:
.L38:
	.cfi_restore_state
	.loc 1 62 0
	movs	r3, #45
	strb	r3, [r2]
	.loc 1 64 0
	ldr	r3, [r1]
	.loc 1 63 0
	strh	r4, [sp, #2]	@ movhi
	.loc 1 64 0
	negs	r3, r3
	str	r3, [r1]
	b	.L27
.L40:
	.align	2
.L39:
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE112:
	.size	getStr4NumMISC, .-getStr4NumMISC
.Letext0:
	.file 2 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x287
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.4byte	0x37
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
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xb8
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xbd
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19e
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2c
	.4byte	0xa2
	.4byte	.LLST7
	.uleb128 0xa
	.ascii	"num\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x19e
	.4byte	.LLST8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2f
	.4byte	0x1aa
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x30
	.4byte	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xe
	.ascii	"k\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x97
	.uleb128 0xf
	.ascii	"m\000"
	.byte	0x1
	.byte	0x32
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x10
	.4byte	0x221
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x43
	.4byte	0x187
	.uleb128 0x11
	.4byte	0x238
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	0x22d
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	0x277
	.uleb128 0x13
	.4byte	0x280
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL30
	.4byte	0x1c0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x16
	.byte	0x4
	.4byte	0x97
	.uleb128 0x16
	.byte	0x4
	.4byte	0xad
	.uleb128 0x17
	.4byte	0x97
	.4byte	0x1c0
	.uleb128 0x18
	.4byte	0x90
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x14
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21b
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x14
	.4byte	0x1a4
	.4byte	.LLST3
	.uleb128 0xa
	.ascii	"m\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x21b
	.4byte	.LLST4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x14
	.4byte	0x1a4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.ascii	"k\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.4byte	.LLST5
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x16
	.4byte	0x97
	.4byte	.LLST6
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	0x258
	.uleb128 0x1b
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3
	.4byte	0x1a4
	.uleb128 0x1c
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3
	.4byte	0xbd
	.uleb128 0xe
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x97
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6
	.4byte	0xbd
	.byte	0
	.uleb128 0x1e
	.4byte	0x221
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	0x22d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	0x238
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	0x243
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	0x24c
	.4byte	.LLST2
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF29:
	.ascii	"misc.c\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF23:
	.ascii	"getStr4NumMISC\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF27:
	.ascii	"step\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF28:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF22:
	.ascii	"dnum\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF20:
	.ascii	"rstr\000"
.LASF21:
	.ascii	"p_int32\000"
.LASF26:
	.ascii	"flag\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF25:
	.ascii	"r_str\000"
.LASF10:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF19:
	.ascii	"type\000"
.LASF2:
	.ascii	"short int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"long int\000"
.LASF30:
	.ascii	"/home/adil/Downloads/MSUT/Zadaca/homework-template\000"
.LASF0:
	.ascii	"signed char\000"
.LASF24:
	.ascii	"putDNumMISC\000"
.LASF31:
	.ascii	"getDNumMISC\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
