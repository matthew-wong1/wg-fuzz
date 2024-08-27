struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(vec2<u32>(0u, 21951u), vec4<u32>(14826u, 177u, 0u, 0u), vec4<f32>(-1000f, 814f, -521f, 1185f), Struct_2(vec4<u32>(4294967295u, 4294967295u, 39513u, 36563u), -725f, Struct_1(1659f, vec3<bool>(false, false, false), vec3<i32>(0i, 23979i, 1i)), Struct_1(184f, vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_1(1000f, vec3<bool>(true, false, false), vec3<i32>(27154i, -1i, 0i))), 23195u), vec4<f32>(1285f, -146f, 2279f, 593f), vec2<i32>(2147483647i, -45577i), vec3<u32>(0u, 11586u, 4294967295u), -1686f), Struct_4(Struct_3(vec2<u32>(38922u, 27271u), vec4<u32>(4294967295u, 1u, 128889u, 1u), vec4<f32>(-979f, -1000f, -121f, -1837f), Struct_2(vec4<u32>(24979u, 6257u, 5564u, 36275u), -2036f, Struct_1(626f, vec3<bool>(false, false, true), vec3<i32>(2147483647i, 1i, 4997i)), Struct_1(120f, vec3<bool>(true, true, true), vec3<i32>(2147483647i, 1i, 4532i)), Struct_1(-1131f, vec3<bool>(true, true, true), vec3<i32>(-21309i, 2147483647i, i32(-2147483648)))), 30567u), vec4<f32>(1000f, -773f, -1546f, 838f), vec2<i32>(-23921i, 2147483647i), vec3<u32>(1u, 53977u, 40116u), 1622f), Struct_4(Struct_3(vec2<u32>(0u, 15677u), vec4<u32>(35423u, 20068u, 1u, 0u), vec4<f32>(-662f, -160f, -1341f, -1143f), Struct_2(vec4<u32>(9602u, 4294967295u, 4294967295u, 1u), -1000f, Struct_1(-998f, vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 36039i, 1i)), Struct_1(396f, vec3<bool>(false, false, true), vec3<i32>(0i, 537i, 29301i)), Struct_1(1204f, vec3<bool>(false, false, true), vec3<i32>(-16063i, -1i, 1940i))), 13849u), vec4<f32>(1031f, -1088f, 1000f, 1000f), vec2<i32>(i32(-2147483648), -47932i), vec3<u32>(0u, 0u, 0u), -156f), Struct_4(Struct_3(vec2<u32>(79105u, 4294967295u), vec4<u32>(12794u, 52410u, 0u, 14255u), vec4<f32>(311f, -1000f, -273f, -1253f), Struct_2(vec4<u32>(15533u, 47096u, 33300u, 0u), 119f, Struct_1(938f, vec3<bool>(false, false, true), vec3<i32>(-54730i, i32(-2147483648), 2147483647i)), Struct_1(498f, vec3<bool>(false, true, true), vec3<i32>(-15277i, 0i, i32(-2147483648))), Struct_1(-1444f, vec3<bool>(true, false, false), vec3<i32>(17915i, -18140i, 0i))), 1u), vec4<f32>(1365f, 1536f, -1234f, -794f), vec2<i32>(-4853i, 2147483647i), vec3<u32>(21814u, 17232u, 0u), 1000f), Struct_4(Struct_3(vec2<u32>(40233u, 4294967295u), vec4<u32>(29341u, 9939u, 0u, 0u), vec4<f32>(1000f, 856f, -2215f, 521f), Struct_2(vec4<u32>(36199u, 0u, 0u, 9961u), 1347f, Struct_1(972f, vec3<bool>(true, false, false), vec3<i32>(1i, -1i, 0i)), Struct_1(-709f, vec3<bool>(true, true, true), vec3<i32>(32590i, 0i, 46029i)), Struct_1(309f, vec3<bool>(false, true, true), vec3<i32>(39507i, 0i, -27338i))), 87257u), vec4<f32>(-354f, 432f, -2101f, -1000f), vec2<i32>(-32400i, 2147483647i), vec3<u32>(109124u, 69058u, 1u), 1333f), Struct_4(Struct_3(vec2<u32>(1u, 36226u), vec4<u32>(1u, 91072u, 4294967295u, 4294967295u), vec4<f32>(-1647f, -765f, -1000f, 2123f), Struct_2(vec4<u32>(1u, 4294967295u, 24812u, 1u), 307f, Struct_1(275f, vec3<bool>(true, false, true), vec3<i32>(0i, 1i, 1i)), Struct_1(1248f, vec3<bool>(true, false, true), vec3<i32>(0i, 1i, 41759i)), Struct_1(1577f, vec3<bool>(true, true, false), vec3<i32>(44711i, -41997i, -60372i))), 0u), vec4<f32>(-1381f, -600f, -1000f, -1396f), vec2<i32>(9232i, 34335i), vec3<u32>(0u, 27010u, 7761u), -2361f), Struct_4(Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(0u, 42872u, 53815u, 68866u), vec4<f32>(-254f, 112f, -1389f, -2434f), Struct_2(vec4<u32>(2206u, 4294967295u, 7576u, 1u), -187f, Struct_1(890f, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 35366i, 1670i)), Struct_1(741f, vec3<bool>(true, true, false), vec3<i32>(-68715i, 112052i, 1i)), Struct_1(1000f, vec3<bool>(false, false, true), vec3<i32>(2147483647i, 48020i, 1i))), 0u), vec4<f32>(2341f, 426f, -757f, -122f), vec2<i32>(0i, -1i), vec3<u32>(4294967295u, 24975u, 4294967295u), -116f), Struct_4(Struct_3(vec2<u32>(6981u, 12202u), vec4<u32>(2480u, 1u, 39639u, 50925u), vec4<f32>(-729f, -740f, 1000f, 1022f), Struct_2(vec4<u32>(38806u, 1u, 75262u, 1u), -1232f, Struct_1(809f, vec3<bool>(true, false, true), vec3<i32>(-65620i, 16844i, -1i)), Struct_1(-735f, vec3<bool>(true, false, true), vec3<i32>(29567i, 21969i, 0i)), Struct_1(1020f, vec3<bool>(false, true, false), vec3<i32>(2147483647i, 31411i, -12638i))), 44935u), vec4<f32>(-2232f, 1000f, 763f, 670f), vec2<i32>(-1i, 2147483647i), vec3<u32>(91518u, 45568u, 4294967295u), -2015f), Struct_4(Struct_3(vec2<u32>(3155u, 1u), vec4<u32>(19640u, 4770u, 27992u, 37887u), vec4<f32>(1230f, 903f, -1265f, -962f), Struct_2(vec4<u32>(50021u, 1u, 71581u, 1u), -217f, Struct_1(-1000f, vec3<bool>(false, false, false), vec3<i32>(39097i, i32(-2147483648), 2147483647i)), Struct_1(968f, vec3<bool>(false, true, true), vec3<i32>(-9811i, 1i, i32(-2147483648))), Struct_1(-897f, vec3<bool>(false, false, false), vec3<i32>(-26776i, 40115i, -16336i))), 4294967295u), vec4<f32>(-656f, -1000f, -1980f, 1674f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<u32>(31819u, 0u, 17813u), -521f), Struct_4(Struct_3(vec2<u32>(33184u, 27451u), vec4<u32>(50352u, 29263u, 1u, 99664u), vec4<f32>(-476f, -1591f, 903f, 1038f), Struct_2(vec4<u32>(4294967295u, 3151u, 36540u, 107950u), -2095f, Struct_1(-1713f, vec3<bool>(false, false, true), vec3<i32>(71431i, -1i, -8667i)), Struct_1(-128f, vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 1i, 14013i)), Struct_1(1000f, vec3<bool>(true, false, false), vec3<i32>(-18493i, i32(-2147483648), 2147483647i))), 4284u), vec4<f32>(-299f, 633f, 1224f, 693f), vec2<i32>(7649i, 0i), vec3<u32>(4294967295u, 1u, 27040u), 330f), Struct_4(Struct_3(vec2<u32>(0u, 10279u), vec4<u32>(24167u, 74263u, 35309u, 0u), vec4<f32>(-1427f, 859f, 165f, -109f), Struct_2(vec4<u32>(26251u, 9032u, 0u, 1u), 715f, Struct_1(-116f, vec3<bool>(true, false, true), vec3<i32>(39159i, 15568i, 0i)), Struct_1(281f, vec3<bool>(true, true, false), vec3<i32>(0i, i32(-2147483648), -1i)), Struct_1(500f, vec3<bool>(false, true, false), vec3<i32>(2147483647i, -19438i, 59589i))), 37737u), vec4<f32>(-1000f, 694f, -1000f, 1461f), vec2<i32>(-7968i, i32(-2147483648)), vec3<u32>(14607u, 81317u, 0u), -1649f), Struct_4(Struct_3(vec2<u32>(1u, 36219u), vec4<u32>(21070u, 0u, 29107u, 4294967295u), vec4<f32>(711f, 546f, 256f, 122f), Struct_2(vec4<u32>(13915u, 4294967295u, 0u, 0u), -1317f, Struct_1(756f, vec3<bool>(false, true, false), vec3<i32>(1i, -845i, 2147483647i)), Struct_1(1664f, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -16197i, -8999i)), Struct_1(165f, vec3<bool>(false, false, false), vec3<i32>(43994i, 1i, 1i))), 4294967295u), vec4<f32>(335f, -1275f, -653f, 1000f), vec2<i32>(0i, -1i), vec3<u32>(14609u, 1u, 0u), -2311f), Struct_4(Struct_3(vec2<u32>(22369u, 19612u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<f32>(1283f, 349f, -784f, -281f), Struct_2(vec4<u32>(24563u, 91919u, 4294967295u, 0u), -1421f, Struct_1(-396f, vec3<bool>(true, true, false), vec3<i32>(7190i, 2147483647i, 3296i)), Struct_1(1048f, vec3<bool>(false, false, false), vec3<i32>(1i, 1i, -49640i)), Struct_1(939f, vec3<bool>(true, false, false), vec3<i32>(2147483647i, -1i, -54167i))), 517u), vec4<f32>(1874f, -100f, 1677f, 1961f), vec2<i32>(-22750i, -28530i), vec3<u32>(29004u, 10864u, 65970u), 483f), Struct_4(Struct_3(vec2<u32>(55508u, 0u), vec4<u32>(21414u, 0u, 1u, 1u), vec4<f32>(-1749f, -453f, 461f, 361f), Struct_2(vec4<u32>(37783u, 1u, 66505u, 4294967295u), 1139f, Struct_1(394f, vec3<bool>(false, false, true), vec3<i32>(-23516i, -1i, 73997i)), Struct_1(335f, vec3<bool>(false, true, false), vec3<i32>(28472i, 0i, i32(-2147483648))), Struct_1(-748f, vec3<bool>(true, true, false), vec3<i32>(2147483647i, 1i, 0i))), 22912u), vec4<f32>(-1000f, 680f, -1000f, -1726f), vec2<i32>(i32(-2147483648), 1i), vec3<u32>(7233u, 64440u, 13465u), -1057f), Struct_4(Struct_3(vec2<u32>(4294967295u, 43317u), vec4<u32>(0u, 0u, 48701u, 22812u), vec4<f32>(-1287f, 1000f, -1082f, -1000f), Struct_2(vec4<u32>(1u, 0u, 68624u, 1u), -1048f, Struct_1(-1000f, vec3<bool>(false, false, false), vec3<i32>(70759i, -49079i, 0i)), Struct_1(886f, vec3<bool>(false, true, true), vec3<i32>(-1i, -52655i, 1i)), Struct_1(-1147f, vec3<bool>(true, true, false), vec3<i32>(-37835i, 0i, -19102i))), 47491u), vec4<f32>(-1287f, 262f, -1000f, 1608f), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(4294967295u, 35033u, 1u), -1652f), Struct_4(Struct_3(vec2<u32>(63227u, 0u), vec4<u32>(1u, 4294967295u, 1u, 41112u), vec4<f32>(-333f, -516f, 1896f, -806f), Struct_2(vec4<u32>(24299u, 1u, 23105u, 3991u), 401f, Struct_1(-349f, vec3<bool>(true, true, false), vec3<i32>(-1i, 0i, 2147483647i)), Struct_1(-1000f, vec3<bool>(false, true, false), vec3<i32>(1i, 26808i, 0i)), Struct_1(2635f, vec3<bool>(false, true, true), vec3<i32>(0i, i32(-2147483648), 2147483647i))), 0u), vec4<f32>(-1000f, 952f, -262f, -488f), vec2<i32>(-1i, -10745i), vec3<u32>(116706u, 1u, 0u), -1378f), Struct_4(Struct_3(vec2<u32>(36458u, 0u), vec4<u32>(0u, 4294967295u, 1u, 2322u), vec4<f32>(210f, 2279f, 1730f, -731f), Struct_2(vec4<u32>(56323u, 27318u, 23597u, 1u), 783f, Struct_1(-180f, vec3<bool>(true, false, false), vec3<i32>(8725i, -63433i, 0i)), Struct_1(451f, vec3<bool>(false, true, false), vec3<i32>(12266i, -6550i, 39560i)), Struct_1(483f, vec3<bool>(true, true, true), vec3<i32>(29348i, 0i, 15557i))), 0u), vec4<f32>(612f, -869f, 1462f, 232f), vec2<i32>(5819i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 75719u), 1000f), Struct_4(Struct_3(vec2<u32>(25909u, 4294967295u), vec4<u32>(0u, 53057u, 4294967295u, 20887u), vec4<f32>(524f, -677f, -387f, 1023f), Struct_2(vec4<u32>(1u, 0u, 126u, 1u), 302f, Struct_1(-1000f, vec3<bool>(true, false, false), vec3<i32>(38436i, 2147483647i, 22658i)), Struct_1(816f, vec3<bool>(false, true, true), vec3<i32>(29724i, -48405i, 1i)), Struct_1(1807f, vec3<bool>(true, false, true), vec3<i32>(4062i, -1i, 1i))), 1u), vec4<f32>(406f, 298f, -563f, -916f), vec2<i32>(2147483647i, 1i), vec3<u32>(34776u, 4294967295u, 1u), 466f), Struct_4(Struct_3(vec2<u32>(4294967295u, 41132u), vec4<u32>(9568u, 1u, 1u, 9804u), vec4<f32>(1153f, -1000f, 1835f, 818f), Struct_2(vec4<u32>(29098u, 67866u, 4294967295u, 4294967295u), 772f, Struct_1(770f, vec3<bool>(false, false, true), vec3<i32>(-1i, 1i, 2147483647i)), Struct_1(441f, vec3<bool>(true, true, true), vec3<i32>(11354i, 1i, -1i)), Struct_1(-1459f, vec3<bool>(true, true, false), vec3<i32>(-51988i, 2976i, 1i))), 32555u), vec4<f32>(1000f, -1363f, -1000f, -192f), vec2<i32>(-29509i, 0i), vec3<u32>(0u, 30493u, 1u), -1799f), Struct_4(Struct_3(vec2<u32>(42312u, 2274u), vec4<u32>(4294967295u, 59815u, 65979u, 64545u), vec4<f32>(-149f, 419f, 284f, 388f), Struct_2(vec4<u32>(1u, 1u, 11083u, 1u), 336f, Struct_1(-450f, vec3<bool>(false, true, false), vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(788f, vec3<bool>(false, false, true), vec3<i32>(-1i, 17943i, 13983i)), Struct_1(914f, vec3<bool>(false, false, false), vec3<i32>(-1640i, 2147483647i, 1i))), 37499u), vec4<f32>(294f, 642f, -454f, -839f), vec2<i32>(0i, -25546i), vec3<u32>(14482u, 0u, 4294967295u), -1096f), Struct_4(Struct_3(vec2<u32>(4294967295u, 5939u), vec4<u32>(58568u, 1u, 1u, 4294967295u), vec4<f32>(-674f, 846f, -195f, 480f), Struct_2(vec4<u32>(3117u, 45821u, 0u, 64026u), 372f, Struct_1(1000f, vec3<bool>(true, true, true), vec3<i32>(2147483647i, 9928i, 53287i)), Struct_1(-1239f, vec3<bool>(true, true, false), vec3<i32>(-31897i, 2147483647i, 44273i)), Struct_1(-739f, vec3<bool>(false, false, false), vec3<i32>(64492i, -35531i, -66388i))), 0u), vec4<f32>(1421f, -1066f, -1323f, -297f), vec2<i32>(7591i, 15845i), vec3<u32>(7217u, 4294967295u, 1u), 249f), Struct_4(Struct_3(vec2<u32>(0u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<f32>(985f, 1117f, -555f, 1382f), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 1u), -1000f, Struct_1(1000f, vec3<bool>(false, true, true), vec3<i32>(2147483647i, -1i, 1i)), Struct_1(352f, vec3<bool>(false, false, false), vec3<i32>(2147483647i, i32(-2147483648), 41830i)), Struct_1(690f, vec3<bool>(false, false, false), vec3<i32>(0i, 29036i, 5547i))), 0u), vec4<f32>(-570f, 1425f, -1167f, 1000f), vec2<i32>(2147483647i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 1u), -2325f), Struct_4(Struct_3(vec2<u32>(0u, 34444u), vec4<u32>(30653u, 0u, 4294967295u, 0u), vec4<f32>(-1347f, -1000f, -136f, 317f), Struct_2(vec4<u32>(0u, 83060u, 0u, 4294967295u), -1513f, Struct_1(367f, vec3<bool>(true, true, false), vec3<i32>(-1i, 0i, -20606i)), Struct_1(-1233f, vec3<bool>(true, true, true), vec3<i32>(-31939i, i32(-2147483648), 35121i)), Struct_1(1065f, vec3<bool>(true, true, false), vec3<i32>(2147483647i, 1i, 9488i))), 37113u), vec4<f32>(-835f, -436f, -1000f, 1453f), vec2<i32>(i32(-2147483648), 0i), vec3<u32>(0u, 1u, 11371u), 1847f), Struct_4(Struct_3(vec2<u32>(0u, 1u), vec4<u32>(84349u, 12431u, 11715u, 82695u), vec4<f32>(-1345f, 1290f, 1000f, 373f), Struct_2(vec4<u32>(0u, 0u, 4294967295u, 14674u), -1821f, Struct_1(784f, vec3<bool>(true, false, true), vec3<i32>(27061i, -14842i, 0i)), Struct_1(225f, vec3<bool>(false, true, false), vec3<i32>(-33785i, 34613i, 38149i)), Struct_1(1178f, vec3<bool>(false, false, true), vec3<i32>(-47539i, i32(-2147483648), -7371i))), 121597u), vec4<f32>(374f, -747f, 479f, 1053f), vec2<i32>(4717i, 0i), vec3<u32>(4294967295u, 33965u, 8153u), -282f), Struct_4(Struct_3(vec2<u32>(4294967295u, 125144u), vec4<u32>(48678u, 17954u, 4294967295u, 4294967295u), vec4<f32>(-1077f, -2408f, -404f, 238f), Struct_2(vec4<u32>(1u, 4294967295u, 25373u, 0u), 637f, Struct_1(206f, vec3<bool>(true, false, false), vec3<i32>(-33410i, -1i, 1i)), Struct_1(1687f, vec3<bool>(false, true, false), vec3<i32>(-20301i, 13956i, i32(-2147483648))), Struct_1(1228f, vec3<bool>(false, false, false), vec3<i32>(0i, -1912i, 39712i))), 33863u), vec4<f32>(672f, 892f, -1652f, -1940f), vec2<i32>(60884i, 0i), vec3<u32>(3430u, 25459u, 45205u), 231f), Struct_4(Struct_3(vec2<u32>(1u, 60906u), vec4<u32>(45171u, 1793u, 41455u, 59448u), vec4<f32>(1431f, 336f, -502f, 992f), Struct_2(vec4<u32>(4294967295u, 0u, 20506u, 20938u), -227f, Struct_1(-935f, vec3<bool>(true, true, true), vec3<i32>(0i, 3918i, 0i)), Struct_1(-488f, vec3<bool>(true, true, true), vec3<i32>(689i, -15017i, -42810i)), Struct_1(449f, vec3<bool>(true, false, false), vec3<i32>(-1i, 61649i, -1i))), 66418u), vec4<f32>(-480f, 817f, -399f, -1118f), vec2<i32>(-20353i, i32(-2147483648)), vec3<u32>(1u, 11117u, 4294967295u), 1000f), Struct_4(Struct_3(vec2<u32>(1u, 16173u), vec4<u32>(1u, 34664u, 7278u, 4294967295u), vec4<f32>(1000f, -342f, 283f, -1943f), Struct_2(vec4<u32>(4294967295u, 41233u, 1u, 1u), 422f, Struct_1(-863f, vec3<bool>(true, false, false), vec3<i32>(-12893i, -1i, 0i)), Struct_1(-198f, vec3<bool>(true, true, true), vec3<i32>(2147483647i, -1i, -5035i)), Struct_1(-2074f, vec3<bool>(false, false, true), vec3<i32>(1i, -27570i, i32(-2147483648)))), 4294967295u), vec4<f32>(883f, 896f, 725f, -679f), vec2<i32>(35429i, 37140i), vec3<u32>(24893u, 4294967295u, 14422u), 249f), Struct_4(Struct_3(vec2<u32>(5158u, 0u), vec4<u32>(59977u, 1u, 96239u, 1u), vec4<f32>(431f, 1822f, -1177f, 412f), Struct_2(vec4<u32>(5904u, 1u, 4294967295u, 29095u), -1000f, Struct_1(2007f, vec3<bool>(true, true, false), vec3<i32>(-1770i, -33151i, -10725i)), Struct_1(-494f, vec3<bool>(false, true, true), vec3<i32>(-1i, -27792i, -13008i)), Struct_1(-723f, vec3<bool>(true, false, false), vec3<i32>(59113i, 2147483647i, 2147483647i))), 37991u), vec4<f32>(522f, -214f, -119f, -560f), vec2<i32>(2147483647i, -40850i), vec3<u32>(4294967295u, 0u, 10761u), 203f));

