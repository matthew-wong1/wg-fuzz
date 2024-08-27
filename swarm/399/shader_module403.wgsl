struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global2: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-448f, -225f, 446f, -1383f), vec4<f32>(166f, -956f, -1278f, 1185f), vec4<f32>(1884f, 553f, -137f, 385f), vec4<f32>(-744f, 613f, -2036f, 1509f), vec4<f32>(1204f, 1078f, -1115f, 1000f), vec4<f32>(300f, -959f, 619f, 2181f), vec4<f32>(-455f, -1218f, 1188f, 1090f));

var<private> global3: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_1(1u, vec4<f32>(547f, 182f, -1234f, -1000f), vec3<u32>(82150u, 4294967295u, 0u), -222f, vec2<bool>(false, false)), vec4<f32>(-1179f, -557f, -146f, -624f), vec4<bool>(true, true, false, false), 1u, false), Struct_4(Struct_1(4294967295u, vec4<f32>(-772f, -320f, -1060f, -771f), vec3<u32>(4294967295u, 1u, 0u), -996f, vec2<bool>(true, false)), vec4<f32>(-150f, 656f, 842f, 834f), vec4<bool>(false, false, true, true), 30427u, false), Struct_4(Struct_1(34382u, vec4<f32>(404f, -752f, 861f, 343f), vec3<u32>(39731u, 31846u, 35577u), -473f, vec2<bool>(true, false)), vec4<f32>(-964f, -818f, -1274f, 1000f), vec4<bool>(true, true, true, false), 4294967295u, false), Struct_4(Struct_1(46915u, vec4<f32>(-1241f, -2324f, -1497f, 752f), vec3<u32>(53551u, 4294967295u, 0u), 535f, vec2<bool>(true, true)), vec4<f32>(-1000f, 702f, -1513f, 717f), vec4<bool>(true, false, false, true), 39136u, false), Struct_4(Struct_1(1u, vec4<f32>(242f, 442f, 949f, 1799f), vec3<u32>(0u, 0u, 1u), -422f, vec2<bool>(false, true)), vec4<f32>(1000f, -1914f, -145f, -157f), vec4<bool>(false, false, false, true), 3253u, false), Struct_4(Struct_1(141664u, vec4<f32>(-818f, 1525f, -270f, -202f), vec3<u32>(1u, 46237u, 49476u), -1129f, vec2<bool>(false, false)), vec4<f32>(891f, -272f, -959f, -1162f), vec4<bool>(false, false, false, false), 21557u, false), Struct_4(Struct_1(30144u, vec4<f32>(-1555f, -104f, 338f, 1724f), vec3<u32>(6499u, 1u, 0u), -1154f, vec2<bool>(false, false)), vec4<f32>(473f, 390f, -217f, 185f), vec4<bool>(false, false, false, false), 0u, true), Struct_4(Struct_1(0u, vec4<f32>(-2266f, 282f, -1028f, 1273f), vec3<u32>(9342u, 34778u, 1u), 2727f, vec2<bool>(false, false)), vec4<f32>(2103f, 579f, 781f, 1000f), vec4<bool>(true, true, false, false), 0u, true), Struct_4(Struct_1(4294967295u, vec4<f32>(440f, -210f, 363f, 268f), vec3<u32>(58496u, 28341u, 1u), 1000f, vec2<bool>(true, false)), vec4<f32>(-1648f, -969f, -293f, -1008f), vec4<bool>(true, true, true, false), 0u, true), Struct_4(Struct_1(50562u, vec4<f32>(-668f, -360f, 1072f, -2610f), vec3<u32>(12393u, 0u, 50010u), -1197f, vec2<bool>(true, true)), vec4<f32>(453f, -167f, 1511f, -2097f), vec4<bool>(false, false, true, true), 27841u, false), Struct_4(Struct_1(34345u, vec4<f32>(137f, 2439f, 800f, 358f), vec3<u32>(4294967295u, 0u, 62524u), -1000f, vec2<bool>(false, false)), vec4<f32>(124f, 386f, -2166f, 194f), vec4<bool>(true, true, false, true), 4294967295u, false), Struct_4(Struct_1(4294967295u, vec4<f32>(176f, -1870f, 143f, 116f), vec3<u32>(0u, 327u, 45417u), 1352f, vec2<bool>(false, false)), vec4<f32>(108f, 513f, -497f, -1574f), vec4<bool>(false, false, false, false), 537u, true), Struct_4(Struct_1(0u, vec4<f32>(-822f, 944f, -1300f, -681f), vec3<u32>(4294967295u, 1u, 29610u), 1286f, vec2<bool>(false, true)), vec4<f32>(-1061f, 496f, -529f, 384f), vec4<bool>(false, false, true, false), 97786u, true), Struct_4(Struct_1(24407u, vec4<f32>(-1060f, -884f, -936f, -413f), vec3<u32>(0u, 90738u, 1u), 919f, vec2<bool>(false, false)), vec4<f32>(-1472f, 584f, 273f, -945f), vec4<bool>(true, true, true, true), 2386u, true), Struct_4(Struct_1(0u, vec4<f32>(341f, 753f, -634f, -469f), vec3<u32>(1u, 29134u, 0u), -390f, vec2<bool>(true, true)), vec4<f32>(-816f, 1729f, 779f, 138f), vec4<bool>(false, true, true, false), 38896u, true), Struct_4(Struct_1(1u, vec4<f32>(-606f, 114f, -229f, 936f), vec3<u32>(19502u, 15255u, 0u), -219f, vec2<bool>(true, false)), vec4<f32>(433f, -176f, -163f, 639f), vec4<bool>(false, false, true, true), 1u, false), Struct_4(Struct_1(1u, vec4<f32>(501f, -1321f, 669f, -208f), vec3<u32>(33886u, 4294967295u, 126318u), -2301f, vec2<bool>(true, false)), vec4<f32>(999f, -1000f, 1231f, -531f), vec4<bool>(false, false, true, false), 40731u, true), Struct_4(Struct_1(43634u, vec4<f32>(480f, -641f, -898f, 726f), vec3<u32>(0u, 86643u, 20519u), -770f, vec2<bool>(false, true)), vec4<f32>(544f, -829f, 698f, -370f), vec4<bool>(true, false, true, true), 61085u, false), Struct_4(Struct_1(73u, vec4<f32>(130f, -1396f, 1000f, 1294f), vec3<u32>(36476u, 95380u, 4294967295u), 1099f, vec2<bool>(true, false)), vec4<f32>(-244f, -2266f, 2911f, -1000f), vec4<bool>(false, true, true, true), 0u, false), Struct_4(Struct_1(10603u, vec4<f32>(2541f, 125f, -472f, 713f), vec3<u32>(1u, 0u, 12763u), 289f, vec2<bool>(false, false)), vec4<f32>(-129f, -1122f, -1152f, 1917f), vec4<bool>(true, true, false, false), 4294967295u, true), Struct_4(Struct_1(51966u, vec4<f32>(-1045f, 861f, -483f, -698f), vec3<u32>(3949u, 5052u, 4294967295u), 785f, vec2<bool>(false, true)), vec4<f32>(1027f, -144f, 238f, 1181f), vec4<bool>(false, true, false, true), 29391u, true), Struct_4(Struct_1(0u, vec4<f32>(208f, -603f, -917f, 501f), vec3<u32>(1u, 0u, 1u), 862f, vec2<bool>(false, false)), vec4<f32>(606f, 1091f, 698f, 667f), vec4<bool>(true, true, false, true), 65975u, true), Struct_4(Struct_1(6923u, vec4<f32>(1000f, -100f, -894f, 1998f), vec3<u32>(1u, 0u, 1u), -1377f, vec2<bool>(true, false)), vec4<f32>(-979f, 256f, -659f, 2986f), vec4<bool>(true, false, false, false), 18191u, true), Struct_4(Struct_1(32580u, vec4<f32>(-808f, -668f, -552f, -804f), vec3<u32>(0u, 29968u, 0u), -1842f, vec2<bool>(false, true)), vec4<f32>(730f, 377f, -1137f, -156f), vec4<bool>(true, false, false, false), 24300u, false), Struct_4(Struct_1(1u, vec4<f32>(-2701f, 2345f, -900f, 266f), vec3<u32>(4294967295u, 1u, 0u), -1000f, vec2<bool>(false, false)), vec4<f32>(1338f, 136f, -706f, 872f), vec4<bool>(true, true, false, true), 45037u, false), Struct_4(Struct_1(28855u, vec4<f32>(-461f, -1598f, 307f, 866f), vec3<u32>(11727u, 0u, 103369u), -845f, vec2<bool>(true, false)), vec4<f32>(575f, -982f, -1000f, -1003f), vec4<bool>(false, false, false, false), 4744u, true), Struct_4(Struct_1(0u, vec4<f32>(574f, 317f, 268f, 614f), vec3<u32>(16658u, 1u, 21362u), 514f, vec2<bool>(true, false)), vec4<f32>(-1150f, 834f, -944f, 849f), vec4<bool>(false, true, true, true), 39856u, true), Struct_4(Struct_1(8025u, vec4<f32>(827f, -182f, 1536f, 1132f), vec3<u32>(55510u, 22489u, 59716u), -1402f, vec2<bool>(true, true)), vec4<f32>(-308f, 102f, 1847f, -1522f), vec4<bool>(false, true, true, true), 9186u, false), Struct_4(Struct_1(0u, vec4<f32>(1218f, -1052f, 605f, 149f), vec3<u32>(0u, 4294967295u, 1u), -1000f, vec2<bool>(false, false)), vec4<f32>(2084f, 599f, 454f, -701f), vec4<bool>(false, false, true, true), 34733u, false), Struct_4(Struct_1(23917u, vec4<f32>(-851f, 1728f, -1538f, -640f), vec3<u32>(40532u, 317u, 0u), 429f, vec2<bool>(false, true)), vec4<f32>(-1000f, 305f, -1550f, 389f), vec4<bool>(true, true, true, true), 9036u, true), Struct_4(Struct_1(18941u, vec4<f32>(-1092f, 1848f, -732f, -324f), vec3<u32>(26975u, 1u, 1u), -1790f, vec2<bool>(true, true)), vec4<f32>(-1000f, 1249f, 1921f, 854f), vec4<bool>(false, false, false, false), 0u, true), Struct_4(Struct_1(16118u, vec4<f32>(-799f, 429f, 1729f, -1628f), vec3<u32>(1u, 4294967295u, 1u), -1401f, vec2<bool>(true, false)), vec4<f32>(1835f, 672f, 900f, -150f), vec4<bool>(false, true, true, false), 35956u, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    global2 = array<vec4<f32>, 7>();
    global2 = array<vec4<f32>, 7>();
    var var_0 = -36027i & u_input.a.x;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(398u, 60499u), vec2<u32>(16906u, global1.x)) & 4294967295u), _wgslsmith_div_u32(reverseBits(global1.x), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, global1.x), 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)] & 4294967295u, global1.x))) | global1.x, 32u)];
    global1 = var_1.a.c.yy;
    return var_1.c;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(2147483647i, select(!func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2155f, 353f, -596f))), !vec4<bool>(true, any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), -u_input.b.yx) >= -35062i), ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 0u), vec4<u32>(19868u, global0[_wgslsmith_index_u32(42873u, 19u)], 4294967295u, 1u)) >> (1u % 32u))), (_wgslsmith_mult_vec3_i32(~u_input.b.wyy, firstTrailingBit(u_input.b.wzx)) | -u_input.b.xyy) | (-u_input.b.xww | firstLeadingBit(u_input.b.zyz)));
    let var_1 = _wgslsmith_mod_u32(firstLeadingBit(global1.x), ~abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(28739u, 19u)], 11603u), var_0.c << (var_0.c % 32u))));
    let var_2 = var_1;
    var var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(53725u, 7u)] * global2[_wgslsmith_index_u32(1u, 7u)]) + _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 19u)], 7u)], vec4<f32>(-883f, -385f, 1000f, 1000f), var_0.b.x))), vec4<f32>(1668f, -259f, -1000f, _wgslsmith_f_op_f32(840f - 1799f))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_1, 0u), _wgslsmith_add_u32(30811u, var_1), ~1u), min(~vec3<u32>(var_2, var_2, 63586u), ~vec3<u32>(7933u, var_1, var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1019f, _wgslsmith_f_op_f32(min(-764f, -1161f)))), !select(vec2<bool>(true, var_0.b.x), func_3(vec3<f32>(123f, 1921f, -1000f)).zx, select(var_0.b.xw, vec2<bool>(var_0.b.x, false), false))), Struct_1(21991u, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(var_2, 1051u, var_2), global0[_wgslsmith_index_u32(1u, 19u)] | global0[_wgslsmith_index_u32(3010u, 19u)]), 7u)] * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, -1900f, -346f, 824f))), _wgslsmith_add_vec3_u32(~vec3<u32>(22822u, global0[_wgslsmith_index_u32(1u, 19u)], global1.x), _wgslsmith_div_vec3_u32(vec3<u32>(var_1, 1564u, global0[_wgslsmith_index_u32(var_0.c, 19u)]), vec3<u32>(11945u, 31532u, 31620u)) | ~vec3<u32>(0u, 0u, 10589u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(557f)))) + _wgslsmith_f_op_f32(-1f)), select(select(var_0.b.zx, !var_0.b.wx, vec2<bool>(var_0.b.x, true)), select(func_3(vec3<f32>(466f, 254f, 862f)).yx, var_0.b.xz, vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x)), 1f, abs(vec2<i32>(~1i ^ u_input.a.x, i32(-1i) * -67864i)));
    let var_4 = !(!var_0.b);
    return var_3.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = select(vec4<u32>(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_add_u32(~4294967295u, arg_1.b.a)), 4294967295u, min(~4294967295u, 4294967295u), global1.x), vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 19u)], ~0u, _wgslsmith_div_u32(max(arg_1.a.c.x << (1u % 32u), 1u), min(abs(36899u), _wgslsmith_mod_u32(arg_1.b.c.x, 30673u))), ~10808u), all(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, arg_1.c, arg_1.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, arg_1.c, -343f)))).zx));
    let var_1 = arg_1.b;
    var var_2 = Struct_3(-1i, vec4<bool>(all(arg_2.yz), max(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(61956u, arg_1.a.a, var_1.a, global1.x)), ~1u) >= ((arg_1.b.c.x | 4294967295u) ^ var_0.x), arg_2.x != false, select(any(!vec4<bool>(var_1.e.x, arg_0, arg_0, true)), func_2(14696i).e.x, var_1.e.x)), _wgslsmith_mult_u32(~var_1.c.x, ~(firstLeadingBit(var_0.x) >> (var_0.x % 32u))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-19560i, arg_3.x), vec2<i32>(~arg_1.d.x, i32(-1i) * -6034i)), u_input.a.x, -min(u_input.a.x, i32(-1i) * -2147483647i)));
    var var_3 = !(!vec4<bool>(var_0.x <= 4294967295u, var_1.e.x, select(true, 4294967295u >= global0[_wgslsmith_index_u32(44431u, 19u)], var_2.b.x), !(!arg_1.a.e.x)));
    var_2 = Struct_3(abs(0i), select(select(func_3(_wgslsmith_f_op_vec3_f32(-arg_1.b.b.ywy)), select(vec4<bool>(false, true, false, arg_2.x), !vec4<bool>(var_1.e.x, var_1.e.x, false, arg_0), func_3(arg_1.a.b.ywx)), select(arg_2, arg_2, !vec4<bool>(true, arg_2.x, false, false))), !select(select(var_2.b, vec4<bool>(var_3.x, arg_0, arg_0, var_2.b.x), var_3.x), !vec4<bool>(false, arg_2.x, false, var_2.b.x), !var_1.e.x), arg_2), 1u, vec3<i32>(arg_1.d.x, var_2.a, -27445i));
    return !(!select(!vec4<bool>(var_2.b.x, arg_1.b.e.x, false, arg_1.b.e.x), arg_2, select(func_3(vec3<f32>(1108f, 840f, -314f)), arg_2, var_2.b)));
}

