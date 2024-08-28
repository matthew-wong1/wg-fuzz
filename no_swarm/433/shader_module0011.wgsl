struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(15936u, 28089u, 103235u, 16608u), 8911i, vec4<f32>(688f, 504f, 590f, 1319f), vec4<bool>(true, true, false, true), vec2<f32>(966f, -591f)), Struct_1(vec4<u32>(935u, 20896u, 4294967295u, 0u), -51274i, vec4<f32>(-705f, 641f, 593f, -136f), vec4<bool>(false, true, false, false), vec2<f32>(717f, 1000f)), Struct_1(vec4<u32>(0u, 1u, 1u, 0u), 36755i, vec4<f32>(-1000f, 120f, -113f, 1023f), vec4<bool>(false, true, false, true), vec2<f32>(-1000f, 1066f)), Struct_1(vec4<u32>(0u, 14756u, 11972u, 1u), 12702i, vec4<f32>(147f, -914f, -167f, 950f), vec4<bool>(false, true, true, true), vec2<f32>(1410f, 2454f)), Struct_1(vec4<u32>(1u, 58322u, 39962u, 1u), -7755i, vec4<f32>(-102f, -698f, 1832f, -1335f), vec4<bool>(false, false, true, true), vec2<f32>(-160f, -707f)), Struct_1(vec4<u32>(4294967295u, 41483u, 61827u, 69265u), 1i, vec4<f32>(1891f, 321f, 226f, 1263f), vec4<bool>(false, false, false, false), vec2<f32>(1456f, 1103f)), Struct_1(vec4<u32>(19199u, 0u, 0u, 1u), 2587i, vec4<f32>(-1048f, 456f, -1551f, -2460f), vec4<bool>(false, false, true, false), vec2<f32>(-479f, 1143f)), Struct_1(vec4<u32>(10550u, 4294967295u, 15534u, 4294967295u), 2147483647i, vec4<f32>(161f, -1427f, -641f, -158f), vec4<bool>(true, false, true, false), vec2<f32>(-1000f, 219f)), Struct_1(vec4<u32>(28547u, 4294967295u, 77768u, 21833u), 36276i, vec4<f32>(-2012f, 1000f, 1165f, -1607f), vec4<bool>(true, true, false, false), vec2<f32>(-657f, 795f)), Struct_1(vec4<u32>(11790u, 79298u, 1u, 22144u), i32(-2147483648), vec4<f32>(1753f, -326f, -142f, -660f), vec4<bool>(true, false, true, true), vec2<f32>(1903f, -827f)), Struct_1(vec4<u32>(30020u, 37690u, 11436u, 0u), -63033i, vec4<f32>(1135f, -324f, -1685f, 1725f), vec4<bool>(true, true, false, false), vec2<f32>(-762f, 248f)), Struct_1(vec4<u32>(1u, 24008u, 9642u, 0u), 2655i, vec4<f32>(-686f, 625f, -429f, -195f), vec4<bool>(true, false, false, true), vec2<f32>(-824f, 1223f)), Struct_1(vec4<u32>(1u, 106495u, 4215u, 27948u), 11521i, vec4<f32>(-684f, -171f, -1000f, 490f), vec4<bool>(false, false, true, false), vec2<f32>(246f, 1515f)), Struct_1(vec4<u32>(11175u, 4294967295u, 17121u, 4294967295u), 73968i, vec4<f32>(1602f, 1000f, 503f, -266f), vec4<bool>(true, false, false, true), vec2<f32>(821f, -1096f)), Struct_1(vec4<u32>(49419u, 1u, 82540u, 14005u), i32(-2147483648), vec4<f32>(765f, -191f, -351f, 487f), vec4<bool>(true, false, false, true), vec2<f32>(336f, 1202f)), Struct_1(vec4<u32>(4567u, 4294967295u, 49881u, 4294967295u), 0i, vec4<f32>(1228f, -1518f, -580f, 613f), vec4<bool>(true, true, false, true), vec2<f32>(-465f, 1039f)));

