struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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
    var var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, u_input.d.x);
}

