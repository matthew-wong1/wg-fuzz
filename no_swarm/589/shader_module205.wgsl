struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(47987i);
}

