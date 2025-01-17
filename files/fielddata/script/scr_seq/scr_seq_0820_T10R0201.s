#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T10R0201.h"
#include "msgdata/msg/msg_0523_T10R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T10R0201_000
	scrdef scr_seq_T10R0201_001
	scrdef scr_seq_T10R0201_002
	scrdef_end

scr_seq_T10R0201_002:
	goto_if_set FLAG_DEFEATED_WILL, _0023
	scrcmd_375 obj_T10R0201_stop
	scrcmd_375 obj_T10R0201_stop_2
	end

_0023:
	end

scr_seq_T10R0201_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0060
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_WILLS_ROOM_RETREAT
	show_person obj_T10R0201_babyboy1_11
	setvar VAR_TEMP_x4001, 1
	releaseall
	end
	.byte 0x00, 0x00, 0x00

_0060:
	step 12, 6
	step_end
scr_seq_T10R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_DEFEATED_WILL, _00D1
	npc_msg msg_0523_T10R0201_00000
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _009B
	trainer_battle TRAINER_ELITE_FOUR_WILL_WILL_2, 0, 0, 0
	goto _00A3

_009B:
	trainer_battle TRAINER_ELITE_FOUR_WILL_WILL, 0, 0, 0
_00A3:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00DC
	setflag FLAG_DEFEATED_WILL
	npc_msg msg_0523_T10R0201_00001
	closemsg
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person obj_T10R0201_leag_door2
	hide_person obj_T10R0201_stop
	hide_person obj_T10R0201_stop_2
	releaseall
	end

_00D1:
	npc_msg msg_0523_T10R0201_00002
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00DC:
	white_out
	releaseall
	end
	.balign 4, 0
