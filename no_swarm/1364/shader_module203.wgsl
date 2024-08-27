struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, false)));

var<private> global2: u32 = 67537u;

var<private> global3: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(vec3<f32>(-757f, -964f, -1363f)), Struct_2(vec3<f32>(1282f, -1148f, -491f)), Struct_2(vec3<f32>(617f, 471f, -2038f)), Struct_1(vec2<u32>(47904u, 4294967295u), 4294967295u)), Struct_3(Struct_2(vec3<f32>(225f, -1199f, 1347f)), Struct_2(vec3<f32>(-566f, -773f, -2336f)), Struct_2(vec3<f32>(273f, 491f, -1155f)), Struct_1(vec2<u32>(0u, 3234u), 1u)), Struct_3(Struct_2(vec3<f32>(725f, -1252f, 1470f)), Struct_2(vec3<f32>(-1642f, -600f, -327f)), Struct_2(vec3<f32>(-2621f, -1055f, -1000f)), Struct_1(vec2<u32>(25063u, 16521u), 0u)), Struct_3(Struct_2(vec3<f32>(350f, -1000f, -936f)), Struct_2(vec3<f32>(-900f, 427f, 1000f)), Struct_2(vec3<f32>(423f, -1613f, -661f)), Struct_1(vec2<u32>(2434u, 0u), 4294967295u)), Struct_3(Struct_2(vec3<f32>(315f, -1311f, 840f)), Struct_2(vec3<f32>(760f, 397f, -477f)), Struct_2(vec3<f32>(-512f, 501f, 1569f)), Struct_1(vec2<u32>(45583u, 37u), 4294967295u)), Struct_3(Struct_2(vec3<f32>(-381f, 718f, -100f)), Struct_2(vec3<f32>(-126f, -1479f, 560f)), Struct_2(vec3<f32>(-680f, -594f, 1000f)), Struct_1(vec2<u32>(1064u, 0u), 0u)), Struct_3(Struct_2(vec3<f32>(-1925f, 382f, 2195f)), Struct_2(vec3<f32>(428f, -1000f, -544f)), Struct_2(vec3<f32>(-1627f, -1575f, 2180f)), Struct_1(vec2<u32>(4294967295u, 11040u), 4294967295u)), Struct_3(Struct_2(vec3<f32>(-3091f, -382f, -191f)), Struct_2(vec3<f32>(914f, 800f, 1387f)), Struct_2(vec3<f32>(-1225f, 1292f, 708f)), Struct_1(vec2<u32>(4294967295u, 30319u), 1u)), Struct_3(Struct_2(vec3<f32>(-1327f, 127f, 2998f)), Struct_2(vec3<f32>(-1253f, -615f, -1755f)), Struct_2(vec3<f32>(1935f, -792f, -564f)), Struct_1(vec2<u32>(7665u, 4294967295u), 0u)), Struct_3(Struct_2(vec3<f32>(-2323f, 1055f, -1000f)), Struct_2(vec3<f32>(764f, -952f, 1000f)), Struct_2(vec3<f32>(-346f, -1733f, -206f)), Struct_1(vec2<u32>(18849u, 1u), 1u)), Struct_3(Struct_2(vec3<f32>(1000f, -501f, -593f)), Struct_2(vec3<f32>(1100f, 316f, 1125f)), Struct_2(vec3<f32>(-977f, 516f, -1489f)), Struct_1(vec2<u32>(1u, 4294967295u), 39805u)), Struct_3(Struct_2(vec3<f32>(711f, -104f, 1000f)), Struct_2(vec3<f32>(507f, 291f, 135f)), Struct_2(vec3<f32>(-628f, -500f, 1197f)), Struct_1(vec2<u32>(1u, 0u), 31115u)), Struct_3(Struct_2(vec3<f32>(1908f, -128f, 2713f)), Struct_2(vec3<f32>(-571f, 932f, -1444f)), Struct_2(vec3<f32>(-2266f, 534f, 334f)), Struct_1(vec2<u32>(25475u, 4294967295u), 13378u)), Struct_3(Struct_2(vec3<f32>(-1410f, -140f, 327f)), Struct_2(vec3<f32>(1345f, -231f, -1093f)), Struct_2(vec3<f32>(2030f, 782f, -779f)), Struct_1(vec2<u32>(85086u, 1u), 0u)), Struct_3(Struct_2(vec3<f32>(-338f, -637f, -140f)), Struct_2(vec3<f32>(1456f, -491f, -379f)), Struct_2(vec3<f32>(1000f, 214f, 375f)), Struct_1(vec2<u32>(1u, 52391u), 22176u)), Struct_3(Struct_2(vec3<f32>(308f, -613f, -656f)), Struct_2(vec3<f32>(547f, 711f, 1163f)), Struct_2(vec3<f32>(1041f, 834f, -703f)), Struct_1(vec2<u32>(1u, 0u), 0u)), Struct_3(Struct_2(vec3<f32>(-1841f, 178f, -831f)), Struct_2(vec3<f32>(-213f, -951f, -1326f)), Struct_2(vec3<f32>(-155f, 451f, 1695f)), Struct_1(vec2<u32>(4294967295u, 12373u), 1u)), Struct_3(Struct_2(vec3<f32>(-267f, 2293f, 103f)), Struct_2(vec3<f32>(152f, 1993f, -578f)), Struct_2(vec3<f32>(1109f, -2317f, 1356f)), Struct_1(vec2<u32>(27449u, 41079u), 30325u)), Struct_3(Struct_2(vec3<f32>(-998f, 600f, -916f)), Struct_2(vec3<f32>(-265f, -695f, 1334f)), Struct_2(vec3<f32>(255f, 1597f, 1381f)), Struct_1(vec2<u32>(22052u, 4294967295u), 1u)), Struct_3(Struct_2(vec3<f32>(404f, 357f, 1945f)), Struct_2(vec3<f32>(-1000f, -447f, 1000f)), Struct_2(vec3<f32>(659f, 1000f, 289f)), Struct_1(vec2<u32>(4294967295u, 53027u), 51206u)), Struct_3(Struct_2(vec3<f32>(-327f, -1319f, 1146f)), Struct_2(vec3<f32>(-870f, 1122f, 606f)), Struct_2(vec3<f32>(-835f, 154f, -486f)), Struct_1(vec2<u32>(50519u, 60260u), 40223u)), Struct_3(Struct_2(vec3<f32>(1415f, 889f, -427f)), Struct_2(vec3<f32>(-776f, 1731f, -2019f)), Struct_2(vec3<f32>(-1985f, -1045f, 286f)), Struct_1(vec2<u32>(5404u, 0u), 4297u)), Struct_3(Struct_2(vec3<f32>(-1305f, -603f, -116f)), Struct_2(vec3<f32>(554f, -1302f, 632f)), Struct_2(vec3<f32>(1614f, 512f, -325f)), Struct_1(vec2<u32>(4294967295u, 58670u), 50703u)), Struct_3(Struct_2(vec3<f32>(-252f, 1342f, -1427f)), Struct_2(vec3<f32>(-845f, -1000f, -245f)), Struct_2(vec3<f32>(319f, 216f, -1075f)), Struct_1(vec2<u32>(0u, 73689u), 1u)), Struct_3(Struct_2(vec3<f32>(1643f, -1000f, -302f)), Struct_2(vec3<f32>(-1552f, 2227f, 384f)), Struct_2(vec3<f32>(861f, -1662f, -1000f)), Struct_1(vec2<u32>(26741u, 7449u), 10141u)), Struct_3(Struct_2(vec3<f32>(2400f, 838f, 551f)), Struct_2(vec3<f32>(648f, 210f, -448f)), Struct_2(vec3<f32>(-1314f, -473f, 961f)), Struct_1(vec2<u32>(67222u, 5203u), 4294967295u)), Struct_3(Struct_2(vec3<f32>(-2653f, -426f, 578f)), Struct_2(vec3<f32>(607f, 636f, -277f)), Struct_2(vec3<f32>(824f, -2544f, 316f)), Struct_1(vec2<u32>(78426u, 32612u), 4294967295u)), Struct_3(Struct_2(vec3<f32>(-1774f, 1405f, 403f)), Struct_2(vec3<f32>(1111f, -1069f, 1163f)), Struct_2(vec3<f32>(532f, 747f, -968f)), Struct_1(vec2<u32>(19073u, 4294967295u), 11061u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_i32(max(countOneBits(_wgslsmith_sub_i32(u_input.a, u_input.a)), -24731i), 1i);
    var var_1 = -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(-9450i, u_input.b) << (~vec2<u32>(9207u, u_input.c) % vec2<u32>(32u)), firstTrailingBit(abs(vec2<i32>(33203i, -430i)))), abs(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0, u_input.b), vec2<i32>(u_input.b, -19882i))));
    let var_2 = u_input.c;
    global1 = array<Struct_4, 19>();
    var var_3 = ~(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(39526u, var_2, var_2) ^ vec3<u32>(14559u, 88422u, var_2), ~vec3<u32>(var_2, u_input.c, 4294967295u))));
    return arg_1;
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(-259f * 112f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-927f, -1000f)))))));
    let var_1 = countOneBits(abs(137106u));
    global1 = array<Struct_4, 19>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(2039f)), 472f, 1f))) - func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(415f))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 589f, -952f, -234f), vec4<f32>(-625f, -1447f, var_0.x, var_0.x), false)), Struct_3(Struct_2(vec3<f32>(663f, -1321f, var_0.x)), Struct_2(vec3<f32>(-847f, var_0.x, 1060f)), Struct_2(vec3<f32>(var_0.x, var_0.x, var_0.x)), global0[_wgslsmith_index_u32(var_1, 15u)])).b.a.x, _wgslsmith_f_op_f32(max(-251f, 929f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(955f, var_0.x) * _wgslsmith_f_op_f32(ceil(-807f)))), global3[_wgslsmith_index_u32(~0u, 28u)]).b.a);
    var var_3 = Struct_4(vec2<bool>(!select(true, true, false), select(true, all(vec4<bool>(true, false, true, false)), true) == true));
    return ~vec3<u32>(u_input.c, ~var_1, countOneBits(max(~4294967295u, _wgslsmith_sub_u32(42922u, var_1))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_div_vec3_u32(abs(func_3()), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c)));
    let var_1 = firstTrailingBit(0i);
    let var_2 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, arg_0.a.a.x, arg_0.b.a.x, arg_0.a.a.x) * _wgslsmith_div_vec4_f32(vec4<f32>(-2100f, arg_0.a.a.x, arg_0.b.a.x, -513f), vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, 499f, arg_0.c.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.a.x, arg_0.c.a.x, -905f, -283f), vec4<f32>(arg_0.b.a.x, 802f, 1188f, arg_0.a.a.x))))), Struct_3(arg_0.a, Struct_2(vec3<f32>(arg_0.c.a.x, -219f, -1844f)), func_1(vec4<f32>(arg_0.b.a.x, -333f, arg_0.a.a.x, arg_0.c.a.x), global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 28u)]).b, arg_0.d)).c, arg_0.c, arg_0.b, arg_0.d);
    global2 = reverseBits(_wgslsmith_add_u32(0u, u_input.c));
    let var_3 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(select(~vec3<i32>(u_input.b, u_input.b, -44112i), -vec3<i32>(0i, u_input.a, -1i), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-13081i, u_input.a, u_input.a) ^ vec3<i32>(3898i, u_input.a, -2147483647i), -vec3<i32>(2147483647i, -2147483647i, -12420i), select(vec3<i32>(0i, u_input.b, u_input.a), vec3<i32>(u_input.b, u_input.b, 36877i), true))), vec3<i32>(1i, -2147483647i, _wgslsmith_mult_i32(4098i, -49399i))), -vec3<i32>(i32(-1i) * -2147483647i, func_2(func_1(vec4<f32>(-262f, -1664f, 141f, -629f), Struct_3(Struct_2(vec3<f32>(383f, 543f, -321f)), Struct_2(vec3<f32>(121f, -741f, 1204f)), Struct_2(vec3<f32>(-120f, -101f, 1171f)), Struct_1(vec2<u32>(1u, u_input.c), u_input.c)))), u_input.a));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.c), 19u)];
    var_0 = ((-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -1i, 37460i), vec3<i32>(20580i, 0i, -1i)) << (~vec3<u32>(1u, u_input.c, 83909u) % vec3<u32>(32u))) << (vec3<u32>(0u, firstLeadingBit(u_input.c & 36389u), firstLeadingBit(~u_input.c)) % vec3<u32>(32u))) << (vec3<u32>(firstTrailingBit(~42018u), _wgslsmith_mod_u32(0u, ~1u), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -838f, -1091f, -1200f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(365f, -1117f, 554f, -590f)))), Struct_3(Struct_2(vec3<f32>(-749f, 832f, -1443f)), Struct_2(vec3<f32>(225f, 1388f, -848f)), Struct_2(vec3<f32>(-246f, 340f, 1511f)), func_1(vec4<f32>(2615f, -696f, -352f, -288f), global3[_wgslsmith_index_u32(28068u, 28u)]).d)).d.b) % vec3<u32>(32u));
    let var_2 = func_1(vec4<f32>(1383f, _wgslsmith_f_op_f32(-func_1(vec4<f32>(1f, 1f, 1f, 1f), global3[_wgslsmith_index_u32(~u_input.c, 28u)]).c.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-622f, 312f) * _wgslsmith_f_op_f32(round(-380f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1285f)))), Struct_3(func_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(-218f)), -1215f, 807f, _wgslsmith_f_op_f32(floor(250f))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(2353u, 0u), _wgslsmith_mod_u32(41984u, u_input.c)), 28u)]).c, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1222f, 1187f, 1573f, -1861f) + vec4<f32>(108f, -495f, 1409f, 956f))), global3[_wgslsmith_index_u32(u_input.c, 28u)]).a, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1240f, 1000f, 383f)))), global0[_wgslsmith_index_u32(4294967295u, 15u)])).d;
    var var_3 = -242f;
    var var_4 = !(!select(!vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), select(!vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), select(vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, true, true)), true), select(true, any(vec3<bool>(false, var_1.a.x, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1897f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-778f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f), -702f))), countOneBits(0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))))));
}

