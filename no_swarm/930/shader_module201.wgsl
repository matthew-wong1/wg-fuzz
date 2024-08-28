struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
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
    s_output = StorageBuffer(~u_input.c, -u_input.a.yz, u_input.a.x);
}

