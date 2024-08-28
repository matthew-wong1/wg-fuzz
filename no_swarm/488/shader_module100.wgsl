struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
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

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d);
}

