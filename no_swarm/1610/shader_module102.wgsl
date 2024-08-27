struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
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
    s_output = StorageBuffer(firstTrailingBit(reverseBits(abs(vec3<i32>(-12906i, -1i, 30966i)) << (countOneBits(u_input.a) % vec3<u32>(32u)))), vec3<i32>(0i, max(firstTrailingBit(i32(-1i) * -58846i), ~1i), -2147483647i));
}

