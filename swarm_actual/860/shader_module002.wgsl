struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
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
    let var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(55756i);
}

