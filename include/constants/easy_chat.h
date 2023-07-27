#ifndef POKEHEARTGOLD_CONSTANTS_EASY_CHAT_H
#define POKEHEARTGOLD_CONSTANTS_EASY_CHAT_H

#include "constants/species.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/abilities.h"

#define EC_GROUP_POKEMON (0)
#define EC_GROUP_MOVE (1)
#define EC_GROUP_TYPE (2)
#define EC_GROUP_ABILITY (3)
#define EC_GROUP_TRAINER (4)
#define EC_GROUP_PEOPLE (5)
#define EC_GROUP_GREETINGS (6)
#define EC_GROUP_LIFESTYLE (7)
#define EC_GROUP_FEELINGS (8)
#define EC_GROUP_TOUGH_WORDS (9)
#define EC_GROUP_UNION (10)

#define EC_WORDS_POKEMON_MIN (0)
#define EC_WORDS_POKEMON_MAX (496)
#define EC_WORDS_POKEMON_COUNT (496)
#define EC_WORDS_MOVE_MIN (496)
#define EC_WORDS_MOVE_MAX (964)
#define EC_WORDS_MOVE_COUNT (468)
#define EC_WORDS_TYPE_MIN (964)
#define EC_WORDS_TYPE_MAX (982)
#define EC_WORDS_TYPE_COUNT (18)
#define EC_WORDS_ABILITY_MIN (982)
#define EC_WORDS_ABILITY_MAX (1106)
#define EC_WORDS_ABILITY_COUNT (124)
#define EC_WORDS_TRAINER_MIN (1106)
#define EC_WORDS_TRAINER_MAX (1144)
#define EC_WORDS_TRAINER_COUNT (38)
#define EC_WORDS_PEOPLE_MIN (1144)
#define EC_WORDS_PEOPLE_MAX (1182)
#define EC_WORDS_PEOPLE_COUNT (38)
#define EC_WORDS_GREETINGS_MIN (1182)
#define EC_WORDS_GREETINGS_MAX (1289)
#define EC_WORDS_GREETINGS_COUNT (107)
#define EC_WORDS_LIFESTYLE_MIN (1289)
#define EC_WORDS_LIFESTYLE_MAX (1393)
#define EC_WORDS_LIFESTYLE_COUNT (104)
#define EC_WORDS_FEELINGS_MIN (1393)
#define EC_WORDS_FEELINGS_MAX (1440)
#define EC_WORDS_FEELINGS_COUNT (47)
#define EC_WORDS_TOUGH_WORDS_MIN (1440)
#define EC_WORDS_TOUGH_WORDS_MAX (1472)
#define EC_WORDS_TOUGH_WORDS_COUNT (32)
#define EC_WORDS_UNION_MIN (1472)
#define EC_WORDS_UNION_MAX (1495)
#define EC_WORDS_UNION_COUNT (23)

#define EC_WORD_POKEMON(species) (0+species)

#define EC_WORD_MOVE(move) (496+move)

#define EC_WORD_TYPE(type) (964+type)

#define EC_WORD_ABILITY(ability) (982+ability)

