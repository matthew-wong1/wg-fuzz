struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 13> = array<i32, 13>(-1i, 1931i, 1i, 17011i, i32(-2147483648), 13824i, 0i, 2147483647i, 1i, 0i, 0i, i32(-2147483648), 2147483647i);

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(4294967295u, -230f, vec2<f32>(-302f, 1000f), vec3<f32>(154f, 1000f, -1803f)), 53645u, Struct_1(208u, 314f, vec2<f32>(-997f, -1000f), vec3<f32>(464f, -667f, -1040f)), 0u), Struct_2(Struct_1(4294967295u, -837f, vec2<f32>(1670f, -1257f), vec3<f32>(1000f, -1556f, -1106f)), 5113u, Struct_1(4294967295u, 306f, vec2<f32>(-1427f, 829f), vec3<f32>(426f, 531f, 1776f)), 8178u), Struct_2(Struct_1(4294967295u, -1192f, vec2<f32>(1180f, -815f), vec3<f32>(250f, -299f, -821f)), 1u, Struct_1(42697u, -1000f, vec2<f32>(1063f, 688f), vec3<f32>(-120f, -1000f, 620f)), 1u), Struct_2(Struct_1(1u, -794f, vec2<f32>(394f, -1000f), vec3<f32>(-1124f, -1369f, -812f)), 1u, Struct_1(10267u, 176f, vec2<f32>(-1944f, 1351f), vec3<f32>(288f, 1739f, 1578f)), 19744u), Struct_2(Struct_1(38656u, -915f, vec2<f32>(264f, -1364f), vec3<f32>(1175f, 1000f, -122f)), 22749u, Struct_1(792u, 279f, vec2<f32>(521f, -646f), vec3<f32>(536f, -342f, -1000f)), 0u), Struct_2(Struct_1(11164u, -729f, vec2<f32>(-1051f, -777f), vec3<f32>(-407f, -973f, 1000f)), 2769u, Struct_1(4294967295u, -271f, vec2<f32>(294f, -1241f), vec3<f32>(592f, -371f, 900f)), 43860u), Struct_2(Struct_1(0u, 1194f, vec2<f32>(-1057f, -262f), vec3<f32>(971f, 390f, -247f)), 50136u, Struct_1(4294967295u, -1714f, vec2<f32>(-796f, -2160f), vec3<f32>(-331f, 191f, 1776f)), 28387u), Struct_2(Struct_1(0u, 124f, vec2<f32>(2525f, 570f), vec3<f32>(174f, 1180f, -987f)), 4294967295u, Struct_1(1u, -576f, vec2<f32>(-1128f, 1664f), vec3<f32>(490f, 446f, 1783f)), 53140u), Struct_2(Struct_1(56456u, 2597f, vec2<f32>(2487f, 1265f), vec3<f32>(356f, -529f, -1551f)), 1u, Struct_1(0u, -371f, vec2<f32>(-690f, 1960f), vec3<f32>(1033f, 631f, -1209f)), 74252u), Struct_2(Struct_1(36470u, 477f, vec2<f32>(-841f, 892f), vec3<f32>(-926f, -1015f, 143f)), 12729u, Struct_1(4294967295u, 1000f, vec2<f32>(-246f, 1000f), vec3<f32>(-524f, 1974f, 2447f)), 0u), Struct_2(Struct_1(0u, -165f, vec2<f32>(-898f, -843f), vec3<f32>(-1000f, 1304f, -696f)), 15484u, Struct_1(81624u, 171f, vec2<f32>(2336f, 454f), vec3<f32>(-1197f, 171f, -136f)), 1u), Struct_2(Struct_1(0u, -473f, vec2<f32>(1340f, -533f), vec3<f32>(-373f, -287f, -540f)), 4294967295u, Struct_1(99534u, 181f, vec2<f32>(936f, 578f), vec3<f32>(780f, -894f, 1765f)), 67874u), Struct_2(Struct_1(4294967295u, -552f, vec2<f32>(140f, 112f), vec3<f32>(-1000f, -797f, -300f)), 1u, Struct_1(4294967295u, -1704f, vec2<f32>(-1134f, -634f), vec3<f32>(542f, -1480f, -547f)), 1u), Struct_2(Struct_1(19072u, -104f, vec2<f32>(1000f, -275f), vec3<f32>(-1155f, -248f, 1862f)), 0u, Struct_1(4294967295u, -1113f, vec2<f32>(2748f, -104f), vec3<f32>(-1700f, 502f, -1762f)), 722u), Struct_2(Struct_1(33159u, 238f, vec2<f32>(-383f, 739f), vec3<f32>(1010f, -859f, 2345f)), 1u, Struct_1(0u, 398f, vec2<f32>(594f, 410f), vec3<f32>(1395f, 174f, -231f)), 0u), Struct_2(Struct_1(5588u, 341f, vec2<f32>(2805f, -360f), vec3<f32>(-1000f, 886f, 2113f)), 4294967295u, Struct_1(4960u, 1349f, vec2<f32>(1048f, -450f), vec3<f32>(1007f, 112f, 983f)), 1u), Struct_2(Struct_1(1u, 100f, vec2<f32>(593f, 934f), vec3<f32>(427f, -1128f, -1280f)), 21599u, Struct_1(37706u, 1349f, vec2<f32>(-1184f, -1649f), vec3<f32>(1000f, 305f, -1000f)), 1u), Struct_2(Struct_1(35434u, -820f, vec2<f32>(411f, -1000f), vec3<f32>(-1110f, -973f, -1392f)), 22325u, Struct_1(1u, -376f, vec2<f32>(-1000f, 1203f), vec3<f32>(-267f, 421f, 1763f)), 1u), Struct_2(Struct_1(2558u, -163f, vec2<f32>(1086f, -409f), vec3<f32>(-686f, -605f, 1766f)), 70969u, Struct_1(30495u, -803f, vec2<f32>(865f, -1280f), vec3<f32>(-1986f, -1076f, 1167f)), 4294967295u), Struct_2(Struct_1(4294967295u, -136f, vec2<f32>(-159f, -171f), vec3<f32>(-1044f, -1000f, -584f)), 1u, Struct_1(1u, -1368f, vec2<f32>(-622f, 516f), vec3<f32>(2644f, 1652f, -1326f)), 50312u), Struct_2(Struct_1(0u, -1861f, vec2<f32>(-502f, -309f), vec3<f32>(-440f, -1455f, -2222f)), 41224u, Struct_1(0u, 592f, vec2<f32>(1517f, 551f), vec3<f32>(1144f, 308f, 610f)), 0u), Struct_2(Struct_1(0u, 2007f, vec2<f32>(2784f, -1443f), vec3<f32>(-2016f, 893f, 1690f)), 2770u, Struct_1(0u, 1440f, vec2<f32>(108f, -351f), vec3<f32>(-442f, -1195f, -555f)), 57474u), Struct_2(Struct_1(4294967295u, 944f, vec2<f32>(1000f, -864f), vec3<f32>(904f, -681f, 949f)), 69618u, Struct_1(80630u, 1000f, vec2<f32>(-618f, -1000f), vec3<f32>(-224f, -1101f, 763f)), 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = ~(arg_2.a.a << (_wgslsmith_add_u32(7784u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(105746u, arg_0.c.a), vec2<u32>(arg_2.d, 45168u)), ~arg_2.c.a)) % 32u));
    var var_1 = arg_2.b;
    var var_2 = arg_2.a.d.x;
    global2 = array<Struct_2, 23>();
    global0 = -reverseBits(12782i);
    return false;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_0, 1i), u_input.b.wxx), arg_0, _wgslsmith_sub_i32(i32(-1i) * -1i, -22050i)), select(~u_input.b.xww, ~vec3<i32>(arg_0, -42777i, arg_0), !arg_2) & u_input.b.xzy), ~_wgslsmith_mult_vec2_u32(vec2<u32>(34375u, 1u), max(firstTrailingBit(vec2<u32>(12149u, arg_3.b)), max(vec2<u32>(39802u, arg_3.b), vec2<u32>(26201u, arg_3.d)))), Struct_2(Struct_1(arg_3.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.d.x)), arg_3.c.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a.d))), 4294967295u, arg_3.a, 2850u), Struct_3(global2[_wgslsmith_index_u32(~arg_3.d, 23u)], abs(arg_3.d), vec4<i32>(_wgslsmith_mult_i32(0i, arg_1.x), arg_1.x, -13474i, ~arg_1.x), true, arg_3.a.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) << (vec2<u32>(2801u, 29971u ^ arg_3.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.c.a, arg_3.c.a), vec2<u32>(arg_3.d, 0u)), vec2<u32>(1u, 24844u) << ((vec2<u32>(1u, 23364u) & vec2<u32>(arg_3.d, 1223u)) % vec2<u32>(32u)), ~select(vec2<u32>(14647u, 1u), vec2<u32>(arg_3.a.a, 0u), vec2<bool>(true, true)))), 23u)]);
    global2 = array<Struct_2, 23>();
    var var_1 = var_0.c;
    var var_2 = func_2(Struct_2(var_0.c.a, var_0.b.x, var_1.c, 34891u), true, var_0.e);
    global2 = array<Struct_2, 23>();
    return !select(vec2<bool>(arg_2, true), select(!vec2<bool>(arg_2, false), vec2<bool>(arg_2 && true, false), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), var_0.d.d)), vec2<bool>(true, true));
}

