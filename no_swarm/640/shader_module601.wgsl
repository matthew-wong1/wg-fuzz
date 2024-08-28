struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
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
    s_output = StorageBuffer(u_input.a.ww, firstLeadingBit(vec2<i32>(1i, -37895i)));
}

