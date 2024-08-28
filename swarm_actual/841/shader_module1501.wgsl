struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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
    s_output = StorageBuffer(max(~vec3<u32>(4294967295u, u_input.a, 1u), ~vec3<u32>(abs(u_input.a), 1u, u_input.a)));
}

