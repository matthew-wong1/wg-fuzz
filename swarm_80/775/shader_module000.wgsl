struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
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
    s_output = StorageBuffer(u_input.c.yyw);
}

