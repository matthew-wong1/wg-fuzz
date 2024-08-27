struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-467f, -286f), vec4<f32>(696f, 1016f, -250f, 138f));

var<private> global1: vec2<i32> = vec2<i32>(-26472i, 2147483647i);

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<i32>(-1i, i32(-2147483648), 1i, 0i), Struct_1(vec2<f32>(1405f, -619f), vec4<f32>(230f, 854f, -180f, 686f)), 10803u, Struct_1(vec2<f32>(-207f, 440f), vec4<f32>(-386f, 416f, 1253f, -1222f)), Struct_1(vec2<f32>(1000f, 116f), vec4<f32>(-252f, 1000f, 345f, 735f))), Struct_2(vec4<i32>(-15397i, 46816i, 24359i, -1i), Struct_1(vec2<f32>(-220f, 1300f), vec4<f32>(-1784f, -785f, -226f, 1000f)), 0u, Struct_1(vec2<f32>(251f, -153f), vec4<f32>(-897f, 1108f, 452f, 700f)), Struct_1(vec2<f32>(-1000f, 1000f), vec4<f32>(-1538f, 1356f, -1000f, -114f))), Struct_2(vec4<i32>(-30665i, i32(-2147483648), -1i, -1i), Struct_1(vec2<f32>(-1318f, -1159f), vec4<f32>(1239f, 150f, 452f, -1845f)), 23603u, Struct_1(vec2<f32>(-1361f, -927f), vec4<f32>(-161f, 1134f, -874f, 866f)), Struct_1(vec2<f32>(-171f, -1247f), vec4<f32>(1748f, 669f, -252f, -739f))), Struct_2(vec4<i32>(33987i, -43021i, 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(366f, 1000f), vec4<f32>(839f, -1132f, 157f, -1896f)), 4294967295u, Struct_1(vec2<f32>(1502f, 1000f), vec4<f32>(909f, 573f, -299f, 952f)), Struct_1(vec2<f32>(768f, 883f), vec4<f32>(-1664f, -1000f, 2389f, -904f))), Struct_2(vec4<i32>(-1i, 55275i, -56105i, 2147483647i), Struct_1(vec2<f32>(516f, -566f), vec4<f32>(-464f, 1649f, -1473f, -3507f)), 4294967295u, Struct_1(vec2<f32>(1812f, 1283f), vec4<f32>(1234f, 307f, 153f, 1415f)), Struct_1(vec2<f32>(-451f, -1190f), vec4<f32>(-1777f, 1202f, 800f, 427f))), Struct_2(vec4<i32>(1i, -1i, 16724i, 1i), Struct_1(vec2<f32>(-481f, 1339f), vec4<f32>(1847f, 1000f, -1000f, 869f)), 26112u, Struct_1(vec2<f32>(-358f, -815f), vec4<f32>(-1183f, -534f, -1380f, 1079f)), Struct_1(vec2<f32>(-263f, -2376f), vec4<f32>(-1049f, -1560f, 334f, 672f))), Struct_2(vec4<i32>(-1i, 2373i, 85336i, 0i), Struct_1(vec2<f32>(468f, 1718f), vec4<f32>(484f, -386f, 1000f, -1000f)), 1u, Struct_1(vec2<f32>(-1240f, 1177f), vec4<f32>(283f, -959f, -915f, 1217f)), Struct_1(vec2<f32>(-1138f, -608f), vec4<f32>(-1207f, 546f, 343f, -949f))), Struct_2(vec4<i32>(0i, -51090i, 34853i, -42144i), Struct_1(vec2<f32>(1000f, 316f), vec4<f32>(-1000f, -1286f, -716f, 349f)), 1u, Struct_1(vec2<f32>(1585f, -527f), vec4<f32>(-541f, -960f, -261f, 1000f)), Struct_1(vec2<f32>(-749f, -1260f), vec4<f32>(-231f, 738f, -110f, -1179f))), Struct_2(vec4<i32>(1i, -42201i, 0i, 31637i), Struct_1(vec2<f32>(858f, 1335f), vec4<f32>(342f, -286f, -1000f, 808f)), 1u, Struct_1(vec2<f32>(-263f, 692f), vec4<f32>(476f, -1465f, 132f, 929f)), Struct_1(vec2<f32>(1164f, 1398f), vec4<f32>(104f, -942f, -1279f, 789f))), Struct_2(vec4<i32>(-1i, -12152i, -50833i, 16499i), Struct_1(vec2<f32>(-136f, -1911f), vec4<f32>(552f, 477f, 245f, 891f)), 22569u, Struct_1(vec2<f32>(479f, 1488f), vec4<f32>(1084f, -305f, -1000f, -918f)), Struct_1(vec2<f32>(-371f, 1000f), vec4<f32>(-362f, -433f, 1584f, 1100f))), Struct_2(vec4<i32>(16921i, 26654i, -69269i, 0i), Struct_1(vec2<f32>(-224f, -402f), vec4<f32>(-285f, -553f, 1011f, -1547f)), 36160u, Struct_1(vec2<f32>(-1749f, -388f), vec4<f32>(1180f, -1234f, 850f, -317f)), Struct_1(vec2<f32>(-132f, 1010f), vec4<f32>(-1077f, -428f, 406f, -284f))), Struct_2(vec4<i32>(-1i, 16157i, i32(-2147483648), i32(-2147483648)), Struct_1(vec2<f32>(-1292f, -2478f), vec4<f32>(-535f, 1406f, -388f, -1364f)), 91154u, Struct_1(vec2<f32>(781f, -1678f), vec4<f32>(-416f, -366f, -254f, -311f)), Struct_1(vec2<f32>(-365f, -562f), vec4<f32>(-1641f, -1176f, 714f, 602f))), Struct_2(vec4<i32>(i32(-2147483648), -22722i, -1i, 15600i), Struct_1(vec2<f32>(602f, 469f), vec4<f32>(1000f, -1130f, -1566f, -1532f)), 65673u, Struct_1(vec2<f32>(1000f, -1000f), vec4<f32>(331f, 166f, 1000f, -1197f)), Struct_1(vec2<f32>(-1000f, -1238f), vec4<f32>(-268f, -492f, 634f, -544f))), Struct_2(vec4<i32>(-37234i, 77108i, -29786i, i32(-2147483648)), Struct_1(vec2<f32>(-1015f, -1692f), vec4<f32>(-1751f, -797f, -362f, 1000f)), 0u, Struct_1(vec2<f32>(-1000f, -511f), vec4<f32>(821f, -129f, -840f, -232f)), Struct_1(vec2<f32>(-1552f, -516f), vec4<f32>(838f, -610f, -697f, -1175f))), Struct_2(vec4<i32>(-30465i, 1i, 2147483647i, -8017i), Struct_1(vec2<f32>(134f, -1654f), vec4<f32>(539f, 329f, 344f, 508f)), 23160u, Struct_1(vec2<f32>(-636f, -774f), vec4<f32>(119f, 197f, 146f, -368f)), Struct_1(vec2<f32>(-323f, 486f), vec4<f32>(-206f, 1016f, 1164f, -214f))), Struct_2(vec4<i32>(-39962i, 52360i, 2147483647i, 1i), Struct_1(vec2<f32>(-541f, 1000f), vec4<f32>(862f, -595f, -344f, 1110f)), 43434u, Struct_1(vec2<f32>(1000f, 1199f), vec4<f32>(-688f, -760f, 489f, 423f)), Struct_1(vec2<f32>(474f, 426f), vec4<f32>(4347f, 1242f, -213f, -594f))), Struct_2(vec4<i32>(17560i, 2147483647i, i32(-2147483648), -680i), Struct_1(vec2<f32>(593f, -437f), vec4<f32>(197f, -402f, 260f, 204f)), 160127u, Struct_1(vec2<f32>(1067f, -1868f), vec4<f32>(-486f, -101f, 140f, -434f)), Struct_1(vec2<f32>(560f, 129f), vec4<f32>(1395f, 557f, -135f, -494f))), Struct_2(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i), Struct_1(vec2<f32>(-641f, -322f), vec4<f32>(1033f, -432f, -910f, -1505f)), 0u, Struct_1(vec2<f32>(710f, 1624f), vec4<f32>(-731f, -569f, 910f, 283f)), Struct_1(vec2<f32>(2121f, -527f), vec4<f32>(-1079f, 1048f, -1958f, -1496f))), Struct_2(vec4<i32>(-30699i, -9494i, 1i, 2147483647i), Struct_1(vec2<f32>(819f, -218f), vec4<f32>(-250f, -217f, -1000f, -2807f)), 0u, Struct_1(vec2<f32>(-2463f, -1373f), vec4<f32>(-1000f, 724f, -289f, 432f)), Struct_1(vec2<f32>(2119f, 236f), vec4<f32>(796f, -1000f, -1372f, -1017f))), Struct_2(vec4<i32>(-1i, 42405i, -12025i, 0i), Struct_1(vec2<f32>(1000f, 518f), vec4<f32>(164f, -623f, -392f, -1582f)), 31971u, Struct_1(vec2<f32>(-1603f, 764f), vec4<f32>(-677f, -235f, 2025f, -1727f)), Struct_1(vec2<f32>(-180f, -1170f), vec4<f32>(594f, -831f, 389f, -1299f))), Struct_2(vec4<i32>(761i, -3024i, 51736i, 1i), Struct_1(vec2<f32>(-170f, 1595f), vec4<f32>(-960f, 166f, -813f, 608f)), 1434u, Struct_1(vec2<f32>(-374f, -1142f), vec4<f32>(1247f, 294f, 445f, -686f)), Struct_1(vec2<f32>(-656f, -1161f), vec4<f32>(-1538f, 1155f, 148f, 309f))), Struct_2(vec4<i32>(-141i, -13549i, 1i, 40174i), Struct_1(vec2<f32>(-264f, -1010f), vec4<f32>(305f, 876f, -1345f, -195f)), 0u, Struct_1(vec2<f32>(1146f, -315f), vec4<f32>(-461f, 585f, -383f, -437f)), Struct_1(vec2<f32>(-693f, 971f), vec4<f32>(1000f, 904f, -276f, -705f))), Struct_2(vec4<i32>(i32(-2147483648), -18515i, -43955i, 9940i), Struct_1(vec2<f32>(645f, 811f), vec4<f32>(458f, 106f, -1945f, 1000f)), 1u, Struct_1(vec2<f32>(562f, -1475f), vec4<f32>(-244f, -901f, -1866f, -931f)), Struct_1(vec2<f32>(-1000f, 1005f), vec4<f32>(-444f, 853f, 1026f, -1522f))), Struct_2(vec4<i32>(0i, 0i, 1i, -14370i), Struct_1(vec2<f32>(-1000f, 408f), vec4<f32>(-2322f, -265f, -1679f, 728f)), 4294967295u, Struct_1(vec2<f32>(-984f, -234f), vec4<f32>(-1000f, 1208f, -187f, -1000f)), Struct_1(vec2<f32>(361f, 1545f), vec4<f32>(-369f, -291f, -703f, -705f))), Struct_2(vec4<i32>(2936i, 6836i, 2147483647i, 0i), Struct_1(vec2<f32>(366f, 196f), vec4<f32>(469f, -1000f, 2015f, -2041f)), 4294967295u, Struct_1(vec2<f32>(1042f, -1542f), vec4<f32>(-1549f, -1000f, 440f, -391f)), Struct_1(vec2<f32>(1028f, 1121f), vec4<f32>(190f, -1964f, 714f, -195f))), Struct_2(vec4<i32>(2147483647i, 0i, 43403i, 0i), Struct_1(vec2<f32>(-577f, 250f), vec4<f32>(189f, -415f, -159f, 1082f)), 0u, Struct_1(vec2<f32>(465f, 560f), vec4<f32>(786f, -276f, 1185f, 227f)), Struct_1(vec2<f32>(338f, -400f), vec4<f32>(1058f, 749f, 1369f, -479f))), Struct_2(vec4<i32>(2147483647i, 15142i, -26409i, -27470i), Struct_1(vec2<f32>(-640f, -374f), vec4<f32>(1115f, 2150f, 161f, 1714f)), 1u, Struct_1(vec2<f32>(-397f, -1000f), vec4<f32>(-494f, 326f, 2119f, 1648f)), Struct_1(vec2<f32>(1254f, -519f), vec4<f32>(-524f, -1091f, -474f, -706f))), Struct_2(vec4<i32>(i32(-2147483648), -31730i, 1i, -33614i), Struct_1(vec2<f32>(309f, -1244f), vec4<f32>(773f, -535f, 314f, -144f)), 9880u, Struct_1(vec2<f32>(-264f, -1114f), vec4<f32>(-707f, -291f, -2994f, 404f)), Struct_1(vec2<f32>(254f, 877f), vec4<f32>(372f, -205f, 1000f, 299f))), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 1i, 0i), Struct_1(vec2<f32>(862f, -200f), vec4<f32>(791f, 613f, 154f, 1041f)), 0u, Struct_1(vec2<f32>(-1000f, 993f), vec4<f32>(1350f, -1550f, -1000f, -254f)), Struct_1(vec2<f32>(-290f, -1000f), vec4<f32>(3267f, -166f, 1352f, -1676f))));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: u32) -> vec2<u32> {
    var var_0 = 11458i;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.zy, vec2<f32>(global0.b.x, -589f), arg_2.yz)) - _wgslsmith_div_vec2_f32(arg_1.yy, arg_1.yy)), _wgslsmith_f_op_vec2_f32(select(arg_1.zz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, global0.a.x), vec2<f32>(-326f, arg_1.x), false)), !arg_2.x)), select(vec2<bool>(true, false), select(arg_2.yz, arg_2.xy, vec2<bool>(false, false)), !arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 236f, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1279f)) * arg_1.x))));
    var var_1 = ~(~(~vec2<u32>(~arg_3, u_input.b)));
    let var_2 = global2[_wgslsmith_index_u32(~arg_3, 29u)];
    let var_3 = abs(var_2.a.x);
    return _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_clamp_u32(1u, 9337u, var_1.x)) | (_wgslsmith_sub_vec2_u32(vec2<u32>(18370u, var_1.x), vec2<u32>(arg_3, u_input.b)) >> (vec2<u32>(var_1.x, 82744u) % vec2<u32>(32u))), ~abs(~vec2<u32>(33415u, var_2.c))) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(44622u, _wgslsmith_sub_u32(4294967295u, max(28084u, 9638u))));
}

