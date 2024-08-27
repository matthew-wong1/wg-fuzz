struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, vec4<f32>(-736f, -520f, 1083f, 1144f), vec4<u32>(1u, 3748u, 0u, 0u), true, vec3<bool>(true, false, false));

var<private> global1: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_3(Struct_2(15404i, vec4<f32>(903f, -537f, -833f, 601f), vec4<u32>(38575u, 6395u, 30951u, 4335u), true, vec3<bool>(false, true, false)), i32(-2147483648), false, -1i, false), vec2<i32>(-16967i, i32(-2147483648)), true, Struct_2(-4652i, vec4<f32>(-1382f, 343f, 2065f, -1289f), vec4<u32>(1u, 50910u, 5688u, 1u), true, vec3<bool>(false, true, false))), Struct_4(Struct_3(Struct_2(0i, vec4<f32>(590f, 168f, 620f, -480f), vec4<u32>(5134u, 20030u, 4561u, 37205u), false, vec3<bool>(true, true, false)), 2511i, false, 42859i, false), vec2<i32>(i32(-2147483648), -1i), true, Struct_2(-1i, vec4<f32>(-510f, 584f, 224f, 178f), vec4<u32>(4294967295u, 0u, 0u, 1u), false, vec3<bool>(false, false, false))), Struct_4(Struct_3(Struct_2(1i, vec4<f32>(586f, 308f, -810f, -1000f), vec4<u32>(0u, 0u, 110123u, 41347u), false, vec3<bool>(false, false, true)), 1i, false, -28155i, true), vec2<i32>(0i, i32(-2147483648)), false, Struct_2(-37936i, vec4<f32>(-501f, 851f, -3260f, 512f), vec4<u32>(4294967295u, 4294967295u, 34946u, 14952u), true, vec3<bool>(true, true, true))), Struct_4(Struct_3(Struct_2(-39915i, vec4<f32>(-932f, -158f, -913f, 457f), vec4<u32>(0u, 1u, 0u, 17055u), false, vec3<bool>(true, false, false)), 34776i, true, 2147483647i, false), vec2<i32>(20692i, i32(-2147483648)), true, Struct_2(2147483647i, vec4<f32>(342f, -1481f, -1000f, -1800f), vec4<u32>(19544u, 79095u, 1u, 4294967295u), true, vec3<bool>(false, true, true))), Struct_4(Struct_3(Struct_2(-17788i, vec4<f32>(570f, 215f, 1016f, 1847f), vec4<u32>(53682u, 30575u, 0u, 4294967295u), false, vec3<bool>(false, true, true)), 0i, true, -22876i, true), vec2<i32>(35923i, -1i), false, Struct_2(2147483647i, vec4<f32>(2324f, -1381f, -134f, 1260f), vec4<u32>(0u, 0u, 4294967295u, 0u), false, vec3<bool>(true, false, true))), Struct_4(Struct_3(Struct_2(-45566i, vec4<f32>(-1000f, 437f, 877f, 245f), vec4<u32>(4845u, 4294967295u, 44711u, 22209u), true, vec3<bool>(false, true, false)), 23355i, true, 0i, false), vec2<i32>(1i, i32(-2147483648)), true, Struct_2(-1i, vec4<f32>(361f, -898f, 745f, -1071f), vec4<u32>(4294967295u, 0u, 1u, 23464u), false, vec3<bool>(true, false, false))), Struct_4(Struct_3(Struct_2(1i, vec4<f32>(-1215f, 261f, 1451f, 337f), vec4<u32>(0u, 1446u, 0u, 4294967295u), false, vec3<bool>(false, false, true)), 2147483647i, false, -3185i, false), vec2<i32>(0i, 9583i), true, Struct_2(-13172i, vec4<f32>(218f, 1209f, -1616f, 776f), vec4<u32>(73365u, 48177u, 1u, 40704u), false, vec3<bool>(true, true, true))), Struct_4(Struct_3(Struct_2(-25126i, vec4<f32>(1278f, -288f, -381f, -901f), vec4<u32>(23353u, 4294967295u, 0u, 42606u), true, vec3<bool>(true, false, true)), -2575i, false, 47651i, true), vec2<i32>(6012i, 10604i), false, Struct_2(-37783i, vec4<f32>(605f, 1448f, -1460f, 1000f), vec4<u32>(1890u, 0u, 4294967295u, 1u), true, vec3<bool>(true, true, true))), Struct_4(Struct_3(Struct_2(0i, vec4<f32>(-320f, -779f, 449f, -774f), vec4<u32>(36209u, 1u, 4294967295u, 1u), true, vec3<bool>(true, true, false)), -1i, true, -2334i, false), vec2<i32>(-3490i, 40236i), false, Struct_2(-99826i, vec4<f32>(-1000f, -412f, -1690f, -1000f), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), false, vec3<bool>(true, true, false))), Struct_4(Struct_3(Struct_2(2147483647i, vec4<f32>(-925f, 656f, 953f, 465f), vec4<u32>(0u, 42015u, 25931u, 1u), false, vec3<bool>(false, false, true)), -1835i, true, -62037i, false), vec2<i32>(-1i, -4560i), true, Struct_2(0i, vec4<f32>(-1000f, -126f, 855f, -869f), vec4<u32>(25907u, 0u, 0u, 1u), false, vec3<bool>(true, true, false))), Struct_4(Struct_3(Struct_2(i32(-2147483648), vec4<f32>(408f, -1652f, 143f, -737f), vec4<u32>(0u, 30161u, 4294967295u, 4294967295u), false, vec3<bool>(true, true, false)), 18432i, true, -33810i, false), vec2<i32>(1i, i32(-2147483648)), true, Struct_2(-1i, vec4<f32>(521f, 1740f, 215f, 283f), vec4<u32>(6109u, 9700u, 72637u, 1u), true, vec3<bool>(true, false, false))), Struct_4(Struct_3(Struct_2(-10825i, vec4<f32>(2166f, 981f, 1000f, 219f), vec4<u32>(33276u, 12875u, 75828u, 4294967295u), true, vec3<bool>(false, false, false)), -1i, false, i32(-2147483648), true), vec2<i32>(2147483647i, 0i), true, Struct_2(1i, vec4<f32>(885f, 410f, 148f, 793f), vec4<u32>(4294967295u, 0u, 163999u, 0u), true, vec3<bool>(false, false, true))), Struct_4(Struct_3(Struct_2(-1i, vec4<f32>(-531f, -992f, 1071f, 1025f), vec4<u32>(42236u, 0u, 0u, 1u), true, vec3<bool>(false, false, true)), -28164i, true, -30921i, false), vec2<i32>(9214i, -44687i), true, Struct_2(0i, vec4<f32>(1662f, -159f, -299f, -698f), vec4<u32>(65851u, 11998u, 1863u, 0u), true, vec3<bool>(false, false, true))), Struct_4(Struct_3(Struct_2(45126i, vec4<f32>(-825f, 623f, -144f, -1355f), vec4<u32>(85414u, 1u, 29337u, 22682u), false, vec3<bool>(false, false, true)), -4426i, true, 54361i, true), vec2<i32>(-81669i, -1i), false, Struct_2(1i, vec4<f32>(1060f, 807f, -708f, 1013f), vec4<u32>(48021u, 36504u, 79669u, 21433u), false, vec3<bool>(false, true, true))), Struct_4(Struct_3(Struct_2(6808i, vec4<f32>(-603f, 508f, -1000f, 557f), vec4<u32>(1u, 1u, 4294967295u, 1u), true, vec3<bool>(true, false, false)), -1i, false, 0i, false), vec2<i32>(-38825i, 2147483647i), true, Struct_2(-1i, vec4<f32>(1000f, 1553f, 153f, 888f), vec4<u32>(1787u, 1u, 1u, 17870u), true, vec3<bool>(true, false, true))), Struct_4(Struct_3(Struct_2(14103i, vec4<f32>(187f, 1000f, 592f, -1000f), vec4<u32>(19920u, 0u, 18831u, 4294967295u), false, vec3<bool>(true, true, true)), -8053i, false, -43159i, true), vec2<i32>(1i, 0i), true, Struct_2(-1i, vec4<f32>(-481f, -1000f, 2630f, -1000f), vec4<u32>(0u, 4294967295u, 0u, 110463u), true, vec3<bool>(true, true, false))), Struct_4(Struct_3(Struct_2(2147483647i, vec4<f32>(1414f, 1318f, 1248f, -1379f), vec4<u32>(7348u, 1u, 68983u, 44625u), true, vec3<bool>(false, true, true)), 1i, false, 1i, false), vec2<i32>(-75566i, 2147483647i), false, Struct_2(-57514i, vec4<f32>(1363f, 504f, -1200f, -1052f), vec4<u32>(4294967295u, 1u, 55681u, 15310u), false, vec3<bool>(true, true, false))), Struct_4(Struct_3(Struct_2(-44732i, vec4<f32>(272f, -451f, 1862f, -101f), vec4<u32>(4294967295u, 12107u, 4294967295u, 55141u), true, vec3<bool>(false, false, true)), -22560i, true, 1i, true), vec2<i32>(32576i, -39658i), true, Struct_2(-63141i, vec4<f32>(448f, 2115f, 2145f, 137f), vec4<u32>(1u, 0u, 31813u, 85050u), true, vec3<bool>(false, true, true))), Struct_4(Struct_3(Struct_2(-60768i, vec4<f32>(492f, -479f, -535f, -1688f), vec4<u32>(44810u, 7905u, 113721u, 20689u), false, vec3<bool>(true, false, true)), 35464i, true, 2147483647i, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, Struct_2(2147483647i, vec4<f32>(-182f, -1000f, 108f, 2600f), vec4<u32>(1u, 4294967295u, 1u, 0u), false, vec3<bool>(true, false, false))), Struct_4(Struct_3(Struct_2(34521i, vec4<f32>(246f, -1000f, -916f, -1925f), vec4<u32>(39821u, 4294967295u, 8201u, 1u), true, vec3<bool>(false, true, false)), 2730i, false, 45793i, false), vec2<i32>(4959i, -51828i), false, Struct_2(-1i, vec4<f32>(-1077f, 102f, -1153f, -608f), vec4<u32>(40757u, 0u, 0u, 4294967295u), false, vec3<bool>(false, true, true))), Struct_4(Struct_3(Struct_2(-1i, vec4<f32>(-428f, 474f, -563f, -189f), vec4<u32>(4294967295u, 0u, 26378u, 4294967295u), false, vec3<bool>(false, true, false)), -22528i, true, i32(-2147483648), false), vec2<i32>(-1i, -40793i), false, Struct_2(-1i, vec4<f32>(1055f, -363f, -1842f, -411f), vec4<u32>(1u, 47179u, 1u, 37u), true, vec3<bool>(true, true, false))), Struct_4(Struct_3(Struct_2(-8354i, vec4<f32>(-1000f, -612f, -395f, 352f), vec4<u32>(0u, 4294967295u, 0u, 14111u), true, vec3<bool>(true, false, true)), 65027i, false, 1i, true), vec2<i32>(i32(-2147483648), -34649i), true, Struct_2(-30068i, vec4<f32>(-176f, 514f, -1182f, 880f), vec4<u32>(1u, 1u, 80344u, 0u), false, vec3<bool>(false, false, true))), Struct_4(Struct_3(Struct_2(1i, vec4<f32>(830f, -252f, -1576f, 762f), vec4<u32>(32426u, 15056u, 4294967295u, 1u), false, vec3<bool>(false, true, true)), -2855i, true, 2147483647i, false), vec2<i32>(0i, 1i), true, Struct_2(2147483647i, vec4<f32>(-729f, 955f, 109f, 1497f), vec4<u32>(0u, 4294967295u, 42514u, 28418u), true, vec3<bool>(true, true, false))), Struct_4(Struct_3(Struct_2(5204i, vec4<f32>(844f, 918f, 1625f, 180f), vec4<u32>(16409u, 89778u, 4294967295u, 0u), true, vec3<bool>(false, false, false)), -1i, true, 29058i, false), vec2<i32>(i32(-2147483648), 19977i), true, Struct_2(-22093i, vec4<f32>(-412f, -216f, 410f, -990f), vec4<u32>(4294967295u, 0u, 100704u, 0u), true, vec3<bool>(false, false, true))), Struct_4(Struct_3(Struct_2(i32(-2147483648), vec4<f32>(665f, 100f, -137f, -695f), vec4<u32>(16593u, 10079u, 23855u, 7688u), true, vec3<bool>(false, true, true)), i32(-2147483648), true, 2147483647i, false), vec2<i32>(54463i, -10170i), true, Struct_2(2147483647i, vec4<f32>(1275f, 1245f, -1000f, 1536f), vec4<u32>(4294967295u, 5593u, 35528u, 63355u), false, vec3<bool>(true, false, false))));

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-441f, -355f, -299f, -233f), vec4<f32>(627f, 353f, 1000f, -1254f), vec4<f32>(166f, -700f, -292f, 906f), vec4<f32>(-742f, 1117f, -1356f, 1000f), vec4<f32>(443f, 299f, 263f, 2099f), vec4<f32>(263f, -612f, -1198f, -187f), vec4<f32>(-1183f, 302f, 836f, 973f), vec4<f32>(776f, 1000f, -431f, -1349f), vec4<f32>(185f, -660f, 538f, 361f), vec4<f32>(1935f, -974f, -1981f, 1841f), vec4<f32>(-326f, 416f, 1966f, -320f), vec4<f32>(-599f, 307f, 276f, 898f), vec4<f32>(1000f, -734f, -263f, -1222f), vec4<f32>(1000f, -815f, -500f, 263f), vec4<f32>(477f, -1769f, -835f, -625f), vec4<f32>(-1776f, -1004f, 1038f, -898f), vec4<f32>(1000f, -949f, -404f, -1017f), vec4<f32>(1700f, 310f, 1364f, -410f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -1589f))));
    global2 = arg_0.a;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.xw) - arg_0.a.b.wy);
    let var_1 = Struct_3(Struct_2(-(~(-42041i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), var_0.x, _wgslsmith_f_op_f32(global2.b.x - 1447f), global2.b.x), global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<u32>(1u, ~9243u, firstTrailingBit(_wgslsmith_add_u32(arg_0.a.c.x, global2.c.x)), u_input.a), ((u_input.a >= 1u) && false) && global2.d, !select(vec3<bool>(global2.e.x, global0.e.x, global0.d), !arg_0.a.e, vec3<bool>(global0.e.x, true, global2.e.x))), _wgslsmith_add_i32(select(global2.a, i32(-1i) * -global0.a, all(vec4<bool>(false, false, global2.d, global0.e.x))), arg_0.a.a), all(vec2<bool>(arg_0.e, select(!global2.d, true, true))), _wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(18223i, -25436i, global0.a, global2.a))), vec4<i32>(-1i) * -abs(vec4<i32>(global0.a, -11723i, global2.a, 1i))), min(global0.c.x >> (~4294967295u % 32u), ~arg_0.a.c.x) != firstTrailingBit(~(~1u)));
    let var_2 = Struct_5(vec3<u32>(~1u, 4294967295u, ~0u) | abs(firstLeadingBit(max(var_1.a.c.zyw, vec3<u32>(var_1.a.c.x, u_input.a, 1u)))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.b.wz)), var_1.a.b.zxz), -1109f, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1962f, 953f) - global0.b.zz))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = select(global2.e, vec3<bool>(all(!(!vec4<bool>(global2.d, false, global0.e.x, global0.d))), global2.d, min(firstTrailingBit(global2.c.x), 1u) == global2.c.x), true);
    global2 = Struct_2(global2.a | global2.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global2.b), vec4<f32>(1039f, _wgslsmith_f_op_f32(global2.b.x + global0.b.x), _wgslsmith_f_op_f32(global2.b.x + -261f), -1000f))), firstLeadingBit(vec4<u32>(countOneBits(15282u), global0.c.x, ~_wgslsmith_clamp_u32(43329u, global2.c.x, 59064u), ~(~global0.c.x))), global0.d, vec3<bool>(!any(select(vec4<bool>(true, true, arg_0.x, var_0.x), vec4<bool>(true, true, global0.d, global2.e.x), vec4<bool>(var_0.x, false, global2.d, var_0.x))), any(select(!arg_0, arg_0, select(vec2<bool>(global0.e.x, false), global0.e.xx, true))), var_0.x));
    let var_1 = Struct_5(global0.c.wwy, Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(-3708i, vec4<f32>(163f, 903f, -444f, 1345f), vec4<u32>(9925u, 1u, 1u, global0.c.x), false, vec3<bool>(true, true, var_0.x)), _wgslsmith_div_i32(global0.a, global2.a), false, countOneBits(-1i), global2.a > global2.a))), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-637f - global2.b.x), 199f)), global0.b.x, min(global2.a, global0.a), 910f);
    global3 = array<vec4<f32>, 18>();
    var var_2 = var_1.b;
    return global0.b;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> vec3<i32> {
    let var_0 = ~arg_2.a.a.c;
    global0 = Struct_2(select(countOneBits(select(select(arg_2.d.a, global2.a, true), arg_2.d.a >> (u_input.a % 32u), false)), -1891i ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, global0.a, -37730i), vec3<i32>(arg_2.b.x, -2147483647i, 14339i)), !(arg_2.a.e && arg_2.a.e) | any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2(select(vec2<bool>(false, arg_2.a.c), global2.e.yz, arg_2.d.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(413f, arg_1.b.x, global2.b.x, 666f))))))), vec4<u32>(var_0.x, abs(~_wgslsmith_clamp_u32(42888u, global2.c.x, 0u)), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.c.x, global0.c.x, var_0.x), arg_2.a.a.c.xxx), ~72275u), ~(global0.c.x & 40825u)), 40747u), arg_2.d.e.x, arg_2.a.a.e);
    var var_1 = ~vec4<i32>(-global0.a, -2147483647i, ~_wgslsmith_mult_i32(global2.a, -31239i), global2.a ^ -global2.a) ^ select(max(~(~vec4<i32>(arg_3, -2147483647i, -2147483647i, 1i)), firstLeadingBit(select(vec4<i32>(global0.a, 56534i, arg_2.d.a, global0.a), vec4<i32>(arg_2.d.a, -17645i, 26885i, arg_2.a.a.a), vec4<bool>(global2.d, true, arg_2.d.d, false)))), -_wgslsmith_mod_vec4_i32(-vec4<i32>(826i, -24142i, -2147483647i, 1i), vec4<i32>(global0.a, global0.a, -33180i, 1i)), arg_2.a.c);
    global1 = array<Struct_4, 25>();
    global1 = array<Struct_4, 25>();
    return firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global2.a), var_1.xw), vec2<i32>(var_1.x, -35956i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = _wgslsmith_add_vec3_i32(~((-vec3<i32>(55303i, -2147483647i, -2147483647i) ^ (vec3<i32>(0i, 9008i, global0.a) << (vec3<u32>(u_input.a, 0u, 0u) % vec3<u32>(32u)))) ^ func_1(_wgslsmith_f_op_f32(776f + -186f), Struct_1(var_0.xx, global0.b.yxx), global1[_wgslsmith_index_u32(global0.c.x, 25u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, 28549i, -11074i, global0.a), vec4<i32>(global2.a, global2.a, global2.a, global2.a)))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(global0.a, global0.a), 1i), -1i, global2.a), -(_wgslsmith_div_vec3_i32(vec3<i32>(-1907i, -1i, -2147483647i), vec3<i32>(global2.a, global2.a, global0.a)) << (vec3<u32>(global0.c.x, 17691u, 0u) % vec3<u32>(32u)))));
    var var_2 = global2.b.yxw;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, 255f))))), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) * _wgslsmith_f_op_f32(select(var_0.x, global2.b.x, global2.d))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b.wwz - vec3<f32>(var_0.x, -345f, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.b.zzx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.xzw + global2.b.wwy))))), false));
    let var_4 = Struct_2(countOneBits(-39355i), _wgslsmith_f_op_vec4_f32(trunc(global0.b)), vec4<u32>(select(global2.c.x, _wgslsmith_dot_vec2_u32(global0.c.xw, vec2<u32>(u_input.a, u_input.a)), true), _wgslsmith_dot_vec3_u32(~global0.c.wyx, select(global0.c.zzy, vec3<u32>(0u, u_input.a, 23336u), vec3<bool>(global2.d, global0.d, global2.e.x))), min(0u, u_input.a), ~max(24976u, 26313u)) >> (global0.c % vec4<u32>(32u)), all(select(vec3<bool>(false, global0.d, all(global0.e.zy)), vec3<bool>(true, true, global2.d && false), !vec3<bool>(true, false, global2.d))), global0.e);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(firstTrailingBit(abs(_wgslsmith_sub_i32(var_1.x, global0.a))), _wgslsmith_mod_i32(-(~(-42063i)), ~0i)), -32i, firstTrailingBit(reverseBits(vec4<i32>(0i, -global0.a, ~(-17276i), 2147483647i))), abs(abs(firstTrailingBit(select(vec3<u32>(global0.c.x, 4294967295u, var_4.c.x), vec3<u32>(u_input.a, global0.c.x, 4294967295u), vec3<bool>(global2.e.x, var_5.d, false))))), _wgslsmith_f_op_vec4_f32(func_2(select(select(global0.e.yx, select(vec2<bool>(true, true), global0.e.xz, var_4.e.yy), var_4.e.xy), select(var_4.e.yx, !vec2<bool>(true, var_4.e.x), global2.c.x < 34089u), select(!global0.e.zy, !var_5.e.xy, var_5.a < var_4.a)))).x);
}

