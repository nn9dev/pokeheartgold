#include "save_arrays.h"
#include "save.h"
#include "unk_0202E41C.h"
#include "pokemon_storage_system.h"
#include "mystery_gift.h"
#include "unk_0202EB30.h"
#include "unk_02030A98.h"
#include "hall_of_fame.h"
#include "save_palpad.h"
#include "daycare.h"
#include "sav_system_info.h"
#include "bag.h"
#include "event_data.h"
#include "save_misc_data.h"
#include "pokedex.h"
#include "sav_chatot.h"
#include "roamer.h"
#include "friend_group.h"
#include "easy_chat.h"
#include "safari_zone.h"
#include "pokewalker.h"
#include "photo_album.h"
#include "save_follow_poke.h"
#include "save_trainer_card.h"
#include "save_pokegear.h"
#include "save_flypoints.h"
#include "save_trainer_house.h"
#include "save_special_ribbons.h"

#define DECL_CHUNK(prefix) extern u32 prefix##_Sizeof(void); extern void prefix##_Init(void *);
#define DECL_CHUNK_EX(sizefn, initfn) extern u32 sizefn(void); extern void initfn(void *);

DECL_CHUNK_EX(sub_020290B8, sub_020290C8)
DECL_CHUNK(Save_DressupData)
DECL_CHUNK(GameStats)
DECL_CHUNK_EX(sub_02031000, sub_02031008)
DECL_CHUNK_EX(sub_0202DB40, sub_0202DB44)
DECL_CHUNK_EX(sub_0202E41C, sub_0202E424)
DECL_CHUNK_EX(sub_0202E4F4, sub_0202E4FC)
DECL_CHUNK_EX(sub_0202C034, sub_0202C03C)
DECL_CHUNK_EX(sub_0202CA24, sub_0202CA2C)
DECL_CHUNK_EX(sub_0202EB30, sub_0202EB38)
DECL_CHUNK_EX(sub_02031AF0, sub_02031AF4)
DECL_CHUNK_EX(sub_0203170C, sub_02031710)
DECL_CHUNK_EX(sub_020318C8, sub_020318CC)
DECL_CHUNK(Save_Pokeathlon)
DECL_CHUNK(Save_ApricornBox)

