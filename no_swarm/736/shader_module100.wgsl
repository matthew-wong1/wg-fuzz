struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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
    let var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0, ~(~(var_0 | 87955u))));
}

