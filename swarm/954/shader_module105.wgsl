struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: Struct_3 = Struct_3(Struct_2(true, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-682f, -802f, -330f, -1373f), 2147483647i, vec3<f32>(-1429f, -1000f, 1728f), 57158u), Struct_1(vec2<u32>(77681u, 0u), vec4<f32>(-420f, -246f, 1876f, 1504f), 0i, vec3<f32>(-1034f, -444f, -944f), 0u), Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(-140f, -127f, 445f, 1077f), 33932i, vec3<f32>(285f, 1080f, 1013f), 25903u)));

var<private> global2: f32 = 1193f;

var<private> global3: array<vec2<u32>, 9>;

var<private> global4: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-488f, -305f, -854f, 2047f), -21289i, vec3<f32>(2338f, -149f, 287f), 787u), Struct_4(vec3<bool>(true, true, true), Struct_3(Struct_2(true, Struct_1(vec2<u32>(0u, 12913u), vec4<f32>(-576f, -474f, 1425f, 211f), -5884i, vec3<f32>(2028f, -1519f, -1000f), 70214u), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-2263f, 402f, -1000f, -537f), 2147483647i, vec3<f32>(-536f, -545f, -320f), 0u), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(-2565f, -903f, -522f, -1198f), 2147483647i, vec3<f32>(-211f, -1628f, 1000f), 33165u))), Struct_2(false, Struct_1(vec2<u32>(51884u, 38587u), vec4<f32>(-1691f, 269f, -1000f, -946f), 1i, vec3<f32>(1339f, 3362f, 114f), 48856u), Struct_1(vec2<u32>(21538u, 0u), vec4<f32>(-647f, -1640f, 362f, -2003f), -17158i, vec3<f32>(-307f, -828f, -953f), 0u), Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(1364f, -1837f, 848f, -455f), 82725i, vec3<f32>(-433f, 1355f, 588f), 50046u)), vec3<f32>(135f, -864f, -479f), false), 299f), Struct_5(Struct_1(vec2<u32>(28610u, 40512u), vec4<f32>(-528f, 2075f, 618f, -1444f), 2147483647i, vec3<f32>(-648f, 818f, -1000f), 1u), Struct_4(vec3<bool>(false, true, false), Struct_3(Struct_2(true, Struct_1(vec2<u32>(32464u, 0u), vec4<f32>(1366f, 1453f, -1693f, -421f), 1i, vec3<f32>(-380f, -1000f, 2145f), 49094u), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(591f, -2478f, -1166f, 441f), 7762i, vec3<f32>(1316f, -184f, -604f), 35577u), Struct_1(vec2<u32>(1u, 22812u), vec4<f32>(1154f, 654f, 387f, -391f), -12289i, vec3<f32>(134f, 290f, -1222f), 0u))), Struct_2(true, Struct_1(vec2<u32>(1u, 20668u), vec4<f32>(1635f, -2283f, -470f, -358f), 1i, vec3<f32>(-830f, 185f, -1000f), 1u), Struct_1(vec2<u32>(0u, 2000u), vec4<f32>(782f, -266f, -677f, -240f), -40412i, vec3<f32>(432f, -613f, -565f), 41717u), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(221f, 1313f, -1515f, -1790f), 72515i, vec3<f32>(-108f, -1103f, -733f), 9193u)), vec3<f32>(1822f, -465f, 1053f), true), -795f), Struct_5(Struct_1(vec2<u32>(0u, 75575u), vec4<f32>(-381f, 543f, 879f, -811f), 70850i, vec3<f32>(298f, -1098f, 786f), 1u), Struct_4(vec3<bool>(true, false, false), Struct_3(Struct_2(true, Struct_1(vec2<u32>(1u, 29982u), vec4<f32>(1900f, 260f, 1604f, 243f), 1i, vec3<f32>(849f, -871f, 608f), 4294967295u), Struct_1(vec2<u32>(18206u, 0u), vec4<f32>(-214f, -1000f, -868f, -896f), 1439i, vec3<f32>(-2005f, -653f, -1482f), 19331u), Struct_1(vec2<u32>(38659u, 4294967295u), vec4<f32>(-1264f, 1455f, -339f, -995f), 10821i, vec3<f32>(1522f, -1000f, 1071f), 34982u))), Struct_2(true, Struct_1(vec2<u32>(83308u, 71725u), vec4<f32>(-602f, -1000f, 599f, -1615f), 29285i, vec3<f32>(-798f, 1314f, -172f), 29140u), Struct_1(vec2<u32>(38155u, 0u), vec4<f32>(1035f, -494f, -227f, -1000f), -1i, vec3<f32>(-265f, -739f, -1000f), 1u), Struct_1(vec2<u32>(0u, 72583u), vec4<f32>(1110f, -1000f, -744f, 988f), 1i, vec3<f32>(-1034f, -626f, 1258f), 17099u)), vec3<f32>(2225f, 1000f, -453f), true), 1000f), Struct_5(Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(-1081f, -206f, -1000f, -292f), 22888i, vec3<f32>(-354f, 2246f, -851f), 4294967295u), Struct_4(vec3<bool>(false, false, true), Struct_3(Struct_2(false, Struct_1(vec2<u32>(0u, 76295u), vec4<f32>(-797f, 596f, -1651f, 843f), 0i, vec3<f32>(-293f, 153f, -895f), 72316u), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-815f, -567f, -846f, -1000f), -22185i, vec3<f32>(1366f, 1237f, 465f), 0u), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(415f, -231f, 1561f, 2664f), 2669i, vec3<f32>(-224f, -2892f, 1610f), 4294967295u))), Struct_2(true, Struct_1(vec2<u32>(0u, 20372u), vec4<f32>(-394f, -636f, 418f, -185f), 2147483647i, vec3<f32>(-1309f, -684f, 101f), 0u), Struct_1(vec2<u32>(26477u, 51003u), vec4<f32>(1227f, 557f, -351f, 775f), -48116i, vec3<f32>(-145f, -121f, -1720f), 104162u), Struct_1(vec2<u32>(33327u, 12037u), vec4<f32>(-394f, -826f, 1774f, 1751f), i32(-2147483648), vec3<f32>(250f, 1203f, 464f), 1u)), vec3<f32>(-887f, 655f, -2374f), false), 335f), Struct_5(Struct_1(vec2<u32>(29510u, 4294967295u), vec4<f32>(1222f, 934f, -251f, 1046f), -79719i, vec3<f32>(897f, 168f, 140f), 0u), Struct_4(vec3<bool>(false, true, true), Struct_3(Struct_2(true, Struct_1(vec2<u32>(41116u, 1u), vec4<f32>(334f, -326f, 292f, 1009f), 12588i, vec3<f32>(492f, -149f, 958f), 4294967295u), Struct_1(vec2<u32>(1u, 7073u), vec4<f32>(910f, -1680f, -1000f, -1000f), i32(-2147483648), vec3<f32>(-1000f, -2164f, -1000f), 0u), Struct_1(vec2<u32>(1u, 1u), vec4<f32>(323f, -2274f, -1539f, -1048f), 35332i, vec3<f32>(410f, -296f, 1000f), 106089u))), Struct_2(true, Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-972f, -1809f, 911f, -1000f), 19474i, vec3<f32>(2081f, 811f, -222f), 0u), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(-1000f, 656f, -1457f, -1000f), i32(-2147483648), vec3<f32>(778f, 1014f, 378f), 54856u), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(-537f, 1000f, 485f, 1171f), 17470i, vec3<f32>(404f, -307f, 446f), 100753u)), vec3<f32>(-173f, -1079f, 1275f), true), 2303f), Struct_5(Struct_1(vec2<u32>(48104u, 50352u), vec4<f32>(-148f, -1031f, -689f, 579f), 0i, vec3<f32>(-2050f, -273f, 620f), 76275u), Struct_4(vec3<bool>(true, false, true), Struct_3(Struct_2(true, Struct_1(vec2<u32>(70347u, 14016u), vec4<f32>(178f, -1986f, 3021f, -442f), -5851i, vec3<f32>(212f, -701f, -1395f), 4294967295u), Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(209f, -1028f, 807f, -1000f), -18049i, vec3<f32>(609f, 1090f, 1300f), 36176u), Struct_1(vec2<u32>(23362u, 14940u), vec4<f32>(-904f, 2083f, 1589f, 1457f), -17229i, vec3<f32>(450f, -105f, 931f), 1u))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(-1688f, -865f, 622f, 393f), -1i, vec3<f32>(-1143f, 575f, 212f), 16754u), Struct_1(vec2<u32>(51889u, 1u), vec4<f32>(-190f, 1332f, -2489f, -236f), i32(-2147483648), vec3<f32>(742f, -1089f, -414f), 22769u), Struct_1(vec2<u32>(29625u, 69471u), vec4<f32>(544f, -926f, -835f, 541f), -29015i, vec3<f32>(-798f, 1546f, 1000f), 2519u)), vec3<f32>(-1000f, -512f, -324f), true), 1000f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = !(u_input.e > firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, ~u_input.b, u_input.c.x)));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(global1.a.d.a.x, global1.a.d.a.x), _wgslsmith_mult_vec2_u32(~(var_1.a.c.a << (vec2<u32>(global1.a.b.a.x, var_1.a.d.e) % vec2<u32>(32u))), (global1.a.c.a << (vec2<u32>(var_1.a.d.e, 4294967295u) % vec2<u32>(32u))) & ~vec2<u32>(global1.a.c.e, 1u))), global1.a.c.b, var_1.a.b.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.a.d.b.wyy)), var_1.a.b.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.c.d), _wgslsmith_div_vec3_f32(var_1.a.b.d, var_1.a.d.b.yxy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a.c.d, var_1.a.d.d, true)))), vec3<bool>(any(vec3<bool>(false, var_0, var_1.a.a)) && all(vec2<bool>(true, global1.a.a)), !all(vec2<bool>(var_1.a.a, true)), false))), ~reverseBits(global1.a.b.a.x >> (_wgslsmith_mult_u32(u_input.e, u_input.e) % 32u)));
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.d.e ^ _wgslsmith_clamp_u32(38432u, var_2.e, 66529u), _wgslsmith_dot_vec2_u32(u_input.c.xx, var_2.a)), vec2<u32>(global1.a.c.a.x, ~0u)) ^ u_input.c.zx;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.x, var_1.a.b.b.x), var_2.d.x)), _wgslsmith_f_op_f32(794f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + -1323f) - 669f)))), _wgslsmith_f_op_f32(select(588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-877f, _wgslsmith_div_f32(1000f, global1.a.b.d.x), var_1.a.a))), !all(select(vec3<bool>(var_0, false, global1.a.a), vec3<bool>(false, var_0, true), true)))), -1462f);
    return -1229f;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(select(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), global1.a.a), select(vec3<bool>(true, true, true), vec3<bool>(u_input.e < global1.a.d.a.x, -25026i < u_input.d.x, false && global1.a.a), vec3<bool>(false, !global1.a.a, !global1.a.a)), true), Struct_3(global1.a), global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, 801f, 1f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(-224f)), global1.a.b.b.x, -565f))), all(!select(!vec4<bool>(true, false, global1.a.a, true), vec4<bool>(false, global1.a.a, global1.a.a, false), vec4<bool>(global1.a.a, global1.a.a, true, global1.a.a))));
    global2 = var_0.c.d.b.x;
    let var_1 = vec3<bool>(!(-1000f <= _wgslsmith_f_op_f32(701f * _wgslsmith_f_op_f32(step(var_0.c.d.b.x, var_0.d.x)))), any(var_0.a.zy), all(select(vec3<bool>(true, 1u < var_0.c.c.e, var_0.e), !var_0.a, !(global1.a.a || var_0.e))));
    let var_2 = var_0.a.x;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 1u) | u_input.b, 6u)];
    return var_3.b;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = global1.a.b.e;
    let var_1 = ~(~(~4294967295u)) != arg_0;
    let var_2 = func_2();
    var var_3 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, 9109i << (_wgslsmith_sub_u32(u_input.b, arg_0) % 32u)), u_input.d), vec2<i32>(abs(-1i), u_input.a) >> (firstLeadingBit(~_wgslsmith_clamp_vec2_u32(u_input.c.yy, vec2<u32>(4294967295u, arg_0), vec2<u32>(1510u, 4294967295u))) % vec2<u32>(32u)));
    var_3 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.c.c, global1.a.c.c, _wgslsmith_mult_i32(1i, 2147483647i)), ~select(vec3<i32>(0i, -2202i, 0i), vec3<i32>(0i, 36949i, var_2.c.b.c), var_1)));
    return func_2().b.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_1(_wgslsmith_div_u32(u_input.b, global1.a.b.e << (u_input.e % 32u)), select(!global1.a.a, 4294967295u == global1.a.b.e, any(vec4<bool>(global1.a.a, global1.a.a, false, global1.a.a))) & !global1.a.a), Struct_4(!(!vec3<bool>(global1.a.a, true, global1.a.a)), global0[_wgslsmith_index_u32(0u, 31u)], Struct_2(!global1.a.a, Struct_1(vec2<u32>(global1.a.b.e, 2194u), vec4<f32>(1000f, 273f, global1.a.c.d.x, 257f), -1i, vec3<f32>(1082f, global1.a.b.b.x, global1.a.c.d.x), abs(0u)), func_2().b.a.d, Struct_1(u_input.c.yx | global3[_wgslsmith_index_u32(u_input.b, 9u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.d.d.x, global1.a.b.b.x, global1.a.b.d.x, -333f), vec4<f32>(global1.a.c.d.x, 1000f, -1327f, global1.a.b.b.x), vec4<bool>(true, global1.a.a, false, global1.a.a))), global1.a.d.c >> (global1.a.c.a.x % 32u), _wgslsmith_f_op_vec3_f32(-global1.a.d.b.wzz), ~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.a.c.b.wwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d.b.x, -121f, -499f) * vec3<f32>(global1.a.b.d.x, global1.a.b.b.x, global1.a.c.b.x))))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.b.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(434f * 1021f), -284f)), _wgslsmith_f_op_f32(global1.a.d.b.x - _wgslsmith_f_op_f32(-1859f * -1000f))))));
    let var_1 = func_2().c.d;
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(~0i, global1.a.b.c, -1i), _wgslsmith_sub_vec3_i32(-firstTrailingBit(vec3<i32>(var_1.c, 25732i, var_1.c)), vec3<i32>(~(-9622i), 13577i, var_0.a.c << (u_input.e % 32u)))), min(vec3<i32>(min(global1.a.b.c, -23168i), -2417i, abs(abs(u_input.a))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -6634i, var_1.c), ~vec3<i32>(-1i, 1i, var_0.b.b.a.c.c))));
    global1 = global0[_wgslsmith_index_u32(~(~var_0.b.b.a.c.e), 31u)];
    var_2 = -abs(max(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(1i, var_0.b.c.b.c, var_0.b.b.a.d.c))), vec3<i32>(1i, var_0.b.c.c.c, _wgslsmith_mult_i32(global1.a.d.c, -77072i))));
    let var_3 = var_0.b.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-1856i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), var_3.b.b.x)) - _wgslsmith_f_op_f32(1f - 328f))), vec4<f32>(var_3.b.d.x, 494f, global1.a.b.b.x, _wgslsmith_f_op_f32(global1.a.b.d.x + -741f)));
}