#define EC_WORD_TRAINER_MATCH_UP (1106)
#define EC_WORD_TRAINER_NO_1 (1107)
#define EC_WORD_TRAINER_PREPARATION (1108)
#define EC_WORD_TRAINER_WINS (1109)
#define EC_WORD_TRAINER_NO_MATCH (1110)
#define EC_WORD_TRAINER_SPIRIT (1111)
#define EC_WORD_TRAINER_ACE_CARD (1112)
#define EC_WORD_TRAINER_COME_ON (1113)
#define EC_WORD_TRAINER_ATTACK (1114)
#define EC_WORD_TRAINER_SURRENDER (1115)
#define EC_WORD_TRAINER_COURAGE (1116)
#define EC_WORD_TRAINER_TALENT (1117)
#define EC_WORD_TRAINER_STRATEGY (1118)
#define EC_WORD_TRAINER_MATCH (1119)
#define EC_WORD_TRAINER_VICTORY (1120)
#define EC_WORD_TRAINER_SENSE (1121)
#define EC_WORD_TRAINER_VERSUS (1122)
#define EC_WORD_TRAINER_FIGHTS (1123)
#define EC_WORD_TRAINER_POWER (1124)
#define EC_WORD_TRAINER_CHALLENGE (1125)
#define EC_WORD_TRAINER_STRONG (1126)
#define EC_WORD_TRAINER_TAKE_IT_EASY (1127)
#define EC_WORD_TRAINER_FOE (1128)
#define EC_WORD_TRAINER_GENIUS (1129)
#define EC_WORD_TRAINER_LEGEND (1130)
#define EC_WORD_TRAINER_BATTLE (1131)
#define EC_WORD_TRAINER_FIGHT (1132)
#define EC_WORD_TRAINER_REVIVE (1133)
#define EC_WORD_TRAINER_POINTS (1134)
#define EC_WORD_TRAINER_SERIOUS (1135)
#define EC_WORD_TRAINER_LOSS (1136)
#define EC_WORD_TRAINER_PARTNER (1137)
#define EC_WORD_TRAINER_INVINCIBLE (1138)
#define EC_WORD_TRAINER_EASY (1139)
#define EC_WORD_TRAINER_WEAK (1140)
#define EC_WORD_TRAINER_EASY_WIN (1141)
#define EC_WORD_TRAINER_MOVE (1142)
#define EC_WORD_TRAINER_TRAINER (1143)

#define EC_WORD_PEOPLE_OPPONENT (1144)
#define EC_WORD_PEOPLE_I (1145)
#define EC_WORD_PEOPLE_YOU (1146)
#define EC_WORD_PEOPLE_MOTHER (1147)
#define EC_WORD_PEOPLE_GRANDFATHER (1148)
#define EC_WORD_PEOPLE_UNCLE (1149)
#define EC_WORD_PEOPLE_FATHER (1150)
#define EC_WORD_PEOPLE_BOY (1151)
#define EC_WORD_PEOPLE_ADULT (1152)
#define EC_WORD_PEOPLE_BROTHER (1153)
#define EC_WORD_PEOPLE_SISTER (1154)
#define EC_WORD_PEOPLE_GRANDMOTHER (1155)
#define EC_WORD_PEOPLE_AUNT (1156)
#define EC_WORD_PEOPLE_PARENT (1157)
#define EC_WORD_PEOPLE_OLD_MAN (1158)
#define EC_WORD_PEOPLE_ME (1159)
#define EC_WORD_PEOPLE_GIRL (1160)
#define EC_WORD_PEOPLE_GAL (1161)
#define EC_WORD_PEOPLE_FAMILY (1162)
#define EC_WORD_PEOPLE_HER (1163)
#define EC_WORD_PEOPLE_HIM (1164)
#define EC_WORD_PEOPLE_YOU_2 (1165)
#define EC_WORD_PEOPLE_SIBLINGS (1166)
#define EC_WORD_PEOPLE_KIDS (1167)
#define EC_WORD_PEOPLE_MR_ (1168)
#define EC_WORD_PEOPLE_MS_ (1169)
#define EC_WORD_PEOPLE_MYSELF (1170)
#define EC_WORD_PEOPLE_WHO (1171)
#define EC_WORD_PEOPLE_FRIEND (1172)
#define EC_WORD_PEOPLE_ALLY (1173)
#define EC_WORD_PEOPLE_PERSON (1174)
#define EC_WORD_PEOPLE_KIDS_2 (1175)
#define EC_WORD_PEOPLE_I_2 (1176)
#define EC_WORD_PEOPLE_EVERYONE (1177)
#define EC_WORD_PEOPLE_RIVAL (1178)
#define EC_WORD_PEOPLE_I_3 (1179)
#define EC_WORD_PEOPLE_I_4 (1180)
#define EC_WORD_PEOPLE_BABY (1181)

