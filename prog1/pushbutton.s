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
	.file	"pushbutton.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	printActive
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	printActive, %function
printActive:
.LFB113:
	.file 1 "pushbutton.c"
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 4 0
	ldr	r0, .L3
	b	sprintUSART2
.LVL0:
.L4:
	.align	2
.L3:
	.word	.LC0
	.cfi_endproc
.LFE113:
	.size	printActive, .-printActive
	.align	1
	.p2align 2,,3
	.global	printInActive
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	printInActive, %function
printInActive:
.LFB114:
	.loc 1 7 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 8 0
	ldr	r0, .L6
	b	sprintUSART2
.LVL1:
.L7:
	.align	2
.L6:
	.word	.LC1
	.cfi_endproc
.LFE114:
	.size	printInActive, .-printInActive
	.comm	dac_buffer2,1000,4
	.comm	dac_buffer1,1000,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\033[33;73H\033[8X\033[32mACTIVE\033[39m\000"
	.space	3
.LC1:
	.ascii	"\033[33;73H\033[6X\033[31mINACTIVE\033[39m\000"
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
	.file 10 "led.h"
	.file 11 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 12 "/home/adil/Downloads/MSUT/Zadaca/gcc-arm-none-eabi/arm-none-eabi/include/stdlib.h"
	.file 13 "sinParams.h"
	.file 14 "usart.h"
	.file 15 "pushbutton.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0xc
	.4byte	.LASF168
	.4byte	.LASF169
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x22
	.4byte	0xb6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x7
	.4byte	.LASF122
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x72
	.4byte	0x6d
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x165
	.4byte	0x9b
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.4byte	0x102
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa8
	.4byte	0xd7
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa9
	.4byte	0x102
	.byte	0
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x112
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.4byte	0x133
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa5
	.4byte	0x94
	.byte	0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaa
	.4byte	0xe3
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0xab
	.4byte	0x112
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0xaf
	.4byte	0xab
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x16
	.4byte	0x7f
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.4byte	0x1a7
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0x31
	.4byte	0x1a7
	.byte	0
	.uleb128 0x10
	.ascii	"_k\000"
	.byte	0x6
	.byte	0x32
	.4byte	0x94
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x6
	.byte	0x32
	.4byte	0x94
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x6
	.byte	0x32
	.4byte	0x94
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.4byte	0x94
	.byte	0x10
	.uleb128 0x10
	.ascii	"_x\000"
	.byte	0x6
	.byte	0x33
	.4byte	0x1ad
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x154
	.uleb128 0xb
	.4byte	0x149
	.4byte	0x1bd
	.uleb128 0xc
	.4byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.4byte	0x236
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x39
	.4byte	0x94
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3a
	.4byte	0x94
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3b
	.4byte	0x94
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3c
	.4byte	0x94
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.4byte	0x94
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.4byte	0x94
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3f
	.4byte	0x94
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x6
	.byte	0x40
	.4byte	0x94
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.byte	0x41
	.4byte	0x94
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.4byte	0x276
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.4byte	0x276
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.4byte	0x276
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4e
	.4byte	0x149
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x51
	.4byte	0x149
	.2byte	0x104
	.byte	0
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x286
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.4byte	0x2c4
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0x5e
	.4byte	0x2c4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5f
	.4byte	0x94
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.byte	0x61
	.4byte	0x2ca
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.byte	0x62
	.4byte	0x236
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x286
	.uleb128 0xb
	.4byte	0x2da
	.4byte	0x2da
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e0
	.uleb128 0x13
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.4byte	0x306
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x6
	.byte	0x76
	.4byte	0x306
	.byte	0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x6
	.byte	0x77
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x42
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.4byte	0x436
	.uleb128 0x10
	.ascii	"_p\000"
	.byte	0x6
	.byte	0xb6
	.4byte	0x306
	.byte	0
	.uleb128 0x10
	.ascii	"_r\000"
	.byte	0x6
	.byte	0xb7
	.4byte	0x94
	.byte	0x4
	.uleb128 0x10
	.ascii	"_w\000"
	.byte	0x6
	.byte	0xb8
	.4byte	0x94
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x6
	.byte	0xb9
	.4byte	0x49
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x6
	.byte	0xba
	.4byte	0x49
	.byte	0xe
	.uleb128 0x10
	.ascii	"_bf\000"
	.byte	0x6
	.byte	0xbb
	.4byte	0x2e1
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.byte	0xbc
	.4byte	0x94
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc3
	.4byte	0xa9
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc5
	.4byte	0x5a3
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0xc7
	.4byte	0x5cd
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.byte	0xca
	.4byte	0x5f1
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.byte	0xcb
	.4byte	0x60b
	.byte	0x2c
	.uleb128 0x10
	.ascii	"_ub\000"
	.byte	0x6
	.byte	0xce
	.4byte	0x2e1
	.byte	0x30
	.uleb128 0x10
	.ascii	"_up\000"
	.byte	0x6
	.byte	0xcf
	.4byte	0x306
	.byte	0x38
	.uleb128 0x10
	.ascii	"_ur\000"
	.byte	0x6
	.byte	0xd0
	.4byte	0x94
	.byte	0x3c
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd3
	.4byte	0x611
	.byte	0x40
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd4
	.4byte	0x621
	.byte	0x43
	.uleb128 0x10
	.ascii	"_lb\000"
	.byte	0x6
	.byte	0xd7
	.4byte	0x2e1
	.byte	0x44
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0xda
	.4byte	0x94
	.byte	0x4c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.byte	0xdb
	.4byte	0xc1
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x6
	.byte	0xde
	.4byte	0x454
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe2
	.4byte	0x13e
	.byte	0x58
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe4
	.4byte	0x133
	.byte	0x5c
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe5
	.4byte	0x94
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.4byte	0x94
	.4byte	0x454
	.uleb128 0x15
	.4byte	0x454
	.uleb128 0x15
	.4byte	0xa9
	.uleb128 0x15
	.4byte	0x591
	.uleb128 0x15
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45f
	.uleb128 0x16
	.4byte	0x454
	.uleb128 0x17
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x6
	.2byte	0x260
	.4byte	0x591
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x262
	.4byte	0x94
	.byte	0
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.4byte	0x678
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x267
	.4byte	0x678
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x267
	.4byte	0x678
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x269
	.4byte	0x94
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26a
	.4byte	0x85a
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26d
	.4byte	0x94
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x26e
	.4byte	0x86f
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x270
	.4byte	0x94
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x272
	.4byte	0x880
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x275
	.4byte	0x1a7
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x276
	.4byte	0x94
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x277
	.4byte	0x1a7
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x278
	.4byte	0x886
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27b
	.4byte	0x94
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x27c
	.4byte	0x591
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x29f
	.4byte	0x838
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2a3
	.4byte	0x2c4
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a4
	.4byte	0x286
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2a8
	.4byte	0x897
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2ad
	.4byte	0x63d
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2af
	.4byte	0x8a3
	.2byte	0x2ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x597
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.uleb128 0x16
	.4byte	0x597
	.uleb128 0x6
	.byte	0x4
	.4byte	0x436
	.uleb128 0x14
	.4byte	0x94
	.4byte	0x5c7
	.uleb128 0x15
	.4byte	0x454
	.uleb128 0x15
	.4byte	0xa9
	.uleb128 0x15
	.4byte	0x5c7
	.uleb128 0x15
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x59e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a9
	.uleb128 0x14
	.4byte	0xcc
	.4byte	0x5f1
	.uleb128 0x15
	.4byte	0x454
	.uleb128 0x15
	.4byte	0xa9
	.uleb128 0x15
	.4byte	0xcc
	.uleb128 0x15
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d3
	.uleb128 0x14
	.4byte	0x94
	.4byte	0x60b
	.uleb128 0x15
	.4byte	0x454
	.uleb128 0x15
	.4byte	0xa9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f7
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x621
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x42
	.4byte	0x631
	.uleb128 0xc
	.4byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x11f
	.4byte	0x30c
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.4byte	0x672
	.uleb128 0x18
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x125
	.4byte	0x672
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x126
	.4byte	0x94
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x127
	.4byte	0x678
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x631
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6b3
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x140
	.4byte	0x6b3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x141
	.4byte	0x6b3
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x142
	.4byte	0x5b
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x5b
	.4byte	0x6c3
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x280
	.4byte	0x7c4
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x282
	.4byte	0x9b
	.byte	0
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x283
	.4byte	0x591
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x284
	.4byte	0x7c4
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x285
	.4byte	0x1bd
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x286
	.4byte	0x94
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x287
	.4byte	0x8d
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x288
	.4byte	0x67e
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x289
	.4byte	0x133
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28a
	.4byte	0x133
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28b
	.4byte	0x133
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28c
	.4byte	0x7d4
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x28d
	.4byte	0x7e4
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x28e
	.4byte	0x94
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x28f
	.4byte	0x133
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x290
	.4byte	0x133
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x291
	.4byte	0x133
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x292
	.4byte	0x133
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x293
	.4byte	0x133
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x294
	.4byte	0x94
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.4byte	0x597
	.4byte	0x7d4
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	0x597
	.4byte	0x7e4
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.4byte	0x597
	.4byte	0x7f4
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x299
	.4byte	0x818
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x29c
	.4byte	0x818
	.byte	0
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x29d
	.4byte	0x828
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.4byte	0x306
	.4byte	0x828
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x838
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x27e
	.4byte	0x85a
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x295
	.4byte	0x6c3
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x29e
	.4byte	0x7f4
	.byte	0
	.uleb128 0xb
	.4byte	0x597
	.4byte	0x86a
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF123
	.uleb128 0x6
	.byte	0x4
	.4byte	0x86a
	.uleb128 0x1e
	.4byte	0x880
	.uleb128 0x15
	.4byte	0x454
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x875
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0x1e
	.4byte	0x897
	.uleb128 0x15
	.4byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x89d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x88c
	.uleb128 0xb
	.4byte	0x631
	.4byte	0x8b3
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x32e
	.4byte	0x454
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x32f
	.4byte	0x45a
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x7
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x7
	.byte	0x18
	.4byte	0x37
	.uleb128 0x20
	.4byte	0x8d6
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x7
	.byte	0x24
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x7
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x20
	.4byte	0x8f1
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x7
	.byte	0x30
	.4byte	0x74
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x51b
	.4byte	0x8fc
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x9
	.byte	0x35
	.4byte	0x901
	.uleb128 0xb
	.4byte	0x5c7
	.4byte	0x933
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0xa
	.byte	0x12
	.4byte	0x923
	.uleb128 0xb
	.4byte	0x8e6
	.4byte	0x94e
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x23
	.ascii	"pwm\000"
	.byte	0xa
	.byte	0x13
	.4byte	0x93e
	.byte	0x2a
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0x3
	.byte	0
	.byte	0x5
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0xb
	.byte	0
	.byte	0x11
	.byte	0
	.byte	0x17
	.byte	0
	.byte	0x1f
	.byte	0
	.byte	0x27
	.byte	0
	.byte	0x32
	.byte	0
	.byte	0x3d
	.byte	0
	.byte	0x51
	.byte	0
	.byte	0x6d
	.byte	0
	.byte	0xac
	.byte	0
	.byte	0xeb
	.byte	0
	.byte	0x74
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.byte	0xf2
	.byte	0x2
	.byte	0xe7
	.byte	0x3
	.uleb128 0x24
	.ascii	"LED\000"
	.byte	0xc
	.byte	0xa
	.byte	0x15
	.4byte	0x9c0
	.uleb128 0x10
	.ascii	"id\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x8e6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xa
	.byte	0x17
	.4byte	0x8e6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xa
	.byte	0x18
	.4byte	0x901
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xa
	.byte	0x19
	.4byte	0x8e6
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x9d0
	.4byte	0x9d0
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d6
	.uleb128 0x14
	.4byte	0x9e5
	.4byte	0x9e5
	.uleb128 0x15
	.4byte	0x9ec
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF136
	.uleb128 0x6
	.byte	0x4
	.4byte	0x984
	.uleb128 0x22
	.4byte	.LASF138
	.byte	0xa
	.byte	0x29
	.4byte	0x9c0
	.uleb128 0x22
	.4byte	.LASF139
	.byte	0xa
	.byte	0x2a
	.4byte	0x9c0
	.uleb128 0xb
	.4byte	0xa18
	.4byte	0xa18
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa1e
	.uleb128 0x1e
	.4byte	0xa29
	.uleb128 0x15
	.4byte	0x9ec
	.byte	0
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0xa
	.byte	0x2b
	.4byte	0xa08
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF141
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF142
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x5
	.byte	0x1
	.4byte	0x30
	.byte	0xb
	.2byte	0x282
	.4byte	0xa6d
	.uleb128 0x26
	.4byte	.LASF143
	.sleb128 -1
	.uleb128 0x27
	.4byte	.LASF144
	.byte	0
	.uleb128 0x27
	.4byte	.LASF145
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF146
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0xb
	.2byte	0x28d
	.4byte	0xa42
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0xc
	.byte	0x63
	.4byte	0x591
	.uleb128 0xb
	.4byte	0x94
	.4byte	0xa94
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.4byte	.LASF149
	.byte	0xd
	.byte	0x11
	.4byte	0xa84
	.byte	0x10
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii	"t\000"
	.byte	0xd
	.byte	0x12
	.4byte	0x8e6
	.byte	0
	.uleb128 0xb
	.4byte	0x8e6
	.4byte	0xacb
	.uleb128 0x2a
	.4byte	0x9b
	.2byte	0x3e7
	.byte	0
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0xd
	.byte	0x14
	.4byte	0xaba
	.uleb128 0x2b
	.4byte	.LASF151
	.byte	0xd
	.byte	0x15
	.4byte	0x8e6
	.2byte	0x3e8
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0xd
	.byte	0x16
	.4byte	0xaba
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0xd
	.byte	0x17
	.4byte	0x8e6
	.2byte	0x3e8
	.uleb128 0xb
	.4byte	0x8e6
	.4byte	0xb0c
	.uleb128 0x2a
	.4byte	0x9b
	.2byte	0x1f3
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF154
	.byte	0xd
	.byte	0x19
	.4byte	0xafb
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buffer1
	.uleb128 0x2c
	.4byte	.LASF155
	.byte	0xd
	.byte	0x1a
	.4byte	0xafb
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buffer2
	.uleb128 0xb
	.4byte	0xb3e
	.4byte	0xb3e
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb44
	.uleb128 0x2d
	.4byte	0x9e5
	.4byte	0xb4f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x22
	.4byte	.LASF156
	.byte	0xd
	.byte	0x2d
	.4byte	0xb2e
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0xd
	.byte	0x2f
	.4byte	0xb2e
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0xe
	.byte	0x1e
	.4byte	0x8cb
	.uleb128 0xb
	.4byte	0x5c7
	.4byte	0xb7b
	.uleb128 0x2f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0xe
	.byte	0x1f
	.4byte	0xb70
	.uleb128 0xb
	.4byte	0xb96
	.4byte	0xb96
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9c
	.uleb128 0x30
	.4byte	0xba3
	.uleb128 0x2e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0xe
	.byte	0x21
	.4byte	0xb86
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0xe
	.byte	0x22
	.4byte	0x8e1
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0xe
	.byte	0x22
	.4byte	0x8e1
	.uleb128 0xb
	.4byte	0x984
	.4byte	0xbd4
	.uleb128 0xc
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0xe
	.byte	0x24
	.4byte	0xbc4
	.uleb128 0x31
	.4byte	.LASF164
	.byte	0xf
	.byte	0x7
	.4byte	0x9e5
	.byte	0
	.uleb128 0x32
	.4byte	.LASF165
	.byte	0x1
	.byte	0x7
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc14
	.uleb128 0x33
	.4byte	.LVL1
	.4byte	0xc3d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF166
	.byte	0x1
	.byte	0x3
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3d
	.uleb128 0x33
	.4byte	.LVL0
	.4byte	0xc3d
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xe
	.byte	0x13
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
	.uleb128 0x3
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
	.uleb128 0x23
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
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
.LASF43:
	.ascii	"_dso_handle\000"
.LASF135:
	.ascii	"dutyCycle\000"
.LASF150:
	.ascii	"sin1values\000"
.LASF42:
	.ascii	"_fnargs\000"
.LASF96:
	.ascii	"_rand48\000"
.LASF145:
	.ascii	"__fdlibm_xopen\000"
.LASF75:
	.ascii	"_emergency\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF160:
	.ascii	"commandsQueue\000"
.LASF87:
	.ascii	"_atexit0\000"
.LASF138:
	.ascii	"modifyUP\000"
.LASF166:
	.ascii	"printActive\000"
.LASF116:
	.ascii	"_wcrtomb_state\000"
.LASF117:
	.ascii	"_wcsrtombs_state\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF146:
	.ascii	"__fdlibm_posix\000"
.LASF55:
	.ascii	"_lbfsize\000"
.LASF123:
	.ascii	"__locale_t\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF131:
	.ascii	"ITM_RxBuffer\000"
.LASF147:
	.ascii	"__fdlib_version\000"
.LASF114:
	.ascii	"_mbrtowc_state\000"
.LASF32:
	.ascii	"__tm_sec\000"
.LASF16:
	.ascii	"_off_t\000"
.LASF60:
	.ascii	"_close\000"
.LASF2:
	.ascii	"signed char\000"
.LASF155:
	.ascii	"dac_buffer2\000"
.LASF61:
	.ascii	"_ubuf\000"
.LASF50:
	.ascii	"_base\000"
.LASF34:
	.ascii	"__tm_hour\000"
.LASF19:
	.ascii	"__wch\000"
.LASF90:
	.ascii	"__sf\000"
.LASF41:
	.ascii	"_on_exit_args\000"
.LASF137:
	.ascii	"modes\000"
.LASF56:
	.ascii	"_cookie\000"
.LASF152:
	.ascii	"sin2values\000"
.LASF89:
	.ascii	"__sglue\000"
.LASF171:
	.ascii	"sprintUSART2\000"
.LASF154:
	.ascii	"dac_buffer1\000"
.LASF8:
	.ascii	"long int\000"
.LASF53:
	.ascii	"_flags\000"
.LASF45:
	.ascii	"_is_cxa\000"
.LASF71:
	.ascii	"_stdin\000"
.LASF144:
	.ascii	"__fdlibm_svid\000"
.LASF81:
	.ascii	"_result_k\000"
.LASF11:
	.ascii	"long long int\000"
.LASF128:
	.ascii	"uint16_t\000"
.LASF142:
	.ascii	"double\000"
.LASF85:
	.ascii	"_cvtbuf\000"
.LASF64:
	.ascii	"_offset\000"
.LASF115:
	.ascii	"_mbsrtowcs_state\000"
.LASF113:
	.ascii	"_mbrlen_state\000"
.LASF48:
	.ascii	"_fns\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF28:
	.ascii	"_sign\000"
.LASF124:
	.ascii	"_impure_ptr\000"
.LASF73:
	.ascii	"_stderr\000"
.LASF30:
	.ascii	"_Bigint\000"
.LASF57:
	.ascii	"_read\000"
.LASF161:
	.ascii	"w_queue\000"
.LASF31:
	.ascii	"__tm\000"
.LASF20:
	.ascii	"__wchb\000"
.LASF132:
	.ascii	"SystemCoreClock\000"
.LASF72:
	.ascii	"_stdout\000"
.LASF84:
	.ascii	"_cvtlen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"_file\000"
.LASF65:
	.ascii	"_data\000"
.LASF94:
	.ascii	"_niobs\000"
.LASF105:
	.ascii	"_rand_next\000"
.LASF111:
	.ascii	"_signal_buf\000"
.LASF102:
	.ascii	"_asctime_buf\000"
.LASF80:
	.ascii	"_result\000"
.LASF167:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF15:
	.ascii	"_LOCK_T\000"
.LASF86:
	.ascii	"_new\000"
.LASF66:
	.ascii	"_lock\000"
.LASF98:
	.ascii	"_mult\000"
.LASF58:
	.ascii	"_write\000"
.LASF37:
	.ascii	"__tm_year\000"
.LASF164:
	.ascii	"active\000"
.LASF120:
	.ascii	"_nmalloc\000"
.LASF162:
	.ascii	"r_queue\000"
.LASF119:
	.ascii	"_nextf\000"
.LASF140:
	.ascii	"changingModes\000"
.LASF36:
	.ascii	"__tm_mon\000"
.LASF46:
	.ascii	"_atexit\000"
.LASF148:
	.ascii	"suboptarg\000"
.LASF151:
	.ascii	"numOfsin1values\000"
.LASF78:
	.ascii	"__sdidinit\000"
.LASF104:
	.ascii	"_gamma_signgam\000"
.LASF18:
	.ascii	"wint_t\000"
.LASF141:
	.ascii	"float\000"
.LASF83:
	.ascii	"_freelist\000"
.LASF109:
	.ascii	"_wctomb_state\000"
.LASF136:
	.ascii	"_Bool\000"
.LASF129:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF95:
	.ascii	"_iobs\000"
.LASF118:
	.ascii	"_h_errno\000"
.LASF24:
	.ascii	"_flock_t\000"
.LASF39:
	.ascii	"__tm_yday\000"
.LASF165:
	.ascii	"printInActive\000"
.LASF68:
	.ascii	"_flags2\000"
.LASF92:
	.ascii	"__FILE\000"
.LASF23:
	.ascii	"_mbstate_t\000"
.LASF52:
	.ascii	"__sFILE\000"
.LASF157:
	.ascii	"modify2DOWN\000"
.LASF67:
	.ascii	"_mbstate\000"
.LASF107:
	.ascii	"_mblen_state\000"
.LASF74:
	.ascii	"_inc\000"
.LASF47:
	.ascii	"_ind\000"
.LASF163:
	.ascii	"leds\000"
.LASF77:
	.ascii	"_locale\000"
.LASF79:
	.ascii	"__cleanup\000"
.LASF76:
	.ascii	"_unspecified_locale_info\000"
.LASF27:
	.ascii	"_maxwds\000"
.LASF69:
	.ascii	"_reent\000"
.LASF149:
	.ascii	"sinParams\000"
.LASF21:
	.ascii	"__count\000"
.LASF122:
	.ascii	"__lock\000"
.LASF22:
	.ascii	"__value\000"
.LASF59:
	.ascii	"_seek\000"
.LASF153:
	.ascii	"numOfsin2values\000"
.LASF158:
	.ascii	"cursor\000"
.LASF38:
	.ascii	"__tm_wday\000"
.LASF17:
	.ascii	"_fpos_t\000"
.LASF14:
	.ascii	"long double\000"
.LASF70:
	.ascii	"_errno\000"
.LASF91:
	.ascii	"char\000"
.LASF63:
	.ascii	"_blksize\000"
.LASF133:
	.ascii	"mode\000"
.LASF51:
	.ascii	"_size\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF169:
	.ascii	"/home/adil/Downloads/MSUT/Zadaca/homework-template\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF97:
	.ascii	"_seed\000"
.LASF4:
	.ascii	"short int\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF134:
	.ascii	"period\000"
.LASF26:
	.ascii	"_next\000"
.LASF101:
	.ascii	"_strtok_last\000"
.LASF44:
	.ascii	"_fntypes\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF99:
	.ascii	"_add\000"
.LASF25:
	.ascii	"__ULong\000"
.LASF126:
	.ascii	"int8_t\000"
.LASF112:
	.ascii	"_getdate_err\000"
.LASF170:
	.ascii	"__fdlibm_version\000"
.LASF168:
	.ascii	"pushbutton.c\000"
.LASF125:
	.ascii	"_global_impure_ptr\000"
.LASF143:
	.ascii	"__fdlibm_ieee\000"
.LASF100:
	.ascii	"_unused_rand\000"
.LASF29:
	.ascii	"_wds\000"
.LASF93:
	.ascii	"_glue\000"
.LASF127:
	.ascii	"uint8_t\000"
.LASF110:
	.ascii	"_l64a_buf\000"
.LASF88:
	.ascii	"_sig_func\000"
.LASF62:
	.ascii	"_nbuf\000"
.LASF121:
	.ascii	"_unused\000"
.LASF40:
	.ascii	"__tm_isdst\000"
.LASF103:
	.ascii	"_localtime_buf\000"
.LASF33:
	.ascii	"__tm_min\000"
.LASF106:
	.ascii	"_r48\000"
.LASF159:
	.ascii	"cursorPositions\000"
.LASF108:
	.ascii	"_mbtowc_state\000"
.LASF82:
	.ascii	"_p5s\000"
.LASF156:
	.ascii	"modify2UP\000"
.LASF139:
	.ascii	"modifyDOWN\000"
.LASF49:
	.ascii	"__sbuf\000"
.LASF130:
	.ascii	"uint32_t\000"
.LASF35:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
