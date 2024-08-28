struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-1154f, 1226f, 404f, -798f), vec4<f32>(323f, 528f, -1301f, -422f), vec4<f32>(-1350f, -975f, 299f, -886f), vec4<f32>(-495f, -1108f, 537f, -408f), vec4<f32>(389f, 1589f, 196f, -959f), vec4<f32>(604f, -850f, 1131f, -1000f), vec4<f32>(-744f, 293f, 626f, -610f), vec4<f32>(1279f, -244f, 1471f, -2066f), vec4<f32>(-475f, 759f, 510f, 408f), vec4<f32>(596f, -1000f, 868f, 172f), vec4<f32>(-1314f, 933f, -1417f, -2447f), vec4<f32>(592f, 1308f, -127f, -259f), vec4<f32>(651f, -177f, -647f, -150f), vec4<f32>(-700f, -2025f, -474f, -429f), vec4<f32>(625f, 781f, -1422f, 392f), vec4<f32>(-717f, -941f, -281f, -2022f), vec4<f32>(2652f, 301f, 1837f, -741f), vec4<f32>(-939f, 321f, 571f, 2092f), vec4<f32>(657f, -731f, 1258f, -1071f), vec4<f32>(339f, 1000f, 1014f, 272f), vec4<f32>(-135f, -821f, -1281f, 220f), vec4<f32>(492f, 160f, 430f, 231f), vec4<f32>(-1033f, -2681f, 1544f, 213f), vec4<f32>(-1109f, 490f, -1000f, -1415f), vec4<f32>(-339f, 339f, -171f, 1204f), vec4<f32>(-275f, -241f, -484f, -516f), vec4<f32>(1000f, -865f, -699f, 136f), vec4<f32>(1000f, 2582f, -524f, -208f), vec4<f32>(-1203f, 539f, 310f, -1000f), vec4<f32>(-549f, -1048f, -1046f, 1649f), vec4<f32>(1000f, 1232f, 161f, -1126f), vec4<f32>(-1000f, -609f, 583f, 262f));

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global3: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-317f, 2830f, -1273f), vec3<f32>(-695f, -805f, -213f), vec3<f32>(2023f, -961f, -1280f), vec3<f32>(913f, -540f, 1175f), vec3<f32>(944f, -1000f, 683f), vec3<f32>(1583f, -1103f, 654f), vec3<f32>(-985f, 1177f, 602f), vec3<f32>(-266f, -430f, 220f), vec3<f32>(-261f, 450f, 1445f), vec3<f32>(1000f, -416f, -265f), vec3<f32>(-367f, 751f, 243f), vec3<f32>(-1804f, -764f, -1447f), vec3<f32>(265f, -1431f, 1103f), vec3<f32>(-344f, -557f, -796f), vec3<f32>(-1000f, -124f, 1026f), vec3<f32>(-985f, -702f, -1121f), vec3<f32>(-136f, -2210f, 759f), vec3<f32>(1550f, -788f, -1000f), vec3<f32>(-1000f, -717f, 552f), vec3<f32>(339f, -135f, -438f), vec3<f32>(1019f, -883f, -1992f), vec3<f32>(717f, 545f, -1602f), vec3<f32>(275f, 3130f, 528f), vec3<f32>(776f, 382f, 231f), vec3<f32>(-375f, 481f, -541f), vec3<f32>(-1822f, -568f, -1616f));

