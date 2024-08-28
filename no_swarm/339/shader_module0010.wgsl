struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<f32>(-1738f, -474f, 245f), Struct_2(false, vec4<bool>(true, true, false, false), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(816f, -1000f, 384f), vec3<f32>(1000f, -690f, -1706f), 217f), 0u, vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(200f, -998f, -374f), vec3<f32>(1383f, 793f, 1000f), -570f), 1193f), Struct_3(vec3<f32>(-697f, -1448f, 1082f), Struct_2(true, vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(443f, 519f, -653f), vec3<f32>(321f, 674f, -2371f), -858f), 0u, vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -1000f, -667f), vec3<f32>(-535f, 544f, -1030f), 819f), -1361f), Struct_3(vec3<f32>(273f, 810f, 552f), Struct_2(false, vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-510f, -844f, 1115f), vec3<f32>(-1000f, 104f, -792f), 1480f), 15921u, vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(1229f, 1197f, -480f), vec3<f32>(1594f, 1222f, -1070f), 965f), -642f), Struct_3(vec3<f32>(1280f, -914f, 935f), Struct_2(true, vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(216f, 134f, 850f), vec3<f32>(-2382f, -1000f, -2101f), 920f), 1u, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1047f, -1663f, 284f), vec3<f32>(-1403f, -246f, -1304f), 304f), 489f), Struct_3(vec3<f32>(-748f, 768f, -1000f), Struct_2(false, vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(689f, 221f, 183f), vec3<f32>(-183f, 777f, -242f), -646f), 4294967295u, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1356f, 1000f, -1726f), vec3<f32>(532f, 1452f, -1270f), -1000f), -521f), Struct_3(vec3<f32>(1000f, 749f, 1132f), Struct_2(false, vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-996f, 260f, 621f), vec3<f32>(555f, 273f, 1009f), -599f), 6012u, vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-153f, 3359f, -441f), vec3<f32>(-152f, 1473f, 123f), -808f), 661f), Struct_3(vec3<f32>(834f, 142f, 1477f), Struct_2(true, vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1009f, -456f, 1313f), vec3<f32>(301f, 1000f, 1017f), -1656f), 48919u, vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-1000f, 1413f, 334f), vec3<f32>(-739f, 2015f, 638f), -2038f), -2218f), Struct_3(vec3<f32>(1112f, -1361f, -976f), Struct_2(false, vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(136f, 2144f, -905f), vec3<f32>(1660f, 735f, 357f), -206f), 98476u, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(1600f, 642f, -640f), vec3<f32>(191f, 604f, 104f), 496f), -1830f), Struct_3(vec3<f32>(693f, 607f, -869f), Struct_2(false, vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(139f, -863f, 1541f), vec3<f32>(-469f, -362f, 212f), 1179f), 0u, vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-732f, -1611f, 1094f), vec3<f32>(-551f, 531f, -158f), -1167f), 418f), Struct_3(vec3<f32>(-472f, 1339f, 236f), Struct_2(true, vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1859f, -1000f, 626f), vec3<f32>(-151f, 507f, 959f), 1000f), 0u, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(-198f, -833f, -841f), vec3<f32>(1661f, -846f, -787f), -370f), 288f), Struct_3(vec3<f32>(-465f, -2846f, -1894f), Struct_2(true, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(585f, 626f, -124f), vec3<f32>(1394f, 288f, -1752f), 1684f), 14456u, vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-1803f, -2725f, -485f), vec3<f32>(138f, 429f, 339f), -309f), 1294f), Struct_3(vec3<f32>(-905f, -1337f, -590f), Struct_2(false, vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(-878f, -679f, -1000f), vec3<f32>(560f, 1000f, 268f), -1233f), 4294967295u, vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-137f, -305f, 221f), vec3<f32>(-1000f, 2105f, -1484f), 575f), 1000f), Struct_3(vec3<f32>(1178f, 780f, 421f), Struct_2(false, vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(234f, 1476f, -1143f), vec3<f32>(1000f, 958f, -367f), -695f), 1u, vec2<bool>(true, true)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-333f, -1767f, 1062f), vec3<f32>(-1000f, -222f, -628f), -100f), 766f), Struct_3(vec3<f32>(958f, -1000f, 147f), Struct_2(true, vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(980f, 869f, 1194f), vec3<f32>(1391f, -351f, -554f), 391f), 60923u, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(346f, 318f, -1402f), vec3<f32>(-1046f, 667f, 1000f), 1125f), -120f), Struct_3(vec3<f32>(-1000f, 625f, 790f), Struct_2(false, vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(2696f, 348f, -514f), vec3<f32>(1450f, -1580f, -1359f), -1084f), 41298u, vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(555f, 526f, 965f), vec3<f32>(437f, 203f, 1000f), -1000f), -487f), Struct_3(vec3<f32>(116f, -290f, 314f), Struct_2(true, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-265f, -204f, -1379f), vec3<f32>(-1000f, -616f, 413f), -1000f), 11857u, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-555f, -281f, -654f), vec3<f32>(418f, 1531f, 1020f), -607f), -1000f), Struct_3(vec3<f32>(-1640f, -2053f, -269f), Struct_2(false, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1415f, 115f, -741f), vec3<f32>(-325f, -809f, 1716f), 322f), 1u, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(350f, -1000f, 889f), vec3<f32>(-1270f, 520f, 540f), -1261f), -805f), Struct_3(vec3<f32>(755f, 1018f, -1522f), Struct_2(false, vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(916f, 436f, -1312f), vec3<f32>(200f, -200f, 242f), -1000f), 1u, vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(901f, 654f, 1382f), vec3<f32>(-411f, -621f, -405f), 465f), -173f), Struct_3(vec3<f32>(575f, 828f, -644f), Struct_2(false, vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(117f, -1393f, -431f), vec3<f32>(-198f, -680f, 898f), -1137f), 59391u, vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-938f, 659f, 1088f), vec3<f32>(-480f, -449f, 436f), 724f), -947f), Struct_3(vec3<f32>(-1000f, 275f, 622f), Struct_2(false, vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1692f, 201f, 704f), vec3<f32>(372f, 1000f, 1235f), 645f), 0u, vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(899f, 921f, 128f), vec3<f32>(1499f, -118f, -739f), -1554f), -481f), Struct_3(vec3<f32>(1945f, 1000f, -373f), Struct_2(true, vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(938f, -1029f, -973f), vec3<f32>(-827f, -1000f, 268f), -364f), 4294967295u, vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(448f, -891f, 609f), vec3<f32>(-917f, -809f, 2115f), -478f), -1682f), Struct_3(vec3<f32>(1142f, -1565f, 1000f), Struct_2(false, vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1061f, 450f, 2270f), vec3<f32>(-793f, 448f, 740f), 2028f), 44437u, vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(-2245f, -1000f, 1000f), vec3<f32>(-575f, -1758f, 1587f), 1065f), -629f), Struct_3(vec3<f32>(-1000f, 382f, -285f), Struct_2(false, vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-630f, 1401f, -214f), vec3<f32>(1211f, 336f, -726f), 683f), 4294967295u, vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-465f, -991f, 2052f), vec3<f32>(-483f, -570f, -1275f), 634f), 1891f));

