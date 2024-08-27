struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(-750f, _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f - -942f))))));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1149f, arg_1))), -108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-506f)) + _wgslsmith_f_op_f32(exp2(arg_1))))), !select(var_0.b, select(!var_0.b, vec3<bool>(var_0.b.x, false, false), var_0.b.x), abs(1u) > u_input.d), arg_1);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, var_0.c) + var_0.a), _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(815f, -675f, 914f))))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.c, -2125f))) * var_0.c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 130f)))), var_0.c, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + 1411f));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-235f + _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1310f, -293f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) * -2075f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.c)), var_0.c))))), var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1481f), 1051f)));
    return var_2.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(arg_2.a, vec3<bool>(!(!arg_2.b.x != (u_input.d == u_input.e)), arg_2.b.x, false), arg_2.c);
    var_0 = arg_2;
    var var_1 = select(_wgslsmith_div_vec2_u32(~vec2<u32>(~1282u, ~0u), ~(~select(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.d, 0u), false))), abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, u_input.e) ^ vec2<u32>(5005u, 1u))), select(arg_2.b.yx, select(!select(vec2<bool>(true, var_0.b.x), vec2<bool>(arg_2.b.x, false), vec2<bool>(false, true)), !vec2<bool>(arg_0.x, true), false), vec2<bool>(arg_2.b.x, false)));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.e), _wgslsmith_mod_u32(firstTrailingBit(select(u_input.d, _wgslsmith_sub_u32(u_input.d, 1u), u_input.d <= 4294967295u)), ~var_1.x));
    var var_3 = arg_2;
    return firstTrailingBit(~vec3<u32>(9303u, ~u_input.e, 43240u));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), vec3<bool>(arg_0, (any(vec3<bool>(arg_0, arg_0, arg_0)) | (u_input.a.x > u_input.b)) | any(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true))), true), 575f);
    var var_1 = ~u_input.e;
    let var_2 = ~(~func_4(!var_0.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(min(var_0.c, -1000f)), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.d, u_input.d, 0u), var_0.c)), 1f), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<bool>(false, arg_0, var_0.b.x), _wgslsmith_f_op_f32(var_0.c - -194f))));
    var var_3 = true;
    var var_4 = vec4<bool>(true, arg_0, false, arg_0);
    return reverseBits(_wgslsmith_add_u32(18366u & u_input.e, 43480u | _wgslsmith_sub_u32(74604u, ~var_2.x)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = ~vec3<u32>(abs(1u), ~arg_2, (44130u & _wgslsmith_mod_u32(u_input.e, arg_2)) >> (func_2(arg_2 < u_input.d) % 32u));
    var var_1 = vec2<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), _wgslsmith_div_i32(-arg_0, 39753i) == -13736i);
    var var_2 = all(!vec3<bool>(var_1.x != true, true, select(27642u >= arg_2, !var_1.x, true)));
    var_1 = !select(!(!(!vec2<bool>(var_1.x, false))), vec2<bool>(!(!var_1.x), false), !(!(!var_1.x)));
    let var_3 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1083f + -1109f), _wgslsmith_f_op_f32(select(481f, -128f, var_1.x)), true)), -1503f, _wgslsmith_f_op_f32(f32(-1f) * -325f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-290f, 2156f, 1006f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -942f, -2461f)), var_1.x)))), !select(!(!vec3<bool>(var_1.x, var_3, var_3)), select(vec3<bool>(var_1.x, var_3, true), !vec3<bool>(var_1.x, var_3, false), false), select(!vec3<bool>(true, var_3, var_1.x), !vec3<bool>(false, var_1.x, true), true)), -774f);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(511f)), arg_1.c, 772f), !(!vec3<bool>(var_0.b.x, false, true)), _wgslsmith_f_op_f32(round(var_0.a.x)));
    var var_2 = func_1(min(-u_input.a.x, ~(~(u_input.a.x >> (arg_0.x % 32u)))), min(min(u_input.c.x, ~2147483647i), ~select(u_input.b, ~u_input.c.x, !var_1.b.x)), ~abs(47928u));
    var var_3 = min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-(i32(-1i) * -46240i), u_input.b), u_input.a.x), ~countOneBits(u_input.b));
    var var_4 = ~0i;
    return select(select(!(!vec4<bool>(true, var_1.b.x, false, false)), vec4<bool>(!(!arg_1.b.x), 21643i == u_input.a.x, u_input.c.x < -u_input.a.x, !(!var_1.b.x)), arg_1.b.x), select(vec4<bool>(arg_1.b.x, true, false, true), vec4<bool>(false, arg_1.b.x | var_1.b.x, _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, u_input.a.x)) > -1i, !var_2.b.x), !(!arg_1.b.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_5(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 39627u, u_input.e, u_input.d), vec4<u32>(47729u, 0u, u_input.e, u_input.e)), func_1(40246i, i32(-1i) * -15370i, 87036u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1895f))), vec4<bool>(true, false, all(vec3<bool>(true, true, true)), true || all(vec2<bool>(true, true))), !all(vec2<bool>(true, false)) != func_5(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, 0u, u_input.e), vec4<u32>(22253u, 0u, 32300u, 89753u)), Struct_1(vec3<f32>(469f, -1000f, 903f), vec3<bool>(false, true, true), -1010f), _wgslsmith_f_op_f32(f32(-1f) * -1719f)).x);
    let var_1 = ~vec4<i32>(countOneBits(60172i), i32(-1i) * -_wgslsmith_add_i32(u_input.b, 0i), u_input.a.x, _wgslsmith_clamp_i32(-36508i, countOneBits(-u_input.a.x), u_input.b));
    var_0 = vec4<bool>(func_1(abs(var_1.x), _wgslsmith_add_i32(0i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, var_1.x, -39068i), _wgslsmith_div_i32(-7946i, 6766i))), _wgslsmith_add_u32(~0u, ~4294967295u & u_input.d)).b.x, var_0.x, true, var_0.x);
    var var_2 = -59222i;
    var var_3 = func_4(func_1(u_input.c.x, abs(_wgslsmith_div_i32(var_1.x, var_1.x)), u_input.e | abs(firstLeadingBit(u_input.d))).b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(482f)) - -890f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 117f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(227f)), _wgslsmith_f_op_f32(-728f + 694f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-399f)) + 275f))), -496f, -321f), func_1(-1i | _wgslsmith_mult_i32(-var_1.x, firstLeadingBit(-2147483647i)), -_wgslsmith_div_i32(-79089i, 1i), u_input.d)).yy;
    let var_4 = u_input.e & ~reverseBits(firstTrailingBit(11835u << (var_3.x % 32u)));
    let var_5 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-783f, -1179f, -1422f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1172f, 791f, -277f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(271f, -1299f, -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(652f, -241f, 439f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-248f, -405f, 267f))))), select(var_0.wxz, var_0.wzw, var_0.x), _wgslsmith_div_f32(166f, -1486f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1166f), ~countOneBits(~vec3<u32>(var_4, var_3.x, var_4)) >> (~(~(~vec3<u32>(var_3.x, 2473u, var_3.x))) % vec3<u32>(32u)), 14799i, 42183u);
}

