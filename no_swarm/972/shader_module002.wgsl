struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(23299u, 0u, 0u, 65839u, 1u, 13716u, 4294967295u, 0u, 4294967295u, 60595u, 4294967295u, 18198u, 0u, 1u, 4294967295u, 0u, 1u, 61146u, 92766u, 0u, 8505u, 0u, 23383u, 42572u, 774u, 1u, 4294967295u, 1u, 28694u, 735u);

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec3<f32>(-1747f, 1025f, 336f), -762f), -34588i, 1817f, Struct_1(vec3<f32>(-510f, 540f, -1000f), 150f), Struct_1(vec3<f32>(-494f, 1678f, 2587f), -563f)), Struct_2(Struct_1(vec3<f32>(-939f, 538f, -1380f), 456f), 0i, 154f, Struct_1(vec3<f32>(-517f, -1363f, -152f), 868f), Struct_1(vec3<f32>(374f, 1000f, 1000f), -1000f)), Struct_2(Struct_1(vec3<f32>(669f, -1000f, 277f), -1042f), 0i, 308f, Struct_1(vec3<f32>(-147f, -1000f, -1526f), -314f), Struct_1(vec3<f32>(562f, 1000f, 1227f), -785f)), Struct_2(Struct_1(vec3<f32>(482f, 1490f, -1432f), -398f), 9867i, 1810f, Struct_1(vec3<f32>(-492f, -1000f, -380f), -880f), Struct_1(vec3<f32>(128f, -154f, 516f), -1594f)), Struct_2(Struct_1(vec3<f32>(-1124f, 1000f, -2396f), 1000f), 1i, 653f, Struct_1(vec3<f32>(944f, 1031f, 775f), -464f), Struct_1(vec3<f32>(-305f, -736f, 806f), 332f)), Struct_2(Struct_1(vec3<f32>(-114f, 559f, -1000f), -1027f), -1i, -738f, Struct_1(vec3<f32>(-575f, -1000f, -1505f), 179f), Struct_1(vec3<f32>(224f, -860f, -750f), -177f)), Struct_2(Struct_1(vec3<f32>(-781f, -1266f, 1617f), 1060f), 21353i, -1078f, Struct_1(vec3<f32>(-1011f, -928f, -552f), -249f), Struct_1(vec3<f32>(451f, -1274f, 202f), -417f)), Struct_2(Struct_1(vec3<f32>(-478f, -467f, -454f), -322f), 2147483647i, 362f, Struct_1(vec3<f32>(-1697f, 642f, 1526f), 1833f), Struct_1(vec3<f32>(-711f, -125f, -1000f), -1779f)), Struct_2(Struct_1(vec3<f32>(247f, 339f, -649f), -346f), 38307i, -260f, Struct_1(vec3<f32>(-332f, 1784f, 174f), 1700f), Struct_1(vec3<f32>(861f, 590f, -155f), 721f)), Struct_2(Struct_1(vec3<f32>(-796f, -1477f, 952f), -1568f), 0i, -487f, Struct_1(vec3<f32>(-243f, -948f, 1000f), 1000f), Struct_1(vec3<f32>(-529f, 798f, -1796f), -1417f)), Struct_2(Struct_1(vec3<f32>(-1000f, 1000f, 164f), 1116f), i32(-2147483648), -285f, Struct_1(vec3<f32>(-681f, 358f, -989f), -1313f), Struct_1(vec3<f32>(-364f, -1000f, -231f), 2116f)), Struct_2(Struct_1(vec3<f32>(386f, 915f, -945f), -395f), 1i, -819f, Struct_1(vec3<f32>(792f, -841f, -701f), 648f), Struct_1(vec3<f32>(107f, -2206f, -465f), 148f)), Struct_2(Struct_1(vec3<f32>(-184f, -1341f, 1214f), -857f), 23467i, 2074f, Struct_1(vec3<f32>(941f, 1161f, -201f), -2076f), Struct_1(vec3<f32>(-1093f, 1197f, 283f), -1000f)), Struct_2(Struct_1(vec3<f32>(587f, 394f, 177f), -558f), 335i, -349f, Struct_1(vec3<f32>(1075f, -1782f, -1000f), 658f), Struct_1(vec3<f32>(1020f, 542f, 1746f), -1000f)), Struct_2(Struct_1(vec3<f32>(1821f, -974f, -1000f), -187f), -59177i, -956f, Struct_1(vec3<f32>(987f, 1467f, 444f), 228f), Struct_1(vec3<f32>(705f, -1176f, -997f), -1118f)), Struct_2(Struct_1(vec3<f32>(314f, -1000f, 135f), 2519f), -1i, 2604f, Struct_1(vec3<f32>(-2233f, -388f, 216f), -158f), Struct_1(vec3<f32>(357f, 909f, 737f), -569f)), Struct_2(Struct_1(vec3<f32>(1479f, -549f, -145f), -1116f), 2147483647i, 808f, Struct_1(vec3<f32>(-2162f, -127f, 520f), -1000f), Struct_1(vec3<f32>(1645f, 1445f, -1389f), 437f)), Struct_2(Struct_1(vec3<f32>(526f, -146f, -1673f), -1885f), 1i, -572f, Struct_1(vec3<f32>(-695f, -1892f, 1000f), -2181f), Struct_1(vec3<f32>(607f, 3047f, -576f), -504f)), Struct_2(Struct_1(vec3<f32>(1965f, 313f, -436f), 1514f), 31868i, 956f, Struct_1(vec3<f32>(942f, 607f, -519f), -339f), Struct_1(vec3<f32>(369f, 1286f, 2712f), 453f)), Struct_2(Struct_1(vec3<f32>(1776f, -320f, -848f), -769f), 2147483647i, -1055f, Struct_1(vec3<f32>(549f, 129f, 451f), 1082f), Struct_1(vec3<f32>(-505f, -200f, 1135f), 650f)), Struct_2(Struct_1(vec3<f32>(1000f, -536f, -753f), 1000f), -1i, -818f, Struct_1(vec3<f32>(1456f, 1904f, 505f), 241f), Struct_1(vec3<f32>(845f, -217f, -947f), -697f)), Struct_2(Struct_1(vec3<f32>(-869f, 695f, 162f), 151f), -19544i, 707f, Struct_1(vec3<f32>(1000f, 1000f, 643f), 1288f), Struct_1(vec3<f32>(1273f, -2878f, -727f), -1013f)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1008f, -1000f, arg_0.a.e.b))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c - arg_0.a.a.a.x) - arg_0.a.c), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.e.b))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(378f, arg_0.a.c))))));
    let var_1 = arg_0.a;
    var var_2 = -1083f;
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-756f, _wgslsmith_f_op_f32(min(-605f, _wgslsmith_f_op_f32(select(419f, arg_0.a.e.a.x, arg_3)))), _wgslsmith_f_op_f32(ceil(arg_0.a.a.a.x)))), 612f);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(-1292f, -1469f, -1000f), 1459f), 52704i, -134f, Struct_1(vec3<f32>(-1340f, -1135f, -1775f), 1000f), Struct_1(vec3<f32>(531f, -1305f, -1771f), -171f))), _wgslsmith_div_u32(u_input.a, global0[_wgslsmith_index_u32(~66120u, 30u)]), u_input.a, all(vec4<bool>(arg_0, true, arg_0, arg_0))), u_input.c.x ^ countOneBits(2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1862f), _wgslsmith_f_op_f32(f32(-1f) * -668f))) + 583f), Struct_1(vec3<f32>(1000f, 789f, _wgslsmith_f_op_f32(trunc(2591f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-869f * 248f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, 219f, 983f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)))));
    let var_1 = Struct_3(Struct_2(var_0.a.a, firstLeadingBit(reverseBits(-1i)), 1536f, var_0.a.d, var_0.a.d));
    let var_2 = func_2(var_1, 4294967295u, ~(u_input.a & abs(~3415u)), arg_0);
    var_0 = Struct_3(var_1.a);
    let var_3 = Struct_1(vec3<f32>(-441f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2106f - _wgslsmith_f_op_f32(1140f + var_2.b)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1043f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.e.a.x))))), _wgslsmith_f_op_f32(sign(var_1.a.a.a.x)));
    return _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, ~(~1u)), ~_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), 30u)])));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.b, 1469f, 2179f, arg_1.b), vec4<f32>(arg_0.c, arg_0.c, arg_0.a.b, 613f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, arg_0.d.b, arg_0.c, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, -684f, -1000f, arg_0.e.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2383f, -2214f, 1068f, arg_1.b), vec4<f32>(-472f, 1329f, arg_0.d.b, 148f))), vec4<bool>(true, true, true, true)))))))));
    global1 = array<Struct_2, 22>();
    global0 = array<u32, 30>();
    var var_1 = Struct_3(arg_0);
    var var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, ~u_input.a, 1u >> (global0[_wgslsmith_index_u32(u_input.a, 30u)] % 32u), reverseBits(global0[_wgslsmith_index_u32(16685u, 30u)])), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, 67777u, 88015u)), select(vec4<u32>(30301u, 1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40737u, 30u)], 30u)]), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 30u)], 30u)], 0u, global0[_wgslsmith_index_u32(31181u, 30u)]), true))), firstTrailingBit(vec4<u32>(~u_input.a, u_input.a | global0[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_div_u32(u_input.a, global0[_wgslsmith_index_u32(38081u, 30u)]), ~20289u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 29459u, u_input.a, global0[_wgslsmith_index_u32(7423u, 30u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 30u)], 1u, global0[_wgslsmith_index_u32(u_input.a, 30u)], 7574u)));
    return !select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, false), 0u < global0[_wgslsmith_index_u32(u_input.a, 30u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), all(vec4<bool>(true, false, true, false))), select(any(vec3<bool>(false, true, false)), true, true)), !vec4<bool>(all(vec3<bool>(false, false, true)), true, any(vec4<bool>(true, false, true, true)), false), false);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-153f, -782f, 1022f), vec3<f32>(479f, 1592f, 101f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1263f, -275f, -938f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1404f, 1790f) - vec3<f32>(-447f, -586f, 1326f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1713f))), -871f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - 2449f)))));
    var var_1 = vec3<i32>(min(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 16173i), u_input.c.yy), 55875i, true), 0i), ~(select(49244i, 12735i, false) & (u_input.b & -4490i)) | reverseBits(_wgslsmith_sub_i32(u_input.c.x | -6340i, u_input.b)), min(u_input.b, ~_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, firstTrailingBit(u_input.c.x))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.b, -330f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 424f)))), _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(round(356f)), true))), -(~(~(-18905i))), var_0.a.x, var_0, var_0));
    var var_3 = Struct_3(Struct_2(var_2.a.a, -u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), func_2(var_2, 15635u, global0[_wgslsmith_index_u32(u_input.a, 30u)], any(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(539f, -1274f, var_2.a.d.a.x) * var_0.a), func_2(Struct_3(var_2.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(67431u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], 42610u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 1u, u_input.a, 1u)), 112662u >> (u_input.a % 32u), false).a.x)));
    let var_4 = !all(func_4(Struct_2(Struct_1(vec3<f32>(var_0.b, var_3.a.d.b, var_0.a.x), var_2.a.a.b), _wgslsmith_mod_i32(-8246i, -2147483647i), _wgslsmith_f_op_f32(min(var_2.a.a.b, -1000f)), func_2(Struct_3(var_2.a), global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a, false), var_2.a.a), func_2(var_2, _wgslsmith_add_u32(0u, 4294967295u), func_3(false), all(vec2<bool>(false, true)))));
    return vec3<bool>(true, !(!all(vec4<bool>(true, var_4, var_4, var_4))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    let var_0 = !select(select(vec3<bool>(true, true, u_input.b >= -1i), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), func_1(), func_1())), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_1(), true), !func_1().x), all(!func_1().yz));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1887f, 1000f, 710f, 1215f)))))) - vec4<f32>(1072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f - 571f)), -1101f, func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(785f, -606f, -579f), -395f), u_input.b, 901f, Struct_1(vec3<f32>(-131f, 1023f, -440f), 1940f), Struct_1(vec3<f32>(-1493f, 239f, 369f), -135f))), 4294967295u, ~u_input.a, true).b))));
    global0 = array<u32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, 0i, ~(-19622i), select(-2147483647i, abs(~3260i), var_0.x)), 0u, ~(-(i32(-1i) * -2147483647i)));
}

