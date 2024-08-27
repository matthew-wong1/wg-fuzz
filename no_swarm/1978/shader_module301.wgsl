struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = ~vec4<i32>(~(-41674i), u_input.a, u_input.a, -2147483647i);
    let var_1 = max(vec3<i32>(-1i, 2147483647i, ~29225i), ~vec3<i32>(2147483647i, -(~u_input.a), 2169i));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1749f));
    var var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, _wgslsmith_sub_u32(~0u, 4294967295u)), vec3<u32>(~1u, 1u << (1u % 32u), ~44974u));
    let var_4 = all(vec3<bool>(select(select(true, true, false), true, false), false, true)) & !(!((u_input.a < 1i) & all(vec4<bool>(false, false, false, true))));
    return var_2;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    var var_0 = ~(~vec3<u32>(6493u, arg_1.x, max(_wgslsmith_mod_u32(arg_3, arg_1.x), reverseBits(arg_3))));
    var var_1 = _wgslsmith_f_op_f32(1281f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(441f)) * _wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_f_op_f32(1436f + _wgslsmith_f_op_f32(step(1000f, 1000f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2082f));
    let var_3 = vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -u_input.a), abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-37395i, 1i, 1i, u_input.a), vec4<i32>(0i, -906i, 12543i, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-30579i, u_input.a))))), -abs(u_input.a));
    var var_4 = var_3.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, var_2.a))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    let var_0 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(50146u, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20935u, 47876u, 4294967295u), vec4<u32>(11816u, 4294967295u, 51748u, 0u)), 79945u, 4294967295u, ~96972u), Struct_1(_wgslsmith_f_op_f32(func_3())), 1u)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) * vec2<f32>(arg_3, arg_1.a)))) - _wgslsmith_f_op_vec2_f32(func_2(arg_1, false)))), arg_1, select(vec3<i32>(65244i, 2147483647i, 2147483647i), ~(-arg_0 & vec3<i32>(u_input.a, -22111i, u_input.a)), true));
    var var_1 = var_0;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(func_3());
    var var_4 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(select(arg_2.x, ~arg_2.x, false), ~1u, _wgslsmith_div_u32(4294967295u, 25764u)), vec3<u32>(arg_2.x, ~select(arg_2.x, arg_2.x, false), 70726u), vec3<bool>((arg_2.x >= 4298u) && (arg_2.x != 116220u), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), select(any(vec2<bool>(false, false)), true, true))), vec3<u32>(0u, _wgslsmith_clamp_u32(0u, select(~arg_2.x, abs(arg_2.x), all(vec3<bool>(true, true, true))), arg_2.x), ~1u));
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, arg_2.x) & (1u >> (arg_2.x % 32u)), var_4.x, 1u), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, var_4.x, arg_2.x, var_4.x), vec4<u32>(1u, arg_2.x, 4294967295u, 50070u)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(countOneBits(firstLeadingBit(~0u)) == _wgslsmith_mult_u32(func_1(vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(-1147f), vec3<u32>(49001u, 1u, 56969u), -1005f), 1u));
    var var_1 = Struct_1(_wgslsmith_div_f32(-292f, _wgslsmith_f_op_vec2_f32(func_4(abs(abs(15703u)), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -624f)), 0u)).x));
    var_1 = Struct_1(-1979f);
    let var_2 = abs(countOneBits(_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(39119u, 4294967295u) % vec2<u32>(32u))), ~(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(f32(-1f) * -847f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 1000f), vec2<f32>(-125f, var_1.a)))), Struct_1(var_1.a), vec3<i32>(_wgslsmith_add_i32(~u_input.a, u_input.a), -(1i | var_2), _wgslsmith_div_i32(max(min(u_input.a, u_input.a), firstLeadingBit(var_2)), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-978f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f * _wgslsmith_f_op_f32(step(-1990f, 144f))))), var_1.a);
}

