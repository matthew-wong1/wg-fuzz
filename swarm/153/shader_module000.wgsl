struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, all(vec3<bool>(true, false, false)))) || !all(vec2<bool>(false, true)), false, all(vec3<bool>(true, true, any(vec3<bool>(true, true, false)))) != (true | any(vec3<bool>(true, true, true))), !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i), min(~vec2<u32>(4294967295u, ~4294967295u), _wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.c, 1u)), select(vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(69150u, 92769u) % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.c, u_input.c)), vec2<bool>(true, true)))), 16341u);
}

