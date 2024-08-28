struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
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
    s_output = StorageBuffer(406f);
}

