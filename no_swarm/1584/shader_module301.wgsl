struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<f32>(-564f, 1038f), false, Struct_1(vec3<f32>(-1001f, 1264f, 592f), false, -8153i, 0i, vec4<f32>(-131f, -1000f, -405f, -675f)), Struct_1(vec3<f32>(-453f, -1524f, 127f), false, 28805i, 0i, vec4<f32>(-267f, 922f, 1896f, -1000f)), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(303f, 443f), false, Struct_1(vec3<f32>(-931f, -1037f, -1000f), false, 1i, -56833i, vec4<f32>(2323f, 1287f, -869f, -1358f)), Struct_1(vec3<f32>(238f, -807f, -214f), false, 0i, 2147483647i, vec4<f32>(-402f, -888f, 943f, -1000f)), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(549f, 369f), false, Struct_1(vec3<f32>(-1666f, 790f, -928f), false, -35574i, 25682i, vec4<f32>(-1718f, 415f, -823f, 1000f)), Struct_1(vec3<f32>(1000f, 297f, -444f), true, 2147483647i, 81574i, vec4<f32>(125f, -1000f, 1000f, 956f)), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(813f, -592f), false, Struct_1(vec3<f32>(804f, 209f, -357f), false, 1i, i32(-2147483648), vec4<f32>(-1363f, 615f, -552f, 1711f)), Struct_1(vec3<f32>(870f, -386f, 1178f), true, 0i, 2147483647i, vec4<f32>(1717f, 1038f, 1097f, 799f)), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(292f, -1000f), false, Struct_1(vec3<f32>(-1000f, -1008f, 1050f), true, -6772i, -19842i, vec4<f32>(-703f, -978f, 534f, 765f)), Struct_1(vec3<f32>(1000f, 2055f, 136f), true, -28975i, -6353i, vec4<f32>(160f, -1494f, 198f, 1374f)), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(-1975f, 497f), false, Struct_1(vec3<f32>(749f, 862f, 165f), true, 3568i, 6048i, vec4<f32>(1919f, 144f, 592f, -810f)), Struct_1(vec3<f32>(-1004f, 548f, 812f), true, i32(-2147483648), -1i, vec4<f32>(431f, -971f, 1001f, 1184f)), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(-1954f, -1311f), false, Struct_1(vec3<f32>(-1048f, -854f, -882f), false, i32(-2147483648), 9044i, vec4<f32>(547f, -1050f, -1635f, -643f)), Struct_1(vec3<f32>(738f, -380f, 430f), false, 1i, i32(-2147483648), vec4<f32>(-155f, -223f, -1000f, -1127f)), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(-718f, 2005f), true, Struct_1(vec3<f32>(-248f, 134f, 685f), false, 1i, -1i, vec4<f32>(396f, -561f, -992f, 813f)), Struct_1(vec3<f32>(-1550f, 209f, 327f), true, -50863i, 43698i, vec4<f32>(312f, -271f, 477f, 1403f)), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-351f, 1884f), false, Struct_1(vec3<f32>(-1236f, 569f, -692f), false, 2147483647i, 44039i, vec4<f32>(968f, 607f, -905f, 865f)), Struct_1(vec3<f32>(445f, 618f, -248f), false, -67905i, 2147483647i, vec4<f32>(-100f, 410f, -1402f, -239f)), vec3<bool>(true, true, true)), Struct_2(vec2<f32>(-984f, 683f), true, Struct_1(vec3<f32>(-710f, 1000f, -1424f), false, 1i, 1i, vec4<f32>(-1181f, 261f, -608f, 1095f)), Struct_1(vec3<f32>(-564f, 583f, -1193f), false, 1i, 2147483647i, vec4<f32>(-172f, 519f, 1572f, 458f)), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(1246f, -1354f), true, Struct_1(vec3<f32>(1000f, -1000f, -126f), false, -19681i, 2147483647i, vec4<f32>(165f, -614f, -1000f, -782f)), Struct_1(vec3<f32>(-1262f, -185f, -600f), false, 13394i, 28733i, vec4<f32>(-1087f, -626f, 514f, 1000f)), vec3<bool>(false, true, true)), Struct_2(vec2<f32>(-1307f, 976f), false, Struct_1(vec3<f32>(1996f, -1012f, -1084f), false, 0i, 0i, vec4<f32>(-528f, 1525f, 672f, -1502f)), Struct_1(vec3<f32>(176f, -981f, -474f), false, 3524i, i32(-2147483648), vec4<f32>(281f, 1628f, 316f, -908f)), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(-1085f, -142f), false, Struct_1(vec3<f32>(307f, 923f, -1885f), true, -1i, i32(-2147483648), vec4<f32>(-350f, -1688f, -190f, 907f)), Struct_1(vec3<f32>(570f, -650f, 325f), false, 19369i, -35164i, vec4<f32>(-334f, -744f, 1044f, -1000f)), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(1425f, -240f), false, Struct_1(vec3<f32>(850f, -683f, 300f), false, 0i, 1i, vec4<f32>(-885f, 293f, -3041f, 1834f)), Struct_1(vec3<f32>(1377f, 367f, 398f), false, 0i, 2147483647i, vec4<f32>(-495f, -864f, 455f, 329f)), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(-1000f, -2219f), false, Struct_1(vec3<f32>(-1343f, 199f, -1088f), true, 13508i, -1i, vec4<f32>(1000f, -1498f, 1441f, -1103f)), Struct_1(vec3<f32>(538f, -1000f, 2732f), true, -9164i, i32(-2147483648), vec4<f32>(1000f, -1051f, 597f, -635f)), vec3<bool>(true, false, false)), Struct_2(vec2<f32>(317f, 862f), false, Struct_1(vec3<f32>(-661f, 455f, 789f), true, -78851i, -45736i, vec4<f32>(-766f, -268f, 284f, -486f)), Struct_1(vec3<f32>(-2830f, -459f, -801f), false, 1i, 2147483647i, vec4<f32>(579f, -375f, 492f, -587f)), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(819f, -1210f), true, Struct_1(vec3<f32>(-544f, -544f, 1314f), true, i32(-2147483648), 2147483647i, vec4<f32>(1179f, 215f, 1424f, -794f)), Struct_1(vec3<f32>(211f, -1107f, 501f), false, -6264i, 35088i, vec4<f32>(-1689f, -428f, -286f, 1000f)), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-2372f, -376f), true, Struct_1(vec3<f32>(581f, -489f, -520f), false, -6663i, -66130i, vec4<f32>(1274f, 1260f, -441f, 1798f)), Struct_1(vec3<f32>(310f, -149f, 1440f), true, i32(-2147483648), 2147483647i, vec4<f32>(1155f, 1898f, 395f, 1000f)), vec3<bool>(false, false, false)), Struct_2(vec2<f32>(476f, -3159f), false, Struct_1(vec3<f32>(-106f, 1449f, -761f), true, 1551i, 0i, vec4<f32>(-1094f, 1000f, 1741f, 678f)), Struct_1(vec3<f32>(-286f, -543f, 1852f), true, i32(-2147483648), 0i, vec4<f32>(-1000f, 518f, 2094f, -818f)), vec3<bool>(true, true, false)), Struct_2(vec2<f32>(1303f, -1619f), false, Struct_1(vec3<f32>(1454f, -429f, 1000f), false, i32(-2147483648), i32(-2147483648), vec4<f32>(-1527f, -737f, -1000f, 272f)), Struct_1(vec3<f32>(1223f, -1412f, 612f), true, 22499i, 29287i, vec4<f32>(2264f, -1000f, -617f, 664f)), vec3<bool>(true, false, true)), Struct_2(vec2<f32>(434f, 171f), true, Struct_1(vec3<f32>(-1630f, 1000f, -1089f), false, -5437i, 1i, vec4<f32>(-479f, 1381f, 242f, 446f)), Struct_1(vec3<f32>(-2016f, 664f, -1269f), false, 1i, -21805i, vec4<f32>(-126f, -545f, 238f, -1131f)), vec3<bool>(false, false, true)), Struct_2(vec2<f32>(515f, 380f), false, Struct_1(vec3<f32>(-1072f, -391f, 1218f), false, 1i, 2147483647i, vec4<f32>(478f, 282f, 883f, -774f)), Struct_1(vec3<f32>(-216f, -177f, 1453f), false, 10098i, 1i, vec4<f32>(1000f, 777f, 2330f, -976f)), vec3<bool>(false, true, false)), Struct_2(vec2<f32>(-957f, 659f), false, Struct_1(vec3<f32>(-339f, 987f, 1482f), true, -5551i, -87095i, vec4<f32>(-140f, 930f, 613f, 859f)), Struct_1(vec3<f32>(1000f, -1000f, -1713f), false, -76757i, 22022i, vec4<f32>(-757f, 1207f, -2958f, -868f)), vec3<bool>(false, false, true)));

