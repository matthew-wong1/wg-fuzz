struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<bool>(true, false, true, true), Struct_2(Struct_1(-1690f, 360f, vec4<f32>(492f, 890f, -1287f, 2045f)), vec3<f32>(583f, 1000f, -951f), true, vec3<i32>(2147483647i, -23896i, 8284i), Struct_1(635f, -1000f, vec4<f32>(-225f, -1314f, 1582f, -769f))), 0i, Struct_2(Struct_1(-1000f, -2044f, vec4<f32>(168f, 706f, -1000f, 1154f)), vec3<f32>(1000f, 689f, -1274f), true, vec3<i32>(1i, 8892i, 1i), Struct_1(1928f, 1642f, vec4<f32>(1562f, 256f, 1275f, -377f)))), Struct_3(vec4<bool>(false, true, true, false), Struct_2(Struct_1(1926f, -1000f, vec4<f32>(-697f, 1887f, 1490f, 654f)), vec3<f32>(247f, -1290f, 1407f), true, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(479f, 1436f, vec4<f32>(639f, 1049f, 862f, -2043f))), -6394i, Struct_2(Struct_1(-1722f, 307f, vec4<f32>(613f, 275f, 396f, 368f)), vec3<f32>(2012f, -419f, -333f), false, vec3<i32>(1i, 2147483647i, 21070i), Struct_1(1164f, -903f, vec4<f32>(183f, 1171f, 583f, 766f)))), Struct_3(vec4<bool>(false, true, false, true), Struct_2(Struct_1(1293f, 508f, vec4<f32>(1173f, -1366f, 1754f, -651f)), vec3<f32>(-1000f, 1000f, 603f), true, vec3<i32>(0i, -27763i, -1835i), Struct_1(689f, 1678f, vec4<f32>(-392f, -1013f, -2540f, 963f))), 1i, Struct_2(Struct_1(-1293f, -373f, vec4<f32>(1685f, -409f, -631f, 536f)), vec3<f32>(-608f, 784f, -1219f), true, vec3<i32>(-5023i, -11766i, 1i), Struct_1(-731f, 1149f, vec4<f32>(-247f, 558f, 1000f, -357f)))), Struct_3(vec4<bool>(false, false, false, false), Struct_2(Struct_1(580f, 1341f, vec4<f32>(-951f, -374f, 1036f, -1786f)), vec3<f32>(-250f, 122f, 717f), true, vec3<i32>(-1i, -1i, -47953i), Struct_1(-966f, -275f, vec4<f32>(-1215f, 1013f, -258f, -461f))), -18934i, Struct_2(Struct_1(127f, 473f, vec4<f32>(-114f, 244f, -1259f, -828f)), vec3<f32>(1279f, -274f, 173f), true, vec3<i32>(i32(-2147483648), -7266i, 14790i), Struct_1(499f, 477f, vec4<f32>(-617f, 1141f, 1000f, -1000f)))), Struct_3(vec4<bool>(false, true, true, true), Struct_2(Struct_1(-1635f, 1071f, vec4<f32>(-784f, -675f, 458f, -285f)), vec3<f32>(-881f, -1108f, -714f), false, vec3<i32>(-1i, 1i, -16186i), Struct_1(645f, 212f, vec4<f32>(881f, -104f, -1206f, -1000f))), -21331i, Struct_2(Struct_1(552f, 449f, vec4<f32>(170f, 104f, 1489f, 1037f)), vec3<f32>(-126f, -1490f, 300f), true, vec3<i32>(i32(-2147483648), 35355i, 2147483647i), Struct_1(-455f, -441f, vec4<f32>(291f, 252f, -2356f, 813f)))), Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(-1000f, 803f, vec4<f32>(-927f, 432f, 678f, -605f)), vec3<f32>(-228f, -1000f, -1311f), false, vec3<i32>(46177i, 2147483647i, i32(-2147483648)), Struct_1(497f, 1332f, vec4<f32>(452f, -625f, 438f, -228f))), -1i, Struct_2(Struct_1(-665f, 235f, vec4<f32>(-483f, 142f, -806f, -274f)), vec3<f32>(-613f, -457f, -108f), true, vec3<i32>(-1i, i32(-2147483648), -6927i), Struct_1(1347f, 1103f, vec4<f32>(317f, 165f, 479f, -1556f)))), Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(984f, -122f, vec4<f32>(-1237f, 183f, -239f, -1000f)), vec3<f32>(777f, -811f, -1982f), false, vec3<i32>(2147483647i, 1i, -1946i), Struct_1(1674f, -1000f, vec4<f32>(-1394f, -139f, 383f, 371f))), 24694i, Struct_2(Struct_1(218f, -1814f, vec4<f32>(-1481f, -891f, -346f, -244f)), vec3<f32>(1705f, -675f, 1187f), false, vec3<i32>(-1i, 1i, -1i), Struct_1(429f, 1074f, vec4<f32>(1057f, 1806f, -962f, -1463f)))), Struct_3(vec4<bool>(false, true, true, false), Struct_2(Struct_1(129f, 552f, vec4<f32>(-243f, 252f, 1672f, 554f)), vec3<f32>(-622f, -696f, 550f), false, vec3<i32>(-1117i, -10454i, 22797i), Struct_1(-277f, -1000f, vec4<f32>(-1599f, 1346f, -692f, -923f))), -13848i, Struct_2(Struct_1(-663f, 1246f, vec4<f32>(799f, 1307f, -172f, 1000f)), vec3<f32>(1297f, -1587f, -759f), false, vec3<i32>(4294i, -1i, 2147483647i), Struct_1(1000f, 1338f, vec4<f32>(1600f, -257f, -976f, 198f)))), Struct_3(vec4<bool>(false, true, false, true), Struct_2(Struct_1(2649f, -1271f, vec4<f32>(793f, 712f, 406f, 673f)), vec3<f32>(1000f, 579f, 108f), true, vec3<i32>(-4404i, 1i, -53795i), Struct_1(-528f, -630f, vec4<f32>(-1589f, 418f, -505f, 1014f))), 27764i, Struct_2(Struct_1(-2356f, 623f, vec4<f32>(1000f, -1012f, -366f, -1356f)), vec3<f32>(1000f, -180f, -1817f), true, vec3<i32>(1i, -1i, 1i), Struct_1(-409f, -157f, vec4<f32>(-1151f, 1003f, -1149f, 1555f)))), Struct_3(vec4<bool>(false, true, false, false), Struct_2(Struct_1(733f, -1000f, vec4<f32>(-172f, -298f, 1056f, 772f)), vec3<f32>(1208f, 982f, 1652f), false, vec3<i32>(2147483647i, 0i, -7684i), Struct_1(-1527f, -1552f, vec4<f32>(387f, 1460f, -197f, -479f))), 1i, Struct_2(Struct_1(1473f, -215f, vec4<f32>(1142f, 513f, -1818f, -2121f)), vec3<f32>(-3042f, 884f, -2525f), false, vec3<i32>(-7707i, -1i, -1i), Struct_1(-814f, 147f, vec4<f32>(-705f, 999f, -1315f, -1599f)))), Struct_3(vec4<bool>(true, false, true, false), Struct_2(Struct_1(-1002f, 466f, vec4<f32>(299f, -1145f, 631f, 1794f)), vec3<f32>(1000f, 1010f, -340f), true, vec3<i32>(16260i, 0i, 0i), Struct_1(-873f, 1000f, vec4<f32>(-254f, -629f, 206f, -797f))), -1i, Struct_2(Struct_1(906f, 1124f, vec4<f32>(802f, -945f, -159f, -187f)), vec3<f32>(1112f, -326f, -714f), true, vec3<i32>(2147483647i, -1i, 15568i), Struct_1(578f, -1000f, vec4<f32>(790f, 1307f, -385f, 406f)))), Struct_3(vec4<bool>(true, false, false, false), Struct_2(Struct_1(-136f, -537f, vec4<f32>(260f, -1285f, -721f, -1130f)), vec3<f32>(-1663f, -684f, -558f), true, vec3<i32>(28492i, 3613i, 2147483647i), Struct_1(-415f, 651f, vec4<f32>(815f, -651f, 974f, 246f))), -1i, Struct_2(Struct_1(-1642f, 2089f, vec4<f32>(213f, -632f, -709f, 955f)), vec3<f32>(948f, -1000f, -219f), true, vec3<i32>(1i, 51845i, -1i), Struct_1(-768f, -1000f, vec4<f32>(-1241f, 1307f, 177f, -1000f)))), Struct_3(vec4<bool>(false, true, true, true), Struct_2(Struct_1(1005f, 327f, vec4<f32>(-1459f, 1000f, -1007f, -690f)), vec3<f32>(-599f, 761f, 2052f), false, vec3<i32>(-58973i, 1i, 2147483647i), Struct_1(-298f, 481f, vec4<f32>(278f, 1000f, 787f, 1045f))), 2147483647i, Struct_2(Struct_1(1236f, 665f, vec4<f32>(-330f, 486f, 191f, -527f)), vec3<f32>(-493f, 1802f, -1497f), false, vec3<i32>(-3035i, 2147483647i, 1i), Struct_1(1207f, 299f, vec4<f32>(-263f, -1389f, 555f, 1767f)))), Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(-726f, -1670f, vec4<f32>(-101f, -853f, -1000f, -494f)), vec3<f32>(105f, 915f, -741f), false, vec3<i32>(23969i, -13989i, 1i), Struct_1(-547f, -1393f, vec4<f32>(-753f, 1154f, -418f, 570f))), 4603i, Struct_2(Struct_1(-1377f, -647f, vec4<f32>(-357f, -1982f, 383f, 2073f)), vec3<f32>(-679f, -344f, 1204f), true, vec3<i32>(1i, -1i, -16061i), Struct_1(169f, 462f, vec4<f32>(-313f, 300f, 1000f, -1466f)))), Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(-644f, -710f, vec4<f32>(1646f, 1586f, 1601f, -447f)), vec3<f32>(813f, -487f, -475f), false, vec3<i32>(-1i, i32(-2147483648), -1i), Struct_1(1277f, 675f, vec4<f32>(435f, -115f, 1125f, 1318f))), 0i, Struct_2(Struct_1(829f, -601f, vec4<f32>(1926f, -647f, 861f, 199f)), vec3<f32>(1006f, 1760f, 161f), false, vec3<i32>(2147483647i, 19154i, -25325i), Struct_1(-127f, -321f, vec4<f32>(387f, 1000f, 1081f, 340f)))), Struct_3(vec4<bool>(true, true, true, true), Struct_2(Struct_1(678f, -1091f, vec4<f32>(1000f, 1366f, -1000f, 1000f)), vec3<f32>(-178f, 1710f, 1201f), true, vec3<i32>(0i, 26699i, 1i), Struct_1(132f, 1000f, vec4<f32>(-1341f, -1000f, 492f, -965f))), i32(-2147483648), Struct_2(Struct_1(-671f, -1000f, vec4<f32>(-1816f, -1070f, -950f, -909f)), vec3<f32>(449f, -1496f, 175f), false, vec3<i32>(i32(-2147483648), 41401i, -1i), Struct_1(102f, 475f, vec4<f32>(390f, 644f, 1185f, -1189f)))), Struct_3(vec4<bool>(false, false, false, false), Struct_2(Struct_1(454f, -1496f, vec4<f32>(154f, 334f, 1243f, 1000f)), vec3<f32>(1515f, -1987f, -520f), false, vec3<i32>(45206i, 1i, -48483i), Struct_1(-1603f, -1278f, vec4<f32>(-410f, -2090f, 232f, -1069f))), 1727i, Struct_2(Struct_1(-1090f, -1000f, vec4<f32>(1100f, 355f, 161f, 915f)), vec3<f32>(-1756f, 396f, -564f), false, vec3<i32>(0i, -27878i, 12711i), Struct_1(150f, 698f, vec4<f32>(-312f, -401f, 749f, 2417f)))), Struct_3(vec4<bool>(false, true, false, true), Struct_2(Struct_1(-1731f, 2270f, vec4<f32>(-1000f, -338f, -1318f, -1298f)), vec3<f32>(-589f, 1457f, -1504f), true, vec3<i32>(0i, -56939i, 18908i), Struct_1(-852f, -250f, vec4<f32>(-1053f, 1436f, 1514f, -420f))), -1i, Struct_2(Struct_1(310f, -2205f, vec4<f32>(-499f, 131f, -1022f, 1897f)), vec3<f32>(733f, 1047f, 1733f), false, vec3<i32>(-1i, i32(-2147483648), -45241i), Struct_1(1400f, -1467f, vec4<f32>(1000f, 573f, -546f, -1018f)))), Struct_3(vec4<bool>(true, false, true, false), Struct_2(Struct_1(1129f, 955f, vec4<f32>(-1582f, -1346f, -344f, 1018f)), vec3<f32>(-1448f, 1996f, 1426f), false, vec3<i32>(-49608i, 6160i, 17086i), Struct_1(-960f, 1770f, vec4<f32>(584f, -535f, -1725f, 1696f))), 2147483647i, Struct_2(Struct_1(-861f, 662f, vec4<f32>(-416f, -419f, 402f, 2083f)), vec3<f32>(-1000f, -474f, 109f), true, vec3<i32>(34041i, 8277i, -31978i), Struct_1(-953f, -1749f, vec4<f32>(-1000f, 1260f, 461f, -406f)))), Struct_3(vec4<bool>(false, true, false, true), Struct_2(Struct_1(534f, -1000f, vec4<f32>(-467f, -655f, 625f, 2395f)), vec3<f32>(1717f, 1549f, 930f), false, vec3<i32>(0i, 0i, -46024i), Struct_1(547f, 150f, vec4<f32>(-822f, -1678f, 843f, -1830f))), -5003i, Struct_2(Struct_1(-754f, 338f, vec4<f32>(-443f, -1858f, 191f, -1508f)), vec3<f32>(249f, -124f, 1405f), true, vec3<i32>(14372i, -18188i, -38641i), Struct_1(-990f, 570f, vec4<f32>(-432f, -410f, 1354f, -238f)))), Struct_3(vec4<bool>(true, true, true, true), Struct_2(Struct_1(-431f, 718f, vec4<f32>(-1399f, -562f, -237f, 497f)), vec3<f32>(347f, -408f, -987f), true, vec3<i32>(16407i, -1i, 1i), Struct_1(-309f, 494f, vec4<f32>(1605f, 1000f, 1498f, 349f))), i32(-2147483648), Struct_2(Struct_1(-367f, 1667f, vec4<f32>(-1015f, 292f, -1025f, 1000f)), vec3<f32>(-648f, 1087f, 432f), true, vec3<i32>(0i, -20834i, 1i), Struct_1(345f, -337f, vec4<f32>(166f, 1000f, 1373f, 1363f)))), Struct_3(vec4<bool>(true, false, false, true), Struct_2(Struct_1(-1614f, 329f, vec4<f32>(-313f, -116f, 1255f, -320f)), vec3<f32>(-678f, 642f, -901f), false, vec3<i32>(-1i, -40111i, 0i), Struct_1(-1591f, -398f, vec4<f32>(-112f, -1180f, -984f, -2127f))), 9110i, Struct_2(Struct_1(-356f, 1111f, vec4<f32>(-1000f, 1135f, -882f, 605f)), vec3<f32>(378f, 669f, 333f), false, vec3<i32>(1i, i32(-2147483648), 24036i), Struct_1(-877f, -561f, vec4<f32>(1168f, 719f, -1686f, -1511f)))), Struct_3(vec4<bool>(false, true, true, true), Struct_2(Struct_1(1635f, -581f, vec4<f32>(-932f, 585f, 1000f, -521f)), vec3<f32>(-545f, -558f, -462f), false, vec3<i32>(49755i, -39265i, 2147483647i), Struct_1(-1400f, -104f, vec4<f32>(797f, 349f, -106f, -1982f))), 12749i, Struct_2(Struct_1(459f, -928f, vec4<f32>(927f, -555f, -2004f, 189f)), vec3<f32>(-424f, 857f, -851f), false, vec3<i32>(1i, 2147483647i, -2375i), Struct_1(-284f, -359f, vec4<f32>(-646f, 1407f, 630f, -1011f)))));