fn func_1() -> vec4<bool> {
    return func_4(false, Struct_2(func_2(~(-u_input.b.x)), func_2(-reverseBits(-1i)), _wgslsmith_f_op_f32(f32(-1f) * -334f), abs(min(reverseBits(vec2<i32>(u_input.b.x, u_input.a.x)), u_input.b.yw))), !vec4<bool>(func_2(u_input.b.x).e.x, !func_3(vec3<f32>(862f, -1280f, -384f)).x, true, false), u_input.b);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32) -> Struct_4 {
    let var_0 = Struct_3(~u_input.a.x, vec4<bool>(!(26602i < abs(u_input.a.x)), all(arg_1.xx), arg_0.x, func_2(u_input.b.x).e.x), global0[_wgslsmith_index_u32(6346u, 19u)], u_input.b.www);
    let var_1 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, ~var_0.a, var_0.a), countOneBits(var_0.d)));
    let var_2 = var_0;
    let var_3 = func_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(max(var_0.a, 18461i), 1i), -u_input.a.x | _wgslsmith_sub_i32(var_2.d.x, var_0.a), (-37475i << (var_2.c % 32u)) ^ 2147483647i), var_2.a));
    let var_4 = var_1.b.xww;
    return Struct_4(func_2(_wgslsmith_div_i32(_wgslsmith_add_i32(67384i, _wgslsmith_sub_i32(u_input.b.x, 12571i)), 12037i)), _wgslsmith_div_vec4_f32(var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b))), vec4<bool>(true & var_1.e.x, func_4(var_0.b.x, Struct_2(Struct_1(var_3.a, vec4<f32>(var_4.x, var_4.x, -1070f, -1217f), var_3.c, var_3.d, vec2<bool>(true, true)), Struct_1(var_2.c, global2[_wgslsmith_index_u32(var_3.a, 7u)], var_3.c, -1037f, vec2<bool>(true, arg_1.x)), _wgslsmith_f_op_f32(1361f - var_4.x), select(u_input.b.xz, vec2<i32>(-13262i, var_2.d.x), var_0.b.x)), vec4<bool>(true, false, var_1.e.x, any(vec3<bool>(true, arg_0.x, true))), u_input.b).x, var_3.e.x, true), global0[_wgslsmith_index_u32(92509u, 19u)], var_3.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4486u;
    global3 = array<Struct_4, 32>();
    var var_1 = -58301i;
    var var_2 = func_5(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_1(), !func_4(true, Struct_2(Struct_1(44903u, vec4<f32>(1043f, -786f, -1000f, 664f), vec3<u32>(74467u, global0[_wgslsmith_index_u32(global1.x, 19u)], global1.x), 1982f, vec2<bool>(true, true)), Struct_1(103005u, vec4<f32>(-1413f, -885f, -308f, 2051f), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(10134u, 19u)], global1.x), -1789f, vec2<bool>(true, false)), -204f, vec2<i32>(u_input.a.x, -40755i)), vec4<bool>(true, false, true, true), u_input.b)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, true)), true, func_3(vec3<f32>(-1603f, -214f, 293f)).x), vec4<bool>(true, true, true, true)), firstLeadingBit(~(32416u | select(3251u, global1.x, false))));
    var var_3 = var_2.a.c;
    var var_4 = Struct_4(func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.b.wx, ~u_input.b.yz), _wgslsmith_sub_vec2_i32(u_input.b.yz & u_input.a, u_input.b.zy))), vec4<f32>(_wgslsmith_f_op_f32(-838f * 1623f), var_2.b.x, _wgslsmith_f_op_f32(abs(func_5(!vec4<bool>(var_2.e, var_2.c.x, var_2.c.x, var_2.a.e.x), var_2.c, 0u).b.x)), _wgslsmith_f_op_f32(f32(-1f) * -126f)), var_2.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(29859u, var_2.a.c.x), global0[_wgslsmith_index_u32(firstLeadingBit(var_2.d), 19u)]), true);
    let var_5 = select(firstLeadingBit(vec4<u32>(firstLeadingBit(~global0[_wgslsmith_index_u32(global1.x, 19u)]), select(global0[_wgslsmith_index_u32(select(75611u, var_4.d, var_4.c.x), 19u)], var_2.d ^ 0u, var_2.c.x), 73534u, _wgslsmith_sub_u32(var_2.d, _wgslsmith_sub_u32(var_3.x, var_2.d)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(2545u, var_4.a.a, var_3.x), 19u)] ^ 4294967295u, 0u, 9848u), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_2.a.a, 0u, var_3.x, var_4.d), vec4<u32>(var_4.a.a, 830u, var_3.x, var_2.d), false), vec4<u32>(8930u, 53650u, 19159u, 4294967295u)), firstLeadingBit(vec4<u32>(32910u, var_2.d, 43152u, 0u)) << (select(vec4<u32>(1u, 78814u, var_3.x, 71495u), vec4<u32>(70842u, var_2.a.a, global1.x, 20589u), var_2.c) % vec4<u32>(32u))), vec4<u32>(var_4.a.a, ~global0[_wgslsmith_index_u32(var_3.x, 19u)], abs(var_2.a.a), abs(_wgslsmith_mod_u32(var_4.d, var_4.d)))), !vec4<bool>(true, var_4.c.x, all(!var_2.c), var_4.a.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(func_2(u_input.b.x).c, _wgslsmith_add_vec3_u32(var_4.a.c, vec3<u32>(34161u, 0u, 0u)) ^ ~var_4.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b.x) * func_5(func_3(var_4.b.yyw), var_4.c, 85u).b.x), 336f, ~(~reverseBits(u_input.b.x | u_input.a.x)), vec3<u32>(var_3.x, _wgslsmith_sub_u32(func_5(var_4.c, vec4<bool>(var_2.a.e.x, var_2.e, false, var_2.e), 0u).d, min(1u, global0[_wgslsmith_index_u32(0u, 19u)])), (0u << (var_3.x % 32u)) << (34730u % 32u)) << (_wgslsmith_clamp_vec3_u32(min(vec3<u32>(25633u, var_2.a.c.x, var_2.a.c.x), firstLeadingBit(var_2.a.c)), min(~vec3<u32>(global1.x, var_3.x, 24266u), vec3<u32>(7537u, var_3.x, var_2.d)), vec3<u32>(~global1.x, _wgslsmith_add_u32(41736u, var_2.d), ~global1.x)) % vec3<u32>(32u)));
}