var<private> global3: Struct_5 = Struct_5(1u, vec4<i32>(0i, 29415i, 12787i, -1i), vec2<i32>(-783i, 61910i), vec4<bool>(false, false, false, true), vec2<bool>(false, true));

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.e.x * _wgslsmith_f_op_f32(exp2(global4.d.a.x))));
    let var_1 = -1431f;
    var var_2 = _wgslsmith_sub_i32(~global1.d.c, global1.d.d);
    var var_3 = u_input.a;
    var_2 = firstTrailingBit(~countOneBits(~u_input.c));
    return !(firstLeadingBit(~(global1.a.x << (10701u % 32u))) >= 4294967295u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.c.e.x + _wgslsmith_f_op_f32(-global4.d.a.x)))))));
    let var_1 = select(vec3<bool>(global4.e.x, all(global4.e), global3.e.x), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, global1.d.b, false), arg_1.yxy), !arg_1.wxw, !select(vec3<bool>(global3.e.x, true, global3.e.x), arg_1.wxw, global3.d.wxz)), select(!(!global4.e.x | true), true, global4.d.b));
    global3 = Struct_5(abs(0u), global3.b, vec2<i32>(_wgslsmith_div_i32(global1.d.d, -reverseBits(1i)), -8473i), !vec4<bool>(func_3(0u & u_input.b, Struct_4(vec4<f32>(-621f, -1545f, -896f, var_0), var_0, Struct_3(vec2<u32>(1u, 68694u), var_0, 20178u, global1.d), Struct_1(global1.d.e.xzz, global3.d.x, -34452i, u_input.c, global1.d.e), Struct_2(vec2<f32>(global4.d.e.x, global4.c.e.x), true, Struct_1(vec3<f32>(132f, global1.b, global1.b), arg_1.x, 1i, global1.d.c, vec4<f32>(1502f, 220f, 930f, -437f)), Struct_1(global4.d.a, false, global4.c.c, global4.c.d, global4.c.e), arg_1.yyz))), true, _wgslsmith_mod_i32(2147483647i, global1.d.c) > max(global4.c.c, 1i), all(vec4<bool>(true, arg_1.x, global4.c.b, false))), var_1.xy);
    var var_2 = all(vec2<bool>(false, global3.d.x));
    var var_3 = Struct_3(global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1116f + 1000f))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(~global1.a.x), _wgslsmith_add_u32(global1.c, ~0u), global3.a), _wgslsmith_dot_vec2_u32(global1.a, ~global1.a)), global4.c);
    return firstLeadingBit(u_input.b);
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_u32(~(_wgslsmith_div_u32(~22068u, global1.c) ^ ((9221u | global3.a) >> (~global1.c % 32u))), _wgslsmith_mod_u32(~max(func_2(vec3<i32>(u_input.a, global4.d.c, 0i), arg_0), min(u_input.b, global3.a)), 11421u));
    var var_1 = global1.d.b;
    global0 = array<Struct_4, 29>();
    var var_2 = global2[_wgslsmith_index_u32(u_input.b, 23u)];
    let var_3 = global1.d;
    return StorageBuffer(_wgslsmith_f_op_f32(global1.b - 1000f), global1.d.e.yw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(857f)), global4.d.e.x, global3.d.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1114f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b + -903f), _wgslsmith_f_op_f32(sign(-525f)))) * global1.d.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-351f)))));
    global2 = array<Struct_2, 23>();
    let var_1 = true;
    let var_2 = global3.d;
    let var_3 = select(!(!(!vec4<bool>(var_2.x, false, var_2.x, true))), global3.d, var_2.x);
    let x = u_input.a;
    s_output = func_1(global3.d);
}

