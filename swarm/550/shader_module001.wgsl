struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, true, false), vec3<u32>(1u, 1u, 0u), false, vec3<f32>(-397f, 819f, 632f)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), vec3<u32>(4294967295u, 1030u, 45531u), true, vec3<f32>(-1070f, -228f, -1842f)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, true, false), vec3<u32>(17465u, 0u, 10799u), false, vec3<f32>(-498f, -616f, 1979f)), 1u, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), vec3<u32>(3180u, 4294967295u, 1u), false, vec3<f32>(391f, -1144f, 805f))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), vec3<u32>(68110u, 53345u, 35021u), false, vec3<f32>(-459f, -413f, -1573f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), vec3<u32>(1u, 71398u, 55932u), true, vec3<f32>(329f, 636f, -837f)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), vec3<u32>(7107u, 40041u, 4294967295u), false, vec3<f32>(-1443f, 587f, -1355f)), 55982u, Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, true, true), vec3<u32>(89948u, 4294967295u, 17497u), false, vec3<f32>(-1154f, 1228f, -1115f))));

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, false), vec3<u32>(1u, 4294967295u, 0u), false, vec3<f32>(-538f, 767f, 306f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, false), vec3<u32>(37444u, 1u, 40330u), false, vec3<f32>(137f, -527f, 473f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), vec3<u32>(33159u, 1u, 44391u), false, vec3<f32>(267f, -153f, -936f)), 58558u, Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec3<u32>(54110u, 4294967295u, 27601u), false, vec3<f32>(560f, 1564f, 487f))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), vec3<u32>(1u, 92208u, 20674u), true, vec3<f32>(1379f, -852f, -1000f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec3<u32>(0u, 4294967295u, 4294967295u), true, vec3<f32>(-1222f, 1727f, 1489f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), vec3<u32>(11001u, 1u, 32275u), false, vec3<f32>(593f, 438f, 1360f)), 0u, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec3<u32>(40595u, 4294967295u, 4294967295u), true, vec3<f32>(766f, 246f, 321f))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec3<u32>(58782u, 1u, 1u), false, vec3<f32>(-291f, -288f, -1079f)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), vec3<u32>(1u, 52743u, 19421u), true, vec3<f32>(-1229f, 535f, -835f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), vec3<u32>(1u, 14599u, 20249u), true, vec3<f32>(-416f, 180f, -1563f)), 0u, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), vec3<u32>(40247u, 39401u, 6779u), true, vec3<f32>(321f, 1726f, -684f))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), vec3<u32>(11992u, 1u, 4294967295u), false, vec3<f32>(563f, 1081f, -694f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), vec3<u32>(4294967295u, 4294967295u, 1u), false, vec3<f32>(-123f, -1847f, 540f)), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), vec3<u32>(0u, 1u, 8330u), false, vec3<f32>(-1115f, 242f, -2725f)), 51317u, Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, false), vec3<u32>(51186u, 0u, 0u), true, vec3<f32>(-581f, -1110f, 168f))), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), vec3<u32>(76464u, 1u, 0u), false, vec3<f32>(-501f, -353f, -457f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, true, false), vec3<u32>(1u, 21531u, 26157u), false, vec3<f32>(-1403f, 210f, -793f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 51241u, 0u), true, vec3<f32>(-691f, 1604f, -1568f)), 1u, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), vec3<u32>(1u, 13414u, 84841u), true, vec3<f32>(1766f, 1243f, -1055f))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), vec3<u32>(1u, 0u, 1u), false, vec3<f32>(-775f, -789f, 1775f)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), vec3<u32>(1u, 24902u, 0u), true, vec3<f32>(-1408f, -1414f, -1799f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), vec3<u32>(0u, 6004u, 27874u), false, vec3<f32>(1000f, 857f, -2491f)), 4294967295u, Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), vec3<u32>(17199u, 1u, 0u), false, vec3<f32>(1496f, 1422f, -1017f))), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec3<u32>(88283u, 4294967295u, 1u), true, vec3<f32>(-2163f, -1594f, 1308f)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), vec3<u32>(6981u, 4294967295u, 4294967295u), true, vec3<f32>(1151f, 466f, -243f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), vec3<u32>(0u, 108308u, 4294967295u), true, vec3<f32>(-668f, -1042f, 1653f)), 20620u, Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 78878u), true, vec3<f32>(-959f, 636f, -637f))), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), vec3<u32>(31841u, 0u, 75764u), false, vec3<f32>(-1969f, -713f, -1000f)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), vec3<u32>(3632u, 1u, 67177u), false, vec3<f32>(-507f, -1072f, -287f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), vec3<u32>(0u, 4294967295u, 4294967295u), true, vec3<f32>(-1187f, 161f, 853f)), 1u, Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, false, false), vec3<u32>(4294967295u, 3983u, 1u), false, vec3<f32>(-157f, 491f, -661f))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), vec3<u32>(1u, 4294967295u, 0u), true, vec3<f32>(-563f, 102f, 1975f)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec3<u32>(52484u, 0u, 4294967295u), false, vec3<f32>(1873f, -1205f, 740f)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), vec3<u32>(0u, 13078u, 43083u), true, vec3<f32>(1178f, 1296f, -215f)), 4294967295u, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), vec3<u32>(43172u, 4294967295u, 17311u), true, vec3<f32>(-2366f, 575f, 1230f))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), vec3<u32>(4294967295u, 9666u, 62025u), false, vec3<f32>(-1000f, 500f, 942f)), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), vec3<u32>(1u, 62399u, 0u), false, vec3<f32>(534f, -1791f, 1609f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), vec3<u32>(69098u, 1u, 0u), false, vec3<f32>(1091f, 406f, -417f)), 9446u, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), vec3<u32>(42331u, 15358u, 4294967295u), false, vec3<f32>(-413f, -1108f, -1000f))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, false, true), vec3<u32>(27254u, 30794u, 4294967295u), false, vec3<f32>(113f, 1749f, 183f)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec3<u32>(41378u, 0u, 17119u), true, vec3<f32>(125f, -798f, 476f)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), vec3<u32>(64170u, 4294967295u, 48619u), true, vec3<f32>(-1295f, -1375f, -1842f)), 0u, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec3<u32>(13877u, 39383u, 788u), true, vec3<f32>(1609f, -778f, 1227f))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, true, true), vec3<u32>(9719u, 7226u, 6068u), false, vec3<f32>(775f, -715f, -1000f)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec3<u32>(4294967295u, 66994u, 16239u), false, vec3<f32>(-2158f, 125f, -626f)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), vec3<u32>(4294967295u, 0u, 4294967295u), false, vec3<f32>(392f, 572f, -1635f)), 38914u, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), vec3<u32>(84708u, 8062u, 99752u), false, vec3<f32>(-779f, 1000f, -545f))), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), vec3<u32>(14610u, 69659u, 4294967295u), true, vec3<f32>(-437f, 1717f, 173f)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), vec3<u32>(0u, 0u, 0u), false, vec3<f32>(-386f, 1326f, 1107f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), vec3<u32>(0u, 78524u, 0u), false, vec3<f32>(-1707f, 1997f, -1000f)), 13438u, Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 1u), false, vec3<f32>(-798f, 570f, 237f))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec3<u32>(51330u, 64843u, 4294967295u), true, vec3<f32>(-625f, 821f, -1055f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, false, false), vec3<u32>(24713u, 24499u, 4294967295u), true, vec3<f32>(-1142f, -1067f, -126f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 20824u, 24527u), false, vec3<f32>(-1189f, -155f, -955f)), 4294967295u, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec3<u32>(4294967295u, 54204u, 4294967295u), true, vec3<f32>(771f, 863f, 608f))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, false), vec3<u32>(30614u, 1u, 37722u), true, vec3<f32>(1000f, -1000f, -1166f)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), vec3<u32>(1u, 1u, 75126u), false, vec3<f32>(464f, -1000f, -1000f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), vec3<u32>(14660u, 53412u, 0u), true, vec3<f32>(1264f, 757f, -462f)), 0u, Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), vec3<u32>(1u, 27686u, 0u), true, vec3<f32>(-1004f, 379f, 195f))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), vec3<u32>(1u, 0u, 40353u), true, vec3<f32>(524f, 2001f, 434f)), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), vec3<u32>(1u, 1u, 1u), false, vec3<f32>(257f, -1045f, -656f)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), vec3<u32>(4294967295u, 0u, 1u), true, vec3<f32>(672f, 951f, 1179f)), 4294967295u, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec3<u32>(50987u, 1u, 1967u), false, vec3<f32>(234f, 1036f, 381f))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, false), vec3<u32>(8104u, 45422u, 1u), true, vec3<f32>(207f, -1081f, 1169f)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<u32>(15523u, 9597u, 4294967295u), false, vec3<f32>(-171f, -392f, -172f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, true), vec3<u32>(1u, 9635u, 4294967295u), true, vec3<f32>(-279f, 220f, 940f)), 1u, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), vec3<u32>(1u, 4294967295u, 73331u), true, vec3<f32>(599f, 1419f, -781f))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), vec3<u32>(4294967295u, 1u, 0u), true, vec3<f32>(148f, 594f, 246f)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec3<u32>(1u, 1u, 80705u), true, vec3<f32>(263f, -1000f, 955f)), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), vec3<u32>(22810u, 14531u, 28u), true, vec3<f32>(1515f, -105f, -2521f)), 9556u, Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), vec3<u32>(37368u, 29211u, 1u), true, vec3<f32>(1000f, -1049f, 328f))), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec3<u32>(1u, 1u, 0u), true, vec3<f32>(-985f, 1000f, -1080f)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), vec3<u32>(1u, 0u, 4294967295u), true, vec3<f32>(275f, 1120f, -1000f)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 4294967295u), false, vec3<f32>(-932f, 508f, 1149f)), 1u, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), vec3<u32>(74054u, 16338u, 61603u), false, vec3<f32>(-1488f, 851f, 379f))), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec3<u32>(49324u, 1u, 4294967295u), false, vec3<f32>(349f, -671f, -896f)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), vec3<u32>(91132u, 43842u, 16965u), false, vec3<f32>(1076f, 1719f, -382f)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), vec3<u32>(4294967295u, 62342u, 1u), true, vec3<f32>(-1000f, -1035f, 408f)), 7316u, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), vec3<u32>(6088u, 21827u, 18742u), true, vec3<f32>(-191f, -1000f, -1220f))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec3<u32>(4294967295u, 0u, 0u), true, vec3<f32>(725f, 211f, 1924f)), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 87613u), true, vec3<f32>(1270f, -1599f, 1671f)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), vec3<u32>(0u, 21123u, 1u), true, vec3<f32>(-1000f, -1000f, -196f)), 42980u, Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec3<u32>(1u, 24990u, 0u), true, vec3<f32>(710f, 996f, 1074f))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), vec3<u32>(0u, 1u, 54428u), true, vec3<f32>(305f, 1035f, -511f)), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), vec3<u32>(62991u, 103226u, 0u), true, vec3<f32>(563f, -764f, -696f)), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), vec3<u32>(34362u, 4294967295u, 39379u), false, vec3<f32>(873f, 364f, 306f)), 1u, Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, false), vec3<u32>(47747u, 6474u, 1u), false, vec3<f32>(846f, -697f, 564f))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), vec3<u32>(0u, 1856u, 68505u), true, vec3<f32>(637f, 398f, -772f)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), vec3<u32>(2811u, 66188u, 0u), false, vec3<f32>(-434f, -268f, 394f)), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec3<u32>(2612u, 46554u, 848u), false, vec3<f32>(-1344f, -1309f, 926f)), 1u, Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), vec3<u32>(4294967295u, 1u, 0u), true, vec3<f32>(-882f, -418f, -768f))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, true), vec3<u32>(11825u, 17845u, 1u), false, vec3<f32>(-1000f, 1000f, 1536f)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec3<u32>(27441u, 0u, 55276u), false, vec3<f32>(325f, 124f, 1000f)), Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), vec3<u32>(0u, 0u, 1u), true, vec3<f32>(-1000f, -1993f, 391f)), 0u, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec3<u32>(61338u, 0u, 1u), true, vec3<f32>(-1000f, -551f, 1019f))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), vec3<u32>(45872u, 39245u, 36744u), true, vec3<f32>(-2005f, -881f, 451f)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), vec3<u32>(24874u, 37898u, 1u), false, vec3<f32>(-1630f, -373f, 680f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), vec3<u32>(71090u, 11644u, 4294967295u), true, vec3<f32>(-1164f, -813f, 1600f)), 1u, Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), vec3<u32>(1u, 4294967295u, 56682u), true, vec3<f32>(-1051f, -433f, 107f))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, false, false), vec3<u32>(0u, 1u, 35346u), true, vec3<f32>(863f, -1620f, 141f)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec3<u32>(4294967295u, 7741u, 32721u), true, vec3<f32>(-1501f, -1000f, -1000f)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, true, false), vec3<u32>(20619u, 11437u, 1u), false, vec3<f32>(2861f, -1851f, -393f)), 4294967295u, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, 0u), false, vec3<f32>(108f, 580f, -114f))), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), vec3<u32>(40558u, 4294967295u, 42195u), true, vec3<f32>(-747f, -651f, 286f)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), vec3<u32>(4294967295u, 9465u, 0u), false, vec3<f32>(710f, -1173f, -1000f)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), vec3<u32>(1u, 85932u, 1u), true, vec3<f32>(-1681f, -399f, 1154f)), 32485u, Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), vec3<u32>(49967u, 4294967295u, 122479u), false, vec3<f32>(-696f, -1361f, 1851f))));

