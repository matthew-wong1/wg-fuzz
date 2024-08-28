struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = abs(-(~(vec3<i32>(22048i, u_input.d.x, -16431i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u)) % vec3<u32>(32u)))));
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~19781i, u_input.b.x, _wgslsmith_add_vec2_u32(max(vec2<u32>(1u, ~4294967295u), min(~vec2<u32>(0u, 21947u), ~vec2<u32>(44590u, u_input.c))), abs(vec2<u32>(_wgslsmith_add_u32(u_input.c, 50428u), 12051u))), u_input.c);
}

