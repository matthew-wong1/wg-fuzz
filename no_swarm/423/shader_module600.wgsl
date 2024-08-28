struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<f32>(391f, -953f), Struct_1(-467f, vec4<i32>(26174i, -33390i, -8370i, 2147483647i)), vec4<f32>(112f, -588f, 249f, 1423f), Struct_1(-1214f, vec4<i32>(-54147i, 48695i, -18009i, 14733i)), vec2<f32>(1143f, 192f)), Struct_3(vec2<f32>(-907f, 1127f), Struct_1(-1279f, vec4<i32>(47763i, -1i, -14269i, 1i)), vec4<f32>(443f, -1645f, -867f, -1818f), Struct_1(-2462f, vec4<i32>(-25086i, 97694i, -9243i, 1i)), vec2<f32>(-815f, 477f)), Struct_3(vec2<f32>(-302f, 291f), Struct_1(327f, vec4<i32>(-14767i, -98819i, -10007i, 13023i)), vec4<f32>(662f, -245f, -1050f, -551f), Struct_1(-719f, vec4<i32>(-66345i, i32(-2147483648), -25452i, -58874i)), vec2<f32>(1704f, 2625f)), Struct_3(vec2<f32>(-1830f, -1086f), Struct_1(686f, vec4<i32>(i32(-2147483648), 0i, -10736i, 0i)), vec4<f32>(601f, 641f, 156f, 369f), Struct_1(719f, vec4<i32>(-42696i, 0i, 0i, 2147483647i)), vec2<f32>(-1103f, -327f)), Struct_3(vec2<f32>(-535f, -684f), Struct_1(-964f, vec4<i32>(29253i, -10756i, i32(-2147483648), 7739i)), vec4<f32>(-1110f, 665f, -605f, -1430f), Struct_1(645f, vec4<i32>(-7894i, -1i, -16214i, 16894i)), vec2<f32>(553f, -268f)), Struct_3(vec2<f32>(1251f, 1907f), Struct_1(-1538f, vec4<i32>(i32(-2147483648), -1i, -72665i, -15956i)), vec4<f32>(-671f, -437f, 1350f, 1414f), Struct_1(2079f, vec4<i32>(-31683i, 0i, -1i, -1i)), vec2<f32>(-270f, 1174f)), Struct_3(vec2<f32>(787f, -275f), Struct_1(1619f, vec4<i32>(-4337i, 1i, -1i, 2147483647i)), vec4<f32>(717f, -335f, 847f, -1388f), Struct_1(114f, vec4<i32>(0i, -30816i, i32(-2147483648), -10223i)), vec2<f32>(-445f, 1000f)), Struct_3(vec2<f32>(-343f, -272f), Struct_1(1000f, vec4<i32>(0i, 14909i, -50242i, 1i)), vec4<f32>(-1305f, -176f, 433f, -1033f), Struct_1(1236f, vec4<i32>(-9695i, i32(-2147483648), -47157i, 1i)), vec2<f32>(1149f, 551f)), Struct_3(vec2<f32>(1000f, -1058f), Struct_1(551f, vec4<i32>(-1i, 6894i, -39608i, 2147483647i)), vec4<f32>(-264f, 214f, -328f, -2496f), Struct_1(-1298f, vec4<i32>(0i, 0i, 23756i, i32(-2147483648))), vec2<f32>(-564f, 130f)), Struct_3(vec2<f32>(-1519f, -962f), Struct_1(264f, vec4<i32>(78904i, 5208i, -9122i, 2147483647i)), vec4<f32>(-1663f, -1116f, -681f, -140f), Struct_1(-1600f, vec4<i32>(2147483647i, 1i, 39957i, 2832i)), vec2<f32>(129f, 1000f)), Struct_3(vec2<f32>(817f, 183f), Struct_1(-390f, vec4<i32>(1i, -6586i, -1i, -7939i)), vec4<f32>(-1926f, -944f, -958f, 823f), Struct_1(-122f, vec4<i32>(-61307i, 52019i, 12750i, 2147483647i)), vec2<f32>(1121f, -1078f)), Struct_3(vec2<f32>(261f, 279f), Struct_1(729f, vec4<i32>(38209i, -1i, -72782i, 1i)), vec4<f32>(-108f, 745f, 773f, 720f), Struct_1(-650f, vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648))), vec2<f32>(-532f, -368f)), Struct_3(vec2<f32>(-159f, 624f), Struct_1(-1587f, vec4<i32>(31838i, 2147483647i, 22931i, 0i)), vec4<f32>(-701f, -131f, 359f, 776f), Struct_1(-737f, vec4<i32>(-4891i, 0i, 2147483647i, 1i)), vec2<f32>(1114f, 128f)), Struct_3(vec2<f32>(-2455f, -155f), Struct_1(-661f, vec4<i32>(1i, -13705i, -1i, -3033i)), vec4<f32>(640f, -521f, -581f, 2523f), Struct_1(-634f, vec4<i32>(1i, -1i, -53174i, 1i)), vec2<f32>(400f, -1362f)), Struct_3(vec2<f32>(1190f, -554f), Struct_1(-898f, vec4<i32>(i32(-2147483648), -21236i, 45131i, i32(-2147483648))), vec4<f32>(-1176f, -469f, -389f, -1000f), Struct_1(-2157f, vec4<i32>(2147483647i, -9908i, -82408i, 17670i)), vec2<f32>(858f, 591f)), Struct_3(vec2<f32>(-351f, 1539f), Struct_1(-1147f, vec4<i32>(-1i, -8161i, 9503i, 0i)), vec4<f32>(-798f, 134f, 1000f, 138f), Struct_1(-606f, vec4<i32>(2147483647i, i32(-2147483648), 6585i, i32(-2147483648))), vec2<f32>(-1356f, -2177f)), Struct_3(vec2<f32>(-1366f, -1660f), Struct_1(-1023f, vec4<i32>(-1i, 6529i, i32(-2147483648), 19516i)), vec4<f32>(-350f, 311f, -1383f, 2851f), Struct_1(-959f, vec4<i32>(-9916i, 2147483647i, 2147483647i, 2147483647i)), vec2<f32>(-149f, -1031f)), Struct_3(vec2<f32>(1612f, 150f), Struct_1(-325f, vec4<i32>(-28072i, 43381i, 1701i, i32(-2147483648))), vec4<f32>(1362f, 515f, 1055f, -916f), Struct_1(-593f, vec4<i32>(16377i, -13566i, 1i, 31424i)), vec2<f32>(-113f, -1346f)), Struct_3(vec2<f32>(-520f, 1181f), Struct_1(-566f, vec4<i32>(30152i, i32(-2147483648), 2147483647i, -1i)), vec4<f32>(1361f, 913f, -2923f, 1014f), Struct_1(1000f, vec4<i32>(-1i, -2901i, i32(-2147483648), 0i)), vec2<f32>(1614f, 1000f)), Struct_3(vec2<f32>(414f, -2236f), Struct_1(2271f, vec4<i32>(1i, 2147483647i, -7284i, 1i)), vec4<f32>(-1439f, 997f, 580f, -702f), Struct_1(-812f, vec4<i32>(-1i, 21205i, -20386i, -4986i)), vec2<f32>(-1844f, -198f)), Struct_3(vec2<f32>(2307f, 187f), Struct_1(-1292f, vec4<i32>(-1i, 20217i, -41805i, -35638i)), vec4<f32>(-355f, -229f, 570f, 459f), Struct_1(-1000f, vec4<i32>(-7129i, -33726i, i32(-2147483648), 54544i)), vec2<f32>(-286f, 1454f)), Struct_3(vec2<f32>(-1538f, 335f), Struct_1(1000f, vec4<i32>(0i, 2147483647i, -25732i, 1i)), vec4<f32>(-2212f, 276f, -540f, -768f), Struct_1(-1858f, vec4<i32>(i32(-2147483648), -35851i, 0i, 15415i)), vec2<f32>(1000f, 2374f)));

