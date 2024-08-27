struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-938f, -785f, -121f, 154f), vec4<f32>(1000f, -517f, 120f, 207f), vec4<f32>(708f, -617f, -990f, 665f), vec4<f32>(-870f, 481f, 1000f, 744f), vec4<f32>(-234f, 1213f, 147f, -613f), vec4<f32>(-1543f, -1000f, -1468f, 162f), vec4<f32>(-1800f, -1363f, 430f, -1000f), vec4<f32>(-225f, 748f, 144f, -408f), vec4<f32>(396f, 200f, -337f, -398f), vec4<f32>(-290f, -1131f, 153f, -1002f), vec4<f32>(-715f, -1276f, -525f, 985f));

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: array<i32, 16> = array<i32, 16>(684i, 2147483647i, i32(-2147483648), 1i, 0i, -7221i, 23741i, 1i, -3461i, i32(-2147483648), i32(-2147483648), 0i, -24208i, 1i, -6268i, 7415i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global3 = array<i32, 16>();
    global1 = array<vec4<f32>, 11>();
    let var_0 = 282f;
    let var_1 = !select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !(1i != u_input.a.x));
    global0 = array<vec3<f32>, 9>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(~max(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 120560u)), firstLeadingBit(~vec3<u32>(4294967295u, 84184u, 1u))), ~vec3<u32>(40786u, 51143u, 39840u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), ~(~select(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u)), !var_1)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec2<bool> {
    let var_0 = Struct_1(arg_0.e.a);
    var var_1 = ~select(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(arg_0.d, arg_0.d, 3867u, arg_0.d)), vec4<u32>(1u, _wgslsmith_sub_u32(19050u, arg_0.d), 1u, 53916u), ~(~vec4<u32>(arg_0.d, arg_0.d, arg_0.d, 17966u))), abs(~vec4<u32>(0u, 47696u, arg_0.d, 4294967295u)), (true && (arg_0.d != 0u)) & true);
    let var_2 = ~324u < _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.wzx, _wgslsmith_div_vec3_u32(var_1.zxw, vec3<u32>(arg_0.d, 0u, var_1.x))), ~var_1.x));
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(1u, 9u)], !(!(!arg_0.a)), Struct_2(select(vec2<bool>(arg_1, true), vec2<bool>(false, any(vec3<bool>(false, false, var_0.a.x))), var_0.a), Struct_1(select(vec2<bool>(false, false), arg_0.c.a, var_0.a)), arg_0.e.c, var_0));
    var var_4 = Struct_2(select(select(var_0.a, !var_0.a, !select(var_3.c.d.a, var_0.a, vec2<bool>(false, true))), vec2<bool>(false, select(!var_0.a.x, arg_1, all(vec3<bool>(arg_0.c.d.a.x, arg_0.c.b.a.x, var_2)))), var_0.a.x == !(arg_1 && var_0.a.x)), arg_0.e.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.c.c))))), var_0);
    return !(!select(vec2<bool>(select(true, var_3.c.a.x, var_2), true), select(vec2<bool>(var_4.a.x, var_4.a.x), !arg_0.c.a, var_4.a), var_3.b));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<vec3<f32>, 9>();
    let var_0 = global3[_wgslsmith_index_u32(0u, 16u)];
    var var_1 = vec2<bool>(true, !(!all(vec2<bool>(false, true)) || any(vec3<bool>(true, true, true))));
    global1 = array<vec4<f32>, 11>();
    var_1 = func_4(Struct_3(vec2<bool>(var_1.x, var_1.x), -206f, Struct_2(vec2<bool>(true, var_1.x), Struct_1(!vec2<bool>(var_1.x, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0, -279f))), Struct_1(vec2<bool>(var_1.x, var_1.x))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, 128f)))), Struct_2(vec2<bool>(any(vec4<bool>(false, false, true, var_1.x)), true), Struct_1(select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true))), arg_0, Struct_1(vec2<bool>(var_1.x, true)))), var_1.x);
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(779f, 618f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -349f))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = -u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * vec2<f32>(-1123f, 210f));
    global3 = array<i32, 16>();
    global0 = array<vec3<f32>, 9>();
    var var_2 = Struct_2(arg_1, Struct_1(vec2<bool>(arg_1.x, false)), _wgslsmith_f_op_f32(-arg_2), Struct_1(vec2<bool>(any(vec2<bool>(arg_1.x, arg_1.x)) || true, all(!vec4<bool>(arg_1.x, false, true, true)))));
    return vec3<bool>(true, true, (false && var_2.b.a.x) | any(!vec2<bool>(arg_1.x, true)));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_3 {
    global1 = array<vec4<f32>, 11>();
    let var_0 = !((!(arg_1.x && arg_3.a.x) & (arg_1.x || arg_3.c.d.a.x)) & false);
    let var_1 = _wgslsmith_clamp_i32(u_input.a.x, firstLeadingBit(-2147483647i), u_input.a.x) <= 0i;
    var var_2 = ~abs(-vec3<i32>(u_input.a.x, -62398i, 4610i) >> (~vec3<u32>(114263u, 7009u, 0u) % vec3<u32>(32u)));
    var var_3 = arg_3;
    return Struct_3(var_3.e.d.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1382f - _wgslsmith_f_op_f32(182f + -914f)), _wgslsmith_f_op_f32(f32(-1f) * -325f))))), arg_3.e, arg_3.d, Struct_2(arg_3.c.d.a, Struct_1(var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)), Struct_1(var_3.e.a)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> vec2<bool> {
    global0 = array<vec3<f32>, 9>();
    global0 = array<vec3<f32>, 9>();
    let var_0 = func_6(firstLeadingBit(1u), select(vec3<bool>(true, true, firstLeadingBit(global3[_wgslsmith_index_u32(1u, 16u)]) < global3[_wgslsmith_index_u32(abs(arg_1.x), 16u)]), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 643f)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), _wgslsmith_f_op_f32(func_2(arg_0))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), false), global0[_wgslsmith_index_u32(~1u, 9u)], Struct_3(vec2<bool>(true, _wgslsmith_f_op_f32(arg_0 - 888f) != _wgslsmith_f_op_f32(arg_0 + -312f)), -1294f, Struct_2(!func_4(Struct_3(vec2<bool>(false, true), arg_0, Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true)), 892f, Struct_1(vec2<bool>(true, true))), 7332u, Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true)), arg_0, Struct_1(vec2<bool>(false, false)))), false), Struct_1(vec2<bool>(false, true)), arg_0, Struct_1(vec2<bool>(true, true))), 11695u, Struct_2(select(func_5(vec2<f32>(-278f, arg_0), vec2<bool>(false, true), 372f).yy, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), _wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(arg_0 - arg_0)), Struct_1(vec2<bool>(true, true)))));
    let var_1 = arg_1 << (countOneBits(~(~vec4<u32>(32654u, var_0.d, 4294967295u, arg_1.x))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-var_0.c.c)))) - var_0.e.c));
    return func_5(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.e.c))), 1753f))), !func_4(Struct_3(func_6(var_1.x, vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<f32>(arg_0, 167f, var_0.e.c), var_0).c.b.a, arg_0, Struct_2(var_0.e.b.a, Struct_1(var_0.c.a), -2169f, var_0.c.d), 1u, func_6(var_1.x, vec3<bool>(var_0.c.a.x, true, true), vec3<f32>(1625f, 605f, 1412f), Struct_3(vec2<bool>(true, var_0.a.x), var_0.e.c, var_0.e, 4294967295u, var_0.e)).c), func_6(_wgslsmith_div_u32(15094u, arg_1.x), vec3<bool>(var_0.e.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(var_0.d, 9u)])), var_0).a.x), _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_0)))))).zx;
}

