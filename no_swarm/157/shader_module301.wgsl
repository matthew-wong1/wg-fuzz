struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
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

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, 21994i))), (u_input.b.x >> (u_input.a.x % 32u)) & u_input.b.x), -2147483647i));
}

