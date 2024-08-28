struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
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
    s_output = StorageBuffer(725f);
}

