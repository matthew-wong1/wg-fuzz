struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(18575i, 2361i), 481f, vec4<f32>(733f, 1381f, 343f, 435f), vec4<u32>(4294967295u, 0u, 1u, 25527u), vec4<f32>(650f, -443f, 169f, -363f)), Struct_1(vec2<i32>(-2365i, 13279i), -494f, vec4<f32>(-708f, -1955f, -949f, 190f), vec4<u32>(4294967295u, 1u, 1u, 24978u), vec4<f32>(749f, -2099f, -2456f, 234f)), Struct_1(vec2<i32>(-1i, 1062i), -962f, vec4<f32>(969f, -320f, -1953f, -116f), vec4<u32>(4294967295u, 10477u, 14314u, 0u), vec4<f32>(1000f, 493f, 1506f, 599f)), Struct_1(vec2<i32>(-1829i, 2147483647i), 417f, vec4<f32>(-727f, -349f, 924f, 235f), vec4<u32>(73108u, 0u, 1u, 4294967295u), vec4<f32>(1000f, 201f, -403f, -1499f)), Struct_1(vec2<i32>(-1i, 414i), -440f, vec4<f32>(-864f, 1680f, 167f, 1485f), vec4<u32>(52117u, 1u, 1u, 6553u), vec4<f32>(599f, 557f, -1000f, -846f)), Struct_1(vec2<i32>(i32(-2147483648), 49530i), -756f, vec4<f32>(343f, 756f, 1032f, -477f), vec4<u32>(21261u, 9558u, 4294967295u, 11988u), vec4<f32>(1271f, -358f, 233f, -823f)), Struct_1(vec2<i32>(36030i, 13130i), -2073f, vec4<f32>(139f, 381f, -1574f, 450f), vec4<u32>(4294967295u, 7486u, 21343u, 66310u), vec4<f32>(-464f, 705f, -207f, 2328f)), Struct_1(vec2<i32>(11565i, -8498i), 529f, vec4<f32>(-2035f, 1692f, 290f, 204f), vec4<u32>(60943u, 4294967295u, 22714u, 45411u), vec4<f32>(436f, -376f, 664f, -174f)), Struct_1(vec2<i32>(916i, 0i), 905f, vec4<f32>(1000f, 113f, -368f, 2222f), vec4<u32>(0u, 22794u, 35444u, 4294967295u), vec4<f32>(-532f, 487f, 3093f, 190f)), Struct_1(vec2<i32>(i32(-2147483648), -20375i), -2442f, vec4<f32>(-538f, 639f, -553f, 127f), vec4<u32>(1u, 44282u, 38110u, 1u), vec4<f32>(866f, -1467f, 1315f, 296f)), Struct_1(vec2<i32>(37016i, 0i), -1000f, vec4<f32>(1000f, 1026f, 1000f, -418f), vec4<u32>(1u, 1u, 4294967295u, 65415u), vec4<f32>(167f, -706f, 143f, 882f)), Struct_1(vec2<i32>(0i, -19110i), -1405f, vec4<f32>(1021f, -810f, 404f, -332f), vec4<u32>(4294967295u, 39608u, 23710u, 0u), vec4<f32>(-1057f, -759f, -606f, -1244f)), Struct_1(vec2<i32>(-22016i, 0i), -1440f, vec4<f32>(-1026f, 161f, -483f, -183f), vec4<u32>(0u, 22359u, 64911u, 16003u), vec4<f32>(-1000f, 1548f, 2278f, -1000f)), Struct_1(vec2<i32>(0i, 2147483647i), 639f, vec4<f32>(2249f, -556f, -332f, -1025f), vec4<u32>(4294967295u, 0u, 8379u, 1u), vec4<f32>(212f, 1224f, 1471f, 376f)), Struct_1(vec2<i32>(0i, 2147483647i), -844f, vec4<f32>(533f, 1339f, 1126f, 836f), vec4<u32>(71348u, 37965u, 4294967295u, 4294967295u), vec4<f32>(1000f, -440f, -208f, 701f)), Struct_1(vec2<i32>(4862i, 2147483647i), 707f, vec4<f32>(922f, 254f, 448f, 202f), vec4<u32>(4294967295u, 49496u, 10488u, 32928u), vec4<f32>(124f, 200f, 525f, -616f)), Struct_1(vec2<i32>(-22912i, -1i), -555f, vec4<f32>(-840f, -1409f, 824f, -1094f), vec4<u32>(4294967295u, 1u, 4294967295u, 28986u), vec4<f32>(-256f, -514f, 128f, -169f)), Struct_1(vec2<i32>(1i, 27424i), -650f, vec4<f32>(-800f, 1000f, -581f, 105f), vec4<u32>(4294967295u, 2365u, 4294967295u, 36549u), vec4<f32>(-947f, 361f, 482f, 887f)), Struct_1(vec2<i32>(-20079i, -1400i), 342f, vec4<f32>(1345f, -263f, 926f, -562f), vec4<u32>(54937u, 34577u, 49229u, 0u), vec4<f32>(1405f, 468f, 650f, -846f)), Struct_1(vec2<i32>(0i, -34746i), -1430f, vec4<f32>(-573f, -1562f, 1942f, 1915f), vec4<u32>(8026u, 0u, 0u, 32664u), vec4<f32>(-2286f, 516f, 764f, -925f)), Struct_1(vec2<i32>(1i, -13462i), -1106f, vec4<f32>(-528f, 1288f, -866f, -1311f), vec4<u32>(14604u, 22395u, 19079u, 0u), vec4<f32>(2192f, 503f, 959f, 381f)), Struct_1(vec2<i32>(1i, i32(-2147483648)), -321f, vec4<f32>(182f, 1855f, -2319f, 1706f), vec4<u32>(1u, 70815u, 32468u, 11423u), vec4<f32>(862f, -1168f, 1482f, 294f)), Struct_1(vec2<i32>(50630i, 0i), 790f, vec4<f32>(911f, -504f, -772f, -596f), vec4<u32>(0u, 1u, 0u, 7925u), vec4<f32>(-1485f, -599f, 445f, -125f)), Struct_1(vec2<i32>(0i, 18444i), 345f, vec4<f32>(-141f, 770f, -2382f, -1000f), vec4<u32>(1u, 1u, 4294967295u, 66326u), vec4<f32>(1150f, 420f, 590f, 641f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 278f, vec4<f32>(247f, 338f, 748f, -1203f), vec4<u32>(81319u, 31404u, 4238u, 3463u), vec4<f32>(1000f, -755f, -136f, 1338f)), Struct_1(vec2<i32>(-18613i, -2922i), 188f, vec4<f32>(1265f, 1377f, -336f, -1921f), vec4<u32>(0u, 1u, 40142u, 6089u), vec4<f32>(833f, 868f, -1294f, 2306f)), Struct_1(vec2<i32>(33906i, 1i), 165f, vec4<f32>(236f, 1508f, -508f, -356f), vec4<u32>(4294967295u, 75948u, 34281u, 0u), vec4<f32>(-182f, -535f, 451f, 932f)), Struct_1(vec2<i32>(11569i, 0i), -1216f, vec4<f32>(801f, -1720f, -1951f, 1964f), vec4<u32>(22554u, 12186u, 42525u, 19635u), vec4<f32>(2187f, 1617f, 1207f, -1260f)));

