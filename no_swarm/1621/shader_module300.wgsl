struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(10482u, 4294967295u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(1424f, -1334f, -1000f, 351f), 4294967295u), Struct_1(true, vec4<f32>(-583f, -464f, -914f, -605f), 25879u), 47850i, -27349i, vec3<bool>(false, false, false)), vec3<i32>(77297i, -58325i, -1i), vec2<u32>(14926u, 0u)), true, true), Struct_4(9775u, 4294967295u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-250f, 365f, 570f, 896f), 4294967295u), Struct_1(true, vec4<f32>(404f, -844f, 955f, -682f), 0u), 6746i, 1i, vec3<bool>(true, false, true)), vec3<i32>(67417i, i32(-2147483648), 14258i), vec2<u32>(15078u, 28918u)), false, true), Struct_4(2358u, 4294967295u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(-1000f, 1000f, -1006f, 245f), 44045u), Struct_1(true, vec4<f32>(1123f, -1946f, -1587f, 518f), 19521u), -1i, -13620i, vec3<bool>(false, false, false)), vec3<i32>(-18066i, -16393i, -33916i), vec2<u32>(1u, 83401u)), false, true), Struct_4(93593u, 3170u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(426f, -2510f, -324f, 232f), 4818u), Struct_1(false, vec4<f32>(1898f, 1927f, 886f, -1372f), 4294967295u), i32(-2147483648), 1i, vec3<bool>(true, true, false)), vec3<i32>(35883i, i32(-2147483648), 18074i), vec2<u32>(0u, 0u)), false, true), Struct_4(1u, 4294967295u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-1787f, 112f, 1039f, 494f), 41599u), Struct_1(true, vec4<f32>(130f, 1000f, -312f, -1000f), 61397u), -5671i, 47200i, vec3<bool>(false, true, true)), vec3<i32>(25763i, -1i, 18847i), vec2<u32>(1u, 34598u)), false, false), Struct_4(9953u, 1u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(865f, 2672f, -308f, 381f), 1u), Struct_1(false, vec4<f32>(-1077f, 1000f, -1090f, -1760f), 991u), 0i, -17821i, vec3<bool>(false, true, true)), vec3<i32>(2147483647i, -16705i, -17690i), vec2<u32>(6403u, 1u)), false, true), Struct_4(20774u, 11308u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(872f, 752f, -451f, 1489f), 19242u), Struct_1(true, vec4<f32>(1286f, -839f, 1802f, -1314f), 4294967295u), 8391i, 38462i, vec3<bool>(false, false, false)), vec3<i32>(-45374i, -1454i, 2017i), vec2<u32>(0u, 1u)), false, true), Struct_4(0u, 16216u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-692f, 137f, -323f, -888f), 35713u), Struct_1(true, vec4<f32>(-1168f, -542f, -741f, -748f), 28245u), -1i, 1i, vec3<bool>(true, false, false)), vec3<i32>(i32(-2147483648), 27357i, 0i), vec2<u32>(48477u, 38777u)), true, true), Struct_4(63155u, 36231u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(-1000f, 1000f, 925f, 1956f), 1u), Struct_1(false, vec4<f32>(443f, 1207f, 1000f, -443f), 4294967295u), 0i, 1i, vec3<bool>(true, true, false)), vec3<i32>(49784i, -3581i, 14348i), vec2<u32>(0u, 1u)), false, false), Struct_4(2362u, 9858u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(1000f, 993f, 810f, -296f), 37303u), Struct_1(true, vec4<f32>(-541f, 275f, 833f, 1000f), 33764u), 0i, -28363i, vec3<bool>(false, false, true)), vec3<i32>(2147483647i, 1i, 0i), vec2<u32>(1u, 82402u)), true, true), Struct_4(76736u, 2464u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(393f, -108f, 1073f, 674f), 1u), Struct_1(true, vec4<f32>(1239f, -452f, -1000f, 2471f), 40612u), 1i, 8995i, vec3<bool>(true, false, true)), vec3<i32>(1i, 0i, 60662i), vec2<u32>(29121u, 4294967295u)), false, false), Struct_4(22517u, 5158u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-1377f, -1231f, -398f, -1688f), 62463u), Struct_1(false, vec4<f32>(-422f, 365f, -706f, 1246f), 4294967295u), 0i, i32(-2147483648), vec3<bool>(false, false, true)), vec3<i32>(0i, i32(-2147483648), -1i), vec2<u32>(22809u, 23303u)), false, true), Struct_4(55814u, 1u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-1664f, -1000f, -1138f, -320f), 54601u), Struct_1(false, vec4<f32>(935f, -2389f, -1000f, 123f), 68953u), 1i, -39373i, vec3<bool>(false, false, true)), vec3<i32>(-1i, -8264i, 1i), vec2<u32>(1u, 61126u)), false, false), Struct_4(41932u, 4294967295u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-684f, -1202f, 668f, -1000f), 4842u), Struct_1(false, vec4<f32>(-140f, 1242f, -225f, -1546f), 18022u), 1i, 0i, vec3<bool>(true, false, false)), vec3<i32>(-9486i, 0i, -14496i), vec2<u32>(4980u, 4294967295u)), false, false), Struct_4(0u, 43183u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(161f, 586f, -215f, -676f), 58194u), Struct_1(false, vec4<f32>(341f, -1000f, -1136f, 264f), 0u), 8394i, 21487i, vec3<bool>(false, true, false)), vec3<i32>(2147483647i, -22679i, 2147483647i), vec2<u32>(1u, 21u)), false, false), Struct_4(0u, 21961u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(380f, 867f, -1147f, -558f), 1u), Struct_1(false, vec4<f32>(-181f, -1046f, 413f, -807f), 2209u), 44274i, -121567i, vec3<bool>(false, false, true)), vec3<i32>(44315i, 11659i, 2147483647i), vec2<u32>(31541u, 4294967295u)), false, true), Struct_4(1u, 32733u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(-1093f, 873f, 678f, 829f), 47219u), Struct_1(true, vec4<f32>(2642f, 2103f, -349f, -600f), 48891u), 1i, -46456i, vec3<bool>(false, false, false)), vec3<i32>(-7937i, -1i, 1i), vec2<u32>(19044u, 0u)), false, true), Struct_4(1u, 4294967295u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(2023f, -1419f, -882f, 377f), 70733u), Struct_1(false, vec4<f32>(-725f, 725f, 589f, -472f), 58158u), 25993i, -14635i, vec3<bool>(true, true, true)), vec3<i32>(75535i, 2147483647i, -7363i), vec2<u32>(66694u, 3478u)), false, false), Struct_4(4433u, 0u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-1444f, 347f, -620f, 887f), 52465u), Struct_1(true, vec4<f32>(-1081f, -1000f, -614f, -628f), 4294967295u), 33082i, 77134i, vec3<bool>(false, false, false)), vec3<i32>(1i, -1i, -46755i), vec2<u32>(1u, 1u)), false, false), Struct_4(39489u, 0u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(1461f, 1763f, 1339f, 719f), 7316u), Struct_1(true, vec4<f32>(-2563f, 1102f, 159f, -578f), 4294967295u), -26236i, 0i, vec3<bool>(false, true, false)), vec3<i32>(40228i, 47286i, 1500i), vec2<u32>(3279u, 41885u)), false, false), Struct_4(1u, 1u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(-340f, -382f, -2801f, 951f), 1u), Struct_1(true, vec4<f32>(1789f, 1041f, -569f, 1000f), 4294967295u), i32(-2147483648), -3013i, vec3<bool>(true, true, true)), vec3<i32>(1i, 2147483647i, -1i), vec2<u32>(10415u, 39300u)), true, true), Struct_4(54499u, 0u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(-395f, 322f, -1000f, -1000f), 0u), Struct_1(false, vec4<f32>(1254f, -1802f, -1000f, -2238f), 14531u), 19821i, -20222i, vec3<bool>(false, false, false)), vec3<i32>(-26436i, i32(-2147483648), i32(-2147483648)), vec2<u32>(33749u, 63449u)), true, true), Struct_4(21263u, 56026u, Struct_3(Struct_2(Struct_1(true, vec4<f32>(-365f, 1664f, 754f, -1615f), 16691u), Struct_1(true, vec4<f32>(-1254f, 356f, -1001f, 242f), 4294967295u), -21359i, 0i, vec3<bool>(true, false, false)), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec2<u32>(1u, 0u)), true, true), Struct_4(31285u, 24097u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-767f, -1777f, -208f, -375f), 0u), Struct_1(true, vec4<f32>(-715f, 261f, -226f, 1460f), 6284u), -5452i, 4676i, vec3<bool>(true, true, false)), vec3<i32>(28641i, i32(-2147483648), 0i), vec2<u32>(23261u, 26640u)), true, false), Struct_4(20802u, 10762u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(241f, -739f, -982f, -604f), 3433u), Struct_1(false, vec4<f32>(621f, -975f, -597f, -678f), 0u), -29114i, i32(-2147483648), vec3<bool>(false, true, true)), vec3<i32>(84902i, 1i, -9092i), vec2<u32>(4294967295u, 4294967295u)), true, false), Struct_4(1u, 12537u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(1173f, 991f, -103f, 133f), 71731u), Struct_1(false, vec4<f32>(558f, -271f, 1142f, 1642f), 1u), 17964i, -1i, vec3<bool>(false, true, true)), vec3<i32>(-5969i, 0i, -3583i), vec2<u32>(4294967295u, 5300u)), true, true), Struct_4(13u, 1u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(586f, 925f, -817f, 1615f), 113706u), Struct_1(false, vec4<f32>(544f, 192f, -1769f, 1778f), 0u), -19531i, i32(-2147483648), vec3<bool>(true, false, false)), vec3<i32>(2147483647i, 54028i, 883i), vec2<u32>(4294967295u, 76016u)), true, true), Struct_4(21751u, 7668u, Struct_3(Struct_2(Struct_1(false, vec4<f32>(-1681f, -923f, 1115f, 1000f), 60301u), Struct_1(false, vec4<f32>(972f, 1900f, -240f, 566f), 117692u), 55357i, 0i, vec3<bool>(false, false, false)), vec3<i32>(14773i, 2147483647i, 61181i), vec2<u32>(1454u, 33454u)), false, false));

