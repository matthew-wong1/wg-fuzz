struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 16>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    global1 = array<vec2<u32>, 16>();
    let var_0 = -u_input.a.x | _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.a.x, -28103i, u_input.a.x), ~vec4<i32>(u_input.a.x, 5371i, global0.e, global0.b)), -(~vec4<i32>(-12806i, 8395i, 92i, 2147483647i)), reverseBits(select(vec4<i32>(-1i, u_input.a.x, -2147483647i, -1i), vec4<i32>(u_input.a.x, 25063i, global0.c, 0i), true))), -vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -44758i), reverseBits(u_input.a.x), u_input.a.x, 1i));
    global1 = array<vec2<u32>, 16>();
    var var_1 = select(!select(!(!vec3<bool>(false, arg_1, global0.a.x)), select(select(vec3<bool>(global0.a.x, false, false), vec3<bool>(global0.a.x, false, arg_0), arg_0), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, false, true), vec3<bool>(false, false, arg_1)), vec3<bool>(arg_0, arg_0, global0.a.x)), ~global0.d.x >= global0.d.x), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_1, true), true), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, true, arg_1), vec3<bool>(true, global0.a.x, arg_0)), select(vec3<bool>(true, true, global0.a.x), vec3<bool>(arg_0, false, global0.a.x), true)), vec3<bool>(all(vec3<bool>(arg_1, arg_0, false)), all(vec3<bool>(global0.a.x, arg_1, false)), arg_0), any(!vec3<bool>(arg_1, arg_0, false))), vec3<bool>(u_input.a.x != 0i, global0.a.x, arg_0), vec3<bool>(!(!arg_1), global0.e >= global0.e, (-14706i >> (global0.d.x % 32u)) < -1i)), vec3<bool>(any(!vec3<bool>(global0.a.x, false, arg_1)), any(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_1, true), arg_1)), select(all(vec3<bool>(false, true, arg_1)), true, all(!vec2<bool>(arg_0, arg_0)))));
    var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1883f)) <= _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(-979f, 1202f))), false, arg_1);
    return var_1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    global0 = arg_2.c;
    var var_0 = Struct_1(global0.a, reverseBits(arg_2.a.x << (global0.d.x % 32u)), -global0.e, vec4<u32>(arg_2.c.d.x, select(~(~arg_1.x), _wgslsmith_add_u32(~global0.d.x, ~29453u), all(select(vec3<bool>(arg_3, true, false), vec3<bool>(true, false, arg_2.c.a.x), arg_2.c.a.x))), arg_2.c.d.x, arg_2.c.d.x), (0i >> (max(~16513u, arg_2.c.d.x | 0u) % 32u)) ^ global0.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(-914f + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1816f + -193f) * _wgslsmith_f_op_f32(sign(118f))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(-732f)), -850f, -1009f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 917f, 1689f) + vec3<f32>(-850f, 766f, -599f)) + _wgslsmith_div_vec3_f32(vec3<f32>(295f, -344f, -639f), vec3<f32>(-198f, 2506f, 269f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(234f, 1225f, 270f)))))));
    global1 = array<vec2<u32>, 16>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))), -841f)) * var_1.x);
    return -1000f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_0.wyw)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 136f, arg_2.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 1360f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(arg_2.ywz * vec3<f32>(arg_2.x, arg_2.x, -394f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(729f, _wgslsmith_f_op_f32(trunc(266f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_2.x), _wgslsmith_f_op_f32(func_4(select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.a.x, false), arg_1.a.x), ~arg_1.d, Struct_2(vec4<i32>(global0.c, 2867i, u_input.a.x, u_input.a.x), global0.a.x, arg_1), func_3(false, global0.a.x)))) * arg_2.wxy));
    var var_1 = ~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_1.d.x, max(4294967295u, 29471u), ~arg_1.d.x), _wgslsmith_add_u32(~global0.d.x, 1u)));
    var var_2 = arg_1.b;
    var var_3 = 20365i;
    let var_4 = Struct_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(43216i, -2147483647i, ~16964i, global0.b), min(vec4<i32>(u_input.a.x, u_input.a.x, global0.b, 0i), -vec4<i32>(u_input.a.x, arg_1.e, 1i, u_input.a.x))), global0.a.x, arg_1);
    return _wgslsmith_dot_vec2_u32(~firstLeadingBit(var_4.c.d.xw), _wgslsmith_clamp_vec2_u32(global0.d.yx, var_4.c.d.xy, var_4.c.d.yz));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<vec2<u32>, 16>();
    global0 = Struct_1(global0.a, -_wgslsmith_sub_i32(global0.c, ~256i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x << (4294967295u % 32u), _wgslsmith_div_i32(global0.c, u_input.a.x), -1i), min(abs(u_input.a), u_input.a)), ~(~(~vec4<u32>(0u, 26310u, 55500u, arg_1.x))), ~max(1i, abs(u_input.a.x)));
    var var_0 = -1536f;
    global1 = array<vec2<u32>, 16>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-127f)) + _wgslsmith_f_op_f32(217f * arg_0.x));
    return Struct_1(!vec2<bool>(!global0.a.x, global0.a.x), -(~(-(~global0.e))), ~(-17838i ^ -u_input.a.x), select(vec4<u32>(~_wgslsmith_sub_u32(38670u, global0.d.x), firstLeadingBit(max(global0.d.x, 33861u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), ~global1[_wgslsmith_index_u32(9168u, 16u)]), max(18330u, arg_1.x) | arg_1.x), vec4<u32>(19444u, global0.d.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, -1062f, -1000f, arg_0.x)), Struct_1(global0.a, global0.e, -1i, global0.d, -14183i), vec4<f32>(1f, 1f, 1f, 1f)), ~_wgslsmith_div_u32(0u, 2259u)), true), 1i);
}

