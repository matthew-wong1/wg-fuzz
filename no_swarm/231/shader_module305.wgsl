struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x);
}