var<private> global1: array<bool, 12>;

var<private> global2: array<vec2<i32>, 17>;

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_mod_u32(min(~20258u, u_input.a), ~0u) ^ _wgslsmith_sub_u32(38154u, 1u), ~(u_input.a & firstLeadingBit(7843u)), Struct_3(Struct_2(Struct_1(all(vec2<bool>(arg_0.a, arg_0.a)), arg_0.b, u_input.a), arg_0, -578i, arg_1.x, !(!vec3<bool>(arg_0.a, true, arg_0.a))), ~(max(arg_2, arg_2) >> ((vec3<u32>(4294967295u, u_input.a, 1u) & vec3<u32>(0u, u_input.a, 45687u)) % vec3<u32>(32u))), vec2<u32>(reverseBits(~59013u), _wgslsmith_add_u32(12775u, u_input.a) >> (~u_input.a % 32u))), !(!(false || any(vec3<bool>(arg_0.a, true, false)))), any(!vec2<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)])), arg_0.a && false)));
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0.b))), ~9259u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x * -103f), 620f)))), var_0.c.a.a.b.x, var_1.b.x, _wgslsmith_div_f32(-1727f, var_1.b.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-516f, -1875f)), _wgslsmith_f_op_f32(-arg_0.b.x))), arg_0.a)));
    let var_4 = Struct_1(!(!(!(!arg_0.a))), var_1.b, arg_0.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -1043f);
}

