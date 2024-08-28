struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_1(963f, vec4<f32>(-1215f, -518f, -1037f, 255f), false, -1i, vec4<f32>(1000f, 1000f, -102f, -226f))), Struct_4(Struct_1(-795f, vec4<f32>(1818f, 1576f, 542f, 379f), false, -11360i, vec4<f32>(-861f, -515f, 966f, 489f))), Struct_4(Struct_1(534f, vec4<f32>(781f, 554f, 900f, 1548f), false, 23586i, vec4<f32>(-138f, -292f, -418f, -555f))), Struct_4(Struct_1(962f, vec4<f32>(-563f, 116f, 1000f, 678f), true, 0i, vec4<f32>(1027f, 475f, 1361f, -669f))), Struct_4(Struct_1(464f, vec4<f32>(683f, -1715f, -2908f, 810f), true, i32(-2147483648), vec4<f32>(-310f, 191f, -228f, -217f))), Struct_4(Struct_1(310f, vec4<f32>(158f, -282f, 1000f, -739f), false, 28735i, vec4<f32>(207f, 1600f, -666f, -274f))), Struct_4(Struct_1(-151f, vec4<f32>(750f, 229f, -593f, 123f), true, -1i, vec4<f32>(734f, -964f, 722f, -462f))), Struct_4(Struct_1(478f, vec4<f32>(114f, 266f, 757f, 523f), false, 28424i, vec4<f32>(647f, 942f, 206f, 516f))), Struct_4(Struct_1(-930f, vec4<f32>(395f, -1500f, -817f, 886f), false, -1i, vec4<f32>(-1629f, 884f, -354f, 1572f))), Struct_4(Struct_1(627f, vec4<f32>(1026f, -122f, -583f, 693f), true, -1416i, vec4<f32>(1273f, -645f, 692f, -1525f))), Struct_4(Struct_1(169f, vec4<f32>(-354f, -1708f, -922f, 122f), true, 11042i, vec4<f32>(-544f, -701f, 708f, 462f))), Struct_4(Struct_1(2168f, vec4<f32>(189f, -725f, 1000f, -719f), false, 21678i, vec4<f32>(-401f, 552f, 1403f, 914f))), Struct_4(Struct_1(2723f, vec4<f32>(540f, 580f, 150f, 2653f), true, 10737i, vec4<f32>(-1161f, -1682f, -949f, -356f))), Struct_4(Struct_1(-1731f, vec4<f32>(-627f, 775f, -1355f, -1197f), false, 39347i, vec4<f32>(-1662f, -1792f, -1349f, 551f))), Struct_4(Struct_1(1480f, vec4<f32>(-568f, -817f, 110f, -1200f), true, 2147483647i, vec4<f32>(844f, 1000f, 633f, 630f))), Struct_4(Struct_1(657f, vec4<f32>(-573f, 480f, -1000f, 731f), true, 1i, vec4<f32>(1000f, 2244f, -141f, 250f))), Struct_4(Struct_1(-730f, vec4<f32>(1034f, 194f, -870f, -1188f), false, 1i, vec4<f32>(-1146f, 1281f, -477f, 2191f))), Struct_4(Struct_1(-1081f, vec4<f32>(497f, 990f, -1453f, -404f), false, -1i, vec4<f32>(225f, -486f, 750f, -556f))), Struct_4(Struct_1(381f, vec4<f32>(405f, 504f, 1183f, -150f), true, 0i, vec4<f32>(766f, -1576f, -889f, -1667f))), Struct_4(Struct_1(-141f, vec4<f32>(703f, -495f, -120f, -1556f), false, -1i, vec4<f32>(963f, 406f, 178f, 771f))), Struct_4(Struct_1(689f, vec4<f32>(945f, -750f, 165f, 468f), true, 25471i, vec4<f32>(-364f, 533f, 2144f, 583f))), Struct_4(Struct_1(-502f, vec4<f32>(-787f, 898f, 1019f, 1075f), false, -28770i, vec4<f32>(-217f, 206f, 797f, 798f))), Struct_4(Struct_1(1872f, vec4<f32>(-417f, -1675f, 260f, -728f), false, i32(-2147483648), vec4<f32>(-614f, -305f, 660f, 597f))), Struct_4(Struct_1(-812f, vec4<f32>(-696f, -645f, -185f, 481f), true, -57715i, vec4<f32>(1815f, 1983f, 1953f, 1332f))), Struct_4(Struct_1(1003f, vec4<f32>(-799f, 1000f, 779f, 520f), true, 1i, vec4<f32>(-715f, 314f, -1081f, -924f))), Struct_4(Struct_1(-1000f, vec4<f32>(666f, -2196f, 620f, -2040f), false, 21083i, vec4<f32>(1000f, -1257f, -684f, -101f))), Struct_4(Struct_1(821f, vec4<f32>(-422f, -615f, 237f, 769f), false, 1933i, vec4<f32>(917f, -294f, -133f, -386f))), Struct_4(Struct_1(1361f, vec4<f32>(-943f, -1755f, -503f, -186f), true, 1i, vec4<f32>(2150f, 1376f, -241f, 425f))), Struct_4(Struct_1(-464f, vec4<f32>(-942f, -178f, 611f, 1058f), true, -1i, vec4<f32>(-807f, 1000f, 242f, 1023f))), Struct_4(Struct_1(-493f, vec4<f32>(-850f, -139f, -1330f, 306f), false, 2147483647i, vec4<f32>(-325f, -922f, -1143f, 275f))), Struct_4(Struct_1(435f, vec4<f32>(-248f, -827f, 1567f, -599f), true, -57381i, vec4<f32>(627f, 333f, -1490f, -863f))), Struct_4(Struct_1(-273f, vec4<f32>(1158f, 985f, -195f, -535f), false, 1i, vec4<f32>(-2266f, -563f, -347f, 1206f))));

