struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(837f, vec3<bool>(false, true, true), vec2<f32>(2655f, 753f)), vec2<i32>(5534i, 1i), Struct_1(1000f, vec3<bool>(true, true, false), vec2<f32>(-1298f, 345f)), vec3<f32>(1000f, -773f, 1289f), vec3<bool>(false, false, false)), Struct_2(Struct_1(-1440f, vec3<bool>(true, false, true), vec2<f32>(249f, -258f)), vec2<i32>(30104i, -1450i), Struct_1(-322f, vec3<bool>(false, false, true), vec2<f32>(-2490f, -614f)), vec3<f32>(549f, 272f, 481f), vec3<bool>(true, false, false)), Struct_2(Struct_1(-882f, vec3<bool>(false, true, true), vec2<f32>(-115f, -1000f)), vec2<i32>(0i, -50940i), Struct_1(-424f, vec3<bool>(false, true, true), vec2<f32>(-1634f, 840f)), vec3<f32>(-1923f, 359f, 104f), vec3<bool>(true, true, false)), Struct_2(Struct_1(1378f, vec3<bool>(true, false, false), vec2<f32>(101f, -136f)), vec2<i32>(1i, -13928i), Struct_1(-1103f, vec3<bool>(false, false, false), vec2<f32>(1635f, 120f)), vec3<f32>(-1000f, -197f, -363f), vec3<bool>(true, true, false)), Struct_2(Struct_1(-1000f, vec3<bool>(false, false, false), vec2<f32>(-1131f, 1576f)), vec2<i32>(-50408i, 2754i), Struct_1(-537f, vec3<bool>(true, false, true), vec2<f32>(1352f, 877f)), vec3<f32>(1000f, 461f, 122f), vec3<bool>(false, true, false)), Struct_2(Struct_1(142f, vec3<bool>(true, true, true), vec2<f32>(-797f, -1063f)), vec2<i32>(-14614i, -29426i), Struct_1(-1024f, vec3<bool>(true, true, false), vec2<f32>(-1536f, -1791f)), vec3<f32>(-179f, 840f, -1659f), vec3<bool>(false, false, false)), Struct_2(Struct_1(1064f, vec3<bool>(true, false, false), vec2<f32>(184f, -1000f)), vec2<i32>(0i, -66480i), Struct_1(1686f, vec3<bool>(true, false, true), vec2<f32>(140f, 883f)), vec3<f32>(-768f, -268f, -1000f), vec3<bool>(true, true, false)), Struct_2(Struct_1(-126f, vec3<bool>(true, true, true), vec2<f32>(534f, -1154f)), vec2<i32>(1i, -1i), Struct_1(907f, vec3<bool>(true, true, false), vec2<f32>(-439f, -739f)), vec3<f32>(-428f, -1000f, -604f), vec3<bool>(true, true, true)), Struct_2(Struct_1(1574f, vec3<bool>(true, true, true), vec2<f32>(-1766f, 1000f)), vec2<i32>(50661i, -38988i), Struct_1(-1150f, vec3<bool>(true, false, false), vec2<f32>(2078f, -1779f)), vec3<f32>(-515f, -507f, -1056f), vec3<bool>(false, false, false)), Struct_2(Struct_1(1215f, vec3<bool>(true, true, false), vec2<f32>(-873f, 197f)), vec2<i32>(-1i, 10671i), Struct_1(-1000f, vec3<bool>(true, false, true), vec2<f32>(295f, -203f)), vec3<f32>(689f, -678f, -1000f), vec3<bool>(false, false, true)), Struct_2(Struct_1(906f, vec3<bool>(false, true, false), vec2<f32>(1000f, -650f)), vec2<i32>(-1i, 28264i), Struct_1(-1000f, vec3<bool>(false, true, true), vec2<f32>(-846f, 1657f)), vec3<f32>(1000f, -1428f, 2595f), vec3<bool>(true, true, true)), Struct_2(Struct_1(-119f, vec3<bool>(false, false, false), vec2<f32>(366f, 163f)), vec2<i32>(i32(-2147483648), -17117i), Struct_1(1000f, vec3<bool>(false, true, true), vec2<f32>(1879f, 971f)), vec3<f32>(-828f, -116f, 1984f), vec3<bool>(true, true, true)), Struct_2(Struct_1(1278f, vec3<bool>(true, true, true), vec2<f32>(-954f, -433f)), vec2<i32>(0i, -4362i), Struct_1(-1593f, vec3<bool>(true, true, true), vec2<f32>(-2179f, 1073f)), vec3<f32>(310f, 1135f, -1000f), vec3<bool>(false, false, true)), Struct_2(Struct_1(-1044f, vec3<bool>(true, false, false), vec2<f32>(286f, -749f)), vec2<i32>(-48488i, 2147483647i), Struct_1(-212f, vec3<bool>(true, false, false), vec2<f32>(496f, 217f)), vec3<f32>(-121f, -258f, -281f), vec3<bool>(false, true, true)), Struct_2(Struct_1(-645f, vec3<bool>(true, false, true), vec2<f32>(-851f, 520f)), vec2<i32>(19202i, -4651i), Struct_1(252f, vec3<bool>(true, true, false), vec2<f32>(574f, 1982f)), vec3<f32>(1000f, 1000f, 1070f), vec3<bool>(false, true, true)), Struct_2(Struct_1(-2018f, vec3<bool>(false, true, true), vec2<f32>(154f, -374f)), vec2<i32>(29210i, -1i), Struct_1(-417f, vec3<bool>(true, false, false), vec2<f32>(-737f, 1527f)), vec3<f32>(-654f, 582f, -459f), vec3<bool>(true, false, true)), Struct_2(Struct_1(383f, vec3<bool>(false, true, true), vec2<f32>(-184f, -1010f)), vec2<i32>(-1i, 702i), Struct_1(-2492f, vec3<bool>(true, true, true), vec2<f32>(-895f, -914f)), vec3<f32>(-212f, -598f, -491f), vec3<bool>(true, false, false)), Struct_2(Struct_1(1000f, vec3<bool>(false, false, false), vec2<f32>(-609f, -476f)), vec2<i32>(0i, -1i), Struct_1(-847f, vec3<bool>(false, false, false), vec2<f32>(656f, -1000f)), vec3<f32>(-816f, 861f, 257f), vec3<bool>(false, false, true)), Struct_2(Struct_1(1000f, vec3<bool>(false, true, true), vec2<f32>(691f, 604f)), vec2<i32>(1i, -1i), Struct_1(-228f, vec3<bool>(false, true, true), vec2<f32>(1035f, 1195f)), vec3<f32>(803f, -506f, 233f), vec3<bool>(false, false, true)), Struct_2(Struct_1(-615f, vec3<bool>(false, false, true), vec2<f32>(2991f, -368f)), vec2<i32>(-1i, 1i), Struct_1(987f, vec3<bool>(false, true, false), vec2<f32>(679f, -1185f)), vec3<f32>(-727f, -862f, -1122f), vec3<bool>(false, true, true)), Struct_2(Struct_1(-1750f, vec3<bool>(false, true, true), vec2<f32>(629f, 1768f)), vec2<i32>(-28319i, i32(-2147483648)), Struct_1(-2478f, vec3<bool>(true, true, false), vec2<f32>(-581f, -1092f)), vec3<f32>(972f, 979f, 218f), vec3<bool>(true, true, false)), Struct_2(Struct_1(1047f, vec3<bool>(true, true, true), vec2<f32>(1140f, 1510f)), vec2<i32>(-1i, -37235i), Struct_1(-863f, vec3<bool>(false, false, true), vec2<f32>(-829f, 248f)), vec3<f32>(-796f, -114f, 1238f), vec3<bool>(true, false, false)), Struct_2(Struct_1(-1887f, vec3<bool>(true, true, true), vec2<f32>(-1009f, -128f)), vec2<i32>(-1i, -44844i), Struct_1(-1201f, vec3<bool>(false, false, true), vec2<f32>(1924f, -906f)), vec3<f32>(1500f, 106f, 1059f), vec3<bool>(false, false, false)), Struct_2(Struct_1(123f, vec3<bool>(false, false, true), vec2<f32>(813f, 355f)), vec2<i32>(0i, 7181i), Struct_1(-1346f, vec3<bool>(true, false, true), vec2<f32>(1365f, -555f)), vec3<f32>(-2276f, -2029f, -1000f), vec3<bool>(false, true, false)));

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<vec2<i32>, 20>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    global4 = arg_1.b.x;
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 24u)];
    global3 = array<vec2<i32>, 20>();
    global4 = var_0.e.x;
    return !(!(!arg_1.b.x));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    return ~countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(46551u, 13470u), max(u_input.a.x, arg_0)), min(abs(u_input.a.x), ~arg_0)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    global4 = (arg_0 & (_wgslsmith_f_op_f32(f32(-1f) * -1072f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x - 1145f)))) & ((0u >> (~_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)) > ~(~u_input.a.x));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.c.x))))));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~u_input.a.x, 16u)], global3[_wgslsmith_index_u32(1u & (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x)) << (_wgslsmith_sub_u32(44518u, func_3(u_input.a.x, vec4<bool>(false, arg_0, false, arg_1.e.x), arg_1.e.x)) % 32u)), 20u)], arg_1.c, arg_1.d, vec3<bool>(false, !arg_0, select(true, true, true)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1000f + var_1.c.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.c.x - arg_1.a.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-612f)) * _wgslsmith_f_op_f32(394f * arg_1.c.a)) - _wgslsmith_f_op_f32(-669f + _wgslsmith_f_op_f32(ceil(1868f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) - var_1.d.x), var_1.d.x);
    global2 = array<Struct_1, 16>();
    return vec3<bool>(!(arg_1.a.a <= arg_1.c.a), true, (false | all(vec4<bool>(true, true, true, true))) || !any(!global1[_wgslsmith_index_u32(u_input.a.x, 8u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 27917i;
    global0 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(448f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(726f + 928f), _wgslsmith_f_op_f32(f32(-1f) * -1296f)), true)), -2166f), _wgslsmith_f_op_f32(round(122f)));
    let var_2 = select(vec4<bool>(func_1(var_0, Struct_1(-931f, vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1466f, -1535f)))), true, any(func_2(true, global0[_wgslsmith_index_u32(0u, 24u)])) && true, all(vec3<bool>(true, true, true)) & false), select(vec4<bool>(_wgslsmith_mult_i32(1419i, var_0) > _wgslsmith_sub_i32(0i, var_0), false, true, func_2(false, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 20u)], Struct_1(918f, vec3<bool>(true, false, true), vec2<f32>(-2491f, 396f)), vec3<f32>(-1419f, -761f, -741f), vec3<bool>(false, false, true))).x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(select(false, false, true), true, true, true), vec4<bool>(var_0 > -1i, false, true, true), func_2(true, global0[_wgslsmith_index_u32(~u_input.a.x, 24u)]).x)), vec4<bool>(true, true, !func_1(2147483647i, Struct_1(679f, vec3<bool>(true, true, false), vec2<f32>(754f, -1266f))) & false, func_2(all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]).x));
    let var_3 = select(func_2(false, Struct_2(Struct_1(-1000f, vec3<bool>(var_2.x, var_2.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -669f))), -vec2<i32>(-31587i, 2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u) & _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), 16u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-500f, -971f, -1041f)))), !(!var_2.www))), !select(vec3<bool>(all(vec2<bool>(var_2.x, false)), true, true), vec3<bool>(true, false, var_2.x && false), var_2.xxy), all(!func_2(false, global0[_wgslsmith_index_u32(25453u, 24u)])));
    global4 = !(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) >= abs(u_input.a.x));
    let var_4 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(min(6096u, u_input.a.x), 29616u), u_input.a.x, _wgslsmith_clamp_u32(abs(u_input.a.x), firstTrailingBit(0u), 33064u)), ~(~vec3<u32>(u_input.a.x, 54703u, u_input.a.x) | (vec3<u32>(4294967295u, 1u, u_input.a.x) ^ vec3<u32>(4294967295u, 1u, 5182u)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1454f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2018f, -1865f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -1018f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -558f)))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -31489i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, 1489f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-986f, -525f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(126f, 1000f), vec2<f32>(327f, 1395f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-461f, 277f))))))));
}

