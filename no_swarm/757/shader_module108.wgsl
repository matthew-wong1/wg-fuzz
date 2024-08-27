struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 92586u;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(0u, vec3<f32>(465f, 1110f, 339f), -1392f, Struct_1(vec4<u32>(0u, 0u, 1u, 99256u), true), vec2<f32>(-160f, -121f)), Struct_3(47928u, vec3<f32>(-760f, -609f, 572f), -870f, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1u), false), vec2<f32>(-526f, 618f)), Struct_3(0u, vec3<f32>(754f, 1712f, -1081f), -1096f, Struct_1(vec4<u32>(74326u, 1u, 1u, 1u), true), vec2<f32>(-1000f, 1126f)), Struct_3(40840u, vec3<f32>(1193f, 565f, 378f), 1137f, Struct_1(vec4<u32>(0u, 1u, 52266u, 82216u), true), vec2<f32>(-2344f, 722f)), Struct_3(0u, vec3<f32>(1000f, -1137f, -691f), -1468f, Struct_1(vec4<u32>(28785u, 4812u, 43476u, 13712u), true), vec2<f32>(-1168f, -1020f)), Struct_3(51805u, vec3<f32>(-862f, -348f, -242f), 789f, Struct_1(vec4<u32>(0u, 4294967295u, 54903u, 0u), true), vec2<f32>(660f, -2192f)), Struct_3(59426u, vec3<f32>(-421f, 622f, 849f), 300f, Struct_1(vec4<u32>(19287u, 0u, 4294967295u, 44267u), false), vec2<f32>(1767f, -603f)), Struct_3(4294967295u, vec3<f32>(-286f, 941f, 226f), -1336f, Struct_1(vec4<u32>(40695u, 88808u, 2001u, 7556u), false), vec2<f32>(-141f, -483f)), Struct_3(62154u, vec3<f32>(1103f, -1000f, -1872f), 1111f, Struct_1(vec4<u32>(1u, 29013u, 4294967295u, 0u), false), vec2<f32>(2041f, -1096f)), Struct_3(1u, vec3<f32>(1000f, 1659f, 648f), 405f, Struct_1(vec4<u32>(65031u, 1u, 4294967295u, 38382u), true), vec2<f32>(-1124f, -636f)), Struct_3(38182u, vec3<f32>(1994f, 184f, 141f), -695f, Struct_1(vec4<u32>(19299u, 0u, 0u, 4117u), false), vec2<f32>(-636f, -1656f)), Struct_3(1u, vec3<f32>(-966f, -237f, -1145f), 500f, Struct_1(vec4<u32>(1u, 28907u, 32235u, 10223u), true), vec2<f32>(-1611f, -314f)), Struct_3(42086u, vec3<f32>(327f, -1000f, 889f), -1171f, Struct_1(vec4<u32>(4294967295u, 4294967295u, 79788u, 1u), false), vec2<f32>(-1000f, -229f)), Struct_3(0u, vec3<f32>(1000f, 2000f, 1064f), 1616f, Struct_1(vec4<u32>(4294967295u, 73807u, 11797u, 65521u), true), vec2<f32>(625f, -108f)), Struct_3(1483u, vec3<f32>(-120f, -901f, 219f), -979f, Struct_1(vec4<u32>(1u, 10491u, 26350u, 29833u), true), vec2<f32>(-540f, 690f)), Struct_3(52076u, vec3<f32>(386f, 103f, 785f), 974f, Struct_1(vec4<u32>(4294967295u, 0u, 12558u, 2840u), true), vec2<f32>(140f, 883f)), Struct_3(31987u, vec3<f32>(1197f, 178f, 1000f), -1382f, Struct_1(vec4<u32>(1u, 5027u, 34676u, 0u), false), vec2<f32>(1210f, 1217f)), Struct_3(24375u, vec3<f32>(-270f, 345f, -1026f), 805f, Struct_1(vec4<u32>(39594u, 1u, 1u, 1u), false), vec2<f32>(1106f, 926f)), Struct_3(76782u, vec3<f32>(206f, 1000f, 1053f), -129f, Struct_1(vec4<u32>(4294967295u, 24625u, 0u, 4294967295u), false), vec2<f32>(-1379f, 2093f)), Struct_3(1u, vec3<f32>(1456f, -714f, -109f), 1000f, Struct_1(vec4<u32>(4294967295u, 1u, 47386u, 12189u), false), vec2<f32>(-1154f, -1000f)), Struct_3(37985u, vec3<f32>(-1370f, 2477f, -1236f), -893f, Struct_1(vec4<u32>(14989u, 1u, 5144u, 21243u), true), vec2<f32>(250f, 313f)), Struct_3(58890u, vec3<f32>(1104f, -263f, 2431f), 146f, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u), true), vec2<f32>(-1000f, 1116f)), Struct_3(0u, vec3<f32>(321f, -1289f, -1270f), 1275f, Struct_1(vec4<u32>(573u, 4976u, 4294967295u, 6008u), false), vec2<f32>(-1000f, -1690f)), Struct_3(1316u, vec3<f32>(351f, -847f, 1047f), 1095f, Struct_1(vec4<u32>(32575u, 0u, 43500u, 3830u), false), vec2<f32>(-908f, 212f)), Struct_3(17973u, vec3<f32>(643f, -1000f, -785f), -248f, Struct_1(vec4<u32>(0u, 17492u, 1u, 4294967295u), false), vec2<f32>(866f, 1000f)), Struct_3(33284u, vec3<f32>(-1144f, 2079f, 1158f), 576f, Struct_1(vec4<u32>(4294967295u, 14372u, 7952u, 4294967295u), false), vec2<f32>(-576f, 357f)), Struct_3(1u, vec3<f32>(-822f, 954f, -1000f), 102f, Struct_1(vec4<u32>(12375u, 1u, 15979u, 58205u), false), vec2<f32>(299f, 217f)), Struct_3(35097u, vec3<f32>(-1136f, 243f, -1180f), 2513f, Struct_1(vec4<u32>(0u, 23715u, 4294967295u, 0u), true), vec2<f32>(256f, 530f)), Struct_3(137015u, vec3<f32>(-1000f, 2346f, 225f), 1000f, Struct_1(vec4<u32>(1u, 4294967295u, 36381u, 4294967295u), true), vec2<f32>(2897f, -1291f)), Struct_3(4901u, vec3<f32>(2272f, -1252f, 1000f), -1235f, Struct_1(vec4<u32>(4177u, 5770u, 62136u, 46928u), false), vec2<f32>(-796f, 903f)), Struct_3(0u, vec3<f32>(-764f, -1371f, 1000f), 305f, Struct_1(vec4<u32>(1u, 0u, 1u, 43369u), true), vec2<f32>(1000f, -970f)));

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(117f, 799f, 2120f, -2244f), vec4<f32>(-288f, -1000f, 1000f, 913f), vec4<f32>(1158f, -1000f, -231f, -573f), vec4<f32>(-2047f, -398f, 1645f, 802f), vec4<f32>(787f, 534f, -1370f, -599f), vec4<f32>(-2657f, -398f, -239f, -668f), vec4<f32>(-1861f, 406f, 1971f, 179f), vec4<f32>(-200f, 267f, 1000f, -258f), vec4<f32>(-1891f, 1741f, -734f, 1487f), vec4<f32>(1232f, 749f, 700f, -719f), vec4<f32>(-342f, -929f, -482f, 544f), vec4<f32>(-1000f, -117f, 1381f, -122f), vec4<f32>(-749f, -549f, -356f, 492f), vec4<f32>(773f, 3186f, 720f, -550f), vec4<f32>(-183f, -548f, 1000f, 1723f), vec4<f32>(-1273f, 1000f, 148f, 251f), vec4<f32>(-195f, -202f, -2186f, 336f), vec4<f32>(1154f, 408f, -1621f, 825f), vec4<f32>(-618f, -533f, -405f, -877f), vec4<f32>(-971f, -201f, -718f, -2108f), vec4<f32>(1028f, -1330f, 103f, -150f), vec4<f32>(2619f, -759f, 645f, 550f), vec4<f32>(467f, 307f, -837f, 1948f), vec4<f32>(-676f, -935f, 551f, 113f), vec4<f32>(1000f, -1776f, -908f, 1868f), vec4<f32>(-226f, -2108f, -479f, -870f), vec4<f32>(-411f, 268f, 848f, 1097f), vec4<f32>(1060f, -1416f, 738f, 1000f));

