struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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
    let var_0 = vec4<i32>(2147483647i, 0i, -1i, 0i);
    let var_1 = Struct_1(-1032f, firstLeadingBit(91577u));
    let x = u_input.a;
    s_output = StorageBuffer(-2231f);
}

