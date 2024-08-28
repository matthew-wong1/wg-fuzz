struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-26481i, -5126i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i));

var<private> global1: f32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> vec3<u32> {
    global0 = array<vec2<i32>, 3>();
    global0 = array<vec2<i32>, 3>();
    global1 = arg_0.a.x;
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(2147483647i, max(firstTrailingBit(-12934i), _wgslsmith_mod_i32(abs(43624i), -42847i))), 2147483647i);
    let var_1 = _wgslsmith_clamp_i32(-(~_wgslsmith_add_i32(0i, var_0.x)), ~reverseBits(_wgslsmith_mult_i32(arg_3, i32(-1i) * -1i)), -14208i);
    return ~(~vec3<u32>(arg_2.x, ~(~u_input.b), _wgslsmith_clamp_u32(u_input.b, 85655u, 4294967295u) ^ countOneBits(8088u)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(995f + 1011f), _wgslsmith_f_op_f32(floor(-999f)), 615f, _wgslsmith_f_op_f32(-1000f + -1482f)), vec4<f32>(773f, _wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(step(1315f, 346f)), _wgslsmith_f_op_f32(1165f * -239f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 263f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(561f, 1000f)), any(vec3<bool>(arg_0.x, true, true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1574f)))));
    let var_1 = vec4<u32>(u_input.b, 0u, 1u, 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -1000f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1879f)))));
    global0 = array<vec2<i32>, 3>();
    global0 = array<vec2<i32>, 3>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(round(1606f)), 464f, _wgslsmith_f_op_f32(-var_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-530f * -483f), -873f, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(trunc(arg_0.a.x))), arg_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.xw) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.x))))));
    var var_1 = abs(firstLeadingBit(~func_2(var_0, u_input.a ^ u_input.a, ~vec4<u32>(u_input.b, u_input.b, 20890u, u_input.b), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b.x)), arg_1.b.x, _wgslsmith_f_op_f32(-var_0.b.x), var_0.a.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) + arg_0.a)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, false))) + _wgslsmith_f_op_vec4_f32(-arg_1.a)))))));
    var var_3 = _wgslsmith_add_vec3_u32(~min(~(~vec3<u32>(4294967295u, 4294967295u, u_input.b)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, u_input.b, u_input.b), vec3<u32>(var_1.x, u_input.b, 4294967295u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~u_input.b, min(var_1.x, firstTrailingBit(var_1.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), countOneBits(vec4<u32>(var_1.x, u_input.b, u_input.b, var_1.x))), 4294967295u, u_input.b), ~vec3<u32>(0u, u_input.b >> (771u % 32u), ~u_input.b)));
    var var_4 = arg_1;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!select(vec3<bool>(arg_2, arg_2, all(vec3<bool>(arg_2, arg_2, false))), vec3<bool>(arg_2, any(vec4<bool>(false, false, true, false)), arg_2), false), !(!select(!vec3<bool>(arg_2, false, false), !vec3<bool>(arg_2, true, arg_2), arg_2)), any(!select(vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2), select(arg_2, false, true))));
    let var_1 = arg_3;
    global0 = array<vec2<i32>, 3>();
    let var_2 = var_0;
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_3(!(!select(var_0.zz, var_2.yy, vec2<bool>(arg_2, var_2.x))))), arg_3.a.yw);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    global1 = _wgslsmith_f_op_f32(arg_0.a.x - 294f);
    var var_0 = Struct_1(vec4<f32>(arg_0.a.x, -815f, _wgslsmith_div_f32(-1696f, _wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(870f)))), arg_0.a.yy);
    var var_1 = func_4(arg_0, _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true))).wx, any(vec4<bool>(false, true, true, true)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(-1409f, arg_0.a.x, 1595f, arg_1.b.x))), _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, arg_0.a.x, -1217f, 399f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(242f, var_0.b.x))))));
    global1 = _wgslsmith_f_op_f32(-var_1.b.x);
    let var_2 = Struct_1(func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(326f, var_0.b.x)), _wgslsmith_f_op_f32(trunc(1178f)), _wgslsmith_f_op_f32(238f * arg_1.a.x), _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.x, -480f))) + arg_1.a.wz)), func_4(arg_1, vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x - -209f), _wgslsmith_f_op_f32(select(-884f, 143f, false))), true, func_1(func_4(arg_0, arg_1.a.zy, true, arg_0), arg_1))).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1457f * 1683f) + 369f), -1819f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-383f - var_0.b.x), _wgslsmith_f_op_f32(var_1.a.x - -546f))))));
    return u_input.b;
}

