struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 39125u), vec3<bool>(false, false, false), 762f);

var<private> global1: array<f32, 16> = array<f32, 16>(715f, 554f, -735f, 510f, 1326f, -329f, -1614f, 824f, 1442f, 376f, 1544f, -591f, 184f, -1175f, -292f, -505f);

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(-1345f, Struct_2(vec2<i32>(26682i, 1i), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(true, true, true), -611f), i32(-2147483648)), vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_3(408f, Struct_2(vec2<i32>(39694i, 0i), Struct_1(vec3<u32>(4294967295u, 0u, 31006u), vec3<bool>(false, false, true), 459f), 1i), vec3<i32>(1i, i32(-2147483648), -23868i)), Struct_3(-1707f, Struct_2(vec2<i32>(29724i, 31881i), Struct_1(vec3<u32>(4294967295u, 46534u, 0u), vec3<bool>(true, false, false), -1887f), 1i), vec3<i32>(-1i, 2147483647i, 1i)), Struct_3(722f, Struct_2(vec2<i32>(2147483647i, 20428i), Struct_1(vec3<u32>(11660u, 0u, 0u), vec3<bool>(false, true, false), 921f), -1i), vec3<i32>(18420i, -44941i, -30584i)), Struct_3(528f, Struct_2(vec2<i32>(-1i, 1i), Struct_1(vec3<u32>(32316u, 11974u, 35050u), vec3<bool>(false, false, false), 715f), 416i), vec3<i32>(1i, -1i, -1i)), Struct_3(475f, Struct_2(vec2<i32>(i32(-2147483648), -37216i), Struct_1(vec3<u32>(4294967295u, 0u, 39679u), vec3<bool>(true, true, true), -944f), 25351i), vec3<i32>(38276i, 4714i, -21902i)), Struct_3(-646f, Struct_2(vec2<i32>(i32(-2147483648), -1i), Struct_1(vec3<u32>(0u, 1u, 55790u), vec3<bool>(true, true, false), 1335f), 0i), vec3<i32>(-16802i, -42674i, 2147483647i)), Struct_3(-750f, Struct_2(vec2<i32>(0i, i32(-2147483648)), Struct_1(vec3<u32>(0u, 1u, 27770u), vec3<bool>(false, false, false), -1357f), 19989i), vec3<i32>(2147483647i, 13908i, -19145i)), Struct_3(-966f, Struct_2(vec2<i32>(-14859i, 16920i), Struct_1(vec3<u32>(95746u, 4294967295u, 28892u), vec3<bool>(true, true, false), 311f), 0i), vec3<i32>(-1i, 32275i, 1i)), Struct_3(-2354f, Struct_2(vec2<i32>(2147483647i, -88649i), Struct_1(vec3<u32>(0u, 1u, 66699u), vec3<bool>(false, false, true), -2317f), -3641i), vec3<i32>(-25895i, -1i, -1i)), Struct_3(-222f, Struct_2(vec2<i32>(-1i, -2956i), Struct_1(vec3<u32>(90992u, 4294967295u, 15459u), vec3<bool>(false, false, true), -605f), -37951i), vec3<i32>(-46466i, 87246i, 2147483647i)), Struct_3(2694f, Struct_2(vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec3<u32>(61688u, 0u, 4294967295u), vec3<bool>(true, true, false), -1742f), -1i), vec3<i32>(8551i, -785i, -4356i)), Struct_3(1637f, Struct_2(vec2<i32>(2147483647i, 21897i), Struct_1(vec3<u32>(24554u, 58091u, 29941u), vec3<bool>(false, false, false), 2057f), -28191i), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_3(1919f, Struct_2(vec2<i32>(32554i, -21052i), Struct_1(vec3<u32>(1u, 4294967295u, 48348u), vec3<bool>(true, false, false), 362f), 12903i), vec3<i32>(53887i, -51249i, 2147483647i)), Struct_3(-622f, Struct_2(vec2<i32>(-289i, 4875i), Struct_1(vec3<u32>(21260u, 24525u, 1u), vec3<bool>(true, true, false), 1223f), 0i), vec3<i32>(35056i, 2147483647i, 16817i)), Struct_3(478f, Struct_2(vec2<i32>(2147483647i, -31282i), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(false, true, true), -433f), 1i), vec3<i32>(-6518i, -1i, 1i)), Struct_3(-1119f, Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(vec3<u32>(1966u, 1u, 1278u), vec3<bool>(false, true, false), -616f), 0i), vec3<i32>(2147483647i, 1i, 6483i)), Struct_3(-833f, Struct_2(vec2<i32>(i32(-2147483648), 24223i), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(true, true, true), -722f), 2147483647i), vec3<i32>(16113i, 1i, 2147483647i)), Struct_3(317f, Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec3<u32>(4294967295u, 1u, 30900u), vec3<bool>(true, true, true), 799f), 1i), vec3<i32>(-1i, -11273i, 35752i)), Struct_3(1679f, Struct_2(vec2<i32>(i32(-2147483648), -11087i), Struct_1(vec3<u32>(43629u, 34015u, 35956u), vec3<bool>(true, false, true), -1486f), i32(-2147483648)), vec3<i32>(45900i, -17336i, 2147483647i)), Struct_3(197f, Struct_2(vec2<i32>(-20533i, 1i), Struct_1(vec3<u32>(85553u, 0u, 31690u), vec3<bool>(true, false, false), -1000f), 9738i), vec3<i32>(-14904i, -23574i, 2147483647i)), Struct_3(891f, Struct_2(vec2<i32>(0i, 0i), Struct_1(vec3<u32>(1u, 5850u, 1u), vec3<bool>(true, false, false), -2186f), 1i), vec3<i32>(-15005i, -17462i, -1i)), Struct_3(740f, Struct_2(vec2<i32>(-62957i, 1i), Struct_1(vec3<u32>(4294967295u, 55887u, 4294967295u), vec3<bool>(true, true, true), -866f), i32(-2147483648)), vec3<i32>(1i, -1i, 0i)), Struct_3(176f, Struct_2(vec2<i32>(42508i, 1i), Struct_1(vec3<u32>(8094u, 0u, 1u), vec3<bool>(false, true, true), -2307f), -20151i), vec3<i32>(37261i, i32(-2147483648), 23935i)), Struct_3(443f, Struct_2(vec2<i32>(-24518i, 1i), Struct_1(vec3<u32>(1u, 48168u, 0u), vec3<bool>(false, false, false), 1000f), 2147483647i), vec3<i32>(0i, 1i, 2147483647i)), Struct_3(-1000f, Struct_2(vec2<i32>(47610i, 0i), Struct_1(vec3<u32>(1u, 4294967295u, 44053u), vec3<bool>(true, false, true), 1021f), 0i), vec3<i32>(-42237i, 16095i, -38947i)), Struct_3(-991f, Struct_2(vec2<i32>(33622i, i32(-2147483648)), Struct_1(vec3<u32>(9818u, 0u, 0u), vec3<bool>(true, false, false), 913f), -16106i), vec3<i32>(-1i, 32668i, 15005i)), Struct_3(929f, Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec3<u32>(0u, 25627u, 33470u), vec3<bool>(false, true, false), 1000f), 0i), vec3<i32>(0i, 0i, 0i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(vec2<i32>(max(~u_input.b, abs(u_input.e.x)), firstLeadingBit(-2527i)) ^ u_input.e, Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.x, 16u)]), _wgslsmith_f_op_f32(1134f - -709f)))), u_input.b);
    var var_1 = select(vec2<u32>(global0.a.x, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.a.x ^ var_0.b.a.x, firstTrailingBit(7178u)), _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)), !global0.b.zx) | u_input.a;
    global0 = var_0.b;
    let var_2 = ~(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a.x, var_0.a.x, 39204i, -1i) ^ vec4<i32>(-3873i, -39764i, u_input.e.x, u_input.e.x)), min(vec4<i32>(2312i, -47811i, u_input.e.x, 53236i) ^ vec4<i32>(u_input.e.x, 9097i, -2147483647i, u_input.e.x), abs(vec4<i32>(u_input.e.x, 1i, -2147483647i, 2147483647i)))) ^ (vec4<i32>(-1i) * -min(vec4<i32>(var_0.c, 3125i, u_input.b, -10160i), vec4<i32>(4061i, u_input.e.x, 8057i, 28710i))));
    var var_3 = var_0.c;
    return _wgslsmith_div_u32(_wgslsmith_clamp_u32(~var_0.b.a.x, abs(30727u >> (var_0.b.a.x % 32u)), ~10100u) >> ((~(~var_1.x) ^ (~var_1.x >> (~73480u % 32u))) % 32u), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~global0.a, ~global0.a), _wgslsmith_sub_u32(global0.a.x, 4294967295u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(-_wgslsmith_add_vec2_i32(u_input.e, u_input.e), Struct_1(reverseBits(~global0.a), arg_0.b.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.b.b.c)), global1[_wgslsmith_index_u32(0u, 16u)])) + _wgslsmith_f_op_f32(f32(-1f) * -908f))), u_input.b);
    var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1253f, 505f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(-2117f + 967f)) - -349f)));
    var var_2 = any(var_0.b.b);
    var var_3 = ~var_0.a;
    return Struct_1(vec3<u32>(abs(global0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, abs(arg_0.b.b.a.x), ~4294967295u), (arg_0.b.b.a ^ arg_0.b.b.a) << (firstLeadingBit(arg_0.b.b.a) % vec3<u32>(32u))), abs(_wgslsmith_mod_u32(arg_0.b.b.a.x, ~37031u))), global0.b, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_3(), 16u)]));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-534f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1652f))), -1500f, all(select(select(vec4<bool>(true, false, true, arg_2.b.b.x), vec4<bool>(global0.b.x, global0.b.x, true, true), global0.b.x), select(vec4<bool>(arg_2.b.b.x, arg_0.b.b.b.x, true, arg_1.b.b.x), vec4<bool>(arg_0.b.b.b.x, false, arg_0.b.b.b.x, arg_1.b.b.x), vec4<bool>(true, arg_0.b.b.b.x, true, true)), select(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, arg_2.b.b.x, arg_1.b.b.x, true), vec4<bool>(arg_2.b.b.x, false, true, false)))))));
    let var_1 = arg_1.b;
    let var_2 = firstTrailingBit(arg_2.a);
    let var_3 = 2147483647i;
    var var_4 = arg_0;
    return !vec3<bool>(!func_2(global2[_wgslsmith_index_u32(u_input.d, 28u)], _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-613f, global0.c, arg_2.b.c)))).b.x, -u_input.e.x == 0i, func_2(global2[_wgslsmith_index_u32(reverseBits(~arg_2.b.a.x), 28u)], vec3<f32>(-588f, _wgslsmith_f_op_f32(min(1776f, 716f)), -200f)).b.x);
}

