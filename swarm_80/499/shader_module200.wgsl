struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: array<vec2<i32>, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = min(-_wgslsmith_add_i32(reverseBits(~arg_3), arg_3), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~_wgslsmith_mult_i32(14797i, arg_3), ~32302i), abs(-(~vec3<i32>(-2147483647i, -2147483647i, arg_3)))));
    global1 = array<vec2<i32>, 23>();
    global0 = array<bool, 2>();
    let var_1 = ~17733i;
    var var_2 = !(!select(!(!vec4<bool>(false, arg_1.b.c, arg_1.b.c, false)), !vec4<bool>(arg_1.b.c, global0[_wgslsmith_index_u32(9393u, 2u)], arg_1.a.c, true), all(select(vec3<bool>(false, true, arg_1.b.c), vec3<bool>(false, arg_1.b.c, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(10874u, 2u)], true)))));
    return all(select(var_2.yy, vec2<bool>(any(vec3<bool>(arg_1.b.c, var_2.x, global0[_wgslsmith_index_u32(u_input.b, 2u)])) | arg_1.b.c, var_2.x), select(var_2.wy, select(vec2<bool>(false, true), var_2.wx, select(var_2.yz, var_2.yy, false)), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, ~1u, ~11999u)), ~vec3<u32>(u_input.a, 931u, arg_0) ^ ~vec3<u32>(1u, 1u, 0u));
    global1 = array<vec2<i32>, 23>();
    global1 = array<vec2<i32>, 23>();
    var var_1 = arg_1.a;
    let var_2 = vec3<bool>(select(_wgslsmith_f_op_f32(arg_1.b.a.x * _wgslsmith_f_op_f32(round(-688f))) != 1035f, func_3(_wgslsmith_f_op_f32(-arg_1.b.a.x), Struct_2(arg_1.a, Struct_1(vec4<f32>(1000f, arg_1.b.a.x, -1813f, 163f), arg_1.b.b, arg_1.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x)), 1i), any(vec3<bool>(select(arg_2.c, arg_2.c, false), arg_1.b.c & false, func_3(var_1.a.x, Struct_2(arg_2, arg_2), 1185f, u_input.e)))), false, var_1.c);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(321f, arg_2.b.x, -539f, arg_1.a.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(var_1.a.x + -270f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_2.a.ywx)))))), false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = func_2(30027u, Struct_2(arg_0, func_2(_wgslsmith_add_u32(13084u, _wgslsmith_dot_vec2_u32(vec2<u32>(83051u, 15458u), vec2<u32>(u_input.b, 0u))), Struct_2(arg_0, arg_0), arg_0)), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(arg_0.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-930f, arg_0.b.x, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, -1018f, -1103f)))))), global0[_wgslsmith_index_u32(4294967295u, 2u)]));
    global0 = array<bool, 2>();
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1405f + _wgslsmith_f_op_f32(f32(-1f) * -128f)), 669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-317f, 1582f, var_0.b.x), vec3<f32>(-1760f, 1526f, var_0.b.x), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, arg_0.b.x, arg_0.a.x) - vec3<f32>(arg_0.a.x, 1000f, -2319f)), all(vec4<bool>(true, var_0.c, arg_0.c, arg_0.c)))) + arg_0.a.yyz), true), func_2(select(~_wgslsmith_dot_vec2_u32(vec2<u32>(79119u, u_input.b), vec2<u32>(0u, 37513u)), u_input.a, !(!var_0.c)), Struct_2(func_2(~70358u, Struct_2(arg_0, arg_0), Struct_1(arg_0.a, var_0.b, true)), arg_0), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-1579f * -1002f), arg_0.b.x, _wgslsmith_f_op_f32(round(-354f))), arg_0.a.xyx, global0[_wgslsmith_index_u32(~1u, 2u)])));
    var_1 = Struct_2(arg_0, var_1.a);
    var var_2 = func_2(u_input.a, Struct_2(Struct_1(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-2598f * -780f), 968f, -915f), false), Struct_1(var_1.a.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a.x, var_0.a.x), var_0.b))), arg_0.c)), func_2(1u, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, var_1.b.a.x, -1000f, arg_0.a.x), vec4<f32>(var_0.a.x, arg_0.a.x, arg_0.b.x, -296f)), vec3<f32>(var_0.a.x, var_1.a.b.x, 839f), false), func_2(~u_input.b, Struct_2(var_1.b, arg_0), arg_0)), func_2(~abs(0u), Struct_2(func_2(u_input.b, Struct_2(Struct_1(vec4<f32>(1187f, var_0.b.x, 1000f, var_1.a.b.x), vec3<f32>(var_1.b.a.x, arg_0.a.x, -1525f), true), arg_0), Struct_1(var_1.a.a, var_0.b, arg_0.c)), arg_0), var_1.a)));
    return var_2.a.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = array<vec2<i32>, 23>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(764f))))), -894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(2215f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1898f) + _wgslsmith_f_op_f32(step(-373f, -472f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-133f)), _wgslsmith_f_op_f32(func_4(func_2(15610u, Struct_2(Struct_1(vec4<f32>(812f, -865f, 207f, 933f), vec3<f32>(779f, -999f, -166f), global0[_wgslsmith_index_u32(26289u, 2u)]), Struct_1(vec4<f32>(-2133f, -698f, 203f, -523f), vec3<f32>(1000f, -1773f, 1715f), true)), Struct_1(vec4<f32>(-1829f, -618f, -193f, 494f), vec3<f32>(148f, -774f, -500f), true)), vec3<i32>(u_input.e, 1i, u_input.d.x) >> (vec3<u32>(arg_0, 52409u, u_input.b) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-847f * 1157f) + -914f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), 1077f, -1094f)), !((u_input.e >> (arg_0 % 32u)) != -20106i) != ((~u_input.c > abs(-1i)) == !global0[_wgslsmith_index_u32(arg_0, 2u)]));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = -926f;
    let var_1 = arg_2;
    let var_2 = func_1(20475u);
    global1 = array<vec2<i32>, 23>();
    var var_3 = ~(_wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, var_1.x, 14941u, 21429u) << (vec4<u32>(u_input.a, 41593u, var_1.x, u_input.b) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(4294967295u, u_input.a, u_input.b, 20588u))) & firstTrailingBit(~vec4<u32>(var_1.x, arg_0, 1u, 1u)));
    return Struct_2(arg_1, var_2);
}

