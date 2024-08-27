struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec4<i32>(0i, 2147483647i, -34762i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), 34946i, 29211i), vec4<i32>(2147483647i, 21340i, -31409i, 2147483647i), vec4<i32>(-6749i, i32(-2147483648), -47937i, -10347i), vec4<i32>(0i, i32(-2147483648), 2147483647i, -21690i), vec4<i32>(i32(-2147483648), 42207i, 2147483647i, 6428i), vec4<i32>(-1826i, 1i, i32(-2147483648), 20185i), vec4<i32>(0i, -1i, -519i, -1i), vec4<i32>(1i, -6243i, 33490i, i32(-2147483648)), vec4<i32>(-35902i, -4597i, -55495i, 21906i), vec4<i32>(i32(-2147483648), i32(-2147483648), -20065i, i32(-2147483648)), vec4<i32>(1i, -35796i, 1i, 2147483647i), vec4<i32>(-12729i, -22249i, -1i, i32(-2147483648)), vec4<i32>(-21556i, i32(-2147483648), 2147483647i, 1667i), vec4<i32>(i32(-2147483648), -27203i, 1i, 0i), vec4<i32>(-1i, -60861i, 2147483647i, -27743i), vec4<i32>(38739i, -1i, i32(-2147483648), 4011i), vec4<i32>(0i, 0i, i32(-2147483648), -1i), vec4<i32>(-1i, 21300i, -1i, i32(-2147483648)), vec4<i32>(-1i, 26748i, -34296i, -1i), vec4<i32>(-27857i, 24399i, 2147483647i, 0i), vec4<i32>(71384i, 62653i, 2147483647i, 2147483647i), vec4<i32>(8828i, 2147483647i, 0i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(51052i, 6812i, 7765i, 15378i), vec4<i32>(2147483647i, 0i, 13306i, -1i), vec4<i32>(0i, i32(-2147483648), -19457i, -17110i), vec4<i32>(-3728i, -1i, 17305i, 2147483647i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>) -> f32 {
    global0 = array<vec4<i32>, 29>();
    var var_0 = Struct_2(Struct_1(~_wgslsmith_add_u32(~u_input.a.x, 1u), 0u));
    global0 = array<vec4<i32>, 29>();
    global0 = array<vec4<i32>, 29>();
    global0 = array<vec4<i32>, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1011f, 993f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    global0 = array<vec4<i32>, 29>();
    let var_0 = Struct_3(arg_0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, arg_1)))), arg_2.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(func_3(vec3<i32>(11923i, 2147483647i, -2147483647i), vec2<i32>(1i, -41601i)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -161f, arg_1)) + vec3<f32>(arg_1, arg_1, 127f))), vec3<f32>(_wgslsmith_f_op_f32(-373f * -831f), -307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 431f))))), vec4<i32>(1i, 1i, 1i, 1i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)));
    global0 = array<vec4<i32>, 29>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_1, var_0.d.x)), -166f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(-var_0.b)) - var_0.b)));
    return _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(func_3(var_0.e.wzz, var_0.e.xx)));
}

fn func_1() -> vec3<i32> {
    let var_0 = vec2<u32>(~0u, ~51596u);
    global0 = array<vec4<i32>, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_0.x, 1u)), 731f, vec4<bool>(true, true, true, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-839f, 317f) - vec2<f32>(-571f, 557f))))))));
    global0 = array<vec4<i32>, 29>();
    global0 = array<vec4<i32>, 29>();
    return _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(-79548i), 2147483647i), ~2147483647i, -19711i)), ~(~vec3<i32>(1i, -30658i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(select(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -362f))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(304f)))), true), true, true);
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(func_1(), vec3<i32>(~(i32(-1i) * -2147483647i), abs(1i), ~5870i)), firstTrailingBit(vec3<i32>(1i, 1i, 1i)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1144f, 2259f, 575f, 311f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1247f, 423f)), _wgslsmith_f_op_f32(min(350f, -220f)), _wgslsmith_f_op_f32(f32(-1f) * -1867f), _wgslsmith_div_f32(-921f, -120f)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(244f * -936f), _wgslsmith_f_op_f32(func_3(vec3<i32>(var_1.x, 37296i, var_1.x), vec2<i32>(12555i, var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -571f) - _wgslsmith_f_op_f32(2607f * -127f)))), _wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(724f, -129f)) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1030f + -1132f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-903f * _wgslsmith_f_op_f32(func_3(vec3<i32>(var_1.x, var_1.x, 23287i), var_1.xx))) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(710f, -1114f))))));
    var_1 = vec3<i32>(-(~var_1.x) << (abs(~1u) % 32u), -1i, ~(_wgslsmith_div_i32(var_1.x, var_1.x) & _wgslsmith_add_i32(0i, var_1.x))) >> (~u_input.a.yxx % vec3<u32>(32u));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(811f, var_2.x, 246f, -1415f) - vec4<f32>(-896f, var_2.x, -984f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 649f, var_2.x, var_2.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, var_2.x, -310f, var_2.x) - vec4<f32>(-438f, var_2.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, var_2.x, 1299f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, -1170f, -100f, var_2.x)))))), var_0.x));
    var var_3 = 2147483647i;
    let var_4 = !(!select(all(vec4<bool>(false, var_0.x, false, var_0.x)), var_0.x, true)) && (u_input.a.x <= (~u_input.a.x << (_wgslsmith_div_u32(14572u | u_input.a.x, 0u) % 32u)));
    let var_5 = var_2.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-960f, -1548f) * 1223f)) * _wgslsmith_f_op_f32(trunc(var_2.x))), -(i32(-1i) * -var_1.x), vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x))), var_5.x, _wgslsmith_f_op_f32(func_3(~vec3<i32>(var_1.x, 2147483647i, 12880i), vec2<i32>(-var_1.x, max(2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(round(var_2.x))), vec4<u32>(abs(firstLeadingBit(countOneBits(4294967295u))), 1u, u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.ywy, min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xxz)), ~(~u_input.a.zyx))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-240f, var_5.x, -823f, 102f) + vec4<f32>(var_2.x, var_2.x, -799f, 322f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_5.x, var_2.x, var_5.x, var_5.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1000f, var_5.x, 563f)))))));
}

