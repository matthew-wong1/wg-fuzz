struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x);
    var_0 = -1481f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), !(!arg_0.b)))));
    var_0 = _wgslsmith_div_f32(arg_0.a.a.x, 1f);
    return vec3<u32>(0u, ~arg_2, _wgslsmith_mult_u32(u_input.c, ~(~arg_2 >> (u_input.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(33344u, 0u, u_input.c) << (func_1(Struct_3(Struct_2(vec2<f32>(-748f, 1430f), vec4<i32>(u_input.a.x, u_input.a.x, -76457i, u_input.b.x)), true), Struct_1(-28627i, vec3<i32>(u_input.a.x, u_input.b.x, 14692i)), 24163u, true) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c) << (vec3<u32>(u_input.c, u_input.c, 1810u) % vec3<u32>(32u)), vec3<u32>(u_input.c, 1u, u_input.c) & vec3<u32>(u_input.c, 4294967295u, 77093u))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

