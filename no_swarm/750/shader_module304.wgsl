struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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
    var var_0 = ~(60955u | (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 47669u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 9964u, u_input.c.x, u_input.c.x)) << (u_input.c.x % 32u))) | u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(sign(1000f));
    var var_2 = vec2<bool>(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-428f)) - _wgslsmith_f_op_f32(sign(-366f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-470f, -702f)))));
    let var_3 = all(!vec2<bool>(!(-2147483647i >= u_input.a), true));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1643f - -1172f) + -1442f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1611f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f * -1496f)))))));
    var var_5 = abs(~vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x & u_input.c.x, 52324u)) ^ _wgslsmith_sub_vec3_u32((vec3<u32>(18764u, 0u, 13118u) & ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (_wgslsmith_add_vec3_u32(select(vec3<u32>(58490u, 24138u, 4254u), vec3<u32>(u_input.c.x, u_input.c.x, 1u), false), vec3<u32>(3485u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 10792u, ~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

