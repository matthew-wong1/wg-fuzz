struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-5771i, select(u_input.a, -28013i, true), -16101i, 1i));
}

