struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(-1311f, -367f, -358f), vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(1000f, -323f), 237f), Struct_1(vec3<f32>(-3171f, 359f, 427f), vec2<i32>(0i, -8966i), vec2<f32>(1040f, 1346f), 305f), Struct_1(vec3<f32>(517f, -1000f, 1000f), vec2<i32>(44385i, 9497i), vec2<f32>(-116f, -570f), -610f), Struct_1(vec3<f32>(-129f, 156f, 1176f), vec2<i32>(1i, 1i), vec2<f32>(610f, -1032f), -1113f), Struct_1(vec3<f32>(-151f, 515f, -569f), vec2<i32>(i32(-2147483648), 23354i), vec2<f32>(1000f, -915f), 1000f), Struct_1(vec3<f32>(-654f, 778f, -1071f), vec2<i32>(3613i, 0i), vec2<f32>(352f, -746f), -317f), Struct_1(vec3<f32>(-1000f, 783f, -453f), vec2<i32>(16464i, -5311i), vec2<f32>(950f, -472f), -281f), Struct_1(vec3<f32>(-1861f, 768f, -226f), vec2<i32>(1i, -36136i), vec2<f32>(1534f, 1081f), 1869f), Struct_1(vec3<f32>(838f, -384f, 1573f), vec2<i32>(23984i, 0i), vec2<f32>(-422f, 1068f), 1020f), Struct_1(vec3<f32>(2373f, 459f, -124f), vec2<i32>(-20450i, 11700i), vec2<f32>(414f, -1564f), 220f), Struct_1(vec3<f32>(273f, 143f, 313f), vec2<i32>(-13260i, -7138i), vec2<f32>(-412f, 103f), 398f), Struct_1(vec3<f32>(-1517f, -797f, 146f), vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(285f, 1640f), 1100f), Struct_1(vec3<f32>(1022f, -1000f, -1711f), vec2<i32>(-1i, 0i), vec2<f32>(1665f, 1138f), 2193f), Struct_1(vec3<f32>(-912f, 1387f, 570f), vec2<i32>(-49190i, -66798i), vec2<f32>(103f, -554f), 1000f));

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(-1061f, vec4<f32>(-2506f, 1354f, -647f, -1681f), Struct_2(Struct_1(vec3<f32>(-1349f, 406f, -605f), vec2<i32>(5932i, -58642i), vec2<f32>(448f, 144f), 1041f)), true), Struct_3(200f, vec4<f32>(1000f, -1000f, -1771f, 644f), Struct_2(Struct_1(vec3<f32>(-764f, -794f, -1006f), vec2<i32>(471i, -1i), vec2<f32>(-880f, 1000f), -1552f)), false), Struct_3(-345f, vec4<f32>(1000f, 192f, 517f, -968f), Struct_2(Struct_1(vec3<f32>(-1000f, 1194f, 193f), vec2<i32>(-10639i, i32(-2147483648)), vec2<f32>(522f, 965f), 331f)), true), Struct_3(2154f, vec4<f32>(539f, 710f, 864f, 1525f), Struct_2(Struct_1(vec3<f32>(-1519f, 792f, -674f), vec2<i32>(-1i, 1584i), vec2<f32>(-1395f, -798f), 229f)), false), Struct_3(-1000f, vec4<f32>(2441f, 718f, -322f, 135f), Struct_2(Struct_1(vec3<f32>(746f, 337f, 1697f), vec2<i32>(1i, -33863i), vec2<f32>(-1869f, -276f), -195f)), false), Struct_3(794f, vec4<f32>(297f, -656f, -845f, -1461f), Struct_2(Struct_1(vec3<f32>(-1016f, 1798f, 1923f), vec2<i32>(-10325i, 8961i), vec2<f32>(-158f, -197f), -477f)), true), Struct_3(917f, vec4<f32>(-844f, -1051f, -789f, -769f), Struct_2(Struct_1(vec3<f32>(-1116f, 1863f, 1000f), vec2<i32>(1i, -1i), vec2<f32>(-1000f, 152f), -325f)), false), Struct_3(1547f, vec4<f32>(1002f, -1429f, -209f, -130f), Struct_2(Struct_1(vec3<f32>(-521f, 399f, 741f), vec2<i32>(i32(-2147483648), -15293i), vec2<f32>(-773f, 173f), 166f)), false), Struct_3(-376f, vec4<f32>(-1354f, -732f, 1047f, 1658f), Struct_2(Struct_1(vec3<f32>(-1000f, -393f, -1139f), vec2<i32>(i32(-2147483648), 11961i), vec2<f32>(-2139f, -1407f), -1263f)), true), Struct_3(269f, vec4<f32>(-1688f, -1036f, -1160f, -627f), Struct_2(Struct_1(vec3<f32>(-1151f, -904f, 818f), vec2<i32>(-31223i, 0i), vec2<f32>(-652f, -832f), -1256f)), false), Struct_3(-1321f, vec4<f32>(905f, -1959f, -607f, -288f), Struct_2(Struct_1(vec3<f32>(-1511f, -1000f, 940f), vec2<i32>(2147483647i, 0i), vec2<f32>(1000f, 2024f), 857f)), true), Struct_3(-248f, vec4<f32>(-418f, 496f, -604f, 1000f), Struct_2(Struct_1(vec3<f32>(-173f, -707f, -987f), vec2<i32>(i32(-2147483648), 0i), vec2<f32>(-1000f, 1000f), 1580f)), false), Struct_3(247f, vec4<f32>(-997f, 726f, -658f, 1000f), Struct_2(Struct_1(vec3<f32>(1189f, 715f, 327f), vec2<i32>(-1i, -23084i), vec2<f32>(-1912f, -298f), 838f)), false), Struct_3(251f, vec4<f32>(-1088f, 1797f, -1718f, -1888f), Struct_2(Struct_1(vec3<f32>(-1000f, 1000f, 1541f), vec2<i32>(-4915i, -1i), vec2<f32>(618f, 1084f), -466f)), true), Struct_3(1000f, vec4<f32>(1263f, -1271f, -327f, 320f), Struct_2(Struct_1(vec3<f32>(185f, -323f, 480f), vec2<i32>(-41358i, 40672i), vec2<f32>(-156f, -318f), 359f)), true), Struct_3(-858f, vec4<f32>(-867f, 101f, -1155f, -120f), Struct_2(Struct_1(vec3<f32>(1238f, -277f, -398f), vec2<i32>(1i, -16381i), vec2<f32>(483f, -465f), -1000f)), false), Struct_3(-1591f, vec4<f32>(-472f, 1375f, 971f, 1000f), Struct_2(Struct_1(vec3<f32>(-1371f, 641f, 1000f), vec2<i32>(36947i, 17142i), vec2<f32>(1101f, 386f), 1598f)), true), Struct_3(193f, vec4<f32>(-741f, -828f, -1642f, -1456f), Struct_2(Struct_1(vec3<f32>(818f, 729f, 1620f), vec2<i32>(1i, 2147483647i), vec2<f32>(973f, -712f), -281f)), false), Struct_3(745f, vec4<f32>(587f, 1000f, 1000f, 849f), Struct_2(Struct_1(vec3<f32>(-591f, 172f, 195f), vec2<i32>(24598i, -30499i), vec2<f32>(525f, -670f), 863f)), true), Struct_3(-315f, vec4<f32>(1887f, 320f, -1234f, -2478f), Struct_2(Struct_1(vec3<f32>(164f, -952f, -377f), vec2<i32>(24033i, -1i), vec2<f32>(177f, 878f), 297f)), false), Struct_3(-569f, vec4<f32>(-1429f, -350f, 543f, -1038f), Struct_2(Struct_1(vec3<f32>(2210f, 809f, 163f), vec2<i32>(i32(-2147483648), 1i), vec2<f32>(901f, -1000f), -275f)), true), Struct_3(1000f, vec4<f32>(-255f, 1192f, 970f, -1549f), Struct_2(Struct_1(vec3<f32>(-269f, -507f, 477f), vec2<i32>(5733i, 31846i), vec2<f32>(1361f, 164f), 655f)), false), Struct_3(-1000f, vec4<f32>(-672f, 1000f, -1052f, 1157f), Struct_2(Struct_1(vec3<f32>(-879f, 679f, 1138f), vec2<i32>(0i, 2147483647i), vec2<f32>(-2257f, -616f), 1234f)), false), Struct_3(-875f, vec4<f32>(587f, -503f, -1585f, -1000f), Struct_2(Struct_1(vec3<f32>(372f, 902f, 105f), vec2<i32>(2147483647i, 1i), vec2<f32>(389f, 197f), -786f)), false), Struct_3(234f, vec4<f32>(-644f, 723f, -1199f, -1529f), Struct_2(Struct_1(vec3<f32>(-1579f, 613f, 2943f), vec2<i32>(5455i, -45867i), vec2<f32>(496f, 1640f), -1282f)), false), Struct_3(443f, vec4<f32>(136f, 985f, 1000f, -473f), Struct_2(Struct_1(vec3<f32>(-547f, 959f, 1013f), vec2<i32>(i32(-2147483648), 12559i), vec2<f32>(1493f, 718f), -828f)), true), Struct_3(148f, vec4<f32>(-316f, 133f, -1000f, 223f), Struct_2(Struct_1(vec3<f32>(-963f, -432f, 1802f), vec2<i32>(-1i, 49284i), vec2<f32>(-798f, -113f), 576f)), true), Struct_3(-1000f, vec4<f32>(-1196f, 376f, 126f, 1000f), Struct_2(Struct_1(vec3<f32>(190f, -1367f, -395f), vec2<i32>(25622i, -40730i), vec2<f32>(-1000f, -1000f), -128f)), true), Struct_3(1957f, vec4<f32>(-1258f, 339f, 325f, 617f), Struct_2(Struct_1(vec3<f32>(-293f, -362f, -400f), vec2<i32>(-1i, -28079i), vec2<f32>(582f, -871f), 1000f)), false), Struct_3(-1000f, vec4<f32>(-132f, -494f, 975f, 251f), Struct_2(Struct_1(vec3<f32>(-320f, 219f, 835f), vec2<i32>(-11530i, 34477i), vec2<f32>(1197f, 1397f), 1345f)), false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global3 = array<Struct_3, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a.a)), arg_0.c.a.b, arg_2.a.a.xx, arg_0.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.a.x)) * -119f), arg_0.a);
    var var_2 = max(~firstTrailingBit(max(-u_input.a.x, 0i)), 2147483647i);
    let var_3 = Struct_5(vec3<f32>(arg_0.c.a.a.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1638f))))), !select(vec2<bool>(false, true), vec2<bool>(true, arg_1.d), !any(vec3<bool>(arg_1.d, false, arg_0.d))), _wgslsmith_mult_i32(arg_0.c.a.b.x, _wgslsmith_mod_i32(~u_input.b.x, abs(arg_0.c.a.b.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, 30095i)))), arg_1.b.x);
    return true;
}

