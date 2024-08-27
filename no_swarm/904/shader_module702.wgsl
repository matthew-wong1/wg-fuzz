struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), 449f, vec3<i32>(0i, 0i, -1i)), vec4<bool>(true, false, true, true), -220f, 24129i, Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), -1217f, vec3<i32>(-12793i, 1i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), 216f, vec3<i32>(44784i, i32(-2147483648), 14096i)), vec4<bool>(false, true, false, false), 945f, -23862i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), -132f, vec3<i32>(32798i, 0i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), 461f, vec3<i32>(2147483647i, 5603i, 0i)), vec4<bool>(true, false, true, false), -772f, 1i, Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), 103f, vec3<i32>(-1i, i32(-2147483648), -25917i))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), -864f, vec3<i32>(i32(-2147483648), i32(-2147483648), 31330i)), vec4<bool>(false, false, true, false), 140f, -1i, Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), 174f, vec3<i32>(1i, 10660i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), 604f, vec3<i32>(41864i, 1i, 38108i)), vec4<bool>(false, false, false, true), 1793f, 1i, Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), -1364f, vec3<i32>(1i, -18402i, -1i))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), 448f, vec3<i32>(12789i, -1i, 17147i)), vec4<bool>(true, false, false, false), -1418f, -1i, Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), 123f, vec3<i32>(0i, 1i, 1i))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), -531f, vec3<i32>(0i, 24712i, -1i)), vec4<bool>(true, false, true, false), -464f, i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), 536f, vec3<i32>(1i, 22182i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), -794f, vec3<i32>(0i, 2147483647i, 1i)), vec4<bool>(false, true, false, true), -1787f, -5817i, Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), 1574f, vec3<i32>(0i, -29720i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), 544f, vec3<i32>(2147483647i, 18196i, 1i)), vec4<bool>(false, true, true, true), -227f, i32(-2147483648), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), 401f, vec3<i32>(0i, -1i, -1i))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), -503f, vec3<i32>(-1i, i32(-2147483648), 2147483647i)), vec4<bool>(false, true, true, true), -1141f, -33098i, Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), 294f, vec3<i32>(19319i, -42234i, -1i))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), -695f, vec3<i32>(2147483647i, i32(-2147483648), 62685i)), vec4<bool>(false, false, false, true), -1572f, -6419i, Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), 497f, vec3<i32>(1i, 2147483647i, -14539i))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), 335f, vec3<i32>(-1i, 0i, -10343i)), vec4<bool>(true, false, true, false), 537f, -1i, Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), 3064f, vec3<i32>(2147483647i, 16338i, -71938i))), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), -1454f, vec3<i32>(2147483647i, -29917i, 15474i)), vec4<bool>(true, true, true, false), -204f, -6668i, Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), 969f, vec3<i32>(0i, 0i, 27591i))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), -318f, vec3<i32>(-1i, -1i, 68053i)), vec4<bool>(false, true, true, true), 1000f, -31925i, Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), -854f, vec3<i32>(1i, -37604i, -1i))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), 800f, vec3<i32>(1i, 1i, -6115i)), vec4<bool>(false, true, false, true), 370f, -30672i, Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), -1774f, vec3<i32>(-5872i, -16649i, 2147483647i))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), 1002f, vec3<i32>(46452i, 78596i, 1i)), vec4<bool>(false, true, false, true), 1000f, -73353i, Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), 643f, vec3<i32>(-5365i, 2147483647i, 1i))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), 488f, vec3<i32>(36283i, -16061i, i32(-2147483648))), vec4<bool>(false, true, false, true), -1191f, 1i, Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), -151f, vec3<i32>(-11719i, -26811i, -43154i))), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), -436f, vec3<i32>(0i, 24506i, -2171i)), vec4<bool>(true, true, true, false), 267f, -40742i, Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), -162f, vec3<i32>(i32(-2147483648), -9763i, 0i))));

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), -506f, vec3<i32>(0i, -13172i, 318i)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), -658f, vec3<i32>(-17153i, 2147483647i, -52367i)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), -266f, vec3<i32>(-32895i, 0i, 1i)), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), 106f, vec3<i32>(-42050i, -1i, 33487i)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), 591f, vec3<i32>(1i, 0i, 2147483647i)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), 942f, vec3<i32>(-48806i, -10010i, 0i)), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), 907f, vec3<i32>(-17203i, 72584i, 33317i)), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), 2765f, vec3<i32>(34705i, i32(-2147483648), -5150i)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), -233f, vec3<i32>(-18311i, -8224i, -1i)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), -103f, vec3<i32>(59616i, 44349i, 1i)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), 253f, vec3<i32>(0i, -3016i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), -715f, vec3<i32>(-46410i, -2159i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), -1684f, vec3<i32>(40532i, 1i, -30900i)), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), 701f, vec3<i32>(0i, 1i, 28196i)));

var<private> global3: u32;

