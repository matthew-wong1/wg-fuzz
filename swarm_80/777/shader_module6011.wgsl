struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(1i, u_input.a, u_input.a, 2147483647i)), -(~vec4<i32>(-37563i, 1i, u_input.a, u_input.a)))), 1296f, 1u, -2147483647i);
}

