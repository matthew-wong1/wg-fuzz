struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<f32>, 1>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global1 = array<vec3<i32>, 30>();
    var var_0 = vec3<i32>(-reverseBits(~(-1i)), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.e.yy, u_input.e.xz)), ~(-global2.x)) ^ u_input.e;
    global3 = array<vec2<f32>, 1>();
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_div_i32(global2.x, global0.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, global0.x), vec4<i32>(var_0.x, global0.x, var_0.x, -2147483647i)), 1i >> (arg_0.x % 32u)), ~1i), _wgslsmith_div_i32(-6872i, -2147483647i >> (arg_0.x % 32u)) << (1u % 32u), -u_input.a), ~(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(59487u, u_input.d.x, u_input.b), u_input.d), u_input.d) | ~u_input.b), _wgslsmith_clamp_i32(-global0.x, u_input.c, min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, global2.x, global2.x), vec4<i32>(u_input.e.x, u_input.c, 19638i, global2.x) >> (arg_0 % vec4<u32>(32u))), reverseBits(2147483647i))));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-47285i, -2147483647i) ^ -global2.x, ~var_1.c, u_input.a, -_wgslsmith_dot_vec3_i32(var_1.a.www, u_input.e)), vec4<i32>(i32(-1i) * -44375i, var_1.a.x, -_wgslsmith_mod_i32(global0.x, global0.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.e.x, 17318i), u_input.e))), _wgslsmith_dot_vec2_u32(~max(arg_0.zw, arg_0.wy) & u_input.d.xz, ~vec2<u32>(var_1.b, _wgslsmith_dot_vec4_u32(arg_0, arg_0))), _wgslsmith_div_i32(global0.x, global0.x));
    return global2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec4<bool>(true, true, true, true), !(!vec4<bool>(all(vec2<bool>(true, false)), u_input.a > 2374i, true, u_input.a > -39291i)), !(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true))));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global2.x, global2.x, u_input.a, -2147483647i), vec4<i32>(58591i, u_input.e.x, u_input.c, u_input.e.x), var_0), vec4<i32>(2147483647i, 1i, -13795i, global0.x), vec4<i32>(-1i, global0.x, global0.x, u_input.c)) >> (_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 12500u), vec4<u32>(0u, u_input.b, u_input.b, u_input.d.x)), ~(~vec4<u32>(27511u, u_input.d.x, u_input.d.x, u_input.d.x))) % vec4<u32>(32u)), 45298u, -14652i ^ _wgslsmith_mult_i32(26593i, _wgslsmith_add_i32(~40880i, _wgslsmith_mod_i32(-36968i, global2.x))));
    global1 = array<vec3<i32>, 30>();
    global2 = vec2<i32>(-firstLeadingBit(func_3(vec4<u32>(u_input.b, 23274u, 4294967295u, 19683u))), _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(~firstTrailingBit(17905i), _wgslsmith_div_i32(2147483647i & global0.x, func_3(vec4<u32>(4294967295u, var_1.b, u_input.b, 0u))))));
    global3 = array<vec2<f32>, 1>();
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = Struct_2(-215f, func_2(), select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), all(vec2<bool>(all(vec3<bool>(arg_2, arg_2, arg_2)), arg_2))), !vec4<bool>(arg_2, select(!arg_2, arg_2, true), false, any(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)))));
    let var_1 = !(!select(!select(vec3<bool>(true, true, arg_2), var_0.d.xwy, vec3<bool>(true, true, arg_2)), select(!var_0.d.wzz, select(var_0.d.zww, vec3<bool>(true, true, arg_2), var_0.d.zyw), !var_0.d.xxz), select(!vec3<bool>(false, var_0.d.x, true), var_0.d.zxw, arg_2)));
    let var_2 = var_0.b.a.yzw;
    var var_3 = select(~abs(u_input.d) ^ ~_wgslsmith_div_vec3_u32(u_input.d | u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, 2776u)), firstLeadingBit(reverseBits(u_input.d)), vec3<bool>(!var_0.d.x, var_0.c.x, _wgslsmith_f_op_f32(359f - _wgslsmith_f_op_f32(exp2(var_0.a))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))));
    var var_4 = select(!vec4<bool>(true, var_0.d.x, true, true), var_0.d, !var_1.x);
    return max(select(arg_0.b, u_input.d.x, !all(!vec3<bool>(arg_2, true, var_4.x))), var_0.b.b);
}