fn func_4(arg_0: vec2<u32>) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.a.x, global0.a.x), _wgslsmith_div_f32(287f, global0.b.x)) - global0.a)), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), global0.b);
    var var_0 = all(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true));
    var var_1 = global2[_wgslsmith_index_u32(1u, 29u)];
    var_1 = Struct_2(min(select(abs(u_input.c), select(vec4<i32>(-4998i, global1.x, 2147483647i, u_input.d.x), _wgslsmith_mod_vec4_i32(var_1.a, u_input.d), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)), var_1.a), var_1.b, ~min(~arg_0.x, 1309u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.yy + vec2<f32>(var_1.d.b.x, -812f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2092f, global0.a.x, -580f) + vec4<f32>(global0.b.x, var_1.d.b.x, 183f, -1054f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(round(-933f))), vec4<f32>(-1162f, _wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(min(555f, 1621f))), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - 1000f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.d.a.x, global0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b.x) - var_1.d.b.x)))));
}

fn func_2() -> Struct_5 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 29u)];
    global2 = array<Struct_2, 29>();
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_3(countOneBits(u_input.c), global0.b.wxw, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), 1u)))));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1.a.x));
    return Struct_5(false);
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = ~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(1u, arg_0) << (select(2764u, 37971u, arg_1.a) % 32u)) >= ~(~19488u);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, -163f) + vec2<f32>(arg_3.d.a.x, arg_3.d.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.d.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(sign(-278f)), 270f, _wgslsmith_f_op_f32(774f * global0.b.x))))));
    global1 = vec2<i32>(-_wgslsmith_dot_vec3_i32(firstLeadingBit(arg_3.a.wzz), abs(arg_3.a.yxz)), (7762i >> (countOneBits(firstLeadingBit(60530u)) % 32u)) | global1.x);
    let var_1 = arg_3;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.a.x, var_1.d.a.x)), -518f, arg_2.a))), 1711f), -1456f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, var_1.b.b.x)));
    return select(~(~(~vec2<u32>(arg_0, u_input.b))), (select(~vec2<u32>(var_1.c, arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(26375u, 1u), vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 55378u)), vec2<bool>(true, var_0)) | ~(~vec2<u32>(0u, 4294967295u))) ^ vec2<u32>(select(4294967295u, 1u, var_1.a.x >= var_1.a.x), arg_0), vec2<bool>(any(select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_2.a, true), false)), arg_2.a || arg_2.a));
}

