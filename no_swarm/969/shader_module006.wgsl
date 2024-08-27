struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<u32>(146206u, 61273u, 111991u), Struct_1(vec3<f32>(-1987f, -1000f, 167f), vec3<f32>(-1000f, -1620f, 162f), vec2<i32>(-20824i, i32(-2147483648)), vec2<f32>(-679f, 702f)), 1u, vec2<f32>(122f, -1000f), 4294967295u), Struct_3(vec3<u32>(28434u, 52693u, 0u), Struct_1(vec3<f32>(943f, -765f, 1434f), vec3<f32>(866f, -608f, 1238f), vec2<i32>(2147483647i, 0i), vec2<f32>(917f, -558f)), 0u, vec2<f32>(-1014f, -2059f), 35113u), Struct_3(vec3<u32>(1u, 4294967295u, 45074u), Struct_1(vec3<f32>(845f, -206f, 164f), vec3<f32>(-617f, 202f, 1019f), vec2<i32>(-2439i, 55290i), vec2<f32>(1000f, 402f)), 50150u, vec2<f32>(503f, -112f), 46735u), Struct_3(vec3<u32>(4294967295u, 4294967295u, 3190u), Struct_1(vec3<f32>(270f, 442f, -1512f), vec3<f32>(-2479f, 1128f, -834f), vec2<i32>(0i, 23363i), vec2<f32>(667f, 1025f)), 0u, vec2<f32>(-428f, 123f), 1u), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(2486f, 2011f, 294f), vec3<f32>(-127f, 976f, 714f), vec2<i32>(0i, -20037i), vec2<f32>(-444f, 1585f)), 1u, vec2<f32>(-200f, -325f), 4294967295u), Struct_3(vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<f32>(-391f, -314f, -1211f), vec3<f32>(145f, 249f, 526f), vec2<i32>(-11049i, -38260i), vec2<f32>(1132f, -442f)), 1u, vec2<f32>(690f, 290f), 4294967295u), Struct_3(vec3<u32>(4294967295u, 3090u, 0u), Struct_1(vec3<f32>(-277f, -774f, -373f), vec3<f32>(-798f, -622f, 367f), vec2<i32>(2147483647i, 2147483647i), vec2<f32>(2500f, 140f)), 1u, vec2<f32>(-705f, 245f), 63466u), Struct_3(vec3<u32>(4294967295u, 45478u, 4294967295u), Struct_1(vec3<f32>(-1219f, -542f, -621f), vec3<f32>(-706f, -648f, 269f), vec2<i32>(-36514i, 54610i), vec2<f32>(2022f, 442f)), 1u, vec2<f32>(-908f, 960f), 0u), Struct_3(vec3<u32>(4294967295u, 8582u, 14567u), Struct_1(vec3<f32>(-692f, 451f, 807f), vec3<f32>(-1280f, 1274f, 2233f), vec2<i32>(-1i, -14017i), vec2<f32>(-1000f, -1231f)), 105913u, vec2<f32>(-640f, -1403f), 0u), Struct_3(vec3<u32>(4294967295u, 33572u, 74272u), Struct_1(vec3<f32>(-514f, -253f, -668f), vec3<f32>(-1953f, -451f, 231f), vec2<i32>(-5597i, 1i), vec2<f32>(509f, 264f)), 50335u, vec2<f32>(541f, -915f), 32460u), Struct_3(vec3<u32>(1u, 89898u, 52671u), Struct_1(vec3<f32>(1165f, 476f, 1534f), vec3<f32>(640f, -151f, -640f), vec2<i32>(-22525i, 3410i), vec2<f32>(133f, 1097f)), 1u, vec2<f32>(-867f, -405f), 12083u), Struct_3(vec3<u32>(30816u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(615f, -283f, 382f), vec3<f32>(1260f, 1022f, 870f), vec2<i32>(1i, -63561i), vec2<f32>(194f, 1156f)), 113868u, vec2<f32>(1118f, -935f), 63212u), Struct_3(vec3<u32>(0u, 4294967295u, 60716u), Struct_1(vec3<f32>(-693f, 260f, -2255f), vec3<f32>(347f, -926f, 990f), vec2<i32>(2147483647i, 46535i), vec2<f32>(-2117f, 1776f)), 4294967295u, vec2<f32>(-268f, -1009f), 2869u), Struct_3(vec3<u32>(1u, 1u, 1u), Struct_1(vec3<f32>(184f, 663f, -326f), vec3<f32>(651f, 531f, 507f), vec2<i32>(-1i, -2864i), vec2<f32>(1568f, -178f)), 4294967295u, vec2<f32>(-853f, 1095f), 4294967295u), Struct_3(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec3<f32>(164f, 905f, 1067f), vec3<f32>(-683f, 424f, 227f), vec2<i32>(1i, -39822i), vec2<f32>(-329f, -402f)), 4294967295u, vec2<f32>(933f, 1996f), 50623u), Struct_3(vec3<u32>(5639u, 23622u, 0u), Struct_1(vec3<f32>(109f, 892f, -798f), vec3<f32>(662f, 539f, -1000f), vec2<i32>(-1i, 33459i), vec2<f32>(1217f, 1409f)), 1u, vec2<f32>(645f, -1429f), 27021u), Struct_3(vec3<u32>(0u, 0u, 42830u), Struct_1(vec3<f32>(-1608f, 1484f, 272f), vec3<f32>(1482f, 361f, 2095f), vec2<i32>(i32(-2147483648), -20710i), vec2<f32>(-630f, 1000f)), 1u, vec2<f32>(-1775f, -556f), 1u), Struct_3(vec3<u32>(46968u, 0u, 1u), Struct_1(vec3<f32>(474f, -1000f, -230f), vec3<f32>(1114f, 373f, 248f), vec2<i32>(-1i, -4400i), vec2<f32>(-723f, -1000f)), 4294967295u, vec2<f32>(-1263f, 1165f), 4294967295u), Struct_3(vec3<u32>(31762u, 4294967295u, 0u), Struct_1(vec3<f32>(-531f, -212f, 626f), vec3<f32>(1000f, 1572f, 832f), vec2<i32>(35663i, -7820i), vec2<f32>(1008f, -388f)), 1u, vec2<f32>(493f, 818f), 96836u), Struct_3(vec3<u32>(0u, 3171u, 44333u), Struct_1(vec3<f32>(-1912f, -472f, -665f), vec3<f32>(366f, -1278f, -527f), vec2<i32>(-1i, -1i), vec2<f32>(1004f, -1518f)), 1u, vec2<f32>(-1105f, -1156f), 24751u), Struct_3(vec3<u32>(29975u, 0u, 0u), Struct_1(vec3<f32>(-275f, 946f, -479f), vec3<f32>(647f, 630f, 731f), vec2<i32>(0i, 2147483647i), vec2<f32>(-845f, -2196f)), 0u, vec2<f32>(994f, 567f), 4294967295u), Struct_3(vec3<u32>(4294967295u, 48288u, 21140u), Struct_1(vec3<f32>(1059f, 1680f, 713f), vec3<f32>(261f, -1200f, -231f), vec2<i32>(-20811i, 1i), vec2<f32>(391f, 302f)), 16291u, vec2<f32>(-1218f, -717f), 0u), Struct_3(vec3<u32>(0u, 4294967295u, 16012u), Struct_1(vec3<f32>(-826f, -1112f, 1278f), vec3<f32>(247f, -145f, -2018f), vec2<i32>(60992i, -1i), vec2<f32>(1102f, 190f)), 90091u, vec2<f32>(305f, -537f), 28487u), Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec3<f32>(-2540f, -3190f, 2071f), vec3<f32>(1000f, 2031f, -2094f), vec2<i32>(-30546i, 0i), vec2<f32>(473f, 172f)), 27923u, vec2<f32>(349f, -1183f), 36255u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = !(all(vec3<bool>(false, true, true)) != any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    let var_1 = select(select(select(select(!vec2<bool>(var_0, var_0), !vec2<bool>(var_0, true), var_0 | var_0), !vec2<bool>(var_0, var_0), var_0), !select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), false), select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), false), true), select(u_input.b < u_input.a, true, true) || var_0), vec2<bool>(34461u < ~(~u_input.b), select(22162i, ~2147483647i, var_0) < min(_wgslsmith_mod_i32(-1i, -25757i), abs(9057i))), vec2<bool>(var_0, false));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(1616f))), _wgslsmith_f_op_f32(596f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(973f, 375f, -295f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1103f, 2213f, -1861f) - vec3<f32>(896f, 607f, 238f)), vec3<f32>(803f, 1000f, -1166f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(253f, -1211f, 595f) * vec3<f32>(228f, 455f, 876f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, 1421f, 1339f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(178f, 1409f, -1292f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(f32(-1f) * -649f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1074f)), _wgslsmith_div_f32(-307f, -1724f)))), _wgslsmith_div_vec2_i32(min(~(~vec2<i32>(36731i, 21366i)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-30102i, -36443i)), ~vec2<i32>(-2147483647i, 1i))), vec2<i32>(1i, ~(-2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(456f, -328f)), vec2<f32>(-2152f, -609f), false || var_1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, -1561f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-198f, 2095f), vec2<f32>(-852f, -252f))))) + vec2<f32>(2427f, 653f)));
    global0 = u_input.b << (_wgslsmith_sub_u32(u_input.a, ~u_input.c.x) % 32u);
    var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) + -1322f)), _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(-var_2.d.x)), 1f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1554f, var_2.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -870f), var_2.d.x))))), -(vec2<i32>(_wgslsmith_mult_i32(var_2.c.x, var_2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, -25442i, var_2.c.x), vec4<i32>(-13398i, var_2.c.x, var_2.c.x, -39024i))) | var_2.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_2.d.x)), var_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.b.xx)))) * vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-474f * 353f))));
    return var_1.x;
}

