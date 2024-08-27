struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<f32>(715f, -343f, -2038f), true, false, Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(138f, 347f, -1750f, 302f), vec3<u32>(61535u, 24702u, 1u), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false), vec4<f32>(300f, 270f, -104f, 537f), vec3<u32>(22914u, 45995u, 88642u), vec2<bool>(false, true)))), Struct_3(vec3<f32>(-698f, 1028f, -1000f), true, false, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, true), vec4<f32>(889f, -1742f, -733f, 1000f), vec3<u32>(19925u, 13837u, 1u), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), vec4<f32>(1410f, 600f, 869f, 707f), vec3<u32>(0u, 25318u, 0u), vec2<bool>(false, false)))), Struct_3(vec3<f32>(1451f, -405f, 1078f), true, true, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(true, false), vec4<f32>(-1517f, -270f, 503f, 1512f), vec3<u32>(26352u, 0u, 36242u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(-1947f, -680f, -1970f, -419f), vec3<u32>(678u, 1u, 50946u), vec2<bool>(false, true)))), Struct_3(vec3<f32>(1693f, -854f, 205f), true, false, Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(282f, 515f, -1570f, 1145f), vec3<u32>(34418u, 4294967295u, 0u), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(283f, 689f, -729f, 425f), vec3<u32>(43558u, 7771u, 41154u), vec2<bool>(false, true)))), Struct_3(vec3<f32>(1169f, 1217f, -809f), true, false, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(true, false), vec4<f32>(-1287f, 501f, 1000f, -263f), vec3<u32>(0u, 68401u, 0u), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(679f, 699f, -1541f, 135f), vec3<u32>(84331u, 0u, 0u), vec2<bool>(false, true)))), Struct_3(vec3<f32>(1113f, 910f, -1810f), false, false, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(true, true), vec4<f32>(104f, 435f, 268f, -581f), vec3<u32>(4526u, 1u, 48713u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(-965f, -903f, -144f, 433f), vec3<u32>(1u, 95660u, 91558u), vec2<bool>(true, false)))), Struct_3(vec3<f32>(-165f, 342f, -1198f), false, false, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, true), vec4<f32>(-1358f, -590f, -124f, 452f), vec3<u32>(1u, 1u, 1u), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), vec4<f32>(-551f, 1360f, -313f, -791f), vec3<u32>(0u, 4294967295u, 59925u), vec2<bool>(false, false)))), Struct_3(vec3<f32>(-829f, -1000f, -523f), false, true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, false), vec4<f32>(-559f, 111f, 1272f, 114f), vec3<u32>(6651u, 36224u, 26344u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(-473f, 1240f, -501f, 320f), vec3<u32>(37078u, 0u, 15042u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(-376f, -689f, -330f), false, false, Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, true), vec4<f32>(-1372f, -1572f, -690f, -1421f), vec3<u32>(19470u, 7665u, 19985u), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1241f, -538f, 432f, 435f), vec3<u32>(14538u, 0u, 1u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(-632f, -264f, 219f), true, false, Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<bool>(true, true), vec4<f32>(-901f, -125f, 317f, -900f), vec3<u32>(1u, 4294967295u, 18064u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(451f, 250f, 1203f, 1000f), vec3<u32>(1u, 1u, 25921u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(-489f, 1485f, 1028f), true, true, Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(true, true), vec4<f32>(-1173f, 1061f, 807f, 179f), vec3<u32>(4294967295u, 0u, 0u), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(174f, 288f, 966f, 1973f), vec3<u32>(42123u, 4294967295u, 1u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(-474f, 475f, 1018f), false, false, Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(-788f, -241f, -876f, 1628f), vec3<u32>(54664u, 0u, 0u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(991f, 1515f, 809f, -1775f), vec3<u32>(5430u, 33826u, 26127u), vec2<bool>(true, false)))), Struct_3(vec3<f32>(-808f, -1234f, 1282f), true, true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, false), vec4<f32>(1308f, 1000f, -1939f, -929f), vec3<u32>(26093u, 9531u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(1309f, 143f, 1000f, 734f), vec3<u32>(1u, 47760u, 59738u), vec2<bool>(false, true)))), Struct_3(vec3<f32>(963f, 463f, -248f), false, true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, false), vec4<f32>(1138f, 611f, 1403f, -464f), vec3<u32>(0u, 17822u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(522f, 412f, 970f, -2224f), vec3<u32>(66962u, 0u, 68757u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(288f, -806f, -1000f), true, false, Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, true), vec4<f32>(347f, -1062f, -172f, 145f), vec3<u32>(1u, 92950u, 0u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(1101f, -1491f, -236f, -320f), vec3<u32>(50890u, 4294967295u, 0u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(-1484f, -1415f, -1004f), true, false, Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<bool>(true, false), vec4<f32>(-998f, 197f, -276f, -561f), vec3<u32>(4294967295u, 28495u, 0u), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), vec4<f32>(-1702f, -1907f, 2434f, 702f), vec3<u32>(22147u, 1u, 4294967295u), vec2<bool>(true, false)))), Struct_3(vec3<f32>(524f, -223f, 1610f), true, true, Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<bool>(false, false), vec4<f32>(3950f, 2253f, 125f, -1000f), vec3<u32>(2414u, 1u, 1u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(959f, -768f, -594f, -1384f), vec3<u32>(4294967295u, 64731u, 42461u), vec2<bool>(false, false)))), Struct_3(vec3<f32>(-1000f, -737f, 342f), true, true, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, true), vec4<f32>(318f, 859f, 173f, 755f), vec3<u32>(10289u, 2925u, 33901u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(617f, -233f, -498f, -229f), vec3<u32>(4294967295u, 78909u, 1u), vec2<bool>(false, false)))), Struct_3(vec3<f32>(-998f, -1000f, 719f), true, false, Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(-386f, 1259f, -285f, 802f), vec3<u32>(1u, 0u, 0u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(667f, -872f, -1000f, -231f), vec3<u32>(4294967295u, 4294967295u, 1334u), vec2<bool>(true, false)))), Struct_3(vec3<f32>(525f, -1452f, -539f), false, false, Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(true, false), vec4<f32>(-1117f, 192f, 1344f, -1257f), vec3<u32>(15766u, 33751u, 0u), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(-919f, 1000f, -1356f, -2192f), vec3<u32>(40435u, 1u, 47993u), vec2<bool>(true, false)))), Struct_3(vec3<f32>(673f, 1085f, -359f), true, false, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, true), vec4<f32>(147f, -647f, -854f, 735f), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(1447f, 277f, 456f, -1582f), vec3<u32>(18682u, 4294967295u, 9865u), vec2<bool>(false, false)))), Struct_3(vec3<f32>(104f, 296f, 1757f), true, true, Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<bool>(false, false), vec4<f32>(-1000f, 1558f, 413f, -1111f), vec3<u32>(4294967295u, 0u, 34848u), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(1334f, -678f, 1136f, -473f), vec3<u32>(14926u, 1u, 69294u), vec2<bool>(true, true)))), Struct_3(vec3<f32>(842f, -222f, -404f), true, true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(false, true), vec4<f32>(-236f, 178f, -2604f, -626f), vec3<u32>(10037u, 0u, 0u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(1000f, -739f, 205f, -1686f), vec3<u32>(1u, 10673u, 21155u), vec2<bool>(true, true)))));

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(vec2<bool>(false, true), vec4<f32>(-519f, 244f, 337f, 295f), vec3<u32>(0u, 8548u, 0u), vec2<bool>(false, false)), vec4<u32>(0u, 74309u, 4294967295u, 1u), Struct_3(vec3<f32>(859f, 2210f, -2249f), true, false, Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, true), vec4<f32>(-927f, -195f, 1000f, -1000f), vec3<u32>(4294967295u, 62429u, 49369u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(-509f, 834f, -1082f, 175f), vec3<u32>(0u, 0u, 72227u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<f32>(-588f, 1173f, -1142f, 733f), vec3<u32>(64825u, 63518u, 1u), vec2<bool>(false, true)), vec4<u32>(0u, 28090u, 4294967295u, 0u), Struct_3(vec3<f32>(283f, -221f, 751f), false, false, Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(-385f, 1366f, -928f, 1271f), vec3<u32>(1u, 1u, 1u), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), vec4<f32>(-124f, 1000f, -1575f, 573f), vec3<u32>(8901u, 45576u, 4294967295u), vec2<bool>(true, false))))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<f32>(492f, 992f, 177f, 886f), vec3<u32>(29551u, 133642u, 4294967295u), vec2<bool>(false, false)), vec4<u32>(38648u, 59864u, 0u, 32420u), Struct_3(vec3<f32>(1614f, 1421f, -1393f), true, true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, false), vec4<f32>(1000f, -972f, 930f, -834f), vec3<u32>(34205u, 1444u, 35525u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(277f, -1189f, -148f, -1095f), vec3<u32>(4561u, 0u, 1u), vec2<bool>(false, false))))), Struct_4(Struct_1(vec2<bool>(true, true), vec4<f32>(-1878f, 1000f, -1000f, 528f), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<bool>(true, false)), vec4<u32>(35001u, 31055u, 4294967295u, 4294967295u), Struct_3(vec3<f32>(-786f, 1152f, -177f), false, false, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(true, true), vec4<f32>(373f, -1192f, 322f, 634f), vec3<u32>(11995u, 15582u, 42025u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(-212f, 886f, 1452f, -265f), vec3<u32>(30896u, 58130u, 14949u), vec2<bool>(false, false))))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<f32>(280f, 458f, -2226f, 119f), vec3<u32>(36990u, 4294967295u, 0u), vec2<bool>(false, false)), vec4<u32>(1u, 88070u, 10771u, 0u), Struct_3(vec3<f32>(-822f, 394f, 283f), false, false, Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<bool>(false, true), vec4<f32>(-1305f, -1275f, 1053f, -837f), vec3<u32>(18544u, 4294967295u, 99206u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(-1846f, 816f, -570f, 358f), vec3<u32>(2665u, 4294967295u, 44714u), vec2<bool>(false, true))))), Struct_4(Struct_1(vec2<bool>(true, true), vec4<f32>(821f, 1000f, -353f, -683f), vec3<u32>(32121u, 4294967295u, 0u), vec2<bool>(true, true)), vec4<u32>(90431u, 0u, 1u, 1u), Struct_3(vec3<f32>(844f, 1173f, 1157f), true, false, Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<bool>(false, true), vec4<f32>(319f, 103f, -1772f, 629f), vec3<u32>(4294967295u, 1u, 31432u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(546f, -148f, 1026f, -208f), vec3<u32>(794u, 45300u, 0u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<f32>(-223f, 268f, 113f, -1828f), vec3<u32>(0u, 1u, 0u), vec2<bool>(false, false)), vec4<u32>(1u, 1u, 8269u, 4294967295u), Struct_3(vec3<f32>(263f, 1242f, -242f), false, false, Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(321f, 1318f, 1000f, 1000f), vec3<u32>(4294967295u, 5883u, 1u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec4<f32>(-1248f, -2154f, 507f, -633f), vec3<u32>(1u, 1641u, 1u), vec2<bool>(true, false))))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<f32>(1565f, -1112f, -1000f, -829f), vec3<u32>(66185u, 1u, 16125u), vec2<bool>(false, false)), vec4<u32>(0u, 4294967295u, 4294967295u, 6840u), Struct_3(vec3<f32>(2329f, 1367f, -644f), true, false, Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, false), vec4<f32>(-137f, -1000f, 592f, 865f), vec3<u32>(76369u, 4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(-662f, 1273f, -990f, -504f), vec3<u32>(1u, 25611u, 4294967295u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<f32>(322f, 779f, 545f, 554f), vec3<u32>(35172u, 64493u, 8008u), vec2<bool>(true, true)), vec4<u32>(19414u, 18469u, 4294967295u, 4294967295u), Struct_3(vec3<f32>(-738f, -918f, 1000f), true, false, Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(true, true), vec4<f32>(-576f, -447f, -1000f, 1593f), vec3<u32>(48824u, 4294967295u, 16589u), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(1000f, -1056f, 848f, 354f), vec3<u32>(7443u, 2195u, 0u), vec2<bool>(false, false))))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<f32>(-1000f, -266f, 1000f, -1061f), vec3<u32>(1u, 4294967295u, 36997u), vec2<bool>(true, true)), vec4<u32>(1u, 0u, 79594u, 4294967295u), Struct_3(vec3<f32>(-1462f, -186f, -1141f), true, false, Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<bool>(false, true), vec4<f32>(-822f, -1709f, -685f, -510f), vec3<u32>(0u, 1u, 25997u), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(665f, 783f, -1050f, -1441f), vec3<u32>(16884u, 0u, 4294967295u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<f32>(640f, -912f, 2177f, 828f), vec3<u32>(4294967295u, 12803u, 44568u), vec2<bool>(true, true)), vec4<u32>(1u, 1u, 84989u, 10392u), Struct_3(vec3<f32>(345f, 345f, 380f), false, true, Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<bool>(true, false), vec4<f32>(394f, -938f, 1859f, -251f), vec3<u32>(22334u, 38607u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), vec4<f32>(249f, -493f, -825f, -496f), vec3<u32>(0u, 9767u, 4294967295u), vec2<bool>(false, false))))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<f32>(-1000f, -712f, -1198f, -1084f), vec3<u32>(96577u, 4294967295u, 4294967295u), vec2<bool>(false, false)), vec4<u32>(3820u, 55726u, 73394u, 1u), Struct_3(vec3<f32>(1000f, -1483f, -272f), true, false, Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<bool>(true, true), vec4<f32>(-1699f, 1369f, 2891f, 1347f), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(-275f, -1668f, 503f, 262f), vec3<u32>(4294967295u, 30974u, 1u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<f32>(1281f, -1000f, 838f, 380f), vec3<u32>(1u, 1u, 0u), vec2<bool>(false, false)), vec4<u32>(1875u, 3448u, 1u, 29700u), Struct_3(vec3<f32>(1000f, 929f, 1288f), false, false, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(true, false), vec4<f32>(810f, 1748f, 1261f, 638f), vec3<u32>(0u, 101597u, 34338u), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true), vec4<f32>(1221f, -1262f, 1905f, 117f), vec3<u32>(1u, 4294967295u, 32512u), vec2<bool>(false, false))))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<f32>(-1184f, -350f, 276f, -1596f), vec3<u32>(54220u, 1665u, 50222u), vec2<bool>(true, false)), vec4<u32>(27722u, 4294967295u, 0u, 31214u), Struct_3(vec3<f32>(-844f, 650f, 1162f), true, false, Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<bool>(false, false), vec4<f32>(134f, -167f, 985f, -115f), vec3<u32>(81733u, 47469u, 0u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec4<f32>(-609f, -1441f, -440f, 508f), vec3<u32>(2971u, 54476u, 8081u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(true, true), vec4<f32>(-1160f, 559f, 1241f, 1931f), vec3<u32>(19183u, 57212u, 90812u), vec2<bool>(false, true)), vec4<u32>(47181u, 4294967295u, 4294967295u, 72696u), Struct_3(vec3<f32>(-1124f, -531f, 793f), true, true, Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<bool>(true, false), vec4<f32>(645f, 246f, 733f, 1747f), vec3<u32>(9966u, 14152u, 43584u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(269f, 856f, -760f, -826f), vec3<u32>(0u, 1u, 4294967295u), vec2<bool>(false, false))))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<f32>(227f, 346f, 1000f, -1141f), vec3<u32>(19915u, 12044u, 0u), vec2<bool>(false, true)), vec4<u32>(14989u, 127879u, 1u, 4294967295u), Struct_3(vec3<f32>(852f, 1000f, -633f), false, false, Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<bool>(false, true), vec4<f32>(2665f, 2221f, -717f, -1093f), vec3<u32>(59249u, 33457u, 0u), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<f32>(204f, 1649f, -1768f, -1278f), vec3<u32>(141588u, 4294967295u, 14753u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(true, true), vec4<f32>(946f, 804f, -1082f, 2103f), vec3<u32>(1u, 46828u, 4294967295u), vec2<bool>(true, false)), vec4<u32>(4294967295u, 0u, 547u, 51583u), Struct_3(vec3<f32>(-457f, -1129f, -133f), true, true, Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<bool>(false, false), vec4<f32>(433f, 1516f, -904f, -1000f), vec3<u32>(79548u, 1144u, 35527u), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), vec4<f32>(455f, 536f, -214f, -3805f), vec3<u32>(63925u, 68304u, 4294967295u), vec2<bool>(true, true))))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<f32>(-619f, -1040f, 176f, 1891f), vec3<u32>(59820u, 46789u, 1u), vec2<bool>(true, true)), vec4<u32>(1u, 4294967295u, 1u, 69111u), Struct_3(vec3<f32>(-814f, 653f, 1639f), false, true, Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, true), vec4<f32>(-1028f, -1939f, -1000f, 361f), vec3<u32>(4047u, 4294967295u, 1882u), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true), vec4<f32>(-843f, 1047f, 2043f, -1529f), vec3<u32>(4294967295u, 0u, 1u), vec2<bool>(true, false))))));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    var var_0 = global2.b.d;
    let var_1 = global2.c;
    return _wgslsmith_f_op_f32(-var_1.b.x);
}