var<private> global1: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(2147483647i, 12089i, 1i, -96211i), vec4<i32>(-13529i, -28940i, 34281i, -19065i), vec4<i32>(4885i, 2147483647i, 1i, 21501i), vec4<i32>(-1i, 1i, 35317i, 11183i), vec4<i32>(20807i, 55206i, i32(-2147483648), 4899i), vec4<i32>(-1i, -13601i, -14i, 2147483647i), vec4<i32>(32749i, -1i, i32(-2147483648), 47438i), vec4<i32>(19680i, -12823i, -29836i, i32(-2147483648)), vec4<i32>(-7805i, 0i, 2147483647i, 1i), vec4<i32>(48497i, 2147483647i, 24292i, 2147483647i), vec4<i32>(2147483647i, 0i, 20531i, 2063i), vec4<i32>(11252i, 2147483647i, 17364i, -1i), vec4<i32>(2147483647i, -7884i, i32(-2147483648), -18110i), vec4<i32>(0i, i32(-2147483648), -62i, 8280i), vec4<i32>(-3388i, 0i, -22435i, 1i), vec4<i32>(-3017i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -1i, -1i), vec4<i32>(4496i, 2147483647i, 28151i, 0i));

var<private> global2: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> u32 {
    global2 = 1358f;
    let var_0 = ~(~vec4<u32>(47779u, 49199u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.x, arg_1.x), vec3<u32>(1u, 1u, 24020u)), 61128u), arg_1.x));
    global1 = array<vec4<i32>, 18>();
    let var_1 = reverseBits(var_0);
    global0 = array<Struct_1, 16>();
    return abs(var_0.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = select(1i, u_input.a.x, false);
    global0 = array<Struct_1, 16>();
    let var_1 = vec3<u32>(countOneBits(func_3(abs(vec3<i32>(-5671i, 0i, 1i)), max(vec2<u32>(23747u, 10415u), vec2<u32>(43432u, 0u)))), firstTrailingBit(_wgslsmith_sub_u32(~1u, 4388u << (0u % 32u))), 62415u | ~select(1u, 4279u, false)) >> (~vec3<u32>(~16278u, 0u, 1u << (1u % 32u)) % vec3<u32>(32u));
    global1 = array<vec4<i32>, 18>();
    var var_2 = Struct_1(abs(vec4<u32>(_wgslsmith_sub_u32(54079u, ~var_1.x), var_1.x | _wgslsmith_sub_u32(9781u, var_1.x), 7067u & max(var_1.x, 967u), min(6781u, var_1.x) << (~var_1.x % 32u))), min(-u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-750f, 1925f), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1092f))), 1317f))), select(vec4<bool>(true, arg_2, any(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2))), var_1.x < var_1.x), vec4<bool>(true, any(select(vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_2, true, true, true))), any(!vec4<bool>(arg_2, arg_2, true, arg_2)), false), select(select(!vec4<bool>(arg_2, false, arg_2, false), select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(true, true, true, true)), !vec4<bool>(arg_2, true, arg_2, arg_2)), !(!vec4<bool>(false, arg_2, false, true)), vec4<bool>(arg_1 > -562f, false, any(vec2<bool>(true, false)), arg_2))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1209f, arg_1))) * _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-arg_0))), arg_0));
    return global0[_wgslsmith_index_u32(max(abs(_wgslsmith_sub_u32(~var_2.a.x, 854u) & 31931u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), abs(vec2<u32>(70095u, var_1.x))), 1u, 11594u, ~var_2.a.x), vec4<u32>(var_2.a.x, ~var_1.x | 0u, var_2.a.x, var_1.x))), 16u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_1;
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_1 = vec4<f32>(-437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1033f, 1731f, false))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1637f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2395f) + _wgslsmith_div_f32(1497f, arg_2.c.x)))), -1602f, -576f);
    var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2353f * -162f))), _wgslsmith_f_op_f32(ceil(-664f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f)), _wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_div_f32(307f, var_1.x))))));
    return 10498u;
}

