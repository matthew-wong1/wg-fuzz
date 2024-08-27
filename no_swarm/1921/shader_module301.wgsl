struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<f32, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, false)), vec2<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<bool>(false, true), !(!(u_input.a == -2147483647i)));
    var_0 = !select(!vec2<bool>(!var_0.x, var_0.x || var_0.x), select(!select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), vec2<bool>(var_0.x, false)), vec2<bool>(true, -162i > u_input.c), true), false);
    global1 = array<f32, 5>();
    var var_1 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(27428u, 55797u)) & ~(~vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(_wgslsmith_mod_u32(48444u, 40140u), u_input.b)), 5u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(47542u, 5u)])))), 1000f))));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], -475f, global1[_wgslsmith_index_u32(4294967295u, 5u)], -1261f)))), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4136u, u_input.b, 68139u, 1u)), vec4<u32>(0u, u_input.b, u_input.b, u_input.b) | vec4<u32>(0u, 9137u, 4294967295u, u_input.b), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) | (vec4<u32>(1u, u_input.b >> (u_input.b % 32u), u_input.b, ~0u) | ~max(vec4<u32>(96356u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), ~_wgslsmith_add_vec3_u32(vec3<u32>(29157u, ~50692u, ~u_input.b), ~(vec3<u32>(u_input.b, u_input.b, 49255u) & vec3<u32>(u_input.b, 63681u, 1u))));
}

