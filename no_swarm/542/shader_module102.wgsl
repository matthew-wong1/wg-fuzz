struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_mult_u32(abs(u_input.a) & 1u, ~(~4294967295u) | _wgslsmith_add_u32(~u_input.d.x, u_input.d.x)), 515u << (~u_input.b % 32u), vec2<u32>(firstTrailingBit(countOneBits(1u)), u_input.d.x) << (vec2<u32>(78835u & firstLeadingBit(u_input.a), _wgslsmith_div_u32(~0u, firstTrailingBit(67761u))) % vec2<u32>(32u)), arg_1);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.d.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1125f, _wgslsmith_div_f32(var_0.d.a, -623f), all(vec3<bool>(arg_0.x, arg_0.x, true)))))));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a)) * 1f)), _wgslsmith_f_op_f32(abs(var_1)));
    var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-434f * var_1), var_0.d.a))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_2.x) - 1000f)), arg_0.x));
    let var_3 = var_0.d.a;
    return ~select(vec4<u32>(~41567u, 5320u, _wgslsmith_div_u32(var_0.b & u_input.a, ~1u), ~u_input.a), u_input.d, (abs(u_input.c) == _wgslsmith_sub_i32(-1i, -12998i)) == arg_0.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<u32> {
    return vec4<u32>(~4294967295u, ~arg_0.b.x, _wgslsmith_sub_u32(0u, ~(firstLeadingBit(arg_0.b.x) ^ arg_2.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.b, firstTrailingBit(u_input.d)), ~u_input.d << (~arg_0.b % vec4<u32>(32u))));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_3(-1514f, vec4<u32>(~(~countOneBits(102394u)), ~(~countOneBits(u_input.a)), abs(1u), 27098u));
    var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) + -1162f))), func_4(Struct_3(_wgslsmith_f_op_f32(var_0.a * -361f), _wgslsmith_add_vec4_u32(func_3(vec2<bool>(false, false), Struct_1(725f)), vec4<u32>(22263u, 0u, var_0.b.x, 4294967295u) ^ var_0.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), vec4<u32>(var_0.b.x, 4294967295u >> ((var_0.b.x << (1u % 32u)) % 32u), u_input.b, ~1u)));
    var var_1 = true;
    var var_2 = var_0.a;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(126f + -302f), var_0.a))), _wgslsmith_div_f32(-502f, var_0.a))));
    return vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, func_4(Struct_3(1216f, u_input.d ^ vec4<u32>(u_input.d.x, 11995u, 44722u, 1u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1231f)), u_input.d).x, ~(~26032u)), abs(55926u), u_input.d.x, u_input.a >> (func_4(Struct_3(_wgslsmith_f_op_f32(-var_0.a), var_0.b), Struct_1(1625f), firstLeadingBit(var_0.b) | vec4<u32>(14209u, 72627u, 18493u, 1u)).x % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec3_u32(select(firstTrailingBit(vec3<u32>(arg_0.b.x, _wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b), 3939u)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b), 3414u), _wgslsmith_dot_vec4_u32(u_input.d, func_2()), 2293u), vec3<bool>(_wgslsmith_f_op_f32(select(2231f, arg_2.x, false)) >= 582f, select(all(vec3<bool>(false, false, true)), true, false), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))))), vec3<u32>(~((arg_0.b.x >> (u_input.b % 32u)) & 1u), ~(~arg_0.b.x), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.b.x, 1u, 1u), 0u | arg_3.b, arg_3.c.x))), ~u_input.d.yxz);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1348f - arg_2.x), _wgslsmith_f_op_f32(abs(arg_3.d.a)), 1482f))));
    var var_2 = 8141u;
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 257f)), _wgslsmith_f_op_f32(abs(648f)), -1363f), vec3<f32>(_wgslsmith_f_op_f32(461f + 910f), var_1.x, -461f), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1169f, 2107f, -205f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1522f, 370f, arg_2.x))))))))));
    var var_3 = ~(~_wgslsmith_sub_u32(0u, var_0.x) << (var_0.x % 32u));
    return select(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), !any(vec3<bool>(false, true, true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), all(vec3<bool>(true, true, any(vec3<bool>(false, false, false))))), select(select(vec2<bool>(select(false, false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !all(vec3<bool>(true, false, true)) && false), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(false, false, true)), vec2<bool>(true, false & all(vec4<bool>(true, false, false, false))), select(func_1(Struct_3(-508f, vec4<u32>(0u, 51083u, var_0, 1u)), ~vec3<i32>(u_input.c, -2147483647i, u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(925f, 424f)), Struct_2(var_0, 30655u, u_input.d.xx, Struct_1(1089f))), vec2<bool>(true, true), false));
    var var_2 = Struct_2(_wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_mult_u32(var_0, 1u), abs(~(~var_0))), ~abs(_wgslsmith_add_u32(countOneBits(var_0), u_input.a)), u_input.d.xy, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-341f - -328f) * _wgslsmith_f_op_f32(-1626f - _wgslsmith_f_op_f32(floor(324f))))));
    var_1 = select(select(vec2<bool>(all(!vec3<bool>(var_1.x, false, var_1.x)), _wgslsmith_f_op_f32(floor(var_2.d.a)) > var_2.d.a), !(!vec2<bool>(false, var_1.x)), var_1.x), !vec2<bool>(all(vec2<bool>(false, true)), true), all(vec2<bool>(!any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), true)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.d.a, var_2.d.a))), ~max(~firstTrailingBit(vec4<u32>(u_input.a, var_2.c.x, u_input.a, var_0)), abs(~u_input.d)));
    let var_4 = select(select(!select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, var_1.x), var_1.x), !vec3<bool>(var_1.x, all(vec2<bool>(false, var_1.x)), select(var_1.x, true, false)), func_1(Struct_3(_wgslsmith_f_op_f32(-var_2.d.a), u_input.d), vec3<i32>(abs(-6502i), u_input.e | u_input.e, abs(u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(select(var_3.a, var_2.d.a, var_1.x)), 1000f), Struct_2(~4294967295u, max(4294967295u, var_2.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(59012u, var_3.b.x), vec2<u32>(0u, u_input.d.x)), Struct_1(-304f))).x), vec3<bool>(true, false, false), u_input.c != -2147483647i);
    var var_5 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.a) - 1000f) + -413f), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 32155u, var_0), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(127876u, 30538u, 1u, 1u), u_input.d), u_input.d << (vec4<u32>(u_input.a, var_0, u_input.b, var_0) % vec4<u32>(32u)))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.b.x, var_3.b.x, u_input.b, var_3.b.x), var_3.b), vec4<u32>(u_input.b << (78539u % 32u), var_3.b.x, func_4(Struct_3(449f, var_3.b), var_2.d, vec4<u32>(var_0, u_input.d.x, var_2.a, 29190u)).x, var_0 << (0u % 32u)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_4.x), vec4<bool>(false, var_1.x, false, true)), !vec4<bool>(var_4.x, var_4.x, var_1.x, true), var_3.b.x >= 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(23886i, u_input.a, _wgslsmith_add_u32(func_2().x, u_input.d.x), var_3.b.x);
}

