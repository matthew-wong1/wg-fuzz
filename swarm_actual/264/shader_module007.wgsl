struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 0u, 17254u), vec3<u32>(0u, 58312u, 62686u), vec3<u32>(84350u, 4294967295u, 4294967295u), vec3<u32>(74782u, 4294967295u, 24733u), vec3<u32>(1u, 71446u, 0u), vec3<u32>(13768u, 58551u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(40857u, 44618u, 0u), vec3<u32>(33070u, 23924u, 137016u), vec3<u32>(1u, 1u, 0u), vec3<u32>(21695u, 12516u, 1u), vec3<u32>(4294967295u, 17748u, 1u), vec3<u32>(1u, 78291u, 4294967295u), vec3<u32>(4162u, 0u, 4294967295u), vec3<u32>(33585u, 1u, 35641u), vec3<u32>(51158u, 4294967295u, 1u), vec3<u32>(26012u, 1u, 44700u), vec3<u32>(0u, 62154u, 9984u));

var<private> global1: Struct_3 = Struct_3(vec3<bool>(true, true, true), Struct_1(vec4<f32>(759f, 808f, 1136f, 1527f)), Struct_2(Struct_1(vec4<f32>(-700f, -1031f, 655f, -1272f)), vec2<i32>(-1i, 1i), false, false, true));

var<private> global2: array<u32, 11>;

var<private> global3: array<bool, 8>;

