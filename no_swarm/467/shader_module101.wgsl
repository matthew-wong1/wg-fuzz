struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
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
    s_output = StorageBuffer(~max((vec3<u32>(0u, u_input.a, 1u) | vec3<u32>(72880u, 68195u, 9881u)) >> (~vec3<u32>(17017u, 7494u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 0u, u_input.a) | (vec3<u32>(43525u, 1u, 1u) | vec3<u32>(0u, u_input.a, 0u))), select(abs(reverseBits(reverseBits(vec2<i32>(2147483647i, 255i)))), ~(~(~vec2<i32>(-1i, 38157i))), vec2<bool>(true, true)), 0u);
}