var<private> global3: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_1(880f, vec4<f32>(-476f, -338f, 530f, -183f), false, 0i, vec4<f32>(-3290f, -833f, 817f, -174f))), Struct_4(Struct_1(-416f, vec4<f32>(-136f, -1824f, 1812f, 1000f), false, -18376i, vec4<f32>(866f, -172f, -650f, -567f))), Struct_4(Struct_1(1764f, vec4<f32>(-644f, -346f, -310f, 1000f), true, -1i, vec4<f32>(1000f, 743f, 997f, 1547f))), Struct_4(Struct_1(-683f, vec4<f32>(-1934f, -791f, 698f, 1719f), false, 0i, vec4<f32>(-1219f, 304f, 251f, -1128f))), Struct_4(Struct_1(-415f, vec4<f32>(-950f, 907f, -402f, -404f), false, 2147483647i, vec4<f32>(1971f, 194f, 1077f, 336f))), Struct_4(Struct_1(363f, vec4<f32>(-1161f, 993f, 1000f, -1130f), false, 6819i, vec4<f32>(-137f, 494f, -2626f, 1865f))), Struct_4(Struct_1(258f, vec4<f32>(-397f, -1914f, -1303f, 1066f), true, i32(-2147483648), vec4<f32>(650f, -379f, 425f, -344f))), Struct_4(Struct_1(295f, vec4<f32>(-346f, 970f, -379f, 1383f), false, -15857i, vec4<f32>(200f, 687f, 648f, -716f))), Struct_4(Struct_1(-600f, vec4<f32>(708f, 1469f, -1193f, 863f), true, 1i, vec4<f32>(1286f, 507f, -535f, -1000f))), Struct_4(Struct_1(-745f, vec4<f32>(559f, -696f, 861f, 888f), true, 2147483647i, vec4<f32>(745f, 274f, -1415f, -1022f))), Struct_4(Struct_1(1949f, vec4<f32>(209f, -584f, 1540f, -478f), true, -2336i, vec4<f32>(-705f, 1755f, -1110f, -863f))), Struct_4(Struct_1(-1534f, vec4<f32>(-1770f, 1778f, 276f, 588f), false, 44239i, vec4<f32>(2096f, -754f, -492f, -293f))), Struct_4(Struct_1(3068f, vec4<f32>(796f, 1000f, -628f, 337f), true, 1i, vec4<f32>(991f, -1075f, 397f, -1292f))), Struct_4(Struct_1(-127f, vec4<f32>(-823f, -1000f, -1194f, -939f), true, 20660i, vec4<f32>(-778f, 138f, -129f, 1000f))), Struct_4(Struct_1(-1100f, vec4<f32>(-689f, 794f, 1000f, 1932f), true, -54157i, vec4<f32>(1415f, -294f, -146f, -560f))), Struct_4(Struct_1(218f, vec4<f32>(-516f, -1196f, 128f, -403f), true, -54847i, vec4<f32>(-2684f, -1369f, 393f, 617f))), Struct_4(Struct_1(-1000f, vec4<f32>(-619f, 1000f, -1000f, 472f), false, 1i, vec4<f32>(1000f, -1858f, 122f, -1884f))), Struct_4(Struct_1(746f, vec4<f32>(-737f, -883f, -403f, -722f), true, -8340i, vec4<f32>(-107f, -1926f, 408f, 599f))), Struct_4(Struct_1(1529f, vec4<f32>(1026f, -851f, 227f, -1955f), true, 1i, vec4<f32>(-332f, 1232f, -874f, 1170f))), Struct_4(Struct_1(-1500f, vec4<f32>(-126f, 3195f, -2079f, -457f), false, 25317i, vec4<f32>(-1656f, -469f, 876f, 2390f))), Struct_4(Struct_1(-123f, vec4<f32>(2013f, -433f, 907f, -1128f), false, 39800i, vec4<f32>(655f, 694f, 726f, -1346f))), Struct_4(Struct_1(468f, vec4<f32>(767f, -266f, 1002f, -218f), false, -59300i, vec4<f32>(1037f, -1748f, 1477f, -441f))), Struct_4(Struct_1(-1396f, vec4<f32>(1017f, 135f, 359f, -1118f), false, 1i, vec4<f32>(652f, 965f, -2182f, -448f))), Struct_4(Struct_1(-792f, vec4<f32>(-288f, 512f, -1146f, 1230f), true, -3165i, vec4<f32>(1007f, 882f, 236f, 477f))), Struct_4(Struct_1(286f, vec4<f32>(-246f, -934f, 248f, 398f), false, -41363i, vec4<f32>(-515f, -136f, -544f, 138f))), Struct_4(Struct_1(-393f, vec4<f32>(-851f, -699f, 646f, -135f), true, 31651i, vec4<f32>(1084f, 1438f, 150f, 1000f))), Struct_4(Struct_1(197f, vec4<f32>(1249f, 1845f, 331f, 170f), false, -6185i, vec4<f32>(-2849f, -766f, 1000f, 414f))), Struct_4(Struct_1(192f, vec4<f32>(1000f, 309f, -1215f, -519f), true, 2147483647i, vec4<f32>(812f, 312f, -1603f, 1242f))), Struct_4(Struct_1(-782f, vec4<f32>(-1101f, -1967f, -171f, -1695f), false, -46396i, vec4<f32>(-1676f, -1231f, 281f, -405f))), Struct_4(Struct_1(1075f, vec4<f32>(345f, 893f, 863f, -369f), true, i32(-2147483648), vec4<f32>(322f, -1078f, -769f, -1672f))), Struct_4(Struct_1(-416f, vec4<f32>(-634f, -2038f, -404f, -763f), false, 15475i, vec4<f32>(-115f, -526f, 436f, 963f))), Struct_4(Struct_1(144f, vec4<f32>(1008f, 1000f, 301f, -414f), false, 2147483647i, vec4<f32>(1820f, 1000f, -1817f, 1838f))));