fn func_1() -> u32 {
    var var_0 = select(select(!vec2<bool>(func_2(Struct_2(Struct_1(0u, 1685f, vec2<f32>(108f, 1017f), vec3<f32>(-230f, 128f, -2390f)), 4294967295u, Struct_1(64797u, 804f, vec2<f32>(-611f, -242f), vec3<f32>(-1336f, 2142f, 1372f)), 1u), true, Struct_2(Struct_1(25572u, 503f, vec2<f32>(-960f, 1707f), vec3<f32>(-808f, -2113f, 741f)), 0u, Struct_1(92538u, -1125f, vec2<f32>(1939f, -2224f), vec3<f32>(-978f, 1581f, -152f)), 48881u)), false), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), func_3(~global1[_wgslsmith_index_u32(4294967295u, 13u)], -vec2<i32>(global1[_wgslsmith_index_u32(22866u, 13u)], -2147483647i), true, Struct_2(Struct_1(4294967295u, 979f, vec2<f32>(-340f, -1117f), vec3<f32>(-431f, 1000f, -1608f)), 10585u, Struct_1(29361u, 471f, vec2<f32>(-650f, -1000f), vec3<f32>(-113f, -714f, -208f)), 24672u)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true), vec2<bool>(true, true || (select(true, true, true) & all(vec4<bool>(false, false, true, false)))), vec2<bool>(true, !(!func_2(global2[_wgslsmith_index_u32(1u, 23u)], false, global2[_wgslsmith_index_u32(59669u, 23u)]))));
    global0 = min(_wgslsmith_add_i32(~(-5145i), -_wgslsmith_mult_i32(~50323i, -u_input.b.x)), -2147483647i);
    let var_1 = Struct_5(Struct_3(global2[_wgslsmith_index_u32(~(select(0u, 12164u, var_0.x) | 38633u), 23u)], ~(1u ^ _wgslsmith_clamp_u32(23171u, 40438u, 1u)), u_input.b, !func_2(Struct_2(Struct_1(4294967295u, -152f, vec2<f32>(-988f, -112f), vec3<f32>(-237f, -1613f, -555f)), 94320u, Struct_1(0u, 1311f, vec2<f32>(1075f, -190f), vec3<f32>(-470f, 114f, -1386f)), 1u), !var_0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(37710u, 4294967295u, 4294967295u)), 23u)]), abs(~63990u)), Struct_1(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(9507u, 7951u, 1u, 0u), vec4<u32>(32468u, 1022u, 3335u, 1u))), 342f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1058f) - vec2<f32>(436f, 1049f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1033f, -295f) - _wgslsmith_f_op_f32(f32(-1f) * -1054f)), 668f, _wgslsmith_f_op_f32(f32(-1f) * -270f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-572f, _wgslsmith_f_op_f32(ceil(1153f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(step(1000f, var_1.b.b))), -1022f)));
    var var_3 = false;
    return _wgslsmith_mod_u32(~firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(100744u, 0u), 1u, 1u)), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a, var_1.b.a), vec2<u32>(0u, 55446u)), (4294967295u << (var_1.b.a % 32u)) ^ ~var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_1(), ~max(~1u, 49414u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, -121f)) * vec2<f32>(1400f, 469f)))))));
}

