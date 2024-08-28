struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<u32>(u_input.b, abs(u_input.b), select(43323u, 24101u, true), 6275u);
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    var var_0 = vec4<bool>(!(func_3(Struct_1(arg_2.a, -2147483647i, -1i, -1015f, vec4<f32>(1302f, 305f, 2164f, arg_0))) > _wgslsmith_mult_u32(~u_input.b, abs(arg_3.x))), select(true, !(!arg_2.a.x), false), true, arg_2.a.x);
    var var_1 = Struct_1(arg_2.a, u_input.a.x, -(~(-30032i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_2.e - _wgslsmith_f_op_vec4_f32(arg_2.e * arg_2.e))))));
    var_1 = Struct_1(select(vec4<bool>(true, _wgslsmith_f_op_f32(sign(-384f)) > _wgslsmith_f_op_f32(round(482f)), any(arg_2.a), var_1.a.x), !select(!var_1.a, !var_1.a, true & var_0.x), vec4<bool>(_wgslsmith_f_op_f32(-var_1.d) <= _wgslsmith_f_op_f32(floor(var_1.e.x)), var_1.a.x, arg_2.a.x | !var_0.x, false)), _wgslsmith_div_i32(1i, u_input.a.x), var_1.c, _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_2.d)))))), _wgslsmith_f_op_vec4_f32(select(var_1.e, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(786f, -690f, arg_2.d, -1054f), vec4<f32>(-708f, -441f, arg_2.d, 333f)), _wgslsmith_f_op_vec4_f32(-var_1.e), var_1.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_1.e, vec4<f32>(arg_0, 630f, -1044f, -638f)))))), false)));
    var var_2 = arg_2;
    let var_3 = Struct_1(select(var_2.a, select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x, arg_2.a.x, all(arg_2.a), false), _wgslsmith_f_op_f32(-1183f - -987f) == _wgslsmith_f_op_f32(arg_2.e.x * -1000f)), arg_2.a), countOneBits(_wgslsmith_mod_i32(countOneBits(abs(1i)), var_1.c >> (arg_3.x % 32u))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_2.b, var_2.c, _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-7894i, 1i), u_input.a))), -14370i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * var_1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.e * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 417f, -1216f, 1312f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, -1432f, -3091f, arg_2.d) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_2.d, 1879f, 360f)))))));
    return arg_2.d;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(2547f, false, Struct_1(vec4<bool>(false, false, true, true), 2147483647i, u_input.a.x, -2133f, vec4<f32>(-1707f, -1141f, 895f, 685f)), vec3<u32>(0u, u_input.b, u_input.b))) - _wgslsmith_f_op_f32(abs(1795f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-815f)) * _wgslsmith_f_op_f32(-1000f + -354f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(545f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1487f, -1350f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(465f - -2135f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(902f * -275f), _wgslsmith_div_f32(160f, -260f))))));
    var_0 = vec4<f32>(-524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -694f))) * _wgslsmith_div_f32(-1085f, _wgslsmith_f_op_f32(select(var_0.x, 1118f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -765f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f + 368f) + _wgslsmith_f_op_f32(ceil(var_0.x))), -699f))));
    let var_1 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true), all(vec4<bool>(true, true, true, true)))), any(vec3<bool>(true, true, true)), 279f != _wgslsmith_f_op_f32(144f - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(min(var_0.x, -929f)), 14006u >= u_input.b, Struct_1(vec4<bool>(false, false, true, false), 10980i, -25687i, -2668f, vec4<f32>(var_0.x, -713f, -220f, var_0.x)), abs(vec3<u32>(0u, u_input.b, 1u))))));
    let var_2 = Struct_1(vec4<bool>(u_input.a.x > u_input.a.x, true, true, false), ~u_input.a.x ^ 7346i, 0i, 1004f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -818f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.yxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e.ywx * var_2.e.wyy)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.e.wxz))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1145f, -672f))) * _wgslsmith_f_op_vec3_f32(var_2.e.wzz + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(var_0.yzy, vec3<f32>(var_0.x, -812f, 814f), var_2.a.x)))))), !(!select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, true), true))));
    return any(!var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true)), !all(vec4<bool>(false, true, true, false))), vec4<bool>(-u_input.a.x <= u_input.a.x, -32686i == u_input.a.x, func_1(), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true)), u_input.a.x, -5666i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) - _wgslsmith_f_op_f32(max(1862f, _wgslsmith_f_op_f32(f32(-1f) * -819f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1031f)), 291f, _wgslsmith_f_op_f32(sign(-1802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(890f)) - 426f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-988f))))));
    let var_1 = u_input.a;
    let var_2 = Struct_1(var_0.a, _wgslsmith_add_i32(var_1.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 41561i, -27012i), vec3<i32>(-7258i, var_0.b, u_input.a.x) & vec3<i32>(var_1.x, 0i, -1i)))), var_1.x, _wgslsmith_div_f32(var_0.e.x, 1416f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x), 1f, _wgslsmith_f_op_f32(ceil(var_0.d)), var_0.e.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, -186f, var_0.d, var_0.e.x)) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.e.x)), _wgslsmith_f_op_f32(select(-1000f, var_0.e.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(247f + 393f)))));
    var var_3 = Struct_1(var_2.a, -18386i, -(~_wgslsmith_div_i32(var_1.x << (u_input.b % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-25093i, var_2.c, var_1.x, -7208i), vec4<i32>(var_1.x, u_input.a.x, var_2.b, 1i)))), var_2.d, _wgslsmith_f_op_vec4_f32(abs(var_2.e)));
    let var_4 = Struct_1(vec4<bool>(false, !(!(u_input.b > u_input.b)), all(!(!var_3.a.xxy)), var_2.a.x), 35362i, 45287i, _wgslsmith_f_op_f32(f32(-1f) * -1852f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.d, var_0.e.x, _wgslsmith_f_op_f32(var_3.e.x - var_0.d), _wgslsmith_f_op_f32(trunc(var_2.d))), var_3.e)))));
    let var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1100f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(552f - 2758f))), _wgslsmith_f_op_f32(894f - var_4.d), _wgslsmith_div_f32(998f, var_0.d))))));
    let var_6 = Struct_1(var_4.a, ~_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(var_4.c, 14759i)), select(vec2<i32>(u_input.a.x, var_0.b), u_input.a, select(var_2.a.yy, var_2.a.yx, vec2<bool>(var_3.a.x, false)))), var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.e.x - var_3.e.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), var_4.d, var_4.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f - var_0.d))))));
    var_3 = var_2;
    var var_7 = min(u_input.b, ~_wgslsmith_div_u32(4294967295u, countOneBits(_wgslsmith_mod_u32(u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec3<i32>(-50427i, min(-14299i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, u_input.a.x, var_1.x, var_4.b)), min(vec4<i32>(-67214i, var_6.b, -24417i, u_input.a.x), vec4<i32>(u_input.a.x, -27787i, -23917i, var_0.c)))), ~_wgslsmith_div_i32(max(6351i, -17729i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 32246i, -2147483647i, -38731i), vec4<i32>(2147483647i, 16148i, var_6.c, -1i)))), _wgslsmith_div_i32(reverseBits(-2147483647i), ~firstTrailingBit(var_0.b)));
}