var<private> global1: array<Struct_2, 31>;

var<private> global2: array<u32, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = -1i;
    global2 = array<u32, 2>();
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-428f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1066f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f + 364f))), _wgslsmith_f_op_f32(-614f + _wgslsmith_f_op_f32(f32(-1f) * -1085f)))));
    var var_3 = Struct_3(!vec4<bool>(true, select(false, true, true), true, true), global1[_wgslsmith_index_u32(~firstTrailingBit(min(17542u, var_1.x) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 2u)], 2u)] % 32u)), 31u)], ~(-17361i), Struct_2(Struct_1(-1343f, 916f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2, var_2, var_2)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, var_2, var_2, -1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(-var_2)), var_2, 1736f), !(select(0i, var_0, true) >= ~var_0), _wgslsmith_sub_vec3_i32(firstLeadingBit(~vec3<i32>(var_0, var_0, -55414i)), min(~vec3<i32>(-13489i, 12469i, var_0), ~vec3<i32>(var_0, 30112i, 16217i))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2 * var_2))), var_2, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, -1787f, -734f))))))));
    return select(max(global2[_wgslsmith_index_u32(0u ^ min(select(31148u, u_input.a.x, false), var_1.x), 2u)], _wgslsmith_mod_u32(select(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(0u, 4294967295u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, var_1.x), 2u)], !var_3.b.c), ~0u)), u_input.b.x, var_3.b.c);
}