fn func_2() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(34954u, 14u)];
    var var_1 = select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(Struct_3(1341f, vec4<f32>(var_0.d, 583f, var_0.c.x, var_0.c.x), Struct_2(Struct_1(var_0.a, vec2<i32>(2034i, 22037i), var_0.c, var_0.c.x)), true), Struct_3(var_0.c.x, vec4<f32>(var_0.c.x, -973f, var_0.d, var_0.c.x), Struct_2(Struct_1(var_0.a, u_input.b.zx, var_0.a.xz, var_0.a.x)), true), Struct_2(Struct_1(vec3<f32>(var_0.d, -2330f, var_0.a.x), var_0.b, var_0.c, var_0.c.x))), false, true, select(true, true, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), false && !all(vec2<bool>(true, true)), true);
    global0 = array<vec4<i32>, 19>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -821f);
    var var_3 = select(firstTrailingBit(vec4<u32>(~4945u >> (min(1u, 1u) % 32u), _wgslsmith_mod_u32(31790u, 1u) >> (0u % 32u), _wgslsmith_mod_u32(1u, max(17062u, 60946u)), _wgslsmith_sub_u32(~5076u, 0u))), min(vec4<u32>(4294967295u, 4294967295u, max(1u, 36600u) >> (1u % 32u), 1u), ~(~vec4<u32>(50826u, 4294967295u, 8803u, 1u))), !select(true, all(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(2011f, var_2)))) + 1881f) + var_2);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> Struct_5 {
    global3 = array<Struct_3, 30>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)));
    global2 = array<Struct_1, 14>();
    let var_1 = 62928u;
    var var_2 = select(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1, 44966u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, var_1), vec3<u32>(var_1, var_1, var_1))), 74564u), ~vec2<u32>(~63020u, _wgslsmith_div_u32(var_1, var_1)), !vec2<bool>(0u < var_1, true)) | abs(~(~vec2<u32>(var_1, 24052u)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(arg_1.b.yyw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.a.a.x, var_0.x, 189f) - vec3<f32>(1374f, arg_1.a, -374f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.wyw))))), select(vec2<bool>(!func_3(global3[_wgslsmith_index_u32(0u, 30u)], Struct_3(251f, vec4<f32>(var_0.x, 516f, arg_1.a, arg_0.c.x), arg_1.c, true), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 14u)])), arg_1.d), vec2<bool>(any(!vec4<bool>(arg_1.d, false, false, true)), (765f < arg_0.d) | false), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_1.d, false), vec2<bool>(arg_1.d, arg_1.d)), !vec2<bool>(arg_1.d, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_1.d), vec2<bool>(arg_1.d, arg_1.d)), vec2<bool>(true, true), vec2<bool>(true, arg_1.d)), !select(vec2<bool>(false, true), vec2<bool>(arg_1.d, arg_1.d), arg_1.d))), 1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(488f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & (u_input.a.x == -27844i);
    var var_1 = func_1(global2[_wgslsmith_index_u32(select(firstLeadingBit(1u), abs(countOneBits(max(4294967295u, 18570u))), true), 14u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(51534u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(46739u, 57764u, 0u)), vec3<u32>(1u, 1u, 1u))), 30u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -733f)))));
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(58103u, 4294967295u), ~0u, _wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 40338u, 33873u), vec3<u32>(0u, 1u, 11801u))) & vec4<u32>(1u, ~4294967295u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u) >> (countOneBits(~vec4<u32>(42781u, 48970u, 25457u, 1u)) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(~reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(46453u, _wgslsmith_dot_vec2_u32(~var_2.xw, ~(~vec2<u32>(66774u, 14511u))), ~4294967295u, ~1u), abs(min(~firstTrailingBit(vec4<u32>(0u, var_2.x, var_2.x, var_2.x)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_2.x, 1u, var_2.x, var_2.x)), ~vec4<u32>(var_2.x, 0u, 0u, 40265u)))), firstLeadingBit(~(~(vec4<u32>(var_2.x, 72808u, 0u, 21098u) << (vec4<u32>(var_2.x, var_2.x, 54264u, 0u) % vec4<u32>(32u))))));
    var_1 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_1.d, -715f), vec3<f32>(var_1.a.x, -905f, -1276f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.a))), all(select(vec3<bool>(true, true, true), vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(var_0, false, false))))), vec3<f32>(2371f, _wgslsmith_f_op_f32(trunc(var_1.d)), 490f)), var_1.b, var_1.c, -458f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(35087i, 29733i, u_input.a.x) << (abs(var_3.zww) % vec3<u32>(32u)), abs(firstTrailingBit(u_input.b))), 28653i, abs(-u_input.b.x ^ (var_1.c | 1i))), _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))))));
}