#define EC_WORD_GREETINGS_KONNICHIWA (1182)
#define EC_WORD_GREETINGS_HELLO (1183)
#define EC_WORD_GREETINGS_BONJOUR (1184)
#define EC_WORD_GREETINGS_CIAO (1185)
#define EC_WORD_GREETINGS_HALLO (1186)
#define EC_WORD_GREETINGS_HOLA (1187)
#define EC_WORD_GREETINGS_OH_WELL (1188)
#define EC_WORD_GREETINGS_AAH (1189)
#define EC_WORD_GREETINGS_AHAHA (1190)
#define EC_WORD_GREETINGS_HUH_ (1191)
#define EC_WORD_GREETINGS_THANKS (1192)
#define EC_WORD_GREETINGS_NO_PROBLEM (1193)
#define EC_WORD_GREETINGS_NOPE (1194)
#define EC_WORD_GREETINGS_YES (1195)
#define EC_WORD_GREETINGS_HERE_GOES (1196)
#define EC_WORD_GREETINGS_LET_S_GO (1197)
#define EC_WORD_GREETINGS_HERE_I_COME (1198)
#define EC_WORD_GREETINGS_YEAH (1199)
#define EC_WORD_GREETINGS_WELCOME (1200)
#define EC_WORD_GREETINGS_URGH (1201)
#define EC_WORD_GREETINGS_LET_ME_THINK (1202)
#define EC_WORD_GREETINGS_HMM (1203)
#define EC_WORD_GREETINGS_WHOA (1204)
#define EC_WORD_GREETINGS_WROOOAAR_ (1205)
#define EC_WORD_GREETINGS_WOW (1206)
#define EC_WORD_GREETINGS_SNICKER (1207)
#define EC_WORD_GREETINGS_CUTE_LAUGH (1208)
#define EC_WORD_GREETINGS_UNBELIEVABLE (1209)
#define EC_WORD_GREETINGS_CRIES (1210)
#define EC_WORD_GREETINGS_OK (1211)
#define EC_WORD_GREETINGS_AGREE (1212)
#define EC_WORD_GREETINGS_EH_ (1213)
#define EC_WORD_GREETINGS_BOO_HOO (1214)
#define EC_WORD_GREETINGS_HEHEHE (1215)
#define EC_WORD_GREETINGS_HEY (1216)
#define EC_WORD_GREETINGS_OH_YEAH (1217)
#define EC_WORD_GREETINGS_OH_WOW_ (1218)
#define EC_WORD_GREETINGS_HEEEY (1219)
#define EC_WORD_GREETINGS_GREETINGS (1220)
#define EC_WORD_GREETINGS_OOPS (1221)
#define EC_WORD_GREETINGS_WELL_DONE (1222)
#define EC_WORD_GREETINGS_OH_MY (1223)
#define EC_WORD_GREETINGS_EEK (1224)
#define EC_WORD_GREETINGS_YAAAH (1225)
#define EC_WORD_GREETINGS_GIGGLE (1226)
#define EC_WORD_GREETINGS_GIVE_ME (1227)
#define EC_WORD_GREETINGS_GWAHAHAHA (1228)
#define EC_WORD_GREETINGS_UGH (1229)
#define EC_WORD_GREETINGS_SORRY (1230)
#define EC_WORD_GREETINGS_FORGIVE_ME (1231)
#define EC_WORD_GREETINGS_I_M_SORRY (1232)
#define EC_WORD_GREETINGS_HEY_ (1233)
#define EC_WORD_GREETINGS_GOOD_BYE (1234)
#define EC_WORD_GREETINGS_THANK_YOU (1235)
#define EC_WORD_GREETINGS_I_VE_ARRIVED (1236)
#define EC_WORD_GREETINGS_WEEP (1237)
#define EC_WORD_GREETINGS_PARDON_ME (1238)
#define EC_WORD_GREETINGS_SO_SORRY (1239)
#define EC_WORD_GREETINGS_SEE_YA (1240)
#define EC_WORD_GREETINGS_EXCUSE_ME (1241)
#define EC_WORD_GREETINGS_OKAY_THEN (1242)
#define EC_WORD_GREETINGS_TUT (1243)
#define EC_WORD_GREETINGS_BLUSH (1244)
#define EC_WORD_GREETINGS_GO_AHEAD (1245)
#define EC_WORD_GREETINGS_CHEERS (1246)
#define EC_WORD_GREETINGS_HEY__2 (1247)
#define EC_WORD_GREETINGS_WHAT_S_UP_ (1248)
#define EC_WORD_GREETINGS_HUH__2 (1249)
#define EC_WORD_GREETINGS_NO (1250)
#define EC_WORD_GREETINGS_SIGH (1251)
#define EC_WORD_GREETINGS_HI (1252)
#define EC_WORD_GREETINGS_YEP (1253)
#define EC_WORD_GREETINGS_YEAH_YEAH (1254)
#define EC_WORD_GREETINGS_BYE_BYE (1255)
#define EC_WORD_GREETINGS_MEET_YOU (1256)
#define EC_WORD_GREETINGS_HAHAHA (1257)
#define EC_WORD_GREETINGS_AIYEEH (1258)
#define EC_WORD_GREETINGS_HIYAH (1259)
#define EC_WORD_GREETINGS_MUHAHAHA (1260)
#define EC_WORD_GREETINGS_LOL (1261)
#define EC_WORD_GREETINGS_SNORT (1262)
#define EC_WORD_GREETINGS_HUMPH (1263)
#define EC_WORD_GREETINGS_HEY_2 (1264)
#define EC_WORD_GREETINGS_HE_HE_HE (1265)
#define EC_WORD_GREETINGS_HEH (1266)
#define EC_WORD_GREETINGS_HOHOHO (1267)
#define EC_WORD_GREETINGS_THERE_YOU_GO (1268)
#define EC_WORD_GREETINGS_OH_DEAR (1269)
#define EC_WORD_GREETINGS_BYE_FOR_NOW (1270)
#define EC_WORD_GREETINGS_ANGRY (1271)
#define EC_WORD_GREETINGS_MUFUFU (1272)
#define EC_WORD_GREETINGS_MMM (1273)
#define EC_WORD_GREETINGS_HELLO_ (1274)
#define EC_WORD_GREETINGS_HI_THERE (1275)
#define EC_WORD_GREETINGS_NO_WAY (1276)
#define EC_WORD_GREETINGS_YAHOO (1277)
#define EC_WORD_GREETINGS_YO (1278)
#define EC_WORD_GREETINGS_WELCOME_2 (1279)
#define EC_WORD_GREETINGS_OK_2 (1280)
#define EC_WORD_GREETINGS_REGARDS (1281)
#define EC_WORD_GREETINGS_LALALA (1282)
#define EC_WORD_GREETINGS_YAY (1283)
#define EC_WORD_GREETINGS_WAIL (1284)
#define EC_WORD_GREETINGS_WOW_2 (1285)
#define EC_WORD_GREETINGS_BOO_ (1286)
#define EC_WORD_GREETINGS_WAHAHA (1287)
#define EC_WORD_GREETINGS__ (1288)