var<private> global1: vec2<i32> = vec2<i32>(-1276i, 91457i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<f32>) -> vec4<u32> {
    return ~(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(92237u, u_input.c, arg_0.x, arg_0.x), reverseBits(vec4<u32>(u_input.c, 4294967295u, u_input.c, 1u))), ~(~vec4<u32>(4294967295u, arg_0.x, 28434u, u_input.d.x))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = Struct_2(vec4<u32>(max(min(_wgslsmith_div_u32(78158u, u_input.d.x), u_input.d.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 0u, u_input.d.x, u_input.d.x), select(vec4<u32>(62265u, 1u, u_input.d.x, 1u), vec4<u32>(22362u, u_input.d.x, 10322u, 0u), false))), ~(~28776u ^ ~u_input.c), 1u, 4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(828f + arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -980f)), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -296f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))), Struct_1(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), select(vec3<bool>(u_input.c >= u_input.d.x, false, arg_0), !(!vec3<bool>(arg_0, true, arg_0)), true), -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(-5167i, 2147483647i, 24542i), vec3<i32>(0i, u_input.b, global1.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-335f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1.x))))), vec3<bool>(arg_0, arg_0, arg_0), select(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(45172i, u_input.e, u_input.b)), min(vec3<i32>(u_input.a, 1i, 79271i), select(vec3<i32>(u_input.e, -20822i, 32679i), vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<bool>(arg_0, true, true))), select(!vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, true, arg_0), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, false))))), Struct_1(_wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, 346f))), !vec3<bool>(select(arg_0, arg_0, arg_0), any(vec3<bool>(arg_0, true, false)), arg_0), max(vec3<i32>(42253i, 1i, u_input.b) ^ abs(vec3<i32>(-1i, -2147483647i, -2147483647i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.a), vec3<i32>(global1.x, -9861i, global1.x)))));
    let var_1 = ~var_0.a.wx;
    return var_0.a.zzz;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_4, 28>();
    global1 = firstLeadingBit(arg_0);
    let var_0 = 0u;
    let var_1 = Struct_4(Struct_3(u_input.d, _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0, var_0, 0u, u_input.c)), _wgslsmith_mult_vec4_u32(func_2(vec3<u32>(u_input.c, 63374u, 1u), arg_2.x, arg_3.zz), ~vec4<u32>(0u, var_0, 94559u, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, arg_3.x, 813f, 428f)))), Struct_2(vec4<u32>(39502u, 20507u, ~4294967295u, ~25225u), _wgslsmith_div_f32(arg_3.x, -858f), Struct_1(-931f, vec3<bool>(true, arg_2.x, arg_2.x), vec3<i32>(20309i, 0i, 1i)), Struct_1(-1000f, vec3<bool>(true, true, true), countOneBits(vec3<i32>(2147483647i, arg_1, arg_1))), Struct_1(_wgslsmith_f_op_f32(abs(arg_3.x)), !vec3<bool>(false, arg_2.x, false), -vec3<i32>(-21669i, -34515i, global1.x))), 2312u), arg_3, ~arg_0, func_2(func_3(arg_2.x, vec3<f32>(1650f, _wgslsmith_f_op_f32(sign(-294f)), -117f)), !(all(arg_2) | arg_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_3.wy)) + _wgslsmith_f_op_vec2_f32(select(arg_3.xy, vec2<f32>(1000f, arg_3.x), arg_2.x))))).yyw, _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_3.x)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(arg_3.x, 1140f)), var_1.a.d.c.b, var_1.a.d.d.c);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 5626i), vec2<i32>(2147483647i, u_input.b)), -vec2<i32>(-1i, -2147483647i))), select(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(50675i, u_input.a), global1.x), global1.x, all(vec4<bool>(false, true, true, true))), vec3<bool>(false, true, true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), -214f, -522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f - 549f)))), vec4<f32>(-1143f, -1400f, _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_mult_vec2_i32(vec2<i32>(-49447i, 30557i), func_1(_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, u_input.a) >> (u_input.d % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 32710i), vec2<i32>(-2147483647i, u_input.e))), _wgslsmith_clamp_i32(u_input.a, ~global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.e, -2147483647i))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec4<f32>(_wgslsmith_f_op_f32(sign(1233f)), 1011f, _wgslsmith_f_op_f32(f32(-1f) * -1697f), 1713f)).d.e.c.zz), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d.x, 17105u), vec3<u32>(u_input.d.x, 4294967295u, 20691u)) ^ vec3<u32>(~func_3(true, vec3<f32>(-1083f, 476f, -823f)).x, 14236u, u_input.c), _wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))));
    global0 = array<Struct_4, 28>();
    let var_1 = ~var_0.a.b.yxy;
    let var_2 = -2147483647i;
    global1 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), ~countOneBits(abs(var_0.c))));
    var var_3 = var_0.a;
    let var_4 = select(-reverseBits(-vec4<i32>(var_2, global1.x, u_input.b, var_3.d.c.c.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, var_0.a.d.e.c.x, 14700i, u_input.e), vec4<i32>(u_input.b, var_3.d.d.c.x, 39503i, 0i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-10638i, var_0.a.d.e.c.x, var_2, global1.x), select(vec4<i32>(-15153i, var_0.a.d.d.c.x, 13588i, var_2), vec4<i32>(var_3.d.c.c.x, var_3.d.e.c.x, u_input.b, -11005i), false)), max(firstTrailingBit(vec4<i32>(global1.x, u_input.e, var_3.d.e.c.x, 2147483647i)), vec4<i32>(-35963i, var_2, global1.x, global1.x))), !func_1(-var_3.d.d.c.zy, min(global1.x, u_input.a), !var_3.d.d.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, 396f, var_0.a.c.x, 1000f) - vec4<f32>(606f, var_0.e, 741f, -376f))).d.c.b.x) | vec4<i32>(global1.x, _wgslsmith_mod_i32(var_3.d.e.c.x, 1i), var_0.c.x, var_0.a.d.d.c.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(func_1(-min(vec2<i32>(-17492i, var_4.x) >> (vec2<u32>(32557u, u_input.d.x) % vec2<u32>(32u)), var_3.d.d.c.xy), reverseBits(~abs(var_2)), func_1(vec2<i32>(var_2 & var_2, var_2), var_2, !var_3.d.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.x, var_3.c.x, var_0.a.d.c.a, var_0.e), vec4<f32>(var_3.c.x, var_0.e, var_0.e, -196f), vec4<bool>(var_0.a.d.c.b.x, true, var_0.a.d.e.b.x, true))))).d.c.b, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-2292f, -1847f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.d.e.a), _wgslsmith_f_op_f32(abs(188f))), _wgslsmith_f_op_f32(max(-397f, -1180f)), 1000f)).c.wzz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.c.yzx))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_1(vec2<i32>(-2147483647i, u_input.a), var_4.x, vec3<bool>(true, var_3.d.c.b.x, var_0.a.d.c.b.x), var_3.c).c.xyz, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.d.b, -974f, -1833f), vec3<f32>(954f, -979f, var_3.c.x), var_0.a.d.c.b.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b.xwy)), _wgslsmith_f_op_vec3_f32(var_0.b.xyz * var_0.a.c.zxy)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_4.wyw, vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.b, u_input.a)), vec3<i32>(1i, 2147483647i, ~2147483647i)), var_4.yz & _wgslsmith_sub_vec2_i32(reverseBits(var_3.d.c.c.zx), vec2<i32>(global1.x | global1.x, min(var_3.d.c.c.x, u_input.b))));
}

