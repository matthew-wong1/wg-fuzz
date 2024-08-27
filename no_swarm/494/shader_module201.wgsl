struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = false;
    var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(true, true, true)), true), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1233f, -367f, 1474f))) * vec4<f32>(-1049f, -728f, _wgslsmith_f_op_f32(round(500f)), -1199f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2312f, _wgslsmith_f_op_f32(floor(525f)), -1993f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1341f, 1000f, -139f, _wgslsmith_div_f32(479f, -748f))))));
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 0u, u_input.a)) & abs(vec3<u32>(u_input.b, 1u, u_input.a)), ~select(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(20930u, u_input.b, 3978u), false)));
    var_2 = 5070u << (~(~(~u_input.a)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-247f, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, 4294967295u) | vec3<u32>(u_input.a, u_input.b, 1u), vec3<u32>(4294967295u, u_input.a, u_input.b)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(35984u, u_input.b, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u)), vec3<u32>(u_input.a, _wgslsmith_mod_u32(9540u, u_input.b) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(0u, u_input.b, 4294967295u)), u_input.b)), 4294967295u & ((~u_input.a >> ((0u | u_input.a) % 32u)) ^ 4294967295u), ~u_input.a);
}

