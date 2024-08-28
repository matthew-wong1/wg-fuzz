struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(false, vec4<f32>(-1181f, -248f, -925f, -1021f), 36091u, vec3<i32>(33655i, i32(-2147483648), 10574i), 0u), Struct_1(true, vec4<f32>(1520f, -1134f, -1000f, 1000f), 1u, vec3<i32>(-29026i, 28512i, -1643i), 4294967295u), vec3<u32>(27634u, 1u, 1u), Struct_1(false, vec4<f32>(524f, -1100f, 271f, -483f), 21452u, vec3<i32>(21994i, 12832i, 0i), 0u)), Struct_2(Struct_1(true, vec4<f32>(-457f, -931f, 614f, 258f), 28970u, vec3<i32>(1i, 1i, -9445i), 4294967295u), Struct_1(true, vec4<f32>(-1652f, 752f, -1129f, -1520f), 38687u, vec3<i32>(1i, 1i, -13740i), 4294967295u), vec3<u32>(15706u, 1u, 79871u), Struct_1(true, vec4<f32>(-658f, -144f, 145f, -588f), 0u, vec3<i32>(19031i, 0i, i32(-2147483648)), 23392u)), Struct_2(Struct_1(true, vec4<f32>(-1324f, -766f, -289f, 1130f), 4294967295u, vec3<i32>(i32(-2147483648), 51711i, 1i), 0u), Struct_1(true, vec4<f32>(586f, 981f, 2007f, -1000f), 9464u, vec3<i32>(-17394i, 61803i, -1i), 399u), vec3<u32>(1u, 10039u, 38331u), Struct_1(true, vec4<f32>(-968f, 391f, 312f, -961f), 1u, vec3<i32>(2147483647i, -1i, -10007i), 77313u)), Struct_2(Struct_1(true, vec4<f32>(-1000f, -1391f, -1998f, 1000f), 4294967295u, vec3<i32>(0i, 1i, 29790i), 16475u), Struct_1(true, vec4<f32>(-994f, 771f, 284f, 215f), 6801u, vec3<i32>(0i, i32(-2147483648), -21866i), 21105u), vec3<u32>(1u, 0u, 0u), Struct_1(true, vec4<f32>(464f, -2329f, 923f, -1073f), 4294967295u, vec3<i32>(1i, -2005i, -1i), 1u)), Struct_2(Struct_1(false, vec4<f32>(1504f, 910f, 311f, -1382f), 6290u, vec3<i32>(i32(-2147483648), 2147483647i, 36200i), 1u), Struct_1(true, vec4<f32>(-1109f, 867f, 856f, 930f), 4294967295u, vec3<i32>(-25222i, -1i, 6461i), 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(true, vec4<f32>(-1456f, 2077f, -168f, -731f), 4294967295u, vec3<i32>(-24691i, 49701i, -16476i), 4294967295u)), Struct_2(Struct_1(true, vec4<f32>(-157f, -668f, -585f, 870f), 4294967295u, vec3<i32>(-11099i, 2147483647i, -1i), 1u), Struct_1(true, vec4<f32>(528f, -201f, -646f, -318f), 0u, vec3<i32>(-135i, -1i, 16156i), 18993u), vec3<u32>(32723u, 31300u, 26507u), Struct_1(true, vec4<f32>(-1000f, 143f, 237f, 360f), 44103u, vec3<i32>(2147483647i, 2147483647i, 2147483647i), 69922u)), Struct_2(Struct_1(false, vec4<f32>(1547f, 1648f, -1000f, -226f), 0u, vec3<i32>(0i, i32(-2147483648), -33867i), 52904u), Struct_1(true, vec4<f32>(1604f, -915f, -592f, -299f), 0u, vec3<i32>(1i, 18476i, -22852i), 66639u), vec3<u32>(1u, 1u, 26391u), Struct_1(false, vec4<f32>(-354f, -942f, 614f, 435f), 88736u, vec3<i32>(0i, -1i, -32094i), 23209u)), Struct_2(Struct_1(true, vec4<f32>(1334f, -631f, -454f, -625f), 43661u, vec3<i32>(-1i, -1i, i32(-2147483648)), 6889u), Struct_1(true, vec4<f32>(-1058f, 1392f, 532f, 709f), 59125u, vec3<i32>(23221i, -4605i, -38555i), 4294967295u), vec3<u32>(1u, 1u, 34840u), Struct_1(true, vec4<f32>(-810f, 1474f, -346f, -599f), 4294967295u, vec3<i32>(i32(-2147483648), 2147483647i, -1i), 78766u)), Struct_2(Struct_1(true, vec4<f32>(648f, 1000f, 1489f, 397f), 69361u, vec3<i32>(33882i, -26260i, 2147483647i), 95152u), Struct_1(false, vec4<f32>(-1000f, -142f, 1359f, -759f), 0u, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 12874u), vec3<u32>(1u, 4294967295u, 56976u), Struct_1(true, vec4<f32>(469f, -438f, -1437f, 280f), 4294967295u, vec3<i32>(i32(-2147483648), 2147483647i, 0i), 1u)), Struct_2(Struct_1(false, vec4<f32>(-481f, -395f, -918f, 2565f), 63332u, vec3<i32>(2147483647i, 1i, -1i), 48699u), Struct_1(true, vec4<f32>(132f, -1924f, 964f, -953f), 45944u, vec3<i32>(-54132i, 18585i, 21408i), 27034u), vec3<u32>(12736u, 0u, 0u), Struct_1(true, vec4<f32>(-1012f, -2820f, -1416f, -1191f), 1u, vec3<i32>(i32(-2147483648), -1i, 0i), 0u)), Struct_2(Struct_1(true, vec4<f32>(-2157f, -643f, -415f, 1004f), 63861u, vec3<i32>(1i, 1i, 24303i), 0u), Struct_1(true, vec4<f32>(-2051f, -1090f, 409f, 777f), 4294967295u, vec3<i32>(-1i, 33508i, 0i), 4294967295u), vec3<u32>(1u, 1450u, 1u), Struct_1(true, vec4<f32>(2548f, -1000f, 909f, -636f), 1u, vec3<i32>(61572i, -59318i, -1i), 29836u)), Struct_2(Struct_1(false, vec4<f32>(545f, 1370f, -1107f, 1035f), 19611u, vec3<i32>(69779i, 2147483647i, -1i), 30922u), Struct_1(true, vec4<f32>(-222f, -149f, -1429f, 435f), 4294967295u, vec3<i32>(-28136i, -55049i, -1i), 30726u), vec3<u32>(33852u, 1u, 1u), Struct_1(true, vec4<f32>(-678f, 975f, -403f, -806f), 40924u, vec3<i32>(-78945i, -40004i, 11844i), 0u)), Struct_2(Struct_1(false, vec4<f32>(2308f, -225f, -421f, -113f), 0u, vec3<i32>(-2770i, 2147483647i, -1i), 1u), Struct_1(false, vec4<f32>(-1912f, 1240f, 116f, -487f), 4294967295u, vec3<i32>(-1i, 1i, 1i), 4294967295u), vec3<u32>(4294967295u, 68449u, 4294967295u), Struct_1(false, vec4<f32>(286f, 1951f, 124f, 879f), 107889u, vec3<i32>(1i, -1i, 1i), 46387u)), Struct_2(Struct_1(false, vec4<f32>(1000f, 588f, -235f, 757f), 1u, vec3<i32>(-14594i, 1i, -1i), 23825u), Struct_1(false, vec4<f32>(-1707f, -1990f, 1000f, 309f), 18698u, vec3<i32>(27174i, -1i, 0i), 45250u), vec3<u32>(46902u, 23519u, 1u), Struct_1(true, vec4<f32>(488f, 928f, -422f, -1657f), 4294967295u, vec3<i32>(9099i, 29011i, 15754i), 20476u)), Struct_2(Struct_1(true, vec4<f32>(1000f, -134f, -1714f, 2278f), 12870u, vec3<i32>(-1i, 28415i, -1i), 4294967295u), Struct_1(false, vec4<f32>(977f, -174f, -199f, 893f), 4294967295u, vec3<i32>(-16138i, -55471i, 36338i), 1u), vec3<u32>(73248u, 0u, 4133u), Struct_1(false, vec4<f32>(814f, 150f, -1036f, -477f), 14027u, vec3<i32>(2147483647i, -1i, 49654i), 1u)), Struct_2(Struct_1(false, vec4<f32>(488f, 287f, -1321f, 856f), 52082u, vec3<i32>(1i, i32(-2147483648), 2147483647i), 1u), Struct_1(false, vec4<f32>(1287f, -399f, 350f, -1312f), 1050u, vec3<i32>(7865i, -51383i, -1i), 15709u), vec3<u32>(58199u, 4294967295u, 24386u), Struct_1(true, vec4<f32>(718f, -427f, -2071f, 565f), 19383u, vec3<i32>(0i, 2147483647i, 0i), 29973u)), Struct_2(Struct_1(true, vec4<f32>(1000f, -552f, 712f, 1247f), 863u, vec3<i32>(-28231i, 0i, -1i), 1u), Struct_1(false, vec4<f32>(697f, 1400f, 1382f, -514f), 0u, vec3<i32>(-1i, -13183i, -20089i), 4294967295u), vec3<u32>(0u, 51609u, 4294967295u), Struct_1(false, vec4<f32>(2120f, -1000f, 1841f, 1455f), 100793u, vec3<i32>(8313i, 44305i, 15274i), 34902u)), Struct_2(Struct_1(true, vec4<f32>(426f, -2407f, 494f, 1385f), 10611u, vec3<i32>(0i, 1902i, 25689i), 4294967295u), Struct_1(true, vec4<f32>(-543f, 811f, -791f, -929f), 0u, vec3<i32>(1i, 69371i, -19530i), 4294967295u), vec3<u32>(9905u, 27173u, 9873u), Struct_1(true, vec4<f32>(-1012f, 1003f, -1000f, -180f), 34928u, vec3<i32>(i32(-2147483648), -13413i, 16771i), 12024u)), Struct_2(Struct_1(true, vec4<f32>(929f, -277f, 700f, -1838f), 4294967295u, vec3<i32>(10962i, -7602i, 14428i), 4294967295u), Struct_1(true, vec4<f32>(1210f, 1366f, 882f, 466f), 25452u, vec3<i32>(-1i, -1i, -13191i), 27583u), vec3<u32>(4294967295u, 1u, 27036u), Struct_1(false, vec4<f32>(920f, 368f, 1414f, 1164f), 31606u, vec3<i32>(-1i, 12075i, 31069i), 17700u)), Struct_2(Struct_1(false, vec4<f32>(-1472f, 1431f, -1159f, 170f), 0u, vec3<i32>(-1i, -24527i, -1i), 1u), Struct_1(false, vec4<f32>(1000f, 126f, 538f, 2363f), 270u, vec3<i32>(20080i, i32(-2147483648), 2147483647i), 0u), vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(true, vec4<f32>(-560f, -954f, -784f, 1000f), 4294967295u, vec3<i32>(2147483647i, 2147483647i, 12098i), 21750u)), Struct_2(Struct_1(false, vec4<f32>(1000f, -146f, -491f, 483f), 0u, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 13209u), Struct_1(false, vec4<f32>(2107f, 1662f, 570f, 653f), 45563u, vec3<i32>(2147483647i, 1i, -12732i), 4294967295u), vec3<u32>(859u, 4294967295u, 0u), Struct_1(false, vec4<f32>(1385f, -1248f, -1992f, 786f), 60233u, vec3<i32>(0i, 0i, i32(-2147483648)), 68655u)), Struct_2(Struct_1(false, vec4<f32>(2233f, 704f, -1852f, -364f), 21121u, vec3<i32>(-21977i, 10018i, -1250i), 35281u), Struct_1(true, vec4<f32>(-311f, -1067f, -227f, 272f), 4294967295u, vec3<i32>(-11298i, -109819i, 21102i), 87530u), vec3<u32>(0u, 1u, 24562u), Struct_1(false, vec4<f32>(1028f, 1000f, -1285f, -917f), 31399u, vec3<i32>(-20644i, -1i, -30713i), 1u)), Struct_2(Struct_1(false, vec4<f32>(741f, 139f, -501f, -337f), 1u, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), 13926u), Struct_1(false, vec4<f32>(398f, 414f, -684f, 1634f), 4294967295u, vec3<i32>(10601i, 0i, 2147483647i), 0u), vec3<u32>(1u, 11551u, 5090u), Struct_1(false, vec4<f32>(813f, -113f, 547f, -1301f), 36978u, vec3<i32>(-19430i, -57858i, -9997i), 10878u)), Struct_2(Struct_1(true, vec4<f32>(365f, 227f, 168f, 945f), 71255u, vec3<i32>(-2489i, 1i, 0i), 4107u), Struct_1(true, vec4<f32>(592f, -870f, 1460f, -1000f), 40908u, vec3<i32>(-7312i, 41125i, -1i), 1u), vec3<u32>(4294967295u, 17884u, 6034u), Struct_1(true, vec4<f32>(554f, 1759f, 1259f, 201f), 85866u, vec3<i32>(24739i, 0i, 0i), 4294967295u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    let var_0 = global1[_wgslsmith_index_u32(67114u, 24u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.b + vec4<f32>(var_0.b.b.x, var_0.d.b.x, 527f, -1610f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.b.x, var_0.a.b.x, -818f, 570f), var_0.b.b, vec4<bool>(var_0.d.a, true, false, var_0.a.a))))) + var_0.d.b));
    global1 = array<Struct_2, 24>();
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, ~u_input.b), var_0.d.d.zx);
    let var_3 = var_0.b;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(519f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.x, -719f))), _wgslsmith_f_op_f32(f32(-1f) * -542f))) < _wgslsmith_f_op_f32(-671f * _wgslsmith_div_f32(var_0.a.b.x, _wgslsmith_f_op_f32(var_0.d.b.x * _wgslsmith_f_op_f32(f32(-1f) * -2409f))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_2, 24>();
    global0 = array<i32, 30>();
    var var_0 = 23372i;
    var_0 = _wgslsmith_sub_i32(-2580i, 0i);
    var var_1 = ~min(global0[_wgslsmith_index_u32(arg_0.a.e, 30u)], ~(-reverseBits(0i)));
    return arg_0.b.b.x;
}

fn func_1() -> u32 {
    let var_0 = vec3<bool>(all(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true))), false, func_2());
    var var_1 = Struct_1(any(vec2<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), false)), true)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1191f, 941f, var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 24u)], Struct_1(var_0.x, vec4<f32>(1110f, 619f, 373f, 101f), u_input.a, u_input.d, 1u))))), -1056f, 181f), _wgslsmith_sub_u32(u_input.a, ~(_wgslsmith_sub_u32(0u, u_input.a) >> (_wgslsmith_add_u32(59799u, u_input.a) % 32u))), vec3<i32>(countOneBits(u_input.c), -u_input.b, u_input.d.x), countOneBits(1u));
    let var_2 = select(vec3<bool>(var_1.a, var_1.a, true), var_0, any(vec4<bool>(var_0.x, var_1.a, var_1.b.x <= var_1.b.x, !(var_1.e < 7654u))));
    let var_3 = Struct_2(Struct_1(true, vec4<f32>(-196f, var_1.b.x, 1454f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, 311f))), ~firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, var_1.e, var_1.e)), select(min(u_input.d, var_1.d), vec3<i32>(20672i, -2147483647i, var_1.d.x) | ~u_input.d, any(select(vec2<bool>(true, var_1.a), var_2.yx, var_2.zy))), ~55707u), Struct_1(!(!var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2801f, var_1.b.x, var_1.b.x, -408f), var_1.b, false))) - vec4<f32>(var_1.b.x, -1366f, -895f, 736f)), reverseBits(~reverseBits(1708u)), firstLeadingBit(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -49i, 0i)), var_1.d)), select(~var_1.e, 1u, true)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(95418u, 4294967295u, u_input.a), u_input.a, var_1.e) << (~(vec3<u32>(var_1.c, 4294967295u, 0u) & vec3<u32>(20222u, var_1.c, var_1.c)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.e, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), Struct_1(all(!(!var_0.zy)), var_1.b, ~var_1.e, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, var_1.d.x, var_1.d.x), vec3<i32>(~global0[_wgslsmith_index_u32(10618u, 30u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), ~u_input.d.x)), select(var_1.e, ~_wgslsmith_sub_u32(76392u, 1u), var_2.x)));
    return reverseBits(53652u);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = ~arg_1.c;
    global0 = array<i32, 30>();
    let var_1 = ~(arg_1.d.d.xx & vec2<i32>(_wgslsmith_sub_i32(~(-23632i), _wgslsmith_add_i32(u_input.c, 37693i)), arg_1.b.d.x));
    let var_2 = vec4<bool>(true, all(vec3<bool>(all(vec4<bool>(arg_1.a.a, true, true, arg_1.b.a)), arg_1.d.a && all(vec4<bool>(arg_1.b.a, arg_1.d.a, false, arg_1.a.a)), true)), true, arg_1.b.a);
    global1 = array<Struct_2, 24>();
    return vec4<bool>(arg_1.a.a, arg_1.b.a, var_2.x, select(any(vec2<bool>(true, true)) && true, arg_1.b.a, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~_wgslsmith_mod_u32(~u_input.a, u_input.a), u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2413f), _wgslsmith_f_op_f32(542f + -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)))), 1410f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2718f, 2077f, 234f, -1000f) + vec4<f32>(863f, 147f, -1849f, 1491f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(713f, 1000f, -192f, 309f) + vec4<f32>(-284f, 1465f, -389f, 1850f))))))));
    var var_2 = 29233u;
    global1 = array<Struct_2, 24>();
    var var_3 = any(select(vec4<bool>(true, !any(vec2<bool>(false, true)), true, true), vec4<bool>(all(vec4<bool>(false, true, false, false)) & (0i <= global0[_wgslsmith_index_u32(u_input.a, 30u)]), false, -u_input.b != ~global0[_wgslsmith_index_u32(var_0.x, 30u)], u_input.c != global0[_wgslsmith_index_u32(var_0.x & var_0.x, 30u)]), any(func_4(func_1(), Struct_2(Struct_1(false, vec4<f32>(1071f, var_1.x, var_1.x, var_1.x), var_0.x, vec3<i32>(0i, global0[_wgslsmith_index_u32(var_0.x, 30u)], -17186i), u_input.a), Struct_1(false, vec4<f32>(-575f, var_1.x, var_1.x, var_1.x), 44941u, u_input.d, 4294967295u), var_0, Struct_1(true, vec4<f32>(-354f, var_1.x, 609f, -145f), u_input.a, u_input.d, u_input.a))))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -802f);
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 808f, -2110f, -1177f))))), _wgslsmith_add_vec2_i32(u_input.d.yy, -u_input.d.zy));
}

