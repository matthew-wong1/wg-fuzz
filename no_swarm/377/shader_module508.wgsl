struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = ~_wgslsmith_mult_u32(reverseBits(u_input.c.x), max(u_input.c.x, arg_0.c.x ^ 0u));
    var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d.c, arg_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d.c + arg_0.b.c), 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.c + -1171f), 653f, _wgslsmith_f_op_f32(-arg_0.b.c), arg_0.a.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(564f, -1576f, 382f, arg_0.d.c), vec4<f32>(1088f, 1001f, arg_0.b.c, arg_0.d.c)), vec4<f32>(arg_0.d.c, arg_0.d.c, arg_0.a.c, -1017f))), select(!vec4<bool>(arg_0.a.d.x, arg_0.a.d.x, false, true), vec4<bool>(true, arg_0.a.d.x, arg_0.d.d.x, arg_0.a.d.x), true)))), select(vec4<bool>((arg_0.c.x < arg_0.d.b) != arg_0.a.d.x, !(0i != arg_0.b.a), !(arg_0.b.c > -1702f), select(!arg_0.a.d.x, all(vec3<bool>(arg_0.b.d.x, arg_0.b.d.x, true)), arg_0.a.d.x)), !vec4<bool>(true, true, arg_0.a.d.x, any(vec3<bool>(arg_0.d.d.x, false, arg_0.a.d.x))), !all(vec3<bool>(false, true, arg_0.b.d.x)) & true)));
    var_0 = u_input.c.x << (~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, u_input.c.x >> (1u % 32u)), ~(~u_input.c.x)) % 32u);
    var var_2 = arg_0;
    return false;
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = Struct_1(abs(-1736i), 33668u, arg_1, vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -1534f)), func_3(Struct_2(Struct_1(-23510i, u_input.c.x, -143f, vec2<bool>(false, true)), Struct_1(-46726i, 0u, arg_1, vec2<bool>(false, false)), ~vec2<u32>(u_input.c.x, 37277u), Struct_1(0i, 75193u, 600f, vec2<bool>(false, false))))));
    var var_1 = var_0.a ^ abs(_wgslsmith_mult_i32(var_0.a | -14799i, -2147483647i));
    var var_2 = vec4<bool>(var_0.d.x, !(!var_0.d.x), !any(var_0.d), any(!(!(!vec3<bool>(false, false, var_0.d.x)))));
    let var_3 = Struct_1(-2147483647i, var_0.b, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.c))))), var_0.d);
    var var_4 = Struct_2(var_3, var_3, vec2<u32>(countOneBits(_wgslsmith_sub_u32(~var_3.b, 0u & var_3.b)), 28190u), Struct_1(var_3.a, ~45754u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - 437f) - _wgslsmith_f_op_f32(688f - arg_1)), var_0.d));
    return ~_wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_4.a.b, 37311u), min(~4294967295u, abs(1u))), _wgslsmith_dot_vec2_u32(~u_input.c.xx, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(51446u, u_input.c.x), vec2<u32>(1u, 66818u), u_input.c.zx)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(1i, abs(50494u) & (countOneBits(5822u | u_input.c.x) | func_2(682f, _wgslsmith_f_op_f32(1284f - 860f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-314f - -3004f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-214f)) + _wgslsmith_f_op_f32(floor(-1778f))))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.c)), -1148f, var_0.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -422f, var_0.c) - vec3<f32>(var_0.c, var_0.c, -847f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-584f, var_0.c, var_0.c))), true)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-234f, 257f, var_0.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c, 980f, -258f))), !vec3<bool>(true, var_0.d.x, true))))));
    return Struct_1(var_0.a, ~min(_wgslsmith_sub_u32(u_input.c.x >> (41771u % 32u), u_input.c.x), 1u << (arg_0 % 32u)), _wgslsmith_f_op_f32(select(1738f, 190f, all(vec3<bool>(true, true, true)) & ((-36943i >> (var_0.b % 32u)) >= _wgslsmith_sub_i32(-12416i, u_input.a.x)))), select(vec2<bool>(var_0.d.x, true), var_0.d, any(!vec4<bool>(true, false, var_0.d.x, var_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 64804u, u_input.c.x, u_input.c.x)), ~(~vec4<u32>(u_input.c.x, 16394u, 34467u, 1u))));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(1i >> ((~var_0.b | 56810u) % 32u), var_0.a), 0i, 9562i);
    var_1 = ~vec3<i32>(0i, var_1.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.b, 72226u, func_1(_wgslsmith_mult_u32(110343u, _wgslsmith_mult_u32(var_0.b, 4294967295u))).b, max(_wgslsmith_dot_vec3_u32(select(u_input.c, vec3<u32>(u_input.c.x, 21652u, 1u), vec3<bool>(var_0.d.x, true, var_0.d.x)), select(u_input.c, u_input.c, false)), ~_wgslsmith_clamp_u32(1u, 1u, 34465u))), 52634u >> (~firstLeadingBit(~var_0.b) % 32u), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(47569u, var_0.b, u_input.c.x, var_0.b), abs(vec4<u32>(u_input.c.x, u_input.c.x, 0u, var_0.b)))), u_input.c.x, ~36744u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec3_u32(abs(u_input.c), u_input.c));
}

