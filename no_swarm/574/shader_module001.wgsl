struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, firstLeadingBit(-44024i)) << (vec3<u32>(u_input.d, u_input.c.x, 957u) % vec3<u32>(32u)), -(~abs(vec3<i32>(u_input.b, arg_0, arg_0))));
    return !(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-674f + -306f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-287f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(u_input.c.x), vec3<bool>(func_3(0i, Struct_2(Struct_1(u_input.d), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), all(vec4<bool>(false, true, func_3(u_input.a.x, Struct_2(Struct_1(u_input.e.x), vec3<bool>(false, true, false))), any(vec2<bool>(true, true)))), all(vec2<bool>(true, true))));
    var_0 = Struct_2(var_0.a, !(!(!select(vec3<bool>(true, false, true), var_0.b, var_0.b))));
    var_0 = Struct_2(Struct_1(39702u), select(!var_0.b, select(vec3<bool>(-8817i >= u_input.b, var_0.b.x, func_3(7263i, Struct_2(Struct_1(var_0.a.a), vec3<bool>(false, var_0.b.x, var_0.b.x)))), !(!vec3<bool>(false, var_0.b.x, var_0.b.x)), true), var_0.b.x));
    var var_1 = u_input.b;
    let var_2 = abs(u_input.b);
    return Struct_1(abs(select(max(var_0.a.a, var_0.a.a), ~u_input.d, var_0.b.x) | countOneBits(~1u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(11255u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, 4294967295u, ~22779u, min(u_input.e.x, 69002u)), abs(firstTrailingBit(vec4<u32>(0u, u_input.c.x, u_input.d, u_input.d))))));
    var_0 = Struct_1(firstLeadingBit(1u));
    var_0 = func_2();
    var_0 = Struct_1(~(_wgslsmith_sub_u32(_wgslsmith_sub_u32(29u, u_input.d), var_0.a) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, u_input.c.x, var_0.a), select(vec3<u32>(u_input.c.x, var_0.a, var_0.a), vec3<u32>(var_0.a, var_0.a, u_input.e.x), false)) % 32u)));
    let var_1 = _wgslsmith_mult_u32(1u, max(~(var_0.a << (var_0.a % 32u)), _wgslsmith_mult_u32(~(var_0.a & u_input.c.x), var_0.a & min(4294967295u, u_input.c.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), 2447f)), 1493f, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(exp2(arg_0.x)))) + arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f + 934f) + -489f) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1036f, 1549f, 1029f, -248f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-303f, -556f, 1414f), vec3<f32>(-224f, -1000f, 572f), false)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(1209f, -1000f, 1624f, -133f), vec3<f32>(1886f, -1000f, 1412f))) + _wgslsmith_f_op_f32(-603f - 1342f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), u_input.c.x);
}

