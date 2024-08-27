struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(1000f, -635f, -1705f), vec3<f32>(1000f, -214f, -1088f), vec3<f32>(788f, 693f, 380f), vec3<f32>(2655f, 643f, -1000f), vec3<f32>(-1257f, -1156f, 2159f), vec3<f32>(-137f, -1000f, 1958f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 23>();
    global0 = array<vec4<u32>, 23>();
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(abs(215f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(min(vec4<u32>(6812u, _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(0u, u_input.c)), u_input.c, 61184u), vec4<u32>(u_input.b.x << (1u % 32u), _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.a)), 4294967295u, ~u_input.b.x)), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(~u_input.b.x ^ 0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-342f, -197f, -1000f, 783f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, 174f, 137f, -1939f))))), _wgslsmith_clamp_i32(-u_input.d, u_input.d | -57793i, -1i));
}