var<private> global2: Struct_2;

var<private> global3: vec4<f32>;

var<private> global4: array<vec4<u32>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = Struct_2(global2.b, Struct_1(vec4<bool>(true, true, true, true), global2.c.a.yxx, firstTrailingBit(select(max(arg_0.wzy, arg_2.b.c), vec3<u32>(global2.b.c.x, 1u, 0u), global3.x <= global2.a.e.x)), true, _wgslsmith_f_op_vec3_f32(abs(arg_2.b.e))), arg_2.c, 4294967295u, Struct_1(!select(vec4<bool>(false, arg_2.b.a.x, arg_2.c.b.x, true), !arg_2.a.a, arg_2.a.d & global2.e.d), global2.c.a.www, abs(arg_0.wxw), any(!select(vec4<bool>(global2.b.d, global2.a.b.x, true, global2.b.b.x), global2.e.a, true)), vec3<f32>(_wgslsmith_f_op_f32(-766f - global2.e.e.x), global2.a.e.x, _wgslsmith_f_op_f32(-global2.c.e.x))));
    let var_1 = var_0.e.d;
    global3 = vec4<f32>(448f, _wgslsmith_f_op_f32(global2.e.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(610f)))), global3.x, arg_2.a.e.x);
    let var_2 = Struct_4(vec3<bool>(true == any(global2.c.a), any(!select(arg_2.b.a, vec4<bool>(false, false, true, global2.c.d), global2.c.a)), any(!var_0.a.b.zy)), Struct_3(var_0.b, global2.c));
    let var_3 = select(24370i, 2147483647i, var_1);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.e.x, _wgslsmith_f_op_f32(min(191f, arg_2.e.e.x)), var_2.b.b.e.x, -1266f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, -508f, -164f, -677f), vec4<f32>(1000f, var_2.b.a.e.x, var_2.b.b.e.x, -463f), vec4<bool>(var_0.b.b.x, var_1, true, false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(515f, global3.x, var_0.a.e.x, -106f) - vec4<f32>(1100f, var_2.b.a.e.x, arg_2.b.e.x, -273f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2147f, global3.x, arg_2.a.e.x)) - vec4<f32>(arg_2.a.e.x, -1265f, 1000f, -1332f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.e.x), _wgslsmith_f_op_f32(-730f - var_2.b.b.e.x), _wgslsmith_f_op_f32(global2.c.e.x * 489f), _wgslsmith_f_op_f32(global2.e.e.x * var_0.a.e.x)), vec4<f32>(_wgslsmith_f_op_f32(var_0.e.e.x + var_0.e.e.x), global3.x, _wgslsmith_div_f32(global3.x, -1471f), _wgslsmith_f_op_f32(round(global3.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    global4 = array<vec4<u32>, 18>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, global3.x, 1000f, -902f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1000f, -1459f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(0u, 9417u, 4294967295u, 19297u), 4294967295u, Struct_2(global2.e, global2.a, Struct_1(vec4<bool>(arg_3.x, arg_2, false, false), arg_1.zzw, vec3<u32>(global2.a.c.x, 4294967295u, global2.a.c.x), false, global3.zzw), global2.a.c.x, global2.e)))), all(arg_1.yx))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.b.e.x, -2084f, arg_0.e.x))))), select(global2.a.a, !vec4<bool>(global2.c.d, false, false, true), !(!vec4<bool>(arg_1.x, global2.e.b.x, arg_0.d, false))))) * vec4<f32>(_wgslsmith_f_op_f32(607f * global2.b.e.x), _wgslsmith_f_op_f32(select(-391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-205f)) * _wgslsmith_f_op_f32(select(arg_0.e.x, 122f, arg_1.x))), global2.a.b.x)), _wgslsmith_div_f32(1256f, arg_0.e.x), -1158f));
    let var_0 = Struct_3(Struct_1(!arg_0.a, select(select(!vec3<bool>(arg_1.x, arg_0.d, true), vec3<bool>(global2.b.d, arg_3.x, false), all(arg_0.b)), select(select(vec3<bool>(false, true, arg_3.x), arg_1.zyy, true), vec3<bool>(false, global2.a.a.x, true), any(vec3<bool>(false, false, false))), any(vec2<bool>(true, false))), global2.b.c, true, vec3<f32>(919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * 1022f)), arg_0.e.x)), Struct_1(arg_0.a, vec3<bool>(any(select(arg_0.b, global2.e.a.zxw, vec3<bool>(true, true, arg_0.b.x))), arg_0.a.x, true), vec3<u32>(4294967295u, 0u, 25112u), false, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.wyw), global2.e.e), arg_0.e)));
    var var_1 = global1[_wgslsmith_index_u32(global2.b.c.x, 27u)];
    var var_2 = Struct_2(Struct_1(vec4<bool>(!arg_3.x || any(arg_0.a.xy), !arg_0.a.x || (arg_1.x & arg_2), _wgslsmith_add_i32(u_input.a, 1i) <= _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 2147483647i)), arg_0.a.x), select(arg_1.zwx, !vec3<bool>(true, false, global2.c.a.x), true), max(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(global2.c.c.x, var_1.e.c.x, global2.e.c.x), vec3<u32>(12419u, var_1.d, arg_0.c.x)), vec3<u32>(45575u, 108922u, 33403u)), global2.e.c), true, global3.xzy), Struct_1(select(!(!var_0.b.a), !vec4<bool>(arg_0.a.x, true, false, arg_3.x), arg_3.x), !select(vec3<bool>(false, var_0.b.d, arg_3.x), !var_0.a.b, global2.b.b), _wgslsmith_mult_vec3_u32(~(~arg_0.c), var_0.b.c), all(!var_1.b.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.e * vec3<f32>(490f, -811f, 1846f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.e.x, 343f, 555f) + arg_0.e)))))), Struct_1(select(vec4<bool>(!var_0.b.b.x, !var_1.c.b.x, var_0.a.c.x <= var_1.b.c.x, 1i >= u_input.b.x), select(vec4<bool>(arg_3.x, false, true, false), select(vec4<bool>(false, var_1.e.a.x, true, var_0.b.b.x), vec4<bool>(arg_3.x, arg_3.x, false, var_0.b.d), false), !vec4<bool>(true, true, arg_0.a.x, false)), any(select(var_0.a.b, vec3<bool>(arg_2, arg_2, false), global2.a.b))), var_0.b.a.wxw, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c.x, 23864u, 31667u), abs(arg_0.c), ~vec3<u32>(u_input.d, 84471u, 0u)) << (arg_0.c % vec3<u32>(32u)), _wgslsmith_div_i32(firstLeadingBit(-1i), _wgslsmith_add_i32(2147483647i, u_input.b.x)) != countOneBits(u_input.b.x), _wgslsmith_f_op_vec3_f32(global2.b.e + vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.e.e.x)), _wgslsmith_f_op_f32(min(global2.a.e.x, -877f)), global2.a.e.x))), select(var_0.a.c.x, u_input.d, all(var_0.a.a)), arg_0);
    return Struct_1(var_1.e.a, !arg_1.yzx, _wgslsmith_clamp_vec3_u32(global2.a.c, arg_0.c, vec3<u32>(~var_2.c.c.x, ~0u, _wgslsmith_sub_u32(u_input.d, 49032u)) >> (vec3<u32>(var_1.c.c.x, ~var_0.a.c.x, var_2.a.c.x) % vec3<u32>(32u))), any(select(!select(vec3<bool>(arg_0.a.x, arg_3.x, false), var_2.b.b, false), !select(arg_1.xwx, vec3<bool>(arg_3.x, false, arg_2), var_2.a.b), vec3<bool>(arg_0.b.x & false, false, global2.e.d))), vec3<f32>(global2.b.e.x, _wgslsmith_div_f32(var_0.b.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.e.x - -805f) * _wgslsmith_f_op_f32(global3.x + 917f))), 201f));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(global2.c, global2.c.a, !(!(!global2.e.b.x)) | true, !global2.a.a.ww);
    return Struct_4(vec3<bool>(true, all(!(!global2.e.b.zx)), select(all(vec3<bool>(true, var_0.a.x, var_0.d)) && (var_0.c.x != var_0.c.x), true, any(vec2<bool>(true, false)) || !var_0.d)), Struct_3(Struct_1(!var_0.a, !(!global2.a.b), countOneBits(~global2.b.c), func_2(func_2(Struct_1(var_0.a, global2.a.b, u_input.c, false, global2.e.e), vec4<bool>(false, true, false, true), false, global2.c.b.zy), select(vec4<bool>(global2.e.d, var_0.b.x, false, global2.e.d), global2.b.a, true), var_0.b.x, vec2<bool>(false, false)).d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 1297f)))), func_2(func_2(Struct_1(var_0.a, vec3<bool>(false, true, false), vec3<u32>(var_0.c.x, 8468u, var_0.c.x), false, vec3<f32>(global3.x, -344f, global2.c.e.x)), select(vec4<bool>(global2.a.b.x, false, false, true), global2.b.a, var_0.d), !var_0.b.x, global2.c.a.yx), func_2(func_2(Struct_1(vec4<bool>(global2.e.b.x, false, true, false), var_0.a.zwy, vec3<u32>(1u, 0u, 0u), false, vec3<f32>(-1857f, var_0.e.x, -732f)), var_0.a, true, global2.a.b.xy), select(vec4<bool>(var_0.b.x, true, global2.a.a.x, var_0.d), vec4<bool>(global2.b.a.x, true, var_0.b.x, var_0.d), false), var_0.a.x, var_0.b.yy).a, 509f <= _wgslsmith_f_op_f32(abs(global2.a.e.x)), global2.a.a.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.b.x;
    var var_1 = func_1();
    global0 = array<Struct_2, 2>();
    var var_2 = Struct_2(func_1().b.b, Struct_1(func_2(func_2(var_1.b.b, !vec4<bool>(var_1.b.a.a.x, true, global2.e.a.x, global2.b.d), false, func_1().a.zy), global2.b.a, firstLeadingBit(u_input.b.x) < ~21008i, vec2<bool>(true, any(vec2<bool>(global2.a.b.x, global2.a.a.x)))).a, func_1().a, vec3<u32>(~4294967295u, ~global2.e.c.x, ~4327u) & (var_1.b.b.c << (min(u_input.c, vec3<u32>(0u, var_1.b.b.c.x, global2.a.c.x)) % vec3<u32>(32u))), !((u_input.c.x > 5996u) && all(vec2<bool>(var_1.a.x, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(171f, global3.x, func_2(global2.c, vec4<bool>(var_1.a.x, var_1.b.b.a.x, true, var_1.a.x), true, global2.e.b.yx).e.x) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(639f, 1000f, global2.b.e.x), global3.xzz, vec3<bool>(global2.b.a.x, var_1.a.x, var_1.b.a.a.x))))))), global2.e, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c.x, global2.c.c.x << (global2.c.c.x % 32u), ~4294967295u) >> ((abs(u_input.d) << ((1u >> (1u % 32u)) % 32u)) % 32u), 2764u), func_1().b.a);
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.e.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(552f)) * func_1().b.a.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) + global2.c.e.x), global3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-340f, var_2.a.e.x, var_1.b.b.e.x, -1551f))))))));
    global2 = global1[_wgslsmith_index_u32(var_2.c.c.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(~min(var_2.b.c.zy, _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1.b.b.c.x), var_1.b.a.c.xx)), select(u_input.c.xy, _wgslsmith_add_vec2_u32(u_input.c.zz, u_input.c.yy) << (vec2<u32>(var_1.b.b.c.x, 69125u) % vec2<u32>(32u)), func_1().a.xy), false), min(~vec2<i32>(countOneBits(u_input.b.x), -1i), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(u_input.b.x & 35419i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, 22161i), vec4<i32>(u_input.b.x, -1i, u_input.a, u_input.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.e.x))), _wgslsmith_f_op_f32(-var_1.b.b.e.x)), 1188f);
}