var<private> global1: bool = true;

var<private> global2: array<bool, 14> = array<bool, 14>(false, true, false, true, false, true, false, false, false, false, true, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = select(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(51310i, u_input.a, 2147483647i, u_input.a), vec4<i32>(-1i, -29602i, u_input.a, u_input.a)) << (firstLeadingBit(vec4<u32>(16133u, 0u, 10865u, 17154u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -40956i, -35367i), -vec4<i32>(u_input.a, u_input.a, -48463i, -2147483647i))), vec4<i32>(-1i) * -(vec4<i32>(u_input.a, u_input.a, u_input.a, -24778i) << (vec4<u32>(1u, 4294967295u, 1u, 55418u) % vec4<u32>(32u)))), -vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -1i, ~(-1i)), 1i, abs(reverseBits(-12638i)), -_wgslsmith_sub_i32(1i, u_input.a)), 137f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1142f - -206f))));
    var var_1 = vec4<bool>(u_input.a > ((min(var_0.x, 25180i) | -28794i) << (~min(74626u, 25496u) % 32u)), !any(select(vec3<bool>(false, false, true), select(vec3<bool>(global2[_wgslsmith_index_u32(20111u, 14u)], global2[_wgslsmith_index_u32(17367u, 14u)], false), vec3<bool>(global2[_wgslsmith_index_u32(13672u, 14u)], true, global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)])), u_input.a == var_0.x)), true, !(all(select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(92175u, 14u)], global2[_wgslsmith_index_u32(6378u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(63047u, 14u)]))) || true));
    var var_2 = arg_0.x;
    var_0 = _wgslsmith_div_vec4_i32(~min(~firstLeadingBit(vec4<i32>(var_0.x, 18568i, u_input.a, u_input.a)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-4534i, u_input.a, 17332i, var_0.x), vec4<i32>(u_input.a, var_0.x, var_0.x, 1i)))), -min(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, -22590i, 1i), vec4<i32>(1i, var_0.x, -5712i, var_0.x)), abs(vec4<i32>(var_0.x, u_input.a, var_0.x, -73122i))), vec4<i32>(36425i, firstTrailingBit(var_0.x), -2147483647i, u_input.a)));
    let var_3 = true;
    return var_1.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(reverseBits(~0u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -869f))))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-820f, 621f)))), -795f))), _wgslsmith_mod_i32(26080i, -48842i), global0[_wgslsmith_index_u32(6497u, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -2738f));
    global1 = any(select(vec4<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], true, false), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), false)), var_0.b.x < _wgslsmith_f_op_f32(-var_0.e), any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a, 14u)], true, true, global2[_wgslsmith_index_u32(0u, 14u)])), func_3(var_0.d.e.xx)), !vec4<bool>(true, true, all(vec4<bool>(global2[_wgslsmith_index_u32(86847u, 14u)], false, false, true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.d.x, var_0.d.d.x), var_0.d.d.xy), 14u)]), vec4<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.d.d.x, 14u)], global2[_wgslsmith_index_u32(var_0.a, 14u)], false, false)), false, global2[_wgslsmith_index_u32(1u, 14u)], func_3(var_0.b))));
    var var_1 = vec2<i32>(2147483647i, -43045i);
    var var_2 = vec4<i32>(-(~_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.d.a), min(vec2<i32>(55027i, var_0.d.a.x), vec2<i32>(1i, -2060i)))), i32(-1i) * -7509i, -var_0.d.a.x, var_0.d.a.x);
    var var_3 = ~1u;
    return var_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: bool) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = func_2().d;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(883f, 161f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(floor(723f))), 1000f)), -995f) + var_0.d.e);
    var_0 = func_2();
    global2 = array<bool, 14>();
    return Struct_3(~(-2147483647i), func_2().d, func_2(), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 14>();
    let var_0 = -(~firstLeadingBit(~u_input.a)) > (23719i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~23386u, 1u), vec2<u32>(1u, 1u)) % 32u));
    var var_1 = func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(17043u, 0u)), 1u, 1u), ~_wgslsmith_div_vec3_u32(min(vec3<u32>(0u, 1u, 19619u), vec3<u32>(49840u, 0u, 12481u)), ~vec3<u32>(38801u, 20657u, 67170u))), ~16376u, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-abs(vec3<i32>(4770i, 2147483647i, 39997i))) & _wgslsmith_mod_vec3_i32(-(vec3<i32>(-24319i, -14227i, var_1.c.c) & vec3<i32>(1i, 0i, u_input.a)), ~(vec3<i32>(var_1.b.a.x, var_1.a, var_1.a) ^ vec3<i32>(1i, 1i, var_1.b.a.x))), vec4<u32>(11147u, ~(~4294967295u), reverseBits(_wgslsmith_sub_u32(~var_1.c.a, ~1u)), _wgslsmith_mod_u32(var_1.b.d.x, firstLeadingBit(0u))));
}

