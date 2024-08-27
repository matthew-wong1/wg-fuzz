struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec3<f32>;

var<private> global1: f32 = 357f;

var<private> global2: array<u32, 10>;

var<private> global3: array<f32, 7>;

var<private> global4: array<vec3<u32>, 5>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