fn func_2() -> Struct_1 {
    var var_0 = !vec4<bool>(true & (min(u_input.a.x, 5918u) > _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), false, false, (1i << (global2[_wgslsmith_index_u32(~u_input.a.x, 2u)] % 32u)) <= min(~16881i, ~0i));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_div_u32(92716u, 4915u), _wgslsmith_add_u32(6351u, 43881u))), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 7503u, 0u), vec3<u32>(u_input.a.x, 57861u, 4294967295u)), 1u)), ~countOneBits(33827u)), 2u)], 2u)];
    global1 = array<Struct_2, 31>();
    let var_3 = ~vec4<u32>(2719u >> (func_3() % 32u), 4294967295u, u_input.a.x ^ ~u_input.b.x, 10091u);
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f) * _wgslsmith_f_op_f32(step(913f, -1111f))) - _wgslsmith_f_op_f32(f32(-1f) * -1151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1029f, 1136f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 527f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1354f) * _wgslsmith_f_op_f32(min(283f, -920f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2619f, 1008f, var_1.x)) + -311f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> vec4<u32> {
    global0 = array<Struct_3, 23>();
    let var_0 = Struct_3(arg_3.a, Struct_2(arg_3.b.e, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c.x, -466f, arg_3.d.b.x), vec3<f32>(189f, arg_3.b.b.x, -219f), true)), arg_1.c.xyy), vec3<f32>(-803f, arg_3.b.b.x, _wgslsmith_f_op_f32(trunc(-1258f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(584f - 965f), _wgslsmith_f_op_f32(round(arg_3.d.e.a)))) == arg_1.c.x, -max(vec3<i32>(12403i, arg_3.b.d.x, -2147483647i), arg_0.d) | firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(46647i, -6316i, arg_0.d.x), arg_0.d, vec3<i32>(arg_3.b.d.x, arg_0.d.x, -52499i))), arg_3.b.e), ~(~_wgslsmith_div_i32(arg_0.d.x, 13297i)), Struct_2(func_2(), arg_0.a.c.zxw, arg_0.c, arg_0.d, func_2()));
    var var_1 = -_wgslsmith_mult_vec3_i32(abs(arg_0.d), firstLeadingBit(var_0.d.d));
    var var_2 = vec4<u32>(abs(max(~45894u, u_input.a.x)) << (6149u % 32u), _wgslsmith_dot_vec2_u32(arg_2.yy, vec2<u32>(~(~29182u), 0u)), ~global2[_wgslsmith_index_u32(select(53178u, min(1u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60396u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)] % 32u), u_input.b.x), !(!var_0.d.c)), 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)]);
    return vec4<u32>(firstLeadingBit(0u), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(21225u, 57389u, 42220u, 28545u), u_input.b, arg_3.a), vec4<u32>(39657u, 67789u, 5259u, arg_2.x)), ~firstLeadingBit(0u)), ~(~(~(~0u))), _wgslsmith_mult_u32(0u, ~(_wgslsmith_clamp_u32(85323u, var_2.x, var_2.x) & (global2[_wgslsmith_index_u32(4040u, 2u)] >> (global2[_wgslsmith_index_u32(31729u, 2u)] % 32u)))));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = vec3<bool>(true, all(vec4<bool>(true, all(vec4<bool>(false, true, true, false)), 1000f <= arg_2.x, all(vec2<bool>(true, false)))) != any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-734f, _wgslsmith_f_op_f32(floor(-2235f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), arg_2.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) * arg_2.x)));
    var var_2 = ~36832i;
    var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -1000f)), 425f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.x * -409f))), arg_2.x) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f + -574f) + arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), -752f, _wgslsmith_f_op_f32(select(-728f, _wgslsmith_f_op_f32(f32(-1f) * -265f), !var_0.x))))));
    return Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -825f)), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), !var_0.x, _wgslsmith_sub_vec3_i32(~(-vec3<i32>(arg_0, arg_0, arg_0) << (~vec3<u32>(arg_3.x, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 27773i, arg_0), vec3<i32>(2147483647i, -14299i, arg_0)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, u_input.a.x, 40896u), arg_1.yxy, vec3<u32>(24707u, 1u, arg_1.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 40622i, arg_0) >> (vec3<u32>(4294967295u, arg_3.x, 32177u) % vec3<u32>(32u)), ~vec3<i32>(arg_0, arg_0, arg_0)))), Struct_1(_wgslsmith_f_op_f32(-1206f * -1000f), 1493f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, 523f, -667f, var_3.x))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = func_5(arg_0.x, func_4(Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(152f, -351f, 302f), vec3<f32>(805f, -1534f, -1541f))), true, arg_0, Struct_1(328f, -297f, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1142f, 715f, -665f), vec4<f32>(484f, -805f, -2392f, -835f))))), Struct_1(_wgslsmith_f_op_f32(round(1000f)), func_2().a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1166f, -1471f, -1623f, -2132f))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, arg_1.x, 4294967295u)) | abs(u_input.b), select(u_input.b << (vec4<u32>(69569u, 3178u, 43932u, arg_1.x) % vec4<u32>(32u)), vec4<u32>(arg_1.x, u_input.b.x, global2[_wgslsmith_index_u32(5287u, 2u)], 7600u), any(vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(46631u, 32416u | u_input.a.x), 23u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, -1057f))), vec2<f32>(1f, 1f))), ~vec2<u32>(17721u, ~4294967295u));
    let var_1 = Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(step(var_0.a.c.yyy, _wgslsmith_f_op_vec3_f32(floor(var_0.a.c.yxz)))), _wgslsmith_f_op_f32(-var_0.b.x) > _wgslsmith_f_op_f32(-var_0.b.x), var_0.d, func_2());
    global2 = array<u32, 2>();
    let var_2 = Struct_3(!vec4<bool>(var_0.c, var_0.c, true, var_1.c), Struct_2(var_0.e, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.e.a, -232f))))), all(!vec4<bool>(var_0.c, true, false, var_1.c)), max(min(var_1.d, firstLeadingBit(vec3<i32>(1i, 1i, 5841i))), ~vec3<i32>(-56558i, -19357i, arg_0.x)), var_1.e), -_wgslsmith_dot_vec2_i32(-select(vec2<i32>(var_0.d.x, arg_0.x), vec2<i32>(arg_0.x, -2147483647i), true), ~(~vec2<i32>(-25735i, var_0.d.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_0.b.x))), 176f, _wgslsmith_div_vec4_f32(var_0.e.c, vec4<f32>(var_1.a.c.x, var_0.b.x, var_1.a.c.x, var_1.a.b))), vec3<f32>(func_2().c.x, _wgslsmith_f_op_f32(floor(100f)), _wgslsmith_f_op_f32(f32(-1f) * -887f)), false, vec3<i32>(~_wgslsmith_add_i32(var_0.d.x, 0i), arg_0.x, arg_0.x), func_2()));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    let var_0 = vec4<bool>(true, true, true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    global1 = array<Struct_2, 31>();
    var var_1 = !(!select(!var_0.zx, vec2<bool>(false, true), var_0.x));
    let var_2 = func_1(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-1i, 1i, 19595i))), _wgslsmith_mult_vec4_u32(firstTrailingBit(u_input.b | u_input.b), ~vec4<u32>(0u, ~6680u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 2u)])));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(u_input.a.x, ~11764u)), ~(~((0u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)]) | u_input.b.x)), vec2<u32>(~min(u_input.a.x >> (0u % 32u), u_input.b.x), max(~1912u, countOneBits(40488u << (1u % 32u)))));
}