var<private> global4: array<bool, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    global0 = ~16099i;
    global3 = array<Struct_4, 32>();
    let var_0 = _wgslsmith_dot_vec3_i32(~(u_input.d << (global1[_wgslsmith_index_u32(u_input.c << (u_input.c % 32u), 6u)] % vec3<u32>(32u))), vec3<i32>(abs(_wgslsmith_mult_i32(33327i, 23240i)), _wgslsmith_div_i32(-2147483647i, 5273i), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, arg_0.b.d), ~arg_0.a.d))) & ~(-_wgslsmith_clamp_i32(45465i, u_input.a.x, -5529i) & 42307i);
    var var_1 = Struct_3(!global4[_wgslsmith_index_u32(u_input.c, 26u)], false, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~(-u_input.a.x), -1i, max(arg_0.b.d, ~(-23799i))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -20635i, ~(-43726i), _wgslsmith_mult_i32(u_input.d.x, u_input.a.x), 0i), -(~vec4<i32>(arg_1.d, u_input.d.x, -17953i, 22838i)))));
    var var_2 = arg_1.e;
    return vec4<i32>(arg_1.d, arg_0.a.d, arg_0.b.d, 14796i);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = arg_1.xx;
    var var_1 = vec3<i32>(-1i) * -firstTrailingBit(max(abs(arg_1), ~vec3<i32>(0i, var_0.x, 2147483647i)));
    global1 = array<vec3<u32>, 6>();
    let var_2 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.a.x, -8553i, arg_1.x), vec4<i32>(arg_1.x, var_0.x, var_1.x, var_1.x)), max(firstLeadingBit(vec4<i32>(arg_1.x, u_input.a.x, -1i, var_0.x)), func_3(Struct_2(Struct_1(-668f, vec4<f32>(arg_0, 794f, 100f, arg_0), global4[_wgslsmith_index_u32(36170u, 26u)], u_input.a.x, vec4<f32>(544f, arg_0, arg_0, -853f)), Struct_1(-709f, vec4<f32>(1000f, 1023f, arg_0, 1061f), arg_2.x, u_input.a.x, vec4<f32>(-163f, arg_0, 709f, -1575f)), arg_2.yz, vec4<f32>(arg_0, 229f, 627f, arg_0)), Struct_1(1000f, vec4<f32>(arg_0, 1152f, -387f, arg_0), true, -17546i, vec4<f32>(arg_0, arg_0, arg_0, arg_0)), true)), -(vec4<i32>(-2429i, var_0.x, var_1.x, -13371i) & vec4<i32>(var_0.x, 25519i, -12677i, -19929i))) | func_3(Struct_2(Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -584f, 1000f) + vec4<f32>(arg_0, arg_0, -744f, -1000f)), true, arg_1.x, vec4<f32>(-751f, arg_0, arg_0, 2303f)), Struct_1(_wgslsmith_f_op_f32(arg_0 - -3240f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 225f, arg_0, arg_0)), any(vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b, 26u)])), _wgslsmith_mult_i32(1i, u_input.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -555f, arg_0), vec4<f32>(arg_0, arg_0, 1186f, arg_0))), arg_2.yz, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1320f, 1489f, 513f, arg_0))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 475f, -154f, -327f), vec4<f32>(1000f, 748f, arg_0, 475f), true)), false))), Struct_1(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1044f, 522f, arg_0))), true, -2643i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 202f, arg_0, 1116f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(678f, -1000f, 274f, -736f)))))), all(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)));
    let var_3 = Struct_2(Struct_1(arg_0, vec4<f32>(_wgslsmith_f_op_f32(1492f * -267f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1470f + _wgslsmith_div_f32(264f, -751f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(545f, -586f))))), true, var_1.x, vec4<f32>(835f, arg_0, -269f, _wgslsmith_f_op_f32(-arg_0))), Struct_1(arg_0, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(max(-807f, arg_0))), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(110f))))), false, _wgslsmith_dot_vec3_i32(abs(arg_1), _wgslsmith_add_vec3_i32(vec3<i32>(-7821i, var_0.x, 0i), vec3<i32>(var_2.x, u_input.d.x, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1000f, arg_0, arg_0) - vec4<f32>(1000f, 335f, -2729f, 810f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -328f, arg_0, 133f), vec4<f32>(arg_0, arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 929f)))))), arg_2.zy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1254f))), arg_0, 1857f, _wgslsmith_div_f32(arg_0, arg_0))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1445f);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-897f - -1248f)), vec3<i32>(-61626i >> (u_input.c % 32u), _wgslsmith_add_i32(arg_1, arg_1), _wgslsmith_div_i32(u_input.d.x, u_input.a.x)), arg_0)) + 564f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1033f, 605f), vec2<f32>(1205f, var_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(729f, 1408f), vec2<f32>(var_0, var_0), arg_0.x)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(183f, 808f) * vec2<f32>(var_0, -1345f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1336f, var_0), vec2<f32>(var_0, var_0), false)))))));
    global1 = array<vec3<u32>, 6>();
    let var_2 = ~(~abs(~(~vec2<u32>(46890u, 4294967295u))));
    var var_3 = Struct_3(!select(arg_0.x, arg_0.x, any(vec2<bool>(false, arg_0.x))), true, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.d.x), -11858i), -2147483647i, u_input.d.x, 1i), select(select(vec4<i32>(1i, 30746i, -23015i, u_input.a.x), vec4<i32>(u_input.d.x, u_input.a.x, -41824i, -1i), vec4<bool>(global4[_wgslsmith_index_u32(19897u, 26u)], arg_0.x, arg_0.x, true)) << (reverseBits(vec4<u32>(arg_2, arg_2, 142742u, arg_2)) % vec4<u32>(32u)), abs(~vec4<i32>(u_input.a.x, 1i, -1i, -2147483647i)), all(!vec2<bool>(arg_0.x, false))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.d.x, 49316i, u_input.d.x, -41597i), ~vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, arg_1), !vec4<bool>(false, false, global4[_wgslsmith_index_u32(var_2.x, 26u)], false)), max(~vec4<i32>(arg_1, 0i, -1i, 1i), countOneBits(vec4<i32>(arg_1, -2147483647i, u_input.d.x, arg_1))))));
    return abs(-u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 26>();
    global4 = array<bool, 26>();
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-(~7796i)), (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1729i, u_input.a.x), vec3<i32>(-30209i, 22925i, u_input.d.x)) | _wgslsmith_div_i32(u_input.d.x, 29743i)) ^ -(i32(-1i) * -1i), -21660i), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, u_input.d), u_input.d | u_input.d) | abs(func_1(vec3<bool>(true, false, global4[_wgslsmith_index_u32(1u, 26u)]), -36916i, 4294967295u) >> (~vec3<u32>(45620u, 10678u, 1u) % vec3<u32>(32u))));
    global4 = array<bool, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(337f, _wgslsmith_sub_vec3_i32(~(~vec3<i32>(-11624i, 19165i, u_input.d.x)), vec3<i32>(2147483647i, u_input.a.x, min(u_input.d.x, 1i))), vec3<bool>(true, select(all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 26u)], true, global4[_wgslsmith_index_u32(u_input.c, 26u)], false)), true, global4[_wgslsmith_index_u32(~u_input.c, 26u)]), true))));
    global2 = array<Struct_4, 32>();
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(25334u, 0u), vec2<u32>(u_input.c, 1u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(41381u, u_input.c), global4[_wgslsmith_index_u32(0u, 26u)]), select(vec2<u32>(8064u, 0u), vec2<u32>(u_input.b, 455u), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 26u)], global4[_wgslsmith_index_u32(u_input.b, 26u)]))), vec2<u32>(~1u, ~47654u)), firstLeadingBit(firstTrailingBit(~vec2<u32>(u_input.c, 13739u)))), reverseBits(vec2<u32>(reverseBits(u_input.b), max(19690u, 45662u ^ u_input.c))));
    global4 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~5909u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, _wgslsmith_f_op_f32(min(var_1, var_1)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1037f, -514f, 714f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, var_1, 792f, var_1) - vec4<f32>(var_1, -763f, var_1, var_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 697f, 1056f, var_1))))), _wgslsmith_sub_u32(~u_input.c, var_2 & var_2), abs(firstLeadingBit(select(~vec4<i32>(u_input.d.x, u_input.a.x, 28617i, u_input.a.x), countOneBits(vec4<i32>(u_input.a.x, u_input.d.x, 1971i, 1i)), true))));
}