fn func_1() -> i32 {
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_add_u32(u_input.b, 10949u)), min(0u, abs(1u))) | _wgslsmith_div_vec2_u32(func_5(u_input.b, func_2(), Struct_5(select(true, false, false)), global2[_wgslsmith_index_u32(u_input.b, 29u)]), ~(~vec2<u32>(13735u, 109284u)));
    return firstLeadingBit(-global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -(~1i), func_1(), func_1() >> (4294967295u % 32u)), vec4<i32>(u_input.c.x, _wgslsmith_div_i32(~min(43892i, -1i), global1.x), global1.x, -8059i), _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-48583i, u_input.a.x, global1.x, -26557i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, u_input.d.x), vec4<i32>(43382i, global1.x, -1i, 52245i)), u_input.c), vec4<i32>(22983i, 0i, abs(u_input.d.x), _wgslsmith_sub_i32(u_input.d.x, i32(-1i) * -71963i))));
    let var_1 = i32(-1i) * -(~max(22169i, global1.x));
    var var_2 = _wgslsmith_f_op_f32(-global0.b.x);
    global1 = reverseBits(vec2<i32>(_wgslsmith_div_i32(35441i, -2147483647i), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, 2147483647i), ~17412i << (u_input.b % 32u), global1.x)), reverseBits(vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b) << (u_input.b % 32u), u_input.b)));
}

