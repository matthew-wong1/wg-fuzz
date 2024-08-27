struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: array<Struct_4, 3>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = vec2<u32>(~u_input.a.x, 4294967295u ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, 0u, 1u)), ~vec3<u32>(1u, 17155u, 4294967295u)), u_input.b));
    return (-27995i <= abs(~_wgslsmith_mult_i32(arg_0, -22210i))) && any(vec4<bool>(true, true, false, all(vec2<bool>(true, true))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_sub_u32(75583u, 0u);
    var_0 = 11755u;
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(-(-83i >> (1u % 32u)), i32(-1i) * -11921i, -(~0i), min(_wgslsmith_clamp_i32(59627i, 29975i, 17811i), 2147483647i));
    var var_2 = func_2(~(i32(-1i) * -6655i));
    global0 = array<vec4<i32>, 32>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, -324f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(405f, 1617f, -390f) - vec3<f32>(389f, 1420f, 1466f))), vec3<f32>(_wgslsmith_f_op_f32(step(-1502f, 446f)), _wgslsmith_f_op_f32(sign(-350f)), -437f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

