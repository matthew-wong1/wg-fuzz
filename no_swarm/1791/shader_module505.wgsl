struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec3<f32>(2055f, -2545f, -489f), vec3<u32>(1u, 10701u, 0u), vec3<u32>(45376u, 1u, 64449u), -480f), Struct_1(vec3<f32>(1307f, 949f, -1185f), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(22296u, 23148u, 7678u), 1128f), vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(2713f, -1622f, -161f), vec3<u32>(21463u, 0u, 4294967295u), vec3<u32>(28475u, 12646u, 71370u), -1098f)), Struct_2(Struct_1(vec3<f32>(-1225f, 2471f, -1056f), vec3<u32>(3485u, 4294967295u, 1u), vec3<u32>(1u, 1u, 11142u), 300f), Struct_1(vec3<f32>(-1777f, 903f, -160f), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4050u, 4294967295u, 27110u), -1000f), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(472f, 277f, 505f), vec3<u32>(1u, 4294967295u, 38137u), vec3<u32>(1u, 0u, 4294967295u), -478f)), Struct_2(Struct_1(vec3<f32>(-1582f, 433f, -1354f), vec3<u32>(28394u, 4294967295u, 2615u), vec3<u32>(1u, 87218u, 4294967295u), -1486f), Struct_1(vec3<f32>(-1000f, -2750f, -231f), vec3<u32>(70960u, 27664u, 59836u), vec3<u32>(0u, 18630u, 0u), -968f), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(1264f, -1412f, -186f), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), 683f)), Struct_2(Struct_1(vec3<f32>(631f, -841f, -1000f), vec3<u32>(40342u, 0u, 31993u), vec3<u32>(0u, 14645u, 0u), 461f), Struct_1(vec3<f32>(-2791f, 853f, -339f), vec3<u32>(26159u, 10892u, 26604u), vec3<u32>(1u, 11548u, 61050u), -245f), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(-291f, -1328f, 741f), vec3<u32>(5953u, 25926u, 2580u), vec3<u32>(76001u, 1u, 30572u), 1000f)), Struct_2(Struct_1(vec3<f32>(1094f, -857f, -160f), vec3<u32>(4294967295u, 6459u, 70762u), vec3<u32>(1u, 37529u, 0u), 966f), Struct_1(vec3<f32>(1078f, -1030f, 604f), vec3<u32>(61952u, 69562u, 1u), vec3<u32>(59719u, 1u, 1u), -1652f), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(-829f, 663f, -103f), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(34492u, 102452u, 1u), -2117f)), Struct_2(Struct_1(vec3<f32>(-1305f, -294f, 613f), vec3<u32>(63521u, 18511u, 46690u), vec3<u32>(1u, 67940u, 13221u), -168f), Struct_1(vec3<f32>(1000f, -1393f, 854f), vec3<u32>(0u, 4294967295u, 59240u), vec3<u32>(10201u, 1u, 0u), 624f), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-988f, -366f, 1597f), vec3<u32>(0u, 89163u, 36763u), vec3<u32>(0u, 4294967295u, 0u), -826f)), Struct_2(Struct_1(vec3<f32>(517f, 351f, -1322f), vec3<u32>(83119u, 1u, 8326u), vec3<u32>(1u, 4294967295u, 48708u), 1557f), Struct_1(vec3<f32>(-173f, 1793f, 492f), vec3<u32>(1u, 27942u, 0u), vec3<u32>(74938u, 22621u, 68640u), -1444f), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(-1202f, -100f, 1012f), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(8464u, 4294967295u, 1u), 2805f)), Struct_2(Struct_1(vec3<f32>(-1511f, -184f, 1235f), vec3<u32>(22108u, 95845u, 8716u), vec3<u32>(69425u, 1u, 14657u), 1311f), Struct_1(vec3<f32>(752f, -1193f, 819f), vec3<u32>(9887u, 1u, 26594u), vec3<u32>(8814u, 0u, 31783u), 976f), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(722f, 730f, -980f), vec3<u32>(43670u, 3715u, 2494u), vec3<u32>(0u, 4294967295u, 23049u), 517f)), Struct_2(Struct_1(vec3<f32>(1173f, -628f, 1559f), vec3<u32>(1u, 372u, 158u), vec3<u32>(0u, 16660u, 72442u), -1214f), Struct_1(vec3<f32>(-114f, 886f, 864f), vec3<u32>(50625u, 17046u, 1540u), vec3<u32>(4294967295u, 1u, 1u), 1096f), vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(119f, -1362f, -1298f), vec3<u32>(6849u, 30564u, 69822u), vec3<u32>(0u, 55744u, 0u), 1000f)), Struct_2(Struct_1(vec3<f32>(-817f, -801f, -1000f), vec3<u32>(4294967295u, 84194u, 78355u), vec3<u32>(1u, 7306u, 25459u), 1092f), Struct_1(vec3<f32>(-1000f, 668f, -330f), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 46942u, 88854u), -488f), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(-602f, 1041f, -1022f), vec3<u32>(29958u, 4294967295u, 1u), vec3<u32>(112432u, 16381u, 22850u), 732f)), Struct_2(Struct_1(vec3<f32>(613f, 290f, -507f), vec3<u32>(36012u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 58597u), 1000f), Struct_1(vec3<f32>(-1703f, -1000f, 1146f), vec3<u32>(0u, 81957u, 11069u), vec3<u32>(1u, 2157u, 37383u), 489f), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(1910f, -646f, -1123f), vec3<u32>(13999u, 35084u, 31065u), vec3<u32>(0u, 71392u, 28758u), 711f)), Struct_2(Struct_1(vec3<f32>(1504f, 713f, -1000f), vec3<u32>(949u, 1u, 1u), vec3<u32>(4294967295u, 1u, 15848u), -652f), Struct_1(vec3<f32>(-1000f, -1720f, -153f), vec3<u32>(0u, 1u, 34519u), vec3<u32>(52181u, 98641u, 0u), 695f), vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(1816f, 760f, 112f), vec3<u32>(79918u, 1u, 4294967295u), vec3<u32>(1u, 31431u, 4294967295u), -427f)), Struct_2(Struct_1(vec3<f32>(-2296f, -3151f, 2363f), vec3<u32>(1u, 1u, 65210u), vec3<u32>(10026u, 0u, 25427u), -1322f), Struct_1(vec3<f32>(334f, -540f, 140f), vec3<u32>(4294967295u, 5985u, 1u), vec3<u32>(13897u, 357u, 1u), 1524f), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(1000f, 1102f, -170f), vec3<u32>(4294967295u, 45979u, 1u), vec3<u32>(10805u, 4294967295u, 8595u), -1000f)), Struct_2(Struct_1(vec3<f32>(-790f, -190f, 694f), vec3<u32>(25209u, 1u, 48629u), vec3<u32>(1u, 43772u, 1u), -2213f), Struct_1(vec3<f32>(218f, -511f, 336f), vec3<u32>(0u, 30242u, 12519u), vec3<u32>(93u, 0u, 0u), -1000f), vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(2026f, 3608f, -884f), vec3<u32>(4294967295u, 1u, 42857u), vec3<u32>(74842u, 1u, 0u), 1351f)), Struct_2(Struct_1(vec3<f32>(1411f, -249f, -1000f), vec3<u32>(13114u, 4294967295u, 1u), vec3<u32>(0u, 65754u, 4294967295u), 1396f), Struct_1(vec3<f32>(-1000f, 960f, -707f), vec3<u32>(13678u, 1u, 0u), vec3<u32>(18899u, 27572u, 1u), -140f), vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(-732f, -212f, 269f), vec3<u32>(28484u, 37892u, 1u), vec3<u32>(1u, 4294967295u, 11137u), -1000f)), Struct_2(Struct_1(vec3<f32>(1359f, -486f, -971f), vec3<u32>(0u, 1u, 38899u), vec3<u32>(4294967295u, 4294967295u, 1u), 2144f), Struct_1(vec3<f32>(-695f, -1687f, 732f), vec3<u32>(4294967295u, 4294967295u, 14696u), vec3<u32>(8441u, 0u, 0u), 828f), vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(948f, 1582f, -112f), vec3<u32>(112939u, 0u, 27862u), vec3<u32>(1u, 4294967295u, 39744u), -503f)), Struct_2(Struct_1(vec3<f32>(355f, -1085f, 429f), vec3<u32>(0u, 0u, 0u), vec3<u32>(33541u, 0u, 0u), -983f), Struct_1(vec3<f32>(-360f, 2005f, -1452f), vec3<u32>(46691u, 75746u, 31319u), vec3<u32>(28514u, 4294967295u, 1u), 205f), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(-1215f, -1090f, 144f), vec3<u32>(4294967295u, 24014u, 34126u), vec3<u32>(0u, 0u, 4294967295u), 1946f)), Struct_2(Struct_1(vec3<f32>(-564f, 1383f, 321f), vec3<u32>(1u, 59857u, 73281u), vec3<u32>(4294967295u, 46612u, 57464u), -1297f), Struct_1(vec3<f32>(379f, 2953f, 310f), vec3<u32>(51256u, 60705u, 89674u), vec3<u32>(4294967295u, 72900u, 1u), 1298f), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(153f, 190f, 2193f), vec3<u32>(4294967295u, 58282u, 21140u), vec3<u32>(23269u, 4294967295u, 4294967295u), 1546f)), Struct_2(Struct_1(vec3<f32>(-953f, 1000f, 1592f), vec3<u32>(26487u, 25686u, 72656u), vec3<u32>(61507u, 1u, 0u), 1400f), Struct_1(vec3<f32>(-1129f, -347f, -1704f), vec3<u32>(51012u, 10828u, 40914u), vec3<u32>(1u, 0u, 68422u), -647f), vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(-352f, -803f, 299f), vec3<u32>(61338u, 60894u, 1u), vec3<u32>(3599u, 38543u, 0u), 1829f)), Struct_2(Struct_1(vec3<f32>(-108f, 1100f, 1570f), vec3<u32>(29499u, 1u, 1u), vec3<u32>(63202u, 1u, 4294967295u), -1006f), Struct_1(vec3<f32>(924f, 819f, -1947f), vec3<u32>(56075u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 134f), vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-150f, 2575f, -1000f), vec3<u32>(0u, 7719u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), -733f)), Struct_2(Struct_1(vec3<f32>(-429f, 2024f, 2127f), vec3<u32>(0u, 4294967295u, 109596u), vec3<u32>(47505u, 11567u, 1u), -1544f), Struct_1(vec3<f32>(2000f, -741f, -829f), vec3<u32>(0u, 46209u, 1u), vec3<u32>(57826u, 1u, 3298u), -942f), vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-1911f, 1000f, 863f), vec3<u32>(1u, 1u, 16166u), vec3<u32>(0u, 4294967295u, 0u), -1000f)), Struct_2(Struct_1(vec3<f32>(1290f, -1293f, -732f), vec3<u32>(28216u, 43540u, 11772u), vec3<u32>(0u, 0u, 1u), 175f), Struct_1(vec3<f32>(1059f, -152f, 2339f), vec3<u32>(1u, 1u, 34231u), vec3<u32>(4294967295u, 0u, 5880u), 1000f), vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(438f, -175f, 486f), vec3<u32>(1u, 36350u, 30651u), vec3<u32>(48963u, 53005u, 7569u), 219f)), Struct_2(Struct_1(vec3<f32>(2131f, 1444f, -1142f), vec3<u32>(1u, 3615u, 4294967295u), vec3<u32>(0u, 1u, 31683u), 1137f), Struct_1(vec3<f32>(-747f, -1702f, 531f), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(5724u, 79710u, 4294967295u), 1118f), vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-1374f, -430f, -1000f), vec3<u32>(111911u, 387u, 4294967295u), vec3<u32>(49574u, 0u, 1u), 563f)), Struct_2(Struct_1(vec3<f32>(214f, -291f, 1759f), vec3<u32>(66460u, 1u, 0u), vec3<u32>(0u, 13087u, 110289u), 1044f), Struct_1(vec3<f32>(242f, 520f, -984f), vec3<u32>(4294967295u, 49210u, 43138u), vec3<u32>(16196u, 17734u, 0u), -924f), vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(1282f, 555f, 491f), vec3<u32>(32341u, 60640u, 59184u), vec3<u32>(0u, 23514u, 40939u), -851f)));

