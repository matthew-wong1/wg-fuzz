struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
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

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 58228u;
    let var_1 = -u_input.c.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

