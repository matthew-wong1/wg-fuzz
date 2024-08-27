struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = all(vec3<bool>(!(!any(vec3<bool>(false, arg_0.a, false))), true, arg_0.a));
    let var_1 = arg_0;
    var var_2 = 2147483647i;
    var var_3 = -1000f;
    let var_4 = ~var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-516f, -282f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f - 595f)), _wgslsmith_f_op_f32(trunc(891f)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, vec2<u32>(4294967295u, arg_0.b.x)))))))));
    let var_2 = arg_2;
    var var_3 = firstLeadingBit(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, -85333i, 0i), -vec4<i32>(-2147483647i, u_input.b, 27568i, 1i), vec4<i32>(-1i, 1589i, u_input.b, 1i) << (vec4<u32>(arg_3.x, 1u, 747u, 39611u) % vec4<u32>(32u)))));
    return _wgslsmith_div_f32(2244f, _wgslsmith_f_op_f32(trunc(412f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32) -> vec2<f32> {
    var var_0 = ~vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~(~u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 63802u, arg_2, u_input.c.x), vec4<u32>(4294967295u, 7720u, u_input.c.x, 4294967295u) & u_input.c)), arg_0);
    var var_1 = 2147483647i;
    var_0 = u_input.c.xww;
    var_1 = 2147483647i;
    var_1 = _wgslsmith_div_i32(-45213i, -1i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, -2496f) - vec2<f32>(706f, -520f)) + vec2<f32>(592f, -1395f)), vec2<f32>(602f, _wgslsmith_f_op_f32(floor(-1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(true, u_input.c.wx), vec3<i32>(2147483647i, u_input.d.x, u_input.b), Struct_1(false, u_input.c.xx), vec4<u32>(var_0, var_0, var_0, var_0))) - -246f), 1f, 1366f))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.yz)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -317f) - var_1.yx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~0u, ~2215i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, var_0) ^ vec4<u32>(4294967295u, u_input.c.x, 16973u, var_0), u_input.c)))));
    var_2 = var_1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(1294f, abs(_wgslsmith_div_vec2_i32(u_input.d, ~abs(u_input.d))));
}