var<private> global1: array<f32, 18> = array<f32, 18>(1853f, 139f, 495f, 772f, 274f, 126f, -668f, 559f, -711f, 1665f, 509f, -1886f, -1475f, -2013f, 1307f, 785f, -366f, -219f);

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global0 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.yzz * vec3<f32>(-938f, _wgslsmith_div_f32(arg_3.x, -714f), _wgslsmith_f_op_f32(f32(-1f) * -297f)))) * arg_1);
    let var_1 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false)), vec2<bool>(arg_2 != 35602i, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), !(!all(vec3<bool>(true, true, true)))), vec2<bool>(any(vec2<bool>(all(vec4<bool>(true, true, false, false)), false)), _wgslsmith_dot_vec2_u32(~vec2<u32>(6629u, u_input.b), u_input.c.xx) <= ~firstTrailingBit(11905u)), !(-256f < _wgslsmith_f_op_f32(max(1000f, var_0.x))) | (true != (max(u_input.c.x, 62537u) == abs(4294967295u))));
    let var_2 = select(vec4<bool>(~select(0i, -2147483647i, true) < arg_2, any(!(!vec3<bool>(var_1.x, true, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2171f * -205f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(577f, arg_0.x, var_1.x)), -1233f), var_1.x), select(select(!(!vec4<bool>(true, var_1.x, var_1.x, true)), vec4<bool>(true, true, true, true), select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, false), var_1.x)), !select(!vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(false, var_1.x, var_1.x, true), var_1.x), !all(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x)))), any(var_1));
    global2 = _wgslsmith_mod_u32(~u_input.c.x, ~firstLeadingBit(_wgslsmith_add_u32(u_input.c.x, u_input.a)));
    return _wgslsmith_sub_u32(abs(u_input.c.x), u_input.b);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_2, 24>();
    global2 = _wgslsmith_mod_u32(u_input.c.x, func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, -307f, 452f)), _wgslsmith_div_vec3_f32(vec3<f32>(-868f, arg_2.d, 265f), arg_2.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-335f, arg_0, 963f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, arg_2.d, global1[_wgslsmith_index_u32(arg_2.b.x, 18u)])))), any(!vec2<bool>(false, arg_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 695f, _wgslsmith_f_op_f32(arg_0 * -244f))), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(0i, 27949i), max(-8449i, -16902i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, _wgslsmith_f_op_f32(-559f * -306f), -463f, -542f)))));
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~44619u, 36947u, func_3(vec3<f32>(arg_0, -215f, global1[_wgslsmith_index_u32(1u, 18u)]), arg_2.a, 1i, vec4<f32>(-1682f, -901f, -359f, global1[_wgslsmith_index_u32(1u, 18u)]))), u_input.c.xzx), max(firstLeadingBit(min(arg_2.c.x, 0u)), 75103u));
    let var_1 = 968f;
    let var_2 = -(abs(1i) & _wgslsmith_mult_i32(_wgslsmith_add_i32(35102i, -57551i), select(0i, -64036i, false))) > 35352i;
    return arg_2;
}

