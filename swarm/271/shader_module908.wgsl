struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, 0i, 0i, Struct_1(vec4<f32>(1322f, 1005f, -994f, -794f), 0i, true));

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(Struct_1(vec4<f32>(-221f, 1013f, -435f, -384f), -8654i, true), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(-1180f, -1951f, 1046f, -902f), 1i, true), -2037f, Struct_1(vec4<f32>(-869f, 918f, -680f, 255f), i32(-2147483648), false)), -681f, Struct_1(vec4<f32>(1788f, -347f, 298f, -1692f), i32(-2147483648), true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-414f, -1784f, -748f, 1438f), -54197i, true), vec2<u32>(45496u, 0u), Struct_1(vec4<f32>(284f, -343f, 213f, 591f), -55473i, true), -1000f, Struct_1(vec4<f32>(-1896f, -1000f, 359f, -467f), -15070i, true)), 1000f, Struct_1(vec4<f32>(-667f, -1782f, 251f, 399f), 2147483647i, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(-2254f, 1000f, 1000f, -357f), 37055i, true), vec2<u32>(1u, 1u), Struct_1(vec4<f32>(1006f, -1078f, 1306f, -134f), 61861i, false), 137f, Struct_1(vec4<f32>(-272f, 1121f, 1821f, -403f), 2147483647i, false)), 380f, Struct_1(vec4<f32>(2550f, 594f, -1122f, 557f), 10285i, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-345f, 175f, 481f, -343f), -4443i, false), vec2<u32>(4294967295u, 59160u), Struct_1(vec4<f32>(1751f, -172f, -937f, 833f), 31041i, true), 120f, Struct_1(vec4<f32>(-1167f, 536f, 197f, 329f), 2147483647i, false)), 1000f, Struct_1(vec4<f32>(1000f, 330f, -405f, 233f), -1i, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(164f, 1000f, -841f, 1644f), 18723i, true), vec2<u32>(19961u, 17197u), Struct_1(vec4<f32>(-1934f, -1483f, 1494f, 1000f), -12175i, false), 686f, Struct_1(vec4<f32>(-1000f, 1000f, -214f, 117f), -8516i, false)), 778f, Struct_1(vec4<f32>(-994f, 1307f, -1278f, -1000f), 16061i, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, 120f, -272f, -1770f), -11897i, true), vec2<u32>(16821u, 3340u), Struct_1(vec4<f32>(1023f, 215f, -143f, 2074f), 22075i, true), -108f, Struct_1(vec4<f32>(732f, 803f, 677f, 156f), -25772i, false)), 355f, Struct_1(vec4<f32>(-1037f, -739f, 425f, -1024f), -7929i, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(700f, -625f, -630f, -239f), 0i, true), vec2<u32>(1u, 39240u), Struct_1(vec4<f32>(1298f, -312f, -578f, -647f), 0i, true), 455f, Struct_1(vec4<f32>(161f, 373f, -547f, -2056f), 2147483647i, true)), 800f, Struct_1(vec4<f32>(-1599f, 706f, -706f, -139f), 1561i, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(262f, 1000f, -513f, -2702f), i32(-2147483648), true), vec2<u32>(90897u, 1u), Struct_1(vec4<f32>(-437f, 684f, -452f, 572f), -66039i, false), -123f, Struct_1(vec4<f32>(-481f, -840f, -495f, -700f), 50163i, true)), 919f, Struct_1(vec4<f32>(-125f, 2088f, -323f, 394f), 14168i, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-659f, 292f, 207f, 1434f), 1i, false), vec2<u32>(0u, 0u), Struct_1(vec4<f32>(-1402f, -1550f, 286f, -278f), 15222i, true), -1807f, Struct_1(vec4<f32>(1815f, 1000f, -1000f, -616f), 29082i, false)), -961f, Struct_1(vec4<f32>(-395f, -607f, 360f, 1000f), 0i, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1451f, 1000f, -1339f, -284f), i32(-2147483648), true), vec2<u32>(50439u, 4294967295u), Struct_1(vec4<f32>(-270f, 1754f, -1000f, 112f), 28131i, false), 751f, Struct_1(vec4<f32>(528f, 891f, -1154f, -397f), 1i, true)), 1109f, Struct_1(vec4<f32>(998f, -309f, -1000f, -292f), 2147483647i, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(607f, 1423f, 1586f, 1604f), 2147483647i, true), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(1661f, 1827f, 561f, -980f), -41743i, true), 662f, Struct_1(vec4<f32>(1594f, 1353f, -201f, -507f), 1i, false)), 307f, Struct_1(vec4<f32>(177f, -766f, 1000f, 232f), 2147483647i, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-915f, -1000f, -1218f, 1529f), -18310i, false), vec2<u32>(12926u, 9227u), Struct_1(vec4<f32>(1931f, -1032f, 1370f, 1142f), -10568i, false), -246f, Struct_1(vec4<f32>(1349f, 1398f, 194f, -790f), -6275i, true)), 1023f, Struct_1(vec4<f32>(-1214f, 997f, -210f, 551f), 0i, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1399f, -810f, -320f, 216f), 0i, true), vec2<u32>(0u, 54143u), Struct_1(vec4<f32>(1091f, 1000f, -452f, -1736f), i32(-2147483648), false), -421f, Struct_1(vec4<f32>(387f, 469f, 405f, 871f), 2909i, false)), -1282f, Struct_1(vec4<f32>(408f, -465f, 1535f, -1164f), 432i, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-724f, 580f, 1242f, 1527f), -1i, true), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(108f, -1044f, 1919f, 180f), -2674i, false), 2658f, Struct_1(vec4<f32>(1699f, -213f, 706f, -169f), -16975i, false)), -1474f, Struct_1(vec4<f32>(-1642f, 791f, -1066f, -131f), 2147483647i, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-313f)), global0.d.a.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global0.d.a.wwz);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.a.ywx)));
    var var_2 = select(select(select(select(!vec2<bool>(arg_0.d.c, global0.a), !vec2<bool>(arg_0.d.c, global0.a), true), select(vec2<bool>(global0.d.c, arg_0.d.c), select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, true)), all(vec2<bool>(global0.a, true))), !vec2<bool>(arg_0.a, global0.d.c)), select(vec2<bool>(true, true), vec2<bool>(global0.d.c, all(vec2<bool>(false, global0.a))), !vec2<bool>(arg_0.a, true)), global0.a), vec2<bool>(~(~arg_0.b) >= arg_0.b, !arg_0.a & global0.d.c), vec2<bool>(!(!(arg_0.d.a.x != -1232f)), !any(vec2<bool>(true, true)) && global0.a));
    let var_3 = _wgslsmith_f_op_f32(abs(1742f));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, arg_2.x), u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(9191u, 2526u, 6970u), vec3<u32>(45085u, 36194u, 25782u)) & vec3<u32>(arg_2.x, 27723u, 1u)), u_input.b) <= _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(64645u, 17709u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, 1u), vec2<u32>(4294967295u, arg_2.x)), !var_2.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(arg_2.x, 0u), arg_2)), ~(~_wgslsmith_div_u32(60111u, arg_1)));
}

