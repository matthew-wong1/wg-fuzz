struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: Struct_3;

var<private> global2: array<f32, 29>;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.x);
}