fn func_1() -> u32 {
    global1 = array<f32, 16>();
    let var_0 = Struct_1(global0.a, vec3<bool>(any(!vec2<bool>(global0.b.x, false)), true, _wgslsmith_div_u32(0u, global0.a.x) <= _wgslsmith_add_u32(firstTrailingBit(4294967295u), 0u)), _wgslsmith_f_op_f32(-global0.c));
    var var_1 = Struct_1(global0.a, func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - global0.c)), Struct_2(u_input.e ^ vec2<i32>(-2147483647i, 42082i), func_2(Struct_3(var_0.c, Struct_2(u_input.e, Struct_1(global0.a, var_0.b, -1615f), -2147483647i), vec3<i32>(u_input.b, 23379i, -1i)), vec3<f32>(1000f, -1000f, 1000f)), ~u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, 1806i, 0i), ~vec3<i32>(2147483647i, 34005i, -2147483647i))), Struct_2(~_wgslsmith_mod_vec2_i32(vec2<i32>(17860i, u_input.e.x), u_input.e), func_2(Struct_3(1000f, Struct_2(vec2<i32>(36157i, 16891i), Struct_1(global0.a, vec3<bool>(var_0.b.x, false, true), 1029f), u_input.b), vec3<i32>(u_input.b, -98295i, -1i)), vec3<f32>(151f, -280f, -1985f)), -44369i), Struct_2(abs(vec2<i32>(0i, u_input.e.x)), Struct_1(vec3<u32>(50976u, u_input.a.x, u_input.c) & var_0.a, vec3<bool>(global0.b.x, var_0.b.x, global0.b.x), _wgslsmith_f_op_f32(999f - 1719f)), -24638i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)), _wgslsmith_f_op_f32(-func_2(Struct_3(var_0.c, Struct_2(vec2<i32>(-15254i, 0i), Struct_1(vec3<u32>(1u, 44983u, 36429u), var_0.b, -319f), u_input.b), vec3<i32>(u_input.e.x, 2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2077f, global0.c, -1171f))).c)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 34152u, ~(~(~var_1.a.x))), var_1.a);
    global2 = array<Struct_3, 28>();
    return max(global0.a.x, global0.a.x);
}

