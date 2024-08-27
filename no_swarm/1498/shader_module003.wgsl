struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_4,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-740f, 1015f);

var<private> global1: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(vec2<i32>(2756i, i32(-2147483648)), vec3<u32>(13860u, 22007u, 1u), Struct_4(vec2<bool>(true, true), Struct_1(vec3<bool>(false, false, false), vec2<i32>(2147483647i, 1i), 1000f, vec3<i32>(0i, -55010i, -27011i), vec2<bool>(true, true)), vec2<f32>(644f, -1500f)), Struct_3(Struct_2(vec3<i32>(0i, -12620i, -1i), vec4<f32>(-1771f, -128f, -1611f, 736f), 68474u, vec4<f32>(1644f, 1000f, -523f, 119f)), vec3<i32>(1i, 1i, -86316i)), vec2<u32>(0u, 4294967295u)), Struct_5(vec2<i32>(46276i, 2147483647i), vec3<u32>(63400u, 0u, 38607u), Struct_4(vec2<bool>(false, true), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-1i, i32(-2147483648)), 1577f, vec3<i32>(-54021i, i32(-2147483648), 2147483647i), vec2<bool>(true, true)), vec2<f32>(652f, -657f)), Struct_3(Struct_2(vec3<i32>(1i, 17165i, -14917i), vec4<f32>(566f, 184f, -203f, 1127f), 4294967295u, vec4<f32>(986f, -1817f, 687f, -847f)), vec3<i32>(1i, 35950i, 0i)), vec2<u32>(4821u, 1u)), Struct_5(vec2<i32>(-59573i, 84449i), vec3<u32>(126113u, 78399u, 1u), Struct_4(vec2<bool>(false, true), Struct_1(vec3<bool>(false, false, false), vec2<i32>(-25740i, -1i), 369f, vec3<i32>(6637i, 0i, 14364i), vec2<bool>(false, false)), vec2<f32>(1225f, -268f)), Struct_3(Struct_2(vec3<i32>(-26080i, 6944i, 2147483647i), vec4<f32>(-1255f, -1606f, -911f, 295f), 0u, vec4<f32>(1690f, -550f, 1402f, -146f)), vec3<i32>(i32(-2147483648), -2118i, 24541i)), vec2<u32>(41292u, 1720u)), Struct_5(vec2<i32>(0i, 0i), vec3<u32>(54843u, 0u, 0u), Struct_4(vec2<bool>(true, true), Struct_1(vec3<bool>(true, false, true), vec2<i32>(0i, 1i), -2161f, vec3<i32>(i32(-2147483648), i32(-2147483648), 37892i), vec2<bool>(true, true)), vec2<f32>(693f, 140f)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 1i, -1i), vec4<f32>(971f, 1203f, -456f, -1000f), 90110u, vec4<f32>(589f, -1083f, 862f, -405f)), vec3<i32>(-1i, -2087i, i32(-2147483648))), vec2<u32>(0u, 37410u)), Struct_5(vec2<i32>(1i, i32(-2147483648)), vec3<u32>(0u, 28016u, 4304u), Struct_4(vec2<bool>(false, false), Struct_1(vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), -108f, vec3<i32>(53660i, -1i, 2147483647i), vec2<bool>(false, false)), vec2<f32>(-1000f, -632f)), Struct_3(Struct_2(vec3<i32>(-24542i, 35272i, 35879i), vec4<f32>(947f, -797f, 252f, -744f), 1u, vec4<f32>(-710f, -235f, -394f, 1417f)), vec3<i32>(i32(-2147483648), -10020i, 1i)), vec2<u32>(1u, 4294967295u)), Struct_5(vec2<i32>(-20233i, i32(-2147483648)), vec3<u32>(0u, 40114u, 27487u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-11314i, 14056i), 1713f, vec3<i32>(-37140i, i32(-2147483648), 1i), vec2<bool>(false, false)), vec2<f32>(-425f, -233f)), Struct_3(Struct_2(vec3<i32>(62833i, -1i, -1i), vec4<f32>(-658f, -682f, -1294f, -483f), 0u, vec4<f32>(873f, 726f, -1896f, 1000f)), vec3<i32>(23663i, -25888i, -32190i)), vec2<u32>(40298u, 1u)), Struct_5(vec2<i32>(i32(-2147483648), -1i), vec3<u32>(1u, 0u, 4294967295u), Struct_4(vec2<bool>(false, true), Struct_1(vec3<bool>(false, true, true), vec2<i32>(-15151i, 1i), -516f, vec3<i32>(0i, 2147483647i, 26648i), vec2<bool>(true, false)), vec2<f32>(497f, -170f)), Struct_3(Struct_2(vec3<i32>(0i, -42223i, 80296i), vec4<f32>(-136f, 179f, 2252f, -2249f), 0u, vec4<f32>(-1576f, 1000f, 694f, 1083f)), vec3<i32>(1i, -28276i, 42359i)), vec2<u32>(65739u, 2289u)), Struct_5(vec2<i32>(985i, -34622i), vec3<u32>(0u, 0u, 1u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, false), vec2<i32>(10036i, 1i), 2072f, vec3<i32>(-24705i, 2147483647i, 35644i), vec2<bool>(false, false)), vec2<f32>(-2115f, -1000f)), Struct_3(Struct_2(vec3<i32>(-1i, 2147483647i, -31230i), vec4<f32>(1723f, 1604f, 311f, -1074f), 1u, vec4<f32>(-147f, 220f, -112f, 449f)), vec3<i32>(-1i, 13740i, 2147483647i)), vec2<u32>(1u, 25712u)), Struct_5(vec2<i32>(2147483647i, 38678i), vec3<u32>(0u, 1u, 38570u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(false, true, false), vec2<i32>(22930i, -22765i), 585f, vec3<i32>(-52917i, 0i, 2932i), vec2<bool>(true, true)), vec2<f32>(1000f, 883f)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 38357i, -64672i), vec4<f32>(-1268f, -1000f, 449f, -2178f), 1u, vec4<f32>(-1019f, 316f, 1221f, -1387f)), vec3<i32>(2147483647i, -20422i, -25834i)), vec2<u32>(35815u, 1830u)), Struct_5(vec2<i32>(-60463i, -1i), vec3<u32>(1u, 0u, 0u), Struct_4(vec2<bool>(false, false), Struct_1(vec3<bool>(true, false, true), vec2<i32>(21016i, 35613i), 1469f, vec3<i32>(21130i, -58255i, i32(-2147483648)), vec2<bool>(true, false)), vec2<f32>(-278f, 202f)), Struct_3(Struct_2(vec3<i32>(9519i, -13622i, 48642i), vec4<f32>(-301f, -330f, -576f, -959f), 4294967295u, vec4<f32>(935f, -1000f, 1000f, -2529f)), vec3<i32>(-21835i, 0i, -16482i)), vec2<u32>(4294967295u, 27448u)), Struct_5(vec2<i32>(-14804i, -22862i), vec3<u32>(44400u, 102924u, 16542u), Struct_4(vec2<bool>(false, true), Struct_1(vec3<bool>(true, true, true), vec2<i32>(71175i, 0i), 363f, vec3<i32>(-8607i, i32(-2147483648), 0i), vec2<bool>(true, false)), vec2<f32>(439f, -1348f)), Struct_3(Struct_2(vec3<i32>(1i, 38133i, 0i), vec4<f32>(-1000f, 284f, -1281f, -789f), 9564u, vec4<f32>(584f, 2485f, -1255f, 209f)), vec3<i32>(32519i, -1i, 11422i)), vec2<u32>(1u, 4294967295u)), Struct_5(vec2<i32>(104827i, 2147483647i), vec3<u32>(0u, 78870u, 1u), Struct_4(vec2<bool>(false, false), Struct_1(vec3<bool>(true, false, false), vec2<i32>(0i, -21424i), -1372f, vec3<i32>(25153i, 2147483647i, -1i), vec2<bool>(true, true)), vec2<f32>(-479f, 113f)), Struct_3(Struct_2(vec3<i32>(-5005i, 2147483647i, 2147483647i), vec4<f32>(3202f, 533f, -621f, -338f), 55820u, vec4<f32>(274f, 195f, -317f, 554f)), vec3<i32>(-22725i, 10796i, -1i)), vec2<u32>(1u, 15085u)), Struct_5(vec2<i32>(-1i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 62278u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-38091i, -18809i), 579f, vec3<i32>(i32(-2147483648), 0i, -1i), vec2<bool>(false, true)), vec2<f32>(-1129f, -940f)), Struct_3(Struct_2(vec3<i32>(-1i, 42346i, 1i), vec4<f32>(524f, 1000f, 316f, 719f), 1u, vec4<f32>(1115f, -1722f, 481f, -167f)), vec3<i32>(22798i, 10118i, 23045i)), vec2<u32>(1u, 8649u)), Struct_5(vec2<i32>(26162i, -1i), vec3<u32>(0u, 22092u, 4294967295u), Struct_4(vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, false), vec2<i32>(0i, i32(-2147483648)), 1000f, vec3<i32>(-39052i, 10156i, -30454i), vec2<bool>(false, true)), vec2<f32>(1596f, -1000f)), Struct_3(Struct_2(vec3<i32>(29141i, 3265i, -16076i), vec4<f32>(-328f, -1000f, -226f, -1125f), 16280u, vec4<f32>(521f, -1000f, -280f, -1326f)), vec3<i32>(0i, -1i, -1i)), vec2<u32>(0u, 4114u)), Struct_5(vec2<i32>(-1i, -31679i), vec3<u32>(47186u, 1u, 0u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, true), vec2<i32>(1i, 40724i), 602f, vec3<i32>(-1i, 1i, 38764i), vec2<bool>(true, false)), vec2<f32>(1085f, 1000f)), Struct_3(Struct_2(vec3<i32>(-20677i, 0i, -61363i), vec4<f32>(-1000f, 969f, -168f, -1045f), 68414u, vec4<f32>(-610f, 772f, 1619f, 951f)), vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), vec2<u32>(0u, 0u)), Struct_5(vec2<i32>(i32(-2147483648), 101845i), vec3<u32>(21059u, 23529u, 1u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), 1i), -1000f, vec3<i32>(2147483647i, 1i, 3759i), vec2<bool>(true, true)), vec2<f32>(2116f, 1087f)), Struct_3(Struct_2(vec3<i32>(-28901i, 52528i, 0i), vec4<f32>(-483f, 259f, 1000f, -1000f), 5605u, vec4<f32>(185f, 1000f, -1101f, -636f)), vec3<i32>(5401i, -9115i, i32(-2147483648))), vec2<u32>(69339u, 13753u)), Struct_5(vec2<i32>(25640i, -1i), vec3<u32>(46861u, 68488u, 0u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-19349i, 1i), 580f, vec3<i32>(35784i, -10650i, -1i), vec2<bool>(false, true)), vec2<f32>(121f, 1778f)), Struct_3(Struct_2(vec3<i32>(-9604i, -41448i, 0i), vec4<f32>(-1010f, -1000f, -461f, -326f), 7573u, vec4<f32>(1667f, -1000f, -216f, -1454f)), vec3<i32>(-8465i, 0i, 2147483647i)), vec2<u32>(909u, 4294967295u)), Struct_5(vec2<i32>(1i, -1i), vec3<u32>(1u, 32796u, 1u), Struct_4(vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, true), vec2<i32>(3934i, 40269i), -157f, vec3<i32>(-15029i, 36821i, 494i), vec2<bool>(true, false)), vec2<f32>(-640f, -487f)), Struct_3(Struct_2(vec3<i32>(25664i, 2147483647i, -43179i), vec4<f32>(-1840f, 591f, 254f, -1633f), 1u, vec4<f32>(-2333f, -859f, -486f, 1252f)), vec3<i32>(-1i, 0i, 7144i)), vec2<u32>(0u, 1u)), Struct_5(vec2<i32>(658i, i32(-2147483648)), vec3<u32>(55633u, 4294967295u, 1u), Struct_4(vec2<bool>(false, false), Struct_1(vec3<bool>(false, false, true), vec2<i32>(-1i, 19253i), 807f, vec3<i32>(-6335i, 0i, -15071i), vec2<bool>(false, false)), vec2<f32>(-906f, -1280f)), Struct_3(Struct_2(vec3<i32>(2147483647i, 0i, -31261i), vec4<f32>(643f, -321f, -1289f, 236f), 60277u, vec4<f32>(-914f, 529f, 1639f, -541f)), vec3<i32>(-15540i, -31825i, -29060i)), vec2<u32>(4294967295u, 21501u)), Struct_5(vec2<i32>(1426i, -1i), vec3<u32>(1u, 42459u, 4294967295u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, true), vec2<i32>(-14010i, 0i), -1000f, vec3<i32>(-39283i, 0i, 0i), vec2<bool>(false, false)), vec2<f32>(-462f, -874f)), Struct_3(Struct_2(vec3<i32>(-28209i, 1i, -1i), vec4<f32>(-1077f, -336f, -1000f, 1531f), 0u, vec4<f32>(-662f, -2659f, -662f, 1000f)), vec3<i32>(0i, -1i, 2147483647i)), vec2<u32>(13752u, 90205u)), Struct_5(vec2<i32>(-25614i, 36253i), vec3<u32>(32092u, 0u, 26542u), Struct_4(vec2<bool>(false, true), Struct_1(vec3<bool>(false, true, true), vec2<i32>(43250i, 5973i), -2069f, vec3<i32>(0i, 0i, -893i), vec2<bool>(false, true)), vec2<f32>(371f, -577f)), Struct_3(Struct_2(vec3<i32>(0i, 1i, 0i), vec4<f32>(1547f, -1867f, -1270f, -345f), 0u, vec4<f32>(-1000f, 721f, -534f, -457f)), vec3<i32>(0i, i32(-2147483648), 0i)), vec2<u32>(28047u, 31935u)), Struct_5(vec2<i32>(-2393i, -1i), vec3<u32>(13936u, 25821u, 95204u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, true, true), vec2<i32>(1795i, -1i), 1070f, vec3<i32>(2147483647i, 1i, -44922i), vec2<bool>(true, true)), vec2<f32>(-2238f, 1058f)), Struct_3(Struct_2(vec3<i32>(-35587i, 1i, 42021i), vec4<f32>(-1069f, 1386f, -1000f, 1000f), 0u, vec4<f32>(-514f, -231f, -799f, 1278f)), vec3<i32>(-1i, 1i, -10544i)), vec2<u32>(1u, 50766u)), Struct_5(vec2<i32>(13227i, 2147483647i), vec3<u32>(1u, 1u, 4294967295u), Struct_4(vec2<bool>(false, true), Struct_1(vec3<bool>(true, false, false), vec2<i32>(-1651i, 2147483647i), -1733f, vec3<i32>(1i, -2955i, 0i), vec2<bool>(false, true)), vec2<f32>(-1000f, -786f)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 1i, 0i), vec4<f32>(-173f, -158f, -117f, -468f), 28962u, vec4<f32>(-373f, -1102f, 3319f, -1817f)), vec3<i32>(-1i, 0i, 2147483647i)), vec2<u32>(1u, 1u)), Struct_5(vec2<i32>(1i, -25121i), vec3<u32>(1u, 72699u, 14915u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, false), vec2<i32>(19738i, -1i), -535f, vec3<i32>(1i, 2147483647i, 73445i), vec2<bool>(true, false)), vec2<f32>(1822f, 1398f)), Struct_3(Struct_2(vec3<i32>(-45443i, 48517i, 4841i), vec4<f32>(-287f, 125f, -693f, -405f), 1u, vec4<f32>(1201f, 103f, -620f, 465f)), vec3<i32>(-27305i, 0i, 46414i)), vec2<u32>(21112u, 109845u)), Struct_5(vec2<i32>(-1i, 2147483647i), vec3<u32>(89011u, 1u, 47195u), Struct_4(vec2<bool>(true, false), Struct_1(vec3<bool>(false, false, false), vec2<i32>(1i, 52701i), -139f, vec3<i32>(0i, 25334i, 1i), vec2<bool>(false, true)), vec2<f32>(-2010f, 628f)), Struct_3(Struct_2(vec3<i32>(46589i, 40390i, 0i), vec4<f32>(-1818f, -1269f, 1679f, 1219f), 1u, vec4<f32>(1559f, -503f, -219f, 1384f)), vec3<i32>(-48738i, -3543i, -21564i)), vec2<u32>(76171u, 11577u)), Struct_5(vec2<i32>(1i, i32(-2147483648)), vec3<u32>(605u, 1u, 105739u), Struct_4(vec2<bool>(false, false), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-9261i, -1i), 1292f, vec3<i32>(2147483647i, 34547i, -33390i), vec2<bool>(false, false)), vec2<f32>(256f, 712f)), Struct_3(Struct_2(vec3<i32>(2147483647i, -68417i, i32(-2147483648)), vec4<f32>(-895f, 340f, 759f, 1000f), 1u, vec4<f32>(1487f, -821f, -1249f, -1970f)), vec3<i32>(i32(-2147483648), 4708i, i32(-2147483648))), vec2<u32>(44081u, 18872u)));

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(-53981i, 2147483647i, 28728i), vec4<f32>(225f, 746f, -873f, -621f), 10787u, vec4<f32>(-1000f, -852f, -2836f, -113f)), Struct_2(vec3<i32>(0i, -27642i, 1i), vec4<f32>(1304f, 143f, 176f, -1000f), 1u, vec4<f32>(-192f, 1016f, -429f, -2537f)), Struct_2(vec3<i32>(43427i, -9253i, i32(-2147483648)), vec4<f32>(867f, 437f, -840f, 287f), 34879u, vec4<f32>(1174f, 771f, 1115f, 659f)), Struct_2(vec3<i32>(-69584i, 29599i, 45941i), vec4<f32>(-1790f, 616f, 1562f, 668f), 65845u, vec4<f32>(-465f, 342f, 1228f, 1671f)), Struct_2(vec3<i32>(i32(-2147483648), 0i, -8392i), vec4<f32>(-206f, 1906f, 305f, -235f), 4529u, vec4<f32>(1146f, 358f, 884f, 906f)), Struct_2(vec3<i32>(6402i, -21762i, 1i), vec4<f32>(-154f, 465f, 278f, -645f), 0u, vec4<f32>(-523f, 885f, -1033f, -303f)), Struct_2(vec3<i32>(-1i, -38695i, i32(-2147483648)), vec4<f32>(-596f, -621f, -369f, -244f), 1u, vec4<f32>(908f, -625f, -991f, 453f)), Struct_2(vec3<i32>(-2015i, 23401i, 16412i), vec4<f32>(425f, -238f, -384f, 1225f), 0u, vec4<f32>(-1509f, -1108f, -214f, 154f)), Struct_2(vec3<i32>(1i, 1i, -32301i), vec4<f32>(-830f, 814f, 851f, -2823f), 1u, vec4<f32>(-236f, 1484f, 314f, -371f)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 33148i), vec4<f32>(439f, -1021f, -276f, 749f), 0u, vec4<f32>(-1658f, -550f, 1545f, -1682f)), Struct_2(vec3<i32>(-7358i, i32(-2147483648), i32(-2147483648)), vec4<f32>(688f, -491f, 1584f, 1238f), 83457u, vec4<f32>(-548f, -248f, 965f, -242f)), Struct_2(vec3<i32>(42400i, 0i, 2147483647i), vec4<f32>(-1333f, 915f, -2188f, 730f), 21239u, vec4<f32>(-937f, -1000f, -888f, -1276f)), Struct_2(vec3<i32>(-28536i, -1i, 0i), vec4<f32>(964f, 120f, -591f, -347f), 0u, vec4<f32>(577f, 220f, -1398f, 1000f)), Struct_2(vec3<i32>(2147483647i, 0i, 17567i), vec4<f32>(1000f, 231f, 1756f, 1261f), 64832u, vec4<f32>(-132f, 261f, -835f, 645f)), Struct_2(vec3<i32>(46064i, 2727i, -52903i), vec4<f32>(1017f, -494f, 893f, -408f), 11037u, vec4<f32>(-216f, -425f, -1110f, 361f)), Struct_2(vec3<i32>(-38010i, -37852i, 2147483647i), vec4<f32>(-1530f, -1624f, -814f, -2216f), 1u, vec4<f32>(377f, -164f, -1099f, 1212f)), Struct_2(vec3<i32>(-20685i, -27956i, -37162i), vec4<f32>(-724f, -1000f, 200f, 1317f), 0u, vec4<f32>(334f, 974f, -1212f, -823f)), Struct_2(vec3<i32>(10581i, -1i, 63735i), vec4<f32>(1558f, 195f, -504f, 407f), 0u, vec4<f32>(-1720f, 827f, -912f, -695f)), Struct_2(vec3<i32>(1i, 0i, -10773i), vec4<f32>(111f, 447f, -283f, -883f), 34031u, vec4<f32>(-1024f, -1000f, 2470f, 1000f)), Struct_2(vec3<i32>(2147483647i, 1i, 0i), vec4<f32>(1000f, 1644f, 2241f, 477f), 1u, vec4<f32>(-1749f, 1829f, 1855f, -1544f)), Struct_2(vec3<i32>(-8270i, -1i, -1i), vec4<f32>(-1000f, 1217f, 1281f, 195f), 0u, vec4<f32>(259f, -230f, -263f, 1000f)), Struct_2(vec3<i32>(i32(-2147483648), -5272i, i32(-2147483648)), vec4<f32>(-318f, -1293f, 759f, -611f), 4294967295u, vec4<f32>(-1269f, 259f, -229f, 1000f)), Struct_2(vec3<i32>(-8218i, 8332i, 23561i), vec4<f32>(-131f, -805f, -1718f, 529f), 19814u, vec4<f32>(1481f, 1000f, 1137f, 884f)), Struct_2(vec3<i32>(15424i, i32(-2147483648), 1224i), vec4<f32>(1484f, 2223f, -1050f, -701f), 0u, vec4<f32>(1089f, -819f, 601f, 1470f)), Struct_2(vec3<i32>(2147483647i, -1i, 0i), vec4<f32>(-194f, -2317f, -622f, -1365f), 0u, vec4<f32>(1541f, -267f, 1481f, 120f)), Struct_2(vec3<i32>(1i, -27298i, -27147i), vec4<f32>(469f, 871f, -237f, -1000f), 102242u, vec4<f32>(-1626f, -711f, 199f, 1000f)), Struct_2(vec3<i32>(17446i, -38419i, 4459i), vec4<f32>(-1795f, -1000f, -938f, -886f), 35125u, vec4<f32>(-1534f, 730f, -517f, 1144f)), Struct_2(vec3<i32>(-55260i, 36704i, 14704i), vec4<f32>(-241f, -2686f, 260f, 440f), 0u, vec4<f32>(1402f, 1162f, 2066f, 973f)), Struct_2(vec3<i32>(1i, -39329i, 28598i), vec4<f32>(-1000f, -946f, 674f, 1027f), 29655u, vec4<f32>(-535f, 272f, 123f, 778f)), Struct_2(vec3<i32>(1i, 40616i, 1i), vec4<f32>(-366f, 805f, -1448f, 976f), 0u, vec4<f32>(-1326f, 420f, 2048f, -604f)), Struct_2(vec3<i32>(5142i, -6452i, i32(-2147483648)), vec4<f32>(-187f, -698f, -1000f, -1562f), 0u, vec4<f32>(-994f, 235f, 1314f, -425f)));

