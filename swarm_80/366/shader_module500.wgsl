struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: vec3<u32>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d.x) << (0u % 32u), global1.x);
}