const struct SaveChunkHeader gSaveChunkHeaders[] = {
    {
        SAVE_SYSINFO,
        0,
        (SAVESIZEFN)Save_SysInfo_Sizeof,
        (SAVEINITFN)Save_SysInfo_Init
    }, {
        SAVE_PLAYERDATA,
        0,
        (SAVESIZEFN)Save_PlayerData_Sizeof,
        (SAVEINITFN)Save_PlayerData_Init
    }, {
        SAVE_PARTY,
        0,
        (SAVESIZEFN)SaveArray_Party_Sizeof,
        (SAVEINITFN)SaveArray_Party_Init
    }, {
        SAVE_BAG,
        0,
        (SAVESIZEFN)BagSizeof,
        (SAVEINITFN)BagInit
    }, {
        SAVE_FLAGS,
        0,
        (SAVESIZEFN)SaveArray_Flags_Sizeof,
        (SAVEINITFN)SaveArray_Flags_Init
    }, {
        SAVE_FLYPOINTS,
        0,
        (SAVESIZEFN)Save_FlyPoints_Sizeof,
        (SAVEINITFN)Save_FlyPoints_Init
    }, {
        SAVE_POKEDEX,
        0,
        (SAVESIZEFN)Save_Pokedex_Sizeof,
        (SAVEINITFN)Save_Pokedex_Init
    }, {
        SAVE_DAYCARE,
        0,
        (SAVESIZEFN)Save_Daycare_Sizeof,
        (SAVEINITFN)Save_Daycare_Init
    }, {
        SAVE_PALPAD,
        0,
        (SAVESIZEFN)Save_PalPad_Sizeof,
        (SAVEINITFN)Save_PalPad_Init
    }, {
        SAVE_MISC,
        0,
        (SAVESIZEFN)Save_Misc_Sizeof,
        (SAVEINITFN)Save_Misc_Init
    }, {
        SAVE_MAP_OBJECTS,
        0,
        (SAVESIZEFN)Save_MapObjects_Sizeof,
        (SAVEINITFN)Save_MapObjects_Init
    }, {
        SAVE_UNK_11,
        0,
        (SAVESIZEFN)sub_020290B8,
        (SAVEINITFN)sub_020290C8
    }, {
        SAVE_DRESSUP_DATA,
        0,
        (SAVESIZEFN)Save_DressupData_Sizeof,
        (SAVEINITFN)Save_DressupData_Init
    }, {
        SAVE_MAILBOX,
        0,
        (SAVESIZEFN)Save_Mailbox_Sizeof,
        (SAVEINITFN)Save_Mailbox_Init
    }, {
        SAVE_FRIEND_GROUP,
        0,
        (SAVESIZEFN)Save_FriendGroup_Sizeof,
        (SAVEINITFN)Save_FriendGroup_Init
    }, {
        SAVE_TRAINER_CARD,
        0,
        (SAVESIZEFN)Save_TrainerCard_Sizeof,
        (SAVEINITFN)Save_TrainerCard_Init
    }, {
        SAVE_GAMESTATS,
        0,
        (SAVESIZEFN)GameStats_Sizeof,
        (SAVEINITFN)GameStats_Init
    }, {
        SAVE_SEAL_CASE,
        0,
        (SAVESIZEFN)Save_SealCase_Sizeof,
        (SAVEINITFN)Save_SealCase_Init
    }, {
        SAVE_CHATOT,
        0,
        (SAVESIZEFN)Save_Chatot_Sizeof,
        (SAVEINITFN)Save_Chatot_Init
    }, {
        SAVE_UNK_19,
        0,
        (SAVESIZEFN)sub_02031000,
        (SAVEINITFN)sub_02031008
    }, {
        SAVE_SPECIAL_RIBBONS,
        0,
        (SAVESIZEFN)Save_SpecialRibbons_Sizeof,
        (SAVEINITFN)Save_SpecialRibbons_Init
    }, {
        SAVE_ROAMER,
        0,
        (SAVESIZEFN)Save_Roamers_Sizeof,
        (SAVEINITFN)Save_Roamers_Init
    }, {
        SAVE_UNK_22,
        0,
        (SAVESIZEFN)sub_0202DB40,
        (SAVEINITFN)sub_0202DB44
    }, {
        SAVE_UNK_23,
        0,
        (SAVESIZEFN)sub_0202E41C,
        (SAVEINITFN)sub_0202E424
    }, {
        SAVE_UNK_24,
        0,
        (SAVESIZEFN)sub_0202E4F4,
        (SAVEINITFN)sub_0202E4FC
    }, {
        SAVE_UNK_25,
        0,
        (SAVESIZEFN)sub_0202C034,
        (SAVEINITFN)sub_0202C03C
    }, {
        SAVE_UNK_26,
        0,
        (SAVESIZEFN)sub_0202CA24,
        (SAVEINITFN)sub_0202CA2C
    }, {
        SAVE_MYSTERY_GIFT,
        0,
        (SAVESIZEFN)Save_MysteryGift_Sizeof,
        (SAVEINITFN)Save_MysteryGift_Init
    }, {
        SAVE_UNK_28,
        0,
        (SAVESIZEFN)sub_0202EB30,
        (SAVEINITFN)sub_0202EB38
    }, {
        SAVE_POKEATHLON_FRIENDSHIP_RECORDS,
        0,
        (SAVESIZEFN)sub_02031AF0,
        (SAVEINITFN)sub_02031AF4
    }, {
        SAVE_EASY_CHAT,
        0,
        (SAVESIZEFN)Save_EasyChat_Sizeof,
        (SAVEINITFN)Save_EasyChat_Init
    }, {
        SAVE_UNK_31,
        0,
        (SAVESIZEFN)sub_0203170C,
        (SAVEINITFN)sub_02031710
    }, {
        SAVE_UNK_32,
        0,
        (SAVESIZEFN)sub_020318C8,
        (SAVEINITFN)sub_020318CC
    }, {
        SAVE_FOLLOW_POKE,
        0,
        (SAVESIZEFN)Save_FollowPoke_Sizeof,
        (SAVEINITFN)Save_FollowPoke_Init
    }, {
        SAVE_POKEGEAR,
        0,
        (SAVESIZEFN)SaveData_GSPlayerMisc_Sizeof,
        (SAVEINITFN)SaveData_GSPlayerMisc_Init
    }, {
        SAVE_SAFARI_ZONE,
        0,
        (SAVESIZEFN)Save_SafariZone_Sizeof,
        (SAVEINITFN)Save_SafariZone_Init
    }, {
        SAVE_PHOTO_ALBUM,
        0,
        (SAVESIZEFN)Save_PhotoAlbum_Sizeof,
        (SAVEINITFN)Save_PhotoAlbum_Init
    }, {
        SAVE_POKEATHLON,
        0,
        (SAVESIZEFN)Save_Pokeathlon_Sizeof,
        (SAVEINITFN)Save_Pokeathlon_Init
    }, {
        SAVE_APRICORN_BOX,
        0,
        (SAVESIZEFN)Save_ApricornBox_Sizeof,
        (SAVEINITFN)Save_ApricornBox_Init
    }, {
        SAVE_POKEWALKER,
        0,
        (SAVESIZEFN)Pokewalker_Sizeof,
        (SAVEINITFN)Pokewalker_Init
    }, {
        SAVE_TRAINER_HOUSE,
        0,
        (SAVESIZEFN)Save_TrainerHouse_Sizeof,
        (SAVEINITFN)Save_TrainerHouse_Init
    }, {
        SAVE_PCSTORAGE,
        1,
        (SAVESIZEFN)PCStorage_Sizeof,
        (SAVEINITFN)PCStorage_Init
    },
};
const int gNumSaveChunkHeaders = NELEMS(gSaveChunkHeaders);