var<private> global3: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec4<u32> {
    return select(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_2.x, u_input.c.x, arg_2.x, 45717u) >> (vec4<u32>(13023u, arg_2.x, 0u, u_input.a) % vec4<u32>(32u))), ~vec4<u32>(927u, arg_2.x, u_input.c.x, 4294967295u), abs(select(vec4<u32>(arg_2.x, 40359u, arg_2.x, u_input.a), vec4<u32>(37395u, 4294967295u, 4294967295u, u_input.a), arg_3))), countOneBits(vec4<u32>(~arg_2.x, 4294967295u, 44323u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, u_input.a), u_input.c)))), vec4<u32>(1u, _wgslsmith_sub_u32(~(~arg_2.x), arg_2.x), ~(u_input.c.x | 0u) << (abs(u_input.c.x & u_input.c.x) % 32u), _wgslsmith_mult_u32(4294967295u, ~arg_2.x << (~8381u % 32u))), select(arg_3, arg_3, select(arg_3.x, true, false)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_5(u_input.a, Struct_1(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c.x, 54920u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.c.x, u_input.a), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 4294967295u))), func_3(_wgslsmith_f_op_vec3_f32(trunc(arg_0.yxx)), u_input.b.x, u_input.c.yy, vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), ~select(u_input.d.x, u_input.d.x, false) == max(~(-1i), u_input.b.x >> (42855u % 32u))), vec4<i32>(-countOneBits(u_input.b.x), -abs(countOneBits(u_input.d.x)), countOneBits(41941i), 0i));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_0.zxx * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 146f, 1721f) - _wgslsmith_div_vec3_f32(arg_0.zzz, vec3<f32>(arg_0.x, 982f, 114f))) + arg_0.wwz), vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -402f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -504f), -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1590f))));
    let var_2 = !any(!vec4<bool>(all(vec2<bool>(var_0.b.b, var_0.b.b)), false, var_0.b.b, var_0.b.b));
    let var_3 = var_0.b.b;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1166f, 135f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, var_1.x) * arg_0.yy)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-643f + -874f) + -826f), -1238f));
    return Struct_2(Struct_1(select(firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(148u, u_input.c.x, 65292u, 0u), vec4<u32>(35274u, 1u, 1u, 32769u)) & var_0.b.a, var_3), false), _wgslsmith_mod_u32(4294967295u, ~u_input.c.x));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_5(1u, Struct_1(~firstTrailingBit(countOneBits(vec4<u32>(u_input.a, 44601u, 49597u, 4294967295u))), any(vec2<bool>(true, true))), ~vec4<i32>(0i, abs(-1i) | abs(arg_0.x), select(u_input.d.x, arg_0.x, false) ^ 1i, min(48003i, 0i)));
    global2 = array<vec4<f32>, 28>();
    global3 = _wgslsmith_sub_u32(~firstTrailingBit(1u), 9256u);
    var var_1 = !(1000f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1262f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1691f, 1146f)), var_0.b.b && (true & var_0.b.b))));
    let var_2 = func_2(vec4<f32>(-3124f, -1374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + -1220f), _wgslsmith_f_op_f32(select(-1133f, -160f, false))));
    return func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2060f, 824f, -1000f, 493f) * vec4<f32>(180f, 735f, -445f, 1782f)), global2[_wgslsmith_index_u32(47724u, 28u)], true | var_2.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(var_2.a.a.x, 28u)], vec4<f32>(1116f, -1222f, 861f, 246f)))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(vec2<i32>(0i, ~_wgslsmith_sub_i32(u_input.d.x, u_input.d.x))), _wgslsmith_dot_vec2_u32(firstTrailingBit(~u_input.c.yz), u_input.c.yz));
    global1 = array<Struct_3, 31>();
    global0 = u_input.a;
    var var_1 = Struct_5(firstLeadingBit(4294967295u), Struct_1(select(~abs(vec4<u32>(var_0.b, 6652u, 55491u, 4294967295u)), var_0.a.a, !(!vec4<bool>(true, var_0.a.b, false, var_0.a.b))), -666f < _wgslsmith_f_op_f32(trunc(-1423f))), u_input.d);
    global0 = var_0.b;
    let var_2 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1001f, 1000f) * vec3<f32>(1000f, -778f, -491f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-822f, -1172f, 367f), vec3<f32>(-211f, -214f, 1665f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-735f, -648f, -538f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(981f, -160f, 740f) + vec3<f32>(-314f, -231f, 645f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1019f))), var_1.b, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-614f, _wgslsmith_f_op_f32(-705f - -606f)))), -391f));
    var_1 = Struct_5(u_input.c.x, var_1.b, -vec4<i32>(-2147483647i, 0i, _wgslsmith_sub_i32(var_1.c.x, -1i), countOneBits(var_1.c.x)));
    let var_3 = Struct_2(var_0.a, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(var_2.e.x - -1094f), var_2.c)), 0i, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0.a.a.x), vec2<u32>(31556u, 70487u)), !select(select(vec4<bool>(var_1.b.b, var_1.b.b, var_0.a.b, true), vec4<bool>(true, var_2.d.b, var_0.a.b, false), vec4<bool>(var_1.b.b, false, var_2.d.b, true)), select(vec4<bool>(var_1.b.b, false, true, true), vec4<bool>(var_1.b.b, false, true, true), vec4<bool>(false, var_2.d.b, true, true)), var_0.a.b || var_0.a.b)).x);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, _wgslsmith_f_op_f32(step(var_2.b.x, -641f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, var_2.c) * vec2<f32>(var_2.b.x, 740f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_2.b.xx)))) * vec2<f32>(944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b.x, var_2.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-992f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_4.x)))), ~abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, var_0.a.a.x, 4294967295u), 1395u)));
}

