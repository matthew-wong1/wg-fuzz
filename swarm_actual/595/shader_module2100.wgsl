struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(1u, 6965u), vec2<u32>(4294967295u, 54837u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 8208u), vec2<u32>(18587u, 32138u), vec2<u32>(1u, 3166u), vec2<u32>(4294967295u, 11346u), vec2<u32>(0u, 4294967295u), vec2<u32>(4111u, 4294967295u), vec2<u32>(20822u, 0u), vec2<u32>(4294967295u, 24880u), vec2<u32>(70632u, 0u), vec2<u32>(43136u, 44298u), vec2<u32>(78167u, 0u), vec2<u32>(1u, 0u), vec2<u32>(115128u, 4294967295u), vec2<u32>(26311u, 1u), vec2<u32>(0u, 13798u), vec2<u32>(10327u, 49260u));

var<private> global1: vec4<u32> = vec4<u32>(58537u, 1u, 39053u, 4294967295u);

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 55283u, 10856u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, vec3<u32>(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)] | global1.x, 3u)]), global2[_wgslsmith_index_u32(global1.x, 3u)] >> (reverseBits(u_input.c | global1.x) % 32u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.wxx, abs(~global1.wyx)), 3u)]));
}