#define EC_WORD_LIFESTYLE_IDOL (1289)
#define EC_WORD_LIFESTYLE_TOMORROW (1290)
#define EC_WORD_LIFESTYLE_PLAYING (1291)
#define EC_WORD_LIFESTYLE_ANIME (1292)
#define EC_WORD_LIFESTYLE_JOB (1293)
#define EC_WORD_LIFESTYLE_SONG (1294)
#define EC_WORD_LIFESTYLE_HOME (1295)
#define EC_WORD_LIFESTYLE_MOVIE (1296)
#define EC_WORD_LIFESTYLE_SWEETS (1297)
#define EC_WORD_LIFESTYLE_MONEY (1298)
#define EC_WORD_LIFESTYLE_POCKET_MONEY (1299)
#define EC_WORD_LIFESTYLE_CHIT_CHAT (1300)
#define EC_WORD_LIFESTYLE_TALK (1301)
#define EC_WORD_LIFESTYLE_BATH (1302)
#define EC_WORD_LIFESTYLE_PLAY_HOUSE (1303)
#define EC_WORD_LIFESTYLE_TOYS (1304)
#define EC_WORD_LIFESTYLE_MUSIC (1305)
#define EC_WORD_LIFESTYLE_CARDS (1306)
#define EC_WORD_LIFESTYLE_SHOPPING (1307)
#define EC_WORD_LIFESTYLE_CONVERSATION (1308)
#define EC_WORD_LIFESTYLE_SCHOOL (1309)
#define EC_WORD_LIFESTYLE_CAMERA (1310)
#define EC_WORD_LIFESTYLE_VIEWING (1311)
#define EC_WORD_LIFESTYLE_SPECTATE (1312)
#define EC_WORD_LIFESTYLE_ANNIVERSARY (1313)
#define EC_WORD_LIFESTYLE_YESTERDAY (1314)
#define EC_WORD_LIFESTYLE_TODAY (1315)
#define EC_WORD_LIFESTYLE_HABIT (1316)
#define EC_WORD_LIFESTYLE_GROUP (1317)
#define EC_WORD_LIFESTYLE_GOURMET (1318)
#define EC_WORD_LIFESTYLE_GAME (1319)
#define EC_WORD_LIFESTYLE_WORD (1320)
#define EC_WORD_LIFESTYLE_COLLECTION (1321)
#define EC_WORD_LIFESTYLE_STORE (1322)
#define EC_WORD_LIFESTYLE_COMPLETE (1323)
#define EC_WORD_LIFESTYLE_SERVICE (1324)
#define EC_WORD_LIFESTYLE_MAGAZINE (1325)
#define EC_WORD_LIFESTYLE_WALK (1326)
#define EC_WORD_LIFESTYLE_WORK (1327)
#define EC_WORD_LIFESTYLE_SYSTEM (1328)
#define EC_WORD_LIFESTYLE_BICYCLE (1329)
#define EC_WORD_LIFESTYLE_TRAINING (1330)
#define EC_WORD_LIFESTYLE_CLASS (1331)
#define EC_WORD_LIFESTYLE_LESSONS (1332)
#define EC_WORD_LIFESTYLE_HOBBY (1333)
#define EC_WORD_LIFESTYLE_INFORMATION (1334)
#define EC_WORD_LIFESTYLE_SPORTS (1335)
#define EC_WORD_LIFESTYLE_DAILY_LIFE (1336)
#define EC_WORD_LIFESTYLE_TEACHER (1337)
#define EC_WORD_LIFESTYLE_SOFTWARE (1338)
#define EC_WORD_LIFESTYLE_SONGS (1339)
#define EC_WORD_LIFESTYLE_DIET (1340)
#define EC_WORD_LIFESTYLE_TOURNAMENT (1341)
#define EC_WORD_LIFESTYLE_TREASURE (1342)
#define EC_WORD_LIFESTYLE_TRAVEL (1343)
#define EC_WORD_LIFESTYLE_BIRTHDAY (1344)
#define EC_WORD_LIFESTYLE_DANCE (1345)
#define EC_WORD_LIFESTYLE_CHANNEL (1346)
#define EC_WORD_LIFESTYLE_FISHING (1347)
#define EC_WORD_LIFESTYLE_DATE (1348)
#define EC_WORD_LIFESTYLE_LETTER (1349)
#define EC_WORD_LIFESTYLE_EVENT (1350)
#define EC_WORD_LIFESTYLE_DESIGN (1351)
#define EC_WORD_LIFESTYLE_DIGITAL (1352)
#define EC_WORD_LIFESTYLE_TEST (1353)
#define EC_WORD_LIFESTYLE_DEPT_STORE (1354)
#define EC_WORD_LIFESTYLE_TELEVISION (1355)
#define EC_WORD_LIFESTYLE_TRAIN (1356)
#define EC_WORD_LIFESTYLE_PHONE (1357)
#define EC_WORD_LIFESTYLE_ITEM (1358)
#define EC_WORD_LIFESTYLE_NAME (1359)
#define EC_WORD_LIFESTYLE_NEWS (1360)
#define EC_WORD_LIFESTYLE_POPULARITY (1361)
#define EC_WORD_LIFESTYLE_STUFFED_TOY (1362)
#define EC_WORD_LIFESTYLE_PARTY (1363)
#define EC_WORD_LIFESTYLE_COMPUTER (1364)
#define EC_WORD_LIFESTYLE_FLOWERS (1365)
#define EC_WORD_LIFESTYLE_HERO (1366)
#define EC_WORD_LIFESTYLE_NAP (1367)
#define EC_WORD_LIFESTYLE_HEROINE (1368)
#define EC_WORD_LIFESTYLE_FASHION (1369)
#define EC_WORD_LIFESTYLE_STUDY (1370)
#define EC_WORD_LIFESTYLE_ADVENTURE (1371)
#define EC_WORD_LIFESTYLE_BOARD (1372)
#define EC_WORD_LIFESTYLE_BALL (1373)
#define EC_WORD_LIFESTYLE_BOOK (1374)
#define EC_WORD_LIFESTYLE_MACHINE (1375)
#define EC_WORD_LIFESTYLE_FESTIVAL (1376)
#define EC_WORD_LIFESTYLE_COMICS (1377)
#define EC_WORD_LIFESTYLE_MAIL (1378)
#define EC_WORD_LIFESTYLE_MESSAGE (1379)
#define EC_WORD_LIFESTYLE_STORY (1380)
#define EC_WORD_LIFESTYLE_PROMISE (1381)
#define EC_WORD_LIFESTYLE_HOLIDAY (1382)
#define EC_WORD_LIFESTYLE_DREAM (1383)
#define EC_WORD_LIFESTYLE_KINDERGARTEN (1384)
#define EC_WORD_LIFESTYLE_PLANS (1385)
#define EC_WORD_LIFESTYLE_LIFE (1386)
#define EC_WORD_LIFESTYLE_RADIO (1387)
#define EC_WORD_LIFESTYLE_CRAZE (1388)
#define EC_WORD_LIFESTYLE_VACATION (1389)
#define EC_WORD_LIFESTYLE_LOOKS (1390)
#define EC_WORD_LIFESTYLE_RENTAL (1391)
#define EC_WORD_LIFESTYLE_WORLD (1392)

