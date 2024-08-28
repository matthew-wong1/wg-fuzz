struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = !vec3<bool>(any(vec4<bool>(true, true, true, true)), false, !(14374i > u_input.c) & true);
    var var_1 = vec4<u32>(~_wgslsmith_clamp_u32(u_input.a.x, ~1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), reverseBits(u_input.b), 69294u, ~4294967295u) << (vec4<u32>(_wgslsmith_mult_u32((27334u >> (u_input.a.x % 32u)) & abs(u_input.a.x), _wgslsmith_clamp_u32(25693u, u_input.b, ~20102u)), u_input.b & ~(~0u), min(33175u, select(_wgslsmith_sub_u32(1u, u_input.b), u_input.b, var_0.x)), select(19764u ^ _wgslsmith_mod_u32(u_input.b, 2839u), 1u, any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x), var_0.x)))) % vec4<u32>(32u));
    var var_2 = abs(vec2<i32>(u_input.c, -1157i));
    let var_3 = Struct_1(vec4<f32>(2347f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(919f, -1379f)), 1261f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)) + 1f), -853f), _wgslsmith_f_op_f32(642f - _wgslsmith_f_op_f32(floor(-746f))), select(vec4<i32>(_wgslsmith_div_i32(1i, u_input.c | var_2.x), abs(~var_2.x), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c, var_2.x), u_input.c, u_input.c << (1u % 32u)), var_2.x), ~vec4<i32>(select(u_input.c, u_input.c, var_0.x), u_input.c, _wgslsmith_mod_i32(u_input.c, 1i), -2147483647i), !(!select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, false)))), ~(~u_input.a.zw));
    var_0 = !(!(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    return ~1u;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = all(!(!vec3<bool>(arg_2.a, !arg_2.a, all(vec4<bool>(arg_2.a, true, true, arg_2.a)))));
    var_0 = true;
    let var_1 = vec2<bool>(arg_2.a, arg_2.a);
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(min(arg_3.x, 148f)), arg_3.x, -1000f), arg_3), 1f, ~select(-vec4<i32>(u_input.c, 0i, -17755i, -26092i), ~vec4<i32>(u_input.c, -22903i, -1i, -16546i) | vec4<i32>(u_input.c, u_input.c, 1i, -11551i), vec4<bool>(true, var_1.x || var_1.x, arg_2.a, arg_2.a | false)), vec2<u32>(firstLeadingBit(u_input.b), 1u >> (~_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)));
    var_2 = Struct_1(vec4<f32>(-432f, _wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(trunc(-1702f))))), var_2.b), _wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.x)))), _wgslsmith_clamp_vec4_i32(var_2.c, var_2.c, vec4<i32>(~1i, -1114i, _wgslsmith_clamp_i32(-1i, 0i, -32546i), ~(-2147483647i)) & -max(vec4<i32>(var_2.c.x, u_input.c, var_2.c.x, var_2.c.x), vec4<i32>(2147483647i, var_2.c.x, var_2.c.x, 9315i))), max(firstTrailingBit(~var_2.d), select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.d.x, 51474u), abs(vec2<u32>(1u, u_input.b))), select(vec2<u32>(arg_0, 25089u), arg_1, select(true, arg_2.a, var_1.x)), select(vec2<bool>(arg_2.a, false), select(vec2<bool>(true, true), var_1, arg_2.a), vec2<bool>(arg_2.a, arg_2.a)))));
    return _wgslsmith_dot_vec4_u32(reverseBits(u_input.a), ~_wgslsmith_div_vec4_u32(vec4<u32>(~1649u, 1u, arg_1.x, 1u), u_input.a & ~vec4<u32>(var_2.d.x, 1u, u_input.b, 10252u)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = func_4(~func_3(), ~(~u_input.a.zy), arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f * _wgslsmith_f_op_f32(max(-1131f, -459f)))), -1776f, _wgslsmith_div_f32(1964f, -569f), -320f));
    var_0 = ~abs(0u);
    var_0 = 20576u;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))));
    return _wgslsmith_f_op_f32(floor(-615f));
}

fn func_1() -> Struct_1 {
    var var_0 = -1019f;
    let var_1 = vec2<u32>(1u, u_input.a.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1034f - 334f) - _wgslsmith_f_op_f32(f32(-1f) * -209f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -582f);
    let var_2 = !all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), -11109i != u_input.c), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(118f, -1560f, 903f, _wgslsmith_f_op_f32(func_2(Struct_2(false)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1181f + -2872f) * _wgslsmith_div_f32(432f, 507f))))), _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(~u_input.c), ~(-u_input.c), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 48283i, 1i), select(vec4<i32>(-42283i, u_input.c, -24532i, -11222i), vec4<i32>(0i, u_input.c, u_input.c, 28546i), false))), vec4<i32>(select(u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), var_2 != false), -27527i, u_input.c, -2147483647i & u_input.c)), ~vec2<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), ~1u) >> (~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, u_input.b))) % vec2<u32>(32u)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = u_input.b;
    var var_1 = !select(vec2<bool>(arg_1.c.x > arg_1.c.x, false), vec2<bool>(true, false), vec2<bool>(true, true));
    var_1 = !vec2<bool>(!(!var_1.x) & true, true);
    let var_2 = reverseBits(vec2<i32>(arg_1.c.x & -1i, arg_1.c.x));
    let var_3 = arg_1.d.x;
    return reverseBits(arg_1.d.x) >> (arg_1.d.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.a.ww));
    var_1 = ~0u;
    var_1 = ~_wgslsmith_mult_u32(func_5(817f, func_1()), _wgslsmith_mod_u32(0u, u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(438f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-2118f, 106f, false)), _wgslsmith_div_f32(-648f, -222f)))), _wgslsmith_f_op_f32(f32(-1f) * -1663f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(select(-138f, 2566f, true))))))), vec3<f32>(-231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f + 1010f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -822f), _wgslsmith_f_op_f32(select(346f, 735f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -866f))), select(vec3<bool>(any(vec3<bool>(true, true, false)) && true, true || all(vec4<bool>(false, true, true, true)), false), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false)), false, true))));
    var var_3 = !(!(!vec4<bool>(true, true, u_input.a.x <= 50425u, false)));
    var_1 = u_input.b;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x * -491f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-2420f * 1000f))), var_2.x, vec4<i32>(-1i, firstTrailingBit(u_input.c), countOneBits(~_wgslsmith_mod_i32(u_input.c, -14016i)), i32(-1i) * -u_input.c), abs(~u_input.a.yz) ^ _wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, _wgslsmith_sub_u32(15591u, u_input.a.x))));
    var_3 = select(!vec4<bool>(true, all(var_3.yz), !all(vec2<bool>(false, false)), var_3.x), vec4<bool>(!(!all(vec4<bool>(var_3.x, false, var_3.x, var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -398f), 1661f >= _wgslsmith_f_op_f32(186f + _wgslsmith_f_op_f32(ceil(-168f))), all(!var_3.yyw)), !(!(!vec4<bool>(false, false, true, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~var_4.d & var_4.d)), i32(-1i) * -1818i, 943f);
}

