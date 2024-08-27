struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a << (u_input.b % 32u), u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(27070u, 9675u))), ~(u_input.c.x & 6858u)) >> (vec4<u32>(1u, 4294967295u, ~(~0u), 98969u >> (~u_input.b % 32u)) % vec4<u32>(32u)), u_input.e, -983f);
}

