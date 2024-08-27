struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, -28976i, -2147483647i), 0i);
}