var<private> global1: Struct_4;

var<private> global2: f32;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-1969f, 216f, 208f), vec3<f32>(-1000f, -1609f, 1029f), 311f), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(-749f, 411f, 1038f), vec3<f32>(-1372f, 705f, -1549f), -106f), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-1425f, 209f, 161f), vec3<f32>(175f, 1000f, -920f), -417f));

var<private> global4: array<vec3<u32>, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = u_input.b;
    let var_1 = any(arg_1.b.xz);
    let var_2 = Struct_2(arg_1.a, vec4<bool>(arg_1.b.x, true, false, any(arg_1.b.zzz) & true), Struct_1(vec4<bool>(true, !(!var_1), 1u < u_input.a.x, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c.c) + _wgslsmith_div_vec3_f32(vec3<f32>(-1445f, arg_1.c.c.x, arg_1.c.c.x), arg_1.c.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.b))), vec3<f32>(arg_1.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.c.x * arg_1.c.c.x) - _wgslsmith_f_op_f32(step(arg_1.c.d, arg_1.c.c.x))), arg_1.c.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.b.x)))))), arg_1.d, !select(vec2<bool>(true, arg_1.e.x), vec2<bool>(true, arg_1.c.a.x), false));
    let var_3 = arg_1.b.wx;
    var var_4 = abs(min(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.b.x, 15395i), ~u_input.b.x) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_0, var_0.x), vec3<i32>(u_input.b.x, 2147483647i, var_0.x)), vec3<i32>(2147483647i, countOneBits(~u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, u_input.b.x), u_input.b.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c.x)), var_2.c.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c.c.x, -2053f)) - 1000f) - _wgslsmith_f_op_f32(ceil(797f))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1)))) + _wgslsmith_f_op_f32(func_3(-65706i, Struct_2(all(vec2<bool>(true, true)), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(-541f, arg_1, -698f), 1000f), _wgslsmith_dot_vec2_u32(u_input.a, arg_2), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) * 284f) * _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-arg_1))))));
    global1 = Struct_4(~global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(u_input.a.x, arg_2.x), _wgslsmith_sub_u32(4294967295u, u_input.a.x)), 1u)], _wgslsmith_mod_vec3_u32(firstLeadingBit(max(global1.b ^ global4[_wgslsmith_index_u32(arg_2.x, 1u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, u_input.a.x, 4294967295u), vec3<u32>(0u, arg_0, u_input.a.x), vec3<u32>(arg_2.x, 30319u, arg_0)))), global4[_wgslsmith_index_u32(0u, 1u)] << (vec3<u32>(u_input.a.x, 0u, ~arg_0) % vec3<u32>(32u))));
    return Struct_1(select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, true, false), false, true, any(vec4<bool>(false, true, true, false))), vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(false, true, true, true)))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))), arg_1, arg_1), vec3<f32>(arg_1, 808f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) - var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 - 1525f))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_3, 23>();
    global2 = arg_1;
    var var_0 = global1.b.zy;
    let var_1 = firstTrailingBit(~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.d, 4294967295u, 7619u), vec4<u32>(47579u, 4294967295u, var_0.x, arg_0.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, arg_0.d, 0u, 4294967295u), vec4<u32>(var_0.x, u_input.a.x, arg_0.d, u_input.a.x))), 4294967295u, ~var_0.x, countOneBits(global1.b.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(max(-2197f, func_2(3322u, arg_1, vec2<u32>(4294967295u, u_input.a.x), u_input.b.x).d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - 1000f), arg_0.c.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.b.x, 1113f)), 346f);
    return arg_0.c;
}

