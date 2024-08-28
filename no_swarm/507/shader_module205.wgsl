struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<f32>(-540f, 1000f), vec3<u32>(4294967295u, 1u, 40066u), 1i, vec2<f32>(1000f, 616f)), -1445i);

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(vec2<f32>(-895f, -1080f), vec3<u32>(27812u, 4294967295u, 49247u), -19311i, vec2<f32>(1544f, 767f)), 2147483647i), 1i, false, Struct_1(vec2<f32>(694f, 317f), vec3<u32>(4294967295u, 42281u, 102538u), 12403i, vec2<f32>(413f, 1737f)), -1000f);

var<private> global2: bool;

var<private> global3: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(17271i, Struct_2(15929u, vec3<u32>(0u, 0u, 1u), Struct_1(vec2<f32>(673f, 412f), vec3<u32>(6191u, 61051u, 31810u), -1i, vec2<f32>(-1000f, -1000f)), 981f, vec2<u32>(1u, 1844u)), Struct_1(vec2<f32>(-1255f, 680f), vec3<u32>(0u, 54531u, 1u), 54013i, vec2<f32>(988f, 592f)), -32488i), Struct_5(-7947i, Struct_2(0u, vec3<u32>(11781u, 2743u, 68332u), Struct_1(vec2<f32>(-879f, -337f), vec3<u32>(39346u, 1u, 4294967295u), -79887i, vec2<f32>(1000f, -425f)), -130f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(1202f, 562f), vec3<u32>(0u, 1u, 0u), 1i, vec2<f32>(-1897f, -1190f)), 6418i), Struct_5(-1i, Struct_2(4294967295u, vec3<u32>(4294967295u, 14002u, 352u), Struct_1(vec2<f32>(896f, 1309f), vec3<u32>(108756u, 39237u, 28411u), i32(-2147483648), vec2<f32>(-800f, -1059f)), -676f, vec2<u32>(634u, 4294967295u)), Struct_1(vec2<f32>(1332f, -640f), vec3<u32>(58757u, 0u, 37002u), -38029i, vec2<f32>(1000f, 2145f)), 19444i), Struct_5(i32(-2147483648), Struct_2(25725u, vec3<u32>(4294967295u, 34836u, 0u), Struct_1(vec2<f32>(-240f, -1152f), vec3<u32>(37564u, 11827u, 3210u), -1i, vec2<f32>(339f, -590f)), 1647f, vec2<u32>(57705u, 1u)), Struct_1(vec2<f32>(-808f, 1010f), vec3<u32>(24315u, 23945u, 4294967295u), 2147483647i, vec2<f32>(-366f, 2232f)), 0i), Struct_5(-14242i, Struct_2(13444u, vec3<u32>(15446u, 0u, 1u), Struct_1(vec2<f32>(-1368f, 1224f), vec3<u32>(64296u, 1u, 4294967295u), 35913i, vec2<f32>(-288f, -1235f)), 1435f, vec2<u32>(1u, 4294967295u)), Struct_1(vec2<f32>(1208f, -1288f), vec3<u32>(79610u, 3274u, 50748u), -5889i, vec2<f32>(-393f, 354f)), 2147483647i), Struct_5(1922i, Struct_2(18076u, vec3<u32>(18323u, 17680u, 1u), Struct_1(vec2<f32>(1455f, -1573f), vec3<u32>(32395u, 24477u, 1u), 2147483647i, vec2<f32>(-1054f, -1000f)), 501f, vec2<u32>(4294967295u, 14251u)), Struct_1(vec2<f32>(-1000f, 669f), vec3<u32>(1u, 0u, 38852u), 1i, vec2<f32>(-882f, 728f)), 36128i), Struct_5(-51318i, Struct_2(0u, vec3<u32>(56995u, 46272u, 0u), Struct_1(vec2<f32>(107f, 774f), vec3<u32>(96187u, 1u, 34055u), 8782i, vec2<f32>(597f, 1000f)), -1599f, vec2<u32>(1u, 13988u)), Struct_1(vec2<f32>(514f, 734f), vec3<u32>(0u, 4294967295u, 0u), 0i, vec2<f32>(433f, -1045f)), i32(-2147483648)), Struct_5(14327i, Struct_2(0u, vec3<u32>(50475u, 39282u, 40747u), Struct_1(vec2<f32>(560f, 878f), vec3<u32>(4294967295u, 3182u, 4294967295u), 1i, vec2<f32>(440f, 150f)), 225f, vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(-1000f, 691f), vec3<u32>(0u, 1u, 27594u), 47552i, vec2<f32>(230f, 698f)), 42738i), Struct_5(2147483647i, Struct_2(28296u, vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec2<f32>(-115f, -253f), vec3<u32>(406u, 22396u, 0u), 1i, vec2<f32>(537f, 1055f)), -1000f, vec2<u32>(0u, 49930u)), Struct_1(vec2<f32>(133f, 851f), vec3<u32>(1u, 136173u, 4294967295u), 0i, vec2<f32>(-284f, 642f)), 0i), Struct_5(-88331i, Struct_2(0u, vec3<u32>(28377u, 92475u, 0u), Struct_1(vec2<f32>(1000f, -1476f), vec3<u32>(40304u, 34302u, 9473u), 35835i, vec2<f32>(148f, -338f)), -1688f, vec2<u32>(0u, 1u)), Struct_1(vec2<f32>(486f, -778f), vec3<u32>(1u, 4294967295u, 13110u), -1i, vec2<f32>(182f, -1282f)), 2147483647i), Struct_5(1i, Struct_2(11930u, vec3<u32>(48180u, 1u, 31745u), Struct_1(vec2<f32>(-201f, 2753f), vec3<u32>(7040u, 1u, 20329u), 39540i, vec2<f32>(1693f, 669f)), 593f, vec2<u32>(74632u, 1u)), Struct_1(vec2<f32>(767f, 794f), vec3<u32>(77411u, 30613u, 15376u), -1i, vec2<f32>(381f, 1278f)), -1i), Struct_5(-5251i, Struct_2(8515u, vec3<u32>(9099u, 1u, 4294967295u), Struct_1(vec2<f32>(-689f, -1395f), vec3<u32>(36279u, 0u, 11205u), -23416i, vec2<f32>(1840f, -791f)), 452f, vec2<u32>(0u, 0u)), Struct_1(vec2<f32>(889f, -1128f), vec3<u32>(56900u, 1u, 4294967295u), 32008i, vec2<f32>(761f, 665f)), -45858i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = -vec2<i32>(min(_wgslsmith_clamp_i32(~1i, 1i, arg_1.b), ~0i), ~countOneBits(-25685i));
    var var_1 = firstTrailingBit(-(~_wgslsmith_clamp_i32(-4729i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, global1.a.b), vec2<i32>(arg_1.b, 2147483647i)))));
    global1 = Struct_4(arg_1, -21340i, !(!any(!vec3<bool>(global1.c, true, arg_2))), global0.a, _wgslsmith_f_op_f32(-global0.a.d.x));
    let var_2 = vec2<i32>(~(-44763i), ~(-47244i >> (arg_1.a.b.x % 32u)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1789f);
    return 20878u;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    let var_0 = abs(0u);
    let var_1 = global1.c;
    let var_2 = func_3(true, Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.a.d))), vec3<u32>(1u, 1u, global1.a.a.b.x) >> (countOneBits(vec3<u32>(12802u, 0u, 3877u)) % vec3<u32>(32u)), _wgslsmith_sub_i32(~global0.b, global1.a.b), vec2<f32>(global1.e, _wgslsmith_f_op_f32(-global1.d.a.x))), _wgslsmith_div_i32(11241i, ~abs(global1.d.c))), arg_0.x, 3350u >> (_wgslsmith_div_u32(~var_0, var_0) % 32u));
    var var_3 = global0.a;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.a.x * 788f))))), _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f - -150f) - _wgslsmith_f_op_f32(abs(global1.a.a.d.x))) + 334f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(478f + 185f), _wgslsmith_f_op_f32(step(-1000f, var_3.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1422f - global1.d.a.x)))) + 598f));
    return _wgslsmith_div_i32(global0.b, global0.b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = ~(reverseBits(_wgslsmith_mod_vec2_u32(max(u_input.b.yz, global1.a.a.b.yz), global0.a.b.zz)) ^ vec2<u32>(global0.a.b.x & global1.a.a.b.x, global1.a.a.b.x | (global0.a.b.x ^ 41690u)));
    global3 = array<Struct_5, 12>();
    global2 = arg_3.x;
    global2 = (min(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.a), abs(-2147483647i)), max(_wgslsmith_sub_i32(-1i, -2147483647i), func_2(vec2<bool>(false, false)))) >> (global1.a.a.b.x % 32u)) >= global0.a.c;
    var var_1 = Struct_4(global1.a, -1i, any(vec4<bool>(all(vec2<bool>(arg_3.x, true)), global1.c, false, true)), Struct_1(global1.a.a.d, firstTrailingBit(~min(u_input.b, vec3<u32>(0u, var_0.x, 1u))), firstTrailingBit(_wgslsmith_mult_i32(global1.a.b, ~global0.a.c)), global0.a.d), -913f);
    return select(!vec2<bool>(true, global1.c), select(vec2<bool>(!(var_1.d.a.x > global1.d.d.x), arg_3.x), select(arg_3, select(arg_0.wy, vec2<bool>(global1.c, var_1.c), true), arg_0.zx), vec2<bool>(u_input.b.x > ~var_1.a.a.b.x, true)), !var_1.c);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = min(func_3(false, global1.a, global1.c, countOneBits(u_input.b.x)), firstLeadingBit(min(_wgslsmith_sub_u32(global1.d.b.x, global1.d.b.x) >> (global1.d.b.x % 32u), select(~4294967295u, arg_0, arg_1.x))));
    global2 = all(!(!select(select(vec4<bool>(false, arg_1.x, global1.c, true), vec4<bool>(true, arg_1.x, false, true), false), vec4<bool>(false, true, false, arg_1.x), vec4<bool>(global1.c, arg_1.x, arg_1.x, global1.c))));
    let var_1 = global0.a.d.x;
    let var_2 = global3[_wgslsmith_index_u32(27491u, 12u)];
    var var_3 = _wgslsmith_f_op_f32(807f - _wgslsmith_f_op_f32(exp2(global1.a.a.d.x)));
    return var_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_4(u_input.b.x, !select(func_1(vec4<bool>(global1.c, global1.c, false, global1.c), vec4<i32>(25853i, 0i, global1.a.b, -1i), vec2<bool>(global1.c, false), vec2<bool>(true, true)), !vec2<bool>(global1.c, global1.c), vec2<bool>(true, false)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(45745i, u_input.a), vec2<i32>(-27025i, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.e, global0.a.a.x)))) - global0.a.a)), _wgslsmith_mod_i32(-3072i, 1478i) << (func_4(_wgslsmith_dot_vec3_u32(abs(global0.a.b), ~vec3<u32>(global0.a.b.x, 76762u, 3356u)), vec2<bool>(global0.b >= -20078i, global1.c), ~select(vec2<i32>(2147483647i, 1i), vec2<i32>(global0.b, u_input.a), global1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1372f, 1000f))))).b.x % 32u));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.d.x), 241f)), global0.a.d.x) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, -248f, global1.c)))))) + _wgslsmith_f_op_vec2_f32(sign(global1.d.d)));
    var var_1 = !select(vec3<bool>(true, true, true), !vec3<bool>(global1.c, any(vec2<bool>(true, global1.c)), true), vec3<bool>(!all(vec3<bool>(global1.c, global1.c, false)), !(!global1.c), false));
    var var_2 = global1.a;
    let var_3 = _wgslsmith_dot_vec3_u32(~global0.a.b, select(~var_2.a.b, ~_wgslsmith_sub_vec3_u32(global1.d.b, vec3<u32>(u_input.b.x, 47753u, u_input.b.x) >> (vec3<u32>(u_input.b.x, 61399u, 16915u) % vec3<u32>(32u))), vec3<bool>(any(vec4<bool>(false, global1.c, var_1.x, false)), func_1(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), firstLeadingBit(vec4<i32>(-41451i, var_2.a.c, u_input.a, global0.b)), !vec2<bool>(global1.c, global1.c), var_1.zy).x, all(select(vec2<bool>(true, true), var_1.zz, var_1.x)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_f32(min(-1550f, -289f)), 516f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.e, -1052f, var_2.a.d.x, global1.a.a.d.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.d.x, global1.a.a.a.x, var_2.a.d.x, var_0.x), vec4<f32>(global1.d.d.x, global1.d.d.x, 173f, global1.d.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))), var_2.a.d.x);
}

