struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: vec2<i32>;

var<private> global3: f32 = 970f;

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    return StorageBuffer(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global1.e.c);
}

