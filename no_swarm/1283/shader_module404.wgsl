struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 45641u;

var<private> global1: vec3<i32> = vec3<i32>(-90452i, i32(-2147483648), -38149i);

var<private> global2: array<u32, 17> = array<u32, 17>(4294967295u, 18904u, 1u, 36472u, 70982u, 21654u, 75u, 74280u, 4294967295u, 65950u, 4294967295u, 7979u, 29193u, 49341u, 0u, 4294967295u, 16613u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u | _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), 1u));
    global2 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(35235u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, ~vec2<u32>(82715u, 1u)), u_input.a.x) % 32u), 422f, _wgslsmith_f_op_f32(696f + 3442f), ~reverseBits(global1.xy));
}

