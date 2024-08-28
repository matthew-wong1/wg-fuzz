struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: u32 = 63570u;

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec2<i32>(1i, 0i), Struct_1(vec2<i32>(2147483647i, 0i), 729f, vec4<bool>(false, false, true, false), vec4<f32>(1160f, -1105f, 455f, 1826f)), Struct_1(vec2<i32>(46913i, i32(-2147483648)), -1624f, vec4<bool>(true, true, false, true), vec4<f32>(-228f, 1823f, 1185f, 148f)), Struct_1(vec2<i32>(2147483647i, 29025i), -1158f, vec4<bool>(false, true, true, false), vec4<f32>(-1816f, -1563f, -1235f, 448f))), Struct_2(vec2<i32>(-1i, -16281i), Struct_1(vec2<i32>(-6515i, -24571i), 440f, vec4<bool>(true, true, true, false), vec4<f32>(287f, 194f, -1361f, -1000f)), Struct_1(vec2<i32>(0i, -15781i), 1217f, vec4<bool>(false, true, false, true), vec4<f32>(170f, 849f, -615f, -1084f)), Struct_1(vec2<i32>(2147483647i, -36846i), -133f, vec4<bool>(false, false, false, false), vec4<f32>(261f, 940f, -1080f, 1011f))), Struct_2(vec2<i32>(-18606i, 2711i), Struct_1(vec2<i32>(1i, 2147483647i), 1350f, vec4<bool>(false, false, false, false), vec4<f32>(459f, 1118f, 442f, 496f)), Struct_1(vec2<i32>(i32(-2147483648), 46301i), -227f, vec4<bool>(false, false, false, true), vec4<f32>(205f, -507f, -735f, 735f)), Struct_1(vec2<i32>(27320i, 8803i), 276f, vec4<bool>(false, true, true, false), vec4<f32>(118f, -218f, 159f, -1000f))), Struct_2(vec2<i32>(76645i, 12758i), Struct_1(vec2<i32>(2147483647i, -1i), 230f, vec4<bool>(true, false, true, true), vec4<f32>(-627f, -1965f, -289f, 2913f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 1238f, vec4<bool>(true, false, true, false), vec4<f32>(822f, -398f, 1000f, -155f)), Struct_1(vec2<i32>(84740i, -1i), 329f, vec4<bool>(true, true, true, true), vec4<f32>(-403f, -1000f, -891f, -368f))), Struct_2(vec2<i32>(0i, 19535i), Struct_1(vec2<i32>(-1i, 0i), -607f, vec4<bool>(true, false, false, true), vec4<f32>(-407f, -1509f, 2213f, 1225f)), Struct_1(vec2<i32>(1i, 94541i), 316f, vec4<bool>(true, true, false, false), vec4<f32>(-805f, 243f, -1670f, 991f)), Struct_1(vec2<i32>(1i, -24739i), -2611f, vec4<bool>(true, true, true, true), vec4<f32>(-770f, -886f, 2059f, -570f))), Struct_2(vec2<i32>(-56988i, 62516i), Struct_1(vec2<i32>(-36118i, 10302i), -1000f, vec4<bool>(false, true, false, false), vec4<f32>(-1077f, 1105f, 1098f, -1733f)), Struct_1(vec2<i32>(4529i, -24193i), -1000f, vec4<bool>(true, false, false, true), vec4<f32>(554f, 1000f, -1121f, 1385f)), Struct_1(vec2<i32>(1i, -23392i), 462f, vec4<bool>(false, false, true, true), vec4<f32>(-290f, -645f, -547f, -2206f))), Struct_2(vec2<i32>(-1i, -1i), Struct_1(vec2<i32>(1i, 18535i), -222f, vec4<bool>(true, true, true, true), vec4<f32>(-134f, -904f, -1948f, 579f)), Struct_1(vec2<i32>(-25519i, 0i), 131f, vec4<bool>(false, false, true, true), vec4<f32>(625f, -1365f, 431f, 959f)), Struct_1(vec2<i32>(-1i, -1i), 1101f, vec4<bool>(true, true, true, false), vec4<f32>(-454f, -1400f, -815f, -1000f))), Struct_2(vec2<i32>(37977i, 0i), Struct_1(vec2<i32>(26135i, 1i), -218f, vec4<bool>(true, false, true, false), vec4<f32>(253f, 665f, 1620f, 1543f)), Struct_1(vec2<i32>(-1i, 1i), 833f, vec4<bool>(false, true, true, false), vec4<f32>(1000f, -424f, -1294f, 1621f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 194f, vec4<bool>(false, true, false, true), vec4<f32>(709f, -504f, -540f, -264f))), Struct_2(vec2<i32>(-1i, -71601i), Struct_1(vec2<i32>(0i, 21494i), 796f, vec4<bool>(false, true, true, false), vec4<f32>(131f, -876f, -1649f, -790f)), Struct_1(vec2<i32>(62765i, i32(-2147483648)), 679f, vec4<bool>(false, true, true, false), vec4<f32>(-540f, 651f, -1000f, -1333f)), Struct_1(vec2<i32>(-19776i, 0i), -419f, vec4<bool>(true, true, false, true), vec4<f32>(-468f, -724f, 160f, 1364f))), Struct_2(vec2<i32>(-12066i, -40865i), Struct_1(vec2<i32>(-13150i, 2147483647i), -364f, vec4<bool>(false, false, true, false), vec4<f32>(276f, 1397f, 537f, -1344f)), Struct_1(vec2<i32>(18641i, 1i), -413f, vec4<bool>(true, true, true, false), vec4<f32>(130f, 117f, 1000f, 1091f)), Struct_1(vec2<i32>(20415i, -13658i), -359f, vec4<bool>(false, true, false, true), vec4<f32>(-211f, 402f, 1198f, 133f))), Struct_2(vec2<i32>(-39605i, -6662i), Struct_1(vec2<i32>(1i, 1i), 1001f, vec4<bool>(false, false, false, true), vec4<f32>(-389f, -1014f, -393f, 1538f)), Struct_1(vec2<i32>(-62193i, -1i), -118f, vec4<bool>(false, true, false, true), vec4<f32>(1013f, 1487f, -1131f, -365f)), Struct_1(vec2<i32>(0i, -3735i), 645f, vec4<bool>(true, true, true, false), vec4<f32>(947f, 970f, 2133f, 1122f))), Struct_2(vec2<i32>(2147483647i, 54348i), Struct_1(vec2<i32>(192i, 1i), -508f, vec4<bool>(true, true, false, true), vec4<f32>(-913f, 1000f, -455f, -1064f)), Struct_1(vec2<i32>(i32(-2147483648), 43077i), -995f, vec4<bool>(true, false, false, false), vec4<f32>(370f, 220f, 687f, -1256f)), Struct_1(vec2<i32>(-23240i, 2147483647i), -270f, vec4<bool>(false, false, true, false), vec4<f32>(-1258f, -777f, -1472f, 965f))), Struct_2(vec2<i32>(-18973i, 2843i), Struct_1(vec2<i32>(2147483647i, 2147483647i), 1712f, vec4<bool>(true, true, true, true), vec4<f32>(552f, -1066f, -2682f, 510f)), Struct_1(vec2<i32>(i32(-2147483648), -16719i), -228f, vec4<bool>(false, false, true, true), vec4<f32>(-2390f, 481f, -890f, -984f)), Struct_1(vec2<i32>(-1701i, -16787i), 600f, vec4<bool>(true, true, false, false), vec4<f32>(-323f, 1000f, 259f, 685f))), Struct_2(vec2<i32>(i32(-2147483648), 35698i), Struct_1(vec2<i32>(0i, 80655i), 170f, vec4<bool>(true, true, true, true), vec4<f32>(-1000f, 1983f, -1000f, 455f)), Struct_1(vec2<i32>(4493i, 2147483647i), 1000f, vec4<bool>(true, true, false, true), vec4<f32>(-613f, -483f, -160f, 1517f)), Struct_1(vec2<i32>(23034i, 1i), 763f, vec4<bool>(true, true, true, false), vec4<f32>(1176f, -540f, -625f, 1377f))), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(vec2<i32>(0i, 49431i), -1180f, vec4<bool>(true, true, false, false), vec4<f32>(-284f, 502f, -2770f, 232f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), 1206f, vec4<bool>(true, true, false, true), vec4<f32>(-1727f, -308f, 1422f, -1459f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), -166f, vec4<bool>(true, true, true, false), vec4<f32>(548f, 1506f, -740f, 1372f))), Struct_2(vec2<i32>(-19424i, 2147483647i), Struct_1(vec2<i32>(13725i, 1i), 1532f, vec4<bool>(true, true, true, false), vec4<f32>(1000f, 1328f, 387f, 1142f)), Struct_1(vec2<i32>(1i, -66325i), 1114f, vec4<bool>(true, true, false, false), vec4<f32>(-1456f, -529f, 109f, -1000f)), Struct_1(vec2<i32>(26284i, -1i), -813f, vec4<bool>(true, false, false, true), vec4<f32>(-1294f, 580f, 1423f, -456f))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec2<i32>(1i, -43750i), -276f, vec4<bool>(true, true, true, true), vec4<f32>(435f, -343f, 722f, -1645f)), Struct_1(vec2<i32>(-9106i, 23630i), -207f, vec4<bool>(true, false, false, false), vec4<f32>(381f, 741f, 2185f, 591f)), Struct_1(vec2<i32>(1i, 1i), 1093f, vec4<bool>(false, false, true, true), vec4<f32>(1765f, 947f, 952f, -197f))), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec2<i32>(0i, 42472i), 1492f, vec4<bool>(true, true, false, false), vec4<f32>(1731f, 1652f, -616f, -125f)), Struct_1(vec2<i32>(-9972i, 2147483647i), -2290f, vec4<bool>(false, false, true, false), vec4<f32>(915f, 1568f, 958f, -603f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -1374f, vec4<bool>(false, false, true, false), vec4<f32>(-1175f, 1297f, -660f, 1000f))), Struct_2(vec2<i32>(-24516i, 0i), Struct_1(vec2<i32>(-1816i, 5607i), 1293f, vec4<bool>(true, false, true, true), vec4<f32>(-862f, 349f, -1000f, -616f)), Struct_1(vec2<i32>(1i, -1i), 464f, vec4<bool>(true, false, false, true), vec4<f32>(-1000f, 2255f, 907f, 1510f)), Struct_1(vec2<i32>(53485i, -2014i), -292f, vec4<bool>(false, true, true, true), vec4<f32>(-542f, -2245f, 316f, 388f))), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 5148i), -678f, vec4<bool>(false, false, true, true), vec4<f32>(-306f, -1072f, -2382f, 185f)), Struct_1(vec2<i32>(17843i, -18521i), 924f, vec4<bool>(false, true, false, true), vec4<f32>(-694f, -116f, -1000f, -1533f)), Struct_1(vec2<i32>(12508i, -1i), 568f, vec4<bool>(true, true, false, true), vec4<f32>(3224f, 334f, 647f, -361f))), Struct_2(vec2<i32>(61373i, 1i), Struct_1(vec2<i32>(6366i, 21420i), 228f, vec4<bool>(true, false, true, false), vec4<f32>(-110f, -1558f, -320f, -1458f)), Struct_1(vec2<i32>(i32(-2147483648), 37189i), 599f, vec4<bool>(false, false, true, true), vec4<f32>(-1248f, 1418f, -507f, -1066f)), Struct_1(vec2<i32>(-1946i, -1i), -914f, vec4<bool>(false, true, true, false), vec4<f32>(300f, 205f, -2046f, -1375f))), Struct_2(vec2<i32>(-17434i, -12564i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 188f, vec4<bool>(false, true, true, true), vec4<f32>(-824f, -455f, -128f, -1156f)), Struct_1(vec2<i32>(-61217i, 22665i), 1767f, vec4<bool>(false, true, false, false), vec4<f32>(303f, -127f, -122f, 1112f)), Struct_1(vec2<i32>(i32(-2147483648), -16961i), 1819f, vec4<bool>(true, false, true, false), vec4<f32>(326f, -141f, 977f, 303f))), Struct_2(vec2<i32>(-1i, 43790i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 2217f, vec4<bool>(true, false, true, false), vec4<f32>(-179f, 980f, 1324f, 1187f)), Struct_1(vec2<i32>(35372i, 2147483647i), -491f, vec4<bool>(false, false, true, true), vec4<f32>(-582f, -1000f, -762f, 1515f)), Struct_1(vec2<i32>(57544i, -73198i), -1180f, vec4<bool>(false, true, false, false), vec4<f32>(-1125f, -1593f, -1247f, 788f))), Struct_2(vec2<i32>(59800i, 0i), Struct_1(vec2<i32>(13612i, i32(-2147483648)), -795f, vec4<bool>(true, false, true, false), vec4<f32>(473f, -365f, 878f, -1523f)), Struct_1(vec2<i32>(i32(-2147483648), 1i), -529f, vec4<bool>(false, false, false, false), vec4<f32>(682f, 346f, 689f, -869f)), Struct_1(vec2<i32>(70040i, -33809i), 1000f, vec4<bool>(true, false, false, false), vec4<f32>(-173f, 1000f, -659f, 1930f))), Struct_2(vec2<i32>(0i, -9834i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), -493f, vec4<bool>(true, false, false, false), vec4<f32>(-1329f, 449f, 585f, 573f)), Struct_1(vec2<i32>(2147483647i, 5460i), -3024f, vec4<bool>(false, true, true, true), vec4<f32>(1000f, 1477f, 1507f, 761f)), Struct_1(vec2<i32>(0i, -19386i), -407f, vec4<bool>(true, true, false, false), vec4<f32>(519f, 2077f, 1169f, -1686f))), Struct_2(vec2<i32>(-61058i, -1290i), Struct_1(vec2<i32>(-47678i, 1i), -933f, vec4<bool>(true, false, true, true), vec4<f32>(-1666f, 321f, -244f, -808f)), Struct_1(vec2<i32>(i32(-2147483648), -400i), -1000f, vec4<bool>(true, false, true, true), vec4<f32>(-1378f, -891f, 406f, 892f)), Struct_1(vec2<i32>(-35014i, -13236i), 616f, vec4<bool>(true, true, true, true), vec4<f32>(698f, -976f, -505f, 319f))), Struct_2(vec2<i32>(-25543i, 66293i), Struct_1(vec2<i32>(-5411i, 199i), -210f, vec4<bool>(false, false, false, true), vec4<f32>(-1329f, 108f, 859f, -431f)), Struct_1(vec2<i32>(95i, 23929i), -414f, vec4<bool>(true, false, false, true), vec4<f32>(928f, -742f, 443f, 526f)), Struct_1(vec2<i32>(34592i, 2147483647i), -1569f, vec4<bool>(false, true, false, false), vec4<f32>(-457f, 454f, -2343f, 875f))), Struct_2(vec2<i32>(68104i, -36693i), Struct_1(vec2<i32>(8788i, 12968i), -1051f, vec4<bool>(false, false, false, false), vec4<f32>(137f, 1958f, -249f, 1977f)), Struct_1(vec2<i32>(8171i, -4353i), 184f, vec4<bool>(false, false, true, false), vec4<f32>(-1000f, -1319f, -147f, 958f)), Struct_1(vec2<i32>(11830i, 19050i), -473f, vec4<bool>(false, true, true, true), vec4<f32>(1155f, -210f, -1000f, 1000f))), Struct_2(vec2<i32>(19927i, -48616i), Struct_1(vec2<i32>(7354i, 2147483647i), 932f, vec4<bool>(true, false, true, false), vec4<f32>(1000f, -375f, -979f, 2015f)), Struct_1(vec2<i32>(23271i, i32(-2147483648)), -205f, vec4<bool>(false, false, false, false), vec4<f32>(969f, -282f, -1719f, -204f)), Struct_1(vec2<i32>(1i, -22816i), -301f, vec4<bool>(false, true, true, false), vec4<f32>(1028f, 1703f, -887f, -827f))), Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec2<i32>(-3424i, -47387i), 537f, vec4<bool>(false, true, true, false), vec4<f32>(1898f, 1155f, -1000f, -2961f)), Struct_1(vec2<i32>(-1510i, i32(-2147483648)), -1201f, vec4<bool>(false, true, false, true), vec4<f32>(-618f, -1210f, -680f, -495f)), Struct_1(vec2<i32>(2147483647i, 24981i), -1492f, vec4<bool>(false, false, false, true), vec4<f32>(274f, -848f, -111f, 1071f))));

