struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(20009u, 63768u, 1u), vec3<u32>(15203u, 50698u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 22853u), vec3<u32>(29171u, 8865u, 67568u), vec3<u32>(0u, 0u, 56231u), vec3<u32>(4294967295u, 43811u, 0u), vec3<u32>(1u, 4294967295u, 18998u), vec3<u32>(4834u, 27530u, 97928u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(3818u, 1u, 5746u), vec3<u32>(19482u, 0u, 0u), vec3<u32>(0u, 0u, 39007u), vec3<u32>(1u, 1u, 0u), vec3<u32>(107768u, 4294967295u, 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~countOneBits(vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.c.x, 6838u, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))), ~vec4<i32>(1i, (0i >> (u_input.c.x % 32u)) ^ 7609i, global0.b, countOneBits(global0.c.x) >> (1u % 32u)), global1[_wgslsmith_index_u32(u_input.c.x, 15u)], u_input.c.x);
}

