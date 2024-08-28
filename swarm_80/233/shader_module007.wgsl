struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(747f, -180f, 709f), false, Struct_2(0i, Struct_1(-472f, true, 482f, vec2<f32>(146f, -1000f)))), Struct_4(vec3<f32>(2353f, -1626f, 235f), false, Struct_2(18367i, Struct_1(1815f, false, -890f, vec2<f32>(-109f, 1218f)))), Struct_4(vec3<f32>(-1633f, 297f, 531f), true, Struct_2(51198i, Struct_1(-433f, false, 323f, vec2<f32>(-1932f, 768f)))), Struct_4(vec3<f32>(115f, -2045f, 1349f), true, Struct_2(-4187i, Struct_1(1000f, false, -1000f, vec2<f32>(625f, -193f)))), Struct_4(vec3<f32>(-391f, -1000f, -1759f), true, Struct_2(2147483647i, Struct_1(895f, true, -1011f, vec2<f32>(1075f, -1973f)))), Struct_4(vec3<f32>(1174f, -653f, -483f), false, Struct_2(i32(-2147483648), Struct_1(1454f, true, -946f, vec2<f32>(-615f, 1896f)))), Struct_4(vec3<f32>(-1624f, -431f, 1459f), true, Struct_2(39392i, Struct_1(-277f, false, 1563f, vec2<f32>(-563f, 1840f)))), Struct_4(vec3<f32>(-456f, 704f, -135f), false, Struct_2(8014i, Struct_1(-229f, false, 1086f, vec2<f32>(825f, -170f)))), Struct_4(vec3<f32>(-1002f, 1000f, 1373f), false, Struct_2(-1i, Struct_1(-845f, true, -361f, vec2<f32>(1437f, 209f)))), Struct_4(vec3<f32>(890f, -306f, -500f), false, Struct_2(i32(-2147483648), Struct_1(498f, true, -195f, vec2<f32>(1538f, -1441f)))), Struct_4(vec3<f32>(-1302f, -629f, 483f), false, Struct_2(53620i, Struct_1(-1371f, true, -731f, vec2<f32>(1532f, -618f)))), Struct_4(vec3<f32>(-1000f, 768f, -859f), false, Struct_2(30673i, Struct_1(-913f, true, -545f, vec2<f32>(-2066f, -701f)))), Struct_4(vec3<f32>(1419f, 556f, 2486f), true, Struct_2(2147483647i, Struct_1(319f, false, 1000f, vec2<f32>(-1632f, 790f)))), Struct_4(vec3<f32>(288f, -339f, -150f), true, Struct_2(0i, Struct_1(396f, true, -497f, vec2<f32>(469f, -350f)))), Struct_4(vec3<f32>(201f, -1000f, 263f), false, Struct_2(36586i, Struct_1(-908f, true, -1000f, vec2<f32>(766f, -1236f)))), Struct_4(vec3<f32>(1702f, -614f, -1890f), false, Struct_2(24997i, Struct_1(927f, true, 1000f, vec2<f32>(-1384f, -1960f)))), Struct_4(vec3<f32>(960f, 1000f, -1269f), true, Struct_2(30401i, Struct_1(-596f, false, -128f, vec2<f32>(1000f, -419f)))), Struct_4(vec3<f32>(523f, -1226f, -593f), true, Struct_2(6756i, Struct_1(382f, true, 182f, vec2<f32>(-506f, -111f)))), Struct_4(vec3<f32>(1886f, 124f, -2385f), false, Struct_2(i32(-2147483648), Struct_1(-966f, false, 2106f, vec2<f32>(1289f, -891f)))), Struct_4(vec3<f32>(235f, -579f, 330f), true, Struct_2(i32(-2147483648), Struct_1(-1600f, false, -1000f, vec2<f32>(544f, -817f)))), Struct_4(vec3<f32>(366f, 1000f, 1097f), false, Struct_2(-13997i, Struct_1(676f, true, -166f, vec2<f32>(170f, 499f)))), Struct_4(vec3<f32>(509f, -1175f, 218f), false, Struct_2(1i, Struct_1(218f, false, -1473f, vec2<f32>(1458f, -221f)))), Struct_4(vec3<f32>(494f, 605f, -923f), true, Struct_2(-13945i, Struct_1(-1000f, true, -559f, vec2<f32>(297f, -872f)))), Struct_4(vec3<f32>(519f, -737f, -971f), false, Struct_2(23119i, Struct_1(-1700f, true, -496f, vec2<f32>(-1029f, -488f)))), Struct_4(vec3<f32>(-1317f, 1000f, -2234f), false, Struct_2(24387i, Struct_1(946f, false, -1671f, vec2<f32>(744f, -146f)))), Struct_4(vec3<f32>(109f, 113f, -116f), true, Struct_2(1949i, Struct_1(1431f, true, -887f, vec2<f32>(2228f, -1232f)))), Struct_4(vec3<f32>(459f, 1000f, 149f), true, Struct_2(13094i, Struct_1(451f, true, -1000f, vec2<f32>(-256f, -1181f)))), Struct_4(vec3<f32>(555f, 213f, -532f), false, Struct_2(-1i, Struct_1(-1716f, true, -443f, vec2<f32>(278f, 135f)))), Struct_4(vec3<f32>(-1029f, 689f, 681f), false, Struct_2(24843i, Struct_1(221f, false, 285f, vec2<f32>(147f, 754f)))), Struct_4(vec3<f32>(799f, 524f, -188f), true, Struct_2(-20475i, Struct_1(1000f, false, -1000f, vec2<f32>(700f, 1000f)))), Struct_4(vec3<f32>(1531f, 1836f, -1560f), true, Struct_2(i32(-2147483648), Struct_1(-364f, false, 2219f, vec2<f32>(437f, -261f)))), Struct_4(vec3<f32>(-1146f, 1123f, 767f), false, Struct_2(i32(-2147483648), Struct_1(239f, false, 790f, vec2<f32>(298f, 1103f)))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = -36291i;
    let var_1 = _wgslsmith_sub_vec3_i32(~(firstLeadingBit(vec3<i32>(u_input.b, 0i, -2147483647i)) | firstLeadingBit(vec3<i32>(var_0, -1i, u_input.b))) ^ (vec3<i32>(-1i) * -vec3<i32>(var_0, -1i, var_0)), (abs(vec3<i32>(var_0, var_0, u_input.b) << (arg_0.zzy % vec3<u32>(32u))) | vec3<i32>(16276i & var_0, var_0, _wgslsmith_mult_i32(var_0, -77587i))) | (~(-vec3<i32>(u_input.b, -4186i, 2147483647i)) ^ (vec3<i32>(-22760i, var_0, 12020i) & -vec3<i32>(var_0, var_0, u_input.b))));
    var var_2 = arg_0.x;
    var var_3 = countOneBits(countOneBits(arg_0.x));
    global0 = array<vec3<bool>, 21>();
    return arg_1.x;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = -787f;
    var var_1 = true;
    var var_2 = arg_1;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b.a), 510f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, u_input.a, arg_1.d, arg_0), vec4<u32>(45173u, 90160u, 40515u, 1u)), vec3<f32>(649f, 2234f, arg_1.b.b.a))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(round(var_0))))), -409f);
    var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(func_3(vec4<u32>(46163u, arg_1.d, 0u, 0u), vec3<f32>(-2061f, -382f, arg_1.a.b.d.x))))), 1417f, -984f)));
    return !(!var_2.a.b.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec3<f32> {
    global1 = array<Struct_4, 32>();
    var var_0 = arg_1.zwy;
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 32u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(var_1.c.b.a, var_1.c.b.a, any(global0[_wgslsmith_index_u32(1u, 21u)]) == func_2(var_0.x, Struct_3(Struct_2(17809i, Struct_1(var_1.c.b.a, var_1.b, var_1.c.b.c, vec2<f32>(-1555f, 1000f))), Struct_2(0i, var_1.c.b), vec2<bool>(var_1.c.b.b, var_1.c.b.b), arg_1.x), 1i))), true, _wgslsmith_f_op_f32(var_1.c.b.a * 459f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.xy)))));
    let var_3 = -(max(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.a, 9696i), vec2<i32>(12453i, 2147483647i)), ~vec2<i32>(38732i, 2147483647i)), vec2<i32>(1i, -1i)) ^ vec2<i32>(var_1.c.a, 1i));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1080f, _wgslsmith_f_op_f32(332f + -1953f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(422f, 194f) + _wgslsmith_div_f32(-1000f, -992f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-599f, 1000f)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1464f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -243f, 615f) * vec4<f32>(-1873f, 619f, 1000f, var_0.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-891f, 1321f, -1150f, -194f)))))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.zxw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.xzy, _wgslsmith_f_op_vec3_f32(func_1(select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 4294967295u), true), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 4029u)))))) + _wgslsmith_f_op_vec3_f32(floor(var_1.xxy))));
    let var_3 = !(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))));
    global1 = array<Struct_4, 32>();
    let var_4 = global1[_wgslsmith_index_u32(19794u, 32u)];
    let var_5 = var_4.c.a;
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, var_4.a.x, 1496f, 384f) * vec4<f32>(-1404f, var_0.x, 1000f, var_2.x)), vec4<f32>(var_4.c.b.d.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(select(-154f, -1578f, var_3.x))), var_3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(-576f)), _wgslsmith_f_op_f32(ceil(var_1.x)), -828f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(570f, -548f, var_2.x, -1003f) - vec4<f32>(377f, 2179f, 358f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1215f, var_0.x, 193f, -992f) * vec4<f32>(var_4.c.b.c, 425f, 286f, 294f)))))), vec4<f32>(var_2.x, _wgslsmith_f_op_vec3_f32(func_1(~vec2<u32>(0u, 1u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 0u, 1413u, u_input.a)), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, var_3.x, var_3.x))))).x, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -140f)))), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)) - _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(u_input.a, 64909u), vec4<u32>(max(u_input.a, 1u), _wgslsmith_clamp_u32(u_input.a, 49826u, u_input.a), firstLeadingBit(u_input.a), u_input.a ^ 77851u))).x), (_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -40579i), -vec2<i32>(u_input.b, u_input.b)) << (vec2<u32>(77348u, 1u) % vec2<u32>(32u))) ^ vec2<i32>(i32(-1i) * -49098i, -61381i), _wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1768f, 291f), 1000f, 428f) * var_4.a)));
}