var<private> global4: array<Struct_3, 10>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    global1 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_add_u32(select(abs(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), arg_1.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_1.a), 1u), ~u_input.d.xx)), u_input.a.x);
    let var_1 = global1[_wgslsmith_index_u32(min(~u_input.d.x, arg_1.a), 26u)];
    var var_2 = ~u_input.d;
    var_0 = arg_1.a;
    return global3[_wgslsmith_index_u32(0u, 30u)];
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = all(arg_1.b.c.xx);
    global0 = arg_1.b.c;
    let var_1 = Struct_3(u_input.a.x);
    let var_2 = arg_1.c.c.x & (false & ((all(vec4<bool>(arg_1.c.c.x, true, arg_1.b.c.x, var_0)) != !global0.x) & var_0));
    global4 = array<Struct_3, 10>();
    return func_2(u_input.a.x != var_1.a, var_1).b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(arg_0, u_input.c))), firstTrailingBit(_wgslsmith_sub_vec2_i32(arg_0, firstTrailingBit(vec2<i32>(arg_0.x, 1i))))), func_3(arg_0.x, func_2(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) == u_input.b.x, global4[_wgslsmith_index_u32(u_input.a.x, 10u)])), func_2(true, global4[_wgslsmith_index_u32(u_input.a.x, 10u)]).b, global1[_wgslsmith_index_u32(~u_input.d.x, 26u)]);
    global4 = array<Struct_3, 10>();
    var var_1 = global1[_wgslsmith_index_u32(19329u, 26u)];
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    return Struct_1(~(vec2<i32>(-1i) * -(~vec2<i32>(0i, var_0.d.a.x))), _wgslsmith_f_op_f32(max(func_3(~37206i, Struct_2(vec2<i32>(arg_0.x, 2147483647i), var_0.c, var_0.c, func_3(var_1.a.x, global3[_wgslsmith_index_u32(1956u, 30u)]))).b, var_0.d.d.x)), select(!(!select(var_0.b.c, vec4<bool>(global0.x, false, true, var_1.c.x), vec4<bool>(true, var_1.c.x, true, true))), !func_3(-1i, Struct_2(vec2<i32>(-2147483647i, -2147483647i), Struct_1(u_input.c, 1122f, vec4<bool>(global0.x, true, var_0.c.c.x, var_1.c.x), var_1.d), Struct_1(vec2<i32>(arg_0.x, 28360i), 1000f, vec4<bool>(var_1.c.x, false, var_0.c.c.x, true), vec4<f32>(var_0.b.d.x, var_0.b.b, var_1.b, -315f)), global1[_wgslsmith_index_u32(arg_1.x, 26u)])).c, vec4<bool>(var_1.c.x, !var_1.c.x, select(false, any(var_1.c), false), var_1.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), 362f, func_3(_wgslsmith_mult_i32(var_1.a.x, 1i), func_2(false, Struct_3(4294967295u))).d.x, var_0.d.d.x), _wgslsmith_f_op_vec4_f32(-var_0.b.d), true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = all(func_3(u_input.c.x, arg_1).c.wxw);
    let var_1 = Struct_1(~arg_2, _wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f + arg_1.d.d.x))), func_3(~21079i, Struct_2(vec2<i32>(_wgslsmith_mult_i32(arg_1.a.x, arg_1.d.a.x), arg_2.x), global1[_wgslsmith_index_u32(4294967295u, 26u)], func_2(!global0.x, Struct_3(4294967295u)).d, func_2(arg_1.c.c.x, arg_0).b)).c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(arg_1.d.d, vec4<f32>(-295f, -417f, arg_1.b.b, arg_1.b.b))))))));
    global4 = array<Struct_3, 10>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(-var_1.b), var_1.d.x, -1444f);
    var_0 = false;
    return StorageBuffer(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, arg_0.a), _wgslsmith_div_vec3_u32(u_input.d.yzx, vec3<u32>(4294967295u, 5982u, 4294967295u)), min(u_input.d.wwx, u_input.a)), u_input.d.wyz, ~vec3<u32>(4294967295u, arg_0.a, arg_0.a)), arg_0.a, var_2.x, -586f, u_input.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 55529i;
    global4 = array<Struct_3, 10>();
    global3 = array<Struct_2, 30>();
    global3 = array<Struct_2, 30>();
    global2 = ~(~u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-467f)), -802f) + vec2<f32>(_wgslsmith_f_op_f32(-1039f * -348f), _wgslsmith_f_op_f32(-1377f + 563f)))));
    let x = u_input.a;
    s_output = func_4(global4[_wgslsmith_index_u32(u_input.b.x, 10u)], Struct_2(vec2<i32>(~_wgslsmith_div_i32(var_0, 1i), u_input.c.x | -3680i), global1[_wgslsmith_index_u32(u_input.a.x, 26u)], func_1(vec2<i32>(var_0, -4043i | var_0), abs(u_input.d.wy) >> (u_input.b % vec2<u32>(32u))), func_1(abs(vec2<i32>(var_0, var_0)), abs(vec2<u32>(1u, u_input.a.x)))), u_input.c);
}

