#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T08R0401.h"
#include "msgdata/msg/msg_0517_T08R0401.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T08R0401_000
	scrdef scr_seq_T08R0401_001
	scrdef_end

scr_seq_T08R0401_000:
	simple_npc_msg msg_0517_T08R0401_00000
	end

scr_seq_T08R0401_001:
	simple_npc_msg msg_0517_T08R0401_00001
	end
	.balign 4, 0