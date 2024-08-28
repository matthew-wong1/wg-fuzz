struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
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
    s_output = StorageBuffer(u_input.b, 2147483647i, ~firstTrailingBit(1u) | (u_input.a & ((4294967295u << (u_input.b % 32u)) & u_input.a)));
}

