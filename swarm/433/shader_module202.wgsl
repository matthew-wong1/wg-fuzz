struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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
    let var_0 = 1u;
    let var_1 = ~(vec2<i32>(u_input.e.x, u_input.c.x) ^ min(~(-u_input.c), u_input.a.xx));
    let x = u_input.a;
    s_output = StorageBuffer(12793u, ~0u, vec3<u32>((reverseBits(u_input.d.x) | 4294967295u) & var_0, u_input.b, 22794u >> (~(~var_0) % 32u)));
}

