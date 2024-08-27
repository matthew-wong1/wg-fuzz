struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(78680u, 4294967295u, 0u, 21702u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 1>();
    global0 = array<vec2<u32>, 21>();
    var var_0 = -17947i;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_u32(abs(62141u & u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(50010u, 21u)], vec2<u32>(32998u, u_input.c.x)), ~u_input.a.yz)), countOneBits(u_input.a.x), true));
}

