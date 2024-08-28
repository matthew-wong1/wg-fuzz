struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
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
    s_output = StorageBuffer(firstLeadingBit((vec4<u32>(0u, 82139u, 48959u, 13714u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) << (select(~vec4<u32>(0u, 12885u, 0u, 1u), ~vec4<u32>(29282u, 1u, 4294967295u, 1u), true) % vec4<u32>(32u))), -1000f);
}

