struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)));
    let var_1 = !(true | all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))) && all(select(vec4<bool>(true, 14375u > u_input.a.x, true, false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), false));
    var var_2 = -(~(-29147i));
    var var_3 = all(vec4<bool>(var_1, !any(!vec4<bool>(false, true, var_1, var_1)), !var_1, !all(select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, true), var_1))));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f + -974f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f - 603f)), select(var_1 & true, u_input.d.x >= -1i, var_1))), 819f), ~7202i, 45411u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f)))));
    return countOneBits(~(~(12175u << (var_4.c % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(13619u, 4294967295u, 84555u), abs(vec3<u32>(var_4.c, u_input.b, 89475u)))));
}

fn func_2() -> vec2<f32> {
    let var_0 = ~((~(~29051u) ^ u_input.a.x) & u_input.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1102f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) - -955f))), u_input.d.x, 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f + -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-111f))))));
    let var_2 = Struct_1(var_1.d, ~_wgslsmith_div_i32(u_input.d.x << (var_0 % 32u), u_input.d.x >> ((u_input.b | var_0) % 32u)), ~func_3(), var_1.a);
    var_1 = Struct_1(-606f, u_input.d.x, _wgslsmith_add_u32(var_1.c, var_1.c), _wgslsmith_f_op_f32(-var_1.d));
    let var_3 = 0i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d, var_1.a), vec2<f32>(var_1.d, -1056f))), vec2<f32>(var_2.d, -1280f), select(vec2<bool>(true, false), vec2<bool>(true, false), true))))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(578f, _wgslsmith_div_f32(var_1.d, -726f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, _wgslsmith_f_op_f32(-var_1.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.d))) * vec2<f32>(-352f, _wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(min(var_1.a, var_1.d)))))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-450f)), 112f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-236f, 2018f) * vec2<f32>(arg_0, 756f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1174f, 2677f), vec2<f32>(-632f, arg_0))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -771f))))), vec2<bool>(false, false)))));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1f), u_input.d.x, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    var var_3 = (u_input.d ^ u_input.d) >> (vec4<u32>(~(u_input.c << (u_input.a.x % 32u)), 19864u, abs(1u), u_input.b) % vec4<u32>(32u));
    var_3 = ~(~(-vec4<i32>(_wgslsmith_add_i32(var_2.b, u_input.d.x), var_2.b, var_2.b | var_3.x, _wgslsmith_div_i32(-1373i, var_3.x))));
    return var_2.c << (countOneBits(var_2.c) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(1u, func_1(525f)), 46599u)));
}

