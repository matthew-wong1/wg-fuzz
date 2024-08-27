struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(216f, vec4<f32>(631f, 1291f, -891f, -490f)), vec3<f32>(1725f, -1375f, -197f), 1u, Struct_1(316f, vec4<f32>(-1205f, 1005f, 1811f, -469f))), Struct_3(Struct_1(-1000f, vec4<f32>(-849f, -1410f, -683f, 1000f)), vec3<f32>(1198f, -826f, -212f), 4294967295u, Struct_1(595f, vec4<f32>(-1308f, -1538f, 2265f, 282f))), Struct_3(Struct_1(-646f, vec4<f32>(1854f, 1449f, 198f, 233f)), vec3<f32>(1612f, 1905f, 726f), 4294967295u, Struct_1(353f, vec4<f32>(-1205f, -109f, 1212f, -720f))), Struct_3(Struct_1(201f, vec4<f32>(-431f, 1518f, -480f, -296f)), vec3<f32>(-338f, 893f, 404f), 0u, Struct_1(-374f, vec4<f32>(602f, 1511f, -944f, 692f))), Struct_3(Struct_1(1234f, vec4<f32>(266f, 880f, 724f, 1228f)), vec3<f32>(-901f, -292f, 1041f), 2553u, Struct_1(-709f, vec4<f32>(-721f, -365f, -400f, -854f))), Struct_3(Struct_1(-1066f, vec4<f32>(390f, -1081f, -294f, -969f)), vec3<f32>(-946f, 1682f, -1030f), 1u, Struct_1(426f, vec4<f32>(-1950f, -2019f, -479f, -1106f))), Struct_3(Struct_1(882f, vec4<f32>(779f, -106f, 516f, -1734f)), vec3<f32>(-1000f, 222f, 696f), 104155u, Struct_1(343f, vec4<f32>(-990f, 295f, 1403f, -1112f))), Struct_3(Struct_1(1000f, vec4<f32>(983f, -912f, -708f, -458f)), vec3<f32>(-797f, 260f, -654f), 11760u, Struct_1(-1282f, vec4<f32>(287f, 826f, -501f, -523f))), Struct_3(Struct_1(-1123f, vec4<f32>(-325f, 602f, 756f, -1774f)), vec3<f32>(-1771f, 860f, 718f), 11631u, Struct_1(-810f, vec4<f32>(440f, 1064f, 1122f, 136f))), Struct_3(Struct_1(574f, vec4<f32>(-250f, -300f, -1149f, -1016f)), vec3<f32>(579f, 247f, 1197f), 47453u, Struct_1(-569f, vec4<f32>(719f, -704f, -1791f, 2007f))), Struct_3(Struct_1(-435f, vec4<f32>(1998f, -232f, -702f, -1166f)), vec3<f32>(560f, 193f, -555f), 0u, Struct_1(1000f, vec4<f32>(-1577f, 414f, -1549f, -1889f))), Struct_3(Struct_1(-192f, vec4<f32>(395f, 1000f, -1000f, -594f)), vec3<f32>(254f, -1000f, -298f), 0u, Struct_1(-1148f, vec4<f32>(-134f, -316f, 1235f, 795f))), Struct_3(Struct_1(-976f, vec4<f32>(356f, 157f, 1592f, 1076f)), vec3<f32>(-675f, -632f, -525f), 0u, Struct_1(-416f, vec4<f32>(-708f, 2068f, -314f, -1293f))), Struct_3(Struct_1(334f, vec4<f32>(-902f, -372f, -1000f, 181f)), vec3<f32>(-214f, 1984f, -424f), 31138u, Struct_1(369f, vec4<f32>(1000f, -1761f, -766f, -1031f))), Struct_3(Struct_1(-2465f, vec4<f32>(1000f, 2245f, -1653f, -960f)), vec3<f32>(1195f, 809f, 652f), 0u, Struct_1(-739f, vec4<f32>(1059f, -1000f, 359f, -731f))), Struct_3(Struct_1(197f, vec4<f32>(-1625f, -2581f, -1308f, 1000f)), vec3<f32>(-190f, -288f, -1251f), 19133u, Struct_1(-1000f, vec4<f32>(-521f, -1190f, -796f, 881f))), Struct_3(Struct_1(-155f, vec4<f32>(910f, -1555f, 1270f, -287f)), vec3<f32>(-817f, 506f, -1000f), 3414u, Struct_1(167f, vec4<f32>(-911f, 1071f, 1883f, 1461f))));

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: array<vec4<i32>, 32>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(892f, vec4<f32>(511f, 1126f, 112f, -140f)), Struct_1(2805f, vec4<f32>(-356f, -566f, 1304f, -1004f)), Struct_1(327f, vec4<f32>(1203f, 900f, -370f, 751f)), Struct_1(-270f, vec4<f32>(1202f, -629f, -1000f, -855f)), Struct_1(-218f, vec4<f32>(-1071f, 838f, 137f, -130f)), Struct_1(529f, vec4<f32>(759f, -1042f, 1041f, -2385f)), Struct_1(-878f, vec4<f32>(-1970f, -982f, -320f, -1297f)), Struct_1(-351f, vec4<f32>(160f, 375f, 633f, 1268f)), Struct_1(-382f, vec4<f32>(-1510f, -617f, 154f, -449f)), Struct_1(-581f, vec4<f32>(483f, -207f, 133f, 470f)), Struct_1(-1000f, vec4<f32>(964f, -526f, -915f, -251f)), Struct_1(716f, vec4<f32>(1553f, -524f, 942f, -1618f)), Struct_1(-1230f, vec4<f32>(861f, -145f, -2202f, 318f)), Struct_1(911f, vec4<f32>(626f, 926f, 220f, -1425f)), Struct_1(1092f, vec4<f32>(1684f, 736f, 788f, 1527f)), Struct_1(736f, vec4<f32>(-313f, 1651f, -939f, -782f)), Struct_1(335f, vec4<f32>(1666f, -528f, 1394f, 1353f)), Struct_1(-2169f, vec4<f32>(-219f, 786f, -793f, -1171f)), Struct_1(1396f, vec4<f32>(1116f, -352f, 1548f, -1867f)), Struct_1(-1675f, vec4<f32>(-118f, -1564f, 2023f, -1261f)), Struct_1(969f, vec4<f32>(-292f, -132f, -1003f, 1000f)), Struct_1(-847f, vec4<f32>(-992f, -1240f, 479f, -985f)), Struct_1(-937f, vec4<f32>(-1215f, 618f, -1070f, 1000f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<vec2<f32>, 13>();
    return 13206i;
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    global3 = array<Struct_1, 23>();
    global2 = array<vec4<i32>, 32>();
    let var_0 = u_input.a.x;
    global1 = array<vec2<f32>, 13>();
    var var_1 = _wgslsmith_mult_i32(select(max(abs(-9357i), 1i >> (_wgslsmith_mod_u32(var_0, var_0) % 32u)), func_3(), true), ~21390i);
    return vec3<bool>(countOneBits(reverseBits(-2147483647i) >> (1u % 32u)) == _wgslsmith_dot_vec2_i32(vec2<i32>(38950i, reverseBits(-1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(43751i, 2147483647i) << (arg_0.zy % vec2<u32>(32u)))), true, false);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, -35666i, abs(2147483647i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(1i, -1i, -27803i)), ~1i)), ~vec4<i32>(1i, _wgslsmith_sub_i32(i32(-1i) * -3461i, reverseBits(3445i)), reverseBits(-2147483647i << (u_input.a.x % 32u)), 1i));
    let var_1 = select(var_0.yy, vec2<i32>(var_0.x, var_0.x) | -vec2<i32>(i32(-1i) * -1i, abs(0i)), any(select(vec3<bool>(true, true, true), !func_2(vec4<u32>(16200u, 4294967295u, 651u, 62655u)), any(vec3<bool>(false, true, false)) || true)));
    let var_2 = !func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u) | vec4<u32>(5742u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 66482u, 4294967295u)), ~reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))).yx;
    global2 = array<vec4<i32>, 32>();
    global0 = array<Struct_3, 17>();
    return StorageBuffer(_wgslsmith_f_op_f32(step(-824f, 976f)), -28439i, ~(56697u << (max(0u | u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~0i), -2147483647i);
    let var_1 = ~vec4<u32>(firstLeadingBit(1u), u_input.a.x, 4294967295u, countOneBits(1u));
    let var_2 = u_input.a << (vec3<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(2209u, u_input.a.x, var_1.x, 23271u), var_1 >> (var_1 % vec4<u32>(32u))), 66815u), ~0u) % vec3<u32>(32u));
    global3 = array<Struct_1, 23>();
    let var_3 = ~_wgslsmith_sub_vec2_i32((vec2<i32>(var_0, var_0) & vec2<i32>(var_0, -8901i)) << (~vec2<u32>(1u, var_2.x) % vec2<u32>(32u)), ~(-vec2<i32>(var_0, var_0))) << (var_2.yy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = func_1();
}

