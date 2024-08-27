struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: array<f32, 23>;

var<private> global2: array<Struct_2, 6>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 32>();
    let var_0 = _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.b.x, ~0u)), vec2<u32>(u_input.b.x, 4294967295u));
    global0 = array<vec3<i32>, 32>();
    global2 = array<Struct_2, 6>();
    global0 = array<vec3<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(abs(u_input.b.wy), vec2<u32>(var_0.x << (u_input.b.x % 32u), 1u)), global1[_wgslsmith_index_u32(countOneBits(((1u & u_input.b.x) << (var_0.x % 32u)) & u_input.b.x), 23u)]);
}