fn func_5(arg_0: i32, arg_1: u32) -> Struct_1 {
    global1 = array<f32, 16>();
    var var_0 = countOneBits(abs(0u)) & _wgslsmith_mult_u32(~(~func_3()), select(global0.a.x, 0u, !(61001i != u_input.b)));
    let var_1 = Struct_2(_wgslsmith_add_vec2_i32(~min(vec2<i32>(arg_0, 1i), _wgslsmith_div_vec2_i32(u_input.e, u_input.e)), ~(~select(u_input.e, u_input.e, vec2<bool>(true, false)))), func_2(global2[_wgslsmith_index_u32(~(~(global0.a.x & global0.a.x)), 28u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-362f, -2005f, global0.c), vec3<f32>(global0.c, global1[_wgslsmith_index_u32(61841u, 16u)], -948f)))))), (6086i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.e.x), vec2<i32>(19516i, u_input.e.x) | u_input.e)) << (_wgslsmith_mod_u32(func_2(Struct_3(133f, Struct_2(u_input.e, Struct_1(global0.a, vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(1u, 16u)]), arg_0), vec3<i32>(u_input.b, u_input.b, 584i)), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)], global1[_wgslsmith_index_u32(arg_1, 16u)])).a.x, _wgslsmith_mod_u32(global0.a.x, arg_1)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(633f, var_1.b.c)));
    let var_3 = var_1.b.a.x << (arg_1 % 32u);
    return Struct_1(~vec3<u32>(~1u, 4294967295u, 1u), select(!func_4(Struct_3(1537f, Struct_2(vec2<i32>(u_input.b, arg_0), Struct_1(vec3<u32>(83791u, 30993u, 75510u), vec3<bool>(global0.b.x, false, false), var_1.b.c), 27554i), vec3<i32>(2147483647i, var_1.c, -10297i)), Struct_2(var_1.a, Struct_1(vec3<u32>(var_1.b.a.x, 1u, 4294967295u), vec3<bool>(global0.b.x, false, global0.b.x), 820f), 11942i), var_1), vec3<bool>((var_1.b.b.x != false) || false, func_4(Struct_3(-624f, Struct_2(var_1.a, var_1.b, 2147483647i), vec3<i32>(arg_0, -2147483647i, var_1.c)), var_1, Struct_2(vec2<i32>(u_input.b, u_input.b), Struct_1(global0.a, vec3<bool>(global0.b.x, false, global0.b.x), -1188f), -11492i)).x | (global0.a.x > 1u), true), global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) - var_1.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.x;
    global0 = func_5(-13779i, ~(global0.a.x ^ (global0.a.x << (func_1() % 32u))));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.d | u_input.d, 16u)];
    global2 = array<Struct_3, 28>();
    var var_2 = Struct_1(countOneBits(~_wgslsmith_add_vec3_u32(global0.a, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 4294967295u, global0.a.x), global0.a))), func_5(-(~(u_input.e.x >> (1u % 32u))), func_5(_wgslsmith_sub_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-7932i, -1i), u_input.e)), global0.a.x).a.x).b, global1[_wgslsmith_index_u32(u_input.d, 16u)]);
    let var_3 = firstLeadingBit(1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, min(~u_input.e, vec2<i32>(~(-2147483647i), -u_input.b)), var_2.c, ~(_wgslsmith_mod_i32(-u_input.e.x, -u_input.b) & (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 1i, -1i, u_input.b), vec4<i32>(u_input.b, 2147483647i, 2147483647i, u_input.e.x)) & u_input.e.x)));
}

