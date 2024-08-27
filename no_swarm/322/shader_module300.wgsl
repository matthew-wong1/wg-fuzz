struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<f32>(179f, -958f, -1562f), vec4<f32>(890f, 2636f, 1561f, 442f), 0u, Struct_1(1808f, 17484u), Struct_1(-328f, 0u)), Struct_3(vec3<f32>(564f, -797f, -2084f), vec4<f32>(625f, 1318f, 1033f, 1408f), 1u, Struct_1(-285f, 1101u), Struct_1(179f, 2122u)), Struct_3(vec3<f32>(-1499f, -1157f, 401f), vec4<f32>(2098f, -668f, 605f, 1822f), 1u, Struct_1(520f, 25629u), Struct_1(-1032f, 47540u)), Struct_3(vec3<f32>(-1657f, -420f, -1347f), vec4<f32>(-432f, 798f, -400f, 1000f), 4294967295u, Struct_1(-876f, 31378u), Struct_1(-348f, 28104u)), Struct_3(vec3<f32>(-461f, 685f, -526f), vec4<f32>(237f, 550f, 633f, -1462f), 4294967295u, Struct_1(1434f, 29999u), Struct_1(1000f, 4294967295u)), Struct_3(vec3<f32>(-240f, 1542f, -281f), vec4<f32>(1378f, -106f, 543f, -820f), 4294967295u, Struct_1(1335f, 45305u), Struct_1(-871f, 4022u)), Struct_3(vec3<f32>(-986f, -1080f, -166f), vec4<f32>(-1266f, -1000f, 507f, -1694f), 788u, Struct_1(-1057f, 53453u), Struct_1(-1348f, 46827u)), Struct_3(vec3<f32>(385f, 466f, 1418f), vec4<f32>(1439f, -1000f, 714f, -769f), 74635u, Struct_1(-1000f, 73815u), Struct_1(-196f, 75458u)), Struct_3(vec3<f32>(379f, -1216f, -1079f), vec4<f32>(-1314f, 221f, 421f, -1303f), 5759u, Struct_1(-491f, 1u), Struct_1(575f, 6681u)), Struct_3(vec3<f32>(200f, -690f, -1000f), vec4<f32>(-1773f, -983f, -474f, -957f), 0u, Struct_1(-378f, 105225u), Struct_1(440f, 4294967295u)), Struct_3(vec3<f32>(711f, 1034f, -2238f), vec4<f32>(-261f, 1162f, 708f, 1800f), 65329u, Struct_1(-500f, 1u), Struct_1(907f, 1u)), Struct_3(vec3<f32>(-589f, 1000f, 1640f), vec4<f32>(988f, 188f, -347f, 228f), 7296u, Struct_1(552f, 49498u), Struct_1(-1395f, 4294967295u)), Struct_3(vec3<f32>(940f, 464f, 607f), vec4<f32>(-1906f, 519f, -1576f, 1578f), 0u, Struct_1(-869f, 0u), Struct_1(-533f, 4294967295u)), Struct_3(vec3<f32>(-994f, 432f, -773f), vec4<f32>(-1111f, -635f, -399f, -487f), 58660u, Struct_1(1288f, 0u), Struct_1(-484f, 44025u)), Struct_3(vec3<f32>(-1000f, -1000f, 274f), vec4<f32>(-2311f, 213f, 583f, -1155f), 4294967295u, Struct_1(-1777f, 41643u), Struct_1(179f, 0u)), Struct_3(vec3<f32>(1000f, 505f, -634f), vec4<f32>(467f, 1190f, 428f, -1000f), 73884u, Struct_1(-691f, 4294967295u), Struct_1(582f, 50424u)), Struct_3(vec3<f32>(-329f, 1146f, -907f), vec4<f32>(-1315f, 1152f, -187f, 865f), 25566u, Struct_1(699f, 11554u), Struct_1(2459f, 0u)), Struct_3(vec3<f32>(-1698f, -849f, -733f), vec4<f32>(-156f, 1599f, -1032f, 340f), 1724u, Struct_1(828f, 25784u), Struct_1(1000f, 39545u)), Struct_3(vec3<f32>(523f, 870f, -681f), vec4<f32>(-736f, 115f, -1932f, 366f), 1u, Struct_1(710f, 130628u), Struct_1(1038f, 50239u)), Struct_3(vec3<f32>(559f, -277f, 1000f), vec4<f32>(-878f, 1738f, -297f, -1136f), 43585u, Struct_1(-1000f, 27611u), Struct_1(1179f, 1u)), Struct_3(vec3<f32>(1198f, 366f, -1000f), vec4<f32>(-2042f, -700f, 192f, 226f), 4294967295u, Struct_1(887f, 4294967295u), Struct_1(-1679f, 4294967295u)), Struct_3(vec3<f32>(1396f, 798f, 360f), vec4<f32>(683f, 204f, -540f, 627f), 0u, Struct_1(1660f, 46580u), Struct_1(-288f, 23809u)), Struct_3(vec3<f32>(463f, 1000f, -1372f), vec4<f32>(-1134f, -530f, -2536f, 650f), 0u, Struct_1(-114f, 64549u), Struct_1(-1602f, 1u)), Struct_3(vec3<f32>(537f, -1975f, 155f), vec4<f32>(-1000f, 992f, 151f, -1699f), 63261u, Struct_1(883f, 0u), Struct_1(1220f, 5204u)), Struct_3(vec3<f32>(-512f, 1461f, 898f), vec4<f32>(-125f, -1531f, 2633f, -1813f), 0u, Struct_1(1000f, 1u), Struct_1(-1122f, 1u)), Struct_3(vec3<f32>(1449f, 1030f, 214f), vec4<f32>(-1737f, -597f, 2028f, 1213f), 42507u, Struct_1(-1000f, 1u), Struct_1(-1467f, 48566u)), Struct_3(vec3<f32>(503f, -415f, 1011f), vec4<f32>(110f, 528f, 375f, -863f), 2646u, Struct_1(837f, 4294967295u), Struct_1(405f, 0u)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec4<i32> {
    global0 = ~u_input.a.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.x, arg_0.a, -188f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_1.x, 1201f, 646f)))) - arg_0.b));
    var var_1 = -28435i;
    var_0 = _wgslsmith_f_op_vec4_f32(-arg_0.b);
    var_1 = 1i;
    return select(~_wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)), _wgslsmith_mod_vec4_i32(select(u_input.a, u_input.a, true), max(vec4<i32>(27592i, u_input.a.x, u_input.a.x, -2147483647i), u_input.a))), _wgslsmith_clamp_vec4_i32(countOneBits(u_input.a), ~_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-13578i, u_input.a.x, -1i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-7552i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), _wgslsmith_mod_vec4_i32(u_input.a, firstTrailingBit(u_input.a) ^ (u_input.a & vec4<i32>(u_input.a.x, -62050i, u_input.a.x, u_input.a.x)))), select(vec4<bool>(!select(false, false, false), true, true, false), select(vec4<bool>(true, false, true, select(false, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(countOneBits(u_input.a), u_input.a);
    var_0 = firstTrailingBit(~vec4<i32>(select(7674i, -22906i, u_input.a.x < var_0.x), var_0.x << (arg_0 % 32u), max(2415i, 2147483647i) << (~arg_0 % 32u), var_0.x));
    global1 = array<Struct_3, 27>();
    global0 = var_0.x;
    var_0 = func_3(Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1281f, 177f)))), vec4<f32>(arg_1.x, -648f, -240f, _wgslsmith_f_op_f32(f32(-1f) * -510f))) << (~select(~_wgslsmith_sub_vec4_u32(vec4<u32>(37017u, arg_0, 4294967295u, 28574u), vec4<u32>(arg_0, 0u, 16690u, arg_0)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(63147u, 4294967295u, arg_0, 1u), vec4<u32>(arg_0, 14626u, 35103u, arg_0)), true) % vec4<u32>(32u));
    return (~vec3<i32>(-u_input.a.x, var_0.x, var_0.x | -1i) | abs(vec3<i32>(u_input.a.x, -3320i, _wgslsmith_mod_i32(-2147483647i, u_input.a.x)))) << ((~(_wgslsmith_mod_vec3_u32(vec3<u32>(21916u, 1u, 26131u), vec3<u32>(18220u, arg_0, 1u)) & firstTrailingBit(vec3<u32>(arg_0, arg_0, 1u))) << (~(~(vec3<u32>(82816u, 101786u, arg_0) ^ vec3<u32>(4294967295u, 50005u, arg_0))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    global0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(max(u_input.a.ywy, func_2(arg_1 >> (arg_1 % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1148f, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, arg_0)))), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~(-29293i), u_input.a.x ^ 0i) << (reverseBits(~vec3<u32>(arg_1, 23878u, 4294967295u)) % vec3<u32>(32u))), u_input.a.x);
    let var_0 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), vec2<bool>(false, -1i <= func_3(Struct_4(arg_0, vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec4<f32>(500f, -843f, arg_0, 1561f)).x)), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), true), select(true, !any(vec4<bool>(false, true, false, true)), !all(vec4<bool>(false, false, true, false))) & (_wgslsmith_dot_vec2_i32(u_input.a.wx ^ u_input.a.zy, func_2(5070u, vec3<f32>(arg_0, arg_0, arg_0)).zx) > -64013i));
    global0 = 1i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) + _wgslsmith_f_op_f32(-arg_0))), 11426u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1615f), var_1.a.a, _wgslsmith_div_f32(var_1.a.a, _wgslsmith_f_op_f32(trunc(-1009f))), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1016f, 977f, -381f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-arg_0), -891f))), true));
    return !any(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~47152u);
    var var_1 = ~(~vec2<u32>(1u, _wgslsmith_mult_u32(0u, 0u))) | vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53494u, 0u, 1u), vec4<u32>(50249u, 4294967295u, 29166u, 1u))), _wgslsmith_div_u32(4294967295u, min(41848u, 16688u)) & _wgslsmith_div_u32(11282u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 62377u), vec2<u32>(4294967295u, 0u))));
    var var_2 = vec4<bool>(func_1(-1000f, ~_wgslsmith_div_u32(~16231u, var_1.x)), true, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(947f)), -346f), 51863u), any(vec2<bool>(true, countOneBits(var_1.x) >= abs(35723u))));
    var_2 = select(select(!vec4<bool>(7554u <= var_1.x, var_2.x, any(var_2.zx), any(vec4<bool>(var_2.x, false, var_2.x, var_2.x))), vec4<bool>(false, false, var_2.x, any(select(vec4<bool>(var_2.x, true, true, true), vec4<bool>(false, true, true, var_2.x), var_2.x))), any(vec4<bool>(true, var_2.x, all(var_2.yx), var_2.x && false))), vec4<bool>(true, !any(vec2<bool>(var_2.x, true)), var_2.x, !(!(var_2.x && var_2.x))), !vec4<bool>(true, false, !any(var_2.zw), !var_2.x));
    var var_3 = (_wgslsmith_sub_i32(_wgslsmith_add_i32(-u_input.a.x, -u_input.a.x), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, u_input.a.x)), 2147483647i)) >> (_wgslsmith_sub_u32(var_1.x, 1u) % 32u)) | countOneBits(u_input.a.x);
    global1 = array<Struct_3, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(min(u_input.a.x, _wgslsmith_add_i32(-1i, 58473i)), func_2(var_1.x, vec3<f32>(112f, 955f, 219f)).x), u_input.a.x, 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-529f, -583f, -1002f))))))), -986f);
}

