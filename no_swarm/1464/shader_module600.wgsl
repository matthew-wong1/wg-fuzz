struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(0i, 11518i, -5087i, -39920i), vec4<i32>(-47186i, -1i, i32(-2147483648), -28953i), vec4<i32>(-27824i, 57533i, 63592i, 22269i));

var<private> global1: array<i32, 20>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), 32786u, -18141i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 372f)), _wgslsmith_sub_u32(41420u ^ u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 1u << (u_input.c.x % 32u)))));
}

