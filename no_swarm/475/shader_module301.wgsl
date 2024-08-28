struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
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
    s_output = StorageBuffer(882f);
}

