struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1u, -1i, firstTrailingBit(global0.a.x));
}