fn func_6(arg_0: Struct_2) -> u32 {
    global1 = array<vec2<i32>, 23>();
    var var_0 = Struct_2(func_5(15114u, func_2(1u, Struct_2(arg_0.a, arg_0.b), arg_0.a), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27007u, u_input.a, u_input.b), vec3<u32>(u_input.b, 105296u, 0u)), abs(u_input.b)), 44815u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, 77643u)) ^ (u_input.b & u_input.a))).a, arg_0.a);
    var_0 = func_5(~(~abs(0u)), func_5(firstTrailingBit(abs(u_input.a & 1u)), func_2(~(u_input.b << (1u % 32u)), func_5(u_input.a ^ 0u, func_2(23054u, Struct_2(Struct_1(vec4<f32>(1346f, -1000f, arg_0.b.a.x, var_0.b.a.x), var_0.a.a.wzz, arg_0.b.c), var_0.a), var_0.a), abs(vec3<u32>(1u, u_input.a, u_input.b))), func_1(_wgslsmith_add_u32(4294967295u, u_input.a))), abs(select(vec3<u32>(u_input.a, 67972u, u_input.a) | vec3<u32>(0u, u_input.b, 43178u), vec3<u32>(u_input.b, u_input.a, u_input.b), select(vec3<bool>(arg_0.b.c, var_0.a.c, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<bool>(true, true, var_0.b.c), true)))).a, ~(~min(~vec3<u32>(1u, 0u, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b, 0u), vec3<u32>(24942u, u_input.a, 1u)))));
    var var_1 = !select(vec4<bool>(true, all(!vec4<bool>(var_0.b.c, arg_0.b.c, true, true)), !(global0[_wgslsmith_index_u32(4294967295u, 2u)] == true), !var_0.b.c & global0[_wgslsmith_index_u32(u_input.a, 2u)]), select(vec4<bool>(false, func_5(25006u, var_0.b, vec3<u32>(u_input.b, 35820u, u_input.a)).b.c, 0u > u_input.a, var_0.b.c), !(!vec4<bool>(arg_0.a.c, true, false, arg_0.b.c)), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], arg_0.a.b.x > arg_0.a.b.x, true)), all(!vec3<bool>(var_0.b.c, arg_0.b.c, var_0.b.c)));
    var var_2 = true;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.b & _wgslsmith_div_u32(~1u & ~u_input.a, 4294967295u), u_input.b, _wgslsmith_clamp_u32(4294967295u, func_6(func_5(abs(u_input.b), func_1(u_input.a), vec3<u32>(0u, u_input.a, 14873u))), 1u), ~u_input.a);
    let var_1 = vec3<u32>(4294967295u, abs(_wgslsmith_add_u32(~var_0.x, _wgslsmith_clamp_u32(reverseBits(u_input.b), 1u, 1u))), 0u);
    var var_2 = 4294967295u;
    var var_3 = vec4<u32>(_wgslsmith_div_u32(~var_1.x, 95550u), u_input.b, ~select(var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.a), vec3<u32>(var_1.x, var_1.x, var_0.x)), -22682i > -u_input.e), 0u);
    var var_4 = _wgslsmith_f_op_f32(-986f - _wgslsmith_f_op_f32(-func_1(~(~var_1.x)).b.x));
    var_2 = 107293u;
    global1 = array<vec2<i32>, 23>();
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_4(func_1(var_3.x), _wgslsmith_add_vec3_i32(vec3<i32>(-3036i, u_input.e, -1i), vec3<i32>(1i, u_input.c, -36463i)))), _wgslsmith_f_op_f32(exp2(func_1(var_0.x).a.x)), _wgslsmith_f_op_f32(-func_5(4294967295u, Struct_1(vec4<f32>(2063f, -1159f, 1158f, 1000f), vec3<f32>(263f, -1000f, 574f), false), vec3<u32>(var_1.x, var_3.x, 1u)).b.b.x)), _wgslsmith_f_op_vec4_f32(func_2(var_3.x, func_5(u_input.b, Struct_1(vec4<f32>(1893f, 1174f, -844f, -1382f), vec3<f32>(227f, 1044f, -2132f), true), var_3.yxw), Struct_1(vec4<f32>(1289f, 725f, 1259f, 636f), vec3<f32>(-171f, -1936f, 228f), global0[_wgslsmith_index_u32(var_1.x, 2u)])).a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, -218f, 1560f, -1513f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, -662f, 768f, 392f)))))), vec3<f32>(_wgslsmith_f_op_f32(-363f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(467f, 439f)), _wgslsmith_div_f32(-683f, 337f)))), 668f, 521f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~21233u, ~(~func_6(Struct_2(Struct_1(vec4<f32>(-1117f, -1000f, -724f, 1292f), vec3<f32>(-795f, -1382f, -1000f), false), Struct_1(vec4<f32>(420f, 1616f, 468f, 143f), vec3<f32>(614f, -744f, -1687f), true))))), 2u)]);
    global1 = array<vec2<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(68611u, var_1, func_1(~(var_3.x ^ _wgslsmith_add_u32(0u, 15384u))).a.xxw, var_5.b.x, -(~(0i)));
}