var<private> global1: Struct_1 = Struct_1(463f, vec4<i32>(2147483647i, 27388i, -2532i, 1i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let var_0 = vec4<bool>(false, arg_0.x, all(!vec4<bool>(any(arg_0), -7687i < global1.b.x, arg_0.x, select(arg_0.x, arg_0.x, arg_0.x))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 572f)), _wgslsmith_f_op_f32(-arg_1.x), 651f)));
    return var_0.yww;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = all(select(vec3<bool>(all(func_3(vec3<bool>(true, true, true), vec3<f32>(global1.a, global1.a, global1.a))), true, all(vec4<bool>(true, false, true, true))), vec3<bool>(true, arg_0.x >= -1i, all(vec2<bool>(true, true))), false));
    let var_1 = select(_wgslsmith_add_i32(0i, u_input.c >> (u_input.e.x % 32u)), i32(-1i) * -1i, !var_0) & -1i;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(988f + _wgslsmith_f_op_f32(f32(-1f) * -218f)), _wgslsmith_mult_vec3_u32(u_input.e.ywx, ~vec3<u32>(1u, 0u, 1u) & u_input.e.wwy), Struct_2(vec4<bool>(func_3(vec3<bool>(false, false, false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, global1.a, global1.a)))).x, _wgslsmith_mod_u32(1u, u_input.b.x) != ~13612u, (var_0 || false) & false, false), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a, -1403f, -1023f), vec3<f32>(651f, 606f, 243f))), vec3<f32>(1049f, -953f, global1.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, global1.a, global1.a))))), vec2<bool>(all(vec4<bool>(var_0, var_0, var_0, var_0)) & func_3(vec3<bool>(var_0, var_0, var_0), vec3<f32>(global1.a, 1000f, global1.a)).x, (var_1 >> (u_input.b.x % 32u)) < (5736i >> (u_input.b.x % 32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, ~max(-1i, -470i), select(global1.b.x ^ arg_0.x, global1.b.x, true)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.x, 2147483647i), u_input.c), abs(-1i), i32(-1i) * -19573i, arg_0.x)));
    global0 = array<Struct_3, 22>();
    return global1.a < _wgslsmith_f_op_f32(var_2.c.c.x + -1389f);
}

