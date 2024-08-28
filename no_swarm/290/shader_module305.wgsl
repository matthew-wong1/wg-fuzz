struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(247f, 327f, -940f, -548f), -425f, 0i), Struct_1(vec4<f32>(122f, -649f, 718f, -434f), -1553f, -13287i), Struct_1(vec4<f32>(-1226f, 436f, -791f, 675f), -529f, 2147483647i), Struct_1(vec4<f32>(-1345f, 1289f, -1401f, 2498f), -560f, 0i), Struct_1(vec4<f32>(-908f, -661f, -707f, -373f), -1849f, -3456i), Struct_1(vec4<f32>(512f, -107f, 746f, -779f), 1303f, 3520i), Struct_1(vec4<f32>(-619f, -1397f, -652f, 471f), 1000f, 36055i), Struct_1(vec4<f32>(1000f, -201f, 272f, 937f), 1000f, 54433i), Struct_1(vec4<f32>(1217f, 422f, 1201f, 949f), -855f, 0i), Struct_1(vec4<f32>(-1817f, 1029f, -1578f, 1300f), 1000f, 20790i), Struct_1(vec4<f32>(-435f, 1000f, 1000f, 993f), 1000f, i32(-2147483648)), Struct_1(vec4<f32>(-1854f, 768f, -539f, -3092f), 479f, 0i), Struct_1(vec4<f32>(894f, 755f, 321f, 1188f), 1303f, 50346i), Struct_1(vec4<f32>(741f, -1552f, 928f, 493f), -1218f, 2147483647i), Struct_1(vec4<f32>(253f, -982f, 1692f, 160f), -781f, -31212i), Struct_1(vec4<f32>(428f, 735f, -901f, -1149f), -2889f, 2147483647i), Struct_1(vec4<f32>(297f, -276f, 1167f, -2053f), 561f, -29085i), Struct_1(vec4<f32>(1108f, -369f, -265f, 1174f), -1000f, -46670i), Struct_1(vec4<f32>(877f, -299f, -1463f, -160f), -349f, 2147483647i), Struct_1(vec4<f32>(1395f, 571f, 1650f, 889f), 1364f, 1i), Struct_1(vec4<f32>(1000f, -1423f, 653f, -933f), -158f, -10023i), Struct_1(vec4<f32>(-465f, -997f, 877f, -202f), -129f, -1708i), Struct_1(vec4<f32>(-1031f, 528f, -211f, 1270f), -1404f, 12117i), Struct_1(vec4<f32>(2396f, 1060f, 912f, 1067f), -1002f, -18879i), Struct_1(vec4<f32>(-2397f, 612f, 143f, 1092f), -1041f, -12766i), Struct_1(vec4<f32>(2396f, -650f, -1551f, 1000f), -493f, -1i), Struct_1(vec4<f32>(1000f, 1061f, -1123f, 205f), 926f, 2147483647i), Struct_1(vec4<f32>(-517f, 831f, 1012f, -1742f), -789f, -31569i), Struct_1(vec4<f32>(-505f, -1619f, -1335f, -961f), -741f, 44600i), Struct_1(vec4<f32>(-1610f, 1625f, -195f, 1615f), 939f, 0i), Struct_1(vec4<f32>(120f, -182f, -646f, 552f), -864f, i32(-2147483648)), Struct_1(vec4<f32>(1010f, -426f, -1397f, -543f), 740f, 10652i));