#define EC_WORD_FEELINGS_BEAUTY (1393)
#define EC_WORD_FEELINGS_DELIGHT (1394)
#define EC_WORD_FEELINGS_STRANGENESS (1395)
#define EC_WORD_FEELINGS_CLEVERNESS (1396)
#define EC_WORD_FEELINGS_DISAPPOINTED (1397)
#define EC_WORD_FEELINGS_COOLNESS (1398)
#define EC_WORD_FEELINGS_SADNESS (1399)
#define EC_WORD_FEELINGS_CUTENESS (1400)
#define EC_WORD_FEELINGS_ANGER (1401)
#define EC_WORD_FEELINGS_HEALTHY (1402)
#define EC_WORD_FEELINGS_REGRET (1403)
#define EC_WORD_FEELINGS_HAPPINESS (1404)
#define EC_WORD_FEELINGS_DEPRESSED (1405)
#define EC_WORD_FEELINGS_INCREDIBLE (1406)
#define EC_WORD_FEELINGS_LIKES (1407)
#define EC_WORD_FEELINGS_DISLIKE (1408)
#define EC_WORD_FEELINGS_BORED (1409)
#define EC_WORD_FEELINGS_IMPORTANT (1410)
#define EC_WORD_FEELINGS_ALL_RIGHT (1411)
#define EC_WORD_FEELINGS_ADORE (1412)
#define EC_WORD_FEELINGS_TOUGHNESS (1413)
#define EC_WORD_FEELINGS_ENJOYMENT (1414)
#define EC_WORD_FEELINGS_USELESS (1415)
#define EC_WORD_FEELINGS_DROOLING (1416)
#define EC_WORD_FEELINGS_EXCITED (1417)
#define EC_WORD_FEELINGS_SKILLFUL (1418)
#define EC_WORD_FEELINGS_TEARS (1419)
#define EC_WORD_FEELINGS_HATE (1420)
#define EC_WORD_FEELINGS_ROFL (1421)
#define EC_WORD_FEELINGS_HAPPY (1422)
#define EC_WORD_FEELINGS_ENERGETIC (1423)
#define EC_WORD_FEELINGS_SURPRISE (1424)
#define EC_WORD_FEELINGS_NERVOUS (1425)
#define EC_WORD_FEELINGS_WANT (1426)
#define EC_WORD_FEELINGS_SATISFIED (1427)
#define EC_WORD_FEELINGS_RARE (1428)
#define EC_WORD_FEELINGS_MESSED_UP (1429)
#define EC_WORD_FEELINGS_NO_WAY (1430)
#define EC_WORD_FEELINGS_DANGER (1431)
#define EC_WORD_FEELINGS_LOVEY_DOVEY (1432)
#define EC_WORD_FEELINGS_ANTICIPATION (1433)
#define EC_WORD_FEELINGS_SMILE (1434)
#define EC_WORD_FEELINGS_SUBTLE (1435)
#define EC_WORD_FEELINGS_RECOMMEND (1436)
#define EC_WORD_FEELINGS_SIMPLE (1437)
#define EC_WORD_FEELINGS_NICE (1438)
#define EC_WORD_FEELINGS_DIFFICULT (1439)