var<private> global3: vec2<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec2<f32> {
    global3 = select(vec2<u32>(arg_0.b.x, 4294967295u) ^ u_input.c.zx, reverseBits(arg_0.e), arg_0.c.b.a.x);
    var var_0 = !all(vec3<bool>(true, true, true));
    let var_1 = arg_0.c.b;
    global1 = array<Struct_5, 26>();
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2529f)))) - _wgslsmith_f_op_f32(ceil(-1010f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -893f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.c) - vec2<f32>(global0.x, -473f)));
    return vec2<f32>(-2078f, var_1.c);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_2, 31>();
    global0 = _wgslsmith_f_op_vec2_f32(func_3(arg_0));
    global3 = arg_0.e;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))))) - arg_0.c.c.x);
    global3 = ~arg_2.xy;
    return -835f;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    global2 = array<Struct_2, 31>();
    let var_0 = !(-1011f >= arg_1.a.b.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), -1656f)))));
    var var_1 = vec2<bool>(any(vec4<bool>(!all(vec4<bool>(var_0, false, true, var_0)), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(global3.x, 26u)], u_input.a.xx, u_input.c, Struct_4(vec2<bool>(var_0, var_0), Struct_1(vec3<bool>(false, var_0, true), vec2<i32>(0i, -74148i), 394f, vec3<i32>(arg_0, arg_0, 0i), vec2<bool>(true, var_0)), vec2<f32>(1088f, global0.x)))) >= _wgslsmith_f_op_f32(771f * 1000f), false, !(30901i < arg_0))), var_0 && var_0);
    var var_2 = true;
    return Struct_3(Struct_2(min(vec3<i32>(arg_0, 7476i, arg_1.b.x), select(vec3<i32>(1i, arg_1.b.x, -23003i), arg_1.b, arg_1.a.d.x > arg_1.a.d.x)), _wgslsmith_f_op_vec4_f32(select(arg_1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_1.a.d))), select(!vec4<bool>(var_1.x, false, true, var_0), !vec4<bool>(var_1.x, var_0, false, var_1.x), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_1.x, false), vec4<bool>(var_0, var_1.x, var_1.x, var_0))))), ~abs(~u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.a.b)) + arg_1.a.b) * _wgslsmith_f_op_vec4_f32(-arg_1.a.d))), ~vec3<i32>(_wgslsmith_add_i32(~arg_1.a.a.x, arg_1.b.x), _wgslsmith_add_i32(firstTrailingBit(arg_1.b.x), _wgslsmith_dot_vec3_i32(arg_1.a.a, u_input.a.zyw)), -countOneBits(u_input.b)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_4 {
    global3 = vec2<u32>(41670u, _wgslsmith_clamp_u32(1u, 29540u, global3.x));
    let var_0 = select(vec4<bool>(arg_0.c.b.a.x, !any(!arg_0.c.a), false, !(!(!arg_0.c.a.x))), !select(vec4<bool>(true, arg_0.c.a.x, arg_0.c.b.a.x, false), select(vec4<bool>(true, arg_0.c.b.a.x, true, arg_0.c.b.a.x), select(vec4<bool>(arg_0.c.b.a.x, arg_0.c.b.e.x, arg_0.c.b.e.x, false), vec4<bool>(arg_0.c.a.x, arg_0.c.b.a.x, false, arg_0.c.a.x), true), !arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, select(arg_0.c.b.e.x, arg_0.c.a.x, false), true, arg_0.c.b.e.x & arg_0.c.a.x)), false);
    global3 = ~firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(33532u, 112718u), ~vec2<u32>(global3.x, 13475u)), ~arg_0.b.xy));
    let var_1 = arg_0.a.x;
    let var_2 = Struct_2(firstLeadingBit(-arg_0.d.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.a.d)))), _wgslsmith_f_op_vec4_f32(exp2(arg_0.d.a.b)))), _wgslsmith_add_u32(firstLeadingBit((u_input.c.x | u_input.c.x) | 39011u), global3.x), arg_0.d.a.d);
    return arg_0.c;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(u_input.c.x);
    global3 = vec2<u32>(39105u, var_0);
    global3 = ~(~vec2<u32>(~_wgslsmith_sub_u32(arg_1.c, 0u), var_0));
    var var_1 = arg_0.c.b.a.x;
    var var_2 = Struct_5(u_input.a.yy, vec3<u32>(~0u, global3.x, u_input.c.x ^ global3.x), arg_0.c, Struct_3(Struct_2(~(~arg_0.d.a.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.d.a.d), arg_1.b, global0.x >= arg_0.c.b.c)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(32629u, 1u)), vec2<u32>(arg_1.c, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1762f, global0.x, -1000f), arg_1.b))), vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, arg_0.d.b.x)), vec2<i32>(2147483647i, 51762i)), func_4(Struct_5(vec2<i32>(-7683i, arg_1.a.x), vec3<u32>(var_0, 4294967295u, 4294967295u), Struct_4(vec2<bool>(false, false), arg_0.c.b, arg_0.c.c), arg_0.d, vec2<u32>(89665u, var_0)), u_input.a, func_1(u_input.a.x, Struct_3(global2[_wgslsmith_index_u32(u_input.e, 31u)], vec3<i32>(u_input.a.x, arg_0.a.x, u_input.b)))).b.d.x, firstLeadingBit(i32(-1i) * -2147483647i))), ~vec2<u32>(var_0, var_0));
    return func_4(Struct_5(vec2<i32>(var_2.a.x, select(i32(-1i) * -1i, reverseBits(arg_0.d.a.a.x), 37368i >= arg_0.d.a.a.x)), var_2.b, Struct_4(!arg_0.c.b.a.xx, func_4(Struct_5(vec2<i32>(var_2.c.b.b.x, 1i), u_input.c, var_2.c, var_2.d, u_input.c.xy), u_input.a, Struct_3(global2[_wgslsmith_index_u32(arg_1.c, 31u)], arg_0.d.b)).b, arg_0.c.c), Struct_3(func_1(-arg_1.a.x, arg_0.d).a, vec3<i32>(min(-2147483647i, arg_1.a.x), ~0i, arg_2)), _wgslsmith_sub_vec2_u32(abs(~var_2.e), vec2<u32>(u_input.e, var_2.d.a.c))), vec4<i32>(u_input.a.x, 1i, 46096i, max(i32(-1i) * -2147483647i, 23249i)), func_1(func_1(-29110i & _wgslsmith_clamp_i32(-2147483647i, 7683i, arg_0.c.b.b.x), func_1(-arg_1.a.x, func_1(2147483647i, arg_0.d))).a.a.x, func_1(abs(arg_0.a.x), func_1(arg_1.a.x, func_1(-36676i, arg_0.d))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1657f, 567f))) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(192f)))))));
    var var_0 = Struct_4(select(vec2<bool>(-611f == _wgslsmith_f_op_f32(-global0.x), true), vec2<bool>(select(false, false, true), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), true), func_5(Struct_5(~_wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(u_input.b, 0i)), _wgslsmith_mod_vec3_u32(u_input.c, u_input.c), func_4(global1[_wgslsmith_index_u32(1u, 26u)], vec4<i32>(u_input.a.x, 22626i, u_input.b, -1i) << (vec4<u32>(global3.x, 30124u, 0u, 4294967295u) % vec4<u32>(32u)), func_1(u_input.b, Struct_3(global2[_wgslsmith_index_u32(global3.x, 31u)], vec3<i32>(u_input.a.x, -1i, u_input.a.x)))), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, 13240u), 31u)], u_input.a.yzx), ~vec2<u32>(33040u, u_input.d)), func_1(abs(u_input.b), Struct_3(func_1(u_input.b, Struct_3(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(global0.x, global0.x, 1000f, global0.x), 1u, vec4<f32>(global0.x, global0.x, 658f, global0.x)), u_input.a.wxx)).a, _wgslsmith_mult_vec3_i32(u_input.a.xzx, u_input.a.wwx))).a, max(-_wgslsmith_mult_i32(u_input.b, u_input.a.x), _wgslsmith_mult_i32(u_input.b, _wgslsmith_div_i32(u_input.a.x, -20762i))), vec2<bool>(true, any(vec4<bool>(false, true, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(-836f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), 1519f)), 1240f));
    var_0 = Struct_4(vec2<bool>(var_0.a.x, all(!(!var_0.a))), func_5(Struct_5(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -76059i), vec2<i32>(u_input.b, 1797i))), u_input.c, Struct_4(!vec2<bool>(var_0.b.e.x, var_0.a.x), Struct_1(var_0.b.a, vec2<i32>(2147483647i, u_input.b), var_0.c.x, vec3<i32>(-7267i, var_0.b.b.x, -2147483647i), var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2796f, global0.x))), Struct_3(Struct_2(vec3<i32>(76037i, var_0.b.b.x, u_input.b), vec4<f32>(-1555f, -1152f, 1046f, -435f), global3.x, vec4<f32>(-1441f, global0.x, global0.x, -471f)), ~var_0.b.d), u_input.c.yz | _wgslsmith_mod_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.c.x))), Struct_2(~vec3<i32>(2147483647i, u_input.a.x, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, 1647f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -513f, 769f))), 1u, vec4<f32>(-274f, global0.x, 761f, _wgslsmith_div_f32(1045f, -564f))), min(27955i >> (0u % 32u), var_0.b.b.x), var_0.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1470f, _wgslsmith_f_op_f32(f32(-1f) * -619f)))))));
    global1 = array<Struct_5, 26>();
    var var_1 = var_0.b.a.x;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.c.x) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(func_4(Struct_5(var_0.b.b, vec3<u32>(u_input.e, u_input.e, u_input.c.x), Struct_4(var_0.b.e, Struct_1(var_0.b.a, u_input.a.xx, var_0.b.c, vec3<i32>(u_input.b, 0i, -1i), var_0.a), vec2<f32>(-487f, global0.x)), Struct_3(global2[_wgslsmith_index_u32(global3.x, 31u)], u_input.a.xwy), vec2<u32>(5759u, 6760u)), firstLeadingBit(u_input.a), func_1(u_input.a.x, Struct_3(Struct_2(var_0.b.d, vec4<f32>(var_0.b.c, 1014f, var_0.b.c, 918f), global3.x, vec4<f32>(var_0.c.x, var_0.c.x, global0.x, var_0.b.c)), vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)))).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_5(var_0.b.b, u_input.c, Struct_4(var_0.a, Struct_1(var_0.b.a, vec2<i32>(45761i, -18155i), -531f, u_input.a.wzw, vec2<bool>(false, true)), vec2<f32>(-526f, var_0.b.c)), Struct_3(Struct_2(var_0.b.d, vec4<f32>(466f, global0.x, global0.x, var_0.b.c), 35354u, vec4<f32>(global0.x, global0.x, var_0.c.x, global0.x)), var_0.b.d), u_input.c.zy))).x - _wgslsmith_f_op_f32(-global0.x))), func_4(global1[_wgslsmith_index_u32(u_input.e, 26u)], vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(2147483647i, -1i), -2147483647i, i32(-1i) * -27345i), func_1(var_0.b.d.x, func_1(-1i, Struct_3(global2[_wgslsmith_index_u32(global3.x, 31u)], var_0.b.d)))).c)));
    let var_2 = vec3<bool>(all(select(!(!vec4<bool>(var_0.a.x, true, false, true)), vec4<bool>(true, !var_0.b.e.x, all(vec4<bool>(var_0.a.x, var_0.b.e.x, false, var_0.a.x)), any(vec2<bool>(false, var_0.a.x))), var_0.a.x)), var_0.b.e.x, var_0.a.x);
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.e, 4294967295u), 0u), max(~37313u, ~global3.x), ~global3.x << (1u % 32u)), vec3<u32>(~u_input.e, global3.x, ~23023u << (max(u_input.c.x, 30238u) % 32u))), -vec4<i32>(i32(-1i) * -28883i, min(var_0.b.d.x, 1i) | var_0.b.d.x, _wgslsmith_add_i32(~var_0.b.b.x, var_0.b.b.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.d.x, u_input.b, 9936i, 0i), u_input.a)), 1i);
}