var<private> global4: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(366f, 1891f, -2701f, -444f)), Struct_2(Struct_1(vec4<f32>(-1000f, 2238f, -1489f, -2233f)), vec2<i32>(i32(-2147483648), -1i), true, false, false)), 81830u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(-1093f, 327f, 110f, 559f)), Struct_2(Struct_1(vec4<f32>(-150f, -666f, 1106f, -1144f)), vec2<i32>(-11262i, -1i), false, false, true))), Struct_4(Struct_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-609f, -676f, -1574f, 1384f)), Struct_2(Struct_1(vec4<f32>(-2543f, -380f, 1000f, -1000f)), vec2<i32>(1i, 16137i), true, true, false)), 18692u, vec3<bool>(true, false, false), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(1827f, -550f, -581f, -401f)), Struct_2(Struct_1(vec4<f32>(-775f, -604f, -688f, -215f)), vec2<i32>(0i, i32(-2147483648)), true, false, false))), Struct_4(Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(895f, -1766f, -1000f, 723f)), Struct_2(Struct_1(vec4<f32>(1676f, -1393f, 584f, 308f)), vec2<i32>(0i, 33007i), true, true, false)), 0u, vec3<bool>(false, true, true), Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(728f, 203f, -1488f, -1024f)), Struct_2(Struct_1(vec4<f32>(186f, -2141f, 1191f, 1692f)), vec2<i32>(241i, 1i), true, true, false))), Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(755f, 247f, -323f, -559f)), Struct_2(Struct_1(vec4<f32>(945f, 458f, 1628f, 1592f)), vec2<i32>(-35994i, 1i), true, false, false)), 12801u, vec3<bool>(false, true, true), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-462f, 252f, 297f, -236f)), Struct_2(Struct_1(vec4<f32>(1130f, 730f, -816f, -247f)), vec2<i32>(2147483647i, -35937i), true, true, false))), Struct_4(Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(-851f, -452f, 441f, -1376f)), Struct_2(Struct_1(vec4<f32>(-1377f, 315f, 232f, 677f)), vec2<i32>(-1i, -28881i), false, false, true)), 61934u, vec3<bool>(true, false, false), Struct_3(vec3<bool>(false, true, false), Struct_1(vec4<f32>(919f, -1210f, 104f, -350f)), Struct_2(Struct_1(vec4<f32>(457f, 1000f, 708f, 139f)), vec2<i32>(1i, 1i), true, false, true))), Struct_4(Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(911f, -563f, -435f, 1160f)), Struct_2(Struct_1(vec4<f32>(-1062f, 894f, 1053f, 219f)), vec2<i32>(-16179i, -73i), true, true, true)), 0u, vec3<bool>(true, true, false), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(106f, 409f, 919f, 1532f)), Struct_2(Struct_1(vec4<f32>(-1577f, -694f, -288f, -128f)), vec2<i32>(3423i, 1i), true, false, true))), Struct_4(Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(646f, -1963f, -466f, 1421f)), Struct_2(Struct_1(vec4<f32>(568f, 1267f, -1063f, 632f)), vec2<i32>(2147483647i, 0i), false, true, true)), 4294967295u, vec3<bool>(true, false, true), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1000f, -1000f, -653f, 292f)), Struct_2(Struct_1(vec4<f32>(1180f, 739f, 1385f, -297f)), vec2<i32>(0i, 51129i), true, false, false))), Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(250f, -140f, 924f, -349f)), Struct_2(Struct_1(vec4<f32>(-216f, -1000f, 330f, -453f)), vec2<i32>(2147483647i, i32(-2147483648)), true, true, false)), 10987u, vec3<bool>(false, true, true), Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(412f, 682f, -725f, 1143f)), Struct_2(Struct_1(vec4<f32>(1000f, 883f, -428f, 1274f)), vec2<i32>(18825i, 1i), true, true, false))), Struct_4(Struct_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(106f, -616f, 1091f, -772f)), Struct_2(Struct_1(vec4<f32>(1797f, 1000f, -195f, 432f)), vec2<i32>(1i, -1i), false, true, true)), 6069u, vec3<bool>(false, false, true), Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-306f, -151f, -428f, 1440f)), Struct_2(Struct_1(vec4<f32>(-199f, -1369f, -249f, -538f)), vec2<i32>(-24552i, 0i), true, false, true))), Struct_4(Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-1077f, 1197f, 1181f, -1768f)), Struct_2(Struct_1(vec4<f32>(486f, -609f, -695f, 613f)), vec2<i32>(i32(-2147483648), 0i), true, false, true)), 15430u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(false, true, false), Struct_1(vec4<f32>(-187f, -153f, -643f, -749f)), Struct_2(Struct_1(vec4<f32>(240f, -1043f, -1665f, -1000f)), vec2<i32>(35973i, -14913i), true, true, true))), Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-371f, -2772f, 332f, -1558f)), Struct_2(Struct_1(vec4<f32>(-109f, -487f, -295f, -337f)), vec2<i32>(2147483647i, -13374i), true, false, true)), 110690u, vec3<bool>(true, false, false), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-146f, 680f, 1523f, 1585f)), Struct_2(Struct_1(vec4<f32>(-470f, 310f, 318f, -1011f)), vec2<i32>(0i, -1i), true, false, true))), Struct_4(Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(-537f, -674f, -1287f, 628f)), Struct_2(Struct_1(vec4<f32>(1733f, 319f, -1322f, -1947f)), vec2<i32>(1i, 1i), false, true, true)), 4294967295u, vec3<bool>(true, true, false), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-905f, -2320f, 1594f, 594f)), Struct_2(Struct_1(vec4<f32>(1532f, 1922f, 823f, 2494f)), vec2<i32>(3469i, 28541i), false, false, false))), Struct_4(Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(-159f, 1351f, -1141f, 1487f)), Struct_2(Struct_1(vec4<f32>(-453f, 1060f, 174f, 1723f)), vec2<i32>(-8643i, 2147483647i), true, true, true)), 4294967295u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(1730f, 639f, 1042f, 213f)), Struct_2(Struct_1(vec4<f32>(717f, -1569f, -765f, -674f)), vec2<i32>(-78500i, 2147483647i), false, true, true))), Struct_4(Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(185f, -1286f, 258f, -1553f)), Struct_2(Struct_1(vec4<f32>(-1000f, 839f, 397f, -772f)), vec2<i32>(18601i, 6475i), true, true, true)), 66377u, vec3<bool>(true, true, true), Struct_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-1514f, -336f, -695f, 957f)), Struct_2(Struct_1(vec4<f32>(-864f, -1000f, 114f, -434f)), vec2<i32>(47080i, 1i), true, true, false))), Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(1737f, -192f, -591f, 827f)), Struct_2(Struct_1(vec4<f32>(861f, 447f, 681f, -915f)), vec2<i32>(0i, i32(-2147483648)), true, true, false)), 6749u, vec3<bool>(false, false, false), Struct_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-936f, 626f, 486f, -311f)), Struct_2(Struct_1(vec4<f32>(567f, 140f, 372f, -1381f)), vec2<i32>(i32(-2147483648), 0i), false, true, false))), Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-1567f, -709f, -198f, 966f)), Struct_2(Struct_1(vec4<f32>(-997f, -839f, -781f, -635f)), vec2<i32>(i32(-2147483648), 15648i), true, true, false)), 32512u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-1000f, 256f, -908f, 165f)), Struct_2(Struct_1(vec4<f32>(-122f, 2497f, -399f, 1368f)), vec2<i32>(-1i, 4707i), true, true, false))), Struct_4(Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-452f, -998f, 984f, 724f)), Struct_2(Struct_1(vec4<f32>(390f, -423f, -1040f, -473f)), vec2<i32>(-62699i, -5560i), false, true, false)), 1u, vec3<bool>(true, false, false), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(431f, 1328f, 934f, 1000f)), Struct_2(Struct_1(vec4<f32>(1828f, -1851f, -124f, 717f)), vec2<i32>(i32(-2147483648), 2094i), false, false, true))), Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-485f, -355f, -858f, -486f)), Struct_2(Struct_1(vec4<f32>(178f, 422f, 1210f, -1150f)), vec2<i32>(0i, 1978i), false, true, false)), 89540u, vec3<bool>(true, false, false), Struct_3(vec3<bool>(true, true, true), Struct_1(vec4<f32>(1332f, 143f, 937f, 785f)), Struct_2(Struct_1(vec4<f32>(-625f, 121f, -936f, -1000f)), vec2<i32>(-13094i, 1i), true, false, true))), Struct_4(Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(1505f, -703f, -492f, 1207f)), Struct_2(Struct_1(vec4<f32>(-104f, 1101f, -813f, -943f)), vec2<i32>(83657i, 2147483647i), true, false, true)), 43715u, vec3<bool>(true, true, true), Struct_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(1818f, -1773f, -698f, 1000f)), Struct_2(Struct_1(vec4<f32>(-1802f, -901f, 356f, 841f)), vec2<i32>(0i, 9350i), true, true, true))), Struct_4(Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(-155f, -300f, 1209f, 300f)), Struct_2(Struct_1(vec4<f32>(2092f, -2581f, -223f, -298f)), vec2<i32>(-1i, -46256i), true, false, true)), 1u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(1600f, -358f, -1273f, -145f)), Struct_2(Struct_1(vec4<f32>(-459f, 401f, 859f, -1000f)), vec2<i32>(23417i, -36782i), true, false, false))), Struct_4(Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(163f, -1154f, -757f, 227f)), Struct_2(Struct_1(vec4<f32>(216f, 383f, -1614f, 1377f)), vec2<i32>(-72493i, 0i), true, false, false)), 4294967295u, vec3<bool>(true, true, true), Struct_3(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-501f, 459f, -894f, -1306f)), Struct_2(Struct_1(vec4<f32>(-1424f, -496f, 458f, -393f)), vec2<i32>(5608i, -1i), false, false, false))), Struct_4(Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(-141f, 712f, 666f, -1679f)), Struct_2(Struct_1(vec4<f32>(-1066f, -153f, 1612f, -1000f)), vec2<i32>(34919i, 16992i), false, true, true)), 1u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(true, true, true), Struct_1(vec4<f32>(-263f, 352f, 377f, -449f)), Struct_2(Struct_1(vec4<f32>(302f, -864f, -1000f, -528f)), vec2<i32>(-1i, 14993i), true, true, false))), Struct_4(Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-1000f, 376f, -366f, 1000f)), Struct_2(Struct_1(vec4<f32>(-242f, 1499f, -1226f, 1539f)), vec2<i32>(0i, -14267i), false, false, true)), 1u, vec3<bool>(false, false, false), Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(761f, 1910f, 911f, -1638f)), Struct_2(Struct_1(vec4<f32>(-1255f, 1235f, 286f, 1000f)), vec2<i32>(i32(-2147483648), 38347i), true, true, false))), Struct_4(Struct_3(vec3<bool>(false, true, false), Struct_1(vec4<f32>(-2179f, 184f, 651f, -1000f)), Struct_2(Struct_1(vec4<f32>(391f, -2082f, 116f, -1549f)), vec2<i32>(-1i, 2147483647i), false, true, true)), 19345u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(1642f, -192f, -1349f, -1126f)), Struct_2(Struct_1(vec4<f32>(-2288f, -568f, 1040f, 244f)), vec2<i32>(-6682i, i32(-2147483648)), false, true, true))), Struct_4(Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(1130f, 225f, 716f, 1385f)), Struct_2(Struct_1(vec4<f32>(137f, -241f, -440f, 1265f)), vec2<i32>(2147483647i, 25808i), false, true, false)), 0u, vec3<bool>(false, false, true), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<f32>(-390f, 548f, 1081f, 1210f)), Struct_2(Struct_1(vec4<f32>(-1000f, 1307f, -540f, 832f)), vec2<i32>(1i, 0i), true, false, true))), Struct_4(Struct_3(vec3<bool>(false, true, false), Struct_1(vec4<f32>(-405f, 387f, -1235f, 826f)), Struct_2(Struct_1(vec4<f32>(1218f, -1049f, 1081f, -793f)), vec2<i32>(28482i, 0i), false, false, true)), 35367u, vec3<bool>(false, true, true), Struct_3(vec3<bool>(true, true, true), Struct_1(vec4<f32>(164f, -1132f, -1272f, 456f)), Struct_2(Struct_1(vec4<f32>(1129f, 179f, 1000f, -2047f)), vec2<i32>(2147483647i, 32786i), true, true, false))), Struct_4(Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(-885f, 1907f, 1651f, 440f)), Struct_2(Struct_1(vec4<f32>(1079f, 480f, -152f, 416f)), vec2<i32>(1i, i32(-2147483648)), false, true, false)), 1u, vec3<bool>(false, true, true), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(585f, -344f, -1005f, 359f)), Struct_2(Struct_1(vec4<f32>(1503f, 865f, 1000f, -1000f)), vec2<i32>(2147483647i, 22543i), true, false, false))), Struct_4(Struct_3(vec3<bool>(false, true, false), Struct_1(vec4<f32>(-233f, 939f, 168f, -862f)), Struct_2(Struct_1(vec4<f32>(-1465f, -172f, 781f, 1000f)), vec2<i32>(1i, 1i), true, true, true)), 57129u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(1081f, -397f, 1000f, 1563f)), Struct_2(Struct_1(vec4<f32>(101f, -752f, -1718f, -1966f)), vec2<i32>(i32(-2147483648), 2147483647i), false, true, false))), Struct_4(Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-191f, -1465f, 1127f, 271f)), Struct_2(Struct_1(vec4<f32>(-226f, 2228f, 368f, 793f)), vec2<i32>(-1i, 44172i), true, true, true)), 18420u, vec3<bool>(false, false, false), Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(611f, -1020f, 118f, -1401f)), Struct_2(Struct_1(vec4<f32>(1163f, 1192f, -498f, -599f)), vec2<i32>(16404i, 0i), true, false, false))), Struct_4(Struct_3(vec3<bool>(true, true, true), Struct_1(vec4<f32>(996f, -3050f, 662f, 1348f)), Struct_2(Struct_1(vec4<f32>(-348f, 805f, -633f, -351f)), vec2<i32>(52860i, 1i), true, false, false)), 6379u, vec3<bool>(true, true, false), Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(-1651f, 1183f, 2096f, 1000f)), Struct_2(Struct_1(vec4<f32>(-437f, 1680f, -1000f, 688f)), vec2<i32>(0i, 14699i), true, true, true))), Struct_4(Struct_3(vec3<bool>(true, true, true), Struct_1(vec4<f32>(-1017f, -289f, -453f, -976f)), Struct_2(Struct_1(vec4<f32>(197f, 431f, 544f, 654f)), vec2<i32>(-1i, -45872i), false, true, true)), 63058u, vec3<bool>(false, true, false), Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(-1843f, -345f, -100f, 429f)), Struct_2(Struct_1(vec4<f32>(-297f, -713f, -1004f, -256f)), vec2<i32>(78159i, -10656i), false, false, false))), Struct_4(Struct_3(vec3<bool>(false, false, true), Struct_1(vec4<f32>(-315f, 329f, 178f, 323f)), Struct_2(Struct_1(vec4<f32>(-1687f, 992f, 1354f, 165f)), vec2<i32>(2147483647i, 8233i), false, true, true)), 0u, vec3<bool>(true, true, false), Struct_3(vec3<bool>(true, true, false), Struct_1(vec4<f32>(211f, 1000f, 1653f, 496f)), Struct_2(Struct_1(vec4<f32>(-701f, 1000f, 179f, -1000f)), vec2<i32>(26866i, -55624i), false, false, true))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_3.a.c.a.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a.a * vec4<f32>(global1.b.a.x, -1000f, 352f, 824f)) + _wgslsmith_f_op_vec4_f32(-global1.c.a.a))))));
    global1 = arg_3.a;
    global1 = arg_3.d;
    let var_1 = select(max(vec2<u32>(10015u, abs(~global2[_wgslsmith_index_u32(4294967295u, 11u)])), vec2<u32>(~(~1u), min(global2[_wgslsmith_index_u32(arg_3.b, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)] << (3297u % 32u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(select(select(vec2<u32>(arg_3.b, 0u), vec2<u32>(3339u, 16126u), global1.a.x), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), _wgslsmith_add_vec2_u32(select(vec2<u32>(11007u, arg_3.b), vec2<u32>(0u, 32920u), arg_1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(79614u, arg_3.b), vec2<u32>(arg_3.b, 4294967295u))), ~vec2<u32>(global2[_wgslsmith_index_u32(arg_3.b, 11u)], 4294967295u) >> ((vec2<u32>(arg_3.b, 0u) | vec2<u32>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.b, 11u)], 11u)])) % vec2<u32>(32u))), ~(~vec2<u32>(1u, arg_3.b)), vec2<u32>(4294967295u, arg_3.b)), !select(!vec2<bool>(arg_3.c.x, arg_2.e), vec2<bool>(false, true), ~global2[_wgslsmith_index_u32(arg_3.b, 11u)] != 4294967295u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-761f, arg_0.a.x, global1.c.a.a.x, global1.b.a.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.a.x, -511f, arg_0.a.x, 639f)), vec4<f32>(var_0.a.x, -1118f, 1379f, -1000f), true))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 577f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(arg_0.a.x, -903f))));
    return 54195u;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> vec3<u32> {
    global2 = array<u32, 11>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~(~84422u)), func_3(Struct_1(arg_2.a.a), vec2<bool>(arg_2.d, false), Struct_2(Struct_1(arg_2.a.a), vec2<i32>(1i, arg_0.x), true, false, arg_2.e), Struct_4(Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 8u)], global1.a.x, true), arg_2.a, Struct_2(global1.c.a, global1.c.b, global1.a.x, global1.a.x, false)), 4294967295u, vec3<bool>(true, arg_2.e, arg_2.e), Struct_3(vec3<bool>(arg_2.e, false, true), Struct_1(global1.c.a.a), Struct_2(Struct_1(global1.b.a), vec2<i32>(-1i, -19874i), false, arg_2.c, true)))) ^ 28313u), 11u)], 11u)], arg_1), 32u)];
    var var_1 = Struct_4(var_0.a, firstLeadingBit(arg_1), !select(var_0.a.a, !vec3<bool>(false, var_0.d.c.c, arg_2.d), true), var_0.d);
    let var_2 = !(!(!vec4<bool>(!global1.a.x, any(vec3<bool>(arg_2.c, false, var_0.d.c.e)), true, select(false, arg_2.d, false))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d.b.a)))), vec2<i32>(-28551i << (1u % 32u), i32(-1i) * -1i), (1u <= _wgslsmith_mult_u32(4294967295u & arg_1, arg_1)) || global1.c.c, var_0.d.a.x, all(global1.a));
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 11009u, var_0.b), select(vec4<u32>(1u, arg_1, 4294967295u, 1u), vec4<u32>(9675u, var_0.b, 25158u, arg_1), false))) << (39724u % 32u), 20u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1420f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + -325f))), !global1.a.x)))) * _wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f * arg_2.a.a.x)))));
    var var_1 = Struct_3(vec3<bool>(true, true, arg_2.d), arg_3.c.a, Struct_2(arg_2.a, arg_2.b, true, true && !(global1.c.a.a.x != 621f), reverseBits(_wgslsmith_mod_u32(24890u, arg_0.x)) < ~(~0u)));
    var var_2 = arg_2.a;
    var_2 = arg_3.c.a;
    let var_3 = arg_3.c.b.x;
    return Struct_1(arg_2.a.a);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(global1.c.a.a);
    global2 = array<u32, 11>();
    let var_1 = Struct_3(global1.a, func_4(~func_2(vec3<i32>(u_input.c.x, 0i, global1.c.b.x), global2[_wgslsmith_index_u32(93068u, 11u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)] % 32u), global1.c), var_0.a.x, global1.c, Struct_3(global1.a, global1.c.a, global1.c)), Struct_2(func_4(vec3<u32>(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)]), 11u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(10792u, 11u)], 1u), 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15254u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)] & global2[_wgslsmith_index_u32(5697u, 11u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -517f))), Struct_2(Struct_1(var_0.a), vec2<i32>(global1.c.b.x, u_input.a), select(false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 8u)], global3[_wgslsmith_index_u32(67099u, 8u)]), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 8u)] || global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52545u, 11u)], 11u)], 8u)], all(vec4<bool>(true, false, global1.a.x, global1.a.x))), Struct_3(global1.a, global1.c.a, Struct_2(global1.c.a, vec2<i32>(45615i, u_input.a), true, global1.a.x, global1.c.c))), u_input.c, !select(true, true, true && global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 8u)]), select(global1.a.x, global3[_wgslsmith_index_u32(8468u, 8u)] || global3[_wgslsmith_index_u32(4294967295u, 8u)], true) && global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(85638u, 11u)], 11u)], 0u) >> (0u % 32u), 11u)], 11u)], 8u)], true));
    let var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.c.b.x, u_input.b, u_input.a), ~vec3<i32>(var_1.c.b.x, var_1.c.b.x, 13060i)) | 2147483647i, abs(reverseBits(-2147483647i) & firstLeadingBit(u_input.b)), _wgslsmith_div_i32(i32(-1i) * -global1.c.b.x, firstTrailingBit(var_1.c.b.x)));
    let var_3 = any(vec3<bool>(global1.c.c, var_1.a.x, true));
    return Struct_1(_wgslsmith_f_op_vec4_f32(global1.b.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.a.a - _wgslsmith_f_op_vec4_f32(trunc(global1.c.a.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 20>();
    global1 = Struct_3(!global1.a, func_1(), global1.c);
    let var_0 = func_1();
    let var_1 = Struct_3(select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(23977u, 8u)], !global3[_wgslsmith_index_u32(4294967295u, 8u)]), global1.a, vec3<bool>(true, false, !global3[_wgslsmith_index_u32(0u, 8u)])), vec3<bool>(!global1.c.e, true, global3[_wgslsmith_index_u32(80116u, 8u)]), global1.a), var_0, global1.c);
    var var_2 = Struct_3(select(!global1.a, vec3<bool>(global1.c.e, true, !(global1.a.x | global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 8u)])), var_1.a), Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.c.a.a)), Struct_2(global1.b, abs(-vec2<i32>(var_1.c.b.x, global1.c.b.x)), global1.a.x, (firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34415u, 11u)], 11u)], 11u)]) != ~global2[_wgslsmith_index_u32(10663u, 11u)]) & true, true));
    var var_3 = select(~(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(19235i, u_input.a, var_2.c.b.x, -33925i), vec4<i32>(-40149i, u_input.c.x, var_2.c.b.x, var_1.c.b.x)), var_2.c.b.x ^ -2147483647i, -u_input.c.x, -u_input.c.x) | _wgslsmith_clamp_vec4_i32(vec4<i32>(51048i, var_2.c.b.x, var_1.c.b.x, u_input.a), -vec4<i32>(-1i, var_2.c.b.x, 2147483647i, u_input.b), ~vec4<i32>(global1.c.b.x, var_2.c.b.x, 31674i, var_2.c.b.x))), ~vec4<i32>(global1.c.b.x, 1i, _wgslsmith_add_i32(-26919i, -var_2.c.b.x), -(~u_input.c.x)), !select(select(!vec4<bool>(false, var_2.c.e, true, false), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(37488u, 8u)], false), vec4<bool>(global1.a.x, false, false, false), var_2.a.x), vec4<bool>(var_2.c.d, true, global1.c.c, true)), vec4<bool>(var_1.a.x, true, all(vec2<bool>(global1.a.x, var_2.a.x)), !var_1.c.e), !vec4<bool>(global1.c.c, var_1.a.x, true, global1.c.d)));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(933f, -704f, _wgslsmith_f_op_f32(-var_2.c.a.a.x), -124f) + global1.b.a)));
}

