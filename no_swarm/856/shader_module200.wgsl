struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, true), true, 1020f, -530f, vec2<u32>(12789u, 0u));

var<private> global4: array<vec3<i32>, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.a.x | 4294967295u, global3.e.x), ~4294967295u);
    let var_1 = _wgslsmith_mod_u32(~(4294967295u >> (global3.e.x % 32u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(u_input.a.x, global1.x, 4294967295u)), ~4294967295u), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-174f);
}