fn func_6(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(any(vec2<bool>(true, arg_1)), arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, 490f))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2359f, 492f, 605f, -1175f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-488f, 114f, -957f, -1755f), vec4<f32>(1323f, -1983f, -1000f, -2633f)))), vec4<f32>(_wgslsmith_f_op_f32(601f - -1000f), -945f, -933f, _wgslsmith_f_op_f32(660f * -652f)), true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(func_1(Struct_1(vec4<f32>(-135f, 1000f, -225f, 772f), vec2<f32>(160f, 1191f)), Struct_1(vec4<f32>(-1314f, 1213f, 891f, 501f), vec2<f32>(-691f, 531f))).a.x, -570f)))));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.b.x, -1000f, -169f, -119f))), func_1(var_0, Struct_1(func_1(Struct_1(var_0.a, var_0.b), var_0).a, vec2<f32>(1f, 1f))).b), func_1(var_0, func_4(func_4(var_0, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(440f, 370f))), true, var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.b))), arg_1, var_0)));
    return func_4(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(838f + var_0.a.x), 1106f), -186f, var_0.b.x, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)) * vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_0.a.x)))), vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(select(select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_1)))).x, _wgslsmith_f_op_f32(func_4(Struct_1(var_1.a, vec2<f32>(1341f, var_1.a.x)), _wgslsmith_f_op_vec2_f32(var_1.a.yw - var_0.b), arg_1, var_1).a.x + _wgslsmith_f_op_f32(-var_1.a.x))), arg_1, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -360f;
    global0 = array<vec2<i32>, 3>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -815f);
    let var_0 = func_6(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(reverseBits(u_input.a), max(u_input.a, -34398i)), 1i, -(~u_input.a)), u_input.a << (~u_input.b % 32u), -2147483647i, firstLeadingBit(-64484i)), true, global0[_wgslsmith_index_u32(func_5(func_4(func_1(Struct_1(vec4<f32>(-1287f, 2174f, 1171f, -1000f), vec2<f32>(1032f, -1321f)), Struct_1(vec4<f32>(105f, 743f, 685f, -1245f), vec2<f32>(-624f, -1138f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-778f, 160f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 413f) + vec2<f32>(744f, 333f))), false, Struct_1(vec4<f32>(1114f, 216f, 207f, -1271f), vec2<f32>(305f, 376f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1510f, 1820f, 1138f, 559f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1000f), vec2<f32>(543f, -985f)))), _wgslsmith_add_i32(select(min(u_input.a, -1i), 1i, u_input.a <= 1i), -_wgslsmith_mult_i32(u_input.a, -49330i))), 3u)]);
    global0 = array<vec2<i32>, 3>();
    global0 = array<vec2<i32>, 3>();
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(167f, 592f, _wgslsmith_div_f32(-1716f, 1573f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, 405f, 329f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-414f, 1177f, _wgslsmith_f_op_f32(var_1.b.x + var_1.a.x))))), func_2(var_0, u_input.a, vec4<u32>(0u, 48548u, ~u_input.b, countOneBits(func_2(var_0, u_input.a, vec4<u32>(4294967295u, 86010u, 61882u, 0u), -45416i).x)), _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(min(66788i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_i32(u_input.a, 0i)))), -136f, max(~(-vec3<i32>(0i, u_input.a, u_input.a) & ~vec3<i32>(-40171i, -2147483647i, u_input.a)), -vec3<i32>(-43598i ^ u_input.a, u_input.a, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 183f, _wgslsmith_f_op_f32(-1000f * var_1.b.x), func_4(var_0, var_0.b, false, var_0).a.x) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.a))))));
}