fn func_1() -> Struct_3 {
    var var_0 = global1.b.x;
    var var_1 = false;
    var_1 = func_2(~abs(vec3<i32>(global1.b.x, _wgslsmith_div_i32(global1.b.x, global1.b.x), ~0i)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), global1.b);
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2612f, _wgslsmith_f_op_f32(-var_2.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1638f, 109f) + vec2<f32>(global1.a, 1553f))))), Struct_1(global1.a, ~(~global1.b) & ~(vec4<i32>(-40379i, -2147483647i, 0i, -4064i) ^ var_2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(453f, _wgslsmith_f_op_f32(-var_2.a), 1202f, 609f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, -1289f, -494f, var_2.a), vec4<f32>(1081f, var_2.a, 688f, -571f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a + global1.a), _wgslsmith_f_op_f32(-var_2.a)) * -1350f), global1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-923f, global1.a) + vec2<f32>(-776f, -551f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2528f, -975f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(-123f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, 1416f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = var_0.d;
    var var_1 = select(vec3<bool>(((u_input.e.x < 10314u) && false) != func_2(abs(var_0.b.b.yzx)), !(!all(vec4<bool>(true, true, false, false))), firstLeadingBit(global1.b.x >> (u_input.e.x % 32u)) >= (~(-1i) | u_input.d.x)), vec3<bool>(func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), vec3<f32>(-116f, _wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(-var_0.e.x))).x, select(true, any(vec3<bool>(true, true, true)), select(false, true, false)) & (max(u_input.b.x, u_input.b.x) < u_input.b.x), true), !vec3<bool>(func_3(func_3(vec3<bool>(true, true, false), var_0.c.xzx), _wgslsmith_div_vec3_f32(var_0.c.xxx, vec3<f32>(global1.a, -963f, 580f))).x, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.e) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.a, -2107f), vec2<f32>(var_0.a.x, var_0.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, -1084f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(614f, 228f), var_0.e, var_1.x)) - var_0.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f + global1.a)))))));
}

