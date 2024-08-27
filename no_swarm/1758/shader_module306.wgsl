struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
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
    var var_0 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wy & vec2<i32>(11190i, -22137i));
}

