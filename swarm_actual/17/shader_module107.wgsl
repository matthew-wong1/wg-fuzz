struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<i32>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(17972i);
}

