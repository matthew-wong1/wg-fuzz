struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(u_input.d.x ^ 25982u);
    let var_1 = vec3<u32>(1u, ~32105u >> (var_0.a % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_0.a, u_input.d.x), _wgslsmith_mod_u32(var_0.a, u_input.d.x), var_0.a, var_0.a), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, var_0.a), u_input.d), countOneBits(vec4<u32>(1u, 4294967295u, 25894u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, 767f)))))))));
    var var_3 = Struct_1(abs(abs(var_0.a & 1u) & _wgslsmith_mult_u32(u_input.a.x >> (var_1.x % 32u), var_1.x)));
    var var_4 = any(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false)))));
    return _wgslsmith_div_f32(-636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - 1363f) * _wgslsmith_f_op_f32(min(var_2, -606f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), var_2)) + -1078f)));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = !vec3<bool>(!(!all(vec2<bool>(true, true))), true, !any(vec3<bool>(true, true, true)));
    var_0 = vec3<bool>(var_0.x, true, all(vec4<bool>(all(!vec4<bool>(var_0.x, false, true, true)), !(!var_0.x), false, false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1205f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(-1689f - 133f)), var_0.x && var_0.x))));
    var_0 = !vec3<bool>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-604f + var_1.x), _wgslsmith_f_op_f32(-var_1.x), true)), true & !var_0.x);
    var_0 = select(vec3<bool>(false, var_0.x != true, !(u_input.d.x == u_input.a.x)), !(!(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)))), !any(!vec4<bool>(var_0.x, false, true, var_0.x)));
    return _wgslsmith_f_op_f32(func_3(~max(vec4<i32>(arg_0, i32(-1i) * -13038i, -24279i, -28836i), vec4<i32>(~(-1i), _wgslsmith_clamp_i32(31149i, -1i, -27481i), _wgslsmith_div_i32(u_input.b, u_input.c.x), u_input.c.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(-arg_1);
    let var_1 = Struct_1(~4294967295u);
    var var_2 = _wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(reverseBits(u_input.c.x) | ~u_input.b, -2147483647i) << (0u % 32u));
    let var_3 = Struct_1(var_1.a);
    var_2 = 27525i;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-203f * 778f), _wgslsmith_div_f32(1192f, 1804f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(407f)), _wgslsmith_f_op_f32(667f - 2491f))))) + -250f));
    var var_1 = u_input.b;
    let var_2 = -937f;
    let var_3 = func_4(vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.b, u_input.b))))));
    return Struct_1(~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a) & (u_input.d.xw | u_input.a), min(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.a.x, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(59995u);
    var_0 = Struct_1(_wgslsmith_add_u32(0u, 21656u << (var_0.a % 32u)));
    let var_1 = Struct_1(4412u);
    var_0 = Struct_1(4294967295u);
    var_0 = func_1(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-243f)) + _wgslsmith_f_op_f32(859f - -2067f)), 1523f, true)))), u_input.c.x, vec2<u32>(var_1.a, ~1u), max(u_input.d.zxz >> (vec3<u32>(min(1u, u_input.a.x), _wgslsmith_mod_u32(34164u, u_input.a.x), var_1.a) % vec3<u32>(32u)), vec3<u32>(~25595u, func_1(var_1).a, u_input.a.x)));
}