var<private> global3: array<u32, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_clamp_u32(1u, ~(~u_input.c.x), ~165u)), 32u)];
    var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(11869u, u_input.b)), 32u)];
    return _wgslsmith_f_op_f32(sign(var_1.b));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global2 = array<Struct_1, 32>();
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-167f - _wgslsmith_f_op_f32(round(1047f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(396f, 1324f, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1369f - 1327f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -790f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1065f, -2270f))), countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -407i), vec2<i32>(0i, -22290i)))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, arg_0.x), ~reverseBits(20450u)), min(u_input.a.x, -_wgslsmith_mod_i32(min(42580i, u_input.a.x), ~31839i)));
    let var_1 = true;
    global3 = array<u32, 6>();
    global2 = array<Struct_1, 32>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(774f, var_0.a.a.x, _wgslsmith_f_op_f32(floor(-614f)), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(669f, -1000f)), 1000f)), global1.x), 4294967295u, _wgslsmith_mod_i32(min(i32(-1i) * -var_0.c, 1i), -global1.x));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_2 {
    let var_0 = false;
    let var_1 = var_0;
    var var_2 = -1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, arg_0, arg_2, 738f)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_2, 1171f)))))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, 304f, var_3.x), vec4<f32>(arg_2, var_3.x, arg_2, -300f))))));
    return func_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, abs(global3[_wgslsmith_index_u32(25043u, 6u)])), u_input.c.yy) ^ ~(~vec2<u32>(4294967295u, 33026u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    global1 = -_wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.d, -2147483647i, arg_0.c, -1i)), vec4<i32>(-1i) * -vec4<i32>(global1.x, 1i, global1.x, 1184i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3 | arg_0.c, _wgslsmith_div_i32(arg_3, -2147483647i), _wgslsmith_div_i32(arg_0.a.c, u_input.a.x), 1i) & select(vec4<i32>(u_input.a.x, arg_0.a.c, global1.x, -1i), vec4<i32>(-40178i, global1.x, 0i, arg_0.c) & vec4<i32>(arg_1.c, global1.x, global1.x, 2147483647i), vec4<bool>(true, true, true, true)), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, 0i, u_input.a.x), vec4<i32>(-29589i, -35007i, -1i, arg_1.c)), ~vec4<i32>(50533i, arg_3, u_input.a.x, -1i)));
    var var_0 = func_1(352f, true, arg_0.a.a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.b + -686f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2678f, _wgslsmith_f_op_f32(-360f * 866f))) + -1182f)) >= var_0.a.b;
    var var_2 = !(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)), true, true), !any(vec3<bool>(false, false, false))));
    let var_3 = func_2(vec2<u32>(reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(21839u, u_input.c.x), 6u)]), func_1(1f, true, _wgslsmith_f_op_f32(min(-1000f, arg_0.a.b))).b) ^ (min(vec2<u32>(19875u, global3[_wgslsmith_index_u32(44308u, 6u)]), vec2<u32>(1u, u_input.c.x)) << ((_wgslsmith_add_vec2_u32(u_input.c.zy, vec2<u32>(39721u, 4294967295u)) >> ((vec2<u32>(global3[_wgslsmith_index_u32(30617u, 6u)], 28927u) & u_input.c.yz) % vec2<u32>(32u))) % vec2<u32>(32u)))).a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(arg_0.a.a, func_1(var_0.a.a.x, false, -1211f).a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) + var_0.a.a.x)) + arg_0.a.a.x), ~reverseBits(abs(1i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<f32>, 25>();
    let var_0 = arg_3.x;
    global2 = array<Struct_1, 32>();
    global0 = array<vec2<f32>, 25>();
    global2 = array<Struct_1, 32>();
    return Struct_1(vec4<f32>(522f, _wgslsmith_div_f32(1511f, var_0), 827f, _wgslsmith_f_op_f32(arg_0.a.b * arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x + var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-221f, arg_3.x) + _wgslsmith_f_op_f32(arg_3.x - 1659f)))), -((_wgslsmith_add_i32(-7042i, u_input.d) | 2147483647i) ^ _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.d, arg_0.a.c, 1119i), -5996i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 32>();
    global0 = array<vec2<f32>, 25>();
    global3 = array<u32, 6>();
    global0 = array<vec2<f32>, 25>();
    var var_0 = func_5(Struct_2(global2[_wgslsmith_index_u32(0u, 32u)], 0u, _wgslsmith_sub_i32(u_input.d, u_input.d)), func_4(func_1(_wgslsmith_f_op_f32(1714f - _wgslsmith_f_op_f32(floor(-280f))), true, -393f), func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(777f + -1557f), _wgslsmith_div_f32(1000f, -1000f))), select(any(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1144f)), _wgslsmith_f_op_f32(525f + 796f)))).a, 81022u, min(min(global1.x, u_input.a.x), u_input.d >> (36195u % 32u))), ~vec3<i32>(u_input.a.x, 36872i, -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(975f, -2258f, 1892f, 992f)))), vec4<f32>(1040f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-531f - -326f), 1886f), 653f, _wgslsmith_f_op_f32(round(-389f)))));
    let var_1 = _wgslsmith_add_u32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(33456u, 6u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], u_input.c.x), vec3<u32>(11663u, 39551u, 57929u))), 6u)], _wgslsmith_mod_u32(select(select(global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], false), 1u, false), 4294967295u));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(1u >> (_wgslsmith_add_u32(~var_1, 4294967295u) % 32u), 32u)], select(u_input.b, max(global3[_wgslsmith_index_u32(~26716u, 6u)], 20036u), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true))), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_0.b, var_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-191f - var_2.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(sign(605f)), _wgslsmith_f_op_f32(var_0.a.x - -1178f)))), ~(vec4<u32>(u_input.b >> (27373u % 32u), 0u, _wgslsmith_mod_u32(4294967295u, 8618u), 1u) | _wgslsmith_div_vec4_u32(vec4<u32>(0u, global3[_wgslsmith_index_u32(39120u, 6u)], 4294967295u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u))));
}