fn func_2() -> vec2<bool> {
    var var_0 = select(select(!(!(!vec3<bool>(global0.a, global0.d.c, false))), !(!(!vec3<bool>(true, global0.d.c, global0.d.c))), vec3<bool>(false, func_3(Struct_4(global0.d.c, u_input.d.x, 1i, Struct_1(global0.d.a, -2604i, global0.a)), 0u | u_input.b.x, ~vec2<u32>(u_input.b.x, u_input.b.x)), !all(vec2<bool>(global0.d.c, false)))), vec3<bool>(true, true, true || (657f > global0.d.a.x)), true);
    global1 = array<Struct_3, 14>();
    var var_1 = -u_input.d.x;
    let var_2 = select(~(-(~vec2<i32>(2147483647i, u_input.e.x))), vec2<i32>(select(~1i, 1i, 1i == global0.b), 1i & global0.c), !select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), global0.d.c)) | (firstLeadingBit(vec2<i32>(u_input.d.x, ~global0.b)) | max(abs(vec2<i32>(1i, 1i)) | -u_input.c, -(u_input.e.zz >> (vec2<u32>(4294967295u, 36964u) % vec2<u32>(32u)))));
    var var_3 = select(u_input.b, vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x), u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(var_2.x, var_2.x, 1i, -2147483647i)), vec4<i32>(0i, ~(-8939i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_2.x, u_input.d.x, 1i), vec4<i32>(1i, global0.b, global0.b, 0i)), u_input.c.x)) > global0.d.b);
    return select(select(vec2<bool>(true, _wgslsmith_div_f32(global0.d.a.x, -1532f) < -2145f), !var_0.yy, !select(var_0.yy, !vec2<bool>(global0.d.c, false), var_0.yy)), var_0.zz, var_0.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec2<i32> {
    var var_0 = vec4<bool>(true, global0.d.c, any(!func_2()), global0.d.c);
    var var_1 = Struct_5(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, global0.b, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(32096i, 2147483647i, global0.c), vec3<i32>(global0.b, -39148i, -1i)))));
    var var_2 = var_0.wy;
    let var_3 = Struct_5(global0.b);
    var_1 = var_3;
    return -vec2<i32>(2147483647i, _wgslsmith_sub_i32(firstLeadingBit(~u_input.e.x), u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.d.c, 1i, _wgslsmith_add_i32(u_input.c.x, ~(-981i >> (u_input.b.x % 32u))), global0.d);
    let var_0 = select(_wgslsmith_add_vec3_i32(u_input.e, -_wgslsmith_sub_vec3_i32(select(u_input.e, vec3<i32>(global0.b, global0.c, global0.d.b), global0.d.c), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -10635i, global0.d.b), u_input.e))), countOneBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, 1i, -9446i), select(u_input.d, u_input.e, global0.a))) ^ ~(-vec3<i32>(u_input.c.x, u_input.c.x, -3029i)), all(vec2<bool>(!(global0.a && false), 562f == global0.d.a.x)));
    let var_1 = u_input.e.zy;
    var var_2 = _wgslsmith_div_f32(global0.d.a.x, global0.d.a.x);
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.d.a.x, 888f), _wgslsmith_f_op_f32(max(674f, global0.d.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(234f)))))), 2147483647i);
    global0 = Struct_4(!(_wgslsmith_f_op_f32(-global0.d.a.x) <= _wgslsmith_f_op_f32(global0.d.a.x + global0.d.a.x)), _wgslsmith_mod_i32(min(var_1.x << (4294967295u % 32u), -34393i), _wgslsmith_mult_i32(-var_1.x, ~1i)) << (0u % 32u), -1i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1520f, -458f)), _wgslsmith_f_op_f32(ceil(global0.d.a.x)), _wgslsmith_f_op_f32(max(global0.d.a.x, -166f)), _wgslsmith_div_f32(2493f, global0.d.a.x))), abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.b, var_1.x, 0i, -24980i)), reverseBits(vec4<i32>(global0.b, -2147483647i, u_input.e.x, global0.c)))), global0.d.c & global0.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-813f, global0.d.a.x, 1f))), _wgslsmith_f_op_vec3_f32(round(global0.d.a.zyy))), 4294967295u, u_input.b);
}