var<private> global4: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(Struct_3(Struct_2(3812i, Struct_1(true, true, vec3<u32>(17862u, 13266u, 15570u), 1440f)), false), Struct_2(49587i, Struct_1(false, true, vec3<u32>(1u, 36765u, 86674u), -548f)), Struct_2(-4788i, Struct_1(true, false, vec3<u32>(4294967295u, 15361u, 29906u), -307f))), Struct_4(Struct_3(Struct_2(2147483647i, Struct_1(true, true, vec3<u32>(15081u, 11990u, 4725u), 153f)), false), Struct_2(40697i, Struct_1(false, false, vec3<u32>(42743u, 67761u, 1u), 581f)), Struct_2(1i, Struct_1(false, false, vec3<u32>(1687u, 13510u, 0u), -217f))), Struct_4(Struct_3(Struct_2(0i, Struct_1(false, false, vec3<u32>(52401u, 1u, 0u), -1307f)), false), Struct_2(1i, Struct_1(true, false, vec3<u32>(1u, 1u, 4294967295u), 1234f)), Struct_2(62091i, Struct_1(true, false, vec3<u32>(29376u, 37597u, 71399u), -542f))), Struct_4(Struct_3(Struct_2(124i, Struct_1(true, true, vec3<u32>(47944u, 30081u, 35530u), -1147f)), true), Struct_2(1i, Struct_1(false, true, vec3<u32>(13640u, 0u, 0u), 1638f)), Struct_2(1i, Struct_1(true, true, vec3<u32>(19735u, 51136u, 20597u), 959f))), Struct_4(Struct_3(Struct_2(1i, Struct_1(false, true, vec3<u32>(4294967295u, 0u, 50973u), -1183f)), false), Struct_2(-1i, Struct_1(true, true, vec3<u32>(1u, 0u, 14080u), -197f)), Struct_2(-94437i, Struct_1(false, true, vec3<u32>(9187u, 4294967295u, 42754u), -501f))), Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(true, false, vec3<u32>(0u, 4294967295u, 9710u), -510f)), false), Struct_2(1i, Struct_1(false, false, vec3<u32>(0u, 1u, 14640u), 321f)), Struct_2(1926i, Struct_1(false, false, vec3<u32>(4294967295u, 1u, 38000u), -1438f))), Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(false, true, vec3<u32>(4294967295u, 4294967295u, 13866u), -1119f)), false), Struct_2(-12694i, Struct_1(true, false, vec3<u32>(4294967295u, 4294967295u, 34281u), 1098f)), Struct_2(i32(-2147483648), Struct_1(false, false, vec3<u32>(4294967295u, 1u, 3178u), -1103f))), Struct_4(Struct_3(Struct_2(-387i, Struct_1(false, true, vec3<u32>(1u, 157298u, 1u), -944f)), true), Struct_2(1i, Struct_1(false, true, vec3<u32>(0u, 85856u, 3537u), -401f)), Struct_2(12498i, Struct_1(true, true, vec3<u32>(0u, 4294967295u, 1u), -123f))), Struct_4(Struct_3(Struct_2(15319i, Struct_1(false, false, vec3<u32>(2370u, 0u, 16126u), -985f)), true), Struct_2(71418i, Struct_1(true, false, vec3<u32>(4294967295u, 1u, 1u), 1189f)), Struct_2(0i, Struct_1(false, true, vec3<u32>(76565u, 42301u, 0u), -312f))), Struct_4(Struct_3(Struct_2(66408i, Struct_1(true, false, vec3<u32>(1u, 1u, 63410u), -587f)), true), Struct_2(-1i, Struct_1(false, false, vec3<u32>(0u, 0u, 1u), -1125f)), Struct_2(-36753i, Struct_1(false, false, vec3<u32>(15794u, 42410u, 4294967295u), -1705f))), Struct_4(Struct_3(Struct_2(-1i, Struct_1(true, true, vec3<u32>(0u, 1u, 4294967295u), -3067f)), true), Struct_2(-8595i, Struct_1(true, false, vec3<u32>(34486u, 8478u, 16014u), -1444f)), Struct_2(-72148i, Struct_1(false, false, vec3<u32>(49804u, 32839u, 87482u), -1535f))), Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(false, false, vec3<u32>(0u, 33128u, 8074u), 1033f)), true), Struct_2(17547i, Struct_1(true, true, vec3<u32>(12996u, 51417u, 1u), 1000f)), Struct_2(2147483647i, Struct_1(false, false, vec3<u32>(1u, 31402u, 9400u), -1366f))), Struct_4(Struct_3(Struct_2(0i, Struct_1(false, false, vec3<u32>(2596u, 100183u, 26818u), 1902f)), false), Struct_2(37804i, Struct_1(true, false, vec3<u32>(20913u, 0u, 89599u), -600f)), Struct_2(-21205i, Struct_1(true, true, vec3<u32>(20409u, 20571u, 0u), 1961f))), Struct_4(Struct_3(Struct_2(i32(-2147483648), Struct_1(true, false, vec3<u32>(0u, 46458u, 65654u), -1031f)), true), Struct_2(62099i, Struct_1(true, false, vec3<u32>(4294967295u, 16987u, 31367u), -1000f)), Struct_2(1i, Struct_1(true, false, vec3<u32>(0u, 0u, 69440u), -273f))), Struct_4(Struct_3(Struct_2(-1i, Struct_1(false, false, vec3<u32>(61398u, 20063u, 4304u), 1477f)), false), Struct_2(-19094i, Struct_1(false, false, vec3<u32>(1u, 1u, 78468u), -164f)), Struct_2(2147483647i, Struct_1(true, true, vec3<u32>(57439u, 42596u, 4294967295u), 421f))), Struct_4(Struct_3(Struct_2(-42142i, Struct_1(false, false, vec3<u32>(855u, 14787u, 4294967295u), 1560f)), false), Struct_2(-22924i, Struct_1(true, false, vec3<u32>(1u, 1u, 1u), -163f)), Struct_2(-18181i, Struct_1(true, false, vec3<u32>(20615u, 0u, 4294967295u), 1000f))), Struct_4(Struct_3(Struct_2(-21242i, Struct_1(false, true, vec3<u32>(4294967295u, 1u, 4294967295u), 696f)), false), Struct_2(-23008i, Struct_1(false, false, vec3<u32>(0u, 1u, 356u), -1139f)), Struct_2(-43162i, Struct_1(false, false, vec3<u32>(0u, 1u, 23842u), 973f))), Struct_4(Struct_3(Struct_2(-18629i, Struct_1(true, true, vec3<u32>(5414u, 4294967295u, 31272u), -877f)), false), Struct_2(25254i, Struct_1(true, true, vec3<u32>(4294967295u, 52621u, 112395u), -1000f)), Struct_2(15888i, Struct_1(true, true, vec3<u32>(1u, 17164u, 4294967295u), -135f))), Struct_4(Struct_3(Struct_2(-1i, Struct_1(true, true, vec3<u32>(49103u, 1u, 99843u), 410f)), true), Struct_2(40092i, Struct_1(false, false, vec3<u32>(1u, 0u, 1u), -690f)), Struct_2(-1301i, Struct_1(true, true, vec3<u32>(35204u, 0u, 1u), 1000f))), Struct_4(Struct_3(Struct_2(2147483647i, Struct_1(false, false, vec3<u32>(17951u, 0u, 81703u), -337f)), true), Struct_2(-1i, Struct_1(true, true, vec3<u32>(38802u, 0u, 5735u), -1666f)), Struct_2(-20533i, Struct_1(false, true, vec3<u32>(1u, 3300u, 0u), -448f))), Struct_4(Struct_3(Struct_2(-524i, Struct_1(false, false, vec3<u32>(0u, 4294967295u, 4294967295u), 2173f)), false), Struct_2(-23904i, Struct_1(true, true, vec3<u32>(2264u, 4294967295u, 48890u), -548f)), Struct_2(1i, Struct_1(true, false, vec3<u32>(1u, 92576u, 4294967295u), -103f))), Struct_4(Struct_3(Struct_2(27594i, Struct_1(false, false, vec3<u32>(2285u, 0u, 55519u), 1000f)), true), Struct_2(-1i, Struct_1(true, true, vec3<u32>(33821u, 29810u, 18037u), 118f)), Struct_2(i32(-2147483648), Struct_1(false, true, vec3<u32>(14143u, 16247u, 4044u), 3078f))), Struct_4(Struct_3(Struct_2(-1536i, Struct_1(false, false, vec3<u32>(1u, 0u, 13924u), -1000f)), false), Struct_2(-1i, Struct_1(true, true, vec3<u32>(1u, 45531u, 107250u), 738f)), Struct_2(-15949i, Struct_1(true, false, vec3<u32>(0u, 31381u, 1u), -772f))), Struct_4(Struct_3(Struct_2(22475i, Struct_1(true, false, vec3<u32>(0u, 9553u, 4294967295u), 665f)), false), Struct_2(0i, Struct_1(true, false, vec3<u32>(4294967295u, 5325u, 23876u), -493f)), Struct_2(0i, Struct_1(true, false, vec3<u32>(10864u, 0u, 31661u), 1000f))), Struct_4(Struct_3(Struct_2(47884i, Struct_1(false, false, vec3<u32>(21829u, 57123u, 0u), -1544f)), true), Struct_2(2147483647i, Struct_1(true, true, vec3<u32>(0u, 0u, 0u), 2396f)), Struct_2(1i, Struct_1(false, true, vec3<u32>(1u, 4294967295u, 0u), -531f))), Struct_4(Struct_3(Struct_2(0i, Struct_1(true, false, vec3<u32>(1u, 2157u, 20200u), 1000f)), true), Struct_2(0i, Struct_1(true, false, vec3<u32>(49664u, 11460u, 1u), 1405f)), Struct_2(1i, Struct_1(true, true, vec3<u32>(1u, 67384u, 49544u), 1340f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: bool) -> vec2<f32> {
    global4 = array<Struct_4, 26>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.b.d * -1634f) - _wgslsmith_f_op_f32(1000f + global1.x)))), global1.x);
    global0 = array<vec4<f32>, 32>();
    var var_1 = arg_0.a.a.b;
    global4 = array<Struct_4, 26>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), arg_0.b.b.d) * arg_2), 1418f);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    global2 = array<vec3<bool>, 10>();
    let var_0 = Struct_5(Struct_4(Struct_3(Struct_2(_wgslsmith_div_i32(-1i, arg_3.x), Struct_1(arg_2.b, arg_2.b, arg_2.c, global1.x)), !arg_2.a), Struct_2(arg_3.x | abs(arg_3.x), arg_2), Struct_2((i32(-1i) * -1i) & _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -42652i), Struct_1(arg_2.a, arg_2.a & arg_2.a, arg_2.c, -684f))), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(arg_0.x, 26u)] - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~4294967295u, 26u)])), ~vec3<u32>(14896u, arg_2.c.x, arg_0.x), Struct_1(arg_2.a, false, firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 92581u, 3276u), vec3<u32>(4294967295u, arg_2.c.x, 26701u))), -157f));
    var var_1 = i32(-1i) * -10718i;
    let var_2 = (arg_3.x << (min(~7906u, ~1u) % 32u)) < -848i;
    let var_3 = vec3<u32>(0u, ~4294967295u, 0u);
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_2.a.a.b.c.x, 32u)]);
    global3 = array<vec3<f32>, 26>();
    var var_1 = abs(u_input.b);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_4(Struct_3(Struct_2(u_input.d.x, Struct_1(false, true, vec3<u32>(arg_1.a.b.c.x, arg_1.a.b.c.x, 25110u), arg_1.a.b.d)), true), arg_1.a, arg_1.a), arg_1.a.a, -477f, arg_2.c.b.c.x < 102254u))))), var_0.zw);
    return Struct_1(!arg_1.a.b.b, any(vec4<bool>(_wgslsmith_f_op_f32(global1.x * global1.x) == _wgslsmith_f_op_f32(-arg_2.a.a.b.d), arg_1.a.b.a, ~u_input.d.x >= abs(23010i), true)), ~vec3<u32>(1u, func_3(~arg_2.b.b.c, var_0.x, Struct_1(true, true, arg_2.c.b.c, 907f), -vec3<i32>(arg_0, arg_1.a.a, arg_2.c.a)), u_input.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1099f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -1856f, arg_3.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.b.d))) - -572f)));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: f32) -> Struct_1 {
    global3 = array<vec3<f32>, 26>();
    var var_0 = _wgslsmith_sub_i32((-2147483647i >> (max(_wgslsmith_mod_u32(arg_1.d.c.x, 37350u), 1u) % 32u)) ^ -1i, -22340i);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(sign(arg_2)))) - arg_2))), -167f));
    var_0 = ~(~arg_1.a.c.a);
    global0 = array<vec4<f32>, 32>();
    return arg_1.a.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~min(~(~vec3<u32>(u_input.c, 92456u, u_input.a.x)), ~(~vec3<u32>(16795u, 7430u, u_input.a.x))));
    var var_1 = Struct_3(Struct_2(48904i, func_4(_wgslsmith_f_op_f32(-global1.x), Struct_5(Struct_4(Struct_3(Struct_2(u_input.d.x, Struct_1(true, true, vec3<u32>(63909u, 4294967295u, 3238u), global1.x)), false), Struct_2(u_input.d.x, Struct_1(false, false, vec3<u32>(u_input.b, 0u, u_input.b), 492f)), Struct_2(u_input.d.x, Struct_1(false, false, vec3<u32>(1u, var_0.x, u_input.c), global1.x))), vec3<f32>(global1.x, 263f, -866f), _wgslsmith_sub_vec3_u32(vec3<u32>(76410u, 4294967295u, 49519u), vec3<u32>(1u, u_input.b, 1u)), func_1(u_input.d.x, Struct_3(Struct_2(39980i, Struct_1(false, true, vec3<u32>(var_0.x, 30997u, 17024u), 309f)), false), Struct_4(Struct_3(Struct_2(-1i, Struct_1(false, false, vec3<u32>(0u, 1u, u_input.a.x), -543f)), true), Struct_2(u_input.d.x, Struct_1(false, false, vec3<u32>(59594u, 24034u, 1u), global1.x)), Struct_2(u_input.d.x, Struct_1(true, true, vec3<u32>(var_0.x, u_input.b, var_0.x), global1.x))), Struct_1(false, true, vec3<u32>(var_0.x, var_0.x, 0u), 1157f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * _wgslsmith_f_op_f32(-global1.x)))), true);
    var_1 = Struct_3(var_1.a, var_1.b);
    var var_2 = _wgslsmith_sub_i32(-firstLeadingBit(var_1.a.a), max(0i, -24626i));
    var var_3 = vec3<u32>(var_1.a.b.c.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(50266u, 22507u, var_1.a.b.c.x, 38669u)), vec4<u32>(var_1.a.b.c.x, 1u, u_input.c, 4294967295u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 51308u, u_input.a.x, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.b, var_0.x, u_input.c), vec4<u32>(u_input.a.x, 4294967295u, 29576u, var_1.a.b.c.x)))), 22918u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_1.a.b.c.x, 36274u, 13603u), ~vec4<u32>(4294967295u, var_1.a.b.c.x, 626u, var_1.a.b.c.x))), 11070u);
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_add_vec4_i32(u_input.d << (vec4<u32>(1967u, var_1.a.b.c.x, 4294967295u, 765u) % vec4<u32>(32u)), reverseBits(u_input.d)) << (select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, var_3.x, 20746u), vec4<u32>(var_0.x, var_3.x, var_1.a.b.c.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 67293u, 25861u, 1u), vec4<u32>(4294967295u, u_input.c, 19388u, 1u), vec4<u32>(70598u, var_1.a.b.c.x, var_1.a.b.c.x, 21711u)), vec4<bool>(var_1.b, var_1.a.b.a, true, false)) % vec4<u32>(32u))), -u_input.d.x);
}