fn func_1() -> vec4<f32> {
    global3 = array<vec2<f32>, 26>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-1f), false, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 18u)]), global1[_wgslsmith_index_u32(~4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)]))), u_input.c.wzx, select(vec3<u32>(_wgslsmith_sub_u32(83697u, 1u), u_input.a | 4294967295u, u_input.a), ~u_input.c.ywx, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~1u), 18u)] - 1000f)), true);
    global0 = array<Struct_2, 24>();
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 18u)]), _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-382f, 351f))))), vec3<u32>(~_wgslsmith_mult_u32(109414u, var_0.b.x | 8248u), 58551u, _wgslsmith_add_u32(1u, 1u)), u_input.c.wwz, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 18u)]));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.a)))), ~_wgslsmith_mult_vec3_u32(var_0.b, ~var_0.b), _wgslsmith_div_vec3_u32(var_1.b, _wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.c.x, u_input.c.x), select(vec3<u32>(0u, 1u, u_input.b), var_0.b, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(sign(var_1.a.x)))), global1[_wgslsmith_index_u32(min(firstTrailingBit(4294967295u), ~var_1.c.x), 18u)], 0u > ~var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f * 1174f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(var_0.b.x, 18u)], -385f, -582f), vec4<f32>(658f, global1[_wgslsmith_index_u32(var_2.a.b.x, 18u)], var_1.d, 1120f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.c.x, 18u)], var_1.d, var_1.d, var_1.a.x)))) - vec4<f32>(253f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(28498u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a.a.x, 566f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 18u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b.x ^ 41222u, 18u)]) + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 17809u, 55242u), 18u)])) * 1336f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 18u)], -354f, global1[_wgslsmith_index_u32(32873u, 18u)])) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(34650u, 18u)], -1284f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(45909u, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)]), false))), vec3<f32>(740f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(18606u, 18u)], 1514f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 18u)], -1236f))))), ~u_input.c.zzw, countOneBits(u_input.c.xyy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(661f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(36304u, u_input.c.x), 18u)]))) + _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 18u)]))));
    var var_1 = vec3<u32>(var_0.c.x, ~(~u_input.c.x), u_input.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    global0 = array<Struct_2, 24>();
    let var_3 = ~_wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(u_input.b, 4294967295u))), vec2<u32>(_wgslsmith_sub_u32(var_0.c.x, 4294967295u), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(func_2(_wgslsmith_f_op_f32(-1451f - var_0.a.x), true, Struct_1(var_2.xxy, vec3<u32>(var_3, u_input.b, var_0.c.x), var_0.c, 585f), u_input.b >= 0u).c.x, ~var_3));
}

