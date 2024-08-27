struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 9> = array<f32, 9>(-828f, 662f, -1442f, -1000f, 1447f, 660f, -475f, 1356f, -862f);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(12615i, 1u);
}

