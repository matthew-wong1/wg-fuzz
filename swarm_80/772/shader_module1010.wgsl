struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: Struct_4,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c | ~(~(~4294967295u)), _wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(0u, 0u)), abs(~vec2<u32>(0u, 13746u)) << (vec2<u32>(85511u | u_input.c, ~u_input.c) % vec2<u32>(32u))), abs(u_input.b));
}