fn func_1(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = 1839f;
    global1 = array<vec2<u32>, 16>();
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, -1200f))), select(vec2<u32>(~global0.d.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, var_0, var_0, -509f)), Struct_1(vec2<bool>(global0.a.x, global0.a.x), u_input.a.x, u_input.a.x, global0.d, -2147483647i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(425f, var_0, var_0, 902f))))), select(vec2<u32>(32246u, global0.d.x), global0.d.zw, global0.a.x), select(vec2<bool>(global0.a.x, true), vec2<bool>(global0.d.x == 17405u, all(arg_0)), !(u_input.a.x >= u_input.a.x))));
    let var_2 = select(!select(!(!global0.a), var_1.a, !vec2<bool>(arg_0.x, var_1.a.x)), !select(vec2<bool>(global0.a.x & false, false), select(vec2<bool>(arg_0.x, false), vec2<bool>(false, global0.a.x), !vec2<bool>(false, var_1.a.x)), true), !(var_1.b >= global0.c));
    var var_3 = 0i;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 479f))) - vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(floor(var_0)))), !vec2<bool>(true, !global0.a.x)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1875f), 1248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_0.x))))), _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(~global0.d.x, 16u)], global0.d.zw));
    global1 = array<vec2<u32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
    global0 = var_0;
    var var_2 = arg_1.x;
    return Struct_2(countOneBits(max(~(-vec4<i32>(u_input.a.x, var_0.c, 0i, var_0.e)), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.c, 1i), vec4<i32>(global0.c, 1i, -20464i, var_0.e), vec4<i32>(-31076i, 9818i, var_0.b, var_0.e)), vec4<i32>(var_0.c, -66696i, 6711i, u_input.a.x)))), global0.a.x, Struct_1(select(vec2<bool>(var_0.a.x, global0.d.x >= global0.d.x), vec2<bool>(arg_0.x >= arg_0.x, var_0.a.x != true), true), u_input.a.x, abs(-48397i), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -767f, arg_1.x)), abs(vec2<u32>(1u, var_0.d.x))).d | global0.d, ~_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-86739i, 1i, u_input.a.x, 1i), vec4<i32>(2147483647i, u_input.a.x, var_0.b, -16510i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(233f, _wgslsmith_div_f32(378f, 570f), _wgslsmith_f_op_f32(select(499f, -339f, false)), _wgslsmith_f_op_f32(trunc(-1551f))), vec4<f32>(-425f, _wgslsmith_f_op_f32(f32(-1f) * -262f), -1574f, _wgslsmith_div_f32(-1160f, 1591f))) + vec4<f32>(-522f, _wgslsmith_f_op_f32(2808f + _wgslsmith_f_op_f32(1337f + -1579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1400f, -1124f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(448f, 620f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(246f, 1146f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2082f, 1124f)), any(vec2<bool>(global0.a.x, global0.a.x))))) - _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(false, all(vec3<bool>(false, global0.a.x, global0.a.x)), true == global0.a.x)))));
    global1 = array<vec2<u32>, 16>();
    global1 = array<vec2<u32>, 16>();
    global0 = func_6(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f * _wgslsmith_f_op_f32(max(569f, -620f))) + 534f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) + -1537f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(127f)) + -1367f)), 281f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-142f, -128f), vec2<f32>(838f, -262f), global0.a)))) * vec2<f32>(-1041f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(var_0.c.a.x, true, var_0.b))).x))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, -860f, -1258f, -346f))), func_6(vec4<f32>(156f, -158f, -515f, -273f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(649f, -488f), vec2<f32>(-469f, 220f)))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(644f, 2159f, -1165f, 1000f), vec4<f32>(389f, -1686f, -322f, 1000f), vec4<bool>(var_0.b, global0.a.x, false, var_0.b))))), ~func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1419f, -673f, -1276f) * vec3<f32>(1034f, 2019f, 1523f)), var_0.c.d.wy).d.xw >> (vec2<u32>(~(~global0.d.x), global0.d.x) % vec2<u32>(32u)));
}

