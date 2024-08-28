struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(false, true, i32(-2147483648)), Struct_1(true, false, 2321i), -621f, vec2<f32>(-364f, 146f), vec4<f32>(346f, 1556f, 577f, 1071f)), Struct_3(Struct_1(false, false, 2147483647i), Struct_1(true, true, 0i), 1006f, vec2<f32>(-693f, -368f), vec4<f32>(1277f, -273f, -1267f, 685f)), Struct_3(Struct_1(false, true, -46241i), Struct_1(true, false, -10499i), 320f, vec2<f32>(893f, -1796f), vec4<f32>(674f, 1928f, 1000f, 468f)), Struct_3(Struct_1(true, true, 1i), Struct_1(true, true, 1i), -476f, vec2<f32>(-409f, -708f), vec4<f32>(-737f, 2478f, -380f, -1395f)), Struct_3(Struct_1(true, false, -45813i), Struct_1(false, true, -1684i), 2592f, vec2<f32>(902f, 252f), vec4<f32>(636f, -590f, 1610f, -481f)), Struct_3(Struct_1(false, true, 32924i), Struct_1(true, true, 0i), -1136f, vec2<f32>(-1000f, -1001f), vec4<f32>(-306f, -761f, -1107f, 547f)), Struct_3(Struct_1(false, true, 2147483647i), Struct_1(true, false, -59692i), 1161f, vec2<f32>(-236f, 306f), vec4<f32>(848f, 811f, 470f, -470f)), Struct_3(Struct_1(false, true, 2147483647i), Struct_1(true, true, -23718i), -1449f, vec2<f32>(-1655f, -1289f), vec4<f32>(163f, -268f, 149f, 1356f)), Struct_3(Struct_1(true, false, 36179i), Struct_1(true, true, -56619i), 1179f, vec2<f32>(1724f, 210f), vec4<f32>(367f, 1022f, -1309f, 593f)), Struct_3(Struct_1(false, false, 21594i), Struct_1(true, true, -7605i), 772f, vec2<f32>(909f, 113f), vec4<f32>(583f, 430f, 1000f, 543f)), Struct_3(Struct_1(false, false, 44273i), Struct_1(true, true, i32(-2147483648)), 1024f, vec2<f32>(-1454f, 954f), vec4<f32>(-1752f, -331f, 311f, 1456f)), Struct_3(Struct_1(false, true, 1i), Struct_1(false, true, -117702i), -1038f, vec2<f32>(255f, -701f), vec4<f32>(585f, -876f, -1220f, -1121f)), Struct_3(Struct_1(true, false, 0i), Struct_1(false, false, 0i), -398f, vec2<f32>(1311f, -621f), vec4<f32>(-1356f, 2106f, -1181f, 1256f)), Struct_3(Struct_1(false, true, 14229i), Struct_1(false, false, i32(-2147483648)), -357f, vec2<f32>(-2054f, 1724f), vec4<f32>(391f, -2021f, -1073f, 379f)), Struct_3(Struct_1(false, true, 11272i), Struct_1(false, true, -1i), -1000f, vec2<f32>(-969f, 128f), vec4<f32>(384f, -208f, -158f, -167f)), Struct_3(Struct_1(true, true, -1i), Struct_1(true, true, i32(-2147483648)), -318f, vec2<f32>(736f, -171f), vec4<f32>(215f, -1402f, -1163f, -840f)), Struct_3(Struct_1(true, true, -26533i), Struct_1(false, true, i32(-2147483648)), 1149f, vec2<f32>(1540f, -226f), vec4<f32>(-574f, 1314f, 430f, -814f)), Struct_3(Struct_1(false, true, 22712i), Struct_1(true, true, -1i), 172f, vec2<f32>(-436f, 634f), vec4<f32>(-2149f, 1196f, 1190f, -430f)), Struct_3(Struct_1(false, false, 14337i), Struct_1(true, false, -1i), 199f, vec2<f32>(223f, -1858f), vec4<f32>(-1159f, 1000f, 145f, 304f)), Struct_3(Struct_1(false, true, 39109i), Struct_1(true, true, -91829i), 1898f, vec2<f32>(-2535f, -1346f), vec4<f32>(1000f, 392f, 121f, 1767f)), Struct_3(Struct_1(false, false, 34988i), Struct_1(false, false, -23044i), -1966f, vec2<f32>(-1247f, -1392f), vec4<f32>(-639f, -932f, 1000f, -1483f)), Struct_3(Struct_1(true, true, -60754i), Struct_1(false, false, -1i), -1503f, vec2<f32>(-801f, -452f), vec4<f32>(1689f, 845f, 851f, 2147f)), Struct_3(Struct_1(false, false, -22914i), Struct_1(false, true, -13073i), 728f, vec2<f32>(566f, 1000f), vec4<f32>(785f, 1885f, -1582f, 134f)), Struct_3(Struct_1(true, false, -1i), Struct_1(false, false, -50919i), -569f, vec2<f32>(1000f, -977f), vec4<f32>(873f, 901f, 1048f, -1000f)), Struct_3(Struct_1(true, true, -41691i), Struct_1(false, false, -18296i), -686f, vec2<f32>(-1895f, 1090f), vec4<f32>(206f, -915f, -403f, 1793f)), Struct_3(Struct_1(false, true, -1i), Struct_1(true, false, i32(-2147483648)), -1504f, vec2<f32>(244f, -579f), vec4<f32>(-1000f, 812f, 1323f, 657f)), Struct_3(Struct_1(false, false, 1i), Struct_1(true, false, -1i), 476f, vec2<f32>(2327f, 544f), vec4<f32>(-601f, -1000f, 136f, -799f)), Struct_3(Struct_1(true, false, -1i), Struct_1(false, false, 5868i), 435f, vec2<f32>(-748f, 129f), vec4<f32>(628f, 1000f, 693f, 101f)), Struct_3(Struct_1(true, false, 2147483647i), Struct_1(false, false, -76516i), 1046f, vec2<f32>(614f, -1060f), vec4<f32>(1050f, -245f, -348f, -464f)), Struct_3(Struct_1(false, true, 57412i), Struct_1(true, false, -70168i), -639f, vec2<f32>(-2223f, -112f), vec4<f32>(318f, -1626f, -1059f, 936f)));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(false, true, i32(-2147483648));

