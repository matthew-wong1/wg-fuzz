struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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
    s_output = StorageBuffer(-748f);
}