var<private> global4: vec3<i32> = vec3<i32>(1i, -50615i, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> bool {
    global1 = array<Struct_2, 1>();
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f))), vec3<i32>(_wgslsmith_add_i32(u_input.e.x, 25224i) ^ 2147483647i, 43077i, ~abs(61971i))), !vec4<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false)), all(vec2<bool>(false, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_f32(round(302f)), u_input.a.x, global2[_wgslsmith_index_u32(u_input.d, 14u)]);
    var_0 = global1[_wgslsmith_index_u32(8115u, 1u)];
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 14u)], select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true)), vec4<bool>(func_3(), true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec4<bool>(false, select(false, true, true) && false, false, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1015f), 0i, Struct_1(!vec3<bool>(any(vec2<bool>(true, true)), true, true), select(vec3<bool>(u_input.d > u_input.d, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(func_3(), true == any(vec4<bool>(false, true, true, false)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1708f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f * -815f))), u_input.a.xwx));
    var var_1 = global0[_wgslsmith_index_u32(u_input.d, 18u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-711f)), _wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(round(1583f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a.d, 1691f) - vec3<f32>(297f, 1147f, var_0.e.d)))))));
    let var_3 = var_2.x;
    let var_4 = var_1.d >> (_wgslsmith_mod_u32(~5621u, ~(~(~1u))) % 32u);
    return ~(~u_input.d >> (u_input.d % 32u));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool) -> vec2<f32> {
    var var_0 = Struct_1(vec3<bool>(!arg_2, all(!vec3<bool>(arg_2, true, true)), !(!arg_2 && (arg_2 || true))), vec3<bool>(arg_2, 4294967295u != ~_wgslsmith_dot_vec4_u32(vec4<u32>(2779u, arg_1, u_input.d, u_input.d), vec4<u32>(u_input.d, 1u, u_input.d, 14960u)), arg_2), !vec3<bool>(arg_2, true, arg_2), _wgslsmith_f_op_f32(-arg_0), u_input.a.wyy);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, 47765u, func_2()), 1u)];
    var var_2 = global0[_wgslsmith_index_u32(min(36867u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 71696u, 20285u), vec4<u32>(u_input.d, u_input.d, 0u, 1u))) | (func_2() >> (46561u % 32u))), 18u)];
    let var_3 = ~vec4<i32>(-50917i, global4.x, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.e.x, var_2.a.e.x), var_2.a.e.zx, var_2.e.e.xy), vec2<i32>(2147483647i, 0i))), ~abs(35298i));
    global2 = array<Struct_1, 14>();
    return _wgslsmith_div_vec2_f32(vec2<f32>(var_1.e.d, -969f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(var_2.a.d, var_1.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_1, 14>();
    var var_0 = ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -32054i, 17560i), _wgslsmith_add_vec3_i32(vec3<i32>(global4.x, u_input.e.x, 20043i), u_input.a.yyx))) ^ vec3<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(global4.x, 54053i, global4.x, -20440i), u_input.a), -1i, 35818i);
    var_0 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(global4.x, var_0.x), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), u_input.a.yyw) & (select(-select(u_input.a.yyy, vec3<i32>(52645i, 34039i, global4.x), arg_1.x), max(u_input.a.xxz, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global4.x, 1i), u_input.a.yyw)), select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1, arg_1.x), vec3<bool>(true, false, arg_1.x), select(arg_1, arg_1, vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))) & -(~(~u_input.a.zzw)));
    var var_1 = ~vec4<u32>(u_input.d, ~1u, abs(~4294967295u), ~(u_input.d | 1u));
    let var_2 = ~var_1.www;
    return Struct_1(!arg_1, select(vec3<bool>(arg_1.x, any(arg_1), any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, true), arg_1.x))), select(vec3<bool>(true, false, any(arg_1.yx)), select(arg_1, vec3<bool>(true, arg_1.x, false), !vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.x), select(!arg_1, arg_1, ~64202u > _wgslsmith_dot_vec4_u32(vec4<u32>(20169u, var_1.x, 4294967295u, 42985u), vec4<u32>(var_2.x, 35606u, var_1.x, var_2.x)))), arg_1, _wgslsmith_f_op_vec2_f32(func_1(arg_0.x, u_input.d, true)).x, u_input.a.wzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1937f)))), _wgslsmith_mult_u32(u_input.d, 0u) & _wgslsmith_div_u32(4294967295u, u_input.d), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)))), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = ~0u;
    global1 = array<Struct_2, 1>();
    global4 = ~u_input.a.yyw;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -23699i, select(u_input.b, u_input.a.x, var_0.b.x)), vec3<i32>(_wgslsmith_mod_i32(-50649i, var_0.e.x), u_input.e.x, 1i)), _wgslsmith_div_i32(0i, 69926i), -_wgslsmith_mult_i32(-33558i, ~22714i)), vec4<i32>(~(-14257i), firstLeadingBit(firstLeadingBit(~u_input.e.x)), -var_0.e.x, i32(-1i) * -(~0i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.a), vec3<f32>(_wgslsmith_div_f32(var_0.d, var_0.d), var_0.d, -186f));
}