fn func_2() -> f32 {
    var var_0 = true;
    global1 = array<Struct_3, 24>();
    var_0 = !(any(vec2<bool>(false, false)) == false);
    var var_1 = select(any(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), !func_3())), false, !select(true, true, true));
    global0 = u_input.a;
    return 470f;
}

fn func_1() -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 24u)];
    let var_1 = var_0.b;
    global1 = array<Struct_3, 24>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * var_0.b.a.x));
    var var_3 = var_1.b.x;
    return vec4<i32>(-3649i, var_1.c.x, abs(~(~(-24613i))), _wgslsmith_sub_i32(max(var_0.b.c.x, ~var_0.b.c.x), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_sub_u32(u_input.c.x, ~(~u_input.b << (u_input.b % 32u)));
    let var_0 = func_1();
    var var_1 = Struct_2(min(var_0.yxw, abs(firstTrailingBit(var_0.wzz))), abs(vec2<i32>(-(var_0.x >> (u_input.b % 32u)), 0i)), Struct_1(vec3<f32>(-230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)), _wgslsmith_div_f32(1048f, -818f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(554f, 1000f))), _wgslsmith_f_op_f32(-1425f - _wgslsmith_f_op_f32(f32(-1f) * -1398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(942f, -1789f)))), firstTrailingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, 2147483647i), reverseBits(vec2<i32>(var_0.x, 8545i)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1844f, -928f)))))));
    let var_2 = Struct_1(var_1.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.c.a - var_1.c.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b.x, 2098f, -448f)))))), ~vec2<i32>(var_1.b.x, ~var_0.x << (0u % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, var_1.c.a.x)) - _wgslsmith_f_op_vec2_f32(max(var_1.c.b.zz, vec2<f32>(936f, -516f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.d.x, var_1.c.b.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a.x, var_1.c.d.x) * vec2<f32>(var_1.c.a.x, var_1.c.d.x)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1694f * _wgslsmith_f_op_f32(-var_1.c.a.x))) + _wgslsmith_f_op_f32(trunc(var_1.c.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_1.a.x | var_1.c.c.x), _wgslsmith_sub_i32(var_1.a.x, _wgslsmith_sub_i32(~(-44087i), var_1.c.c.x)), _wgslsmith_f_op_vec2_f32(-var_2.a.yy), ~(~vec4<i32>(-var_1.c.c.x, _wgslsmith_div_i32(1i, var_2.c.x), max(-30388i, var_2.c.x), var_2.c.x | var_1.b.x)), -abs(var_0 ^ var_0));
}