fn func_1() -> Struct_4 {
    global4 = array<vec3<u32>, 1>();
    var var_0 = func_4(Struct_2(true, !vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), func_2(45776u, 870f, _wgslsmith_add_vec2_u32(u_input.a, firstTrailingBit(vec2<u32>(1665u, 4294967295u))), -max(u_input.b.x, u_input.b.x)), 1u, vec2<bool>(true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-826f * -1065f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(605f * 204f))))));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(max(u_input.b.x, 2147483647i), u_input.b.x), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~u_input.b.x, -u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), firstTrailingBit(1i)))), u_input.b.x);
    var var_2 = !(!var_0.a);
    global3 = array<Struct_1, 3>();
    return Struct_4(~vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 25073u)), countOneBits(vec2<u32>(global1.b.x, 30062u))), ~1u & u_input.a.x), global4[_wgslsmith_index_u32(2952u, 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = Struct_5(~abs(countOneBits(~global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - -1986f))), global3[_wgslsmith_index_u32(~(~(~firstLeadingBit(4294967295u))), 3u)]);
    let var_1 = var_0;
    var var_2 = func_4(Struct_2(true, vec4<bool>(select(any(vec4<bool>(true, false, var_1.c.a.x, var_0.c.a.x)), select(var_0.c.a.x, var_1.c.a.x, false), true != var_0.c.a.x), true, var_1.c.a.x | var_0.c.a.x, var_0.c.a.x), Struct_1(!(!vec4<bool>(var_1.c.a.x, var_0.c.a.x, true, var_0.c.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), -226f, -538f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1884f, 456f))), vec3<f32>(var_0.b, 1970f, 807f))), _wgslsmith_f_op_f32(f32(-1f) * -1168f)), var_0.a, vec2<bool>(all(vec3<bool>(false, var_0.c.a.x, var_0.c.a.x)), true)), -1315f).b.x;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1f))));
    var var_3 = u_input.a.x;
    let var_4 = !func_4(Struct_2(false, var_0.c.a, func_2(u_input.a.x, -404f, vec2<u32>(54962u, 19015u), ~1i), 43475u, !vec2<bool>(true, var_0.c.a.x)), _wgslsmith_f_op_f32(-1f)).a.yzy;
    var var_5 = Struct_2(all(select(vec2<bool>(var_0.c.a.x, true), select(select(vec2<bool>(var_4.x, true), vec2<bool>(var_1.c.a.x, var_1.c.a.x), vec2<bool>(var_1.c.a.x, var_0.c.a.x)), func_4(Struct_2(var_4.x, vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(false, true, false, true), var_1.c.b, vec3<f32>(var_0.c.c.x, var_1.b, -1798f), var_0.b), 58698u, vec2<bool>(false, true)), var_1.c.d).a.yz, func_2(1u, 531f, global1.a.zy, 44661i).a.xy), select(var_4.zy, var_1.c.a.zw, var_4.zx))), vec4<bool>(true, var_4.x, !(true & var_0.c.a.x), var_4.x), Struct_1(vec4<bool>(true, false & func_2(4294967295u, 374f, global1.a.xx, 1i).a.x, any(var_4.yx), false), var_1.c.b, var_0.c.b, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - var_1.b)))), global1.a.x, vec2<bool>(!var_4.x, true));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, abs(u_input.b.x)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, var_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(var_6.a.x, 4294967295u), vec2<u32>(17802u, u_input.a.x))) % vec2<u32>(32u)), firstLeadingBit(u_input.b) << (firstLeadingBit(~vec2<u32>(42174u, var_1.a)) % vec2<u32>(32u))));
}