fn func_7(arg_0: Struct_4, arg_1: vec4<bool>) -> vec3<u32> {
    global2 = array<vec3<f32>, 25>();
    var var_0 = arg_0.c.c < _wgslsmith_f_op_f32(floor(105f));
    global0 = array<vec3<f32>, 9>();
    var_0 = false;
    let var_1 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, arg_0.c.c)) * _wgslsmith_f_op_f32(round(350f)))), _wgslsmith_f_op_f32(-1294f + _wgslsmith_f_op_f32(select(-517f, -2915f, 135f >= arg_0.a.x)))), (~(~vec4<u32>(1u, 34246u, 1u, 6806u)) << (_wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, 4761u, 0u, 8601u), vec4<u32>(92731u, 4294967295u, 25656u, 21670u)), select(vec4<u32>(0u, 0u, 9632u, 4294967295u), vec4<u32>(4294967295u, 27851u, 19614u, 4294967295u), arg_1.x), vec4<u32>(1u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) ^ ~(abs(vec4<u32>(31292u, 4294967295u, 42076u, 89374u)) ^ select(vec4<u32>(0u, 4294967295u, 13381u, 19647u), vec4<u32>(4294967295u, 0u, 74266u, 0u), arg_1))).x;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 1u, _wgslsmith_mod_u32(28459u, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 1315f) - _wgslsmith_f_op_vec2_f32(abs(arg_0.a.zz))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 16>();
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32((u_input.a.zyx | vec3<i32>(global3[_wgslsmith_index_u32(78732u, 16u)], 1i, global3[_wgslsmith_index_u32(56099u, 16u)])) | u_input.a.yyz, ~u_input.a.zzy), abs(~(-u_input.a.xwy))) >> (func_7(Struct_4(_wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 358f, 527f)))), select(vec2<bool>(true, true), func_1(-841f, vec4<u32>(15387u, 22425u, 2814u, 47974u)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), func_6(88804u, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(253f, 196f, -670f)), Struct_3(vec2<bool>(false, false), 1576f, Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(false, true)), 405f, Struct_1(vec2<bool>(true, false))), 0u, Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(false, false)), -712f, Struct_1(vec2<bool>(false, false))))).c), select(vec4<bool>(false, false, false, func_4(Struct_3(vec2<bool>(false, false), -846f, Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, true)), 1471f, Struct_1(vec2<bool>(false, false))), 0u, Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true)), -1335f, Struct_1(vec2<bool>(true, true)))), true).x), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), true)) % vec3<u32>(32u));
    global3 = array<i32, 16>();
    let var_1 = _wgslsmith_add_i32(u_input.a.x, -var_0.x);
    let var_2 = 0u;
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(~(4294967295u & var_2), 25u)])))), func_4(func_6(var_2, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1575f, 1239f, -2211f))), func_6(1u, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_2, 9u)] * vec3<f32>(1483f, -124f, 169f)), func_6(1u, vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(1u, 25u)], Struct_3(vec2<bool>(false, true), -403f, Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, true)), -132f, Struct_1(vec2<bool>(false, true))), 1u, Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, true)), 1235f, Struct_1(vec2<bool>(true, false))))))), 37050u < var_2), Struct_2(vec2<bool>(true, true), func_6(~_wgslsmith_add_u32(var_2, var_2), vec3<bool>(true, false, true), vec3<f32>(_wgslsmith_f_op_f32(round(-1549f)), _wgslsmith_f_op_f32(sign(-583f)), 1f), func_6(_wgslsmith_add_u32(var_2, 19109u), vec3<bool>(true, true, true), vec3<f32>(-1356f, 1114f, -1000f), Struct_3(vec2<bool>(false, true), 163f, Struct_2(vec2<bool>(false, false), Struct_1(vec2<bool>(false, false)), 250f, Struct_1(vec2<bool>(false, true))), 73634u, Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, false)), -688f, Struct_1(vec2<bool>(false, false)))))).c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)), func_6(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 4294967295u, var_2, 4211u), vec4<u32>(var_2, var_2, 4294967295u, 1u)) << ((var_2 ^ 1u) % 32u), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)]))), func_6(var_2, vec3<bool>(true, true, true), vec3<f32>(-424f, 753f, -807f), func_6(var_2, vec3<bool>(false, true, true), global2[_wgslsmith_index_u32(var_2, 25u)], Struct_3(vec2<bool>(true, true), 797f, Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true)), -384f, Struct_1(vec2<bool>(false, true))), 1u, Struct_2(vec2<bool>(true, false), Struct_1(vec2<bool>(true, true)), -402f, Struct_1(vec2<bool>(false, true))))))).c.d));
    global1 = array<vec4<f32>, 11>();
    var var_4 = -24244i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy, vec4<f32>(var_3.a.x, var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1635f), -670f));
}

