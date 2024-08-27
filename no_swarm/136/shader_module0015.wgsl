struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-54066i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(29970i, i32(-2147483648)), vec2<i32>(-17302i, -14707i), vec2<i32>(-18961i, 1i), vec2<i32>(23548i, 0i));

var<private> global2: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    return arg_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec3<f32> {
    global2 = all(vec3<bool>(true, arg_0.x, true));
    global1 = array<vec2<i32>, 6>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1008f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1361f + 987f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1574f))))), _wgslsmith_f_op_f32(509f - -940f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2598f - 806f), _wgslsmith_f_op_f32(1264f + 850f))), _wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(1587f - 429f))))));
    let var_1 = _wgslsmith_clamp_vec3_u32(u_input.b.zxx, _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(u_input.b.x, 32536u, 25197u))), u_input.b.wzy), u_input.b.xwx);
    global0 = array<vec2<u32>, 32>();
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1041f, var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -588f, -796f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1765f) - vec3<f32>(-883f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(trunc(var_0.xxx)), !func_1(func_1(Struct_1(arg_0.x, false, vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec2<bool>(arg_0.x, true), u_input.b.x), var_0), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)).c.yyz))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = 2147483647i;
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(arg_1.c.xzx, ~(~(arg_1.e >> (1u % 32u)))));
    global1 = array<vec2<i32>, 6>();
    global0 = array<vec2<u32>, 32>();
    return StorageBuffer(_wgslsmith_mod_vec2_u32(~max(_wgslsmith_div_vec2_u32(vec2<u32>(73109u, 22680u), vec2<u32>(arg_1.e, u_input.b.x)), firstLeadingBit(vec2<u32>(arg_1.e, 4294967295u))), _wgslsmith_sub_vec2_u32(~(~u_input.b.zx), abs(~vec2<u32>(79324u, 49564u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 6>();
    let var_0 = func_1(Struct_1(true, min(1i, _wgslsmith_sub_i32(u_input.c.x, u_input.a)) >= _wgslsmith_add_i32(~u_input.a, 32187i), !vec4<bool>(true, false, all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, false))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), u_input.b.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1237f, _wgslsmith_f_op_f32(f32(-1f) * -316f), -571f, 1364f) - _wgslsmith_div_vec4_f32(vec4<f32>(-666f, -513f, -1477f, 1000f), vec4<f32>(-681f, -1644f, 1000f, 209f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-450f, 856f, -1199f, 589f) * vec4<f32>(194f, -2643f, 1698f, -884f))))))));
    var var_1 = 43606u;
    global1 = array<vec2<i32>, 6>();
    global2 = true;
    global0 = array<vec2<u32>, 32>();
    let x = u_input.a;
    s_output = func_2(any(var_0.c), Struct_1(any(func_1(Struct_1(false, var_0.b, var_0.c, var_0.d, var_0.e), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 255f, -1000f, 797f), vec4<f32>(1080f, -1709f, 1000f, 1187f))).d), false, !func_1(Struct_1(var_0.b, false, var_0.c, var_0.c.wz, 18988u), vec4<f32>(1000f, 301f, 1720f, -725f)).c, var_0.d, ~_wgslsmith_mult_u32(abs(u_input.b.x), var_0.e)));
}

