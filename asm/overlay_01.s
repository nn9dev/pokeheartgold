	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start ov01_021E5900
ov01_021E5900: ; 0x021E5900
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201EEB4
	bl sub_0202061C
	bl sub_0200B224
	ldr r0, [r4, #0x3c]
	bl sub_0205F1A0
	bl ov01_021FA1D0
	bl sub_02023910
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E5900

	thumb_func_start ov01_021E5924
ov01_021E5924: ; 0x021E5924
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	ldr r5, _021E5B9C ; =0x00DCE6A1
	str r1, [sp, #4]
	bl OverlayManager_GetField18
	ldr r1, [r6]
	add r4, r0, #0
	cmp r1, #3
	bls _021E593E
	b _021E5B8E
_021E593E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E594A: ; jump table
	.short _021E5952 - _021E594A - 2 ; case 0
	.short _021E5AB6 - _021E594A - 2 ; case 1
	.short _021E5B5C - _021E594A - 2 ; case 2
	.short _021E5B62 - _021E594A - 2 ; case 3
_021E5952:
	ldr r1, _021E5BA0 ; =SDK_OVERLAY_OVY_123_ID
	mov r0, #0
	bl FS_LoadOverlay
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl sub_0201A108
	ldr r0, _021E5BA4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021E5BA8 ; =0x04001050
	strh r1, [r0]
	ldr r0, _021E5BAC ; =ov01_021E66A8
	blx ov123_0225F610
	ldr r1, _021E5BB0 ; =0x000004CF
	mul r1, r0
	mov r0, #0
	add r5, r5, r1
	bl sub_0200FBDC
	mov r0, #1
	bl sub_0200FBDC
	add r0, r4, #0
	bl ov01_021E6364
	ldr r0, _021E5BB4 ; =ov01_021E66D8
	blx ov123_0225F598
	cmp r0, #0
	bne _021E599C
	mov r1, #1
	b _021E599E
_021E599C:
	mov r1, #0
_021E599E:
	mov r0, #0x6b
	mul r0, r1
	add r5, r5, r0
	add r0, r4, #0
	bl sub_02053018
	mov r0, #0x47
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0x74]
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1c
	beq _021E59F0
	ldr r0, _021E5BB8 ; =SDK_OVERLAY_OVY_2_ID
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl ov01_021E5EB8
	cmp r0, #0
	beq _021E59D4
	cmp r0, #1
	beq _021E59DE
	b _021E59E8
_021E59D4:
	ldr r0, _021E5BBC ; =SDK_OVERLAY_OVY_4_ID
	mov r1, #2
	bl HandleLoadOverlay
	b _021E59F0
_021E59DE:
	ldr r0, _021E5BC0 ; =SDK_OVERLAY_OVY_3_ID
	mov r1, #2
	bl HandleLoadOverlay
	b _021E59F0
_021E59E8:
	ldr r0, _021E5BC0 ; =SDK_OVERLAY_OVY_3_ID
	mov r1, #2
	bl HandleLoadOverlay
_021E59F0:
	ldr r0, _021E5BC4 ; =ov01_021E66B8
	blx ov123_0225F430
	ldr r2, [r4, #0x74]
	add r7, r0, #0
	ldr r1, _021E5BC8 ; =0x000003A1
	ldr r2, [r2, #4]
	mul r7, r1
	mov r0, #3
	mov r1, #4
	bl CreateHeap
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5A12
	bl GF_AssertFail
_021E5A12:
	ldr r1, _021E5BA0 ; =SDK_OVERLAY_OVY_123_ID
	mov r0, #0
	bl FS_UnloadOverlay
	mov r0, #4
	mov r1, #0x28
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x28
	str r0, [r4, #4]
	bl MI_CpuFill8
	add r0, r4, #0
	mov r1, #4
	mov r2, #8
	bl ov01_021E66E4
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	ldr r1, _021E5BCC ; =0x00000D69
	add r0, r5, r7
	bl _u32_div_f
	cmp r1, #0
	beq _021E5A50
	ldr r0, _021E5BD0 ; =sub_0203E348
	mov r1, #0
	mov r2, #0x7b
	bl sub_0200E320
_021E5A50:
	bl ov01_021E6028
	mov r0, #0x80
	mov r1, #4
	bl sub_0202055C
	mov r0, #4
	add r1, r0, #0
	bl sub_02023738
	mov r0, #4
	bl sub_0201F590
	bl ov01_021E61E0
	bl ov01_021E6178
	bl GX_SwapDisplay
	mov r0, #4
	bl BgConfig_Alloc
	str r0, [r4, #8]
	bl ov01_021E6058
	mov r0, #0
	mov r1, #1
	bl sub_0205B4EC
	add r0, r4, #0
	mov r1, #4
	bl sub_02040750
	ldr r1, _021E5BD4 ; =0x00001079
	add r0, r5, r7
	bl _u32_div_f
	cmp r1, #0
	beq _021E5AA8
	ldr r0, _021E5BD0 ; =sub_0203E348
	ldr r2, _021E5BD8 ; =0x00000315
	mov r1, #0
	bl sub_0200E320
_021E5AA8:
	mov r0, #4
	bl ov02_0224F864
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _021E5B8E
_021E5AB6:
	bl ov01_021E63B8
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r4, #0
	str r0, [sp]
	add r3, r4, #0
	add r1, #0xc0
	add r3, #0xcc
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	ldr r2, [r4, #0x54]
	ldr r3, [r3]
	bl ov01_021FBA3C
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1]
	mov r0, #4
	bl ov01_021F3638
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r4, #0
	bl ov01_021E6460
	add r0, r4, #0
	bl ov01_021E64A4
	add r0, r4, #0
	bl ov01_021E6580
	ldr r0, [r4, #0xc]
	bl sub_0203B9C4
	bl sub_0203B984
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl ov01_021EB260
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	ldr r1, [r1]
	bl sub_02055164
	cmp r0, #0
	bne _021E5B2A
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r0]
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	bne _021E5B32
_021E5B2A:
	add r0, r4, #0
	mov r1, #0
	bl ov01_021E7F00
_021E5B32:
	add r0, r4, #0
	mov r1, #3
	bl sub_02040750
	mov r0, #4
	bl ov01_021FB4C0
	ldr r1, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl ov01_021FB4F4
	ldr r1, [r4, #4]
	mov r0, #4
	ldr r1, [r1, #0x1c]
	bl ov01_021FB5D4
	ldr r1, [r4, #4]
	str r0, [r1, #0x20]
	b _021E5B8E
_021E5B5C:
	bl ov01_021EAF18
	b _021E5B8E
_021E5B62:
	bl ov01_021EAF34
	cmp r0, #0
	beq _021E5B70
	mov r0, #1
	str r0, [sp, #4]
	str r0, [r4, #0x6c]
_021E5B70:
	bl ov01_021E662C
	cmp r0, #0
	bne _021E5B8E
	mov r2, #0xfa
	ldr r0, _021E5BDC ; =sub_02096594
	mov r1, #0
	lsl r2, r2, #2
	bl sub_0200E320
	ldr r0, _021E5BDC ; =sub_02096594
	ldr r2, _021E5BE0 ; =0x00000578
	mov r1, #0
	bl sub_0200E320
_021E5B8E:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5B9C: .word 0x00DCE6A1
_021E5BA0: .word SDK_OVERLAY_OVY_123_ID
_021E5BA4: .word 0x04000050
_021E5BA8: .word 0x04001050
_021E5BAC: .word ov01_021E66A8
_021E5BB0: .word 0x000004CF
_021E5BB4: .word ov01_021E66D8
_021E5BB8: .word SDK_OVERLAY_OVY_2_ID
_021E5BBC: .word SDK_OVERLAY_OVY_4_ID
_021E5BC0: .word SDK_OVERLAY_OVY_3_ID
_021E5BC4: .word ov01_021E66B8
_021E5BC8: .word 0x000003A1
_021E5BCC: .word 0x00000D69
_021E5BD0: .word sub_0203E348
_021E5BD4: .word 0x00001079
_021E5BD8: .word 0x00000315
_021E5BDC: .word sub_02096594
_021E5BE0: .word 0x00000578
	thumb_func_end ov01_021E5924

	thumb_func_start ov01_021E5BE4
ov01_021E5BE4: ; 0x021E5BE4
	push {r4, lr}
	bl OverlayManager_GetField18
	add r4, r0, #0
	bl ov01_021E5ED4
	cmp r0, #0
	beq _021E5C04
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov01_021F6830
	add r0, r4, #0
	bl ov01_021E5F04
_021E5C04:
	add r1, r4, #0
	add r1, #0xbc
	ldr r1, [r1]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_021E5FC0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _021E5C1E
	mov r0, #0
	pop {r4, pc}
_021E5C1E:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E5BE4

	thumb_func_start ov01_021E5C24
ov01_021E5C24: ; 0x021E5C24
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r5, _021E5E7C ; =0x002AAACF
	bl OverlayManager_GetField18
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl ov01_021F50F0
	ldr r0, [r6]
	cmp r0, #0
	beq _021E5C4A
	cmp r0, #1
	bne _021E5C42
	b _021E5D82
_021E5C42:
	cmp r0, #2
	bne _021E5C48
	b _021E5E12
_021E5C48:
	b _021E5E76
_021E5C4A:
	ldr r1, _021E5E80 ; =SDK_OVERLAY_OVY_123_ID
	mov r0, #0
	bl FS_LoadOverlay
	add r0, r4, #0
	bl sub_02064910
	ldr r0, _021E5E84 ; =ov01_021E66C8
	blx ov123_0225F610
	ldr r1, _021E5E88 ; =0x0000023B
	mul r1, r0
	ldr r0, [r4, #0x2c]
	add r5, r5, r1
	bl ov01_021F6304
	ldr r0, [r4, #0x40]
	bl sub_0205C67C
	ldr r1, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, [r4, #0x40]
	bl sub_0205C688
	ldr r1, [r4, #0x20]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	ldr r1, [r4, #0x20]
	str r0, [r1, #0x10]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	bl ov01_021FB418
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _021E5C9C
	bl GF_AssertFail
_021E5C9C:
	ldr r0, [r4, #0x2c]
	bl ov01_021F61F8
	ldr r0, _021E5E8C ; =ov01_021E66DC
	blx ov123_0225F4A8
	cmp r0, #0
	bne _021E5CB0
	mov r1, #1
	b _021E5CB2
_021E5CB0:
	mov r1, #0
_021E5CB2:
	ldr r0, _021E5E90 ; =0x0000018D
	mul r0, r1
	add r5, r5, r0
	ldr r0, [r4, #0x54]
	bl ov01_021E8A28
	ldr r0, [r4, #0x54]
	bl ov01_021E8AEC
	add r0, r4, #0
	add r0, #0x58
	bl ov01_021E8DD4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov01_02204764
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl ov01_02204634
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ov01_02204278
	ldr r0, _021E5E94 ; =ov01_021E66E0
	blx ov123_0225F598
	cmp r0, #0
	bne _021E5CF8
	mov r1, #1
	b _021E5CFA
_021E5CF8:
	mov r1, #0
_021E5CFA:
	mov r0, #0x8b
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ov01_021EB1BC
	ldr r1, _021E5E80 ; =SDK_OVERLAY_OVY_123_ID
	mov r0, #0
	bl FS_UnloadOverlay
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ov01_021EB1DC
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, _021E5E98 ; =0x000008AD
	add r0, r5, r7
	bl _u32_div_f
	cmp r1, #0
	beq _021E5D34
	ldr r0, _021E5E9C ; =sub_0203E348
	ldr r2, _021E5EA0 ; =0x00001EA5
	mov r1, #0
	bl sub_0200E320
_021E5D34:
	ldr r0, [r4, #0x3c]
	bl sub_0205E4C8
	ldr r0, [r4, #0x3c]
	bl ov01_021F9250
	ldr r0, [r4, #0x3c]
	bl sub_0205F55C
	ldr r0, [r4, #0x44]
	bl ov01_021F13F4
	add r0, r4, #0
	bl ov01_02205424
	ldr r0, [r4, #0x38]
	bl ov01_021E66A0
	mov r0, #0
	str r0, [r4, #0x38]
	ldr r1, _021E5EA4 ; =0x000004EB
	add r0, r5, r7
	bl _u32_div_f
	cmp r1, #0
	beq _021E5D72
	ldr r0, _021E5E9C ; =sub_0203E348
	ldr r2, _021E5EA8 ; =0x000004DD
	mov r1, #0
	bl sub_0200E320
_021E5D72:
	add r4, #0x9c
	ldr r0, [r4]
	bl ov01_021F3660
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E5E76
_021E5D82:
	ldr r0, [r4, #0x2c]
	bl ov01_021F62CC
	cmp r0, #1
	bne _021E5E76
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl ov01_02204084
	add r0, r4, #0
	add r0, #0x34
	bl ov01_021FB944
	ldr r0, [r4, #0x2c]
	bl ov01_021F62B0
	add r0, r4, #0
	bl ov01_021EAC30
	add r0, r4, #0
	add r0, #0x50
	bl ov01_021EA284
	ldr r0, [r4, #0x68]
	bl ov01_021F3D50
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl ov01_021EFA1C
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl ov01_021EB234
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl ov01_021FB610
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl ov01_021FB4D4
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl sub_020556A8
	add r0, r4, #0
	add r0, #0x4c
	bl ov01_021EA840
	add r0, r4, #0
	add r0, #0x48
	bl ov01_021EA8FC
	bl ov01_021E619C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov02_0224F8F4
	ldr r0, [r4, #8]
	bl ov01_021E6138
	add r0, r4, #0
	bl ov01_021EAF54
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E5E76
_021E5E12:
	add r0, r4, #0
	bl ov01_021EAF70
	cmp r0, #0
	beq _021E5E76
	bl ov01_021E6214
	bl sub_02023778
	bl sub_020205AC
	bl sub_0201F63C
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl ov01_021E6734
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	ldr r0, [r4, #8]
	bl FreeToHeap
	ldr r0, [r4, #4]
	bl FreeToHeap
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #4
	bl DestroyHeap
	ldr r0, [r4, #0x74]
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1c
	beq _021E5E6E
	ldr r0, _021E5EAC ; =SDK_OVERLAY_OVY_2_ID
	bl UnloadOverlayByID
	ldr r0, _021E5EB0 ; =SDK_OVERLAY_OVY_4_ID
	bl UnloadOverlayByID
	ldr r0, _021E5EB4 ; =SDK_OVERLAY_OVY_3_ID
	bl UnloadOverlayByID
_021E5E6E:
	bl sub_02005D00
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5E76:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5E7C: .word 0x002AAACF
_021E5E80: .word SDK_OVERLAY_OVY_123_ID
_021E5E84: .word ov01_021E66C8
_021E5E88: .word 0x0000023B
_021E5E8C: .word ov01_021E66DC
_021E5E90: .word 0x0000018D
_021E5E94: .word ov01_021E66E0
_021E5E98: .word 0x000008AD
_021E5E9C: .word sub_0203E348
_021E5EA0: .word 0x00001EA5
_021E5EA4: .word 0x000004EB
_021E5EA8: .word 0x000004DD
_021E5EAC: .word SDK_OVERLAY_OVY_2_ID
_021E5EB0: .word SDK_OVERLAY_OVY_4_ID
_021E5EB4: .word SDK_OVERLAY_OVY_3_ID
	thumb_func_end ov01_021E5C24

	thumb_func_start ov01_021E5EB8
ov01_021E5EB8: ; 0x021E5EB8
	push {r3, lr}
	bl ScriptEnvironment_GetSav2Ptr
	bl sub_0202A998
	bl sub_0202AEBC
	cmp r0, #0
	bne _021E5ECE
	mov r0, #1
	pop {r3, pc}
_021E5ECE:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021E5EB8

	thumb_func_start ov01_021E5ED4
ov01_021E5ED4: ; 0x021E5ED4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C67C
	add r4, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C688
	ldr r2, [r5, #0x20]
	ldr r1, [r2, #8]
	cmp r4, r1
	bne _021E5EF4
	ldr r1, [r2, #0xc]
	cmp r0, r1
	beq _021E5EFE
_021E5EF4:
	str r4, [r2, #8]
	ldr r1, [r5, #0x20]
	str r0, [r1, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5EFE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021E5ED4

	thumb_func_start ov01_021E5F04
ov01_021E5F04: ; 0x021E5F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C67C
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	ldr r0, [r5, #0x40]
	asr r4, r1, #5
	bl sub_0205C688
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r2, r1, #5
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	bl sub_0203B024
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	ldr r6, [r0]
	cmp r4, r6
	bne _021E5F3E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E5F3E:
	ldr r0, [r5, #0xc]
	bl sub_0203B9C4
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	str r4, [r0]
	add r0, r5, #0
	bl sub_0203B648
	add r0, r5, #0
	mov r1, #1
	bl sub_02053038
	add r0, r5, #0
	bl sub_0203B74C
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0203B754
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0205E104
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	ldr r1, [r1]
	bl sub_02054F60
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_02054FDC
	add r0, r5, #0
	bl sub_0203B6B0
	add r0, r7, #0
	bl sub_0203B984
	add r1, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl ov01_021EB2B8
	add r0, r6, #0
	bl MapHeader_GetMapSec
	add r6, r0, #0
	add r0, r4, #0
	bl MapHeader_GetMapSec
	cmp r6, r0
	beq _021E5FB8
	add r0, r5, #0
	bl ov01_021EFAF8
_021E5FB8:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E5F04

	thumb_func_start ov01_021E5FC0
ov01_021E5FC0: ; 0x021E5FC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02050590
	cmp r0, #0
	bne _021E5FD4
	add r0, r5, #0
	bl sub_02055418
_021E5FD4:
	ldr r0, [r5, #0x50]
	bl ov01_021EA2A4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov01_022047DC
	ldr r0, [r5, #0x28]
	bl ov01_021EAD8C
	add r0, r5, #0
	bl ov01_021F3D98
	mov r0, #1
	tst r0, r4
	beq _021E5FFE
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x10]
	bl ov01_021EB114
_021E5FFE:
	mov r0, #8
	tst r0, r4
	beq _021E600E
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ov01_02204350
_021E600E:
	mov r0, #2
	tst r0, r4
	beq _021E601A
	ldr r0, [r5, #0x2c]
	bl ov01_021F50F0
_021E601A:
	mov r0, #4
	tst r0, r4
	beq _021E6026
	add r0, r5, #0
	bl ov01_021E6220
_021E6026:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E5FC0

	thumb_func_start ov01_021E6028
ov01_021E6028: ; 0x021E6028
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E6044 ; =0x02206350
	add r3, sp, #0
	mov r2, #5
_021E6032:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6032
	add r0, sp, #0
	bl GX_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E6044: .word 0x02206350
	thumb_func_end ov01_021E6028

	thumb_func_start ov01_021E6048
ov01_021E6048: ; 0x021E6048
	ldr r3, _021E604C ; =ov01_021E6058
	bx r3
	.balign 4, 0
_021E604C: .word ov01_021E6058
	thumb_func_end ov01_021E6048

	thumb_func_start ov01_021E6050
ov01_021E6050: ; 0x021E6050
	ldr r3, _021E6054 ; =ov01_021E6138
	bx r3
	.balign 4, 0
_021E6054: .word ov01_021E6138
	thumb_func_end ov01_021E6050

	thumb_func_start ov01_021E6058
ov01_021E6058: ; 0x021E6058
	push {r3, r4, r5, lr}
	sub sp, #0x68
	ldr r5, _021E6128 ; =0x022062EC
	add r3, sp, #0x58
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E612C ; =0x02206318
	add r3, sp, #0x3c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6130 ; =0x022062FC
	add r3, sp, #0x20
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6134 ; =0x02206334
	add r3, sp, #4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1]
	mov r1, #2
	bl DC_FlushRange
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl GX_LoadBGPltt
	add sp, #0x68
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6128: .word 0x022062EC
_021E612C: .word 0x02206318
_021E6130: .word 0x022062FC
_021E6134: .word 0x02206334
	thumb_func_end ov01_021E6058

	thumb_func_start ov01_021E6138
ov01_021E6138: ; 0x021E6138
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r0, #2
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r0, #8
	mov r1, #0
	bl GX_EngineAToggleLayers
	add r0, r4, #0
	mov r1, #1
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #2
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #3
	bl FreeBgTilemapBuffer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E6138

	thumb_func_start ov01_021E6178
ov01_021E6178: ; 0x021E6178
	push {lr}
	sub sp, #0x14
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #4
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200B150
	add sp, #0x14
	pop {pc}
	thumb_func_end ov01_021E6178

	thumb_func_start ov01_021E619C
ov01_021E619C: ; 0x021E619C
	ldr r3, _021E61A0 ; =sub_0200B244
	bx r3
	.balign 4, 0
_021E61A0: .word sub_0200B244
	thumb_func_end ov01_021E619C

	thumb_func_start ov01_021E61A4
ov01_021E61A4: ; 0x021E61A4
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	add r2, r1, #0
	bl ov01_021EAB44
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov01_021EAB58
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0
	bl ov01_021EAB6C
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ov01_021EAB80
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x16
	bl ov01_021EA910
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E61A4

	thumb_func_start ov01_021E61E0
ov01_021E61E0: ; 0x021E61E0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E6210 ; =ov01_022062DC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_020215C0
	mov r0, #0x14
	mov r1, #4
	bl sub_02022588
	bl sub_020216C8
	bl sub_02022638
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021E6210: .word ov01_022062DC
	thumb_func_end ov01_021E61E0

	thumb_func_start ov01_021E6214
ov01_021E6214: ; 0x021E6214
	push {r3, lr}
	bl sub_0202168C
	bl sub_02022608
	pop {r3, pc}
	thumb_func_end ov01_021E6214

	thumb_func_start ov01_021E6220
ov01_021E6220: ; 0x021E6220
	push {r4, r5, r6, lr}
	sub sp, #0x88
	add r4, r0, #0
	bl sub_02026E48
	bl sub_02023154
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x48]
	bl ov01_021F61A8
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	ldr r1, [r4, #0x34]
	bl ov01_021F3C9C
	ldr r1, [r4, #0x24]
	add r0, sp, #0
	bl sub_02023618
	add r2, sp, #0
	ldrh r2, [r2]
	mov r0, #0x47
	lsl r0, r0, #2
	neg r2, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _021E630C ; =0x021094DC
	ldr r0, [r4, r0]
	ldrsh r2, [r2, r3]
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r2, r2, #0xc
	ldr r6, _021E6310 ; =0x021DA4A4
	orr r2, r0
	add r5, sp, #0x48
	mov r3, #8
_021E6286:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021E6286
	add r6, sp, #0x48
	add r5, sp, #8
	mov r3, #8
_021E6294:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021E6294
	ldr r0, [sp, #0x30]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r3, #2
	mov r5, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r5
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x40]
	ldr r1, _021E6310 ; =0x021DA4A4
	add r0, sp, #8
	mov r2, #0x40
	bl MIi_CpuCopyFast
	ldr r1, _021E6314 ; =0x021DA51C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbFlushP
	ldr r0, [r4, #0x44]
	bl ov01_021F13EC
	bl sub_020237B0
	ldr r1, _021E6310 ; =0x021DA4A4
	add r0, sp, #0x48
	mov r2, #0x40
	bl MIi_CpuCopyFast
	ldr r1, _021E6314 ; =0x021DA51C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbFlushP
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl ov01_021E6768
	ldr r1, _021E6318 ; =0x0210F6DC
	add r0, r5, #0
	ldr r1, [r1]
	bl sub_02026E50
	add sp, #0x88
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E630C: .word 0x021094DC
_021E6310: .word 0x021DA4A4
_021E6314: .word 0x021DA51C
_021E6318: .word 0x0210F6DC
	thumb_func_end ov01_021E6220

	thumb_func_start ov01_021E631C
ov01_021E631C: ; 0x021E631C
	cmp r1, #1
	bne _021E6330
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	mov r1, #4
	orr r1, r2
	add r0, #0xbc
	str r1, [r0]
	bx lr
_021E6330:
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	mov r1, #4
	bic r2, r1
	add r0, #0xbc
	str r2, [r0]
	bx lr
	thumb_func_end ov01_021E631C

	thumb_func_start ov01_021E6340
ov01_021E6340: ; 0x021E6340
	cmp r1, #1
	bne _021E6354
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	mov r1, #1
	orr r1, r2
	add r0, #0xbc
	str r1, [r0]
	bx lr
_021E6354:
	add r1, r0, #0
	add r1, #0xbc
	ldr r2, [r1]
	mov r1, #1
	bic r2, r1
	add r0, #0xbc
	str r2, [r0]
	bx lr
	thumb_func_end ov01_021E6340

	thumb_func_start ov01_021E6364
ov01_021E6364: ; 0x021E6364
	mov r1, #0xf
	add r0, #0xbc
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021E6364

	thumb_func_start ov01_021E636C
ov01_021E636C: ; 0x021E636C
	push {lr}
	sub sp, #0xc
	cmp r0, #1
	bne _021E638E
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200FA24
	add sp, #0xc
	pop {pc}
_021E638E:
	cmp r0, #0
	bne _021E63AE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200FA24
	add sp, #0xc
	pop {pc}
_021E63AE:
	bl GF_AssertFail
	add sp, #0xc
	pop {pc}
	.balign 4, 0
	thumb_func_end ov01_021E636C

	thumb_func_start ov01_021E63B8
ov01_021E63B8: ; 0x021E63B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r0, _021E6454 ; =0x0210F6DC
	ldr r0, [r0]
	lsl r1, r0, #1
	ldr r0, _021E6458 ; =0x04000540
	str r1, [r0]
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetAreaDataBank
	bl ov01_021FB888
	str r0, [r5, #0x34]
	bl ov01_021FB934
	add r3, r0, #0
	ldr r1, _021E645C ; =0x00000226
	mov r0, #4
	mov r2, #0x80
	bl ov01_02204004
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMoveModelBank
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021E6406
	bl GF_AssertFail
_021E6406:
	mov r0, #4
	add r1, r4, #0
	bl ov01_021E6644
	str r0, [r5, #0x38]
	mov r0, #4
	bl ov01_022041C4
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ov01_0220460C
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	mov r0, #4
	bl ov01_02204744
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0x34]
	bl ov01_021FB904
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	bl ov01_021E87E4
	str r0, [r5, #0x54]
	bl ov01_021E8DB4
	str r0, [r5, #0x58]
	pop {r3, r4, r5, pc}
	nop
_021E6454: .word 0x0210F6DC
_021E6458: .word 0x04000540
_021E645C: .word 0x00000226
	thumb_func_end ov01_021E63B8

	thumb_func_start ov01_021E6460
ov01_021E6460: ; 0x021E6460
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x64]
	add r2, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r2]
	ldr r3, [r4, #0x54]
	bl ov01_021F6020
	str r0, [r4, #0x2c]
	mov r0, #8
	mov r1, #4
	bl ov01_021FB3A4
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl ov01_021F6118
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021E6460

	thumb_func_start ov01_021E64A4
ov01_021E64A4: ; 0x021E64A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r1, #0x17
	mov r2, #4
	add r5, r0, #0
	bl ov01_021F1348
	mov r1, #0x50
	str r0, [r5, #0x44]
	bl ov01_021F1384
	mov r2, #0x20
	str r2, [sp]
	mov r0, #5
	str r2, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	lsl r0, r2, #6
	str r0, [sp, #0xc]
	lsl r0, r2, #0xb
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x44]
	mov r1, #4
	add r3, r2, #0
	bl ov01_021F1390
	add r0, r5, #0
	mov r1, #4
	bl sub_02055680
	ldr r1, [r5, #4]
	str r0, [r1, #0x18]
	ldr r0, [r5, #0x70]
	cmp r0, #2
	bne _021E64F2
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0205F5F8
_021E64F2:
	ldr r0, [r5, #0x44]
	ldr r1, _021E657C ; =0x02208BFC
	bl ov01_021F13D0
	ldr r0, [r5, #0x70]
	mov r4, #0xa
	cmp r0, #2
	bne _021E6504
	mov r4, #5
_021E6504:
	ldr r0, [r5, #0x38]
	bl ov01_021E669C
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl ov01_021E6698
	str r4, [sp]
	add r3, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0x20
	add r2, r6, #3
	bl ov01_021F91F8
	ldr r0, [r5, #0x3c]
	bl ov01_022057DC
	ldr r0, [r5, #0x44]
	bl ov01_021FD3F8
	ldr r0, [r5, #0x40]
	bl sub_0205C46C
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	beq _021E6544
	bl sub_0205E580
	b _021E654E
_021E6544:
	bl sub_0205E520
	add r0, r5, #0
	bl ov01_022059AC
_021E654E:
	bl sub_02057FA4
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	beq _021E6566
	mov r1, #2
	bl sub_0205F184
	b _021E656A
_021E6566:
	bl sub_0205F568
_021E656A:
	ldr r0, [r5, #0x40]
	bl sub_0205C6BC
	ldr r1, [r5, #0x2c]
	bl ov01_021F62E8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021E657C: .word 0x02208BFC
	thumb_func_end ov01_021E64A4

	thumb_func_start ov01_021E6580
ov01_021E6580: ; 0x021E6580
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl GX_EngineAToggleLayers
	bl GX_BothDispOn
	bl ov01_021EA8E0
	str r0, [r4, #0x48]
	bl ov01_021E61A4
	bl ov01_021EA824
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0xc]
	bl sub_0203B9C4
	bl sub_0203B9A4
	add r5, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0205C6BC
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #1
	bl ov01_021EABA8
	ldr r0, [r4, #0x34]
	bl ov01_021FBA14
	add r5, r0, #0
	cmp r5, #3
	bne _021E65D8
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	bl sub_020669A4
	cmp r0, #0
	beq _021E65D8
	mov r5, #4
_021E65D8:
	ldr r0, [r4, #0x48]
	add r1, r5, #0
	bl ov01_021EA220
	str r0, [r4, #0x50]
	add r0, r4, #0
	bl ov01_021EB1F4
	ldr r1, [r4, #4]
	str r0, [r1, #0xc]
	ldr r0, [r4, #8]
	bl ov01_021EF9E0
	ldr r1, [r4, #4]
	str r0, [r1, #8]
	mov r0, #4
	bl ov01_021F3D38
	str r0, [r4, #0x68]
	bl ov01_021EAFD4
	ldr r1, [r4, #4]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x34]
	bl ov01_021FB9CC
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl ov01_021EB00C
	add r0, r4, #0
	bl sub_020648EC
	ldr r0, _021E6628 ; =ov01_021E5900
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	pop {r3, r4, r5, pc}
	nop
_021E6628: .word ov01_021E5900
	thumb_func_end ov01_021E6580

	thumb_func_start ov01_021E662C
ov01_021E662C: ; 0x021E662C
	push {r3, lr}
	bl CARD_SpiWaitGetStatus
	bl CARD_SpiWaitGetStatus
	cmp r0, #0xaa
	bne _021E663E
	mov r0, #1
	pop {r3, pc}
_021E663E:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021E662C

	thumb_func_start ov01_021E6644
ov01_021E6644: ; 0x021E6644
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r1, #0x64
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0x5c
	add r1, r6, #0
	add r2, r5, #0
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	ldr r1, _021E6694 ; =0x0000FFFF
	mov r2, #0
	add r3, r4, #0
_021E6662:
	add r2, r2, #1
	str r1, [r3, #4]
	add r3, r3, #4
	cmp r2, #0x18
	blt _021E6662
	ldr r5, _021E6694 ; =0x0000FFFF
	mov r3, #0
	add r1, r0, #0
	add r2, r4, #0
_021E6674:
	ldrh r6, [r1]
	str r6, [r2, #4]
	ldrh r6, [r1]
	cmp r6, r5
	beq _021E6688
	add r3, r3, #1
	add r1, r1, #2
	add r2, r2, #4
	cmp r3, #0x18
	blt _021E6674
_021E6688:
	strh r3, [r4]
	bl FreeToHeap
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021E6694: .word 0x0000FFFF
	thumb_func_end ov01_021E6644

	thumb_func_start ov01_021E6698
ov01_021E6698: ; 0x021E6698
	add r0, r0, #4
	bx lr
	thumb_func_end ov01_021E6698

	thumb_func_start ov01_021E669C
ov01_021E669C: ; 0x021E669C
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov01_021E669C

	thumb_func_start ov01_021E66A0
ov01_021E66A0: ; 0x021E66A0
	ldr r3, _021E66A4 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021E66A4: .word FreeToHeap
	thumb_func_end ov01_021E66A0

	thumb_func_start ov01_021E66A8
ov01_021E66A8: ; 0x021E66A8
	ldr r3, _021E66B4 ; =AllocFromHeapAtEnd
	mov r1, #0xfa
	mov r0, #3
	lsl r1, r1, #2
	bx r3
	nop
_021E66B4: .word AllocFromHeapAtEnd
	thumb_func_end ov01_021E66A8

	thumb_func_start ov01_021E66B8
ov01_021E66B8: ; 0x021E66B8
	ldr r3, _021E66C4 ; =AllocFromHeapAtEnd
	mov r1, #0xfa
	mov r0, #3
	lsl r1, r1, #2
	bx r3
	nop
_021E66C4: .word AllocFromHeapAtEnd
	thumb_func_end ov01_021E66B8

	thumb_func_start ov01_021E66C8
ov01_021E66C8: ; 0x021E66C8
	ldr r3, _021E66D4 ; =AllocFromHeapAtEnd
	mov r1, #0xfa
	mov r0, #3
	lsl r1, r1, #2
	bx r3
	nop
_021E66D4: .word AllocFromHeapAtEnd
	thumb_func_end ov01_021E66C8

	thumb_func_start ov01_021E66D8
ov01_021E66D8: ; 0x021E66D8
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E66D8

	thumb_func_start ov01_021E66DC
ov01_021E66DC: ; 0x021E66DC
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E66DC

	thumb_func_start ov01_021E66E0
ov01_021E66E0: ; 0x021E66E0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E66E0

	thumb_func_start ov01_021E66E4
ov01_021E66E4: ; 0x021E66E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x14
	add r6, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	str r7, [r4]
	str r5, [r4, #4]
	mov r0, #0x14
	add r7, r6, #0
	mul r7, r0
	str r6, [r4, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl AllocFromHeap
	str r0, [r4, #0xc]
	ldr r1, [r4, #0xc]
	mov r0, #0
	add r2, r7, #0
	bl MIi_CpuClear32
	add r0, r6, #0
	bl sub_0201F82C
	add r1, r0, #0
	add r0, r5, #0
	bl AllocFromHeap
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl sub_0201F834
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E66E4

	thumb_func_start ov01_021E6734
ov01_021E6734: ; 0x021E6734
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _021E6754
	add r4, r6, #0
_021E6742:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov01_021E683C
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _021E6742
_021E6754:
	ldr r0, [r5, #0xc]
	bl FreeToHeap
	ldr r0, [r5, #0x10]
	bl FreeToHeap
	add r0, r5, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021E6734

	thumb_func_start ov01_021E6768
ov01_021E6768: ; 0x021E6768
	ldr r3, _021E6770 ; =sub_0201F880
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021E6770: .word sub_0201F880
	thumb_func_end ov01_021E6768

	thumb_func_start ov01_021E6774
ov01_021E6774: ; 0x021E6774
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0203DF8C
	cmp r0, #0
	beq _021E6796
	ldr r0, [r4, #0xc]
	ldr r3, [r0, #0x10]
	cmp r3, #0
	beq _021E6796
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r1, [r1]
	add r0, r4, #0
	blx r3
_021E6796:
	pop {r4, pc}
	thumb_func_end ov01_021E6774

	thumb_func_start ov01_021E6798
ov01_021E6798: ; 0x021E6798
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0203DF8C
	cmp r0, #0
	beq _021E67BA
	ldr r0, [r4, #0xc]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _021E67BA
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r1, [r1]
	add r0, r4, #0
	blx r3
_021E67BA:
	pop {r4, pc}
	thumb_func_end ov01_021E6798

	thumb_func_start ov01_021E67BC
ov01_021E67BC: ; 0x021E67BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r6, r1, #0
	mov r1, #0
	ldr r4, [r5, #0xc]
	cmp r2, #0
	ble _021E682C
_021E67CC:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021E6824
	ldr r0, _021E6834 ; =ov01_021E6774
	ldr r2, [r6]
	add r1, r4, #0
	bl sub_0200E320
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _021E6838 ; =ov01_021E6798
	ldr r3, [r6]
	add r2, r4, #0
	bl sub_0201F8C0
	str r0, [r4, #8]
	str r5, [r4]
	str r6, [r4, #0xc]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021E67FA
	bl GF_AssertFail
_021E67FA:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021E6804
	bl GF_AssertFail
_021E6804:
	ldrh r1, [r6, #4]
	cmp r1, #0
	beq _021E6812
	ldr r0, [r5, #4]
	bl AllocFromHeap
	str r0, [r4, #0x10]
_021E6812:
	ldr r3, [r6, #8]
	cmp r3, #0
	beq _021E6820
	ldr r1, [r5]
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	blx r3
_021E6820:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021E6824:
	add r1, r1, #1
	add r4, #0x14
	cmp r1, r2
	blt _021E67CC
_021E682C:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E6834: .word ov01_021E6774
_021E6838: .word ov01_021E6798
	thumb_func_end ov01_021E67BC

	thumb_func_start ov01_021E683C
ov01_021E683C: ; 0x021E683C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E687A
	ldr r1, [r4, #0xc]
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _021E6856
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r1, [r1]
	blx r3
_021E6856:
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021E6864
	ldr r0, [r4, #0x10]
	bl FreeToHeap
_021E6864:
	ldr r0, [r4, #4]
	bl sub_0200E390
	ldr r0, [r4, #8]
	bl sub_0200E390
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x14
	bl MIi_CpuClear32
_021E687A:
	pop {r4, pc}
	thumb_func_end ov01_021E683C

	thumb_func_start ov01_021E687C
ov01_021E687C: ; 0x021E687C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021E687C

	thumb_func_start ov01_021E6880
ov01_021E6880: ; 0x021E6880
	ldrh r2, [r0]
	mov r1, #1
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #2
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #4
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x18
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x20
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x80
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	ldr r1, _021E68F4 ; =0xFFFFFEFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021E68F8 ; =0xFFFFFDFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021E68FC ; =0xFFFFFBFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021E6900 ; =0xFFFFF7FF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021E6904 ; =0xFFFFEFFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021E6908 ; =0xFFFFDFFF
	and r2, r1
	strh r2, [r0]
	mov r2, #0xff
	strb r2, [r0, #4]
	asr r1, r1, #0xe
	strb r1, [r0, #5]
	bx lr
	nop
_021E68F4: .word 0xFFFFFEFF
_021E68F8: .word 0xFFFFFDFF
_021E68FC: .word 0xFFFFFBFF
_021E6900: .word 0xFFFFF7FF
_021E6904: .word 0xFFFFEFFF
_021E6908: .word 0xFFFFDFFF
	thumb_func_end ov01_021E6880

	thumb_func_start ov01_021E690C
ov01_021E690C: ; 0x021E690C
	push {r3, lr}
	bl ov01_021F6B10
	cmp r0, #1
	bne _021E691A
	mov r0, #1
	pop {r3, pc}
_021E691A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021E690C

	thumb_func_start ov01_021E6920
ov01_021E6920: ; 0x021E6920
	ldr r3, _021E6924 ; =ov01_021F6B64
	bx r3
	.balign 4, 0
_021E6924: .word ov01_021F6B64
	thumb_func_end ov01_021E6920

	thumb_func_start ov01_021E6928
ov01_021E6928: ; 0x021E6928
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov01_021E6880
	add r0, r4, #0
	bl sub_0205CA1C
	bl sub_0205CB38
	cmp r0, #0
	beq _021E694E
	mov r0, #2
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021E694E:
	ldr r0, [r4, #0x40]
	bl sub_0205C6D4
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x40]
	bl sub_0205C6CC
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #2
	strh r0, [r5, #6]
	add r0, r4, #0
	strh r6, [r5, #8]
	bl sub_0203C3CC
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #3
	beq _021E6982
	cmp r0, #0
	beq _021E6982
	b _021E6A88
_021E6982:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E6992
	mov r1, #2
	ldr r0, [sp]
	lsl r1, r1, #0xa
	tst r0, r1
	bne _021E699C
_021E6992:
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	cmp r0, #9
	bne _021E69BC
_021E699C:
	add r0, r4, #0
	bl ov01_021E690C
	cmp r0, #1
	bne _021E6A66
	ldrh r1, [r5]
	mov r0, #0x18
	bic r1, r0
	mov r0, #8
	orr r0, r1
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
	b _021E6A66
_021E69BC:
	cmp r0, #0xa
	bne _021E69E0
	add r0, r4, #0
	bl ov01_021E690C
	cmp r0, #1
	bne _021E6A66
	ldrh r1, [r5]
	mov r0, #0x18
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
	b _021E6A66
_021E69E0:
	cmp r0, #0xb
	bne _021E69F8
	ldrh r1, [r5]
	mov r0, #2
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
	b _021E6A66
_021E69F8:
	mov r2, #1
	ldr r1, [sp]
	lsl r2, r2, #0xa
	tst r1, r2
	bne _021E6A06
	cmp r0, #0
	beq _021E6A52
_021E6A06:
	add r0, r4, #0
	bl ov01_021F6B00
	cmp r0, #4
	bne _021E6A30
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_02018410
	mov r0, #2
	ldrh r1, [r5]
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r5]
	ldrh r1, [r5]
	mov r0, #4
	orr r0, r1
	strh r0, [r5]
	b _021E6A66
_021E6A30:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E6A66
	ldrh r1, [r5]
	mov r0, #4
	orr r0, r1
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0xd0
	ldrh r0, [r0]
	cmp r0, #1
	bne _021E6A66
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
	b _021E6A66
_021E6A52:
	ldr r0, [sp]
	mov r1, #1
	tst r0, r1
	beq _021E6A66
	ldrh r2, [r5]
	mov r0, #1
	bic r2, r0
	add r0, r2, #0
	orr r0, r1
	strh r0, [r5]
_021E6A66:
	mov r0, #0xf0
	tst r0, r6
	beq _021E6A7C
	ldrh r1, [r5]
	mov r0, #0x20
	orr r0, r1
	strh r0, [r5]
	ldrh r1, [r5]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r5]
_021E6A7C:
	ldrh r1, [r5]
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r5]
	b _021E6A90
_021E6A88:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd0
	strh r1, [r0]
_021E6A90:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _021E6AA4
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021E6AA4
	ldrh r1, [r5]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r5]
_021E6AA4:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _021E6AB2
	ldrh r1, [r5]
	mov r0, #2
	orr r0, r1
	strh r0, [r5]
_021E6AB2:
	cmp r7, #0
	bne _021E6ABC
	mov r0, #0x40
	tst r0, r6
	bne _021E6ADA
_021E6ABC:
	cmp r7, #1
	bne _021E6AC6
	mov r0, #0x80
	tst r0, r6
	bne _021E6ADA
_021E6AC6:
	cmp r7, #2
	bne _021E6AD0
	mov r0, #0x20
	tst r0, r6
	bne _021E6ADA
_021E6AD0:
	cmp r7, #3
	bne _021E6ADE
	mov r0, #0x10
	tst r0, r6
	beq _021E6ADE
_021E6ADA:
	strb r7, [r5, #5]
	b _021E6AE4
_021E6ADE:
	mov r0, #0
	mvn r0, r0
	strb r0, [r5, #5]
_021E6AE4:
	ldr r0, [r4, #0x40]
	ldr r1, [sp]
	add r2, r6, #0
	bl sub_0205DD94
	strb r0, [r5, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E6928

	thumb_func_start ov01_021E6AF4
ov01_021E6AF4: ; 0x021E6AF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1f
	bne _021E6B12
	add r0, r4, #0
	mov r1, #1
	bl sub_02040750
	cmp r0, #1
	bne _021E6B12
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6B12:
	ldrh r0, [r5]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1f
	bne _021E6B66
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	bl HasEnoughAlivePokemonForDoubleBattle
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	bl sub_02066644
	cmp r0, #1
	bne _021E6B36
	mov r6, #1
_021E6B36:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020640C8
	cmp r0, #1
	bne _021E6B66
	ldr r0, [r4, #0x40]
	bl sub_0205CF44
	ldr r0, [r4, #0x3c]
	bl sub_0205F574
	add r0, r4, #0
	bl sub_02069F88
	cmp r0, #0
	beq _021E6B62
	add r0, r4, #0
	bl sub_02069D68
	bl sub_0205F708
_021E6B62:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6B66:
	ldrh r0, [r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _021E6B86
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	bl sub_02066674
	add r0, r4, #0
	bl ov01_021E7628
	cmp r0, #1
	bne _021E6B86
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6B86:
	add r0, r4, #0
	bl ov01_021E7A60
	cmp r0, #0
	beq _021E6B94
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6B94:
	ldrh r1, [r5, #6]
	ldrh r2, [r5, #8]
	ldr r0, [r4, #0x40]
	mov r6, #0
	bl sub_0205DD94
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	mov r1, #2
	bl sub_020668C0
	cmp r0, #0
	beq _021E6BB6
	mov r0, #1
	orr r6, r0
_021E6BB6:
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	mov r1, #0x7f
	bl GetIdxOfFirstPartyMonWithMove
	cmp r0, #0xff
	beq _021E6BCA
	mov r0, #2
	orr r6, r0
_021E6BCA:
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov01_021F1D94
	cmp r0, #1
	bne _021E6BDE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6BDE:
	ldrh r0, [r5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E6C02
	add r0, r4, #0
	bl ov01_021E7114
	cmp r0, #0
	beq _021E6BF4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6BF4:
	add r0, r4, #0
	bl ov01_021E6DC4
	cmp r0, #1
	bne _021E6C02
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6C02:
	ldrh r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021E6C24
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	ldrb r1, [r5, #4]
	cmp r1, r0
	bne _021E6C24
	add r0, r4, #0
	bl ov01_021E6DC4
	cmp r0, #1
	bne _021E6C24
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6C24:
	ldrh r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E6D0C
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0203DC64
	cmp r0, #1
	bne _021E6C86
	ldr r0, [r4, #0x40]
	bl sub_0205CF60
	cmp r0, #1
	bne _021E6C50
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0205CFBC
_021E6C50:
	ldr r0, [sp]
	bl sub_0205F26C
	cmp r0, #9
	beq _021E6C72
	ldr r5, [sp]
	add r0, r5, #0
	bl sub_0205F27C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r5, #0
	bl sub_0203FE74
	b _021E6C7C
_021E6C72:
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0203FE74
_021E6C7C:
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6C86:
	add r0, r4, #0
	bl sub_0203B6D8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203B6E0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203DC90
	add r1, r0, #0
	ldr r0, _021E6DBC ; =0x0000FFFF
	cmp r1, r0
	beq _021E6CBC
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203FE74
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6CBC:
	add r0, r4, #0
	bl ov01_021E7B54
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021E7418
	add r1, r0, #0
	ldr r0, _021E6DBC ; =0x0000FFFF
	cmp r1, r0
	beq _021E6CE8
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203FE74
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6CE8:
	add r0, r4, #0
	bl ov01_021E7F38
	add r1, r0, #0
	ldr r0, _021E6DBC ; =0x0000FFFF
	cmp r1, r0
	beq _021E6D0C
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203FE74
	mov r0, #0
	add r4, #0xd0
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6D0C:
	ldrh r0, [r5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021E6D2A
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021E7198
	cmp r0, #1
	bne _021E6D2A
	add r0, r4, #0
	bl ov01_021E7C70
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6D2A:
	ldrh r0, [r5]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1e
	beq _021E6D4C
	add r0, r4, #0
	bl sub_02065690
	add r6, r0, #0
	beq _021E6D4C
	ldrh r1, [r5]
	add r0, r4, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1e
	bl ov01_021E6920
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6D4C:
	ldrh r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021E6D6E
	add r0, r4, #0
	bl sub_0203BC10
	cmp r0, #1
	bne _021E6D6E
	ldr r0, _021E6DC0 ; =0x000005FC
	bl PlaySE
	add r0, r4, #0
	bl sub_0203BC28
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021E6D6E:
	add r0, r4, #0
	bl ov02_02252334
	cmp r0, #0
	beq _021E6D88
	mov r1, #0x81
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6D88:
	ldrh r0, [r5]
	lsl r1, r0, #0x16
	lsr r1, r1, #0x1f
	beq _021E6D9E
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov01_021F6A9C
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021E6D9E:
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	beq _021E6DB6
	add r0, r4, #0
	bl sub_02092DEC
	bl ov02_02251F20
	cmp r0, #0
	beq _021E6DB6
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021E6DB6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6DBC: .word 0x0000FFFF
_021E6DC0: .word 0x000005FC
	thumb_func_end ov01_021E6AF4

	thumb_func_start ov01_021E6DC4
ov01_021E6DC4: ; 0x021E6DC4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203B6D8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203B6E0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203DDA4
	add r1, r0, #0
	ldr r0, _021E6DFC ; =0x0000FFFF
	cmp r1, r0
	beq _021E6DF6
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6DF6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6DFC: .word 0x0000FFFF
	thumb_func_end ov01_021E6DC4

	thumb_func_start ov01_021E6E00
ov01_021E6E00: ; 0x021E6E00
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	add r5, r1, #0
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021E6E32
	mov r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _021E6E32
	add r0, r5, #0
	bl ov01_021E7B38
	bl sub_0205B73C
	cmp r0, #0
	beq _021E6E32
	ldr r1, _021E6ED0 ; =0x0000238D
	add r0, r5, #0
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6E32:
	bl sub_02037958
	cmp r0, #0
	bne _021E6E4E
	bl sub_0203769C
	bl sub_02057F18
	cmp r0, #0
	bne _021E6E4E
	bl sub_02058740
	cmp r0, #0
	bne _021E6E52
_021E6E4E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6E52:
	ldrh r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E6EA2
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203DC64
	cmp r0, #1
	bne _021E6EA2
	ldr r0, [sp]
	bl sub_0205F264
	cmp r0, #1
	beq _021E6EA2
	ldr r0, [r5, #0x40]
	bl sub_0205CF60
	cmp r0, #1
	bne _021E6E88
	ldr r0, [r5, #0x40]
	bl sub_0205C654
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205CFBC
_021E6E88:
	ldr r4, [sp]
	add r0, r4, #0
	bl sub_0205F27C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6EA2:
	ldrh r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021E6EB4
	add r0, r5, #0
	bl sub_02059D44
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6EB4:
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021E6ECA
	ldr r0, _021E6ED4 ; =0x000005FC
	bl PlaySE
	add r0, r5, #0
	bl sub_0203BD20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6ECA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E6ED0: .word 0x0000238D
_021E6ED4: .word 0x000005FC
	thumb_func_end ov01_021E6E00

	thumb_func_start ov01_021E6ED8
ov01_021E6ED8: ; 0x021E6ED8
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_021E6EDE:
	add r0, r4, #0
	bl sub_02034818
	cmp r0, #0
	beq _021E6EEA
	add r5, r5, #1
_021E6EEA:
	add r4, r4, #1
	cmp r4, #5
	blt _021E6EDE
	cmp r5, #1
	blt _021E6EF8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6EF8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E6ED8

	thumb_func_start ov01_021E6EFC
ov01_021E6EFC: ; 0x021E6EFC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02033250
	mov r1, #0xfe
	tst r0, r1
	beq _021E6F2E
	bl ov01_021E6ED8
	cmp r0, #0
	beq _021E6F2A
	bl sub_02037454
	cmp r0, #1
	ble _021E6F2A
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6F2A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6F2E:
	ldrh r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E6F78
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203DC64
	cmp r0, #1
	bne _021E6F78
	ldr r0, [r5, #0x40]
	bl sub_0205CF60
	cmp r0, #1
	bne _021E6F5A
	ldr r0, [r5, #0x40]
	bl sub_0205C654
	add r1, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205CFBC
_021E6F5A:
	bl sub_020380B0
	ldr r4, [sp]
	add r0, r4, #0
	bl sub_0205F27C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6F78:
	ldrh r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _021E6F98
	add r0, r5, #0
	bl ov01_021E7B38
	bl sub_0205BA18
	cmp r0, #0
	beq _021E6F98
	add r0, r5, #0
	bl sub_02053F14
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6F98:
	ldrh r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021E6FCC
	bl sub_02037454
	cmp r0, #1
	bgt _021E6FCC
	add r0, r5, #0
	bl ov01_021E690C
	cmp r0, #0
	beq _021E6FCC
	ldr r0, _021E6FD0 ; =0x000005FC
	bl PlaySE
	add r0, r5, #0
	bl sub_0203BCDC
	mov r0, #4
	bl sub_0205A904
	bl sub_020380CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6FCC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6FD0: .word 0x000005FC
	thumb_func_end ov01_021E6EFC

	thumb_func_start ov01_021E6FD4
ov01_021E6FD4: ; 0x021E6FD4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	lsl r0, r0, #0x12
	lsr r0, r0, #0x1f
	bne _021E6FF6
	add r0, r4, #0
	mov r1, #1
	bl sub_02040750
	cmp r0, #1
	bne _021E6FF6
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E6FF6:
	ldrh r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E70AE
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0203DC64
	cmp r0, #1
	bne _021E7054
	ldr r0, [r4, #0x40]
	bl sub_0205CF60
	cmp r0, #1
	bne _021E7022
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0205CFBC
_021E7022:
	ldr r0, [sp]
	bl sub_0205F26C
	cmp r0, #9
	beq _021E7044
	ldr r5, [sp]
	add r0, r5, #0
	bl sub_0205F27C
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r5, #0
	bl sub_0203FE74
	b _021E704E
_021E7044:
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0203FE74
_021E704E:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E7054:
	add r0, r4, #0
	bl sub_0203B6D8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203B6E0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203DC90
	add r1, r0, #0
	ldr r0, _021E710C ; =0x0000FFFF
	cmp r1, r0
	beq _021E7086
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203FE74
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E7086:
	add r0, r4, #0
	bl ov01_021E7B54
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021E7418
	add r1, r0, #0
	ldr r0, _021E710C ; =0x0000FFFF
	cmp r1, r0
	beq _021E70AE
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0203FE74
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E70AE:
	ldrh r0, [r5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021E70C8
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021E7198
	cmp r0, #1
	bne _021E70C8
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E70C8:
	ldrh r0, [r5]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1e
	beq _021E70EC
	add r0, r4, #0
	bl sub_02065690
	add r6, r0, #0
	beq _021E70EC
	ldrh r1, [r5]
	add r0, r4, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1e
	bl ov01_021E6920
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021E70EC:
	ldrh r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021E7106
	ldr r0, _021E7110 ; =0x000005FC
	bl PlaySE
	add r0, r4, #0
	bl sub_0203BC28
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E7106:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E710C: .word 0x0000FFFF
_021E7110: .word 0x000005FC
	thumb_func_end ov01_021E6FD4

	thumb_func_start ov01_021E7114
ov01_021E7114: ; 0x021E7114
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x7e
	ldrh r1, [r0]
	ldr r0, _021E7194 ; =0x0000FFFF
	cmp r1, r0
	bhs _021E7132
	add r0, r4, #0
	add r0, #0x7e
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x7e
	strh r1, [r0]
_021E7132:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov01_021E7AB8
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	bl sub_020668A0
	cmp r0, #1
	bne _021E7172
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02055874
	cmp r0, #1
	bne _021E716C
	add r0, r4, #0
	bl sub_0205589C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020511F8
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021E716C:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021E7172:
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	bl MapHeader_HasWildEncounters
	cmp r0, #0
	beq _021E718E
	add r0, r4, #0
	bl ov02_02246C8C
	cmp r0, #1
	bne _021E718E
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021E718E:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E7194: .word 0x0000FFFF
	thumb_func_end ov01_021E7114

	thumb_func_start ov01_021E7198
ov01_021E7198: ; 0x021E7198
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r1, #0
	mov r1, #5
	ldrsb r2, [r5, r1]
	sub r1, r1, #6
	add r6, r0, #0
	cmp r2, r1
	bne _021E71B0
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E71B0:
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov01_021E7AB8
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_02054918
	add r4, r0, #0
	bl sub_0205BAA0
	cmp r0, #0
	beq _021E7208
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _021E7202
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r3, sp, #0x14
	bl ov01_021E7B90
	cmp r0, #0
	beq _021E7202
	mov r3, #0
	str r3, [sp]
	mov r0, #5
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02055C9C
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E7202:
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E7208:
	add r0, r4, #0
	bl sub_0205BAAC
	cmp r0, #0
	beq _021E724E
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _021E7248
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r3, sp, #0x14
	bl ov01_021E7B90
	cmp r0, #0
	beq _021E7248
	mov r3, #0
	str r3, [sp]
	mov r0, #5
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02055C9C
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E7248:
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E724E:
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov01_021E7AD4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020548C0
	cmp r0, #0
	bne _021E726C
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E726C:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r3, sp, #0x14
	bl ov01_021E7B90
	cmp r0, #0
	beq _021E72B6
	mov r0, #5
	ldrsb r1, [r5, r0]
	sub r0, r0, #6
	cmp r1, r0
	beq _021E72B6
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_02054918
	bl sub_0205B70C
	cmp r0, #0
	beq _021E72B6
	mov r3, #0
	str r3, [sp]
	mov r0, #5
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02055C9C
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E72B6:
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov01_021E7AB8
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_02054918
	add r4, r0, #0
	bl sub_0205B718
	cmp r0, #0
	bne _021E72DE
	add r0, r4, #0
	bl sub_0205B748
	cmp r0, #0
	beq _021E72EC
_021E72DE:
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _021E7360
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E72EC:
	add r0, r4, #0
	bl sub_0205B724
	cmp r0, #0
	bne _021E7300
	add r0, r4, #0
	bl sub_0205B754
	cmp r0, #0
	beq _021E730E
_021E7300:
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _021E7360
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E730E:
	add r0, r4, #0
	bl sub_0205B73C
	cmp r0, #0
	bne _021E7322
	add r0, r4, #0
	bl sub_0205B76C
	cmp r0, #0
	beq _021E7330
_021E7322:
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _021E7360
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E7330:
	add r0, r4, #0
	bl sub_0205B810
	cmp r0, #0
	beq _021E7348
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _021E7360
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E7348:
	add r0, r4, #0
	bl sub_0205B81C
	cmp r0, #0
	beq _021E7360
	mov r0, #5
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _021E7360
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E7360:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r3, sp, #0x14
	bl ov01_021E7B90
	cmp r0, #0
	bne _021E7376
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E7376:
	add r0, r4, #0
	bl sub_0205B70C
	cmp r0, #0
	beq _021E7384
	mov r1, #1
	b _021E73FC
_021E7384:
	add r0, r4, #0
	bl sub_0205B810
	cmp r0, #0
	beq _021E7392
	mov r1, #3
	b _021E73FC
_021E7392:
	add r0, r4, #0
	bl sub_0205B81C
	cmp r0, #0
	beq _021E73A0
	mov r1, #3
	b _021E73FC
_021E73A0:
	add r0, r4, #0
	bl sub_0205B718
	cmp r0, #0
	bne _021E73DC
	add r0, r4, #0
	bl sub_0205B748
	cmp r0, #0
	bne _021E73DC
	add r0, r4, #0
	bl sub_0205B724
	cmp r0, #0
	bne _021E73DC
	add r0, r4, #0
	bl sub_0205B754
	cmp r0, #0
	bne _021E73DC
	add r0, r4, #0
	bl sub_0205B73C
	cmp r0, #0
	bne _021E73DC
	add r0, r4, #0
	bl sub_0205B76C
	cmp r0, #0
	beq _021E73F6
_021E73DC:
	mov r3, #0
	str r3, [sp]
	mov r0, #5
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02055CD8
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E73F6:
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E73FC:
	mov r3, #0
	str r3, [sp]
	mov r0, #5
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02055C9C
	mov r0, #1
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021E7198

	thumb_func_start ov01_021E7418
ov01_021E7418: ; 0x021E7418
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	bl sub_0205C654
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C67C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C688
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02054918
	add r7, r0, #0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B78C
	cmp r0, #0
	beq _021E7450
	ldr r0, _021E75DC ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_021E7450:
	add r0, r4, #0
	bl sub_0205B7E0
	cmp r0, #0
	beq _021E7462
	cmp r6, #0
	bne _021E7462
	ldr r0, _021E75E0 ; =0x000007DA
	pop {r3, r4, r5, r6, r7, pc}
_021E7462:
	add r0, r4, #0
	bl sub_0205B84C
	cmp r0, #0
	beq _021E7470
	ldr r0, _021E75E4 ; =0x000009C4
	pop {r3, r4, r5, r6, r7, pc}
_021E7470:
	add r0, r4, #0
	bl sub_0205B858
	cmp r0, #0
	beq _021E747E
	ldr r0, _021E75E8 ; =0x000009C5
	pop {r3, r4, r5, r6, r7, pc}
_021E747E:
	add r0, r4, #0
	bl sub_0205B864
	cmp r0, #0
	beq _021E748C
	ldr r0, _021E75EC ; =0x000009C6
	pop {r3, r4, r5, r6, r7, pc}
_021E748C:
	add r0, r4, #0
	bl sub_0205B870
	cmp r0, #0
	beq _021E749A
	ldr r0, _021E75F0 ; =0x000009C7
	pop {r3, r4, r5, r6, r7, pc}
_021E749A:
	add r0, r4, #0
	bl sub_0205B87C
	cmp r0, #0
	beq _021E74A8
	ldr r0, _021E75F4 ; =0x000009C8
	pop {r3, r4, r5, r6, r7, pc}
_021E74A8:
	add r0, r4, #0
	bl sub_0205B888
	cmp r0, #0
	beq _021E74B6
	ldr r0, _021E75F8 ; =0x000009C9
	pop {r3, r4, r5, r6, r7, pc}
_021E74B6:
	add r0, r4, #0
	bl sub_0205B894
	cmp r0, #0
	beq _021E74C4
	ldr r0, _021E75FC ; =0x000009CA
	pop {r3, r4, r5, r6, r7, pc}
_021E74C4:
	add r0, r4, #0
	bl sub_0205B8A0
	cmp r0, #0
	beq _021E74D2
	ldr r0, _021E7600 ; =0x000009CB
	pop {r3, r4, r5, r6, r7, pc}
_021E74D2:
	add r0, r4, #0
	bl sub_0205B7EC
	cmp r0, #0
	beq _021E74E0
	ldr r0, _021E7604 ; =0x000009CC
	pop {r3, r4, r5, r6, r7, pc}
_021E74E0:
	add r0, r4, #0
	bl sub_0205B9AC
	cmp r0, #0
	beq _021E74F2
	cmp r6, #0
	bne _021E74F2
	ldr r0, _021E7608 ; =0x00002774
	pop {r3, r4, r5, r6, r7, pc}
_021E74F2:
	add r0, r4, #0
	bl sub_0205BAF8
	cmp r0, #0
	beq _021E7500
	ldr r0, _021E760C ; =0x0000271E
	pop {r3, r4, r5, r6, r7, pc}
_021E7500:
	add r0, r4, #0
	add r1, r6, #0
	bl ov01_021F25E8
	cmp r0, #0
	beq _021E7510
	ldr r0, _021E7610 ; =0x00002713
	pop {r3, r4, r5, r6, r7, pc}
_021E7510:
	ldr r0, [r5, #0x40]
	bl sub_0205C700
	cmp r0, #2
	beq _021E7570
	ldr r0, [r5, #0xc]
	bl Sav2_PlayerData_GetProfileAddr
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	add r1, r7, #0
	add r2, r4, #0
	bl ov01_021F20C0
	cmp r0, #0
	beq _021E7550
	add r0, r6, #0
	mov r1, #3
	bl PlayerProfile_TestBadgeFlag
	cmp r0, #0
	beq _021E7550
	ldr r0, [r5, #0xc]
	bl SavArray_PlayerParty_get
	mov r1, #0x39
	bl GetIdxOfFirstPartyMonWithMove
	cmp r0, #0xff
	beq _021E7550
	ldr r0, _021E7614 ; =0x00002714
	pop {r3, r4, r5, r6, r7, pc}
_021E7550:
	add r0, r5, #0
	bl ov02_0224E35C
	cmp r0, #0
	beq _021E75AC
	add r0, r5, #0
	bl ov01_021E7B70
	add r1, r0, #0
	add r0, r4, #0
	bl ov02_0224E4CC
	cmp r0, #0
	beq _021E75AC
	ldr r0, _021E7618 ; =0x00002260
	pop {r3, r4, r5, r6, r7, pc}
_021E7570:
	add r0, r4, #0
	bl sub_0205B8DC
	cmp r0, #0
	beq _021E757E
	ldr r0, _021E761C ; =0x00002715
	pop {r3, r4, r5, r6, r7, pc}
_021E757E:
	add r0, r4, #0
	bl sub_0205B8E8
	cmp r0, #0
	beq _021E758C
	ldr r0, _021E7620 ; =0x00002720
	pop {r3, r4, r5, r6, r7, pc}
_021E758C:
	add r0, r5, #0
	bl ov02_0224E35C
	cmp r0, #0
	beq _021E75AC
	add r0, r5, #0
	bl ov01_021E7B70
	add r1, r0, #0
	add r0, r4, #0
	bl ov02_0224E4DC
	cmp r0, #0
	beq _021E75AC
	ldr r0, _021E7618 ; =0x00002260
	pop {r3, r4, r5, r6, r7, pc}
_021E75AC:
	ldr r0, [r5, #0xc]
	bl SavArray_Flags_get
	bl sub_02066860
	cmp r0, #0
	beq _021E75D6
	ldr r0, [r5, #0xc]
	bl sub_0202F57C
	bl sub_0202F620
	cmp r0, #0
	bne _021E75D6
	add r0, r4, #0
	bl sub_0205BAEC
	cmp r0, #0
	beq _021E75D6
	ldr r0, _021E7624 ; =0x00002261
	pop {r3, r4, r5, r6, r7, pc}
_021E75D6:
	ldr r0, _021E75DC ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E75DC: .word 0x0000FFFF
_021E75E0: .word 0x000007DA
_021E75E4: .word 0x000009C4
_021E75E8: .word 0x000009C5
_021E75EC: .word 0x000009C6
_021E75F0: .word 0x000009C7
_021E75F4: .word 0x000009C8
_021E75F8: .word 0x000009C9
_021E75FC: .word 0x000009CA
_021E7600: .word 0x000009CB
_021E7604: .word 0x000009CC
_021E7608: .word 0x00002774
_021E760C: .word 0x0000271E
_021E7610: .word 0x00002713
_021E7614: .word 0x00002714
_021E7618: .word 0x00002260
_021E761C: .word 0x00002715
_021E7620: .word 0x00002720
_021E7624: .word 0x00002261
	thumb_func_end ov01_021E7418

	thumb_func_start ov01_021E7628
ov01_021E7628: ; 0x021E7628
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #6
	add r5, r0, #0
	bl sub_02068F68
	cmp r0, #0
	beq _021E7644
	add r0, r5, #0
	bl ov04_02255090
	cmp r0, #0
	beq _021E7644
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7644:
	ldr r0, [r5, #0x40]
	bl sub_0205C654
	add r2, r0, #0
	ldr r1, [r5, #0x40]
	add r0, r5, #0
	bl ov01_021F3114
	cmp r0, #1
	ldr r0, [r5, #0x40]
	bne _021E7672
	bl sub_0205C6DC
	bl sub_0205F504
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov04_02256BE4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7672:
	bl sub_0205C67C
	add r4, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C688
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021E7DFC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02054918
	add r7, r0, #0
	add r0, r5, #0
	bl ov01_021E774C
	cmp r0, #1
	bne _021E76A4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E76A4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov01_021E7784
	cmp r0, #1
	bne _021E76BE
	add r0, r5, #0
	bl ov01_021E7C70
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E76BE:
	ldr r0, [r5, #0x40]
	bl sub_0205CA38
	cmp r0, #0
	beq _021E76CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E76CC:
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl ov01_021F6830
	add r0, r5, #0
	bl ov01_021E7A98
	add r0, r5, #0
	bl ov01_021E794C
	cmp r0, #1
	bne _021E76EA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E76EA:
	add r0, r5, #0
	bl ov01_021E79CC
	cmp r0, #1
	bne _021E76F8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E76F8:
	add r0, r5, #0
	bl ov01_021E788C
	cmp r0, #1
	bne _021E7706
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7706:
	add r0, r5, #0
	bl ov01_021E78D8
	cmp r0, #1
	bne _021E7714
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7714:
	add r0, r5, #0
	bl ov01_021E7A08
	cmp r0, #1
	bne _021E7722
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7722:
	add r0, r5, #0
	bl ov01_021E78E4
	cmp r0, #0
	beq _021E7732
	add r0, r5, #0
	bl ov01_021E790C
_021E7732:
	add r0, r5, #0
	bl sub_02069FB0
	cmp r0, #0
	beq _021E7746
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0206A2C0
_021E7746:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E7628

	thumb_func_start ov01_021E774C
ov01_021E774C: ; 0x021E774C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203B744
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203B73C
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203DE04
	add r1, r0, #0
	ldr r0, _021E7780 ; =0x0000FFFF
	cmp r1, r0
	beq _021E777A
	add r0, r4, #0
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E777A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E7780: .word 0x0000FFFF
	thumb_func_end ov01_021E774C

	thumb_func_start ov01_021E7784
ov01_021E7784: ; 0x021E7784
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r3, #0
	add r3, sp, #0xc
	add r4, r0, #0
	bl ov01_021E7B90
	cmp r0, #0
	bne _021E779C
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E779C:
	add r0, r5, #0
	bl sub_0205B7F8
	cmp r0, #1
	bne _021E77E0
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	cmp r0, #2
	bne _021E77B4
	mov r0, #3
	b _021E77C6
_021E77B4:
	cmp r0, #3
	bne _021E77BC
	mov r0, #2
	b _021E77C6
_021E77BC:
	bl GF_AssertFail
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E77C6:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02055C9C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E77E0:
	add r0, r5, #0
	bl sub_0205B804
	cmp r0, #1
	bne _021E781C
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	cmp r0, #2
	beq _021E7802
	cmp r0, #3
	beq _021E7802
	bl GF_AssertFail
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7802:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02055C9C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E781C:
	add r0, r5, #0
	bl sub_0205B730
	cmp r0, #0
	bne _021E7830
	add r0, r5, #0
	bl sub_0205B760
	cmp r0, #0
	beq _021E7846
_021E7830:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02055CD8
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7846:
	add r0, r5, #0
	bl sub_0205BA18
	cmp r0, #0
	beq _021E7860
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02053E08
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7860:
	add r0, r5, #0
	bl sub_0205BAB8
	cmp r0, #0
	beq _021E7884
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl sub_02055C9C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7884:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021E7784

	thumb_func_start ov01_021E788C
ov01_021E788C: ; 0x021E788C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl Sav2_DayCare_get
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0206CD1C
	cmp r0, #1
	bne _021E78CE
	ldr r0, [r4, #0xc]
	bl Sav2_GameStats_get
	add r5, r0, #0
	mov r1, #0xc
	bl GameStats_Inc
	add r0, r5, #0
	mov r1, #0xf
	bl GameStats_AddSpecial
	ldr r1, _021E78D4 ; =0x000007E5
	add r0, r4, #0
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E78CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E78D4: .word 0x000007E5
	thumb_func_end ov01_021E788C

	thumb_func_start ov01_021E78D8
ov01_021E78D8: ; 0x021E78D8
	ldr r3, _021E78E0 ; =ov02_0224BAE4
	add r1, r0, #0
	ldr r0, [r1, #0xc]
	bx r3
	.balign 4, 0
_021E78E0: .word ov02_0224BAE4
	thumb_func_end ov01_021E78D8

	thumb_func_start ov01_021E78E4
ov01_021E78E4: ; 0x021E78E4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	mov r5, #0
	bl SavArray_Flags_get
	add r4, r0, #0
	bl sub_02066DB8
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0x80
	blo _021E7902
	add r1, r5, #0
	mov r5, #1
_021E7902:
	add r0, r4, #0
	bl sub_02066DC8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E78E4

	thumb_func_start ov01_021E790C
ov01_021E790C: ; 0x021E790C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_PlayerParty_get
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapSec
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl GetPartyCount
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _021E7948
_021E7932:
	add r0, r6, #0
	add r1, r4, #0
	bl GetPartyMonByIndex
	mov r1, #5
	add r2, r5, #0
	bl MonApplyFriendshipMod
	add r4, r4, #1
	cmp r4, r7
	blt _021E7932
_021E7948:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E790C

	thumb_func_start ov01_021E794C
ov01_021E794C: ; 0x021E794C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl SavArray_PlayerParty_get
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203B9C4
	bl sub_0203B9C0
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #3
	and r1, r2
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _021E797A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E797A:
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapSec
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ApplyPoisonStep
	cmp r0, #0
	beq _021E799C
	cmp r0, #1
	beq _021E79A0
	cmp r0, #2
	beq _021E79AC
	b _021E79C2
_021E799C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E79A0:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x20]
	bl ov01_021FB630
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E79AC:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x20]
	bl ov01_021FB630
	ldr r1, _021E79C8 ; =0x000007D3
	add r0, r5, #0
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E79C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E79C8: .word 0x000007D3
	thumb_func_end ov01_021E794C

	thumb_func_start ov01_021E79CC
ov01_021E79CC: ; 0x021E79CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	bl sub_02066860
	cmp r0, #0
	bne _021E79E2
	mov r0, #0
	pop {r4, pc}
_021E79E2:
	ldr r0, [r4, #0xc]
	bl sub_0203B9C4
	bl sub_0203B9B8
	ldrh r0, [r0]
	cmp r0, #0
	bne _021E7A00
	ldr r1, _021E7A04 ; =0x00002263
	add r0, r4, #0
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r4, pc}
_021E7A00:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E7A04: .word 0x00002263
	thumb_func_end ov01_021E79CC

	thumb_func_start ov01_021E7A08
ov01_021E7A08: ; 0x021E7A08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0202ED88
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	ldr r1, _021E7A5C ; =0x00000984
	bl CheckFlagInArray
	cmp r0, #0
	bne _021E7A56
	add r0, r5, #0
	mov r1, #2
	bl sub_0202F08C
	cmp r0, #0
	bne _021E7A56
	ldr r0, [r4, #0xc]
	bl Sav2_GameStats_get
	mov r1, #1
	bl GameStats_GetCapped
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	blo _021E7A56
	add r0, r4, #0
	bl sub_02092DEC
	mov r1, #2
	mov r2, #1
	bl sub_02092E14
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7A56:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E7A5C: .word 0x00000984
	thumb_func_end ov01_021E7A08

	thumb_func_start ov01_021E7A60
ov01_021E7A60: ; 0x021E7A60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0206DB28
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	bl sub_02066870
	cmp r0, #0
	bne _021E7A7C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7A7C:
	ldr r0, [r5, #0x1c]
	cmp r0, #0x14
	blo _021E7A90
	ldr r1, _021E7A94 ; =0x000028A0
	add r0, r4, #0
	mov r2, #0
	bl sub_0203FE74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7A90:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7A94: .word 0x000028A0
	thumb_func_end ov01_021E7A60

	thumb_func_start ov01_021E7A98
ov01_021E7A98: ; 0x021E7A98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl Sav2_GameStats_get
	mov r1, #0
	bl GameStats_GetCapped
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02031B14
	add r1, r4, #0
	bl sub_02032058
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E7A98

	thumb_func_start ov01_021E7AB8
ov01_021E7AB8: ; 0x021E7AB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205C67C
	str r0, [r4]
	ldr r0, [r5, #0x40]
	bl sub_0205C688
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E7AB8

	thumb_func_start ov01_021E7AD4
ov01_021E7AD4: ; 0x021E7AD4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205C654
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov01_021E7AF0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021E7AD4

	thumb_func_start ov01_021E7AF0
ov01_021E7AF0: ; 0x021E7AF0
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r3, #0
	add r6, r1, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov01_021E7AB8
	cmp r6, #3
	bhi _021E7B36
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7B10: ; jump table
	.short _021E7B18 - _021E7B10 - 2 ; case 0
	.short _021E7B20 - _021E7B10 - 2 ; case 1
	.short _021E7B28 - _021E7B10 - 2 ; case 2
	.short _021E7B30 - _021E7B10 - 2 ; case 3
_021E7B18:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021E7B20:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021E7B28:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021E7B30:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E7B36:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021E7AF0

	thumb_func_start ov01_021E7B38
ov01_021E7B38: ; 0x021E7B38
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov01_021E7AB8
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02054918
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021E7B38

	thumb_func_start ov01_021E7B54
ov01_021E7B54: ; 0x021E7B54
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov01_021E7AD4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02054918
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021E7B54

	thumb_func_start ov01_021E7B70
ov01_021E7B70: ; 0x021E7B70
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov01_021E7AD4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_020548C0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021E7B70

	thumb_func_start ov01_021E7B90
ov01_021E7B90: ; 0x021E7B90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	bl sub_0203B700
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021E7BAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7BAC:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203B6E8
	cmp r0, #0
	bne _021E7BBC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7BBC:
	ldrh r3, [r0, #6]
	mov r1, #1
	lsl r1, r1, #8
	cmp r3, r1
	bne _021E7BEC
	ldrh r1, [r0, #4]
	ldr r0, _021E7C24 ; =0x00000FFF
	cmp r1, r0
	beq _021E7BD2
	bl GF_AssertFail
_021E7BD2:
	ldr r0, [r4, #0xc]
	bl sub_0203B9C4
	bl sub_0203B968
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
	b _021E7BFE
_021E7BEC:
	ldrh r2, [r0, #2]
	ldrh r1, [r0]
	ldrh r0, [r0, #4]
	str r0, [r5]
	str r3, [r5, #4]
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #0x10]
_021E7BFE:
	ldr r0, [r4, #0xc]
	bl sub_0203B9C4
	bl sub_0203B95C
	add r5, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	ldr r1, [r4, #0x20]
	ldr r1, [r1]
	str r1, [r5]
	str r6, [r5, #4]
	ldr r1, [sp]
	str r7, [r5, #8]
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7C24: .word 0x00000FFF
	thumb_func_end ov01_021E7B90

	thumb_func_start ov01_021E7C28
ov01_021E7C28: ; 0x021E7C28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bl sub_0203B9C4
	bl sub_0203B964
	add r6, r0, #0
	ldr r3, [r5, #0x20]
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	cmp r4, #0
	str r0, [r2]
	str r4, [r6, #0x10]
	ldr r0, [sp]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	bne _021E7C60
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
_021E7C60:
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	str r0, [r6]
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E7C28

	thumb_func_start ov01_021E7C70
ov01_021E7C70: ; 0x021E7C70
	push {r3, r4, lr}
	sub sp, #0x1c
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov01_021E7AB8
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov01_021E7B90
	cmp r0, #0
	beq _021E7CBA
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	bl MapHeader_MapIsOnMainMatrix
	cmp r0, #1
	bne _021E7CFC
	ldr r0, [sp, #8]
	bl MapHeader_MapIsOnMainMatrix
	cmp r0, #0
	bne _021E7CFC
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	add r3, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl ov01_021E7C28
	add sp, #0x1c
	pop {r3, r4, pc}
_021E7CBA:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov01_021E7AD4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov01_021E7B90
	cmp r0, #0
	beq _021E7CFC
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	bl MapHeader_MapIsOnMainMatrix
	cmp r0, #1
	bne _021E7CFC
	ldr r0, [sp, #8]
	bl MapHeader_MapIsOnMainMatrix
	cmp r0, #0
	bne _021E7CFC
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	add r3, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl ov01_021E7C28
_021E7CFC:
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov01_021E7C70

	thumb_func_start ov01_021E7D00
ov01_021E7D00: ; 0x021E7D00
	push {r3, r4, r5, r6}
	add r5, r0, #0
	lsr r4, r1, #0x1f
	lsl r0, r1, #0x1b
	sub r0, r0, r4
	mov r6, #0x1b
	ror r0, r6
	add r1, r4, r0
	lsr r4, r2, #0x1f
	lsl r0, r2, #0x1b
	sub r0, r0, r4
	ror r0, r6
	add r2, r4, r0
	ldrh r4, [r5, #2]
	mov r3, #0
	mvn r3, r3
	lsr r4, r4, #3
	mov r0, #0
	cmp r4, #0
	ble _021E7D50
	add r4, r5, #0
_021E7D2A:
	ldrb r6, [r4, #8]
	cmp r6, r1
	bgt _021E7D44
	ldrb r6, [r4, #0xa]
	cmp r1, r6
	bgt _021E7D44
	ldrb r6, [r4, #9]
	cmp r6, r2
	bgt _021E7D44
	ldrb r6, [r4, #0xb]
	cmp r2, r6
	bgt _021E7D44
	add r3, r0, #0
_021E7D44:
	ldrh r6, [r5, #2]
	add r0, r0, #1
	add r4, #8
	lsr r6, r6, #3
	cmp r0, r6
	blt _021E7D2A
_021E7D50:
	add r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E7D00

	thumb_func_start ov01_021E7D58
ov01_021E7D58: ; 0x021E7D58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r2, #0
	add r4, r1, #0
	bl SavArray_Flags_get
	add r6, r0, #0
	lsl r0, r7, #3
	add r0, r4, r0
	ldrb r0, [r0, #4]
	lsl r1, r0, #2
	ldr r0, _021E7DE4 ; =0x022063BC
	ldrh r4, [r0, r1]
	ldr r0, [r5, #0xc]
	bl sub_0203B9C4
	bl sub_0203B958
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0x8b
	bne _021E7D9A
	add r0, r6, #0
	bl sub_020669D0
	cmp r0, #0
	beq _021E7D9A
	ldr r0, _021E7DE8 ; =0x0000085F
	cmp r4, r0
	bne _021E7D9A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7D9A:
	ldr r1, [r5]
	ldr r0, _021E7DEC ; =0x0000016D
	cmp r1, r0
	bne _021E7DB6
	add r0, r6, #0
	bl sub_020669E0
	cmp r0, #0
	beq _021E7DB6
	ldr r0, _021E7DF0 ; =0x00000866
	cmp r4, r0
	bne _021E7DB6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7DB6:
	add r0, r6, #0
	bl sub_02066A4C
	cmp r0, #1
	bne _021E7DCA
	ldr r0, _021E7DF4 ; =0x00000865
	cmp r4, r0
	bne _021E7DCA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7DCA:
	add r0, r6, #0
	bl sub_02066A58
	cmp r0, #0
	beq _021E7DDE
	ldr r0, _021E7DF8 ; =0x0000085D
	cmp r4, r0
	bne _021E7DDE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7DDE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7DE4: .word 0x022063BC
_021E7DE8: .word 0x0000085F
_021E7DEC: .word 0x0000016D
_021E7DF0: .word 0x00000866
_021E7DF4: .word 0x00000865
_021E7DF8: .word 0x0000085D
	thumb_func_end ov01_021E7D58

	thumb_func_start ov01_021E7DFC
ov01_021E7DFC: ; 0x021E7DFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02054874
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #1
	ldr r2, [r0]
	mvn r1, r1
	cmp r2, r1
	bne _021E7E22
	add r0, r5, #0
	add r1, r1, #1
	add r0, #0xc4
	str r1, [r0]
	b _021E7E30
_021E7E22:
	sub r0, r1, #1
	cmp r2, r0
	bne _021E7E30
	add r0, r5, #0
	add r1, r1, #1
	add r0, #0xc4
	str r1, [r0]
_021E7E30:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov01_021E7D00
	mov r1, #0
	add r7, r0, #0
	mvn r1, r1
	cmp r7, r1
	beq _021E7EC6
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov01_021E7D58
	cmp r0, #0
	beq _021E7EEC
	add r0, r6, #4
	lsl r4, r7, #3
	str r0, [sp]
	ldrb r0, [r0, r4]
	cmp r0, #0x10
	bhs _021E7EBC
	lsl r1, r0, #2
	ldr r0, _021E7EF0 ; =0x022063BC
	add r2, r5, #0
	add r2, #0xc4
	ldrh r0, [r0, r1]
	ldr r2, [r2]
	cmp r2, r0
	beq _021E7E80
	ldr r2, _021E7EF4 ; =0x022063BE
	ldrh r1, [r2, r1]
	cmp r1, #1
	bne _021E7E7C
	bl sub_02006088
	b _021E7E80
_021E7E7C:
	bl PlaySE
_021E7E80:
	ldr r0, [sp]
	add r5, #0xc4
	ldrb r0, [r0, r4]
	lsl r1, r0, #2
	ldr r0, _021E7EF0 ; =0x022063BC
	ldrh r0, [r0, r1]
	str r0, [r5]
	add r5, r6, #5
	ldrb r2, [r5, r4]
	cmp r2, #3
	bhs _021E7EEC
	ldr r1, _021E7EF8 ; =0x02206388
	mov r0, #0
	ldrb r1, [r1, r2]
	mov r2, #0xf
	bl GF_SndHandleMoveVolume
	ldr r1, [sp]
	mov r0, #5
	ldrb r2, [r1, r4]
	lsl r1, r2, #1
	add r3, r2, r1
	ldr r1, _021E7EFC ; =0x0220638C
	ldrb r2, [r5, r4]
	add r1, r1, r3
	ldrb r1, [r2, r1]
	add r2, r0, #0
	bl GF_SndHandleMoveVolume
	pop {r3, r4, r5, r6, r7, pc}
_021E7EBC:
	cmp r7, #0x10
	blt _021E7EEC
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021E7EC6:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, r1
	beq _021E7EEC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xa
	bl sub_02006154
	mov r0, #0
	mov r1, #0x80
	mov r2, #0xf
	bl GF_SndHandleMoveVolume
	mov r0, #0
	mvn r0, r0
	add r5, #0xc4
	str r0, [r5]
_021E7EEC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7EF0: .word 0x022063BC
_021E7EF4: .word 0x022063BE
_021E7EF8: .word 0x02206388
_021E7EFC: .word 0x0220638C
	thumb_func_end ov01_021E7DFC

	thumb_func_start ov01_021E7F00
ov01_021E7F00: ; 0x021E7F00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xac
	ldr r0, [r0]
	add r4, r1, #0
	cmp r0, #0
	bne _021E7F34
	ldr r0, [r5, #0x40]
	bl sub_0205C67C
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C688
	add r2, r0, #0
	cmp r4, #0
	beq _021E7F2C
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r0, #0xc4
	str r1, [r0]
_021E7F2C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021E7DFC
_021E7F34:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E7F00

	thumb_func_start ov01_021E7F38
ov01_021E7F38: ; 0x021E7F38
	push {r3, lr}
	bl ov01_021E7FA8
	cmp r0, #0
	beq _021E7F46
	ldr r0, _021E7F4C ; =0x0000271E
	pop {r3, pc}
_021E7F46:
	ldr r0, _021E7F50 ; =0x0000FFFF
	pop {r3, pc}
	nop
_021E7F4C: .word 0x0000271E
_021E7F50: .word 0x0000FFFF
	thumb_func_end ov01_021E7F38

	thumb_func_start ov01_021E7F54
ov01_021E7F54: ; 0x021E7F54
	push {r3, r4, r5, lr}
	add r1, sp, #0
	add r5, r0, #0
	bl sub_0203DC64
	cmp r0, #1
	bne _021E7F7C
	ldr r0, [sp]
	bl sub_0205F26C
	cmp r0, #0
	beq _021E7F74
	cmp r0, #3
	bne _021E7F78
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7F74:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7F78:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E7F7C:
	add r0, r5, #0
	bl sub_0203B6D8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203B6E0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203DC90
	ldr r1, _021E7FA4 ; =0x0000FFFF
	cmp r0, r1
	beq _021E7F9E
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E7F9E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E7FA4: .word 0x0000FFFF
	thumb_func_end ov01_021E7F54

	thumb_func_start ov01_021E7FA8
ov01_021E7FA8: ; 0x021E7FA8
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov01_021E7AD4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02054E5C
	ldr r1, [r4, #0x30]
	bl sub_0203B0DC
	bl sub_02054E50
	cmp r0, #0
	beq _021E7FD4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021E7FD4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E7FA8

	thumb_func_start ov01_021E7FDC
ov01_021E7FDC: ; 0x021E7FDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r4, r3, #0
	add r0, r2, #0
	add r1, r5, #4
	add r2, r4, #0
	bl sub_02009F40
	str r0, [r5]
	ldr r1, _021E818C ; =0x00000162
	ldr r0, [sp, #0x10]
	strh r4, [r5, r1]
	ldrh r2, [r0, #8]
	ldr r0, _021E8190 ; =0x0000FFFF
	cmp r2, r0
	bne _021E8004
	mov r2, #4
	b _021E8006
_021E8004:
	mov r2, #6
_021E8006:
	sub r0, r1, #2
	strh r2, [r5, r0]
	bl sub_0200A8FC
	mov r1, #0x16
	lsl r1, r1, #4
	ldrh r2, [r5, r1]
	add r3, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	mul r1, r3
	bl AllocFromHeap
	add r7, r0, #0
	mov r0, #0xaf
	add r1, r4, #0
	bl NARC_ctor
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bls _021E807A
	ldr r6, [sp, #0x10]
_021E803C:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl sub_0200A900
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp]
	ldrh r1, [r6]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r3, r4, #0
	bl sub_02007C98
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x28]
	add r2, r4, #0
	bl sub_0200A908
	ldr r0, [sp, #0x28]
	bl FreeToHeap
	ldr r0, [sp, #0x1c]
	add r6, r6, #2
	add r0, r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	blo _021E803C
_021E807A:
	mov r6, #0
	cmp r0, #0
	bls _021E80B0
	str r5, [sp, #0x18]
_021E8082:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200A900
	bl sub_0200A96C
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200A090
	mov r1, #0x13
	ldr r2, [sp, #0x18]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r2, #0
	add r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #0x30
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021E8082
_021E80B0:
	mov r1, #0
	str r1, [sp, #0x14]
	cmp r0, #0
	bls _021E80FC
	add r6, r5, #0
_021E80BA:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_0200A900
	str r0, [sp, #0x2c]
	bl sub_0200A96C
	add r1, r4, #0
	bl sub_0200A6F0
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r2, #0x52
	sub r0, #0x18
	lsl r2, r2, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [r6, r2]
	add r3, r4, #0
	bl sub_0200A674
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blo _021E80BA
_021E80FC:
	mov r6, #0
	cmp r0, #0
	bls _021E811A
_021E8102:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200A900
	bl sub_0200A954
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021E8102
_021E811A:
	add r0, r7, #0
	bl FreeToHeap
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200ADE4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B050
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, #0xc]
	mov r2, #0
	add r3, r4, #0
	bl sub_02007C98
	mov r3, #0x4e
	lsl r3, r3, #2
	ldr r1, [r5, r3]
	add r2, r3, #0
	str r1, [sp]
	add r1, r3, #4
	ldr r1, [r5, r1]
	sub r2, #8
	str r1, [sp, #4]
	add r1, r3, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r6, r0, #0
	str r1, [sp, #8]
	add r1, r3, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	sub r3, r3, #4
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r1, r4, #0
	bl sub_02009E84
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl FreeToHeap
	ldr r0, [sp, #0x20]
	bl NARC_dtor
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E818C: .word 0x00000162
_021E8190: .word 0x0000FFFF
	thumb_func_end ov01_021E7FDC

	thumb_func_start ov01_021E8194
ov01_021E8194: ; 0x021E8194
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02024504
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009F24
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200AED4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B0CC
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	bls _021E81EC
	mov r7, #0x16
	add r4, r5, #0
	lsl r7, r7, #4
_021E81CE:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A714
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200A0D0
	ldrh r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blo _021E81CE
_021E81EC:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8194

	thumb_func_start ov01_021E81F0
ov01_021E81F0: ; 0x021E81F0
	push {r4, r5, r6, lr}
	sub sp, #0x48
	ldr r5, _021E8294 ; =0x022063FC
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0xc
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r3, #8
	ldrsh r3, [r4, r3]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldrsh r0, [r4, r1]
	lsl r3, r3, #0xc
	str r3, [sp, #8]
	lsl r0, r0, #0xc
	ldr r3, [r4, #0x14]
	str r0, [sp, #4]
	cmp r3, #2
	bne _021E8228
	lsl r1, r1, #0x11
	add r0, r0, r1
	str r0, [sp, #4]
_021E8228:
	ldr r0, [r2]
	mov r3, #0x4b
	str r0, [sp, #0x18]
	lsl r3, r3, #2
	ldr r0, [r2, r3]
	ldr r1, [r4]
	ldr r5, [r0]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	add r6, sp, #0
	str r0, [sp, #0x1c]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r6, sp, #0xc
	str r0, [r5]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x2c
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r5]
	add r0, sp, #0
	strh r1, [r0, #0x38]
	ldr r0, [r4, #0xc]
	add r3, #0x36
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x40]
	ldrh r0, [r2, r3]
	str r0, [sp, #0x44]
	add r0, sp, #0x18
	bl sub_02024624
	add r5, r0, #0
	bne _021E8278
	bl GF_AssertFail
_021E8278:
	ldrh r1, [r4, #0xa]
	add r0, r5, #0
	bl sub_020248F0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _021E828E
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl sub_02024A48
_021E828E:
	add r0, r5, #0
	add sp, #0x48
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E8294: .word 0x022063FC
	thumb_func_end ov01_021E81F0

	thumb_func_start ov01_021E8298
ov01_021E8298: ; 0x021E8298
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	add r0, r2, #0
	str r3, [sp, #4]
	add r1, r7, #4
	add r2, r3, #0
	bl sub_02009F40
	str r0, [r7]
	ldr r1, _021E8374 ; =0x00000162
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021E82C4
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021E82DA
_021E82C4:
	mov r1, #0x16
	mov r0, #4
	lsl r1, r1, #4
	strh r0, [r7, r1]
	add r0, r1, #0
	mov r2, #0
	sub r0, #0x20
	str r2, [r7, r0]
	sub r1, #0x1c
	str r2, [r7, r1]
	b _021E82E0
_021E82DA:
	mov r2, #6
	sub r0, r1, #2
	strh r2, [r7, r0]
_021E82E0:
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	mov r4, #0
	cmp r1, #0
	bls _021E8310
	ldr r5, [sp]
	add r6, r7, #0
_021E82F0:
	ldr r0, [r5]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl sub_0200A090
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0x30
	ldrh r1, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, r1
	blo _021E82F0
_021E8310:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	bls _021E836E
	mov r6, #0x52
	add r5, r7, #0
	add r4, r0, #0
	lsl r6, r6, #2
_021E8320:
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _021E8354
	ldr r1, [sp, #4]
	bl sub_0200A6F0
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _021E8354
	add r2, r1, #0
_021E8344:
	ldr r0, [r3]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _021E8344
_021E8354:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _021E8320
_021E836E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E8374: .word 0x00000162
	thumb_func_end ov01_021E8298

	thumb_func_start ov01_021E8378
ov01_021E8378: ; 0x021E8378
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x30]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _021E839C
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E839C:
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, _021E83EC ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x2e
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200A234
	add r4, r0, #0
	beq _021E83E4
	bl sub_0200B00C
	cmp r0, #1
	beq _021E83CC
	bl GF_AssertFail
_021E83CC:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov01_021E847C
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0200B12C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E83E4:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E83EC: .word 0x00000162
	thumb_func_end ov01_021E8378

	thumb_func_start ov01_021E83F0
ov01_021E83F0: ; 0x021E83F0
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl ov01_021E84B0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021E83F0

	thumb_func_start ov01_021E8404
ov01_021E8404: ; 0x021E8404
	push {r4, lr}
	sub sp, #8
	mov r4, #3
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl ov01_021E84B0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021E8404

	thumb_func_start ov01_021E8418
ov01_021E8418: ; 0x021E8418
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x24]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0200A728
	cmp r0, #0
	bne _021E843C
	bl GF_AssertFail
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E843C:
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, _021E8478 ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x32
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200A1D8
	add r4, r0, #0
	beq _021E8470
	bl sub_0200ADA4
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov01_021E847C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E8470:
	bl GF_AssertFail
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8478: .word 0x00000162
	thumb_func_end ov01_021E8418

	thumb_func_start ov01_021E847C
ov01_021E847C: ; 0x021E847C
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _021E84A8
	ldr r5, [r0]
	add r4, r5, #0
_021E848A:
	ldr r2, [r4]
	cmp r2, #0
	bne _021E84A0
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021E84A0:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _021E848A
_021E84A8:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E847C

	thumb_func_start ov01_021E84B0
ov01_021E84B0: ; 0x021E84B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r7, r1, #0
	lsl r4, r0, #2
	mov r0, #0x13
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r6, r4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_0200A728
	cmp r0, #0
	bne _021E84DA
	bl GF_AssertFail
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E84DA:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021E8518 ; =0x00000162
	add r1, r7, #0
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r6, r4]
	bl sub_0200A294
	add r1, r0, #0
	beq _021E8510
	mov r0, #0x52
	add r2, r5, r4
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ov01_021E847C
	cmp r0, #1
	beq _021E8514
	bl GF_AssertFail
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E8510:
	bl GF_AssertFail
_021E8514:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8518: .word 0x00000162
	thumb_func_end ov01_021E84B0

	thumb_func_start ov01_021E851C
ov01_021E851C: ; 0x021E851C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	add r5, r0, #0
	ldr r0, _021E86F0 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	mov r1, #0x10
	bl AllocFromHeap
	add r6, r0, #0
	ldr r0, _021E86F0 ; =0x00000162
	mov r1, #8
	ldrh r0, [r5, r0]
	bl AllocFromHeap
	str r0, [r6, #8]
	ldr r0, _021E86F0 ; =0x00000162
	mov r1, #0x24
	ldrh r0, [r5, r0]
	bl AllocFromHeap
	ldr r1, [r6, #8]
	add r2, r4, #0
	str r0, [r1]
	ldr r0, [r6, #8]
	mov r1, #0
	ldr r0, [r0]
	add r3, sp, #0x2c
	str r0, [r6, #4]
_021E8556:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _021E8556
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021E8574
	add r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021E857E
_021E8574:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	b _021E85B4
_021E857E:
	mov r2, #0
	ldr r1, [sp, #0x3c]
	mvn r2, r2
	cmp r1, r2
	beq _021E8596
	bl sub_0200A728
	cmp r0, #0
	bne _021E8596
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
_021E8596:
	mov r0, #0
	ldr r1, [sp, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _021E85B4
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A728
	cmp r0, #0
	bne _021E85B4
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_021E85B4:
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	add r0, #0x14
	str r1, [sp, #0x24]
	ldr r0, [r5, r0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl sub_02009D48
	ldr r0, [r5]
	str r0, [sp, #0x44]
	ldr r0, [r6, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021E8622
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E8630
_021E8622:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E8630:
	bl _ffix
	str r0, [sp, #0x4c]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021E8650
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E865E
_021E8650:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E865E:
	bl _ffix
	str r0, [sp, #0x50]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021E867E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E868C
_021E867E:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E868C:
	bl _ffix
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021E86A2
	mov r0, #3
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x50]
_021E86A2:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	mov r1, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0x38]
	ldr r0, [r4, #8]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x6c]
	ldr r0, _021E86F0 ; =0x00000162
	ldrh r0, [r5, r0]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl sub_02024624
	str r0, [r6]
	cmp r0, #0
	beq _021E86E6
	bl sub_02024A6C
	add r5, r0, #0
	ldrh r1, [r4, #6]
	ldr r0, [r6]
	bl sub_020248F0
	ldr r1, [r4, #0xc]
	ldr r0, [r6]
	add r1, r5, r1
	bl sub_02024A14
	b _021E86EA
_021E86E6:
	bl GF_AssertFail
_021E86EA:
	add r0, r6, #0
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E86F0: .word 0x00000162
	thumb_func_end ov01_021E851C

	thumb_func_start ov01_021E86F4
ov01_021E86F4: ; 0x021E86F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl sub_02024504
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200AED4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200B0CC
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	bls _021E8742
	mov r7, #0x16
	add r5, r6, #0
	lsl r7, r7, #4
_021E8724:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200A714
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200A0D0
	ldrh r0, [r6, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _021E8724
_021E8742:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E86F4

	thumb_func_start ov01_021E8744
ov01_021E8744: ; 0x021E8744
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r0, #0
	add r0, r7, #0
	add r5, r1, #0
	add r4, r3, #0
	bl ov01_02204554
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E8760
	bl GF_AssertFail
_021E8760:
	mov r0, #0
	add r1, r6, #0
_021E8764:
	ldr r2, [r1]
	cmp r2, #0
	beq _021E877A
	ldr r2, [r1, #0xc]
	cmp r4, r2
	bne _021E877A
	ldr r2, [r1, #4]
	cmp r2, r5
	bne _021E877A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E877A:
	add r0, r0, #1
	add r1, #0x10
	cmp r0, #2
	blt _021E8764
	mov r2, #0
	add r1, r6, #0
_021E8786:
	ldr r0, [r1]
	cmp r0, #0
	bne _021E879C
	lsl r1, r2, #4
	mov r0, #1
	str r0, [r6, r1]
	add r0, r6, r1
	str r4, [r0, #0xc]
	str r7, [r0, #8]
	str r5, [r0, #4]
	b _021E87A4
_021E879C:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, #2
	blt _021E8786
_021E87A4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E8744

	thumb_func_start ov01_021E87A8
ov01_021E87A8: ; 0x021E87A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r3, #0
	mvn r0, r0
	add r4, r1, #0
	add r7, r2, #0
	cmp r6, r0
	bne _021E87BE
	bl GF_AssertFail
_021E87BE:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	add r5, r0, #0
	bne _021E87D0
	bl GF_AssertFail
_021E87D0:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov01_02204470
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E87A8

	thumb_func_start ov01_021E87E4
ov01_021E87E4: ; 0x021E87E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	mov r1, #0x4f
	str r0, [sp]
	mov r0, #4
	lsl r1, r1, #2
	bl AllocFromHeap
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r6, r0, #0
_021E87FE:
	str r6, [r1, #0x14]
	str r6, [r1, #0x18]
	str r6, [r1, #0x1c]
	add r0, r0, #1
	add r1, #0x10
	cmp r0, #0x10
	blt _021E87FE
	mov r0, #0x11
	lsl r0, r0, #4
	add r2, r0, #0
	add r3, r0, #0
	add r5, r7, #0
	mov r4, #0
	add r1, r0, #4
	add r2, #8
	add r3, #0xc
_021E881E:
	str r4, [r5, r0]
	str r4, [r5, r1]
	str r4, [r5, r2]
	str r4, [r5, r3]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #2
	blt _021E881E
	mov r0, #0x6a
	mov r1, #4
	bl NARC_ctor
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r7, r1]
	ldr r0, [sp]
	add r1, r1, #4
	str r0, [r7, r1]
	ldr r0, [sp, #4]
	mov r1, #4
	mov r2, #0x10
	bl ov01_022041D8
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E87E4

	thumb_func_start ov01_021E8858
ov01_021E8858: ; 0x021E8858
	cmp r0, #0
	bne _021E8860
	mov r0, #0
	bx lr
_021E8860:
	ldr r0, [r0]
	bx lr
	thumb_func_end ov01_021E8858

	thumb_func_start ov01_021E8864
ov01_021E8864: ; 0x021E8864
	cmp r0, #8
	bne _021E886C
	mov r0, #0
	bx lr
_021E886C:
	mov r1, #1
	and r0, r1
	cmp r0, #1
	beq _021E8876
	mov r1, #0
_021E8876:
	add r0, r1, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E8864

	thumb_func_start ov01_021E887C
ov01_021E887C: ; 0x021E887C
	cmp r0, #8
	bne _021E8884
	mov r0, #1
	bx lr
_021E8884:
	asr r1, r0, #1
	mov r0, #1
	and r1, r0
	cmp r1, #1
	beq _021E8890
	mov r0, #0
_021E8890:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E887C

	thumb_func_start ov01_021E8894
ov01_021E8894: ; 0x021E8894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	mov r0, #0x4d
	ldr r7, [sp, #0x54]
	lsl r0, r0, #2
	add r4, r1, #0
	str r2, [sp, #8]
	ldr r0, [r7, r0]
	add r1, r6, #0
	add r2, sp, #0x10
	add r5, r3, #0
	bl NARC_ReadWholeMember
	cmp r4, #4
	blt _021E88B8
	bl GF_AssertFail
_021E88B8:
	lsl r1, r4, #2
	add r0, sp, #0x18
	ldr r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _021E88CE
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E88CE:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	bl ov01_021E8864
	ldr r1, [sp, #0x48]
	cmp r1, r0
	beq _021E88E2
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E88E2:
	mov r6, #0
	add r4, r7, #0
_021E88E6:
	cmp r5, #0
	beq _021E88F4
	ldr r0, [r4, #0x1c]
	cmp r5, r0
	bne _021E88F4
	bl GF_AssertFail
_021E88F4:
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #0x10
	blt _021E88E6
	mov r2, #0
	add r1, r7, #0
_021E8900:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021E895E
	lsl r4, r2, #4
	mov r1, #1
	add r0, r7, r4
	str r1, [r0, #0x14]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl ov01_022042FC
	add r6, r0, #0
	bne _021E8920
	bl GF_AssertFail
_021E8920:
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x40]
	add r0, r6, #0
	bl ov01_022044C8
	ldr r0, [sp, #0xc]
	add r1, r7, r4
	str r0, [r1, #0x18]
	str r5, [r1, #0x1c]
	ldr r0, [sp, #0x4c]
	mov r1, #0x13
	str r0, [sp]
	ldr r0, [sp, #0x50]
	lsl r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r7, r1]
	add r1, #8
	ldr r1, [r7, r1]
	ldr r3, [sp, #0xc]
	add r2, r6, #0
	bl ov01_021E87A8
	add r7, #0x10
	str r6, [r7, r4]
	ldr r0, [r7, r4]
	bl ov01_022044E0
	add sp, #0x28
	add r0, r7, r4
	pop {r3, r4, r5, r6, r7, pc}
_021E895E:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, #0x10
	blt _021E8900
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E8894

	thumb_func_start ov01_021E8970
ov01_021E8970: ; 0x021E8970
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r6, [sp, #0x30]
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r6, #0
	bne _021E898C
	bl GF_AssertFail
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E898C:
	add r0, r6, #0
	bl ov01_021E8B9C
	cmp r5, r0
	blt _021E899C
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E899C:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, #0
	add r2, sp, #4
	bl NARC_ReadWholeMember
	cmp r4, #4
	blt _021E89B2
	bl GF_AssertFail
_021E89B2:
	lsl r1, r4, #2
	add r0, sp, #0xc
	ldr r5, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021E89C6
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E89C6:
	add r0, sp, #4
	ldrb r0, [r0, #1]
	bl ov01_021E887C
	cmp r7, r0
	beq _021E89D8
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E89D8:
	mov r4, #0
	add r1, r6, #0
_021E89DC:
	ldr r0, [r1, #0x18]
	cmp r5, r0
	bne _021E8A1A
	add r0, sp, #4
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021E8A02
	lsl r2, r4, #4
	mov r0, #0x11
	add r2, r6, r2
	lsl r0, r0, #4
	lsl r3, r5, #0x18
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	add r0, r6, r0
	lsr r3, r3, #0x18
	bl ov01_021E8744
	b _021E8A04
_021E8A02:
	mov r0, #1
_021E8A04:
	cmp r0, #0
	beq _021E8A14
	lsl r1, r4, #4
	add r1, r6, r1
	ldr r0, [sp]
	ldr r1, [r1, #0x10]
	bl ov01_0220450C
_021E8A14:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E8A1A:
	add r4, r4, #1
	add r1, #0x10
	cmp r4, #0x10
	blt _021E89DC
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E8970

	thumb_func_start ov01_021E8A28
ov01_021E8A28: ; 0x021E8A28
	push {r3, r4}
	cmp r0, #0
	beq _021E8A4C
	mov r4, #0
	add r2, r4, #0
	add r1, r4, #0
_021E8A34:
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _021E8A44
	cmp r3, #1
	bne _021E8A40
	str r2, [r0, #0x10]
_021E8A40:
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
_021E8A44:
	add r4, r4, #1
	add r0, #0x10
	cmp r4, #0x10
	blt _021E8A34
_021E8A4C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov01_021E8A28

	thumb_func_start ov01_021E8A50
ov01_021E8A50: ; 0x021E8A50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _021E8A88
	cmp r5, #0
	bne _021E8A60
	bl GF_AssertFail
_021E8A60:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E8A88
	cmp r0, #1
	bne _021E8A82
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl ov01_02204500
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl ov01_0220431C
_021E8A82:
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0xc]
_021E8A88:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8A50

	thumb_func_start ov01_021E8A8C
ov01_021E8A8C: ; 0x021E8A8C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r6, r1, #0
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r2, sp, #0
	add r5, r3, #0
	bl NARC_ReadWholeMember
	cmp r5, #4
	blt _021E8AAC
	bl GF_AssertFail
_021E8AAC:
	lsl r1, r5, #2
	add r0, sp, #8
	ldr r5, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021E8ABE
	bl GF_AssertFail
_021E8ABE:
	mov r0, #0
_021E8AC0:
	lsl r1, r0, #4
	add r1, r4, r1
	ldr r2, [r1, #0x14]
	cmp r2, #1
	bne _021E8ADC
	ldr r2, [r1, #0x18]
	cmp r5, r2
	bne _021E8ADC
	ldr r1, [r1, #0x10]
	add r0, r6, #0
	bl ov01_02204518
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021E8ADC:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021E8AC0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8A8C

	thumb_func_start ov01_021E8AEC
ov01_021E8AEC: ; 0x021E8AEC
	push {r4, lr}
	add r4, r0, #0
	beq _021E8B02
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl NARC_dtor
	add r0, r4, #0
	bl FreeToHeap
_021E8B02:
	pop {r4, pc}
	thumb_func_end ov01_021E8AEC

	thumb_func_start ov01_021E8B04
ov01_021E8B04: ; 0x021E8B04
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov r0, #0x4d
	add r5, r2, #0
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r3, #0
	add r2, sp, #0
	bl NARC_ReadWholeMember
	cmp r4, #4
	blt _021E8B24
	bl GF_AssertFail
_021E8B24:
	lsl r1, r4, #2
	add r0, sp, #8
	mov r4, #0
	ldr r1, [r0, r1]
	add r2, r4, #0
	add r3, r5, #0
_021E8B30:
	ldr r0, [r3, #0x18]
	cmp r1, r0
	bne _021E8B48
	add r5, #0x10
	lsl r0, r2, #4
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021E8B50
	bl GF_AssertFail
	b _021E8B50
_021E8B48:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, #0x10
	blt _021E8B30
_021E8B50:
	cmp r4, #0
	bne _021E8B58
	bl GF_AssertFail
_021E8B58:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8B04

	thumb_func_start ov01_021E8B60
ov01_021E8B60: ; 0x021E8B60
	ldr r3, _021E8B68 ; =ov01_0220455C
	ldr r0, [r0]
	bx r3
	nop
_021E8B68: .word ov01_0220455C
	thumb_func_end ov01_021E8B60

	thumb_func_start ov01_021E8B6C
ov01_021E8B6C: ; 0x021E8B6C
	ldr r3, _021E8B74 ; =ov01_022044E0
	ldr r0, [r0]
	bx r3
	nop
_021E8B74: .word ov01_022044E0
	thumb_func_end ov01_021E8B6C

	thumb_func_start ov01_021E8B78
ov01_021E8B78: ; 0x021E8B78
	ldr r3, _021E8B80 ; =ov01_02204570
	ldr r0, [r0]
	bx r3
	nop
_021E8B80: .word ov01_02204570
	thumb_func_end ov01_021E8B78

	thumb_func_start ov01_021E8B84
ov01_021E8B84: ; 0x021E8B84
	ldr r3, _021E8B8C ; =ov01_02204590
	ldr r0, [r0]
	bx r3
	nop
_021E8B8C: .word ov01_02204590
	thumb_func_end ov01_021E8B84

	thumb_func_start ov01_021E8B90
ov01_021E8B90: ; 0x021E8B90
	ldr r3, _021E8B98 ; =ov01_02204560
	ldr r0, [r0]
	bx r3
	nop
_021E8B98: .word ov01_02204560
	thumb_func_end ov01_021E8B90

	thumb_func_start ov01_021E8B9C
ov01_021E8B9C: ; 0x021E8B9C
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r3, _021E8BA8 ; =NARC_GetFileCount
	ldr r0, [r0, r1]
	bx r3
	nop
_021E8BA8: .word NARC_GetFileCount
	thumb_func_end ov01_021E8B9C

	thumb_func_start ov01_021E8BAC
ov01_021E8BAC: ; 0x021E8BAC
	push {r3, lr}
	sub sp, #0x18
	mov r2, #0x4d
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, sp, #0
	bl NARC_ReadWholeMember
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E8BCA
	add sp, #0x18
	mov r0, #0
	pop {r3, pc}
_021E8BCA:
	mov r0, #0
	add r3, sp, #0
	sub r1, r0, #1
_021E8BD0:
	lsl r2, r0, #2
	add r2, r3, r2
	ldr r2, [r2, #8]
	cmp r2, r1
	beq _021E8BE4
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _021E8BD0
_021E8BE4:
	add sp, #0x18
	pop {r3, pc}
	thumb_func_end ov01_021E8BAC

	thumb_func_start ov01_021E8BE8
ov01_021E8BE8: ; 0x021E8BE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021E8BF4
	bl GF_AssertFail
_021E8BF4:
	mov r1, #0x10
	mov r0, #0
	mov r2, #0x38
_021E8BFA:
	cmp r1, #0x10
	bne _021E8C0E
	add r3, r0, #0
	mul r3, r2
	add r3, r5, r3
	add r3, #0x34
	ldrb r3, [r3]
	cmp r3, #0
	bne _021E8C0E
	add r1, r0, #0
_021E8C0E:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021E8BFA
	cmp r1, #0x10
	beq _021E8C32
	add r2, r1, #0
	mov r0, #0x38
	mul r2, r0
	add r0, r5, r2
	add r0, #0x34
	strb r4, [r0]
	add r0, r5, r2
	mov r1, #0
	add r0, #0x35
	strb r1, [r0]
	b _021E8C3A
_021E8C32:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E8C3A:
	add r0, r5, r2
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8BE8

	thumb_func_start ov01_021E8C40
ov01_021E8C40: ; 0x021E8C40
	add r1, r0, #0
	mov r3, #0
	add r1, #0x34
	strb r3, [r1]
	str r3, [r0, #0x30]
	str r3, [r0, #0x2c]
	add r2, r3, #0
_021E8C4E:
	lsl r1, r3, #2
	add r1, r0, r1
	str r2, [r1, #0x14]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _021E8C4E
	bx lr
	thumb_func_end ov01_021E8C40

	thumb_func_start ov01_021E8C60
ov01_021E8C60: ; 0x021E8C60
	push {r4, r5}
	mov r4, #0
	add r3, r4, #0
	add r5, r0, #0
_021E8C68:
	add r2, r5, #0
	add r2, #0x34
	ldrb r2, [r2]
	cmp r1, r2
	bne _021E8C7A
	mov r1, #0x38
	mul r1, r3
	add r4, r0, r1
	b _021E8C82
_021E8C7A:
	add r3, r3, #1
	add r5, #0x38
	cmp r3, #0x10
	blt _021E8C68
_021E8C82:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov01_021E8C60

	thumb_func_start ov01_021E8C88
ov01_021E8C88: ; 0x021E8C88
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	ble _021E8C98
	bl GF_AssertFail
_021E8C98:
	cmp r5, #0
	beq _021E8C9E
	str r5, [r6, #0x14]
_021E8C9E:
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8C88

	thumb_func_start ov01_021E8CA4
ov01_021E8CA4: ; 0x021E8CA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r4, r0
	blt _021E8CB6
	bl GF_AssertFail
_021E8CB6:
	lsl r0, r4, #2
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021E8CA4

	thumb_func_start ov01_021E8CBC
ov01_021E8CBC: ; 0x021E8CBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r4, r0
	blt _021E8CCE
	bl GF_AssertFail
_021E8CCE:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	bl ov01_021E8858
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	bl ov01_021E8858
	add r7, r0, #0
	mov r4, #0
_021E8CE4:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021E8CFC
	add r1, r7, #0
	bl ov01_02204518
	ldr r0, [r6, #0x14]
	ldr r1, [sp]
	bl ov01_0220450C
_021E8CFC:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021E8CE4
	ldr r0, [sp, #4]
	str r0, [r5, #0x2c]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8CBC

	thumb_func_start ov01_021E8D10
ov01_021E8D10: ; 0x021E8D10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x4c]
	str r2, [sp, #0x20]
	str r0, [sp, #0x4c]
	add r0, r3, #0
	mov r5, #0
	str r3, [sp, #0x24]
	ldr r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	cmp r0, #0
	ble _021E8D68
_021E8D30:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r7, [sp, #0x14]
	bl ov01_021E8894
	add r4, r0, #0
	bne _021E8D56
	bl GF_AssertFail
_021E8D56:
	ldr r0, [sp, #0x4c]
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021E8CA4
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	cmp r5, r0
	blt _021E8D30
_021E8D68:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E8D10

	thumb_func_start ov01_021E8D6C
ov01_021E8D6C: ; 0x021E8D6C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x2c]
	bl ov01_021E8858
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_021E8D7E:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021E8D8A
	add r1, r7, #0
	bl ov01_02204518
_021E8D8A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021E8D7E
	ldr r0, [r6, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _021E8DB0
	add r4, r6, #0
	add r7, r5, #0
_021E8D9E:
	ldr r0, [r4]
	ldr r1, [sp]
	bl ov01_021E8A50
	stmia r4!, {r7}
	ldr r0, [r6, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _021E8D9E
_021E8DB0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8D6C

	thumb_func_start ov01_021E8DB4
ov01_021E8DB4: ; 0x021E8DB4
	push {r4, lr}
	mov r1, #0xe
	mov r0, #4
	lsl r1, r1, #6
	bl AllocFromHeap
	add r4, r0, #0
	mov r2, #0xe
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #6
	bl MIi_CpuClearFast
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8DB4

	thumb_func_start ov01_021E8DD4
ov01_021E8DD4: ; 0x021E8DD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E8DE6
	bl FreeToHeap
	mov r0, #0
	str r0, [r4]
_021E8DE6:
	pop {r4, pc}
	thumb_func_end ov01_021E8DD4

	thumb_func_start ov01_021E8DE8
ov01_021E8DE8: ; 0x021E8DE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r0, r1, #0
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r6, r3, #0
	bl ov01_021E8BE8
	add r5, r0, #0
	bne _021E8E06
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E8E06:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x34]
	add r2, r5, #0
	bl ov01_021E8C88
	add r0, sp, #0x38
	ldrb r4, [r0]
	cmp r4, #0
	bne _021E8E1C
	bl GF_AssertFail
_021E8E1C:
	cmp r4, #0
	bne _021E8E22
	mov r4, #1
_021E8E22:
	ldr r0, [sp, #0x3c]
	str r4, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	add r0, r6, #0
	str r5, [sp, #0xc]
	bl ov01_021E8D10
	str r6, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8DE8

	thumb_func_start ov01_021E8E40
ov01_021E8E40: ; 0x021E8E40
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #6
	blo _021E8E52
	bl GF_AssertFail
_021E8E52:
	add r0, r5, #0
	add r1, r7, #0
	bl ov01_021E8C60
	add r5, r0, #0
	add r5, #0x14
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021E8E6A
	bl GF_AssertFail
_021E8E6A:
	str r6, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8E40

	thumb_func_start ov01_021E8E70
ov01_021E8E70: ; 0x021E8E70
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _021E8E80
	bl GF_AssertFail
_021E8E80:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021E8C60
	add r1, r6, #0
	bl ov01_021E8CBC
	mov r1, #0
	bl ov01_021E8B60
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8E70

	thumb_func_start ov01_021E8E98
ov01_021E8E98: ; 0x021E8E98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _021E8EAA
	bl GF_AssertFail
_021E8EAA:
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021E8C60
	add r1, r7, #0
	bl ov01_021E8CBC
	add r5, r0, #0
	cmp r4, #0
	beq _021E8EC6
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_021E8EC6:
	add r0, r5, #0
	mov r1, #0
	bl ov01_021E8B60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E8E98

	thumb_func_start ov01_021E8ED0
ov01_021E8ED0: ; 0x021E8ED0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bne _021E8EDE
	bl GF_AssertFail
_021E8EDE:
	add r0, r4, #0
	add r1, r6, #0
	bl ov01_021E8C60
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021E8D6C
	add r0, r4, #0
	bl ov01_021E8C40
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021E8ED0

	thumb_func_start ov01_021E8EF8
ov01_021E8EF8: ; 0x021E8EF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021E8F04
	bl GF_AssertFail
_021E8F04:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021E8C60
	ldr r0, [r0, #0x2c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E8EF8

	thumb_func_start ov01_021E8F10
ov01_021E8F10: ; 0x021E8F10
	push {r4, lr}
	bl ov01_021E8EF8
	add r4, r0, #0
	bne _021E8F1E
	bl GF_AssertFail
_021E8F1E:
	ldr r0, [r4]
	bl ov01_02204560
	cmp r0, #0
	beq _021E8F2C
	mov r0, #1
	pop {r4, pc}
_021E8F2C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021E8F10

	thumb_func_start ov01_021E8F30
ov01_021E8F30: ; 0x021E8F30
	push {r3, lr}
	bl ov01_021E8C60
	ldr r0, [r0, #0x30]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021E8F30

	thumb_func_start ov01_021E8F3C
ov01_021E8F3C: ; 0x021E8F3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r0, #0
	ldr r0, [sp, #0x50]
	ldr r7, [sp, #0x54]
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl ov01_021E8B9C
	cmp r4, r0
	bge _021E8F86
	ldr r0, [sp, #0x50]
	ldrb r0, [r0]
	cmp r0, #0
	beq _021E8F86
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x18]
_021E8F6C:
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #8]
	mvn r1, r1
	str r0, [sp, #0x24]
	cmp r0, r1
	beq _021E8F86
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, #1]
	bl ov01_021E8864
	cmp r0, #0
	beq _021E8F88
_021E8F86:
	b _021E90AC
_021E8F88:
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, #1]
	bl ov01_021E887C
	cmp r0, #0
	bne _021E8F9A
	mov r0, #1
	str r0, [sp, #0x14]
	b _021E8F9E
_021E8F9A:
	mov r0, #0
	str r0, [sp, #0x14]
_021E8F9E:
	mov r4, #0
	add r1, r7, #0
_021E8FA2:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021E9062
	lsl r0, r4, #4
	add r5, r7, r0
	mov r0, #1
	str r0, [r5, #0x14]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl ov01_022042FC
	add r6, r0, #0
	bne _021E8FC2
	bl GF_AssertFail
_021E8FC2:
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021E8FD8
	mov r1, #1
	add r0, r6, #0
	add r2, r1, #0
	mov r3, #0
	bl ov01_022044C8
	b _021E8FE6
_021E8FD8:
	mov r1, #0
	mov r2, #0
	add r0, r6, #0
	mvn r1, r1
	add r3, r2, #0
	bl ov01_022044C8
_021E8FE6:
	ldr r0, [sp, #0x24]
	mov r1, #0x13
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [r7, r1]
	add r1, #8
	ldr r1, [r7, r1]
	add r2, r6, #0
	bl ov01_021E87A8
	add r0, r6, #0
	str r6, [r5, #0x10]
	bl ov01_022044E0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021E9044
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021E9034
	ldr r3, [sp, #0x24]
	mov r0, #0x11
	lsl r0, r0, #4
	lsl r3, r3, #0x18
	ldr r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r7, r0
	lsr r3, r3, #0x18
	bl ov01_021E8744
	b _021E9036
_021E9034:
	mov r0, #1
_021E9036:
	cmp r0, #0
	beq _021E906A
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0x10]
	bl ov01_0220450C
	b _021E906A
_021E9044:
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, #1]
	cmp r0, #8
	bne _021E906A
	ldr r0, [sp, #0x1c]
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x1c]
	ldr r2, [r5, #0x10]
	lsl r1, r0, #2
	add r0, sp, #0x28
	str r2, [r0, r1]
	b _021E906A
_021E9062:
	add r4, r4, #1
	add r1, #0x10
	cmp r4, #0x10
	blt _021E8FA2
_021E906A:
	cmp r4, #0x10
	bne _021E9072
	bl GF_AssertFail
_021E9072:
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	bge _021E9084
	b _021E8F6C
_021E9084:
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, #1]
	cmp r0, #8
	bne _021E90AC
	ldr r0, [sp, #0x58]
	bl ov01_02204834
	add r1, r0, #0
	lsl r2, r1, #2
	add r1, sp, #0x28
	ldr r0, [sp, #0xc]
	ldr r1, [r1, r2]
	bl ov01_0220450C
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0xc]
	add r2, sp, #0x28
	mov r3, #4
	bl ov01_0220476C
_021E90AC:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E8F3C

	thumb_func_start ov01_021E90B0
ov01_021E90B0: ; 0x021E90B0
	push {r4, lr}
	add r4, r2, #0
	bl ov01_021E8C60
	add r0, #0x35
	strb r4, [r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021E90B0

	thumb_func_start ov01_021E90C0
ov01_021E90C0: ; 0x021E90C0
	push {r3, lr}
	mov r0, #4
	mov r1, #0x20
	bl AllocFromHeapAtEnd
	mov r1, #0
	str r1, [r0]
	strh r1, [r0, #0x1c]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021E90C0

	thumb_func_start ov01_021E90D4
ov01_021E90D4: ; 0x021E90D4
	ldr r3, _021E90D8 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021E90D8: .word FreeToHeap
	thumb_func_end ov01_021E90D4

	thumb_func_start ov01_021E90DC
ov01_021E90DC: ; 0x021E90DC
	str r0, [r2, #4]
	str r1, [r2, #8]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021E90DC

	thumb_func_start ov01_021E90E4
ov01_021E90E4: ; 0x021E90E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #0x64
	bgt _021E9112
	blt _021E90F6
	b _021E9308
_021E90F6:
	cmp r0, #5
	bhi _021E9118
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E9106: ; jump table
	.short _021E911A - _021E9106 - 2 ; case 0
	.short _021E9218 - _021E9106 - 2 ; case 1
	.short _021E9256 - _021E9106 - 2 ; case 2
	.short _021E926A - _021E9106 - 2 ; case 3
	.short _021E92B0 - _021E9106 - 2 ; case 4
	.short _021E92F6 - _021E9106 - 2 ; case 5
_021E9112:
	cmp r0, #0x65
	bne _021E9118
	b _021E9336
_021E9118:
	b _021E934C
_021E911A:
	mov r0, #0
	str r0, [r4, #0x10]
	strb r0, [r4, #0xd]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x48
	str r0, [sp, #8]
	sub r2, r2, #2
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r3, r2, #0
	bl sub_02054A60
	mov r0, #1
	strb r0, [r4, #0xc]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x34]
	bl ov01_021FB904
	str r0, [sp, #0x1c]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	add r3, sp, #0x48
	bl sub_02054D10
	str r0, [sp, #0x18]
	mov r7, #0
	add r5, r0, #0
_021E915E:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9190
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x30
	bl NARC_ReadWholeMember
	add r0, sp, #0x2c
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9190
	ldr r1, [sp, #0x18]
	lsl r5, r7, #2
	ldr r1, [r1, r5]
	add r0, r6, #0
	add r2, sp, #0x48
	add r3, sp, #0x2c
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r5]
	str r0, [sp, #0x20]
	b _021E9198
_021E9190:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E915E
_021E9198:
	ldr r0, [sp, #0x18]
	bl FreeToHeap
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E91F4
	ldr r0, [r6, #0x54]
	ldr r1, [sp, #0x20]
	bl ov01_021E8BAC
	add r7, r0, #0
	bne _021E91B6
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E91B6:
	ldr r0, [r6, #0x34]
	bl ov01_021FB9E0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	bl ov01_021F3B38
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	bl ov01_021F3B3C
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	ldr r3, [sp, #0x20]
	bl ov01_021E8DE8
	mov r1, #1
	ldr r0, [r6, #0x58]
	add r2, r1, #0
	bl ov01_021E90B0
	b _021E91FA
_021E91F4:
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E91FA:
	ldr r0, [sp, #0x20]
	bl ov01_021E9700
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1e]
	ldr r0, _021E9368 ; =0x0000FFFF
	cmp r1, r0
	beq _021E9210
	mov r0, #0x64
	str r0, [r4]
	b _021E934C
_021E9210:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E9218:
	ldr r0, [r6, #0x58]
	mov r1, #1
	bl ov01_021E8F30
	add r5, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021EA1F4
	cmp r0, #0
	bne _021E9238
	ldr r0, [r6, #0x24]
	bl sub_02023234
	mov r0, #1
	str r0, [r4, #0x10]
_021E9238:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl ov01_021E9650
	add r3, r0, #0
	ldr r0, [r6, #0x58]
	mov r1, #1
	mov r2, #0
	bl ov01_021E8E98
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E9256:
	ldr r0, [r6, #0x58]
	mov r1, #1
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E934C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E926A:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	mov r1, #0xc
	add r5, r0, #0
	bl sub_0206214C
	add r0, r6, #0
	bl sub_02069F88
	cmp r0, #0
	beq _021E92A8
	add r0, r6, #0
	bl ov01_022057C4
	cmp r0, #0
	bne _021E92A8
	add r0, r5, #0
	bl sub_0205F8FC
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205F90C
	add r3, r6, #0
	add r2, r0, #0
	mov r0, #0xc
	add r1, r7, #0
	add r3, #0xe4
	bl ov01_02205990
_021E92A8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E92B0:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E934C
	add r0, r6, #0
	bl sub_02069F88
	cmp r0, #0
	beq _021E92EE
	add r0, r6, #0
	bl sub_02069D68
	add r7, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E934C
	add r0, r5, #0
	bl sub_020621C0
	add r0, r7, #0
	bl sub_020621C0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E92EE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E92F6:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	mov r1, #1
	bl sub_0205F690
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9308:
	mov r0, #0x96
	ldr r1, _021E936C ; =0x00456000
	ldr r2, [r6, #0x24]
	lsl r0, r0, #0xc
	bl sub_02023240
	ldr r1, [r6, #0x24]
	mov r0, #4
	bl sub_02019014
	str r0, [r4, #0x18]
	ldrh r2, [r4, #0x1e]
	mov r1, #0x14
	ldr r3, _021E9370 ; =0x02206428
	mul r1, r2
	add r1, r3, r1
	mov r2, #0x18
	bl sub_02019040
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E9336:
	ldr r0, [r4, #0x18]
	bl sub_020190E8
	cmp r0, #0
	beq _021E934C
	ldr r0, [r4, #0x18]
	bl sub_02019030
	mov r0, #1
	strh r0, [r4, #0x1c]
	str r0, [r4]
_021E934C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021E9362
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _021E9362
	add r4, #0xd
	ldr r0, [r6, #0x24]
	add r1, r4, #0
	bl ov01_021E95CC
_021E9362:
	mov r0, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9368: .word 0x0000FFFF
_021E936C: .word 0x00456000
_021E9370: .word 0x02206428
	thumb_func_end ov01_021E90E4

	thumb_func_start ov01_021E9374
ov01_021E9374: ; 0x021E9374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r6, r1, #0
	add r4, r0, #0
	ldr r0, [r6]
	cmp r0, #6
	bls _021E9384
	b _021E95B0
_021E9384:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9390: ; jump table
	.short _021E939E - _021E9390 - 2 ; case 0
	.short _021E94AA - _021E9390 - 2 ; case 1
	.short _021E94FA - _021E9390 - 2 ; case 2
	.short _021E951A - _021E9390 - 2 ; case 3
	.short _021E952E - _021E9390 - 2 ; case 4
	.short _021E9572 - _021E9390 - 2 ; case 5
	.short _021E95A2 - _021E9390 - 2 ; case 6
_021E939E:
	mov r3, #0
	str r3, [r6, #0x10]
	strb r3, [r6, #0xd]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x48
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	sub r2, r2, #2
	bl sub_02054A60
	mov r0, #1
	strb r0, [r6, #0xc]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x34]
	bl ov01_021FB904
	str r0, [sp, #0x1c]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, sp, #0x48
	bl sub_02054D10
	str r0, [sp, #0x18]
	mov r7, #0
	add r5, r0, #0
_021E93E0:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9412
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x30
	bl NARC_ReadWholeMember
	add r0, sp, #0x2c
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9412
	ldr r1, [sp, #0x18]
	lsl r5, r7, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	add r2, sp, #0x48
	add r3, sp, #0x2c
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r5]
	str r0, [sp, #0x20]
	b _021E941A
_021E9412:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E93E0
_021E941A:
	ldr r0, [sp, #0x18]
	bl FreeToHeap
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E9476
	ldr r0, [r4, #0x54]
	ldr r1, [sp, #0x20]
	bl ov01_021E8BAC
	add r7, r0, #0
	bne _021E9442
	mov r0, #1
	bl ov01_021E636C
	mov r0, #6
	str r0, [r6]
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9442:
	ldr r0, [r4, #0x34]
	bl ov01_021FB9E0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	bl ov01_021F3B38
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	bl ov01_021F3B3C
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	ldr r3, [sp, #0x20]
	bl ov01_021E8DE8
	b _021E9486
_021E9476:
	mov r0, #1
	bl ov01_021E636C
	mov r0, #6
	str r0, [r6]
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9486:
	ldr r0, [r4, #0x24]
	bl sub_0202360C
	strh r0, [r6, #0xe]
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	bl ov01_021EA1F4
	cmp r0, #0
	bne _021E94A2
	ldr r0, _021E95C8 ; =0x0000FFA0
	ldr r1, [r4, #0x24]
	bl sub_020234D0
_021E94A2:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E95B0
_021E94AA:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	mov r2, #9
	bl sub_02055BF0
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F30
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EA1F4
	cmp r0, #0
	bne _021E94DC
	mov r0, #1
	str r0, [r6, #0x10]
_021E94DC:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov01_021E9650
	add r3, r0, #0
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0
	bl ov01_021E8E98
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E95B0
_021E94FA:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E95B0
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	mov r1, #0
	bl sub_0205F690
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E95B0
_021E951A:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	mov r1, #0xd
	bl sub_0206214C
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E95B0
_021E952E:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E95B0
	add r0, r5, #0
	bl sub_020621C0
	add r0, r4, #0
	mov r1, #1
	bl ov01_02205790
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F30
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov01_021E9650
	add r3, r0, #0
	mov r1, #1
	ldr r0, [r4, #0x58]
	add r2, r1, #0
	bl ov01_021E8E98
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E95B0
_021E9572:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E95B0
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E95B0
	ldr r0, [r4, #0x24]
	bl sub_0202360C
	ldrh r1, [r6, #0xe]
	cmp r1, r0
	bne _021E95B0
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	mov r2, #1
	bl ov01_021E8ED0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E95A2:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E95B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E95B0:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021E95C0
	add r6, #0xd
	ldr r0, [r4, #0x24]
	add r1, r6, #0
	bl ov01_021E9610
_021E95C0:
	mov r0, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E95C8: .word 0x0000FFA0
	thumb_func_end ov01_021E9374

	thumb_func_start ov01_021E95CC
ov01_021E95CC: ; 0x021E95CC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	mov r4, #0xc
	add r1, r0, #0
	mul r1, r4
	cmp r1, #0x60
	bgt _021E960C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x60
	bls _021E95EC
	sub r0, #0x60
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021E95EC:
	add r0, r6, #0
	bl sub_0202360C
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021E9606
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl sub_020234D0
_021E9606:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021E960C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E95CC

	thumb_func_start ov01_021E9610
ov01_021E9610: ; 0x021E9610
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #4
	cmp r0, #0x60
	bge _021E964C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x60
	bls _021E962E
	sub r0, #0x60
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _021E9630
_021E962E:
	mov r4, #0x10
_021E9630:
	add r0, r6, #0
	bl sub_0202360C
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021E9646
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020234D0
_021E9646:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021E964C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021E9610

	thumb_func_start ov01_021E9650
ov01_021E9650: ; 0x021E9650
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r0, [r0, #0x34]
	add r5, r1, #0
	add r4, r2, #0
	bl ov01_021FB904
	add r1, r5, #0
	add r2, sp, #0
	bl NARC_ReadWholeMember
	cmp r4, #0
	add r0, sp, #0
	beq _021E96AA
	ldrb r0, [r0, #4]
	cmp r0, #4
	bhi _021E96A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E967E: ; jump table
	.short _021E96A0 - _021E967E - 2 ; case 0
	.short _021E9688 - _021E967E - 2 ; case 1
	.short _021E968E - _021E967E - 2 ; case 2
	.short _021E9694 - _021E967E - 2 ; case 3
	.short _021E969A - _021E967E - 2 ; case 4
_021E9688:
	add sp, #0x18
	ldr r0, _021E96E8 ; =0x00000604
	pop {r3, r4, r5, pc}
_021E968E:
	add sp, #0x18
	ldr r0, _021E96EC ; =0x00000607
	pop {r3, r4, r5, pc}
_021E9694:
	add sp, #0x18
	ldr r0, _021E96F0 ; =0x000005DB
	pop {r3, r4, r5, pc}
_021E969A:
	add sp, #0x18
	ldr r0, _021E96F4 ; =0x00000915
	pop {r3, r4, r5, pc}
_021E96A0:
	bl GF_AssertFail
	add sp, #0x18
	ldr r0, _021E96E8 ; =0x00000604
	pop {r3, r4, r5, pc}
_021E96AA:
	ldrb r0, [r0, #4]
	cmp r0, #4
	bhi _021E96DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E96BC: ; jump table
	.short _021E96DE - _021E96BC - 2 ; case 0
	.short _021E96C6 - _021E96BC - 2 ; case 1
	.short _021E96CC - _021E96BC - 2 ; case 2
	.short _021E96D2 - _021E96BC - 2 ; case 3
	.short _021E96D8 - _021E96BC - 2 ; case 4
_021E96C6:
	add sp, #0x18
	ldr r0, _021E96F8 ; =0x00000606
	pop {r3, r4, r5, pc}
_021E96CC:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E96D2:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E96D8:
	add sp, #0x18
	ldr r0, _021E96FC ; =0x00000916
	pop {r3, r4, r5, pc}
_021E96DE:
	bl GF_AssertFail
	ldr r0, _021E96F8 ; =0x00000606
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E96E8: .word 0x00000604
_021E96EC: .word 0x00000607
_021E96F0: .word 0x000005DB
_021E96F4: .word 0x00000915
_021E96F8: .word 0x00000606
_021E96FC: .word 0x00000916
	thumb_func_end ov01_021E9650

	thumb_func_start ov01_021E9700
ov01_021E9700: ; 0x021E9700
	ldr r1, _021E9718 ; =0x0000FFFF
	cmp r0, #0x3d
	beq _021E970C
	cmp r0, #0xe0
	beq _021E9710
	b _021E9712
_021E970C:
	mov r1, #0
	b _021E9712
_021E9710:
	mov r1, #1
_021E9712:
	add r0, r1, #0
	bx lr
	nop
_021E9718: .word 0x0000FFFF
	thumb_func_end ov01_021E9700

	thumb_func_start ov01_021E971C
ov01_021E971C: ; 0x021E971C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #5
	bls _021E972E
	b _021E98E0
_021E972E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E973A: ; jump table
	.short _021E9746 - _021E973A - 2 ; case 0
	.short _021E9806 - _021E973A - 2 ; case 1
	.short _021E9846 - _021E973A - 2 ; case 2
	.short _021E9866 - _021E973A - 2 ; case 3
	.short _021E988E - _021E973A - 2 ; case 4
	.short _021E98B4 - _021E973A - 2 ; case 5
_021E9746:
	ldr r3, _021E98E8 ; =0x02206408
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r5, #2
	bne _021E9770
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r2, r2, #2
	mov r3, #0
	bl sub_02054A60
	b _021E9788
_021E9770:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r3, r2, #0
	bl sub_02054A60
_021E9788:
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x20
	mov r2, #4
	add r3, sp, #0x30
	bl sub_02054B74
	cmp r0, #0
	beq _021E97D6
	ldr r0, [r6, #0x34]
	bl ov01_021FB9E0
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov01_021F3B38
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov01_021F3B3C
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	ldr r3, [sp, #0x18]
	mov r2, #2
	bl ov01_021E8DE8
	b _021E97E0
_021E97D6:
	bl GF_AssertFail
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E97E0:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E97FA
	add r0, r5, #0
	mov r1, #0x49
	bl sub_0206214C
	b _021E97FE
_021E97FA:
	bl GF_AssertFail
_021E97FE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E9806:
	mov r0, #1
	bl ov01_021E636C
	ldr r0, [r6, #0x58]
	ldr r3, _021E98EC ; =0x00000614
	mov r1, #2
	mov r2, #0
	bl ov01_021E8E98
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r6, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E983A
	cmp r5, #3
	bne _021E9830
	mov r1, #0xb
	b _021E9832
_021E9830:
	mov r1, #0xa
_021E9832:
	add r0, r6, #0
	bl sub_0206214C
	b _021E983E
_021E983A:
	bl GF_AssertFail
_021E983E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E9846:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E98E0
	add r0, r5, #0
	mov r1, #0x4a
	bl sub_0206214C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E9866:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r6, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E98E0
	cmp r5, #3
	bne _021E987E
	mov r1, #0xb
	b _021E9880
_021E987E:
	mov r1, #0xa
_021E9880:
	add r0, r6, #0
	bl sub_0206214C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E988E:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r7, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E98E0
	add r0, r7, #0
	bl sub_020621C0
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_02205790
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E98B4:
	ldr r0, [r6, #0x58]
	mov r1, #2
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E98E0
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E98E0
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	mov r2, #2
	bl ov01_021E8ED0
	ldr r0, _021E98EC ; =0x00000614
	mov r1, #0
	bl sub_02006154
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E98E0:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E98E8: .word 0x02206408
_021E98EC: .word 0x00000614
	thumb_func_end ov01_021E971C

	thumb_func_start ov01_021E98F0
ov01_021E98F0: ; 0x021E98F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #4
	bls _021E9902
	b _021E9AAC
_021E9902:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E990E: ; jump table
	.short _021E9918 - _021E990E - 2 ; case 0
	.short _021E99DA - _021E990E - 2 ; case 1
	.short _021E9A3C - _021E990E - 2 ; case 2
	.short _021E9A62 - _021E990E - 2 ; case 3
	.short _021E9A80 - _021E990E - 2 ; case 4
_021E9918:
	ldr r3, _021E9AB4 ; =0x02206418
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r5, #2
	bne _021E9942
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x34
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r2, r2, #2
	mov r3, #0
	bl sub_02054A60
	b _021E995A
_021E9942:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x34
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r3, r2, #0
	bl sub_02054A60
_021E995A:
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x24
	mov r2, #4
	add r3, sp, #0x34
	bl sub_02054B74
	cmp r0, #0
	beq _021E99AA
	ldr r0, [r6, #0x34]
	bl ov01_021FB9E0
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl ov01_021F3B38
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	bl ov01_021F3B3C
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	ldr r3, [sp, #0x1c]
	mov r2, #2
	bl ov01_021E8DE8
	b _021E99B4
_021E99AA:
	bl GF_AssertFail
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E99B4:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E99CE
	add r0, r5, #0
	mov r1, #0x49
	bl sub_0206214C
	b _021E99D2
_021E99CE:
	bl GF_AssertFail
_021E99D2:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E99DA:
	ldr r0, [r6, #0x58]
	ldr r3, _021E9AB8 ; =0x00000614
	mov r1, #2
	mov r2, #0
	bl ov01_021E8E98
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r7, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E9A30
	cmp r5, #2
	bne _021E99FE
	mov r5, #0xa
	b _021E9A00
_021E99FE:
	mov r5, #0xb
_021E9A00:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0206214C
	add r0, r6, #0
	bl sub_02069F88
	cmp r0, #0
	beq _021E9A34
	add r0, r7, #0
	bl sub_0205F8FC
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_0205F90C
	add r6, #0xe4
	add r2, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r3, r6, #0
	bl ov01_02205990
	b _021E9A34
_021E9A30:
	bl GF_AssertFail
_021E9A34:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E9A3C:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062108
	cmp r0, #1
	bne _021E9AAC
	add r0, r5, #0
	mov r1, #0x4a
	bl sub_0206214C
	mov r0, #0
	bl ov01_021E636C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E9A62:
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E9AAC
	add r0, r5, #0
	bl sub_020621C0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E9A80:
	ldr r0, [r6, #0x58]
	mov r1, #2
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E9AAC
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E9AAC
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	mov r2, #2
	bl ov01_021E8ED0
	ldr r0, _021E9AB8 ; =0x00000614
	mov r1, #0
	bl sub_02006154
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9AAC:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E9AB4: .word 0x02206418
_021E9AB8: .word 0x00000614
	thumb_func_end ov01_021E98F0

	thumb_func_start ov01_021E9ABC
ov01_021E9ABC: ; 0x021E9ABC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205064C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050650
	add r4, r0, #0
	ldrb r1, [r4]
	ldr r0, [r5, #0x58]
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E9AE4
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E9AE4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E9ABC

	thumb_func_start ov01_021E9AE8
ov01_021E9AE8: ; 0x021E9AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r7, r0, #0
	str r3, [sp, #0x18]
	mov r0, #3
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, sp, #0x44
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	sub r2, r3, #2
	mov r3, #0
	bl sub_02054A60
	ldr r0, [r7, #0x34]
	bl ov01_021FB904
	add r6, r0, #0
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r7, #0
	add r2, r1, #0
	add r3, sp, #0x44
	bl sub_02054D10
	mov r4, #0
	str r0, [sp, #0x1c]
	str r4, [sp, #0x24]
	add r5, r0, #0
_021E9B28:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9B5A
	add r0, r6, #0
	add r2, sp, #0x2c
	bl NARC_ReadWholeMember
	add r0, sp, #0x28
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9B5A
	ldr r1, [sp, #0x1c]
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r0, r7, #0
	add r2, sp, #0x44
	add r3, sp, #0x28
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r4]
	str r0, [sp, #0x20]
	b _021E9B62
_021E9B5A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E9B28
_021E9B62:
	ldr r0, [sp, #0x1c]
	bl FreeToHeap
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E9BB0
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x20]
	bl ov01_021E8BAC
	add r5, r0, #0
	beq _021E9BB4
	ldr r0, [r7, #0x34]
	bl ov01_021FB9E0
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	bl ov01_021F3B38
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	bl ov01_021F3B3C
	str r4, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x54]
	ldr r1, [r7, #0x58]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x20]
	bl ov01_021E8DE8
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_021E9BB0:
	bl GF_AssertFail
_021E9BB4:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E9AE8

	thumb_func_start ov01_021E9BB8
ov01_021E9BB8: ; 0x021E9BB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r1, #0
	bl ov01_021E8F30
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov01_021E9650
	add r3, r0, #0
	ldr r0, [r5, #0x58]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021E8E98
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E9BB8

	thumb_func_start ov01_021E9BDC
ov01_021E9BDC: ; 0x021E9BDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r1, #0
	bl ov01_021E8F30
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov01_021E9650
	add r3, r0, #0
	ldr r0, [r5, #0x58]
	add r1, r4, #0
	mov r2, #1
	bl ov01_021E8E98
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021E9BDC

	thumb_func_start ov01_021E9C00
ov01_021E9C00: ; 0x021E9C00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #1
	bl AllocFromHeapAtEnd
	add r2, r0, #0
	strb r4, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _021E9C1C ; =ov01_021E9ABC
	bl sub_02050530
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9C1C: .word ov01_021E9ABC
	thumb_func_end ov01_021E9C00

	thumb_func_start ov01_021E9C20
ov01_021E9C20: ; 0x021E9C20
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x54]
	ldr r1, [r3, #0x58]
	ldr r3, _021E9C2C ; =ov01_021E8ED0
	bx r3
	.balign 4, 0
_021E9C2C: .word ov01_021E8ED0
	thumb_func_end ov01_021E9C20

	thumb_func_start ov01_021E9C30
ov01_021E9C30: ; 0x021E9C30
	push {r3, lr}
	mov r0, #4
	mov r1, #8
	bl AllocFromHeapAtEnd
	mov r1, #0
	strb r1, [r0]
	pop {r3, pc}
	thumb_func_end ov01_021E9C30

	thumb_func_start ov01_021E9C40
ov01_021E9C40: ; 0x021E9C40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	bl sub_0205064C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050650
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #8
	bls _021E9C5C
	b _021E9ECC
_021E9C5C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9C68: ; jump table
	.short _021E9C7A - _021E9C68 - 2 ; case 0
	.short _021E9DAE - _021E9C68 - 2 ; case 1
	.short _021E9DCC - _021E9C68 - 2 ; case 2
	.short _021E9DEA - _021E9C68 - 2 ; case 3
	.short _021E9E04 - _021E9C68 - 2 ; case 4
	.short _021E9E28 - _021E9C68 - 2 ; case 5
	.short _021E9E46 - _021E9C68 - 2 ; case 6
	.short _021E9E58 - _021E9C68 - 2 ; case 7
	.short _021E9E9C - _021E9C68 - 2 ; case 8
_021E9C7A:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [r6, #0x10]
	strb r0, [r6, #0xd]
	ldr r0, [r4, #0x24]
	bl sub_0202360C
	strh r0, [r6, #0xe]
	ldr r0, _021E9EE4 ; =0x0000FFA0
	ldr r1, [r4, #0x24]
	bl sub_020234D0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r3, _021E9EE8 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200FA24
	mov r0, #1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	cmp r0, #1
	bne _021E9D88
	mov r1, #1
	strb r1, [r6, #0xc]
	mov r2, #3
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #0x24]
	str r1, [sp, #4]
	add r0, sp, #0x4c
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	ldr r3, [sp, #0x24]
	sub r2, r2, #4
	bl sub_02054A60
	ldr r0, [r4, #0x34]
	bl ov01_021FB904
	str r0, [sp, #0x1c]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, sp, #0x4c
	bl sub_02054D10
	str r0, [sp, #0x18]
	mov r7, #0
	add r5, r0, #0
_021E9CF8:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9D2A
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x34
	bl NARC_ReadWholeMember
	add r0, sp, #0x30
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9D2A
	ldr r1, [sp, #0x18]
	lsl r5, r7, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	add r2, sp, #0x4c
	add r3, sp, #0x30
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r5]
	str r0, [sp, #0x20]
	b _021E9D32
_021E9D2A:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E9CF8
_021E9D32:
	ldr r0, [sp, #0x18]
	bl FreeToHeap
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E9D88
	ldr r0, [r4, #0x54]
	ldr r1, [sp, #0x20]
	bl ov01_021E8BAC
	add r7, r0, #0
	bne _021E9D50
	add sp, #0x5c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E9D50:
	ldr r0, [r4, #0x34]
	bl ov01_021FB9E0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	bl ov01_021F3B38
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	bl ov01_021F3B3C
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	ldr r3, [sp, #0x20]
	bl ov01_021E8DE8
	mov r0, #4
	str r0, [r6]
	b _021E9ECC
_021E9D88:
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	cmp r0, #1
	bne _021E9DA0
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl sub_0205F690
	mov r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9DA0:
	ldr r0, [sp, #0x28]
	mov r1, #0
	bl sub_0205F690
	mov r0, #3
	str r0, [r6]
	b _021E9ECC
_021E9DAE:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	mov r1, #0
	bl sub_0205F690
	add r0, r5, #0
	mov r1, #0xd
	bl sub_0206214C
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9DCC:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E9ECC
	add r0, r5, #0
	bl sub_020621C0
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9DEA:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E9ECC
	ldr r0, [r4, #0x24]
	bl sub_0202360C
	ldrh r1, [r6, #0xe]
	cmp r1, r0
	bne _021E9ECC
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9E04:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F30
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov01_021E9650
	add r3, r0, #0
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0
	bl ov01_021E8E98
	mov r0, #5
	str r0, [r6]
	b _021E9ECC
_021E9E28:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E9ECC
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	mov r1, #0
	bl sub_0205F690
	mov r0, #6
	str r0, [r6]
	b _021E9ECC
_021E9E46:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	mov r1, #0xd
	bl sub_0206214C
	mov r0, #7
	str r0, [r6]
	b _021E9ECC
_021E9E58:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021E9ECC
	add r0, r5, #0
	bl sub_020621C0
	add r0, r4, #0
	mov r1, #1
	bl ov01_02205790
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F30
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov01_021E9650
	add r3, r0, #0
	mov r1, #1
	ldr r0, [r4, #0x58]
	add r2, r1, #0
	bl ov01_021E8E98
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9E9C:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ov01_021E8F10
	cmp r0, #0
	beq _021E9ECC
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E9ECC
	ldr r0, [r4, #0x24]
	bl sub_0202360C
	ldrh r1, [r6, #0xe]
	cmp r1, r0
	bne _021E9ECC
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	mov r2, #1
	bl ov01_021E8ED0
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9ECC:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021E9EDC
	add r6, #0xd
	ldr r0, [r4, #0x24]
	add r1, r6, #0
	bl ov01_021E9610
_021E9EDC:
	mov r0, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E9EE4: .word 0x0000FFA0
_021E9EE8: .word 0x00007FFF
	thumb_func_end ov01_021E9C40

	thumb_func_start ov01_021E9EEC
ov01_021E9EEC: ; 0x021E9EEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0205064C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050650
	add r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _021E9F0C
	cmp r0, #1
	beq _021E9F48
	b _021E9F5C
_021E9F0C:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	mov r1, #1
	bl sub_0205F690
	mov r0, #0
	str r0, [r5, #4]
	strb r0, [r5, #1]
	ldr r0, _021E9F70 ; =0x00000602
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021E9F74 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200FA24
	mov r0, #1
	str r0, [r5, #4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E9F5C
_021E9F48:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E9F5C
	add r0, r5, #0
	bl FreeToHeap
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E9F5C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E9F6A
	ldr r0, [r4, #0x24]
	add r1, r5, #1
	bl ov01_021E95CC
_021E9F6A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E9F70: .word 0x00000602
_021E9F74: .word 0x00007FFF
	thumb_func_end ov01_021E9EEC

	thumb_func_start ov01_021E9F78
ov01_021E9F78: ; 0x021E9F78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_0205064C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050650
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021E9F98
	cmp r0, #1
	beq _021E9FCA
	b _021E9FDE
_021E9F98:
	mov r0, #0
	str r0, [r4, #4]
	strb r0, [r4, #1]
	ldr r0, _021E9FF4 ; =0x00000602
	bl PlaySE
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0x10
	add r3, r1, #0
	bl sub_02055BF0
	mov r0, #1
	str r0, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021E9FDE
_021E9FCA:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021E9FDE
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E9FDE:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E9FEC
	ldr r0, [r6, #0x24]
	add r1, r4, #1
	bl ov01_021E95CC
_021E9FEC:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E9FF4: .word 0x00000602
	thumb_func_end ov01_021E9F78

	thumb_func_start ov01_021E9FF8
ov01_021E9FF8: ; 0x021E9FF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x10]
	bl sub_0205064C
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02050650
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021EA110
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA01E: ; jump table
	.short _021EA026 - _021EA01E - 2 ; case 0
	.short _021EA0B4 - _021EA01E - 2 ; case 1
	.short _021EA0D2 - _021EA01E - 2 ; case 2
	.short _021EA0F0 - _021EA01E - 2 ; case 3
_021EA026:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x40]
	bl sub_0205C654
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #1
	bne _021EA048
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl sub_0205F690
	mov r0, #1
	b _021EA052
_021EA048:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_0205F690
	mov r0, #3
_021EA052:
	strb r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	strb r0, [r4, #1]
	ldr r0, [r5, #0x24]
	bl sub_0202360C
	strh r0, [r4, #2]
	ldr r0, _021EA124 ; =0x0000FFA0
	ldr r1, [r5, #0x24]
	bl sub_020234D0
	cmp r7, #3
	bhi _021EA092
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA07A: ; jump table
	.short _021EA082 - _021EA07A - 2 ; case 0
	.short _021EA086 - _021EA07A - 2 ; case 1
	.short _021EA08A - _021EA07A - 2 ; case 2
	.short _021EA08E - _021EA07A - 2 ; case 3
_021EA082:
	mov r6, #3
	b _021EA096
_021EA086:
	mov r6, #5
	b _021EA096
_021EA08A:
	mov r6, #7
	b _021EA096
_021EA08E:
	mov r6, #0x27
	b _021EA096
_021EA092:
	bl GF_AssertFail
_021EA096:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r6, #0
	bl sub_02055BF0
	mov r0, #1
	str r0, [r4, #4]
	b _021EA110
_021EA0B4:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	add r6, r0, #0
	mov r1, #0
	bl sub_0205F690
	add r0, r6, #0
	mov r1, #0xd
	bl sub_0206214C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EA110
_021EA0D2:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	add r6, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021EA110
	add r0, r6, #0
	bl sub_020621C0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EA110
_021EA0F0:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021EA110
	ldr r0, [r5, #0x24]
	bl sub_0202360C
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021EA110
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EA110:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EA11E
	ldr r0, [r5, #0x24]
	add r1, r4, #1
	bl ov01_021E9610
_021EA11E:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA124: .word 0x0000FFA0
	thumb_func_end ov01_021E9FF8

	thumb_func_start ov01_021EA128
ov01_021EA128: ; 0x021EA128
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	bl sub_0205064C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02050650
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021EA1EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA14E: ; jump table
	.short _021EA156 - _021EA14E - 2 ; case 0
	.short _021EA19E - _021EA14E - 2 ; case 1
	.short _021EA1BC - _021EA14E - 2 ; case 2
	.short _021EA1DA - _021EA14E - 2 ; case 3
_021EA156:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C654
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021EA178
	add r0, r6, #0
	mov r1, #1
	bl sub_0205F690
	mov r0, #1
	b _021EA182
_021EA178:
	add r0, r6, #0
	mov r1, #0
	bl sub_0205F690
	mov r0, #3
_021EA182:
	strb r0, [r4]
	mov r1, #0
	mov r2, #1
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r3, r2, #0
	bl sub_02055BF0
	b _021EA1EE
_021EA19E:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	mov r1, #0
	bl sub_0205F690
	add r0, r5, #0
	mov r1, #0xd
	bl sub_0206214C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EA1EE
_021EA1BC:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_02062198
	cmp r0, #1
	bne _021EA1EE
	add r0, r5, #0
	bl sub_020621C0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EA1EE
_021EA1DA:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021EA1EE
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EA1EE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EA128

	thumb_func_start ov01_021EA1F4
ov01_021EA1F4: ; 0x021EA1F4
	push {r4, lr}
	ldr r0, [r0, #0x20]
	add r4, r1, #0
	ldr r0, [r0]
	bl sub_0203B58C
	cmp r0, #0
	beq _021EA214
	cmp r4, #0x3f
	beq _021EA210
	cmp r4, #0xa2
	beq _021EA210
	cmp r4, #0xc5
	bne _021EA21C
_021EA210:
	mov r0, #1
	pop {r4, pc}
_021EA214:
	cmp r4, #0x7c
	bne _021EA21C
	mov r0, #1
	pop {r4, pc}
_021EA21C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021EA1F4

	thumb_func_start ov01_021EA220
ov01_021EA220: ; 0x021EA220
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #5
	blo _021EA22E
	bl GF_AssertFail
_021EA22E:
	mov r0, #4
	mov r1, #0x14
	bl AllocFromHeap
	add r4, r0, #0
	ldr r0, _021EA280 ; =0x02206450
	lsl r1, r6, #2
	ldr r0, [r0, r1]
	str r5, [r4, #0xc]
	add r1, r4, #4
	bl ov01_021EA3E0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	bl GF_RTC_TimeToSec
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	ldr r5, [r4]
	mov r1, #0
	cmp r5, #0
	bls _021EA272
	ldr r2, [r4, #4]
_021EA260:
	ldr r0, [r2]
	cmp r0, r3
	bls _021EA26A
	str r1, [r4, #8]
	b _021EA272
_021EA26A:
	add r1, r1, #1
	add r2, #0x30
	cmp r1, r5
	blo _021EA260
_021EA272:
	mov r0, #1
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov01_021EA398
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EA280: .word 0x02206450
	thumb_func_end ov01_021EA220

	thumb_func_start ov01_021EA284
ov01_021EA284: ; 0x021EA284
	push {r4, lr}
	add r4, r0, #0
	bne _021EA28E
	bl GF_AssertFail
_021EA28E:
	ldr r0, [r4]
	add r0, r0, #4
	bl ov01_021EA564
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov01_021EA284

	thumb_func_start ov01_021EA2A4
ov01_021EA2A4: ; 0x021EA2A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _021EA2AE
	bl GF_AssertFail
_021EA2AE:
	bl GF_RTC_TimeToSec
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	ldr r1, [r4]
	cmp r1, #1
	bls _021EA2FC
	ldr r1, [r4, #8]
	sub r5, r1, #1
	bmi _021EA2CE
	mov r2, #0x30
	ldr r3, [r4, #4]
	mul r2, r5
	ldr r2, [r3, r2]
	b _021EA2D0
_021EA2CE:
	mov r2, #0
_021EA2D0:
	mov r3, #0x30
	ldr r5, [r4, #4]
	mul r3, r1
	ldr r1, [r5, r3]
	cmp r0, r1
	bge _021EA2E0
	cmp r0, r2
	bge _021EA2FC
_021EA2E0:
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	blo _021EA2F0
	mov r0, #0
	str r0, [r4, #8]
_021EA2F0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EA2FC
	add r0, r4, #0
	bl ov01_021EA398
_021EA2FC:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA2A4

	thumb_func_start ov01_021EA300
ov01_021EA300: ; 0x021EA300
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r6, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r7, r0, #0
_021EA30E:
	ldr r0, [sp, #4]
	ldrb r1, [r0, #4]
	mov r0, #1
	lsl r0, r4
	tst r0, r1
	beq _021EA33C
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	mov r2, #0xe
	mov r3, #0x10
	str r0, [sp]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021EAAB8
	ldrh r2, [r7, #6]
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021EAAE0
	b _021EA356
_021EA33C:
	mov r0, #0
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov01_021EAAB8
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov01_021EAAE0
_021EA356:
	add r4, r4, #1
	add r5, r5, #6
	add r7, r7, #2
	cmp r4, #4
	blt _021EA30E
	ldr r1, [sp, #4]
	mov r2, #0
	ldrh r1, [r1, #0x26]
	add r0, r6, #0
	add r3, r2, #0
	bl ov01_021EAAF4
	ldr r1, [sp, #4]
	add r0, r6, #0
	ldrh r1, [r1, #0x28]
	mov r2, #1
	bl ov01_021EAB08
	ldr r1, [sp, #4]
	mov r2, #0
	ldrh r1, [r1, #0x2a]
	add r0, r6, #0
	add r3, r2, #0
	bl ov01_021EAB1C
	ldr r1, [sp, #4]
	add r0, r6, #0
	ldrh r1, [r1, #0x2c]
	mov r2, #1
	bl ov01_021EAB30
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EA300

	thumb_func_start ov01_021EA398
ov01_021EA398: ; 0x021EA398
	add r3, r0, #0
	ldr r1, [r3, #8]
	mov r0, #0x30
	mul r0, r1
	ldr r2, [r3, #4]
	ldr r1, [r3, #0xc]
	ldr r3, _021EA3AC ; =ov01_021EA300
	add r0, r2, r0
	bx r3
	nop
_021EA3AC: .word ov01_021EA300
	thumb_func_end ov01_021EA398

	thumb_func_start ov01_021EA3B0
ov01_021EA3B0: ; 0x021EA3B0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	pop {r4, pc}
	thumb_func_end ov01_021EA3B0

	thumb_func_start ov01_021EA3E0
ov01_021EA3E0: ; 0x021EA3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r2, r0, #0
	str r1, [sp]
	mov r0, #4
	add r1, r2, #0
	bl sub_0201A3A4
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp, #8]
	add r5, sp, #0x11c
	mov r6, #1
	mov r7, #2
	add r4, r1, #0
_021EA400:
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	ldrsb r1, [r5, r4]
	cmp r1, #0x45
	bne _021EA41A
	ldrsb r1, [r5, r6]
	cmp r1, #0x4f
	bne _021EA41A
	ldrsb r1, [r5, r7]
	cmp r1, #0x46
	beq _021EA468
_021EA41A:
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	add r1, r5, #0
	mov r2, #0xd
	bl Ascii_GetDelim
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
_021EA468:
	mov r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0x45
	bne _021EA400
	mov r1, #1
	ldrsb r1, [r5, r1]
	cmp r1, #0x4f
	bne _021EA400
	mov r1, #2
	ldrsb r1, [r5, r1]
	cmp r1, #0x46
	bne _021EA400
	ldr r0, [sp, #8]
	mov r1, #0x30
	add r4, r0, #0
	mul r4, r1
	mov r0, #4
	add r1, r4, #0
	bl AllocFromHeap
	ldr r1, [sp]
	add r2, r4, #0
	str r0, [r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r1, #0
	str r1, [sp, #0x18]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	cmp r1, #0
	ble _021EA54E
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x10]
_021EA4AC:
	ldr r1, [sp]
	mov r2, #0xd
	ldr r5, [r1]
	ldr r1, [sp, #0x10]
	add r4, r5, r1
	add r1, sp, #0x11c
	bl Ascii_GetDelim
	str r0, [sp, #4]
	add r0, sp, #0x11c
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl Ascii_GetDelim
	add r0, sp, #0x1c
	bl Ascii_StrToL
	ldr r1, [sp, #0x10]
	add r6, r4, #0
	str r0, [r5, r1]
	add r0, r4, #6
	mov r7, #0
	add r6, #0xe
	str r0, [sp, #0xc]
	add r5, r4, #0
_021EA4DE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r6, #0
	bl ov01_021EA578
	str r0, [sp, #4]
	ldrh r1, [r5, #6]
	ldr r0, _021EA560 ; =0x0000FFFF
	cmp r1, r0
	beq _021EA4FE
	mov r0, #1
	ldrb r1, [r4, #4]
	lsl r0, r7
	orr r0, r1
	strb r0, [r4, #4]
	b _021EA502
_021EA4FE:
	mov r0, #0
	strh r0, [r5, #6]
_021EA502:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, r0, #2
	add r6, r6, #6
	add r5, r5, #2
	str r0, [sp, #0xc]
	cmp r7, #4
	blt _021EA4DE
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x26
	bl ov01_021EA668
	add r1, r4, #0
	add r1, #0x28
	bl ov01_021EA668
	add r1, r4, #0
	add r1, #0x2a
	bl ov01_021EA668
	add r4, #0x2c
	add r1, r4, #0
	bl ov01_021EA668
	add r1, sp, #0x11c
	mov r2, #0xd
	bl Ascii_GetDelim
	ldr r1, [sp, #0x10]
	add r1, #0x30
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r2, r1, #1
	ldr r1, [sp, #8]
	str r2, [sp, #0x18]
	cmp r2, r1
	blt _021EA4AC
_021EA54E:
	ldr r1, [sp, #0x14]
	mov r0, #4
	bl FreeToHeapExplicit
	ldr r0, [sp, #8]
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	nop
_021EA560: .word 0x0000FFFF
	thumb_func_end ov01_021EA3E0

	thumb_func_start ov01_021EA564
ov01_021EA564: ; 0x021EA564
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA564

	thumb_func_start ov01_021EA578
ov01_021EA578: ; 0x021EA578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	str r1, [sp, #4]
	add r7, r2, #0
	add r1, sp, #0x11c
	mov r2, #0xd
	bl Ascii_GetDelim
	str r0, [sp]
	add r0, sp, #0x11c
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl Ascii_GetDelim
	add r4, r0, #0
	add r0, sp, #0x1c
	bl Ascii_StrToL
	cmp r0, #1
	bne _021EA650
	mov r6, #0
	add r5, sp, #8
_021EA5A6:
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl Ascii_GetDelim
	add r4, r0, #0
	add r0, sp, #0x1c
	bl Ascii_StrToL
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #3
	blt _021EA5A6
	add r1, sp, #8
	ldrh r0, [r1, #4]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsl r0, r0, #0xa
	mov r6, #0
	lsl r1, r1, #5
	orr r1, r2
	orr r1, r0
	ldr r0, [sp, #4]
	add r5, sp, #0x10
	strh r1, [r0]
_021EA5DA:
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl Ascii_GetDelim
	add r4, r0, #0
	add r0, sp, #0x1c
	bl Ascii_StrToL
	add r6, r6, #1
	stmia r5!, {r0}
	cmp r6, #3
	blt _021EA5DA
	ldr r0, [sp, #0x10]
	strh r0, [r7]
	ldr r0, [sp, #0x14]
	strh r0, [r7, #2]
	ldr r0, [sp, #0x18]
	strh r0, [r7, #4]
	mov r0, #0
	ldrsh r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021EA60E
	strh r0, [r7]
_021EA60E:
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _021EA660 ; =0xFFFFF000
	cmp r1, r0
	bge _021EA61A
	strh r0, [r7]
_021EA61A:
	mov r0, #2
	ldrsh r2, [r7, r0]
	lsl r1, r0, #0xb
	cmp r2, r1
	ble _021EA628
	lsl r0, r0, #0xb
	strh r0, [r7, #2]
_021EA628:
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _021EA660 ; =0xFFFFF000
	cmp r1, r0
	bge _021EA634
	strh r0, [r7, #2]
_021EA634:
	mov r0, #4
	ldrsh r2, [r7, r0]
	lsl r1, r0, #0xa
	cmp r2, r1
	ble _021EA642
	lsl r0, r0, #0xa
	strh r0, [r7, #4]
_021EA642:
	mov r0, #4
	ldrsh r1, [r7, r0]
	ldr r0, _021EA660 ; =0xFFFFF000
	cmp r1, r0
	bge _021EA656
	strh r0, [r7, #4]
	b _021EA656
_021EA650:
	ldr r1, _021EA664 ; =0x0000FFFF
	ldr r0, [sp, #4]
	strh r1, [r0]
_021EA656:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	nop
_021EA660: .word 0xFFFFF000
_021EA664: .word 0x0000FFFF
	thumb_func_end ov01_021EA578

	thumb_func_start ov01_021EA668
ov01_021EA668: ; 0x021EA668
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	str r1, [sp, #4]
	add r1, sp, #0x10c
	add r1, #2
	mov r2, #0xd
	bl Ascii_GetDelim
	add r6, sp, #0x10c
	add r7, sp, #0xc
	str r0, [sp]
	add r6, #2
	mov r4, #0
	add r5, sp, #8
	add r7, #2
_021EA688:
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x2c
	bl Ascii_GetDelim
	add r6, r0, #0
	add r0, r7, #0
	bl Ascii_StrToL
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _021EA688
	add r0, sp, #8
	ldrh r1, [r0, #4]
	lsl r2, r1, #0xa
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsl r0, r0, #5
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA668

	thumb_func_start LoadAreaOrDungeonLightTxt
LoadAreaOrDungeonLightTxt: ; 0x021EA6C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r6, r1, #0
	cmp r4, #5
	blo _021EA6D4
	bl GF_AssertFail
_021EA6D4:
	ldr r0, _021EA720 ; =0x02206450
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl ov01_021EA3E0
	add r4, r0, #0
	bl GF_RTC_TimeToSec
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	mov r1, #0
	cmp r4, #0
	ble _021EA706
	ldr r2, [sp]
_021EA6F4:
	ldr r0, [r2]
	cmp r0, r3
	bls _021EA6FE
	add r5, r1, #0
	b _021EA706
_021EA6FE:
	add r1, r1, #1
	add r2, #0x30
	cmp r1, r4
	blt _021EA6F4
_021EA706:
	mov r0, #0x30
	ldr r1, [sp]
	mul r0, r5
	add r0, r1, r0
	add r1, r6, #0
	bl ov01_021EA300
	add r0, sp, #0
	bl ov01_021EA564
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EA720: .word 0x02206450
	thumb_func_end LoadAreaOrDungeonLightTxt

	thumb_func_start ov01_021EA724
ov01_021EA724: ; 0x021EA724
	push {r4, lr}
	mov r0, #4
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	bne _021EA736
	bl GF_AssertFail
_021EA736:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA724

	thumb_func_start ov01_021EA73C
ov01_021EA73C: ; 0x021EA73C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	add r0, sp, #4
	add r5, r1, #0
	bl FS_InitFile
	add r0, sp, #4
	add r1, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _021EA7D8
	add r1, sp, #0
	add r0, sp, #4
	add r1, #2
	mov r2, #2
	bl FS_ReadFile
	cmp r0, #0
	bge _021EA76A
	bl GF_AssertFail
_021EA76A:
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #2
	bl FS_ReadFile
	cmp r0, #0
	bge _021EA77C
	bl GF_AssertFail
_021EA77C:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r6, r1, #2
	lsl r4, r0, #2
	mov r0, #4
	add r1, r6, #0
	bl AllocFromHeap
	str r0, [r5]
	cmp r0, #0
	bne _021EA798
	bl GF_AssertFail
_021EA798:
	mov r0, #4
	add r1, r4, #0
	bl AllocFromHeap
	str r0, [r5, #4]
	cmp r0, #0
	bne _021EA7AA
	bl GF_AssertFail
_021EA7AA:
	ldr r1, [r5]
	add r0, sp, #4
	add r2, r6, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _021EA7BC
	bl GF_AssertFail
_021EA7BC:
	ldr r1, [r5, #4]
	add r0, sp, #4
	add r2, r4, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _021EA7CE
	bl GF_AssertFail
_021EA7CE:
	add r0, sp, #4
	bl FS_CloseFile
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
_021EA7D8:
	bl GF_AssertFail
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021EA73C

	thumb_func_start ov01_021EA7E0
ov01_021EA7E0: ; 0x021EA7E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl FreeToHeap
	ldr r0, [r4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021EA7E0

	thumb_func_start ov01_021EA7F8
ov01_021EA7F8: ; 0x021EA7F8
	ldr r1, [r1]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	strh r0, [r2]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EA7F8

	thumb_func_start ov01_021EA804
ov01_021EA804: ; 0x021EA804
	push {r3, r4}
	lsl r4, r0, #2
	ldr r0, [r1]
	ldrh r0, [r0, r4]
	strh r0, [r2]
	ldr r0, [r1]
	add r0, r0, r4
	ldrh r0, [r0, #2]
	strh r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EA804

	thumb_func_start ov01_021EA81C
ov01_021EA81C: ; 0x021EA81C
	ldr r1, [r1, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
	thumb_func_end ov01_021EA81C

	thumb_func_start ov01_021EA824
ov01_021EA824: ; 0x021EA824
	push {r4, lr}
	mov r0, #4
	mov r1, #0x38
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x38
	bl MIi_CpuClear32
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA824

	thumb_func_start ov01_021EA840
ov01_021EA840: ; 0x021EA840
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA840

	thumb_func_start ov01_021EA854
ov01_021EA854: ; 0x021EA854
	ldr r0, [r0]
	bx lr
	thumb_func_end ov01_021EA854

	thumb_func_start ov01_021EA858
ov01_021EA858: ; 0x021EA858
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov01_021EA858

	thumb_func_start ov01_021EA85C
ov01_021EA85C: ; 0x021EA85C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021EA85C

	thumb_func_start ov01_021EA860
ov01_021EA860: ; 0x021EA860
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021EA860

	thumb_func_start ov01_021EA864
ov01_021EA864: ; 0x021EA864
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r0, r1
	beq _021EA870
	str r2, [r4]
_021EA870:
	mov r0, #2
	tst r0, r1
	beq _021EA878
	str r3, [r4, #4]
_021EA878:
	mov r0, #4
	tst r0, r1
	beq _021EA882
	ldr r0, [sp, #8]
	str r0, [r4, #8]
_021EA882:
	mov r0, #8
	tst r0, r1
	beq _021EA88C
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
_021EA88C:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl G3X_SetFog
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA864

	thumb_func_start ov01_021EA89C
ov01_021EA89C: ; 0x021EA89C
	push {r3, r4}
	mov r4, #0x10
	tst r4, r1
	beq _021EA8A6
	strh r2, [r0, #0x10]
_021EA8A6:
	mov r2, #0x20
	tst r1, r2
	beq _021EA8AE
	str r3, [r0, #0x14]
_021EA8AE:
	ldrh r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, _021EA8C0 ; =0x04000358
	str r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_021EA8C0: .word 0x04000358
	thumb_func_end ov01_021EA89C

	thumb_func_start ov01_021EA8C4
ov01_021EA8C4: ; 0x021EA8C4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x18
	mov r2, #0x20
	bl MIi_CpuCopy32
	add r4, #0x18
	add r0, r4, #0
	bl G3X_SetFogTable
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA8C4

	thumb_func_start ov01_021EA8E0
ov01_021EA8E0: ; 0x021EA8E0
	push {r4, lr}
	mov r0, #4
	mov r1, #0x48
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x48
	bl MIi_CpuClear32
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA8E0

	thumb_func_start ov01_021EA8FC
ov01_021EA8FC: ; 0x021EA8FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EA8FC

	thumb_func_start ov01_021EA910
ov01_021EA910: ; 0x021EA910
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r6, r0, #0
_021EA91E:
	mov r0, #1
	lsl r0, r4
	tst r0, r7
	beq _021EA938
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r4, #0
	bl NNS_G3dGlbLightVector
_021EA938:
	add r1, r4, #4
	mov r0, #1
	lsl r0, r1
	tst r0, r7
	beq _021EA94A
	ldrh r1, [r6, #0x18]
	add r0, r4, #0
	bl NNS_G3dGlbLightColor
_021EA94A:
	add r4, r4, #1
	add r5, r5, #6
	add r6, r6, #2
	cmp r4, #4
	blt _021EA91E
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r7
	beq _021EA96C
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldrh r0, [r0, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, [r2, #0x28]
	bl NNS_G3dGlbMaterialColorDiffAmb
_021EA96C:
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r7
	beq _021EA984
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldrh r0, [r0, #0x24]
	ldrh r1, [r1, #0x26]
	ldr r2, [r2, #0x2c]
	bl NNS_G3dGlbMaterialColorSpecEmi
_021EA984:
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r7, r0
	blt _021EA9AC
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x40]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x34]
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x38]
	ldr r3, [r3, #0x3c]
	bl NNS_G3dGlbPolygonAttr
_021EA9AC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EA910

	thumb_func_start ov01_021EA9B0
ov01_021EA9B0: ; 0x021EA9B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	lsl r0, r0, #8
	add r6, r1, #0
	tst r0, r4
	beq _021EA9C8
	ldrh r1, [r5, #0x20]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlDiffAll
_021EA9C8:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _021EA9D8
	ldrh r1, [r5, #0x22]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlAmbAll
_021EA9D8:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021EA9E8
	ldrh r1, [r5, #0x24]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlSpecAll
_021EA9E8:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021EA9F8
	ldrh r1, [r5, #0x26]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlEmiAll
_021EA9F8:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r4
	beq _021EAA08
	ldr r1, [r5, #0x30]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlLightEnableFlagAll
_021EAA08:
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r4
	beq _021EAA18
	ldr r1, [r5, #0x34]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlPolygonModeAll
_021EAA18:
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r4
	beq _021EAA28
	ldr r1, [r5, #0x38]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlCullModeAll
_021EAA28:
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r4
	beq _021EAA38
	ldr r1, [r5, #0x3c]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlPolygonIDAll
_021EAA38:
	mov r0, #1
	lsl r0, r0, #0x10
	tst r0, r4
	beq _021EAA48
	ldr r1, [r5, #0x40]
	add r0, r6, #0
	bl NNS_G3dMdlSetMdlAlphaAll
_021EAA48:
	mov r1, #2
	lsl r1, r1, #0x10
	add r0, r4, #0
	tst r0, r1
	beq _021EAA5E
	ldr r2, [r5, #0x44]
	lsr r1, r1, #2
	add r0, r6, #0
	and r1, r2
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
_021EAA5E:
	mov r1, #1
	lsl r1, r1, #0x12
	add r0, r4, #0
	tst r0, r1
	beq _021EAA74
	ldr r2, [r5, #0x44]
	lsr r1, r1, #4
	add r0, r6, #0
	and r1, r2
	bl NNS_G3dMdlSetMdlDepthTestCondAll
_021EAA74:
	mov r1, #2
	lsl r1, r1, #0x12
	add r0, r4, #0
	tst r0, r1
	beq _021EAA8A
	ldr r2, [r5, #0x44]
	lsr r1, r1, #6
	add r0, r6, #0
	and r1, r2
	bl NNS_G3dMdlSetMdl1DotAll
_021EAA8A:
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r4, #0
	tst r0, r1
	beq _021EAAA0
	ldr r2, [r5, #0x44]
	lsr r1, r1, #8
	add r0, r6, #0
	and r1, r2
	bl NNS_G3dMdlSetMdlFarClipAll
_021EAAA0:
	mov r1, #2
	lsl r1, r1, #0x14
	add r0, r4, #0
	tst r0, r1
	beq _021EAAB6
	ldr r2, [r5, #0x44]
	lsr r1, r1, #0xa
	add r0, r6, #0
	and r1, r2
	bl NNS_G3dMdlSetMdlXLDepthUpdateAll
_021EAAB6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021EA9B0

	thumb_func_start ov01_021EAAB8
ov01_021EAAB8: ; 0x021EAAB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	mul r4, r0
	strh r2, [r5, r4]
	add r2, r5, #2
	strh r3, [r2, r4]
	add r6, sp, #0
	mov r0, #0x10
	ldrsh r0, [r6, r0]
	add r3, r5, #4
	strh r0, [r3, r4]
	add r0, r1, #0
	ldrsh r1, [r5, r4]
	ldrsh r2, [r2, r4]
	ldrsh r3, [r3, r4]
	bl NNS_G3dGlbLightVector
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021EAAB8

	thumb_func_start ov01_021EAAE0
ov01_021EAAE0: ; 0x021EAAE0
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x18
	lsl r3, r1, #1
	strh r2, [r4, r3]
	add r0, r1, #0
	ldrh r1, [r4, r3]
	bl NNS_G3dGlbLightColor
	pop {r4, pc}
	thumb_func_end ov01_021EAAE0

	thumb_func_start ov01_021EAAF4
ov01_021EAAF4: ; 0x021EAAF4
	push {r3, lr}
	strh r1, [r0, #0x20]
	str r2, [r0, #0x28]
	cmp r3, #1
	bne _021EAB06
	mov r1, #1
	lsl r1, r1, #8
	bl ov01_021EA910
_021EAB06:
	pop {r3, pc}
	thumb_func_end ov01_021EAAF4

	thumb_func_start ov01_021EAB08
ov01_021EAB08: ; 0x021EAB08
	push {r3, lr}
	strh r1, [r0, #0x22]
	cmp r2, #1
	bne _021EAB18
	mov r1, #2
	lsl r1, r1, #8
	bl ov01_021EA910
_021EAB18:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAB08

	thumb_func_start ov01_021EAB1C
ov01_021EAB1C: ; 0x021EAB1C
	push {r3, lr}
	strh r1, [r0, #0x24]
	str r2, [r0, #0x2c]
	cmp r3, #1
	bne _021EAB2E
	mov r1, #1
	lsl r1, r1, #0xa
	bl ov01_021EA910
_021EAB2E:
	pop {r3, pc}
	thumb_func_end ov01_021EAB1C

	thumb_func_start ov01_021EAB30
ov01_021EAB30: ; 0x021EAB30
	push {r3, lr}
	strh r1, [r0, #0x26]
	cmp r2, #1
	bne _021EAB40
	mov r1, #2
	lsl r1, r1, #0xa
	bl ov01_021EA910
_021EAB40:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAB30

	thumb_func_start ov01_021EAB44
ov01_021EAB44: ; 0x021EAB44
	push {r3, lr}
	str r1, [r0, #0x34]
	cmp r2, #1
	bne _021EAB54
	mov r1, #2
	lsl r1, r1, #0xc
	bl ov01_021EA910
_021EAB54:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAB44

	thumb_func_start ov01_021EAB58
ov01_021EAB58: ; 0x021EAB58
	push {r3, lr}
	str r1, [r0, #0x38]
	cmp r2, #1
	bne _021EAB68
	mov r1, #1
	lsl r1, r1, #0xe
	bl ov01_021EA910
_021EAB68:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAB58

	thumb_func_start ov01_021EAB6C
ov01_021EAB6C: ; 0x021EAB6C
	push {r3, lr}
	str r1, [r0, #0x40]
	cmp r2, #1
	bne _021EAB7C
	mov r1, #1
	lsl r1, r1, #0x10
	bl ov01_021EA910
_021EAB7C:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAB6C

	thumb_func_start ov01_021EAB80
ov01_021EAB80: ; 0x021EAB80
	push {r3, lr}
	cmp r2, #1
	ldr r2, [r0, #0x44]
	bne _021EAB8E
	tst r2, r1
	beq _021EAB92
	pop {r3, pc}
_021EAB8E:
	tst r2, r1
	beq _021EABA4
_021EAB92:
	ldr r2, [r0, #0x44]
	eor r1, r2
	str r1, [r0, #0x44]
	cmp r3, #1
	bne _021EABA4
	mov r1, #1
	lsl r1, r1, #0xc
	bl ov01_021EA910
_021EABA4:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAB80

	thumb_func_start ov01_021EABA8
ov01_021EABA8: ; 0x021EABA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	add r5, r1, #0
	add r6, r2, #0
	mov r0, #0x24
	ldr r1, _021EAC2C ; =0x02206478
	mul r0, r6
	add r7, r3, #0
	add r4, r1, r0
	cmp r6, #0x11
	blo _021EABC4
	bl GF_AssertFail
_021EABC4:
	mov r0, #4
	bl sub_02023114
	str r0, [r5, #0x24]
	ldrh r0, [r4, #0xc]
	add r2, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	str r0, [sp, #8]
	ldrh r3, [r4, #0xe]
	ldr r0, [sp, #0xc]
	ldr r1, [r4]
	bl sub_02023254
	ldr r0, [r5, #0x24]
	bl sub_0202313C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r5, #0x24]
	bl sub_02023240
	add r4, #0x18
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	bl sub_02023514
	cmp r7, #0
	beq _021EAC16
	ldr r0, [r5, #0x24]
	mov r1, #6
	str r0, [sp]
	mov r0, #7
	mov r2, #2
	mov r3, #4
	bl sub_02023068
_021EAC16:
	mov r0, #4
	bl ov01_021EAC4C
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021EAC6C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAC2C: .word 0x02206478
	thumb_func_end ov01_021EABA8

	thumb_func_start ov01_021EAC30
ov01_021EAC30: ; 0x021EAC30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov01_021EAC64
	bl sub_02023148
	ldr r0, [r4, #0x24]
	bl sub_020230F8
	ldr r0, [r4, #0x24]
	bl sub_02023120
	pop {r4, pc}
	thumb_func_end ov01_021EAC30

	thumb_func_start ov01_021EAC4C
ov01_021EAC4C: ; 0x021EAC4C
	push {r4, lr}
	mov r1, #0x34
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAC4C

	thumb_func_start ov01_021EAC64
ov01_021EAC64: ; 0x021EAC64
	ldr r3, _021EAC68 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021EAC68: .word FreeToHeap
	thumb_func_end ov01_021EAC64

	thumb_func_start ov01_021EAC6C
ov01_021EAC6C: ; 0x021EAC6C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r4, [r0, #0x28]
	ldr r0, [r0, #0x24]
	str r0, [r4]
	ldr r0, _021EACB4 ; =0x02209B60
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	beq _021EACAE
	add r0, sp, #0
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _021EACB8 ; =0x02206464
	sub r5, r2, #1
	mov r3, #0x14
	mul r3, r5
	add r5, r1, r3
	ldrh r3, [r1, r3]
	add r1, sp, #0
	strh r3, [r1]
	strb r2, [r4, #7]
	ldr r1, [r4]
	bl sub_02023558
	ldr r1, [r4]
	add r0, r5, #4
	bl sub_02023514
_021EACAE:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EACB4: .word 0x02209B60
_021EACB8: .word 0x02206464
	thumb_func_end ov01_021EAC6C

	thumb_func_start ov01_021EACBC
ov01_021EACBC: ; 0x021EACBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021EAD74
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021EACEA
	ldrb r0, [r5, #7]
	cmp r0, r1
	bne _021EACE4
	ldrh r0, [r5, #0x2e]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5, #0x2e]
	pop {r3, r4, r5, r6, r7, pc}
_021EACE4:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021EACEA:
	ldr r2, [r5, #0x30]
	mov r0, #0x24
	mul r0, r2
	strb r1, [r5, #7]
	mov r2, #1
	str r2, [r5, #0x28]
	ldr r2, _021EAD78 ; =0x02209B60
	ldr r3, _021EAD7C ; =0x02206478
	ldr r2, [r2]
	add r0, r3, r0
	cmp r2, #0
	bne _021EAD26
	ldrh r0, [r0, #4]
	sub r1, r1, #1
	add r2, r5, #0
	strh r0, [r5, #0x2c]
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	ldr r0, _021EAD80 ; =0x02206464
	add r2, #8
	add r3, r0, r4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldrb r1, [r5, #7]
	ldr r0, _021EAD78 ; =0x02209B60
	str r1, [r0]
	b _021EAD6A
_021EAD26:
	sub r2, r1, #1
	mov r1, #0x14
	add r4, r2, #0
	mul r4, r1
	ldr r1, _021EAD80 ; =0x02206464
	add r6, r5, #0
	ldrh r1, [r1, r4]
	add r6, #0xc
	mov r3, #0
	strh r1, [r5, #0x2c]
	ldrh r0, [r0, #4]
	add r2, r6, #0
	strh r0, [r5, #8]
	ldr r0, _021EAD84 ; =0x02206468
	strh r3, [r5, #0xa]
	add r7, r0, r4
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	str r0, [r6]
	ldr r1, [r2]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r2]
	ldr r1, [r5, #0x10]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r0, _021EAD78 ; =0x02209B60
	str r3, [r0]
_021EAD6A:
	ldr r0, _021EAD88 ; =0x02206474
	ldr r0, [r0, r4]
	strb r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #5]
_021EAD74:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAD78: .word 0x02209B60
_021EAD7C: .word 0x02206478
_021EAD80: .word 0x02206464
_021EAD84: .word 0x02206468
_021EAD88: .word 0x02206474
	thumb_func_end ov01_021EACBC

	thumb_func_start ov01_021EAD8C
ov01_021EAD8C: ; 0x021EAD8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021EAE46
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _021EADD6
	ldrb r0, [r4, #5]
	add r1, r4, #0
	add r2, r4, #0
	add r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #4]
	add r1, #0x2c
	add r2, #8
	str r0, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	bl ov01_021EAE50
	add r1, r4, #0
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #4]
	ldr r0, [r4]
	add r1, #0xc
	bl ov01_021EAEA4
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #4]
	cmp r1, r0
	blo _021EAE46
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_021EADD6:
	add r3, r4, #0
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp, #4]
	mov r0, #0
	add r2, r1, #0
	mvn r0, r0
	mul r2, r0
	ldr r1, [sp, #8]
	str r2, [sp, #4]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0xc]
	str r2, [sp, #8]
	mul r0, r1
	str r0, [sp, #0xc]
	ldrb r5, [r4, #4]
	add r1, r4, #0
	add r2, r4, #0
	str r5, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	add r1, #8
	sub r3, r5, r3
	lsl r3, r3, #0x18
	add r2, #0x2c
	lsr r3, r3, #0x18
	bl ov01_021EAE50
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #4]
	ldr r0, [r4]
	add r1, sp, #4
	bl ov01_021EAEA4
	ldrb r0, [r4, #5]
	sub r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021EAE46
	ldr r0, _021EAE4C ; =0x02209B60
	ldr r1, [r0]
	cmp r1, #0
	beq _021EAE3C
	mov r1, #0
	b _021EAE3E
_021EAE3C:
	ldrb r1, [r4, #7]
_021EAE3E:
	str r1, [r0]
	mov r0, #0
	strh r0, [r4, #0x2e]
	str r0, [r4, #0x28]
_021EAE46:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EAE4C: .word 0x02209B60
	thumb_func_end ov01_021EAD8C

	thumb_func_start ov01_021EAE50
ov01_021EAE50: ; 0x021EAE50
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, sp, #0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldrh r4, [r1]
	ldrh r0, [r2]
	cmp r0, r4
	blo _021EAE7E
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	b _021EAE92
_021EAE7E:
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	neg r0, r0
_021EAE92:
	add r1, r4, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	add r1, r5, #0
	bl sub_02023558
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EAE50

	thumb_func_start ov01_021EAEA4
ov01_021EAEA4: ; 0x021EAEA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r4, r2, #0
	add r6, r3, #0
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EAEE0
	str r0, [sp]
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EAEE0
	str r0, [sp, #8]
	add r0, sp, #0
	add r1, r7, #0
	bl sub_02023514
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAEA4

	thumb_func_start ov01_021EAEE0
ov01_021EAEE0: ; 0x021EAEE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	mul r0, r4
	add r1, r7, #0
	bl _s32_div_f
	add r6, r0, #0
	sub r0, r4, #1
	mul r0, r5
	add r1, r7, #0
	bl _s32_div_f
	sub r0, r6, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EAEE0

	thumb_func_start ov01_021EAF00
ov01_021EAF00: ; 0x021EAF00
	push {r4, lr}
	ldr r4, [r0, #0x18]
	cmp r4, #0
	bne _021EAF0C
	bl GF_AssertFail
_021EAF0C:
	cmp r4, #7
	blt _021EAF14
	bl GF_AssertFail
_021EAF14:
	sub r0, r4, #1
	pop {r4, pc}
	thumb_func_end ov01_021EAF00

	thumb_func_start ov01_021EAF18
ov01_021EAF18: ; 0x021EAF18
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021EAF00
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021EAF30 ; =0x022066DC
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021EAF30: .word 0x022066DC
	thumb_func_end ov01_021EAF18

	thumb_func_start ov01_021EAF34
ov01_021EAF34: ; 0x021EAF34
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021EAF00
	lsl r1, r0, #4
	ldr r0, _021EAF50 ; =0x022066E0
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021EAF4A
	mov r0, #1
	pop {r4, pc}
_021EAF4A:
	add r0, r4, #0
	blx r1
	pop {r4, pc}
	.balign 4, 0
_021EAF50: .word 0x022066E0
	thumb_func_end ov01_021EAF34

	thumb_func_start ov01_021EAF54
ov01_021EAF54: ; 0x021EAF54
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021EAF00
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021EAF6C ; =0x022066E4
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021EAF6C: .word 0x022066E4
	thumb_func_end ov01_021EAF54

	thumb_func_start ov01_021EAF70
ov01_021EAF70: ; 0x021EAF70
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021EAF00
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021EAF88 ; =0x022066E8
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021EAF88: .word 0x022066E8
	thumb_func_end ov01_021EAF70

	thumb_func_start ov01_021EAF8C
ov01_021EAF8C: ; 0x021EAF8C
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EAF8C

	thumb_func_start ov01_021EAF90
ov01_021EAF90: ; 0x021EAF90
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EAF90

	thumb_func_start ov01_021EAF94
ov01_021EAF94: ; 0x021EAF94
	mov r0, #1
	bx lr
	thumb_func_end ov01_021EAF94

	thumb_func_start ov01_021EAF98
ov01_021EAF98: ; 0x021EAF98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EAFB0 ; =SDK_OVERLAY_OVY_19_ID
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl ov19_022598C0
	add r4, #0xd8
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
_021EAFB0: .word SDK_OVERLAY_OVY_19_ID
	thumb_func_end ov01_021EAF98

	thumb_func_start ov01_021EAFB4
ov01_021EAFB4: ; 0x021EAFB4
	push {r4, lr}
	add r4, r0, #0
	bl ov19_02259918
	mov r0, #0
	add r4, #0xd8
	str r0, [r4]
	ldr r0, _021EAFCC ; =SDK_OVERLAY_OVY_19_ID
	bl UnloadOverlayByID
	pop {r4, pc}
	nop
_021EAFCC: .word SDK_OVERLAY_OVY_19_ID
	thumb_func_end ov01_021EAFB4

	thumb_func_start ov01_021EAFD0
ov01_021EAFD0: ; 0x021EAFD0
	mov r0, #1
	bx lr
	thumb_func_end ov01_021EAFD0

	thumb_func_start ov01_021EAFD4
ov01_021EAFD4: ; 0x021EAFD4
	push {r4, lr}
	mov r1, #0x63
	mov r0, #4
	lsl r1, r1, #2
	bl AllocFromHeap
	add r4, r0, #0
	bne _021EAFE8
	bl GF_AssertFail
_021EAFE8:
	mov r0, #0
	add r2, r4, #0
	add r1, r0, #0
_021EAFEE:
	strh r1, [r2, #0x1c]
	strh r1, [r2, #0x1e]
	str r1, [r2, #8]
	str r1, [r2, #0x10]
	str r1, [r2, #0x18]
	str r1, [r2, #0x14]
	add r0, r0, #1
	add r2, #0x18
	cmp r0, #0x10
	blt _021EAFEE
	mov r0, #0x62
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov01_021EAFD4

	thumb_func_start ov01_021EB00C
ov01_021EB00C: ; 0x021EB00C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r6, #0
	mov r0, #0x8b
	mov r1, #4
	bl NARC_ctor
	add r1, r6, #0
	mov r2, #4
	add r7, r0, #0
	bl NARC_AllocAndReadWholeMember
	str r0, [r5]
	str r0, [r5, #4]
	ldr r0, [r0]
	add r4, r6, #0
	cmp r0, #0
	bls _021EB04E
_021EB032:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021EB058
	cmp r0, #0
	blt _021EB044
	add r6, r6, #1
_021EB044:
	ldr r0, [r5, #4]
	add r4, r4, #1
	ldr r0, [r0]
	cmp r4, r0
	blo _021EB032
_021EB04E:
	add r0, r7, #0
	bl NARC_dtor
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EB00C

	thumb_func_start ov01_021EB058
ov01_021EB058: ; 0x021EB058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne _021EB06E
	mov r0, #0
	add sp, #0x38
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021EB06E:
	mov r4, #0
	add r1, r5, #0
_021EB072:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021EB080
	add r4, r4, #1
	add r1, #0x18
	cmp r4, #0x10
	blt _021EB072
_021EB080:
	cmp r4, #0x10
	beq _021EB08A
	ldr r0, [sp]
	cmp r0, #0
	bne _021EB092
_021EB08A:
	mov r0, #0
	add sp, #0x38
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021EB092:
	mov r0, #0x18
	add r6, r4, #0
	mul r6, r0
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	mov r1, #0x34
	add r7, r0, #0
	mul r7, r1
	ldr r1, [r5, #4]
	ldr r0, [sp]
	add r1, r1, #4
	add r1, r1, r7
	bl sub_020208DC
	ldr r1, [sp, #0xc]
	str r0, [r1, r6]
	add r0, r1, #0
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _021EB0C8
	mov r0, #0
	add sp, #0x38
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021EB0C8:
	ldr r1, [r5, #4]
	ldr r0, [sp]
	add r1, r1, #4
	add r1, r1, r7
	bl sub_020209E0
	add r1, r5, r6
	str r0, [r1, #0xc]
	ldr r1, _021EB110 ; =ov01_02209898
	ldr r2, [sp, #4]
	add r0, sp, #0x10
	bl sprintf ; result never used
	ldr r0, [r5, #4]
	mov r2, #4
	add r0, r0, #4
	add r1, r0, r7
	add r0, r5, r6
	str r1, [r0, #0x18]
	ldr r1, [sp, #4]
	add r7, r5, #0
	ldr r0, [sp, #8]
	add r7, #0x14
	add r1, r1, #1
	bl NARC_AllocAndReadWholeMember
	str r0, [r7, r6]
	ldr r0, [r7, r6]
	bl NNS_G3dGetTex
	add r1, r5, r6
	str r0, [r1, #0x10]
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB110: .word ov01_02209898
	thumb_func_end ov01_021EB058

	thumb_func_start ov01_021EB114
ov01_021EB114: ; 0x021EB114
	push {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	beq _021EB18A
	mov r1, #0x62
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021EB18A
	mov r4, #0
	add r5, r0, #0
	add r5, #8
	add r7, r4, #0
	mov r6, #1
_021EB12E:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021EB182
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _021EB182
	ldrh r0, [r5, #0x14]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrb r1, [r0, #0x11]
	ldrh r0, [r5, #0x16]
	cmp r1, r0
	bgt _021EB17E
	strh r6, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	add r0, r0, #1
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x14]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #1
	add r0, r1, r0
	ldrb r0, [r0, #0x10]
	cmp r0, #0xff
	bne _021EB160
	strh r7, [r5, #0x14]
_021EB160:
	ldrh r2, [r5, #0x14]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r2, #1
	add r1, r1, r2
	ldrb r1, [r1, #0x10]
	bl sub_02020838
	add r2, r0, #0
	ldr r1, [r5]
	ldr r3, [r5, #4]
	mov r0, #0
	bl sub_020205D8
	b _021EB182
_021EB17E:
	add r0, r0, #1
	strh r0, [r5, #0x16]
_021EB182:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0x10
	blt _021EB12E
_021EB18A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EB114

	thumb_func_start ov01_021EB18C
ov01_021EB18C: ; 0x021EB18C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	beq _021EB1BA
	mov r0, #0x18
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021EB1A4
	bl FreeToHeap
_021EB1A4:
	add r1, r5, #0
	add r1, #0x18
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _021EB1B2
	mov r0, #0
	str r0, [r1, r4]
_021EB1B2:
	mov r1, #0
	add r0, r5, r4
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
_021EB1BA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EB18C

	thumb_func_start ov01_021EB1BC
ov01_021EB1BC: ; 0x021EB1BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	beq _021EB1D8
	mov r4, #0
_021EB1C4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EB18C
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EB1C4
	ldr r0, [r5]
	bl FreeToHeap
_021EB1D8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EB1BC

	thumb_func_start ov01_021EB1DC
ov01_021EB1DC: ; 0x021EB1DC
	push {r3, lr}
	cmp r0, #0
	beq _021EB1E6
	bl FreeToHeap
_021EB1E6:
	pop {r3, pc}
	thumb_func_end ov01_021EB1DC

	thumb_func_start ov01_021EB1E8
ov01_021EB1E8: ; 0x021EB1E8
	mov r1, #0x62
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EB1E8

	thumb_func_start ov01_021EB1F4
ov01_021EB1F4: ; 0x021EB1F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl AllocFromHeap
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021EB208:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021EB208
	add r0, r5, #0
	bl ov01_021EB64C
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #6
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	mov r0, #0xe
	str r0, [r4, #0x10]
	mov r0, #0x10
	mov r1, #1
	bl GX_EngineAToggleLayers
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EB1F4

	thumb_func_start ov01_021EB234
ov01_021EB234: ; 0x021EB234
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EB242
	bl sub_0200E390
_021EB242:
	add r0, r4, #0
	bl ov01_021EB68C
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021EB24E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021EB24E
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EB234

	thumb_func_start ov01_021EB260
ov01_021EB260: ; 0x021EB260
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #6
	beq _021EB270
	bl GF_AssertFail
_021EB270:
	cmp r4, #0xe
	blt _021EB278
	bl GF_AssertFail
_021EB278:
	ldr r2, [r5, #4]
	cmp r2, r4
	beq _021EB2B4
	ldr r0, [r5]
	mov r1, #8
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB28E
	bl GF_AssertFail
_021EB28E:
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB2A0
	bl GF_AssertFail
_021EB2A0:
	ldr r0, [r5]
	mov r1, #3
	add r2, r4, #0
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB2B2
	bl GF_AssertFail
_021EB2B2:
	str r4, [r5, #4]
_021EB2B4:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EB260

	thumb_func_start ov01_021EB2B8
ov01_021EB2B8: ; 0x021EB2B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xe
	blt _021EB2C6
	bl GF_AssertFail
_021EB2C6:
	ldr r0, [r5, #0xc]
	cmp r0, #6
	beq _021EB2D2
	str r4, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB2D2:
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _021EB2DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB2DC:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021EB2E6
	bl GF_AssertFail
_021EB2E6:
	str r4, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov01_021EB4B4
	cmp r0, #0
	bne _021EB302
	ldr r0, _021EB314 ; =ov01_021EB320
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl sub_0200E320
	b _021EB30E
_021EB302:
	ldr r0, _021EB318 ; =ov01_021EB3F0
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl sub_0200E320
_021EB30E:
	str r0, [r5, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EB314: .word ov01_021EB320
_021EB318: .word ov01_021EB3F0
	thumb_func_end ov01_021EB2B8

	thumb_func_start ov01_021EB31C
ov01_021EB31C: ; 0x021EB31C
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov01_021EB31C

	thumb_func_start ov01_021EB320
ov01_021EB320: ; 0x021EB320
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _021EB3EE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB336: ; jump table
	.short _021EB342 - _021EB336 - 2 ; case 0
	.short _021EB35C - _021EB336 - 2 ; case 1
	.short _021EB382 - _021EB336 - 2 ; case 2
	.short _021EB39C - _021EB336 - 2 ; case 3
	.short _021EB3B0 - _021EB336 - 2 ; case 4
	.short _021EB3D2 - _021EB336 - 2 ; case 5
_021EB342:
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #5
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB354
	bl GF_AssertFail
_021EB354:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB35C:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov01_021EB804
	cmp r0, #3
	beq _021EB3EE
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #8
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB37A
	bl GF_AssertFail
_021EB37A:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB382:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #1
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB394
	bl GF_AssertFail
_021EB394:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB39C:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov01_021EB804
	cmp r0, #1
	beq _021EB3EE
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB3B0:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #2
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB3C2
	bl GF_AssertFail
_021EB3C2:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_021EB3D2:
	mov r1, #6
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	bl sub_0200E390
	ldr r1, [r4, #0x10]
	cmp r1, #0xe
	beq _021EB3EE
	add r0, r4, #0
	bl ov01_021EB2B8
	mov r0, #0xe
	str r0, [r4, #0x10]
_021EB3EE:
	pop {r4, pc}
	thumb_func_end ov01_021EB320

	thumb_func_start ov01_021EB3F0
ov01_021EB3F0: ; 0x021EB3F0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #4
	bhi _021EB4B2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB406: ; jump table
	.short _021EB410 - _021EB406 - 2 ; case 0
	.short _021EB42A - _021EB406 - 2 ; case 1
	.short _021EB43E - _021EB406 - 2 ; case 2
	.short _021EB46A - _021EB406 - 2 ; case 3
	.short _021EB490 - _021EB406 - 2 ; case 4
_021EB410:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #1
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB422
	bl GF_AssertFail
_021EB422:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB42A:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov01_021EB804
	cmp r0, #1
	beq _021EB4B2
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB43E:
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #7
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB450
	bl GF_AssertFail
_021EB450:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #4
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB462
	bl GF_AssertFail
_021EB462:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB46A:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov01_021EB804
	cmp r0, #3
	beq _021EB4B2
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #8
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB488
	bl GF_AssertFail
_021EB488:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB490:
	ldr r1, [r4, #8]
	mov r2, #0
	str r1, [r4, #4]
	str r2, [r4, #8]
	mov r1, #6
	str r1, [r4, #0xc]
	str r2, [r4, #0x14]
	bl sub_0200E390
	ldr r1, [r4, #0x10]
	cmp r1, #0xe
	beq _021EB4B2
	add r0, r4, #0
	bl ov01_021EB2B8
	mov r0, #0xe
	str r0, [r4, #0x10]
_021EB4B2:
	pop {r4, pc}
	thumb_func_end ov01_021EB3F0

	thumb_func_start ov01_021EB4B4
ov01_021EB4B4: ; 0x021EB4B4
	mov r0, #0
	bx lr
	thumb_func_end ov01_021EB4B4

	thumb_func_start ov01_021EB4B8
ov01_021EB4B8: ; 0x021EB4B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _021EB564 ; =0xFFFFF000
	add r6, r0, #0
	add r0, #0x14
	bl sub_02025C44
	mov r0, #0
	add r3, r6, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xac
	add r1, sp, #0xc
	mov r2, #1
	add r3, #0x14
	bl sub_0200B27C
	mov r4, #0
	add r5, r6, #0
	mov r7, #0xe
_021EB4EE:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_0200A090
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021EB4EE
	bl sub_0200A8FC
	add r1, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl AllocFromHeap
	str r0, [r6, #0x10]
	mov r1, #0
	mov r2, #0x39
	bl ov01_021EB578
	ldr r0, [r6, #0x10]
	mov r1, #1
	mov r2, #0x3a
	bl ov01_021EB578
	ldr r0, [r6, #0x10]
	mov r1, #2
	mov r2, #0x37
	bl ov01_021EB578
	ldr r0, [r6, #0x10]
	mov r1, #3
	mov r2, #0x38
	bl ov01_021EB578
	mov r0, #0x40
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, sp, #0
	bl sub_0202445C
	add r1, r6, #0
	add r1, #0xf4
	str r0, [r1]
	ldr r0, _021EB568 ; =ov01_021EB56C
	add r1, r6, #0
	mov r2, #0xa
	bl sub_0200E320
	add r6, #0xf8
	str r0, [r6]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EB564: .word 0xFFFFF000
_021EB568: .word ov01_021EB56C
	thumb_func_end ov01_021EB4B8

	thumb_func_start ov01_021EB56C
ov01_021EB56C: ; 0x021EB56C
	ldr r3, _021EB574 ; =sub_0202457C
	add r1, #0xf4
	ldr r0, [r1]
	bx r3
	.balign 4, 0
_021EB574: .word sub_0202457C
	thumb_func_end ov01_021EB56C

	thumb_func_start ov01_021EB578
ov01_021EB578: ; 0x021EB578
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_0200A900
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x3f
	add r1, r5, #0
	mov r2, #0
	mov r3, #4
	bl GfGfxLoader_LoadFromNarc
	add r5, r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_0200A908
	add r0, r5, #0
	bl FreeToHeap
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EB578

	thumb_func_start ov01_021EB5A4
ov01_021EB5A4: ; 0x021EB5A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021EB5AC:
	ldr r0, [r6, #0x10]
	add r1, r4, #0
	bl sub_0200A900
	bl sub_0200A954
	ldr r0, [r5]
	bl sub_0200A0D0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021EB5AC
	ldr r0, [r6, #0x10]
	bl FreeToHeap
	mov r0, #0
	str r0, [r6, #0x10]
	add r0, r6, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_02024504
	add r0, r6, #0
	mov r1, #0
	add r0, #0xf4
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_0200E390
	mov r0, #0
	add r6, #0xf8
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021EB5A4

	thumb_func_start ov01_021EB5F4
ov01_021EB5F4: ; 0x021EB5F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, _021EB644 ; =0x0013F000
	cmp r0, r1
	ble _021EB60A
	bl _s32_div_f
	str r1, [r4]
	b _021EB614
_021EB60A:
	ldr r2, _021EB648 ; =0xFFFC0000
	cmp r0, r2
	bge _021EB614
	add r0, r0, r1
	str r0, [r4]
_021EB614:
	mov r1, #1
	ldr r3, [r4, #4]
	lsl r1, r1, #0x14
	cmp r3, r1
	ble _021EB62E
	lsr r2, r3, #0x1f
	lsl r1, r3, #0xc
	sub r1, r1, r2
	mov r0, #0xc
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
	b _021EB638
_021EB62E:
	ldr r0, _021EB648 ; =0xFFFC0000
	cmp r3, r0
	bge _021EB638
	add r0, r3, r1
	str r0, [r4, #4]
_021EB638:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020247D4
	pop {r3, r4, r5, pc}
	nop
_021EB644: .word 0x0013F000
_021EB648: .word 0xFFFC0000
	thumb_func_end ov01_021EB5F4

	thumb_func_start ov01_021EB64C
ov01_021EB64C: ; 0x021EB64C
	push {r3, r4, r5, lr}
	mov r1, #0x43
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	add r0, #8
	bl ov01_021EB4B8
	ldr r0, _021EB684 ; =0x022098B0
	mov r1, #4
	str r0, [r4]
	ldr r0, _021EB688 ; =0x0220675C
	str r0, [r4, #4]
	mov r0, #0x3f
	bl NARC_ctor
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EB684: .word 0x022098B0
_021EB688: .word 0x0220675C
	thumb_func_end ov01_021EB64C

	thumb_func_start ov01_021EB68C
ov01_021EB68C: ; 0x021EB68C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021EB6F6
	mov r5, #0
_021EB69A:
	ldr r0, [r4]
	add r1, r5, #0
	bl ov01_021EBB90
	add r5, r5, #1
	cmp r5, #0xe
	blt _021EB69A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0x4c]
	add r3, r2, #0
	bl ov01_021EA864
	ldr r1, _021EB6FC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r0, [r4]
	add r0, #8
	bl ov01_021EB5A4
	mov r0, #0x42
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl NARC_dtor
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4]
_021EB6F6:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EB6FC: .word 0x04000008
	thumb_func_end ov01_021EB68C

	thumb_func_start ov01_021EB700
ov01_021EB700: ; 0x021EB700
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	mov r6, #1
	cmp r4, #0xe
	ble _021EB710
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EB710:
	cmp r1, #0xa
	bhi _021EB7FA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB720: ; jump table
	.short _021EB736 - _021EB720 - 2 ; case 0
	.short _021EB740 - _021EB720 - 2 ; case 1
	.short _021EB74A - _021EB720 - 2 ; case 2
	.short _021EB758 - _021EB720 - 2 ; case 3
	.short _021EB766 - _021EB720 - 2 ; case 4
	.short _021EB796 - _021EB720 - 2 ; case 5
	.short _021EB7A0 - _021EB720 - 2 ; case 6
	.short _021EB7A8 - _021EB720 - 2 ; case 7
	.short _021EB7B2 - _021EB720 - 2 ; case 8
	.short _021EB7BA - _021EB720 - 2 ; case 9
	.short _021EB7DA - _021EB720 - 2 ; case 10
_021EB736:
	add r1, r4, #0
	bl ov01_021EB9A8
	add r6, r0, #0
	b _021EB7FA
_021EB740:
	add r1, r4, #0
	bl ov01_021EBA08
	add r6, r0, #0
	b _021EB7FA
_021EB74A:
	add r1, r4, #0
	mov r2, #0
	add r3, r6, #0
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB758:
	add r1, r4, #0
	mov r2, #2
	add r3, r6, #0
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB766:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x4c]
	bl ov01_021EA854
	cmp r0, #1
	bne _021EB786
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB786:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	add r3, r6, #0
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB796:
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EBB40
	b _021EB7FA
_021EB7A0:
	add r1, r4, #0
	bl ov01_021EBB68
	b _021EB7FA
_021EB7A8:
	add r1, r4, #0
	mov r2, #0
	bl ov01_021EBB40
	b _021EB7FA
_021EB7B2:
	add r1, r4, #0
	bl ov01_021EBB90
	b _021EB7FA
_021EB7BA:
	mov r0, #0x1c
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _021EB7FA
	ldr r0, _021EB800 ; =0x00000F5C
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021EB7FA
	add r0, r0, #4
	ldrh r0, [r2, r0]
	bl PlaySE
	b _021EB7FA
_021EB7DA:
	mov r0, #0x1c
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _021EB7FA
	ldr r0, _021EB800 ; =0x00000F5C
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021EB7FA
	add r0, r0, #4
	ldrh r0, [r2, r0]
	mov r1, #0
	bl sub_02006154
_021EB7FA:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021EB800: .word 0x00000F5C
	thumb_func_end ov01_021EB700

	thumb_func_start ov01_021EB804
ov01_021EB804: ; 0x021EB804
	cmp r1, #0xe
	blt _021EB80C
	mov r0, #0
	bx lr
_021EB80C:
	ldr r2, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021EB804

	thumb_func_start ov01_021EB818
ov01_021EB818: ; 0x021EB818
	push {r3, lr}
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _021EB82C ; =0x04000050
	mov r1, #4
	mov r2, #0x21
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	nop
_021EB82C: .word 0x04000050
	thumb_func_end ov01_021EB818

	thumb_func_start ov01_021EB830
ov01_021EB830: ; 0x021EB830
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021EB830

	thumb_func_start ov01_021EB840
ov01_021EB840: ; 0x021EB840
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021EB866
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021EB866:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov01_021EB840

	thumb_func_start ov01_021EB86C
ov01_021EB86C: ; 0x021EB86C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov01_021EBEF0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EBF24
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EBF58
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EBF94
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021EB86C

	thumb_func_start ov01_021EB898
ov01_021EB898: ; 0x021EB898
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r2, #0
	add r6, r1, #0
	add r7, r3, #0
	ldr r5, [sp, #0x40]
	bl sub_0200A900
	str r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200A9B0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200A9DC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200AA08
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200AA3C
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl sub_0200A97C
	cmp r6, #3
	bhi _021EB962
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB8E8: ; jump table
	.short _021EB8F0 - _021EB8E8 - 2 ; case 0
	.short _021EB90E - _021EB8E8 - 2 ; case 1
	.short _021EB930 - _021EB8E8 - 2 ; case 2
	.short _021EB94A - _021EB8E8 - 2 ; case 3
_021EB8F0:
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200A424
	str r0, [sp, #0x14]
	b _021EB962
_021EB90E:
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_0200A4E0
	str r0, [sp, #0x14]
	b _021EB962
_021EB930:
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200A540
	str r0, [sp, #0x14]
	b _021EB962
_021EB94A:
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200A540
	str r0, [sp, #0x14]
_021EB962:
	ldr r0, [sp, #0x14]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EB898

	thumb_func_start ov01_021EB968
ov01_021EB968: ; 0x021EB968
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021EB9A4 ; =0x0000FFFF
	add r4, r2, #0
	cmp r1, r0
	beq _021EB9A0
	ldr r0, [r4]
	cmp r0, #0
	beq _021EB97E
	bl sub_0200AEB0
_021EB97E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB988
	bl sub_0200B0A8
_021EB988:
	mov r6, #0
_021EB98A:
	ldr r1, [r4]
	cmp r1, #0
	beq _021EB996
	ldr r0, [r5, #8]
	bl sub_0200A75C
_021EB996:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021EB98A
_021EB9A0:
	pop {r4, r5, r6, pc}
	nop
_021EB9A4: .word 0x0000FFFF
	thumb_func_end ov01_021EB968

	thumb_func_start ov01_021EB9A8
ov01_021EB9A8: ; 0x021EB9A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x1c
	ldr r3, [r5]
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021EBA00
	add r1, r4, #0
	bl ov01_021EBE4C
	cmp r0, #0
	bne _021EB9C8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EB9C8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EBD34
	cmp r0, #0
	bne _021EB9E0
	ldr r0, [r4, #8]
	bl FreeToHeap
	mov r0, #0
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_021EB9E0:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #8]
	ldrh r1, [r4]
	ldr r0, _021EBA04 ; =0x0000FFFF
	cmp r1, r0
	beq _021EB9F4
	ldr r0, [r4, #8]
	bl ov01_021EC028
_021EB9F4:
	ldrh r1, [r4, #2]
	add r0, r5, #0
	bl ov01_021EBD18
	mov r0, #2
	strh r0, [r4, #0x10]
_021EBA00:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBA04: .word 0x0000FFFF
	thumb_func_end ov01_021EB9A8

	thumb_func_start ov01_021EBA08
ov01_021EBA08: ; 0x021EBA08
	push {r4, lr}
	mov r2, #0x1c
	ldr r3, [r0]
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021EBA1C
	mov r0, #1
	pop {r4, pc}
_021EBA1C:
	add r1, r4, #0
	bl ov01_021EBE4C
	cmp r0, #0
	bne _021EBA2A
	mov r0, #0
	pop {r4, pc}
_021EBA2A:
	ldr r0, _021EBA40 ; =ov01_021EBD70
	add r1, r4, #0
	mov r2, #1
	bl sub_0200E320
	str r0, [r4, #0x14]
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r1, #0
	strh r1, [r4, #0x12]
	pop {r4, pc}
	.balign 4, 0
_021EBA40: .word ov01_021EBD70
	thumb_func_end ov01_021EBA08

	thumb_func_start ov01_021EBA44
ov01_021EBA44: ; 0x021EBA44
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, [r0]
	mov r0, #0x1c
	mul r0, r1
	ldrh r1, [r2, r0]
	add r4, r2, r0
	ldr r0, _021EBB2C ; =0x0000FFFF
	add r6, r3, #0
	cmp r1, r0
	beq _021EBA64
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBA64
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA64:
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021EBA6E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA6E:
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _021EBA78
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA78:
	ldr r0, [r4, #0x18]
	mov r2, #4
	bl sub_0200E320
	ldr r1, [r4, #8]
	ldr r3, _021EBB30 ; =0x00000F48
	str r0, [r1, r3]
	ldr r0, [r4, #8]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _021EBA92
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA92:
	mov r0, #3
	strh r0, [r4, #0x10]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x1a
	strh r5, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #8]
	mov r2, #0
	add r0, #0x1e
	strh r2, [r1, r0]
	ldr r1, [r4, #8]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x40]
	ldr r1, [r4, #8]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x44]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x1c
	strh r6, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x14
	str r2, [r1, r0]
	ldr r1, [r4, #8]
	add r0, r3, #4
	ldr r6, _021EBB34 ; =0x021DA6F4
	add r5, r1, r0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _021EBAF8
	mov r0, #4
	bl AllocFromHeap
	ldr r2, [r4, #8]
	ldr r1, _021EBB38 ; =0x00000F58
	str r0, [r2, r1]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r0, [r0, r1]
	mov r1, #0
	bl memset
	b _021EBAFE
_021EBAF8:
	ldr r0, [r4, #8]
	add r3, #0x10
	str r2, [r0, r3]
_021EBAFE:
	ldrh r1, [r4, #2]
	ldr r0, _021EBB2C ; =0x0000FFFF
	cmp r1, r0
	beq _021EBB28
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r2, _021EBB3C ; =0x0400000C
	mov r1, #3
	ldrh r3, [r2]
	mov r0, #1
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
	sub r2, r2, #4
	ldrh r3, [r2]
	mov r0, #2
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
_021EBB28:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EBB2C: .word 0x0000FFFF
_021EBB30: .word 0x00000F48
_021EBB34: .word 0x021DA6F4
_021EBB38: .word 0x00000F58
_021EBB3C: .word 0x0400000C
	thumb_func_end ov01_021EBA44

	thumb_func_start ov01_021EBB40
ov01_021EBB40: ; 0x021EBB40
	push {r3, r4}
	ldr r3, [r0]
	mov r0, #0x1c
	mul r0, r1
	add r4, r3, r0
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021EBB5E
	ldr r1, [r4, #8]
	ldr r0, _021EBB64 ; =0x00000F66
	mov r3, #5
	strh r3, [r1, r0]
	ldr r1, [r4, #8]
	sub r0, r0, #2
	strh r2, [r1, r0]
_021EBB5E:
	pop {r3, r4}
	bx lr
	nop
_021EBB64: .word 0x00000F66
	thumb_func_end ov01_021EBB40

	thumb_func_start ov01_021EBB68
ov01_021EBB68: ; 0x021EBB68
	push {r4, lr}
	mov r2, #0x1c
	ldr r3, [r0]
	mul r2, r1
	add r4, r3, r2
	bl ov01_021EB804
	cmp r0, #3
	bne _021EBB8A
	ldr r1, [r4, #8]
	ldr r0, _021EBB8C ; =0x00000F62
	mov r2, #5
	strh r2, [r1, r0]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x18]
	mov r0, #0
	blx r2
_021EBB8A:
	pop {r4, pc}
	.balign 4, 0
_021EBB8C: .word 0x00000F62
	thumb_func_end ov01_021EBB68

	thumb_func_start ov01_021EBB90
ov01_021EBB90: ; 0x021EBB90
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x1c
	ldr r2, [r5]
	mul r0, r1
	add r4, r2, r0
	ldrh r1, [r4, #2]
	ldr r0, _021EBC8C ; =0x0000FFFF
	cmp r1, r0
	beq _021EBBCE
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r0, _021EBC90 ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r6, [r3]
	mov r1, #1
	add r0, #0x44
	bic r6, r2
	orr r1, r6
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021EBBCE:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _021EBBF6
	ldrh r1, [r4]
	add r0, r5, #0
	bl ov01_021EB968
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EBBF6
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #0x14]
_021EBBF6:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EBC70
	add r0, #0xc
	bl ov01_021EC2CC
	ldrh r1, [r4]
	ldr r0, _021EBC8C ; =0x0000FFFF
	cmp r1, r0
	beq _021EBC10
	ldr r0, [r4, #8]
	bl ov01_021EC058
_021EBC10:
	ldr r0, [r4, #8]
	ldr r1, _021EBC94 ; =0x00000F5C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021EBC1E
	bl ov01_021EDAE0
_021EBC1E:
	ldr r1, [r4, #8]
	ldr r0, _021EBC98 ; =0x00000F58
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021EBC36
	mov r0, #4
	bl FreeToHeapExplicit
	ldr r1, [r4, #8]
	ldr r0, _021EBC98 ; =0x00000F58
	mov r2, #0
	str r2, [r1, r0]
_021EBC36:
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	bne _021EBC48
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EBC56
	bl sub_0200E390
	b _021EBC56
_021EBC48:
	cmp r0, #3
	bne _021EBC56
	ldr r1, [r4, #8]
	ldr r0, _021EBC9C ; =0x00000F48
	ldr r0, [r1, r0]
	bl sub_0200E390
_021EBC56:
	ldr r1, [r4, #8]
	ldr r0, _021EBCA0 ; =0x00000F6C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021EBC64
	bl sub_0200E390
_021EBC64:
	ldr r1, [r4, #8]
	mov r0, #4
	bl FreeToHeapExplicit
	mov r0, #0
	str r0, [r4, #8]
_021EBC70:
	mov r2, #0
	str r2, [sp]
	mov r0, #0x41
	str r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	ldr r0, [r0, #0x4c]
	add r3, r2, #0
	bl ov01_021EA864
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021EBC8C: .word 0x0000FFFF
_021EBC90: .word 0x0400000C
_021EBC94: .word 0x00000F5C
_021EBC98: .word 0x00000F58
_021EBC9C: .word 0x00000F48
_021EBCA0: .word 0x00000F6C
	thumb_func_end ov01_021EBB90

	thumb_func_start ov01_021EBCA4
ov01_021EBCA4: ; 0x021EBCA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r1, [r4, #2]
	ldr r0, _021EBD08 ; =0x0000FFFF
	cmp r1, r0
	beq _021EBCD8
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r0, _021EBD0C ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r5, [r3]
	mov r1, #1
	add r0, #0x44
	bic r5, r2
	orr r1, r5
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021EBCD8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EBD06
	add r0, #0xc
	bl ov01_021EC2CC
	ldr r0, [r4, #8]
	ldr r1, _021EBD10 ; =0x00000F5C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021EBCF2
	bl ov01_021EDAE0
_021EBCF2:
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021EBD06
	ldr r1, [r4, #8]
	ldr r0, _021EBD14 ; =0x00000F48
	ldr r0, [r1, r0]
	bl sub_0200E390
	mov r0, #2
	strh r0, [r4, #0x10]
_021EBD06:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBD08: .word 0x0000FFFF
_021EBD0C: .word 0x0400000C
_021EBD10: .word 0x00000F5C
_021EBD14: .word 0x00000F48
	thumb_func_end ov01_021EBCA4

	thumb_func_start ov01_021EBD18
ov01_021EBD18: ; 0x021EBD18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021EC078
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EC0C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EC114
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EBD18

	thumb_func_start ov01_021EBD34
ov01_021EBD34: ; 0x021EBD34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _021EBD6C ; =0x0000FFFF
	cmp r1, r0
	beq _021EBD68
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBD68
	add r0, r4, #0
	bl ov01_021EBEB8
	cmp r0, #0
	bne _021EBD56
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EBD56:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov01_021EB86C
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EBFD0
_021EBD68:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBD6C: .word 0x0000FFFF
	thumb_func_end ov01_021EBD34

	thumb_func_start ov01_021EBD70
ov01_021EBD70: ; 0x021EBD70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r2, [r4, #0x12]
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r2, #8
	ldr r0, [r0]
	bhi _021EBE46
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EBD8C: ; jump table
	.short _021EBD9E - _021EBD8C - 2 ; case 0
	.short _021EBDB4 - _021EBD8C - 2 ; case 1
	.short _021EBDC4 - _021EBD8C - 2 ; case 2
	.short _021EBDD2 - _021EBD8C - 2 ; case 3
	.short _021EBDE2 - _021EBD8C - 2 ; case 4
	.short _021EBDF0 - _021EBD8C - 2 ; case 5
	.short _021EBE00 - _021EBD8C - 2 ; case 6
	.short _021EBE0E - _021EBD8C - 2 ; case 7
	.short _021EBE1E - _021EBD8C - 2 ; case 8
_021EBD9E:
	add r0, r4, #0
	bl ov01_021EBEB8
	cmp r0, #0
	bne _021EBDAC
	bl GF_AssertFail
_021EBDAC:
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDB4:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBEF0
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDC4:
	ldrh r1, [r4, #2]
	bl ov01_021EC078
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDD2:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBF24
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDE2:
	ldrh r1, [r4, #2]
	bl ov01_021EC0C0
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDF0:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBF58
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBE00:
	ldrh r1, [r4, #2]
	bl ov01_021EC114
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBE0E:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBF94
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBE1E:
	bl ov01_021EBFD0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #8]
	ldrh r1, [r4]
	ldr r0, _021EBE48 ; =0x0000FFFF
	cmp r1, r0
	beq _021EBE36
	ldr r0, [r4, #8]
	bl ov01_021EC028
_021EBE36:
	mov r0, #2
	strh r0, [r4, #0x10]
	mov r0, #0
	strh r0, [r4, #0x12]
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_0200E390
_021EBE46:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBE48: .word 0x0000FFFF
	thumb_func_end ov01_021EBD70

	thumb_func_start ov01_021EBE4C
ov01_021EBE4C: ; 0x021EBE4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EBE5C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EBE5C:
	mov r1, #0xf7
	mov r0, #4
	lsl r1, r1, #4
	bl AllocFromHeap
	str r0, [r4, #8]
	cmp r0, #0
	bne _021EBE70
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EBE70:
	mov r2, #0xf7
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	ldr r0, [r4, #8]
	ldr r2, _021EBEB4 ; =0x00000F62
	str r5, [r0]
	ldr r1, [r4, #8]
	mov r0, #0
	strh r0, [r1, r2]
	ldr r3, [r4, #8]
	add r1, r2, #4
	strh r0, [r3, r1]
	ldr r3, [r4, #8]
	add r1, r3, #0
	add r1, #0xc
	str r1, [r3, #0x40]
	ldr r3, [r4, #8]
	add r1, r3, #0
	add r1, #0xc
	str r1, [r3, #0x44]
	add r1, r2, #0
	ldr r3, [r4, #8]
	sub r1, #0xa
	str r0, [r3, r1]
	ldr r1, [r4, #8]
	add r2, #0xa
	str r4, [r1, #4]
	ldr r1, [r4, #8]
	str r0, [r1, r2]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021EBEB4: .word 0x00000F62
	thumb_func_end ov01_021EBE4C

	thumb_func_start ov01_021EBEB8
ov01_021EBEB8: ; 0x021EBEB8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EBEEC ; =0x0000FFFF
	cmp r1, r0
	beq _021EBEE8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021EBECE
	mov r0, #1
	pop {r4, pc}
_021EBECE:
	mov r0, #4
	mov r1, #0x64
	bl AllocFromHeap
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBEE0
	mov r0, #0
	pop {r4, pc}
_021EBEE0:
	mov r1, #0
	mov r2, #0x64
	bl memset
_021EBEE8:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021EBEEC: .word 0x0000FFFF
	thumb_func_end ov01_021EBEB8

	thumb_func_start ov01_021EBEF0
ov01_021EBEF0: ; 0x021EBEF0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBF20 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBF1A
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x10]
	mov r1, #2
	bl ov01_021EB898
	str r0, [r4, #8]
_021EBF1A:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EBF20: .word 0x0000FFFF
	thumb_func_end ov01_021EBEF0

	thumb_func_start ov01_021EBF24
ov01_021EBF24: ; 0x021EBF24
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBF54 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBF4E
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x14]
	mov r1, #3
	bl ov01_021EB898
	str r0, [r4, #0xc]
_021EBF4E:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EBF54: .word 0x0000FFFF
	thumb_func_end ov01_021EBF24

	thumb_func_start ov01_021EBF58
ov01_021EBF58: ; 0x021EBF58
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBF90 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBF8C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #8]
	mov r1, #0
	bl ov01_021EB898
	str r0, [r4]
	bl sub_0200ADA4
	ldr r0, [r4]
	bl sub_0200A740
_021EBF8C:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBF90: .word 0x0000FFFF
	thumb_func_end ov01_021EBF58

	thumb_func_start ov01_021EBF94
ov01_021EBF94: ; 0x021EBF94
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBFCC ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBFC6
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r2, r3, #0
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0xc]
	bl ov01_021EB898
	str r0, [r4, #4]
	bl sub_0200B00C
	ldr r0, [r4, #4]
	bl sub_0200A740
_021EBFC6:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EBFCC: .word 0x0000FFFF
	thumb_func_end ov01_021EBF94

	thumb_func_start ov01_021EBFD0
ov01_021EBFD0: ; 0x021EBFD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _021EC024 ; =0x0000FFFF
	cmp r1, r0
	beq _021EC022
	ldr r2, [r4, #0xc]
	mov r0, #1
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x40
	add r1, r5, #0
	mov r3, #0
	bl ov01_021EC240
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, #0x10
	mov r2, #0x30
	bl memset
	add r5, #0xfc
	ldr r1, [r5]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x14]
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	str r1, [r0, #0x24]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x28]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x38]
_021EC022:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EC024: .word 0x0000FFFF
	thumb_func_end ov01_021EBFD0

	thumb_func_start ov01_021EC028
ov01_021EC028: ; 0x021EC028
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021EC032:
	ldr r0, [r6, #8]
	add r0, #0x10
	bl sub_02024624
	str r0, [r5, #0x4c]
	add r1, r7, #0
	bl sub_02024830
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _021EC04C
	bl GF_AssertFail
_021EC04C:
	add r4, r4, #1
	add r5, #0x3c
	cmp r4, #0x40
	blt _021EC032
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC028

	thumb_func_start ov01_021EC058
ov01_021EC058: ; 0x021EC058
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021EC060:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _021EC06C
	bl sub_02024758
	str r6, [r5, #0x4c]
_021EC06C:
	add r4, r4, #1
	add r5, #0x3c
	cmp r4, #0x40
	blt _021EC060
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC058

	thumb_func_start ov01_021EC078
ov01_021EC078: ; 0x021EC078
	push {r3, lr}
	sub sp, #0x18
	add r2, r0, #0
	ldr r0, _021EC0BC ; =0x0000FFFF
	cmp r1, r0
	beq _021EC0B8
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r3, [r2, #4]
	mov r2, #0xc
	mul r2, r1
	ldr r1, [r3, r2]
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	add r1, sp, #0x14
	str r0, [sp]
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, [sp, #0x14]
	mov r0, #2
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0xc0
	bl BG_LoadPlttData
	ldr r0, [sp]
	bl FreeToHeap
	mov r0, #0
	str r0, [sp]
_021EC0B8:
	add sp, #0x18
	pop {r3, pc}
	.balign 4, 0
_021EC0BC: .word 0x0000FFFF
	thumb_func_end ov01_021EC078

	thumb_func_start ov01_021EC0C0
ov01_021EC0C0: ; 0x021EC0C0
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021EC110 ; =0x0000FFFF
	cmp r1, r0
	beq _021EC10C
	mov r2, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r4, #4]
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r4, r0]
	ldr r1, [r1, #4]
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	add r1, sp, #0x14
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r3, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #2
	bl BG_LoadCharTilesData
	ldr r0, [sp, #8]
	bl FreeToHeap
	mov r0, #0
	str r0, [sp, #8]
_021EC10C:
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_021EC110: .word 0x0000FFFF
	thumb_func_end ov01_021EC0C0

	thumb_func_start ov01_021EC114
ov01_021EC114: ; 0x021EC114
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, _021EC1B8 ; =0x0000FFFF
	add r5, r1, #0
	cmp r5, r0
	beq _021EC1B4
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r1, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r2, [r4, #4]
	mul r1, r5
	add r1, r2, r1
	ldr r0, [r4, r0]
	ldr r1, [r1, #8]
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _021EC14A
	bl GF_AssertFail
_021EC14A:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	bl NNS_G2dGetUnpackedScreenData
	ldr r3, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	add r2, #0xc
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r3, [sp, #0x18]
	ldr r0, [r4, r0]
	add r2, r3, #0
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	add r0, #0xfe
	ldr r0, [r4, r0]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #2
	add r3, r2, #0
	bl sub_0201CA4C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #8]
	bl BgCommitTilemapBufferToVram
	ldr r0, [sp, #0x14]
	bl FreeToHeap
	mov r0, #0
	str r0, [sp, #0x14]
_021EC1B4:
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_021EC1B8: .word 0x0000FFFF
	thumb_func_end ov01_021EC114

	thumb_func_start ov01_021EC1BC
ov01_021EC1BC: ; 0x021EC1BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _021EC1CC
	bl GF_AssertFail
_021EC1CC:
	cmp r4, #0
	bgt _021EC1D4
	bl GF_AssertFail
_021EC1D4:
	cmp r4, #0x28
	bls _021EC1DC
	bl GF_AssertFail
_021EC1DC:
	add r0, r5, #0
	add r0, #0xc
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC1BC

	thumb_func_start ov01_021EC1E4
ov01_021EC1E4: ; 0x021EC1E4
	ldr r3, _021EC1F0 ; =memset
	mov r1, #0
	str r1, [r0, #8]
	add r0, #0xc
	mov r2, #0x28
	bx r3
	.balign 4, 0
_021EC1F0: .word memset
	thumb_func_end ov01_021EC1E4

	thumb_func_start ov01_021EC1F4
ov01_021EC1F4: ; 0x021EC1F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r6, [r5]
	bl ov01_021EC8D8
	add r4, r0, #0
	bne _021EC208
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC208:
	add r1, r5, #0
	str r6, [r4]
	add r1, #0xc
	str r1, [r4, #0x34]
	ldr r1, [r5, #0x44]
	str r1, [r4, #0x38]
	ldr r1, [r5, #0x44]
	str r4, [r1, #0x34]
	str r4, [r5, #0x44]
	add r1, r7, #0
	bl ov01_021EC1BC
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021EC22A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC22A:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EC234
	bl GF_AssertFail
_021EC234:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02024830
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EC1F4

	thumb_func_start ov01_021EC240
ov01_021EC240: ; 0x021EC240
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x2c]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #0x30]
	mov r6, #0
	add r4, sp, #0x34
_021EC250:
	ldr r0, [r5]
	bl sub_0200A7FC
	add r6, r6, #1
	add r5, r5, #4
	stmia r4!, {r0}
	cmp r6, #4
	blt _021EC250
	ldr r0, [sp, #0x40]
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x10]
	ldr r0, [r7, #8]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl sub_02009D48
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC240

	thumb_func_start ov01_021EC29C
ov01_021EC29C: ; 0x021EC29C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x38]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x34]
	str r1, [r0, #0x38]
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02024830
	add r0, r4, #0
	bl ov01_021EC1E4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3c
	ldr r5, [r4, #4]
	bl memset
	str r5, [r4, #4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC29C

	thumb_func_start ov01_021EC2CC
ov01_021EC2CC: ; 0x021EC2CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, r5
	beq _021EC2E2
_021EC2D6:
	ldr r4, [r0, #0x34]
	bl ov01_021EC29C
	add r0, r4, #0
	cmp r4, r5
	bne _021EC2D6
_021EC2E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC2CC

	thumb_func_start ov01_021EC2E4
ov01_021EC2E4: ; 0x021EC2E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	ldr r4, [r0, #0x34]
	cmp r0, r5
	beq _021EC2FC
_021EC2F2:
	blx r6
	add r0, r4, #0
	ldr r4, [r4, #0x34]
	cmp r0, r5
	bne _021EC2F2
_021EC2FC:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC2E4

	thumb_func_start ov01_021EC300
ov01_021EC300: ; 0x021EC300
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EC300

	thumb_func_start ov01_021EC304
ov01_021EC304: ; 0x021EC304
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	bl sub_020248AC
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC304

	thumb_func_start ov01_021EC31C
ov01_021EC31C: ; 0x021EC31C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021EC45C ; =0x021DA6F4
	add r5, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021EC460 ; =0x00000F4C
	ldr r2, [sp, #0x18]
	ldr r1, [r5, r0]
	add r0, #8
	sub r6, r2, r1
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r0]
	sub r4, r1, r0
	mov r0, #1
	mov r1, #3
	lsl r0, r0, #0xe
	lsl r1, r1, #0xc
	bl FX_Div
	add r7, r0, #0
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x24]
	bl sub_0202360C
	str r0, [sp, #0xc]
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x24]
	bl sub_02023614
	add r1, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	add r3, sp, #0x14
	bl sub_02020E10
	mov r1, #1
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x14
	bl FX_Div
	str r0, [sp, #0x14]
	cmp r4, #0
	bgt _021EC398
	ldr r0, [sp, #0x10]
	ldr r1, _021EC464 ; =0x000BE8D0
	bl FX_Div
	b _021EC3A0
_021EC398:
	ldr r0, [sp, #0x10]
	ldr r1, _021EC468 ; =0x000BE811
	bl FX_Div
_021EC3A0:
	mov r7, #1
	lsl r7, r7, #0xc
	str r0, [sp, #0x10]
	cmp r6, #0
	bge _021EC3C8
	ldr r7, _021EC46C ; =0xFFFFF000
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r7, #0xc
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021EC3C8:
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl FX_Div
	add r6, r0, #0
	cmp r7, #0
	bge _021EC3F0
	asr r1, r6, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021EC3F0:
	mov r7, #1
	lsl r7, r7, #0xc
	cmp r4, #0
	bge _021EC416
	ldr r7, _021EC46C ; =0xFFFFF000
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r7, #0xc
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
_021EC416:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl FX_Div
	add r3, r0, #0
	cmp r7, #0
	bge _021EC43E
	asr r1, r3, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
_021EC43E:
	add r0, r6, r3
	beq _021EC450
	ldr r0, _021EC460 ; =0x00000F4C
	add r2, sp, #0x18
	add r4, r5, r0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_021EC450:
	ldr r0, [sp, #4]
	str r6, [r0]
	ldr r0, [sp, #8]
	str r3, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EC45C: .word 0x021DA6F4
_021EC460: .word 0x00000F4C
_021EC464: .word 0x000BE8D0
_021EC468: .word 0x000BE811
_021EC46C: .word 0xFFFFF000
	thumb_func_end ov01_021EC31C

	thumb_func_start ov01_021EC470
ov01_021EC470: ; 0x021EC470
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov01_021EC4A8
	cmp r5, #0
	beq _021EC494
	ldr r0, [sp, #4]
	asr r1, r0, #0xc
	str r1, [r5]
	bpl _021EC494
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5]
_021EC494:
	cmp r4, #0
	beq _021EC4A4
	ldr r0, [sp]
	asr r0, r0, #0xc
	str r0, [r4]
	bpl _021EC4A4
	add r0, r0, #1
	str r0, [r4]
_021EC4A4:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC470

	thumb_func_start ov01_021EC4A8
ov01_021EC4A8: ; 0x021EC4A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r0, sp, #8
	add r1, sp, #4
	add r2, r5, #0
	bl ov01_021EC31C
	ldr r4, [r5, #0x40]
	add r5, #0xc
	cmp r4, r5
	beq _021EC4EC
	add r6, sp, #0xc
_021EC4C6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021EC304
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov01_021EB5F4
	ldr r4, [r4, #0x34]
	cmp r4, r5
	bne _021EC4C6
_021EC4EC:
	cmp r7, #0
	beq _021EC4F4
	ldr r0, [sp, #8]
	str r0, [r7]
_021EC4F4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EC4FE
	ldr r1, [sp, #4]
	str r1, [r0]
_021EC4FE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC4A8

	thumb_func_start ov01_021EC504
ov01_021EC504: ; 0x021EC504
	str r1, [r0]
	strh r2, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r1, [sp]
	strh r1, [r0, #0xc]
	ldr r1, [sp, #4]
	strh r1, [r0, #0xe]
	ldr r1, [sp, #8]
	strh r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	strh r1, [r0, #0x12]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x18]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EC504

	thumb_func_start ov01_021EC52C
ov01_021EC52C: ; 0x021EC52C
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r1, [sp]
	strh r3, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov01_021EC52C

	thumb_func_start ov01_021EC538
ov01_021EC538: ; 0x021EC538
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bne _021EC54C
	mov r0, #1
	orr r4, r0
	b _021EC572
_021EC54C:
	bgt _021EC552
	mov r2, #1
	b _021EC554
_021EC552:
	add r2, r4, #0
_021EC554:
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021EC564
	cmp r2, #0
	beq _021EC56C
_021EC564:
	cmp r0, r1
	bgt _021EC572
	cmp r2, #1
	bne _021EC572
_021EC56C:
	mov r0, #1
	orr r4, r0
	strh r1, [r5, #8]
_021EC572:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021EC57E
	mov r0, #2
	orr r4, r0
	b _021EC5A4
_021EC57E:
	bgt _021EC584
	mov r2, #1
	b _021EC586
_021EC584:
	mov r2, #0
_021EC586:
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021EC596
	cmp r2, #0
	beq _021EC59E
_021EC596:
	cmp r0, r1
	bgt _021EC5A4
	cmp r2, #1
	bne _021EC5A4
_021EC59E:
	mov r0, #2
	orr r4, r0
	strh r1, [r5, #4]
_021EC5A4:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #6]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021EC5F8
	mov r1, #4
	ldrsh r1, [r5, r1]
	ldr r0, [r5]
	ldr r2, [r5, #0x18]
	blx r2
	mov r0, #8
	ldrsh r1, [r5, r0]
	strh r1, [r5, #6]
	mov r1, #1
	tst r1, r4
	bne _021EC5D2
	ldrsh r1, [r5, r0]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #8]
_021EC5D2:
	mov r0, #2
	tst r0, r4
	bne _021EC5F8
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r1, [r5, r0]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _021EC5F8
	mov r0, #0
	strh r0, [r5, #0xa]
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	strh r0, [r5, #4]
_021EC5F8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC538

	thumb_func_start ov01_021EC5FC
ov01_021EC5FC: ; 0x021EC5FC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [r4]
	cmp r1, #0
	beq _021EC64C
	cmp r1, #1
	bne _021EC630
	add r1, r3, #0
	add r3, sp, #0
	add r0, r2, #0
	ldrh r3, [r3, #0x14]
	ldr r2, [sp, #0x10]
	bl ov01_021EC678
	add r0, r4, #0
	bl ov01_021EC774
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	mov r2, #1
	bl ov01_021EC790
	add sp, #8
	pop {r4, pc}
_021EC630:
	cmp r1, #2
	bne _021EC64C
	add r1, sp, #0
	ldrh r1, [r1, #0x14]
	ldr r4, [sp, #0x18]
	str r1, [sp]
	mov r1, #0x7f
	mul r1, r4
	str r1, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ov01_021EC6A4
_021EC64C:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021EC5FC

	thumb_func_start ov01_021EC650
ov01_021EC650: ; 0x021EC650
	push {r4, lr}
	mov r4, #1
	cmp r2, #0
	beq _021EC674
	cmp r2, #1
	bne _021EC666
	add r0, r1, #0
	bl ov01_021EC7AC
	add r4, r0, #0
	b _021EC674
_021EC666:
	cmp r2, #2
	bne _021EC674
	bl ov01_021EC728
	cmp r0, #0
	bne _021EC674
	mov r4, #0
_021EC674:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov01_021EC650

	thumb_func_start ov01_021EC678
ov01_021EC678: ; 0x021EC678
	push {r3, r4, r5, lr}
	sub sp, #8
	str r1, [sp]
	mov r1, #0
	add r4, r3, #0
	str r2, [sp, #4]
	mvn r1, r1
	mov r2, #1
	mov r3, #0
	add r5, r0, #0
	bl ov01_021EA864
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r2, r4, #0
	mov r3, #0x1f
	bl ov01_021EA89C
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC678

	thumb_func_start ov01_021EC6A4
ov01_021EC6A4: ; 0x021EC6A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	bl ov01_021EA858
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov01_021EA85C
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov01_021EA860
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	add r0, r5, #4
	add r3, r4, #0
	str r7, [r5]
	bl ov01_021EB830
	add r0, sp, #0x18
	ldrh r7, [r0, #0x10]
	add r0, r5, #0
	mov r2, #0x1f
	add r1, r6, #0
	and r1, r2
	add r0, #0x18
	and r2, r7
	add r3, r4, #0
	bl ov01_021EB830
	add r0, r5, #0
	asr r1, r6, #5
	mov r3, #0x1f
	asr r2, r7, #5
	add r0, #0x2c
	and r1, r3
	and r2, r3
	add r3, r4, #0
	bl ov01_021EB830
	add r0, r5, #0
	asr r1, r6, #0xa
	mov r2, #0x1f
	asr r3, r7, #0xa
	and r1, r2
	and r2, r3
	add r0, #0x40
	add r3, r4, #0
	bl ov01_021EB830
	add r5, #0x54
	ldr r1, [sp, #8]
	ldr r2, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ov01_021EB830
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EC6A4

	thumb_func_start ov01_021EC728
ov01_021EC728: ; 0x021EC728
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	bl ov01_021EB840
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x18
	bl ov01_021EB840
	add r0, r5, #0
	add r0, #0x2c
	bl ov01_021EB840
	add r0, r5, #0
	add r0, #0x40
	bl ov01_021EB840
	add r0, r5, #0
	add r0, #0x54
	bl ov01_021EB840
	ldr r3, [r5, #0x40]
	ldr r0, [r5]
	lsl r6, r3, #0xa
	ldr r1, [r5, #0x54]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x18]
	ldr r5, [r5, #0x2c]
	lsl r5, r5, #5
	orr r3, r5
	orr r3, r6
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov01_021EC678
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021EC728

	thumb_func_start ov01_021EC774
ov01_021EC774: ; 0x021EC774
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_021EC77A:
	add r0, r3, r2
	add r2, r2, #1
	strb r1, [r0, #4]
	cmp r2, #0x20
	blt _021EC77A
	ldr r0, [r3]
	add r1, r3, #4
	ldr r3, _021EC78C ; =ov01_021EA8C4
	bx r3
	.balign 4, 0
_021EC78C: .word ov01_021EA8C4
	thumb_func_end ov01_021EC774

	thumb_func_start ov01_021EC790
ov01_021EC790: ; 0x021EC790
	mov r3, #0x7f
	str r3, [r0, #0x24]
	mov r3, #0
	str r3, [r0, #0x28]
	strh r1, [r0, #0x2c]
	cmp r2, #1
	bne _021EC7A4
	mov r1, #1
	strh r1, [r0, #0x2e]
	bx lr
_021EC7A4:
	sub r1, r3, #1
	strh r1, [r0, #0x2e]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EC790

	thumb_func_start ov01_021EC7AC
ov01_021EC7AC: ; 0x021EC7AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov01_021EC7E8
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _021EC7C4
	ldr r0, [r5]
	add r1, r5, #4
	bl ov01_021EA8C4
_021EC7C4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC7AC

	thumb_func_start ov01_021EC7C8
ov01_021EC7C8: ; 0x021EC7C8
	push {r4, lr}
	add r4, r0, #0
	mov r2, #1
	str r2, [r4, #0x24]
	mov r1, #0
	str r1, [r4, #0x28]
	strh r1, [r4, #0x2c]
	strh r2, [r4, #0x2e]
	bl ov01_021EC828
	ldr r0, [r4]
	add r1, r4, #4
	bl ov01_021EA8C4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC7C8

	thumb_func_start ov01_021EC7E8
ov01_021EC7E8: ; 0x021EC7E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x2e
	ldrsh r1, [r5, r1]
	mov r4, #0
	cmp r1, #0
	bne _021EC7FA
	mov r4, #1
	b _021EC824
_021EC7FA:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	bgt _021EC804
	mov r4, #1
	b _021EC824
_021EC804:
	ldr r1, [r5, #0x28]
	add r2, r1, #1
	str r2, [r5, #0x28]
	mov r1, #0x2c
	ldrsh r1, [r5, r1]
	cmp r2, r1
	blt _021EC824
	str r4, [r5, #0x28]
	bl ov01_021EC828
	ldr r0, [r5, #0x24]
	sub r0, r0, #1
	str r0, [r5, #0x24]
	cmp r0, #0
	bgt _021EC824
	mov r4, #1
_021EC824:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC7E8

	thumb_func_start ov01_021EC828
ov01_021EC828: ; 0x021EC828
	push {r3, r4}
	mov r1, #0x2e
	ldrsh r1, [r0, r1]
	ldr r2, [r0, #0x24]
	cmp r1, #0
	bge _021EC83A
	mov r1, #0x7f
	sub r2, r1, r2
	b _021EC83A
_021EC83A:
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	asr r4, r1, #2
	mov r3, #0x1f
	cmp r4, #0x1f
	bge _021EC856
_021EC848:
	sub r1, r3, r4
	lsl r2, r1, #2
	add r1, r0, r3
	sub r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, r4
	bgt _021EC848
_021EC856:
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EC828

	thumb_func_start ov01_021EC85C
ov01_021EC85C: ; 0x021EC85C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #0x28]
	add r1, r2, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x2c]
	blx r4
	ldr r0, [sp]
	mov r6, #0
	ldr r5, [r0, #0x40]
	str r6, [sp, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EC8D2
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
_021EC88A:
	ldr r0, [sp]
	cmp r5, r0
	beq _021EC8D2
	mov r4, #0
	cmp r6, #0
	ble _021EC8A6
_021EC896:
	add r0, r5, #0
	blx r7
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EC8A6
	add r4, r4, #1
	cmp r4, r6
	blt _021EC896
_021EC8A6:
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _021EC8C6
	add r0, r1, #0
	ldr r1, [sp, #8]
	bl _s32_div_f
	cmp r1, #0
	bne _021EC8C6
	ldr r0, [sp, #0x28]
	add r6, r6, r0
_021EC8C6:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021EC88A
_021EC8D2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC85C

	thumb_func_start ov01_021EC8D8
ov01_021EC8D8: ; 0x021EC8D8
	mov r2, #0
	add r3, r0, #0
_021EC8DC:
	ldr r1, [r3, #0x48]
	cmp r1, #0
	bne _021EC8EC
	mov r1, #0x3c
	add r0, #0x48
	mul r1, r2
	add r0, r0, r1
	bx lr
_021EC8EC:
	add r2, r2, #1
	add r3, #0x3c
	cmp r2, #0x40
	blt _021EC8DC
	mov r0, #0
	bx lr
	thumb_func_end ov01_021EC8D8

	thumb_func_start ov01_021EC8F8
ov01_021EC8F8: ; 0x021EC8F8
	push {r3, lr}
	ldr r0, _021EC948 ; =0x00000F62
	ldrh r2, [r1, r0]
	cmp r2, #5
	bhi _021EC946
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EC90E: ; jump table
	.short _021EC91A - _021EC90E - 2 ; case 0
	.short _021EC920 - _021EC90E - 2 ; case 1
	.short _021EC926 - _021EC90E - 2 ; case 2
	.short _021EC92C - _021EC90E - 2 ; case 3
	.short _021EC93A - _021EC90E - 2 ; case 4
	.short _021EC940 - _021EC90E - 2 ; case 5
_021EC91A:
	mov r2, #1
	strh r2, [r1, r0]
	pop {r3, pc}
_021EC920:
	mov r2, #3
	strh r2, [r1, r0]
	pop {r3, pc}
_021EC926:
	mov r2, #3
	strh r2, [r1, r0]
	pop {r3, pc}
_021EC92C:
	add r2, r0, #4
	ldrh r2, [r1, r2]
	cmp r2, #5
	bne _021EC946
	mov r2, #4
	strh r2, [r1, r0]
	pop {r3, pc}
_021EC93A:
	mov r2, #5
	strh r2, [r1, r0]
	pop {r3, pc}
_021EC940:
	ldr r0, [r1, #4]
	bl ov01_021EBCA4
_021EC946:
	pop {r3, pc}
	.balign 4, 0
_021EC948: .word 0x00000F62
	thumb_func_end ov01_021EC8F8

	thumb_func_start ov01_021EC94C
ov01_021EC94C: ; 0x021EC94C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021ECB8C ; =0x00000F58
	add r4, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r4, r2]
	ldr r5, [r4, r0]
	cmp r2, #5
	bhi _021ECA1A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EC96C: ; jump table
	.short _021EC978 - _021EC96C - 2 ; case 0
	.short _021EC9E2 - _021EC96C - 2 ; case 1
	.short _021ECA24 - _021EC96C - 2 ; case 2
	.short _021ECA96 - _021EC96C - 2 ; case 3
	.short _021ECAF4 - _021EC96C - 2 ; case 4
	.short _021ECB42 - _021EC96C - 2 ; case 5
_021EC978:
	mov r0, #0x14
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021ECB90 ; =ov01_021ECBB4
	mov r3, #8
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov01_021EC504
	ldr r0, _021ECB94 ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021ECB98 ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021ECB9C ; =0x00000F64
	add r1, r5, #0
	ldrh r0, [r4, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x4c]
	mov r3, #3
	bl ov01_021EC5FC
	mov r0, #0
	add r5, #0xb4
	str r0, [r5]
	ldr r0, _021ECBA0 ; =ov01_021EDA7C
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200E320
	ldr r1, _021ECBA4 ; =0x00000F6C
	mov r2, #0x1e
	str r0, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	mov r0, #1
	sub r1, #0xa
	strh r0, [r4, r1]
	b _021ECB60
_021EC9E2:
	add r0, r5, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECA02
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r5, #0xb4
	sub r0, r0, #1
	str r0, [r5]
	b _021ECB60
_021ECA02:
	ldr r2, _021ECB9C ; =0x00000F64
	add r0, r5, #0
	ldrh r2, [r4, r2]
	add r5, #0x1c
	add r0, #0x4c
	add r1, r5, #0
	bl ov01_021EC650
	cmp r0, #1
	bne _021ECA1A
	cmp r6, #3
	beq _021ECA1C
_021ECA1A:
	b _021ECB60
_021ECA1C:
	ldr r0, _021ECBA8 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021ECB60
_021ECA24:
	mov r2, #0x14
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021ECB90 ; =ov01_021ECBB4
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov01_021EC504
	ldr r0, _021ECB9C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECA66
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021ECB94 ; =0x0000726F
	ldr r0, [r0, #0x4c]
	ldr r3, _021ECB98 ; =0x00006B5A
	mov r1, #3
	str r0, [r5, #0x1c]
	bl ov01_021EC678
	add r5, #0x1c
	add r0, r5, #0
	bl ov01_021EC7C8
_021ECA66:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021ECBAC ; =ov01_021ECC70
	ldr r1, _021ECB90 ; =ov01_021ECBB4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x14
	mov r3, #0xa
	bl ov01_021EC85C
	ldr r0, _021ECBA0 ; =ov01_021EDA7C
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200E320
	ldr r1, _021ECBA4 ; =0x00000F6C
	mov r2, #0x1e
	str r0, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	mov r0, #3
	sub r1, #0xa
	strh r0, [r4, r1]
	b _021ECB60
_021ECA96:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	strh r0, [r5, #6]
	cmp r1, #0
	bgt _021ECAB2
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl ov01_021ECBB4
	mov r0, #8
	ldrsh r0, [r5, r0]
	strh r0, [r5, #6]
_021ECAB2:
	ldr r0, _021ECBB0 ; =0x00000F66
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021ECB60
	mov r0, #1
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	mov r3, #1
	bl ov01_021EC52C
	ldr r0, _021ECB9C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECAE0
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov01_021EC790
_021ECAE0:
	mov r0, #0
	add r5, #0xb4
	str r0, [r5]
	ldr r0, _021ECBA8 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov01_021EDAE0
	b _021ECB60
_021ECAF4:
	add r0, r5, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECB14
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r5, #0xb4
	sub r0, r0, #1
	str r0, [r5]
	b _021ECB60
_021ECB14:
	ldr r0, _021ECB9C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECB26
	add r5, #0x1c
	add r0, r5, #0
	bl ov01_021EC7AC
	b _021ECB28
_021ECB26:
	mov r0, #1
_021ECB28:
	cmp r0, #1
	bne _021ECB60
	cmp r6, #3
	bne _021ECB60
	add r0, r4, #0
	ldr r1, [r4, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021ECB60
	ldr r0, _021ECBA8 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	b _021ECB60
_021ECB42:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECB5A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ECB5A:
	ldr r0, [r4, #4]
	bl ov01_021EBCA4
_021ECB60:
	ldr r0, _021ECBA8 ; =0x00000F62
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021ECB86
	cmp r0, #0
	beq _021ECB86
	add r0, r4, #0
	ldr r1, _021ECBAC ; =ov01_021ECC70
	add r0, #0xc
	bl ov01_021EC2E4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov01_021EC470
	add r0, r4, #0
	bl ov01_021EC300
_021ECB86:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021ECB8C: .word 0x00000F58
_021ECB90: .word ov01_021ECBB4
_021ECB94: .word 0x0000726F
_021ECB98: .word 0x00006B5A
_021ECB9C: .word 0x00000F64
_021ECBA0: .word ov01_021EDA7C
_021ECBA4: .word 0x00000F6C
_021ECBA8: .word 0x00000F62
_021ECBAC: .word ov01_021ECC70
_021ECBB0: .word 0x00000F66
	thumb_func_end ov01_021EC94C

	thumb_func_start ov01_021ECBB4
ov01_021ECBB4: ; 0x021ECBB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _021ECC62
_021ECBC6:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov01_021EC1F4
	add r6, r0, #0
	beq _021ECC62
	ldr r4, [r6, #8]
	bl MTRandom
	mov r1, #0
	str r1, [r4]
	mov r1, #3
	add r7, r0, #0
	bl _u32_div_f
	add r5, r1, #0
	lsl r1, r5, #0x10
	ldr r0, [r6, #4]
	lsr r1, r1, #0x10
	bl sub_020249D4
	add r0, r7, #0
	mov r1, #0x14
	bl _u32_div_f
	add r2, r5, #1
	mov r0, #0xa
	mul r0, r2
	add r0, r1, r0
	str r0, [r4, #8]
	cmp r5, #2
	bne _021ECC0C
	ldr r0, [r4, #8]
	add r0, #0xa
	str r0, [r4, #8]
_021ECC0C:
	add r0, r1, #0
	mov r1, #4
	mvn r1, r1
	bl _s32_div_f
	mov r1, #4
	add r2, r5, #1
	mvn r1, r1
	mul r1, r2
	add r0, r0, r1
	str r0, [r4, #0x10]
	cmp r5, #2
	bne _021ECC2C
	ldr r0, [r4, #0x10]
	sub r0, r0, #5
	str r0, [r4, #0x10]
_021ECC2C:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #1
	str r0, [r4, #4]
	ldr r1, _021ECC68 ; =0x0000010E
	add r0, r7, #0
	bl _u32_div_f
	mov r0, #0xf
	mul r0, r5
	add r0, r1, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _021ECC6C ; =0xFFFA0000
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	bl ov01_021EB5F4
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021ECBC6
_021ECC62:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECC68: .word 0x0000010E
_021ECC6C: .word 0xFFFA0000
	thumb_func_end ov01_021ECBB4

	thumb_func_start ov01_021ECC70
ov01_021ECC70: ; 0x021ECC70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r5, [r6, #8]
	add r0, sp, #0
	add r1, r6, #0
	bl ov01_021EC304
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021ECC92
	cmp r0, #1
	beq _021ECCEA
	cmp r0, #2
	beq _021ECCFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021ECC92:
	mov r4, #0
	mov r7, #2
_021ECC96:
	ldr r0, [r5, #0x10]
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [r5]
	add r0, r1, #1
	str r0, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	ble _021ECCD8
	bl MTRandom
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #7
	bhs _021ECCC8
	str r7, [r5, #0xc]
	b _021ECCD8
_021ECCC8:
	mov r0, #1
	str r0, [r5, #0xc]
	mov r0, #4
	str r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #3
	bl sub_020249D4
_021ECCD8:
	add r4, r4, #1
	cmp r4, #2
	blt _021ECC96
	ldr r0, [r6, #4]
	add r1, sp, #0
	bl ov01_021EB5F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021ECCEA:
	ldr r1, [r5]
	sub r0, r1, #1
	str r0, [r5]
	cmp r1, #0
	bgt _021ECD02
	mov r0, #2
	add sp, #0xc
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_021ECCFC:
	add r0, r6, #0
	bl ov01_021EC29C
_021ECD02:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021ECC70

	thumb_func_start ov01_021ECD08
ov01_021ECD08: ; 0x021ECD08
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021ECF2C ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021ECDCC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021ECD28: ; jump table
	.short _021ECD34 - _021ECD28 - 2 ; case 0
	.short _021ECD94 - _021ECD28 - 2 ; case 1
	.short _021ECDD6 - _021ECD28 - 2 ; case 2
	.short _021ECE3E - _021ECD28 - 2 ; case 3
	.short _021ECE96 - _021ECD28 - 2 ; case 4
	.short _021ECEE4 - _021ECD28 - 2 ; case 5
_021ECD34:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021ECF30 ; =ov01_021ECF4C
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x1e
	bl ov01_021EC504
	ldr r0, _021ECF34 ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021ECF38 ; =0x00006318
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021ECF3C ; =0x00000F64
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x4c]
	mov r3, #3
	bl ov01_021EC5FC
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0
	add r4, #0xb8
	str r0, [r4]
	ldr r0, _021ECF40 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021ECF02
_021ECD94:
	add r0, r4, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECDB4
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021ECF02
_021ECDB4:
	ldr r2, _021ECF3C ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov01_021EC650
	cmp r0, #1
	bne _021ECDCC
	cmp r6, #3
	beq _021ECDCE
_021ECDCC:
	b _021ECF02
_021ECDCE:
	ldr r0, _021ECF40 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021ECF02
_021ECDD6:
	mov r2, #6
	mov r3, #3
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021ECF30 ; =ov01_021ECF4C
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov01_021EC504
	ldr r0, _021ECF3C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ECE1C
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021ECF34 ; =0x0000726F
	ldr r0, [r0, #0x4c]
	ldr r3, _021ECF38 ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov01_021EC678
	add r0, r4, #0
	add r0, #0x1c
	bl ov01_021EC7C8
_021ECE1C:
	mov r0, #0
	add r4, #0xb8
	str r0, [r4]
	mov r0, #3
	str r0, [sp]
	ldr r0, _021ECF44 ; =ov01_021ED070
	ldr r1, _021ECF30 ; =ov01_021ECF4C
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl ov01_021EC85C
	ldr r0, _021ECF40 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021ECF02
_021ECE3E:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021ECE5A
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov01_021ECF4C
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021ECE5A:
	ldr r0, _021ECF48 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021ECF02
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1e
	mov r3, #5
	bl ov01_021EC52C
	ldr r0, _021ECF3C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ECE88
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov01_021EC790
_021ECE88:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021ECF40 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021ECF02
_021ECE96:
	add r0, r4, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECEB6
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021ECF02
_021ECEB6:
	ldr r0, _021ECF3C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ECEC8
	add r4, #0x1c
	add r0, r4, #0
	bl ov01_021EC7AC
	b _021ECECA
_021ECEC8:
	mov r0, #1
_021ECECA:
	cmp r0, #1
	bne _021ECF02
	cmp r6, #3
	bne _021ECF02
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021ECF02
	ldr r0, _021ECF40 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021ECF02
_021ECEE4:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ECEFC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ECEFC:
	ldr r0, [r5, #4]
	bl ov01_021EBCA4
_021ECF02:
	ldr r0, _021ECF40 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021ECF28
	cmp r0, #0
	beq _021ECF28
	add r0, r5, #0
	ldr r1, _021ECF44 ; =ov01_021ED070
	add r0, #0xc
	bl ov01_021EC2E4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov01_021EC470
	add r0, r5, #0
	bl ov01_021EC300
_021ECF28:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021ECF2C: .word 0x00000F58
_021ECF30: .word ov01_021ECF4C
_021ECF34: .word 0x0000726F
_021ECF38: .word 0x00006318
_021ECF3C: .word 0x00000F64
_021ECF40: .word 0x00000F62
_021ECF44: .word ov01_021ED070
_021ECF48: .word 0x00000F66
	thumb_func_end ov01_021ECD08

	thumb_func_start ov01_021ECF4C
ov01_021ECF4C: ; 0x021ECF4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	ldr r3, _021ED064 ; =0x0220673C
	add r2, sp, #0x48
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021ED068 ; =0x0220674C
	add r2, sp, #0x38
	str r2, [sp, #0x14]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _021ED06C ; =0x00000F58
	ldr r0, [sp]
	ldr r6, [r0, r1]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021ED060
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0xb8
	str r0, [sp, #0x18]
	mov r0, #7
	mvn r0, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021ECF90:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov01_021EC1F4
	add r4, r0, #0
	beq _021ED060
	ldr r0, [sp, #0x18]
	ldr r5, [r4, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xb8
	ldr r1, [r0]
	mov r0, #0x32
	lsl r0, r0, #4
	cmp r1, r0
	blt _021ECFBE
	add r1, r6, #0
	add r1, #0xb8
	mov r0, #0
	str r0, [r1]
_021ECFBE:
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0xc8
	bl _s32_div_f
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [r1, r0]
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5]
	bl MTRandom
	mov r1, #0x2a
	bl _u32_div_f
	add r0, r1, #4
	str r0, [r5, #4]
	sub r0, r0, #4
	mov r1, #0xf
	bl _s32_div_f
	add r7, r0, #0
	lsl r1, r7, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl sub_020249D4
	add r0, r7, #1
	neg r1, r0
	str r1, [r5, #0x10]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r1, [r2, r1]
	mul r1, r0
	str r1, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	add r0, sp, #0x20
	add r1, r4, #0
	bl ov01_021EC304
	add r3, sp, #0x20
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl MTRandom
	mov r1, #0x69
	lsl r1, r1, #2
	bl _u32_div_f
	mov r0, #1
	sub r2, r0, r7
	sub r0, #0x15
	mul r0, r2
	add r1, r0, r1
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	str r1, [sp, #0x2c]
	lsl r0, r1, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x2c
	str r0, [sp, #0x30]
	ldr r0, [r4, #4]
	bl ov01_021EB5F4
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021ECF90
_021ED060:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED064: .word 0x0220673C
_021ED068: .word 0x0220674C
_021ED06C: .word 0x00000F58
	thumb_func_end ov01_021ECF4C

	thumb_func_start ov01_021ED070
ov01_021ED070: ; 0x021ED070
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl ov01_021EC304
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021ED09A
	cmp r0, #1
	beq _021ED0E6
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021ED09A:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021ED0BE
	mov r0, #1
	str r0, [r4, #0xc]
_021ED0BE:
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	bl _s32_div_f
	cmp r1, #0
	bne _021ED0DA
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	cmp r0, #1
	ble _021ED0DA
	sub r0, r0, #1
	str r0, [r4, #8]
_021ED0DA:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl ov01_021EB5F4
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021ED0E6:
	add r0, r5, #0
	bl ov01_021EC29C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021ED070

	thumb_func_start ov01_021ED0F0
ov01_021ED0F0: ; 0x021ED0F0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021ED2FC ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021ED1AA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021ED110: ; jump table
	.short _021ED11C - _021ED110 - 2 ; case 0
	.short _021ED172 - _021ED110 - 2 ; case 1
	.short _021ED1B4 - _021ED110 - 2 ; case 2
	.short _021ED212 - _021ED110 - 2 ; case 3
	.short _021ED26A - _021ED110 - 2 ; case 4
	.short _021ED2B4 - _021ED110 - 2 ; case 5
_021ED11C:
	mov r0, #0x14
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	sub r0, r2, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021ED300 ; =ov01_021ED31C
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x10
	bl ov01_021EC504
	ldr r0, _021ED304 ; =0x0000716F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021ED308 ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021ED30C ; =0x00000F64
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x4c]
	mov r3, #3
	bl ov01_021EC5FC
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021ED310 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021ED2D2
_021ED172:
	add r0, r4, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ED192
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021ED2D2
_021ED192:
	ldr r2, _021ED30C ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov01_021EC650
	cmp r0, #1
	bne _021ED1AA
	cmp r6, #3
	beq _021ED1AC
_021ED1AA:
	b _021ED2D2
_021ED1AC:
	ldr r0, _021ED310 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021ED2D2
_021ED1B4:
	mov r2, #0x14
	mov r3, #2
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021ED300 ; =ov01_021ED31C
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov01_021EC504
	ldr r0, _021ED30C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ED1F6
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021ED304 ; =0x0000716F
	ldr r0, [r0, #0x4c]
	ldr r3, _021ED308 ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl ov01_021EC678
	add r4, #0x1c
	add r0, r4, #0
	bl ov01_021EC7C8
_021ED1F6:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021ED314 ; =ov01_021ED44C
	ldr r1, _021ED300 ; =ov01_021ED31C
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0xa
	bl ov01_021EC85C
	ldr r0, _021ED310 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021ED2D2
_021ED212:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021ED22E
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl ov01_021ED31C
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021ED22E:
	ldr r0, _021ED318 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021ED2D2
	mov r0, #9
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #6
	bl ov01_021EC52C
	ldr r0, _021ED30C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ED25C
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov01_021EC790
_021ED25C:
	mov r0, #0x14
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021ED310 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021ED2D2
_021ED26A:
	add r0, r4, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ED28A
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021ED2D2
_021ED28A:
	ldr r2, _021ED30C ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl ov01_021EC650
	cmp r0, #1
	bne _021ED2D2
	cmp r6, #3
	bne _021ED2D2
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021ED2D2
	ldr r0, _021ED310 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021ED2D2
_021ED2B4:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021ED2CC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ED2CC:
	ldr r0, [r5, #4]
	bl ov01_021EBCA4
_021ED2D2:
	ldr r0, _021ED310 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021ED2F8
	cmp r0, #0
	beq _021ED2F8
	add r0, r5, #0
	ldr r1, _021ED314 ; =ov01_021ED44C
	add r0, #0xc
	bl ov01_021EC2E4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov01_021EC470
	add r0, r5, #0
	bl ov01_021EC300
_021ED2F8:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021ED2FC: .word 0x00000F58
_021ED300: .word ov01_021ED31C
_021ED304: .word 0x0000716F
_021ED308: .word 0x00006B5A
_021ED30C: .word 0x00000F64
_021ED310: .word 0x00000F62
_021ED314: .word ov01_021ED44C
_021ED318: .word 0x00000F66
	thumb_func_end ov01_021ED0F0

	thumb_func_start ov01_021ED31C
ov01_021ED31C: ; 0x021ED31C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r1, #0
	str r1, [sp, #4]
	cmp r0, #0
	bgt _021ED330
	b _021ED448
_021ED330:
	ldr r0, [sp]
	mov r1, #0x20
	bl ov01_021EC1F4
	add r4, r0, #0
	bne _021ED33E
	b _021ED448
_021ED33E:
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r5]
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	add r0, r1, #7
	str r0, [r5, #4]
	bl MTRandom
	mov r1, #0xfa
	lsl r1, r1, #2
	bl _u32_div_f
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021ED370
	mov r0, #1
	b _021ED374
_021ED370:
	mov r0, #0
	mvn r0, r0
_021ED374:
	str r0, [r5, #8]
	mov r0, #1
	str r0, [r5, #0xc]
	bl MTRandom
	mov r1, #6
	bl _u32_div_f
	add r0, r1, #3
	str r0, [r5, #0x10]
	bl MTRandom
	mov r1, #5
	bl _u32_div_f
	add r0, r1, #4
	str r0, [r5, #0x14]
	bl MTRandom
	mov r1, #0x14
	bl _u32_div_f
	str r1, [sp, #8]
	add r0, sp, #0x10
	add r1, r4, #0
	bl ov01_021EC304
	bl MTRandom
	mov r1, #6
	lsl r1, r1, #6
	bl _u32_div_f
	sub r1, #0x40
	str r1, [sp, #0x10]
	bl MTRandom
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x10]
	sub r1, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	lsl r0, r1, #0xc
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl ov01_021EB5F4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	asr r1, r1, #0xc
	asr r0, r0, #0xc
	str r1, [sp, #0x14]
	mov r1, #3
	str r0, [sp, #0x10]
	bl _s32_div_f
	mov r1, #0x32
	sub r6, r1, r0
	mov r1, #0xce
	sub r7, r1, r0
	bpl _021ED406
	bl MTRandom
	neg r1, r7
	bl _u32_div_f
	sub r1, r6, r1
	b _021ED412
_021ED406:
	bl MTRandom
	add r1, r7, #0
	bl _u32_div_f
	add r1, r6, r1
_021ED412:
	ldr r0, [sp, #0x14]
	cmp r6, r0
	bgt _021ED424
	cmp r1, r0
	blt _021ED424
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	str r0, [r5, #4]
	b _021ED42E
_021ED424:
	bl MTRandom
	mov r1, #3
	and r0, r1
	str r0, [sp, #8]
_021ED42E:
	ldr r1, [sp, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020249D4
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021ED448
	b _021ED330
_021ED448:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021ED31C

	thumb_func_start ov01_021ED44C
ov01_021ED44C: ; 0x021ED44C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r0, sp, #0
	add r1, r5, #0
	bl ov01_021EC304
	ldr r0, [r4]
	add r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _021ED46E
	add r0, r5, #0
	bl ov01_021EC29C
_021ED46E:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021ED44C

	thumb_func_start ov01_021ED474
ov01_021ED474: ; 0x021ED474
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	ldr r2, _021ED580 ; =0x00000F62
	add r4, r0, #0
	ldrh r0, [r4, r2]
	add r5, r1, #0
	cmp r0, #5
	bhi _021ED57A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ED492: ; jump table
	.short _021ED49E - _021ED492 - 2 ; case 0
	.short _021ED4CE - _021ED492 - 2 ; case 1
	.short _021ED4E8 - _021ED492 - 2 ; case 2
	.short _021ED518 - _021ED492 - 2 ; case 3
	.short _021ED53C - _021ED492 - 2 ; case 4
	.short _021ED55C - _021ED492 - 2 ; case 5
_021ED49E:
	str r3, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	add r5, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r2, #2
	ldrh r0, [r4, r0]
	mov r2, #0x41
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r3, r6, #0
	ldr r2, [r2, #0x4c]
	bl ov01_021EC5FC
	ldr r0, _021ED580 ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021ED4CE:
	add r2, r2, #2
	ldrh r2, [r4, r2]
	add r5, #0x30
	add r0, r5, #0
	bl ov01_021EC650
	cmp r0, #1
	bne _021ED57A
	ldr r0, _021ED580 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021ED4E8:
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED50E
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r3, #0
	ldr r0, [r0, #0x4c]
	add r3, sp, #0x10
	str r0, [r5]
	ldrh r3, [r3, #0x10]
	add r1, r6, #0
	bl ov01_021EC678
	add r0, r5, #0
	bl ov01_021EC7C8
_021ED50E:
	ldr r0, _021ED580 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021ED518:
	add r0, r2, #4
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021ED57A
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED532
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	mov r2, #0
	bl ov01_021EC790
_021ED532:
	ldr r0, _021ED580 ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021ED53C:
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED54C
	add r0, r5, #0
	bl ov01_021EC7AC
	b _021ED54E
_021ED54C:
	mov r0, #1
_021ED54E:
	cmp r0, #1
	bne _021ED57A
	ldr r0, _021ED580 ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021ED55C:
	add r0, r2, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED574
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ED574:
	ldr r0, [r4, #4]
	bl ov01_021EBCA4
_021ED57A:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021ED580: .word 0x00000F62
	thumb_func_end ov01_021ED474

	thumb_func_start ov01_021ED584
ov01_021ED584: ; 0x021ED584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021ED700 ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021ED59A
	b _021ED6FC
_021ED59A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED5A6: ; jump table
	.short _021ED5B2 - _021ED5A6 - 2 ; case 0
	.short _021ED602 - _021ED5A6 - 2 ; case 1
	.short _021ED630 - _021ED5A6 - 2 ; case 2
	.short _021ED670 - _021ED5A6 - 2 ; case 3
	.short _021ED6A4 - _021ED5A6 - 2 ; case 4
	.short _021ED6DE - _021ED5A6 - 2 ; case 5
_021ED5B2:
	ldr r1, _021ED704 ; =0x00007555
	mov r2, #0x41
	str r1, [sp]
	ldr r1, _021ED708 ; =0x00007FFF
	add r0, #0xc
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x4c]
	add r1, #0x14
	mov r3, #6
	bl ov01_021EC5FC
	add r0, r5, #0
	mov r1, #0
	mov r2, #9
	mov r3, #0x1e
	bl ov01_021EB830
	mov r0, #0
	mov r1, #0x10
	bl ov01_021EB818
	mov r0, #4
	mov r1, #1
	bl GX_EngineAToggleLayers
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED602:
	add r0, r5, #0
	add r0, #0x14
	bl ov01_021EC7AC
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021EB840
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov01_021EB818
	cmp r6, #1
	bne _021ED6FC
	cmp r7, #1
	bne _021ED6FC
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED630:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED656
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021ED704 ; =0x00007555
	ldr r0, [r0, #0x4c]
	ldr r3, _021ED708 ; =0x00007FFF
	mov r1, #6
	str r0, [r5, #0x14]
	bl ov01_021EC678
	add r5, #0x14
	add r0, r5, #0
	bl ov01_021EC7C8
_021ED656:
	mov r0, #9
	mov r1, #7
	bl ov01_021EB818
	mov r0, #4
	mov r1, #1
	bl GX_EngineAToggleLayers
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED670:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021ED6FC
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED68E
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl ov01_021EC790
_021ED68E:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0x1e
	bl ov01_021EB830
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED6A4:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED6B8
	add r0, r5, #0
	add r0, #0x14
	bl ov01_021EC7AC
	add r6, r0, #0
	b _021ED6BA
_021ED6B8:
	mov r6, #1
_021ED6BA:
	add r0, r5, #0
	bl ov01_021EB840
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov01_021EB818
	cmp r6, #1
	bne _021ED6FC
	cmp r7, #1
	bne _021ED6FC
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED6DE:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED6F6
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ED6F6:
	ldr r0, [r4, #4]
	bl ov01_021EBCA4
_021ED6FC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED700: .word 0x00000F58
_021ED704: .word 0x00007555
_021ED708: .word 0x00007FFF
_021ED70C: .word 0x00000F62
	thumb_func_end ov01_021ED584

	thumb_func_start ov01_021ED710
ov01_021ED710: ; 0x021ED710
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r6, r1, #0
	mov r0, #0x41
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r5, [r1, r0]
	ldr r0, _021ED900 ; =0x00000F58
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r6, r1]
	ldr r4, [r6, r0]
	cmp r1, #5
	bls _021ED72E
	b _021ED8FA
_021ED72E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED73A: ; jump table
	.short _021ED746 - _021ED73A - 2 ; case 0
	.short _021ED79E - _021ED73A - 2 ; case 1
	.short _021ED7A8 - _021ED73A - 2 ; case 2
	.short _021ED800 - _021ED73A - 2 ; case 3
	.short _021ED81A - _021ED73A - 2 ; case 4
	.short _021ED8F4 - _021ED73A - 2 ; case 5
_021ED746:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	bl ov01_02203EA0
	ldr r1, _021ED904 ; =0x0000062C
	mov r3, #0
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r5, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #0x2c
	sub r0, r1, #1
_021ED77A:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED77A
	ldr r0, [r5, #0x4c]
	add r1, sp, #0x2c
	bl ov01_021EA8C4
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, _021ED908 ; =0x00000F62
	mov r1, #1
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED79E:
	mov r1, #3
	add r0, #0xa
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED7A8:
	ldr r0, [r5, #0x40]
	bl sub_0205C6DC
	bl ov01_02203EA0
	ldr r1, _021ED904 ; =0x0000062C
	mov r3, #0
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r5, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #0xc
	sub r0, r1, #1
_021ED7DC:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED7DC
	ldr r0, [r5, #0x4c]
	add r1, sp, #0xc
	bl ov01_021EA8C4
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, _021ED908 ; =0x00000F62
	mov r1, #3
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED800:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r6, r1]
	cmp r1, #5
	bne _021ED8FA
	ldr r1, _021ED90C ; =0x00000632
	mov r2, #0
	strh r2, [r4, r1]
	mov r1, #4
	add r0, #0xa
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED81A:
	ldr r0, _021ED90C ; =0x00000632
	ldrh r1, [r4, r0]
	cmp r1, #3
	bhi _021ED8FA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED82E: ; jump table
	.short _021ED836 - _021ED82E - 2 ; case 0
	.short _021ED85A - _021ED82E - 2 ; case 1
	.short _021ED884 - _021ED82E - 2 ; case 2
	.short _021ED898 - _021ED82E - 2 ; case 3
_021ED836:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021ED910 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200FA24
	ldr r0, _021ED90C ; =0x00000632
	add sp, #0x4c
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021ED85A:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021ED8FA
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _021ED910 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200FA24
	ldr r0, _021ED90C ; =0x00000632
	add sp, #0x4c
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021ED884:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021ED8FA
	ldr r0, _021ED90C ; =0x00000632
	add sp, #0x4c
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021ED898:
	sub r1, r0, #2
	ldrh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	sub r0, r0, #2
	ldrh r0, [r4, r0]
	bl _dfltu
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021ED914 ; =0x40080000
	mov r0, #0
	bl _dmul
	ldr r3, _021ED918 ; =0x40380000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021ED91C ; =0x3FF00000
	mov r0, #0
	bl _dadd
	bl _d2f
	add r5, r0, #0
	ldr r0, _021ED904 ; =0x0000062C
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl ov01_02203F2C
	add r0, r5, #0
	bl _f2d
	ldr r3, _021ED920 ; =0x40100000
	mov r2, #0
	bl _dgeq
	blo _021ED8FA
	ldr r0, _021ED908 ; =0x00000F62
	mov r1, #5
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED8F4:
	ldr r0, [r6, #4]
	bl ov01_021EBCA4
_021ED8FA:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_021ED900: .word 0x00000F58
_021ED904: .word 0x0000062C
_021ED908: .word 0x00000F62
_021ED90C: .word 0x00000632
_021ED910: .word 0x00007FFF
_021ED914: .word 0x40080000
_021ED918: .word 0x40380000
_021ED91C: .word 0x3FF00000
_021ED920: .word 0x40100000
	thumb_func_end ov01_021ED710

	thumb_func_start ov01_021ED924
ov01_021ED924: ; 0x021ED924
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r5, r1, #0
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	ldr r0, _021EDA40 ; =0x00000F58
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r5, r1]
	ldr r6, [r5, r0]
	cmp r1, #5
	bhi _021EDA3A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED94C: ; jump table
	.short _021ED958 - _021ED94C - 2 ; case 0
	.short _021ED9B2 - _021ED94C - 2 ; case 1
	.short _021ED9BC - _021ED94C - 2 ; case 2
	.short _021EDA16 - _021ED94C - 2 ; case 3
	.short _021EDA2A - _021ED94C - 2 ; case 4
	.short _021EDA34 - _021ED94C - 2 ; case 5
_021ED958:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	bl ov01_02203EA0
	ldr r1, _021EDA44 ; =0x0000062C
	mov r3, #0
	str r0, [r6, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r4, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #0x28
	sub r0, r1, #1
_021ED98C:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED98C
	ldr r0, [r4, #0x4c]
	add r1, sp, #0x28
	bl ov01_021EA8C4
	ldr r0, _021EDA44 ; =0x0000062C
	ldr r1, _021EDA48 ; =0x40800000
	ldr r0, [r6, r0]
	bl ov01_02203F2C
	ldr r0, _021EDA4C ; =0x00000F62
	mov r1, #1
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021ED9B2:
	mov r1, #3
	add r0, #0xa
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021ED9BC:
	ldr r0, [r4, #0x40]
	bl sub_0205C6DC
	bl ov01_02203EA0
	ldr r1, _021EDA44 ; =0x0000062C
	mov r3, #0
	str r0, [r6, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r4, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #8
	sub r0, r1, #1
_021ED9F0:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED9F0
	ldr r0, [r4, #0x4c]
	add r1, sp, #8
	bl ov01_021EA8C4
	ldr r0, _021EDA44 ; =0x0000062C
	ldr r1, _021EDA48 ; =0x40800000
	ldr r0, [r6, r0]
	bl ov01_02203F2C
	ldr r0, _021EDA4C ; =0x00000F62
	mov r1, #3
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021EDA16:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r5, r1]
	cmp r1, #5
	bne _021EDA3A
	mov r1, #4
	add r0, #0xa
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021EDA2A:
	mov r1, #5
	add r0, #0xa
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021EDA34:
	ldr r0, [r5, #4]
	bl ov01_021EBCA4
_021EDA3A:
	add sp, #0x48
	pop {r4, r5, r6, pc}
	nop
_021EDA40: .word 0x00000F58
_021EDA44: .word 0x0000062C
_021EDA48: .word 0x40800000
_021EDA4C: .word 0x00000F62
	thumb_func_end ov01_021ED924

	thumb_func_start ov01_021EDA50
ov01_021EDA50: ; 0x021EDA50
	push {lr}
	sub sp, #0xc
	ldr r0, _021EDA70 ; =0x00000421
	ldr r2, _021EDA74 ; =0x00000F58
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r1, [r1, r2]
	ldr r3, _021EDA78 ; =0x00004B6F
	mov r2, #1
	bl ov01_021ED474
	add sp, #0xc
	pop {pc}
	.balign 4, 0
_021EDA70: .word 0x00000421
_021EDA74: .word 0x00000F58
_021EDA78: .word 0x00004B6F
	thumb_func_end ov01_021EDA50

	thumb_func_start ov01_021EDA7C
ov01_021EDA7C: ; 0x021EDA7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021EDAA8 ; =0x00000F68
	add r4, r1, #0
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _021EDAA4
	ldr r1, _021EDAAC ; =0x00000638
	add r0, r4, #0
	bl ov01_021EDAB4
	add r0, r5, #0
	bl sub_0200E390
	ldr r0, _021EDAB0 ; =0x00000F6C
	mov r1, #0
	str r1, [r4, r0]
_021EDAA4:
	pop {r3, r4, r5, pc}
	nop
_021EDAA8: .word 0x00000F68
_021EDAAC: .word 0x00000638
_021EDAB0: .word 0x00000F6C
	thumb_func_end ov01_021EDA7C

	thumb_func_start ov01_021EDAB4
ov01_021EDAB4: ; 0x021EDAB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021EDADC ; =0x00000F5C
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021EDAC6
	bl GF_AssertFail
_021EDAC6:
	ldr r1, _021EDADC ; =0x00000F5C
	mov r0, #1
	str r0, [r5, r1]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r1, #4
	strh r0, [r5, r1]
	bl PlaySE
	pop {r3, r4, r5, pc}
	nop
_021EDADC: .word 0x00000F5C
	thumb_func_end ov01_021EDAB4

	thumb_func_start ov01_021EDAE0
ov01_021EDAE0: ; 0x021EDAE0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0
	bl sub_02006154
	ldr r0, _021EDAF8 ; =0x00000F5C
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_021EDAF8: .word 0x00000F5C
	thumb_func_end ov01_021EDAE0

	thumb_func_start ov01_021EDAFC
ov01_021EDAFC: ; 0x021EDAFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [sp, #0x2c]
	add r4, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	cmp r1, #0
	bne _021EDB2A
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xbf
	mov r3, #4
	bl NewMsgDataFromNarc
	add r1, r6, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	b _021EDB3A
_021EDB2A:
	add r0, r6, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
_021EDB3A:
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x90
	str r1, [r0]
	add r0, r6, #0
	str r4, [r6]
	ldr r1, [sp, #0x20]
	add r0, #0xa0
	str r1, [r0]
	add r1, r6, #0
	mov r0, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r6, #0
	add r1, #0xa8
	str r0, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r3, [r1]
	add r4, sp, #8
	mov r1, #1
	bic r3, r1
	ldrb r2, [r4, #0x14]
	mov r1, #1
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r6, #0
	ldrb r2, [r4, #0x10]
	add r1, #0x96
	mov r3, #0x40
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r1, [r1]
	bic r1, r3
	add r3, r6, #0
	add r3, #0x97
	strb r1, [r3]
	add r1, r6, #0
	add r1, #0x97
	ldrb r1, [r1]
	mov r3, #0x80
	bic r1, r3
	add r3, r6, #0
	add r3, #0x97
	strb r1, [r3]
	add r1, r6, #0
	add r1, #0x98
	strb r5, [r1]
	add r1, r6, #0
	add r1, #0x99
	strb r7, [r1]
	add r1, r6, #0
	add r1, #0x9b
	strb r0, [r1]
	ldr r1, [sp, #0x28]
	mov r3, #3
	str r1, [r6, #0x18]
	add r1, r6, #0
	add r1, #0x94
	strb r3, [r1]
	mov r1, #0xb7
	lsl r1, r1, #2
	strh r2, [r6, r1]
	add r2, r6, #0
	add r3, r0, #0
_021EDBCC:
	add r1, r2, #0
	add r1, #0xbc
	str r3, [r1]
	add r1, r2, #0
	add r1, #0xc0
	add r0, r0, #1
	add r2, #8
	str r3, [r1]
	cmp r0, #0x1c
	blt _021EDBCC
	mov r7, #0xa9
	add r1, r6, #0
	add r2, r6, #0
	mov r5, #0
	mov r0, #0xff
	lsl r7, r7, #2
_021EDBEC:
	mov r4, #0x71
	lsl r4, r4, #2
	str r5, [r1, r4]
	add r4, r4, #4
	str r5, [r1, r4]
	strh r0, [r2, r7]
	add r3, r3, #1
	add r1, #8
	add r2, r2, #2
	cmp r3, #0x1c
	blt _021EDBEC
	add r4, r6, #0
	mov r7, #0x50
_021EDC06:
	add r0, r7, #0
	mov r1, #4
	bl String_ctor
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x1c
	blt _021EDC06
	add r6, #0xa0
	ldr r1, _021EDC24 ; =0x0000EEEE
	ldr r0, [r6]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EDC24: .word 0x0000EEEE
	thumb_func_end ov01_021EDAFC

	thumb_func_start ov01_021EDC28
ov01_021EDC28: ; 0x021EDC28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	mov r1, #0x2e
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl AllocFromHeap
	add r4, r0, #0
	bne _021EDC48
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021EDC48:
	mov r2, #0x2e
	mov r1, #0
	lsl r2, r2, #4
	bl memset
	str r5, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	bl ov01_021EDAFC
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EDC28

	thumb_func_start ov01_021EDC7C
ov01_021EDC7C: ; 0x021EDC7C
	ldr r3, _021EDC80 ; =ov01_021EDD68
	bx r3
	.balign 4, 0
_021EDC80: .word ov01_021EDD68
	thumb_func_end ov01_021EDC7C

	thumb_func_start ov01_021EDC84
ov01_021EDC84: ; 0x021EDC84
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl ov01_021EDDD8
	mov r1, #7
	tst r1, r0
	bne _021EDC98
	lsr r0, r0, #3
	b _021EDC9C
_021EDC98:
	lsr r0, r0, #3
	add r0, r0, #1
_021EDC9C:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021EDCB6
	add r1, r4, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r2, r1, r0
	add r1, r4, #0
	add r1, #0x98
	strb r2, [r1]
_021EDCB6:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021EDCD8
	add r1, r4, #0
	add r1, #0x99
	ldrb r2, [r1]
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #1
	sub r2, r2, r1
	add r1, r4, #0
	add r1, #0x99
	strb r2, [r1]
_021EDCD8:
	add r1, r4, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r4, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r4, #0
	add r3, #0x98
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _021EDD60 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	add r0, r4, #0
	ldr r2, _021EDD60 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r4, #0
	bl ov01_021EDE18
	add r1, r4, #0
	add r1, #0x96
	add r0, r4, #0
	ldrb r1, [r1]
	add r0, #0xac
	mov r2, #4
	bl sub_02001B9C
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	ldr r0, _021EDD64 ; =ov01_021EDE8C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021EDD60: .word 0x000003D9
_021EDD64: .word ov01_021EDE8C
	thumb_func_end ov01_021EDC84

	thumb_func_start ov01_021EDD68
ov01_021EDD68: ; 0x021EDD68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x50
	mov r1, #4
	add r6, r2, #0
	bl String_ctor
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, r7, #0
	add r2, r4, #0
	bl ReadMsgDataIntoString
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	add r0, #0x9b
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r1, [r0, #0x1c]
	lsl r0, r2, #3
	add r0, r5, r0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	bl String_dtor
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xc0
	str r6, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EDD68

	thumb_func_start ov01_021EDDD8
ov01_021EDDD8: ; 0x021EDDD8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _021EDE10
	add r5, r7, #0
_021EDDEA:
	add r0, r5, #0
	add r0, #0xbc
	ldr r1, [r0]
	cmp r1, #0
	beq _021EDE10
	mov r0, #0
	add r2, r0, #0
	bl sub_02002F30
	cmp r6, r0
	bhs _021EDE02
	add r6, r0, #0
_021EDE02:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _021EDDEA
_021EDE10:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EDDD8

	thumb_func_start ov01_021EDE18
ov01_021EDE18: ; 0x021EDE18
	add r2, r0, #0
	add r1, r0, #0
	add r2, #0xbc
	add r1, #0xac
	str r2, [r1]
	add r2, r0, #0
	add r1, r0, #0
	add r2, #8
	add r1, #0xb0
	str r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xb4
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xb5
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xb6
	strb r2, [r1]
	add r2, r0, #0
	add r2, #0xb7
	ldrb r3, [r2]
	mov r2, #0xf
	add r1, r0, #0
	bic r3, r2
	add r2, r0, #0
	add r2, #0xb7
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0xb7
	ldrb r3, [r2]
	mov r2, #0x30
	add r1, #0xb7
	bic r3, r2
	add r2, r0, #0
	add r2, #0xb7
	strb r3, [r2]
	add r0, #0x9b
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, #4
	blo _021EDE82
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1]
	bx lr
_021EDE82:
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EDE18

	thumb_func_start ov01_021EDE8C
ov01_021EDE8C: ; 0x021EDE8C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EDEA8
	add r0, r4, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r4, #0x94
	sub r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_021EDEA8:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021EDEF8
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021EDECA
	add r1, r1, #1
	cmp r0, r1
	beq _021EDEF8
	b _021EDEEA
_021EDECA:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EDEF8
	add r0, r4, #0
	add r0, #0xa0
	ldr r1, _021EDEFC ; =0x0000FFFE
	ldr r0, [r0]
	strh r1, [r0]
	add r0, r4, #0
	bl ov01_021EDF38
	pop {r4, pc}
_021EDEEA:
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1]
	strh r0, [r1]
	add r0, r4, #0
	bl ov01_021EDF38
_021EDEF8:
	pop {r4, pc}
	nop
_021EDEFC: .word 0x0000FFFE
	thumb_func_end ov01_021EDE8C

	thumb_func_start ov01_021EDF00
ov01_021EDF00: ; 0x021EDF00
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021EDF08:
	ldr r0, [r5, #0x1c]
	bl String_dtor
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021EDF08
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EDF2E
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl DestroyMsgData
_021EDF2E:
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EDF00

	thumb_func_start ov01_021EDF38
ov01_021EDF38: ; 0x021EDF38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EDF74 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0200E5D4
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl RemoveWindow
	ldr r0, [r4, #4]
	bl sub_0200E390
	add r0, r4, #0
	bl ov01_021EDF00
	pop {r4, pc}
	nop
_021EDF74: .word 0x000005DC
	thumb_func_end ov01_021EDF38

	thumb_func_start ov01_021EDF78
ov01_021EDF78: ; 0x021EDF78
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, sp, #0x10
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	bl ov01_021EDC28
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EDF78

	thumb_func_start ov01_021EDF9C
ov01_021EDF9C: ; 0x021EDF9C
	push {r3, lr}
	bl ov01_021EE244
	pop {r3, pc}
	thumb_func_end ov01_021EDF9C

	thumb_func_start ov01_021EDFA4
ov01_021EDFA4: ; 0x021EDFA4
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021EE2E4
	mov r1, #7
	tst r1, r0
	bne _021EDFB6
	lsr r1, r0, #3
	b _021EDFBA
_021EDFB6:
	lsr r0, r0, #3
	add r1, r0, #1
_021EDFBA:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021EDFD4
	add r0, r4, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r2, r0, r1
	add r0, r4, #0
	add r0, #0x98
	strb r2, [r0]
_021EDFD4:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _021EE00A
	add r0, r4, #0
	add r0, #0x9b
	ldrb r3, [r0]
	cmp r3, #8
	bls _021EDFFA
	add r0, r4, #0
	add r0, #0x99
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x99
	sub r2, #0x10
	strb r2, [r0]
	b _021EE00A
_021EDFFA:
	add r0, r4, #0
	add r0, #0x99
	ldrb r2, [r0]
	lsl r0, r3, #1
	sub r2, r2, r0
	add r0, r4, #0
	add r0, #0x99
	strb r2, [r0]
_021EE00A:
	add r0, r4, #0
	bl ov01_021EE01C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EDFA4

	thumb_func_start ov01_021EE014
ov01_021EE014: ; 0x021EE014
	ldr r3, _021EE018 ; =ov01_021EE01C
	bx r3
	.balign 4, 0
_021EE018: .word ov01_021EE01C
	thumb_func_end ov01_021EE014

	thumb_func_start ov01_021EE01C
ov01_021EE01C: ; 0x021EE01C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x9b
	ldrb r2, [r0]
	cmp r2, #8
	bls _021EE05A
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x98
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
	b _021EE08A
_021EE05A:
	add r0, r4, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x98
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r2, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
_021EE08A:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _021EE0E4 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	add r0, r4, #0
	ldr r2, _021EE0E4 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r4, #0
	bl ov01_021EE324
	add r2, r4, #0
	add r2, #0x96
	mov r0, #0x67
	lsl r0, r0, #2
	ldrb r2, [r2]
	add r0, r4, r0
	mov r1, #0
	mov r3, #4
	bl ListMenuInit
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov01_021EE634
	ldr r0, _021EE0E8 ; =ov01_021EE49C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021EE0E4: .word 0x000003D9
_021EE0E8: .word ov01_021EE49C
	thumb_func_end ov01_021EE01C

	thumb_func_start ov01_021EE0EC
ov01_021EE0EC: ; 0x021EE0EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov01_021EE2E4
	mov r1, #7
	tst r1, r0
	bne _021EE104
	lsr r1, r0, #3
	b _021EE108
_021EE104:
	lsr r0, r0, #3
	add r1, r0, #1
_021EE108:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021EE122
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r2, r0, r1
	add r0, r5, #0
	add r0, #0x98
	strb r2, [r0]
_021EE122:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _021EE158
	add r0, r5, #0
	add r0, #0x9b
	ldrb r3, [r0]
	cmp r3, #8
	bls _021EE148
	add r0, r5, #0
	add r0, #0x99
	ldrb r2, [r0]
	add r0, r5, #0
	add r0, #0x99
	sub r2, #0x10
	strb r2, [r0]
	b _021EE158
_021EE148:
	add r0, r5, #0
	add r0, #0x99
	ldrb r2, [r0]
	lsl r0, r3, #1
	sub r2, r2, r0
	add r0, r5, #0
	add r0, #0x99
	strb r2, [r0]
_021EE158:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #8
	bls _021EE192
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r3, #0x98
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
	b _021EE1C2
_021EE192:
	add r2, r5, #0
	add r2, #0x99
	ldrb r2, [r2]
	lsl r1, r1, #0x18
	lsl r0, r0, #0x19
	str r2, [sp]
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	add r3, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r3, #0x98
	add r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
_021EE1C2:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, _021EE23C ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	add r0, r5, #0
	ldr r2, _021EE23C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r5, #0
	bl ov01_021EE324
	add r0, r5, #0
	add r0, #0xa4
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xa8
	str r6, [r0]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r3, #4
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	ldrh r0, [r0]
	add r1, r1, r0
	mov r0, #0xb7
	lsl r0, r0, #2
	strh r1, [r5, r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldrh r1, [r4]
	ldrh r2, [r6]
	add r0, r5, r0
	bl ListMenuInit
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov01_021EE634
	ldr r0, _021EE240 ; =ov01_021EE49C
	add r1, r5, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r5, #4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE23C: .word 0x000003D9
_021EE240: .word ov01_021EE49C
	thumb_func_end ov01_021EE0EC

	thumb_func_start ov01_021EE244
ov01_021EE244: ; 0x021EE244
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl String_ctor
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp]
	add r2, r6, #0
	bl ReadMsgDataIntoString
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	ldr r0, [r0, #0x1c]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r6, #0
	bl String_dtor
	cmp r4, #0xfa
	bne _021EE2B4
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r2, #2
	mvn r2, r2
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	str r2, [r1, r0]
	b _021EE2C4
_021EE2B4:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	str r4, [r1, r0]
_021EE2C4:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	strh r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EE244

	thumb_func_start ov01_021EE2E4
ov01_021EE2E4: ; 0x021EE2E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _021EE31C
	add r5, r7, #0
_021EE2F6:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021EE31C
	mov r0, #0
	add r2, r0, #0
	bl sub_02002F30
	cmp r6, r0
	bhs _021EE30E
	add r6, r0, #0
_021EE30E:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _021EE2F6
_021EE31C:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EE2E4

	thumb_func_start ov01_021EE324
ov01_021EE324: ; 0x021EE324
	push {r4, r5}
	mov r3, #0x71
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021EE420 ; =ov01_021EE458
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021EE424 ; =ov01_021EE434
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021EE428 ; =0xFFFFFE7F
	and r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021EE42C ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021EE430 ; =0xFFFF7FFF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	sub r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_021EE420: .word ov01_021EE458
_021EE424: .word ov01_021EE434
_021EE428: .word 0xFFFFFE7F
_021EE42C: .word 0xFFFF81FF
_021EE430: .word 0xFFFF7FFF
	thumb_func_end ov01_021EE324

	thumb_func_start ov01_021EE434
ov01_021EE434: ; 0x021EE434
	push {r3, lr}
	mov r2, #2
	mvn r2, r2
	cmp r1, r2
	bne _021EE44A
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl ListMenuOverrideSetColors
	pop {r3, pc}
_021EE44A:
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl ListMenuOverrideSetColors
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021EE434

	thumb_func_start ov01_021EE458
ov01_021EE458: ; 0x021EE458
	push {r3, r4, r5, lr}
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1, #2]
	strh r2, [r1]
	mov r1, #0x13
	add r5, r0, #0
	bl ListMenuGetTemplateField
	add r1, sp, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl ListMenuGetScrollAndRow
	add r0, r4, #0
	add r0, #0xa4
	ldr r2, [r0]
	cmp r2, #0
	beq _021EE49A
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021EE49A
	add r0, sp, #0
	ldrh r1, [r0, #2]
	add r4, #0xa8
	strh r1, [r2]
	ldrh r1, [r0]
	ldr r0, [r4]
	strh r1, [r0]
_021EE49A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EE458

	thumb_func_start ov01_021EE49C
ov01_021EE49C: ; 0x021EE49C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EE4B8
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EE4B8:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021EE55A
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ListMenu_ProcessInput
	add r4, r0, #0
	mov r0, #0x6f
	mov r1, #0xb7
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ListMenuGetCurrentItemArrayId
	mov r0, #0xb7
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _021EE4EE
	ldr r0, _021EE55C ; =0x000005DC
	bl PlaySE
_021EE4EE:
	ldr r0, _021EE560 ; =gMain
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _021EE50A
	mov r1, #0x80
	tst r1, r0
	bne _021EE50A
	mov r1, #0x20
	tst r1, r0
	bne _021EE50A
	mov r1, #0x10
	tst r0, r1
	beq _021EE510
_021EE50A:
	add r0, r5, #0
	bl ov01_021EE634
_021EE510:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021EE520
	add r0, r0, #1
	cmp r4, r0
	beq _021EE55A
	b _021EE546
_021EE520:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EE55A
	ldr r0, _021EE55C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa0
	ldr r1, _021EE564 ; =0x0000FFFE
	ldr r0, [r0]
	strh r1, [r0]
	add r0, r5, #0
	bl ov01_021EE568
	pop {r4, r5, r6, pc}
_021EE546:
	ldr r0, _021EE55C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	strh r4, [r0]
	add r0, r5, #0
	bl ov01_021EE568
_021EE55A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE55C: .word 0x000005DC
_021EE560: .word gMain
_021EE564: .word 0x0000FFFE
	thumb_func_end ov01_021EE49C

	thumb_func_start ov01_021EE568
ov01_021EE568: ; 0x021EE568
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021EE5CC ; =0x000005DC
	bl PlaySE
	mov r0, #0x6f
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	bl DestroyListMenu
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0200E5D4
	add r0, r6, #0
	add r0, #8
	bl RemoveWindow
	mov r4, #0
	add r5, r6, #0
_021EE598:
	ldr r0, [r5, #0x1c]
	bl String_dtor
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021EE598
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EE5BE
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl DestroyMsgData
_021EE5BE:
	ldr r0, [r6, #4]
	bl sub_0200E390
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE5CC: .word 0x000005DC
	thumb_func_end ov01_021EE568

	thumb_func_start ov01_021EE5D0
ov01_021EE5D0: ; 0x021EE5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x5a
	mov r1, #4
	add r7, r2, #0
	bl String_ctor
	add r4, r0, #0
	mov r0, #0x5a
	mov r1, #4
	bl String_ctor
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl ReadMsgDataIntoString
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r2, r6, #0
	bl AddTextPrinterParameterized
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EE5D0

	thumb_func_start ov01_021EE634
ov01_021EE634: ; 0x021EE634
	push {r4, lr}
	mov r1, #0x6f
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	add r1, r4, r1
	bl ListMenuGetCurrentItemArrayId
	ldr r0, _021EE660 ; =0x000001C2
	ldrh r1, [r4, r0]
	add r0, #0xe2
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _021EE65E
	add r0, r4, #0
	mov r2, #0
	bl ov01_021EE5D0
_021EE65E:
	pop {r4, pc}
	.balign 4, 0
_021EE660: .word 0x000001C2
	thumb_func_end ov01_021EE634

	thumb_func_start ov01_021EE664
ov01_021EE664: ; 0x021EE664
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r4, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r3, [sp, #0x28]
	add r6, r0, #0
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	add r3, r4, #0
	str r4, [sp, #0x10]
	bl ov01_021EDC28
	add r5, r0, #0
	add r0, r4, #0
	add r1, r0, #0
	bl GetFontAttribute
	lsl r1, r0, #3
	mov r0, #7
	tst r0, r1
	bne _021EE694
	lsr r4, r1, #3
	b _021EE698
_021EE694:
	lsr r0, r1, #3
	add r4, r0, #1
_021EE698:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r1, r5, #0
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xdd
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, _021EE74C ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	add r0, r5, #0
	ldr r2, _021EE74C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	lsl r0, r4, #0x13
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r0, #8
	mov r1, #0xf
	add r3, r2, #0
	bl FillWindowPixelRect
	mov r2, #0
	add r0, r5, #0
	mov r1, #0x10
	add r3, r2, #0
	bl ov01_021EE754
	ldr r0, [r6, #0x20]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x14]
	ldr r0, [r0]
	add r2, sp, #0x14
	bl ov01_021EE934
	add r1, r0, #0
	add r2, sp, #0x14
	lsl r1, r1, #0x10
	ldrb r2, [r2]
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r3, #0x10
	bl ov01_021EE754
	add r0, r5, #0
	add r1, r5, #0
	add r0, #8
	add r1, #0xb0
	str r0, [r1]
	bl CopyWindowToVram
	ldr r0, _021EE750 ; =ov01_021EE7B8
	add r1, r5, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r5, #4]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE74C: .word 0x000003D9
_021EE750: .word ov01_021EE7B8
	thumb_func_end ov01_021EE664

	thumb_func_start ov01_021EE754
ov01_021EE754: ; 0x021EE754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	add r5, r0, #0
	mov r0, #0x5a
	mov r1, #4
	str r2, [sp, #0x10]
	add r7, r3, #0
	bl String_ctor
	add r4, r0, #0
	mov r0, #0x5a
	mov r1, #4
	bl String_ctor
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl ReadMsgDataIntoString
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r5, #8
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl AddTextPrinterParameterized
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EE754

	thumb_func_start ov01_021EE7B8
ov01_021EE7B8: ; 0x021EE7B8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _021EE818 ; =0x0000FFFF
	cmp r1, r0
	bne _021EE816
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0200E5D4
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl RemoveWindow
	mov r4, #0
	add r5, r6, #0
_021EE7E4:
	ldr r0, [r5, #0x1c]
	bl String_dtor
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021EE7E4
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EE80A
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl DestroyMsgData
_021EE80A:
	ldr r0, [r6, #4]
	bl sub_0200E390
	add r0, r6, #0
	bl FreeToHeap
_021EE816:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE818: .word 0x0000FFFF
	thumb_func_end ov01_021EE7B8

	thumb_func_start ov01_021EE81C
ov01_021EE81C: ; 0x021EE81C
	push {r3, lr}
	ldr r1, _021EE92C ; =0x00000175
	cmp r0, r1
	bgt _021EE878
	bge _021EE906
	cmp r0, #0xe1
	bgt _021EE860
	bge _021EE8D2
	cmp r0, #0x73
	bgt _021EE834
	beq _021EE8CE
	b _021EE922
_021EE834:
	add r1, r0, #0
	sub r1, #0xbd
	cmp r1, #0xb
	bhi _021EE922
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EE848: ; jump table
	.short _021EE8C6 - _021EE848 - 2 ; case 0
	.short _021EE8CA - _021EE848 - 2 ; case 1
	.short _021EE8DE - _021EE848 - 2 ; case 2
	.short _021EE8E2 - _021EE848 - 2 ; case 3
	.short _021EE8E6 - _021EE848 - 2 ; case 4
	.short _021EE8EA - _021EE848 - 2 ; case 5
	.short _021EE8EE - _021EE848 - 2 ; case 6
	.short _021EE8F2 - _021EE848 - 2 ; case 7
	.short _021EE922 - _021EE848 - 2 ; case 8
	.short _021EE922 - _021EE848 - 2 ; case 9
	.short _021EE922 - _021EE848 - 2 ; case 10
	.short _021EE8F6 - _021EE848 - 2 ; case 11
_021EE860:
	ldr r1, _021EE930 ; =0x00000173
	cmp r0, r1
	bgt _021EE870
	bge _021EE8FE
	sub r1, r1, #1
	cmp r0, r1
	beq _021EE8FA
	b _021EE922
_021EE870:
	add r1, r1, #1
	cmp r0, r1
	beq _021EE902
	b _021EE922
_021EE878:
	add r2, r1, #4
	cmp r0, r2
	bgt _021EE898
	bge _021EE916
	add r2, r1, #2
	cmp r0, r2
	bgt _021EE890
	bge _021EE90E
	add r1, r1, #1
	cmp r0, r1
	beq _021EE90A
	b _021EE922
_021EE890:
	add r1, r1, #3
	cmp r0, r1
	beq _021EE912
	b _021EE922
_021EE898:
	add r2, r1, #0
	add r2, #0x1d
	cmp r0, r2
	bgt _021EE8BE
	add r2, r1, #0
	add r2, #0x1d
	cmp r0, r2
	bge _021EE8D6
	add r2, r1, #6
	cmp r0, r2
	bgt _021EE922
	add r2, r1, #5
	cmp r0, r2
	blt _021EE922
	beq _021EE91A
	add r1, r1, #6
	cmp r0, r1
	beq _021EE91E
	b _021EE922
_021EE8BE:
	add r1, #0x1e
	cmp r0, r1
	beq _021EE8DA
	b _021EE922
_021EE8C6:
	mov r0, #0
	pop {r3, pc}
_021EE8CA:
	mov r0, #1
	pop {r3, pc}
_021EE8CE:
	mov r0, #0
	pop {r3, pc}
_021EE8D2:
	mov r0, #1
	pop {r3, pc}
_021EE8D6:
	mov r0, #0
	pop {r3, pc}
_021EE8DA:
	mov r0, #1
	pop {r3, pc}
_021EE8DE:
	mov r0, #1
	pop {r3, pc}
_021EE8E2:
	mov r0, #2
	pop {r3, pc}
_021EE8E6:
	mov r0, #3
	pop {r3, pc}
_021EE8EA:
	mov r0, #4
	pop {r3, pc}
_021EE8EE:
	mov r0, #5
	pop {r3, pc}
_021EE8F2:
	mov r0, #6
	pop {r3, pc}
_021EE8F6:
	mov r0, #0
	pop {r3, pc}
_021EE8FA:
	mov r0, #0
	pop {r3, pc}
_021EE8FE:
	mov r0, #1
	pop {r3, pc}
_021EE902:
	mov r0, #2
	pop {r3, pc}
_021EE906:
	mov r0, #3
	pop {r3, pc}
_021EE90A:
	mov r0, #4
	pop {r3, pc}
_021EE90E:
	mov r0, #5
	pop {r3, pc}
_021EE912:
	mov r0, #0
	pop {r3, pc}
_021EE916:
	mov r0, #1
	pop {r3, pc}
_021EE91A:
	mov r0, #2
	pop {r3, pc}
_021EE91E:
	mov r0, #3
	pop {r3, pc}
_021EE922:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_021EE92C: .word 0x00000175
_021EE930: .word 0x00000173
	thumb_func_end ov01_021EE81C

	thumb_func_start ov01_021EE934
ov01_021EE934: ; 0x021EE934
	push {r3, r4}
	ldr r4, _021EE970 ; =0x000001B9
	cmp r0, r4
	beq _021EE94A
	add r3, r4, #2
	cmp r0, r3
	beq _021EE958
	add r3, r4, #3
	cmp r0, r3
	beq _021EE958
	b _021EE966
_021EE94A:
	cmp r1, #0
	bne _021EE966
	mov r0, #0x20
	strb r0, [r2]
	mov r0, #0x7a
	pop {r3, r4}
	bx lr
_021EE958:
	cmp r1, #3
	bne _021EE966
	mov r0, #0x10
	strb r0, [r2]
	mov r0, #0x7d
	pop {r3, r4}
	bx lr
_021EE966:
	mov r0, #0x20
	strb r0, [r2]
	mov r0, #0x11
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021EE970: .word 0x000001B9
	thumb_func_end ov01_021EE934

	thumb_func_start ov01_021EE974
ov01_021EE974: ; 0x021EE974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021EDDD8
	mov r1, #7
	tst r1, r0
	bne _021EE98A
	lsr r7, r0, #3
	b _021EE98E
_021EE98A:
	lsr r0, r0, #3
	add r7, r0, #1
_021EE98E:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl _s32_div_f
	cmp r1, #0
	beq _021EE9B2
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021EE9B2:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r1, r5, #0
	str r0, [sp]
	add r0, r7, #0
	mul r0, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, _021EEA3C ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	add r0, r5, #0
	ldr r2, _021EEA3C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov01_021EEA44
	add r1, r5, #0
	add r1, #0x96
	add r0, r5, #0
	ldrb r1, [r1]
	add r0, #0xac
	mov r2, #4
	bl sub_02001B9C
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	ldr r0, _021EEA40 ; =ov01_021EDE8C
	add r1, r5, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r5, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEA3C: .word 0x000003D9
_021EEA40: .word ov01_021EDE8C
	thumb_func_end ov01_021EE974

	thumb_func_start ov01_021EEA44
ov01_021EEA44: ; 0x021EEA44
	push {r3, r4}
	add r4, r0, #0
	add r3, r0, #0
	add r4, #0xbc
	add r3, #0xac
	str r4, [r3]
	add r4, r0, #0
	add r3, r0, #0
	add r4, #8
	add r3, #0xb0
	str r4, [r3]
	add r3, r0, #0
	mov r4, #0
	add r3, #0xb4
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xb5
	strb r1, [r3]
	add r1, r0, #0
	add r1, #0xb6
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb7
	ldrb r2, [r1]
	mov r1, #0xf
	bic r2, r1
	add r1, r0, #0
	add r1, #0xb7
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xb7
	ldrb r2, [r1]
	mov r1, #0x30
	add r0, #0xb7
	bic r2, r1
	strb r2, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov01_021EEA44

	thumb_func_start ov01_021EEA90
ov01_021EEA90: ; 0x021EEA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl AllocWindows
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021EEB30 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	ldr r2, _021EEB30 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r2, _021EEB34 ; =0x000001B3
	mov r0, #0
	mov r1, #0x1b
	mov r3, #4
	bl NewMsgDataFromNarc
	mov r1, #0x1e
	add r7, r0, #0
	bl NewString_ReadMsgData
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r6, #0
	bl String_dtor
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EEB4C
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EEB30: .word 0x000003D9
_021EEB34: .word 0x000001B3
	thumb_func_end ov01_021EEA90

	thumb_func_start ov01_021EEB38
ov01_021EEB38: ; 0x021EEB38
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0200E5D4
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D54C
	pop {r4, pc}
	thumb_func_end ov01_021EEB38

	thumb_func_start ov01_021EEB4C
ov01_021EEB4C: ; 0x021EEB4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x50
	str r0, [sp]
	mov r3, #0x10
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl FillWindowPixelRect
	ldr r2, _021EEBFC ; =0x000001B3
	mov r0, #0
	mov r1, #0x1b
	mov r3, #4
	bl NewMsgDataFromNarc
	str r0, [sp, #0xc]
	mov r0, #4
	bl ScrStrBufs_new
	add r6, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl String_ctor
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x1f
	bl NewString_ReadMsgData
	str r0, [sp, #0x10]
	ldr r0, [r7, #0xc]
	bl Sav2_PlayerData_GetProfileAddr
	bl PlayerProfile_GetMoney
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #6
	bl BufferIntegerAsString
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002F30
	mov r1, #0x50
	sub r3, r1, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	ldr r0, [sp, #0x10]
	bl String_dtor
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl ScrStrBufs_delete
	ldr r0, [sp, #0xc]
	bl DestroyMsgData
	add r0, r5, #0
	bl sub_0201D5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EEBFC: .word 0x000001B3
	thumb_func_end ov01_021EEB4C

	thumb_func_start ov01_021EEC00
ov01_021EEC00: ; 0x021EEC00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x14]
	add r6, r3, #0
	mov r0, #4
	mov r1, #1
	bl AllocWindows
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	mov r2, #3
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021EEC64 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	ldr r2, _021EEC64 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov01_021EEC7C
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EEC64: .word 0x000003D9
	thumb_func_end ov01_021EEC00

	thumb_func_start ov01_021EEC68
ov01_021EEC68: ; 0x021EEC68
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0200E5D4
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D54C
	pop {r4, pc}
	thumb_func_end ov01_021EEC68

	thumb_func_start ov01_021EEC7C
ov01_021EEC7C: ; 0x021EEC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r0, r1, #0
	mov r1, #0xf
	add r4, r2, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xbf
	mov r3, #4
	bl NewMsgDataFromNarc
	add r7, r0, #0
	mov r0, #4
	bl ScrStrBufs_new
	str r0, [sp, #0x10]
	mov r0, #0x10
	mov r1, #4
	bl String_ctor
	add r6, r0, #0
	cmp r4, #0
	beq _021EECBA
	cmp r4, #1
	beq _021EECD2
	cmp r4, #2
	b _021EECEE
_021EECBA:
	add r0, r7, #0
	mov r1, #0xc1
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl Sav2_PlayerData_GetCoinsAddr
	bl CheckCoins
	add r2, r0, #0
	b _021EED04
_021EECD2:
	add r0, r7, #0
	mov r1, #0xdc
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl Save_FrontierData_get
	mov r1, #0
	add r2, r1, #0
	bl FrontierData_BattlePointAction
	add r2, r0, #0
	b _021EED04
_021EECEE:
	add r0, r7, #0
	mov r1, #0xdf
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02031968
	bl sub_02031A6C
	add r2, r0, #0
_021EED04:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r3, #5
	bl BufferIntegerAsString
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002F30
	mov r1, #0x50
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	ldr r0, [sp, #0x10]
	bl ScrStrBufs_delete
	add r0, r7, #0
	bl DestroyMsgData
	ldr r0, [sp, #0xc]
	bl sub_0201D5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EEC7C

	thumb_func_start ov01_021EED60
ov01_021EED60: ; 0x021EED60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl AllocWindows
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021EEE24 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	ldr r2, _021EEE24 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r4, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xbf
	mov r3, #4
	bl NewMsgDataFromNarc
	ldr r1, _021EEE28 ; =0x0000014A
	add r7, r0, #0
	bl NewString_ReadMsgData
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_dtor
	ldr r1, _021EEE2C ; =0x0000014B
	add r0, r7, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_dtor
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EEE44
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EEE24: .word 0x000003D9
_021EEE28: .word 0x0000014A
_021EEE2C: .word 0x0000014B
	thumb_func_end ov01_021EED60

	thumb_func_start ov01_021EEE30
ov01_021EEE30: ; 0x021EEE30
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0200E5D4
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D54C
	pop {r4, pc}
	thumb_func_end ov01_021EEE30

	thumb_func_start ov01_021EEE44
ov01_021EEE44: ; 0x021EEE44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #0x80
	add r7, r0, #0
	add r5, r1, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl FillWindowPixelRect
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0x10
	mov r3, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	lsl r3, r3, #6
	bl FillWindowPixelRect
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xbf
	mov r3, #4
	bl NewMsgDataFromNarc
	str r0, [sp, #0xc]
	mov r0, #4
	bl ScrStrBufs_new
	add r6, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl String_ctor
	add r4, r0, #0
	mov r1, #0x53
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	bl NewString_ReadMsgData
	str r0, [sp, #0x10]
	ldr r0, [r7, #0xc]
	bl sub_0202ED88
	mov r1, #0
	add r2, r1, #0
	bl sub_0202F14C
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #6
	bl BufferIntegerAsString
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002F30
	mov r1, #0x80
	sub r3, r1, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	ldr r0, [r7, #0xc]
	bl Sav2_PlayerData_GetProfileAddr
	bl PlayerProfile_GetMoney
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #6
	bl BufferIntegerAsString
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002F30
	mov r1, #0x80
	sub r3, r1, r0
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #8]
	bl AddTextPrinterParameterized
	ldr r0, [sp, #0x10]
	bl String_dtor
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl ScrStrBufs_delete
	ldr r0, [sp, #0xc]
	bl DestroyMsgData
	add r0, r5, #0
	bl sub_0201D5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EEE44

	thumb_func_start ov01_021EEF58
ov01_021EEF58: ; 0x021EEF58
	mov r1, #0x71
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov01_021EEF58

	thumb_func_start ov01_021EEF60
ov01_021EEF60: ; 0x021EEF60
	add r0, #0x9b
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EEF60

	thumb_func_start ov01_021EEF68
ov01_021EEF68: ; 0x021EEF68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #1
	bl AllocWindows
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov03_02256730
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EEF68

	thumb_func_start ov01_021EEF88
ov01_021EEF88: ; 0x021EEF88
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0200E5D4
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D54C
	pop {r4, pc}
	thumb_func_end ov01_021EEF88

	thumb_func_start ov01_021EEF9C
ov01_021EEF9C: ; 0x021EEF9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xa9
	lsl r0, r0, #2
	add r4, r5, r0
	lsl r6, r1, #1
	ldrh r0, [r4, r6]
	cmp r0, #0xff
	beq _021EF006
	mov r0, #0x5a
	mov r1, #4
	bl String_ctor
	add r7, r0, #0
	mov r0, #0x5a
	mov r1, #4
	bl String_ctor
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x8c
	ldrh r1, [r4, r6]
	ldr r0, [r0]
	add r2, r7, #0
	bl ReadMsgDataIntoString
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0xc]
	mov r1, #1
	bl AddTextPrinterParameterized
	add r0, r7, #0
	bl String_dtor
	ldr r0, [sp, #0xc]
	bl String_dtor
_021EF006:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EEF9C

	thumb_func_start ov01_021EF00C
ov01_021EF00C: ; 0x021EF00C
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EF00C

	thumb_func_start ov01_021EF018
ov01_021EF018: ; 0x021EF018
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x40
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x19
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EF018

	thumb_func_start ov01_021EF034
ov01_021EF034: ; 0x021EF034
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x80
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x18
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EF034

	thumb_func_start ScrCmd_Message
ScrCmd_Message: ; 0x021EF050
	push {r3, lr}
	ldr r2, [r0, #8]
	add r1, r2, #1
	str r1, [r0, #8]
	ldrb r2, [r2]
	ldr r1, [r0, #0x78]
	bl ovFieldMain_ShowMessageInField
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ScrCmd_Message

	thumb_func_start ScrCmd_438
ScrCmd_438: ; 0x021EF064
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl GetVarPointer
	cmp r5, #4
	blo _021EF092
	mov r1, #0
	b _021EF098
_021EF092:
	ldr r1, _021EF0A0 ; =0x022067C8
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
_021EF098:
	strh r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021EF0A0: .word 0x022067C8
	thumb_func_end ScrCmd_438

	thumb_func_start ScrCmd_439
ScrCmd_439: ; 0x021EF0A4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1b
	add r2, r5, #0
	mov r3, #0x20
	bl NewMsgDataFromNarc
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovFieldMain_ShowMessageInField
	add r0, r5, #0
	bl DestroyMsgData
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_439

	thumb_func_start ScrCmd_440
ScrCmd_440: ; 0x021EF0F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1b
	add r2, r5, #0
	mov r3, #0x20
	bl NewMsgDataFromNarc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov01_021EF4DC
	add r0, r5, #0
	bl DestroyMsgData
	ldr r1, _021EF150 ; =ov01_021EF348
	add r0, r4, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EF150: .word ov01_021EF348
	thumb_func_end ScrCmd_440

	thumb_func_start ScrCmd_441
ScrCmd_441: ; 0x021EF154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ScriptReadHalfword
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov01_021EF564
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_441

	thumb_func_start ScrCmd_442
ScrCmd_442: ; 0x021EF194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ScriptReadHalfword
	add r4, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov01_021EF564
	ldr r1, _021EF1DC ; =ov01_021EF348
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF1DC: .word ov01_021EF348
	thumb_func_end ScrCmd_442

	thumb_func_start ScrCmd_443
ScrCmd_443: ; 0x021EF1E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1]
	ldrb r3, [r2]
	add r1, #0xa0
	ldr r2, [r1]
	cmp r2, #0
	bne _021EF202
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EF202:
	lsl r1, r3, #4
	add r1, r3, r1
	add r2, #0x90
	lsl r1, r1, #4
	add r4, r2, r1
	ldrh r1, [r2, r1]
	ldr r2, _021EF25C ; =0x0000FFFF
	cmp r1, r2
	bne _021EF23A
	ldr r2, _021EF260 ; =0x000002D3
	mov r0, #1
	mov r1, #0x1b
	mov r3, #0x20
	bl NewMsgDataFromNarc
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov01_021EF4DC
	add r0, r6, #0
	bl DestroyMsgData
	b _021EF24C
_021EF23A:
	mov r2, #6
	ldrsh r2, [r4, r2]
	str r2, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldrh r2, [r4, #2]
	ldrh r3, [r4, #4]
	bl ov01_021EF564
_021EF24C:
	ldr r1, _021EF264 ; =ov01_021EF348
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021EF25C: .word 0x0000FFFF
_021EF260: .word 0x000002D3
_021EF264: .word ov01_021EF348
	thumb_func_end ScrCmd_443

	thumb_func_start ScrCmd_444
ScrCmd_444: ; 0x021EF268
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x80
	ldr r2, [r5, #8]
	ldr r6, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r4, [r2]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	ldr r1, [r5, #8]
	add r2, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r3, [r1]
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r6, #0xc]
	add r1, r7, #0
	bl sub_0204B538
	add r6, r0, #0
	add r2, sp, #4
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov01_021EF5C8
	add r0, r6, #0
	bl ScrStrBufs_delete
	ldr r1, _021EF2DC ; =ov01_021EF348
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF2DC: .word ov01_021EF348
	thumb_func_end ScrCmd_444

	thumb_func_start ScrCmd_527
ScrCmd_527: ; 0x021EF2E0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ScriptReadHalfword
	add r4, r0, #0
	add r0, sp, #4
	add r1, r5, #0
	bl ov01_021EF4C4
	mov r1, #3
	add r0, sp, #4
	strb r1, [r0, #2]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov01_021EF4DC
	ldr r1, _021EF318 ; =ov01_021EF348
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF318: .word ov01_021EF348
	thumb_func_end ScrCmd_527

	thumb_func_start ScrCmd_045
ScrCmd_045: ; 0x021EF31C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r2, [r4, #8]
	mov r3, #1
	add r1, r2, #1
	str r1, [r4, #8]
	mov r1, #0
	str r1, [sp]
	ldrb r2, [r2]
	ldr r1, [r4, #0x78]
	bl ov01_021EF4DC
	ldr r1, _021EF344 ; =ov01_021EF348
	add r0, r4, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EF344: .word ov01_021EF348
	thumb_func_end ScrCmd_045

	thumb_func_start ov01_021EF348
ov01_021EF348: ; 0x021EF348
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #3
	bl FieldSysGetAttrAddr
	ldrb r0, [r0]
	bl sub_0205B624
	pop {r3, pc}
	thumb_func_end ov01_021EF348

	thumb_func_start ScrCmd_046
ScrCmd_046: ; 0x021EF35C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ov01_021EF4DC
	ldr r1, _021EF394 ; =ov01_021EF348
	add r0, r4, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EF394: .word ov01_021EF348
	thumb_func_end ScrCmd_046

	thumb_func_start ScrCmd_592
ScrCmd_592: ; 0x021EF398
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r4, r0, #0
	add r0, sp, #4
	add r1, r5, #0
	bl ov01_021EF4C4
	lsl r2, r4, #0x18
	mov r3, #1
	add r0, sp, #4
	strb r3, [r0, #1]
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl ov01_021EF4DC
	ldr r1, _021EF3DC ; =ov01_021EF348
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF3DC: .word ov01_021EF348
	thumb_func_end ScrCmd_592

	thumb_func_start ScrCmd_047
ScrCmd_047: ; 0x021EF3E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r2, r0, #0
	mov r3, #0
	str r3, [sp]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	lsr r2, r2, #0x18
	bl ov01_021EF4DC
	ldr r1, _021EF418 ; =ov01_021EF348
	add r0, r4, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EF418: .word ov01_021EF348
	thumb_func_end ScrCmd_047

	thumb_func_start ScrCmd_132
ScrCmd_132: ; 0x021EF41C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ScriptEnvironment_GetSav2Ptr
	bl Sav2_PlayerData_GetProfileAddr
	ldr r0, [r5, #8]
	add r1, r0, #1
	str r1, [r5, #8]
	ldrb r6, [r0]
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	ldrb r4, [r1]
	bl ScriptEnvironment_GetSav2Ptr
	bl Sav2_PlayerData_GetProfileAddr
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	beq _021EF464
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov01_021EF4DC
	b _021EF474
_021EF464:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov01_021EF4DC
_021EF474:
	ldr r1, _021EF484 ; =ov01_021EF348
	add r0, r5, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EF484: .word ov01_021EF348
	thumb_func_end ScrCmd_132

	thumb_func_start ScrCmd_455
ScrCmd_455: ; 0x021EF488
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0xa
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	bl sub_0205F26C
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x78]
	add r0, r4, #0
	mov r3, #1
	bl ov01_021EF4DC
	ldr r1, _021EF4C0 ; =ov01_021EF348
	add r0, r4, #0
	bl SetupNativeScript
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EF4C0: .word ov01_021EF348
	thumb_func_end ScrCmd_455

	thumb_func_start ov01_021EF4C4
ov01_021EF4C4: ; 0x021EF4C4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ovFieldMain_GetTextFrameDelay
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	mov r0, #1
	strb r0, [r4, #2]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EF4C4

	thumb_func_start ov01_021EF4DC
ov01_021EF4DC: ; 0x021EF4DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, #0x80
	add r6, r1, #0
	ldr r0, [r0]
	add r1, sp, #8
	add r7, r2, #0
	ldr r4, [sp, #0x38]
	bl ovFieldMain_GetMsgBoxParameters
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #8
	bl ovFieldMain_CreateMessageBox
	add r0, sp, #8
	add r1, r6, #0
	add r2, r7, #0
	bl ovFieldMain_ReadAndExpandMsgDataViaBuffer
	cmp r4, #0
	bne _021EF51C
	add r0, r5, #0
	bl ovFieldMain_GetTextFrameDelay
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	b _021EF522
_021EF51C:
	ldrb r2, [r4]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
_021EF522:
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, sp, #8
	bl ov01_021EF758
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EF4DC

	thumb_func_start ovFieldMain_ShowMessageInField
ovFieldMain_ShowMessageInField: ; 0x021EF530
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	ldr r0, [r0]
	add r1, sp, #0
	add r6, r2, #0
	bl ovFieldMain_GetMsgBoxParameters
	add r5, #0x80
	ldr r0, [r5]
	add r1, sp, #0
	bl ovFieldMain_CreateMessageBox
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovFieldMain_ReadAndExpandMsgDataViaBuffer
	add r0, sp, #0
	mov r1, #1
	bl ovFieldMain_AddTextPrinterParameterized
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovFieldMain_ShowMessageInField

	thumb_func_start ov01_021EF564
ov01_021EF564: ; 0x021EF564
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	ldr r0, [r0]
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl ovFieldMain_GetMsgBoxParameters
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #4
	bl ovFieldMain_CreateMessageBox
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, sp, #4
	add r3, r7, #0
	bl ov01_021EF708
	add r0, sp, #0x20
	ldrb r0, [r0, #0x14]
	cmp r0, #0xff
	beq _021EF5BC
	add r0, r5, #0
	bl ovFieldMain_GetTextFrameDelay
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	add r0, sp, #4
	mov r1, #1
	bl ov01_021EF758
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021EF5BC:
	add r0, sp, #4
	mov r1, #1
	bl ovFieldMain_AddTextPrinterParameterized
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EF564

	thumb_func_start ov01_021EF5C8
ov01_021EF5C8: ; 0x021EF5C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	add r4, r2, #0
	ldr r0, [r0]
	add r2, sp, #4
	add r6, r3, #0
	bl ovFieldMain_GetMsgBoxParametersEx
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #4
	bl ovFieldMain_CreateMessageBox
	ldr r1, [r5, #0x78]
	add r0, sp, #4
	add r2, r4, #0
	bl ovFieldMain_ReadAndExpandMsgDataViaBuffer
	add r0, r5, #0
	bl ovFieldMain_GetTextFrameDelay
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, sp, #4
	mov r1, #1
	add r3, r6, #0
	bl ov01_021EF758
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021EF5C8

	thumb_func_start ovFieldMain_GetTextFrameDelay
ovFieldMain_GetTextFrameDelay: ; 0x021EF60C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl Sav2_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ovFieldMain_GetTextFrameDelay

	thumb_func_start ovFieldMain_GetMsgBoxParameters
ovFieldMain_GetMsgBoxParameters: ; 0x021EF620
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x11
	add r5, r0, #0
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	mov r1, #0x12
	str r0, [r4]
	add r0, r5, #0
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	mov r1, #0x10
	str r0, [r4, #4]
	add r0, r5, #0
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	mov r1, #1
	str r0, [r4, #8]
	add r0, r5, #0
	bl FieldSysGetAttrAddr
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	bl FieldSysGetAttrAddr
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl FieldSysGetAttrAddr
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	thumb_func_end ovFieldMain_GetMsgBoxParameters

	thumb_func_start ovFieldMain_GetMsgBoxParametersEx
ovFieldMain_GetMsgBoxParametersEx: ; 0x021EF668
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x11
	add r5, r0, #0
	add r4, r2, #0
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	mov r1, #0x12
	str r0, [r4]
	add r0, r5, #0
	bl FieldSysGetAttrAddr
	ldr r0, [r0]
	mov r1, #1
	str r0, [r4, #4]
	str r6, [r4, #8]
	add r0, r5, #0
	bl FieldSysGetAttrAddr
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	bl FieldSysGetAttrAddr
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl FieldSysGetAttrAddr
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
	thumb_func_end ovFieldMain_GetMsgBoxParametersEx

	thumb_func_start ovFieldMain_CreateMessageBox
ovFieldMain_CreateMessageBox: ; 0x021EF6A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EF6E2
	ldr r0, [r5, #8]
	ldr r1, [r4, #0xc]
	mov r2, #3
	bl sub_0205B514
	ldr r0, [r5, #0xc]
	bl Sav2_PlayerData_GetOptionsAddr
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205B564
	ldr r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x40
	add r5, #0xd2
	orr r0, r1
	strb r0, [r5]
_021EF6E2:
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	bl FillWindowPixelBuffer
	pop {r3, r4, r5, pc}
	thumb_func_end ovFieldMain_CreateMessageBox

	thumb_func_start ovFieldMain_ReadAndExpandMsgDataViaBuffer
ovFieldMain_ReadAndExpandMsgDataViaBuffer: ; 0x021EF6EC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #4]
	bl ReadMsgDataIntoString
	ldr r0, [r4, #8]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	bl StringExpandPlaceholders
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ovFieldMain_ReadAndExpandMsgDataViaBuffer

	thumb_func_start ov01_021EF708
ov01_021EF708: ; 0x021EF708
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	add r7, r3, #0
	bl MailMsg_init
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MailMsg_SetMsgBankAndNum
	add r0, sp, #0
	mov r1, #0
	add r2, r7, #0
	bl MailMsg_SetFieldI
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, sp, #0
	mov r1, #1
	bl MailMsg_SetFieldI
	add r0, sp, #0
	mov r1, #0x20
	bl MailMsg_GetExpandedString
	add r4, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl StringCopy
	add r0, r4, #0
	bl String_dtor
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EF708

	thumb_func_start ov01_021EF758
ov01_021EF758: ; 0x021EF758
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r2, #0
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0205B5EC
	ldr r1, [r4, #0x14]
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021EF758

	thumb_func_start ovFieldMain_AddTextPrinterParameterized
ovFieldMain_AddTextPrinterParameterized: ; 0x021EF780
	push {r3, r4, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r2, [r4]
	bl AddTextPrinterParameterized
	ldr r1, [r4, #0x14]
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ovFieldMain_AddTextPrinterParameterized

	thumb_func_start ov01_021EF7A0
ov01_021EF7A0: ; 0x021EF7A0
	push {r4, r5, r6, lr}
	lsl r6, r1, #5
	add r5, r0, #0
	add r4, r2, #0
	add r1, r6, #0
	bl DC_FlushRange
	add r0, r5, #0
	lsl r1, r4, #5
	add r2, r6, #0
	bl GX_LoadBGPltt
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EF7A0

	thumb_func_start ov01_021EF7BC
ov01_021EF7BC: ; 0x021EF7BC
	push {lr}
	sub sp, #0x14
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _021EF7E4 ; =0x00000197
	mov r2, #3
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x1c]
	add r1, #0x20
	bl AddWindowParameterized
	add sp, #0x14
	pop {pc}
	.balign 4, 0
_021EF7E4: .word 0x00000197
	thumb_func_end ov01_021EF7BC

	thumb_func_start ov01_021EF7E8
ov01_021EF7E8: ; 0x021EF7E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, #0x31
	ldrb r0, [r0]
	add r3, r5, #0
	add r6, r2, #0
	lsl r0, r0, #0x19
	lsr r4, r0, #0x18
	mov r0, #4
	add r7, r1, #0
	str r0, [sp]
	mov r0, #0xa3
	add r1, r4, #0
	mov r2, #0
	add r3, #0x34
	bl GfGfxLoader_GetCharData
	str r0, [r5, #0x38]
	ldr r3, [r5, #0x34]
	add r1, r7, #0
	str r6, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #0x10]
	bl BG_LoadCharTilesData
	mov r0, #0xa3
	add r1, r4, #1
	add r2, sp, #8
	mov r3, #4
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0xc]
	mov r1, #1
	bl ov01_021EF7A0
	add r0, r4, #0
	bl FreeToHeap
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EF7E8

	thumb_func_start ov01_021EF844
ov01_021EF844: ; 0x021EF844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r2, #0x84
	sub r2, r2, r1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r6, r0, #0
	add r2, r1, #4
	add r1, r6, #0
	add r1, #0x30
	strb r2, [r1]
	mov r1, #0
	str r1, [sp]
	ldr r2, _021EF8D0 ; =0x000002D9
	mov r1, #3
	mov r3, #0xb
	bl ov01_021EF7E8
	add r0, r6, #0
	add r0, #0x20
	mov r1, #0
	bl FillWindowPixelBuffer
	add r7, r6, #0
	mov r4, #0
	add r7, #0x20
_021EF87A:
	add r0, r4, #0
	mov r1, #0x11
	bl _s32_div_f
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0x11
	bl _s32_div_f
	mov r1, #8
	str r1, [sp]
	str r1, [sp, #4]
	lsl r1, r5, #0x13
	lsr r1, r1, #0x10
	lsl r0, r0, #0x13
	add r2, r4, #1
	lsl r2, r2, #0x13
	str r1, [sp, #8]
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r6, #0x34]
	add r0, r7, #0
	ldr r1, [r1, #0x14]
	lsr r2, r2, #0x10
	mov r3, #0
	bl BlitBitmapRectToWindow
	add r4, r4, #1
	cmp r4, #0x44
	blt _021EF87A
	add r0, r6, #0
	add r0, #0x20
	bl CopyWindowToVram
	ldr r0, [r6, #0x38]
	bl FreeToHeap
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF8D0: .word 0x000002D9
	thumb_func_end ov01_021EF844

	thumb_func_start ov01_021EF8D4
ov01_021EF8D4: ; 0x021EF8D4
	mov r1, #0
	str r1, [r0]
	strb r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov01_021EF8D4

	thumb_func_start ov01_021EF8E8
ov01_021EF8E8: ; 0x021EF8E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021EF8D4
	str r4, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EF8E8

	thumb_func_start ov01_021EF8F8
ov01_021EF8F8: ; 0x021EF8F8
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi _021EF9A4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF90E: ; jump table
	.short _021EF9A4 - _021EF90E - 2 ; case 0
	.short _021EF916 - _021EF90E - 2 ; case 1
	.short _021EF954 - _021EF90E - 2 ; case 2
	.short _021EF93E - _021EF90E - 2 ; case 3
_021EF916:
	ldr r0, [r4, #0xc]
	sub r0, r0, #4
	str r0, [r4, #0xc]
	bpl _021EF922
	mov r0, #0
	str r0, [r4, #0xc]
_021EF922:
	mov r1, #3
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	add r2, r1, #0
	bl sub_0201BC8C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EF9A4
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #3
	strb r0, [r4, #4]
	pop {r4, pc}
_021EF93E:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	cmp r0, #0x3c
	blo _021EF9A4
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #2
	strb r0, [r4, #4]
	pop {r4, pc}
_021EF954:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	cmp r0, #0x26
	ble _021EF962
	mov r0, #0x26
	str r0, [r4, #0xc]
_021EF962:
	mov r1, #3
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	add r2, r1, #0
	bl sub_0201BC8C
	ldr r0, [r4, #0xc]
	cmp r0, #0x26
	bne _021EF9A4
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EF99E
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x40]
	bl sub_02068F84
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021EF844
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl ov01_021EF9A8
	mov r0, #1
	strb r0, [r4, #4]
	pop {r4, pc}
_021EF99E:
	add r0, r4, #0
	bl ov01_021EFACC
_021EF9A4:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EF8F8

	thumb_func_start ov01_021EF9A8
ov01_021EF9A8: ; 0x021EF9A8
	push {r3, lr}
	sub sp, #0x10
	add r3, r0, #0
	mov r0, #8
	add r2, r1, #0
	str r0, [sp]
	mov r1, #0
	ldr r0, _021EF9D0 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r3, #0
	str r1, [sp, #0xc]
	add r3, #0x30
	ldrb r3, [r3]
	add r0, #0x20
	bl AddTextPrinterParameterized2
	add sp, #0x10
	pop {r3, pc}
	nop
_021EF9D0: .word 0x00010200
	thumb_func_end ov01_021EF9A8

	thumb_func_start ov01_021EF9D4
ov01_021EF9D4: ; 0x021EF9D4
	mov r1, #2
	strb r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #0x10]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EF9D4

	thumb_func_start ov01_021EF9E0
ov01_021EF9E0: ; 0x021EF9E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x44
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0x16
	mov r1, #4
	bl String_ctor
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EF8E8
	add r0, r4, #0
	bl ov01_021EF7BC
	mov r1, #0x1b
	add r2, r1, #0
	mov r0, #1
	add r2, #0xfc
	mov r3, #4
	bl NewMsgDataFromNarc
	str r0, [r4, #0x3c]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021EF9E0

	thumb_func_start ov01_021EFA1C
ov01_021EFA1C: ; 0x021EFA1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl DestroyMsgData
	add r0, r4, #0
	add r0, #0x20
	bl RemoveWindow
	ldr r0, [r4, #0x40]
	bl String_dtor
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021EFA1C

	thumb_func_start ov01_021EFA3C
ov01_021EFA3C: ; 0x021EFA3C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	str r1, [r4, #0x18]
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #0
	bne _021EFA90
	mov r0, #1
	str r0, [r4]
	mov r1, #3
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mov r3, #0x26
	bl sub_0201BC8C
	mov r0, #0x26
	str r0, [r4, #0xc]
	ldr r0, _021EFAC8 ; =ov01_021EF8F8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E320
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x40]
	bl sub_02068F84
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x31
	strb r5, [r0]
	add r0, r4, #0
	bl ov01_021EF844
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl ov01_021EF9A8
	pop {r3, r4, r5, pc}
_021EFA90:
	ldrb r1, [r4, #4]
	cmp r1, #3
	bhi _021EFAC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EFAA2: ; jump table
	.short _021EFAC2 - _021EFAA2 - 2 ; case 0
	.short _021EFAAA - _021EFAA2 - 2 ; case 1
	.short _021EFAB8 - _021EFAA2 - 2 ; case 2
	.short _021EFAAA - _021EFAA2 - 2 ; case 3
_021EFAAA:
	bl ov01_021EF9D4
	mov r0, #1
	str r0, [r4, #0x14]
	add r4, #0x31
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_021EFAB8:
	mov r0, #1
	str r0, [r4, #0x14]
	add r4, #0x31
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_021EFAC2:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFAC8: .word ov01_021EF8F8
	thumb_func_end ov01_021EFA3C

	thumb_func_start ov01_021EFACC
ov01_021EFACC: ; 0x021EFACC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EFADA
	bl sub_0200E390
_021EFADA:
	add r0, r4, #0
	add r0, #0x20
	bl ClearWindowTilemapAndCopyToVram
	mov r1, #3
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mov r3, #0
	bl sub_0201BC8C
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ov01_021EF8E8
	pop {r4, pc}
	thumb_func_end ov01_021EFACC

	thumb_func_start ov01_021EFAF8
ov01_021EFAF8: ; 0x021EFAF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetAreaIcon
	cmp r0, #0
	beq _021EFB36
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl sub_0203B58C
	cmp r0, #0
	bne _021EFB36
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetMapSec
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_GetAreaIcon
	add r2, r0, #0
	beq _021EFB2C
	sub r2, r2, #1
_021EFB2C:
	ldr r0, [r5, #4]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl ov01_021EFA3C
_021EFB36:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EFAF8

	thumb_func_start ov01_021EFB38
ov01_021EFB38: ; 0x021EFB38
	push {r3, lr}
	ldr r2, _021EFB5C ; =0x02209B64
	ldr r2, [r2, #4]
	lsl r3, r2, #2
	ldr r2, _021EFB60 ; =0x022068C4
	ldr r2, [r2, r3]
	blx r2
	ldr r0, _021EFB5C ; =0x02209B64
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bl OS_GetTick
	mov r0, #0
	add r1, r0, #0
	bl OS_SetTick
	pop {r3, pc}
	.balign 4, 0
_021EFB5C: .word 0x02209B64
_021EFB60: .word 0x022068C4
	thumb_func_end ov01_021EFB38

	thumb_func_start ov01_021EFB64
ov01_021EFB64: ; 0x021EFB64
	push {r3, lr}
	cmp r0, #0xc
	blt _021EFB78
	cmp r0, #0x21
	bgt _021EFB78
	ldr r0, _021EFBE8 ; =SDK_OVERLAY_OVY_115_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFB78:
	add r1, r0, #0
	sub r1, #0x22
	cmp r1, #2
	bhi _021EFB8A
	ldr r0, _021EFBEC ; =SDK_OVERLAY_OVY_116_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFB8A:
	cmp r0, #0x27
	blt _021EFB9C
	cmp r0, #0x2c
	bgt _021EFB9C
	ldr r0, _021EFBF0 ; =SDK_OVERLAY_OVY_117_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFB9C:
	cmp r0, #0x2d
	bne _021EFBAA
	ldr r0, _021EFBF4 ; =SDK_OVERLAY_OVY_118_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFBAA:
	cmp r0, #0
	blt _021EFBBC
	cmp r0, #5
	bgt _021EFBBC
	ldr r0, _021EFBF8 ; =SDK_OVERLAY_OVY_120_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFBBC:
	cmp r0, #6
	blt _021EFBCE
	cmp r0, #0xb
	bgt _021EFBCE
	ldr r0, _021EFBFC ; =SDK_OVERLAY_OVY_119_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFBCE:
	cmp r0, #0x2e
	bne _021EFBDC
	ldr r0, _021EFBF8 ; =SDK_OVERLAY_OVY_120_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
_021EFBDC:
	ldr r0, _021EFC00 ; =SDK_OVERLAY_OVY_114_ID
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, pc}
	nop
_021EFBE8: .word SDK_OVERLAY_OVY_115_ID
_021EFBEC: .word SDK_OVERLAY_OVY_116_ID
_021EFBF0: .word SDK_OVERLAY_OVY_117_ID
_021EFBF4: .word SDK_OVERLAY_OVY_118_ID
_021EFBF8: .word SDK_OVERLAY_OVY_120_ID
_021EFBFC: .word SDK_OVERLAY_OVY_119_ID
_021EFC00: .word SDK_OVERLAY_OVY_114_ID
	thumb_func_end ov01_021EFB64

	thumb_func_start ov01_021EFC04
ov01_021EFC04: ; 0x021EFC04
	push {r3, lr}
	cmp r0, #0xc
	blt _021EFC16
	cmp r0, #0x21
	bgt _021EFC16
	ldr r0, _021EFC78 ; =SDK_OVERLAY_OVY_115_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC16:
	add r1, r0, #0
	sub r1, #0x22
	cmp r1, #2
	bhi _021EFC26
	ldr r0, _021EFC7C ; =SDK_OVERLAY_OVY_116_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC26:
	cmp r0, #0x27
	blt _021EFC36
	cmp r0, #0x2c
	bgt _021EFC36
	ldr r0, _021EFC80 ; =SDK_OVERLAY_OVY_117_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC36:
	cmp r0, #0x2d
	bne _021EFC42
	ldr r0, _021EFC84 ; =SDK_OVERLAY_OVY_118_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC42:
	cmp r0, #0
	blt _021EFC52
	cmp r0, #5
	bgt _021EFC52
	ldr r0, _021EFC88 ; =SDK_OVERLAY_OVY_120_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC52:
	cmp r0, #6
	blt _021EFC62
	cmp r0, #0xb
	bgt _021EFC62
	ldr r0, _021EFC8C ; =SDK_OVERLAY_OVY_119_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC62:
	cmp r0, #0x2e
	bne _021EFC6E
	ldr r0, _021EFC88 ; =SDK_OVERLAY_OVY_120_ID
	bl UnloadOverlayByID
	pop {r3, pc}
_021EFC6E:
	ldr r0, _021EFC90 ; =SDK_OVERLAY_OVY_114_ID
	bl UnloadOverlayByID
	pop {r3, pc}
	nop
_021EFC78: .word SDK_OVERLAY_OVY_115_ID
_021EFC7C: .word SDK_OVERLAY_OVY_116_ID
_021EFC80: .word SDK_OVERLAY_OVY_117_ID
_021EFC84: .word SDK_OVERLAY_OVY_118_ID
_021EFC88: .word SDK_OVERLAY_OVY_120_ID
_021EFC8C: .word SDK_OVERLAY_OVY_119_ID
_021EFC90: .word SDK_OVERLAY_OVY_114_ID
	thumb_func_end ov01_021EFC04

	thumb_func_start ov01_021EFC94
ov01_021EFC94: ; 0x021EFC94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _021EFCD4 ; =0x02209B64
	add r6, r2, #0
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #8]
	ldr r0, _021EFCD8 ; =ov01_021EFB38
	mov r1, #0x24
	mov r2, #5
	mov r3, #4
	bl sub_02007200
	bl sub_0201F988
	add r4, r0, #0
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	mov r0, #0x6d
	mov r1, #4
	bl NARC_ctor
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021EFCCC
	mov r0, #0
	str r0, [r1]
_021EFCCC:
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
	nop
_021EFCD4: .word 0x02209B64
_021EFCD8: .word ov01_021EFB38
	thumb_func_end ov01_021EFC94

	thumb_func_start ov01_021EFCDC
ov01_021EFCDC: ; 0x021EFCDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl NARC_dtor
	ldr r1, [r5, #0xc]
	mov r0, #4
	bl FreeToHeapExplicit
	add r0, r4, #0
	bl sub_02007234
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EFCDC

	thumb_func_start ov01_021EFCF8
ov01_021EFCF8: ; 0x021EFCF8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #4
	mov r1, #0x4c
	str r2, [sp]
	add r5, r3, #0
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl memset
	ldr r0, _021EFD38 ; =ov01_021EFD3C
	add r1, r4, #0
	mov r2, #5
	bl sub_0200E320
	str r5, [r4, #0x48]
	cmp r5, #0
	beq _021EFD28
	mov r0, #0
	str r0, [r5]
_021EFD28:
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFD38: .word ov01_021EFD3C
	thumb_func_end ov01_021EFCF8

	thumb_func_start ov01_021EFD3C
ov01_021EFD3C: ; 0x021EFD3C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #5
	bhi _021EFE22
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EFD54: ; jump table
	.short _021EFD60 - _021EFD54 - 2 ; case 0
	.short _021EFD98 - _021EFD54 - 2 ; case 1
	.short _021EFDB2 - _021EFD54 - 2 ; case 2
	.short _021EFDC6 - _021EFD54 - 2 ; case 3
	.short _021EFDE0 - _021EFD54 - 2 ; case 4
	.short _021EFE04 - _021EFD54 - 2 ; case 5
_021EFD60:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021EFD7A
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #2
	bl ov01_021EFFB0
	b _021EFD90
_021EFD7A:
	cmp r0, #2
	bne _021EFD90
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #1
	bl ov01_021EFFB0
_021EFD90:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EFE22
_021EFD98:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r1, #0
	bl ov01_021EFFB0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EFE22
_021EFDB2:
	add r0, r4, #0
	add r0, #0x18
	bl ov01_021EFFBC
	cmp r0, #0
	beq _021EFE22
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EFE22
_021EFDC6:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r2, #0
	bl ov01_021EFFB0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EFE22
_021EFDE0:
	add r0, r4, #0
	add r0, #0x18
	bl ov01_021EFFBC
	cmp r0, #0
	beq _021EFE22
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021EFDFE
	mov r0, #5
	str r0, [r4]
	b _021EFE22
_021EFDFE:
	mov r0, #1
	str r0, [r4]
	b _021EFE22
_021EFE04:
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #8]
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _021EFE14
	mov r1, #1
	str r1, [r2]
_021EFE14:
	bl sub_0200E390
	add r0, r4, #0
	bl FreeToHeap
	add sp, #4
	pop {r3, r4, pc}
_021EFE22:
	add r4, #0x30
	add r0, r4, #0
	bl ov01_021EFFBC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EFD3C

	thumb_func_start ov01_021EFE30
ov01_021EFE30: ; 0x021EFE30
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov01_021EFE30

	thumb_func_start ov01_021EFE34
ov01_021EFE34: ; 0x021EFE34
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021EFE34

	thumb_func_start ov01_021EFE44
ov01_021EFE44: ; 0x021EFE44
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021EFE6A
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021EFE6A:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov01_021EFE44

	thumb_func_start ov01_021EFE70
ov01_021EFE70: ; 0x021EFE70
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021EFE70

	thumb_func_start ov01_021EFE80
ov01_021EFE80: ; 0x021EFE80
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021EFEC0
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021EFEC0:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EFE80

	thumb_func_start ov01_021EFEC8
ov01_021EFEC8: ; 0x021EFEC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl FX_Div
	str r6, [r5]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EFEC8

	thumb_func_start ov01_021EFF28
ov01_021EFF28: ; 0x021EFF28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl FX_Div
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _021EFF88
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EFF88:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EFF28

	thumb_func_start ov01_021EFF90
ov01_021EFF90: ; 0x021EFF90
	push {r3, lr}
	cmp r0, #1
	bne _021EFF9E
	ldr r0, _021EFFA8 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
_021EFF9E:
	ldr r0, _021EFFAC ; =0x0400106C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
	nop
_021EFFA8: .word 0x0400006C
_021EFFAC: .word 0x0400106C
	thumb_func_end ov01_021EFF90

	thumb_func_start ov01_021EFFB0
ov01_021EFFB0: ; 0x021EFFB0
	push {r3, lr}
	str r3, [r0, #0x14]
	ldr r3, [sp, #8]
	bl ov01_021EFE34
	pop {r3, pc}
	thumb_func_end ov01_021EFFB0

	thumb_func_start ov01_021EFFBC
ov01_021EFFBC: ; 0x021EFFBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov01_021EFE44
	add r4, r0, #0
	ldr r0, _021EFFD4 ; =ov01_021EFFD8
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200E374
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFFD4: .word ov01_021EFFD8
	thumb_func_end ov01_021EFFBC

	thumb_func_start ov01_021EFFD8
ov01_021EFFD8: ; 0x021EFFD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1]
	bl ov01_021EFF90
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end ov01_021EFFD8

	thumb_func_start ov01_021EFFEC
ov01_021EFFEC: ; 0x021EFFEC
	push {r4, lr}
	mov r0, #4
	mov r1, #0x30
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	ldr r0, _021F0020 ; =0x04000048
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021F0024 ; =0xFFFFC0FF
	and r1, r2
	strh r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_021F0020: .word 0x04000048
_021F0024: .word 0xFFFFC0FF
	thumb_func_end ov01_021EFFEC

	thumb_func_start ov01_021F0028
ov01_021F0028: ; 0x021F0028
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _021F0036
	bl ov01_021F0174
_021F0036:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021F004C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	nop
_021F004C: .word 0xFFFF1FFF
	thumb_func_end ov01_021F0028

	thumb_func_start ov01_021F0050
ov01_021F0050: ; 0x021F0050
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	cmp r0, #0
	beq _021F0068
	bl GF_AssertFail
_021F0068:
	mov r0, #0
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	add r6, #0x18
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x24]
	ldr r1, [r1, #0x1c]
	ldr r3, [sp, #0x28]
	str r1, [r5, #0x20]
	str r7, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	str r6, [r5, #0x2c]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EFEC8
	cmp r4, #0
	blt _021F00A8
	mov r0, #0xff
	ldr r2, _021F00D4 ; =0x04000040
	sub r0, r0, r4
	strh r0, [r2]
	add r0, r4, #1
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	b _021F00C4
_021F00A8:
	add r0, r4, #0
	add r0, #0xff
	lsl r0, r0, #0x18
	mov r2, #1
	sub r2, r2, r4
	lsl r2, r2, #0x18
	ldr r1, _021F00D4 ; =0x04000040
	lsr r0, r0, #0x18
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	lsr r2, r2, #0x18
	strh r2, [r1, #2]
	strh r0, [r1, #6]
_021F00C4:
	mov r2, #1
	ldr r0, _021F00D8 ; =ov01_021F00DC
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F00D4: .word 0x04000040
_021F00D8: .word ov01_021F00DC
	thumb_func_end ov01_021F0050

	thumb_func_start ov01_021F00DC
ov01_021F00DC: ; 0x021F00DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	ldr r0, _021F0104 ; =ov01_021F010C
	add r4, r1, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, _021F0108 ; =ov01_021F01D0
	add r2, r4, #0
	bl ov01_021FB530
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	nop
_021F0104: .word ov01_021F010C
_021F0108: .word ov01_021F01D0
	thumb_func_end ov01_021F00DC

	thumb_func_start ov01_021F010C
ov01_021F010C: ; 0x021F010C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021F011C
	cmp r0, #1
	beq _021F0168
	pop {r4, pc}
_021F011C:
	add r0, r4, #0
	bl ov01_021EFF28
	cmp r0, #0
	beq _021F012C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_021F012C:
	ldr r0, [r4]
	asr r0, r0, #0xc
	bmi _021F014A
	mov r1, #0xff
	sub r1, r1, r0
	ldr r2, _021F0170 ; =0x04000040
	add r0, r0, #1
	strh r1, [r2]
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	pop {r4, pc}
_021F014A:
	add r1, r0, #0
	add r1, #0xff
	lsl r1, r1, #0x18
	ldr r3, _021F0170 ; =0x04000040
	lsr r1, r1, #0x18
	strh r1, [r3]
	mov r1, #1
	sub r0, r1, r0
	mov r2, #0xc0
	lsl r0, r0, #0x18
	strh r2, [r3, #4]
	lsr r0, r0, #0x18
	strh r0, [r3, #2]
	strh r2, [r3, #6]
	pop {r4, pc}
_021F0168:
	add r0, r4, #0
	bl ov01_021F0174
	pop {r4, pc}
	.balign 4, 0
_021F0170: .word 0x04000040
	thumb_func_end ov01_021F010C

	thumb_func_start ov01_021F0174
ov01_021F0174: ; 0x021F0174
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F01C8 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _021F01CC ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3]
	ldr r0, [r4, #0x2c]
	mov r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x24]
	bl ov01_021FB554
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021F01C8: .word 0x04000048
_021F01CC: .word 0xFFFF1FFF
	thumb_func_end ov01_021F0174

	thumb_func_start ov01_021F01D0
ov01_021F01D0: ; 0x021F01D0
	push {r4, lr}
	ldr r0, _021F0240 ; =0x04000006
	add r4, r1, #0
	ldrh r0, [r0]
	ldr r1, [r4, #0x18]
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	ldr r0, [r4]
	bne _021F01E8
	b _021F01EA
_021F01E8:
	neg r0, r0
_021F01EA:
	asr r2, r0, #0xc
	ldr r0, _021F0244 ; =0x000001FF
	add r1, r2, #0
	and r1, r0
	ldr r0, _021F0248 ; =0x04000010
	cmp r2, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, _021F024C ; =0xFFFF1FFF
	blt _021F021C
	add r3, r0, #0
	sub r3, #0x10
	ldr r2, [r3]
	and r2, r1
	lsl r1, r0, #9
	orr r1, r2
	str r1, [r3]
	add r0, #0x3a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	strh r2, [r0]
	pop {r4, pc}
_021F021C:
	add r3, r0, #0
	sub r3, #0x10
	ldr r2, [r3]
	and r2, r1
	lsl r1, r0, #0xa
	orr r1, r2
	str r1, [r3]
	add r0, #0x3a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r4, pc}
	nop
_021F0240: .word 0x04000006
_021F0244: .word 0x000001FF
_021F0248: .word 0x04000010
_021F024C: .word 0xFFFF1FFF
	thumb_func_end ov01_021F01D0

	thumb_func_start ov01_021F0250
ov01_021F0250: ; 0x021F0250
	push {r4, r5, r6, lr}
	mov r0, #4
	mov r1, #0x48
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl memset
	ldr r0, _021F0294 ; =0x04000048
	mov r5, #0x3f
	ldrh r2, [r0]
	mov r1, #0x1f
	bic r2, r5
	add r3, r2, #0
	orr r3, r1
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r6, [r0]
	ldr r3, _021F0298 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r3, r6
	orr r3, r1
	lsl r1, r2, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r5
	strh r1, [r0, #2]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021F0294: .word 0x04000048
_021F0298: .word 0xFFFFC0FF
	thumb_func_end ov01_021F0250

	thumb_func_start ov01_021F029C
ov01_021F029C: ; 0x021F029C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021F02AA
	bl ov01_021F03F8
_021F02AA:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021F02C0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	nop
_021F02C0: .word 0xFFFF1FFF
	thumb_func_end ov01_021F029C

	thumb_func_start ov01_021F02C4
ov01_021F02C4: ; 0x021F02C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021F02D8
	bl GF_AssertFail
_021F02D8:
	mov r1, #0
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	mov r2, #0xff
	ldr r0, [r0, #4]
	add r5, #0x18
	ldr r0, [r0, #0x1c]
	lsl r2, r2, #0xc
	str r0, [r4, #0x38]
	mov r0, #0x60
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	str r5, [r4, #0x44]
	add r0, r4, #0
	add r3, r7, #0
	str r6, [sp]
	bl ov01_021EFEC8
	add r0, r4, #0
	mov r2, #6
	ldr r3, [sp, #0x18]
	add r0, #0x18
	mov r1, #0
	lsl r2, r2, #0x10
	str r6, [sp]
	bl ov01_021EFEC8
	ldr r2, _021F0328 ; =0x04000040
	mov r1, #0xff
	strh r1, [r2]
	mov r0, #0xc0
	strh r0, [r2, #4]
	strh r1, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _021F032C ; =ov01_021F0330
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0328: .word 0x04000040
_021F032C: .word ov01_021F0330
	thumb_func_end ov01_021F02C4

	thumb_func_start ov01_021F0330
ov01_021F0330: ; 0x021F0330
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	ldr r0, _021F0358 ; =ov01_021F0360
	add r4, r1, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, _021F035C ; =ov01_021F03C8
	add r2, r4, #0
	bl ov01_021FB530
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	nop
_021F0358: .word ov01_021F0360
_021F035C: .word ov01_021F03C8
	thumb_func_end ov01_021F0330

	thumb_func_start ov01_021F0360
ov01_021F0360: ; 0x021F0360
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021F0370
	cmp r0, #1
	beq _021F03BC
	pop {r4, pc}
_021F0370:
	add r0, r4, #0
	add r0, #0x18
	bl ov01_021EFF28
	add r0, r4, #0
	bl ov01_021EFF28
	cmp r0, #0
	beq _021F0388
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
_021F0388:
	ldr r0, [r4]
	asr r2, r0, #0xc
	ldr r0, [r4, #0x18]
	mov r4, #0xff
	asr r1, r0, #0xc
	ldr r0, _021F03C4 ; =0x04000040
	sub r3, r4, r2
	strh r3, [r0]
	mov r3, #0x60
	sub r3, r3, r1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	strh r3, [r0, #4]
	lsl r3, r2, #8
	lsl r2, r4, #8
	and r2, r3
	orr r2, r4
	add r1, #0x60
	strh r2, [r0, #2]
	lsl r2, r1, #8
	lsl r1, r4, #8
	and r2, r1
	mov r1, #0xc0
	orr r1, r2
	strh r1, [r0, #6]
	pop {r4, pc}
_021F03BC:
	add r0, r4, #0
	bl ov01_021F03F8
	pop {r4, pc}
	.balign 4, 0
_021F03C4: .word 0x04000040
	thumb_func_end ov01_021F0360

	thumb_func_start ov01_021F03C8
ov01_021F03C8: ; 0x021F03C8
	ldr r0, _021F03F0 ; =0x04000006
	ldr r1, [r1, #0x30]
	ldrh r2, [r0]
	cmp r2, r1
	ldr r1, _021F03F4 ; =0xFFFF1FFF
	bhi _021F03E2
	sub r3, r0, #6
	ldr r2, [r3]
	lsr r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
_021F03E2:
	sub r3, r0, #6
	ldr r2, [r3]
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.balign 4, 0
_021F03F0: .word 0x04000006
_021F03F4: .word 0xFFFF1FFF
	thumb_func_end ov01_021F03C8

	thumb_func_start ov01_021F03F8
ov01_021F03F8: ; 0x021F03F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F044C ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _021F0450 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3]
	ldr r0, [r4, #0x44]
	mov r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x3c]
	bl ov01_021FB554
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	bl sub_0200E390
	mov r0, #0
	str r0, [r4, #0x40]
	pop {r4, pc}
	nop
_021F044C: .word 0x04000048
_021F0450: .word 0xFFFF1FFF
	thumb_func_end ov01_021F03F8

	thumb_func_start ov01_021F0454
ov01_021F0454: ; 0x021F0454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x10]
	lsl r1, r1, #5
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r3, #0
	ldr r3, [sp, #0x30]
	mov r2, #0
	lsl r3, r3, #5
	add r6, r0, #0
	ldr r5, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	bl sub_02007B8C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_02007B44
	mov r0, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, sp, #0x14
	bl sub_02007C2C
	lsl r1, r4, #0x18
	ldr r2, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0201C4C4
	ldr r1, [sp, #0x14]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0201CA4C
	add r0, r6, #0
	bl FreeToHeap
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F0454

	thumb_func_start ov01_021F0500
ov01_021F0500: ; 0x021F0500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [sp, #0x38]
	add r5, r0, #0
	str r6, [sp, #0x38]
	ldr r6, [sp, #0x30]
	add r4, r1, #0
	str r6, [sp]
	ldr r6, [sp, #0x34]
	add r7, r2, #0
	str r6, [sp, #4]
	ldr r6, [sp, #0x38]
	str r3, [sp, #0x10]
	str r6, [sp, #8]
	ldr r6, [sp, #0x3c]
	str r6, [sp, #0xc]
	bl ov01_021F0454
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov01_021F0454
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GetBgTilemapBuffer
	add r3, r0, #0
	mov r5, #0
	mov r0, #0xf
	mov ip, r5
	str r0, [sp, #0x14]
_021F0556:
	mov r4, #0
_021F0558:
	add r0, r4, r5
	lsl r0, r0, #0x10
	lsr r2, r0, #0xf
	ldr r0, [sp, #0x14]
	ldrh r1, [r3, r2]
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r6, r0, #0xf
	ldrh r0, [r3, r6]
	add r4, r4, #1
	strh r0, [r3, r2]
	strh r1, [r3, r6]
	ldrh r1, [r3, r2]
	ldr r0, _021F05C0 ; =0x0000FBFF
	add r7, r1, #0
	and r7, r0
	asr r1, r1, #0xa
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0xa
	orr r0, r7
	strh r0, [r3, r2]
	ldrh r0, [r3, r6]
	ldr r1, _021F05C0 ; =0x0000FBFF
	add r2, r0, #0
	and r2, r1
	asr r1, r0, #0xa
	mov r0, #1
	eor r0, r1
	lsl r0, r0, #0xa
	orr r0, r2
	strh r0, [r3, r6]
	cmp r4, #8
	blt _021F0558
	ldr r0, [sp, #0x14]
	add r5, #0x10
	add r0, #0x10
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x18
	blt _021F0556
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F05C0: .word 0x0000FBFF
	thumb_func_end ov01_021F0500

	thumb_func_start ov01_021F05C4
ov01_021F05C4: ; 0x021F05C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r5, #4
	mov r2, #4
	bl sub_02009F40
	mov r7, #0x4b
	str r0, [r5]
	mov r4, #0
	lsl r7, r7, #2
_021F05DC:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_0200A090
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021F05DC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F05C4

	thumb_func_start ov01_021F05F4
ov01_021F05F4: ; 0x021F05F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02024504
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021F0604:
	ldr r0, [r5, r6]
	bl sub_0200A0D0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021F0604
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F05F4

	thumb_func_start ov01_021F0614
ov01_021F0614: ; 0x021F0614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r6, [sp, #0x58]
	add r5, r1, #0
	str r6, [sp]
	mov r1, #1
	add r7, r0, #0
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4b
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	add r4, r2, #0
	str r3, [sp, #0x2c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x4c]
	add r1, r7, #0
	mov r3, #0
	bl sub_0200A424
	str r0, [r4]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r3, #0
	bl sub_0200A480
	str r0, [r4, #4]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x50]
	add r1, r7, #0
	mov r3, #0
	bl sub_0200A540
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x54]
	add r1, r7, #0
	mov r3, #0
	bl sub_0200A540
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl sub_0200ADA4
	ldr r0, [r4]
	bl sub_0200A740
	ldr r0, [r4, #4]
	bl sub_0200B00C
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x10
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r2, r6, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02009D48
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F0614

	thumb_func_start ov01_021F06EC
ov01_021F06EC: ; 0x021F06EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_0200AEB0
	ldr r0, [r4, #4]
	bl sub_0200B0A8
	mov r7, #0x4b
	mov r6, #0
	lsl r7, r7, #2
_021F0704:
	ldr r0, [r5, r7]
	ldr r1, [r4]
	bl sub_0200A75C
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021F0704
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F06EC

	thumb_func_start ov01_021F0718
ov01_021F0718: ; 0x021F0718
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0]
	add r1, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r2, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	add r0, sp, #0
	str r3, [sp, #0xc]
	bl sub_02024714
	add r4, r0, #0
	bne _021F0746
	bl GF_AssertFail
_021F0746:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov01_021F0718

	thumb_func_start ov01_021F074C
ov01_021F074C: ; 0x021F074C
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	add r4, r0, #0
	str r1, [sp]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r4}
	bx lr
	thumb_func_end ov01_021F074C

	thumb_func_start ov01_021F0768
ov01_021F0768: ; 0x021F0768
	push {r4, lr}
	mov r1, #0x30
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F0768

	thumb_func_start ov01_021F0780
ov01_021F0780: ; 0x021F0780
	ldr r3, _021F0784 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F0784: .word FreeToHeap
	thumb_func_end ov01_021F0780

	thumb_func_start ov01_021F0788
ov01_021F0788: ; 0x021F0788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021F079E
	bl GF_AssertFail
_021F079E:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EFE34
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl ov01_021EFE34
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F0788

	thumb_func_start ov01_021F07E0
ov01_021F07E0: ; 0x021F07E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	cmp r1, #0
	bne _021F07F6
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F07F6:
	bl ov01_021EFE44
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl ov01_021EFE44
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov01_021F0960
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F07E0

	thumb_func_start ov01_021F0848
ov01_021F0848: ; 0x021F0848
	push {r4, lr}
	mov r1, #0x30
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F0848

	thumb_func_start ov01_021F0860
ov01_021F0860: ; 0x021F0860
	ldr r3, _021F0864 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F0864: .word FreeToHeap
	thumb_func_end ov01_021F0860

	thumb_func_start ov01_021F0868
ov01_021F0868: ; 0x021F0868
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021F087E
	bl GF_AssertFail
_021F087E:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EFE34
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl ov01_021EFE34
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F0868

	thumb_func_start ov01_021F08C0
ov01_021F08C0: ; 0x021F08C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F08D4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F08D4:
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r4, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r1, r2, #1
	sub r1, r4, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov01_021F0960
	add r0, r5, #0
	bl ov01_021EFE44
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl ov01_021EFE44
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl ov01_021F0960
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F08C0

	thumb_func_start ov01_021F0960
ov01_021F0960: ; 0x021F0960
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	add r4, r1, #0
	cmp r5, #0
	ble _021F09B8
	cmp r2, #0
	ble _021F09B8
	cmp r3, r5
	beq _021F09B8
	cmp r4, r2
	beq _021F09B8
	cmp r3, #0
	bge _021F097E
	mov r3, #0
_021F097E:
	mov r1, #1
	lsl r1, r1, #8
	cmp r5, r1
	ble _021F0988
	add r5, r1, #0
_021F0988:
	cmp r4, #0
	bge _021F098E
	mov r4, #0
_021F098E:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	ble _021F0998
	add r2, r1, #0
_021F0998:
	sub r1, r5, r3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	sub r1, r2, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	lsl r2, r3, #0x10
	add r1, sp, #8
	lsl r3, r4, #0x10
	ldrb r1, [r1, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl FillWindowPixelRect
_021F09B8:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F0960

	thumb_func_start ov01_021F09BC
ov01_021F09BC: ; 0x021F09BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #4
	mov r1, #0xcc
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0xcc
	add r7, r0, #0
	bl memset
	mov r4, #0
	add r5, r7, #0
_021F09D6:
	add r0, r6, #0
	bl ov01_021F0848
	str r0, [r5, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _021F09D6
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F09BC

	thumb_func_start ov01_021F09EC
ov01_021F09EC: ; 0x021F09EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021F09F4:
	ldr r0, [r5, #4]
	bl ov01_021F0860
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _021F09F4
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F09EC

	thumb_func_start ov01_021F0A0C
ov01_021F0A0C: ; 0x021F0A0C
	push {r3, r4}
	str r3, [r0]
	ldr r3, _021F0A48 ; =0xFFFFFFF8
	add r3, sp
	ldrb r4, [r3, #0x10]
	add r3, r0, #0
	add r3, #0xc9
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xc6
	strb r1, [r3]
	add r1, r0, #0
	add r1, #0xc7
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xc4
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xc5
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xc8
	strb r2, [r1]
	mov r1, #1
	add r0, #0xca
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_021F0A48: .word 0xFFFFFFF8
	thumb_func_end ov01_021F0A0C

	thumb_func_start ov01_021F0A4C
ov01_021F0A4C: ; 0x021F0A4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F0A60
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F0A60:
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0x30
	bhs _021F0AE4
	mov r1, #0xc8
	ldrsb r0, [r6, r1]
	sub r2, r0, #1
	add r0, r6, #0
	add r0, #0xc8
	strb r2, [r0]
	ldrsb r0, [r6, r1]
	cmp r0, #0
	bgt _021F0AE4
	add r0, r6, #0
	add r0, #0xc7
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	mov r1, #0x1d
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	ror r2, r1
	add r2, r3, r2
	ldr r1, _021F0B40 ; =0x02206980
	mov r3, #0x20
	ldrb r1, [r1, r2]
	lsr r2, r0, #3
	lsl r4, r2, #5
	mov r2, #0xb0
	sub r2, r2, r4
	str r2, [sp]
	add r2, r6, #0
	add r2, #0xc6
	ldrb r2, [r2]
	lsl r0, r0, #2
	lsl r1, r1, #5
	str r2, [sp, #4]
	ldr r2, [r6]
	add r0, r6, r0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, r6, #0
	str r3, [sp, #0x10]
	add r2, #0xc9
	ldrb r2, [r2]
	sub r3, #0x30
	add r1, #0x10
	str r2, [sp, #0x14]
	ldr r0, [r0, #4]
	add r2, r1, #0
	sub r3, r3, r4
	bl ov01_021F0868
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xc4
	strb r1, [r0]
_021F0AE4:
	add r0, r6, #0
	add r0, #0xc5
	ldrb r4, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r4, r0
	bge _021F0B1C
	lsl r0, r4, #2
	add r7, r6, #0
	add r5, r6, r0
	add r7, #0xc5
_021F0AFC:
	ldr r0, [r5, #4]
	bl ov01_021F08C0
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _021F0B0E
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_021F0B0E:
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021F0AFC
_021F0B1C:
	add r0, r6, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0x30
	blo _021F0B38
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021F0B38
	mov r0, #0
	add r6, #0xca
	strb r0, [r6]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F0B38:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F0B40: .word 0x02206980
	thumb_func_end ov01_021F0A4C

	thumb_func_start ov01_021F0B44
ov01_021F0B44: ; 0x021F0B44
	push {r4, lr}
	mov r0, #4
	mov r1, #0xe8
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0xe8
	add r4, r0, #0
	bl memset
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov01_021F0B44

	thumb_func_start ov01_021F0B5C
ov01_021F0B5C: ; 0x021F0B5C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	cmp r1, #0
	beq _021F0B6E
	bl ov01_021F0CDC
_021F0B6E:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F0B5C

	thumb_func_start ov01_021F0B78
ov01_021F0B78: ; 0x021F0B78
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r6, r2, #0
	add r5, r3, #0
	cmp r0, #0
	beq _021F0B94
	bl GF_AssertFail
_021F0B94:
	mov r2, #0
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x10]
	add r4, #0x18
	ldr r0, [r0, #4]
	add r3, r6, #0
	ldr r1, [r0, #0x1c]
	add r0, r7, #0
	add r0, #0xd8
	str r1, [r0]
	add r0, r7, #0
	str r2, [r7, #0x14]
	add r0, #0xe4
	str r4, [r0]
	add r0, r7, #0
	mov r1, #0xff
	bl ov01_021EFE34
	mov r4, #0
_021F0BBA:
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	ldr r0, [sp, #0x18]
	mul r0, r1
	add r1, r5, #0
	bl _u32_div_f
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021F0BE2
	add r0, r7, r4
	strb r6, [r0, #0x18]
	b _021F0BEA
_021F0BE2:
	ldr r0, [sp, #0x18]
	sub r1, r0, r6
	add r0, r7, r4
	strb r1, [r0, #0x18]
_021F0BEA:
	add r4, r4, #1
	cmp r4, #0xc0
	blt _021F0BBA
	ldr r0, _021F0C34 ; =0x04000048
	mov r1, #0x3f
	ldrh r3, [r0]
	ldr r2, [sp, #0x1c]
	bic r3, r1
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r1
	ldr r1, [sp, #0x20]
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	mov r3, #0
	sub r1, #8
	strh r3, [r1]
	mov r1, #0xc0
	sub r0, r0, #4
	strh r1, [r0]
	lsl r3, r2, #0x15
	ldr r1, [r3]
	ldr r0, _021F0C38 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r2, #8
	orr r0, r1
	str r0, [r3]
	ldr r0, _021F0C3C ; =ov01_021F0C40
	add r1, r7, #0
	lsl r2, r2, #5
	bl sub_0200E374
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0C34: .word 0x04000048
_021F0C38: .word 0xFFFF1FFF
_021F0C3C: .word ov01_021F0C40
	thumb_func_end ov01_021F0B78

	thumb_func_start ov01_021F0C40
ov01_021F0C40: ; 0x021F0C40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, _021F0C74 ; =ov01_021F0CA8
	add r2, r4, #0
	bl ov01_021FB530
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1]
	mov r2, #1
	ldr r0, _021F0C78 ; =ov01_021F0C7C
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
	add r4, #0xe0
	str r0, [r4]
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	nop
_021F0C74: .word ov01_021F0CA8
_021F0C78: .word ov01_021F0C7C
	thumb_func_end ov01_021F0C40

	thumb_func_start ov01_021F0C7C
ov01_021F0C7C: ; 0x021F0C7C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F0C8C
	cmp r0, #1
	beq _021F0C9E
	pop {r4, pc}
_021F0C8C:
	add r0, r4, #0
	bl ov01_021EFE44
	cmp r0, #1
	bne _021F0CA4
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021F0C9E:
	add r0, r4, #0
	bl ov01_021F0CDC
_021F0CA4:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F0C7C

	thumb_func_start ov01_021F0CA8
ov01_021F0CA8: ; 0x021F0CA8
	ldr r0, _021F0CD4 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _021F0CD0
	add r0, r1, r0
	ldrb r0, [r0, #0x18]
	ldr r2, [r1]
	sub r0, r2, r0
	bpl _021F0CBC
	mov r0, #0
_021F0CBC:
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r1, r0
	mov r0, #0xff
	orr r0, r1
	ldr r1, _021F0CD8 ; =0x04000040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_021F0CD0:
	bx lr
	nop
_021F0CD4: .word 0x04000006
_021F0CD8: .word 0x04000040
	thumb_func_end ov01_021F0CA8

	thumb_func_start ov01_021F0CDC
ov01_021F0CDC: ; 0x021F0CDC
	push {r4, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	ldr r1, [r2]
	ldr r0, _021F0D1C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #1
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl ov01_021FB554
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_0200E390
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	pop {r4, pc}
	nop
_021F0D1C: .word 0xFFFF1FFF
	thumb_func_end ov01_021F0CDC

	thumb_func_start ov01_021F0D20
ov01_021F0D20: ; 0x021F0D20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	bne _021F0D42
	ldr r1, _021F0DAC ; =0x00001720
	tst r1, r0
	bne _021F0D38
	cmp r0, #0
	bne _021F0D3C
_021F0D38:
	mov r1, #0
	b _021F0D42
_021F0D3C:
	bl GF_AssertFail
	mov r1, #0
_021F0D42:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0x18
	bhi _021F0D94
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0D58: ; jump table
	.short _021F0D8A - _021F0D58 - 2 ; case 0
	.short _021F0D8A - _021F0D58 - 2 ; case 1
	.short _021F0D8A - _021F0D58 - 2 ; case 2
	.short _021F0D8A - _021F0D58 - 2 ; case 3
	.short _021F0D8A - _021F0D58 - 2 ; case 4
	.short _021F0D92 - _021F0D58 - 2 ; case 5
	.short _021F0D8A - _021F0D58 - 2 ; case 6
	.short _021F0D8E - _021F0D58 - 2 ; case 7
	.short _021F0D8A - _021F0D58 - 2 ; case 8
	.short _021F0D8A - _021F0D58 - 2 ; case 9
	.short _021F0D8A - _021F0D58 - 2 ; case 10
	.short _021F0D8A - _021F0D58 - 2 ; case 11
	.short _021F0D94 - _021F0D58 - 2 ; case 12
	.short _021F0D94 - _021F0D58 - 2 ; case 13
	.short _021F0D94 - _021F0D58 - 2 ; case 14
	.short _021F0D94 - _021F0D58 - 2 ; case 15
	.short _021F0D94 - _021F0D58 - 2 ; case 16
	.short _021F0D94 - _021F0D58 - 2 ; case 17
	.short _021F0D94 - _021F0D58 - 2 ; case 18
	.short _021F0D94 - _021F0D58 - 2 ; case 19
	.short _021F0D94 - _021F0D58 - 2 ; case 20
	.short _021F0D94 - _021F0D58 - 2 ; case 21
	.short _021F0D94 - _021F0D58 - 2 ; case 22
	.short _021F0D94 - _021F0D58 - 2 ; case 23
	.short _021F0D8A - _021F0D58 - 2 ; case 24
_021F0D8A:
	mov r4, #0
	b _021F0D94
_021F0D8E:
	mov r4, #2
	b _021F0D94
_021F0D92:
	mov r4, #4
_021F0D94:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021F0DA2
	add r4, r4, #1
_021F0DA2:
	mov r0, #6
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	nop
_021F0DAC: .word 0x00001720
	thumb_func_end ov01_021F0D20

	thumb_func_start ov01_021F0DB0
ov01_021F0DB0: ; 0x021F0DB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F0DC4 ; =0x0400006C
	ldr r1, [r1]
	bl GXx_SetMasterBrightness_
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	.balign 4, 0
_021F0DC4: .word 0x0400006C
	thumb_func_end ov01_021F0DB0

	thumb_func_start ov01_021F0DC8
ov01_021F0DC8: ; 0x021F0DC8
	ldr r3, _021F0DD4 ; =sub_0200E374
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021F0DD8 ; =ov01_021F0DB0
	lsl r2, r2, #0xa
	bx r3
	.balign 4, 0
_021F0DD4: .word sub_0200E374
_021F0DD8: .word ov01_021F0DB0
	thumb_func_end ov01_021F0DC8

	thumb_func_start ov01_021F0DDC
ov01_021F0DDC: ; 0x021F0DDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F0E5C ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	beq _021F0DEC
	bl GF_AssertFail
_021F0DEC:
	mov r0, #4
	mov r1, #0x18
	bl AllocFromHeap
	ldr r1, _021F0E5C ; =0x02209B64
	mov r2, #0x18
	str r0, [r1]
	mov r1, #0
_021F0DFC:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021F0DFC
	ldr r0, _021F0E5C ; =0x02209B64
	mov r1, #0
	ldr r2, [r0]
	strh r1, [r2]
	ldr r2, [r0]
	strb r1, [r2, #2]
	ldr r0, [r0]
	str r4, [r0, #4]
	mov r0, #2
	bl GX_EngineAToggleLayers
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r0, #8
	mov r1, #0
	bl GX_EngineAToggleLayers
	bl GX_ResetBankForBG
	mov r2, #2
	ldr r1, _021F0E60 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	ldr r0, _021F0E64 ; =0xC0320C04
	ldr r2, _021F0E68 ; =0x04000064
	ldr r1, _021F0E5C ; =0x02209B64
	str r0, [r2]
	ldr r0, _021F0E6C ; =ov01_021F1094
	ldr r1, [r1]
	lsr r2, r2, #0x10
	bl sub_0200E374
	ldr r1, _021F0E5C ; =0x02209B64
	mov r2, #1
	ldr r0, _021F0E70 ; =ov01_021F10C8
	ldr r1, [r1]
	lsl r2, r2, #0xa
	bl sub_0200E320
	pop {r4, pc}
	.balign 4, 0
_021F0E5C: .word 0x02209B64
_021F0E60: .word 0x06840000
_021F0E64: .word 0xC0320C04
_021F0E68: .word 0x04000064
_021F0E6C: .word ov01_021F1094
_021F0E70: .word ov01_021F10C8
	thumb_func_end ov01_021F0DDC

	thumb_func_start ov01_021F0E74
ov01_021F0E74: ; 0x021F0E74
	push {r3, lr}
	ldr r0, _021F0E8C ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0E82
	bl GF_AssertFail
_021F0E82:
	ldr r0, _021F0E8C ; =0x02209B64
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #3]
	pop {r3, pc}
	.balign 4, 0
_021F0E8C: .word 0x02209B64
	thumb_func_end ov01_021F0E74

	thumb_func_start ov01_021F0E90
ov01_021F0E90: ; 0x021F0E90
	push {r3, lr}
	ldr r0, _021F0EA8 ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0E9E
	bl GF_AssertFail
_021F0E9E:
	ldr r0, _021F0EA8 ; =0x02209B64
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	pop {r3, pc}
	nop
_021F0EA8: .word 0x02209B64
	thumb_func_end ov01_021F0E90

	thumb_func_start ov01_021F0EAC
ov01_021F0EAC: ; 0x021F0EAC
	push {r3, lr}
	ldr r0, _021F0EBC ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	beq _021F0EBA
	bl sub_0201543C
_021F0EBA:
	pop {r3, pc}
	.balign 4, 0
_021F0EBC: .word 0x02209B64
	thumb_func_end ov01_021F0EAC

	thumb_func_start ov01_021F0EC0
ov01_021F0EC0: ; 0x021F0EC0
	push {r3, lr}
	ldr r0, _021F0F04 ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0ECE
	bl GF_AssertFail
_021F0ECE:
	bl sub_02014F84
	ldr r0, _021F0F04 ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov01_021F1210
	ldr r0, _021F0F04 ; =0x02209B64
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov01_021E631C
	ldr r0, _021F0F04 ; =0x02209B64
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov01_021E6340
	ldr r0, _021F0F04 ; =0x02209B64
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, _021F0F04 ; =0x02209B64
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_021F0F04: .word 0x02209B64
	thumb_func_end ov01_021F0EC0

	thumb_func_start ov01_021F0F08
ov01_021F0F08: ; 0x021F0F08
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F0FAC ; =0x02209B64
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0F1C
	bl GF_AssertFail
_021F0F1C:
	ldr r0, _021F0FAC ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F0F2A
	bl GF_AssertFail
_021F0F2A:
	mov r1, #0x12
	mov r0, #4
	lsl r1, r1, #0xa
	bl AllocFromHeap
	ldr r2, _021F0FAC ; =0x02209B64
	mov r3, #0x12
	ldr r1, [r2]
	lsl r3, r3, #0xa
	str r0, [r1, #0xc]
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r2]
	ldr r0, _021F0FB0 ; =ov01_021F1224
	ldr r1, _021F0FB4 ; =ov01_021F1250
	ldr r2, [r2, #0xc]
	bl sub_02014DB4
	ldr r1, _021F0FAC ; =0x02209B64
	ldr r2, [r1]
	str r0, [r2, #8]
	ldr r0, [r1]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021F0F64
	bl GF_AssertFail
_021F0F64:
	ldr r0, _021F0FAC ; =0x02209B64
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_02015528
	ldr r0, _021F0FAC ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_02015524
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_02023240
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #4
	str r2, [sp]
	bl sub_02007C98
	add r1, r0, #0
	ldr r0, _021F0FAC ; =0x02209B64
	mov r2, #0
	ldr r0, [r0]
	add r3, r2, #0
	ldr r0, [r0, #8]
	bl sub_0201526C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F0FAC: .word 0x02209B64
_021F0FB0: .word ov01_021F1224
_021F0FB4: .word ov01_021F1250
	thumb_func_end ov01_021F0F08

	thumb_func_start ov01_021F0FB8
ov01_021F0FB8: ; 0x021F0FB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _021F1004 ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0FD4
	bl GF_AssertFail
_021F0FD4:
	ldr r0, _021F1004 ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021F0FE2
	bl GF_AssertFail
_021F0FE2:
	mov r4, #0
	cmp r5, #0
	bls _021F0FFE
	ldr r6, _021F1004 ; =0x02209B64
	add r7, sp, #0
_021F0FEC:
	ldr r0, [r6]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r2, r7, #0
	bl sub_02015484
	add r4, r4, #1
	cmp r4, r5
	blo _021F0FEC
_021F0FFE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F1004: .word 0x02209B64
	thumb_func_end ov01_021F0FB8

	thumb_func_start ov01_021F1008
ov01_021F1008: ; 0x021F1008
	push {r3, lr}
	ldr r0, _021F1040 ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F1016
	bl GF_AssertFail
_021F1016:
	ldr r0, _021F1040 ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021F1024
	mov r0, #1
	pop {r3, pc}
_021F1024:
	bl sub_02015460
	ldr r0, _021F1040 ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_020154B0
	cmp r0, #0
	bne _021F103A
	mov r0, #1
	pop {r3, pc}
_021F103A:
	mov r0, #0
	pop {r3, pc}
	nop
_021F1040: .word 0x02209B64
	thumb_func_end ov01_021F1008

	thumb_func_start ov01_021F1044
ov01_021F1044: ; 0x021F1044
	push {r3, lr}
	ldr r0, _021F105C ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_020154B0
	cmp r0, #0
	bne _021F1058
	mov r0, #1
	pop {r3, pc}
_021F1058:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F105C: .word 0x02209B64
	thumb_func_end ov01_021F1044

	thumb_func_start ov01_021F1060
ov01_021F1060: ; 0x021F1060
	push {r3, lr}
	ldr r0, _021F1090 ; =0x02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F106E
	bl GF_AssertFail
_021F106E:
	ldr r0, _021F1090 ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_02014EBC
	ldr r0, _021F1090 ; =0x02209B64
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl FreeToHeap
	ldr r0, _021F1090 ; =0x02209B64
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #8]
	ldr r0, [r0]
	str r2, [r0, #0xc]
	pop {r3, pc}
	.balign 4, 0
_021F1090: .word 0x02209B64
	thumb_func_end ov01_021F1060

	thumb_func_start ov01_021F1094
ov01_021F1094: ; 0x021F1094
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021F10A6
	cmp r0, #1
	beq _021F10AC
	pop {r3, r4, r5, pc}
_021F10A6:
	add r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021F10AC:
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _021F10C4
	ldr r0, [r4, #4]
	bl ov01_021F1148
	add r0, r5, #0
	bl sub_0200E390
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021F10C4:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1094

	thumb_func_start ov01_021F10C8
ov01_021F10C8: ; 0x021F10C8
	push {r4, r5, lr}
	sub sp, #0x3c
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #2
	bne _021F1136
	bl sub_02014DA0
	add r1, sp, #0x30
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r3, _021F113C ; =0x022067E0
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	bl MTX_Identity33_
	add r0, sp, #0x30
	bl NNS_G3dGlbSetBaseTrans
	add r0, sp, #0x24
	bl NNS_G3dGlbSetBaseScale
	ldr r1, _021F1140 ; =0x021DA558
	add r0, sp, #0
	bl MI_Copy36B
	ldr r1, _021F1144 ; =0x021DA51C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov01_021E631C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov01_021E6340
	mov r0, #0
	add r1, r0, #0
	bl sub_0201BB68
	mov r0, #1
	strb r0, [r4, #2]
	add r0, r5, #0
	bl sub_0200E390
_021F1136:
	add sp, #0x3c
	pop {r4, r5, pc}
	nop
_021F113C: .word 0x022067E0
_021F1140: .word 0x021DA558
_021F1144: .word 0x021DA51C
	thumb_func_end ov01_021F10C8

	thumb_func_start ov01_021F1148
ov01_021F1148: ; 0x021F1148
	push {r4, r5, lr}
	sub sp, #0x6c
	ldr r5, _021F11F8 ; =0x0220689C
	add r4, r0, #0
	add r3, sp, #0x44
	mov r2, #5
_021F1154:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F1154
	add r0, sp, #0x44
	bl GX_SetBanks
	mov r0, #1
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r5, _021F11FC ; =0x022067FC
	add r3, sp, #0x34
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r0, [r4, #8]
	bl ov01_021E6050
	ldr r2, _021F1200 ; =0x0400000E
	mov r0, #0x43
	ldrh r1, [r2]
	and r1, r0
	ldr r0, _021F1204 ; =0x00004884
	orr r0, r1
	strh r0, [r2]
	mov r0, #3
	add r1, r0, #0
	bl sub_0201BB68
	mov r0, #8
	mov r1, #1
	bl GX_EngineAToggleLayers
	add r0, sp, #0x24
	bl MTX_Identity22_
	mov r2, #0
	str r2, [sp]
	ldr r0, _021F1208 ; =0x04000030
	add r1, sp, #0x24
	add r3, r2, #0
	str r2, [sp, #4]
	bl G2x_SetBGyAffine_
	ldr r5, _021F120C ; =0x02206844
	add r3, sp, #8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	ldr r0, [r4, #8]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	ldr r0, [r4, #8]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	mov r0, #0x10
	mov r1, #1
	bl GX_EngineAToggleLayers
	add sp, #0x6c
	pop {r4, r5, pc}
	.balign 4, 0
_021F11F8: .word 0x0220689C
_021F11FC: .word 0x022067FC
_021F1200: .word 0x0400000E
_021F1204: .word 0x00004884
_021F1208: .word 0x04000030
_021F120C: .word 0x02206844
	thumb_func_end ov01_021F1148

	thumb_func_start ov01_021F1210
ov01_021F1210: ; 0x021F1210
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #8]
	bl ov01_021E6048
	pop {r4, pc}
	thumb_func_end ov01_021F1210

	thumb_func_start ov01_021F1224
ov01_021F1224: ; 0x021F1224
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F124C ; =0x02209B64
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _021F1236
	bl GF_AssertFail
_021F1236:
	cmp r4, #0
	beq _021F123E
	bl GF_AssertFail
_021F123E:
	ldr r0, _021F124C ; =0x02209B64
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	add r1, r0, r5
	str r1, [r2, #0x10]
	pop {r3, r4, r5, pc}
	nop
_021F124C: .word 0x02209B64
	thumb_func_end ov01_021F1224

	thumb_func_start ov01_021F1250
ov01_021F1250: ; 0x021F1250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F1278 ; =0x02209B64
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _021F1262
	bl GF_AssertFail
_021F1262:
	cmp r4, #0
	beq _021F126A
	bl GF_AssertFail
_021F126A:
	ldr r0, _021F1278 ; =0x02209B64
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	add r1, r0, r5
	str r1, [r2, #0x14]
	pop {r3, r4, r5, pc}
	nop
_021F1278: .word 0x02209B64
	thumb_func_end ov01_021F1250

	thumb_func_start ov01_021F127C
ov01_021F127C: ; 0x021F127C
	ldr r3, _021F1288 ; =sub_0200E33C
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021F128C ; =ov01_021F1290
	lsl r2, r2, #0xa
	bx r3
	.balign 4, 0
_021F1288: .word sub_0200E33C
_021F128C: .word ov01_021F1290
	thumb_func_end ov01_021F127C

	thumb_func_start ov01_021F1290
ov01_021F1290: ; 0x021F1290
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021F12A4
	ldr r0, [r4]
	bl sub_02014C08
	mov r0, #0
	str r0, [r4, #8]
_021F12A4:
	ldr r0, [r4]
	bl sub_02014C40
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1290

	thumb_func_start ov01_021F12B4
ov01_021F12B4: ; 0x021F12B4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02014AD8
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov01_021F127C
	str r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F12B4

	thumb_func_start ov01_021F12D0
ov01_021F12D0: ; 0x021F12D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200E390
	ldr r0, [r4]
	bl sub_02014B9C
	ldr r0, [r4]
	bl sub_02014BD8
	pop {r4, pc}
	thumb_func_end ov01_021F12D0

	thumb_func_start ov01_021F12E8
ov01_021F12E8: ; 0x021F12E8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	add r5, sp, #0x10
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0]
	bl sub_02014B08
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F12E8

	thumb_func_start ov01_021F1310
ov01_021F1310: ; 0x021F1310
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	add r7, r1, #0
	bl sub_02014BF8
	add r5, r0, #0
	mov r6, #0
_021F131E:
	ldr r0, [r5]
	add r1, r7, #0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r6, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021F1336
	lsl r0, r4, #0x10
	b _021F133A
_021F1336:
	neg r0, r4
	lsl r0, r0, #0x10
_021F133A:
	lsr r0, r0, #0x10
	str r0, [r5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xc0
	blt _021F131E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1310

	thumb_func_start ov01_021F1348
ov01_021F1348: ; 0x021F1348
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r0, r7, #0
	mov r1, #0x24
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x24
	bl memset
	str r7, [r4]
	str r5, [r4, #4]
	str r6, [r4, #0x10]
	add r0, r7, #0
	lsl r1, r5, #3
	bl AllocFromHeap
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov01_021F14DC
	add r0, r4, #0
	bl ov01_021F147C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1348

	thumb_func_start ov01_021F1384
ov01_021F1384: ; 0x021F1384
	ldr r3, _021F138C ; =ov01_021F15EC
	str r1, [r0, #8]
	bx r3
	nop
_021F138C: .word ov01_021F15EC
	thumb_func_end ov01_021F1384

	thumb_func_start ov01_021F1390
ov01_021F1390: ; 0x021F1390
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	bl ov01_021F1648
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov01_021F1390

	thumb_func_start ov01_021F13B0
ov01_021F13B0: ; 0x021F13B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F1588
	cmp r0, #0
	beq _021F13C4
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_021F13C4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F14F4
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F13B0

	thumb_func_start ov01_021F13D0
ov01_021F13D0: ; 0x021F13D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0x17
	beq _021F13EA
_021F13DC:
	add r0, r5, #0
	bl ov01_021F13B0
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, #0x17
	bne _021F13DC
_021F13EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F13D0

	thumb_func_start ov01_021F13EC
ov01_021F13EC: ; 0x021F13EC
	ldr r3, _021F13F0 ; =ov01_021F1610
	bx r3
	.balign 4, 0
_021F13F0: .word ov01_021F1610
	thumb_func_end ov01_021F13EC

	thumb_func_start ov01_021F13F4
ov01_021F13F4: ; 0x021F13F4
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021F15FC
	add r0, r4, #0
	bl ov01_021F1538
	add r0, r4, #0
	bl ov01_021F16B8
	add r0, r4, #0
	bl ov01_021F1490
	ldr r0, [r4, #0x14]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021F13F4

	thumb_func_start ov01_021F141C
ov01_021F141C: ; 0x021F141C
	push {r3, lr}
	cmp r2, #0
	ldr r0, [r0]
	bne _021F142A
	bl AllocFromHeap
	pop {r3, pc}
_021F142A:
	bl AllocFromHeapAtEnd
	pop {r3, pc}
	thumb_func_end ov01_021F141C

	thumb_func_start ov01_021F1430
ov01_021F1430: ; 0x021F1430
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r3, #0
	bl ov01_021F141C
	add r1, r4, #0
	add r2, r5, #0
	add r6, r0, #0
	bl memset
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F1430

	thumb_func_start ov01_021F1448
ov01_021F1448: ; 0x021F1448
	ldr r3, _021F144C ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F144C: .word FreeToHeap
	thumb_func_end ov01_021F1448

	thumb_func_start ov01_021F1450
ov01_021F1450: ; 0x021F1450
	push {r3, lr}
	bl ov01_021F1588
	cmp r0, #0
	bne _021F1462
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_021F1462:
	ldr r0, [r0, #4]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1450

	thumb_func_start ov01_021F1468
ov01_021F1468: ; 0x021F1468
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021F1468

	thumb_func_start ov01_021F146C
ov01_021F146C: ; 0x021F146C
	push {r3, lr}
	bl sub_0205F52C
	ldr r0, [r0, #0x44]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F146C

	thumb_func_start ov01_021F1478
ov01_021F1478: ; 0x021F1478
	ldr r0, [r0]
	bx lr
	thumb_func_end ov01_021F1478

	thumb_func_start ov01_021F147C
ov01_021F147C: ; 0x021F147C
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021F1478
	add r1, r0, #0
	mov r0, #0x67
	bl NARC_ctor
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov01_021F147C

	thumb_func_start ov01_021F1490
ov01_021F1490: ; 0x021F1490
	ldr r3, _021F1498 ; =NARC_dtor
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021F1498: .word NARC_dtor
	thumb_func_end ov01_021F1490

	thumb_func_start ov01_021F149C
ov01_021F149C: ; 0x021F149C
	ldr r3, _021F14A4 ; =NARC_GetMemberSize
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021F14A4: .word NARC_GetMemberSize
	thumb_func_end ov01_021F149C

	thumb_func_start ov01_021F14A8
ov01_021F14A8: ; 0x021F14A8
	ldr r3, _021F14B0 ; =NARC_ReadWholeMember
	ldr r0, [r0, #0x18]
	bx r3
	nop
_021F14B0: .word NARC_ReadWholeMember
	thumb_func_end ov01_021F14A8

	thumb_func_start ov01_021F14B4
ov01_021F14B4: ; 0x021F14B4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r5, r2, #0
	add r6, r1, #0
	bl NARC_GetMemberSize
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl ov01_021F141C
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r6, #0
	add r2, r5, #0
	bl NARC_ReadWholeMember
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F14B4

	thumb_func_start ov01_021F14DC
ov01_021F14DC: ; 0x021F14DC
	push {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _021F14F2
_021F14E6:
	add r0, r5, #0
	bl ov01_021F15A0
	add r5, #8
	sub r4, r4, #1
	bne _021F14E6
_021F14F2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F14DC

	thumb_func_start ov01_021F14F4
ov01_021F14F4: ; 0x021F14F4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov01_021F15C4
	add r1, r0, #0
	ldr r1, [r1, #4]
	add r0, r5, #0
	blx r1
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021F1560
	add r1, r6, #0
	add r2, r4, #0
	bl ov01_021F15AC
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F14F4

	thumb_func_start ov01_021F151C
ov01_021F151C: ; 0x021F151C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	bl ov01_021F15C4
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r1, #8]
	blx r1
	add r0, r4, #0
	bl ov01_021F15A0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F151C

	thumb_func_start ov01_021F1538
ov01_021F1538: ; 0x021F1538
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #4]
	ldr r5, [r6, #0x14]
	cmp r4, #0
	beq _021F155C
_021F1544:
	add r0, r5, #0
	bl ov01_021F15B4
	cmp r0, #0
	bne _021F1556
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021F151C
_021F1556:
	add r5, #8
	sub r4, r4, #1
	bne _021F1544
_021F155C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1538

	thumb_func_start ov01_021F1560
ov01_021F1560: ; 0x021F1560
	push {r3, r4, r5, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _021F157E
_021F156A:
	add r0, r5, #0
	bl ov01_021F15B4
	cmp r0, #1
	bne _021F1578
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021F1578:
	add r5, #8
	sub r4, r4, #1
	bne _021F156A
_021F157E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1560

	thumb_func_start ov01_021F1588
ov01_021F1588: ; 0x021F1588
	ldr r3, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r3, #0
	beq _021F159C
_021F1590:
	ldr r2, [r0]
	cmp r2, r1
	beq _021F159E
	add r0, #8
	sub r3, r3, #1
	bne _021F1590
_021F159C:
	mov r0, #0
_021F159E:
	bx lr
	thumb_func_end ov01_021F1588

	thumb_func_start ov01_021F15A0
ov01_021F15A0: ; 0x021F15A0
	mov r1, #0x17
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F15A0

	thumb_func_start ov01_021F15AC
ov01_021F15AC: ; 0x021F15AC
	str r1, [r0]
	str r2, [r0, #4]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F15AC

	thumb_func_start ov01_021F15B4
ov01_021F15B4: ; 0x021F15B4
	ldr r0, [r0]
	cmp r0, #0x17
	bne _021F15BE
	mov r0, #1
	bx lr
_021F15BE:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F15B4

	thumb_func_start ov01_021F15C4
ov01_021F15C4: ; 0x021F15C4
	push {r3, lr}
	ldr r1, _021F15E8 ; =0x02208C5C
	ldr r2, [r1]
	cmp r2, #0x17
	beq _021F15DE
_021F15CE:
	cmp r2, r0
	bne _021F15D6
	add r0, r1, #0
	pop {r3, pc}
_021F15D6:
	add r1, #0xc
	ldr r2, [r1]
	cmp r2, #0x17
	bne _021F15CE
_021F15DE:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_021F15E8: .word 0x02208C5C
	thumb_func_end ov01_021F15C4

	thumb_func_start ov01_021F15EC
ov01_021F15EC: ; 0x021F15EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl sub_020689C8
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov01_021F15EC

	thumb_func_start ov01_021F15FC
ov01_021F15FC: ; 0x021F15FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021F160E
	bl sub_020689F8
	mov r0, #0
	str r0, [r4, #0x1c]
_021F160E:
	pop {r4, pc}
	thumb_func_end ov01_021F15FC

	thumb_func_start ov01_021F1610
ov01_021F1610: ; 0x021F1610
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021F161C
	bl sub_02068BAC
_021F161C:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1610

	thumb_func_start ov01_021F1620
ov01_021F1620: ; 0x021F1620
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	ldr r0, [r0, #0x1c]
	bl sub_02068B0C
	add r4, r0, #0
	bne _021F163A
	bl GF_AssertFail
_021F163A:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021F1620

	thumb_func_start ov01_021F1640
ov01_021F1640: ; 0x021F1640
	ldr r3, _021F1644 ; =sub_02068B48
	bx r3
	.balign 4, 0
_021F1644: .word sub_02068B48
	thumb_func_end ov01_021F1640

	thumb_func_start ov01_021F1648
ov01_021F1648: ; 0x021F1648
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r1, #0
	mov r2, #0
	str r3, [sp]
	mov r1, #0x24
	add r3, r2, #0
	add r7, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r4, [r7, #0x20]
	str r5, [r4]
	ldr r0, [sp]
	strh r6, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x24]
	ldr r3, [sp]
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0x44
	bl ov01_021FC4C4
	str r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0x45
	bl ov01_021FC4C4
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	bl sub_02025780
	str r0, [r4, #0x18]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021F17BC
	add r0, r7, #0
	str r6, [sp, #4]
	bl ov01_021F1478
	str r0, [sp, #8]
	add r0, sp, #4
	bl sub_020237EC
	str r0, [r4, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1648

	thumb_func_start ov01_021F16B8
ov01_021F16B8: ; 0x021F16B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x20]
	cmp r5, #0
	beq _021F16EA
	ldr r0, [r5, #0xc]
	bl sub_02023874
	add r0, r5, #0
	bl ov01_021F17F0
	ldr r0, [r5, #0x10]
	bl ov01_021FC520
	ldr r0, [r5, #0x14]
	bl ov01_021FC520
	ldr r0, [r5, #0x18]
	bl sub_020257C4
	add r0, r5, #0
	bl ov01_021F1448
	mov r0, #0
	str r0, [r4, #0x20]
_021F16EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F16B8

	thumb_func_start ov01_021F16EC
ov01_021F16EC: ; 0x021F16EC
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x20]
	add r3, sp, #8
	ldr r0, [r0, #0xc]
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r2, sp, #0x14
	str r0, [r3]
	ldr r3, _021F173C ; =0x02206988
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	bl sub_02023D44
	add r4, r0, #0
	bne _021F171C
	bl GF_AssertFail
_021F171C:
	cmp r4, #0
	beq _021F1736
	add r0, r4, #0
	bl sub_02023F90
	mov r1, #1
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	add r0, r4, #0
	bl sub_02023F90
	bl ov01_021EA3B0
_021F1736:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	.balign 4, 0
_021F173C: .word 0x02206988
	thumb_func_end ov01_021F16EC

	thumb_func_start ov01_021F1740
ov01_021F1740: ; 0x021F1740
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r2, #0
	bl ov01_021F18A8
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov01_021F16EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F1740

	thumb_func_start ov01_021F1758
ov01_021F1758: ; 0x021F1758
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, [r0, #0x20]
	add r6, r1, #0
	ldr r0, [r5, #0x10]
	add r1, r2, #0
	add r4, r3, #0
	bl ov01_021FC5A4
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl ov01_021FC5A4
	add r1, sp, #0xc
	bl sub_02026E18
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x30]
	bl sub_02025940
	add r4, r0, #0
	bne _021F178A
	bl GF_AssertFail
_021F178A:
	add r0, r4, #0
	bl sub_0202599C
	ldr r1, [sp, #0x34]
	cmp r1, #1
	bne _021F1798
	mov r4, #0
_021F1798:
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r4, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #0xc
	bl ov01_021F1824
	add r4, r0, #0
	bne _021F17B4
	bl GF_AssertFail
_021F17B4:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1758

	thumb_func_start ov01_021F17BC
ov01_021F17BC: ; 0x021F17BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r1, #0x28
	add r7, r0, #0
	mul r1, r5
	mov r2, #0
	bl ov01_021F141C
	add r4, r0, #0
	add r0, r7, #0
	lsl r1, r5, #3
	mov r2, #0
	str r4, [r6, #0x20]
	bl ov01_021F141C
	str r0, [r6, #0x1c]
	mov r1, #0xf
_021F17E0:
	str r1, [r0]
	str r4, [r0, #4]
	add r0, #8
	add r4, #0x28
	sub r5, r5, #1
	bne _021F17E0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F17BC

	thumb_func_start ov01_021F17F0
ov01_021F17F0: ; 0x021F17F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl ov01_021F1448
	ldr r0, [r4, #0x20]
	bl ov01_021F1448
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F17F0

	thumb_func_start ov01_021F1804
ov01_021F1804: ; 0x021F1804
	push {r3, lr}
	ldrh r2, [r0, #4]
	ldr r3, [r0, #0x1c]
_021F180A:
	ldr r0, [r3]
	cmp r0, r1
	bne _021F1816
	mov r0, #0xf
	str r0, [r3]
	pop {r3, pc}
_021F1816:
	add r3, #8
	sub r2, r2, #1
	bne _021F180A
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1804

	thumb_func_start ov01_021F1824
ov01_021F1824: ; 0x021F1824
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r5, [r6, #4]
	add r0, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [sp]
	ldr r6, [r6, #0x1c]
	add r7, r3, #0
	str r1, [sp, #0x1c]
	mov r4, #0
	add r2, r5, #0
	add r3, r6, #0
_021F183C:
	ldr r1, [r3]
	cmp r1, r0
	bne _021F1846
	ldr r0, [r3, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1846:
	add r3, #8
	sub r2, r2, #1
	bne _021F183C
_021F184C:
	ldr r1, [r6]
	cmp r1, #0xf
	bne _021F1858
	str r0, [r6]
	ldr r4, [r6, #4]
	b _021F185E
_021F1858:
	add r6, #8
	sub r5, r5, #1
	bne _021F184C
_021F185E:
	cmp r4, #0
	bne _021F1866
	bl GF_AssertFail
_021F1866:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl memset
	ldr r0, [sp]
	add r2, r4, #0
	str r0, [r4]
	add r2, #0xc
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021F18A0
	bl sub_02025A9C
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	bl sub_02025AAC
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	bl sub_02025ABC
	str r0, [r4, #0x24]
_021F18A0:
	ldr r0, [sp, #0x20]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1824

	thumb_func_start ov01_021F18A8
ov01_021F18A8: ; 0x021F18A8
	push {r3, lr}
	ldrh r2, [r0, #4]
	ldr r3, [r0, #0x1c]
_021F18AE:
	ldr r0, [r3]
	cmp r0, r1
	bne _021F18B8
	ldr r0, [r3, #4]
	pop {r3, pc}
_021F18B8:
	add r3, #8
	sub r2, r2, #1
	bne _021F18AE
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F18A8

	thumb_func_start ov01_021F18C8
ov01_021F18C8: ; 0x021F18C8
	ldr r3, _021F18D0 ; =ov01_021F1804
	ldr r0, [r0, #0x20]
	bx r3
	nop
_021F18D0: .word ov01_021F1804
	thumb_func_end ov01_021F18C8

	thumb_func_start ov01_021F18D4
ov01_021F18D4: ; 0x021F18D4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	add r3, r2, #0
	ldr r0, [r0, #0x10]
	ldr r2, [r4, #0x18]
	bl ov01_021FC5CC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F18D4

	thumb_func_start ov01_021F18F0
ov01_021F18F0: ; 0x021F18F0
	ldr r0, [r0, #0x20]
	ldr r3, _021F18F8 ; =ov01_021FC5A4
	ldr r0, [r0, #0x10]
	bx r3
	.balign 4, 0
_021F18F8: .word ov01_021FC5A4
	thumb_func_end ov01_021F18F0

	thumb_func_start ov01_021F18FC
ov01_021F18FC: ; 0x021F18FC
	ldr r0, [r0, #0x20]
	ldr r3, _021F1904 ; =ov01_021FC588
	ldr r0, [r0, #0x10]
	bx r3
	.balign 4, 0
_021F1904: .word ov01_021FC588
	thumb_func_end ov01_021F18FC

	thumb_func_start ov01_021F1908
ov01_021F1908: ; 0x021F1908
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	add r3, r2, #0
	ldr r0, [r0, #0x14]
	ldr r2, [r4, #0x18]
	bl ov01_021FC5CC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1908

	thumb_func_start ov01_021F1924
ov01_021F1924: ; 0x021F1924
	ldr r0, [r0, #0x20]
	ldr r3, _021F192C ; =ov01_021FC588
	ldr r0, [r0, #0x14]
	bx r3
	.balign 4, 0
_021F192C: .word ov01_021FC588
	thumb_func_end ov01_021F1924

	thumb_func_start ov01_021F1930
ov01_021F1930: ; 0x021F1930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	ldr r4, [r5, #0x20]
	mov r2, #1
	add r7, r3, #0
	bl ov01_021F14B4
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov01_021F1478
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #4]
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02025844
	cmp r0, #0
	bne _021F1962
	bl GF_AssertFail
_021F1962:
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F197C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1930

	thumb_func_start ov01_021F1970
ov01_021F1970: ; 0x021F1970
	ldr r0, [r0, #0x20]
	ldr r3, _021F1978 ; =sub_020258E0
	ldr r0, [r0, #0x18]
	bx r3
	.balign 4, 0
_021F1978: .word sub_020258E0
	thumb_func_end ov01_021F1970

	thumb_func_start ov01_021F197C
ov01_021F197C: ; 0x021F197C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #0xc
	mov r2, #1
	bl ov01_021F141C
	add r4, r0, #0
	mov r0, #1
	str r0, [r4]
	str r5, [r4, #4]
	ldr r0, _021F19AC ; =ov01_021F19B4
	add r1, r4, #0
	mov r2, #0xff
	str r6, [r4, #8]
	bl sub_0200E33C
	ldr r0, _021F19B0 ; =ov01_021F19D0
	add r1, r4, #0
	mov r2, #0xff
	bl sub_0200E374
	pop {r4, r5, r6, pc}
	nop
_021F19AC: .word ov01_021F19B4
_021F19B0: .word ov01_021F19D0
	thumb_func_end ov01_021F197C

	thumb_func_start ov01_021F19B4
ov01_021F19B4: ; 0x021F19B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl sub_020259E0
	mov r0, #1
	str r0, [r4]
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F19B4

	thumb_func_start ov01_021F19D0
ov01_021F19D0: ; 0x021F19D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021F19F0
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl sub_02025A48
	add r0, r4, #0
	bl ov01_021F1448
	add r0, r5, #0
	bl sub_0200E390
_021F19F0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F19D0

	thumb_func_start ov01_021F19F4
ov01_021F19F4: ; 0x021F19F4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r1, r2, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	bl sub_020696C4
	add r0, r4, #0
	bl sub_02069714
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F19F4

	thumb_func_start ov01_021F1A18
ov01_021F1A18: ; 0x021F1A18
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #0x18]
	bl sub_020697DC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov01_021F1A18

	thumb_func_start ov01_021F1A34
ov01_021F1A34: ; 0x021F1A34
	push {r3, lr}
	ldr r0, [r0]
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #8]
	bl sub_02069894
	pop {r3, pc}
	thumb_func_end ov01_021F1A34

	thumb_func_start ov01_021F1A48
ov01_021F1A48: ; 0x021F1A48
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r0, [r4]
	add r6, r1, #0
	add r5, r2, #0
	bl NNS_G3dGetTex
	cmp r0, #0
	beq _021F1A78
	bl sub_0201F53C
	cmp r0, #0
	bne _021F1A78
	ldr r0, [r4]
	ldr r1, [r0, #8]
	bl DC_FlushRange
	ldr r0, [r4]
	bl NNS_G3dResDefaultSetup
	cmp r0, #0
	bne _021F1A78
	bl GF_AssertFail
_021F1A78:
	ldr r0, [r4]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021F1AA2
	add r2, r0, #0
	add r2, #8
	beq _021F1A96
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021F1A96
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021F1A98
_021F1A96:
	mov r1, #0
_021F1A98:
	cmp r1, #0
	beq _021F1AA2
	ldr r1, [r1]
	add r0, r0, r1
	b _021F1AA4
_021F1AA2:
	mov r0, #0
_021F1AA4:
	str r0, [r5]
	cmp r5, #0
	bne _021F1AAE
	bl GF_AssertFail
_021F1AAE:
	ldr r1, [r5]
	add r0, r6, #0
	bl NNS_G3dRenderObjInit
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F1A48

	thumb_func_start ov01_021F1AB8
ov01_021F1AB8: ; 0x021F1AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl ov01_021F14B4
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F1A48
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1AB8

	thumb_func_start ov01_021F1AD4
ov01_021F1AD4: ; 0x021F1AD4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x18]
	bl sub_02025940
	add r5, r0, #0
	ldr r4, _021F1AF8 ; =0x00000000
	bne _021F1AE8
	bl GF_AssertFail
_021F1AE8:
	cmp r5, #0
	beq _021F1AF4
	add r0, r5, #0
	bl sub_0202599C
	add r4, r0, #0
_021F1AF4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1AF8: .word 0x00000000
	thumb_func_end ov01_021F1AD4

	thumb_func_start ov01_021F1AFC
ov01_021F1AFC: ; 0x021F1AFC
	ldr r3, _021F1B00 ; =sub_0205C710
	bx r3
	.balign 4, 0
_021F1B00: .word sub_0205C710
	thumb_func_end ov01_021F1AFC

	thumb_func_start ov01_021F1B04
ov01_021F1B04: ; 0x021F1B04
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0
	bl sub_0205C71C
	ldr r5, _021F1B34 ; =0x02206A3C
	add r4, r0, #0
_021F1B12:
	mov r0, #1
	tst r0, r4
	beq _021F1B1E
	ldr r1, [r5]
	add r0, r7, #0
	blx r1
_021F1B1E:
	add r6, r6, #1
	lsr r4, r4, #1
	add r5, r5, #4
	cmp r6, #0xf
	blo _021F1B12
	add r0, r7, #0
	mov r1, #0
	bl sub_0205C718
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1B34: .word 0x02206A3C
	thumb_func_end ov01_021F1B04

	thumb_func_start ov01_021F1B38
ov01_021F1B38: ; 0x021F1B38
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	add r0, r4, #0
	mov r1, #0
	bl sub_0205C6E4
	add r0, r4, #0
	bl sub_0205C74C
	add r0, r4, #0
	bl sub_0205C790
	cmp r0, #0
	beq _021F1B6C
	bl ov01_021F1640
_021F1B6C:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205C78C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1B38

	thumb_func_start ov01_021F1B78
ov01_021F1B78: ; 0x021F1B78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #1
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	add r0, r4, #0
	mov r1, #1
	bl sub_0205C6E4
	add r0, r4, #0
	bl sub_0205C74C
	add r0, r4, #0
	bl sub_0205C790
	cmp r0, #0
	beq _021F1BAC
	bl ov01_021F1640
_021F1BAC:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205C78C
	ldr r0, _021F1BBC ; =0x00000617
	bl PlaySE
	pop {r4, pc}
	.balign 4, 0
_021F1BBC: .word 0x00000617
	thumb_func_end ov01_021F1B78

	thumb_func_start ov01_021F1BC0
ov01_021F1BC0: ; 0x021F1BC0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #2
	bl sub_0205C898
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F3084
	add r0, r5, #0
	mov r1, #2
	bl sub_0205C6E4
	add r0, r5, #0
	bl sub_0205C74C
	add r0, r5, #0
	bl sub_0205C790
	cmp r0, #0
	beq _021F1BF6
	bl ov01_021F1640
_021F1BF6:
	add r0, r5, #0
	mov r1, #0
	bl sub_0205C78C
	add r0, r5, #0
	bl sub_0205C654
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205C6DC
	add r6, r0, #0
	bl sub_0205F52C
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r4, #0
	bl ov01_021FE7DC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205C78C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1BC0

	thumb_func_start ov01_021F1C30
ov01_021F1C30: ; 0x021F1C30
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #3
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	add r0, r4, #0
	mov r1, #3
	bl sub_0205C6E4
	add r0, r4, #0
	bl sub_0205C74C
	add r0, r4, #0
	bl sub_0205C790
	cmp r0, #0
	beq _021F1C64
	bl ov01_021F1640
_021F1C64:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205C78C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1C30

	thumb_func_start ov01_021F1C70
ov01_021F1C70: ; 0x021F1C70
	ldr r3, _021F1C78 ; =sub_0205CA4C
	mov r1, #1
	bx r3
	nop
_021F1C78: .word sub_0205CA4C
	thumb_func_end ov01_021F1C70

	thumb_func_start ov01_021F1C7C
ov01_021F1C7C: ; 0x021F1C7C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #5
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1C7C

	thumb_func_start ov01_021F1C98
ov01_021F1C98: ; 0x021F1C98
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #7
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1C98

	thumb_func_start ov01_021F1CB4
ov01_021F1CB4: ; 0x021F1CB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #8
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1CB4

	thumb_func_start ov01_021F1CD0
ov01_021F1CD0: ; 0x021F1CD0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #9
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1CD0

	thumb_func_start ov01_021F1CEC
ov01_021F1CEC: ; 0x021F1CEC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0xa
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1CEC

	thumb_func_start ov01_021F1D08
ov01_021F1D08: ; 0x021F1D08
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0xb
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D08

	thumb_func_start ov01_021F1D24
ov01_021F1D24: ; 0x021F1D24
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0xc
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D24

	thumb_func_start ov01_021F1D40
ov01_021F1D40: ; 0x021F1D40
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #6
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D40

	thumb_func_start ov01_021F1D5C
ov01_021F1D5C: ; 0x021F1D5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0xd
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D5C

	thumb_func_start ov01_021F1D78
ov01_021F1D78: ; 0x021F1D78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0xe
	bl sub_0205C898
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F3084
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D78

	thumb_func_start ov01_021F1D94
ov01_021F1D94: ; 0x021F1D94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_0205CA38
	cmp r0, #1
	bne _021F1DBE
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov01_021F2538
	cmp r0, #1
	bne _021F1DBA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1DBA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1DBE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205CBE4
	cmp r0, #0
	bne _021F1DCE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1DCE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021F1DDA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1DDA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021F1DF4
	cmp r0, #1
	bne _021F1DEE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1DEE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D94

	thumb_func_start ov01_021F1DF4
ov01_021F1DF4: ; 0x021F1DF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r6, r3, #0
	bl sub_0205DEC0
	str r0, [sp]
	mov r0, #1
	tst r0, r6
	beq _021F1E22
	ldr r3, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021F1E54
	cmp r0, #1
	bne _021F1E22
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1E22:
	mov r0, #2
	tst r0, r6
	beq _021F1E3C
	ldr r3, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021F24F4
	cmp r0, #1
	bne _021F1E3C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1E3C:
	ldr r3, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021F232C
	cmp r0, #1
	bne _021F1E50
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1E50:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1DF4

	thumb_func_start ov01_021F1E54
ov01_021F1E54: ; 0x021F1E54
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	beq _021F1E64
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1E64:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F3094
	add r6, r0, #0
	bne _021F1E74
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1E74:
	bl sub_0205F25C
	cmp r0, #0x54
	beq _021F1E80
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1E80:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02060BB8
	mov r1, #1
	bic r0, r1
	beq _021F1E92
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1E92:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ov01_021F1EA4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1E54

	thumb_func_start ov01_021F1EA4
ov01_021F1EA4: ; 0x021F1EA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov01_021F30D0
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r7, [r2, #0x10]
	ldr r1, _021F1EC8 ; =ov01_021F1ECC
	add r0, r4, #0
	str r6, [r2, #0xc]
	bl sub_020504F0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1EC8: .word ov01_021F1ECC
	thumb_func_end ov01_021F1EA4

	thumb_func_start ov01_021F1ECC
ov01_021F1ECC: ; 0x021F1ECC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02050650
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205C6DC
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0x10]
	cmp r0, #0
	beq _021F1EF0
	cmp r0, #1
	beq _021F1F3C
	cmp r0, #2
	beq _021F1F62
	b _021F1F82
_021F1EF0:
	add r0, r5, #0
	bl sub_02062108
	cmp r0, #0
	beq _021F1F82
	add r0, r6, #0
	bl sub_02062108
	cmp r0, #0
	bne _021F1F0E
	ldr r0, [r4, #0xc]
	bl sub_0205DE38
	cmp r0, #0
	beq _021F1F82
_021F1F0E:
	ldr r0, [r4, #4]
	mov r1, #8
	bl sub_0206234C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0206214C
	ldr r0, [r4, #4]
	mov r1, #0x20
	bl sub_0206234C
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0206214C
	ldr r0, _021F1F88 ; =0x00000626
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F1F82
_021F1F3C:
	add r0, r5, #0
	bl sub_02062198
	cmp r0, #0
	beq _021F1F82
	add r0, r6, #0
	bl sub_02062198
	cmp r0, #0
	beq _021F1F82
	add r0, r5, #0
	bl sub_020621C0
	add r0, r6, #0
	bl sub_020621C0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F1F62:
	ldr r6, [r4, #8]
	add r0, r4, #0
	bl ov01_021F30F4
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0xed
	bne _021F1F7E
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021F2004
	pop {r3, r4, r5, r6, r7, pc}
_021F1F7E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1F82:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1F88: .word 0x00000626
	thumb_func_end ov01_021F1ECC

	thumb_func_start ov01_021F1F8C
ov01_021F1F8C: ; 0x021F1F8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021F2000 ; =0x02206A14
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
_021F1F96:
	add r0, r5, #0
	bl sub_0205F254
	ldrh r1, [r4]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl sub_0205F24C
	ldrh r1, [r4, #6]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl sub_0205F914
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl sub_0205F934
	ldrh r1, [r4, #4]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl sub_0205F274
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl FlagSet
	add r0, r5, #0
	bl sub_0205E400
	mov r1, #0xa
	add r2, r6, #0
	mul r2, r1
	ldr r1, _021F2000 ; =0x02206A14
	add r0, r7, #0
	add r1, r1, r2
	ldrh r1, [r1, #8]
	bl FlagClear
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1FF4:
	add r6, r6, #1
	add r4, #0xa
	cmp r6, #4
	blo _021F1F96
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2000: .word 0x02206A14
	thumb_func_end ov01_021F1F8C

	thumb_func_start ov01_021F2004
ov01_021F2004: ; 0x021F2004
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl ov01_021F1F8C
	cmp r0, #0
	bne _021F2018
	mov r0, #1
	pop {r4, pc}
_021F2018:
	ldr r1, _021F2028 ; =0x0000271F
	add r0, r4, #0
	mov r2, #0
	bl sub_0203FF0C
	mov r0, #0
	pop {r4, pc}
	nop
_021F2028: .word 0x0000271F
	thumb_func_end ov01_021F2004

	thumb_func_start ov01_021F202C
ov01_021F202C: ; 0x021F202C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x1c]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x20]
	bl sub_0205C6DC
	add r2, r4, #0
	str r0, [r4, #0x24]
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021F2064 ; =ov01_021F2118
	add r2, r4, #0
	bl sub_02050530
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2064: .word ov01_021F2118
	thumb_func_end ov01_021F202C

	thumb_func_start ov01_021F2068
ov01_021F2068: ; 0x021F2068
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r1, #0
	bl sub_0205064C
	add r4, r0, #0
	add r1, r6, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	ldr r0, [r4, #0x40]
	bl sub_0205C700
	sub r0, r0, #1
	cmp r0, #1
	bhi _021F2098
	mov r0, #1
	str r0, [sp]
	b _021F20B0
_021F2098:
	add r0, r4, #0
	bl ov01_02206268
	cmp r0, #0
	beq _021F20B0
	add r0, r4, #0
	bl ov01_022062CC
	cmp r6, r0
	bne _021F20B0
	mov r0, #0
	str r0, [sp]
_021F20B0:
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl ov01_021F202C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2068

	thumb_func_start ov01_021F20C0
ov01_021F20C0: ; 0x021F20C0
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0205C6DC
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B778
	cmp r0, #1
	bne _021F2112
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205BA30
	cmp r0, #1
	beq _021F20F0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205BA24
	cmp r0, #1
	bne _021F20FE
_021F20F0:
	add r0, r6, #0
	bl sub_0205F83C
	cmp r0, #1
	bne _021F20FE
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F20FE:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B78C
	cmp r0, #1
	bne _021F210E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F210E:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F2112:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F20C0

	thumb_func_start ov01_021F2118
ov01_021F2118: ; 0x021F2118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02050650
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #9
	bhi _021F221C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2134: ; jump table
	.short _021F2148 - _021F2134 - 2 ; case 0
	.short _021F217C - _021F2134 - 2 ; case 1
	.short _021F2192 - _021F2134 - 2 ; case 2
	.short _021F21D2 - _021F2134 - 2 ; case 3
	.short _021F21FC - _021F2134 - 2 ; case 4
	.short _021F2210 - _021F2134 - 2 ; case 5
	.short _021F222A - _021F2134 - 2 ; case 6
	.short _021F2274 - _021F2134 - 2 ; case 7
	.short _021F22A0 - _021F2134 - 2 ; case 8
	.short _021F22C2 - _021F2134 - 2 ; case 9
_021F2148:
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl sub_02066A3C
	cmp r0, #0
	bne _021F2172
	bl SndRadio_GetSeqNo
	cmp r0, #0
	bne _021F2172
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02054F28
	ldr r0, [r4, #0x1c]
	ldr r1, _021F2328 ; =0x000003F6
	mov r2, #1
	bl sub_02054FDC
_021F2172:
	ldr r0, [r4]
	add r0, r0, #1
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F217C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _021F221C
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F2192:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021F21A8
	add r1, r4, #0
	add r1, #0xc
	bl ov01_021F3054
	mov r0, #5
	str r0, [r4]
	b _021F2324
_021F21A8:
	mov r1, #0xb
	bl ov02_02250780
	cmp r0, #0
	beq _021F21C4
	mov r0, #0x42
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0206A1F4
	mov r1, #2
	b _021F21C6
_021F21C4:
	mov r1, #1
_021F21C6:
	ldr r0, [r4, #0x1c]
	bl ov02_022507B4
	mov r0, #3
	str r0, [r4]
	b _021F2324
_021F21D2:
	ldr r0, [r4, #0x14]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r5, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl PlayCry
	mov r0, #4
	str r0, [r4]
	b _021F2324
_021F21FC:
	bl sub_02006360
	cmp r0, #0
	bne _021F221C
	add r0, r5, #0
	bl ov01_02205EE0
	mov r0, #6
	str r0, [r4]
	b _021F2324
_021F2210:
	add r0, r4, #0
	add r0, #0xc
	bl ov01_021F3068
	cmp r0, #1
	beq _021F221E
_021F221C:
	b _021F2324
_021F221E:
	ldr r0, [r4, #0x1c]
	bl ov01_02205D68
	mov r0, #6
	str r0, [r4]
	b _021F2324
_021F222A:
	ldr r0, [r4, #0x20]
	bl sub_0205C67C
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02060F0C
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0205C688
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl sub_02060F18
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r3, [r4, #4]
	add r1, r5, r6
	add r2, r7, r2
	bl ov01_021FE7DC
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	bl sub_0205C78C
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl sub_0205C6E4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F2274:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _021F2324
	ldr r0, [r4, #0x20]
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0
	bl sub_0205C898
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_021F3084
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F22A0:
	ldr r0, [r4, #0x24]
	bl sub_02062108
	cmp r0, #1
	bne _021F2324
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_0206214C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F22C2:
	ldr r0, [r4, #0x24]
	bl sub_02062198
	cmp r0, #0
	beq _021F2324
	ldr r0, [r4, #0x24]
	bl sub_020621C0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov01_021FE9F4
	ldr r0, [r4, #0x20]
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #2
	bl sub_0205C898
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_021F3084
	ldr r0, [r4, #0x1c]
	bl sub_02069F88
	cmp r0, #0
	beq _021F2312
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	ldr r0, [r4, #0x1c]
	bl sub_02069D68
	mov r1, #0x38
	bl sub_0205FC94
_021F2312:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ov01_021E7F00
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F2324:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2328: .word 0x000003F6
	thumb_func_end ov01_021F2118

	thumb_func_start ov01_021F232C
ov01_021F232C: ; 0x021F232C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _021F2342
	add r0, r5, #0
	bl sub_0205C700
	cmp r0, #2
	beq _021F2346
_021F2342:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F2346:
	add r0, r5, #0
	bl sub_0205C6DC
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0205DA34
	cmp r0, #0x20
	bne _021F235E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F235E:
	mov r1, #0x20
	bic r0, r1
	beq _021F2368
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F2368:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021F2378
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F232C

	thumb_func_start ov01_021F2378
ov01_021F2378: ; 0x021F2378
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r5, r1, #0
	add r7, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r6, [r4, #4]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl sub_0205C6DC
	str r0, [r4, #0x10]
	add r0, r7, #0
	bl sub_0205C790
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _021F23A6
	bl GF_AssertFail
_021F23A6:
	ldr r1, _021F23B4 ; =ov01_021F23B8
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020504F0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F23B4: .word ov01_021F23B8
	thumb_func_end ov01_021F2378

	thumb_func_start ov01_021F23B8
ov01_021F23B8: ; 0x021F23B8
	push {r4, lr}
	bl sub_02050650
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021F23D0
	cmp r0, #1
	beq _021F2412
	cmp r0, #2
	beq _021F24B8
	b _021F24F0
_021F23D0:
	ldr r0, [r4, #0x10]
	bl sub_02062108
	cmp r0, #1
	beq _021F23DC
	b _021F24F0
_021F23DC:
	ldr r0, [r4, #0xc]
	bl sub_0205C724
	add r1, r0, #0
	mov r0, #0
	bl sub_0205C898
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov01_021F3084
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0206214C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov01_021FE9F4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _021F24F0
_021F2412:
	ldr r0, [r4, #0x10]
	bl sub_02062198
	cmp r0, #0
	beq _021F24F0
	ldr r0, [r4, #0x10]
	bl sub_020621C0
	ldr r0, [r4, #0x14]
	bl ov01_021F1640
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0205C78C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0205C6E4
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov01_021E7F00
	ldr r0, [r4, #8]
	bl sub_02069F88
	cmp r0, #0
	beq _021F2476
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	ldr r0, [r4, #8]
	bl sub_02069D68
	mov r1, #1
	bl sub_02069DC8
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov01_0220609C
	ldr r0, [r4, #8]
	bl sub_02069D68
	mov r1, #0x30
	bl sub_0205FC94
_021F2476:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl sub_02066A3C
	cmp r0, #0
	bne _021F249A
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x20]
	ldr r1, [r1]
	bl GetMapMusic
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #4
	bl sub_02054FDC
_021F249A:
	bl SndRadio_GetSeqNo
	cmp r0, #0
	beq _021F24AE
	mov r0, #0x28
	strh r0, [r4, #2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _021F24F0
_021F24AE:
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, pc}
_021F24B8:
	bl SndRadio_GetSeqNo
	cmp r0, #0
	bne _021F24D2
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov01_021E7F00
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, pc}
_021F24D2:
	ldrh r0, [r4, #2]
	sub r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021F24F0
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov01_021E7F00
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, pc}
_021F24F0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F23B8

	thumb_func_start ov01_021F24F4
ov01_021F24F4: ; 0x021F24F4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #1
	bne _021F250E
	cmp r3, #1
	bne _021F250E
	add r0, r5, #0
	bl sub_0205C700
	cmp r0, #2
	beq _021F2512
_021F250E:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F2512:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205DFEC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B8DC
	cmp r0, #0
	bne _021F252A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F252A:
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021F28EC
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F24F4

	thumb_func_start ov01_021F2538
ov01_021F2538: ; 0x021F2538
	push {r3, lr}
	add r0, r1, #0
	bl sub_0205C6DC
	bl sub_02062108
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov01_021F2538

	thumb_func_start ov01_021F2548
ov01_021F2548: ; 0x021F2548
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x30
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x10]
	bl sub_0205C6DC
	add r2, r4, #0
	str r0, [r4, #0x14]
	add r2, #0x1c
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021F257C
	mov r0, #5
	b _021F257E
_021F257C:
	mov r0, #6
_021F257E:
	strh r0, [r4, #2]
	ldr r0, [r6, #0x10]
	ldr r1, _021F258C ; =ov01_021F2628
	add r2, r4, #0
	bl sub_02050530
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F258C: .word ov01_021F2628
	thumb_func_end ov01_021F2548

	thumb_func_start ov01_021F2590
ov01_021F2590: ; 0x021F2590
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r1, #0
	bl sub_0205064C
	add r4, r0, #0
	add r1, r6, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	ldr r0, [r4, #0x40]
	bl sub_0205C700
	sub r0, r0, #1
	cmp r0, #1
	bhi _021F25C0
	mov r0, #1
	str r0, [sp]
	b _021F25D8
_021F25C0:
	add r0, r4, #0
	bl ov01_02206268
	cmp r0, #0
	beq _021F25D8
	add r0, r4, #0
	bl ov01_022062CC
	cmp r6, r0
	bne _021F25D8
	mov r0, #0
	str r0, [sp]
_021F25D8:
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl ov01_021F2548
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2590

	thumb_func_start ov01_021F25E8
ov01_021F25E8: ; 0x021F25E8
	push {r3, lr}
	cmp r1, #3
	bhi _021F2622
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F25FA: ; jump table
	.short _021F2602 - _021F25FA - 2 ; case 0
	.short _021F2602 - _021F25FA - 2 ; case 1
	.short _021F2612 - _021F25FA - 2 ; case 2
	.short _021F2612 - _021F25FA - 2 ; case 3
_021F2602:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B834
	cmp r0, #1
	bne _021F2622
	mov r0, #1
	pop {r3, pc}
_021F2612:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B840
	cmp r0, #1
	bne _021F2622
	mov r0, #1
	pop {r3, pc}
_021F2622:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F25E8

	thumb_func_start ov01_021F2628
ov01_021F2628: ; 0x021F2628
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050650
	ldr r7, _021F268C ; =0x022069D0
	add r4, r0, #0
_021F2634:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021F2648
	ldrh r2, [r4]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	b _021F2656
_021F2648:
	ldrh r2, [r4]
	add r0, r4, #0
	add r1, r6, #0
	lsl r3, r2, #2
	ldr r2, _021F2690 ; =0x022069F0
	ldr r2, [r2, r3]
	blx r2
_021F2656:
	add r5, r0, #0
	cmp r5, #2
	beq _021F2634
	cmp r5, #1
	bne _021F2686
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	ldr r0, [r4, #0xc]
	bl sub_02069D68
	mov r1, #1
	bl sub_02069DC8
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov01_0220609C
	add r0, r4, #0
	bl ov01_021F30F4
_021F2686:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F268C: .word 0x022069D0
_021F2690: .word 0x022069F0
	thumb_func_end ov01_021F2628

	thumb_func_start ov01_021F2694
ov01_021F2694: ; 0x021F2694
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x1c
	bl ov01_021F3054
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F2694

	thumb_func_start ov01_021F26AC
ov01_021F26AC: ; 0x021F26AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl ov01_021F3068
	cmp r0, #1
	bne _021F26C6
	ldr r0, [r4, #0xc]
	bl ov01_02205D68
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021F26C6:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F26AC

	thumb_func_start ov01_021F26CC
ov01_021F26CC: ; 0x021F26CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov02_02250780
	cmp r0, #0
	beq _021F26EE
	mov r0, #0x42
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0206A1F4
	mov r1, #2
	b _021F26F0
_021F26EE:
	mov r1, #1
_021F26F0:
	ldr r0, [r4, #0xc]
	bl ov02_022507B4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F26CC

	thumb_func_start ov01_021F2700
ov01_021F2700: ; 0x021F2700
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r4, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl PlayCry
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2700

	thumb_func_start ov01_021F2734
ov01_021F2734: ; 0x021F2734
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02006360
	cmp r0, #0
	beq _021F2746
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F2746:
	add r0, r5, #0
	bl ov01_02205EE0
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2734

	thumb_func_start ov01_021F2758
ov01_021F2758: ; 0x021F2758
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0205C67C
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_02060F0C
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0205C688
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02060F18
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #4]
	add r1, r4, r6
	add r2, r7, r2
	bl ov01_021FEAB0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	bl sub_02069F88
	cmp r0, #0
	beq _021F27A2
	ldr r0, [r5, #0xc]
	bl sub_02069D68
	bl sub_0205F708
_021F27A2:
	ldr r0, [r5, #0xc]
	bl ov02_0224D9A4
	str r0, [r5, #0x2c]
	ldr r0, _021F27BC ; =0x00000626
	bl PlaySE
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F27BC: .word 0x00000626
	thumb_func_end ov01_021F2758

	thumb_func_start ov01_021F27C0
ov01_021F27C0: ; 0x021F27C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02062108
	cmp r0, #1
	bne _021F27E4
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0206214C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021F27E4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F27C0

	thumb_func_start ov01_021F27E8
ov01_021F27E8: ; 0x021F27E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02062198
	cmp r0, #1
	bne _021F2804
	ldrh r0, [r4]
	mov r1, #1
	add r0, r0, #1
	strh r0, [r4]
	ldr r0, [r4, #0x18]
	bl ov01_021FEB30
_021F2804:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F27E8

	thumb_func_start ov01_021F2808
ov01_021F2808: ; 0x021F2808
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02062108
	cmp r0, #1
	bne _021F282C
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0206214C
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
_021F282C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F2808

	thumb_func_start ov01_021F2830
ov01_021F2830: ; 0x021F2830
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_02062198
	cmp r0, #0
	bne _021F2842
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F2842:
	ldr r0, [r5, #0x14]
	bl sub_0205F2B8
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_02060FA8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl ov01_021F25E8
	cmp r0, #1
	bne _021F2868
	ldrh r0, [r5, #2]
	strh r0, [r5]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F2868:
	ldr r0, [r5, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_0206214C
	mov r1, #0
	str r1, [r5, #8]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [r5, #0x18]
	bl ov01_021FEB30
	ldr r0, [r5, #0x2c]
	bl ov02_0224D9B8
	mov r0, #0
	str r0, [r5, #0x2c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F2830

	thumb_func_start ov01_021F2894
ov01_021F2894: ; 0x021F2894
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02062198
	cmp r0, #0
	bne _021F28A6
	mov r0, #0
	pop {r4, pc}
_021F28A6:
	ldr r0, [r4, #0x14]
	bl sub_020621C0
	ldr r0, [r4, #0x18]
	bl ov01_021F1640
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2894

	thumb_func_start ov01_021F28B8
ov01_021F28B8: ; 0x021F28B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x54
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x34]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x38]
	ldr r0, [r6, #0x40]
	bl sub_0205C6DC
	str r0, [r4, #0x3c]
	cmp r5, #0
	beq _021F28E8
	add r2, r4, #0
	add r2, #0x40
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
_021F28E8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F28B8

	thumb_func_start ov01_021F28EC
ov01_021F28EC: ; 0x021F28EC
	push {r4, lr}
	mov r2, #0
	add r4, r0, #0
	bl ov01_021F28B8
	add r2, r0, #0
	ldr r1, _021F2904 ; =ov01_021F2944
	add r0, r4, #0
	bl sub_020504F0
	pop {r4, pc}
	nop
_021F2904: .word ov01_021F2944
	thumb_func_end ov01_021F28EC

	thumb_func_start ov01_021F2908
ov01_021F2908: ; 0x021F2908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	bl sub_0205064C
	add r4, r0, #0
	add r1, r5, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov01_021F28B8
	add r2, r0, #0
	ldr r1, _021F2940 ; =ov01_021F2944
	add r0, r6, #0
	bl sub_02050530
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2940: .word ov01_021F2944
	thumb_func_end ov01_021F2908

	thumb_func_start ov01_021F2944
ov01_021F2944: ; 0x021F2944
	push {r4, r5, r6, lr}
	bl sub_02050650
	ldr r6, _021F2990 ; =0x022069BC
	ldr r4, _021F2994 ; =0x022069A8
	add r5, r0, #0
_021F2950:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021F2962
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	b _021F296C
_021F2962:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
_021F296C:
	cmp r0, #2
	beq _021F2950
	cmp r0, #1
	bne _021F298A
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	add r0, r5, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F298A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021F2990: .word 0x022069BC
_021F2994: .word 0x022069A8
	thumb_func_end ov01_021F2944

	thumb_func_start ov01_021F2998
ov01_021F2998: ; 0x021F2998
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021F29B6
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl ov01_021F3054
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021F29B6:
	mov r0, #2
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2998

	thumb_func_start ov01_021F29C0
ov01_021F29C0: ; 0x021F29C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl ov01_021F3068
	cmp r0, #1
	bne _021F29DA
	ldr r0, _021F29E0 ; =0x0000064C
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F29DA:
	mov r0, #0
	pop {r4, pc}
	nop
_021F29E0: .word 0x0000064C
	thumb_func_end ov01_021F29C0

	thumb_func_start ov01_021F29E4
ov01_021F29E4: ; 0x021F29E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F914
	add r4, r0, #0
	mov r0, #0
	bl sub_02060F0C
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl sub_0205F934
	add r6, r0, #0
	mov r0, #0
	bl sub_02060F18
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl sub_020611C8
	ldr r0, [r5, #0x30]
	mov r1, #1
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r2, [r5, #0x2c]
	ldr r3, [r5, #0x28]
	bl sub_02054790
	str r0, [r5, #0x2c]
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F2A3C
	bl GF_AssertFail
_021F2A3C:
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0x18
	bl sub_0205F944
	ldr r1, [sp, #0x20]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	bgt _021F2A62
	bl GF_AssertFail
_021F2A62:
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	blt _021F2A6E
	bl GF_AssertFail
_021F2A6E:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x1c]
	add r3, sp, #0xc
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x10]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #0x10]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #0x14]
	asr r0, r0, #6
	str r0, [sp, #0x14]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	bl ov02_0224D598
	str r0, [r5, #0x50]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021F29E4

	thumb_func_start ov01_021F2AB8
ov01_021F2AB8: ; 0x021F2AB8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F944
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _021F2AD6
	str r0, [sp, #4]
_021F2AD6:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F954
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x20
	blt _021F2AF2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F2AF2:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021F2AB8

	thumb_func_start ov01_021F2AF8
ov01_021F2AF8: ; 0x021F2AF8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F944
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _021F2B16
	str r0, [sp, #4]
_021F2B16:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bge _021F2B26
	str r0, [sp, #8]
_021F2B26:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F954
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x40
	bge _021F2B3E
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021F2B3E:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _021F2B4A
	bl GF_AssertFail
_021F2B4A:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _021F2B56
	bl GF_AssertFail
_021F2B56:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	bl sub_0205F918
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x10]
	bl sub_0205F928
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	bl sub_0205F938
	ldr r0, [r4, #0x3c]
	bl sub_02060F78
	ldr r0, [r4, #0x50]
	bl ov02_0224D5AC
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021F2AF8

	thumb_func_start ov01_021F2B80
ov01_021F2B80: ; 0x021F2B80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021F2B9E
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl ov01_021F3054
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021F2B9E:
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov01_021F2B80

	thumb_func_start ov01_021F2BA4
ov01_021F2BA4: ; 0x021F2BA4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl ov01_021F3068
	cmp r0, #1
	bne _021F2BBE
	ldr r0, _021F2BC4 ; =0x0000064C
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F2BBE:
	mov r0, #0
	pop {r4, pc}
	nop
_021F2BC4: .word 0x0000064C
	thumb_func_end ov01_021F2BA4

	thumb_func_start ov01_021F2BC8
ov01_021F2BC8: ; 0x021F2BC8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F914
	add r4, r0, #0
	mov r0, #1
	bl sub_02060F0C
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl sub_0205F934
	add r6, r0, #0
	mov r0, #1
	bl sub_02060F18
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl sub_020611C8
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x28
	bl sub_0206121C
	mov r0, #0
	str r0, [r5, #0x18]
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0xc
	bl sub_0205F944
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	blt _021F2C32
	bl GF_AssertFail
_021F2C32:
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bgt _021F2C3E
	bl GF_AssertFail
_021F2C3E:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #4]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #8]
	asr r0, r0, #6
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	bl ov02_0224D598
	str r0, [r5, #0x50]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F2BC8

	thumb_func_start ov01_021F2C88
ov01_021F2C88: ; 0x021F2C88
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F944
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _021F2CA8
	str r0, [sp, #8]
	b _021F2CB0
_021F2CA8:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x18]
_021F2CB0:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F954
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x20
	blt _021F2CCC
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F2CCC:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2C88

	thumb_func_start ov01_021F2CD4
ov01_021F2CD4: ; 0x021F2CD4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F944
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bge _021F2CF2
	str r0, [sp, #4]
_021F2CF2:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _021F2D04
	str r0, [sp, #8]
	b _021F2D0C
_021F2D04:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x18]
_021F2D0C:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_0205F954
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x40
	bge _021F2D24
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021F2D24:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _021F2D30
	bl GF_AssertFail
_021F2D30:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _021F2D3C
	bl GF_AssertFail
_021F2D3C:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	bl sub_0205F918
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x10]
	bl sub_0205F928
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	bl sub_0205F938
	ldr r0, [r4, #0x3c]
	bl sub_02060F78
	ldr r0, [r4, #0x50]
	bl ov02_0224D5AC
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2CD4

	thumb_func_start ov01_021F2D68
ov01_021F2D68: ; 0x021F2D68
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x54
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x34]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x38]
	bl sub_0205C6DC
	add r2, r4, #0
	str r0, [r4, #0x3c]
	add r2, #0x40
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021F2DA0 ; =ov01_021F2DD0
	add r2, r4, #0
	bl sub_02050530
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2DA0: .word ov01_021F2DD0
	thumb_func_end ov01_021F2D68

	thumb_func_start ov01_021F2DA4
ov01_021F2DA4: ; 0x021F2DA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r1, #0
	bl sub_0205064C
	add r4, r0, #0
	add r1, r5, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov01_021F2D68
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F2DA4

	thumb_func_start ov01_021F2DD0
ov01_021F2DD0: ; 0x021F2DD0
	push {r4, r5, r6, lr}
	bl sub_02050650
	ldr r6, _021F2E04 ; =0x02206994
	add r5, r0, #0
_021F2DDA:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
	add r4, r0, #0
	cmp r4, #2
	beq _021F2DDA
	cmp r4, #1
	bne _021F2E00
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	add r0, r5, #0
	bl ov01_021F30F4
_021F2E00:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2E04: .word 0x02206994
	thumb_func_end ov01_021F2DD0

	thumb_func_start ov01_021F2E08
ov01_021F2E08: ; 0x021F2E08
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl ov01_021F3054
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F2E08

	thumb_func_start ov01_021F2E20
ov01_021F2E20: ; 0x021F2E20
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl ov01_021F3068
	cmp r0, #1
	bne _021F2E34
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F2E34:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F2E20

	thumb_func_start ov01_021F2E38
ov01_021F2E38: ; 0x021F2E38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_02069F88
	cmp r0, #0
	beq _021F2E50
	ldr r0, [r4, #0x34]
	bl sub_02069D68
	bl sub_0205F708
_021F2E50:
	ldr r0, [r4, #0x34]
	bl ov02_0224D67C
	str r0, [r4, #0x50]
	ldr r0, _021F2E68 ; =0x0000064C
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021F2E68: .word 0x0000064C
	thumb_func_end ov01_021F2E38

	thumb_func_start ov01_021F2E6C
ov01_021F2E6C: ; 0x021F2E6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02062108
	cmp r0, #1
	bne _021F2E90
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0206214C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F2E90:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F2E6C

	thumb_func_start ov01_021F2E94
ov01_021F2E94: ; 0x021F2E94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02062198
	cmp r0, #0
	bne _021F2EA6
	mov r0, #0
	pop {r4, pc}
_021F2EA6:
	ldr r0, [r4, #0x3c]
	bl sub_0205F2B8
	ldr r0, [r4, #0x3c]
	bl sub_0205F504
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B8E8
	cmp r0, #1
	bne _021F2EC6
	mov r0, #3
	str r0, [r4]
	mov r0, #2
	pop {r4, pc}
_021F2EC6:
	ldr r0, [r4, #0x50]
	bl ov02_0224D690
	mov r0, #0
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x3c]
	bl sub_020621C0
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2E94

	thumb_func_start ov01_021F2EDC
ov01_021F2EDC: ; 0x021F2EDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_0205F73C
	cmp r0, #0
	beq _021F2F22
	add r0, r4, #0
	bl sub_0205C700
	cmp r0, #0
	bne _021F2F22
	add r0, r5, #0
	bl sub_0205F25C
	sub r0, #0xc4
	cmp r0, #1
	bls _021F2F22
	add r0, r4, #0
	bl sub_0205C71C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x40
	bl ov01_021F1AFC
	add r0, r4, #0
	bl ov01_021F1B04
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F1AFC
_021F2F22:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F2EDC

	thumb_func_start ov01_021F2F24
ov01_021F2F24: ; 0x021F2F24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205C6DC
	add r5, r0, #0
	bl sub_0205F73C
	cmp r0, #0
	beq _021F2F6C
	add r0, r4, #0
	bl sub_0205C700
	cmp r0, #0
	bne _021F2F6C
	add r0, r5, #0
	bl sub_0205F25C
	cmp r0, #0xc4
	beq _021F2F4E
	cmp r0, #0xc5
	bne _021F2F6C
_021F2F4E:
	add r0, r4, #0
	bl sub_0205C71C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov01_021F1AFC
	add r0, r4, #0
	bl ov01_021F1B04
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F1AFC
_021F2F6C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F2F24

	thumb_func_start ov01_021F2F70
ov01_021F2F70: ; 0x021F2F70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, [r7, #0x40]
	add r0, r6, #0
	bl sub_0205C700
	add r4, r0, #0
	beq _021F2F88
	cmp r4, #3
	beq _021F2F88
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F2F88:
	add r0, r6, #0
	bl sub_0205C6DC
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	bl AllocFromHeapAtEnd
	add r5, r0, #0
	mov r0, #0
	str r0, [r5]
	str r7, [r5, #8]
	str r6, [r5, #0xc]
	str r4, [r5, #4]
	cmp r4, #0
	bne _021F2FAC
	mov r4, #0x80
	b _021F2FBC
_021F2FAC:
	cmp r4, #3
	bne _021F2FB6
	mov r4, #1
	lsl r4, r4, #0xe
	b _021F2FBC
_021F2FB6:
	bl GF_AssertFail
	mov r4, #0x80
_021F2FBC:
	ldr r0, [sp]
	bl sub_0205F708
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021F1AFC
	add r0, r6, #0
	bl ov01_021F1B04
	ldr r0, _021F2FE8 ; =ov01_021F3030
	ldr r2, _021F2FEC ; =0x0000FFFF
	add r1, r5, #0
	bl sub_0200E320
	add r4, r0, #0
	bne _021F2FE2
	bl GF_AssertFail
_021F2FE2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2FE8: .word ov01_021F3030
_021F2FEC: .word 0x0000FFFF
	thumb_func_end ov01_021F2F70

	thumb_func_start ov01_021F2FF0
ov01_021F2FF0: ; 0x021F2FF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	beq _021F302E
	bl sub_0201F988
	add r6, r0, #0
	ldr r0, [r6, #4]
	ldr r4, [r6, #0xc]
	cmp r0, #0
	bne _021F300C
	add r0, r4, #0
	bl ov01_021F1B38
	b _021F3022
_021F300C:
	cmp r0, #3
	bne _021F3018
	add r0, r4, #0
	bl ov01_021F1C30
	b _021F3022
_021F3018:
	bl GF_AssertFail
	add r0, r4, #0
	bl ov01_021F1B38
_021F3022:
	add r0, r6, #0
	bl FreeToHeap
	add r0, r5, #0
	bl sub_0200E390
_021F302E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F2FF0

	thumb_func_start ov01_021F3030
ov01_021F3030: ; 0x021F3030
	push {r3, lr}
	ldr r0, [r1, #0xc]
	bl sub_0205C6DC
	bl sub_0205F484
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3030

	thumb_func_start ov01_021F3040
ov01_021F3040: ; 0x021F3040
	push {r4, lr}
	add r4, r2, #0
	mov r2, #1
	str r2, [r4]
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	bl sub_0205C724
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov01_021F3040

	thumb_func_start ov01_021F3054
ov01_021F3054: ; 0x021F3054
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, #0
	bl ov02_02249458
	str r0, [r4, #0xc]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3054

	thumb_func_start ov01_021F3068
ov01_021F3068: ; 0x021F3068
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov02_0224953C
	cmp r0, #1
	bne _021F3080
	ldr r0, [r4, #0xc]
	bl ov02_02249548
	mov r0, #1
	pop {r4, pc}
_021F3080:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F3068

	thumb_func_start ov01_021F3084
ov01_021F3084: ; 0x021F3084
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205C6DC
	add r1, r4, #0
	bl ov01_021FA930
	pop {r4, pc}
	thumb_func_end ov01_021F3084

	thumb_func_start ov01_021F3094
ov01_021F3094: ; 0x021F3094
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_0205C67C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02060F0C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205C688
	str r0, [sp]
	add r0, r5, #0
	bl sub_02060F18
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205C6DC
	bl sub_0205F35C
	ldr r2, [sp]
	add r1, r6, r7
	add r2, r2, r5
	mov r3, #0
	bl sub_0205FB58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F3094

	thumb_func_start ov01_021F30D0
ov01_021F30D0: ; 0x021F30D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	bne _021F30E4
	bl GF_AssertFail
_021F30E4:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F30D0

	thumb_func_start ov01_021F30F4
ov01_021F30F4: ; 0x021F30F4
	ldr r3, _021F30FC ; =FreeToHeapExplicit
	add r1, r0, #0
	mov r0, #4
	bx r3
	.balign 4, 0
_021F30FC: .word FreeToHeapExplicit
	thumb_func_end ov01_021F30F4

	thumb_func_start ov01_021F3100
ov01_021F3100: ; 0x021F3100
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl SavArray_PlayerParty_get
	add r1, r4, #0
	bl GetPartyMonByIndex
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3100

	thumb_func_start ov01_021F3114
ov01_021F3114: ; 0x021F3114
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205C6DC
	bl sub_0205F504
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl sub_0205B9DC
	cmp r0, #1
	bne _021F3136
	mov r2, #3
	b _021F3164
_021F3136:
	add r0, r4, #0
	bl sub_0205B9E8
	cmp r0, #1
	bne _021F3144
	mov r2, #2
	b _021F3164
_021F3144:
	add r0, r4, #0
	bl sub_0205B9F4
	cmp r0, #1
	bne _021F3152
	mov r2, #0
	b _021F3164
_021F3152:
	add r0, r4, #0
	bl sub_0205BA00
	cmp r0, #1
	bne _021F3160
	mov r2, #1
	b _021F3164
_021F3160:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F3164:
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F3170
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F3114

	thumb_func_start ov01_021F3170
ov01_021F3170: ; 0x021F3170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r6, r1, #0
	add r7, r2, #0
	bl ov01_021F3348
	add r4, r0, #0
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, _021F3198 ; =0x00000657
	str r7, [r4]
	bl PlaySE
	ldr r1, _021F319C ; =ov01_021F31CC
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020504F0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3198: .word 0x00000657
_021F319C: .word ov01_021F31CC
	thumb_func_end ov01_021F3170

	thumb_func_start ov01_021F31A0
ov01_021F31A0: ; 0x021F31A0
	cmp r0, #3
	bhi _021F31C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F31B0: ; jump table
	.short _021F31B8 - _021F31B0 - 2 ; case 0
	.short _021F31C0 - _021F31B0 - 2 ; case 1
	.short _021F31BC - _021F31B0 - 2 ; case 2
	.short _021F31C4 - _021F31B0 - 2 ; case 3
_021F31B8:
	mov r0, #2
	bx lr
_021F31BC:
	mov r0, #1
	bx lr
_021F31C0:
	mov r0, #3
	bx lr
_021F31C4:
	mov r0, #0
	bx lr
_021F31C8:
	mov r0, #0
	bx lr
	thumb_func_end ov01_021F31A0

	thumb_func_start ov01_021F31CC
ov01_021F31CC: ; 0x021F31CC
	push {r4, r5, r6, lr}
	bl sub_02050650
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0205C6DC
	add r6, r0, #0
	bl sub_0205F504
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F31F4
	cmp r0, #1
	beq _021F3206
	cmp r0, #2
	beq _021F3236
	b _021F3340
_021F31F4:
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0205F20C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021F3340
_021F3206:
	ldr r0, [r4, #0x10]
	bl sub_0205DFC8
	cmp r0, #0
	bne _021F3212
	b _021F3340
_021F3212:
	ldr r0, [r4]
	mov r1, #0xc
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0205DFD4
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl sub_0205C660
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #7
	str r0, [r4, #4]
	b _021F3340
_021F3236:
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _021F3244
	cmp r0, #4
	beq _021F3244
	cmp r0, #6
	bne _021F3254
_021F3244:
	ldr r0, [r4]
	bl ov01_021F31A0
	str r0, [r4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl sub_0205C660
_021F3254:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bne _021F3340
	add r0, r5, #0
	bl sub_0205B9DC
	cmp r0, #1
	bne _021F3274
	mov r0, #3
	str r0, [r4]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ov04_02256BE4
	b _021F3300
_021F3274:
	add r0, r5, #0
	bl sub_0205B9E8
	cmp r0, #1
	bne _021F328C
	mov r0, #2
	str r0, [r4]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ov04_02256BE4
	b _021F3300
_021F328C:
	add r0, r5, #0
	bl sub_0205B9F4
	cmp r0, #1
	bne _021F32A4
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ov04_02256BE4
	b _021F3300
_021F32A4:
	add r0, r5, #0
	bl sub_0205BA00
	cmp r0, #1
	bne _021F32BC
	mov r0, #1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl ov04_02256BE4
	b _021F3300
_021F32BC:
	add r0, r5, #0
	bl sub_0205BA0C
	cmp r0, #1
	ldr r0, [r4]
	bne _021F32FA
	bl ov01_021F31A0
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0x80
	bl sub_0205F214
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0205F214
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl sub_0205C660
	add r0, r4, #0
	bl ov01_021F336C
	ldr r0, _021F3344 ; =0x00000657
	mov r1, #0
	bl sub_02006154
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F32FA:
	bl ov01_021F31A0
	str r0, [r4]
_021F3300:
	ldr r0, [r4, #0x10]
	ldr r2, [r4]
	add r1, r6, #0
	bl sub_0205DA34
	cmp r0, #0
	bne _021F3314
	mov r0, #1
	str r0, [r4, #8]
	b _021F3340
_021F3314:
	add r0, r6, #0
	mov r1, #0x80
	bl sub_0205F214
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0205F214
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl sub_0205C660
	add r0, r4, #0
	bl ov01_021F336C
	ldr r0, _021F3344 ; =0x00000657
	mov r1, #0
	bl sub_02006154
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F3340:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F3344: .word 0x00000657
	thumb_func_end ov01_021F31CC

	thumb_func_start ov01_021F3348
ov01_021F3348: ; 0x021F3348
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	bne _021F335C
	bl GF_AssertFail
_021F335C:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3348

	thumb_func_start ov01_021F336C
ov01_021F336C: ; 0x021F336C
	ldr r3, _021F3374 ; =FreeToHeapExplicit
	add r1, r0, #0
	mov r0, #4
	bx r3
	.balign 4, 0
_021F3374: .word FreeToHeapExplicit
	thumb_func_end ov01_021F336C

	thumb_func_start ov01_021F3378
ov01_021F3378: ; 0x021F3378
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bhi _021F33AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F338C: ; jump table
	.short _021F3394 - _021F338C - 2 ; case 0
	.short _021F33A0 - _021F338C - 2 ; case 1
	.short _021F339A - _021F338C - 2 ; case 2
	.short _021F33A6 - _021F338C - 2 ; case 3
_021F3394:
	mov r0, #2
	str r0, [r1, #0x10]
	b _021F33AA
_021F339A:
	mov r0, #1
	str r0, [r1, #0x10]
	b _021F33AA
_021F33A0:
	mov r0, #3
	str r0, [r1, #0x10]
	b _021F33AA
_021F33A6:
	mov r0, #0
	str r0, [r1, #0x10]
_021F33AA:
	ldr r0, [r1]
	ldr r3, _021F33B4 ; =sub_0205C660
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x10]
	bx r3
	.balign 4, 0
_021F33B4: .word sub_0205C660
	thumb_func_end ov01_021F3378

	thumb_func_start ov01_021F33B8
ov01_021F33B8: ; 0x021F33B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	bl sub_0205C6DC
	add r6, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021F33D8
	cmp r0, #1
	beq _021F33E2
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021F33D8:
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, _021F3480 ; =0x0000064E
	bl PlaySE
_021F33E2:
	ldr r0, [r5, #0xc]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021F33F8
	add r0, r5, #0
	bl ov01_021F3378
_021F33F8:
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_0205F990
	ldr r4, [r5, #0xc]
	add r0, r4, #0
	bl _dflt
	str r0, [sp, #0x14]
	lsl r0, r4, #0xb
	str r1, [sp, #0x10]
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021F3484 ; =0x9999999A
	ldr r1, _021F3488 ; =0x40C19999
	bl _dadd
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl _dmul
	bl _dfix
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_0205F9A0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x14
	bne _021F345E
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200FA24
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021F345E:
	ble _021F347A
	bl sub_0200FB5C
	cmp r0, #0
	beq _021F347A
	ldr r0, [r5, #4]
	mov r1, #1
	str r1, [r0]
	add r0, r5, #0
	bl FreeToHeap
	add r0, r7, #0
	bl sub_0200E390
_021F347A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021F3480: .word 0x0000064E
_021F3484: .word 0x9999999A
_021F3488: .word 0x40C19999
	thumb_func_end ov01_021F33B8

	thumb_func_start ov01_021F348C
ov01_021F348C: ; 0x021F348C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	bl sub_0205C6DC
	ldr r1, [r5, #8]
	add r4, r0, #0
	cmp r1, #0
	beq _021F34B0
	cmp r1, #1
	beq _021F3508
	cmp r1, #2
	beq _021F3590
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021F34B0:
	bl sub_0205F708
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0205F990
	ldr r1, [r5, #0xc]
	mov r0, #0x14
	sub r6, r0, r1
	add r0, r6, #0
	bl _dflt
	str r0, [sp, #0xc]
	lsl r0, r6, #0xb
	add r7, r1, #0
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021F35B8 ; =0x9999999A
	ldr r1, _021F35BC ; =0x40C19999
	bl _dadd
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl _dmul
	bl _dfix
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0205F9A0
	add r0, r4, #0
	bl ov01_021F92A0
	ldr r0, _021F35C0 ; =0x0000064E
	bl PlaySE
	mov r0, #1
	str r0, [r5, #8]
_021F3508:
	ldr r0, [r5, #0xc]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021F351E
	add r0, r5, #0
	bl ov01_021F3378
_021F351E:
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0205F990
	ldr r1, [r5, #0xc]
	mov r0, #0x14
	sub r6, r0, r1
	add r0, r6, #0
	bl _dflt
	str r0, [sp, #0x10]
	lsl r0, r6, #0xb
	add r7, r1, #0
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021F35B8 ; =0x9999999A
	ldr r1, _021F35BC ; =0x40C19999
	bl _dadd
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl _dmul
	bl _dfix
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl sub_0205F9A0
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #2
	bne _021F3582
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	mov r3, #0
	bl sub_0200FA24
_021F3582:
	ldr r0, [r5, #0xc]
	cmp r0, #0x14
	ble _021F35B4
	mov r0, #2
	add sp, #0x20
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021F3590:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021F35B4
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0x40]
	bl sub_0205C660
	ldr r0, [r5, #4]
	mov r1, #1
	str r1, [r0]
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl sub_0200E390
_021F35B4:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F35B8: .word 0x9999999A
_021F35BC: .word 0x40C19999
_021F35C0: .word 0x0000064E
	thumb_func_end ov01_021F348C

	thumb_func_start ov01_021F35C4
ov01_021F35C4: ; 0x021F35C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x14
	add r7, r2, #0
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r5, [r4]
	str r7, [r4, #4]
	ldr r0, [r5, #0x40]
	bl sub_0205C654
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _021F35FA
	ldr r0, _021F3608 ; =ov01_021F33B8
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200E320
	pop {r3, r4, r5, r6, r7, pc}
_021F35FA:
	ldr r0, _021F360C ; =ov01_021F348C
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200E320
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3608: .word ov01_021F33B8
_021F360C: .word ov01_021F348C
	thumb_func_end ov01_021F35C4

	thumb_func_start ov01_021F3610
ov01_021F3610: ; 0x021F3610
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	mov r4, #0
	str r1, [r6, r0]
	add r7, r4, #0
_021F361E:
	mov r0, #0x38
	mul r0, r4
	add r5, r6, r0
	add r0, r5, #0
	bl ov01_021F3668
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	str r7, [r5, #0x10]
	cmp r4, #0x20
	blo _021F361E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F3610

	thumb_func_start ov01_021F3638
ov01_021F3638: ; 0x021F3638
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _021F365C ; =0x00000704
	bl AllocFromHeap
	add r4, r0, #0
	ldr r2, _021F365C ; =0x00000704
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F3610
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021F365C: .word 0x00000704
	thumb_func_end ov01_021F3638

	thumb_func_start ov01_021F3660
ov01_021F3660: ; 0x021F3660
	ldr r3, _021F3664 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021F3664: .word FreeToHeap
	thumb_func_end ov01_021F3660

	thumb_func_start ov01_021F3668
ov01_021F3668: ; 0x021F3668
	push {r3, r4, r5}
	sub sp, #0xc
	add r3, r0, #0
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	add r4, r3, #0
	add r5, r2, #0
	str r0, [r3, #0xc]
	ldmia r5!, {r0, r1}
	add r4, #0x14
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r2, #0
	str r0, [r4]
	add r4, r3, #0
	ldmia r5!, {r0, r1}
	add r4, #0x20
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r3, #0x2c
	str r0, [r4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	thumb_func_end ov01_021F3668

	thumb_func_start ov01_021F36AC
ov01_021F36AC: ; 0x021F36AC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021F36B4:
	mov r0, #0x38
	mul r0, r4
	add r5, r6, r0
	add r0, r5, #0
	bl ov01_021F3668
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	ldr r1, [r5, #0x10]
	bl ov01_0220411C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	str r7, [r5, #0x10]
	cmp r4, #0x20
	blo _021F36B4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F36AC

	thumb_func_start ov01_021F36DC
ov01_021F36DC: ; 0x021F36DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x20
	blt _021F36EC
	bl GF_AssertFail
_021F36EC:
	add r3, sp, #0
	mov r1, #0
	str r1, [r3]
	str r1, [r3, #4]
	mov r0, #0x38
	add r7, r5, #0
	mul r7, r0
	str r1, [r3, #8]
	add r2, r4, r7
	str r1, [r4, r7]
	str r1, [r2, #4]
	str r1, [r2, #8]
	add r5, r2, #0
	add r6, r3, #0
	str r1, [r2, #0xc]
	ldmia r6!, {r0, r1}
	add r5, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r6, r3, #0
	str r0, [r5]
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r2, #0x2c
	str r0, [r5]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r5, r4, #0
	str r0, [r2]
	mov r0, #0x38
	add r5, #0x10
	lsl r0, r0, #5
	ldr r0, [r4, r0]
	ldr r1, [r5, r7]
	bl ov01_0220411C
	mov r0, #0
	str r0, [r5, r7]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F36DC

	thumb_func_start ov01_021F3744
ov01_021F3744: ; 0x021F3744
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r0, [sp, #4]
	cmp r4, #0
	beq _021F3774
	mov r0, #4
	bl AllocFromHeapAtEnd
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl NARC_ReadFile
	add r0, r4, #0
	mov r1, #0x30
	bl _u32_div_f
	str r0, [sp]
	b _021F3776
_021F3774:
	str r0, [sp]
_021F3776:
	ldr r5, [sp, #4]
	mov r6, #0
	add r4, r7, #0
_021F377C:
	ldr r0, [sp]
	cmp r6, r0
	bhs _021F37E0
	ldr r0, [r5]
	add r2, r4, #0
	str r0, [r4]
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add r3, r5, #4
	str r0, [r4, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r5, #0
	str r0, [r2]
	add r3, #0x10
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r5, #0
	str r0, [r2]
	add r3, #0x1c
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r7, r0]
	ldr r1, [r4]
	bl ov01_02204154
	cmp r0, #0
	bne _021F37D0
	mov r0, #0
	str r0, [r4]
_021F37D0:
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r7, r0]
	ldr r1, [r4]
	bl ov01_022040F8
	str r0, [r4, #0x10]
	b _021F381C
_021F37E0:
	mov r1, #0
	add r0, sp, #8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r1, #0
	str r0, [r4]
	str r0, [r4, #4]
	add r2, r4, #0
	add r3, sp, #8
	str r0, [r4, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #8
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #8
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021F381C:
	add r6, r6, #1
	add r4, #0x38
	add r5, #0x30
	cmp r6, #0x20
	blt _021F377C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021F3830
	bl FreeToHeap
_021F3830:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F3744

	thumb_func_start ov01_021F3834
ov01_021F3834: ; 0x021F3834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, [sp, #0x48]
	add r4, r3, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r1, [sp]
	str r0, [sp, #0x4c]
	ldrb r0, [r4, #1]
	str r0, [sp, #0x10]
	cmp r0, #0x1e
	bls _021F3854
	bl GF_AssertFail
	mov r0, #0
	str r0, [sp, #0x10]
_021F3854:
	ldr r3, _021F3A34 ; =0x02206A84
	mov r0, #0
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp]
	str r0, [sp, #8]
_021F3868:
	add r2, sp, #0x24
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	ldr r3, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r0, [r2, #8]
	cmp r3, r1
	blo _021F38AC
	ldr r1, [sp, #8]
	add r5, r2, #0
	str r0, [r1]
	str r0, [r1, #4]
	add r3, r1, #0
	str r0, [r1, #0xc]
	ldmia r5!, {r0, r1}
	add r3, #0x14
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r3, [sp, #8]
	ldmia r2!, {r0, r1}
	add r3, #0x20
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	ldr r2, [sp, #8]
	str r0, [r3]
	add r3, sp, #0x18
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _021F3A1C
_021F38AC:
	ldrb r1, [r4, #2]
	ldr r2, [sp, #0x4c]
	add r0, sp, #0x14
	bl sub_02097268
	add r1, sp, #0x14
	ldrb r2, [r1]
	ldr r0, [sp, #8]
	str r2, [r0]
	ldrb r0, [r1, #1]
	ldrb r5, [r4, #4]
	lsl r1, r0, #0x1c
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1d
	str r0, [sp, #4]
	lsr r6, r1, #0x1d
	ldr r1, [sp, #4]
	mov r0, #2
	sub r1, r0, r1
	lsl r2, r1, #3
	ldrb r1, [r4, #5]
	add r0, #0xfe
	lsl r1, r1, #4
	add r1, r2, r1
	ldrb r2, [r4, #3]
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	lsl r1, r6, #3
	lsl r2, r2, #4
	add r1, r1, r2
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	sub r0, r1, r0
	cmp r0, #0
	ble _021F3904
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021F3912
_021F3904:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021F3912:
	bl _ffix
	ldr r1, [sp, #8]
	cmp r5, #0
	str r0, [r1, #0x14]
	ble _021F3930
	lsl r0, r5, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021F393E
_021F3930:
	lsl r0, r5, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021F393E:
	bl _ffix
	ldr r1, [sp, #8]
	str r0, [r1, #0x18]
	mov r0, #1
	lsl r0, r0, #8
	sub r0, r7, r0
	cmp r0, #0
	ble _021F3962
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021F3970
_021F3962:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021F3970:
	bl _ffix
	ldr r1, [sp, #8]
	add r3, sp, #0x24
	add r2, r1, #0
	str r0, [r1, #0x1c]
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0x18
	str r0, [r2]
	ldr r2, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #1
	str r0, [r2]
	ldr r0, [sp, #8]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0xc]
	ldrb r7, [r4, #5]
	ldr r0, [sp, #4]
	sub r0, r7, r0
	cmp r7, r0
	ble _021F39EE
	lsl r0, r7, #5
	mov ip, r0
	ldr r0, _021F3A38 ; =0x00008023
	add r3, sp, #0x14
_021F39B0:
	ldrb r1, [r4, #3]
	add r2, r1, r6
	cmp r1, r2
	bge _021F39D8
	mov r2, ip
	lsl r5, r2, #1
	ldr r2, [sp, #0x48]
	add r5, r2, r5
	lsl r2, r1, #1
	add r2, r5, r2
_021F39C4:
	strh r0, [r2]
	ldrb r5, [r3, #1]
	add r1, r1, #1
	add r2, r2, #2
	lsl r5, r5, #0x1c
	lsr r6, r5, #0x1d
	ldrb r5, [r4, #3]
	add r5, r6, r5
	cmp r1, r5
	blt _021F39C4
_021F39D8:
	mov r1, ip
	ldrb r2, [r3, #1]
	sub r1, #0x20
	mov ip, r1
	lsl r2, r2, #0x19
	ldrb r1, [r4, #5]
	lsr r2, r2, #0x1d
	sub r7, r7, #1
	sub r1, r1, r2
	cmp r7, r1
	bgt _021F39B0
_021F39EE:
	mov r1, #7
	ldr r0, [sp]
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	ldr r1, [r1]
	bl ov01_02204154
	cmp r0, #0
	bne _021F3A08
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r0]
_021F3A08:
	mov r1, #7
	ldr r0, [sp]
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	ldr r1, [r1]
	bl ov01_022040F8
	ldr r1, [sp, #8]
	str r0, [r1, #0x10]
_021F3A1C:
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, #0x38
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x20
	bge _021F3A30
	b _021F3868
_021F3A30:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3A34: .word 0x02206A84
_021F3A38: .word 0x00008023
	thumb_func_end ov01_021F3834

	thumb_func_start ov01_021F3A3C
ov01_021F3A3C: ; 0x021F3A3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r4, _021F3AFC ; =0x02206A90
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r6, r0, #0
	str r1, [sp, #8]
	add r3, sp, #0x18
	mov r2, #4
_021F3A4E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F3A4E
	ldr r0, [r4]
	ldr r5, [sp, #0x60]
	str r0, [r3]
	mov r7, #0
_021F3A5E:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F3AEE
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F3AEE
	add r4, r5, #0
	add r4, #0x14
	ldmia r4!, {r0, r1}
	add r3, sp, #0x3c
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r1, [sp, #0x3c]
	ldr r0, [r6]
	add r3, r5, #0
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x44]
	ldr r0, [r6, #8]
	add r3, #0x2c
	add r0, r1, r0
	str r0, [sp, #0x44]
	ldr r0, [r5, #0x10]
	add r1, r2, #0
	ldr r0, [r0, #0x54]
	add r2, sp, #0x18
	bl sub_0201F990
	cmp r0, #0
	beq _021F3AEE
	ldr r0, [sp, #8]
	bl ov01_021FB9F4
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _021F3AB8
	ldr r1, [r5, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x54]
	ldr r2, _021F3B00 ; =0x00000F33
	bl ov01_021EA9B0
_021F3AB8:
	ldr r0, [r5]
	add r1, r4, #0
	add r2, sp, #0x14
	bl ov01_021EA7F8
	add r0, sp, #0x14
	ldrh r0, [r0]
	add r1, sp, #0x3c
	cmp r0, #0
	bne _021F3ADA
	add r3, r5, #0
	ldr r0, [r5, #0x10]
	add r2, sp, #0x18
	add r3, #0x2c
	bl sub_0201F554
	b _021F3AEE
_021F3ADA:
	str r4, [sp]
	ldr r0, [r5]
	add r3, r5, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	add r2, sp, #0x18
	ldr r0, [r0, #0x54]
	add r3, #0x2c
	bl ov01_021F3B84
_021F3AEE:
	add r7, r7, #1
	add r5, #0x38
	cmp r7, #0x20
	blt _021F3A5E
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3AFC: .word 0x02206A90
_021F3B00: .word 0x00000F33
	thumb_func_end ov01_021F3A3C

	thumb_func_start ov01_021F3B04
ov01_021F3B04: ; 0x021F3B04
	add r0, #0x2c
	bx lr
	thumb_func_end ov01_021F3B04

	thumb_func_start ov01_021F3B08
ov01_021F3B08: ; 0x021F3B08
	add r0, #0x20
	bx lr
	thumb_func_end ov01_021F3B08

	thumb_func_start ov01_021F3B0C
ov01_021F3B0C: ; 0x021F3B0C
	add r2, r1, #0
	add r2, #0x14
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end ov01_021F3B0C

	thumb_func_start ov01_021F3B1C
ov01_021F3B1C: ; 0x021F3B1C
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end ov01_021F3B1C

	thumb_func_start ov01_021F3B2C
ov01_021F3B2C: ; 0x021F3B2C
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov01_021F3B2C

	thumb_func_start ov01_021F3B30
ov01_021F3B30: ; 0x021F3B30
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov01_021F3B30

	thumb_func_start ov01_021F3B34
ov01_021F3B34: ; 0x021F3B34
	ldr r0, [r0]
	bx lr
	thumb_func_end ov01_021F3B34

	thumb_func_start ov01_021F3B38
ov01_021F3B38: ; 0x021F3B38
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021F3B38

	thumb_func_start ov01_021F3B3C
ov01_021F3B3C: ; 0x021F3B3C
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0x54]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F3B3C

	thumb_func_start ov01_021F3B44
ov01_021F3B44: ; 0x021F3B44
	mov r2, #0x38
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end ov01_021F3B44

	thumb_func_start ov01_021F3B4C
ov01_021F3B4C: ; 0x021F3B4C
	mov r3, #0
_021F3B4E:
	ldr r2, [r0]
	cmp r2, r1
	beq _021F3B5E
	add r3, r3, #1
	add r0, #0x38
	cmp r3, #0x20
	blt _021F3B4E
	mov r0, #0
_021F3B5E:
	bx lr
	thumb_func_end ov01_021F3B4C

	thumb_func_start ov01_021F3B60
ov01_021F3B60: ; 0x021F3B60
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _021F3B6E
	bl GF_AssertFail
_021F3B6E:
	mov r0, #0x38
	mul r0, r4
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F3B7E
	bl GF_AssertFail
_021F3B7E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3B60

	thumb_func_start ov01_021F3B84
ov01_021F3B84: ; 0x021F3B84
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _021F3C04 ; =0x021DA558
	add r0, r4, #0
	bl MI_Copy36B
	ldr r1, _021F3C08 ; =0x021DA51C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	add r2, sp, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, #2
	add r3, sp, #0
	bl ov01_021EA804
	add r0, sp, #0
	ldrh r0, [r0]
	ldr r1, [sp, #0x18]
	bl ov01_021EA81C
	add r6, r0, #0
	add r0, sp, #0
	ldrh r0, [r0, #2]
	mov r5, #0xff
	mov r4, #0
	cmp r0, #0
	ble _021F3C00
_021F3BD4:
	lsl r0, r4, #2
	add r2, r6, r0
	ldrh r0, [r6, r0]
	cmp r5, r0
	beq _021F3BE6
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r3, #1
	b _021F3BE8
_021F3BE6:
	mov r3, #0
_021F3BE8:
	ldrh r2, [r2, #2]
	add r0, r7, #0
	add r1, r5, #0
	bl NNS_G3dDraw1Mat1Shp
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, sp, #0
	ldrh r0, [r0, #2]
	cmp r4, r0
	blt _021F3BD4
_021F3C00:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3C04: .word 0x021DA558
_021F3C08: .word 0x021DA51C
	thumb_func_end ov01_021F3B84

	thumb_func_start ov01_021F3C0C
ov01_021F3C0C: ; 0x021F3C0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021F3C98 ; =0x02206A78
	add r7, r2, #0
	add r6, r0, #0
	mov ip, r1
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r4, #0
	str r0, [r3]
	mov r0, #0x38
_021F3C28:
	add r1, r4, #0
	mul r1, r0
	add r5, r6, r1
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021F3C84
	mov r0, #1
	str r0, [r5, #4]
	add r3, r5, #0
	add r3, #0x14
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r7]
	cmp r2, #0
	str r0, [r3]
	beq _021F3C5A
	mov r0, #1
	str r0, [r5, #0xc]
	add r3, r5, #0
	ldmia r2!, {r0, r1}
	add r3, #0x20
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	b _021F3C5E
_021F3C5A:
	mov r0, #0
	str r0, [r5, #0xc]
_021F3C5E:
	add r2, sp, #0
	add r3, r5, #0
	ldmia r2!, {r0, r1}
	add r3, #0x2c
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	mov r1, ip
	str r0, [r3]
	mov r0, ip
	str r0, [r5]
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl ov01_022040F8
	str r0, [r5, #0x10]
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021F3C84:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0x20
	blo _021F3C28
	bl GF_AssertFail
	mov r0, #0x20
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3C98: .word 0x02206A78
	thumb_func_end ov01_021F3C0C

	thumb_func_start ov01_021F3C9C
ov01_021F3C9C: ; 0x021F3C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _021F3D34 ; =0x02206AB4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r3, sp, #0x14
	mov r2, #4
_021F3CAA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F3CAA
	ldr r0, [r4]
	mov r4, #0
	str r0, [r3]
	add r7, sp, #0x14
_021F3CBA:
	mov r0, #0x38
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, r0, r1
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F3D24
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F3D24
	ldr r0, [sp, #0xc]
	bl ov01_021FB9F4
	add r6, r0, #0
	ldr r0, [r5]
	add r1, r6, #0
	add r2, sp, #0x10
	bl ov01_021EA7F8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021F3CF2
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x20
	bl sub_02020D2C
_021F3CF2:
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, #0
	bne _021F3D0C
	add r1, r5, #0
	ldr r0, [r5, #0x10]
	add r5, #0x2c
	add r1, #0x14
	add r2, r7, #0
	add r3, r5, #0
	bl sub_0201F554
	b _021F3D24
_021F3D0C:
	str r6, [sp]
	ldr r0, [r5]
	add r1, r5, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	add r5, #0x2c
	ldr r0, [r0, #0x54]
	add r1, #0x14
	add r2, r7, #0
	add r3, r5, #0
	bl ov01_021F3B84
_021F3D24:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _021F3CBA
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3D34: .word 0x02206AB4
	thumb_func_end ov01_021F3C9C

	thumb_func_start ov01_021F3D38
ov01_021F3D38: ; 0x021F3D38
	push {r3, lr}
	mov r1, #0x14
	bl AllocFromHeap
	add r3, r0, #0
	mov r2, #0x14
	mov r1, #0
_021F3D46:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021F3D46
	pop {r3, pc}
	thumb_func_end ov01_021F3D38

	thumb_func_start ov01_021F3D50
ov01_021F3D50: ; 0x021F3D50
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021F3D60
	bl RemoveWindow
_021F3D60:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021F3D50

	thumb_func_start ov01_021F3D68
ov01_021F3D68: ; 0x021F3D68
	strb r1, [r0, #0x12]
	strh r2, [r0, #0x10]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F3D68

	thumb_func_start ov01_021F3D70
ov01_021F3D70: ; 0x021F3D70
	ldrb r3, [r0, #0x13]
	mov r2, #0x7f
	bic r3, r2
	mov r2, #0x7f
	and r1, r2
	orr r1, r3
	strb r1, [r0, #0x13]
	bx lr
	thumb_func_end ov01_021F3D70

	thumb_func_start ov01_021F3D80
ov01_021F3D80: ; 0x021F3D80
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F3D80

	thumb_func_start ov01_021F3D84
ov01_021F3D84: ; 0x021F3D84
	ldrb r0, [r0, #0x12]
	bx lr
	thumb_func_end ov01_021F3D84

	thumb_func_start ov01_021F3D88
ov01_021F3D88: ; 0x021F3D88
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _021F3D94
	mov r0, #1
	bx lr
_021F3D94:
	mov r0, #0
	bx lr
	thumb_func_end ov01_021F3D88

	thumb_func_start ov01_021F3D98
ov01_021F3D98: ; 0x021F3D98
	push {r4, lr}
	ldr r4, [r0, #0x68]
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	cmp r1, #4
	bhi _021F3DFA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F3DB2: ; jump table
	.short _021F3DFA - _021F3DB2 - 2 ; case 0
	.short _021F3DBC - _021F3DB2 - 2 ; case 1
	.short _021F3DCA - _021F3DB2 - 2 ; case 2
	.short _021F3DDC - _021F3DB2 - 2 ; case 3
	.short _021F3DEE - _021F3DB2 - 2 ; case 4
_021F3DBC:
	bl ov01_021F3E10
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021F3DCA:
	bl ov01_021F3EE0
	cmp r0, #1
	bne _021F3DFA
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021F3DDC:
	bl ov01_021F3EA0
	cmp r0, #1
	bne _021F3DFA
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021F3DEE:
	bl ov01_021F3E4C
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
_021F3DFA:
	pop {r4, pc}
	thumb_func_end ov01_021F3D98

	thumb_func_start ov01_021F3DFC
ov01_021F3DFC: ; 0x021F3DFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	bl ov01_021F3D70
	add r0, r4, #0
	bl ov01_021F3D98
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3DFC

	thumb_func_start ov01_021F3E10
ov01_021F3E10: ; 0x021F3E10
	push {r4, lr}
	mov r1, #3
	add r4, r0, #0
	add r3, r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	sub r3, #0x33
	bl sub_0201BC8C
	ldr r1, [r4, #0x68]
	ldrb r0, [r1, #0x13]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F3E40
	ldrb r2, [r1, #0x12]
	ldr r0, [r4, #8]
	mov r3, #3
	bl sub_0205B63C
	ldr r2, [r4, #0x68]
	mov r0, #0x80
	ldrb r1, [r2, #0x13]
	orr r0, r1
	strb r0, [r2, #0x13]
_021F3E40:
	ldr r0, [r4, #0x68]
	ldrb r1, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	bl sub_0205B6A0
	pop {r4, pc}
	thumb_func_end ov01_021F3E10

	thumb_func_start ov01_021F3E4C
ov01_021F3E4C: ; 0x021F3E4C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	ldrb r1, [r0, #0x13]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021F3E9A
	bl RemoveWindow
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #8]
	mov r1, #3
	bl BgCommitTilemapBufferToVram
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_0201BC8C
	ldr r2, [r4, #0x68]
	mov r0, #0x80
	ldrb r1, [r2, #0x13]
	bic r1, r0
	strb r1, [r2, #0x13]
_021F3E9A:
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3E4C

	thumb_func_start ov01_021F3EA0
ov01_021F3EA0: ; 0x021F3EA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_0201BE00
	cmp r0, #0
	bne _021F3EB4
	mov r0, #1
	pop {r4, pc}
_021F3EB4:
	mov r1, #0x2f
	mvn r1, r1
	cmp r0, r1
	ble _021F3EC0
	cmp r0, #0
	blt _021F3ECE
_021F3EC0:
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	sub r3, #0x33
	bl sub_0201BC8C
_021F3ECE:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #4
	mov r3, #0x10
	bl sub_0201BC8C
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3EA0

	thumb_func_start ov01_021F3EE0
ov01_021F3EE0: ; 0x021F3EE0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_0201BE00
	mov r1, #0x2f
	mvn r1, r1
	cmp r0, r1
	bne _021F3F2C
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #8]
	mov r1, #3
	bl BgCommitTilemapBufferToVram
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_0201BC8C
	add sp, #0x10
	mov r0, #1
	pop {r4, pc}
_021F3F2C:
	ble _021F3F32
	cmp r0, #0
	blt _021F3F3E
_021F3F32:
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_0201BC8C
_021F3F3E:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #5
	mov r3, #0x10
	bl sub_0201BC8C
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov01_021F3EE0

	thumb_func_start ov01_021F3F50
ov01_021F3F50: ; 0x021F3F50
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0xc]
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203B9C4
	bl sub_0203B958
	add r6, r0, #0
	add r0, r4, #0
	bl Sav2_Pokedex_get
	add r7, r0, #0
	ldr r0, [r6]
	bl MapHeader_GetMapSec
	str r0, [r5, #4]
	add r0, r7, #0
	bl sub_0202A5F4
	cmp r0, #0
	beq _021F3F84
	add r0, r7, #0
	bl sub_02029E84
	b _021F3F86
_021F3F84:
	mov r0, #0
_021F3F86:
	str r0, [r5]
	add r0, r4, #0
	bl Sav2_PlayerData_GetProfileAddr
	str r0, [r5, #8]
	add r0, r4, #0
	bl Sav2_PlayerData_GetIGTAddr
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3F50

	thumb_func_start ov01_021F3F9C
ov01_021F3F9C: ; 0x021F3F9C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r2, [r4, #4]
	mov r1, #0
	add r5, r0, #0
	bl BufferLandmarkName
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl BufferPlayersName
	ldr r0, [r4, #8]
	bl PlayerProfile_CountBadges
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	ldr r2, [r4]
	cmp r2, #0x64
	blt _021F3FDC
	mov r3, #3
	mov r0, #0
	b _021F3FEA
_021F3FDC:
	cmp r2, #0xa
	blt _021F3FE6
	mov r3, #3
	mov r0, #1
	b _021F3FEA
_021F3FE6:
	mov r3, #2
	mov r0, #1
_021F3FEA:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	bl BufferIntegerAsString
	ldr r0, [r4, #0xc]
	bl GetIGTHours
	add r2, r0, #0
	cmp r2, #0x64
	blt _021F400A
	mov r3, #3
	mov r0, #0
	b _021F4018
_021F400A:
	cmp r2, #0xa
	blt _021F4014
	mov r3, #3
	mov r0, #1
	b _021F4018
_021F4014:
	mov r3, #2
	mov r0, #1
_021F4018:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	bl BufferIntegerAsString
	ldr r0, [r4, #0xc]
	bl GetIGTMinutes
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #5
	bl BufferIntegerAsString
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F3F9C

	thumb_func_start ov01_021F4044
ov01_021F4044: ; 0x021F4044
	mov r0, #0xa
	bx lr
	thumb_func_end ov01_021F4044

	thumb_func_start ov01_021F4048
ov01_021F4048: ; 0x021F4048
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	mov r1, #1
	bl GetFontAttribute
	add r4, r0, #0
	mov r0, #0
	mov r1, #3
	bl GetFontAttribute
	add r0, r4, r0
	str r0, [sp, #0x14]
	mov r4, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r3, [r5, #4]
	add r2, r4, #0
	bl ReadMsgData_ExpandPlaceholders
	add r1, r4, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	add r3, r1, #0
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_dtor
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021F4124 ; =0x02206AF4
	ldr r7, _021F4128 ; =0x02206AE4
	str r0, [sp, #0xc]
_021F4098:
	ldr r0, [sp, #0xc]
	ldr r1, [r0]
	cmp r1, #3
	bne _021F40A6
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021F410E
_021F40A6:
	ldr r0, [sp, #0x14]
	add r4, r4, r0
	ldr r0, [r5, #0x18]
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	add r3, r1, #0
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_dtor
	sub r2, r7, #4
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r2]
	ldr r3, [r5, #4]
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	mov r0, #0
	mov r1, #2
	bl GetFontAttribute
	add r2, r0, #0
	mov r0, #0
	add r1, r6, #0
	bl sub_02002F30
	mov r1, #0x68
	sub r3, r1, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r6, #0
	bl AddTextPrinterParameterized
	add r0, r6, #0
	bl String_dtor
_021F410E:
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blo _021F4098
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4124: .word 0x02206AF4
_021F4128: .word 0x02206AE4
	thumb_func_end ov01_021F4048

	thumb_func_start ov01_021F412C
ov01_021F412C: ; 0x021F412C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl AllocFromHeap
	str r0, [r4, #0x10]
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021F419C ; =0x00000189
	str r0, [sp, #0x10]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl AddWindowParameterized
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _021F41A0 ; =0x000003D9
	str r0, [sp, #4]
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0xb
	bl sub_0200E3DC
	mov r0, #0
	mov r1, #6
	bl GetFontAttribute
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl ov01_021F4048
	ldr r0, [r4, #0x10]
	ldr r2, _021F41A0 ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021F419C: .word 0x00000189
_021F41A0: .word 0x000003D9
	thumb_func_end ov01_021F412C

	thumb_func_start ov01_021F41A4
ov01_021F41A4: ; 0x021F41A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200E5D4
	ldr r0, [r4, #0x10]
	bl RemoveWindow
	ldr r0, [r4, #0x10]
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F41A4

	thumb_func_start ov01_021F41C0
ov01_021F41C0: ; 0x021F41C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x34
	add r7, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	str r6, [r4]
	str r5, [r4, #4]
	strb r7, [r4, #8]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ScrStrBufs_new
	str r0, [r4, #0x14]
	ldr r2, _021F4218 ; =0x000001A7
	mov r0, #1
	mov r1, #0x1b
	add r3, r5, #0
	bl NewMsgDataFromNarc
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x1c
	bl ov01_021F3F50
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	bl ov01_021F3F9C
	mov r0, #0xd
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x1c
	bl ov01_021F4044
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4218: .word 0x000001A7
	thumb_func_end ov01_021F41C0

	thumb_func_start ov01_021F421C
ov01_021F421C: ; 0x021F421C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl DestroyMsgData
	ldr r0, [r4, #0x14]
	bl ScrStrBufs_delete
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021F421C

	thumb_func_start ov01_021F4234
ov01_021F4234: ; 0x021F4234
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r2, #1
	beq _021F4244
	cmp r2, #2
	beq _021F4254
	b _021F4268
_021F4244:
	add r0, r3, #0
	add r2, r4, #0
	bl sub_02002F30
	ldrb r1, [r5, #7]
	lsl r1, r1, #3
	sub r4, r1, r0
	b _021F4268
_021F4254:
	add r0, r3, #0
	add r2, r4, #0
	bl sub_02002F30
	ldrb r1, [r5, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r4, r0, #1
_021F4268:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F4234

	thumb_func_start ov01_021F426C
ov01_021F426C: ; 0x021F426C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	mov r1, #1
	bl GetFontAttribute
	add r4, r0, #0
	mov r0, #0
	mov r1, #3
	bl GetFontAttribute
	add r0, r4, r0
	ldr r4, _021F42F0 ; =0x02206B04
	str r0, [sp, #0x10]
	mov r7, #0
_021F428C:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _021F429C
	ldr r0, [r4]
	cmp r0, #0xb
	beq _021F42E2
	cmp r0, #7
	beq _021F42E2
_021F429C:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r4]
	ldr r3, [r5, #4]
	bl ReadMsgData_ExpandPlaceholders
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r4, #4]
	add r1, r6, #0
	mov r3, #0
	bl ov01_021F4234
	add r3, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x10]
	add r2, r6, #0
	mul r1, r0
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	lsl r1, r0, #2
	ldr r0, _021F42F4 ; =0x02206AD8
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	bl AddTextPrinterParameterized2
	add r0, r6, #0
	bl String_dtor
_021F42E2:
	add r7, r7, #1
	add r4, #0x10
	cmp r7, #9
	blo _021F428C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F42F0: .word 0x02206B04
_021F42F4: .word 0x02206AD8
	thumb_func_end ov01_021F426C

	thumb_func_start ov01_021F42F8
ov01_021F42F8: ; 0x021F42F8
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl AllocFromHeap
	str r0, [r4, #0x10]
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	mov r3, #7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021F4348 ; =0x0000010B
	str r0, [sp, #0x10]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl AddWindowParameterized
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	bl ov01_021F426C
	ldr r0, [r4, #0x10]
	bl CopyWindowToVram
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021F4348: .word 0x0000010B
	thumb_func_end ov01_021F42F8

	thumb_func_start ov01_021F434C
ov01_021F434C: ; 0x021F434C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl RemoveWindow
	ldr r0, [r4, #0x10]
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F434C

	thumb_func_start ov01_021F4360
ov01_021F4360: ; 0x021F4360
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x34
	add r7, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	str r6, [r4]
	str r5, [r4, #4]
	strb r7, [r4, #8]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ScrStrBufs_new
	str r0, [r4, #0x14]
	ldr r2, _021F43CC ; =0x000001A7
	mov r0, #1
	mov r1, #0x1b
	add r3, r5, #0
	bl NewMsgDataFromNarc
	str r0, [r4, #0x18]
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl sub_02002B50
	mov r0, #1
	bl sub_02002B8C
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x1c
	bl ov01_021F3F50
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	bl ov01_021F3F9C
	mov r0, #0x13
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x1c
	bl ov01_021F4044
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F43CC: .word 0x000001A7
	thumb_func_end ov01_021F4360

	thumb_func_start ov01_021F43D0
ov01_021F43D0: ; 0x021F43D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl DestroyMsgData
	ldr r0, [r4, #0x14]
	bl ScrStrBufs_delete
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021F43D0

	thumb_func_start ov01_021F43E8
ov01_021F43E8: ; 0x021F43E8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021F4404
	ldr r0, [r4, #0xc]
	bl sub_020273F0
	cmp r0, #2
	bne _021F43FE
	mov r0, #1
	pop {r4, pc}
_021F43FE:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F43E8

	thumb_func_start ov01_021F4404
ov01_021F4404: ; 0x021F4404
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203B9DC
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov01_021F6830
	ldr r0, [r4, #0x40]
	bl sub_0205C67C
	ldr r1, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, [r4, #0x40]
	bl sub_0205C688
	ldr r1, [r4, #0x20]
	str r0, [r1, #0xc]
	mov r1, #0
	ldr r0, [r4, #0x20]
	mvn r1, r1
	str r1, [r0, #4]
	ldr r0, [r4, #0x40]
	bl sub_0205C654
	ldr r1, [r4, #0x20]
	str r0, [r1, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F4404

	thumb_func_start ov01_021F4440
ov01_021F4440: ; 0x021F4440
	push {r3, lr}
	cmp r0, #0
	bne _021F444C
	bl GF_AssertFail
	pop {r3, pc}
_021F444C:
	ldr r1, [r0, #0x20]
	ldr r1, [r1]
	cmp r1, #2
	beq _021F4460
	cmp r1, #4
	beq _021F4460
	cmp r1, #5
	beq _021F4460
	bl ov01_021F4404
_021F4460:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F4440

	thumb_func_start ov01_021F4464
ov01_021F4464: ; 0x021F4464
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021F44AC ; =ov01_021F4544
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl sub_02007200
	add r6, r0, #0
	bl sub_0201F988
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021F4480:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021F4480
	ldr r0, [r5]
	str r0, [r2]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl GX_GetBankForLCDC
	str r0, [r4]
	add r0, r4, #4
	bl ov01_021F45E4
	ldr r0, _021F44B0 ; =ov01_021F4584
	add r1, r4, #0
	mov r2, #0
	bl sub_0200E374
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F44AC: .word ov01_021F4544
_021F44B0: .word ov01_021F4584
	thumb_func_end ov01_021F4464

	thumb_func_start ov01_021F44B4
ov01_021F44B4: ; 0x021F44B4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl GX_SetGraphicsMode
	ldr r0, [r4]
	ldr r0, [r0]
	bl GX_SetBankForLCDC
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bgt _021F44E4
	bge _021F4508
	cmp r0, #6
	bgt _021F4524
	cmp r0, #2
	blt _021F4524
	beq _021F44EA
	cmp r0, #6
	beq _021F44FA
	b _021F4524
_021F44E4:
	cmp r0, #0xe
	beq _021F4516
	b _021F4524
_021F44EA:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F452A
_021F44FA:
	mov r2, #2
	ldr r1, _021F4538 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F452A
_021F4508:
	mov r2, #2
	ldr r1, _021F453C ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F452A
_021F4516:
	mov r2, #2
	ldr r1, _021F4540 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F452A
_021F4524:
	mov r0, #0
	bl GX_SetBankForLCDC
_021F452A:
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_02007234
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
_021F4538: .word 0x06820000
_021F453C: .word 0x06840000
_021F4540: .word 0x06860000
	thumb_func_end ov01_021F44B4

	thumb_func_start ov01_021F4544
ov01_021F4544: ; 0x021F4544
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021F457C
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021F4580 ; =0x04000064
	str r1, [r0]
_021F457C:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021F4580: .word 0x04000064
	thumb_func_end ov01_021F4544

	thumb_func_start ov01_021F4584
ov01_021F4584: ; 0x021F4584
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021F45A2
	bge _021F45B8
	cmp r0, #6
	bgt _021F45C8
	cmp r0, #2
	blt _021F45C8
	beq _021F45A8
	cmp r0, #6
	beq _021F45B0
	b _021F45C8
_021F45A2:
	cmp r0, #0xe
	beq _021F45C0
	b _021F45C8
_021F45A8:
	mov r0, #1
	bl GX_SetBankForLCDC
	b _021F45CE
_021F45B0:
	mov r0, #2
	bl GX_SetBankForLCDC
	b _021F45CE
_021F45B8:
	mov r0, #4
	bl GX_SetBankForLCDC
	b _021F45CE
_021F45C0:
	mov r0, #8
	bl GX_SetBankForLCDC
	b _021F45CE
_021F45C8:
	mov r0, #0
	bl GX_SetBankForLCDC
_021F45CE:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl GX_SetGraphicsMode
	mov r0, #1
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F4584

	thumb_func_start ov01_021F45E4
ov01_021F45E4: ; 0x021F45E4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0xa
	bgt _021F4600
	bge _021F4624
	cmp r0, #6
	bgt _021F463E
	cmp r0, #2
	blt _021F463E
	beq _021F4606
	cmp r0, #6
	beq _021F4616
	b _021F463E
_021F4600:
	cmp r0, #0xe
	beq _021F4632
	b _021F463E
_021F4606:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F463E
_021F4616:
	mov r2, #2
	ldr r1, _021F466C ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F463E
_021F4624:
	mov r2, #2
	ldr r1, _021F4670 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021F463E
_021F4632:
	mov r2, #2
	ldr r1, _021F4674 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
_021F463E:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021F4678 ; =0x04000064
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F466C: .word 0x06820000
_021F4670: .word 0x06840000
_021F4674: .word 0x06860000
_021F4678: .word 0x04000064
	thumb_func_end ov01_021F45E4

	thumb_func_start ov01_021F467C
ov01_021F467C: ; 0x021F467C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #2
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	mov r0, #8
	mov r1, #0
	bl GX_EngineAToggleLayers
	bl GX_ResetBankForBG
	mov r0, #4
	add r1, r0, #0
	bl AllocFromHeap
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	mov r2, #4
	bl MIi_CpuClear32
	ldr r6, _021F46D8 ; =0x02206B94
	add r3, sp, #0
	mov r2, #5
_021F46BA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F46BA
	ldr r0, [r6]
	str r0, [r3]
	add r0, sp, #0
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	bl ov01_021F4464
	str r0, [r7]
	add r0, r7, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F46D8: .word 0x02206B94
	thumb_func_end ov01_021F467C

	thumb_func_start ov01_021F46DC
ov01_021F46DC: ; 0x021F46DC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r0, [r4]
	mov r2, #0
	add r3, r1, #0
	bl ov01_021F44B4
	mov r0, #4
	bl GX_SetBankForBG
	mov r0, #0xe
	mov r1, #1
	bl GX_EngineAToggleLayers
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	pop {r4, pc}
	thumb_func_end ov01_021F46DC

	thumb_func_start ov01_021F4704
ov01_021F4704: ; 0x021F4704
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	bl _s32_div_f
	add r4, r1, #0
	add r0, r5, #0
	add r1, r6, #0
	bl _s32_div_f
	cmp r4, r1
	bne _021F4722
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F4722:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F4704

	thumb_func_start ov01_021F4728
ov01_021F4728: ; 0x021F4728
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl _s32_div_f
	cmp r4, r0
	bne _021F4746
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F4746:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F4728

	thumb_func_start ov01_021F474C
ov01_021F474C: ; 0x021F474C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x30
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021F4764
	ldr r0, [r1, #0xc]
	bl ov01_021F6614
_021F4764:
	add r1, r5, r4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _021F4772
	ldr r0, [r1, #0x10]
	bl ov01_021FB354
_021F4772:
	mov r1, #1
	add r0, r5, r4
	str r1, [r0, #0x28]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F474C

	thumb_func_start ov01_021F477C
ov01_021F477C: ; 0x021F477C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021F478C
	ldr r0, [r4, #8]
	bl ov01_021F6614
_021F478C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F4798
	ldr r0, [r4, #0xc]
	bl ov01_021FB354
_021F4798:
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov01_021F477C

	thumb_func_start ov01_021F47A0
ov01_021F47A0: ; 0x021F47A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	asr r7, r2, #5
	asr r2, r1, #4
	lsr r2, r2, #0x1b
	add r2, r1, r2
	asr r6, r2, #5
	ldr r2, [sp, #0x18]
	str r3, [sp]
	ldr r4, [sp, #0x1c]
	bl ov01_021F5A28
	ldr r1, [sp, #0x18]
	bl ov01_021F6328
	add r1, r6, #0
	mul r1, r5
	add r1, r7, r1
	cmp r0, #3
	bhi _021F4886
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F47DA: ; jump table
	.short _021F47E2 - _021F47DA - 2 ; case 0
	.short _021F4808 - _021F47DA - 2 ; case 1
	.short _021F4830 - _021F47DA - 2 ; case 2
	.short _021F485A - _021F47DA - 2 ; case 3
_021F47E2:
	sub r2, r1, r5
	str r1, [r4, #0xc]
	sub r0, r2, #1
	str r0, [r4]
	str r2, [r4, #4]
	sub r0, r1, #1
	str r0, [r4, #8]
	sub r0, r7, #1
	bpl _021F47FC
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	str r0, [r4, #8]
_021F47FC:
	sub r0, r6, #1
	bpl _021F488A
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F4808:
	str r1, [r4, #8]
	sub r0, r1, r5
	str r0, [r4]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #0xc]
	add r0, r7, #1
	cmp r0, r5
	blt _021F4824
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
_021F4824:
	sub r0, r6, #1
	bpl _021F488A
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F4830:
	str r1, [r4, #4]
	sub r0, r1, #1
	add r1, r1, r5
	str r0, [r4]
	sub r0, r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	sub r0, r7, #1
	bpl _021F484A
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	str r0, [r4, #8]
_021F484A:
	ldr r0, [sp]
	add r1, r6, #1
	cmp r1, r0
	ble _021F488A
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021F485A:
	str r1, [r4]
	add r0, r1, #1
	str r0, [r4, #4]
	add r0, r1, r5
	str r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r7, #1
	cmp r0, r5
	blt _021F4876
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
_021F4876:
	ldr r0, [sp]
	add r1, r6, #1
	cmp r1, r0
	ble _021F488A
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F4886:
	bl GF_AssertFail
_021F488A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F47A0

	thumb_func_start ov01_021F488C
ov01_021F488C: ; 0x021F488C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r6, #0
_021F4894:
	ldr r1, _021F4964 ; =0x00000A74
	mov r0, #4
	bl AllocFromHeap
	ldr r2, _021F4964 ; =0x00000A74
	mov r1, #0
	add r7, r0, #0
	bl MI_CpuFill8
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021F4968 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021F496C ; =0x00000854
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl ov01_021FACE4
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021F4970 ; =0x00000858
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl ov01_021FACEC
	add r1, r5, #0
	add r1, #0xbc
	ldr r1, [r1]
	mov r0, #4
	bl ov01_021F3638
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F4974 ; =0x00000868
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r1, #0
	add r1, r5, r4
	add r1, #0x90
	mov r2, #2
	ldr r1, [r1]
	lsl r2, r2, #0xa
	bl MIi_CpuClearFast
	ldr r0, [sp]
	cmp r0, #0
	beq _021F4944
	mov r0, #4
	lsl r1, r0, #8
	bl AllocFromHeap
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	mov r1, #0xa7
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0xa7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r2, #1
	mov r1, #0xff
	lsl r2, r2, #0xa
	bl MI_CpuFill8
_021F4944:
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F4978 ; =0x0000086C
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x81
	lsl r2, r2, #2
	bl MIi_CpuClear32
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4894
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4964: .word 0x00000A74
_021F4968: .word 0x00000864
_021F496C: .word 0x00000854
_021F4970: .word 0x00000858
_021F4974: .word 0x00000868
_021F4978: .word 0x0000086C
	thumb_func_end ov01_021F488C

	thumb_func_start ov01_021F497C
ov01_021F497C: ; 0x021F497C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
_021F4982:
	ldr r1, _021F49EC ; =0x00000A74
	mov r0, #4
	bl AllocFromHeap
	ldr r2, _021F49EC ; =0x00000A74
	mov r1, #0
	add r7, r0, #0
	bl MI_CpuFill8
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021F49F0 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021F49F4 ; =0x00000854
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl ov01_021FACE4
	add r1, r5, #0
	add r1, #0xbc
	ldr r1, [r1]
	mov r0, #4
	bl ov01_021F3638
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F49F8 ; =0x00000868
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4982
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F49EC: .word 0x00000A74
_021F49F0: .word 0x00000864
_021F49F4: .word 0x00000854
_021F49F8: .word 0x00000868
	thumb_func_end ov01_021F497C

	thumb_func_start ov01_021F49FC
ov01_021F49FC: ; 0x021F49FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	cmp r6, #0
	beq _021F4A22
	mov r0, #4
	mov r1, #0x10
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0x10
	str r4, [sp]
	bl NARC_ReadFromMember
	b _021F4A38
_021F4A22:
	bl GF_AssertFail
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x41
	add r1, r7, #0
	mov r2, #4
	mov r3, #0
	bl AllocAtEndAndReadFromNarcMemberByIdPair
	add r4, r0, #0
_021F4A38:
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	add r0, r4, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F49FC

	thumb_func_start ov01_021F4A50
ov01_021F4A50: ; 0x021F4A50
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _021F4A72
	ldr r0, _021F4AA4 ; =0x00000808
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F4A6C
	bl GF_AssertFail
_021F4A6C:
	ldr r0, _021F4AA4 ; =0x00000808
	mov r1, #0
	str r1, [r4, r0]
_021F4A72:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	blt _021F4A7E
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	blt _021F4A82
_021F4A7E:
	ldr r0, _021F4AA8 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
_021F4A82:
	add r1, r6, #0
	bl sub_0203B0DC
	add r4, r0, #0
	ldr r0, _021F4AA8 ; =0x0000FFFF
	cmp r4, r0
	beq _021F4A9E
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r7, #0
	bl ov01_021F49FC
_021F4A9E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4AA4: .word 0x00000808
_021F4AA8: .word 0x0000FFFF
	thumb_func_end ov01_021F4A50

	thumb_func_start ov01_021F4AAC
ov01_021F4AAC: ; 0x021F4AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	add r4, r1, #0
	ldr r2, _021F4AE0 ; =0x0000086C
	ldr r0, [r5, r0]
	mov r1, #4
	add r2, r4, r2
	bl NARC_ReadFile
	ldr r2, _021F4AE0 ; =0x0000086C
	ldr r0, [r4, r2]
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _021F4ADC
	mov r0, #1
	lsl r0, r0, #8
	add r2, r2, #4
	ldr r0, [r5, r0]
	add r2, r4, r2
	bl NARC_ReadFile
_021F4ADC:
	pop {r3, r4, r5, pc}
	nop
_021F4AE0: .word 0x0000086C
	thumb_func_end ov01_021F4AAC

	thumb_func_start ov01_021F4AE4
ov01_021F4AE4: ; 0x021F4AE4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	add r1, r2, #0
	add r2, r4, #0
	bl NARC_ReadFile
	mov r0, #0xa7
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F4B1A
	mov r0, #0xa7
	mov r1, #1
	mov r5, #0
	add r6, r4, #0
	lsl r0, r0, #4
	lsl r1, r1, #0xa
_021F4B0C:
	ldrh r3, [r6]
	ldr r2, [r4, r0]
	add r6, r6, #2
	strb r3, [r2, r5]
	add r5, r5, #1
	cmp r5, r1
	blt _021F4B0C
_021F4B1A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F4AE4

	thumb_func_start ov01_021F4B1C
ov01_021F4B1C: ; 0x021F4B1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r7, r1, #0
	str r0, [sp, #0xc]
	add r4, r3, #0
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #8]
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #1
	blo _021F4B56
	cmp r6, #3
	bhi _021F4B56
	cmp r4, #1
	blo _021F4B56
	cmp r4, #2
	bls _021F4B70
_021F4B56:
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [sp, #8]
	ldr r2, _021F4BE4 ; =0x00000868
	ldr r0, [r5, r0]
	add r5, #0xf4
	ldr r1, [r1, #0xc]
	ldr r2, [r7, r2]
	ldr r3, [r5]
	bl ov01_021F3744
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F4B70:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202F57C
	str r0, [sp, #0x14]
	bl sub_0202F620
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl sub_0202F630
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021F4BA6
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Sav2_PlayerData_GetProfileAddr
	bl PlayerProfile_GetTrainerGender
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	b _021F4BAC
_021F4BA6:
	ldr r0, [sp, #0x14]
	bl sub_0202F87C
_021F4BAC:
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	sub r4, r4, #1
	ldr r0, [r5, r0]
	add r5, #0xf4
	sub r3, r6, #1
	lsl r3, r3, #0x10
	ldr r1, _021F4BE4 ; =0x00000868
	lsl r4, r4, #0x10
	ldr r2, [r5]
	lsr r5, r4, #0x10
	lsl r4, r5, #1
	lsr r3, r3, #0x10
	add r4, r5, r4
	add r4, r3, r4
	mov r3, #0x7a
	add r5, r4, #0
	mul r5, r3
	ldr r3, [sp, #0x10]
	ldr r1, [r7, r1]
	add r3, r3, r5
	bl ov01_021F3834
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F4BE4: .word 0x00000868
	thumb_func_end ov01_021F4B1C

	thumb_func_start ov01_021F4BE8
ov01_021F4BE8: ; 0x021F4BE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x28]
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	add r5, r1, #0
	add r0, r0, #1
	str r0, [r4, #0x10]
	add r0, r3, #0
	add r7, r2, #0
	bl ov01_021FB9CC
	ldr r1, _021F4C64 ; =0x00000854
	mov r3, #1
	add r2, r5, r1
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r1, #0x10
	str r0, [sp, #8]
	add r0, r5, r1
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #0x10]
	lsl r3, r3, #8
	ldr r0, [r6, r3]
	lsl r3, r3, #3
	ldr r1, [sp, #0x2c]
	ldr r2, [r7, #4]
	add r3, r5, r3
	bl ov01_021F676C
	str r0, [r4, #8]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021F4C5E
	ldr r0, [r4, #0x14]
	ldr r2, _021F4C68 ; =0x00000858
	add r0, r0, #1
	str r0, [r4, #0x14]
	add r0, r5, r2
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	add r2, r2, #4
	add r3, r4, #0
	ldr r0, [r6, r0]
	ldr r1, [r7, #8]
	ldr r2, [r5, r2]
	add r3, #0x14
	bl ov01_021FB308
	str r0, [r4, #0xc]
_021F4C5E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F4C64: .word 0x00000854
_021F4C68: .word 0x00000858
	thumb_func_end ov01_021F4BE8

	thumb_func_start ov01_021F4C6C
ov01_021F4C6C: ; 0x021F4C6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov01_021FB9CC
	mov r2, #1
	str r0, [sp]
	lsl r2, r2, #8
	ldr r3, _021F4D04 ; =0x00000854
	ldr r0, [r5, r2]
	lsl r2, r2, #3
	ldr r1, [r6, #4]
	add r2, r4, r2
	add r3, r4, r3
	bl ov01_021F67B4
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _021F4C9C
	bl ov01_021EA3B0
_021F4C9C:
	ldr r3, _021F4D08 ; =0x00000864
	mov r0, #1
	ldr r2, [sp, #0x1c]
	str r0, [r4, r3]
	sub r1, r3, #4
	str r2, [r4, r1]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq _021F4CFE
	add r2, r3, #0
	add r0, #0xff
	sub r2, #8
	sub r3, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r6, #8]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov01_021FB270
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	cmp r3, #0
	beq _021F4CD8
	ldr r2, _021F4D0C ; =0x00000868
	add r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [r4, r2]
	blx r3
_021F4CD8:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov01_02204698
	cmp r0, #0
	beq _021F4CFE
	ldr r0, [sp, #0x18]
	bl sub_02054E20
	cmp r0, #0
	bne _021F4CFE
	add r5, #0xf8
	mov r1, #2
	lsl r1, r1, #0xa
	ldr r0, [r5]
	add r1, r4, r1
	bl ov01_02204678
_021F4CFE:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F4D04: .word 0x00000854
_021F4D08: .word 0x00000864
_021F4D0C: .word 0x00000868
	thumb_func_end ov01_021F4C6C

	thumb_func_start ov01_021F4D10
ov01_021F4D10: ; 0x021F4D10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r5, [sp, #0x40]
	lsl r4, r0, #2
	add r0, r5, r4
	ldr r0, [r0, #0x18]
	ldr r6, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #0xc]
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [r5, r4]
	add r0, sp, #0x10
	add r1, r6, #0
	bl ov01_021F4A50
	add r7, r0, #0
	ldr r0, _021F4D80 ; =0x0000FFFF
	cmp r7, r0
	beq _021F4D7C
	ldr r1, [r5, r4]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r5, r4]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl ov01_021F4AE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r5, r4]
	ldr r2, _021F4D84 ; =0x00000868
	ldr r0, [r6, r0]
	ldr r2, [r3, r2]
	add r3, r6, #0
	add r3, #0xf4
	ldr r1, [sp, #0x1c]
	ldr r3, [r3]
	bl ov01_021F3744
	str r5, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [r5, r4]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r2, sp, #0x10
	bl ov01_021F4BE8
_021F4D7C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4D80: .word 0x0000FFFF
_021F4D84: .word 0x00000868
	thumb_func_end ov01_021F4D10

	thumb_func_start ov01_021F4D88
ov01_021F4D88: ; 0x021F4D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x30
	str r1, [sp, #0xc]
	ldr r1, _021F4E10 ; =0x00000828
	lsl r6, r0, #2
	add r1, sp
	ldr r4, [r1, #0x18]
	ldr r5, [r1, #0x14]
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	str r0, [sp]
	ldr r0, [r1, #0x10]
	add r1, r5, #0
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r4, r6]
	add r0, sp, #0x10
	bl ov01_021F4A50
	add r7, r0, #0
	ldr r0, _021F4E14 ; =0x0000FFFF
	cmp r7, r0
	beq _021F4E04
	ldr r1, [r4, r6]
	add r0, r5, #0
	bl ov01_021F4AAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	lsl r1, r1, #3
	add r2, sp, #0x20
	bl NARC_ReadFile
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r4, r6]
	ldr r2, _021F4E18 ; =0x00000868
	ldr r0, [r5, r0]
	ldr r2, [r3, r2]
	add r3, r5, #0
	add r3, #0xf4
	ldr r1, [sp, #0x1c]
	ldr r3, [r3]
	bl ov01_021F3744
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r4, r6]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x10
	bl ov01_021F4BE8
_021F4E04:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4E10: .word 0x00000828
_021F4E14: .word 0x0000FFFF
_021F4E18: .word 0x00000868
	thumb_func_end ov01_021F4D88

	thumb_func_start ov01_021F4E1C
ov01_021F4E1C: ; 0x021F4E1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r5, [sp, #0x40]
	lsl r4, r0, #2
	add r7, r5, #0
	add r7, #0x18
	ldr r0, [r7, r4]
	ldr r6, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #0xc]
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r3, [r5, r4]
	add r0, sp, #0x14
	add r1, r6, #0
	bl ov01_021F4A50
	ldr r1, _021F4E84 ; =0x0000FFFF
	str r0, [sp, #0x10]
	cmp r0, r1
	beq _021F4E80
	ldr r1, [r5, r4]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r5, r4]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	bl ov01_021F4AE4
	ldr r1, [r5, r4]
	ldr r3, [r7, r4]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov01_021F4B1C
	ldr r0, [sp, #0x10]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [r5, r4]
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r2, sp, #0x14
	bl ov01_021F4BE8
_021F4E80:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4E84: .word 0x0000FFFF
	thumb_func_end ov01_021F4E1C

	thumb_func_start ov01_021F4E88
ov01_021F4E88: ; 0x021F4E88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	lsl r5, r1, #2
	ldr r6, [sp, #0x4c]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	add r4, r6, #0
	mul r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	add r4, #0x90
	add r2, r3, #0
	ldr r3, [r4, r5]
	add r0, sp, #0x18
	add r1, r6, #0
	bl ov01_021F4A50
	ldr r1, _021F4F04 ; =0x0000FFFF
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _021F4EFE
	ldr r1, [r4, r5]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r4, r5]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl ov01_021F4AE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r4, r5]
	ldr r2, _021F4F08 ; =0x00000868
	ldr r0, [r6, r0]
	ldr r2, [r3, r2]
	add r3, r6, #0
	add r3, #0xf4
	ldr r1, [sp, #0x24]
	ldr r3, [r3]
	bl ov01_021F3744
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x48]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r4, r5]
	add r0, r6, #0
	add r2, sp, #0x18
	bl ov01_021F4C6C
_021F4EFE:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4F04: .word 0x0000FFFF
_021F4F08: .word 0x00000868
	thumb_func_end ov01_021F4E88

	thumb_func_start ov01_021F4F0C
ov01_021F4F0C: ; 0x021F4F0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x38
	add r7, r0, #0
	ldr r0, _021F4FA4 ; =0x00000830
	str r2, [sp, #0x10]
	add r0, sp
	ldr r5, [r0, #0x1c]
	lsl r4, r1, #2
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	add r6, r5, #0
	mul r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r6, #0x90
	add r2, r3, #0
	ldr r3, [r6, r4]
	add r0, sp, #0x18
	add r1, r5, #0
	bl ov01_021F4A50
	ldr r1, _021F4FA8 ; =0x0000FFFF
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _021F4F96
	ldr r1, [r6, r4]
	add r0, r5, #0
	bl ov01_021F4AAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	lsl r1, r1, #3
	add r2, sp, #0x28
	bl NARC_ReadFile
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r6, r4]
	ldr r2, _021F4FAC ; =0x00000868
	ldr r0, [r5, r0]
	ldr r2, [r3, r2]
	add r3, r5, #0
	add r3, #0xf4
	ldr r1, [sp, #0x24]
	ldr r3, [r3]
	bl ov01_021F3744
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, _021F4FA4 ; =0x00000830
	str r7, [sp, #4]
	add r0, sp
	ldr r0, [r0, #0x18]
	add r2, sp, #0x18
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r6, r4]
	add r0, r5, #0
	bl ov01_021F4C6C
_021F4F96:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4FA4: .word 0x00000830
_021F4FA8: .word 0x0000FFFF
_021F4FAC: .word 0x00000868
	thumb_func_end ov01_021F4F0C

	thumb_func_start ov01_021F4FB0
ov01_021F4FB0: ; 0x021F4FB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	lsl r5, r1, #2
	ldr r6, [sp, #0x4c]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	add r4, r6, #0
	mul r0, r1
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	add r4, #0x90
	add r2, r3, #0
	ldr r3, [r4, r5]
	add r0, sp, #0x18
	add r1, r6, #0
	bl ov01_021F4A50
	ldr r1, _021F5020 ; =0x0000FFFF
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _021F501A
	ldr r1, [r4, r5]
	add r0, r6, #0
	bl ov01_021F4AAC
	ldr r1, [r4, r5]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl ov01_021F4AE4
	ldr r1, [r4, r5]
	add r0, r6, #0
	add r2, sp, #0x18
	add r3, r7, #0
	bl ov01_021F4B1C
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x48]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [r4, r5]
	add r0, r6, #0
	add r2, sp, #0x18
	bl ov01_021F4C6C
_021F501A:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5020: .word 0x0000FFFF
	thumb_func_end ov01_021F4FB0

	thumb_func_start ov01_021F5024
ov01_021F5024: ; 0x021F5024
	ldr r1, [r0]
	cmp r1, #0
	bne _021F5034
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021F5034
	mov r0, #1
	bx lr
_021F5034:
	mov r0, #0
	bx lr
	thumb_func_end ov01_021F5024

	thumb_func_start ov01_021F5038
ov01_021F5038: ; 0x021F5038
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	add r7, r1, #0
	ldrb r1, [r0, #0x14]
	mov r0, #0x30
	str r2, [sp, #8]
	add r5, r1, #0
	mul r5, r0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x2c
	str r0, [sp, #4]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021F5060
	bl GF_AssertFail
_021F5060:
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, r5]
	add r6, r4, r5
	add r0, sp, #0x10
	add r1, r6, #0
	ldrb r2, [r0, #0x18]
	add r1, #0x30
	add r5, r4, #0
	strb r2, [r1]
	add r2, r6, #0
	ldr r1, [sp, #8]
	str r7, [r6, #0x1c]
	str r1, [r6, #0x20]
	ldr r1, [sp]
	add r2, #0x24
	strb r1, [r2]
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r1, #0x25
	strb r0, [r1]
	ldr r1, [sp]
	add r5, #0x90
	lsl r3, r1, #2
	ldr r1, [r5, r3]
	lsl r2, r0, #2
	str r1, [r6, #4]
	ldr r0, [r5, r2]
	add r1, r6, #0
	str r0, [r6, #8]
	add r1, #0x26
	mov r0, #0
	strb r0, [r1]
	str r0, [r6, #0x28]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F50B6
	add r1, r4, #0
	add r1, #0xb4
	mov r0, #0
	str r0, [r1]
_021F50B6:
	mov r1, #0x86
	ldr r0, [r5, r3]
	lsl r1, r1, #4
	str r7, [r0, r1]
	ldr r2, [r5, r2]
	ldr r0, [sp, #8]
	str r0, [r2, r1]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r4, #0xa1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F5038

	thumb_func_start ov01_021F50F0
ov01_021F50F0: ; 0x021F50F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	add r4, r5, #0
	add r2, r5, #4
	mul r0, r1
	add r4, #0xd0
	add r6, r2, r0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021F513A
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _021F513A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021F5198
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	cmp r1, r0
	ble _021F5128
	bl GF_AssertFail
_021F5128:
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021F513C
_021F513A:
	b _021F5276
_021F513C:
	ldr r1, [r4, #0xc]
	add r2, sp, #0x10
	ldr r0, [r1]
	ldr r1, [r1, #8]
	add r3, sp, #0xc
	bl ov01_021F61DC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	bl ov01_021F5F64
	ldr r2, [r4, #0xc]
	add r3, r4, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F517A
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	bne _021F5258
_021F517A:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F518E
	bl GF_AssertFail
_021F518E:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	b _021F5276
_021F5198:
	ldr r7, [r2]
	ldr r3, [r4]
	cmp r3, r7
	beq _021F51AE
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021F51AE
	bl GF_AssertFail
	b _021F5276
_021F51AE:
	cmp r3, r7
	bne _021F51BA
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021F5276
_021F51BA:
	mov r3, #1
	str r3, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r2]
	cmp r0, r1
	beq _021F520E
	cmp r0, r1
	ble _021F51D8
	str r4, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x14]
	mov r0, #3
	strb r0, [r4, #0x1c]
	b _021F51DE
_021F51D8:
	str r2, [r4, #0x10]
	str r4, [r4, #0x14]
	strb r3, [r4, #0x1c]
_021F51DE:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F51F8
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	bne _021F5258
_021F51F8:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F526E
	bl GF_AssertFail
	b _021F526E
_021F520E:
	add r1, r5, #0
	add r1, #0xdc
	add r0, r5, #0
	ldr r1, [r1]
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, [r1, #8]
	cmp r0, r1
	ble _021F5230
	add r0, r4, #0
	add r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	b _021F523C
_021F5230:
	add r2, #8
	add r0, r4, #0
	str r2, [r4, #0x10]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #2
_021F523C:
	strb r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F525A
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	beq _021F525A
_021F5258:
	b _021F54A4
_021F525A:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F526E
	bl GF_AssertFail
_021F526E:
	ldrb r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov01_021F613C
_021F5276:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #3
	bls _021F5282
	b _021F53FA
_021F5282:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F528E: ; jump table
	.short _021F5296 - _021F528E - 2 ; case 0
	.short _021F52EC - _021F528E - 2 ; case 1
	.short _021F53FA - _021F528E - 2 ; case 2
	.short _021F53E6 - _021F528E - 2 ; case 3
_021F5296:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, r6, r0
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #1
	beq _021F52D6
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	add r4, r5, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r4, #0xfc
	add r1, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	ldr r4, [r4]
	add r1, #0xb8
	add r2, #0xc0
	add r3, #0xc4
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	ldr r4, [r4, #4]
	blx r4
_021F52D6:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r6, #0x22
	mov r1, #1
	add r0, r0, #1
	strb r0, [r6]
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	b _021F53FA
_021F52EC:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r6, r0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021F5324
	add r0, r6, #0
	bl ov01_021F477C
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	mov r0, #0
	sub r1, r1, #1
	add r1, r6, r1
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	str r0, [r1]
_021F5324:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	bhi _021F53FA
	add r0, r6, #0
	add r0, #0x10
	bl ov01_021F5024
	cmp r0, #1
	bne _021F53FA
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	blo _021F534A
	mov r0, #1
	str r0, [r6, #0x24]
	b _021F5352
_021F534A:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
_021F5352:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	ldr r0, _021F54A8 ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021F53A8
	sub r0, #0x10
	ldr r0, [r2, r0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021F5392
	add r2, r0, #0
	add r2, #8
	beq _021F5386
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021F5386
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021F5388
_021F5386:
	mov r1, #0
_021F5388:
	cmp r1, #0
	beq _021F5392
	ldr r1, [r1]
	add r4, r0, r1
	b _021F5394
_021F5392:
	mov r4, #0
_021F5394:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	cmp r0, #1
	bne _021F53A8
	add r0, r4, #0
	bl ov01_021EA3B0
_021F53A8:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	cmp r3, #0
	beq _021F53FA
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r2, #0x86
	lsl r2, r2, #4
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	ldr r1, [r4, r2]
	cmp r1, #0
	blt _021F53FA
	add r0, r5, #0
	add r6, r5, #0
	add r0, #0xc4
	add r6, #0xc8
	ldr r0, [r0]
	ldr r6, [r6]
	mul r6, r0
	cmp r1, r6
	bge _021F53FA
	lsr r0, r2, #3
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r4, r2]
	blx r3
	b _021F53FA
_021F53E6:
	add r6, #0x10
	add r0, r6, #0
	bl ov01_021F5024
	cmp r0, #1
	bne _021F53FA
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strb r1, [r0]
_021F53FA:
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F541C
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r0, #2
	add r5, #0xb4
	add sp, #0x14
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021F541C:
	add r0, r5, #0
	bl ov01_021F5D10
	cmp r0, #1
	bne _021F54A4
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	mov r2, #0
	mul r0, r1
	add r0, r5, r0
	str r2, [r0, #0x2c]
	add r0, r5, #0
	bl ov01_021F5D20
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F5472
	mov r1, #0
	b _021F5482
_021F5472:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r1, #2
_021F5482:
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021F54A4
	mov r0, #0
	str r0, [r5, #0x6c]
	add r0, r5, #0
	add r0, #0x70
	ldrb r0, [r0]
	add r1, r5, #0
	bl ov01_021F5D38
	add r0, r5, #0
	bl ov01_021F5CB4
_021F54A4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F54A8: .word 0x00000864
	thumb_func_end ov01_021F50F0

	thumb_func_start ov01_021F54AC
ov01_021F54AC: ; 0x021F54AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x34]
	str r2, [sp, #0x10]
	add r7, r0, #0
	ldr r0, [r4, #0x6c]
	add r5, r3, #0
	str r1, [sp, #0xc]
	ldr r6, [sp, #0x30]
	cmp r0, #1
	bne _021F54C6
	bl GF_AssertFail
_021F54C6:
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0x14
	bl ov01_021F5BBC
	cmp r0, #1
	bne _021F5544
	add r1, sp, #0x14
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov01_021F474C
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #2
	blo _021F5528
	mov r0, #1
	str r0, [r4, #0x6c]
	ldr r0, [sp, #0xc]
	str r7, [r4, #0x74]
	str r0, [r4, #0x78]
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #0x7c
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x7d
	strb r5, [r0]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x90
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	str r0, [r4, #0x64]
	lsl r0, r5, #2
	ldr r3, [r2, r0]
	str r3, [r4, #0x68]
	add r4, #0x70
	strb r6, [r4]
	ldr r3, [r2, r1]
	mov r1, #0x86
	lsl r1, r1, #4
	str r7, [r3, r1]
	ldr r2, [r2, r0]
	ldr r0, [sp, #0xc]
	add sp, #0x18
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021F5528:
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xa1
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl ov01_021F5038
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021F5544:
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xa1
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl ov01_021F5038
	cmp r0, #1
	beq _021F5564
	bl GF_AssertFail
_021F5564:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F54AC

	thumb_func_start ov01_021F5568
ov01_021F5568: ; 0x021F5568
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r6, #0
	lsl r5, r0, #2
	add r4, #0x90
	ldr r1, [r4, r5]
	ldr r0, _021F55E4 ; =0x00000864
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r4, r5]
	sub r0, #8
	ldr r0, [r1, r0]
	bl ov01_021FB2F4
	ldr r1, [r4, r5]
	ldr r0, _021F55E8 ; =0x00000868
	ldr r0, [r1, r0]
	bl ov01_021F36AC
	mov r0, #0
	mov r2, #0x86
	ldr r1, [r4, r5]
	mvn r0, r0
	lsl r2, r2, #4
	str r0, [r1, r2]
	ldr r1, [r4, r5]
	sub r2, #0x60
	bl MIi_CpuClearFast
	ldr r2, [r4, r5]
	ldr r1, _021F55EC ; =0x0000086C
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x81
	lsl r2, r2, #2
	bl MIi_CpuClear32
	add r0, r6, r5
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov01_02204698
	cmp r0, #0
	beq _021F55D8
	add r6, #0xf8
	mov r1, #2
	ldr r2, [r4, r5]
	lsl r1, r1, #0xa
	ldr r0, [r6]
	add r1, r2, r1
	bl ov01_02204688
_021F55D8:
	ldr r1, [r4, r5]
	ldr r0, _021F55F0 ; =0x00000808
	mov r2, #0
	str r2, [r1, r0]
	pop {r4, r5, r6, pc}
	nop
_021F55E4: .word 0x00000864
_021F55E8: .word 0x00000868
_021F55EC: .word 0x0000086C
_021F55F0: .word 0x00000808
	thumb_func_end ov01_021F5568

	thumb_func_start ov01_021F55F4
ov01_021F55F4: ; 0x021F55F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r1, #0
	add r1, r4, #0
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov01_021F5568
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F5568
	add r4, #0x90
	lsl r1, r6, #2
	lsl r5, r5, #2
	lsl r2, r7, #2
	ldr r0, [r4, r1]
	ldr r3, [r4, r5]
	ldr r6, [r4, r2]
	str r6, [r4, r1]
	ldr r1, [sp]
	lsl r6, r1, #2
	ldr r1, [r4, r6]
	str r1, [r4, r5]
	str r0, [r4, r2]
	str r3, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F55F4

	thumb_func_start ov01_021F562C
ov01_021F562C: ; 0x021F562C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r6, r2, #0
	cmp r0, #4
	bls _021F563E
	b _021F5952
_021F563E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F564A: ; jump table
	.short _021F5952 - _021F564A - 2 ; case 0
	.short _021F57C4 - _021F564A - 2 ; case 1
	.short _021F58A0 - _021F564A - 2 ; case 2
	.short _021F56F2 - _021F564A - 2 ; case 3
	.short _021F5654 - _021F564A - 2 ; case 4
_021F5654:
	mov r0, #2
	mov r1, #3
	mov r2, #0
	mov r3, #1
	str r6, [sp]
	bl ov01_021F55F4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #2
	bne _021F569E
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	mov r0, #1
	sub r5, r7, r2
	str r0, [sp, #0x10]
	mov r0, #0
	sub r4, r5, #1
	str r0, [sp, #0xc]
	cmp r5, #0
	bge _021F5688
	sub r5, r0, #1
	add r4, r5, #0
	b _021F56D4
_021F5688:
	cmp r4, #0
	blt _021F5698
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F56D4
_021F5698:
	mov r4, #0
	mvn r4, r4
	b _021F56D4
_021F569E:
	cmp r0, #3
	bne _021F56D0
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	mov r0, #0
	sub r5, r7, r2
	str r0, [sp, #0x10]
	mov r0, #1
	add r4, r5, #1
	str r0, [sp, #0xc]
	cmp r5, #0
	bge _021F56BE
	sub r5, r0, #2
	add r4, r5, #0
	b _021F56D4
_021F56BE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F56D4
	mov r4, #0
	mvn r4, r4
	b _021F56D4
_021F56D0:
	bl GF_AssertFail
_021F56D4:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov01_021F54AC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F56F2:
	mov r0, #1
	mov r1, #3
	mov r2, #0
	mov r3, #2
	str r6, [sp]
	bl ov01_021F55F4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	bne _021F5750
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	sub r5, r7, #1
	sub r0, r7, r2
	sub r4, r0, #1
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	blt _021F572E
	add r0, r5, #0
	add r1, r7, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F5734
_021F572E:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021F5734:
	cmp r4, #0
	blt _021F574A
	add r2, r6, #0
	add r2, #0xc4
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4704
	cmp r0, #0
	bne _021F57A6
_021F574A:
	mov r4, #0
	mvn r4, r4
	b _021F57A6
_021F5750:
	cmp r0, #3
	bne _021F57A2
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	sub r5, r7, #1
	add r0, r7, r2
	sub r4, r0, #1
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0xc]
	cmp r5, #0
	blt _021F5778
	add r0, r5, #0
	add r1, r7, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F577E
_021F5778:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021F577E:
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r4
	ble _021F579C
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4704
	cmp r0, #0
	bne _021F57A6
_021F579C:
	mov r4, #0
	mvn r4, r4
	b _021F57A6
_021F57A2:
	bl GF_AssertFail
_021F57A6:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov01_021F54AC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F57C4:
	mov r0, #0
	mov r1, #2
	mov r2, #1
	mov r3, #3
	str r6, [sp]
	bl ov01_021F55F4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F5832
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	add r5, r7, #1
	sub r0, r7, r2
	add r4, r0, #1
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r5
	ble _021F5808
	add r0, r5, #0
	add r1, r7, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F580E
_021F5808:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021F580E:
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r4
	ble _021F582C
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4704
	cmp r0, #0
	bne _021F5882
_021F582C:
	mov r4, #0
	mvn r4, r4
	b _021F5882
_021F5832:
	cmp r0, #2
	bne _021F5882
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	add r5, r7, #1
	add r0, r7, r2
	add r4, r0, #1
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r5
	ble _021F5862
	add r0, r5, #0
	add r1, r7, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F5868
_021F5862:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021F5868:
	cmp r4, #0
	blt _021F587E
	add r2, r6, #0
	add r2, #0xc4
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4704
	cmp r0, #0
	bne _021F5882
_021F587E:
	mov r4, #0
	mvn r4, r4
_021F5882:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov01_021F54AC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F58A0:
	mov r0, #0
	mov r1, #1
	mov r2, #2
	mov r3, #3
	str r6, [sp]
	bl ov01_021F55F4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F58F0
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r5, r7, r2
	mul r0, r2
	sub r4, r5, #1
	cmp r0, r5
	bgt _021F58DE
	ldr r0, [sp, #0xc]
	sub r5, r0, #3
	add r4, r5, #0
	b _021F5934
_021F58DE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F5934
	mov r4, #0
	mvn r4, r4
	b _021F5934
_021F58F0:
	cmp r0, #1
	bne _021F5930
	add r0, r6, #0
	add r0, #0xc4
	ldr r2, [r0]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r5, r7, r2
	mul r0, r2
	add r4, r5, #1
	cmp r0, r5
	bgt _021F591A
	ldr r0, [sp, #0xc]
	sub r5, r0, #4
	add r4, r5, #0
	b _021F5934
_021F591A:
	cmp r0, r4
	ble _021F592A
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F5934
_021F592A:
	mov r4, #0
	mvn r4, r4
	b _021F5934
_021F5930:
	bl GF_AssertFail
_021F5934:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl ov01_021F54AC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021F5952:
	bl GF_AssertFail
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F562C

	thumb_func_start ov01_021F595C
ov01_021F595C: ; 0x021F595C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r1, #0
	add r4, r5, #0
	lsl r6, r0, #2
	mov r0, #0x86
	add r3, sp, #0x38
	mov r1, #0
	str r1, [r3]
	str r1, [r3, #4]
	str r2, [sp, #4]
	add r2, r5, #0
	add r4, #0x90
	str r1, [r3, #8]
	add r2, #0xc0
	ldr r1, [r4, r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov01_021F5FB8
	ldr r1, [r4, r6]
	ldr r0, _021F59F4 ; =0x00000864
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021F59C6
	ldr r3, _021F59F8 ; =0x02206BD8
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021F59FC ; =0x02206BE4
	str r0, [r2]
	add r2, sp, #8
	mov r7, #4
_021F59A8:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021F59A8
	ldr r0, [r3]
	add r3, sp, #0x2c
	str r0, [r2]
	mov r0, #2
	ldr r1, [r4, r6]
	lsl r0, r0, #0xa
	add r0, r1, r0
	add r1, sp, #0x38
	add r2, sp, #8
	bl sub_0201F554
_021F59C6:
	ldr r4, [r4, r6]
	ldr r0, _021F59F4 ; =0x00000864
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021F59EE
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	add r2, r0, #0
	ldr r0, _021F5A00 ; =0x00000868
	add r5, #0xb8
	ldr r0, [r4, r0]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r1, [r5]
	add r0, sp, #0x38
	bl ov01_021F3A3C
_021F59EE:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021F59F4: .word 0x00000864
_021F59F8: .word 0x02206BD8
_021F59FC: .word 0x02206BE4
_021F5A00: .word 0x00000868
	thumb_func_end ov01_021F595C

	thumb_func_start ov01_021F5A04
ov01_021F5A04: ; 0x021F5A04
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r1, r7, #0
	bl _u32_div_f
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl _u32_div_f
	lsr r0, r0, #5
	add r1, r0, #0
	lsr r2, r4, #5
	mul r1, r5
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F5A04

	thumb_func_start ov01_021F5A28
ov01_021F5A28: ; 0x021F5A28
	mul r2, r1
	add r0, r0, r2
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F5A28

	thumb_func_start ov01_021F5A30
ov01_021F5A30: ; 0x021F5A30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r1, r7, #0
	bl _u32_div_f
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl _u32_div_f
	lsr r0, r0, #5
	add r1, r0, #0
	lsr r2, r4, #5
	mul r1, r5
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F5A30

	thumb_func_start ov01_021F5A54
ov01_021F5A54: ; 0x021F5A54
	push {r3, lr}
	cmp r0, #0
	bne _021F5A5E
	mov r0, #3
	pop {r3, pc}
_021F5A5E:
	cmp r0, #1
	bne _021F5A66
	mov r0, #2
	pop {r3, pc}
_021F5A66:
	cmp r0, #2
	bne _021F5A6E
	mov r0, #1
	pop {r3, pc}
_021F5A6E:
	cmp r0, #3
	bne _021F5A76
	mov r0, #0
	pop {r3, pc}
_021F5A76:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F5A54

	thumb_func_start ov01_021F5A80
ov01_021F5A80: ; 0x021F5A80
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #4
	bhi _021F5AE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5A96: ; jump table
	.short _021F5AE0 - _021F5A96 - 2 ; case 0
	.short _021F5AA0 - _021F5A96 - 2 ; case 1
	.short _021F5AB6 - _021F5A96 - 2 ; case 2
	.short _021F5AC4 - _021F5A96 - 2 ; case 3
	.short _021F5AD8 - _021F5A96 - 2 ; case 4
_021F5AA0:
	add r0, r4, #0
	add r1, r5, #0
	bl _s32_div_f
	add r0, r1, #1
	cmp r0, r5
	blt _021F5AB2
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F5AB2:
	add r0, r4, #1
	pop {r3, r4, r5, pc}
_021F5AB6:
	lsl r1, r1, #5
	add r0, r4, r5
	mul r1, r5
	cmp r0, r1
	blt _021F5AE6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F5AC4:
	add r0, r4, #0
	add r1, r5, #0
	bl _s32_div_f
	sub r0, r1, #1
	bpl _021F5AD4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F5AD4:
	sub r0, r4, #1
	pop {r3, r4, r5, pc}
_021F5AD8:
	sub r0, r4, r5
	bpl _021F5AE6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021F5AE0:
	bl GF_AssertFail
	mov r0, #0
_021F5AE6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F5A80

	thumb_func_start ov01_021F5AE8
ov01_021F5AE8: ; 0x021F5AE8
	cmp r0, #4
	bhi _021F5B20
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021F5AF8: ; jump table
	.short _021F5B20 - _021F5AF8 - 2 ; case 0
	.short _021F5B1A - _021F5AF8 - 2 ; case 1
	.short _021F5B0A - _021F5AF8 - 2 ; case 2
	.short _021F5B12 - _021F5AF8 - 2 ; case 3
	.short _021F5B02 - _021F5AF8 - 2 ; case 4
_021F5B02:
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021F5B0A:
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021F5B12:
	sub r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021F5B1A:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021F5B20:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F5AE8

	thumb_func_start ov01_021F5B24
ov01_021F5B24: ; 0x021F5B24
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov01_021F5AE8
	cmp r5, r0
	bge _021F5B56
	sub r0, r0, r5
	cmp r0, #1
	bne _021F5B42
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021F5B82
_021F5B42:
	cmp r0, #2
	bne _021F5B50
	ldrb r0, [r4]
	sub r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021F5B82
_021F5B50:
	bl GF_AssertFail
	b _021F5B82
_021F5B56:
	cmp r5, r0
	ble _021F5B7E
	sub r0, r5, r0
	cmp r0, #1
	bne _021F5B6A
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021F5B82
_021F5B6A:
	cmp r0, #2
	bne _021F5B78
	ldrb r0, [r4]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021F5B82
_021F5B78:
	bl GF_AssertFail
	b _021F5B82
_021F5B7E:
	bl GF_AssertFail
_021F5B82:
	strb r6, [r4]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F5B24

	thumb_func_start ov01_021F5B88
ov01_021F5B88: ; 0x021F5B88
	push {r3, lr}
	cmp r0, #4
	bhi _021F5BB4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5B9A: ; jump table
	.short _021F5BB4 - _021F5B9A - 2 ; case 0
	.short _021F5BAC - _021F5B9A - 2 ; case 1
	.short _021F5BA8 - _021F5B9A - 2 ; case 2
	.short _021F5BB0 - _021F5B9A - 2 ; case 3
	.short _021F5BA4 - _021F5B9A - 2 ; case 4
_021F5BA4:
	mov r0, #2
	pop {r3, pc}
_021F5BA8:
	mov r0, #4
	pop {r3, pc}
_021F5BAC:
	mov r0, #3
	pop {r3, pc}
_021F5BB0:
	mov r0, #1
	pop {r3, pc}
_021F5BB4:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov01_021F5B88

	thumb_func_start ov01_021F5BBC
ov01_021F5BBC: ; 0x021F5BBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
_021F5BC6:
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _021F5BE2
	add r0, r6, #0
	bl ov01_021F5B88
	add r1, r5, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, r0
	bne _021F5BE2
	strb r4, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F5BE2:
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #2
	blt _021F5BC6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F5BBC

	thumb_func_start ov01_021F5BF0
ov01_021F5BF0: ; 0x021F5BF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xa1
	ldrb r1, [r0]
	mov r0, #0x30
	add r4, r5, #0
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x2c]
	add r4, #0x64
	cmp r0, #0
	beq _021F5C0C
	bl GF_AssertFail
_021F5C0C:
	add r1, r5, #0
	add r1, #0xa1
	ldrb r2, [r1]
	mov r1, #0x30
	mov r0, #1
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	add r3, r5, #0
	str r0, [r2, #0x2c]
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0xc]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x30
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0x10]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #0x1c]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0x14]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #0x20]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0x18]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x24
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0x19]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x25
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #4]
	add r2, r5, #0
	add r2, #0xa1
	ldrb r2, [r2]
	ldr r4, [r4, #4]
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	add r3, r5, #0
	str r4, [r2, #8]
	add r3, #0xa1
	ldrb r3, [r3]
	mov r2, #0
	add r4, r3, #0
	mul r4, r1
	add r3, r5, r4
	add r3, #0x26
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	mul r1, r3
	add r1, r5, r1
	str r2, [r1, #0x28]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F5BF0

	thumb_func_start ov01_021F5CB4
ov01_021F5CB4: ; 0x021F5CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, r5, #0
	add r4, #0x64
	cmp r0, #2
	blo _021F5CC8
	bl GF_AssertFail
_021F5CC8:
	add r0, r5, #0
	bl ov01_021F5BF0
	cmp r0, #1
	beq _021F5CD6
	bl GF_AssertFail
_021F5CD6:
	mov r0, #0x86
	ldr r2, [r4, #0x10]
	ldr r1, [r4]
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	str r2, [r1, r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r5, #0xa1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F5CB4

	thumb_func_start ov01_021F5D10
ov01_021F5D10: ; 0x021F5D10
	add r1, r0, #0
	add r1, #0xa2
	ldrb r2, [r1]
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end ov01_021F5D10

	thumb_func_start ov01_021F5D20
ov01_021F5D20: ; 0x021F5D20
	mov r3, #0
	add r2, r3, #0
_021F5D24:
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0x80
	str r2, [r1]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _021F5D24
	bx lr
	thumb_func_end ov01_021F5D20

	thumb_func_start ov01_021F5D38
ov01_021F5D38: ; 0x021F5D38
	cmp r0, #4
	bhi _021F5D88
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5D48: ; jump table
	.short _021F5D88 - _021F5D48 - 2 ; case 0
	.short _021F5D60 - _021F5D48 - 2 ; case 1
	.short _021F5D6E - _021F5D48 - 2 ; case 2
	.short _021F5D7C - _021F5D48 - 2 ; case 3
	.short _021F5D52 - _021F5D48 - 2 ; case 4
_021F5D52:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x88
	str r2, [r0]
	add r1, #0x8c
	str r2, [r1]
	bx lr
_021F5D60:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x80
	str r2, [r0]
	add r1, #0x88
	str r2, [r1]
	bx lr
_021F5D6E:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x80
	str r2, [r0]
	add r1, #0x84
	str r2, [r1]
	bx lr
_021F5D7C:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x84
	str r2, [r0]
	add r1, #0x8c
	str r2, [r1]
_021F5D88:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F5D38

	thumb_func_start ov01_021F5D8C
ov01_021F5D8C: ; 0x021F5D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r1, #0
	add r7, r2, #0
	bl ov01_021F488C
	add r2, r5, #0
	add r3, r5, #0
	str r4, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r2, #0xc4
	add r3, #0xc8
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r7, #0
	bl ov01_021F47A0
	mov r4, #0
	add r7, sp, #0x10
_021F5DBC:
	lsl r6, r4, #2
	bl ov01_021FB254
	add r1, r5, r6
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F5E1C ; =0x0000085C
	str r0, [r2, r1]
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F5E1C ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov01_021FB360
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb8
	add r3, #0xc0
	ldr r0, [r7, r6]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	bl ov01_021F4E88
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F5DBC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5E1C: .word 0x0000085C
	thumb_func_end ov01_021F5D8C

	thumb_func_start ov01_021F5E20
ov01_021F5E20: ; 0x021F5E20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov01_021F497C
	add r2, r5, #0
	add r3, r5, #0
	str r4, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r2, #0xc4
	add r3, #0xc8
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r7, #0
	bl ov01_021F47A0
	mov r4, #0
	add r7, r4, #0
_021F5E4E:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F5E9C ; =0x0000085C
	str r7, [r1, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r0, sp, #0x10
	add r2, #0xb8
	add r3, #0xc0
	ldr r0, [r0, r6]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	bl ov01_021F4F0C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F5E4E
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5E9C: .word 0x0000085C
	thumb_func_end ov01_021F5E20

	thumb_func_start ov01_021F5EA0
ov01_021F5EA0: ; 0x021F5EA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	mov r1, #1
	add r7, r2, #0
	bl ov01_021F488C
	add r2, r5, #0
	add r3, r5, #0
	str r4, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r2, #0xc4
	add r3, #0xc8
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r7, #0
	bl ov01_021F47A0
	mov r4, #0
	add r7, sp, #0x10
_021F5ED0:
	lsl r6, r4, #2
	bl ov01_021FB254
	add r1, r5, r6
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F5F30 ; =0x0000085C
	str r0, [r2, r1]
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F5F30 ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov01_021FB360
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb8
	add r3, #0xc0
	ldr r0, [r7, r6]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	bl ov01_021F4FB0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F5ED0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5F30: .word 0x0000085C
	thumb_func_end ov01_021F5EA0

	thumb_func_start ov01_021F5F34
ov01_021F5F34: ; 0x021F5F34
	push {r4, lr}
	add r1, r0, #0
	mov r3, #0
	add r1, #0xa2
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xa1
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xa0
	strb r3, [r1]
	add r4, r0, #0
	add r2, r3, #0
	mov r1, #1
_021F5F50:
	str r2, [r4, #0x2c]
	str r1, [r4, #0x28]
	add r3, r3, #1
	add r4, #0x30
	cmp r3, #2
	blt _021F5F50
	bl ov01_021F5D20
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F5F34

	thumb_func_start ov01_021F5F64
ov01_021F5F64: ; 0x021F5F64
	push {r4, lr}
	add r4, r2, #0
	add r2, #0xcc
	ldr r2, [r2]
	bl ov01_021F5A28
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa8
	add r1, #0xcc
	ldr r0, [r0]
	ldr r1, [r1]
	bl ov01_021F6328
	add r1, r4, #0
	add r1, #0xad
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xad
	ldrb r0, [r0]
	bl ov01_021F5A54
	add r1, r4, #0
	add r1, #0xac
	strb r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0xa8
	add r1, #0xc4
	add r2, #0xcc
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov01_021F5A30
	add r4, #0xa4
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov01_021F5F64

	thumb_func_start ov01_021F5FB8
ov01_021F5FB8: ; 0x021F5FB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	mov r2, #1
	add r5, r3, #0
	lsl r2, r2, #0x14
	str r2, [r5]
	str r2, [r5, #8]
	mov r2, #0
	add r4, r0, #0
	mvn r2, r2
	str r1, [sp, #4]
	cmp r4, r2
	beq _021F601A
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	bl sub_0203B004
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0203B05C
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, r6, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_0203B060
	lsl r0, r0, #0xf
	str r0, [r5, #4]
	ldr r1, [r5]
	lsl r0, r6, #0x15
	add r0, r1, r0
	str r0, [r5]
	ldr r1, [r5, #8]
	lsl r0, r4, #0x15
	add r0, r1, r0
	str r0, [r5, #8]
_021F601A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F5FB8

	thumb_func_start ov01_021F6020
ov01_021F6020: ; 0x021F6020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x11
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	str r2, [sp]
	str r3, [sp, #4]
	bl AllocFromHeap
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021F6054
	add r0, r4, #0
	ldr r1, _021F610C ; =0x02206BC0
	add r0, #0xfc
	str r1, [r0]
	mov r6, #1
	b _021F6078
_021F6054:
	cmp r0, #1
	bne _021F6064
	add r0, r4, #0
	ldr r1, _021F6110 ; =0x02206BD0
	add r0, #0xfc
	str r1, [r0]
	mov r6, #0
	b _021F6078
_021F6064:
	cmp r0, #2
	bne _021F6074
	add r0, r4, #0
	ldr r1, _021F6114 ; =0x02206BC8
	add r0, #0xfc
	str r1, [r0]
	mov r6, #1
	b _021F6078
_021F6074:
	bl GF_AssertFail
_021F6078:
	mov r0, #0x41
	ldr r1, [sp, #0x28]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r6, #0
	bl ov01_021FAC44
	str r0, [r4]
	add r0, r4, #0
	add r0, #0xb8
	str r7, [r0]
	add r0, r4, #0
	add r0, #0xc0
	str r5, [r0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xbc
	str r0, [r1]
	add r0, r5, #0
	bl sub_0203B004
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r5, #0
	bl sub_0203B014
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	lsl r1, r0, #5
	add r0, r4, #0
	add r0, #0xcc
	str r1, [r0]
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0xf4
	str r0, [r1]
	add r0, r4, #0
	ldr r1, [sp, #0x20]
	add r0, #0xf8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf0
	str r1, [r0]
	add r0, r4, #0
	bl ov01_021F5F34
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x41
	mov r1, #4
	bl NARC_ctor
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r4, r1]
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F610C: .word 0x02206BC0
_021F6110: .word 0x02206BD0
_021F6114: .word 0x02206BC8
	thumb_func_end ov01_021F6020

	thumb_func_start ov01_021F6118
ov01_021F6118: ; 0x021F6118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	add r6, #0xfc
	add r3, r5, #0
	ldr r6, [r6]
	add r3, #0xcc
	ldr r3, [r3]
	ldr r6, [r6]
	add r4, r1, #0
	add r7, r2, #0
	blx r6
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov01_021F5F64
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F6118

	thumb_func_start ov01_021F613C
ov01_021F613C: ; 0x021F613C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r5, #0
	add r3, r5, #0
	add r1, #0xc8
	add r2, #0xcc
	add r3, #0xa8
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r6, r0, #0
	bl ov01_021F5A80
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xc4
	add r2, #0xcc
	ldr r1, [r1]
	ldr r2, [r2]
	add r7, r0, #0
	bl ov01_021F5A04
	add r1, r5, #0
	add r1, #0xcc
	add r4, r0, #0
	ldr r1, [r1]
	add r0, r7, #0
	bl ov01_021F6328
	add r1, r5, #0
	add r1, #0xa4
	ldr r1, [r1]
	cmp r1, r4
	bne _021F61A4
	add r1, r5, #0
	add r1, #0xad
	ldrb r1, [r1]
	cmp r1, r0
	beq _021F61A4
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021F562C
	add r1, r5, #0
	add r1, #0xad
	add r5, #0xac
	ldrb r1, [r1]
	add r0, r6, #0
	add r2, r5, #0
	bl ov01_021F5B24
_021F61A4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F613C

	thumb_func_start ov01_021F61A8
ov01_021F61A8: ; 0x021F61A8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	sub r7, r4, #1
_021F61B2:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _021F61CE
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_021F595C
_021F61CE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021F61B2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F61A8

	thumb_func_start ov01_021F61DC
ov01_021F61DC: ; 0x021F61DC
	push {r3, r4}
	asr r4, r0, #0xf
	lsr r4, r4, #0x10
	add r4, r0, r4
	asr r0, r4, #0x10
	str r0, [r2]
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F61DC

	thumb_func_start ov01_021F61F8
ov01_021F61F8: ; 0x021F61F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0201A430
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	mov r4, #0
	add r6, r5, #4
	mov r7, #0x30
_021F620E:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ov01_021F477C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F620E
	mov r6, #0
	add r7, r6, #0
_021F6226:
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021F62A4 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F62A8 ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov01_021FB2E8
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F62AC ; =0x00000868
	ldr r0, [r1, r0]
	bl ov01_021F3660
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0xa7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F6272
	bl FreeToHeap
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	mov r0, #0xa7
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r2, r0]
_021F6272:
	add r0, r5, r4
	add r0, #0x90
	ldr r0, [r0]
	bl FreeToHeap
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F6226
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	str r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xb0
	str r1, [r0]
	add r5, #0xf0
	str r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F62A4: .word 0x00000864
_021F62A8: .word 0x0000085C
_021F62AC: .word 0x00000868
	thumb_func_end ov01_021F61F8

	thumb_func_start ov01_021F62B0
ov01_021F62B0: ; 0x021F62B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl NARC_dtor
	ldr r0, [r4]
	bl ov01_021FACB4
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021F62B0

	thumb_func_start ov01_021F62CC
ov01_021F62CC: ; 0x021F62CC
	add r1, r0, #0
	add r1, #0xb0
	ldr r1, [r1]
	cmp r1, #1
	bne _021F62E2
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F62E2
	mov r0, #1
	bx lr
_021F62E2:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F62CC

	thumb_func_start ov01_021F62E8
ov01_021F62E8: ; 0x021F62E8
	push {r4, r5}
	add r5, r0, #0
	add r4, r1, #0
	add r2, r4, #0
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0xd0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r4, #0xdc
	str r0, [r2]
	str r5, [r4]
	pop {r4, r5}
	bx lr
	thumb_func_end ov01_021F62E8

	thumb_func_start ov01_021F6304
ov01_021F6304: ; 0x021F6304
	mov r1, #0
	add r0, #0xdc
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021F6304

	thumb_func_start ov01_021F630C
ov01_021F630C: ; 0x021F630C
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F631C ; =0x00000868
	ldr r0, [r1, r0]
	str r0, [r2]
	bx lr
	.balign 4, 0
_021F631C: .word 0x00000868
	thumb_func_end ov01_021F630C

	thumb_func_start ov01_021F6320
ov01_021F6320: ; 0x021F6320
	add r0, #0xac
	ldrb r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F6320

	thumb_func_start ov01_021F6328
ov01_021F6328: ; 0x021F6328
	push {r4, lr}
	add r4, r0, #0
	bl _u32_div_f
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	mov r0, #0x1f
	and r0, r4
	add r1, r2, r1
	cmp r0, #0x10
	bge _021F6350
	cmp r1, #0x10
	bge _021F634C
	mov r0, #0
	pop {r4, pc}
_021F634C:
	mov r0, #2
	pop {r4, pc}
_021F6350:
	cmp r1, #0x10
	bge _021F6358
	mov r0, #1
	pop {r4, pc}
_021F6358:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov01_021F6328

	thumb_func_start ov01_021F635C
ov01_021F635C: ; 0x021F635C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	cmp r0, r5
	bne _021F6372
	add r4, #0xac
	ldrb r0, [r4]
	pop {r3, r4, r5, pc}
_021F6372:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021F637E
	bl GF_AssertFail
_021F637E:
	add r0, r4, #0
	add r0, #0xac
	ldrb r1, [r0]
	cmp r1, #3
	bls _021F638A
	b _021F6528
_021F638A:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F6396: ; jump table
	.short _021F639E - _021F6396 - 2 ; case 0
	.short _021F6400 - _021F6396 - 2 ; case 1
	.short _021F6464 - _021F6396 - 2 ; case 2
	.short _021F64C6 - _021F6396 - 2 ; case 3
_021F639E:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc4
	ldr r2, [r2]
	sub r3, r5, r0
	cmp r2, r3
	bne _021F63B8
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F63B8:
	cmp r3, #1
	bne _021F63D2
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	beq _021F63D2
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F63D2:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa4
	add r1, #0xc4
	ldr r2, [r1]
	ldr r0, [r0]
	add r3, r2, #1
	sub r1, r5, r0
	cmp r3, r1
	bne _021F63FC
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F63FC
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F63FC:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021F6400:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc4
	ldr r2, [r2]
	sub r3, r5, r0
	cmp r2, r3
	bne _021F641A
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F641A:
	sub r1, r0, r5
	cmp r1, #1
	bne _021F6436
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	beq _021F6436
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F6436:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa4
	add r1, #0xc4
	ldr r2, [r1]
	ldr r0, [r0]
	sub r3, r2, #1
	sub r1, r5, r0
	cmp r3, r1
	bne _021F6460
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F6460
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F6460:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021F6464:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc4
	ldr r2, [r2]
	sub r3, r0, r5
	cmp r2, r3
	bne _021F647E
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F647E:
	sub r1, r2, #1
	cmp r1, r3
	bne _021F649A
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F649A
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F649A:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	sub r1, r5, r0
	cmp r1, #1
	bne _021F64C2
	add r2, r4, #0
	add r2, #0xc4
	ldr r2, [r2]
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	beq _021F64C2
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F64C2:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021F64C6:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc4
	ldr r2, [r2]
	sub r3, r0, r5
	cmp r2, r3
	bne _021F64E0
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F64E0:
	add r1, r2, #1
	cmp r1, r3
	bne _021F64FC
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	bne _021F64FC
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F64FC:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	sub r1, r0, r5
	cmp r1, #1
	bne _021F6524
	add r2, r4, #0
	add r2, #0xc4
	ldr r2, [r2]
	add r1, r5, #0
	bl ov01_021F4728
	cmp r0, #0
	beq _021F6524
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021F6524:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021F6528:
	mov r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F635C

	thumb_func_start ov01_021F652C
ov01_021F652C: ; 0x021F652C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blo _021F653A
	bl GF_AssertFail
_021F653A:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F652C

	thumb_func_start ov01_021F654C
ov01_021F654C: ; 0x021F654C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	asr r2, r6, #4
	add r5, r0, #0
	lsr r2, r2, #0x1b
	add r2, r6, r2
	add r4, r1, #0
	add r0, #0xc4
	ldr r1, [r0]
	asr r0, r4, #4
	lsr r0, r0, #0x1b
	add r0, r4, r0
	asr r2, r2, #5
	str r3, [sp]
	add r3, r2, #0
	asr r0, r0, #5
	mul r3, r1
	add r7, r0, r3
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r1
	cmp r7, r0
	blo _021F658A
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	beq _021F658A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F658A:
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r1
	cmp r7, r0
	blo _021F65A0
	bl GF_AssertFail
_021F65A0:
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r0]
	add r0, r6, #0
	mul r0, r1
	add r0, r4, r0
	bl ov01_021F6328
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl ov01_021F635C
	ldr r1, [sp]
	cmp r1, #0
	beq _021F65C2
	strb r0, [r1]
_021F65C2:
	cmp r0, #3
	bls _021F65CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F65CA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F654C

	thumb_func_start ov01_021F65D0
ov01_021F65D0: ; 0x021F65D0
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F65E0 ; =0x0000085C
	ldr r0, [r1, r0]
	bx lr
	nop
_021F65E0: .word 0x0000085C
	thumb_func_end ov01_021F65D0

	thumb_func_start ov01_021F65E4
ov01_021F65E4: ; 0x021F65E4
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F65E4

	thumb_func_start ov01_021F65F0
ov01_021F65F0: ; 0x021F65F0
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0xa7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov01_021F65F0

	thumb_func_start ov01_021F6600
ov01_021F6600: ; 0x021F6600
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F6610 ; =0x0000086C
	add r0, r1, r0
	bx lr
	nop
_021F6610: .word 0x0000086C
	thumb_func_end ov01_021F6600

	thumb_func_start ov01_021F6614
ov01_021F6614: ; 0x021F6614
	push {r3, lr}
	bl sub_0201F988
	mov r1, #1
	str r1, [r0, #0x20]
	pop {r3, pc}
	thumb_func_end ov01_021F6614

	thumb_func_start ov01_021F6620
ov01_021F6620: ; 0x021F6620
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021F6630
	mov r0, #5
	strb r0, [r4, #0x18]
_021F6630:
	ldrb r0, [r4, #0x18]
	cmp r0, #5
	bls _021F6638
	b _021F676A
_021F6638:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F6644: ; jump table
	.short _021F6650 - _021F6644 - 2 ; case 0
	.short _021F6680 - _021F6644 - 2 ; case 1
	.short _021F66B6 - _021F6644 - 2 ; case 2
	.short _021F66D4 - _021F6644 - 2 ; case 3
	.short _021F676A - _021F6644 - 2 ; case 4
	.short _021F6758 - _021F6644 - 2 ; case 5
_021F6650:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #0xe
	ldr r5, [r4, #8]
	lsl r0, r0, #0xc
	cmp r5, r0
	bgt _021F6662
	mov r0, #2
	b _021F6666
_021F6662:
	add r5, r0, #0
	mov r0, #1
_021F6666:
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, [r4]
	ldr r3, [r2]
	ldr r2, [r4, #0x2c]
	add r1, r5, #0
	add r2, r3, r2
	bl NARC_ReadFile
	ldr r0, [r4, #0x2c]
	add r0, r0, r5
	str r0, [r4, #0x2c]
	pop {r4, r5, r6, pc}
_021F6680:
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	sub r5, r0, r2
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	ble _021F6694
	add r5, r0, #0
	mov r6, #0
	b _021F6696
_021F6694:
	mov r6, #1
_021F6696:
	ldr r3, [r4, #0x10]
	ldr r0, [r4]
	ldr r3, [r3]
	add r1, r5, #0
	add r2, r3, r2
	bl NARC_ReadFile
	cmp r6, #0
	beq _021F66AE
	mov r0, #2
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021F66AE:
	ldr r0, [r4, #0x2c]
	add r0, r0, r5
	str r0, [r4, #0x2c]
	pop {r4, r5, r6, pc}
_021F66B6:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F66CE
	bl sub_0201F53C
	cmp r0, #1
	bne _021F66CE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r0]
	bl sub_0201F64C
_021F66CE:
	mov r0, #3
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021F66D4:
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	bl NNS_G3dGetMdlSet
	add r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #1
	beq _021F66E8
	bl GF_AssertFail
_021F66E8:
	cmp r5, #0
	beq _021F670C
	add r1, r5, #0
	add r1, #8
	beq _021F6700
	ldrb r0, [r5, #9]
	cmp r0, #0
	bls _021F6700
	ldrh r0, [r5, #0xe]
	add r0, r1, r0
	add r0, r0, #4
	b _021F6702
_021F6700:
	mov r0, #0
_021F6702:
	cmp r0, #0
	beq _021F670C
	ldr r0, [r0]
	add r5, r5, r0
	b _021F670E
_021F670C:
	mov r5, #0
_021F670E:
	cmp r5, #0
	bne _021F6716
	bl GF_AssertFail
_021F6716:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl NNS_G3dRenderObjInit
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F672A
	bl GF_AssertFail
_021F672A:
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	bl ov01_02204698
	cmp r0, #0
	beq _021F674C
	ldr r0, [r4, #4]
	bl sub_02054E20
	cmp r0, #0
	bne _021F674C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0xc]
	bl ov01_02204678
_021F674C:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r1, [r0]
	mov r0, #5
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021F6758:
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl sub_0200E390
_021F676A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F6620

	thumb_func_start ov01_021F676C
ov01_021F676C: ; 0x021F676C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r6, r2, #0
	add r7, r3, #0
	bl AllocFromHeapAtEnd
	add r1, r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0xc]
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	mov r2, #0
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x28]
	ldr r0, [sp, #0x24]
	strb r2, [r1, #0x18]
	str r0, [r1, #0x1c]
	str r2, [r0]
	ldr r0, [sp, #0x28]
	str r0, [r1, #0x24]
	str r2, [r1, #0x20]
	ldr r0, _021F67B0 ; =ov01_021F6620
	mov r2, #1
	bl sub_0200E320
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F67B0: .word ov01_021F6620
	thumb_func_end ov01_021F676C

	thumb_func_start ov01_021F67B4
ov01_021F67B4: ; 0x021F67B4
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r2, #0
	ldr r2, [r4]
	bl NARC_ReadFile
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021F67DE
	bl sub_0201F53C
	cmp r0, #1
	bne _021F67DE
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	bl sub_0201F64C
	cmp r0, #0
	bne _021F67DE
	bl GF_AssertFail
_021F67DE:
	ldr r0, [r4]
	bl NNS_G3dGetMdlSet
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _021F67EE
	bl GF_AssertFail
_021F67EE:
	ldr r0, [r4]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021F6818
	add r2, r0, #0
	add r2, #8
	beq _021F680C
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021F680C
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021F680E
_021F680C:
	mov r1, #0
_021F680E:
	cmp r1, #0
	beq _021F6818
	ldr r1, [r1]
	add r4, r0, r1
	b _021F681A
_021F6818:
	mov r4, #0
_021F681A:
	cmp r4, #0
	bne _021F6822
	bl GF_AssertFail
_021F6822:
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G3dRenderObjInit
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F67B4

	thumb_func_start ov01_021F6830
ov01_021F6830: ; 0x021F6830
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021F683E
	bl ov35_02259D80
_021F683E:
	pop {r3, pc}
	thumb_func_end ov01_021F6830

	thumb_func_start ov01_021F6840
ov01_021F6840: ; 0x021F6840
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F6860 ; =SDK_OVERLAY_OVY_27_ID
	mov r1, #2
	bl HandleLoadOverlay
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xd0
	add r2, r4, #0
	mov r3, #0
	bl ov30_0225D520
	add r4, #0xd4
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
_021F6860: .word SDK_OVERLAY_OVY_27_ID
	thumb_func_end ov01_021F6840

	thumb_func_start ov01_021F6864
ov01_021F6864: ; 0x021F6864
	add r1, r0, #0
	ldr r0, [r1, #8]
	add r1, #0xd4
	ldr r3, _021F6870 ; =ov30_0225D64C
	ldr r1, [r1]
	bx r3
	.balign 4, 0
_021F6870: .word ov30_0225D64C
	thumb_func_end ov01_021F6864

	thumb_func_start ov01_021F6874
ov01_021F6874: ; 0x021F6874
	push {r3, lr}
	ldr r0, [r0, #8]
	bl ov30_0225D6FC
	cmp r0, #0
	beq _021F688A
	ldr r0, _021F6890 ; =SDK_OVERLAY_OVY_27_ID
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, pc}
_021F688A:
	mov r0, #0
	pop {r3, pc}
	nop
_021F6890: .word SDK_OVERLAY_OVY_27_ID
	thumb_func_end ov01_021F6874

	thumb_func_start ov01_021F6894
ov01_021F6894: ; 0x021F6894
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F68B4 ; =SDK_OVERLAY_OVY_27_ID
	mov r1, #2
	bl HandleLoadOverlay
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xd0
	add r2, r4, #0
	bl ov01_021F68DC
	add r4, #0xd8
	str r0, [r4]
	pop {r4, pc}
	nop
_021F68B4: .word SDK_OVERLAY_OVY_27_ID
	thumb_func_end ov01_021F6894

	thumb_func_start ov01_021F68B8
ov01_021F68B8: ; 0x021F68B8
	ldr r3, _021F68BC ; =ov01_021F690C
	bx r3
	.balign 4, 0
_021F68BC: .word ov01_021F690C
	thumb_func_end ov01_021F68B8

	thumb_func_start ov01_021F68C0
ov01_021F68C0: ; 0x021F68C0
	push {r3, lr}
	bl ov01_021F6930
	cmp r0, #0
	beq _021F68D4
	ldr r0, _021F68D8 ; =SDK_OVERLAY_OVY_27_ID
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, pc}
_021F68D4:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F68D8: .word SDK_OVERLAY_OVY_27_ID
	thumb_func_end ov01_021F68C0

	thumb_func_start ov01_021F68DC
ov01_021F68DC: ; 0x021F68DC
	push {r3, r4, r5, lr}
	ldr r0, _021F6908 ; =ov01_021F69C0
	add r5, r2, #0
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #4
	bl sub_02007200
	add r4, r0, #0
	bl sub_0201F988
	ldr r1, [r5, #0x1c]
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	str r1, [r0, #4]
	strb r1, [r0, #2]
	str r5, [r0, #8]
	str r1, [r0, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021F6908: .word ov01_021F69C0
	thumb_func_end ov01_021F68DC

	thumb_func_start ov01_021F690C
ov01_021F690C: ; 0x021F690C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	add r2, r0, #0
	ldr r1, [r2, #4]
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	lsl r3, r2, #4
	ldr r2, _021F692C ; =0x02206C64
	ldr r2, [r2, r3]
	blx r2
	pop {r4, pc}
	nop
_021F692C: .word 0x02206C64
	thumb_func_end ov01_021F690C

	thumb_func_start ov01_021F6930
ov01_021F6930: ; 0x021F6930
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	add r4, r0, #0
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	lsl r2, r1, #4
	ldr r1, _021F6964 ; =0x02206C68
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _021F6960
	add r0, r4, #0
	bl ov01_021F69A4
	add r5, #0xd8
	ldr r0, [r5]
	bl sub_02007234
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6960:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F6964: .word 0x02206C68
	thumb_func_end ov01_021F6930

	thumb_func_start ov01_021F6968
ov01_021F6968: ; 0x021F6968
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	lsl r1, r0, #4
	ldr r0, _021F699C ; =0x02206C6C
	ldr r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021F6982
	mov r1, #2
	bl HandleLoadOverlay
_021F6982:
	ldrb r5, [r4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	lsl r6, r5, #4
	ldr r5, _021F69A0 ; =0x02206C60
	add r1, r2, #0
	ldr r0, [r2, #8]
	ldr r5, [r5, r6]
	add r1, #0xd0
	blx r5
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
	nop
_021F699C: .word 0x02206C6C
_021F69A0: .word 0x02206C60
	thumb_func_end ov01_021F6968

	thumb_func_start ov01_021F69A4
ov01_021F69A4: ; 0x021F69A4
	push {r3, lr}
	ldrb r0, [r0]
	lsl r1, r0, #4
	ldr r0, _021F69BC ; =0x02206C6C
	ldr r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021F69BA
	bl UnloadOverlayByID
_021F69BA:
	pop {r3, pc}
	.balign 4, 0
_021F69BC: .word 0x02206C6C
	thumb_func_end ov01_021F69A4

	thumb_func_start ov01_021F69C0
ov01_021F69C0: ; 0x021F69C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldrb r0, [r4, #1]
	cmp r0, #7
	bhi _021F6A8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F69D8: ; jump table
	.short _021F69E8 - _021F69D8 - 2 ; case 0
	.short _021F6A8E - _021F69D8 - 2 ; case 1
	.short _021F69F6 - _021F69D8 - 2 ; case 2
	.short _021F6A14 - _021F69D8 - 2 ; case 3
	.short _021F6A24 - _021F69D8 - 2 ; case 4
	.short _021F6A3C - _021F69D8 - 2 ; case 5
	.short _021F6A60 - _021F69D8 - 2 ; case 6
	.short _021F6A82 - _021F69D8 - 2 ; case 7
_021F69E8:
	add r0, r4, #0
	bl ov01_021F6968
	mov r0, #1
	add sp, #0xc
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F69F6:
	mov r0, #2
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	add r2, r1, #0
	add r3, r1, #0
	str r0, [sp, #8]
	bl sub_0200FA24
	mov r0, #3
	add sp, #0xc
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F6A14:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021F6A8E
	mov r0, #4
	add sp, #0xc
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F6A24:
	ldrb r2, [r4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r3, r2, #4
	ldr r2, _021F6A94 ; =0x02206C64
	ldr r0, [r0, #8]
	ldr r2, [r2, r3]
	blx r2
	mov r0, #5
	add sp, #0xc
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F6A3C:
	ldrb r1, [r4]
	ldr r0, [r4, #8]
	lsl r2, r1, #4
	ldr r1, _021F6A98 ; =0x02206C68
	ldr r0, [r0, #8]
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _021F6A8E
	add r0, r4, #0
	bl ov01_021F69A4
	ldrb r0, [r4, #2]
	add sp, #0xc
	strb r0, [r4]
	mov r0, #6
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F6A60:
	add r0, r4, #0
	bl ov01_021F6968
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	str r0, [sp, #8]
	bl sub_0200FA24
	mov r0, #7
	add sp, #0xc
	strb r0, [r4, #1]
	pop {r3, r4, pc}
_021F6A82:
	bl sub_0200FB5C
	cmp r0, #0
	beq _021F6A8E
	mov r0, #1
	strb r0, [r4, #1]
_021F6A8E:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F6A94: .word 0x02206C64
_021F6A98: .word 0x02206C68
	thumb_func_end ov01_021F69C0

	thumb_func_start ov01_021F6A9C
ov01_021F6A9C: ; 0x021F6A9C
	push {r3, r4, r5, lr}
	add r0, #0xd8
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0201F988
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne _021F6AB8
	mov r1, #2
	strb r1, [r0, #1]
	strb r5, [r0, #2]
	str r4, [r0, #0xc]
_021F6AB8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6A9C

	thumb_func_start ov01_021F6ABC
ov01_021F6ABC: ; 0x021F6ABC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_0201F988
	ldr r0, [r0, #4]
	bl sub_0201F988
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021F6B00
	cmp r6, r0
	beq _021F6AE4
	bl GF_AssertFail
_021F6AE4:
	ldr r0, [sp]
	str r7, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F6ABC

	thumb_func_start ov01_021F6AEC
ov01_021F6AEC: ; 0x021F6AEC
	push {r3, lr}
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	ldr r0, [r0, #4]
	bl sub_0201F988
	ldr r0, [r0]
	pop {r3, pc}
	thumb_func_end ov01_021F6AEC

	thumb_func_start ov01_021F6B00
ov01_021F6B00: ; 0x021F6B00
	push {r3, lr}
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	ldrb r0, [r0]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6B00

	thumb_func_start ov01_021F6B10
ov01_021F6B10: ; 0x021F6B10
	push {r3, lr}
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	ldrb r0, [r0, #1]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6B10

	thumb_func_start ov01_021F6B20
ov01_021F6B20: ; 0x021F6B20
	push {r3, lr}
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	ldr r0, [r0, #4]
	bl sub_0201F988
	add r0, #0xc
	pop {r3, pc}
	thumb_func_end ov01_021F6B20

	thumb_func_start ov01_021F6B34
ov01_021F6B34: ; 0x021F6B34
	push {r3, r4, r5, lr}
	add r0, #0xd8
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0201F988
	ldr r0, [r0, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl ov27_0225C41C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6B34

	thumb_func_start ov01_021F6B50
ov01_021F6B50: ; 0x021F6B50
	push {r3, lr}
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0201F988
	ldr r0, [r0, #4]
	bl ov27_0225A2CC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6B50

	thumb_func_start ov01_021F6B64
ov01_021F6B64: ; 0x021F6B64
	push {r3, r4, r5, lr}
	add r0, #0xd8
	ldr r0, [r0]
	add r5, r1, #0
	bl sub_0201F988
	add r4, r0, #0
	cmp r5, #0
	ble _021F6B7A
	cmp r5, #3
	blt _021F6B7E
_021F6B7A:
	bl GF_AssertFail
_021F6B7E:
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov27_0225A2EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F6B64

	thumb_func_start ov01_021F6B88
ov01_021F6B88: ; 0x021F6B88
	push {r4, lr}
	add r4, r2, #0
	add r0, r4, #0
	bl ov34_0225D7A8
	add r1, r4, #0
	add r1, #0xdc
	add r4, #0xdc
	str r0, [r1]
	ldr r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6B88

	thumb_func_start ov01_021F6BA0
ov01_021F6BA0: ; 0x021F6BA0
	ldr r3, _021F6BA8 ; =ov34_0225D87C
	add r0, r1, #0
	bx r3
	nop
_021F6BA8: .word ov34_0225D87C
	thumb_func_end ov01_021F6BA0

	thumb_func_start ov01_021F6BAC
ov01_021F6BAC: ; 0x021F6BAC
	mov r0, #1
	bx lr
	thumb_func_end ov01_021F6BAC

	thumb_func_start ov01_021F6BB0
ov01_021F6BB0: ; 0x021F6BB0
	ldr r3, _021F6BCC ; =0x02206C08
	mov r2, #0
_021F6BB4:
	ldrh r1, [r3]
	cmp r0, r1
	bne _021F6BBE
	mov r0, #1
	bx lr
_021F6BBE:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x2b
	blo _021F6BB4
	mov r0, #0
	bx lr
	nop
_021F6BCC: .word 0x02206C08
	thumb_func_end ov01_021F6BB0

	thumb_func_start ov01_021F6BD0
ov01_021F6BD0: ; 0x021F6BD0
	ldr r1, _021F6C18 ; =0x00001B58
	cmp r0, r1
	blt _021F6BE0
	ldr r1, _021F6C1C ; =0x0000225F
	cmp r0, r1
	bgt _021F6BE0
	mov r0, #1
	bx lr
_021F6BE0:
	mov r1, #0xaf
	lsl r1, r1, #4
	cmp r0, r1
	blt _021F6BF2
	add r1, #0xc7
	cmp r0, r1
	bgt _021F6BF2
	mov r0, #1
	bx lr
_021F6BF2:
	ldr r1, _021F6C20 ; =0x00002710
	cmp r0, r1
	blt _021F6C02
	add r1, #0x63
	cmp r0, r1
	bgt _021F6C02
	mov r0, #1
	bx lr
_021F6C02:
	ldr r1, _021F6C24 ; =0x00002774
	cmp r0, r1
	blt _021F6C12
	add r1, #0x31
	cmp r0, r1
	bgt _021F6C12
	mov r0, #1
	bx lr
_021F6C12:
	mov r0, #0
	bx lr
	nop
_021F6C18: .word 0x00001B58
_021F6C1C: .word 0x0000225F
_021F6C20: .word 0x00002710
_021F6C24: .word 0x00002774
	thumb_func_end ov01_021F6BD0

	thumb_func_start ov01_021F6C28
ov01_021F6C28: ; 0x021F6C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	bl ov01_021F6B00
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	bl ov01_021F6B10
	cmp r4, #6
	bne _021F6C46
	cmp r0, #1
	bne _021F6C46
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6C46:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6C28

	thumb_func_start ov01_021F6C4C
ov01_021F6C4C: ; 0x021F6C4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	bl ov01_021F6B00
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	bl ov01_021F6B10
	cmp r4, #3
	bne _021F6C78
	cmp r0, #1
	bne _021F6C78
	ldr r0, [r5, #0x30]
	mov r1, #3
	add r5, #0x90
	add r2, r1, #0
	add r3, r5, #0
	bl ov01_021F6ABC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6C78:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F6C4C

	thumb_func_start ov01_021F6C7C
ov01_021F6C7C: ; 0x021F6C7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	bl ov01_021F6B00
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	bl ov01_021F6AEC
	cmp r4, #3
	bne _021F6C9A
	cmp r0, #6
	bne _021F6C9A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6C9A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6C7C

	thumb_func_start ov01_021F6CA0
ov01_021F6CA0: ; 0x021F6CA0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x98
	ldrh r1, [r1]
	cmp r1, #0
	beq _021F6CB8
	cmp r1, #1
	beq _021F6CD0
	cmp r1, #2
	beq _021F6CE6
	b _021F6CF6
_021F6CB8:
	ldr r0, [r4, #0x30]
	mov r1, #3
	mov r2, #0
	bl ov01_021F6A9C
	add r0, r4, #0
	add r0, #0x98
	ldrh r0, [r0]
	add r4, #0x98
	add r0, r0, #1
	strh r0, [r4]
	b _021F6CF6
_021F6CD0:
	bl ov01_021F6C4C
	cmp r0, #1
	bne _021F6CF6
	add r0, r4, #0
	add r0, #0x98
	ldrh r0, [r0]
	add r4, #0x98
	add r0, r0, #1
	strh r0, [r4]
	b _021F6CF6
_021F6CE6:
	bl ov01_021F6C7C
	cmp r0, #1
	bne _021F6CF6
	mov r0, #0
	add r4, #0x98
	strh r0, [r4]
	pop {r4, pc}
_021F6CF6:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6CA0

	thumb_func_start ov01_021F6CFC
ov01_021F6CFC: ; 0x021F6CFC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0202C6F4
	mov r1, #0
	bl sub_0202C23C
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x48
	mov r2, #4
	bl sub_0203A1C4
	cmp r0, #0
	bne _021F6D24
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021F6D24:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
	ldr r0, [r4, #0x34]
	bl Sav2_PlayerData_GetOptionsAddr
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, _021F6D70 ; =0x000001E2
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xa
	bl sub_0200E644
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, _021F6D74 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl sub_0200E3DC
	mov r0, #1
	str r0, [r4, #0x44]
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_021F6D70: .word 0x000001E2
_021F6D74: .word 0x000003D9
	thumb_func_end ov01_021F6CFC

	thumb_func_start ov01_021F6D78
ov01_021F6D78: ; 0x021F6D78
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	add r0, #0x88
	str r1, [r0]
	mov r4, #0
	bl sub_02037454
	cmp r0, #0
	ble _021F6DB4
	add r5, r6, #0
_021F6D92:
	ldr r0, [r5, #0x48]
	cmp r0, #2
	bne _021F6DA8
	add r0, r6, #0
	add r0, #0x88
	str r4, [r0]
	lsl r0, r4, #2
	mov r1, #0
	add r0, r6, r0
	str r1, [r0, #0x48]
	b _021F6DB4
_021F6DA8:
	add r5, r5, #4
	add r4, r4, #1
	bl sub_02037454
	cmp r4, r0
	blt _021F6D92
_021F6DB4:
	add r0, r6, #0
	add r0, #0x88
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021F6DC8
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021F6DC8:
	ldr r0, [r6, #0x34]
	bl Sav2_Bag_get
	ldr r1, _021F6E40 ; =0x000001B5
	mov r2, #1
	mov r3, #4
	bl Bag_HasItem
	cmp r0, #1
	bne _021F6E02
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r6, #0x38]
	mov r1, #0
	bl BufferPlayersName
	add r0, r6, #0
	mov r1, #0x3e
	bl ov01_021F71C4
	mov r0, #2
	str r0, [r6, #0x44]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021F6E02:
	ldr r0, [r6, #0x34]
	bl sub_0202C6F4
	add r4, r0, #0
	mov r5, #0
_021F6E0C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202C2DC
	cmp r0, #0
	bne _021F6E2E
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x88
	ldr r0, [r6, #0x34]
	ldr r1, [r1]
	add r2, r5, #0
	mov r3, #4
	bl sub_0203A280
	b _021F6E34
_021F6E2E:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021F6E0C
_021F6E34:
	mov r0, #1
	str r0, [r6, #0x44]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F6E40: .word 0x000001B5
	thumb_func_end ov01_021F6D78

	thumb_func_start ov01_021F6E44
ov01_021F6E44: ; 0x021F6E44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _021F6E62
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	strh r1, [r0]
	mov r0, #3
	str r0, [r4, #0x44]
_021F6E62:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6E44

	thumb_func_start ov01_021F6E68
ov01_021F6E68: ; 0x021F6E68
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	bl ov01_021F6CA0
	cmp r0, #0
	bne _021F6ED2
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021F6EC8
	ldr r0, [r6, #0x34]
	bl sub_0202C6F4
	add r5, r0, #0
	mov r4, #0
_021F6E8A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	bne _021F6EAC
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x88
	ldr r0, [r6, #0x34]
	ldr r1, [r1]
	add r2, r4, #0
	mov r3, #4
	bl sub_0203A280
	b _021F6EB2
_021F6EAC:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021F6E8A
_021F6EB2:
	cmp r4, #0x20
	bne _021F6EC8
	add r0, r6, #0
	mov r1, #0x3f
	bl ov01_021F71C4
	mov r0, #4
	str r0, [r6, #0x44]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021F6EC8:
	mov r0, #1
	str r0, [r6, #0x44]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021F6ED2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021F6E68

	thumb_func_start ov01_021F6ED8
ov01_021F6ED8: ; 0x021F6ED8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _021F6EF6
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	strh r1, [r0]
	mov r0, #5
	str r0, [r4, #0x44]
_021F6EF6:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6ED8

	thumb_func_start ov01_021F6EFC
ov01_021F6EFC: ; 0x021F6EFC
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021F6CA0
	cmp r0, #0
	bne _021F6F40
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021F6F20
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #8
	str r0, [r4, #0x44]
	b _021F6F40
_021F6F20:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	mov r1, #0x40
	bl ov01_021F71C4
	mov r0, #6
	str r0, [r4, #0x44]
_021F6F40:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F6EFC

	thumb_func_start ov01_021F6F44
ov01_021F6F44: ; 0x021F6F44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _021F6F62
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	strh r1, [r0]
	mov r0, #7
	str r0, [r4, #0x44]
_021F6F62:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6F44

	thumb_func_start ov01_021F6F68
ov01_021F6F68: ; 0x021F6F68
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021F6CA0
	cmp r0, #0
	bne _021F6F90
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021F6F84
	mov r0, #0xc
	str r0, [r4, #0x44]
	b _021F6F90
_021F6F84:
	add r0, r4, #0
	mov r1, #0x3f
	bl ov01_021F71C4
	mov r0, #4
	str r0, [r4, #0x44]
_021F6F90:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F6F68

	thumb_func_start ov01_021F6F94
ov01_021F6F94: ; 0x021F6F94
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x9a
	ldrh r1, [r1]
	cmp r1, #0
	beq _021F6FA8
	cmp r1, #1
	beq _021F6FC2
	b _021F6FD6
_021F6FA8:
	add r2, r4, #0
	ldr r0, [r4, #0x30]
	mov r1, #6
	add r2, #0x94
	bl ov01_021F6A9C
	add r0, r4, #0
	add r0, #0x9a
	ldrh r0, [r0]
	add r4, #0x9a
	add r0, r0, #1
	strh r0, [r4]
	b _021F6FD6
_021F6FC2:
	bl ov01_021F6C28
	cmp r0, #1
	bne _021F6FD6
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9a
	strh r1, [r0]
	mov r0, #9
	str r0, [r4, #0x44]
_021F6FD6:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F6F94

	thumb_func_start ov01_021F6FDC
ov01_021F6FDC: ; 0x021F6FDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _021F6FF4
	add r0, r0, #1
	cmp r1, r0
	beq _021F705C
	b _021F7016
_021F6FF4:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	mov r1, #0x40
	bl ov01_021F71C4
	mov r0, #6
	str r0, [r5, #0x44]
	b _021F705C
_021F7016:
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0]
	ldr r0, [r5, #0x34]
	bl sub_0202C6F4
	add r6, r0, #0
	mov r0, #4
	bl PlayerProfile_new
	add r1, r5, #0
	add r1, #0x8c
	add r4, r0, #0
	ldr r1, [r1]
	add r0, r6, #0
	bl sub_0202C254
	add r1, r0, #0
	add r0, r4, #0
	bl Sav2_Profile_PlayerName_set
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, r4, #0
	bl BufferPlayersName
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	mov r1, #0x41
	bl ov01_021F71C4
	mov r0, #0xa
	str r0, [r5, #0x44]
_021F705C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F6FDC

	thumb_func_start ov01_021F7060
ov01_021F7060: ; 0x021F7060
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _021F707E
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	strh r1, [r0]
	mov r0, #0xb
	str r0, [r4, #0x44]
_021F707E:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7060

	thumb_func_start ov01_021F7084
ov01_021F7084: ; 0x021F7084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0202C6F4
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021F6CA0
	cmp r0, #0
	bne _021F70FA
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021F70DA
	ldr r0, [r5, #0x34]
	bl sub_0203107C
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	bl sub_020311AC
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_0202C338
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x88
	ldr r0, [r5, #0x34]
	ldr r1, [r1]
	mov r2, #0x1f
	mov r3, #4
	bl sub_0203A280
	mov r0, #1
	str r0, [r5, #0x44]
	b _021F70FA
_021F70DA:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	mov r1, #0x40
	bl ov01_021F71C4
	mov r0, #6
	str r0, [r5, #0x44]
_021F70FA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7084

	thumb_func_start ov01_021F7100
ov01_021F7100: ; 0x021F7100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02050650
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205064C
	ldr r0, [r4, #0x44]
	cmp r0, #0xc
	bhi _021F71C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F7122: ; jump table
	.short _021F713C - _021F7122 - 2 ; case 0
	.short _021F714C - _021F7122 - 2 ; case 1
	.short _021F715C - _021F7122 - 2 ; case 2
	.short _021F7164 - _021F7122 - 2 ; case 3
	.short _021F716C - _021F7122 - 2 ; case 4
	.short _021F7174 - _021F7122 - 2 ; case 5
	.short _021F717C - _021F7122 - 2 ; case 6
	.short _021F7184 - _021F7122 - 2 ; case 7
	.short _021F718C - _021F7122 - 2 ; case 8
	.short _021F7194 - _021F7122 - 2 ; case 9
	.short _021F719C - _021F7122 - 2 ; case 10
	.short _021F71A4 - _021F7122 - 2 ; case 11
	.short _021F71AC - _021F7122 - 2 ; case 12
_021F713C:
	add r0, r4, #0
	bl ov01_021F6CFC
	cmp r0, #0
	beq _021F71C0
	mov r0, #0xc
	str r0, [r4, #0x44]
	b _021F71C0
_021F714C:
	add r0, r4, #0
	bl ov01_021F6D78
	cmp r0, #0
	beq _021F71C0
	mov r0, #0xc
	str r0, [r4, #0x44]
	b _021F71C0
_021F715C:
	add r0, r4, #0
	bl ov01_021F6E44
	b _021F71C0
_021F7164:
	add r0, r4, #0
	bl ov01_021F6E68
	b _021F71C0
_021F716C:
	add r0, r4, #0
	bl ov01_021F6ED8
	b _021F71C0
_021F7174:
	add r0, r4, #0
	bl ov01_021F6EFC
	b _021F71C0
_021F717C:
	add r0, r4, #0
	bl ov01_021F6F44
	b _021F71C0
_021F7184:
	add r0, r4, #0
	bl ov01_021F6F68
	b _021F71C0
_021F718C:
	add r0, r4, #0
	bl ov01_021F6F94
	b _021F71C0
_021F7194:
	add r0, r4, #0
	bl ov01_021F6FDC
	b _021F71C0
_021F719C:
	add r0, r4, #0
	bl ov01_021F7060
	b _021F71C0
_021F71A4:
	add r0, r4, #0
	bl ov01_021F7084
	b _021F71C0
_021F71AC:
	add r0, r4, #0
	bl ov01_021F7268
	add r0, r4, #0
	bl FreeToHeap
	bl sub_0203E30C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F71C0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7100

	thumb_func_start ov01_021F71C4
ov01_021F71C4: ; 0x021F71C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x10
	add r5, r1, #0
	bl WindowIsInUse
	cmp r0, #0
	beq _021F71DC
	add r0, r4, #0
	add r0, #0x10
	bl RemoveWindow
_021F71DC:
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, #8]
	add r1, r5, #0
	bl ReadMsgDataIntoString
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	bl StringExpandPlaceholders
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r1, #0x10
	mov r2, #3
	bl sub_0205B514
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	bl Sav2_PlayerData_GetOptionsAddr
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x10
	bl sub_0205B564
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	bl Sav2_PlayerData_GetOptionsAddr
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	mov r3, #1
	bl sub_0205B5B4
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F71C4

	thumb_func_start ov01_021F722C
ov01_021F722C: ; 0x021F722C
	push {r4, lr}
	mov r1, #0
	mov r2, #0x9c
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #4
	bl ScrStrBufs_new
	str r0, [r4, #0x38]
	ldr r2, _021F7264 ; =0x0000030B
	mov r0, #0
	mov r1, #0x1b
	mov r3, #4
	bl NewMsgDataFromNarc
	str r0, [r4, #0x3c]
	mov r0, #0x6e
	mov r1, #4
	bl String_ctor
	str r0, [r4, #0xc]
	mov r0, #0x6e
	mov r1, #4
	bl String_ctor
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_021F7264: .word 0x0000030B
	thumb_func_end ov01_021F722C

	thumb_func_start ov01_021F7268
ov01_021F7268: ; 0x021F7268
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl DestroyMsgData
	ldr r0, [r4, #0x38]
	bl ScrStrBufs_delete
	ldr r0, [r4, #0xc]
	bl String_dtor
	ldr r0, [r4, #8]
	bl String_dtor
	add r0, r4, #0
	add r0, #0x10
	bl WindowIsInUse
	cmp r0, #0
	beq _021F7298
	add r4, #0x10
	add r0, r4, #0
	bl RemoveWindow
_021F7298:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7268

	thumb_func_start ov01_021F729C
ov01_021F729C: ; 0x021F729C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x10]
	mov r0, #0xb
	mov r1, #0x9c
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	bl ov01_021F722C
	str r6, [r4, #0x30]
	ldr r0, [r6, #0xc]
	str r0, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x44]
	cmp r5, #0
	bne _021F72CA
	ldr r1, _021F72D8 ; =ov01_021F7100
	add r0, r6, #0
	add r2, r4, #0
	bl sub_020504F0
	pop {r4, r5, r6, pc}
_021F72CA:
	ldr r1, _021F72D8 ; =ov01_021F7100
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050530
	pop {r4, r5, r6, pc}
	nop
_021F72D8: .word ov01_021F7100
	thumb_func_end ov01_021F729C

	thumb_func_start ov01_021F72DC
ov01_021F72DC: ; 0x021F72DC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F25C
	cmp r0, #0xf8
	bgt _021F7356
	bge _021F737E
	cmp r0, #0x62
	bgt _021F7308
	cmp r0, #0x61
	blt _021F72FA
	beq _021F737E
	cmp r0, #0x62
	beq _021F737E
	b _021F7388
_021F72FA:
	cmp r0, #0
	bgt _021F7302
	beq _021F737E
	b _021F7388
_021F7302:
	cmp r0, #0x15
	beq _021F737E
	b _021F7388
_021F7308:
	cmp r0, #0xb0
	bgt _021F7310
	beq _021F737E
	b _021F7388
_021F7310:
	add r1, r0, #0
	sub r1, #0xb1
	cmp r1, #0x18
	bhi _021F7388
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F7324: ; jump table
	.short _021F737E - _021F7324 - 2 ; case 0
	.short _021F737E - _021F7324 - 2 ; case 1
	.short _021F737E - _021F7324 - 2 ; case 2
	.short _021F737E - _021F7324 - 2 ; case 3
	.short _021F737E - _021F7324 - 2 ; case 4
	.short _021F7388 - _021F7324 - 2 ; case 5
	.short _021F7388 - _021F7324 - 2 ; case 6
	.short _021F7388 - _021F7324 - 2 ; case 7
	.short _021F7388 - _021F7324 - 2 ; case 8
	.short _021F7388 - _021F7324 - 2 ; case 9
	.short _021F7388 - _021F7324 - 2 ; case 10
	.short _021F737E - _021F7324 - 2 ; case 11
	.short _021F737E - _021F7324 - 2 ; case 12
	.short _021F7388 - _021F7324 - 2 ; case 13
	.short _021F7388 - _021F7324 - 2 ; case 14
	.short _021F7388 - _021F7324 - 2 ; case 15
	.short _021F7388 - _021F7324 - 2 ; case 16
	.short _021F7388 - _021F7324 - 2 ; case 17
	.short _021F7388 - _021F7324 - 2 ; case 18
	.short _021F737E - _021F7324 - 2 ; case 19
	.short _021F737E - _021F7324 - 2 ; case 20
	.short _021F737E - _021F7324 - 2 ; case 21
	.short _021F737E - _021F7324 - 2 ; case 22
	.short _021F737E - _021F7324 - 2 ; case 23
	.short _021F737E - _021F7324 - 2 ; case 24
_021F7356:
	ldr r2, _021F73C0 ; =0x00000103
	cmp r0, r2
	bgt _021F736E
	bge _021F737E
	cmp r0, #0xf9
	bgt _021F7366
	beq _021F737E
	b _021F7388
_021F7366:
	sub r1, r2, #1
	cmp r0, r1
	beq _021F737E
	b _021F7388
_021F736E:
	add r1, r2, #1
	cmp r0, r1
	bgt _021F7378
	beq _021F737E
	b _021F7388
_021F7378:
	add r1, r2, #2
	cmp r0, r1
	bne _021F7388
_021F737E:
	add r0, r4, #0
	bl sub_0205F40C
	ldr r0, [r0, #4]
	pop {r4, pc}
_021F7388:
	mov r1, #0x6b
	lsl r1, r1, #2
	cmp r0, r1
	blt _021F73A0
	ldr r1, _021F73C4 ; =0x000003E1
	cmp r0, r1
	bgt _021F73A0
	add r0, r4, #0
	bl sub_0205F40C
	ldr r0, [r0]
	pop {r4, pc}
_021F73A0:
	ldr r1, _021F73C8 ; =0x00000106
	cmp r0, r1
	blt _021F73B4
	add r1, r1, #7
	cmp r0, r1
	bgt _021F73B4
	add r0, r4, #0
	bl sub_02064084
	pop {r4, pc}
_021F73B4:
	add r0, r4, #0
	bl sub_0205F40C
	ldr r0, [r0, #4]
	pop {r4, pc}
	nop
_021F73C0: .word 0x00000103
_021F73C4: .word 0x000003E1
_021F73C8: .word 0x00000106
	thumb_func_end ov01_021F72DC

	thumb_func_start ov01_021F73CC
ov01_021F73CC: ; 0x021F73CC
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl sub_0205F3E8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4, #2]
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F9510
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F73F2
	add r0, r5, #0
	bl sub_0205F484
_021F73F2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F73CC

	thumb_func_start ov01_021F73F4
ov01_021F73F4: ; 0x021F73F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F40C
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl ov01_021F95A8
	pop {r4, pc}
	thumb_func_end ov01_021F73F4

	thumb_func_start ov01_021F7408
ov01_021F7408: ; 0x021F7408
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F7420
	add r1, r4, #0
	add r1, #8
	bl ov01_021F9610
_021F7420:
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F95A8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F20C
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7408

	thumb_func_start ov01_021F7434
ov01_021F7434: ; 0x021F7434
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7476
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F7456
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F9510
_021F7456:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F7476
	add r1, r4, #0
	add r1, #8
	bl ov01_021F9630
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov01_021FA3E8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F214
_021F7476:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7434

	thumb_func_start ov01_021F7478
ov01_021F7478: ; 0x021F7478
	push {r3, r4, r5, lr}
	mov r1, #0x18
	add r5, r0, #0
	bl sub_0205F3E8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9510
	mov r0, #0
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x17]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x17]
	ldrb r1, [r4, #0x17]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0x17]
	ldr r0, [r4]
	cmp r0, #0
	beq _021F74B2
	add r0, r5, #0
	bl sub_0205F484
_021F74B2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7478

	thumb_func_start ov01_021F74B4
ov01_021F74B4: ; 0x021F74B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F40C
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F95A8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F74B4

	thumb_func_start ov01_021F74C8
ov01_021F74C8: ; 0x021F74C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F74DE
	add r1, r4, #4
	bl ov01_021F9610
_021F74DE:
	ldrb r1, [r4, #0x17]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x17]
	ldrb r1, [r4, #0x17]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0x17]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F95A8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F20C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F74C8

	thumb_func_start ov01_021F7504
ov01_021F7504: ; 0x021F7504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	ldrb r0, [r4, #0x17]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021F7522
	add r0, r5, #0
	bl sub_0205F24C
	cmp r0, #0xfd
	beq _021F7524
_021F7522:
	b _021F7654
_021F7524:
	add r0, r5, #0
	bl sub_0205F35C
	bl sub_0205F1E4
	str r0, [sp, #0x10]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	bl GetFirstAliveMonInParty_CrashIfNone
	str r0, [sp, #0xc]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl GetMonGender
	str r0, [sp, #8]
	lsl r1, r6, #0x10
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_02069D70
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl MonIsShiny
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldrb r1, [r4, #0x17]
	mov r0, #2
	lsr r2, r2, #0x18
	orr r0, r1
	strb r0, [r4, #0x17]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02069EE8
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl sub_0205F258
	add r0, r5, #0
	bl sub_0205FCD4
	add r0, r5, #0
	mov r1, #4
	bl sub_0205F20C
	add r0, r5, #0
	add r1, sp, #0x30
	bl sub_0205F944
	add r0, r5, #0
	bl sub_0205F914
	add r1, r0, #0
	mov r0, #2
	lsl r2, r1, #0x10
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #0x30]
	add r0, r5, #0
	bl sub_0205F900
	add r0, r5, #0
	bl sub_0205F924
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205F908
	add r0, r5, #0
	bl sub_0205F934
	add r1, r0, #0
	mov r0, #2
	lsl r2, r1, #0x10
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #0x38]
	add r0, r5, #0
	bl sub_0205F910
	add r0, r5, #0
	add r1, sp, #0x30
	bl sub_0205F954
	add r0, r5, #0
	bl sub_020621F0
	ldr r0, [sp, #0x10]
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, r7
	bne _021F761C
	ldr r0, [sp, #0x10]
	add r0, #0xfc
	ldrh r0, [r0]
	cmp r0, r6
	bne _021F761C
	ldr r0, [sp, #0x10]
	add r0, #0xfb
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _021F761C
	ldr r0, [sp, #0x10]
	add r0, #0xf8
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _021F7636
_021F761C:
	ldr r0, [sp, #8]
	lsl r2, r6, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #4]
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl sub_02069F3C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F288
_021F7636:
	mov r1, #0
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	bl GetMonData
	add r3, r0, #0
	mov r1, #0x42
	lsl r2, r7, #0x10
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x10
	bl sub_0206A288
_021F7654:
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7700
	ldr r0, [r4]
	cmp r0, #0
	bne _021F766C
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9510
_021F766C:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F7700
	ldrb r1, [r4, #0x17]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x17]
	add r1, sp, #0x18
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	add r1, sp, #0x24
	bl sub_0205F96C
	add r0, r5, #0
	bl sub_0205F25C
	add r0, r5, #0
	bl sub_0205F2A8
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0x18
	bl ov01_021F8E70
	ldr r0, [sp, #0x18]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0205F97C
	add r0, r5, #0
	bl ov01_02205564
	cmp r0, #0
	beq _021F76CC
	ldr r2, [r4]
	mov r0, #1
	add r1, r5, #0
	bl ov01_0220589C
	b _021F76E0
_021F76CC:
	add r0, r5, #0
	bl ov01_0220553C
	cmp r0, #0
	beq _021F76E0
	ldr r2, [r4]
	mov r0, #1
	add r1, r5, #0
	bl ov01_02205808
_021F76E0:
	ldr r0, [r4]
	add r1, r4, #4
	bl ov01_021F9630
	ldr r1, [r4]
	add r0, r5, #0
	bl ov01_021FA3E8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F214
	add r0, r5, #0
	bl sub_0205F484
_021F7700:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F7504

	thumb_func_start ov01_021F7704
ov01_021F7704: ; 0x021F7704
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F40C
	mov r1, #0
	strb r1, [r0, #0x15]
	add r0, r4, #0
	bl sub_0205F98C
	mov r1, #0
	str r1, [r0, #4]
	pop {r4, pc}
	thumb_func_end ov01_021F7704

	thumb_func_start ov01_021F771C
ov01_021F771C: ; 0x021F771C
	push {r3, lr}
	mov r1, #0xfd
	bl sub_0205EE60
	bl sub_0205F40C
	ldr r0, [r0]
	pop {r3, pc}
	thumb_func_end ov01_021F771C

	thumb_func_start ov01_021F772C
ov01_021F772C: ; 0x021F772C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	str r0, [sp]
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F779C
	cmp r7, #0
	beq _021F779C
	add r0, r4, #0
	bl sub_0205F2A8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #9
	blt _021F7760
	bl GF_AssertFail
_021F7760:
	lsl r6, r5, #2
	ldr r5, _021F77A0 ; =0x02208AC0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	add r0, r4, #0
	bl sub_0205F98C
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #8]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, #2]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #3]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F779C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F77A0: .word 0x02208AC0
	thumb_func_end ov01_021F772C

	thumb_func_start ov01_021F77A4
ov01_021F77A4: ; 0x021F77A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205F40C
	add r5, r0, #0
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F77CE
	ldr r5, [r5, #4]
	cmp r5, #0
	beq _021F77CE
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F8C88
_021F77CE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F77A4

	thumb_func_start ov01_021F77D0
ov01_021F77D0: ; 0x021F77D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0205F40C
	add r5, r0, #0
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F780E
	ldr r5, [r5, #4]
	cmp r5, #0
	beq _021F780E
	add r0, r4, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F77FE
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F77FE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F8C88
_021F780E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F77D0

	thumb_func_start ov01_021F7810
ov01_021F7810: ; 0x021F7810
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, [r4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7890
	cmp r6, #0
	beq _021F7890
	ldrb r1, [r4, #0x17]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _021F7866
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x17]
	add r0, r5, #0
	bl ov01_02205564
	cmp r0, #0
	beq _021F7852
	ldr r2, [r4]
	mov r0, #1
	add r1, r5, #0
	bl ov01_0220589C
	b _021F7866
_021F7852:
	add r0, r5, #0
	bl ov01_0220553C
	cmp r0, #0
	beq _021F7866
	mov r0, #1
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_02205808
_021F7866:
	add r0, r5, #0
	bl sub_0205F2A8
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021F8D80
	add r0, r5, #0
	add r1, r6, #0
	strb r7, [r4, #0x10]
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F8C88
_021F7890:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7810

	thumb_func_start ov01_021F7894
ov01_021F7894: ; 0x021F7894
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, [r4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7914
	cmp r6, #0
	beq _021F7914
	ldrb r1, [r4, #0x17]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _021F78EA
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x17]
	add r0, r5, #0
	bl ov01_02205564
	cmp r0, #0
	beq _021F78D6
	ldr r2, [r4]
	mov r0, #1
	add r1, r5, #0
	bl ov01_0220589C
	b _021F78EA
_021F78D6:
	add r0, r5, #0
	bl ov01_0220553C
	cmp r0, #0
	beq _021F78EA
	mov r0, #1
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_02205808
_021F78EA:
	add r0, r5, #0
	bl sub_0205F2A8
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021F8D80
	add r0, r5, #0
	add r1, r6, #0
	strb r7, [r4, #0x10]
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F8C88
_021F7914:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7894

	thumb_func_start ov01_021F7918
ov01_021F7918: ; 0x021F7918
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7968
	ldr r6, [r4]
	cmp r6, #0
	beq _021F7968
	ldrb r1, [r4, #0x17]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _021F7958
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x17]
	add r0, r5, #0
	bl ov01_0220553C
	cmp r0, #0
	beq _021F7958
	mov r0, #1
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_02205808
_021F7958:
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F8C88
_021F7968:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7918

	thumb_func_start ov01_021F796C
ov01_021F796C: ; 0x021F796C
	push {r4, lr}
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F7990
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	b _021F7996
_021F7990:
	add r0, r4, #0
	bl ov01_021F8C30
_021F7996:
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	pop {r4, pc}
	thumb_func_end ov01_021F796C

	thumb_func_start ov01_021F79A0
ov01_021F79A0: ; 0x021F79A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F79C4
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F79C4:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F79D8
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_02023F04
_021F79D8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F79A0

	thumb_func_start ov01_021F79DC
ov01_021F79DC: ; 0x021F79DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F7A00
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F7A00:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7A14
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F7A14:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F79DC

	thumb_func_start ov01_021F7A18
ov01_021F7A18: ; 0x021F7A18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F7A3C
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F7A3C:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7A50
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F7A50:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7A18

	thumb_func_start ov01_021F7A54
ov01_021F7A54: ; 0x021F7A54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F7A78
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F7A78:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7A8C
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_02023F04
_021F7A8C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7A54

	thumb_func_start ov01_021F7A90
ov01_021F7A90: ; 0x021F7A90
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F7ABC
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strh r0, [r4]
_021F7ABC:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #6
	beq _021F7AC8
	mov r0, #0
	strh r0, [r4]
_021F7AC8:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7B0C
	ldr r6, _021F7B10 ; =0x02208A64
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r3]
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021F7B0C
	strh r0, [r4]
_021F7B0C:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021F7B10: .word 0x02208A64
	thumb_func_end ov01_021F7A90

	thumb_func_start ov01_021F7B14
ov01_021F7B14: ; 0x021F7B14
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F7B40
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strh r0, [r4]
_021F7B40:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021F7B4C
	mov r0, #0
	strh r0, [r4]
_021F7B4C:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7B88
	ldr r6, _021F7B8C ; =0x02208A08
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021F7B88
	strh r0, [r4]
_021F7B88:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F7B8C: .word 0x02208A08
	thumb_func_end ov01_021F7B14

	thumb_func_start ov01_021F7B90
ov01_021F7B90: ; 0x021F7B90
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F7BBC
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strh r0, [r4]
_021F7BBC:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #8
	beq _021F7BC8
	mov r0, #0
	strh r0, [r4]
_021F7BC8:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7C0C
	ldr r6, _021F7C10 ; =0x02208A80
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021F7C0C
	strh r0, [r4]
_021F7C0C:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F7C10: .word 0x02208A80
	thumb_func_end ov01_021F7B90

	thumb_func_start ov01_021F7C14
ov01_021F7C14: ; 0x021F7C14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	str r0, [sp]
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7C78
	cmp r7, #0
	beq _021F7C78
	add r0, r4, #0
	bl sub_0205F2A8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #0xa
	blt _021F7C48
	bl GF_AssertFail
_021F7C48:
	lsl r6, r5, #2
	ldr r5, _021F7C7C ; =0x02208B0C
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, #2]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #3]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F7C78:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7C7C: .word 0x02208B0C
	thumb_func_end ov01_021F7C14

	thumb_func_start ov01_021F7C80
ov01_021F7C80: ; 0x021F7C80
	push {r4, lr}
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F7C94
	mov r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F7CAC
_021F7C94:
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	b _021F7CB2
_021F7CAC:
	add r0, r4, #0
	bl ov01_021F8C30
_021F7CB2:
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	pop {r4, pc}
	thumb_func_end ov01_021F7C80

	thumb_func_start ov01_021F7CBC
ov01_021F7CBC: ; 0x021F7CBC
	push {r4, lr}
	mov r0, #3
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r0, #9
	beq _021F7CD8
	add r0, r4, #0
	mov r1, #4
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F7CD8:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	thumb_func_end ov01_021F7CBC

	thumb_func_start ov01_021F7CE4
ov01_021F7CE4: ; 0x021F7CE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7DA2
	cmp r4, #0
	beq _021F7DA2
	add r0, r5, #0
	bl sub_0205F2A8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205F330
	cmp r0, #0
	bne _021F7D56
	cmp r7, #1
	bls _021F7D1C
	mov r0, #1
	str r0, [sp, #4]
	b _021F7D20
_021F7D1C:
	mov r0, #0
	str r0, [sp, #4]
_021F7D20:
	add r0, r4, #0
	bl sub_02023EF4
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021F7D34
	mov r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _021F7D4C
_021F7D34:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
_021F7D4C:
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	b _021F7D88
_021F7D56:
	cmp r7, #1
	bls _021F7D60
	mov r0, #1
	str r0, [sp]
	b _021F7D64
_021F7D60:
	mov r0, #0
	str r0, [sp]
_021F7D64:
	add r0, r4, #0
	bl sub_02023EF4
	ldr r1, [sp]
	cmp r1, r0
	beq _021F7D7E
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F7D7E:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F7D88:
	strb r7, [r6, #2]
	add r0, r5, #0
	bl sub_0205F330
	strb r0, [r6, #3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F7DA2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7CE4

	thumb_func_start ov01_021F7DA8
ov01_021F7DA8: ; 0x021F7DA8
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl sub_0205F3E8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4]
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F9510
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F7DCE
	add r0, r5, #0
	bl sub_0205F484
_021F7DCE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7DA8

	thumb_func_start ov01_021F7DD0
ov01_021F7DD0: ; 0x021F7DD0
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r4, r0, #0
	str r1, [r2, #8]
	bl sub_0205F40C
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl ov01_021F95A8
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205F97C
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7DD0

	thumb_func_start ov01_021F7DFC
ov01_021F7DFC: ; 0x021F7DFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F7E14
	add r1, r4, #0
	add r1, #8
	bl ov01_021F9610
_021F7E14:
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F95A8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F20C
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7DFC

	thumb_func_start ov01_021F7E28
ov01_021F7E28: ; 0x021F7E28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7E6A
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F7E4A
	add r0, r5, #0
	add r1, r4, #4
	bl ov01_021F9510
_021F7E4A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F7E6A
	add r1, r4, #0
	add r1, #8
	bl ov01_021F9630
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov01_021FA3E8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F214
_021F7E6A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F7E28

	thumb_func_start ov01_021F7E6C
ov01_021F7E6C: ; 0x021F7E6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	str r0, [sp]
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7EDC
	cmp r7, #0
	beq _021F7EDC
	add r0, r4, #0
	bl sub_0205F2A8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #0xa
	blt _021F7EA0
	bl GF_AssertFail
_021F7EA0:
	lsl r6, r5, #2
	ldr r5, _021F7EE0 ; =0x02208B34
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	add r0, r4, #0
	bl sub_0205F98C
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #8]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F7EDC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F7EE0: .word 0x02208B34
	thumb_func_end ov01_021F7E6C

	thumb_func_start ov01_021F7EE4
ov01_021F7EE4: ; 0x021F7EE4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F7F12
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, pc}
_021F7F12:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F7F28
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
_021F7F28:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F7F4A
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, pc}
_021F7F4A:
	add r0, r5, #0
	bl ov01_021F8C30
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7EE4

	thumb_func_start ov01_021F7F54
ov01_021F7F54: ; 0x021F7F54
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F7F7C
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F7FB2
_021F7F7C:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F7F92
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r4, r5, r6, pc}
_021F7F92:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F7FB2
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
_021F7FB2:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F7FC6
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02023F04
_021F7FC6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F7F54

	thumb_func_start ov01_021F7FC8
ov01_021F7FC8: ; 0x021F7FC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F7FEE
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	b _021F8004
_021F7FEE:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F8004
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F8C64
_021F8004:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F8018
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F8018:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7FC8

	thumb_func_start ov01_021F801C
ov01_021F801C: ; 0x021F801C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F8042
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	b _021F8058
_021F8042:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F8058
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F8C64
_021F8058:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F806C
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F806C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F801C

	thumb_func_start ov01_021F8070
ov01_021F8070: ; 0x021F8070
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F8096
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	b _021F80AC
_021F8096:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F80AC
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F8C64
_021F80AC:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F80C0
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_02023F04
_021F80C0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8070

	thumb_func_start ov01_021F80C4
ov01_021F80C4: ; 0x021F80C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F80F2
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strb r0, [r4, #1]
	b _021F8108
_021F80F2:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F8108
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
_021F8108:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #6
	beq _021F8114
	mov r0, #0
	strb r0, [r4, #1]
_021F8114:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F815A
	ldr r6, _021F8160 ; =0x02208A48
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F815A
	mov r0, #0
	strb r0, [r4, #1]
_021F815A:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021F8160: .word 0x02208A48
	thumb_func_end ov01_021F80C4

	thumb_func_start ov01_021F8164
ov01_021F8164: ; 0x021F8164
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F8192
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strb r0, [r4, #1]
	b _021F81A8
_021F8192:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F81A8
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
_021F81A8:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021F81B4
	mov r0, #0
	strb r0, [r4, #1]
_021F81B4:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F81F2
	ldr r6, _021F81F8 ; =0x022089D8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F81F2
	mov r0, #0
	strb r0, [r4, #1]
_021F81F2:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021F81F8: .word 0x022089D8
	thumb_func_end ov01_021F8164

	thumb_func_start ov01_021F81FC
ov01_021F81FC: ; 0x021F81FC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F822A
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strb r0, [r4, #1]
	b _021F8240
_021F822A:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F8240
	add r0, r3, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F8C64
_021F8240:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #8
	beq _021F824C
	mov r0, #0
	strb r0, [r4, #1]
_021F824C:
	add r0, r6, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F8292
	ldr r6, _021F8298 ; =0x02208AA0
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02023F04
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F8292
	mov r0, #0
	strb r0, [r4, #1]
_021F8292:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021F8298: .word 0x02208AA0
	thumb_func_end ov01_021F81FC

	thumb_func_start ov01_021F829C
ov01_021F829C: ; 0x021F829C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F82C2
	add r0, r3, #0
	bl ov01_021FA458
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	b _021F82DA
_021F82C2:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	beq _021F82DA
	add r0, r3, #0
	bl ov01_021FA458
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl ov01_021F8C3C
_021F82DA:
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F82EE
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F82EE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F829C

	thumb_func_start ov01_021F82F0
ov01_021F82F0: ; 0x021F82F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4, #4]
	str r0, [sp]
	add r0, r7, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F836C
	ldr r0, [sp]
	cmp r0, #0
	beq _021F836C
	add r0, r7, #0
	bl sub_0205F2A8
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0205F330
	str r0, [sp, #4]
	cmp r0, #0xc
	blt _021F8328
	bl GF_AssertFail
_021F8328:
	mov r1, #2
	ldrsb r2, [r4, r1]
	cmp r2, #0
	bne _021F8342
	ldr r0, [sp, #4]
	cmp r0, r2
	beq _021F8342
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021F8342
	sub r0, r1, #3
	strb r0, [r4]
_021F8342:
	ldr r5, [sp, #4]
	ldr r1, [sp]
	lsl r6, r5, #2
	ldr r5, _021F8370 ; =0x02208AE4
	ldr r3, [sp, #8]
	ldr r5, [r5, r6]
	add r0, r7, #0
	add r2, r4, #0
	blx r5
	ldr r0, [sp, #8]
	ldr r1, [sp]
	strb r0, [r4]
	ldr r0, [sp, #4]
	strb r0, [r4, #2]
	add r0, r7, #0
	bl ov01_021FA3E8
	ldr r1, [sp]
	add r0, r7, #0
	bl ov01_021F8C88
_021F836C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F8370: .word 0x02208AE4
	thumb_func_end ov01_021F82F0

	thumb_func_start ov01_021F8374
ov01_021F8374: ; 0x021F8374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r2, #0
	add r2, sp, #0
	ldr r3, _021F83FC ; =0x02208A38
	add r5, r1, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r6, #2
	ldr r1, [r7, r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r6, r0
	beq _021F83B2
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F83B2:
	mov r2, #2
	ldrsb r0, [r4, r2]
	cmp r0, #0
	beq _021F83CA
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F83CA:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F83EE
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F83EE:
	add r0, r5, #0
	lsl r1, r2, #0xb
	bl sub_02023F04
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F83FC: .word 0x02208A38
	thumb_func_end ov01_021F8374

	thumb_func_start ov01_021F8400
ov01_021F8400: ; 0x021F8400
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov01_021FA464
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _021F8424
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _021F8436
_021F8424:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F8466
_021F8436:
	cmp r0, #0xa
	beq _021F844C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F8466
_021F844C:
	add r0, r5, #0
	bl sub_02023EF4
	cmp r4, r0
	beq _021F8466
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
_021F8466:
	add r0, r7, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F847A
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02023F04
_021F847A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F8400

	thumb_func_start ov01_021F847C
ov01_021F847C: ; 0x021F847C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov01_021FA464
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	beq _021F84AA
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F84DE
_021F84AA:
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0xb
	beq _021F84C4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
	b _021F84DE
_021F84C4:
	add r0, r5, #0
	bl sub_02023EF4
	cmp r4, r0
	beq _021F84DE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
_021F84DE:
	add r0, r7, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _021F84F2
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F84F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F847C

	thumb_func_start ov01_021F84F4
ov01_021F84F4: ; 0x021F84F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	ldr r7, [r0, #4]
	str r0, [sp]
	cmp r7, #0
	beq _021F8562
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8562
	add r0, r4, #0
	bl sub_0205F2A8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #4
	blt _021F8528
	bl GF_AssertFail
_021F8528:
	lsl r6, r5, #2
	ldr r5, _021F8568 ; =0x022089E8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8708
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F8562:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8568: .word 0x022089E8
	thumb_func_end ov01_021F84F4

	thumb_func_start ov01_021F856C
ov01_021F856C: ; 0x021F856C
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F8580
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _021F8596
_021F8580:
	ldr r1, _021F85B8 ; =0x022089F8
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F40
_021F8596:
	add r0, r4, #0
	bl sub_02023F70
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021F85A6
	mov r1, #0
_021F85A6:
	add r0, r4, #0
	bl sub_02023F40
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	pop {r4, pc}
	nop
_021F85B8: .word 0x022089F8
	thumb_func_end ov01_021F856C

	thumb_func_start ov01_021F85BC
ov01_021F85BC: ; 0x021F85BC
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F85D0
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #1
	beq _021F85E4
_021F85D0:
	ldr r1, _021F85F0 ; =0x022089F8
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F85E4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
_021F85F0: .word 0x022089F8
	thumb_func_end ov01_021F85BC

	thumb_func_start ov01_021F85F4
ov01_021F85F4: ; 0x021F85F4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	bne _021F860A
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #2
	beq _021F8628
_021F860A:
	ldr r1, _021F86B4 ; =0x022089F8
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	bl sub_02023EE0
	mov r1, #0xf
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F40
	ldrb r1, [r4, #3]
	mov r0, #0xfe
	bic r1, r0
	strb r1, [r4, #3]
_021F8628:
	add r0, r5, #0
	bl sub_02023F70
	add r1, r0, #0
	ldrb r0, [r4, #3]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x19
	beq _021F8642
	cmp r2, #1
	beq _021F8664
	cmp r2, #2
	beq _021F868A
	b _021F86A4
_021F8642:
	mov r3, #1
	lsl r3, r3, #0xc
	sub r1, r1, r3
	mov r3, #0xa
	lsl r3, r3, #0xc
	cmp r1, r3
	bgt _021F86A4
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xfe
	lsl r2, r2, #0x19
	bic r0, r3
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r4, #3]
	b _021F86A4
_021F8664:
	mov r3, #1
	lsl r3, r3, #0xc
	add r1, r1, r3
	mov r3, #0xf
	lsl r3, r3, #0xc
	cmp r1, r3
	blt _021F86A4
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xfe
	lsl r2, r2, #0x19
	bic r0, r3
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r4, #3]
	mov r0, #0
	strb r0, [r4, #1]
	b _021F86A4
_021F868A:
	mov r0, #1
	ldrsb r2, [r4, r0]
	add r2, r2, #1
	strb r2, [r4, #1]
	ldrsb r0, [r4, r0]
	cmp r0, #0x1e
	blt _021F86A4
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r2, [r4, #3]
	mov r0, #0xfe
	bic r2, r0
	strb r2, [r4, #3]
_021F86A4:
	add r0, r5, #0
	bl sub_02023F40
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F04
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F86B4: .word 0x022089F8
	thumb_func_end ov01_021F85F4

	thumb_func_start ov01_021F86B8
ov01_021F86B8: ; 0x021F86B8
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F86CC
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _021F86E2
_021F86CC:
	ldr r1, _021F8704 ; =0x022089F8
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F40
_021F86E2:
	add r0, r4, #0
	bl sub_02023F70
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021F86F2
	mov r1, #0
_021F86F2:
	add r0, r4, #0
	bl sub_02023F40
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	pop {r4, pc}
	nop
_021F8704: .word 0x022089F8
	thumb_func_end ov01_021F86B8

	thumb_func_start ov01_021F8708
ov01_021F8708: ; 0x021F8708
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	add r0, r1, #0
	bl sub_02023F30
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r4, #3
	bhi _021F876E
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F8738: ; jump table
	.short _021F876E - _021F8738 - 2 ; case 0
	.short _021F8740 - _021F8738 - 2 ; case 1
	.short _021F874C - _021F8738 - 2 ; case 2
	.short _021F875E - _021F8738 - 2 ; case 3
_021F8740:
	cmp r0, #0x18
	blt _021F876E
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _021F876E
_021F874C:
	cmp r0, #0x28
	bge _021F8758
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	b _021F876E
_021F8758:
	ldr r0, _021F8784 ; =0xFFFFB000
	str r0, [sp]
	b _021F876E
_021F875E:
	cmp r0, #0x38
	bge _021F8768
	ldr r0, _021F8788 ; =0xFFFFF000
	str r0, [sp]
	b _021F876E
_021F8768:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
_021F876E:
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0205F97C
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F8784: .word 0xFFFFB000
_021F8788: .word 0xFFFFF000
	thumb_func_end ov01_021F8708

	thumb_func_start ov01_021F878C
ov01_021F878C: ; 0x021F878C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	ldr r7, [r0, #4]
	str r0, [sp]
	cmp r7, #0
	beq _021F87FA
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F87FA
	add r0, r4, #0
	bl sub_0205F2A8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #2
	blt _021F87C0
	bl GF_AssertFail
_021F87C0:
	lsl r6, r5, #2
	ldr r5, _021F8800 ; =0x022089D0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8874
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F87FA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8800: .word 0x022089D0
	thumb_func_end ov01_021F878C

	thumb_func_start ov01_021F8804
ov01_021F8804: ; 0x021F8804
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F8818
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _021F882C
_021F8818:
	ldr r1, _021F8838 ; =0x02208A18
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F882C:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
_021F8838: .word 0x02208A18
	thumb_func_end ov01_021F8804

	thumb_func_start ov01_021F883C
ov01_021F883C: ; 0x021F883C
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F8850
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #1
	beq _021F8864
_021F8850:
	ldr r1, _021F8870 ; =0x02208A18
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F8864:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
_021F8870: .word 0x02208A18
	thumb_func_end ov01_021F883C

	thumb_func_start ov01_021F8874
ov01_021F8874: ; 0x021F8874
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	add r0, r1, #0
	bl sub_02023F30
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r4, #3
	bhi _021F88DA
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F88A4: ; jump table
	.short _021F88DA - _021F88A4 - 2 ; case 0
	.short _021F88AC - _021F88A4 - 2 ; case 1
	.short _021F88B8 - _021F88A4 - 2 ; case 2
	.short _021F88CA - _021F88A4 - 2 ; case 3
_021F88AC:
	cmp r0, #0x18
	blt _021F88DA
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _021F88DA
_021F88B8:
	cmp r0, #0x28
	bge _021F88C4
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	b _021F88DA
_021F88C4:
	ldr r0, _021F88E8 ; =0xFFFFB000
	str r0, [sp]
	b _021F88DA
_021F88CA:
	cmp r0, #0x38
	bge _021F88D4
	ldr r0, _021F88EC ; =0xFFFFF000
	str r0, [sp]
	b _021F88DA
_021F88D4:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
_021F88DA:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0205F97C
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F88E8: .word 0xFFFFB000
_021F88EC: .word 0xFFFFF000
	thumb_func_end ov01_021F8874

	thumb_func_start ov01_021F88F0
ov01_021F88F0: ; 0x021F88F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F894A
	cmp r4, #0
	beq _021F894A
	add r0, r5, #0
	bl sub_0205F2A8
	add r7, r0, #0
	strb r7, [r6]
	add r0, r5, #0
	bl sub_0205F330
	strb r0, [r6, #2]
	add r0, r7, #0
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F04
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F894A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F88F0

	thumb_func_start ov01_021F894C
ov01_021F894C: ; 0x021F894C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F89B6
	cmp r4, #0
	beq _021F89B6
	add r0, r5, #0
	bl sub_0205F2A8
	strb r0, [r6]
	add r0, r5, #0
	bl sub_0205F330
	strb r0, [r6, #2]
	add r0, r4, #0
	bl sub_02023EF4
	cmp r0, #0
	beq _021F8990
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F8990:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	add r0, r5, #0
	bl sub_0205F98C
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F89B6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F894C

	thumb_func_start ov01_021F89B8
ov01_021F89B8: ; 0x021F89B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8A48
	cmp r4, #0
	beq _021F8A48
	add r0, r5, #0
	bl sub_0205F2A8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205F330
	cmp r0, #0
	bne _021F8A0A
	add r0, r4, #0
	bl sub_02023EF4
	cmp r0, #1
	beq _021F89FE
	add r0, r4, #0
	mov r1, #1
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F89FE:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	b _021F8A2E
_021F8A0A:
	add r0, r4, #0
	bl sub_02023EF4
	cmp r0, #0
	beq _021F8A24
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F8A24:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F8A2E:
	strb r7, [r6]
	add r0, r5, #0
	bl sub_0205F330
	strb r0, [r6, #2]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F8A48:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F89B8

	thumb_func_start ov01_021F8A4C
ov01_021F8A4C: ; 0x021F8A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r6, #0
	ldr r5, [r4, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8AAE
	cmp r5, #0
	beq _021F8AAE
	add r0, r6, #0
	bl sub_0205F2A8
	mov r1, #0
	ldrsb r1, [r4, r1]
	add r7, r0, #0
	cmp r7, r1
	beq _021F8A8A
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
_021F8A8A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021FA3E8
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021F8C88
	add r0, r6, #0
	strb r7, [r4]
	bl sub_0205F330
	strb r0, [r4, #2]
_021F8AAE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F8A4C

	thumb_func_start ov01_021F8AB0
ov01_021F8AB0: ; 0x021F8AB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r6, r0, #0
	add r0, r5, #0
	ldr r4, [r6, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8B2C
	cmp r4, #0
	beq _021F8B2C
	add r0, r5, #0
	bl sub_0205F2A8
	str r0, [sp]
	add r0, r5, #0
	bl sub_0205F330
	add r7, r0, #0
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r7, r0
	beq _021F8B00
	cmp r7, #0
	bne _021F8AF0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	b _021F8AF8
_021F8AF0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02023EE0
_021F8AF8:
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F8B00:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	add r0, r5, #0
	bl sub_0205F98C
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #8]
	ldr r0, [sp]
	add r1, r4, #0
	strb r0, [r6]
	add r0, r5, #0
	strb r7, [r6, #2]
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F8C88
_021F8B2C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8AB0

	thumb_func_start ov01_021F8B30
ov01_021F8B30: ; 0x021F8B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	ldr r7, [r0, #4]
	str r0, [sp]
	cmp r7, #0
	beq _021F8B9E
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8B9E
	add r0, r4, #0
	bl sub_0205F2A8
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #1
	blt _021F8B64
	bl GF_AssertFail
_021F8B64:
	lsl r6, r5, #2
	ldr r5, _021F8BA4 ; =0x022089CC
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8BE0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F8B9E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8BA4: .word 0x022089CC
	thumb_func_end ov01_021F8B30

	thumb_func_start ov01_021F8BA8
ov01_021F8BA8: ; 0x021F8BA8
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F8BBC
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _021F8BD0
_021F8BBC:
	ldr r1, _021F8BDC ; =0x02208A28
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F8BD0:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
_021F8BDC: .word 0x02208A28
	thumb_func_end ov01_021F8BA8

	thumb_func_start ov01_021F8BE0
ov01_021F8BE0: ; 0x021F8BE0
	push {lr}
	sub sp, #0xc
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r2, #2
	ldr r3, [sp, #8]
	lsl r2, r2, #0xa
	add r2, r3, r2
	str r2, [sp, #8]
	bl sub_0205F97C
	add sp, #0xc
	pop {pc}
	thumb_func_end ov01_021F8BE0

	thumb_func_start ov01_021F8C00
ov01_021F8C00: ; 0x021F8C00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r4, r1, #0xc
	add r0, r4, #0
	add r1, r6, #0
	bl _s32_div_f
	sub r1, r4, r1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F40
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F04
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8C00

	thumb_func_start ov01_021F8C30
ov01_021F8C30: ; 0x021F8C30
	ldr r3, _021F8C38 ; =ov01_021F8C00
	mov r1, #8
	bx r3
	nop
_021F8C38: .word ov01_021F8C00
	thumb_func_end ov01_021F8C30

	thumb_func_start ov01_021F8C3C
ov01_021F8C3C: ; 0x021F8C3C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov01_021F8C00
	add r0, r5, #0
	bl sub_02023F70
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02023F40
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8C3C

	thumb_func_start ov01_021F8C64
ov01_021F8C64: ; 0x021F8C64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F8C30
	add r0, r5, #0
	bl sub_02023F70
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02023EE0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02023F40
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F8C64

	thumb_func_start ov01_021F8C88
ov01_021F8C88: ; 0x021F8C88
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl sub_0205F228
	cmp r0, #1
	bne _021F8C9C
	mov r4, #0
_021F8C9C:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0205F228
	cmp r0, #1
	bne _021F8CBA
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0205F228
	cmp r0, #0
	bne _021F8CBA
	mov r4, #0
_021F8CBA:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02023EA4
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8C88

	thumb_func_start ov01_021F8CC8
ov01_021F8CC8: ; 0x021F8CC8
	push {r4, lr}
	ldr r3, _021F8CF4 ; =0x022073D8
	add r2, r1, #0
	ldr r4, [r3]
	ldr r1, _021F8CF8 ; =0x0000FFFF
	cmp r4, r1
	beq _021F8CEE
_021F8CD6:
	cmp r4, r0
	bne _021F8CE6
	add r3, r3, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	pop {r4, pc}
_021F8CE6:
	add r3, #0x10
	ldr r4, [r3]
	cmp r4, r1
	bne _021F8CD6
_021F8CEE:
	bl GF_AssertFail
	pop {r4, pc}
	.balign 4, 0
_021F8CF4: .word 0x022073D8
_021F8CF8: .word 0x0000FFFF
	thumb_func_end ov01_021F8CC8

	thumb_func_start ov01_021F8CFC
ov01_021F8CFC: ; 0x021F8CFC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r1, #4
	bl sub_0205F3E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F25C
	add r1, sp, #0
	bl ov01_021F8CC8
	add r0, r5, #0
	add r1, sp, #0
	bl ov01_021FD2EC
	str r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021F8CFC

	thumb_func_start ov01_021F8D24
ov01_021F8D24: ; 0x021F8D24
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F8D24

	thumb_func_start ov01_021F8D28
ov01_021F8D28: ; 0x021F8D28
	push {r4, lr}
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F8D3E
	bl ov01_021F1640
	mov r0, #0
	str r0, [r4]
_021F8D3E:
	pop {r4, pc}
	thumb_func_end ov01_021F8D28

	thumb_func_start ov01_021F8D40
ov01_021F8D40: ; 0x021F8D40
	push {r4, lr}
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F8D56
	bl ov01_021F1640
	mov r0, #0
	str r0, [r4]
_021F8D56:
	pop {r4, pc}
	thumb_func_end ov01_021F8D40

	thumb_func_start ov01_021F8D58
ov01_021F8D58: ; 0x021F8D58
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F25C
	add r1, sp, #0
	bl ov01_021F8CC8
	add r0, r5, #0
	add r1, sp, #0
	bl ov01_021FD2EC
	str r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8D58

	thumb_func_start ov01_021F8D80
ov01_021F8D80: ; 0x021F8D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp]
	add r4, r2, #0
	add r6, r3, #0
	bl ov01_021F9344
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205F888
	add r7, r0, #0
	add r0, r5, #0
	bl ov01_02205564
	ldrb r1, [r4, #0x17]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _021F8DBA
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0205F96C
	mov r0, #0x14
	ldrsb r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	b _021F8DFC
_021F8DBA:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _021F8DC8
	cmp r7, #0
	bne _021F8DC8
	cmp r0, #0
	beq _021F8DD8
_021F8DC8:
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0205F96C
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	b _021F8DE0
_021F8DD8:
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_021F8DE0:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021F8DF0
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #8
	bl ov01_021F8E70
_021F8DF0:
	add r0, r5, #0
	bl ov01_022054E0
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
_021F8DFC:
	mov r0, #0x10
	ldrsb r0, [r4, r0]
	cmp r6, r0
	beq _021F8E1E
	add r0, r6, #0
	bl ov01_021FA44C
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02023EE0
	ldr r0, [sp]
	mov r1, #0
	bl sub_02023F40
	mov r0, #0
	strb r0, [r4, #0x15]
_021F8E1E:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F8E56
	cmp r7, #0
	bne _021F8E56
	mov r1, #1
	ldr r0, [sp]
	lsl r1, r1, #0xc
	bl sub_02023F04
	lsl r0, r6, #0x18
	ldr r2, [sp]
	lsr r0, r0, #0x18
	add r1, r5, #0
	bl ov01_021F8FC0
	cmp r0, #0
	beq _021F8E52
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #1
	strb r0, [r4, #0x15]
	b _021F8E56
_021F8E52:
	mov r0, #0
	strb r0, [r4, #0x15]
_021F8E56:
	cmp r7, #0
	beq _021F8E64
	mov r1, #1
	ldr r0, [sp]
	lsl r1, r1, #0xc
	bl sub_02023F04
_021F8E64:
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0205F97C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F8D80

	thumb_func_start ov01_021F8E70
ov01_021F8E70: ; 0x021F8E70
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r1, sp, #0
	add r4, r2, #0
	bl sub_0205F96C
	add r0, r6, #0
	bl sub_0205F25C
	bl ov01_021FA298
	cmp r0, #0xa
	bne _021F8EDE
	cmp r5, #3
	bhi _021F8F02
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F8E9E: ; jump table
	.short _021F8EA6 - _021F8E9E - 2 ; case 0
	.short _021F8EB4 - _021F8E9E - 2 ; case 1
	.short _021F8EC2 - _021F8E9E - 2 ; case 2
	.short _021F8ED0 - _021F8E9E - 2 ; case 3
_021F8EA6:
	mov r0, #1
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	add sp, #0xc
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, pc}
_021F8EB4:
	mov r0, #1
	ldr r1, [r4, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	add sp, #0xc
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, pc}
_021F8EC2:
	mov r0, #0xa
	ldr r1, [r4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021F8ED0:
	mov r0, #0xa
	ldr r1, [r4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021F8EDE:
	cmp r5, #2
	beq _021F8EEA
	cmp r5, #3
	beq _021F8EF8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021F8EEA:
	mov r0, #2
	ldr r1, [r4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021F8EF8:
	mov r0, #2
	ldr r1, [r4]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4]
_021F8F02:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8E70

	thumb_func_start ov01_021F8F08
ov01_021F8F08: ; 0x021F8F08
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0205F40C
	add r4, r0, #0
	cmp r5, #0
	beq _021F8F54
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldrb r1, [r4, #0x17]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0x17]
	add r0, r6, #0
	bl sub_0205F2A8
	add r1, sp, #0
	bl ov01_021FD9CC
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strb r0, [r4, #0x12]
	ldr r1, [sp, #8]
	add sp, #0xc
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strb r0, [r4, #0x13]
	pop {r3, r4, r5, r6, pc}
_021F8F54:
	ldrb r1, [r4, #0x17]
	mov r0, #4
	bic r1, r0
	strb r1, [r4, #0x17]
	mov r0, #0
	strb r0, [r4, #0x12]
	strb r0, [r4, #0x13]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8F08

	thumb_func_start ov01_021F8F68
ov01_021F8F68: ; 0x021F8F68
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205F40C
	strb r4, [r0, #0x14]
	pop {r4, pc}
	thumb_func_end ov01_021F8F68

	thumb_func_start ov01_021F8F74
ov01_021F8F74: ; 0x021F8F74
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205F40C
	mov r1, #0x14
	ldrsb r1, [r0, r1]
	add r1, r1, r4
	strb r1, [r0, #0x14]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8F74

	thumb_func_start ov01_021F8F88
ov01_021F8F88: ; 0x021F8F88
	push {r3, lr}
	bl sub_0205F40C
	ldrb r0, [r0, #0x17]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021F8F9A
	mov r0, #1
	pop {r3, pc}
_021F8F9A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8F88

	thumb_func_start ov01_021F8FA0
ov01_021F8FA0: ; 0x021F8FA0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0205F40C
	mov r1, #0x12
	ldrsb r1, [r0, r1]
	lsl r1, r1, #0xc
	str r1, [r4]
	mov r1, #0x13
	ldrsb r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F8FA0

	thumb_func_start ov01_021F8FC0
ov01_021F8FC0: ; 0x021F8FC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	bl sub_02023F30
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r4, r1, #0xc
	cmp r5, #3
	bhi _021F8FF6
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F8FE4: ; jump table
	.short _021F8FF6 - _021F8FE4 - 2 ; case 0
	.short _021F8FEC - _021F8FE4 - 2 ; case 1
	.short _021F8FF0 - _021F8FE4 - 2 ; case 2
	.short _021F8FF4 - _021F8FE4 - 2 ; case 3
_021F8FEC:
	sub r4, #0x14
	b _021F8FF6
_021F8FF0:
	sub r4, #0x28
	b _021F8FF6
_021F8FF4:
	sub r4, #0x3c
_021F8FF6:
	add r0, r6, #0
	bl ov01_022055B0
	cmp r0, #0
	beq _021F9018
	cmp r5, #1
	bne _021F9010
	cmp r4, #5
	blt _021F900C
	cmp r4, #0xf
	blt _021F9028
_021F900C:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F9010:
	cmp r4, #0xa
	bge _021F9028
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F9018:
	cmp r4, #5
	blt _021F9020
	cmp r4, #0xa
	blt _021F9024
_021F9020:
	cmp r4, #0xf
	blt _021F9028
_021F9024:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F9028:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F8FC0

	thumb_func_start ov01_021F902C
ov01_021F902C: ; 0x021F902C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205F40C
	add r2, r0, #0
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_02205808
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F902C

	thumb_func_start ov01_021F9048
ov01_021F9048: ; 0x021F9048
	push {r3, lr}
	bl sub_0205F40C
	ldrb r2, [r0, #0x17]
	mov r1, #1
	bic r2, r1
	strb r2, [r0, #0x17]
	pop {r3, pc}
	thumb_func_end ov01_021F9048

	thumb_func_start ov01_021F9058
ov01_021F9058: ; 0x021F9058
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov01_021F9140
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205F9A0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9058

	thumb_func_start ov01_021F9078
ov01_021F9078: ; 0x021F9078
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r7, r0, #0
	add r0, r5, #0
	ldr r4, [r7]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F90C0
	cmp r4, #0
	beq _021F90C0
	add r0, r5, #0
	bl sub_0205F330
	add r3, r0, #0
	lsl r6, r3, #2
	ldr r3, _021F90C4 ; =0x02208B5C
	add r0, r5, #0
	ldr r3, [r3, r6]
	add r1, r4, #0
	add r2, r7, #0
	blx r3
	add r0, r5, #0
	bl sub_0205F330
	str r0, [r7, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F91A4
_021F90C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F90C4: .word 0x02208B5C
	thumb_func_end ov01_021F9078

	thumb_func_start ov01_021F90C8
ov01_021F90C8: ; 0x021F90C8
	ldr r3, _021F90CC ; =ov01_021F91E4
	bx r3
	.balign 4, 0
_021F90CC: .word ov01_021F91E4
	thumb_func_end ov01_021F90C8

	thumb_func_start ov01_021F90D0
ov01_021F90D0: ; 0x021F90D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F90E6
	add r1, r4, #4
	bl ov01_021F9610
_021F90E6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F95A8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F20C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F90D0

	thumb_func_start ov01_021F90FC
ov01_021F90FC: ; 0x021F90FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F913C
	ldr r0, [r4]
	cmp r0, #0
	bne _021F911E
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9510
_021F911E:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F913C
	add r1, r4, #4
	bl ov01_021F9630
	ldr r1, [r4]
	add r0, r5, #0
	bl ov01_021FA3E8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_0205F214
_021F913C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F90FC

	thumb_func_start ov01_021F9140
ov01_021F9140: ; 0x021F9140
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x14
	bl sub_0205F3E8
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F9510
	pop {r4, pc}
	thumb_func_end ov01_021F9140

	thumb_func_start ov01_021F9154
ov01_021F9154: ; 0x021F9154
	push {r4, lr}
	ldr r0, [r2, #0x10]
	add r4, r1, #0
	cmp r0, #0
	beq _021F916E
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F916E:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9154

	thumb_func_start ov01_021F917C
ov01_021F917C: ; 0x021F917C
	push {r4, lr}
	ldr r0, [r2, #0x10]
	add r4, r1, #0
	cmp r0, #1
	beq _021F9196
	add r0, r4, #0
	mov r1, #1
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
_021F9196:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F917C

	thumb_func_start ov01_021F91A4
ov01_021F91A4: ; 0x021F91A4
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl sub_0205F228
	cmp r0, #1
	bne _021F91B8
	mov r4, #0
_021F91B8:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0205F228
	cmp r0, #1
	bne _021F91D6
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0205F228
	cmp r0, #0
	bne _021F91D6
	mov r4, #0
_021F91D6:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02023EA4
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F91A4

	thumb_func_start ov01_021F91E4
ov01_021F91E4: ; 0x021F91E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F40C
	add r1, r0, #0
	add r0, r4, #0
	bl ov01_021F95A8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F91E4

	thumb_func_start ov01_021F91F8
ov01_021F91F8: ; 0x021F91F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205F190
	cmp r0, #0
	beq _021F9212
	bl GF_AssertFail
_021F9212:
	add r0, r5, #0
	bl ov01_021F927C
	add r0, r5, #0
	bl sub_0205F168
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0205F19C
	sub r0, r0, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0205F1A0
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #0x30]
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	bl ov01_021F944C
	add r0, r5, #0
	mov r1, #1
	bl sub_0205F17C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F91F8

	thumb_func_start ov01_021F9250
ov01_021F9250: ; 0x021F9250
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F5D4
	cmp r0, #1
	beq _021F9260
	bl GF_AssertFail
_021F9260:
	add r0, r4, #0
	bl sub_0205F1A0
	bl ov01_021F94A0
	add r0, r4, #0
	mov r1, #1
	bl sub_0205F184
	add r0, r4, #0
	bl ov01_021F9294
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9250

	thumb_func_start ov01_021F927C
ov01_021F927C: ; 0x021F927C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	mov r1, #4
	bl NARC_ctor
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0205F1EC
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F927C

	thumb_func_start ov01_021F9294
ov01_021F9294: ; 0x021F9294
	push {r3, lr}
	bl sub_0205F1F0
	bl NARC_dtor
	pop {r3, pc}
	thumb_func_end ov01_021F9294

	thumb_func_start ov01_021F92A0
ov01_021F92A0: ; 0x021F92A0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F35C
	mov r1, #4
	bl sub_0205F190
	cmp r0, #0
	bne _021F92DA
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_0205F220
	cmp r0, #0
	beq _021F92DA
	add r0, r4, #0
	bl sub_0205F714
	cmp r0, #0
	beq _021F92D4
	add r0, r4, #0
	bl sub_0205F888
	cmp r0, #0
	beq _021F92DA
_021F92D4:
	add r0, r4, #0
	bl sub_0205F484
_021F92DA:
	pop {r4, pc}
	thumb_func_end ov01_021F92A0

	thumb_func_start ov01_021F92DC
ov01_021F92DC: ; 0x021F92DC
	push {r3, lr}
	ldr r3, _021F92FC ; =0x022074A8
	ldr r1, _021F9300 ; =0x0000FFFF
_021F92E2:
	ldrh r2, [r3]
	cmp r2, r0
	bne _021F92EC
	add r0, r3, #0
	pop {r3, pc}
_021F92EC:
	add r3, r3, #6
	ldrh r2, [r3]
	cmp r2, r1
	bne _021F92E2
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F92FC: .word 0x022074A8
_021F9300: .word 0x0000FFFF
	thumb_func_end ov01_021F92DC

	thumb_func_start ov01_021F9304
ov01_021F9304: ; 0x021F9304
	push {r3, lr}
	bl ov01_021F92DC
	cmp r0, #0
	bne _021F9314
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021F9314:
	ldrh r0, [r0, #2]
	pop {r3, pc}
	thumb_func_end ov01_021F9304

	thumb_func_start ov01_021F9318
ov01_021F9318: ; 0x021F9318
	push {r3, lr}
	bl sub_0205F25C
	bl ov01_021F9324
	pop {r3, pc}
	thumb_func_end ov01_021F9318

	thumb_func_start ov01_021F9324
ov01_021F9324: ; 0x021F9324
	push {r3, lr}
	bl ov01_021F92DC
	cmp r0, #0
	bne _021F9332
	mov r0, #0
	pop {r3, pc}
_021F9332:
	ldrh r0, [r0, #4]
	ldr r1, _021F9340 ; =0x02206D00
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1a
	add r0, r1, r0
	pop {r3, pc}
	nop
_021F9340: .word 0x02206D00
	thumb_func_end ov01_021F9324

	thumb_func_start ov01_021F9344
ov01_021F9344: ; 0x021F9344
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F714
	cmp r0, #1
	bne _021F935E
	add r0, r4, #0
	bl sub_0205F888
	cmp r0, #0
	bne _021F935E
	mov r0, #1
	pop {r4, pc}
_021F935E:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_0205F220
	cmp r0, #0
	beq _021F9370
	mov r0, #1
	pop {r4, pc}
_021F9370:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F9344

	thumb_func_start ov01_021F9374
ov01_021F9374: ; 0x021F9374
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0205F1F0
	add r1, r4, #0
	add r6, r0, #0
	bl NARC_GetMemberSize
	add r1, r0, #0
	cmp r5, #1
	bne _021F9394
	mov r0, #4
	bl AllocFromHeap
	b _021F939A
_021F9394:
	mov r0, #4
	bl AllocFromHeapAtEnd
_021F939A:
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl NARC_ReadWholeMember
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9374

	thumb_func_start ov01_021F93AC
ov01_021F93AC: ; 0x021F93AC
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	add r1, sp, #0x24
	bl sub_0205F944
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_0205F96C
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0205F990
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0205F9B0
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	ldr r3, [sp]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	ldr r3, [sp, #4]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	ldr r3, [sp, #8]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #8]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F93AC

	thumb_func_start ov01_021F9408
ov01_021F9408: ; 0x021F9408
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F290
	add r0, r4, #0
	bl sub_0205F678
	cmp r0, #1
	bne _021F9420
	add r0, r4, #0
	bl sub_0205F484
_021F9420:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9408

	thumb_func_start ov01_021F9424
ov01_021F9424: ; 0x021F9424
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_0205F690
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl sub_0205F20C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9424

	thumb_func_start ov01_021F943C
ov01_021F943C: ; 0x021F943C
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F943C

	thumb_func_start ov01_021F9440
ov01_021F9440: ; 0x021F9440
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F9440

	thumb_func_start ov01_021F9444
ov01_021F9444: ; 0x021F9444
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F9444

	thumb_func_start ov01_021F9448
ov01_021F9448: ; 0x021F9448
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F9448

	thumb_func_start ov01_021F944C
ov01_021F944C: ; 0x021F944C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0x41
	add r5, r0, #0
	lsl r2, r2, #2
	str r1, [r5, r2]
	add r1, r4, #0
	bl ov01_021FA2EC
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA854
	mov r2, #4
	mov r1, #8
	ldr r0, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov01_021F9808
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9698
	ldr r1, [sp, #0x20]
	ldr r2, _021F9498 ; =0x02207260
	ldr r3, _021F949C ; =0x02206CF0
	add r0, r5, #0
	bl ov01_021F9A8C
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F9498: .word 0x02207260
_021F949C: .word 0x02206CF0
	thumb_func_end ov01_021F944C

	thumb_func_start ov01_021F94A0
ov01_021F94A0: ; 0x021F94A0
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FA8F8
	add r0, r4, #0
	bl ov01_021F96E4
	add r0, r4, #0
	bl ov01_021FA1D0
	bl ov01_021FA314
	add r0, r4, #0
	bl ov01_021F9890
	pop {r4, pc}
	thumb_func_end ov01_021F94A0

	thumb_func_start ov01_021F94C0
ov01_021F94C0: ; 0x021F94C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r0, #0
	str r1, [r5]
	bl ov01_021FA3DC
	add r1, r6, #0
	str r0, [sp]
	bl ov01_021F9DA4
	add r4, r0, #0
	bne _021F94EA
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_021F9654
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F94EA:
	sub r0, r4, #3
	cmp r0, #1
	bhi _021F9500
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ov01_021FA75C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F9500:
	add r0, r7, #0
	add r1, r6, #0
	bl ov01_021F9528
	str r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F94C0

	thumb_func_start ov01_021F9510
ov01_021F9510: ; 0x021F9510
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205F25C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F94C0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9510

	thumb_func_start ov01_021F9528
ov01_021F9528: ; 0x021F9528
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl ov01_021FA3DC
	add r4, r0, #0
	bl ov01_021FA1D0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F9F84
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F9704
	add r4, r0, #0
	bne _021F9554
	bl GF_AssertFail
_021F9554:
	add r0, r6, #0
	add r1, sp, #0
	bl ov01_021F93AC
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov01_021FA31C
	add r4, r0, #0
	bne _021F956E
	bl GF_AssertFail
_021F956E:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9528

	thumb_func_start ov01_021F9574
ov01_021F9574: ; 0x021F9574
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	bl sub_02023DA4
	mov r0, #0
	str r0, [r5]
	add r0, r6, #0
	bl sub_0205F35C
	add r1, r6, #0
	add r2, r4, #0
	bl ov01_021F97BC
	cmp r0, #0
	bne _021F95A4
	add r0, r6, #0
	bl ov01_021FA3DC
	add r1, r4, #0
	bl ov01_021F9778
_021F95A4:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9574

	thumb_func_start ov01_021F95A8
ov01_021F95A8: ; 0x021F95A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov01_021F9688
	ldr r0, [r4]
	cmp r0, #0
	beq _021F95C8
	add r0, r5, #0
	bl sub_0205F25C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9574
_021F95C8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F95A8

	thumb_func_start ov01_021F95CC
ov01_021F95CC: ; 0x021F95CC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl ov01_021F9688
	ldr r0, [r5]
	cmp r0, #0
	beq _021F95E6
	bl sub_02023DA4
	mov r0, #0
	str r0, [r5]
_021F95E6:
	ldr r0, _021F960C ; =0x0000FFFF
	cmp r4, r0
	beq _021F960A
	add r0, r6, #0
	bl sub_0205F35C
	add r1, r6, #0
	add r2, r4, #0
	bl ov01_021F97BC
	cmp r0, #0
	bne _021F960A
	add r0, r6, #0
	bl ov01_021FA3DC
	add r1, r4, #0
	bl ov01_021F9778
_021F960A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F960C: .word 0x0000FFFF
	thumb_func_end ov01_021F95CC

	thumb_func_start ov01_021F9610
ov01_021F9610: ; 0x021F9610
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02023EB8
	str r0, [r4]
	add r0, r5, #0
	bl sub_02023EF4
	strh r0, [r4, #6]
	add r0, r5, #0
	bl sub_02023F30
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9610

	thumb_func_start ov01_021F9630
ov01_021F9630: ; 0x021F9630
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02023EA4
	ldrh r1, [r4, #6]
	add r0, r5, #0
	bl sub_02023EE0
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_02023F1C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9630

	thumb_func_start ov01_021F9654
ov01_021F9654: ; 0x021F9654
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA3DC
	add r1, r6, #0
	add r7, r0, #0
	bl ov01_021F9974
	cmp r0, #0
	bne _021F9678
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F9528
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F9678:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov01_021FA75C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9654

	thumb_func_start ov01_021F9688
ov01_021F9688: ; 0x021F9688
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FA3DC
	add r1, r4, #0
	bl ov01_021FA798
	pop {r4, pc}
	thumb_func_end ov01_021F9688

	thumb_func_start ov01_021F9698
ov01_021F9698: ; 0x021F9698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x28
	add r7, r0, #0
	mov r0, #4
	mul r1, r5
	bl AllocFromHeap
	add r6, r0, #0
	add r0, r7, #0
	add r0, #0xe4
	str r6, [r0]
	cmp r6, #0
	bne _021F96B8
	bl GF_AssertFail
_021F96B8:
	mov r0, #4
	lsl r1, r5, #3
	bl AllocFromHeap
	add r4, r0, #0
	add r7, #0xf4
	str r4, [r7]
	cmp r4, #0
	bne _021F96CE
	bl GF_AssertFail
_021F96CE:
	ldr r0, _021F96E0 ; =0x0000FFFF
_021F96D0:
	str r0, [r4]
	str r6, [r4, #4]
	add r4, #8
	add r6, #0x28
	sub r5, r5, #1
	bne _021F96D0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F96E0: .word 0x0000FFFF
	thumb_func_end ov01_021F9698

	thumb_func_start ov01_021F96E4
ov01_021F96E4: ; 0x021F96E4
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021F9798
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1]
	mov r0, #4
	bl FreeToHeapExplicit
	add r4, #0xf4
	ldr r1, [r4]
	mov r0, #4
	bl FreeToHeapExplicit
	pop {r4, pc}
	thumb_func_end ov01_021F96E4

	thumb_func_start ov01_021F9704
ov01_021F9704: ; 0x021F9704
	push {r4, r5, r6, lr}
	add r2, r0, #0
	add r2, #0xf4
	ldr r4, [r2]
	ldr r2, [r0, #4]
	add r6, r4, #0
	add r5, r2, #0
_021F9712:
	ldr r3, [r6]
	cmp r3, r1
	bne _021F971C
	ldr r0, [r6, #4]
	pop {r4, r5, r6, pc}
_021F971C:
	add r6, #8
	sub r5, r5, #1
	bne _021F9712
	ldr r3, _021F9740 ; =0x0000FFFF
_021F9724:
	ldr r5, [r4]
	cmp r5, r3
	bne _021F9736
	str r1, [r4]
	ldr r2, [r4, #4]
	bl ov01_021FA370
	ldr r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021F9736:
	add r4, #8
	sub r2, r2, #1
	bne _021F9724
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F9740: .word 0x0000FFFF
	thumb_func_end ov01_021F9704

	thumb_func_start ov01_021F9744
ov01_021F9744: ; 0x021F9744
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0205F1A0
	add r1, r0, #0
	add r1, #0xf4
	ldr r2, [r1]
	ldr r1, [r0, #4]
_021F9756:
	ldr r0, [r2]
	cmp r0, r5
	bne _021F976C
	ldr r3, [r2, #4]
	mov r2, #5
_021F9760:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _021F9760
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F976C:
	add r2, #8
	sub r1, r1, #1
	bne _021F9756
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9744

	thumb_func_start ov01_021F9778
ov01_021F9778: ; 0x021F9778
	add r2, r0, #0
	add r2, #0xf4
	ldr r3, [r2]
	ldr r2, [r0, #4]
_021F9780:
	ldr r0, [r3]
	cmp r0, r1
	bne _021F978C
	ldr r0, _021F9794 ; =0x0000FFFF
	str r0, [r3]
	bx lr
_021F978C:
	add r3, #8
	sub r2, r2, #1
	bne _021F9780
	bx lr
	.balign 4, 0
_021F9794: .word 0x0000FFFF
	thumb_func_end ov01_021F9778

	thumb_func_start ov01_021F9798
ov01_021F9798: ; 0x021F9798
	push {r3, r4}
	add r1, r0, #0
	add r1, #0xf4
	ldr r4, [r1]
	ldr r1, _021F97B8 ; =0x0000FFFF
	ldr r3, [r0, #4]
	add r0, r1, #0
_021F97A6:
	ldr r2, [r4]
	cmp r2, r0
	beq _021F97AE
	str r1, [r4]
_021F97AE:
	add r4, #8
	sub r3, r3, #1
	bne _021F97A6
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021F97B8: .word 0x0000FFFF
	thumb_func_end ov01_021F9798

	thumb_func_start ov01_021F97BC
ov01_021F97BC: ; 0x021F97BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0205F168
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0205F1AC
	ldr r7, _021F9804 ; =0x0000FFFF
	str r0, [sp]
_021F97D4:
	ldr r0, [sp]
	cmp r0, r5
	beq _021F97F4
	bl sub_0205F624
	cmp r0, #1
	bne _021F97F4
	ldr r0, [sp]
	bl sub_0205F25C
	cmp r0, r7
	beq _021F97F4
	cmp r0, r6
	bne _021F97F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F97F4:
	add r0, sp, #0
	bl sub_0205F1C4
	sub r4, r4, #1
	bne _021F97D4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F9804: .word 0x0000FFFF
	thumb_func_end ov01_021F97BC

	thumb_func_start ov01_021F9808
ov01_021F9808: ; 0x021F9808
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r0, #4
	mov r1, #0x3f
	lsl r2, r4, #0xc
	add r3, r4, #0
	bl ov01_021FC4C4
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	bl ov01_021F9B00
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021FA208
	add r0, r5, #0
	sub r1, r4, r6
	bl ov01_021FA210
	mov r0, #4
	mov r1, #0x40
	lsl r2, r7, #7
	add r3, r7, #0
	bl ov01_021FC4C4
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	add r0, r5, #0
	bl ov01_021F9C24
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov01_021FA218
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	sub r1, r7, r1
	bl ov01_021FA220
	ldr r0, [sp, #0x1c]
	mov r1, #4
	bl sub_02025780
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021FA1EC
	add r0, r5, #0
	bl ov01_021F9D48
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov01_021FA228
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	sub r1, r2, r1
	bl ov01_021FA230
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9808

	thumb_func_start ov01_021F9890
ov01_021F9890: ; 0x021F9890
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov01_021FC520
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl ov01_021FC520
	add r0, r4, #0
	bl ov01_021FA1F4
	bl sub_020257C4
	pop {r4, pc}
	.balign 4, 0
_021F98B4:
	ldrh r3, [r2]
	cmp r3, r0
	bne _021F98BE
	add r0, r2, #0
	bx lr
_021F98BE:
	add r2, r2, #4
	ldrh r3, [r2]
	cmp r3, r1
	bne _021F98B4
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021F9890

	thumb_func_start ov01_021F98CC
ov01_021F98CC: ; 0x021F98CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r7, r3, #0
	bl ov01_021FC5B8
	cmp r0, #1
	bne _021F98E6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F98E6:
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl _021F98B4
	add r7, r0, #0
	bne _021F98F8
	bl GF_AssertFail
_021F98F8:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0205F1F0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r3, [r7, #2]
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021FC5CC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F98CC

	thumb_func_start ov01_021F9918
ov01_021F9918: ; 0x021F9918
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xf0
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_020257E8
	cmp r0, #0
	bne _021F9932
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F9932:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA524
	cmp r0, #0
	beq _021F9942
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F9942:
	add r0, r4, #0
	bl ov01_021F9304
	add r2, r0, #0
	bpl _021F9950
	mov r0, #2
	pop {r4, r5, r6, pc}
_021F9950:
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl ov01_021FA470
	cmp r0, #1
	bne _021F9962
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F9962:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9918

	thumb_func_start ov01_021F9968
ov01_021F9968: ; 0x021F9968
	ldr r3, _021F9970 ; =ov01_021F9918
	add r2, r1, #0
	mov r1, #0
	bx r3
	.balign 4, 0
_021F9970: .word ov01_021F9918
	thumb_func_end ov01_021F9968

	thumb_func_start ov01_021F9974
ov01_021F9974: ; 0x021F9974
	ldr r3, _021F997C ; =ov01_021F9918
	add r2, r1, #0
	mov r1, #1
	bx r3
	.balign 4, 0
_021F997C: .word ov01_021F9918
	thumb_func_end ov01_021F9974

	thumb_func_start ov01_021F9980
ov01_021F9980: ; 0x021F9980
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4]
	ldr r0, _021F99A0 ; =0x0000FFFF
	cmp r1, r0
	beq _021F999E
	add r6, r0, #0
_021F9990:
	add r0, r5, #0
	bl ov01_021F9968
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, r6
	bne _021F9990
_021F999E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F99A0: .word 0x0000FFFF
	thumb_func_end ov01_021F9980

	thumb_func_start ov01_021F99A4
ov01_021F99A4: ; 0x021F99A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA1DC
	ldr r0, _021F99CC ; =0x02207294
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xf8
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xff
	bl ov01_021F98CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9B10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F99CC: .word 0x02207294
	thumb_func_end ov01_021F99A4

	thumb_func_start ov01_021F99D0
ov01_021F99D0: ; 0x021F99D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA1DC
	ldr r0, _021F99F8 ; =0x02207294
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xf8
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xff
	bl ov01_021F98CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9B54
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F99F8: .word 0x02207294
	thumb_func_end ov01_021F99D0

	thumb_func_start ov01_021F99FC
ov01_021F99FC: ; 0x021F99FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0xff
	beq _021F9A16
_021F9A08:
	add r0, r5, #0
	bl ov01_021F99A4
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, #0xff
	bne _021F9A08
_021F9A16:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F99FC

	thumb_func_start ov01_021F9A18
ov01_021F9A18: ; 0x021F9A18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA1E4
	ldr r0, _021F9A40 ; =0x022072CC
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xff
	bl ov01_021F98CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9C34
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F9A40: .word 0x022072CC
	thumb_func_end ov01_021F9A18

	thumb_func_start ov01_021F9A44
ov01_021F9A44: ; 0x021F9A44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA1E4
	ldr r0, _021F9A6C ; =0x022072CC
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xff
	bl ov01_021F98CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9C78
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F9A6C: .word 0x022072CC
	thumb_func_end ov01_021F9A44

	thumb_func_start ov01_021F9A70
ov01_021F9A70: ; 0x021F9A70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0xff
	beq _021F9A8A
_021F9A7C:
	add r0, r5, #0
	bl ov01_021F9A18
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, #0xff
	bne _021F9A7C
_021F9A8A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9A70

	thumb_func_start ov01_021F9A8C
ov01_021F9A8C: ; 0x021F9A8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov01_021F9980
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F99FC
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F9A70
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F9AAC:
	stmia r0!, {r1}
	sub r2, r2, #1
	bne _021F9AAC
	bx lr
	thumb_func_end ov01_021F9A8C

	thumb_func_start ov01_021F9AB4
ov01_021F9AB4: ; 0x021F9AB4
	push {r3, r4}
_021F9AB6:
	ldr r4, [r0]
	cmp r4, r2
	bne _021F9AC4
	str r1, [r0]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021F9AC4:
	add r0, r0, #4
	sub r3, r3, #1
	bne _021F9AB6
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov01_021F9AB4
_021F9AD0:
	ldr r3, [r0]
	cmp r3, r1
	bne _021F9ADA
	mov r0, #1
	bx lr
_021F9ADA:
	add r0, r0, #4
	sub r2, r2, #1
	bne _021F9AD0
	mov r0, #0
	bx lr

	thumb_func_start ov01_021F9AE4
ov01_021F9AE4: ; 0x021F9AE4
	push {r3, r4}
_021F9AE6:
	ldr r4, [r0]
	cmp r4, r1
	bne _021F9AF4
	str r2, [r0]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021F9AF4:
	add r0, r0, #4
	sub r3, r3, #1
	bne _021F9AE6
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov01_021F9AE4

	thumb_func_start ov01_021F9B00
ov01_021F9B00: ; 0x021F9B00
	push {r3, lr}
	bl ov01_021FA200
	mov r1, #0xff
	mov r2, #8
	bl _021F9AAC
	pop {r3, pc}
	thumb_func_end ov01_021F9B00

	thumb_func_start ov01_021F9B10
ov01_021F9B10: ; 0x021F9B10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA20C
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA200
	add r1, r4, #0
	mov r2, #0xff
	add r3, r6, #0
	bl ov01_021F9AB4
	cmp r0, #0
	bne _021F9B34
	bl GF_AssertFail
_021F9B34:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9B10

	thumb_func_start ov01_021F9B38
ov01_021F9B38: ; 0x021F9B38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA20C
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA200
	add r1, r4, #0
	add r2, r6, #0
	bl _021F9AD0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F9B38

	thumb_func_start ov01_021F9B54
ov01_021F9B54: ; 0x021F9B54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA200
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA20C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA214
	add r3, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	mov r2, #0xff
	bl ov01_021F9AB4
	cmp r0, #0
	bne _021F9B82
	bl GF_AssertFail
_021F9B82:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9B54

	thumb_func_start ov01_021F9B84
ov01_021F9B84: ; 0x021F9B84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA200
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA20C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA214
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021F9AD0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9B84

	thumb_func_start ov01_021F9BAC
ov01_021F9BAC: ; 0x021F9BAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA200
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA20C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA214
	add r3, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	mov r2, #0xff
	bl ov01_021F9AE4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9BAC

	thumb_func_start ov01_021F9BD4
ov01_021F9BD4: ; 0x021F9BD4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl ov01_021FA1DC
	add r0, r6, #0
	bl ov01_021FA200
	add r4, r0, #0
	add r0, r6, #0
	bl ov01_021FA20C
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov01_021FA214
	add r4, r0, #0
_021F9BFA:
	ldr r1, [r5]
	cmp r1, #0xff
	beq _021F9C1C
	add r0, r7, #0
	mov r2, #0
	bl ov01_021FA01C
	cmp r0, #0
	bne _021F9C1C
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [r5]
	bl ov01_021FC588
	mov r0, #0xff
	str r0, [r5]
_021F9C1C:
	add r5, r5, #4
	sub r4, r4, #1
	bne _021F9BFA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9BD4

	thumb_func_start ov01_021F9C24
ov01_021F9C24: ; 0x021F9C24
	push {r3, lr}
	bl ov01_021FA204
	mov r1, #0xff
	mov r2, #8
	bl _021F9AAC
	pop {r3, pc}
	thumb_func_end ov01_021F9C24

	thumb_func_start ov01_021F9C34
ov01_021F9C34: ; 0x021F9C34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA21C
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA204
	add r1, r4, #0
	mov r2, #0xff
	add r3, r6, #0
	bl ov01_021F9AB4
	cmp r0, #0
	bne _021F9C58
	bl GF_AssertFail
_021F9C58:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9C34

	thumb_func_start ov01_021F9C5C
ov01_021F9C5C: ; 0x021F9C5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA21C
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA204
	add r1, r4, #0
	add r2, r6, #0
	bl _021F9AD0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F9C5C

	thumb_func_start ov01_021F9C78
ov01_021F9C78: ; 0x021F9C78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA204
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA21C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA224
	add r3, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	mov r2, #0xff
	bl ov01_021F9AB4
	cmp r0, #0
	bne _021F9CA6
	bl GF_AssertFail
_021F9CA6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9C78

	thumb_func_start ov01_021F9CA8
ov01_021F9CA8: ; 0x021F9CA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA204
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA21C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA224
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021F9AD0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9CA8

	thumb_func_start ov01_021F9CD0
ov01_021F9CD0: ; 0x021F9CD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA204
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA21C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA224
	add r3, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	mov r2, #0xff
	bl ov01_021F9AE4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9CD0

	thumb_func_start ov01_021F9CF8
ov01_021F9CF8: ; 0x021F9CF8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl ov01_021FA1E4
	add r0, r6, #0
	bl ov01_021FA204
	add r4, r0, #0
	add r0, r6, #0
	bl ov01_021FA21C
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov01_021FA224
	add r4, r0, #0
_021F9D1E:
	ldr r1, [r5]
	cmp r1, #0xff
	beq _021F9D40
	add r0, r7, #0
	mov r2, #0
	bl ov01_021FA094
	cmp r0, #0
	bne _021F9D40
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r1, [r5]
	bl ov01_021FC588
	mov r0, #0xff
	str r0, [r5]
_021F9D40:
	add r5, r5, #4
	sub r4, r4, #1
	bne _021F9D1E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9CF8

	thumb_func_start ov01_021F9D48
ov01_021F9D48: ; 0x021F9D48
	push {r3, lr}
	bl ov01_021FA1FC
	ldr r1, _021F9D58 ; =0x0000FFFF
	mov r2, #0x20
	bl _021F9AAC
	pop {r3, pc}
	.balign 4, 0
_021F9D58: .word 0x0000FFFF
	thumb_func_end ov01_021F9D48

	thumb_func_start ov01_021F9D5C
ov01_021F9D5C: ; 0x021F9D5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA22C
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA1FC
	ldr r2, _021F9D84 ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl ov01_021F9AB4
	cmp r0, #0
	bne _021F9D80
	bl GF_AssertFail
_021F9D80:
	pop {r4, r5, r6, pc}
	nop
_021F9D84: .word 0x0000FFFF
	thumb_func_end ov01_021F9D5C

	thumb_func_start ov01_021F9D88
ov01_021F9D88: ; 0x021F9D88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA22C
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA1FC
	add r1, r4, #0
	add r2, r6, #0
	bl _021F9AD0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F9D88

	thumb_func_start ov01_021F9DA4
ov01_021F9DA4: ; 0x021F9DA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9D88
	cmp r0, #1
	bne _021F9DB6
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F9DB6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9E9C
	cmp r0, #1
	bne _021F9DC6
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F9DC6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA524
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9DA4

	thumb_func_start ov01_021F9DD0
ov01_021F9DD0: ; 0x021F9DD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA1FC
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA22C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA234
	add r3, r0, #0
	ldr r2, _021F9E00 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov01_021F9AB4
	cmp r0, #0
	bne _021F9DFE
	bl GF_AssertFail
_021F9DFE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F9E00: .word 0x0000FFFF
	thumb_func_end ov01_021F9DD0

	thumb_func_start ov01_021F9E04
ov01_021F9E04: ; 0x021F9E04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA1FC
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA22C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA234
	add r3, r0, #0
	ldr r2, _021F9E2C ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov01_021F9AE4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F9E2C: .word 0x0000FFFF
	thumb_func_end ov01_021F9E04

	thumb_func_start ov01_021F9E30
ov01_021F9E30: ; 0x021F9E30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	bl ov01_021FA1F4
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov01_021FA1FC
	add r4, r0, #0
	add r0, r6, #0
	bl ov01_021FA22C
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov01_021FA234
	add r7, r0, #0
_021F9E5A:
	ldr r4, [r5]
	ldr r0, _021F9E98 ; =0x0000FFFF
	cmp r4, r0
	beq _021F9E8C
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F9FCC
	cmp r0, #0
	bne _021F9E8C
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_020258E0
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021FA4F0
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021FA6A4
	ldr r0, _021F9E98 ; =0x0000FFFF
	str r0, [r5]
_021F9E8C:
	add r5, r5, #4
	sub r7, r7, #1
	bne _021F9E5A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F9E98: .word 0x0000FFFF
	thumb_func_end ov01_021F9E30

	thumb_func_start ov01_021F9E9C
ov01_021F9E9C: ; 0x021F9E9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov01_021FA1FC
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA22C
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov01_021FA234
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021F9AD0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9E9C

	thumb_func_start ov01_021F9EC4
ov01_021F9EC4: ; 0x021F9EC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9D88
	cmp r0, #1
	bne _021F9ED6
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F9ED6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9E9C
	cmp r0, #1
	bne _021F9EE6
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F9EE6:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9EC4

	thumb_func_start ov01_021F9EEC
ov01_021F9EEC: ; 0x021F9EEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9B38
	cmp r0, #1
	bne _021F9EFE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F9EFE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9B84
	cmp r0, #1
	bne _021F9F0E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F9F0E:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9EEC

	thumb_func_start ov01_021F9F14
ov01_021F9F14: ; 0x021F9F14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9C5C
	cmp r0, #1
	bne _021F9F26
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F9F26:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9CA8
	cmp r0, #1
	bne _021F9F36
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F9F36:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9F14

	thumb_func_start ov01_021F9F3C
ov01_021F9F3C: ; 0x021F9F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9DA4
	cmp r0, #0
	bne _021F9F52
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9974
_021F9F52:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9F3C

	thumb_func_start ov01_021F9F54
ov01_021F9F54: ; 0x021F9F54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9EEC
	cmp r0, #2
	bne _021F9F6A
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F99D0
_021F9F6A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9F54

	thumb_func_start ov01_021F9F6C
ov01_021F9F6C: ; 0x021F9F6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9F14
	cmp r0, #2
	bne _021F9F82
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9A44
_021F9F82:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9F6C

	thumb_func_start ov01_021F9F84
ov01_021F9F84: ; 0x021F9F84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov01_021FA28C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F9F54
	add r0, r4, #0
	bl ov01_021FA2A0
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F9F6C
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9F3C
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9F84

	thumb_func_start ov01_021F9FB0
ov01_021F9FB0: ; 0x021F9FB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F9BD4
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9CF8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9E30
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F9FB0

	thumb_func_start ov01_021F9FCC
ov01_021F9FCC: ; 0x021F9FCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r6, r0, #0
	bl sub_0205EEF4
	cmp r0, #1
	bne _021FA016
	add r7, sp, #0
_021F9FEC:
	cmp r4, #0
	beq _021F9FF6
	ldr r0, [sp]
	cmp r4, r0
	beq _021FA006
_021F9FF6:
	ldr r0, [sp]
	bl sub_0205F25C
	cmp r0, r5
	bne _021FA006
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FA006:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_0205EEF4
	cmp r0, #1
	beq _021F9FEC
_021FA016:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F9FCC

	thumb_func_start ov01_021FA01C
ov01_021FA01C: ; 0x021FA01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl sub_0205EEF4
	cmp r0, #1
	bne _021FA088
_021FA03A:
	cmp r5, #0
	beq _021FA044
	ldr r0, [sp]
	cmp r5, r0
	beq _021FA078
_021FA044:
	ldr r0, [sp]
	bl sub_0205F25C
	add r4, r0, #0
	ldr r0, _021FA090 ; =0x0000FFFF
	cmp r4, r0
	beq _021FA078
	ldr r0, [sp]
	bl ov01_021F9318
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021FA078
	ldr r0, _021FA090 ; =0x0000FFFF
	cmp r4, r0
	beq _021FA078
	add r0, r4, #0
	bl ov01_021FA28C
	cmp r6, r0
	bne _021FA078
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FA078:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_0205EEF4
	cmp r0, #1
	beq _021FA03A
_021FA088:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FA090: .word 0x0000FFFF
	thumb_func_end ov01_021FA01C

	thumb_func_start ov01_021FA094
ov01_021FA094: ; 0x021FA094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl sub_0205EEF4
	cmp r0, #1
	bne _021FA0FE
_021FA0B2:
	cmp r5, #0
	beq _021FA0BC
	ldr r0, [sp]
	cmp r0, r5
	beq _021FA0EE
_021FA0BC:
	ldr r0, _021FA104 ; =0x0000FFFF
	cmp r4, r0
	beq _021FA0EE
	ldr r0, [sp]
	bl ov01_021F9318
	ldrh r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021FA0EE
	ldr r0, [sp]
	bl sub_0205F25C
	ldr r1, _021FA104 ; =0x0000FFFF
	add r4, r0, #0
	cmp r4, r1
	beq _021FA0EE
	bl ov01_021FA2A0
	cmp r6, r0
	bne _021FA0EE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FA0EE:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_0205EEF4
	cmp r0, #1
	beq _021FA0B2
_021FA0FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FA104: .word 0x0000FFFF
	thumb_func_end ov01_021FA094

	thumb_func_start ov01_021FA108
ov01_021FA108: ; 0x021FA108
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	bl sub_0205F1A0
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021FA28C
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	bl ov01_021F9EEC
	cmp r0, #1
	bne _021FA14E
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl ov01_021FA01C
	cmp r0, #0
	bne _021FA14E
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp]
	bl ov01_021FC588
	ldr r1, [sp]
	add r0, r4, #0
	bl ov01_021F9BAC
_021FA14E:
	add r0, r5, #0
	bl ov01_021FA2A0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov01_021F9F14
	cmp r0, #1
	bne _021FA184
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl ov01_021FA094
	cmp r0, #0
	bne _021FA184
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r1, [sp, #4]
	bl ov01_021FC588
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov01_021F9CD0
_021FA184:
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F9EC4
	cmp r0, #1
	bne _021FA1C2
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov01_021F9FCC
	cmp r0, #0
	bne _021FA1C2
	add r0, r4, #0
	bl ov01_021FA1F4
	add r1, r5, #0
	bl sub_020258E0
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021F9E04
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021FA4F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021FA6A4
_021FA1C2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA108

	thumb_func_start ov01_021FA1C8
ov01_021FA1C8: ; 0x021FA1C8
	add r0, #0xe0
	str r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA1C8

	thumb_func_start ov01_021FA1D0
ov01_021FA1D0: ; 0x021FA1D0
	add r0, #0xe0
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA1D0

	thumb_func_start ov01_021FA1D8
ov01_021FA1D8: ; 0x021FA1D8
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov01_021FA1D8

	thumb_func_start ov01_021FA1DC
ov01_021FA1DC: ; 0x021FA1DC
	add r0, #0xe8
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA1DC

	thumb_func_start ov01_021FA1E4
ov01_021FA1E4: ; 0x021FA1E4
	add r0, #0xec
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA1E4

	thumb_func_start ov01_021FA1EC
ov01_021FA1EC: ; 0x021FA1EC
	add r0, #0xf0
	str r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA1EC

	thumb_func_start ov01_021FA1F4
ov01_021FA1F4: ; 0x021FA1F4
	add r0, #0xf0
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA1F4

	thumb_func_start ov01_021FA1FC
ov01_021FA1FC: ; 0x021FA1FC
	add r0, #0x60
	bx lr
	thumb_func_end ov01_021FA1FC

	thumb_func_start ov01_021FA200
ov01_021FA200: ; 0x021FA200
	add r0, #0x20
	bx lr
	thumb_func_end ov01_021FA200

	thumb_func_start ov01_021FA204
ov01_021FA204: ; 0x021FA204
	add r0, #0x40
	bx lr
	thumb_func_end ov01_021FA204

	thumb_func_start ov01_021FA208
ov01_021FA208: ; 0x021FA208
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov01_021FA208

	thumb_func_start ov01_021FA20C
ov01_021FA20C: ; 0x021FA20C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov01_021FA20C

	thumb_func_start ov01_021FA210
ov01_021FA210: ; 0x021FA210
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021FA210

	thumb_func_start ov01_021FA214
ov01_021FA214: ; 0x021FA214
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021FA214

	thumb_func_start ov01_021FA218
ov01_021FA218: ; 0x021FA218
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021FA218

	thumb_func_start ov01_021FA21C
ov01_021FA21C: ; 0x021FA21C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov01_021FA21C

	thumb_func_start ov01_021FA220
ov01_021FA220: ; 0x021FA220
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov01_021FA220

	thumb_func_start ov01_021FA224
ov01_021FA224: ; 0x021FA224
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov01_021FA224

	thumb_func_start ov01_021FA228
ov01_021FA228: ; 0x021FA228
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov01_021FA228

	thumb_func_start ov01_021FA22C
ov01_021FA22C: ; 0x021FA22C
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov01_021FA22C

	thumb_func_start ov01_021FA230
ov01_021FA230: ; 0x021FA230
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov01_021FA230

	thumb_func_start ov01_021FA234
ov01_021FA234: ; 0x021FA234
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end ov01_021FA234

	thumb_func_start ov01_021FA238
ov01_021FA238: ; 0x021FA238
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _021FA244 ; =ov01_021F9374
	bx r3
	nop
_021FA244: .word ov01_021F9374
	thumb_func_end ov01_021FA238

	thumb_func_start ov01_021FA248
ov01_021FA248: ; 0x021FA248
	push {r3, lr}
	ldr r3, _021FA280 ; =0x022074A8
	ldr r1, _021FA284 ; =0x0000FFFF
_021FA24E:
	ldrh r2, [r3]
	cmp r2, r0
	bne _021FA270
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1a
	cmp r0, #0xff
	bne _021FA268
	bne _021FA264
	bl GF_AssertFail
_021FA264:
	ldr r0, _021FA288 ; =0x02207318
	pop {r3, pc}
_021FA268:
	ldr r1, _021FA288 ; =0x02207318
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, pc}
_021FA270:
	add r3, r3, #6
	ldrh r2, [r3]
	cmp r2, r1
	bne _021FA24E
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021FA280: .word 0x022074A8
_021FA284: .word 0x0000FFFF
_021FA288: .word 0x02207318
	thumb_func_end ov01_021FA248

	thumb_func_start ov01_021FA28C
ov01_021FA28C: ; 0x021FA28C
	push {r3, lr}
	bl ov01_021FA248
	ldrb r0, [r0, #2]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA28C

	thumb_func_start ov01_021FA298
ov01_021FA298: ; 0x021FA298
	ldr r3, _021FA29C ; =ov01_021FA28C
	bx r3
	.balign 4, 0
_021FA29C: .word ov01_021FA28C
	thumb_func_end ov01_021FA298

	thumb_func_start ov01_021FA2A0
ov01_021FA2A0: ; 0x021FA2A0
	push {r3, lr}
	bl ov01_021FA248
	ldrb r0, [r0, #3]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA2A0

	thumb_func_start ov01_021FA2AC
ov01_021FA2AC: ; 0x021FA2AC
	push {r3, lr}
	bl ov01_021FA248
	ldr r0, [r0, #4]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA2AC

	thumb_func_start ov01_021FA2B8
ov01_021FA2B8: ; 0x021FA2B8
	push {r3, lr}
	cmp r1, #1
	bne _021FA2C8
	mov r1, #1
	lsl r1, r1, #0x16
	bl sub_0205F20C
	pop {r3, pc}
_021FA2C8:
	mov r1, #1
	lsl r1, r1, #0x16
	bl sub_0205F214
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA2B8

	thumb_func_start ov01_021FA2D4
ov01_021FA2D4: ; 0x021FA2D4
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x16
	bl sub_0205F220
	cmp r0, #0
	beq _021FA2E6
	mov r0, #1
	pop {r3, pc}
_021FA2E6:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA2D4

	thumb_func_start ov01_021FA2EC
ov01_021FA2EC: ; 0x021FA2EC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #4
	add r4, r1, #0
	str r0, [sp, #4]
	add r0, sp, #0
	str r4, [sp]
	bl sub_020237EC
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021FA1C8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA1D8
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FA2EC

	thumb_func_start ov01_021FA314
ov01_021FA314: ; 0x021FA314
	ldr r3, _021FA318 ; =sub_02023874
	bx r3
	.balign 4, 0
_021FA318: .word sub_02023874
	thumb_func_end ov01_021FA314

	thumb_func_start ov01_021FA31C
ov01_021FA31C: ; 0x021FA31C
	push {r4, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r2!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r2, sp, #0x14
	str r0, [r3]
	ldr r3, _021FA36C ; =0x02208B64
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	bl sub_02023D44
	add r4, r0, #0
	beq _021FA364
	mov r1, #0
	bl sub_02023EA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	add r0, r4, #0
	bl sub_02023F90
	bl ov01_021EA3B0
_021FA364:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	nop
_021FA36C: .word 0x02208B64
	thumb_func_end ov01_021FA31C

	thumb_func_start ov01_021FA370
ov01_021FA370: ; 0x021FA370
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl ov01_021FA28C
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov01_021FC5A4
	str r0, [r4]
	add r0, r5, #0
	bl ov01_021FA2A0
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl ov01_021FC5A4
	add r1, r4, #0
	add r1, #0xc
	bl sub_02026E18
	add r0, r6, #0
	bl ov01_021FA1F4
	add r1, r5, #0
	bl sub_02025940
	add r6, r0, #0
	bl sub_0202599C
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02025A9C
	str r0, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02025AAC
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl sub_02025ABC
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl ov01_021FA2AC
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FA370

	thumb_func_start ov01_021FA3DC
ov01_021FA3DC: ; 0x021FA3DC
	push {r3, lr}
	bl sub_0205F35C
	bl sub_0205F1A0
	pop {r3, pc}
	thumb_func_end ov01_021FA3DC

	thumb_func_start ov01_021FA3E8
ov01_021FA3E8: ; 0x021FA3E8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl ov01_021F93AC
	mov r0, #6
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02023E50
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FA3E8

	thumb_func_start ov01_021FA40C
ov01_021FA40C: ; 0x021FA40C
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl sub_0205F228
	cmp r0, #1
	bne _021FA420
	mov r4, #0
_021FA420:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0205F228
	cmp r0, #1
	bne _021FA43E
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_0205F228
	cmp r0, #0
	bne _021FA43E
	mov r4, #0
_021FA43E:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02023EA4
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA40C

	thumb_func_start ov01_021FA44C
ov01_021FA44C: ; 0x021FA44C
	lsl r1, r0, #2
	ldr r0, _021FA454 ; =0x02208B70
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021FA454: .word 0x02208B70
	thumb_func_end ov01_021FA44C

	thumb_func_start ov01_021FA458
ov01_021FA458: ; 0x021FA458
	lsl r1, r0, #2
	ldr r0, _021FA460 ; =0x02208B80
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021FA460: .word 0x02208B80
	thumb_func_end ov01_021FA458

	thumb_func_start ov01_021FA464
ov01_021FA464: ; 0x021FA464
	lsl r1, r0, #2
	ldr r0, _021FA46C ; =0x02208B90
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021FA46C: .word 0x02208B90
	thumb_func_end ov01_021FA464

	thumb_func_start ov01_021FA470
ov01_021FA470: ; 0x021FA470
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r0]
	mov r0, #4
	add r6, r1, #0
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r7, r2, #0
	str r3, [sp]
	cmp r1, r0
	bge _021FA49A
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_020238F8
	cmp r0, #1
	bne _021FA4CC
_021FA49A:
	mov r2, #0
	ldrsh r3, [r4, r2]
	ldr r0, [r4, #0xc]
	cmp r3, #0
	ble _021FA4C4
_021FA4A4:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021FA4BC
	add r5, #0xf0
	ldr r1, [r5]
	str r1, [r0, #0xc]
	ldr r1, [sp]
	str r1, [r0, #8]
	str r6, [r0, #4]
	str r7, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FA4BC:
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _021FA4A4
_021FA4C4:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FA4CC:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov01_021FA238
	add r2, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021FA61C
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA470

	thumb_func_start ov01_021FA4F0
ov01_021FA4F0: ; 0x021FA4F0
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #0xc]
	cmp r4, #0
	ble _021FA51E
_021FA502:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021FA516
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021FA516
	mov r0, #0
	str r0, [r2, #0xc]
	pop {r3, r4}
	bx lr
_021FA516:
	add r3, r3, #1
	add r2, #0x10
	cmp r3, r4
	blt _021FA502
_021FA51E:
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA4F0

	thumb_func_start ov01_021FA524
ov01_021FA524: ; 0x021FA524
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #0xc]
	cmp r4, #0
	ble _021FA55C
_021FA536:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021FA554
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021FA554
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021FA54E
	mov r0, #3
	pop {r3, r4}
	bx lr
_021FA54E:
	mov r0, #4
	pop {r3, r4}
	bx lr
_021FA554:
	add r3, r3, #1
	add r2, #0x10
	cmp r3, r4
	blt _021FA536
_021FA55C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA524

	thumb_func_start ov01_021FA564
ov01_021FA564: ; 0x021FA564
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	mov r1, #1
	ldr r0, [sp]
	lsl r1, r1, #8
	ldr r4, [r0, r1]
	add r0, #0xe0
	ldr r0, [r0]
	mov r6, #0
	ldr r5, [r4, #0xc]
	bl sub_020238F8
	cmp r0, #1
	beq _021FA618
	add r7, r4, #4
	b _021FA5AE
_021FA584:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021FA5AA
	ldr r0, [sp]
	ldr r1, [r5]
	mov r2, #0
	bl ov01_021FA238
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, [r5, #4]
	ldr r3, [r5, #8]
	bl ov01_021FA61C
	mov r0, #0
	str r0, [r5, #0xc]
	ldrsh r0, [r7, r0]
	add r0, r0, #1
	strh r0, [r7]
_021FA5AA:
	add r5, #0x10
	add r6, r6, #1
_021FA5AE:
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _021FA5C2
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _021FA584
_021FA5C2:
	mov r6, #0
	ldrsh r0, [r4, r6]
	ldr r7, [r4, #0xc]
	sub r1, r0, #1
	cmp r1, #0
	ble _021FA614
	add r5, r7, #0
_021FA5D0:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _021FA606
	add r2, r6, #1
	cmp r2, r0
	bge _021FA606
	lsl r1, r2, #4
	add r3, r7, r1
_021FA5E0:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	beq _021FA5FE
	lsl r0, r2, #4
	add r3, r7, r0
	mov ip, r3
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0
	mov r0, ip
	str r1, [r0, #0xc]
	b _021FA606
_021FA5FE:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r0
	blt _021FA5E0
_021FA606:
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r6, r6, #1
	add r5, #0x10
	sub r1, r0, #1
	cmp r6, r1
	blt _021FA5D0
_021FA614:
	mov r0, #0
	strh r0, [r4, #4]
_021FA618:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA564

	thumb_func_start ov01_021FA61C
ov01_021FA61C: ; 0x021FA61C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r2, #0
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #1
	bl sub_02025844
	cmp r0, #0
	bne _021FA642
	bl GF_AssertFail
_021FA642:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA668
	cmp r6, #0
	bne _021FA65A
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9D5C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021FA65A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9DD0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA61C

	thumb_func_start ov01_021FA668
ov01_021FA668: ; 0x021FA668
	push {r4, r5, r6, lr}
	mov r3, #1
	lsl r3, r3, #8
	ldr r3, [r0, r3]
	mov r5, #1
	ldr r4, [r3, #0x10]
	mov r2, #0
	strh r5, [r3, #6]
	ldrsh r6, [r3, r2]
	cmp r6, #0
	ble _021FA69C
_021FA67E:
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _021FA694
	add r0, #0xf0
	ldr r0, [r0]
	str r0, [r4, #8]
	str r1, [r4, #4]
	mov r0, #0
	str r0, [r4]
	strh r0, [r3, #6]
	pop {r4, r5, r6, pc}
_021FA694:
	add r2, r2, #1
	add r4, #0xc
	cmp r2, r6
	blt _021FA67E
_021FA69C:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA668

	thumb_func_start ov01_021FA6A4
ov01_021FA6A4: ; 0x021FA6A4
	push {r4, r5}
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r0, r2]
	mov r0, #1
	ldr r4, [r2, #0x10]
	mov r3, #0
	strh r0, [r2, #6]
	ldrsh r5, [r2, r3]
	cmp r5, #0
	ble _021FA6D6
_021FA6BA:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021FA6CE
	ldr r0, [r4, #4]
	cmp r0, r1
	bne _021FA6CE
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4]
	b _021FA6D6
_021FA6CE:
	add r3, r3, #1
	add r4, #0xc
	cmp r3, r5
	blt _021FA6BA
_021FA6D6:
	mov r0, #0
	strh r0, [r2, #6]
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA6A4

	thumb_func_start ov01_021FA6E0
ov01_021FA6E0: ; 0x021FA6E0
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r1, r0]
	ldrh r0, [r6, #6]
	cmp r0, #1
	beq _021FA71A
	mov r4, #0
	ldrsh r0, [r6, r4]
	ldr r5, [r6, #0x10]
	cmp r0, #0
	ble _021FA71A
	mov r7, #1
_021FA6FA:
	ldr r0, [r5]
	cmp r0, #0
	bne _021FA70E
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021FA70E
	ldr r1, [r5, #4]
	bl sub_020259E0
	str r7, [r5]
_021FA70E:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021FA6FA
_021FA71A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FA6E0

	thumb_func_start ov01_021FA71C
ov01_021FA71C: ; 0x021FA71C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r1, r0]
	mov r4, #0
	ldr r5, [r6, #0x10]
	mov r0, #1
	strh r0, [r6, #6]
	ldrsh r0, [r6, r4]
	cmp r0, #0
	ble _021FA756
	add r7, r4, #0
_021FA734:
	ldr r0, [r5]
	cmp r0, #1
	bne _021FA74A
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021FA74A
	ldr r1, [r5, #4]
	bl sub_02025A48
	str r7, [r5]
	str r7, [r5, #8]
_021FA74A:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021FA734
_021FA756:
	mov r0, #0
	strh r0, [r6, #6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FA71C

	thumb_func_start ov01_021FA75C
ov01_021FA75C: ; 0x021FA75C
	push {r4, r5, r6, lr}
	mov r5, #1
	lsl r5, r5, #8
	ldr r5, [r0, r5]
	mov r4, #0
	ldrsh r6, [r5, r4]
	ldr r0, [r5, #8]
	cmp r6, #0
	ble _021FA792
_021FA76E:
	ldr r5, [r0, #4]
	cmp r5, #0
	bne _021FA78A
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0]
	ldr r0, [r0, #8]
	mov r2, #0
	str r2, [r0]
	add r0, r1, #0
	mov r1, #1
	bl ov01_021FA2B8
	pop {r4, r5, r6, pc}
_021FA78A:
	add r4, r4, #1
	add r0, #0xc
	cmp r4, r6
	blt _021FA76E
_021FA792:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FA75C

	thumb_func_start ov01_021FA798
ov01_021FA798: ; 0x021FA798
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #8]
	cmp r4, #0
	ble _021FA7C2
_021FA7AA:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021FA7BA
	mov r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
_021FA7BA:
	add r3, r3, #1
	add r2, #0xc
	cmp r3, r4
	blt _021FA7AA
_021FA7C2:
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FA798

	thumb_func_start ov01_021FA7C8
ov01_021FA7C8: ; 0x021FA7C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r7, r0]
	mov r4, #0
	ldrsh r0, [r6, r4]
	ldr r5, [r6, #8]
	cmp r0, #0
	ble _021FA7F6
_021FA7DC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021FA7EA
	add r0, r7, #0
	add r1, r5, #0
	bl ov01_021FA804
_021FA7EA:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021FA7DC
_021FA7F6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FA7C8

	thumb_func_start ov01_021FA7F8
ov01_021FA7F8: ; 0x021FA7F8
	ldr r3, _021FA800 ; =ov01_021FA7C8
	add r0, r1, #0
	bx r3
	nop
_021FA800: .word ov01_021FA7C8
	thumb_func_end ov01_021FA7F8

	thumb_func_start ov01_021FA804
ov01_021FA804: ; 0x021FA804
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	bl ov01_021F9EC4
	cmp r0, #2
	beq _021FA852
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov01_021F9528
	ldr r1, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne _021FA82A
	bl GF_AssertFail
_021FA82A:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov01_021FA2B8
	mov r1, #2
	ldr r0, [r4, #4]
	lsl r1, r1, #0x14
	bl sub_0205F228
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021FA848
	bl sub_0205F4C0
	b _021FA84C
_021FA848:
	bl sub_0205F484
_021FA84C:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
_021FA852:
	pop {r4, pc}
	thumb_func_end ov01_021FA804

	thumb_func_start ov01_021FA854
ov01_021FA854: ; 0x021FA854
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0xc
	add r7, r6, #0
	mul r7, r0
	lsl r0, r6, #4
	lsl r1, r7, #1
	str r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, #4
	str r2, [sp]
	bl AllocFromHeap
	add r4, r0, #0
	bne _021FA882
	bl GF_AssertFail
_021FA882:
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	bl memset
	ldr r0, [sp]
	strh r6, [r4]
	strh r0, [r4, #2]
	add r0, r4, #0
	add r0, #0x28
	str r0, [r4, #8]
	add r1, r0, r7
	ldr r0, [sp, #4]
	str r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	str r4, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0205F19C
	add r6, r0, #0
	ldr r0, _021FA8E8 ; =ov01_021FA564
	add r1, r5, #0
	add r2, r6, #1
	bl sub_0200E320
	str r0, [r4, #0x18]
	ldr r0, _021FA8EC ; =ov01_021FA7F8
	add r1, r5, #0
	add r2, r6, #2
	bl sub_0200E320
	str r0, [r4, #0x1c]
	ldr r0, _021FA8F0 ; =ov01_021FA6E0
	add r1, r5, #0
	mov r2, #0xff
	bl sub_0200E33C
	str r0, [r4, #0x20]
	ldr r0, _021FA8F4 ; =ov01_021FA71C
	add r1, r5, #0
	mov r2, #0xff
	bl sub_0200E374
	str r0, [r4, #0x24]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021FA8E8: .word ov01_021FA564
_021FA8EC: .word ov01_021FA7F8
_021FA8F0: .word ov01_021FA6E0
_021FA8F4: .word ov01_021FA71C
	thumb_func_end ov01_021FA854

	thumb_func_start ov01_021FA8F8
ov01_021FA8F8: ; 0x021FA8F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r0]
	mov r0, #1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x18]
	bl sub_0200E390
	ldr r0, [r4, #0x1c]
	bl sub_0200E390
	ldr r0, [r4, #0x20]
	bl sub_0200E390
	ldr r0, [r4, #0x24]
	bl sub_0200E390
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FA8F8

	thumb_func_start ov01_021FA930
ov01_021FA930: ; 0x021FA930
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021FA948
	add r0, r5, #0
	bl ov01_021F72DC
	cmp r0, #0
	bne _021FA972
_021FA948:
	add r0, r5, #0
	bl sub_0205F25C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F35C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205E420
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021FA108
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205E38C
	pop {r3, r4, r5, r6, r7, pc}
_021FA972:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA97C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FA930

	thumb_func_start ov01_021FA97C
ov01_021FA97C: ; 0x021FA97C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	str r1, [sp, #8]
	bl ov01_021FA3DC
	add r7, r0, #0
	bl ov01_021FA1D0
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl ov01_021F72DC
	str r0, [sp, #0x10]
	mov r0, #4
	mov r1, #0x58
	bl AllocFromHeapAtEnd
	mov r1, #0
	mov r2, #0x58
	add r5, r0, #0
	bl memset
	ldr r0, [sp, #8]
	str r0, [r5]
	add r0, r6, #0
	str r6, [r5, #0x50]
	bl sub_0205F24C
	cmp r0, #0xff
	bne _021FA9CE
	add r0, r6, #0
	bl ov01_021F72DC
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlGetMdlFogEnableFlag
	str r0, [sp, #0x1c]
	b _021FA9D2
_021FA9CE:
	mov r0, #0
	str r0, [sp, #0x1c]
_021FA9D2:
	add r0, r6, #0
	bl sub_0205F25C
	str r0, [sp, #0x18]
	bl ov01_021FA28C
	ldr r4, _021FAB90 ; =0x02207294
_021FA9E0:
	ldrh r1, [r4]
	cmp r1, r0
	beq _021FA9EE
	add r4, r4, #4
	ldrh r1, [r4]
	cmp r1, #0xff
	bne _021FA9E0
_021FA9EE:
	cmp r1, #0xff
	bne _021FA9F6
	bl GF_AssertFail
_021FA9F6:
	ldrh r1, [r4, #2]
	add r0, r7, #0
	mov r2, #0
	bl ov01_021FA238
	str r0, [r5, #8]
	ldr r0, [sp, #0x18]
	bl ov01_021FA2A0
	ldr r4, _021FAB94 ; =0x022072CC
_021FAA0A:
	ldrh r1, [r4]
	cmp r1, r0
	beq _021FAA18
	add r4, r4, #4
	ldrh r1, [r4]
	cmp r1, #0xff
	bne _021FAA0A
_021FAA18:
	cmp r1, #0xff
	bne _021FAA20
	bl GF_AssertFail
_021FAA20:
	ldrh r1, [r4, #2]
	add r0, r7, #0
	mov r2, #0
	bl ov01_021FA238
	add r1, r5, #0
	add r1, #0x14
	str r0, [r5, #0xc]
	bl sub_02026E18
	ldr r0, [sp, #0x18]
	bl ov01_021F9304
	add r1, r0, #0
	bpl _021FAA44
	bl GF_AssertFail
	mov r1, #0
_021FAA44:
	add r0, r7, #0
	mov r2, #0
	bl ov01_021FA238
	str r0, [r5, #0x10]
	bl NNS_G3dGetTex
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	bl ov01_021FA2AC
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x14
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x28
	add r2, r4, #0
	bl sub_02023E2C
	ldr r0, [sp, #0x10]
	bl sub_02023E68
	add r3, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	ldr r0, [sp, #0x14]
	add r1, #0x28
	add r2, r4, #0
	bl ov01_021FA31C
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _021FAA98
	bl GF_AssertFail
_021FAA98:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021FAAAA
	ldr r0, [r5, #0x24]
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
_021FAAAA:
	ldr r0, [sp, #0x10]
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023EE0
	ldr r0, [sp, #0x10]
	bl sub_02023F70
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F40
	ldr r0, [sp, #0x10]
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F1C
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_02023F04
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl sub_02023EA4
	ldr r0, [r5, #0x24]
	bl sub_02023FC0
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #1
	bne _021FAB4A
	add r0, r6, #0
	mov r1, #2
	bl sub_0205F09C
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl sub_02060FA8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl sub_0205BA70
	cmp r0, #1
	bne _021FAB18
	mov r4, #2
	b _021FAB28
_021FAB18:
	add r0, r4, #0
	bl sub_0205B984
	cmp r0, #1
	bne _021FAB26
	mov r4, #0
	b _021FAB28
_021FAB26:
	mov r4, #1
_021FAB28:
	add r0, r6, #0
	add r1, sp, #0x20
	bl sub_0205F944
	add r0, r6, #0
	bl ov01_021F146C
	ldr r1, [sp, #0xc]
	str r4, [sp]
	str r1, [sp, #4]
	add r1, r5, #0
	ldr r2, [r5, #0x24]
	add r1, #0x28
	add r3, sp, #0x20
	bl ov01_021FDE64
	str r0, [r5, #0x54]
_021FAB4A:
	add r0, r6, #0
	bl sub_0205E420
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	bl ov01_021FA108
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl sub_0205E38C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0205F19C
	ldr r0, _021FAB98 ; =ov01_021FAB9C
	add r1, r5, #0
	mov r2, #0xff
	bl sub_0200E374
	add r4, r0, #0
	bne _021FAB82
	bl GF_AssertFail
_021FAB82:
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021FAB9C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FAB90: .word 0x02207294
_021FAB94: .word 0x022072CC
_021FAB98: .word ov01_021FAB9C
	thumb_func_end ov01_021FA97C

	thumb_func_start ov01_021FAB9C
ov01_021FAB9C: ; 0x021FAB9C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x50]
	cmp r0, #0
	beq _021FABB0
	cmp r0, #1
	beq _021FAC08
	pop {r4, r5, r6, pc}
_021FABB0:
	add r0, r4, #0
	bl sub_0205F624
	cmp r0, #0
	beq _021FABC4
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #0
	bne _021FABF4
_021FABC4:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021FABCE
	bl sub_02068B48
_021FABCE:
	ldr r0, [r5, #0x24]
	bl sub_02023DA4
	ldr r0, [r5, #8]
	bl FreeToHeap
	ldr r0, [r5, #0xc]
	bl FreeToHeap
	ldr r0, [r5, #0x10]
	bl FreeToHeap
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl sub_0200E390
	pop {r4, r5, r6, pc}
_021FABF4:
	add r0, r4, #0
	bl sub_0205F25C
	ldr r1, [r5]
	cmp r1, r0
	beq _021FAC40
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021FAC08:
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #0
	bne _021FAC40
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021FAC1C
	bl sub_02068B48
_021FAC1C:
	ldr r0, [r5, #0x24]
	bl sub_02023DA4
	ldr r0, [r5, #8]
	bl FreeToHeap
	ldr r0, [r5, #0xc]
	bl FreeToHeap
	ldr r0, [r5, #0x10]
	bl FreeToHeap
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl sub_0200E390
_021FAC40:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FAB9C

	thumb_func_start ov01_021FAC44
ov01_021FAC44: ; 0x021FAC44
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #4
	mov r1, #0x20
	bl AllocFromHeap
	add r5, r0, #0
	mov r4, #0
_021FAC54:
	mov r1, #0xf
	lsl r1, r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _021FACB0 ; =0x02209B70
	lsl r0, r4, #2
	add r1, r1, r2
	add r6, r5, r0
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021FAC70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FAC70:
	cmp r7, #0
	beq _021FAC8E
	mov r1, #9
	mov r0, #4
	lsl r1, r1, #0xc
	bl AllocFromHeap
	str r0, [r6, #0x10]
	cmp r0, #0
	bne _021FAC88
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FAC88:
	mov r2, #9
	lsl r2, r2, #0xc
	b _021FAC94
_021FAC8E:
	mov r0, #0
	str r0, [r6, #0x10]
	add r2, r0, #0
_021FAC94:
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r3, r5, #0
	bl ov01_021FACF8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021FAC54
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FACB0: .word 0x02209B70
	thumb_func_end ov01_021FAC44

	thumb_func_start ov01_021FACB4
ov01_021FACB4: ; 0x021FACB4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021FACBC:
	lsl r0, r4, #2
	add r5, r6, r0
	str r7, [r6, r0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021FACD0
	bl FreeToHeap
	mov r0, #0
	str r0, [r5, #0x10]
_021FACD0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021FACBC
	add r0, r6, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FACB4

	thumb_func_start ov01_021FACE4
ov01_021FACE4: ; 0x021FACE4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r2]
	bx lr
	thumb_func_end ov01_021FACE4

	thumb_func_start ov01_021FACEC
ov01_021FACEC: ; 0x021FACEC
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	str r0, [r2]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FACEC

	thumb_func_start ov01_021FACF8
ov01_021FACF8: ; 0x021FACF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	lsl r4, r0, #2
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, [r5, r4]
	mov r1, #0
	add r2, r6, #0
	bl MI_CpuFill8
	add r0, r5, r4
	ldr r0, [r0, #0x10]
	mov r1, #0
	add r2, r7, #0
	bl MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FACF8

	thumb_func_start ov01_021FAD1C
ov01_021FAD1C: ; 0x021FAD1C
	push {r3, r4, r5, r6}
	ldr r4, [r0]
	ldr r3, [r1]
	cmp r4, r3
	bgt _021FAD2C
	add r3, r0, #0
	add r4, r1, #0
	b _021FAD30
_021FAD2C:
	add r3, r1, #0
	add r4, r0, #0
_021FAD30:
	ldr r6, [r0, #4]
	ldr r5, [r1, #4]
	cmp r6, r5
	bgt _021FAD3E
	add r5, r0, #4
	add r0, r1, #4
	b _021FAD42
_021FAD3E:
	add r5, r1, #4
	add r0, r0, #4
_021FAD42:
	ldr r6, [r2]
	ldr r1, [r3]
	cmp r1, r6
	bgt _021FAD64
	ldr r1, [r4]
	cmp r6, r1
	bgt _021FAD64
	ldr r2, [r2, #4]
	ldr r1, [r5]
	cmp r1, r2
	bgt _021FAD64
	ldr r0, [r0]
	cmp r2, r0
	bgt _021FAD64
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021FAD64:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FAD1C

	thumb_func_start ov01_021FAD6C
ov01_021FAD6C: ; 0x021FAD6C
	push {r4, r5}
	lsl r3, r1, #3
	ldr r1, [r0]
	ldr r5, [r0, #0x10]
	ldrh r1, [r1, r3]
	lsl r4, r1, #3
	add r1, r5, r4
	ldr r4, [r5, r4]
	ldr r1, [r1, #4]
	str r4, [r2]
	str r1, [r2, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r0]
	add r0, r0, r3
	ldrh r0, [r0, #2]
	lsl r3, r0, #3
	add r0, r1, r3
	ldr r1, [r1, r3]
	ldr r0, [r0, #4]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FAD6C

	thumb_func_start ov01_021FAD9C
ov01_021FAD9C: ; 0x021FAD9C
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r0, #0x14]
	lsl r0, r1, #3
	add r0, r4, r0
	ldrh r1, [r0, #4]
	mov r0, #0xc
	mul r0, r1
	add r3, r3, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FAD9C

	thumb_func_start ov01_021FADBC
ov01_021FADBC: ; 0x021FADBC
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r0, #4]
	lsl r0, r1, #3
	add r0, r4, r0
	ldrh r0, [r0, #6]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [r2]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FADBC

	thumb_func_start ov01_021FADD4
ov01_021FADD4: ; 0x021FADD4
	mov r3, #0
	add r2, r3, #0
	sub r1, r3, #1
_021FADDA:
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #0xa
	blt _021FADDA
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FADD4

	thumb_func_start ov01_021FADEC
ov01_021FADEC: ; 0x021FADEC
	push {r3, r4, r5, r6}
	cmp r1, #0
	bne _021FADF8
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_021FADF8:
	cmp r1, #1
	bne _021FAE06
	mov r0, #0
	strh r0, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021FAE06:
	sub r1, r1, #1
	lsr r5, r1, #0x1f
	add r5, r1, r5
	mov r4, #0
	asr r5, r5, #1
_021FAE10:
	lsl r6, r5, #3
	ldr r6, [r0, r6]
	cmp r6, r2
	ble _021FAE32
	sub r1, r1, #1
	cmp r1, r4
	ble _021FAE2A
	add r6, r4, r5
	add r1, r5, #0
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	b _021FAE10
_021FAE2A:
	strh r5, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021FAE32:
	add r4, r4, #1
	cmp r4, r1
	bge _021FAE44
	add r6, r5, r1
	add r4, r5, #0
	lsr r5, r6, #0x1f
	add r5, r6, r5
	asr r5, r5, #1
	b _021FAE10
_021FAE44:
	add r0, r5, #1
	strh r0, [r3]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FADEC

	thumb_func_start ov01_021FAE50
ov01_021FAE50: ; 0x021FAE50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	str r0, [sp]
	ldr r0, [sp, #0xe4]
	ldr r5, [sp, #0xe0]
	str r0, [sp, #0xe4]
	ldr r0, [r5, #0x18]
	str r1, [sp, #4]
	cmp r0, #0
	bne _021FAE6A
	add sp, #0xcc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021FAE6A:
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x54
	mov r4, #0
	bl ov01_021FADD4
	ldr r1, [r5, #0x1c]
	ldr r6, [r5, #8]
	lsl r1, r1, #0x10
	ldr r2, [sp, #0x34]
	add r0, r6, #0
	lsr r1, r1, #0x10
	add r3, sp, #0x28
	bl ov01_021FADEC
	cmp r0, #0
	bne _021FAE92
	add sp, #0xcc
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_021FAE92:
	add r0, sp, #0x28
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r1, r6, r0
	ldrh r0, [r1, #4]
	str r0, [sp, #0x14]
	ldrh r1, [r1, #6]
	add r0, r4, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bls _021FAF58
	lsl r0, r1, #1
	add r7, sp, #0x54
	str r0, [sp, #0x10]
_021FAEB0:
	ldr r0, [sp, #0x18]
	ldr r2, [r5, #0xc]
	lsl r1, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	ldrh r6, [r1, r0]
	add r0, r5, #0
	add r2, sp, #0x44
	add r1, r6, #0
	bl ov01_021FAD6C
	add r0, sp, #0x44
	add r1, sp, #0x4c
	add r2, sp, #0x30
	bl ov01_021FAD1C
	cmp r0, #1
	bne _021FAF48
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x38
	bl ov01_021FAD9C
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0x2c
	bl ov01_021FADBC
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x34]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0xc]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x1c]
	mov ip, r0
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	ldr r3, [sp, #0xc]
	ldr r2, _021FB048 ; =0x00000000
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	mov r2, #2
	lsl r2, r2, #0xa
	str r3, [sp, #0xc]
	add r3, r6, r2
	ldr r2, _021FB048 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r2, r3, #0xc
	orr r2, r1
	add r1, r0, r2
	mov r0, ip
	add r0, r0, r1
	ldr r1, [sp, #0x3c]
	neg r0, r0
	bl FX_Div
	str r0, [r7]
	add r4, r4, #1
	add r7, #0xc
	cmp r4, #0xa
	bge _021FAF58
_021FAF48:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	str r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	blo _021FAEB0
_021FAF58:
	cmp r4, #1
	ble _021FB022
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	beq _021FAFBE
	cmp r0, #1
	beq _021FAF6E
	cmp r0, #2
	beq _021FAF96
	b _021FAFBE
_021FAF6E:
	mov r1, #0xff
	lsl r1, r1, #0x18
	add r2, r6, #0
	cmp r4, #0
	ble _021FB00E
	add r0, sp, #0x54
	mov r3, #0xc
_021FAF7C:
	add r5, r2, #0
	mul r5, r3
	ldr r5, [r0, r5]
	cmp r1, r5
	bge _021FAF8A
	add r1, r5, #0
	add r6, r2, #0
_021FAF8A:
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, r4
	blt _021FAF7C
	b _021FB00E
_021FAF96:
	mov r2, #1
	lsl r2, r2, #0x18
	add r1, r6, #0
	cmp r4, #0
	ble _021FB00E
	add r0, sp, #0x54
	mov r3, #0xc
_021FAFA4:
	add r5, r1, #0
	mul r5, r3
	ldr r5, [r0, r5]
	cmp r2, r5
	ble _021FAFB2
	add r2, r5, #0
	add r6, r1, #0
_021FAFB2:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, r4
	blt _021FAFA4
	b _021FB00E
_021FAFBE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x54]
	bl sub_02020B94
	add r5, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x54]
	bl sub_02020B8C
	sub r7, r5, r0
	mov r5, #1
	cmp r4, #1
	ble _021FB00E
_021FAFD8:
	mov r0, #0xc
	mul r0, r5
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x54
	ldr r0, [sp, #4]
	ldr r1, [r2, r1]
	bl sub_02020B94
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x54
	ldr r0, [sp, #4]
	ldr r1, [r2, r1]
	bl sub_02020B8C
	ldr r1, [sp, #0x24]
	sub r0, r1, r0
	cmp r7, r0
	ble _021FB004
	add r7, r0, #0
	add r6, r5, #0
_021FB004:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r4
	blt _021FAFD8
_021FB00E:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	add r0, sp, #0x54
	ldr r1, [r0, r1]
	ldr r0, [sp, #0xe4]
	add sp, #0xcc
	str r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021FB022:
	bne _021FB030
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0xe4]
	add sp, #0xcc
	str r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021FB030:
	cmp r4, #0
	beq _021FB040
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0xe4]
	add sp, #0xcc
	str r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021FB040:
	mov r0, #0
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	nop
_021FB048: .word 0x00000000
	thumb_func_end ov01_021FAE50

	thumb_func_start ov01_021FB04C
ov01_021FB04C: ; 0x021FB04C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	mov r2, #0x18
	add r4, r1, #0
	bl MIi_CpuClear32
	add r0, r5, #0
	mov r1, #4
	add r2, sp, #0
	bl NARC_ReadFile
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl NARC_ReadFile
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #4
	bl NARC_ReadFile
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #2
	add r2, #8
	bl NARC_ReadFile
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #2
	add r2, #0xc
	bl NARC_ReadFile
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #2
	add r2, #0x10
	bl NARC_ReadFile
	add r4, #0x14
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl NARC_ReadFile
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB04C

	thumb_func_start ov01_021FB0B0
ov01_021FB0B0: ; 0x021FB0B0
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r0, r2, #0
	ldr r2, [r0]
	mov r4, #0
	str r2, [r1, #0x10]
	ldr r2, [r3]
	lsl r2, r2, #3
	add r2, r4, r2
	ldr r4, [r0]
	add r4, r4, r2
	str r4, [r1, #0x14]
	ldr r5, [r3, #4]
	mov r4, #0xc
	mul r4, r5
	add r2, r2, r4
	ldr r4, [r0]
	add r4, r4, r2
	str r4, [r1, #4]
	ldr r4, [r3, #8]
	lsl r4, r4, #2
	add r2, r2, r4
	ldr r4, [r0]
	add r4, r4, r2
	str r4, [r1]
	ldr r4, [r3, #0xc]
	lsl r4, r4, #3
	add r2, r2, r4
	ldr r4, [r0]
	add r4, r4, r2
	str r4, [r1, #8]
	ldr r4, [r3, #0x10]
	ldr r0, [r0]
	lsl r4, r4, #3
	add r2, r2, r4
	add r0, r0, r2
	str r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	lsl r0, r0, #1
	add r1, r2, r0
	mov r0, #9
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021FB10C
	bl GF_AssertFail
_021FB10C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB0B0

	thumb_func_start ov01_021FB110
ov01_021FB110: ; 0x021FB110
	add r3, r1, #0
	ldr r1, [r2]
	ldr r2, [r3, #0x10]
	ldr r3, _021FB11C ; =NARC_ReadFile
	lsl r1, r1, #3
	bx r3
	.balign 4, 0
_021FB11C: .word NARC_ReadFile
	thumb_func_end ov01_021FB110

	thumb_func_start ov01_021FB120
ov01_021FB120: ; 0x021FB120
	ldr r2, [r2, #4]
	add r3, r1, #0
	mov r1, #0xc
	mul r1, r2
	ldr r2, [r3, #0x14]
	ldr r3, _021FB130 ; =NARC_ReadFile
	bx r3
	nop
_021FB130: .word NARC_ReadFile
	thumb_func_end ov01_021FB120

	thumb_func_start ov01_021FB134
ov01_021FB134: ; 0x021FB134
	add r3, r1, #0
	ldr r1, [r2, #8]
	ldr r2, [r3, #4]
	ldr r3, _021FB140 ; =NARC_ReadFile
	lsl r1, r1, #2
	bx r3
	.balign 4, 0
_021FB140: .word NARC_ReadFile
	thumb_func_end ov01_021FB134

	thumb_func_start ov01_021FB144
ov01_021FB144: ; 0x021FB144
	add r3, r1, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r3]
	ldr r3, _021FB150 ; =NARC_ReadFile
	lsl r1, r1, #3
	bx r3
	.balign 4, 0
_021FB150: .word NARC_ReadFile
	thumb_func_end ov01_021FB144

	thumb_func_start ov01_021FB154
ov01_021FB154: ; 0x021FB154
	add r3, r1, #0
	ldr r1, [r2, #0x10]
	ldr r2, [r3, #8]
	ldr r3, _021FB160 ; =NARC_ReadFile
	lsl r1, r1, #3
	bx r3
	.balign 4, 0
_021FB160: .word NARC_ReadFile
	thumb_func_end ov01_021FB154

	thumb_func_start ov01_021FB164
ov01_021FB164: ; 0x021FB164
	add r3, r1, #0
	ldr r1, [r2, #0x14]
	ldr r2, [r3, #0xc]
	ldr r3, _021FB170 ; =NARC_ReadFile
	lsl r1, r1, #1
	bx r3
	.balign 4, 0
_021FB170: .word NARC_ReadFile
	thumb_func_end ov01_021FB164

	thumb_func_start ov01_021FB174
ov01_021FB174: ; 0x021FB174
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #1
	bne _021FB188
	add r0, r4, #0
	mov r1, #2
	add r0, #0x68
	strb r1, [r0]
_021FB188:
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FB19C
	cmp r0, #1
	beq _021FB1CE
	cmp r0, #2
	beq _021FB21A
	b _021FB22E
_021FB19C:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _021FB1AC
	mov r2, #0
	b _021FB22E
_021FB1AC:
	add r1, r4, #0
	ldr r0, [r4, #0x7c]
	add r1, #0x4c
	bl ov01_021FB04C
	add r2, r4, #0
	ldr r1, [r4, #0x5c]
	ldr r0, [r4, #0x70]
	add r2, #0x6c
	str r1, [r0, #0x1c]
	add r0, r4, #0
	ldr r1, [r4, #0x70]
	add r0, #0x4c
	bl ov01_021FB0B0
	mov r2, #1
	b _021FB22E
_021FB1CE:
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov01_021FB110
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov01_021FB120
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov01_021FB134
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov01_021FB144
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov01_021FB154
	add r2, r4, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x70]
	add r2, #0x4c
	bl ov01_021FB164
	mov r2, #1
	b _021FB22E
_021FB21A:
	ldr r0, [r4, #0x78]
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
_021FB22E:
	cmp r2, #1
	bne _021FB250
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x68
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #2
	bne _021FB250
	ldr r0, [r4, #0x70]
	mov r1, #1
	str r1, [r0, #0x18]
_021FB250:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB174

	thumb_func_start ov01_021FB254
ov01_021FB254: ; 0x021FB254
	push {r3, lr}
	mov r0, #4
	mov r1, #0x20
	bl AllocFromHeap
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	pop {r3, pc}
	thumb_func_end ov01_021FB254

	thumb_func_start ov01_021FB270
ov01_021FB270: ; 0x021FB270
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x18
	add r5, r2, #0
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021FB04C
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	str r0, [r5, #0x1c]
	add r0, r4, #0
	add r2, sp, #0x1c
	bl ov01_021FB0B0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FB110
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FB120
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FB134
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FB144
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FB154
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FB164
	add r0, r4, #0
	bl FreeToHeap
	mov r0, #1
	str r0, [r5, #0x18]
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
	thumb_func_end ov01_021FB270

	thumb_func_start ov01_021FB2E8
ov01_021FB2E8: ; 0x021FB2E8
	push {r3, lr}
	cmp r0, #0
	beq _021FB2F2
	bl FreeToHeap
_021FB2F2:
	pop {r3, pc}
	thumb_func_end ov01_021FB2E8

	thumb_func_start ov01_021FB2F4
ov01_021FB2F4: ; 0x021FB2F4
	cmp r0, #0
	beq _021FB306
	mov r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
_021FB306:
	bx lr
	thumb_func_end ov01_021FB2F4

	thumb_func_start ov01_021FB308
ov01_021FB308: ; 0x021FB308
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #0x88
	add r6, r2, #0
	add r7, r3, #0
	bl AllocFromHeapAtEnd
	add r1, r0, #0
	add r2, r1, #0
	mov r0, #0
	add r2, #0x68
	strb r0, [r2]
	add r2, r1, #0
	str r5, [r1, #0x7c]
	add r2, #0x80
	str r4, [r2]
	str r6, [r1, #0x70]
	str r7, [r1, #0x78]
	str r0, [r1, #0x74]
	str r0, [r1, #0x64]
	str r0, [r1, #0x48]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0]
	str r0, [r1, #0x6c]
	add r0, r1, #0
	add r0, #0x84
	str r2, [r0]
	ldr r0, _021FB350 ; =ov01_021FB174
	mov r2, #1
	bl sub_0200E320
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FB350: .word ov01_021FB174
	thumb_func_end ov01_021FB308

	thumb_func_start ov01_021FB354
ov01_021FB354: ; 0x021FB354
	push {r3, lr}
	bl sub_0201F988
	mov r1, #1
	str r1, [r0, #0x74]
	pop {r3, pc}
	thumb_func_end ov01_021FB354

	thumb_func_start ov01_021FB360
ov01_021FB360: ; 0x021FB360
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FB360

	thumb_func_start ov01_021FB368
ov01_021FB368: ; 0x021FB368
	push {r4, r5}
	ldr r3, [r2, #0x14]
	cmp r3, #0
	bne _021FB376
	mov r0, #0
	pop {r4, r5}
	bx lr
_021FB376:
	ldr r5, [r2]
	ldr r3, [r2, #8]
	ldr r4, [r2, #4]
	ldr r2, [r2, #0xc]
	add r3, r5, r3
	add r2, r4, r2
	sub r3, r3, #1
	sub r2, r2, #1
	cmp r5, r0
	bgt _021FB39C
	cmp r0, r3
	bgt _021FB39C
	cmp r4, r1
	bgt _021FB39C
	cmp r1, r2
	bgt _021FB39C
	mov r0, #1
	pop {r4, r5}
	bx lr
_021FB39C:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FB368

	thumb_func_start ov01_021FB3A4
ov01_021FB3A4: ; 0x021FB3A4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl AllocFromHeap
	mov r1, #0x18
	add r4, r0, #0
	add r0, r6, #0
	mul r1, r5
	bl AllocFromHeap
	str r0, [r4, #4]
	mov r6, #0
	str r5, [r4]
	cmp r5, #0
	bls _021FB3E0
	add r0, r6, #0
	mov r1, #0x18
_021FB3CC:
	add r2, r6, #0
	ldr r3, [r4, #4]
	mul r2, r1
	add r2, r3, r2
	str r0, [r2, #0x14]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, r5
	blo _021FB3CC
_021FB3E0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FB3A4

	thumb_func_start ov01_021FB3E4
ov01_021FB3E4: ; 0x021FB3E4
	push {r4, r5}
	ldr r5, [sp, #0x10]
	mov r4, #0x18
	mul r4, r0
	ldr r0, [r5, #4]
	str r1, [r0, r4]
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	add r0, r0, r4
	str r2, [r0, #4]
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r3, [r0, #8]
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r1, [r0, #0xc]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0xc]
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	thumb_func_end ov01_021FB3E4

	thumb_func_start ov01_021FB418
ov01_021FB418: ; 0x021FB418
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB418

	thumb_func_start ov01_021FB42C
ov01_021FB42C: ; 0x021FB42C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _021FB43E
	bl GF_AssertFail
_021FB43E:
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _021FB46E
_021FB446:
	mov r3, #0x18
	ldr r2, [r5, #4]
	mul r3, r4
	add r0, r6, #0
	add r1, r7, #0
	add r2, r2, r3
	bl ov01_021FB368
	cmp r0, #0
	beq _021FB462
	ldr r0, [sp]
	strb r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FB462:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5]
	cmp r4, r0
	blt _021FB446
_021FB46E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB42C

	thumb_func_start ov01_021FB474
ov01_021FB474: ; 0x021FB474
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r5, r0
	blt _021FB484
	bl GF_AssertFail
_021FB484:
	mov r0, #0x18
	add r6, r5, #0
	mul r6, r0
	ldr r0, [r4, #4]
	add r0, r0, r6
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021FB498
	bl GF_AssertFail
_021FB498:
	ldr r0, [r4, #4]
	add r0, r0, r6
	ldr r0, [r0, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FB474

	thumb_func_start ov01_021FB4A0
ov01_021FB4A0: ; 0x021FB4A0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6]
	add r4, r1, #0
	cmp r5, r0
	blt _021FB4B2
	bl GF_AssertFail
_021FB4B2:
	mov r0, #0x18
	ldr r1, [r6, #4]
	mul r0, r5
	add r0, r1, r0
	str r4, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB4A0

	thumb_func_start ov01_021FB4C0
ov01_021FB4C0: ; 0x021FB4C0
	push {r4, lr}
	mov r1, #0x1c
	bl AllocFromHeap
	add r4, r0, #0
	bl ov01_021FB55C
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB4C0

	thumb_func_start ov01_021FB4D4
ov01_021FB4D4: ; 0x021FB4D4
	push {r4, lr}
	add r4, r0, #0
	beq _021FB4F0
	ldr r1, [r4]
	cmp r1, #1
	bne _021FB4E4
	bl ov01_021FB514
_021FB4E4:
	add r0, r4, #0
	bl ov01_021FB55C
	add r0, r4, #0
	bl FreeToHeap
_021FB4F0:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB4D4

	thumb_func_start ov01_021FB4F4
ov01_021FB4F4: ; 0x021FB4F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021FB510 ; =ov01_021FB594
	add r1, r4, #0
	bl sub_0201A120
	cmp r0, #1
	beq _021FB508
	bl GF_AssertFail
_021FB508:
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
	nop
_021FB510: .word ov01_021FB594
	thumb_func_end ov01_021FB4F4

	thumb_func_start ov01_021FB514
ov01_021FB514: ; 0x021FB514
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0201A120
	cmp r0, #1
	beq _021FB528
	bl GF_AssertFail
_021FB528:
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB514

	thumb_func_start ov01_021FB530
ov01_021FB530: ; 0x021FB530
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl ov01_021FB5B4
	add r4, r0, #0
	bne _021FB542
	bl GF_AssertFail
_021FB542:
	cmp r4, #0
	beq _021FB54E
	str r6, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	str r0, [r4]
_021FB54E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB530

	thumb_func_start ov01_021FB554
ov01_021FB554: ; 0x021FB554
	ldr r3, _021FB558 ; =ov01_021FB584
	bx r3
	.balign 4, 0
_021FB558: .word ov01_021FB584
	thumb_func_end ov01_021FB554

	thumb_func_start ov01_021FB55C
ov01_021FB55C: ; 0x021FB55C
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_021FB564:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021FB564
	mov r4, #0
	str r4, [r0]
	add r5, r0, #4
_021FB572:
	add r0, r5, #0
	bl ov01_021FB584
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #2
	blt _021FB572
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB55C

	thumb_func_start ov01_021FB584
ov01_021FB584: ; 0x021FB584
	mov r2, #0
	ldr r1, _021FB590 ; =ov01_021FB5B0
	str r2, [r0]
	str r1, [r0, #8]
	str r2, [r0, #4]
	bx lr
	.balign 4, 0
_021FB590: .word ov01_021FB5B0
	thumb_func_end ov01_021FB584

	thumb_func_start ov01_021FB594
ov01_021FB594: ; 0x021FB594
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #4
_021FB59C:
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	blx r2
	add r6, r6, #1
	add r5, #0xc
	add r4, #0xc
	cmp r6, #2
	blt _021FB59C
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FB594

	thumb_func_start ov01_021FB5B0
ov01_021FB5B0: ; 0x021FB5B0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FB5B0

	thumb_func_start ov01_021FB5B4
ov01_021FB5B4: ; 0x021FB5B4
	mov r2, #0
	add r3, r0, #0
_021FB5B8:
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _021FB5C8
	add r1, r0, #4
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	bx lr
_021FB5C8:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #2
	blt _021FB5B8
	mov r0, #0
	bx lr
	thumb_func_end ov01_021FB5B4

	thumb_func_start ov01_021FB5D4
ov01_021FB5D4: ; 0x021FB5D4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0xca
	lsl r1, r1, #2
	add r6, r0, #0
	bl AllocFromHeap
	mov r2, #0xca
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	mov r2, #0x63
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	str r0, [r4]
	add r0, r6, #0
	add r1, #0xc
	add r2, r4, r2
	bl sub_02014A08
	mov r1, #0xc3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	str r5, [r4, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FB5D4

	thumb_func_start ov01_021FB610
ov01_021FB610: ; 0x021FB610
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	cmp r1, #1
	bne _021FB61E
	bl ov01_021FB82C
_021FB61E:
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02014A38
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov01_021FB610

	thumb_func_start ov01_021FB630
ov01_021FB630: ; 0x021FB630
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FB63E
	bl GF_AssertFail
_021FB63E:
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, _021FB6B0 ; =ov01_021FB7DC
	add r2, r4, #0
	bl ov01_021FB530
	mov r2, #0xc5
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, _021FB6B4 ; =ov01_021FB6C4
	add r1, r4, #0
	add r2, #0xec
	bl sub_0200E320
	mov r2, #0xc7
	lsl r2, r2, #2
	str r0, [r4, r2]
	ldr r0, _021FB6B8 ; =ov01_021FB7CC
	add r1, r4, #0
	add r2, #0xe4
	bl sub_0200E33C
	mov r2, #0x32
	lsl r2, r2, #4
	str r0, [r4, r2]
	ldr r0, _021FB6BC ; =ov01_021FB800
	add r1, r4, #0
	add r2, #0xe0
	bl sub_0200E33C
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r2, #6
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #6
	bl memset
	mov r2, #0x63
	lsl r2, r2, #2
	add r0, r4, r2
	mov r1, #0
	sub r2, #0xc
	bl memset
	mov r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, _021FB6C0 ; =0x0000060F
	bl PlaySE
	pop {r4, pc}
	nop
_021FB6B0: .word ov01_021FB7DC
_021FB6B4: .word ov01_021FB6C4
_021FB6B8: .word ov01_021FB7CC
_021FB6BC: .word ov01_021FB800
_021FB6C0: .word 0x0000060F
	thumb_func_end ov01_021FB630

	thumb_func_start ov01_021FB6C4
ov01_021FB6C4: ; 0x021FB6C4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021FB74C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FB6DA: ; jump table
	.short _021FB6E2 - _021FB6DA - 2 ; case 0
	.short _021FB6EE - _021FB6DA - 2 ; case 1
	.short _021FB71A - _021FB6DA - 2 ; case 2
	.short _021FB740 - _021FB6DA - 2 ; case 3
_021FB6E2:
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021FB6EE:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02014A4C
	ldr r1, [r4, #4]
	mov r2, #3
	sub r1, r2, r1
	bl ov01_021FB788
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021FB74C
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021FB71A:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02014A4C
	ldr r1, [r4, #4]
	mov r2, #3
	bl ov01_021FB788
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021FB74C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021FB740:
	add r0, r4, #0
	bl ov01_021FB82C
	mov r0, #0
	bl G3X_SetHOffset
_021FB74C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB6C4

	thumb_func_start ov01_021FB750
ov01_021FB750: ; 0x021FB750
	push {r4, lr}
	ldr r1, _021FB780 ; =0x04000006
	ldrh r4, [r1]
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02014A60
	cmp r4, #0xc0
	bge _021FB77E
	add r3, r4, #1
	cmp r3, #0xc0
	blt _021FB76C
	sub r3, #0xc0
_021FB76C:
	ldr r1, _021FB784 ; =0x04000004
	ldrh r2, [r1]
	mov r1, #2
	tst r1, r2
	beq _021FB77E
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	bl G3X_SetHOffset
_021FB77E:
	pop {r4, pc}
	.balign 4, 0
_021FB780: .word 0x04000006
_021FB784: .word 0x04000004
	thumb_func_end ov01_021FB750

	thumb_func_start ov01_021FB788
ov01_021FB788: ; 0x021FB788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r2, #0
	mov r4, #1
	bl _s32_div_f
	neg r1, r0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	mov r6, #0
	str r1, [sp]
	lsr r7, r0, #0x10
_021FB7A6:
	add r0, r6, #0
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	bne _021FB7B6
	mov r0, #1
	eor r4, r0
_021FB7B6:
	cmp r4, #0
	beq _021FB7BE
	strh r7, [r5]
	b _021FB7C2
_021FB7BE:
	ldr r0, [sp]
	strh r0, [r5]
_021FB7C2:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #0xc0
	blt _021FB7A6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FB788

	thumb_func_start ov01_021FB7CC
ov01_021FB7CC: ; 0x021FB7CC
	mov r2, #0xc6
	ldr r3, _021FB7D8 ; =G3X_SetHOffset
	mov r0, #0
	lsl r2, r2, #2
	str r0, [r1, r2]
	bx r3
	.balign 4, 0
_021FB7D8: .word G3X_SetHOffset
	thumb_func_end ov01_021FB7CC

	thumb_func_start ov01_021FB7DC
ov01_021FB7DC: ; 0x021FB7DC
	ldr r3, _021FB7E4 ; =ov01_021FB7E8
	add r0, r1, #0
	bx r3
	nop
_021FB7E4: .word ov01_021FB7E8
	thumb_func_end ov01_021FB7DC

	thumb_func_start ov01_021FB7E8
ov01_021FB7E8: ; 0x021FB7E8
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #1
	bne _021FB7FE
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021FB7FE
	bl ov01_021FB750
_021FB7FE:
	pop {r3, pc}
	thumb_func_end ov01_021FB7E8

	thumb_func_start ov01_021FB800
ov01_021FB800: ; 0x021FB800
	ldr r3, _021FB808 ; =ov01_021FB80C
	add r0, r1, #0
	bx r3
	nop
_021FB808: .word ov01_021FB80C
	thumb_func_end ov01_021FB800

	thumb_func_start ov01_021FB80C
ov01_021FB80C: ; 0x021FB80C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021FB828
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02014A8C
	mov r0, #0xc6
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021FB828:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB80C

	thumb_func_start ov01_021FB82C
ov01_021FB82C: ; 0x021FB82C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov01_021FB554
	mov r0, #0xc5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_0200E390
	mov r0, #0xc7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200E390
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200E390
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r1, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB82C

	thumb_func_start ov01_021FB878
ov01_021FB878: ; 0x021FB878
	ldr r2, [r1, #0x14]
	ldr r3, _021FB884 ; =ReallocFromHeap
	add r1, r1, r2
	sub r1, r1, r0
	bx r3
	nop
_021FB884: .word ReallocFromHeap
	thumb_func_end ov01_021FB878

	thumb_func_start ov01_021FB888
ov01_021FB888: ; 0x021FB888
	push {r3, r4, r5, lr}
	ldr r1, _021FB8F8 ; =0x000008C4
	add r5, r0, #0
	mov r0, #4
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #4
	mov r1, #0x10
	bl AllocFromHeapAtEnd
	ldr r1, _021FB8FC ; =0x000008B8
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	str r5, [r0]
	ldr r0, [r4, r1]
	sub r1, #8
	str r2, [r0, #4]
	add r0, r4, r1
	mov r1, #0x2a
	add r2, r5, #0
	bl ReadWholeNarcMemberByIdPair
	ldr r0, _021FB900 ; =0x000008B6
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021FB8D8
	mov r0, #0x6b
	mov r1, #4
	bl NARC_ctor
	mov r1, #0x23
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x28
	mov r1, #4
	bl NARC_ctor
	b _021FB8EE
_021FB8D8:
	mov r0, #0x6c
	mov r1, #4
	bl NARC_ctor
	mov r1, #0x23
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x94
	mov r1, #4
	bl NARC_ctor
_021FB8EE:
	ldr r1, _021FB8FC ; =0x000008B8
	ldr r1, [r4, r1]
	str r0, [r1, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FB8F8: .word 0x000008C4
_021FB8FC: .word 0x000008B8
_021FB900: .word 0x000008B6
	thumb_func_end ov01_021FB888

	thumb_func_start ov01_021FB904
ov01_021FB904: ; 0x021FB904
	mov r1, #0x23
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov01_021FB904

	thumb_func_start ov01_021FB90C
ov01_021FB90C: ; 0x021FB90C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021FB918
	bl GF_AssertFail
_021FB918:
	add r2, r4, #4
	lsl r1, r5, #2
	ldr r0, [r2, r1]
	cmp r0, #0
	bne _021FB930
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021FB92C
	bl GF_AssertFail
_021FB92C:
	add r0, r4, #4
	pop {r3, r4, r5, pc}
_021FB930:
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FB90C

	thumb_func_start ov01_021FB934
ov01_021FB934: ; 0x021FB934
	push {r4, lr}
	add r4, r0, #0
	bne _021FB93E
	bl GF_AssertFail
_021FB93E:
	add r0, r4, #4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FB934

	thumb_func_start ov01_021FB944
ov01_021FB944: ; 0x021FB944
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x23
	ldr r1, [r5]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl NARC_dtor
	ldr r1, [r5]
	ldr r0, _021FB9BC ; =0x000008AC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021FB962
	bl ov01_021EA7E0
_021FB962:
	mov r6, #0
	ldr r7, _021FB9C0 ; =0x00000226
	add r4, r6, #0
_021FB968:
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021FB976
	bl FreeToHeap
_021FB976:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r7
	blt _021FB968
	ldr r1, [r5]
	ldr r0, _021FB9C4 ; =0x000008BC
	ldr r0, [r1, r0]
	bl FreeToHeap
	ldr r1, [r5]
	ldr r0, _021FB9C8 ; =0x0000089C
	ldr r0, [r1, r0]
	bl FreeToHeap
	ldr r1, [r5]
	ldr r0, _021FB9C8 ; =0x0000089C
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r5]
	add r0, r0, #4
	ldr r0, [r1, r0]
	bl FreeToHeap
	mov r0, #0x8a
	ldr r1, [r5]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [r5]
	bl FreeToHeap
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FB9BC: .word 0x000008AC
_021FB9C0: .word 0x00000226
_021FB9C4: .word 0x000008BC
_021FB9C8: .word 0x0000089C
	thumb_func_end ov01_021FB944

	thumb_func_start ov01_021FB9CC
ov01_021FB9CC: ; 0x021FB9CC
	push {r4, lr}
	add r4, r0, #0
	bne _021FB9D6
	bl GF_AssertFail
_021FB9D6:
	ldr r0, _021FB9DC ; =0x000008A4
	ldr r0, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_021FB9DC: .word 0x000008A4
	thumb_func_end ov01_021FB9CC

	thumb_func_start ov01_021FB9E0
ov01_021FB9E0: ; 0x021FB9E0
	push {r4, lr}
	add r4, r0, #0
	bne _021FB9EA
	bl GF_AssertFail
_021FB9EA:
	ldr r0, _021FB9F0 ; =0x000008A8
	ldr r0, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_021FB9F0: .word 0x000008A8
	thumb_func_end ov01_021FB9E0

	thumb_func_start ov01_021FB9F4
ov01_021FB9F4: ; 0x021FB9F4
	ldr r1, _021FB9FC ; =0x000008AC
	ldr r0, [r0, r1]
	bx lr
	nop
_021FB9FC: .word 0x000008AC
	thumb_func_end ov01_021FB9F4

	thumb_func_start ov01_021FBA00
ov01_021FBA00: ; 0x021FBA00
	ldr r1, _021FBA10 ; =0x000008B7
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021FBA0C
	mov r0, #1
	bx lr
_021FBA0C:
	mov r0, #0
	bx lr
	.balign 4, 0
_021FBA10: .word 0x000008B7
	thumb_func_end ov01_021FBA00

	thumb_func_start ov01_021FBA14
ov01_021FBA14: ; 0x021FBA14
	ldr r1, _021FBA38 ; =0x000008B7
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021FBA26
	cmp r0, #1
	beq _021FBA2A
	cmp r0, #2
	beq _021FBA2E
	b _021FBA32
_021FBA26:
	mov r0, #1
	bx lr
_021FBA2A:
	mov r0, #0
	bx lr
_021FBA2E:
	mov r0, #3
	bx lr
_021FBA32:
	mov r0, #0
	bx lr
	nop
_021FBA38: .word 0x000008B7
	thumb_func_end ov01_021FBA14

	thumb_func_start ov01_021FBA3C
ov01_021FBA3C: ; 0x021FBA3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x13c
	str r1, [sp, #0xc]
	add r5, r0, #0
	ldr r1, _021FBC94 ; =0x000008B8
	ldr r0, [sp, #0x150]
	ldr r6, [r5, r1]
	sub r1, #8
	str r2, [sp, #0x10]
	str r0, [sp, #0x150]
	ldrh r1, [r5, r1]
	mov r0, #0x2b
	mov r2, #4
	add r4, r3, #0
	bl AllocAndReadWholeNarcMemberByIdPair
	ldr r1, _021FBC98 ; =0x000008BC
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	ldrh r1, [r0]
	ldr r0, _021FBC9C ; =0x00000226
	strh r1, [r6, #0xc]
	cmp r1, r0
	blo _021FBA70
	bl GF_AssertFail
_021FBA70:
	ldr r1, _021FBCA0 ; =0x000008B2
	mov r0, #0x2c
	ldrh r1, [r5, r1]
	mov r2, #4
	bl AllocAndReadWholeNarcMemberByIdPair
	ldr r1, _021FBCA4 ; =0x0000089C
	mov r2, #4
	str r0, [r5, r1]
	add r1, #0x14
	ldrh r1, [r5, r1]
	mov r0, #0x46
	bl AllocAndReadWholeNarcMemberByIdPair
	mov r1, #0x8a
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	ldr r1, _021FBCA8 ; =0x000008A4
	str r0, [r5, r1]
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	beq _021FBAB2
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	ldr r1, _021FBCAC ; =0x000008A8
	str r0, [r5, r1]
	b _021FBAB8
_021FBAB2:
	mov r2, #0
	add r0, r1, #4
	str r2, [r5, r0]
_021FBAB8:
	ldr r0, _021FBCA8 ; =0x000008A4
	ldr r0, [r5, r0]
	bl sub_0201F668
	cmp r0, #0
	bne _021FBAC8
	bl GF_AssertFail
_021FBAC8:
	ldr r1, _021FBCA4 ; =0x0000089C
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	bl ov01_021FB878
	ldr r0, _021FBCAC ; =0x000008A8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021FBAF6
	bl sub_0201F668
	cmp r0, #0
	bne _021FBAE8
	bl GF_AssertFail
_021FBAE8:
	mov r1, #0x8a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	bl ov01_021FB878
_021FBAF6:
	ldr r0, _021FBCB0 ; =0x000008B4
	ldrh r1, [r5, r0]
	ldr r0, _021FBCB4 ; =0x0000FFFF
	cmp r1, r0
	beq _021FBB06
	add r0, r4, #0
	bl ov01_0220463C
_021FBB06:
	mov r2, #0
	ldr r0, _021FBC9C ; =0x00000226
	add r3, r5, #0
	add r1, r2, #0
_021FBB0E:
	add r2, r2, #1
	str r1, [r3, #4]
	add r3, r3, #4
	cmp r2, r0
	blt _021FBB0E
	ldr r0, _021FBCB8 ; =0x000008AC
	str r1, [r5, r0]
	ldr r0, [sp, #0x10]
	bl ov01_021E8B9C
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ble _021FBBEC
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_021FBB32:
	ldr r0, _021FBC98 ; =0x000008BC
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	ldrh r4, [r0, #2]
	lsl r0, r4, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021FBB4C
	bl GF_AssertFail
_021FBB4C:
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [r6, #8]
	add r1, r4, #0
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	str r0, [r7, #4]
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, sp, #0x24
	bl NARC_ReadWholeMember
	ldr r1, _021FBCAC ; =0x000008A8
	ldr r0, [r7, #4]
	ldr r1, [r5, r1]
	bl sub_0201F64C
	cmp r0, #0
	bne _021FBB7C
	bl GF_AssertFail
_021FBB7C:
	add r0, sp, #0x24
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _021FBBDA
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ov01_022040A4
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	bge _021FBBDA
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #4]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021FBBC0
	add r1, r0, #0
	add r1, #8
	beq _021FBBB4
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _021FBBB4
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _021FBBB6
_021FBBB4:
	mov r1, #0
_021FBBB6:
	cmp r1, #0
	beq _021FBBC0
	ldr r1, [r1]
	add r1, r0, r1
	b _021FBBC2
_021FBBC0:
	mov r1, #0
_021FBBC2:
	add r0, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, _021FBCAC ; =0x000008A8
	str r0, [sp, #4]
	ldr r0, [sp, #0x150]
	add r2, r7, #0
	str r0, [sp, #8]
	ldr r3, [r5, r3]
	add r0, r4, #0
	bl ov01_021E8F3C
_021FBBDA:
	ldr r0, [sp, #0x18]
	ldrh r1, [r6, #0xc]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _021FBB32
_021FBBEC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021FBC2C
	ldr r0, [r6, #8]
	mov r1, #0
	mov r2, #4
	bl NARC_AllocAndReadWholeMember
	str r0, [r5, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0
	bl ov01_022040A4
	ldr r0, [r5, #4]
	bl NNS_G3dGetTex
	add r4, r0, #0
	beq _021FBC2C
	bl sub_0201F668
	cmp r0, #0
	bne _021FBC1C
	bl GF_AssertFail
_021FBC1C:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0201F64C
	cmp r0, #0
	bne _021FBC2C
	bl GF_AssertFail
_021FBC2C:
	ldr r0, [r6, #8]
	bl NARC_dtor
	ldr r2, _021FBCBC ; =0x04000060
	ldr r0, _021FBCC0 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021FBCC4 ; =0x000008B7
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021FBC50
	ldr r0, _021FBCC8 ; =0x02208BA0
	bl G3X_SetEdgeColorTable
	b _021FBC56
_021FBC50:
	ldr r0, _021FBCCC ; =0x02208BB0
	bl G3X_SetEdgeColorTable
_021FBC56:
	bl ov01_021EA724
	ldr r1, _021FBCB8 ; =0x000008AC
	str r0, [r5, r1]
	add r1, #0xa
	ldrb r0, [r5, r1]
	cmp r0, #0
	add r0, sp, #0x3c
	beq _021FBC70
	ldr r1, _021FBCD0 ; =0x02209A88
	bl sprintf
	b _021FBC76
_021FBC70:
	ldr r1, _021FBCD4 ; =0x02209AB4
	bl sprintf
_021FBC76:
	ldr r1, _021FBCB8 ; =0x000008AC
	add r0, sp, #0x3c
	ldr r1, [r5, r1]
	bl ov01_021EA73C
	ldr r0, _021FBC94 ; =0x000008B8
	ldr r0, [r5, r0]
	bl FreeToHeap
	ldr r0, _021FBC94 ; =0x000008B8
	mov r1, #0
	str r1, [r5, r0]
	add sp, #0x13c
	pop {r4, r5, r6, r7, pc}
	nop
_021FBC94: .word 0x000008B8
_021FBC98: .word 0x000008BC
_021FBC9C: .word 0x00000226
_021FBCA0: .word 0x000008B2
_021FBCA4: .word 0x0000089C
_021FBCA8: .word 0x000008A4
_021FBCAC: .word 0x000008A8
_021FBCB0: .word 0x000008B4
_021FBCB4: .word 0x0000FFFF
_021FBCB8: .word 0x000008AC
_021FBCBC: .word 0x04000060
_021FBCC0: .word 0xFFFFCFFF
_021FBCC4: .word 0x000008B7
_021FBCC8: .word 0x02208BA0
_021FBCCC: .word 0x02208BB0
_021FBCD0: .word 0x02209A88
_021FBCD4: .word 0x02209AB4
	thumb_func_end ov01_021FBA3C

	thumb_func_start ov01_021FBCD8
ov01_021FBCD8: ; 0x021FBCD8
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	str r5, [sp]
	add r2, r5, #0
	bl GfGfxLoader_LoadFromNarc
	str r0, [r4]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #4]
	cmp r0, #0
	beq _021FBD16
	add r2, r0, #0
	add r2, #8
	beq _021FBD0A
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021FBD0A
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021FBD0C
_021FBD0A:
	mov r1, #0
_021FBD0C:
	cmp r1, #0
	beq _021FBD16
	ldr r1, [r1]
	add r0, r0, r1
	b _021FBD18
_021FBD16:
	mov r0, #0
_021FBD18:
	str r0, [r4, #8]
	ldr r0, [r4]
	bl NNS_G3dGetTex
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _021FBD32
	mov r2, #1
	ldr r0, _021FBD34 ; =ov01_021FBD8C
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
_021FBD32:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FBD34: .word ov01_021FBD8C
	thumb_func_end ov01_021FBCD8

	thumb_func_start ov01_021FBD38
ov01_021FBD38: ; 0x021FBD38
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	str r1, [r4]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #4]
	cmp r0, #0
	beq _021FBD6A
	add r2, r0, #0
	add r2, #8
	beq _021FBD5E
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021FBD5E
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021FBD60
_021FBD5E:
	mov r1, #0
_021FBD60:
	cmp r1, #0
	beq _021FBD6A
	ldr r1, [r1]
	add r0, r0, r1
	b _021FBD6C
_021FBD6A:
	mov r0, #0
_021FBD6C:
	str r0, [r4, #8]
	ldr r0, [r4]
	bl NNS_G3dGetTex
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _021FBD86
	mov r2, #1
	ldr r0, _021FBD88 ; =ov01_021FBD8C
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200E374
_021FBD86:
	pop {r4, pc}
	.balign 4, 0
_021FBD88: .word ov01_021FBD8C
	thumb_func_end ov01_021FBD38

	thumb_func_start ov01_021FBD8C
ov01_021FBD8C: ; 0x021FBD8C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201F668
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl sub_0201F64C
	add r0, r5, #0
	bl sub_0200E390
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FBD8C

	thumb_func_start ov01_021FBDA8
ov01_021FBDA8: ; 0x021FBDA8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021FBDD8
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _021FBDF4 ; =0x02110928
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _021FBDF4 ; =0x02110928
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _021FBDF8 ; =0x02110930
	ldr r1, [r1]
	blx r1
_021FBDD8:
	ldr r0, [r4]
	cmp r0, #0
	beq _021FBDE2
	bl FreeToHeap
_021FBDE2:
	mov r1, #0x10
	mov r0, #0
_021FBDE6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021FBDE6
	add sp, #8
	pop {r4, pc}
	nop
_021FBDF4: .word 0x02110928
_021FBDF8: .word 0x02110930
	thumb_func_end ov01_021FBDA8

	thumb_func_start ov01_021FBDFC
ov01_021FBDFC: ; 0x021FBDFC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021FBE2C
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _021FBE3C ; =0x02110928
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r1, _021FBE3C ; =0x02110928
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _021FBE40 ; =0x02110930
	ldr r1, [r1]
	blx r1
_021FBE2C:
	mov r1, #0x10
	mov r0, #0
_021FBE30:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021FBE30
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021FBE3C: .word 0x02110928
_021FBE40: .word 0x02110930
	thumb_func_end ov01_021FBDFC

	thumb_func_start ov01_021FBE44
ov01_021FBE44: ; 0x021FBE44
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r6, #0
	add r1, r3, #0
	add r5, r0, #0
	add r0, r2, #0
	ldr r3, [sp, #0x18]
	add r2, r6, #0
	str r6, [sp]
	bl GfGfxLoader_LoadFromNarc
	add r2, r0, #0
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FC030
	add r0, r6, #0
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FBE44

	thumb_func_start ov01_021FBE70
ov01_021FBE70: ; 0x021FBE70
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FC030
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FBE70

	thumb_func_start ov01_021FBE80
ov01_021FBE80: ; 0x021FBE80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FBE9E
	add r0, r1, #0
	ldr r1, [r4, #8]
	bl NNS_G3dFreeAnmObj
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021FBE9E
	ldr r0, [r4]
	bl FreeToHeap
_021FBE9E:
	mov r1, #0x14
	mov r0, #0
_021FBEA2:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _021FBEA2
	pop {r4, pc}
	thumb_func_end ov01_021FBE80

	thumb_func_start ov01_021FBEAC
ov01_021FBEAC: ; 0x021FBEAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r1, #0
	ble _021FBECA
	ldr r0, [r4, #0xc]
	add r0, r0, r1
	add r1, r2, #0
	bl _s32_div_f
	str r1, [r4, #0xc]
	b _021FBEDC
_021FBECA:
	ldr r0, [r4, #0xc]
	add r3, r4, #0
	add r3, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	bpl _021FBEDC
	ldr r0, [r3]
	add r0, r0, r2
	str r0, [r3]
_021FBEDC:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0]
	pop {r4, pc}
	thumb_func_end ov01_021FBEAC

	thumb_func_start ov01_021FBEE4
ov01_021FBEE4: ; 0x021FBEE4
	push {r3, r4}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #0
	cmp r1, #0
	ble _021FBF06
	add r1, r3, r1
	cmp r1, r4
	bge _021FBF00
	str r1, [r0, #0xc]
	b _021FBF12
_021FBF00:
	str r4, [r0, #0xc]
	mov r2, #1
	b _021FBF12
_021FBF06:
	add r1, r3, r1
	bmi _021FBF0E
	str r1, [r0, #0xc]
	b _021FBF12
_021FBF0E:
	str r2, [r0, #0xc]
	mov r2, #1
_021FBF12:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FBEE4

	thumb_func_start ov01_021FBF20
ov01_021FBF20: ; 0x021FBF20
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021FBF20

	thumb_func_start ov01_021FBF28
ov01_021FBF28: ; 0x021FBF28
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021FBF28

	thumb_func_start ov01_021FBF2C
ov01_021FBF2C: ; 0x021FBF2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #0x78
	add r4, r0, #0
	bl memset
	ldr r1, [r5, #8]
	add r0, r4, #0
	bl NNS_G3dRenderObjInit
	mov r0, #1
	str r0, [r4, #0x6c]
	lsl r0, r0, #0xc
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FBF2C

	thumb_func_start ov01_021FBF50
ov01_021FBF50: ; 0x021FBF50
	ldr r3, _021FBF58 ; =NNS_G3dRenderObjAddAnmObj
	ldr r1, [r1, #8]
	bx r3
	nop
_021FBF58: .word NNS_G3dRenderObjAddAnmObj
	thumb_func_end ov01_021FBF50

	thumb_func_start ov01_021FBF5C
ov01_021FBF5C: ; 0x021FBF5C
	ldr r3, _021FBF64 ; =NNS_G3dRenderObjRemoveAnmObj
	ldr r1, [r1, #8]
	bx r3
	nop
_021FBF64: .word NNS_G3dRenderObjRemoveAnmObj
	thumb_func_end ov01_021FBF5C

	thumb_func_start ov01_021FBF68
ov01_021FBF68: ; 0x021FBF68
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _021FBFFC
	add r0, sp, #0x24
	bl MTX_Identity33_
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	ldr r3, _021FC000 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotX33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	add r0, r4, #0
	add r0, #0x74
	ldrh r0, [r0]
	ldr r3, _021FC000 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	add r0, r4, #0
	add r0, #0x72
	ldrh r0, [r0]
	ldr r3, _021FC000 ; =0x021094DC
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotY33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x60
	add r1, #0x54
	add r2, sp, #0x24
	add r3, r4, #0
	bl sub_0201F554
_021FBFFC:
	add sp, #0x48
	pop {r4, pc}
	.balign 4, 0
_021FC000: .word 0x021094DC
	thumb_func_end ov01_021FBF68

	thumb_func_start ov01_021FC004
ov01_021FC004: ; 0x021FC004
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end ov01_021FC004

	thumb_func_start ov01_021FC008
ov01_021FC008: ; 0x021FC008
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end ov01_021FC008

	thumb_func_start ov01_021FC00C
ov01_021FC00C: ; 0x021FC00C
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	str r3, [r0, #0x5c]
	bx lr
	thumb_func_end ov01_021FC00C

	thumb_func_start ov01_021FC014
ov01_021FC014: ; 0x021FC014
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x54
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end ov01_021FC014

	thumb_func_start ov01_021FC024
ov01_021FC024: ; 0x021FC024
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, #0x70
	strh r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FC024

	thumb_func_start ov01_021FC030
ov01_021FC030: ; 0x021FC030
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5]
	add r0, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl NNS_G3dGetAnmByIdx
	str r0, [r5, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl NNS_G3dAnmObjInit
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FC030

	thumb_func_start ov01_021FC05C
ov01_021FC05C: ; 0x021FC05C
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r1, #8]
	add r4, r2, #0
	bl ov01_021FC14C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0x13
	bl ov01_021FC1A4
	mov r3, #0
	str r3, [r4, #0x14]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021FC0A0 ; =0x04000050
	mov r1, #4
	mov r2, #0x29
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #0
	bl sub_0201BB68
	mov r0, #4
	mov r1, #1
	bl GX_EngineAToggleLayers
	ldr r0, _021FC0A4 ; =0x00000647
	bl PlaySE
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021FC0A0: .word 0x04000050
_021FC0A4: .word 0x00000647
	thumb_func_end ov01_021FC05C

	thumb_func_start ov01_021FC0A8
ov01_021FC0A8: ; 0x021FC0A8
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r1, #8]
	add r4, r2, #0
	bl ov01_021FC14C
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #0xf
	bl ov01_021FC1A4
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #6
	str r0, [sp]
	ldr r0, _021FC0D8 ; =0x04000050
	mov r1, #4
	mov r2, #0x21
	mov r3, #0xa
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021FC0D8: .word 0x04000050
	thumb_func_end ov01_021FC0A8

	thumb_func_start ov01_021FC0DC
ov01_021FC0DC: ; 0x021FC0DC
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FC0DC

	thumb_func_start ov01_021FC0E0
ov01_021FC0E0: ; 0x021FC0E0
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _021FC106
	add r0, r4, #0
	bl ov01_021FC1B4
	cmp r0, #0
	beq _021FC0F8
	mov r0, #1
	str r0, [r4, #0x14]
_021FC0F8:
	ldr r1, [r4]
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021FC108 ; =0x04000052
	strh r1, [r0]
_021FC106:
	pop {r4, pc}
	.balign 4, 0
_021FC108: .word 0x04000052
	thumb_func_end ov01_021FC0E0

	thumb_func_start ov01_021FC10C
ov01_021FC10C: ; 0x021FC10C
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FC10C

	thumb_func_start ov01_021FC110
ov01_021FC110: ; 0x021FC110
	ldr r0, [r0, #4]
	ldr r3, _021FC11C ; =ov01_021E67BC
	ldr r0, [r0, #4]
	ldr r1, _021FC120 ; =0x02208BCC
	bx r3
	nop
_021FC11C: .word ov01_021E67BC
_021FC120: .word 0x02208BCC
	thumb_func_end ov01_021FC110

	thumb_func_start ov01_021FC124
ov01_021FC124: ; 0x021FC124
	ldr r3, _021FC128 ; =ov01_021E683C
	bx r3
	.balign 4, 0
_021FC128: .word ov01_021E683C
	thumb_func_end ov01_021FC124

	thumb_func_start ov01_021FC12C
ov01_021FC12C: ; 0x021FC12C
	push {r3, lr}
	bl ov01_021E687C
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC12C

	thumb_func_start ov01_021FC138
ov01_021FC138: ; 0x021FC138
	ldr r0, [r0, #4]
	ldr r3, _021FC144 ; =ov01_021E67BC
	ldr r0, [r0, #4]
	ldr r1, _021FC148 ; =0x02208BE4
	bx r3
	nop
_021FC144: .word ov01_021E67BC
_021FC148: .word 0x02208BE4
	thumb_func_end ov01_021FC138

	thumb_func_start ov01_021FC14C
ov01_021FC14C: ; 0x021FC14C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _021FC19C ; =0x00005D5F
	add r5, r0, #0
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #2
	add r1, sp, #4
	add r2, r0, #0
	mov r3, #0xc2
	bl BG_LoadPlttData
	mov r0, #4
	mov r1, #0x20
	bl AllocFromHeap
	mov r1, #0x11
	mov r2, #0x20
	add r4, r0, #0
	bl memset
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x20
	bl BG_LoadCharTilesData
	add r0, r4, #0
	bl FreeToHeap
	ldr r2, _021FC1A0 ; =0x00006001
	add r0, r5, #0
	mov r1, #2
	bl sub_0201CB04
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021FC19C: .word 0x00005D5F
_021FC1A0: .word 0x00006001
	thumb_func_end ov01_021FC14C

	thumb_func_start ov01_021FC1A4
ov01_021FC1A4: ; 0x021FC1A4
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov01_021FC1A4

	thumb_func_start ov01_021FC1B4
ov01_021FC1B4: ; 0x021FC1B4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021FC1DA
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021FC1DA:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov01_021FC1B4

	thumb_func_start ov01_021FC1E0
ov01_021FC1E0: ; 0x021FC1E0
	ldr r3, _021FC1E8 ; =BG_SetMaskColor
	mov r0, #2
	mov r1, #0
	bx r3
	.balign 4, 0
_021FC1E8: .word BG_SetMaskColor
	thumb_func_end ov01_021FC1E0

	thumb_func_start ov01_021FC1EC
ov01_021FC1EC: ; 0x021FC1EC
	ldr r3, _021FC1F4 ; =BG_SetMaskColor
	mov r0, #2
	ldr r1, _021FC1F8 ; =0x00007FFF
	bx r3
	.balign 4, 0
_021FC1F4: .word BG_SetMaskColor
_021FC1F8: .word 0x00007FFF
	thumb_func_end ov01_021FC1EC

	thumb_func_start ov01_021FC1FC
ov01_021FC1FC: ; 0x021FC1FC
	push {r4, lr}
	sub sp, #8
	ldr r1, _021FC254 ; =0x00007FFF
	add r4, r0, #0
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r1, _021FC258 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0xc4
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #2
	add r1, sp, #4
	add r2, r0, #0
	bl BG_LoadPlttData
	mov r1, #2
	str r1, [sp]
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #1
	bl sub_0201C1F4
	ldr r0, [r4, #8]
	ldr r2, _021FC25C ; =0x00006002
	mov r1, #2
	bl sub_0201CB04
	mov r0, #4
	mov r1, #1
	bl GX_EngineAToggleLayers
	add r0, r4, #0
	bl ov01_021FC1E0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021FC254: .word 0x00007FFF
_021FC258: .word 0x0400000C
_021FC25C: .word 0x00006002
	thumb_func_end ov01_021FC1FC

	thumb_func_start ov01_021FC260
ov01_021FC260: ; 0x021FC260
	push {r4, lr}
	sub sp, #8
	ldr r1, _021FC2B8 ; =0x00007FFF
	add r4, r0, #0
	add r0, sp, #4
	strh r1, [r0]
	mov r0, #8
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r1, _021FC2BC ; =0x0400000E
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0xc4
	bic r2, r0
	mov r0, #3
	orr r2, r0
	strh r2, [r1]
	add r1, sp, #4
	mov r2, #2
	bl BG_LoadPlttData
	mov r2, #2
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #3
	mov r3, #1
	bl sub_0201C1F4
	ldr r0, [r4, #8]
	ldr r2, _021FC2C0 ; =0x00006002
	mov r1, #3
	bl sub_0201CB04
	mov r0, #8
	mov r1, #1
	bl GX_EngineAToggleLayers
	add r0, r4, #0
	bl ov01_021FC1E0
	add sp, #8
	pop {r4, pc}
	nop
_021FC2B8: .word 0x00007FFF
_021FC2BC: .word 0x0400000E
_021FC2C0: .word 0x00006002
	thumb_func_end ov01_021FC260

	thumb_func_start ov01_021FC2C4
ov01_021FC2C4: ; 0x021FC2C4
	mov r0, #0
	bx lr
	thumb_func_end ov01_021FC2C4

	thumb_func_start ov01_021FC2C8
ov01_021FC2C8: ; 0x021FC2C8
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl ov01_021EB31C
	ldr r3, _021FC2EC ; =0x02208BC0
	mov r2, #0
_021FC2D6:
	ldr r1, [r3]
	cmp r0, r1
	bne _021FC2E0
	mov r0, #0
	pop {r3, pc}
_021FC2E0:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #3
	blt _021FC2D6
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
_021FC2EC: .word 0x02208BC0
	thumb_func_end ov01_021FC2C8

	thumb_func_start ov01_021FC2F0
ov01_021FC2F0: ; 0x021FC2F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FC302
	bl ov01_021FC124
	mov r0, #0
	str r0, [r4]
_021FC302:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC2F0

	thumb_func_start ov01_021FC30C
ov01_021FC30C: ; 0x021FC30C
	mov r0, #0xc
	bx lr
	thumb_func_end ov01_021FC30C

	thumb_func_start ov01_021FC310
ov01_021FC310: ; 0x021FC310
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0205064C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050650
	add r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #9
	bls _021FC32A
	b _021FC4AE
_021FC32A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021FC336: ; jump table
	.short _021FC34A - _021FC336 - 2 ; case 0
	.short _021FC376 - _021FC336 - 2 ; case 1
	.short _021FC392 - _021FC336 - 2 ; case 2
	.short _021FC3A8 - _021FC336 - 2 ; case 3
	.short _021FC3FA - _021FC336 - 2 ; case 4
	.short _021FC40E - _021FC336 - 2 ; case 5
	.short _021FC434 - _021FC336 - 2 ; case 6
	.short _021FC456 - _021FC336 - 2 ; case 7
	.short _021FC476 - _021FC336 - 2 ; case 8
	.short _021FC488 - _021FC336 - 2 ; case 9
_021FC34A:
	add r0, r5, #0
	bl ov01_021FC2C8
	cmp r0, #1
	bne _021FC36C
	mov r0, #1
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov01_021FC2C4
	str r0, [r4, #4]
	cmp r0, #0
	beq _021FC39C
	add r0, r5, #0
	bl ov01_021FC1EC
	b _021FC4B2
_021FC36C:
	mov r0, #7
	strh r0, [r4, #8]
	mov r0, #0x14
	strh r0, [r4, #0xa]
	b _021FC4B2
_021FC376:
	add r0, r5, #0
	bl ov01_021FC110
	str r0, [r4]
	mov r0, #2
	mov r1, #0
	strh r0, [r4, #8]
	bl sub_0201BB68
	mov r0, #4
	mov r1, #1
	bl GX_EngineAToggleLayers
	b _021FC4B2
_021FC392:
	ldr r0, [r4]
	bl ov01_021FC12C
	cmp r0, #0
	bne _021FC39E
_021FC39C:
	b _021FC4B2
_021FC39E:
	mov r0, #0x16
	strh r0, [r4, #0xa]
	mov r0, #3
	strh r0, [r4, #8]
	b _021FC4B2
_021FC3A8:
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl MapHeader_HasWildEncounters
	cmp r0, #0
	beq _021FC3F4
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _021FC4B2
	ldr r0, [r5, #0x40]
	bl sub_0205C67C
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl sub_0205C688
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02054918
	add r1, r0, #0
	add r0, r5, #0
	bl ov02_02247F9C
	cmp r0, #0
	beq _021FC3EE
	mov r0, #6
	strh r0, [r4, #8]
	b _021FC4B2
_021FC3EE:
	mov r0, #4
	strh r0, [r4, #8]
	b _021FC4B2
_021FC3F4:
	mov r0, #4
	strh r0, [r4, #8]
	b _021FC4B2
_021FC3FA:
	ldr r0, [r4]
	bl ov01_021FC124
	add r0, r5, #0
	bl ov01_021FC138
	str r0, [r4]
	mov r0, #5
	strh r0, [r4, #8]
	b _021FC4B2
_021FC40E:
	ldr r0, [r4]
	bl ov01_021FC12C
	cmp r0, #0
	beq _021FC4B2
	mov r0, #4
	mov r1, #0
	bl GX_EngineAToggleLayers
	ldr r0, _021FC4B8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #2
	mov r1, #3
	bl sub_0201BB68
	mov r0, #8
	strh r0, [r4, #8]
	b _021FC4B2
_021FC434:
	bl ov01_021FC2F0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021FC444
	add r0, r5, #0
	bl ov01_021FC260
_021FC444:
	add r0, r5, #0
	add r1, r6, #0
	bl ov02_02247170
	cmp r0, #0
	bne _021FC4B2
	bl GF_AssertFail
	b _021FC4B2
_021FC456:
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0xa]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _021FC4B2
	mov r2, #0
	ldr r1, _021FC4BC ; =0x000007E3
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203FED4
	mov r0, #9
	strh r0, [r4, #8]
	b _021FC4B2
_021FC476:
	mov r2, #0
	ldr r1, _021FC4C0 ; =0x000007E2
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203FED4
	mov r0, #9
	strh r0, [r4, #8]
	b _021FC4B2
_021FC488:
	bl ov01_021FC2F0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021FC498
	add r0, r5, #0
	bl ov01_021FC1FC
_021FC498:
	ldr r0, [r5, #8]
	mov r1, #2
	mov r2, #0
	bl sub_0201CB04
	mov r0, #4
	mov r1, #1
	bl GX_EngineAToggleLayers
	mov r0, #1
	pop {r4, r5, r6, pc}
_021FC4AE:
	bl GF_AssertFail
_021FC4B2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021FC4B8: .word 0x04000050
_021FC4BC: .word 0x000007E3
_021FC4C0: .word 0x000007E2
	thumb_func_end ov01_021FC310

	thumb_func_start ov01_021FC4C4
ov01_021FC4C4: ; 0x021FC4C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	lsl r2, r3, #3
	add r6, r5, r2
	add r6, #0x18
	str r2, [sp, #8]
	add r2, r6, #0
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #4]
	bl CreateHeap
	cmp r0, #1
	beq _021FC4E6
	bl GF_AssertFail
_021FC4E6:
	sub r5, r6, r5
	add r0, r7, #0
	add r1, r5, #0
	bl AllocFromHeap
	add r4, r0, #0
	bne _021FC4F8
	bl GF_AssertFail
_021FC4F8:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	ldr r0, [sp]
	str r0, [r4]
	ldr r0, [sp, #4]
	str r7, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x18
	str r0, [r4, #0x14]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC4C4

	thumb_func_start ov01_021FC520
ov01_021FC520: ; 0x021FC520
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	ldr r5, [r6, #0x14]
	cmp r4, #0
	beq _021FC542
_021FC52C:
	ldr r0, [r5]
	cmp r0, #0
	beq _021FC53A
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl ov01_021FC588
_021FC53A:
	sub r4, r4, #1
	add r5, #8
	cmp r4, #0
	bne _021FC52C
_021FC542:
	ldr r4, [r6, #4]
	add r0, r6, #0
	bl FreeToHeap
	add r0, r4, #0
	bl DestroyHeap
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC520

	thumb_func_start ov01_021FC554
ov01_021FC554: ; 0x021FC554
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov01_021FC644
	str r0, [sp]
	cmp r0, #0
	bne _021FC56C
	bl GF_AssertFail
_021FC56C:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov01_021FC5FC
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r5, #0
	bl ov01_021FC65C
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC554

	thumb_func_start ov01_021FC588
ov01_021FC588: ; 0x021FC588
	push {r4, lr}
	bl ov01_021FC624
	add r4, r0, #0
	bne _021FC596
	bl GF_AssertFail
_021FC596:
	ldr r0, [r4]
	bl ov01_021FC61C
	add r0, r4, #0
	bl ov01_021FC664
	pop {r4, pc}
	thumb_func_end ov01_021FC588

	thumb_func_start ov01_021FC5A4
ov01_021FC5A4: ; 0x021FC5A4
	push {r4, lr}
	bl ov01_021FC624
	add r4, r0, #0
	bne _021FC5B2
	bl GF_AssertFail
_021FC5B2:
	ldr r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC5A4

	thumb_func_start ov01_021FC5B8
ov01_021FC5B8: ; 0x021FC5B8
	push {r3, lr}
	bl ov01_021FC624
	cmp r0, #0
	beq _021FC5C6
	mov r0, #1
	pop {r3, pc}
_021FC5C6:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC5B8

	thumb_func_start ov01_021FC5CC
ov01_021FC5CC: ; 0x021FC5CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r3, #0
	add r6, r1, #0
	add r0, r4, #0
	add r1, r7, #0
	bl NARC_GetMemberSize
	add r2, r0, #0
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021FC554
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl NARC_ReadWholeMember
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC5CC

	thumb_func_start ov01_021FC5FC
ov01_021FC5FC: ; 0x021FC5FC
	push {r4, lr}
	cmp r2, #0
	ldr r0, [r0, #4]
	bne _021FC60A
	bl AllocFromHeap
	b _021FC60E
_021FC60A:
	bl AllocFromHeapAtEnd
_021FC60E:
	add r4, r0, #0
	cmp r4, #0
	bne _021FC618
	bl GF_AssertFail
_021FC618:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov01_021FC5FC

	thumb_func_start ov01_021FC61C
ov01_021FC61C: ; 0x021FC61C
	ldr r3, _021FC620 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021FC620: .word FreeToHeap
	thumb_func_end ov01_021FC61C

	thumb_func_start ov01_021FC624
ov01_021FC624: ; 0x021FC624
	ldr r3, [r0, #8]
	ldr r0, [r0, #0x14]
	cmp r3, #0
	beq _021FC63E
_021FC62C:
	ldr r2, [r0]
	cmp r2, #0
	beq _021FC638
	ldr r2, [r0, #4]
	cmp r2, r1
	beq _021FC640
_021FC638:
	add r0, #8
	sub r3, r3, #1
	bne _021FC62C
_021FC63E:
	mov r0, #0
_021FC640:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FC624

	thumb_func_start ov01_021FC644
ov01_021FC644: ; 0x021FC644
	ldr r2, [r0, #8]
	ldr r0, [r0, #0x14]
	cmp r2, #0
	beq _021FC658
_021FC64C:
	ldr r1, [r0]
	cmp r1, #0
	beq _021FC65A
	add r0, #8
	sub r2, r2, #1
	bne _021FC64C
_021FC658:
	mov r0, #0
_021FC65A:
	bx lr
	thumb_func_end ov01_021FC644

	thumb_func_start ov01_021FC65C
ov01_021FC65C: ; 0x021FC65C
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FC65C

	thumb_func_start ov01_021FC664
ov01_021FC664: ; 0x021FC664
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov01_021FC664

	thumb_func_start ov01_021FC66C
ov01_021FC66C: ; 0x021FC66C
	push {r3, r4, r5, lr}
	add r0, r1, #0
	mov r1, #0x18
	add r5, r2, #0
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021FC680:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021FC680
	add r0, r5, #0
	str r5, [r4, #0xc]
	bl ov01_021FCC00
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC66C

	thumb_func_start ov01_021FC698
ov01_021FC698: ; 0x021FC698
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0205064C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050650
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021FC6B6
	cmp r0, #1
	beq _021FC6E2
	b _021FC742
_021FC6B6:
	ldr r0, [r4, #0x3c]
	bl sub_0205F574
	mov r0, #0
	str r0, [r5, #0x10]
	add r2, r5, #0
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	add r2, #0x10
	bl ov02_02246F70
	str r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	bl ov01_021FC748
	str r0, [r5, #0x14]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021FC742
_021FC6E2:
	ldr r0, [r5, #0x14]
	bl ov01_021FC76C
	cmp r0, #1
	bne _021FC742
	ldr r0, [r5, #0x14]
	bl ov01_021FC778
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	bl ov01_021FC784
	cmp r7, #1
	bne _021FC728
	add r0, r4, #0
	bl sub_02092DEC
	bl sub_02092FA8
	ldr r0, [r4, #0xc]
	bl Sav2_GameStats_get
	mov r1, #0xb
	bl GameStats_Inc
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02050B90
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FC728:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021FC732
	bl sub_02051BF8
_021FC732:
	ldr r0, [r4, #0x3c]
	bl sub_0205F5A4
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FC742:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC698

	thumb_func_start ov01_021FC748
ov01_021FC748: ; 0x021FC748
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4c
	add r4, r1, #0
	add r6, r2, #0
	bl ov01_021FCAC4
	add r1, r0, #0
	str r5, [r1, #0x20]
	str r4, [r1, #0x1c]
	ldr r0, _021FC768 ; =ov01_021FC798
	mov r2, #0x80
	str r6, [r1]
	bl sub_0200E320
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FC768: .word ov01_021FC798
	thumb_func_end ov01_021FC748

	thumb_func_start ov01_021FC76C
ov01_021FC76C: ; 0x021FC76C
	push {r3, lr}
	bl sub_0201F988
	ldr r0, [r0, #4]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC76C

	thumb_func_start ov01_021FC778
ov01_021FC778: ; 0x021FC778
	push {r3, lr}
	bl sub_0201F988
	ldr r0, [r0, #8]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC778

	thumb_func_start ov01_021FC784
ov01_021FC784: ; 0x021FC784
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201F988
	bl FreeToHeap
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end ov01_021FC784

	thumb_func_start ov01_021FC798
ov01_021FC798: ; 0x021FC798
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x20]
	ldr r6, [r0, #0x40]
	add r0, r6, #0
	bl sub_0205C6DC
	ldr r7, _021FC7C0 ; =0x02208DC4
	add r4, r0, #0
_021FC7AA:
	ldr r3, [r5, #0xc]
	add r0, r5, #0
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	add r1, r6, #0
	add r2, r4, #0
	blx r3
	cmp r0, #0
	bne _021FC7AA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FC7C0: .word 0x02208DC4
	thumb_func_end ov01_021FC798

	thumb_func_start ov01_021FC7C4
ov01_021FC7C4: ; 0x021FC7C4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	bl ov01_021FCB14
	add r0, r4, #0
	bl sub_0205F708
	mov r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC7C4

	thumb_func_start ov01_021FC7DC
ov01_021FC7DC: ; 0x021FC7DC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02062108
	cmp r0, #1
	bne _021FC80E
	add r0, r6, #0
	bl sub_020621C0
	add r0, r4, #0
	mov r1, #0x20
	bl ov01_021F1AFC
	add r0, r4, #0
	bl ov01_021F1B04
	add r0, r6, #0
	mov r1, #1
	bl sub_0205F328
	mov r0, #2
	str r0, [r5, #0xc]
_021FC80E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC7DC

	thumb_func_start ov01_021FC814
ov01_021FC814: ; 0x021FC814
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0xa
	bne _021FC828
	ldr r0, _021FC848 ; =0x0000064F
	bl PlaySE
_021FC828:
	ldr r0, [r4, #0x10]
	cmp r0, #0x22
	bge _021FC832
	mov r0, #0
	pop {r4, pc}
_021FC832:
	ldr r0, [r4]
	cmp r0, #1
	bne _021FC83C
	mov r0, #3
	b _021FC83E
_021FC83C:
	mov r0, #0xc
_021FC83E:
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021FC848: .word 0x0000064F
	thumb_func_end ov01_021FC814

	thumb_func_start ov01_021FC84C
ov01_021FC84C: ; 0x021FC84C
	push {r4, lr}
	add r4, r0, #0
	bl LCRandom
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1e
	sub r0, r0, r1
	mov r2, #0x1e
	ror r0, r2
	add r0, r1, r0
	add r0, r0, #1
	add r1, r0, #0
	mul r1, r2
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	lsl r1, r0, #2
	ldr r0, _021FC888 ; =0x02208D7C
	ldr r0, [r0, r1]
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov01_021FCCB0
	ldr r1, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x18]
	mov r0, #4
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	nop
_021FC888: .word 0x02208D7C
	thumb_func_end ov01_021FC84C

	thumb_func_start ov01_021FC88C
ov01_021FC88C: ; 0x021FC88C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r2, #0
	sub r0, r0, #1
	str r0, [r5, #0x14]
	bl ov01_021FCAE8
	cmp r0, #1
	bne _021FC8A8
	mov r0, #0xa
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FC8A8:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _021FC8B2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021FC8B2:
	add r0, r4, #0
	mov r1, #2
	bl sub_0205F328
	add r0, r5, #0
	bl ov01_021FCC2C
	cmp r0, #0
	beq _021FC8D4
	ldr r0, [r5, #0x20]
	bl sub_02069D68
	mov r1, #0
	mov r2, #1
	bl ov01_02200540
	b _021FC8DE
_021FC8D4:
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov01_02200540
_021FC8DE:
	str r0, [r5, #0x24]
	mov r0, #5
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FC88C

	thumb_func_start ov01_021FC8E8
ov01_021FC8E8: ; 0x021FC8E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bl ov01_021FCAE8
	cmp r0, #1
	bne _021FC902
	mov r0, #6
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
_021FC902:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _021FC90C
	mov r0, #0
	pop {r4, pc}
_021FC90C:
	mov r0, #0xb
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021FC8E8

	thumb_func_start ov01_021FC914
ov01_021FC914: ; 0x021FC914
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r5, r2, #0
	bl ov01_02200400
	add r0, r5, #0
	mov r1, #3
	bl sub_0205F328
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #7
	str r1, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC914

	thumb_func_start ov01_021FC934
ov01_021FC934: ; 0x021FC934
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021FC94C
	bl sub_02068B48
	mov r0, #0
	str r0, [r4, #0x24]
_021FC94C:
	ldr r0, [r4, #0x10]
	cmp r0, #0xf
	ble _021FC962
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #8
	str r0, [r4, #0xc]
	add r0, r4, #0
	mov r1, #0x34
	bl ov01_021FCB90
_021FC962:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC934

	thumb_func_start ov01_021FC968
ov01_021FC968: ; 0x021FC968
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FCBCC
	cmp r0, #0
	bne _021FC978
	mov r0, #0
	pop {r4, pc}
_021FC978:
	mov r0, #9
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov01_021FC968

	thumb_func_start ov01_021FC980
ov01_021FC980: ; 0x021FC980
	mov r2, #1
	str r2, [r0, #8]
	mov r1, #0xf
	str r1, [r0, #0xc]
	add r0, r2, #0
	bx lr
	thumb_func_end ov01_021FC980

	thumb_func_start ov01_021FC98C
ov01_021FC98C: ; 0x021FC98C
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r1, #0
	bl sub_0205F328
	add r0, r4, #0
	mov r1, #0x33
	bl ov01_021FCB90
	mov r0, #0x10
	str r0, [r4, #0x10]
	mov r0, #0xe
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov01_021FC98C

	thumb_func_start ov01_021FC9AC
ov01_021FC9AC: ; 0x021FC9AC
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r1, #0
	bl sub_0205F328
	add r0, r4, #0
	mov r1, #0x32
	bl ov01_021FCB90
	mov r0, #0x10
	str r0, [r4, #0x10]
	mov r0, #0xe
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0xc]
	bl Sav2_GameStats_get
	mov r1, #0x65
	bl GameStats_Inc
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC9AC

	thumb_func_start ov01_021FC9DC
ov01_021FC9DC: ; 0x021FC9DC
	mov r1, #0x78
	str r1, [r0, #0x10]
	mov r1, #0xd
	str r1, [r0, #0xc]
	mov r0, #1
	bx lr
	thumb_func_end ov01_021FC9DC

	thumb_func_start ov01_021FC9E8
ov01_021FC9E8: ; 0x021FC9E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r2, #0
	sub r0, r0, #1
	str r0, [r5, #0x10]
	bl ov01_021FCAE8
	cmp r0, #1
	bne _021FCA04
	mov r0, #0xa
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FCA04:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021FCA0E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021FCA0E:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205F328
	add r0, r5, #0
	mov r1, #0x31
	bl ov01_021FCB90
	mov r0, #0x10
	str r0, [r5, #0x10]
	mov r0, #0xe
	str r0, [r5, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FC9E8

	thumb_func_start ov01_021FCA2C
ov01_021FCA2C: ; 0x021FCA2C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	add r1, r1, #1
	str r1, [r4, #0x10]
	cmp r1, #0x10
	bge _021FCA3E
	mov r0, #0
	pop {r4, pc}
_021FCA3E:
	mov r1, #0x10
	str r1, [r4, #0x10]
	bl ov01_021FCBCC
	cmp r0, #0
	bne _021FCA4E
	mov r0, #0
	pop {r4, pc}
_021FCA4E:
	mov r0, #0xf
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCA2C

	thumb_func_start ov01_021FCA58
ov01_021FCA58: ; 0x021FCA58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r5, r1, #0
	cmp r0, #0
	beq _021FCA68
	bl ov01_02200400
_021FCA68:
	add r0, r4, #0
	bl ov01_021FCB4C
	add r0, r5, #0
	bl sub_0205C700
	bl sub_0205C99C
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021F1AFC
	add r0, r5, #0
	bl ov01_021F1B04
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCA58

	thumb_func_start ov01_021FCA94
ov01_021FCA94: ; 0x021FCA94
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	cmp r1, #2
	ble _021FCAA2
	mov r1, #0x11
	str r1, [r0, #0xc]
_021FCAA2:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FCA94

	thumb_func_start ov01_021FCAA8
ov01_021FCAA8: ; 0x021FCAA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021FCABA
	bl sub_02068B48
	mov r0, #0
	str r0, [r4, #0x24]
_021FCABA:
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCAA8

	thumb_func_start ov01_021FCAC4
ov01_021FCAC4: ; 0x021FCAC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	bne _021FCAD8
	bl GF_AssertFail
_021FCAD8:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCAC4

	thumb_func_start ov01_021FCAE8
ov01_021FCAE8: ; 0x021FCAE8
	ldr r0, _021FCAF8 ; =gMain
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	bne _021FCAF4
	mov r0, #0
_021FCAF4:
	bx lr
	nop
_021FCAF8: .word gMain
	thumb_func_end ov01_021FCAE8

	thumb_func_start ov01_021FCAFC
ov01_021FCAFC: ; 0x021FCAFC
	ldr r0, _021FCB10 ; =gMain
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021FCB0A
	mov r0, #1
	bx lr
_021FCB0A:
	mov r0, #0
	bx lr
	nop
_021FCB10: .word gMain
	thumb_func_end ov01_021FCAFC

	thumb_func_start ov01_021FCB14
ov01_021FCB14: ; 0x021FCB14
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x28
	mov r3, #4
	bl NewMsgDataFromNarc
	str r0, [r4, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #4
	bl String_ctor
	str r0, [r4, #0x2c]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #4
	bl String_ctor
	str r0, [r4, #0x30]
	mov r0, #8
	mov r1, #0x40
	mov r2, #4
	bl ScrStrBufs_new_custom
	str r0, [r4, #0x34]
	pop {r4, pc}
	thumb_func_end ov01_021FCB14

	thumb_func_start ov01_021FCB4C
ov01_021FCB4C: ; 0x021FCB4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ScrStrBufs_delete
	ldr r0, [r4, #0x2c]
	bl String_dtor
	ldr r0, [r4, #0x30]
	bl String_dtor
	ldr r0, [r4, #0x48]
	bl DestroyMsgData
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCB4C

	thumb_func_start ov01_021FCB6C
ov01_021FCB6C: ; 0x021FCB6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x20]
	add r1, r5, #0
	ldr r0, [r4, #8]
	add r1, #0x38
	mov r2, #3
	bl sub_0205B514
	ldr r0, [r4, #0xc]
	bl Sav2_PlayerData_GetOptionsAddr
	add r5, #0x38
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205B564
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FCB6C

	thumb_func_start ov01_021FCB90
ov01_021FCB90: ; 0x021FCB90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021FCB6C
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0x30]
	add r1, r6, #0
	ldr r4, [r5, #0x20]
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	bl StringExpandPlaceholders
	ldr r0, [r4, #0xc]
	bl Sav2_PlayerData_GetOptionsAddr
	add r2, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x38
	mov r3, #1
	bl sub_0205B5B4
	add r5, #0x28
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCB90

	thumb_func_start ov01_021FCBCC
ov01_021FCBCC: ; 0x021FCBCC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x28
	ldrb r0, [r0]
	bl sub_0205B624
	cmp r0, #1
	bne _021FCBFA
	bl ov01_021FCAFC
	cmp r0, #1
	bne _021FCBFA
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl ClearFrameAndWindow2
	add r4, #0x38
	add r0, r4, #0
	bl RemoveWindow
	mov r0, #1
	pop {r4, pc}
_021FCBFA:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCBCC

	thumb_func_start ov01_021FCC00
ov01_021FCC00: ; 0x021FCC00
	push {r3, lr}
	cmp r0, #0
	beq _021FCC12
	cmp r0, #1
	beq _021FCC16
	cmp r0, #2
	beq _021FCC1A
	bl GF_AssertFail
_021FCC12:
	ldr r0, _021FCC20 ; =0x000001BD
	pop {r3, pc}
_021FCC16:
	ldr r0, _021FCC24 ; =0x000001BE
	pop {r3, pc}
_021FCC1A:
	ldr r0, _021FCC28 ; =0x000001BF
	pop {r3, pc}
	nop
_021FCC20: .word 0x000001BD
_021FCC24: .word 0x000001BE
_021FCC28: .word 0x000001BF
	thumb_func_end ov01_021FCC00

	thumb_func_start ov01_021FCC2C
ov01_021FCC2C: ; 0x021FCC2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0x40]
	bl sub_0205C700
	cmp r0, #2
	bne _021FCC40
	mov r0, #0
	pop {r4, pc}
_021FCC40:
	ldr r0, [r4, #0x20]
	bl sub_02069F88
	cmp r0, #0
	beq _021FCC6E
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0xc]
	bl SavArray_PlayerParty_get
	bl GetFirstAliveMonInParty_CrashIfNone
	mov r1, #9
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov01_021FCC74
	cmp r0, #0
	beq _021FCC6E
	mov r0, #1
	pop {r4, pc}
_021FCC6E:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCC2C

	thumb_func_start ov01_021FCC74
ov01_021FCC74: ; 0x021FCC74
	push {r4, lr}
	cmp r0, #0x63
	bhi _021FCC7E
	mov r0, #0
	pop {r4, pc}
_021FCC7E:
	cmp r0, #0x95
	bhi _021FCC86
	mov r4, #0x14
	b _021FCC98
_021FCC86:
	cmp r0, #0xc7
	bhi _021FCC8E
	mov r4, #0x1e
	b _021FCC98
_021FCC8E:
	cmp r0, #0xf9
	bhi _021FCC96
	mov r4, #0x28
	b _021FCC98
_021FCC96:
	mov r4, #0x32
_021FCC98:
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r4
	bge _021FCCAA
	mov r0, #1
	pop {r4, pc}
_021FCCAA:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCC74

	thumb_func_start ov01_021FCCB0
ov01_021FCCB0: ; 0x021FCCB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02069F88
	cmp r0, #0
	beq _021FCD24
	mov r0, #0x42
	ldr r1, [r4, #0x20]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0206A268
	mov r1, #9
	mvn r1, r1
	cmp r0, r1
	bgt _021FCCD6
	mov r3, #0
	b _021FCCFE
_021FCCD6:
	add r1, r1, #1
	cmp r0, r1
	blt _021FCCE4
	cmp r0, #9
	bgt _021FCCE4
	mov r3, #1
	b _021FCCFE
_021FCCE4:
	cmp r0, #0xa
	blt _021FCCF0
	cmp r0, #0x32
	bge _021FCCF0
	mov r3, #2
	b _021FCCFE
_021FCCF0:
	cmp r0, #0x32
	blt _021FCCFC
	cmp r0, #0x64
	bge _021FCCFC
	mov r3, #3
	b _021FCCFE
_021FCCFC:
	mov r3, #4
_021FCCFE:
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #2
	bls _021FCD10
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
_021FCD10:
	mov r0, #0xc
	add r2, r3, #0
	mul r2, r0
	ldr r0, _021FCD28 ; =0x02208D88
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
_021FCD24:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021FCD28: .word 0x02208D88
	thumb_func_end ov01_021FCCB0

	thumb_func_start ov01_021FCD2C
ov01_021FCD2C: ; 0x021FCD2C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x34
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x34
	bl memset
	str r6, [r4]
	mov r0, #0
	str r0, [r4, #0xc]
	str r5, [r4, #0x2c]
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x30]
	bl sub_02023614
	str r0, [r4, #0x10]
	str r0, [r4, #0x20]
	ldr r0, _021FCD64 ; =ov01_021FCDA8
	ldr r2, _021FCD68 ; =0x0000FFFF
	add r1, r4, #0
	bl sub_0200E320
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FCD64: .word ov01_021FCDA8
_021FCD68: .word 0x0000FFFF
	thumb_func_end ov01_021FCD2C

	thumb_func_start ov01_021FCD6C
ov01_021FCD6C: ; 0x021FCD6C
	push {r3, lr}
	bl sub_0201F988
	ldr r0, [r0, #8]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCD6C

	thumb_func_start ov01_021FCD78
ov01_021FCD78: ; 0x021FCD78
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201F988
	bl FreeToHeap
	add r0, r4, #0
	bl sub_0200E390
	pop {r4, pc}
	thumb_func_end ov01_021FCD78

	thumb_func_start ov01_021FCD8C
ov01_021FCD8C: ; 0x021FCD8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201F988
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r5, [r0, #0xc]
	str r4, [r0, #0x14]
	str r6, [r0, #0x1c]
	str r1, [r0, #0x24]
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FCD8C

	thumb_func_start ov01_021FCDA8
ov01_021FCDA8: ; 0x021FCDA8
	push {r3, lr}
	add r0, r1, #0
	ldr r1, [r1, #0xc]
	lsl r2, r1, #2
	ldr r1, _021FCDB8 ; =0x02208E0C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4, 0
_021FCDB8: .word 0x02208E0C
	thumb_func_end ov01_021FCDA8

	thumb_func_start ov01_021FCDBC
ov01_021FCDBC: ; 0x021FCDBC
	mov r1, #1
	str r1, [r0, #8]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FCDBC

	thumb_func_start ov01_021FCDC4
ov01_021FCDC4: ; 0x021FCDC4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021FCDD4
	cmp r1, #1
	beq _021FCDDE
	pop {r4, pc}
_021FCDD4:
	bl ov01_021FCE44
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021FCDDE:
	add r0, r4, #0
	bl ov01_021FCE74
	cmp r0, #1
	bne _021FCDF2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
_021FCDF2:
	add r0, r4, #0
	bl ov01_021FCE34
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCDC4

	thumb_func_start ov01_021FCDFC
ov01_021FCDFC: ; 0x021FCDFC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021FCE0C
	cmp r1, #1
	beq _021FCE16
	pop {r4, pc}
_021FCE0C:
	bl ov01_021FCE5C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021FCE16:
	add r0, r4, #0
	bl ov01_021FCE74
	cmp r0, #1
	bne _021FCE2A
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
_021FCE2A:
	add r0, r4, #0
	bl ov01_021FCE34
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FCDFC

	thumb_func_start ov01_021FCE34
ov01_021FCE34: ; 0x021FCE34
	ldr r3, _021FCE40 ; =sub_020235D4
	add r1, r0, #0
	ldr r0, [r1, #0x20]
	ldr r1, [r1, #0x30]
	bx r3
	nop
_021FCE40: .word sub_020235D4
	thumb_func_end ov01_021FCE34

	thumb_func_start ov01_021FCE44
ov01_021FCE44: ; 0x021FCE44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	bl _s32_div_f
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov01_021FCE44

	thumb_func_start ov01_021FCE5C
ov01_021FCE5C: ; 0x021FCE5C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x20]
	sub r0, r1, r0
	ldr r1, [r4, #0x1c]
	bl _s32_div_f
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov01_021FCE5C

	thumb_func_start ov01_021FCE74
ov01_021FCE74: ; 0x021FCE74
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x28]
	add r1, r2, r1
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x24]
	add r2, r1, #1
	str r2, [r0, #0x24]
	ldr r1, [r0, #0x1c]
	cmp r2, r1
	blo _021FCE92
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x18]
	str r1, [r0, #0x20]
	mov r0, #1
	bx lr
_021FCE92:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FCE74

	thumb_func_start ov01_021FCE98
ov01_021FCE98: ; 0x021FCE98
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0205064C
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02050650
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_02050654
	add r4, r0, #0
	ldr r0, [r4]
	ldr r5, [r7, #4]
	cmp r0, #7
	bls _021FCEBC
	b _021FCFDE
_021FCEBC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FCEC8: ; jump table
	.short _021FCED8 - _021FCEC8 - 2 ; case 0
	.short _021FCEF4 - _021FCEC8 - 2 ; case 1
	.short _021FCF4E - _021FCEC8 - 2 ; case 2
	.short _021FCF6A - _021FCEC8 - 2 ; case 3
	.short _021FCF80 - _021FCEC8 - 2 ; case 4
	.short _021FCFAE - _021FCEC8 - 2 ; case 5
	.short _021FCFBC - _021FCEC8 - 2 ; case 6
	.short _021FCFCE - _021FCEC8 - 2 ; case 7
_021FCED8:
	ldr r6, [r5]
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #0xb
	mov r1, #0xc
	bl AllocFromHeapAtEnd
	str r0, [r7, #4]
	str r6, [r0, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCEF4:
	bl ov01_021FC30C
	add r7, r0, #0
	mov r0, #0xb
	add r1, r7, #0
	bl AllocFromHeapAtEnd
	str r0, [r5, #4]
	mov r1, #0
	add r2, r7, #0
	bl memset
	ldr r0, [r6, #0x40]
	bl sub_0205C700
	sub r0, r0, #1
	cmp r0, #1
	bhi _021FCF20
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCF20:
	add r0, r6, #0
	bl ov01_022062CC
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021FCF46
	add r0, r6, #0
	bl sub_02069FB0
	cmp r0, #0
	beq _021FCF46
	ldr r0, [sp]
	ldr r1, _021FCFE4 ; =ov01_02205A60
	mov r2, #0
	bl sub_02050530
	mov r0, #4
	str r0, [r4]
	b _021FCFDE
_021FCF46:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCF4E:
	ldr r0, [r6, #0x40]
	bl sub_0205C724
	add r3, r0, #0
	ldr r2, [r7]
	add r0, r6, #0
	mov r1, #0
	bl ov02_02249458
	str r0, [r5]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCF6A:
	ldr r0, [r5]
	bl ov02_0224953C
	cmp r0, #0
	beq _021FCFDE
	ldr r0, [r5]
	bl ov02_02249548
	mov r0, #6
	str r0, [r4]
	b _021FCFDE
_021FCF80:
	add r0, r6, #0
	mov r1, #0xc
	bl ov02_02250780
	cmp r0, #0
	beq _021FCF9C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	mov r5, #2
	bl sub_0206A1F4
	b _021FCF9E
_021FCF9C:
	mov r5, #1
_021FCF9E:
	add r0, r6, #0
	add r1, r5, #0
	bl ov02_022507B4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCFAE:
	add r0, r6, #0
	bl ov01_021FCFEC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCFBC:
	ldr r0, [sp]
	ldr r1, _021FCFE8 ; =ov01_021FC310
	ldr r2, [r5, #4]
	bl sub_02050530
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021FCFDE
_021FCFCE:
	add r0, r5, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FCFDE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FCFE4: .word ov01_02205A60
_021FCFE8: .word ov01_021FC310
	thumb_func_end ov01_021FCE98

	thumb_func_start ov01_021FCFEC
ov01_021FCFEC: ; 0x021FCFEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0xd4
	bl AllocFromHeapAtEnd
	add r4, r0, #0
	mov r0, #4
	add r1, r5, #0
	add r2, r4, #0
	bl ov01_021FD064
	ldr r0, [r5, #0x10]
	ldr r1, _021FD010 ; =ov01_021FD014
	add r2, r4, #0
	bl sub_02050530
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FD010: .word ov01_021FD014
	thumb_func_end ov01_021FCFEC

	thumb_func_start ov01_021FD014
ov01_021FD014: ; 0x021FD014
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050650
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050654
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FD032
	cmp r0, #1
	beq _021FD050
	b _021FD060
_021FD032:
	add r0, r5, #0
	add r0, #0x20
	mov r1, #3
	bl ov01_021FD154
	cmp r0, #0
	beq _021FD046
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021FD046:
	add r5, #0x5c
	add r0, r5, #0
	bl ov01_021FBF68
	b _021FD060
_021FD050:
	add r0, r5, #0
	bl ov01_021FD128
	add r0, r5, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, pc}
_021FD060:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD014

	thumb_func_start ov01_021FD064
ov01_021FD064: ; 0x021FD064
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x20
	bl GF_ExpHeap_FndInitAllocator
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0x86
	mov r2, #0x17
	add r3, r5, #0
	bl ov01_021FBCD8
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x20
	add r1, #0x10
	mov r2, #0x86
	mov r3, #0x15
	str r4, [sp, #4]
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x34
	add r1, #0x10
	mov r2, #0x86
	mov r3, #0x16
	str r4, [sp, #4]
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	str r5, [sp]
	add r0, #0x48
	add r1, #0x10
	mov r2, #0x86
	mov r3, #0x14
	str r4, [sp, #4]
	bl ov01_021FBE44
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x10
	bl ov01_021FBF2C
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x20
	bl ov01_021FBF50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x34
	bl ov01_021FBF50
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x48
	bl ov01_021FBF50
	add r0, r4, #0
	add r0, #0x20
	mov r1, #3
	mov r2, #0
	bl ov01_021FD190
	add r0, r6, #0
	bl sub_02069D68
	add r1, sp, #8
	bl sub_0205F944
	add r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, #0x5c
	bl ov01_021FC00C
	add r4, #0x5c
	add r0, r4, #0
	mov r1, #1
	bl ov01_021FC004
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD064

	thumb_func_start ov01_021FD128
ov01_021FD128: ; 0x021FD128
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x48
	bl ov01_021FBE80
	add r0, r4, #0
	add r0, #0x34
	add r1, r4, #0
	bl ov01_021FBE80
	add r0, r4, #0
	add r0, #0x20
	add r1, r4, #0
	bl ov01_021FBE80
	add r4, #0x10
	add r0, r4, #0
	bl ov01_021FBDA8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD128

	thumb_func_start ov01_021FD154
ov01_021FD154: ; 0x021FD154
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r6, r1, #0
	add r7, r0, #0
	add r4, r5, #0
	cmp r6, #0
	bls _021FD184
_021FD162:
	mov r0, #0x14
	mul r0, r4
	mov r1, #1
	add r0, r7, r0
	lsl r1, r1, #0xc
	bl ov01_021FBEE4
	cmp r0, #0
	beq _021FD17A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_021FD17A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _021FD162
_021FD184:
	cmp r5, r6
	bne _021FD18C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021FD18C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FD154

	thumb_func_start ov01_021FD190
ov01_021FD190: ; 0x021FD190
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	mov r4, #0
	cmp r5, #0
	bls _021FD1B4
_021FD19E:
	mov r0, #0x14
	mul r0, r4
	add r0, r6, r0
	add r1, r7, #0
	bl ov01_021FBF20
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r5
	blo _021FD19E
_021FD1B4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD190

	thumb_func_start ov01_021FD1B8
ov01_021FD1B8: ; 0x021FD1B8
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD1B8

	thumb_func_start ov01_021FD1CC
ov01_021FD1CC: ; 0x021FD1CC
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FD21C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021FD1DE
	bl ov01_021F1448
_021FD1DE:
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD1CC

	thumb_func_start ov01_021FD1E8
ov01_021FD1E8: ; 0x021FD1E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	str r1, [r5]
	mov r2, #0
	add r0, r3, #0
	add r1, r5, #4
	add r3, r4, #0
	str r2, [sp]
	bl ov01_021F19F4
	add r0, r5, #0
	add r0, #0x18
	add r1, r5, #4
	bl sub_02069978
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD1E8

	thumb_func_start ov01_021FD20C
ov01_021FD20C: ; 0x021FD20C
	ldr r1, _021FD214 ; =0x0000FFFF
	ldr r3, _021FD218 ; =sub_02069784
	stmia r0!, {r1}
	bx r3
	.balign 4, 0
_021FD214: .word 0x0000FFFF
_021FD218: .word sub_02069784
	thumb_func_end ov01_021FD20C

	thumb_func_start ov01_021FD21C
ov01_021FD21C: ; 0x021FD21C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #4]
	mov r4, #0
	ldr r5, [r0, #8]
	cmp r6, #0
	bls _021FD23E
	ldr r7, _021FD240 ; =0x0000FFFF
_021FD22A:
	ldr r0, [r5]
	cmp r0, r7
	beq _021FD236
	add r0, r5, #0
	bl ov01_021FD20C
_021FD236:
	add r4, r4, #1
	add r5, #0x6c
	cmp r4, r6
	blo _021FD22A
_021FD23E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD240: .word 0x0000FFFF
	thumb_func_end ov01_021FD21C

	thumb_func_start ov01_021FD244
ov01_021FD244: ; 0x021FD244
	ldr r3, [r0, #4]
	ldr r0, [r0, #8]
_021FD248:
	ldr r2, [r0]
	cmp r2, r1
	beq _021FD256
	add r0, #0x6c
	sub r3, r3, #1
	bne _021FD248
	mov r0, #0
_021FD256:
	bx lr
	thumb_func_end ov01_021FD244

	thumb_func_start ov01_021FD258
ov01_021FD258: ; 0x021FD258
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x14
	add r6, r0, #0
	bl ov01_021F1450
	add r4, r0, #0
	cmp r5, #0
	bne _021FD26E
	bl GF_AssertFail
_021FD26E:
	mov r1, #0x6c
	mov r2, #0
	add r0, r6, #0
	mul r1, r5
	add r3, r2, #0
	str r5, [r4, #4]
	bl ov01_021F1430
	ldr r1, _021FD28C ; =0x0000FFFF
	str r0, [r4, #8]
_021FD282:
	str r1, [r0]
	add r0, #0x6c
	sub r5, r5, #1
	bne _021FD282
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD28C: .word 0x0000FFFF
	thumb_func_end ov01_021FD258

	thumb_func_start ov01_021FD290
ov01_021FD290: ; 0x021FD290
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x14
	add r5, r0, #0
	add r6, r2, #0
	bl ov01_021F1450
	add r1, r4, #0
	add r7, r0, #0
	bl ov01_021FD244
	cmp r0, #0
	bne _021FD2C6
	ldr r1, _021FD2C8 ; =0x0000FFFF
	add r0, r7, #0
	bl ov01_021FD244
	cmp r0, #0
	bne _021FD2BC
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021FD2BC:
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov01_021FD1E8
_021FD2C6:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD2C8: .word 0x0000FFFF
	thumb_func_end ov01_021FD290

	thumb_func_start ov01_021FD2CC
ov01_021FD2CC: ; 0x021FD2CC
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x14
	bl ov01_021F1450
	add r1, r4, #0
	bl ov01_021FD244
	add r4, r0, #0
	bne _021FD2E4
	bl GF_AssertFail
_021FD2E4:
	add r4, #0x18
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD2CC

	thumb_func_start ov01_021FD2EC
ov01_021FD2EC: ; 0x021FD2EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F25C
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD324 ; =0x02208E1C
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FD324: .word 0x02208E1C
	thumb_func_end ov01_021FD2EC

	thumb_func_start ov01_021FD328
ov01_021FD328: ; 0x021FD328
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x24]
	bl sub_0205F24C
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov01_021FD2CC
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	bl sub_0205F7D4
	cmp r0, #1
	ldr r0, [r4, #0x24]
	bne _021FD364
	bl sub_0205F544
	b _021FD368
_021FD364:
	bl sub_0205F254
_021FD368:
	str r0, [r4, #8]
	add r4, #0xc
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02068DB8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD328

	thumb_func_start ov01_021FD378
ov01_021FD378: ; 0x021FD378
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD378

	thumb_func_start ov01_021FD37C
ov01_021FD37C: ; 0x021FD37C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x24]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _021FD39E
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021FD39E:
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_0205F944
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0205F96C
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x10]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DA8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD37C

	thumb_func_start ov01_021FD3E0
ov01_021FD3E0: ; 0x021FD3E0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_020699BC
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FD3E0

	thumb_func_start ov01_021FD3F8
ov01_021FD3F8: ; 0x021FD3F8
	push {r4, r5, r6, lr}
	mov r5, #0xc
	add r1, r5, #0
	add r6, r0, #0
	ldr r4, _021FD418 ; =0x02208E30
	bl ov01_021FD258
_021FD406:
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl ov01_021FD290
	add r4, #8
	sub r5, r5, #1
	bne _021FD406
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD418: .word 0x02208E30
	thumb_func_end ov01_021FD3F8

	thumb_func_start ov01_021FD41C
ov01_021FD41C: ; 0x021FD41C
	push {r3, r4, r5, lr}
	mov r1, #0x72
	mov r2, #0
	lsl r1, r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4, #0x20]
	bl ov01_021FD5CC
	add r0, r4, #0
	bl ov01_021FD458
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD41C

	thumb_func_start ov01_021FD440
ov01_021FD440: ; 0x021FD440
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FD47C
	add r0, r4, #0
	bl ov01_021FD60C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD440

	thumb_func_start ov01_021FD458
ov01_021FD458: ; 0x021FD458
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_021F1468
	ldr r0, [r0, #0x3c]
	bl sub_0205F19C
	sub r2, r0, #1
	ldr r0, _021FD478 ; =ov01_021FD4F4
	add r1, r4, #0
	bl sub_0200E320
	str r0, [r4, #0x24]
	pop {r4, pc}
	nop
_021FD478: .word ov01_021FD4F4
	thumb_func_end ov01_021FD458

	thumb_func_start ov01_021FD47C
ov01_021FD47C: ; 0x021FD47C
	ldr r3, _021FD484 ; =sub_0200E390
	ldr r0, [r0, #0x24]
	bx r3
	nop
_021FD484: .word sub_0200E390
	thumb_func_end ov01_021FD47C

	thumb_func_start ov01_021FD488
ov01_021FD488: ; 0x021FD488
	add r2, r0, #0
	add r2, #0x14
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end ov01_021FD488

	thumb_func_start ov01_021FD498
ov01_021FD498: ; 0x021FD498
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD498

	thumb_func_start ov01_021FD4A4
ov01_021FD4A4: ; 0x021FD4A4
	ldr r1, [r0, #4]
	lsl r2, r1, #2
	ldr r1, _021FD4C8 ; =0x02208EB4
	ldr r1, [r1, r2]
	str r1, [r0, #0x10]
	ldr r2, [r0, #4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021FD4CC ; =0x02208F38
	add r2, r0, #0
	add r3, r1, r3
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	.balign 4, 0
_021FD4C8: .word 0x02208EB4
_021FD4CC: .word 0x02208F38
	thumb_func_end ov01_021FD4A4

	thumb_func_start ov01_021FD4D0
ov01_021FD4D0: ; 0x021FD4D0
	ldr r3, [r0]
	cmp r3, r1
	bge _021FD4E2
	add r2, r3, r2
	str r2, [r0]
	cmp r2, r1
	ble _021FD4F0
	str r1, [r0]
	bx lr
_021FD4E2:
	cmp r3, r1
	ble _021FD4F0
	sub r2, r3, r2
	str r2, [r0]
	cmp r2, r1
	bge _021FD4F0
	str r1, [r0]
_021FD4F0:
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD4D0

	thumb_func_start ov01_021FD4F4
ov01_021FD4F4: ; 0x021FD4F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	bl GF_RTC_GetTimeOfDay
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021FD512
	cmp r1, #1
	beq _021FD534
	cmp r1, #2
	beq _021FD53E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021FD512:
	str r4, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FD4A4
	ldr r0, [r5, #0x10]
	bl ov01_021FD498
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021FD624
	ldr r0, [r5]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FD534:
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _021FD5C0
	add r0, r1, #1
	str r0, [r5]
_021FD53E:
	ldr r0, _021FD5C4 ; =0x02208EB4
	lsl r1, r4, #2
	ldr r6, [r0, r1]
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021FD5C8 ; =0x02208F38
	add r2, sp, #4
	add r3, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	ldr r1, [sp, #4]
	add r0, #0x14
	mov r2, #0x10
	bl ov01_021FD4D0
	ldr r0, [sp, #8]
	mov r2, #0x10
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [sp]
	add r0, #0x18
	bl ov01_021FD4D0
	ldr r7, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x1c
	add r1, r7, #0
	mov r2, #0x10
	bl ov01_021FD4D0
	add r0, r5, #0
	mov r2, #2
	add r0, #0x10
	add r1, r6, #0
	lsl r2, r2, #8
	bl ov01_021FD4D0
	ldr r0, [r5, #0x10]
	bl ov01_021FD498
	add r1, r0, #0
	add r0, r5, #0
	bl ov01_021FD624
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bne _021FD5C0
	ldr r1, [r5, #0x18]
	ldr r0, [sp]
	cmp r0, r1
	bne _021FD5C0
	ldr r0, [r5, #0x1c]
	cmp r7, r0
	bne _021FD5C0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	bne _021FD5C0
	str r4, [r5, #4]
	mov r0, #1
	str r0, [r5]
_021FD5C0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD5C4: .word 0x02208EB4
_021FD5C8: .word 0x02208F38
	thumb_func_end ov01_021FD4F4

	thumb_func_start ov01_021FD5CC
ov01_021FD5CC: ; 0x021FD5CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r0, #0
	ldr r6, _021FD608 ; =0x02208E90
	str r0, [sp, #4]
	mov r7, #0
	add r4, #0x28
	add r5, #0x78
_021FD5DE:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0, #0x20]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F19F4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069978
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	add r5, #0x54
	cmp r7, #4
	blt _021FD5DE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FD608: .word 0x02208E90
	thumb_func_end ov01_021FD5CC

	thumb_func_start ov01_021FD60C
ov01_021FD60C: ; 0x021FD60C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x28
_021FD614:
	add r0, r5, #0
	bl sub_02069784
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _021FD614
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD60C

	thumb_func_start ov01_021FD624
ov01_021FD624: ; 0x021FD624
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x1f
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	mov r1, #1
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl NNS_G3dMdlSetMdlAlphaAll
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD624

	thumb_func_start ov01_021FD640
ov01_021FD640: ; 0x021FD640
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	mov r1, #0
	str r4, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD680 ; =0x02208EA0
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021FD680: .word 0x02208EA0
	thumb_func_end ov01_021FD640

	thumb_func_start ov01_021FD684
ov01_021FD684: ; 0x021FD684
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	mov r1, #0
	str r4, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD6C4 ; =0x02208EC8
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #3
	bl ov01_021F1620
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021FD6C4: .word 0x02208EC8
	thumb_func_end ov01_021FD684

	thumb_func_start ov01_021FD6C8
ov01_021FD6C8: ; 0x021FD6C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	bl sub_0205F25C
	str r0, [r4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F24C
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F7D4
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021FD70A
	bl sub_0205F544
	b _021FD70E
_021FD70A:
	bl sub_0205F254
_021FD70E:
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FD6C8

	thumb_func_start ov01_021FD714
ov01_021FD714: ; 0x021FD714
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FD714

	thumb_func_start ov01_021FD718
ov01_021FD718: ; 0x021FD718
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x1c]
	ldr r1, [r4]
	add r5, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FD73C
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FD73C:
	add r0, r6, #0
	mov r1, #8
	bl sub_0205F5E8
	cmp r0, #0
	beq _021FD752
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FD752:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r1, _021FD780 ; =0x00100200
	add r0, r6, #0
	bl sub_0205F228
	cmp r0, #1
	bne _021FD76A
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, pc}
_021FD76A:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0205F944
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021FD780: .word 0x00100200
	thumb_func_end ov01_021FD718

	thumb_func_start ov01_021FD784
ov01_021FD784: ; 0x021FD784
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	bl sub_0205F25C
	str r0, [r4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F24C
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F7D4
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021FD7C6
	bl sub_0205F544
	b _021FD7CA
_021FD7C6:
	bl sub_0205F254
_021FD7CA:
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD784

	thumb_func_start ov01_021FD7D4
ov01_021FD7D4: ; 0x021FD7D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021FD82E
	ldr r6, _021FD834 ; =0x02208F14
	add r5, sp, #0
	mov r3, #4
_021FD7E8:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021FD7E8
	ldr r0, [r6]
	add r1, sp, #0x24
	str r0, [r5]
	ldr r5, [r2, #0x18]
	add r0, r5, #0
	bl ov01_021FD488
	add r0, r4, #0
	add r1, sp, #0x30
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x30]
	lsl r1, r0, #3
	ldr r2, [sp, #0x34]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x38]
	add r5, #0x78
	add r0, r1, r0
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r1, sp, #0x30
	add r2, sp, #0x24
	add r3, sp, #0
	bl sub_020699AC
_021FD82E:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021FD834: .word 0x02208F14
	thumb_func_end ov01_021FD7D4

	thumb_func_start ov01_021FD838
ov01_021FD838: ; 0x021FD838
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r2, r1, #0
	add r6, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021FD8E0
	ldr r5, _021FD8E4 ; =0x02208EF0
	add r4, sp, #0xc
	mov r3, #4
_021FD84C:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021FD84C
	ldr r0, [r5]
	add r1, sp, #0x30
	str r0, [r4]
	ldr r0, [r2, #0x18]
	ldr r4, [r2, #0x1c]
	add r5, r0, #0
	add r5, #0x78
	bl ov01_021FD488
	add r0, r4, #0
	bl ov01_021F8F88
	cmp r0, #0
	add r1, sp, #0x3c
	beq _021FD8A0
	add r0, r6, #0
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x3c]
	lsl r1, r0, #3
	ldr r2, [sp, #0x40]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x44]
	add r0, r1, r0
	str r0, [sp, #0x44]
	add r0, r4, #0
	bl sub_0205F2A8
	add r1, sp, #0x3c
	bl ov01_021FD9CC
	b _021FD8D4
_021FD8A0:
	add r0, r4, #0
	bl sub_0205F944
	add r0, r4, #0
	add r1, sp, #0
	bl ov01_021F8FA0
	ldr r1, [sp, #0x3c]
	ldr r0, [sp]
	ldr r3, [sp, #0x40]
	add r2, r1, r0
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #8]
	str r2, [sp, #0x3c]
	add r0, r1, r0
	mov r1, #2
	lsl r1, r1, #0xa
	sub r2, r2, r1
	str r2, [sp, #0x3c]
	lsl r2, r1, #3
	sub r2, r3, r2
	lsl r1, r1, #1
	str r0, [sp, #0x44]
	add r0, r0, r1
	str r2, [sp, #0x40]
	str r0, [sp, #0x44]
_021FD8D4:
	add r0, r5, #0
	add r1, sp, #0x3c
	add r2, sp, #0x30
	add r3, sp, #0xc
	bl sub_020699AC
_021FD8E0:
	add sp, #0x48
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD8E4: .word 0x02208EF0
	thumb_func_end ov01_021FD838

	thumb_func_start ov01_021FD8E8
ov01_021FD8E8: ; 0x021FD8E8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F146C
	add r6, r0, #0
	mov r1, #0
	str r6, [sp, #0x14]
	bl ov01_021F1450
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FD928 ; =0x02208EDC
	add r0, r6, #0
	add r2, sp, #8
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FD928: .word 0x02208EDC
	thumb_func_end ov01_021FD8E8

	thumb_func_start ov01_021FD92C
ov01_021FD92C: ; 0x021FD92C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x1c]
	ldr r1, [r4]
	add r5, r0, #0
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FD950
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FD950:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r1, _021FD97C ; =0x00100200
	add r0, r6, #0
	bl sub_0205F228
	cmp r0, #1
	bne _021FD968
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, pc}
_021FD968:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0205F944
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FD97C: .word 0x00100200
	thumb_func_end ov01_021FD92C

	thumb_func_start ov01_021FD980
ov01_021FD980: ; 0x021FD980
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	add r6, r0, #0
	cmp r1, #1
	beq _021FD9C6
	bl sub_02068D90
	ldr r5, [r4, #0x18]
	add r4, r0, #0
	mov r1, #0x54
	mul r4, r1
	add r0, r6, #0
	add r1, sp, #0
	add r5, #0x78
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp]
	lsl r1, r0, #3
	ldr r2, [sp, #4]
	lsl r0, r0, #1
	sub r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, r4
	add r1, sp, #0
	bl sub_020699BC
_021FD9C6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FD980

	thumb_func_start ov01_021FD9CC
ov01_021FD9CC: ; 0x021FD9CC
	cmp r0, #3
	bhi _021FDA12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FD9DC: ; jump table
	.short _021FD9E4 - _021FD9DC - 2 ; case 0
	.short _021FD9F0 - _021FD9DC - 2 ; case 1
	.short _021FD9FC - _021FD9DC - 2 ; case 2
	.short _021FDA08 - _021FD9DC - 2 ; case 3
_021FD9E4:
	mov r0, #2
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r1, #8]
	bx lr
_021FD9F0:
	mov r0, #2
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	sub r0, r2, r0
	str r0, [r1, #8]
	bx lr
_021FD9FC:
	mov r0, #6
	ldr r2, [r1]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r1]
	bx lr
_021FDA08:
	mov r0, #6
	ldr r2, [r1]
	lsl r0, r0, #0xc
	sub r0, r2, r0
	str r0, [r1]
_021FDA12:
	bx lr
	thumb_func_end ov01_021FD9CC

	thumb_func_start ov01_021FDA14
ov01_021FDA14: ; 0x021FDA14
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FDA40
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDA14

	thumb_func_start ov01_021FDA30
ov01_021FDA30: ; 0x021FDA30
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FDA5C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FDA30

	thumb_func_start ov01_021FDA40
ov01_021FDA40: ; 0x021FDA40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x23
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #0xd
	mov r2, #0x69
	bl ov01_021F18D4
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDA40

	thumb_func_start ov01_021FDA5C
ov01_021FDA5C: ; 0x021FDA5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #0xd
	bl ov01_021F18FC
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDA5C

	thumb_func_start ov01_021FDA74
ov01_021FDA74: ; 0x021FDA74
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205F52C
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #1
	str r0, [sp, #0xc]
	bl ov01_021F1450
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x18
	str r5, [sp, #0x14]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _021FDABC ; =0x02208F88
	add r2, sp, #0x18
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021FDABC: .word 0x02208F88
	thumb_func_end ov01_021FDA74

	thumb_func_start ov01_021FDAC0
ov01_021FDAC0: ; 0x021FDAC0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	bl sub_0205F24C
	str r0, [r4]
	ldr r0, [r4, #0x20]
	bl sub_0205F254
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl sub_0205F25C
	str r0, [r4, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	mov r0, #0x40
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021FDB12
	mov r0, #0
	str r0, [r4, #0x34]
_021FDB12:
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FDD48
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDAC0

	thumb_func_start ov01_021FDB34
ov01_021FDB34: ; 0x021FDB34
	push {r3, lr}
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _021FDB42
	ldr r0, [r1, #0x24]
	bl sub_02023DA4
_021FDB42:
	pop {r3, pc}
	thumb_func_end ov01_021FDB34

	thumb_func_start ov01_021FDB44
ov01_021FDB44: ; 0x021FDB44
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205F25C
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _021FDB72
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FDB72
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FDB7C
_021FDB72:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FDB7C:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	add r1, r1, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _021FDB96
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
	b _021FDBA6
_021FDB96:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r1, r0
	bgt _021FDBA6
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
_021FDBA6:
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FDBC6
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FDD48
_021FDBC6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDB44

	thumb_func_start ov01_021FDBCC
ov01_021FDBCC: ; 0x021FDBCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r6, [r5, #0x20]
	add r7, r0, #0
	add r0, r6, #0
	mov r4, #0
	bl sub_0205F25C
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021FDBFC
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FDBFC
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FDC06
_021FDBFC:
	add r0, r7, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FDC06:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021FDC78
	ldr r0, [r5, #0x20]
	add r1, sp, #0xc
	bl sub_0205F96C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021FDC1C
	mov r4, #1
_021FDC1C:
	add r0, r6, #0
	bl sub_0205F684
	cmp r0, #1
	bne _021FDC28
	mov r4, #1
_021FDC28:
	cmp r4, #0
	ldr r0, [r5, #0x24]
	beq _021FDC36
	mov r1, #0
	bl sub_02023EA4
	b _021FDC3C
_021FDC36:
	mov r1, #1
	bl sub_02023EA4
_021FDC3C:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r5, #0x24]
	add r1, sp, #0
	bl sub_02023E50
	add r1, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x28
	bl sub_02023E78
	ldr r0, [r5, #0x20]
	bl ov01_021F72DC
	add r4, r0, #0
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023EE0
	add r0, r4, #0
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F1C
_021FDC78:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FDBCC

	thumb_func_start ov01_021FDC7C
ov01_021FDC7C: ; 0x021FDC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r3, _021FDD44 ; =0x02208FC8
	add r4, r2, #0
	add r2, sp, #8
	add r5, r0, #0
	add r6, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r6, #0
	add r1, sp, #0x20
	bl sub_0205F96C
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0205F24C
	cmp r0, #0xff
	bne _021FDCD2
	add r0, r6, #0
	bl sub_0205F25C
	cmp r0, #0xbc
	bne _021FDCD2
	add r0, r6, #0
	bl sub_0205F2A8
	mov r1, #2
	lsl r1, r1, #0xa
	cmp r0, #1
	bne _021FDCCE
	lsl r0, r1, #1
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	sub r7, r1, r0
	b _021FDCD4
_021FDCCE:
	ldr r7, [sp, #0x28]
	b _021FDCD4
_021FDCD2:
	ldr r7, [sp, #0x28]
_021FDCD4:
	ldr r0, [sp, #0x24]
	mov r1, #6
	bl _s32_div_f
	neg r0, r0
	str r0, [sp]
	add r0, r6, #0
	bl sub_0205F24C
	cmp r0, #0xfd
	bne _021FDCFE
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x40]
	bl sub_0205C6DC
	bl sub_0205F25C
	cmp r0, #0xbc
	bne _021FDCFE
	mov r0, #0
	str r0, [sp]
_021FDCFE:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0205F944
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0206121C
	ldr r2, [r4]
	ldr r1, [sp, #4]
	add r1, r2, r1
	str r1, [r4]
	mov r1, #7
	lsl r1, r1, #0xc
	ldr r2, [r4, #8]
	sub r1, r7, r1
	add r1, r2, r1
	str r1, [r4, #8]
	cmp r0, #0
	bne _021FDD2A
	mov r0, #0
	b _021FDD36
_021FDD2A:
	ldr r0, [r5, #0x10]
	ldr r2, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #8
	ldr r0, [r0, r1]
	sub r0, r2, r0
_021FDD36:
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r4, #4]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDD44: .word 0x02208FC8
	thumb_func_end ov01_021FDC7C

	thumb_func_start ov01_021FDD48
ov01_021FDD48: ; 0x021FDD48
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0205F35C
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl ov01_021F9744
	cmp r0, #0
	beq _021FDD8E
	ldr r0, [r4, #0x20]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021FDD8E
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl ov01_021F18F0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov01_021F16EC
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
_021FDD8E:
	add sp, #0x34
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDD48

	thumb_func_start ov01_021FDD94
ov01_021FDD94: ; 0x021FDD94
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r6, r4, #0
	add r5, r0, #0
	add r6, #0x10
	add r3, sp, #0
	mov r2, #5
_021FDDA4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDDA4
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov01_021F18F0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02068DB8
	ldr r0, [r4, #8]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov01_021F16EC
	str r0, [r4, #0x3c]
	ldr r5, [r4, #0x38]
	add r0, r5, #0
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023EE0
	add r0, r5, #0
	bl sub_02023F70
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023F40
	add r0, r5, #0
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02023F1C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023F04
	ldr r0, [r4, #0x3c]
	bl sub_02023FC0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FDD94

	thumb_func_start ov01_021FDE08
ov01_021FDE08: ; 0x021FDE08
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021FDE60 ; =0x02208FB0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	add r3, r5, #0
	stmia r2!, {r0, r1}
	add r3, #0x50
	ldmia r3!, {r0, r1}
	add r2, r4, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	ldr r0, [r5, #4]
	bl sub_0206121C
	mov r1, #7
	ldr r2, [r4, #8]
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r4, #8]
	cmp r0, #0
	bne _021FDE4C
	mov r0, #0
	add sp, #0x18
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021FDE4C:
	ldr r0, [r5]
	ldr r2, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	sub r0, r2, r0
	str r0, [r4, #4]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021FDE60: .word 0x02208FB0
	thumb_func_end ov01_021FDE08

	thumb_func_start ov01_021FDE64
ov01_021FDE64: ; 0x021FDE64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov01_021F1468
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	str r5, [sp, #0xc]
	bl ov01_021F1450
	str r0, [sp, #0x10]
	add r3, sp, #0x14
	mov r2, #5
_021FDE86:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDE86
	str r6, [sp, #0x3c]
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r1, _021FDEA8 ; =0x02208F9C
	str r0, [sp, #4]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	add r2, r7, #0
	bl ov01_021F1620
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDEA8: .word 0x02208F9C
	thumb_func_end ov01_021FDE64

	thumb_func_start ov01_021FDEAC
ov01_021FDEAC: ; 0x021FDEAC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r6, r0, #0
	add r3, r4, #4
	mov r2, #7
_021FDEBE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDEBE
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0x40
	str r0, [r4, #0x4c]
	ldr r0, [r4]
	cmp r0, #2
	bne _021FDEE6
	mov r0, #0
	str r0, [r4, #0x4c]
_021FDEE6:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x50
	bl sub_02068DB8
	add r0, r4, #0
	add r1, sp, #0
	bl ov01_021FDE08
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FDD94
	add r0, r5, #0
	bl sub_02068D18
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FDEAC

	thumb_func_start ov01_021FDF14
ov01_021FDF14: ; 0x021FDF14
	ldr r3, _021FDF1C ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FDF1C: .word sub_02023DA4
	thumb_func_end ov01_021FDF14

	thumb_func_start ov01_021FDF20
ov01_021FDF20: ; 0x021FDF20
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r2, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	add r2, r2, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r2, [r1, #0x40]
	cmp r2, r0
	blt _021FDF40
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	neg r0, r0
	str r0, [r1, #0x4c]
	b _021FDF50
_021FDF40:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r2, r0
	bgt _021FDF50
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x4c]
	neg r0, r0
	str r0, [r1, #0x4c]
_021FDF50:
	add r0, r1, #0
	add r1, sp, #0
	bl ov01_021FDE08
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02068DA8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FDF20

	thumb_func_start ov01_021FDF64
ov01_021FDF64: ; 0x021FDF64
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	ldr r0, [r4, #0x3c]
	add r4, #0x40
	add r1, r4, #0
	bl sub_02023E78
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FDF64

	thumb_func_start ov01_021FDF88
ov01_021FDF88: ; 0x021FDF88
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205F52C
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #1
	str r0, [sp, #0xc]
	bl ov01_021F1450
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, sp, #0x18
	str r5, [sp, #0x14]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _021FDFD0 ; =0x02208F74
	add r2, sp, #0x18
	add r3, r4, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021FDFD0: .word 0x02208F74
	thumb_func_end ov01_021FDF88

	thumb_func_start ov01_021FDFD4
ov01_021FDFD4: ; 0x021FDFD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	bl sub_0205F24C
	str r0, [r4]
	ldr r0, [r4, #0x20]
	bl sub_0205F254
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl sub_0205F25C
	str r0, [r4, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	mov r0, #0x40
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021FE026
	cmp r0, #5
	bne _021FE02A
_021FE026:
	mov r0, #0
	str r0, [r4, #0x34]
_021FE02A:
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	ldr r1, [sp, #4]
	ldr r0, _021FE054 ; =0x00000514
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FE190
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021FE054: .word 0x00000514
	thumb_func_end ov01_021FDFD4

	thumb_func_start ov01_021FE058
ov01_021FE058: ; 0x021FE058
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0205F25C
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _021FE086
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r6, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FE086
	add r0, r6, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FE090
_021FE086:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FE090:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	add r1, r1, r0
	mov r0, #0x12
	lsl r0, r0, #8
	str r1, [r4, #0x28]
	cmp r1, r0
	blt _021FE0AA
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
	b _021FE0BA
_021FE0AA:
	mov r0, #0xe
	lsl r0, r0, #8
	cmp r1, r0
	bgt _021FE0BA
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x34]
	neg r0, r0
	str r0, [r4, #0x34]
_021FE0BA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov01_021FDC7C
	ldr r1, [sp, #4]
	ldr r0, _021FE0E8 ; =0x00000514
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FE0E2
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FE190
_021FE0E2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021FE0E8: .word 0x00000514
	thumb_func_end ov01_021FE058

	thumb_func_start ov01_021FE0EC
ov01_021FE0EC: ; 0x021FE0EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r4, [r5, #0x20]
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205F25C
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021FE11A
	ldr r1, [r5]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #0
	beq _021FE11A
	add r0, r4, #0
	bl sub_0205F870
	cmp r0, #0
	bne _021FE124
_021FE11A:
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021FE124:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021FE18A
	add r0, r4, #0
	bl sub_0205F684
	cmp r0, #1
	ldr r0, [r5, #0x24]
	bne _021FE13E
	mov r1, #0
	bl sub_02023EA4
	b _021FE144
_021FE13E:
	mov r1, #1
	bl sub_02023EA4
_021FE144:
	add r0, r6, #0
	add r1, sp, #0
	bl sub_02068DB8
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	add r1, sp, #0
	bl sub_02023E50
	add r1, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x28
	bl sub_02023E78
	ldr r0, [r5, #0x20]
	bl ov01_021F72DC
	add r4, r0, #0
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023EE0
	add r0, r4, #0
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F1C
_021FE18A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE0EC

	thumb_func_start ov01_021FE190
ov01_021FE190: ; 0x021FE190
	push {r4, r5, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0205F35C
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl ov01_021F9744
	cmp r0, #0
	beq _021FE1FA
	ldr r0, [r4, #0x20]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021FE1FA
	ldr r0, [r4, #0x10]
	cmp r0, #2
	ldr r0, [r4, #0x18]
	bhi _021FE1C4
	mov r1, #2
	bl ov01_021F18F0
	b _021FE1CA
_021FE1C4:
	mov r1, #0xd
	bl ov01_021F18F0
_021FE1CA:
	str r0, [sp]
	ldr r0, [r4, #0x20]
	bl ov01_0220553C
	cmp r0, #0
	beq _021FE1E2
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	mov r0, #1
	add r3, sp, #0
	bl ov01_02205870
_021FE1E2:
	add r0, r5, #0
	add r1, sp, #0x28
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	add r2, sp, #0x28
	bl ov01_021F16EC
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0xc]
_021FE1FA:
	add sp, #0x34
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE190

	thumb_func_start ov01_021FE200
ov01_021FE200: ; 0x021FE200
	push {r3, r4, r5, lr}
	mov r2, #0
	ldr r1, _021FE21C ; =0x00000824
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FE230
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021FE21C: .word 0x00000824
	thumb_func_end ov01_021FE200

	thumb_func_start ov01_021FE220
ov01_021FE220: ; 0x021FE220
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FE2B8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FE220

	thumb_func_start ov01_021FE230
ov01_021FE230: ; 0x021FE230
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x65
	ldr r5, [sp, #4]
	lsl r1, r1, #2
	add r4, r0, #4
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r1, _021FE2AC ; =0x000004DC
	ldr r0, [sp, #4]
	ldr r7, _021FE2B0 ; =0x0220901C
	add r0, r0, r1
	ldr r6, _021FE2B4 ; =0x02208FF4
	add r5, #0xcc
	str r0, [sp, #8]
_021FE256:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r7]
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F19F4
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_02069978
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl ov01_021F19F4
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_02069978
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, #0x54
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r4, #0x14
	add r0, #0x54
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	add r5, #0x14
	str r0, [sp, #0x10]
	cmp r0, #0xa
	blo _021FE256
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FE2AC: .word 0x000004DC
_021FE2B0: .word 0x0220901C
_021FE2B4: .word 0x02208FF4
	thumb_func_end ov01_021FE230

	thumb_func_start ov01_021FE2B8
ov01_021FE2B8: ; 0x021FE2B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r0, #4
	add r5, #0xcc
_021FE2C2:
	add r0, r4, #0
	bl sub_02069784
	add r0, r5, #0
	bl sub_02069784
	add r6, r6, #1
	add r4, #0x14
	add r5, #0x14
	cmp r6, #0xa
	blt _021FE2C2
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE2B8

	thumb_func_start ov01_021FE2DC
ov01_021FE2DC: ; 0x021FE2DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	mov r4, #0
	cmp r0, #4
	bhi _021FE346
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE2F6: ; jump table
	.short _021FE300 - _021FE2F6 - 2 ; case 0
	.short _021FE30E - _021FE2F6 - 2 ; case 1
	.short _021FE326 - _021FE2F6 - 2 ; case 2
	.short _021FE332 - _021FE2F6 - 2 ; case 3
	.short _021FE326 - _021FE2F6 - 2 ; case 4
_021FE300:
	mov r0, #0x65
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x54
	mul r0, r2
	add r4, r1, r0
	b _021FE346
_021FE30E:
	lsl r3, r1, #4
	ldr r1, _021FE354 ; =0x02209044
	lsl r2, r2, #2
	add r1, r1, r3
	mov r0, #0x65
	ldr r2, [r2, r1]
	lsl r0, r0, #2
	mov r1, #0x54
	add r0, r5, r0
	mul r1, r2
	add r4, r0, r1
	b _021FE346
_021FE326:
	ldr r0, _021FE358 ; =0x000004DC
	add r1, r5, r0
	mov r0, #0x54
	mul r0, r2
	add r4, r1, r0
	b _021FE346
_021FE332:
	lsl r3, r1, #4
	ldr r1, _021FE354 ; =0x02209044
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r0, _021FE358 ; =0x000004DC
	ldr r2, [r2, r1]
	mov r1, #0x54
	add r0, r5, r0
	mul r1, r2
	add r4, r0, r1
_021FE346:
	cmp r4, #0
	bne _021FE34E
	bl GF_AssertFail
_021FE34E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021FE354: .word 0x02209044
_021FE358: .word 0x000004DC
	thumb_func_end ov01_021FE2DC

	thumb_func_start ov01_021FE35C
ov01_021FE35C: ; 0x021FE35C
	push {r4, lr}
	mov r4, #0
	cmp r1, #4
	bhi _021FE3B4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021FE370: ; jump table
	.short _021FE37A - _021FE370 - 2 ; case 0
	.short _021FE384 - _021FE370 - 2 ; case 1
	.short _021FE398 - _021FE370 - 2 ; case 2
	.short _021FE3A2 - _021FE370 - 2 ; case 3
	.short _021FE398 - _021FE370 - 2 ; case 4
_021FE37A:
	add r1, r0, #4
	mov r0, #0x14
	mul r0, r2
	add r4, r1, r0
	b _021FE3B4
_021FE384:
	ldr r1, _021FE3C0 ; =0x02209044
	lsl r3, r3, #4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r2, [r2, r1]
	mov r1, #0x14
	add r0, r0, #4
	mul r1, r2
	add r4, r0, r1
	b _021FE3B4
_021FE398:
	mov r1, #0x14
	add r0, #0xcc
	mul r1, r2
	add r4, r0, r1
	b _021FE3B4
_021FE3A2:
	ldr r1, _021FE3C0 ; =0x02209044
	lsl r3, r3, #4
	lsl r2, r2, #2
	add r1, r1, r3
	ldr r2, [r2, r1]
	mov r1, #0x14
	add r0, #0xcc
	mul r1, r2
	add r4, r0, r1
_021FE3B4:
	cmp r4, #0
	bne _021FE3BC
	bl GF_AssertFail
_021FE3BC:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_021FE3C0: .word 0x02209044
	thumb_func_end ov01_021FE35C

	thumb_func_start ov01_021FE3C4
ov01_021FE3C4: ; 0x021FE3C4
	ldr r3, _021FE3CC ; =ov01_021FE3F8
	mov r1, #0
	bx r3
	nop
_021FE3CC: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3C4

	thumb_func_start ov01_021FE3D0
ov01_021FE3D0: ; 0x021FE3D0
	ldr r3, _021FE3D8 ; =ov01_021FE3F8
	mov r1, #1
	bx r3
	nop
_021FE3D8: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3D0

	thumb_func_start ov01_021FE3DC
ov01_021FE3DC: ; 0x021FE3DC
	ldr r3, _021FE3E4 ; =ov01_021FE3F8
	mov r1, #2
	bx r3
	nop
_021FE3E4: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3DC

	thumb_func_start ov01_021FE3E8
ov01_021FE3E8: ; 0x021FE3E8
	ldr r3, _021FE3F0 ; =ov01_021FE3F8
	mov r1, #4
	bx r3
	nop
_021FE3F0: .word ov01_021FE3F8
	thumb_func_end ov01_021FE3E8

	thumb_func_start ov01_021FE3F4
ov01_021FE3F4: ; 0x021FE3F4
	mov r0, #0
	bx lr
	thumb_func_end ov01_021FE3F4

	thumb_func_start ov01_021FE3F8
ov01_021FE3F8: ; 0x021FE3F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205F8FC
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0205F90C
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0205F968
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F2A8
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl sub_0205F2AC
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r7, r0, #0
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #2
	str r0, [sp, #8]
	bl ov01_021F1450
	mov r1, #2
	str r0, [sp, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	bne _021FE454
	add sp, #0x38
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FE454:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	str r4, [sp, #0x20]
	bl ov01_021FE2DC
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r1, r4, #0
	bl ov01_021FE35C
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x2c
	bl sub_020611C8
	str r6, [sp, #0x30]
	cmp r4, #5
	bhi _021FE4E0
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE48E: ; jump table
	.short _021FE49A - _021FE48E - 2 ; case 0
	.short _021FE49A - _021FE48E - 2 ; case 1
	.short _021FE4BC - _021FE48E - 2 ; case 2
	.short _021FE4BC - _021FE48E - 2 ; case 3
	.short _021FE49A - _021FE48E - 2 ; case 4
	.short _021FE49A - _021FE48E - 2 ; case 5
_021FE49A:
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r6, r0
	str r1, [sp, #0x30]
	sub r1, r4, #2
	cmp r1, #1
	bhi _021FE4B2
	ldr r1, [sp, #0x34]
	lsr r0, r0, #2
	sub r0, r1, r0
	str r0, [sp, #0x34]
	b _021FE4E0
_021FE4B2:
	ldr r1, [sp, #0x34]
	lsr r0, r0, #3
	add r0, r1, r0
	str r0, [sp, #0x34]
	b _021FE4E0
_021FE4BC:
	mov r0, #0xa
	lsl r0, r0, #0xc
	sub r0, r6, r0
	str r0, [sp, #0x30]
	sub r0, r4, #2
	cmp r0, #1
	bhi _021FE4D6
	mov r0, #2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x34]
	b _021FE4E0
_021FE4D6:
	mov r0, #2
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x34]
_021FE4E0:
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r1, _021FE4F8 ; =0x02208FE0
	add r2, sp, #0x2c
	mov r3, #0
	str r7, [sp, #4]
	bl ov01_021F1620
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FE4F8: .word 0x02208FE0
	thumb_func_end ov01_021FE3F8

	thumb_func_start ov01_021FE4FC
ov01_021FE4FC: ; 0x021FE4FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D90
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02068D98
	ldr r1, [r0, #8]
	str r1, [r4, #0x18]
	ldr r1, [r0, #4]
	str r1, [r4, #0x14]
	mov r1, #0x1f
	str r1, [r4, #0xc]
	ldr r0, [r0]
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE4FC

	thumb_func_start ov01_021FE524
ov01_021FE524: ; 0x021FE524
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FE524

	thumb_func_start ov01_021FE528
ov01_021FE528: ; 0x021FE528
	push {r3, lr}
	ldr r2, [r1]
	cmp r2, #0
	beq _021FE536
	cmp r2, #1
	beq _021FE548
	pop {r3, pc}
_021FE536:
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021FE554
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	pop {r3, pc}
_021FE548:
	ldr r2, [r1, #0xc]
	sub r2, r2, #2
	str r2, [r1, #0xc]
	bpl _021FE554
	bl ov01_021F1640
_021FE554:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE528

	thumb_func_start ov01_021FE558
ov01_021FE558: ; 0x021FE558
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021FE58A
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x14]
	mov r2, #0x1f
	ldr r0, [r0, #0xc]
	mov r1, #1
	lsl r2, r2, #0x10
	bl NNSi_G3dModifyPolygonAttrMask
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl NNS_G3dMdlSetMdlAlphaAll
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_020699BC
_021FE58A:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE558

	thumb_func_start ov01_021FE590
ov01_021FE590: ; 0x021FE590
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE590

	thumb_func_start ov01_021FE5A4
ov01_021FE5A4: ; 0x021FE5A4
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FE61C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FE5A4

	thumb_func_start ov01_021FE5B4
ov01_021FE5B4: ; 0x021FE5B4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021FE5B4

	thumb_func_start ov01_021FE5BC
ov01_021FE5BC: ; 0x021FE5BC
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _021FE5CA
	bl GF_AssertFail
_021FE5CA:
	pop {r3, pc}
	thumb_func_end ov01_021FE5BC

	thumb_func_start ov01_021FE5CC
ov01_021FE5CC: ; 0x021FE5CC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021FE614
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x80
	bl ov01_021F18D4
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x95
	bl ov01_021F1908
	ldr r0, [r4, #8]
	mov r1, #0xc
	mov r2, #0x1a
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FE618 ; =0x022090AC
	mov r2, #0xb
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0xd
	add r3, r2, #0
	bl ov01_021F1758
_021FE614:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021FE618: .word 0x022090AC
	thumb_func_end ov01_021FE5CC

	thumb_func_start ov01_021FE61C
ov01_021FE61C: ; 0x021FE61C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021FE64A
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov01_021F18FC
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov01_021F1924
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl ov01_021F1970
	ldr r0, [r4, #8]
	mov r1, #0xd
	bl ov01_021F18C8
_021FE64A:
	pop {r4, pc}
	thumb_func_end ov01_021FE61C

	thumb_func_start ov01_021FE64C
ov01_021FE64C: ; 0x021FE64C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FE658
	bl ov01_021FE5CC
_021FE658:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE64C

	thumb_func_start ov01_021FE65C
ov01_021FE65C: ; 0x021FE65C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FE668
	bl ov01_021FE61C
_021FE668:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE65C

	thumb_func_start ov01_021FE66C
ov01_021FE66C: ; 0x021FE66C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x14
	bl ov01_021F93AC
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x10
	str r4, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021FE6B0 ; =0x02209084
	add r0, r4, #0
	add r2, sp, #0x14
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021FE6B0: .word 0x02209084
	thumb_func_end ov01_021FE66C

	thumb_func_start ov01_021FE6B4
ov01_021FE6B4: ; 0x021FE6B4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x10]
	bl ov01_021FE64C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	bl ov01_021FE5B4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FE6B4

	thumb_func_start ov01_021FE6F4
ov01_021FE6F4: ; 0x021FE6F4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	bl sub_02023DA4
	ldr r0, [r4, #0x10]
	bl ov01_021FE5BC
	ldr r0, [r4, #0x10]
	bl ov01_021FE65C
	pop {r4, pc}
	thumb_func_end ov01_021FE6F4

	thumb_func_start ov01_021FE70C
ov01_021FE70C: ; 0x021FE70C
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021FE764 ; =0x02209098
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021FE748
	mov r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #5
	blt _021FE742
	add r0, r2, #0
	bl ov01_021F1640
	add sp, #0x14
	pop {r4, r5, pc}
_021FE742:
	ldr r0, [r4, #0x18]
	bl sub_02023F1C
_021FE748:
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x18]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	bl sub_02023F04
	cmp r0, #1
	bne _021FE75E
	mov r0, #1
	str r0, [r4, #8]
_021FE75E:
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021FE764: .word 0x02209098
	thumb_func_end ov01_021FE70C

	thumb_func_start ov01_021FE768
ov01_021FE768: ; 0x021FE768
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FE768

	thumb_func_start ov01_021FE780
ov01_021FE780: ; 0x021FE780
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FE7AC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE780

	thumb_func_start ov01_021FE79C
ov01_021FE79C: ; 0x021FE79C
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FE7D0
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FE79C

	thumb_func_start ov01_021FE7AC
ov01_021FE7AC: ; 0x021FE7AC
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x56
	bl ov01_021F19F4
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02069978
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE7AC

	thumb_func_start ov01_021FE7D0
ov01_021FE7D0: ; 0x021FE7D0
	ldr r3, _021FE7D8 ; =sub_02069784
	add r0, r0, #4
	bx r3
	nop
_021FE7D8: .word sub_02069784
	thumb_func_end ov01_021FE7D0

	thumb_func_start ov01_021FE7DC
ov01_021FE7DC: ; 0x021FE7DC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r6, r2, #0
	add r2, sp, #0x14
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	str r3, [sp, #0x20]
	bl ov01_021F146C
	mov r1, #4
	str r0, [sp, #0x24]
	bl ov01_021F1450
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	str r5, [sp, #0x2c]
	cmp r0, #0
	bne _021FE826
	add r0, r5, #0
	bl sub_0205F52C
	mov r1, #2
	lsl r2, r4, #0x10
	lsl r1, r1, #0xe
	add r2, r2, r1
	str r2, [sp, #0x14]
	lsl r2, r6, #0x10
	add r1, r2, r1
	str r1, [sp, #0x1c]
	add r1, sp, #0x14
	bl sub_0206121C
	b _021FE842
_021FE826:
	ldr r3, _021FE860 ; =0x022090D0
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x14
	str r0, [r2]
	add r0, r5, #0
	bl sub_0205F944
	add r0, r5, #0
	add r1, sp, #8
	bl sub_0205F9A0
_021FE842:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x20
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, _021FE864 ; =0x022090DC
	ldr r3, [sp, #0x40]
	add r2, sp, #0x14
	bl ov01_021F1620
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FE860: .word 0x022090D0
_021FE864: .word 0x022090DC
	thumb_func_end ov01_021FE7DC

	thumb_func_start ov01_021FE868
ov01_021FE868: ; 0x021FE868
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02068D98
	add r7, r0, #0
	add r2, r5, #0
	add r3, r7, #0
	ldr r4, [r7, #0xc]
	add r2, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	bl sub_0205F24C
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0205F254
	str r0, [r5, #0x10]
	ldr r0, [r7]
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_02068D90
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	lsr r0, r0, #2
	str r0, [r5, #0x20]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE868

	thumb_func_start ov01_021FE8B0
ov01_021FE8B0: ; 0x021FE8B0
	push {lr}
	sub sp, #0xc
	ldr r0, [r1, #0x30]
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	bl sub_0205F9A0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov01_021FE8B0

	thumb_func_start ov01_021FE8C8
ov01_021FE8C8: ; 0x021FE8C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x30]
	ldr r1, [r5, #0xc]
	add r6, r0, #0
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #0
	bne _021FE8EA
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021FE8EA:
	mov r0, #0
	str r0, [r5]
	add r0, r4, #0
	bl sub_0205F2A8
	mov r1, #0
	mvn r1, r1
	str r0, [r5, #4]
	cmp r0, r1
	bne _021FE906
	mov r0, #1
	add sp, #0x18
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021FE906:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021FE96C
	str r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xe
	str r2, [r5, #0x1c]
	cmp r2, r1
	blt _021FE928
	str r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	neg r0, r0
	str r0, [r5, #0x20]
	b _021FE936
_021FE928:
	lsr r0, r1, #2
	cmp r2, r0
	bgt _021FE936
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	neg r0, r0
	str r0, [r5, #0x20]
_021FE936:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_0205F9A0
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205F944
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	ldr r2, [sp, #4]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02068DA8
_021FE96C:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FE8C8

	thumb_func_start ov01_021FE970
ov01_021FE970: ; 0x021FE970
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3]
	cmp r0, #1
	beq _021FE9E6
	mov r0, #0
	ldr r1, [r3, #8]
	mvn r0, r0
	cmp r1, r0
	beq _021FE9E6
	ldr r0, [r3, #0x14]
	ldr r5, _021FE9EC ; =0x022090C4
	add r0, r0, #1
	str r0, [r3, #0x14]
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r2, #0
	str r0, [r4]
	ldr r4, [r3, #0x2c]
	ldr r0, [r3, #8]
	add r4, #0x18
	cmp r0, #3
	bhi _021FE9C4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FE9B2: ; jump table
	.short _021FE9BA - _021FE9B2 - 2 ; case 0
	.short _021FE9C4 - _021FE9B2 - 2 ; case 1
	.short _021FE9BE - _021FE9B2 - 2 ; case 2
	.short _021FE9C2 - _021FE9B2 - 2 ; case 3
_021FE9BA:
	mov r2, #0xb4
	b _021FE9C4
_021FE9BE:
	ldr r2, _021FE9F0 ; =0x0000010E
	b _021FE9C4
_021FE9C2:
	mov r2, #0x5a
_021FE9C4:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02020DA4
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, sp, #0x18
	bl sub_020699AC
_021FE9E6:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021FE9EC: .word 0x022090C4
_021FE9F0: .word 0x0000010E
	thumb_func_end ov01_021FE970

	thumb_func_start ov01_021FE9F4
ov01_021FE9F4: ; 0x021FE9F4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02068D74
	mov r1, #1
	str r4, [r0, #0x18]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	lsr r1, r1, #2
	str r1, [r0, #0x20]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FE9F4

	thumb_func_start ov01_021FEA0C
ov01_021FEA0C: ; 0x021FEA0C
	push {r4, lr}
	mov r2, #0
	mov r1, #0x7c
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEA0C

	thumb_func_start ov01_021FEA20
ov01_021FEA20: ; 0x021FEA20
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEA7C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEA20

	thumb_func_start ov01_021FEA30
ov01_021FEA30: ; 0x021FEA30
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	thumb_func_end ov01_021FEA30

	thumb_func_start ov01_021FEA38
ov01_021FEA38: ; 0x021FEA38
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _021FEA46
	bl GF_AssertFail
_021FEA46:
	pop {r3, pc}
	thumb_func_end ov01_021FEA38

	thumb_func_start ov01_021FEA48
ov01_021FEA48: ; 0x021FEA48
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021FEA76
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x14
	mov r2, #0
	mov r3, #0x57
	bl ov01_021F19F4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x28
	add r1, #0x14
	bl sub_02069978
	mov r0, #1
	str r0, [r4, #4]
_021FEA76:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEA48

	thumb_func_start ov01_021FEA7C
ov01_021FEA7C: ; 0x021FEA7C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _021FEA8E
	mov r1, #0
	str r1, [r0, #4]
	add r0, #0x14
	bl sub_02069784
_021FEA8E:
	pop {r3, pc}
	thumb_func_end ov01_021FEA7C

	thumb_func_start ov01_021FEA90
ov01_021FEA90: ; 0x021FEA90
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FEA9C
	bl ov01_021FEA48
_021FEA9C:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEA90

	thumb_func_start ov01_021FEAA0
ov01_021FEAA0: ; 0x021FEAA0
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021FEAAC
	bl ov01_021FEA7C
_021FEAAC:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEAA0

	thumb_func_start ov01_021FEAB0
ov01_021FEAB0: ; 0x021FEAB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r1, #0
	add r7, r2, #0
	add r2, sp, #0xc
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r3, [sp, #8]
	add r5, r0, #0
	str r1, [r2, #8]
	bl ov01_021F146C
	add r4, r0, #0
	ldr r0, [sp, #8]
	str r4, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0205F52C
	str r0, [sp, #0x20]
	add r0, r4, #0
	mov r1, #5
	bl ov01_021F1450
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r5, [sp, #0x28]
	cmp r0, #0
	bne _021FEB06
	mov r0, #2
	lsl r1, r6, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0xc]
	lsl r1, r7, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r1, sp, #0xc
	bl sub_0206121C
	b _021FEB0E
_021FEB06:
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_0205F944
_021FEB0E:
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FEB2C ; =0x022090FC
	ldr r3, [sp, #0x40]
	add r0, r4, #0
	add r2, sp, #0xc
	bl ov01_021F1620
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FEB2C: .word 0x022090FC
	thumb_func_end ov01_021FEAB0

	thumb_func_start ov01_021FEB30
ov01_021FEB30: ; 0x021FEB30
	push {r4, lr}
	add r4, r1, #0
	bl sub_02068D74
	str r4, [r0, #0xc]
	pop {r4, pc}
	thumb_func_end ov01_021FEB30

	thumb_func_start ov01_021FEB3C
ov01_021FEB3C: ; 0x021FEB3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r2, r0, #0
	add r6, r2, #0
	add r3, r4, #0
	ldmia r6!, {r0, r1}
	add r3, #0x10
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r2]
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	bl ov01_021FEA90
	ldr r0, [r4, #0x1c]
	bl ov01_021FEA30
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEB3C

	thumb_func_start ov01_021FEB78
ov01_021FEB78: ; 0x021FEB78
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	bl ov01_021FEA38
	ldr r0, [r4, #0x1c]
	bl ov01_021FEAA0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEB78

	thumb_func_start ov01_021FEB8C
ov01_021FEB8C: ; 0x021FEB8C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r4, [r1, #0x20]
	cmp r0, #0
	beq _021FEBBA
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl sub_0205F9A0
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205F944
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
_021FEBBA:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEB8C

	thumb_func_start ov01_021FEBC0
ov01_021FEBC0: ; 0x021FEBC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3]
	cmp r0, #1
	beq _021FEC2C
	ldr r0, [r3, #8]
	ldr r5, _021FEC30 ; =0x022090F0
	add r0, r0, #1
	str r0, [r3, #8]
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r2, #0
	str r0, [r4]
	ldr r4, [r3, #0x1c]
	ldr r0, [r3, #4]
	add r4, #0x28
	cmp r0, #3
	bhi _021FEC0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FEBF8: ; jump table
	.short _021FEC00 - _021FEBF8 - 2 ; case 0
	.short _021FEC0A - _021FEBF8 - 2 ; case 1
	.short _021FEC04 - _021FEBF8 - 2 ; case 2
	.short _021FEC08 - _021FEBF8 - 2 ; case 3
_021FEC00:
	mov r2, #0xb4
	b _021FEC0A
_021FEC04:
	ldr r2, _021FEC34 ; =0x0000010E
	b _021FEC0A
_021FEC08:
	mov r2, #0x5a
_021FEC0A:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02020DA4
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, sp, #0x18
	bl sub_020699AC
_021FEC2C:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FEC30: .word 0x022090F0
_021FEC34: .word 0x0000010E
	thumb_func_end ov01_021FEBC0

	thumb_func_start ov01_021FEC38
ov01_021FEC38: ; 0x021FEC38
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FEC64
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEC38

	thumb_func_start ov01_021FEC54
ov01_021FEC54: ; 0x021FEC54
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEC8C
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEC54

	thumb_func_start ov01_021FEC64
ov01_021FEC64: ; 0x021FEC64
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x1d
	bl ov01_021F19F4
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0x86
	bl ov01_021F1A18
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov01_021FEC64

	thumb_func_start ov01_021FEC8C
ov01_021FEC8C: ; 0x021FEC8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_02069784
	add r4, #0x18
	add r0, r4, #0
	bl sub_020698D0
	pop {r4, pc}
	thumb_func_end ov01_021FEC8C

	thumb_func_start ov01_021FECA0
ov01_021FECA0: ; 0x021FECA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	mov r1, #2
	lsl r1, r1, #8
	add r5, r0, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_0205F228
	cmp r0, #1
	beq _021FED0A
	add r0, r5, #0
	bl ov01_021F146C
	mov r1, #6
	str r0, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_020611C8
	mov r0, #1
	ldr r2, [sp, #0x18]
	lsl r1, r4, #3
	lsl r0, r0, #0xc
	add r0, r1, r0
	add r0, r2, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0205F904
	lsl r1, r0, #0xf
	mov r0, #2
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021FED10 ; =0x02209110
	add r2, sp, #0x10
	mov r3, #0
	bl ov01_021F1620
_021FED0A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FED10: .word 0x02209110
	thumb_func_end ov01_021FECA0

	thumb_func_start ov01_021FED14
ov01_021FED14: ; 0x021FED14
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_02068D98
	ldr r3, [r0, #4]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r3, #0x18
	bl ov01_021F1A34
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, r1, #4
	add r2, r4, #0
	bl sub_02069998
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED14

	thumb_func_start ov01_021FED4C
ov01_021FED4C: ; 0x021FED4C
	ldr r3, _021FED54 ; =sub_020698D0
	add r0, r1, #0
	bx r3
	nop
_021FED54: .word sub_020698D0
	thumb_func_end ov01_021FED4C

	thumb_func_start ov01_021FED58
ov01_021FED58: ; 0x021FED58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02069948
	cmp r0, #1
	bne _021FED70
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, pc}
_021FED70:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_020698E8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED58

	thumb_func_start ov01_021FED80
ov01_021FED80: ; 0x021FED80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	add r4, #0x24
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020699BC
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED80

	thumb_func_start ov01_021FED9C
ov01_021FED9C: ; 0x021FED9C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FEDC8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FED9C

	thumb_func_start ov01_021FEDB8
ov01_021FEDB8: ; 0x021FEDB8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEDF0
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEDB8

	thumb_func_start ov01_021FEDC8
ov01_021FEDC8: ; 0x021FEDC8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4]
	add r1, r4, #4
	mov r3, #0x1e
	bl ov01_021F19F4
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0x87
	bl ov01_021F1A18
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov01_021FEDC8

	thumb_func_start ov01_021FEDF0
ov01_021FEDF0: ; 0x021FEDF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_02069784
	add r4, #0x18
	add r0, r4, #0
	bl sub_020698D0
	pop {r4, pc}
	thumb_func_end ov01_021FEDF0

	thumb_func_start ov01_021FEE04
ov01_021FEE04: ; 0x021FEE04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov01_021F146C
	mov r1, #7
	str r0, [sp, #8]
	bl ov01_021F1450
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_020611C8
	ldr r1, [sp, #0x18]
	lsl r0, r4, #3
	add r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_0205F904
	lsl r1, r0, #0xf
	mov r0, #2
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021FEE60 ; =0x02209124
	add r2, sp, #0x10
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FEE60: .word 0x02209124
	thumb_func_end ov01_021FEE04

	thumb_func_start ov01_021FEE64
ov01_021FEE64: ; 0x021FEE64
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_02068D98
	ldr r3, [r0, #4]
	ldr r1, [r0]
	mov r0, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r3, #0x18
	bl ov01_021F1A34
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, r1, #4
	add r2, r4, #0
	bl sub_02069998
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEE64

	thumb_func_start ov01_021FEE9C
ov01_021FEE9C: ; 0x021FEE9C
	ldr r3, _021FEEA4 ; =sub_020698D0
	add r0, r1, #0
	bx r3
	nop
_021FEEA4: .word sub_020698D0
	thumb_func_end ov01_021FEE9C

	thumb_func_start ov01_021FEEA8
ov01_021FEEA8: ; 0x021FEEA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02069948
	cmp r0, #1
	bne _021FEEC0
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, pc}
_021FEEC0:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_020698E8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEEA8

	thumb_func_start ov01_021FEED0
ov01_021FEED0: ; 0x021FEED0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	add r4, #0x24
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020699BC
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEED0

	thumb_func_start ov01_021FEEEC
ov01_021FEEEC: ; 0x021FEEEC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FEF18
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEEEC

	thumb_func_start ov01_021FEF08
ov01_021FEF08: ; 0x021FEF08
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FEFF8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FEF08

	thumb_func_start ov01_021FEF18
ov01_021FEF18: ; 0x021FEF18
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x7e
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0x7f
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x8c
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x8d
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x8e
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0x8f
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x19
	mov r3, #1
	bl ov01_021F1930
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x10
	mov r3, #1
	bl ov01_021F1930
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl ov01_021F1930
	mov r2, #1
	ldr r0, [r4]
	mov r1, #6
	add r3, r2, #0
	bl ov01_021F1930
	mov r1, #0
	str r1, [sp]
	ldr r0, _021FEFE8 ; =0x02209178
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r1, #0
	bl ov01_021F1758
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FEFEC ; =0x02209190
	mov r1, #5
	str r0, [sp, #8]
	ldr r0, [r4]
	add r2, r1, #0
	mov r3, #3
	bl ov01_021F1758
	mov r2, #5
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FEFF0 ; =0x02209160
	mov r1, #6
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, #4
	bl ov01_021F1758
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FEFF4 ; =0x022091A8
	mov r2, #5
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #7
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021FEFE8: .word 0x02209178
_021FEFEC: .word 0x02209190
_021FEFF0: .word 0x02209160
_021FEFF4: .word 0x022091A8
	thumb_func_end ov01_021FEF18

	thumb_func_start ov01_021FEFF8
ov01_021FEFF8: ; 0x021FEFF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #4
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #4
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0
	bl ov01_021F18C8
	ldr r0, [r4]
	mov r1, #5
	bl ov01_021F18C8
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F18C8
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FEFF8

	thumb_func_start ov01_021FF070
ov01_021FF070: ; 0x021FF070
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F914
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205F924
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0205F934
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, sp, #8
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	sub r1, r1, #1
	add r0, sp, #0x28
	strb r1, [r0]
	add r0, r4, #0
	str r4, [sp, #0x18]
	bl ov01_021F1468
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #8
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x2c
	str r5, [sp, #0x20]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF0E0 ; =0x02209138
	add r0, r4, #0
	add r2, sp, #0x2c
	add r3, r6, #0
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FF0E0: .word 0x02209138
	thumb_func_end ov01_021FF070

	thumb_func_start ov01_021FF0E4
ov01_021FF0E4: ; 0x021FF0E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp, #8]
	add r4, r2, #0
	add r6, r3, #0
	bl ov01_021F146C
	add r7, r0, #0
	add r0, r5, #0
	str r4, [sp, #0xc]
	bl sub_0205F924
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r6, [sp, #0x14]
	bl sub_0205F914
	sub r1, r0, r4
	add r0, sp, #0xc
	strh r1, [r0, #0x1c]
	add r0, r5, #0
	bl sub_0205F934
	sub r1, r0, r6
	add r0, sp, #0xc
	strh r1, [r0, #0x1e]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021FF12C
	add r0, r5, #0
	bl sub_0205F2A8
	add r1, sp, #0x2c
	strb r0, [r1]
	b _021FF134
_021FF12C:
	mov r1, #0
	mvn r1, r1
	add r0, sp, #0x2c
	strb r1, [r0]
_021FF134:
	add r0, r7, #0
	str r7, [sp, #0x1c]
	bl ov01_021F1468
	str r0, [sp, #0x18]
	add r0, r7, #0
	mov r1, #8
	bl ov01_021F1450
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, sp, #0x30
	str r5, [sp, #0x24]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF170 ; =0x02209138
	ldr r3, [sp, #8]
	add r0, r7, #0
	add r2, sp, #0x30
	bl ov01_021F1620
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF170: .word 0x02209138
	thumb_func_end ov01_021FF0E4

	thumb_func_start ov01_021FF174
ov01_021FF174: ; 0x021FF174
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r4, #0
	add r6, r0, #0
	add r3, #0x18
	mov r2, #4
_021FF188:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FF188
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #0x30]
	bl sub_0205F25C
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl sub_0205F24C
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F968
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_0206121C
	str r0, [r4, #0x14]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x28]
	mov r1, #0
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x3c]
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	bne _021FF208
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023EA4
_021FF208:
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #0
	bne _021FF220
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	mov r0, #2
	str r0, [r4]
_021FF220:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF174

	thumb_func_start ov01_021FF228
ov01_021FF228: ; 0x021FF228
	ldr r3, _021FF230 ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FF230: .word sub_02023DA4
	thumb_func_end ov01_021FF228

	thumb_func_start ov01_021FF234
ov01_021FF234: ; 0x021FF234
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF258
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF258:
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _021FF270
	mov r1, #0
	bl sub_02023EA4
	b _021FF276
_021FF270:
	mov r1, #1
	bl sub_02023EA4
_021FF276:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021FF2AE
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _021FF2AE
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02068DA8
_021FF2AE:
	ldr r0, [r4]
	cmp r0, #0
	beq _021FF2C0
	cmp r0, #1
	beq _021FF2E4
	cmp r0, #2
	beq _021FF2F2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF2C0:
	mov r1, #1
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x3c]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021FF358
	mov r0, #1
	add sp, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FF2E4:
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	mov r0, #2
	str r0, [r4]
_021FF2F2:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF30C
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF30C:
	add r0, r6, #0
	bl sub_0205F914
	mov r1, #0x34
	ldrsh r1, [r4, r1]
	sub r7, r0, r1
	add r0, r6, #0
	bl sub_0205F934
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	sub r1, r0, r1
	ldr r0, [r4, #0x18]
	cmp r0, r7
	bne _021FF330
	ldr r0, [r4, #0x20]
	cmp r0, r1
	beq _021FF33A
_021FF330:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FF33A:
	mov r0, #0x38
	ldrsb r1, [r4, r0]
	sub r0, #0x39
	cmp r1, r0
	beq _021FF358
	add r0, r6, #0
	bl sub_0205F2A8
	mov r1, #0x38
	ldrsb r1, [r4, r1]
	cmp r1, r0
	beq _021FF358
	add r0, r5, #0
	bl ov01_021F1640
_021FF358:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FF234

	thumb_func_start ov01_021FF35C
ov01_021FF35C: ; 0x021FF35C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF37E
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_021FF37E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF35C

	thumb_func_start ov01_021FF394
ov01_021FF394: ; 0x021FF394
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl sub_02068D90
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsl r1, r0, #0x10
	mov r0, #9
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	bl sub_0206121C
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021FF3FE
	cmp r0, #1
	beq _021FF402
	cmp r0, #2
	b _021FF406
_021FF3FE:
	mov r1, #5
	b _021FF408
_021FF402:
	mov r1, #6
	b _021FF408
_021FF406:
	mov r1, #7
_021FF408:
	ldr r0, [r4, #0x1c]
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x24]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FF394

	thumb_func_start ov01_021FF418
ov01_021FF418: ; 0x021FF418
	ldr r3, _021FF420 ; =sub_02023DA4
	ldr r0, [r1, #0x24]
	bx r3
	nop
_021FF420: .word sub_02023DA4
	thumb_func_end ov01_021FF418

	thumb_func_start ov01_021FF424
ov01_021FF424: ; 0x021FF424
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021FF432
	cmp r0, #1
	pop {r4, pc}
_021FF432:
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02023F04
	cmp r0, #1
	bne _021FF44A
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021FF44A:
	pop {r4, pc}
	thumb_func_end ov01_021FF424

	thumb_func_start ov01_021FF44C
ov01_021FF44C: ; 0x021FF44C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov01_021FF44C

	thumb_func_start ov01_021FF464
ov01_021FF464: ; 0x021FF464
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FF490
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF464

	thumb_func_start ov01_021FF480
ov01_021FF480: ; 0x021FF480
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FF4D4
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FF480

	thumb_func_start ov01_021FF490
ov01_021FF490: ; 0x021FF490
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x77
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x90
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0x12
	mov r3, #1
	bl ov01_021F1930
	mov r3, #2
	mov r1, #3
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FF4D0 ; =0x022091D4
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021FF4D0: .word 0x022091D4
	thumb_func_end ov01_021FF490

	thumb_func_start ov01_021FF4D4
ov01_021FF4D4: ; 0x021FF4D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #2
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #2
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #3
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF4D4

	thumb_func_start ov01_021FF4FC
ov01_021FF4FC: ; 0x021FF4FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F52C
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xa
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r5, [sp, #0x20]
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF548 ; =0x022091C0
	add r0, r4, #0
	add r2, sp, #8
	add r3, r6, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FF548: .word 0x022091C0
	thumb_func_end ov01_021FF4FC

	thumb_func_start ov01_021FF54C
ov01_021FF54C: ; 0x021FF54C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x20]
	bl sub_0205F25C
	str r0, [r4, #4]
	ldr r0, [r4, #0x20]
	bl sub_0205F24C
	str r0, [r4, #8]
	ldr r0, [r4, #0x20]
	bl sub_0205F254
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x18]
	mov r1, #3
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x24]
	mov r1, #2
	ldr r0, [r4, #0x20]
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	bne _021FF5B2
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02023EA4
_021FF5B2:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FF54C

	thumb_func_start ov01_021FF5B8
ov01_021FF5B8: ; 0x021FF5B8
	ldr r3, _021FF5C0 ; =sub_02023DA4
	ldr r0, [r1, #0x24]
	bx r3
	nop
_021FF5C0: .word sub_02023DA4
	thumb_func_end ov01_021FF5B8

	thumb_func_start ov01_021FF5C4
ov01_021FF5C4: ; 0x021FF5C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r6, [r4, #0x20]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF5E4
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, r6, r7, pc}
_021FF5E4:
	add r0, r5, #0
	bl sub_02068D90
	add r7, r0, #0
	cmp r7, #1
	bne _021FF602
	add r0, r6, #0
	bl sub_0205F808
	cmp r0, #0
	bne _021FF602
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, r6, r7, pc}
_021FF602:
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	ldr r0, [r4, #0x24]
	bne _021FF61A
	mov r1, #0
	bl sub_02023EA4
	b _021FF620
_021FF61A:
	mov r1, #1
	bl sub_02023EA4
_021FF620:
	ldr r0, [r4]
	cmp r0, #0
	bne _021FF656
	mov r1, #1
	ldr r0, [r4, #0x24]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x24]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021FF656
	cmp r7, #0
	bne _021FF64E
	add r0, r5, #0
	bl ov01_021F1640
	pop {r3, r4, r5, r6, r7, pc}
_021FF64E:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_02023F1C
_021FF656:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FF5C4

	thumb_func_start ov01_021FF658
ov01_021FF658: ; 0x021FF658
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x20]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r4, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FF67C
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021FF67C:
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_0205F944
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0205F96C
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xe
	str r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x24]
	add r1, sp, #0xc
	bl sub_02023E50
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021FF658

	thumb_func_start ov01_021FF6B0
ov01_021FF6B0: ; 0x021FF6B0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FF6DC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF6B0

	thumb_func_start ov01_021FF6CC
ov01_021FF6CC: ; 0x021FF6CC
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FF724
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FF6CC

	thumb_func_start ov01_021FF6DC
ov01_021FF6DC: ; 0x021FF6DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0x79
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0x91
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0x14
	mov r3, #1
	bl ov01_021F1930
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FF720 ; =0x02209200
	mov r2, #6
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #8
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021FF720: .word 0x02209200
	thumb_func_end ov01_021FF6DC

	thumb_func_start ov01_021FF724
ov01_021FF724: ; 0x021FF724
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #6
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF724

	thumb_func_start ov01_021FF74C
ov01_021FF74C: ; 0x021FF74C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F52C
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xb
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x20]
	bl sub_0205F944
	add r0, r5, #0
	bl sub_0205F914
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F934
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #8
	bl sub_020611C8
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF7AC ; =0x022091EC
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FF7AC: .word 0x022091EC
	thumb_func_end ov01_021FF74C

	thumb_func_start ov01_021FF7B0
ov01_021FF7B0: ; 0x021FF7B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl sub_0205F24C
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F254
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x14]
	mov r1, #8
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FF7B0

	thumb_func_start ov01_021FF7F4
ov01_021FF7F4: ; 0x021FF7F4
	ldr r3, _021FF7FC ; =sub_02023DA4
	ldr r0, [r1, #0x20]
	bx r3
	nop
_021FF7FC: .word sub_02023DA4
	thumb_func_end ov01_021FF7F4

	thumb_func_start ov01_021FF800
ov01_021FF800: ; 0x021FF800
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _021FF82E
	mov r1, #1
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x20]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #9
	blt _021FF82E
	add r0, r5, #0
	bl ov01_021F1640
_021FF82E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FF800

	thumb_func_start ov01_021FF830
ov01_021FF830: ; 0x021FF830
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF830

	thumb_func_start ov01_021FF854
ov01_021FF854: ; 0x021FF854
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FF880
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF854

	thumb_func_start ov01_021FF870
ov01_021FF870: ; 0x021FF870
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FF8C8
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FF870

	thumb_func_start ov01_021FF880
ov01_021FF880: ; 0x021FF880
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0x7a
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #7
	mov r2, #0x92
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x15
	mov r3, #1
	bl ov01_021F1930
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FF8C4 ; =0x0220922C
	mov r2, #7
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #9
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021FF8C4: .word 0x0220922C
	thumb_func_end ov01_021FF880

	thumb_func_start ov01_021FF8C8
ov01_021FF8C8: ; 0x021FF8C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #7
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF8C8

	thumb_func_start ov01_021FF8F0
ov01_021FF8F0: ; 0x021FF8F0
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F914
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205F924
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0205F934
	str r0, [sp, #0x10]
	mov r1, #0
	add r0, sp, #8
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	sub r1, r1, #1
	add r0, sp, #0x28
	strb r1, [r0]
	add r0, r4, #0
	str r4, [sp, #0x18]
	bl ov01_021F1468
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xc
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x2c
	str r5, [sp, #0x20]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF960 ; =0x02209218
	add r0, r4, #0
	add r2, sp, #0x2c
	add r3, r6, #0
	bl ov01_021F1620
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FF960: .word 0x02209218
	thumb_func_end ov01_021FF8F0

	thumb_func_start ov01_021FF964
ov01_021FF964: ; 0x021FF964
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp, #8]
	add r4, r2, #0
	add r6, r3, #0
	bl ov01_021F146C
	add r7, r0, #0
	add r0, r5, #0
	str r4, [sp, #0xc]
	bl sub_0205F924
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r6, [sp, #0x14]
	bl sub_0205F914
	sub r1, r0, r4
	add r0, sp, #0xc
	strh r1, [r0, #0x1c]
	add r0, r5, #0
	bl sub_0205F934
	sub r1, r0, r6
	add r0, sp, #0xc
	strh r1, [r0, #0x1e]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021FF9AC
	add r0, r5, #0
	bl sub_0205F2A8
	add r1, sp, #0x2c
	strb r0, [r1]
	b _021FF9B4
_021FF9AC:
	mov r1, #0
	mvn r1, r1
	add r0, sp, #0x2c
	strb r1, [r0]
_021FF9B4:
	add r0, r7, #0
	str r7, [sp, #0x1c]
	bl ov01_021F1468
	str r0, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0xc
	bl ov01_021F1450
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, sp, #0x30
	str r5, [sp, #0x24]
	bl sub_0205F944
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FF9F0 ; =0x02209218
	ldr r3, [sp, #8]
	add r0, r7, #0
	add r2, sp, #0x30
	bl ov01_021F1620
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021FF9F0: .word 0x02209218
	thumb_func_end ov01_021FF964

	thumb_func_start ov01_021FF9F4
ov01_021FF9F4: ; 0x021FF9F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r4, #0
	add r6, r0, #0
	add r3, #0x18
	mov r2, #4
_021FFA08:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FFA08
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #0x30]
	bl sub_0205F25C
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl sub_0205F24C
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F968
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_0206121C
	str r0, [r4, #0x14]
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x12
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x28]
	mov r1, #9
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x3c]
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	bne _021FFA88
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023EA4
_021FFA88:
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #0
	bne _021FFAA8
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023F04
	mov r0, #2
	str r0, [r4]
_021FFAA8:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FF9F4

	thumb_func_start ov01_021FFAB0
ov01_021FFAB0: ; 0x021FFAB0
	ldr r3, _021FFAB8 ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FFAB8: .word sub_02023DA4
	thumb_func_end ov01_021FFAB0

	thumb_func_start ov01_021FFABC
ov01_021FFABC: ; 0x021FFABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldr r6, [r4, #0x30]
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFAE0
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFAE0:
	mov r1, #2
	add r0, r6, #0
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _021FFAF8
	mov r1, #0
	bl sub_02023EA4
	b _021FFAFE
_021FFAF8:
	mov r1, #1
	bl sub_02023EA4
_021FFAFE:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021FFB36
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r0, [r4, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	bl sub_0206121C
	str r0, [r4, #0x14]
	cmp r0, #1
	bne _021FFB36
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_02068DA8
_021FFB36:
	ldr r0, [r4]
	cmp r0, #0
	beq _021FFB48
	cmp r0, #1
	beq _021FFB6C
	cmp r0, #2
	beq _021FFB82
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFB48:
	mov r1, #1
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x3c]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #0xc
	blt _021FFBCE
	mov r0, #1
	add sp, #0x18
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021FFB6C:
	mov r1, #3
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xe
	bl sub_02023F1C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023F04
	mov r0, #2
	str r0, [r4]
_021FFB82:
	add r0, r6, #0
	bl sub_0205F914
	mov r1, #0x34
	ldrsh r1, [r4, r1]
	sub r7, r0, r1
	add r0, r6, #0
	bl sub_0205F934
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	sub r1, r0, r1
	ldr r0, [r4, #0x18]
	cmp r0, r7
	bne _021FFBA6
	ldr r0, [r4, #0x20]
	cmp r0, r1
	beq _021FFBB0
_021FFBA6:
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFBB0:
	mov r0, #0x38
	ldrsb r1, [r4, r0]
	sub r0, #0x39
	cmp r1, r0
	beq _021FFBCE
	add r0, r6, #0
	bl sub_0205F2A8
	mov r1, #0x38
	ldrsb r1, [r4, r1]
	cmp r1, r0
	beq _021FFBCE
	add r0, r5, #0
	bl ov01_021F1640
_021FFBCE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFABC

	thumb_func_start ov01_021FFBD4
ov01_021FFBD4: ; 0x021FFBD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFBF6
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_021FFBF6:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFBD4

	thumb_func_start ov01_021FFC0C
ov01_021FFC0C: ; 0x021FFC0C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FFC38
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFC0C

	thumb_func_start ov01_021FFC28
ov01_021FFC28: ; 0x021FFC28
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FFC80
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FFC28

	thumb_func_start ov01_021FFC38
ov01_021FFC38: ; 0x021FFC38
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x7b
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x93
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0x16
	mov r3, #1
	bl ov01_021F1930
	mov r0, #9
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021FFC7C ; =0x02209258
	mov r2, #8
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0xa
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021FFC7C: .word 0x02209258
	thumb_func_end ov01_021FFC38

	thumb_func_start ov01_021FFC80
ov01_021FFC80: ; 0x021FFC80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #8
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0xa
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFC80

	thumb_func_start ov01_021FFCA8
ov01_021FFCA8: ; 0x021FFCA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02068D98
	add r3, r4, #0
	add r6, r0, #0
	add r3, #0x18
	mov r2, #4
_021FFCBC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FFCBC
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r4, #0x30]
	bl sub_0205F25C
	str r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl sub_0205F24C
	str r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F254
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	bl sub_0205F968
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0
	bl sub_0206121C
	str r0, [r4, #0x14]
	mov r0, #0x1e
	ldr r1, [sp]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #4]
	mov r0, #0xd
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DA8
	ldr r0, [r4, #0x28]
	mov r1, #0xa
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x3c]
	mov r1, #2
	ldr r0, [r4, #0x30]
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	bne _021FFD46
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02023EA4
_021FFD46:
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #0
	bne _021FFD5E
	mov r1, #2
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F1C
	mov r0, #2
	str r0, [r4]
_021FFD5E:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021FFCA8

	thumb_func_start ov01_021FFD64
ov01_021FFD64: ; 0x021FFD64
	ldr r3, _021FFD6C ; =sub_02023DA4
	ldr r0, [r1, #0x3c]
	bx r3
	nop
_021FFD6C: .word sub_02023DA4
	thumb_func_end ov01_021FFD64

	thumb_func_start ov01_021FFD70
ov01_021FFD70: ; 0x021FFD70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r7, [r5, #0x30]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r7, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFD94
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFD94:
	mov r1, #2
	add r0, r7, #0
	lsl r1, r1, #8
	bl sub_0205F228
	cmp r0, #1
	ldr r0, [r5, #0x3c]
	bne _021FFDAC
	mov r1, #0
	bl sub_02023EA4
	b _021FFDB2
_021FFDAC:
	mov r1, #1
	bl sub_02023EA4
_021FFDB2:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021FFDEA
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	bl sub_0206121C
	str r0, [r5, #0x14]
	cmp r0, #1
	bne _021FFDEA
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02068DA8
_021FFDEA:
	ldr r0, [r5]
	cmp r0, #0
	beq _021FFDFC
	cmp r0, #1
	beq _021FFE20
	cmp r0, #2
	beq _021FFE36
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFDFC:
	mov r1, #1
	ldr r0, [r5, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r5, #0x3c]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #2
	blt _021FFE92
	mov r0, #1
	add sp, #0x18
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021FFE20:
	mov r1, #2
	ldr r0, [r5, #0x3c]
	lsl r1, r1, #0xc
	bl sub_02023F1C
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_02023F04
	mov r0, #2
	str r0, [r5]
_021FFE36:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	add r0, r7, #0
	bl sub_0205F0F8
	cmp r0, #0
	bne _021FFE50
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFE50:
	add r0, r7, #0
	bl sub_0205F914
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0205F934
	ldr r1, [r5, #0x18]
	cmp r1, r4
	bne _021FFE6A
	ldr r1, [r5, #0x20]
	cmp r1, r0
	beq _021FFE74
_021FFE6A:
	add r0, r6, #0
	bl ov01_021F1640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021FFE74:
	mov r0, #0x38
	ldrsb r1, [r5, r0]
	sub r0, #0x39
	cmp r1, r0
	beq _021FFE92
	add r0, r7, #0
	bl sub_0205F2A8
	mov r1, #0x38
	ldrsb r1, [r5, r1]
	cmp r1, r0
	beq _021FFE92
	add r0, r6, #0
	bl ov01_021F1640
_021FFE92:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFD70

	thumb_func_start ov01_021FFE98
ov01_021FFE98: ; 0x021FFE98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_0205F0A8
	cmp r0, #0
	bne _021FFEB8
	add r0, r5, #0
	bl ov01_021F1640
	add sp, #0xc
	pop {r4, r5, pc}
_021FFEB8:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_021FFE98

	thumb_func_start ov01_021FFECC
ov01_021FFECC: ; 0x021FFECC
	push {r3, r4, r5, lr}
	mov r1, #0x69
	mov r2, #0
	lsl r1, r1, #2
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_021FFEF8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FFECC

	thumb_func_start ov01_021FFEE8
ov01_021FFEE8: ; 0x021FFEE8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_021FFF38
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_021FFEE8

	thumb_func_start ov01_021FFEF8
ov01_021FFEF8: ; 0x021FFEF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r6, _021FFF34 ; =0x02209270
	str r0, [sp, #4]
	mov r7, #0
	add r4, r0, #4
	add r5, #0x54
_021FFF08:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r6]
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl ov01_021F19F4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02069978
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	add r5, #0x54
	cmp r7, #4
	blt _021FFF08
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FFF34: .word 0x02209270
	thumb_func_end ov01_021FFEF8

	thumb_func_start ov01_021FFF38
ov01_021FFF38: ; 0x021FFF38
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #4
_021FFF3E:
	add r0, r5, #0
	bl sub_02069784
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _021FFF3E
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFF38

	thumb_func_start ov01_021FFF50
ov01_021FFF50: ; 0x021FFF50
	mov r2, #0x54
	add r0, #0x54
	mul r2, r1
	add r0, r0, r2
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021FFF50

	thumb_func_start ov01_021FFF5C
ov01_021FFF5C: ; 0x021FFF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021F146C
	add r6, r0, #0
	bl ov01_021F1468
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205F914
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205F934
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, sp, #0x20
	bl sub_020611C8
	add r0, r7, #0
	add r1, sp, #0x20
	bl sub_0206121C
	add r0, r6, #0
	mov r1, #0xe
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	bl ov01_021F1450
	add r1, r4, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	bl ov01_021FFF50
	str r0, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021FFFC8 ; =0x02209280
	add r0, r6, #0
	add r2, sp, #0x20
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021FFFC8: .word 0x02209280
	thumb_func_end ov01_021FFF5C

	thumb_func_start ov01_021FFFCC
ov01_021FFFCC: ; 0x021FFFCC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02068D98
	add r3, r0, #0
	ldr r4, [r3, #0xc]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	bl sub_0205F24C
	str r0, [r5, #8]
	add r0, r4, #0
	bl sub_0205F254
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021FFFCC

	thumb_func_start ov01_021FFFFC
ov01_021FFFFC: ; 0x021FFFFC
	push {r4, lr}
	add r2, r1, #0
	ldr r4, [r2, #0x1c]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl sub_0205F0A8
	cmp r0, #1
	bne _02200018
	add r0, r4, #0
	mov r1, #0
	bl sub_02066420
_02200018:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021FFFFC

	thumb_func_start ov01_0220001C
ov01_0220001C: ; 0x0220001C
	bx lr
	.balign 4, 0
	thumb_func_end ov01_0220001C

	thumb_func_start ov01_02200020
ov01_02200020: ; 0x02200020
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #1
	beq _0220003A
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_020699BC
_0220003A:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_02200020

	thumb_func_start ov01_02200040
ov01_02200040: ; 0x02200040
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov01_021F1430
	add r4, r0, #0
	str r5, [r4]
	bl ov01_0220006C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_02200040

	thumb_func_start ov01_0220005C
ov01_0220005C: ; 0x0220005C
	push {r4, lr}
	add r4, r0, #0
	bl ov01_022000B4
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_0220005C

	thumb_func_start ov01_0220006C
ov01_0220006C: ; 0x0220006C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0x7c
	bl ov01_021F18D4
	ldr r0, [r4]
	mov r1, #9
	mov r2, #0x94
	bl ov01_021F1908
	ldr r0, [r4]
	mov r1, #0xa
	mov r2, #0x17
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022000B0 ; =0x022092A8
	mov r2, #9
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r1, #0xb
	add r3, r2, #0
	bl ov01_021F1758
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022000B0: .word 0x022092A8
	thumb_func_end ov01_0220006C

	thumb_func_start ov01_022000B4
ov01_022000B4: ; 0x022000B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F18FC
	ldr r0, [r4]
	mov r1, #9
	bl ov01_021F1924
	ldr r0, [r4]
	mov r1, #0xa
	bl ov01_021F1970
	ldr r0, [r4]
	mov r1, #0xb
	bl ov01_021F18C8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022000B4

	thumb_func_start ov01_022000DC
ov01_022000DC: ; 0x022000DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov01_021F146C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0205F52C
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xf
	str r4, [sp, #0x18]
	bl ov01_021F1450
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x20]
	bl sub_0205F944
	add r0, r5, #0
	bl sub_0205F914
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205F934
	add r1, r0, #0
	add r0, r6, #0
	add r2, sp, #8
	bl sub_020611C8
	add r0, r5, #0
	mov r1, #2
	bl sub_0205F09C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _0220013C ; =0x02209294
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov01_021F1620
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0220013C: .word 0x02209294
	thumb_func_end ov01_022000DC

	thumb_func_start ov01_02200140
ov01_02200140: ; 0x02200140
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl sub_0205F24C
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_0205F254
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	add r2, sp, #0
	bl ov01_021F1740
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov01_02200140

	thumb_func_start ov01_02200184
ov01_02200184: ; 0x02200184
	ldr r3, _0220018C ; =sub_02023DA4
	ldr r0, [r1, #0x20]
	bx r3
	nop
_0220018C: .word sub_02023DA4
	thumb_func_end ov01_02200184

	thumb_func_start ov01_02200190
ov01_02200190: ; 0x02200190
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _022001BE
	mov r1, #1
	ldr r0, [r4, #0x20]
	lsl r1, r1, #0xc
	bl sub_02023F04
	ldr r0, [r4, #0x20]
	bl sub_02023F70
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r0, #7
	blt _022001BE
	add r0, r5, #0
	bl ov01_021F1640
_022001BE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_02200190

	thumb_func_start ov01_022001C0
ov01_022001C0: ; 0x022001C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_02068DB8
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	add r1, sp, #0
	bl sub_02023E50
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022001C0

	thumb_func_start ov01_022001E4
ov01_022001E4: ; 0x022001E4
	push {r4, lr}
	mov r2, #0
	mov r1, #0x14
	add r3, r2, #0
	add r4, r0, #0
	bl ov01_021F1430
	str r4, [r0, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_022001E4

	thumb_func_start ov01_022001F8
ov01_022001F8: ; 0x022001F8
	push {r4, lr}
	add r4, r0, #0
	bl ov01_022002FC
	add r0, r4, #0
	bl ov01_021F1448
	pop {r4, pc}
	thumb_func_end ov01_022001F8

	thumb_func_start ov01_02200208
ov01_02200208: ; 0x02200208
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
	thumb_func_end ov01_02200208

	thumb_func_start ov01_02200210
ov01_02200210: ; 0x02200210
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _0220021E
	bl GF_AssertFail
_0220021E:
	pop {r3, pc}
	thumb_func_end ov01_02200210

	thumb_func_start ov01_02200220
ov01_02200220: ; 0x02200220
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov01_02200220

	thumb_func_start ov01_02200228
ov01_02200228: ; 0x02200228
	push {r3, lr}
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	bpl _02200236
	bl GF_AssertFail
_02200236:
	pop {r3, pc}
	thumb_func_end ov01_02200228

	thumb_func_start ov01_02200238
ov01_02200238: ; 0x02200238
	push {r3, lr}
	cmp r1, #0
	bne _02200244
	bl ov01_02200208
	pop {r3, pc}
_02200244:
	bl ov01_02200220
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_02200238

	thumb_func_start ov01_0220024C
ov01_0220024C: ; 0x0220024C
	push {r3, lr}
	cmp r1, #0
	bne _02200258
	bl ov01_02200210
	pop {r3, pc}
_02200258:
	bl ov01_02200228
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220024C

	thumb_func_start ov01_02200260
ov01_02200260: ; 0x02200260
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _022002A4
	mov r1, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r2, #0x76
	bl ov01_021F18D4
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0x8c
	bl ov01_021F1908
	mov r1, #1
	ldr r0, [r4, #0x10]
	mov r2, #0x11
	add r3, r1, #0
	bl ov01_021F1930
	mov r1, #1
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022002A8 ; =0x022092F0
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	add r3, r1, #0
	bl ov01_021F1758
_022002A4:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_022002A8: .word 0x022092F0
	thumb_func_end ov01_02200260

	thumb_func_start ov01_022002AC
ov01_022002AC: ; 0x022002AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022002F4
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	mov r2, #0x7d
	bl ov01_021F18D4
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	mov r2, #0x8c
	bl ov01_021F1908
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	mov r2, #0x18
	mov r3, #1
	bl ov01_021F1930
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022002F8 ; =0x022092F0
	mov r2, #0xa
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	add r3, r2, #0
	bl ov01_021F1758
_022002F4:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_022002F8: .word 0x022092F0
	thumb_func_end ov01_022002AC

	thumb_func_start ov01_022002FC
ov01_022002FC: ; 0x022002FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0220032A
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F18FC
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F1924
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F1970
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ov01_021F18C8
_0220032A:
	pop {r4, pc}
	thumb_func_end ov01_022002FC

	thumb_func_start ov01_0220032C
ov01_0220032C: ; 0x0220032C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0220035A
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	bl ov01_021F18FC
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	bl ov01_021F1924
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	bl ov01_021F1970
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl ov01_021F18C8
_0220035A:
	pop {r4, pc}
	thumb_func_end ov01_0220032C

	thumb_func_start ov01_0220035C
ov01_0220035C: ; 0x0220035C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _02200368
	bl ov01_02200260
_02200368:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220035C

	thumb_func_start ov01_0220036C
ov01_0220036C: ; 0x0220036C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02200378
	bl ov01_022002AC
_02200378:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220036C

	thumb_func_start ov01_0220037C
ov01_0220037C: ; 0x0220037C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _02200388
	bl ov01_022002FC
_02200388:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220037C

	thumb_func_start ov01_0220038C
ov01_0220038C: ; 0x0220038C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02200398
	bl ov01_0220032C
_02200398:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220038C

	thumb_func_start ov01_0220039C
ov01_0220039C: ; 0x0220039C
	push {r3, lr}
	cmp r1, #0
	bne _022003A8
	bl ov01_0220035C
	pop {r3, pc}
_022003A8:
	bl ov01_0220036C
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_0220039C

	thumb_func_start ov01_022003B0
ov01_022003B0: ; 0x022003B0
	push {r3, lr}
	cmp r1, #0
	bne _022003BC
	bl ov01_0220037C
	pop {r3, pc}
_022003BC:
	bl ov01_0220038C
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022003B0

	thumb_func_start ov01_022003C4
ov01_022003C4: ; 0x022003C4
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _022003F0 ; =0x022092C0
	add r4, sp, #0
	ldr r5, [r3]
	ldr r3, [r3, #4]
	str r5, [sp]
	str r3, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ov01_021F1740
	add r4, r0, #0
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022003F0: .word 0x022092C0
	thumb_func_end ov01_022003C4

	thumb_func_start ov01_022003F4
ov01_022003F4: ; 0x022003F4
	push {r3, lr}
	bl sub_02068D74
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov01_022003F4

	thumb_func_start ov01_02200400
ov01_02200400: ; 0x02200400
	push {r3, lr}
	bl sub_02068D74
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _02200416
	mov r1, #0
	bl sub_02023EA4
_02200416:
	pop {r3, pc}
	thumb_func_end ov01_02200400

	thumb_func_start ov01_02200418
ov01_02200418: ; 0x02200418
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02068D98
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_0220039C
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02068DB8
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl ov01_022003C4
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov01_02200238
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02023EA4
	add r0, r5, #0
	bl sub_02068D90
	cmp r0, #1
	bne _02200474
	ldr r0, _0220047C ; =0x000005DD
	bl PlaySE
_02200474:
	mov r0, #1
	add sp, #0xc