fn func_2() -> f32 {
    let var_0 = true;
    global3 = ~4191u;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, _wgslsmith_f_op_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 12u)], vec4<f32>(-315f, -2508f, -1000f, -3359f), u_input.a), global2[_wgslsmith_index_u32(u_input.a, 17u)] << (vec2<u32>(0u, 46177u) % vec2<u32>(32u)), vec3<i32>(15232i, 1i, -15531i))), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f + -420f))))));
    let var_2 = Struct_3(Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -132f, 1865f)), 0u), Struct_1(true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(107f, 235f, 369f, -335f) + vec4<f32>(var_1.x, var_1.x, -157f, -404f)))), 4294967295u), max(select(-9376i, 18592i, false), ~13902i) >> (59332u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(-13231i, 0i, 31228i), min(vec3<i32>(-18731i, -2147483647i, 2147483647i), vec3<i32>(-21366i, 0i, 41818i))), vec3<bool>(!(!global1[_wgslsmith_index_u32(1u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(31849u, _wgslsmith_div_u32(u_input.a, u_input.a)), 12u)], true)), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, -18352i, 14847i), vec3<i32>(-31802i, 1i, 10087i) & firstTrailingBit(vec3<i32>(-2403i, -1i, -1182i))) ^ (vec3<i32>(-1i) * -max(vec3<i32>(-13676i, 0i, -12124i), vec3<i32>(-7465i, 3902i, -49067i))), countOneBits(vec2<u32>(~1u, firstTrailingBit(~4294967295u))));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.a.b.b.x)))));
}

