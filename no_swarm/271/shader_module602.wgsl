struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.x);
}

