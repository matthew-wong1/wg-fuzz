struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(495f, 501f, 903f, -1788f), 0u, 948f, false), Struct_1(vec4<f32>(-1444f, -543f, -1301f, -1000f), 0u, 982f, true), Struct_1(vec4<f32>(-629f, 1514f, -511f, 1000f), 4294967295u, 1795f, true), Struct_1(vec4<f32>(1783f, 731f, -779f, -591f), 16393u, 1754f, true), Struct_1(vec4<f32>(1156f, 1320f, 1009f, 229f), 0u, 2073f, true), Struct_1(vec4<f32>(743f, 1186f, -1179f, -312f), 1u, -787f, false), Struct_1(vec4<f32>(2019f, 393f, -129f, -1000f), 60596u, 759f, false), Struct_1(vec4<f32>(790f, -1372f, -362f, -305f), 26125u, -1103f, false), Struct_1(vec4<f32>(981f, 928f, 910f, 752f), 3984u, -1000f, false), Struct_1(vec4<f32>(1648f, 928f, 1223f, -376f), 94515u, -1314f, false), Struct_1(vec4<f32>(-1011f, 733f, -392f, -1072f), 4294967295u, 442f, false), Struct_1(vec4<f32>(1718f, 878f, -1000f, -1338f), 4294967295u, 1165f, false), Struct_1(vec4<f32>(101f, 606f, -3174f, -1407f), 4294967295u, -1703f, true), Struct_1(vec4<f32>(888f, 1000f, -589f, -760f), 1u, 270f, false), Struct_1(vec4<f32>(-523f, -1970f, 347f, 602f), 3114u, -1965f, true), Struct_1(vec4<f32>(465f, 799f, 1000f, 1182f), 0u, 261f, false), Struct_1(vec4<f32>(476f, -1000f, 828f, -1256f), 53599u, -516f, false), Struct_1(vec4<f32>(-413f, -794f, 1387f, 1000f), 9915u, -1000f, true), Struct_1(vec4<f32>(-2409f, -1065f, 1341f, 1415f), 14494u, -564f, true), Struct_1(vec4<f32>(150f, -1182f, 626f, -1561f), 61157u, 102f, false), Struct_1(vec4<f32>(-743f, 1297f, -447f, 1034f), 0u, 1184f, false), Struct_1(vec4<f32>(-370f, 823f, 170f, 1267f), 2364u, -851f, true), Struct_1(vec4<f32>(1077f, 575f, 1000f, 596f), 4294967295u, 1674f, false), Struct_1(vec4<f32>(1240f, 1085f, -1431f, -193f), 1u, -940f, true), Struct_1(vec4<f32>(809f, -849f, -924f, -964f), 0u, -214f, false), Struct_1(vec4<f32>(1520f, 1126f, 1012f, 1000f), 36392u, 501f, false), Struct_1(vec4<f32>(2040f, -1000f, 801f, -570f), 36u, -609f, true), Struct_1(vec4<f32>(-965f, -1117f, 825f, -348f), 0u, -1000f, true), Struct_1(vec4<f32>(-1784f, 396f, -1309f, 292f), 21918u, 1205f, false));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(642f, 213f, 1643f, 780f), 21199u, -959f, false), Struct_1(vec4<f32>(-233f, -426f, -677f, -1513f), 1u, -2456f, false), Struct_1(vec4<f32>(211f, 1625f, -420f, 662f), 1u, -374f, false), Struct_1(vec4<f32>(1000f, -313f, -1000f, -140f), 25095u, -745f, true), Struct_1(vec4<f32>(247f, -1275f, 133f, -475f), 47814u, 2237f, true), Struct_1(vec4<f32>(1000f, -645f, 619f, 1101f), 1u, 2067f, false), Struct_1(vec4<f32>(-857f, -283f, -798f, 235f), 4294967295u, 306f, true), Struct_1(vec4<f32>(-144f, 395f, 144f, -543f), 4294967295u, -1023f, true), Struct_1(vec4<f32>(-529f, 317f, 1730f, 414f), 11581u, -623f, true), Struct_1(vec4<f32>(338f, 1714f, 402f, -908f), 61335u, -542f, false), Struct_1(vec4<f32>(472f, 480f, 855f, 392f), 76640u, 2178f, false), Struct_1(vec4<f32>(-1568f, -1100f, -1604f, 1285f), 39937u, 953f, true), Struct_1(vec4<f32>(322f, -952f, -690f, 1323f), 4294967295u, -862f, false), Struct_1(vec4<f32>(-275f, -1818f, 402f, -745f), 1u, -453f, false), Struct_1(vec4<f32>(1107f, 639f, -616f, -403f), 28116u, -339f, true), Struct_1(vec4<f32>(-783f, 2340f, 509f, 894f), 31379u, -483f, false), Struct_1(vec4<f32>(122f, -155f, -495f, -847f), 1u, -1125f, false), Struct_1(vec4<f32>(914f, 141f, -797f, 741f), 0u, -256f, true), Struct_1(vec4<f32>(-784f, -708f, -155f, -100f), 1u, 251f, false), Struct_1(vec4<f32>(1753f, -672f, 207f, -826f), 0u, 310f, true), Struct_1(vec4<f32>(1000f, -493f, -925f, 771f), 1u, 1277f, true), Struct_1(vec4<f32>(-600f, -1983f, -2674f, -678f), 36694u, 1000f, false), Struct_1(vec4<f32>(-970f, 1000f, -1060f, -355f), 1u, -2023f, true), Struct_1(vec4<f32>(-670f, 748f, 2422f, 922f), 34237u, -914f, false));

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(1250f, 104f, 1591f, -1000f), vec4<f32>(1456f, -1583f, -559f, -182f), vec4<f32>(205f, 795f, -382f, 976f), vec4<f32>(1715f, 804f, 742f, -662f), vec4<f32>(213f, -712f, 847f, -1032f), vec4<f32>(388f, -1746f, 1319f, 690f), vec4<f32>(-305f, 463f, -1813f, 1039f), vec4<f32>(563f, -315f, 699f, -811f));

