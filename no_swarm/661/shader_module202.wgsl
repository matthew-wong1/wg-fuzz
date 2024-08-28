struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<i32>, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(u_input.c, 0u, u_input.a.x) ^ vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.a.x, u_input.c), u_input.b.x)) >> (vec3<u32>(u_input.a.x, u_input.c, ~3040u) % vec3<u32>(32u)), 820f);
}

