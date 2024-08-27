struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-14343i, -1i, -1755i, -8630i);

var<private> global1: array<vec4<bool>, 10>;

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, -(~u_input.a.x));
}