struct UnkStruct_0202E474 *sub_020270C4(SAVEDATA *saveData) {
    SaveSubstruct_AssertCRC(SAVE_UNK_23);
    return SaveArray_Get(saveData, SAVE_UNK_23);
}

PC_STORAGE *GetStoragePCPointer(SAVEDATA *saveData) {
    return SaveArray_Get(saveData, SAVE_PCSTORAGE);
}

MYSTERY_GIFT_SAVE *Save_MysteryGift_Get(SAVEDATA *saveData) {
    SaveSubstruct_AssertCRC(SAVE_MYSTERY_GIFT);
    return SaveArray_Get(saveData, SAVE_MYSTERY_GIFT);
}

struct UnkStruct_0202EB30 *sub_020270F8(SAVEDATA *saveData) {
    return SaveArray_Get(saveData, SAVE_UNK_28);
}

DECL_CHUNK_EX(sub_020312A4, sub_020312AC)
DECL_CHUNK_EX(sub_0202FBCC, sub_0202FBD4)

const struct ExtraSaveChunkHeader gExtraSaveChunkHeaders[] = {
    { 0, SAVE_PAGE_MAX, (SAVESIZEFN)Save_HOF_Sizeof, (SAVEINITFN)Save_HOF_Init },
    { 1, SAVE_PAGE_MAX + 3, (SAVESIZEFN)sub_020312A4, (SAVEINITFN)sub_020312AC },
    { 2, SAVE_PAGE_MAX + 4, (SAVESIZEFN)sub_0202FBCC, (SAVEINITFN)sub_0202FBD4 },
    { 3, SAVE_PAGE_MAX + 6, (SAVESIZEFN)sub_0202FBCC, (SAVEINITFN)sub_0202FBD4 },
    { 4, SAVE_PAGE_MAX + 8, (SAVESIZEFN)sub_0202FBCC, (SAVEINITFN)sub_0202FBD4 },
    { 5, SAVE_PAGE_MAX + 10, (SAVESIZEFN)sub_0202FBCC, (SAVEINITFN)sub_0202FBD4 },
};

const int gNumExtraSaveChunkHeaders = NELEMS(gExtraSaveChunkHeaders);

HALL_OF_FAME *LoadHallOfFame(SAVEDATA *saveData, HeapID heapId, int *ret_p) {
    return ReadExtraSaveChunk(saveData, heapId, 0, ret_p);
}

int SaveHallOfFame(SAVEDATA *saveData, HALL_OF_FAME *hallOfFame) {
    return WriteExtraSaveChunk(saveData, 0, hallOfFame);
}

struct UnkStruct_0202FBCC *sub_0202711C(SAVEDATA *saveData, HeapID heapId, int *ret_p, int idx) {
    int sp4;
    return sub_020284A4(saveData, heapId, idx + 2, ret_p, &sp4);
}

int sub_02027134(SAVEDATA *saveData, struct UnkStruct_0202FBCC *data, int idx) {
    return sub_02028230(saveData, idx + 2, data);
}

struct UnkStruct_02030A98 *sub_02027144(SAVEDATA *saveData, HeapID heapId, int *ret_p) {
    int sp4;
    return sub_020284A4(saveData, heapId, 1, ret_p, &sp4);
}

int sub_02027158(SAVEDATA *saveData, struct UnkStruct_02030A98 *data) {
    return sub_02028230(saveData, 1, data);
}

u32 PCStorage_GetSizeOfBox(void) {
    return sub_02074120();
}

u32 PCStorage_GetNumBoxes(void) {
    return NUM_BOXES;
}

u32 Save_GetPCBoxModifiedFlags(SAVEDATA *saveData) {
    PC_STORAGE *pcStorage = SaveArray_Get(saveData, SAVE_PCSTORAGE);
    return PCStorage_GetBoxModifiedFlags(pcStorage);
}

void Save_ResetPCBoxModifiedFlags(SAVEDATA *saveData) {
    PC_STORAGE *pcStorage = SaveArray_Get(saveData, SAVE_PCSTORAGE);
    PCStorage_ResetBoxModifiedFlags(pcStorage);
}

void Save_SetAllPCBoxesModified(SAVEDATA *saveData) {
    PC_STORAGE *pcStorage = SaveArray_Get(saveData, SAVE_PCSTORAGE);
    PCStorage_SetAllBoxesModified(pcStorage);
}

void sub_020271A0(SAVEDATA *saveData) {
    PC_STORAGE *pcStorage = SaveArray_Get(saveData, SAVE_PCSTORAGE);
    sub_02074128(pcStorage);
}
