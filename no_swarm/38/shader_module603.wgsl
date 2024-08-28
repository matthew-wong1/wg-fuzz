struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 3>;

var<private> global2: array<Struct_4, 32>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