fn func_1() -> u32 {
    global0 = array<Struct_4, 28>();
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(f32(-1f) * -783f))));
    var_1 = _wgslsmith_f_op_f32(-1887f + _wgslsmith_f_op_f32(-987f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-281f)) - -302f), true))));
    var var_2 = Struct_1(u_input.a <= ~_wgslsmith_sub_u32(u_input.a | u_input.a, u_input.a), vec4<f32>(-164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(374f + -591f))), 625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1493f))))), min(max(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, 162u, 109012u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), vec4<u32>(37546u, 0u, 23919u, 44253u)), ~79243u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5602u, 25072u, 4294967295u), vec4<u32>(4294967295u, 29719u, u_input.a, 1539u)) % 32u)), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 6544u), vec4<u32>(7323u, u_input.a, u_input.a, 1u)), abs(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u))))));
    return _wgslsmith_add_u32(~abs(u_input.a), 26106u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1050f;
    let var_1 = ~(_wgslsmith_mult_u32(u_input.a, func_1()) ^ ~(~0u));
    let var_2 = 1677f;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(809f, var_2, -1700f, var_0), vec4<f32>(1409f, 917f, var_0, -1160f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, 522f, var_2), vec4<f32>(424f, var_0, var_0, var_2)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_2, 486f, var_0))))))));
    global2 = array<vec2<i32>, 17>();
    var var_4 = var_0;
    global3 = ~func_1();
    let var_5 = ~(~vec3<i32>(1i << (var_1 % 32u), 1i, -1i));
    var var_6 = Struct_2(Struct_1(true, var_3, var_1), Struct_1(false, var_3, ~(~(~0u))), -2147483647i, -45569i, !select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], false, global1[_wgslsmith_index_u32(var_1, 12u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], true), global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(58761u, 12u)]), false), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(67334u, 12u)]), !select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 12u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(3198u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 28244u, u_input.a), vec3<u32>(var_6.b.c, var_1, 1u)), 0u, reverseBits(u_input.a), ~23829u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(282f, 215f, var_0, var_3.x), var_6.b.b, select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 12u)], var_6.e.x, global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(11107u, 12u)], global1[_wgslsmith_index_u32(70719u, 12u)], true, var_6.b.a), false)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -369f, 913f, var_6.b.b.x)))))), reverseBits(select(abs(vec3<u32>(var_1, 4294967295u, var_6.a.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(17704u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, var_6.b.c)), false && !global1[_wgslsmith_index_u32(1u, 12u)])));
}

