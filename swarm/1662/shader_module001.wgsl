struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 29846u), vec2<u32>(15027u, 1u), vec2<u32>(0u, 1u), vec2<u32>(23570u, 77506u), vec2<u32>(4294967295u, 981u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(63452u, 0u), vec2<u32>(1u, 1u), vec2<u32>(55369u, 4294967295u), vec2<u32>(104u, 1u), vec2<u32>(31869u, 63010u), vec2<u32>(4294967295u, 0u), vec2<u32>(62701u, 1u), vec2<u32>(43027u, 1u), vec2<u32>(71438u, 4294967295u), vec2<u32>(37171u, 4294967295u), vec2<u32>(0u, 11100u), vec2<u32>(4294967295u, 4854u), vec2<u32>(0u, 35550u), vec2<u32>(1u, 14511u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 19543u), vec2<u32>(107805u, 1u), vec2<u32>(78154u, 47873u), vec2<u32>(18183u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 18870u), vec2<u32>(24036u, 14470u), vec2<u32>(22005u, 1u), vec2<u32>(0u, 49657u));

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, false, true, true, false, false, false, true, false, true, false, false, true, true, true, false, true, true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 32>();
    global1 = array<bool, 21>();
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    let var_0 = vec3<bool>(u_input.a.x != u_input.c.x, global1[_wgslsmith_index_u32(u_input.b, 21u)], (u_input.d << (_wgslsmith_clamp_u32(u_input.e.x, 8783u, 12234u) % 32u)) >= _wgslsmith_clamp_u32(0u, 83403u, abs(_wgslsmith_dot_vec2_u32(u_input.e.yw, global0[_wgslsmith_index_u32(26228u, 32u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x);
}

