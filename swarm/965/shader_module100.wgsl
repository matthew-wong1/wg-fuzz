struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<bool> {
    var var_0 = 22699u;
    var var_1 = abs(max(0u, 8645u));
    var var_2 = arg_1.c.e.zy;
    var var_3 = arg_1.c.c.yy;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(673f, 1240f, arg_1.b.e.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, arg_1.c.e.x, var_2.x)), vec4<f32>(1218f, arg_1.b.e.x, 228f, var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-512f * var_2.x), -111f, 1363f, _wgslsmith_f_op_f32(floor(arg_1.b.e.x)))))));
    return vec3<bool>(arg_1.a, arg_1.b.d.x, arg_2.x);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    let var_0 = !all(!func_3(arg_0, Struct_2(true, Struct_1(u_input.c.x, vec2<i32>(-2147483647i, u_input.b.x), vec3<u32>(104171u, 13032u, u_input.c.x), vec2<bool>(true, false), vec3<f32>(arg_1, 894f, 455f)), Struct_1(u_input.c.x, u_input.b, arg_2.yzy, vec2<bool>(true, true), vec3<f32>(724f, arg_1, arg_1))), vec2<bool>(true, true)));
    global0 = array<Struct_2, 22>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(773f, arg_1)));
    let var_2 = var_0 && any(select(select(!vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, false, var_0, var_0), var_0), !select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, true, true, var_0), var_0), select(!vec4<bool>(true, true, true, var_0), !vec4<bool>(false, var_0, var_0, var_0), true)));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, 1000f), vec2<f32>(arg_1, arg_1))))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 491f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1240f);
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    global0 = array<Struct_2, 22>();
    var var_0 = false;
    global0 = array<Struct_2, 22>();
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(~u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f), _wgslsmith_f_op_f32(f32(-1f) * -565f)), ~(~vec4<u32>(u_input.a, 0u, arg_0, 40567u))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = u_input.c;
    let var_2 = vec2<i32>((_wgslsmith_mult_i32(func_1(u_input.a, true), -11938i & u_input.b.x) >> (1u % 32u)) ^ _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, abs(1i)), u_input.b.x), abs(u_input.b.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-713f, -627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 635f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, 1250f, -1108f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, -759f, -312f))), vec3<f32>(_wgslsmith_f_op_f32(1192f * -2287f), -1000f, -1093f)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-678f)) * _wgslsmith_f_op_f32(func_2(~var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(532f * var_3.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) + -611f)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, 1u, 0u), vec4<u32>(var_1.x, u_input.c.x, var_1.x, 1u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_1.x), vec2<u32>(55927u, var_1.x)), 1u) >> (vec4<u32>(~28702u, ~40377u, _wgslsmith_div_u32(4294967295u, var_1.x), ~4294967295u) % vec4<u32>(32u)))));
    var_4 = -194f;
    let var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