#define EC_WORD_TOUGH_WORDS_EARTH_TONES (1440)
#define EC_WORD_TOUGH_WORDS_IMPLANT (1441)
#define EC_WORD_TOUGH_WORDS_GOLDEN_RATIO (1442)
#define EC_WORD_TOUGH_WORDS_OMNIBUS (1443)
#define EC_WORD_TOUGH_WORDS_STARBOARD (1444)
#define EC_WORD_TOUGH_WORDS_MONEY_RATE (1445)
#define EC_WORD_TOUGH_WORDS_RESOLUTION (1446)
#define EC_WORD_TOUGH_WORDS_CADENZA (1447)
#define EC_WORD_TOUGH_WORDS_EDUCATION (1448)
#define EC_WORD_TOUGH_WORDS_CUBISM (1449)
#define EC_WORD_TOUGH_WORDS_CROSS_STITCH (1450)
#define EC_WORD_TOUGH_WORDS_ARTERY (1451)
#define EC_WORD_TOUGH_WORDS_BONE_DENSITY (1452)
#define EC_WORD_TOUGH_WORDS_GOMMAGE (1453)
#define EC_WORD_TOUGH_WORDS_STREAMING (1454)
#define EC_WORD_TOUGH_WORDS_CONDUCTIVITY (1455)
#define EC_WORD_TOUGH_WORDS_COPYRIGHT (1456)
#define EC_WORD_TOUGH_WORDS_TWO_STEP (1457)
#define EC_WORD_TOUGH_WORDS_CONTOUR (1458)
#define EC_WORD_TOUGH_WORDS_NEUTRINO (1459)
#define EC_WORD_TOUGH_WORDS_HOWLING (1460)
#define EC_WORD_TOUGH_WORDS_SPREADSHEET (1461)
#define EC_WORD_TOUGH_WORDS_GMT (1462)
#define EC_WORD_TOUGH_WORDS_IRRITABILITY (1463)
#define EC_WORD_TOUGH_WORDS_FRACTALS (1464)
#define EC_WORD_TOUGH_WORDS_FLAMBE (1465)
#define EC_WORD_TOUGH_WORDS_STOCK_PRICES (1466)
#define EC_WORD_TOUGH_WORDS_PH_BALANCE (1467)
#define EC_WORD_TOUGH_WORDS_VECTOR (1468)
#define EC_WORD_TOUGH_WORDS_POLYPHENOL (1469)
#define EC_WORD_TOUGH_WORDS_UBIQUITOUS (1470)
#define EC_WORD_TOUGH_WORDS_REM_SLEEP (1471)

