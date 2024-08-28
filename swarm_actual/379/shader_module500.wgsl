struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
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
    let var_0 = -343f;
    let x = u_input.a;
    s_output = StorageBuffer(23415u);
}