fn func_3() -> vec2<bool> {
    var var_0 = select(vec4<bool>(any(vec2<bool>(true, any(vec2<bool>(global2.b.d.x, global2.b.a.x)))), !(!global2.a.x), global2.a.x, false), select(vec4<bool>(!any(vec4<bool>(true, false, false, global2.a.x)), any(select(vec4<bool>(true, global2.b.d.x, false, global2.a.x), vec4<bool>(global2.b.d.x, true, global2.b.a.x, global2.a.x), false)), !global2.c.a.x, (global2.b.a.x & true) | !global2.c.d.x), select(vec4<bool>(global2.a.x, any(global2.a), any(global2.a.yx), true), vec4<bool>(true, true, true, true), true), all(select(vec4<bool>(global2.b.a.x, true, false, global2.a.x), !vec4<bool>(true, true, global2.a.x, true), global2.b.a.x || global2.c.d.x))), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 1i, 1i, 23085i), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), vec4<i32>(u_input.d, -1i, u_input.d, -48026i))) <= _wgslsmith_clamp_i32(u_input.d, -7603i, u_input.d));
    global1 = array<Struct_4, 18>();
    let var_1 = Struct_3(vec3<f32>(1f, _wgslsmith_f_op_f32(-global2.b.b.x), _wgslsmith_f_op_f32(653f - _wgslsmith_div_f32(global2.c.b.x, _wgslsmith_f_op_f32(trunc(global2.c.b.x))))), true, !var_0.x, Struct_2(var_0.zzx, global2.b, Struct_1(var_0.zy, global2.c.b, ~global2.c.c, !vec2<bool>(false, global2.c.d.x))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, global2.c.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d.c.b.x)))))), Struct_4(var_1.d.b, select(vec4<u32>(1u, _wgslsmith_clamp_u32(35961u, var_1.d.c.c.x, u_input.b.x), var_1.d.c.c.x, u_input.c), ~(~vec4<u32>(u_input.a, u_input.c, u_input.b.x, 20149u)), false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~global2.c.c), vec3<u32>(~0u, var_1.d.c.c.x, firstLeadingBit(global2.b.c.x))), 23u)]));
    var var_3 = select(!select(vec4<bool>(var_2.b.c.c, any(vec4<bool>(true, var_1.b, false, var_1.b)), var_1.b, true), select(!vec4<bool>(var_0.x, var_0.x, true, var_1.c), !vec4<bool>(true, var_2.b.c.c, false, true), var_1.c), select(vec4<bool>(false, var_1.d.c.d.x, true, var_1.c), !vec4<bool>(false, var_1.c, false, global2.c.d.x), var_1.b)), select(!select(!vec4<bool>(false, global2.b.a.x, var_0.x, var_0.x), select(vec4<bool>(false, var_1.d.c.d.x, var_0.x, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, false, global2.b.a.x)), !select(select(vec4<bool>(var_0.x, var_1.d.a.x, var_2.b.a.d.x, false), vec4<bool>(false, true, var_0.x, false), vec4<bool>(global2.a.x, global2.b.a.x, false, true)), select(vec4<bool>(false, false, global2.c.a.x, true), vec4<bool>(global2.a.x, var_2.b.a.a.x, false, var_1.c), vec4<bool>(false, var_2.b.a.a.x, var_1.b, var_2.b.c.d.b.a.x)), select(true, global2.a.x, var_2.b.c.d.b.d.x)), false), select(select(vec4<bool>(global2.c.c.x == var_2.b.a.c.x, global2.c.d.x, all(vec2<bool>(global2.c.a.x, false)), false), !(!vec4<bool>(var_1.b, var_2.b.a.a.x, false, global2.a.x)), 1f <= _wgslsmith_f_op_f32(-global2.c.b.x)), select(vec4<bool>(var_2.b.a.c.x == 0u, false, !var_2.b.c.b, false), !vec4<bool>(false, global2.c.d.x, var_2.b.a.d.x, false), global2.b.d.x), (611u << (abs(0u) % 32u)) != max(66741u ^ var_1.d.c.c.x, countOneBits(43663u))));
    return !var_1.d.b.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.b.x, _wgslsmith_f_op_f32(1665f + 1004f), _wgslsmith_f_op_f32(round(global2.b.b.x)), _wgslsmith_f_op_f32(782f + 335f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global2.c.b, vec4<f32>(global2.b.b.x, 631f, global2.b.b.x, global2.b.b.x))))))), vec4<f32>(-2171f, _wgslsmith_f_op_f32(-global2.c.b.x), global2.b.b.x, _wgslsmith_div_f32(457f, _wgslsmith_f_op_f32(func_2()))));
    global0 = array<Struct_3, 23>();
    var var_1 = _wgslsmith_f_op_f32(trunc(-166f));
    var var_2 = 57387i;
    var var_3 = ~u_input.c | 0u;
    return Struct_2(select(vec3<bool>((global2.c.a.x != global2.b.a.x) || any(vec3<bool>(global2.c.a.x, global2.a.x, false)), global2.b.a.x, -46498i < u_input.d), select(select(vec3<bool>(true, global2.c.d.x, global2.c.a.x), global2.a, all(vec3<bool>(global2.c.a.x, false, false))), global2.a, global2.a.x), global2.b.a.x), global2.c, Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1035f, global2.c.b.x, var_0.x, 1983f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.b.x, 108f, -792f, var_0.x) + vec4<f32>(var_0.x, 587f, 753f, 396f))) - _wgslsmith_f_op_vec4_f32(-global2.b.b)), min(global2.b.c, min(global2.b.c, ~vec3<u32>(u_input.b.x, 113432u, global2.c.c.x))), select(!global2.b.d, select(vec2<bool>(global2.c.d.x, false), global2.b.a, !global2.b.d.x), !(!global2.b.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_u32(global2.b.c.x, _wgslsmith_div_u32(4294967295u, 36962u))) | 68466u;
    global0 = array<Struct_3, 23>();
    global1 = array<Struct_4, 18>();
    global2 = func_1(u_input.d);
    global0 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-367f, -785f, 1000f, vec2<i32>(-1i) * -(~(~vec2<i32>(u_input.d, u_input.d))));
}