fn func_5(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    return Struct_1(-func_2().a, arg_0, 6009i);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global2 = select(vec2<i32>(~1i, 10371i), vec2<i32>(-1i) * -(~vec2<i32>(6937i, arg_1.c)), select(!vec2<bool>(false, select(false, true, true)), !vec2<bool>(u_input.d.x > 1u, any(vec3<bool>(false, true, true))), true));
    let var_0 = Struct_3(min(vec2<u32>(49224u, 4294967295u), vec2<u32>(abs(arg_0), 71809u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1170f, 1326f) - -992f), _wgslsmith_f_op_f32(1638f - _wgslsmith_f_op_f32(trunc(414f))), -356f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(224f, 2694f)), _wgslsmith_div_f32(1869f, -1115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(967f * 1847f) - _wgslsmith_f_op_f32(-1401f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f + -447f) + -550f), _wgslsmith_f_op_f32(f32(-1f) * -253f)))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(547f, -2104f), _wgslsmith_f_op_f32(f32(-1f) * -716f), any(vec3<bool>(true, true, false)))))), -u_input.e.xz, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)) || true);
    let var_1 = !(!select(vec3<bool>(all(vec2<bool>(var_0.e, false)), var_0.e && true, true), vec3<bool>(all(vec3<bool>(var_0.e, var_0.e, true)), true, false), true));
    global0 = func_2().a.zw;
    return Struct_2(var_0.c.x, arg_1, vec2<bool>(var_1.x, !any(select(var_1.zx, var_1.yz, var_1.xz))), vec4<bool>(var_1.x, !all(vec3<bool>(true, var_1.x, var_0.e)), any(!var_1), var_0.a.x == min(8266u, arg_0)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_6(4294967295u, func_5(func_4(func_2(), ~(44753u << (arg_2.a.x % 32u)), true, -2147483647i), -(~abs(u_input.e.xx))));
    return Struct_1(var_0.b.a, _wgslsmith_mod_u32(arg_2.a.x, ~(~countOneBits(29600u))), var_0.b.c);
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = arg_3;
    var var_1 = u_input.e.zz;
    var var_2 = Struct_3(~u_input.d.xz | ~arg_0.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1.b - vec4<f32>(1131f, arg_2.a, arg_1.b.x, arg_1.b.x)), arg_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-436f, arg_3.a, arg_2.a, arg_1.b.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a, var_0.a), func_6(1u, arg_3.b).a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-383f - 231f), _wgslsmith_f_op_f32(-var_0.a), true)), _wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - _wgslsmith_f_op_f32(-arg_3.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(272f, -1554f, true)), _wgslsmith_f_op_f32(floor(arg_3.a)))))), -arg_2.b.a.zw, !arg_3.d.x);
    var var_3 = vec3<bool>(arg_2.d.x, true, arg_2.d.x & !arg_2.c.x);
    let var_4 = vec3<i32>(~arg_2.b.c, ~(-30734i), -50812i);
    return vec2<i32>(arg_3.b.a.x, 35540i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<u32>(countOneBits(~u_input.d.x), ~max(9318u, u_input.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(959f, 621f, -411f, -848f) - vec4<f32>(-1000f, -1656f, -263f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, -958f, 314f, 401f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1092f, -311f, 1040f, 190f), vec4<f32>(709f, 1319f, 256f, -785f))), any(vec3<bool>(false, false, true)))))), vec2<f32>(363f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~func_7(~max(u_input.d, u_input.d), Struct_3(u_input.d.zz, vec4<f32>(-2018f, 1000f, -912f, -1335f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1239f, 983f)), -u_input.e.xx, true), Struct_2(_wgslsmith_f_op_f32(max(-1158f, 2861f)), func_1(817f, false, Struct_3(u_input.d.yx, vec4<f32>(782f, 1061f, -739f, -1722f), global3[_wgslsmith_index_u32(1u, 1u)], u_input.e.yx, true)), func_6(u_input.b, Struct_1(vec4<i32>(-37434i, 25824i, u_input.a, -2147483647i), u_input.d.x, 13776i)).d.xy, vec4<bool>(true, false, false, false)), func_6(~4294967295u, func_2())), true);
    global0 = _wgslsmith_add_vec2_i32(var_0.d, _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(u_input.a), _wgslsmith_sub_i32(global2.x, -20896i)) >> ((~vec2<u32>(u_input.d.x, var_0.a.x) ^ abs(vec2<u32>(2453u, 40530u))) % vec2<u32>(32u)), u_input.e.yy));
    let var_1 = true;
    var var_2 = countOneBits(~min(reverseBits(u_input.e), select(u_input.e, u_input.e, false))) | func_5(4294967295u, func_5(1u, vec2<i32>(-50278i, func_7(u_input.d, Struct_3(var_0.a, var_0.b, vec2<f32>(var_0.c.x, var_0.c.x), vec2<i32>(-42810i, 2147483647i), var_1), Struct_2(var_0.b.x, Struct_1(vec4<i32>(global2.x, global0.x, 0i, 28017i), 1u, 26576i), vec2<bool>(false, var_1), vec4<bool>(var_1, var_0.e, var_0.e, false)), Struct_2(var_0.c.x, Struct_1(vec4<i32>(16834i, -10883i, 5804i, -33477i), 70510u, 34990i), vec2<bool>(var_0.e, true), vec4<bool>(false, var_1, var_1, var_0.e))).x)).a.yy).a.wzw;
    var_2 = vec3<i32>(global0.x, var_2.x, 22740i);
    var var_3 = vec4<i32>(17675i, 14640i, firstLeadingBit(max(-2147483647i, func_3(countOneBits(vec4<u32>(u_input.b, u_input.b, 11278u, var_0.a.x))))), ~abs(var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(-1864f, 1307f))))) * global3[_wgslsmith_index_u32(4294967295u, 1u)]), var_0.d.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.b.zyw - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.xxz - var_0.b.zyx), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.x, var_0.c.x, 1110f))))))), select(var_0.d, vec2<i32>(var_0.d.x, 43000i), !(!vec2<bool>(var_0.e, true))));
}

