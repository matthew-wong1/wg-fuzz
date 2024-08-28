struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-1i, 63904i), vec2<i32>(-1i, -37507i), vec2<i32>(16422i, -49051i), vec2<i32>(-7529i, -23805i), vec2<i32>(27973i, 18923i), vec2<i32>(i32(-2147483648), 30370i), vec2<i32>(2147483647i, 1i));

var<private> global1: array<i32, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1u & (1u << (u_input.a % 32u))) > _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.a, u_input.d, 9970u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, 37773u, 23414u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(4294967295u, 7211u, 1u, 58535u))) ^ max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.d), vec4<u32>(u_input.e.x, 1u, u_input.a, 49152u)), vec4<u32>(3660u, u_input.e.x, u_input.d, u_input.d) >> (vec4<u32>(u_input.d, 4294u, 5671u, u_input.e.x) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))));
    global0 = array<vec2<i32>, 7>();
    global0 = array<vec2<i32>, 7>();
    global1 = array<i32, 21>();
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(1528f, _wgslsmith_mult_i32(1i, u_input.c >> (~u_input.e.x % 32u)), ~var_2, _wgslsmith_mult_i32(10365i, -1i));
}