#define EC_WORD_UNION_SINGLE (1472)
#define EC_WORD_UNION_DOUBLE (1473)
#define EC_WORD_UNION_MIX_BATTLE (1474)
#define EC_WORD_UNION_MULTI_BATTLE (1475)
#define EC_WORD_UNION_LEVEL_50 (1476)
#define EC_WORD_UNION_LEVEL_100 (1477)
#define EC_WORD_UNION_COLOSSEUM (1478)
#define EC_WORD_UNION_POKEMON (1479)
#define EC_WORD_UNION_DRAWING (1480)
#define EC_WORD_UNION_RECORD (1481)
#define EC_WORD_UNION_GOTCHA (1482)
#define EC_WORD_UNION_CHAT (1483)
#define EC_WORD_UNION_FRIEND_CODE (1484)
#define EC_WORD_UNION_CONNECTION (1485)
#define EC_WORD_UNION_VOICE_CHAT (1486)
#define EC_WORD_UNION_WI_FI (1487)
#define EC_WORD_UNION_UNDERGROUND (1488)
#define EC_WORD_UNION_UNION (1489)
#define EC_WORD_UNION_POFFIN (1490)
#define EC_WORD_UNION_CONTEST (1491)
#define EC_WORD_UNION_BATTLE_TOWER (1492)
#define EC_WORD_UNION_GTS (1493)
#define EC_WORD_UNION_SECRET_BASE (1494)

#define EC_WORD_NULL (0xFFFF)
#define EC_GROUP_MAX (11)
#define EC_WORD_MASK (0xFFF)

#endif //POKEHEARTGOLD_CONSTANTS_EASY_CHAT_H