struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, true, all(vec2<bool>((u_input.a >> (u_input.a % 32u)) == ~22679u, true)), _wgslsmith_mult_u32(u_input.a, u_input.a) > 1u);
    let x = u_input.a;
    s_output = StorageBuffer(61817u << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(69072u, 4294967295u), vec2<u32>(4294967295u, 7005u) | vec2<u32>(84479u, u_input.a)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(559f, -1262f, 572f, -1812f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(180f, 928f, -770f, -1132f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1389f, -283f, 1838f, 1630f)))))));
}