var<private> global3: array<i32, 4>;

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = global2.b;
    var_0 = any(vec2<bool>(true || ((global1.c ^ 2147483647i) <= -global1.c), all(!(!vec4<bool>(global1.b, true, false, false)))));
    var var_1 = Struct_3(Struct_1(global2.a, global2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-62046i, -global2.c), -max(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], -824i), vec2<i32>(global2.c, global2.c)))), Struct_1(any(vec4<bool>(!global1.b, global1.a, false, global2.b)), false, firstTrailingBit(~16626i) << (0u % 32u)), -425f, vec2<f32>(216f, -1315f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -360f, 687f, 1259f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 666f, -803f, 123f) - vec4<f32>(709f, -901f, 1355f, -431f)))))));
    let var_2 = var_1.b.c;
    var var_3 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + var_1.c) + _wgslsmith_f_op_f32(var_1.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.e.x))))), 838f, 574f);
    return var_1.c;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(474f, _wgslsmith_f_op_f32(-2188f * -790f))), 273f)), global1.b | true, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(-41511i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), -global1.c, global2.c));
    var var_1 = var_0.c;
    var_1 = ~select(global1.c, 13892i, !(true | var_0.b)) & global2.c;
    var_1 = min(1i, select(reverseBits(select(reverseBits(11486i), -2147483647i, var_0.b)), -global1.c, global1.a));
    let var_2 = Struct_3(Struct_1(false, global1.b, -2147483647i), Struct_1(!global1.a, true, global2.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2319f), _wgslsmith_f_op_f32(max(1558f, 1783f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1813f + 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1395f + 530f), -290f, _wgslsmith_f_op_f32(f32(-1f) * -343f), 626f))))));
    return _wgslsmith_f_op_f32(select(349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), true))), !var_2.a.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> vec4<bool> {
    global3 = array<i32, 4>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(0u, _wgslsmith_sub_u32(u_input.a.x, abs(arg_2))), ~u_input.a.x), 30u)];
    var var_1 = u_input.a.zyy;
    var var_2 = global0[_wgslsmith_index_u32(abs(~var_1.x) >> (~(~0u) % 32u), 30u)];
    let var_3 = Struct_1(true, false & select(true, global2.a, u_input.a.x >= _wgslsmith_sub_u32(28228u, var_1.x)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.c, -7668i), -14765i) >> ((reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) >> (var_1.x % 32u)) % 32u));
    return select(select(select(!(!arg_0), !(!arg_0), !arg_0), arg_0, !(!select(arg_0, vec4<bool>(global1.a, arg_0.x, true, false), arg_0))), vec4<bool>(true, true, arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, arg_1.x) * _wgslsmith_f_op_f32(step(664f, -271f))), all(arg_0)), arg_0);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    global2 = Struct_1(any(vec3<bool>(-global3[_wgslsmith_index_u32(0u, 4u)] > _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], 1i), !(!global2.a), true)), true, ~(-_wgslsmith_clamp_i32(-1i, arg_1.c, global3[_wgslsmith_index_u32(u_input.a.x, 4u)])) | 48700i);
    var var_0 = func_4(!vec4<bool>(u_input.a.x != ~u_input.a.x, select(true, true, global1.c <= global2.c), any(select(vec2<bool>(global2.b, arg_1.a), vec2<bool>(false, false), vec2<bool>(global2.b, true))), _wgslsmith_f_op_f32(func_2()) <= -700f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(117f, 230f), vec2<f32>(179f, -1504f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, 262f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(909f, -163f), vec2<f32>(-1335f, -845f), global2.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-231f, 1261f)))))), false)), u_input.a.x, ~(~global3[_wgslsmith_index_u32(~4294967295u, 4u)]));
    global0 = array<Struct_3, 30>();
    let var_1 = select(vec4<bool>(arg_1.b, !global1.a, var_0.x, -326f >= _wgslsmith_f_op_f32(func_2())), select(vec4<bool>(false, false, !global2.b, _wgslsmith_dot_vec2_i32(arg_0.xy, arg_0.yy) >= global2.c), vec4<bool>(global1.a, !(false | global1.a), false, var_0.x), vec4<bool>(true, global1.a || func_4(vec4<bool>(true, var_0.x, false, global1.b), vec2<f32>(193f, -169f), 0u, -34400i).x, all(vec3<bool>(arg_1.b, var_0.x, arg_1.b)), true)), (true || all(func_4(vec4<bool>(false, false, true, arg_1.a), vec2<f32>(-579f, 296f), u_input.a.x, -1i))) == true);
    let var_2 = vec2<bool>(!var_1.x, select(~(~global1.c), reverseBits(-5572i), all(select(vec3<bool>(false, global1.a, true), vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, true)))) > min(-firstTrailingBit(2147483647i), global1.c));
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, reverseBits(~u_input.a.x)), 30u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> vec2<bool> {
    let var_0 = ~countOneBits(vec2<u32>(~753u, u_input.a.x)) & u_input.a.wx;
    global3 = array<i32, 4>();
    global4 = -2147483647i;
    let var_1 = any(select(!select(vec2<bool>(false, arg_0.b.b), vec2<bool>(true, true), true), select(func_4(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-349f, arg_0.c)), _wgslsmith_dot_vec3_u32(u_input.a.wwz, u_input.a.xzz), -global1.c).wz, vec2<bool>(all(vec4<bool>(global2.a, false, arg_0.a.b, global2.b)), !arg_1.b), false), true));
    var var_2 = ~arg_2.x;
    return vec2<bool>(all(func_4(vec4<bool>(true, global1.b, select(false, true, global2.a), var_1 & var_1), func_1(vec4<i32>(-8831i, 24179i, -31809i, -1i), Struct_1(true, true, global1.c)).e.zx, ~62656u << (~u_input.a.x % 32u), ~func_1(vec4<i32>(2147483647i, -18478i, arg_1.c, -60911i), Struct_1(false, arg_0.a.a, -10065i)).b.c)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, global1.a), vec2<bool>(global2.a, global2.b), vec2<bool>(global2.a, false)), global1.c != -19948i)), select(func_5(func_1(abs(vec4<i32>(24892i, -66622i, -10584i, 25220i)), Struct_1(false, global1.a, global1.c)), Struct_1(global1.a == true, !global1.b, _wgslsmith_sub_i32(1i, 2147483647i)), ~reverseBits(vec3<i32>(1i, -1i, 5886i)), global2.b), !(!vec2<bool>(global2.a, true)), global2.a), select(true, all(func_4(vec4<bool>(false, false, global1.a, true), vec2<f32>(-183f, -564f), u_input.a.x, global2.c)) != true, any(select(!vec4<bool>(false, global1.b, false, global2.b), !vec4<bool>(global1.a, global1.a, global2.a, true), vec4<bool>(false, true, global2.b, true)))));
    let var_1 = u_input.a.wxy;
    var var_2 = Struct_3(func_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-21889i, global1.c, -75i, -2147483647i), vec4<i32>(42114i, 54337i, 2147483647i, -13679i) & vec4<i32>(global3[_wgslsmith_index_u32(39848u, 4u)], -2147483647i, global1.c, global1.c)), min(vec4<i32>(global3[_wgslsmith_index_u32(17261u, 4u)], 7880i, -16464i, -3946i), vec4<i32>(global3[_wgslsmith_index_u32(var_1.x, 4u)], global2.c, -3835i, global3[_wgslsmith_index_u32(57108u, 4u)])), vec4<i32>(i32(-1i) * -32810i, 1i, -22503i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 26761u), 4u)])), func_1(vec4<i32>(global2.c, -31428i, global3[_wgslsmith_index_u32(1u, 4u)], 29181i) & min(vec4<i32>(global3[_wgslsmith_index_u32(114389u, 4u)], 1i, 0i, global2.c), vec4<i32>(global3[_wgslsmith_index_u32(53663u, 4u)], -35498i, 1i, global2.c)), func_1(max(vec4<i32>(global2.c, global1.c, global2.c, -21524i), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i, -37007i, global1.c)), func_1(vec4<i32>(global2.c, global3[_wgslsmith_index_u32(4294967295u, 4u)], global1.c, global1.c), Struct_1(var_0.x, true, global1.c)).b).a).a).a, Struct_1(any(func_4(vec4<bool>(global2.b, var_0.x, true, false), vec2<f32>(271f, -194f), u_input.a.x, global1.c).zzx), false, _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-2147483647i), ~global2.c), -_wgslsmith_mult_i32(28173i, 17920i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1277f)) + -1095f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1237f + 172f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(115f, 186f))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -294f) * func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global1.c, 0i, global3[_wgslsmith_index_u32(1u, 4u)]), vec4<i32>(159i, global1.c, 0i, -2147483647i)), Struct_1(false, false, global3[_wgslsmith_index_u32(55293u, 4u)])).e.yy), global2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(857f, 497f, 1478f, 1558f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1368f, -1094f, 133f, -374f)))))))));
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(26980u, 1935f, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c, 0i), vec2<i32>(global3[_wgslsmith_index_u32(var_1.x, 4u)], 48554i)), ~4986i), var_3.c), var_2.e, var_2.e.yx);
}

