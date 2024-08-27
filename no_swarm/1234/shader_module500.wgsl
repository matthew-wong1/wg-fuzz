struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_4(Struct_3(u_input.b.x, !vec4<bool>(u_input.b.x <= 0i, true, any(vec2<bool>(false, true)), true), Struct_1(~u_input.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))))), _wgslsmith_mult_u32(~u_input.d, u_input.d), arg_0, _wgslsmith_f_op_f32(-1776f - 2281f)), Struct_2(!all(vec2<bool>(false, false)), select(u_input.b.xwx, min(vec3<i32>(18178i, -2147483647i, 2147483647i), vec3<i32>(16547i, u_input.c.x, 1i)), vec3<bool>(true, true, true)), vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true), Struct_1(_wgslsmith_add_u32(4294967295u, arg_1.x), vec2<f32>(620f, 1713f), 36005u, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1646f)), false), Struct_1(_wgslsmith_dot_vec2_u32(arg_1, arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 1000f), vec2<f32>(arg_0, -1858f)), vec2<f32>(arg_0, 1202f)), u_input.a, _wgslsmith_f_op_f32(1535f * -206f), 145f)), -29462i, vec4<u32>(arg_1.x, ~_wgslsmith_clamp_u32(arg_1.x, u_input.a, ~u_input.d), ~(~0u & (arg_1.x >> (53423u % 32u))), ~(~firstLeadingBit(1u))));
    let var_1 = !vec3<bool>(true, var_0.a.b.x, false);
    var_0 = Struct_4(Struct_3(-_wgslsmith_dot_vec4_i32(u_input.c, min(vec4<i32>(-27523i, var_0.a.a, 101611i, 36533i), vec4<i32>(-67980i, 49661i, u_input.b.x, u_input.b.x))), !(!(!var_0.a.d.c)), var_0.a.e, var_0.a.d, Struct_1(firstTrailingBit(u_input.d), vec2<f32>(var_0.a.e.b.x, 562f), 1u, _wgslsmith_f_op_f32(min(var_0.a.d.d.d, _wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-918f, 561f) * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_mult_i32(~var_0.a.d.b.x & u_input.c.x, var_0.b), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x >> (u_input.d % 32u), min(var_0.a.d.d.c, arg_1.x), ~1u, 35768u), var_0.c), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.c, vec4<u32>(10058u, 1u, 1u, u_input.d), vec4<u32>(698u, 4294967295u, u_input.a, 13779u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, arg_1.x, arg_1.x, 7737u), var_0.c, vec4<u32>(u_input.d, 4294967295u, arg_1.x, 51687u))) | vec4<u32>(48697u, arg_1.x, 87211u, u_input.d << (16515u % 32u))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -499f, arg_0))))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.e.d))), var_0.a.c.d, 1000f));
    var_0 = Struct_4(Struct_3(-(~var_0.a.d.b.x), var_0.a.b, Struct_1(_wgslsmith_sub_u32(1482u, 1u) >> (~var_0.c.x % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.e.b)), ~_wgslsmith_add_u32(var_0.a.d.d.c, u_input.d), _wgslsmith_div_f32(var_0.a.c.e, _wgslsmith_f_op_f32(307f * var_2.x)), -976f), var_0.a.d, Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.e.d, 921f)))), var_0.a.d.d.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-767f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.c.d))))), -1i, abs(~var_0.c));
    return u_input.d;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.d, u_input.d)), ~(~u_input.d)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a, u_input.d), vec4<u32>(4294967295u, u_input.a, u_input.d, 0u)) ^ u_input.d, firstTrailingBit(func_3(-1000f, vec2<u32>(u_input.d, 0u))))) >> (func_3(-761f, vec2<u32>(~firstLeadingBit(42328u), ~u_input.a)) % 32u);
    var_0 = 8741u;
    var var_1 = u_input.c.x;
    var_0 = u_input.d;
    let var_2 = Struct_3(-max(u_input.b.x, _wgslsmith_add_i32(reverseBits(u_input.b.x), -u_input.b.x)), select(vec4<bool>(true, any(vec3<bool>(false, false, true)) & select(true, false, true), all(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, true, true)), true), !any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(115f, -485f))) * vec2<f32>(2016f, -555f))), ~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(742f)), _wgslsmith_f_op_f32(-783f + 917f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1459f, 630f, true)) * -903f)), _wgslsmith_f_op_f32(f32(-1f) * -285f)), Struct_2(true, reverseBits(abs(u_input.b.wxw)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), !all(vec4<bool>(false, true, false, true))), Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_div_f32(548f, 1302f)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, u_input.d, u_input.a), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(399f))), _wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(776f - -228f))), false), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(264f, 342f), vec2<f32>(-268f, 120f), false)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -352f), vec2<f32>(-1741f, -732f)))), firstLeadingBit(30190u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1165f - -1556f), 233f, true)), -239f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1484f))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.e.b.x)));
}

fn func_1(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, all(vec2<bool>(true, true)) || any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), !vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(~(u_input.b.x & -36206i), -2147483647i, true))));
    let var_2 = false;
    let var_3 = Struct_4(Struct_3(u_input.c.x, select(vec4<bool>(false, all(vec3<bool>(false, var_0.x, var_2)), true, var_0.x), vec4<bool>(any(vec3<bool>(false, false, true)), all(var_0), false, true), vec4<bool>(true, var_0.x, var_0.x, var_2)), Struct_1(57871u, vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(min(var_1, 1399f))), reverseBits(1u), 515f, 686f), Struct_2(any(vec2<bool>(true, var_0.x)), firstLeadingBit(vec3<i32>(u_input.c.x, 12772i, 0i)), vec4<bool>(all(vec4<bool>(var_2, var_2, false, var_0.x)), !var_2, any(vec4<bool>(false, false, true, var_0.x)), var_2), Struct_1(func_3(-1795f, vec2<u32>(u_input.a, u_input.d)), vec2<f32>(223f, 1220f), max(u_input.d, 48711u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1), var_0.x), Struct_1(13002u, vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(var_1 * -283f)), u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), -909f, true)), _wgslsmith_f_op_f32(var_1 * var_1))), _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.c.www), ~vec3<i32>(1i, 0i, 0i)), u_input.c.x), max(vec4<u32>(~(~4294967295u), select(28300u, ~u_input.a, true), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(20791u, 64568u), vec2<u32>(u_input.d, 12665u))), _wgslsmith_div_u32(u_input.d, 95105u) & u_input.d), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(19112u, u_input.a, u_input.d))), 15225u, ~u_input.a, _wgslsmith_add_u32(~u_input.a, u_input.d | u_input.d))));
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a.c.b.x, -626f, _wgslsmith_f_op_f32(sign(-2098f)))));
    var_4 = vec3<f32>(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -370f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1092f * var_1) * 1159f)))), _wgslsmith_f_op_f32(sign(533f)));
    var var_5 = var_3.c.xwz;
    var var_6 = var_3.a;
    var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) * var_6.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2697f)) * var_1), var_4.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1417f, var_3.a.d.d.b.x, var_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.d.d.d, var_4.x, 724f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.d.d.e, var_1, 1683f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.d.d.b.x, var_6.e.d, -418f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.x, -116f, var_6.d.d.b.x)))))), _wgslsmith_f_op_f32(1960f * var_3.a.e.d) == _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(599f + var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.e.b, -reverseBits(var_3.a.d.b));
}