var<private> global3: array<i32, 14> = array<i32, 14>(i32(-2147483648), -286i, -12977i, 2147483647i, 0i, 15806i, -30996i, 0i, -25589i, 1i, -34239i, 2147483647i, 1i, i32(-2147483648));

var<private> global4: u32 = 1u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.a.x, 1960f, false)), arg_1.a.x, _wgslsmith_f_op_f32(step(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -1000f, arg_2.c, arg_1.c) * _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(arg_2.b, 8u)])))) + global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.b, u_input.a.x << (arg_1.b % 32u)), 8u)]), u_input.b.x, _wgslsmith_f_op_f32(round(arg_1.c)), ~(-51978i & -arg_0.x) == ~(-2147483647i >> (firstLeadingBit(arg_1.b) % 32u)));
    global1 = array<Struct_1, 24>();
    var var_1 = u_input.b;
    let var_2 = 40283u;
    var var_3 = arg_1;
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_div_u32(4294967295u, 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~func_3(~vec2<i32>(-21221i, 1i), Struct_1(vec4<f32>(-138f, 1121f, -296f, 1252f), 73108u, 1685f, arg_0), Struct_1(vec4<f32>(-232f, -1309f, -1479f, 366f), 1u, -1000f, false)), 8u)] * vec4<f32>(1969f, 318f, -244f, _wgslsmith_f_op_f32(abs(590f))))));
    let var_2 = -(reverseBits(~(-vec2<i32>(-1i, 38319i))) & ~select(max(vec2<i32>(global3[_wgslsmith_index_u32(u_input.c, 14u)], arg_2), vec2<i32>(global3[_wgslsmith_index_u32(28423u, 14u)], global3[_wgslsmith_index_u32(1173u, 14u)])), -vec2<i32>(2147483647i, 2147483647i), vec2<bool>(arg_0, false)));
    var var_3 = global1[_wgslsmith_index_u32(27208u, 24u)];
    global4 = _wgslsmith_mult_u32(~abs(var_3.b), abs(countOneBits(u_input.a.x)) << (countOneBits(var_3.b) % 32u));
    return min(_wgslsmith_div_u32(var_3.b, u_input.b.x), ~(~(~var_3.b)) & ~(~_wgslsmith_sub_u32(83020u, 34283u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.b), u_input.a) ^ max(53641u, arg_1.b)), 8u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + global2[_wgslsmith_index_u32(~4294967295u, 8u)])))), _wgslsmith_sub_u32(select(arg_3.b, ~_wgslsmith_clamp_u32(69383u, 0u, arg_2.b), arg_2.d), arg_3.b), _wgslsmith_f_op_f32(f32(-1f) * -428f), ~1u > arg_1.b);
    var var_1 = 38191u << (0u % 32u);
    let var_2 = -1i << (1u % 32u);
    var var_3 = arg_2;
    var var_4 = ~arg_0.x;
    return ~(~(~(~_wgslsmith_clamp_u32(var_3.b, 8425u, arg_1.b))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = arg_0.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1686f, -1000f, var_0, 739f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -495f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_0.a.x)), -1436f)), 0u, 570f, arg_1);
    var var_2 = vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], ~8936i);
    let var_3 = u_input.c;
    global0 = array<Struct_1, 29>();
    return func_4(min(~vec3<u32>(arg_0.b, 4294967295u, 14384u) ^ vec3<u32>(func_2(false, true, var_2.x), ~u_input.a.x, 5160u), min(u_input.b.zyz, vec3<u32>(1u, ~var_1.b, ~59288u))), Struct_1(var_1.a, 3987u, -1011f, all(select(vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_0.d, false), false))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)), 1f), var_0, -1000f), var_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1677f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-598f, var_0) - -1018f))), arg_0.d), var_1);
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_1, 29>();
    let var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 24u)];
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a)))))), _wgslsmith_dot_vec4_u32(~vec4<u32>(~37388u, arg_1.x, ~arg_1.x, u_input.c), u_input.b), _wgslsmith_f_op_f32(126f * -827f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c, 326f), var_1.c))) == _wgslsmith_f_op_f32(f32(-1f) * -818f));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f - var_3.a.x) + _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(select(664f, _wgslsmith_f_op_f32(273f + -1333f), false))), var_1.b, _wgslsmith_f_op_f32(sign(var_1.a.x)), var_3.d);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = u_input.b;
    global2 = array<vec4<f32>, 8>();
    global2 = array<vec4<f32>, 8>();
    var var_1 = arg_0.b;
    var var_2 = -5057i;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(329f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(462f + arg_1.x) - -1470f))), _wgslsmith_f_op_f32(step(378f, -225f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(max(arg_1.x, 335f))))), arg_0.c), var_0.x, 1071f, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_add_i32(17841i, ~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(38859u, 14u)], 2147483647i)), vec4<u32>(func_1(global0[_wgslsmith_index_u32(~0u, 29u)], true), _wgslsmith_mod_u32(2571u, u_input.c), u_input.c, 1217u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(-937f)), -1425f, -603f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-653f, 407f, 839f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1554f, -904f, 239f) - vec3<f32>(1000f, -1348f, 530f))), true))));
    var_0 = func_6(func_6(Struct_1(var_0.a, func_1(func_6(Struct_1(var_0.a, 4294967295u, var_0.a.x, var_0.d), var_0.a.wwx), func_6(global1[_wgslsmith_index_u32(var_0.b, 24u)], var_0.a.xzy).d), var_0.a.x, !(!var_0.d)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.a.zyw), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1082f, -2074f, 1534f)))))), var_0.a.yzz);
    global0 = array<Struct_1, 29>();
    var var_1 = global1[_wgslsmith_index_u32(~(~min(_wgslsmith_add_u32(4294967295u, 0u), u_input.a.x)) & ((44678u >> (((0u >> (0u % 32u)) | _wgslsmith_div_u32(u_input.a.x, 1u)) % 32u)) ^ ~u_input.a.x), 24u)];
    let var_2 = 1f;
    global0 = array<Struct_1, 29>();
    let var_3 = func_6(Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(func_6(Struct_1(global2[_wgslsmith_index_u32(var_0.b, 8u)], 1u, -452f, var_1.d), var_1.a.xzy).c, var_0.c, var_2, var_0.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b, 1u, 13132u), u_input.b), firstTrailingBit(u_input.b)), select(vec4<u32>(1u, 2198u, 54636u, var_1.b), _wgslsmith_add_vec4_u32(u_input.b, u_input.b), vec4<bool>(var_0.d, true, false, var_1.d))), 1418f, var_0.d), var_1.a.zwy);
    var var_4 = Struct_1(var_3.a, _wgslsmith_add_u32(10468u, 1u), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_div_f32(582f, func_6(global1[_wgslsmith_index_u32(max(var_3.b, 41325u), 24u)], var_3.a.zyw).a.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(24878i | global3[_wgslsmith_index_u32(4294967295u, 14u)]) | _wgslsmith_clamp_i32(abs(1i), select(-1i, global3[_wgslsmith_index_u32(1u, 14u)], var_0.d), -21637i), global3[_wgslsmith_index_u32(1u, 14u)]), global3[_wgslsmith_index_u32(var_3.b, 14u)], _wgslsmith_mult_u32(var_4.b, ~(var_3.b ^ _wgslsmith_mult_u32(u_input.a.x, var_0.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.a))), var_3.a, var_1.d)), (func_5(global3[_wgslsmith_index_u32(~19504u, 14u)], u_input.b).b ^ ~var_3.b) << (22897u % 32u));
}

