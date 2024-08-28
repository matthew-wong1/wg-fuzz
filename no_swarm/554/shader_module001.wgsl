struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-37063i, 440f);

var<private> global1: array<u32, 25>;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(min(120214u, u_input.a | 4294967295u), ~0u, 21217u), vec3<u32>(38404u, 23094u, ~reverseBits(global1[_wgslsmith_index_u32(u_input.a, 25u)]))), ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(33869u, u_input.a, 4294967295u)), abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)])) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4188u), vec3<u32>(0u, 13183u, global1[_wgslsmith_index_u32(25194u, 25u)]))), vec3<u32>(select(global1[_wgslsmith_index_u32(4294967295u, 25u)] ^ 1u, 0u, any(vec3<bool>(false, false, false))) & ((u_input.a >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)] % 32u)) << (1u % 32u)), ~(~(global1[_wgslsmith_index_u32(u_input.a, 25u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22056u, 25u)], 25u)] % 32u))), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 4294967295u)), vec2<u32>(67775u, global1[_wgslsmith_index_u32(52093u, 25u)]) & vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 25u)])))));
}