fn func_1() -> vec2<u32> {
    let var_0 = vec3<i32>(-(~u_input.a.x), 0i << (func_4(~u_input.a, Struct_2(_wgslsmith_div_f32(1020f, -2298f)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, -1994f)), _wgslsmith_f_op_f32(select(-1582f, 774f, true)), false), func_2(vec2<f32>(137f, -450f), _wgslsmith_f_op_f32(abs(-851f)), true)) % 32u), u_input.a.x);
    var var_1 = ~select(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, 2147483647i, u_input.a.x), vec4<i32>(1619i, select(-14470i, u_input.a.x, false), 57397i, u_input.a.x)), vec4<i32>(u_input.a.x, 1i, 2147483647i, -select(-34421i, 2147483647i, true)), false);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec2<f32>(-1109f, 1052f), -530f, false).e.x))));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2152f, 1715f), vec2<f32>(-861f, 114f))))), vec2<f32>(var_2.a, _wgslsmith_f_op_f32(sign(var_2.a))))) - vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_div_f32(-795f, 170f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.a)))))), !(!select(var_2.a >= 1602f, true, func_2(vec2<f32>(var_2.a, var_2.a), -580f, false).d.x))).d.yyy;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2381f, var_2.a)) * vec2<f32>(_wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(-272f + 798f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a, 1083f))) - vec2<f32>(var_2.a, var_2.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)), vec2<f32>(var_2.a, var_2.a))))));
    return vec2<u32>(~(1u << (~(~1u) % 32u)), 1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-254f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, arg_3.a), _wgslsmith_f_op_f32(arg_3.a * arg_3.a))) + arg_3.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-473f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_3.a)), true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1181f)))));
    var var_1 = func_2(vec2<f32>(-781f, 1280f), -1365f, !(!(true & any(vec3<bool>(false, true, false)))));
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_2.x, arg_0.x)) >> ((vec2<u32>(arg_2.x, 0u) | abs(vec2<u32>(arg_1.x, 4294967295u))) % vec2<u32>(32u)), arg_1.zy), ~arg_0);
    var_0 = var_1.c.www;
    return Struct_1(_wgslsmith_add_vec4_u32(var_1.a << (vec4<u32>(~0u, arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, var_2.x), var_1.a.wwy), arg_0.x) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(arg_2, select(arg_2, vec4<u32>(26098u, 18174u, 85186u, arg_2.x), var_1.d))), -13362i ^ _wgslsmith_div_i32(~(-36442i), u_input.a.x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(713f + var_0.x) - _wgslsmith_f_op_f32(ceil(-951f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-arg_3.a))), var_1.e.x, _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), select(var_1.d, vec4<bool>(var_1.d.x, !var_1.d.x, var_1.d.x, all(!vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x))), select(vec4<bool>(all(vec2<bool>(false, var_1.d.x)), u_input.a.x == -39944i, true, var_1.d.x), vec4<bool>(var_1.d.x, true, var_1.d.x, true), any(!var_1.d.wzy))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_1.e, vec2<f32>(_wgslsmith_f_op_f32(trunc(388f)), _wgslsmith_f_op_f32(-1090f + arg_3.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 71925u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 54626u, 45111u) >> (abs(~max(vec3<u32>(99818u, 28059u, 11771u), vec3<u32>(9642u, 66353u, 15775u))) % vec3<u32>(32u)));
    global0 = array<Struct_1, 16>();
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-915f, 368f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 800f);
    var var_2 = func_5(func_1(), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(var_0.x), countOneBits(var_0.x), 61196u), ~var_0)), _wgslsmith_mod_vec4_u32(~vec4<u32>(~1u, var_0.x, var_0.x, _wgslsmith_mult_u32(var_0.x, var_0.x)), countOneBits(~vec4<u32>(66838u, 21690u, var_0.x, 7654u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(73519u, 4294967295u, var_0.x, 1u), vec4<u32>(var_0.x, var_0.x, var_0.x, 91736u)))), Struct_2(802f));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x | ~4294967295u, _wgslsmith_mod_u32(var_0.x, var_0.x)) << (~(~func_5(~vec2<u32>(44260u, 4294967295u), select(var_0, var_2.a.wzz, vec3<bool>(var_2.d.x, true, var_2.d.x)), var_2.a, Struct_2(-1284f)).a.x) % 32u), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

