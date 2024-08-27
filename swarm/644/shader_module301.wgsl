struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-560f, -1000f, 1309f, -2149f), vec4<f32>(-1000f, 550f, 251f, 491f), vec4<f32>(-511f, 452f, 737f, 871f), vec4<f32>(-294f, -211f, 132f, -1000f), vec4<f32>(883f, -229f, 1271f, -1000f), vec4<f32>(-518f, -1504f, 1162f, -800f), vec4<f32>(1004f, 1820f, 1183f, 773f), vec4<f32>(980f, -155f, 264f, -1536f), vec4<f32>(-223f, -329f, -504f, -153f), vec4<f32>(1936f, -466f, 743f, -1685f), vec4<f32>(1514f, -1000f, 269f, 200f), vec4<f32>(-100f, -182f, 664f, 733f), vec4<f32>(1032f, 1231f, 338f, 348f), vec4<f32>(1000f, 1532f, 1053f, -746f), vec4<f32>(238f, 1006f, 1537f, 1750f), vec4<f32>(386f, -976f, -1000f, -879f), vec4<f32>(1238f, 805f, 797f, 1434f), vec4<f32>(418f, -1344f, -1320f, 195f), vec4<f32>(-634f, 1869f, -978f, 1725f), vec4<f32>(876f, 1299f, -303f, -2176f), vec4<f32>(-882f, -930f, 1582f, 216f), vec4<f32>(453f, -299f, -1000f, -1000f), vec4<f32>(1061f, -861f, 1000f, -579f), vec4<f32>(967f, -610f, 131f, -2386f), vec4<f32>(1249f, -672f, 514f, -721f), vec4<f32>(1381f, -1000f, 1486f, -607f), vec4<f32>(-1633f, 1379f, -747f, 1225f), vec4<f32>(-946f, -1000f, -1050f, -372f));

var<private> global1: f32 = -533f;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(-1577f, Struct_1(-1000f, vec3<f32>(538f, 1840f, 1077f), vec4<f32>(-864f, -2212f, 332f, -429f), vec4<i32>(35125i, 21639i, 1i, -18586i), vec4<bool>(false, true, false, true)), vec3<i32>(10907i, 37217i, i32(-2147483648))), Struct_3(-835f, Struct_1(1700f, vec3<f32>(2548f, 600f, -134f), vec4<f32>(-425f, -542f, -879f, 732f), vec4<i32>(2147483647i, -1i, 0i, 30426i), vec4<bool>(false, false, false, false)), vec3<i32>(28207i, 14481i, 21611i)), Struct_3(165f, Struct_1(2134f, vec3<f32>(1245f, 394f, 482f), vec4<f32>(378f, -1054f, -125f, 787f), vec4<i32>(1i, 2147483647i, -1i, 2147483647i), vec4<bool>(false, true, true, true)), vec3<i32>(-24941i, 2147483647i, -10577i)), Struct_3(-873f, Struct_1(-1698f, vec3<f32>(-1215f, 508f, -275f), vec4<f32>(-2029f, 185f, -1564f, 618f), vec4<i32>(2147483647i, 1i, 59677i, -38423i), vec4<bool>(false, true, true, false)), vec3<i32>(2147483647i, 0i, -17531i)), Struct_3(455f, Struct_1(1000f, vec3<f32>(-428f, 1000f, -1455f), vec4<f32>(487f, 504f, -1000f, -1191f), vec4<i32>(27399i, -1i, 0i, i32(-2147483648)), vec4<bool>(false, true, false, false)), vec3<i32>(-9489i, i32(-2147483648), 0i)), Struct_3(1123f, Struct_1(-708f, vec3<f32>(2300f, -431f, 968f), vec4<f32>(-206f, 657f, -958f, 107f), vec4<i32>(-5103i, -8820i, -56575i, 2147483647i), vec4<bool>(false, true, false, false)), vec3<i32>(-61725i, i32(-2147483648), 2976i)), Struct_3(1000f, Struct_1(-960f, vec3<f32>(2056f, 183f, 1000f), vec4<f32>(1115f, -1255f, 566f, 2584f), vec4<i32>(-3174i, -704i, -61579i, 2147483647i), vec4<bool>(true, false, false, true)), vec3<i32>(2147483647i, 20739i, 0i)), Struct_3(2623f, Struct_1(-1716f, vec3<f32>(375f, -725f, 894f), vec4<f32>(1375f, 293f, 260f, -1209f), vec4<i32>(1i, 14599i, 1i, i32(-2147483648)), vec4<bool>(true, false, true, true)), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_3(-1098f, Struct_1(1000f, vec3<f32>(-223f, 572f, -806f), vec4<f32>(-530f, -154f, 323f, 1000f), vec4<i32>(6040i, 39562i, -11650i, 196i), vec4<bool>(false, false, true, true)), vec3<i32>(-48094i, -23140i, 0i)), Struct_3(-1917f, Struct_1(403f, vec3<f32>(1000f, -1000f, 1422f), vec4<f32>(-641f, 1235f, -708f, -997f), vec4<i32>(2147483647i, 809i, -12692i, 2147483647i), vec4<bool>(false, false, true, true)), vec3<i32>(0i, -40183i, i32(-2147483648))), Struct_3(590f, Struct_1(-148f, vec3<f32>(676f, -275f, -305f), vec4<f32>(-1860f, 298f, -555f, -629f), vec4<i32>(0i, 30806i, i32(-2147483648), -34146i), vec4<bool>(true, true, true, true)), vec3<i32>(i32(-2147483648), 22318i, 1i)), Struct_3(431f, Struct_1(550f, vec3<f32>(-1736f, -386f, 1000f), vec4<f32>(-1140f, 704f, 1000f, -1367f), vec4<i32>(26149i, 18816i, -1i, -1i), vec4<bool>(false, true, true, false)), vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_3(769f, Struct_1(313f, vec3<f32>(758f, 2392f, 2655f), vec4<f32>(724f, 997f, -1103f, 526f), vec4<i32>(53495i, 28861i, -1i, 43669i), vec4<bool>(false, true, true, true)), vec3<i32>(19328i, -11374i, 1i)), Struct_3(-689f, Struct_1(-405f, vec3<f32>(683f, 1000f, -512f), vec4<f32>(2088f, 549f, 716f, 1570f), vec4<i32>(-22899i, 1i, -24976i, -1601i), vec4<bool>(true, false, true, false)), vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_3(-1000f, Struct_1(1000f, vec3<f32>(-466f, -1915f, 489f), vec4<f32>(-571f, 250f, 1000f, -813f), vec4<i32>(7709i, 2147483647i, -3484i, -25544i), vec4<bool>(true, true, false, false)), vec3<i32>(-13248i, -1i, 6483i)), Struct_3(-1632f, Struct_1(477f, vec3<f32>(-367f, -1989f, 815f), vec4<f32>(719f, 1841f, -944f, -874f), vec4<i32>(0i, i32(-2147483648), -15100i, 1i), vec4<bool>(false, true, false, false)), vec3<i32>(33377i, i32(-2147483648), 14616i)), Struct_3(-1528f, Struct_1(-194f, vec3<f32>(-1239f, 821f, -856f), vec4<f32>(-909f, -137f, 962f, 1000f), vec4<i32>(81i, -67633i, 22681i, 4061i), vec4<bool>(false, false, false, false)), vec3<i32>(-49709i, 21880i, 6445i)), Struct_3(-1000f, Struct_1(792f, vec3<f32>(1406f, 327f, 719f), vec4<f32>(471f, -217f, -715f, 503f), vec4<i32>(-2875i, -1i, 77563i, 16282i), vec4<bool>(true, false, true, true)), vec3<i32>(-6834i, 0i, -1i)), Struct_3(-800f, Struct_1(-174f, vec3<f32>(-818f, -675f, 267f), vec4<f32>(-470f, 2042f, -977f, -108f), vec4<i32>(10176i, 1i, 46451i, 2147483647i), vec4<bool>(true, false, false, false)), vec3<i32>(-48834i, 18327i, -1i)), Struct_3(362f, Struct_1(-715f, vec3<f32>(-558f, -159f, -688f), vec4<f32>(938f, 674f, -1304f, 1976f), vec4<i32>(-7225i, -1i, i32(-2147483648), 1i), vec4<bool>(true, false, true, false)), vec3<i32>(-5002i, -50173i, 44333i)), Struct_3(-359f, Struct_1(2384f, vec3<f32>(-518f, -1474f, 172f), vec4<f32>(112f, 1000f, 2086f, -1881f), vec4<i32>(-9712i, 789i, 1i, 2147483647i), vec4<bool>(true, true, false, true)), vec3<i32>(-18321i, 2147483647i, -111648i)));

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-1000f, vec3<f32>(1516f, 1000f, -569f), vec4<f32>(471f, 959f, -628f, -289f), vec4<i32>(19692i, 72721i, -1i, 18475i), vec4<bool>(false, false, true, false)), 32296i, Struct_1(-105f, vec3<f32>(-572f, -212f, -1733f), vec4<f32>(-1758f, 582f, -1238f, 384f), vec4<i32>(10621i, i32(-2147483648), i32(-2147483648), 3592i), vec4<bool>(true, false, false, true))), Struct_2(Struct_1(1950f, vec3<f32>(1053f, 494f, 1006f), vec4<f32>(-1000f, -464f, -1406f, -798f), vec4<i32>(2147483647i, 204i, -34392i, 1i), vec4<bool>(false, true, false, false)), -1i, Struct_1(-1701f, vec3<f32>(659f, -903f, 1759f), vec4<f32>(158f, 1000f, -614f, 1118f), vec4<i32>(-64i, -42373i, 2147483647i, -1i), vec4<bool>(true, true, false, false))), Struct_2(Struct_1(719f, vec3<f32>(-371f, -773f, 1284f), vec4<f32>(1412f, -556f, 1232f, -1193f), vec4<i32>(1i, 0i, 44787i, 3514i), vec4<bool>(false, true, true, true)), 18936i, Struct_1(-1458f, vec3<f32>(1090f, -1543f, -995f), vec4<f32>(125f, -163f, 1000f, 166f), vec4<i32>(-1i, 0i, 2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-786f, vec3<f32>(1122f, -461f, -290f), vec4<f32>(-1425f, -542f, -2196f, 333f), vec4<i32>(-13666i, 743i, i32(-2147483648), 0i), vec4<bool>(false, true, true, false)), -42540i, Struct_1(-1000f, vec3<f32>(-1386f, 307f, -224f), vec4<f32>(-1496f, -271f, 1221f, 1130f), vec4<i32>(-23594i, 2147483647i, 0i, 1i), vec4<bool>(true, true, false, true))), Struct_2(Struct_1(786f, vec3<f32>(-577f, -429f, -612f), vec4<f32>(245f, -1000f, -1082f, -1950f), vec4<i32>(-36895i, 1i, 2147483647i, 38387i), vec4<bool>(false, true, true, true)), -10966i, Struct_1(-1001f, vec3<f32>(-1089f, 462f, 1028f), vec4<f32>(-690f, -849f, -632f, -127f), vec4<i32>(-28886i, 0i, 31164i, i32(-2147483648)), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(1565f, vec3<f32>(-1582f, -2463f, -1087f), vec4<f32>(-2865f, -358f, -159f, -771f), vec4<i32>(1i, 5553i, 14131i, -33467i), vec4<bool>(true, true, true, true)), 0i, Struct_1(-1827f, vec3<f32>(1751f, 1192f, 1173f), vec4<f32>(1249f, -414f, 1304f, -1303f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, true, true, true))), Struct_2(Struct_1(-608f, vec3<f32>(-230f, 244f, -289f), vec4<f32>(-905f, 911f, -374f, 1830f), vec4<i32>(-59578i, 0i, -15964i, i32(-2147483648)), vec4<bool>(false, false, true, true)), -22472i, Struct_1(-742f, vec3<f32>(325f, -190f, 444f), vec4<f32>(-960f, -1229f, -1254f, 1624f), vec4<i32>(14281i, 1i, -13323i, 1i), vec4<bool>(true, false, true, true))), Struct_2(Struct_1(-663f, vec3<f32>(-1135f, -179f, -1604f), vec4<f32>(609f, 144f, 378f, 169f), vec4<i32>(-23148i, i32(-2147483648), -2796i, 41997i), vec4<bool>(false, true, false, true)), 1i, Struct_1(-1009f, vec3<f32>(1000f, 315f, 1071f), vec4<f32>(-1000f, 1000f, 1000f, 138f), vec4<i32>(2147483647i, 1i, 0i, i32(-2147483648)), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(1898f, vec3<f32>(1000f, -2401f, -1646f), vec4<f32>(1774f, 419f, -1292f, 1772f), vec4<i32>(-1i, 5487i, 26872i, 38481i), vec4<bool>(false, false, false, false)), 28320i, Struct_1(1992f, vec3<f32>(-128f, 705f, 720f), vec4<f32>(-296f, -318f, 1000f, -268f), vec4<i32>(-50178i, 2147483647i, 2147483647i, 484i), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-937f, vec3<f32>(-1157f, -281f, -485f), vec4<f32>(2339f, 334f, 450f, 2612f), vec4<i32>(44076i, -1i, 0i, 2147483647i), vec4<bool>(false, true, true, true)), 0i, Struct_1(-2200f, vec3<f32>(589f, -1086f, 449f), vec4<f32>(1762f, 1708f, 255f, 268f), vec4<i32>(14149i, -1i, 0i, -19533i), vec4<bool>(false, true, false, false))), Struct_2(Struct_1(-1000f, vec3<f32>(1036f, -1375f, 1397f), vec4<f32>(-355f, -510f, -1830f, -805f), vec4<i32>(11604i, 2147483647i, i32(-2147483648), 21217i), vec4<bool>(false, true, false, true)), 9827i, Struct_1(-451f, vec3<f32>(788f, 1041f, -175f), vec4<f32>(-1189f, 270f, -442f, 1000f), vec4<i32>(-31445i, -17938i, -34749i, -30050i), vec4<bool>(false, false, true, true))), Struct_2(Struct_1(1915f, vec3<f32>(320f, 608f, 1109f), vec4<f32>(2036f, -804f, -1071f, 1374f), vec4<i32>(-4096i, 53567i, 0i, -24224i), vec4<bool>(true, false, false, true)), -8326i, Struct_1(1047f, vec3<f32>(-1661f, -213f, 256f), vec4<f32>(620f, 1157f, 363f, -343f), vec4<i32>(2147483647i, 1i, -28409i, -1i), vec4<bool>(false, true, true, false))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = -22702i;
    global0 = array<vec4<f32>, 28>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_2 = var_1.a;
    let var_3 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    return !vec3<bool>(var_3.b.e.x & true, true, all(var_3.b.e.wz));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    global2 = array<Struct_3, 21>();
    let var_0 = ~arg_1.x | 27770u;
    var var_1 = 0u;
    global3 = array<Struct_2, 12>();
    var var_2 = Struct_5((-u_input.c.x << (arg_1.x % 32u)) > u_input.a.x);
    return !(!select(vec3<bool>(arg_0.x, true, arg_0.x), arg_0, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1136f, 113f, -209f) + vec3<f32>(-274f, 235f, -1709f)))));
}

fn func_1() -> u32 {
    global3 = array<Struct_2, 12>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = any(!func_2(vec3<bool>(!var_0.x, false, false), select(vec4<u32>(4294967295u, 16722u, 4294967295u, 11539u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<bool>(true, var_0.x, var_0.x, false)) << (vec4<u32>(39717u, 1u, 4294967295u, 10779u) % vec4<u32>(32u))));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2080f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(179f, 779f) + -1193f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(480f, -349f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(331f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1270f, -673f, 2251f), vec3<f32>(-577f, -440f, -197f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1610f, -1363f, 530f), vec3<f32>(683f, 124f, -1216f)), var_0.x))), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(abs(48124u), 28u)], vec4<f32>(_wgslsmith_f_op_f32(step(-1207f, 1233f)), 458f, _wgslsmith_f_op_f32(abs(1000f)), 311f)), -(firstTrailingBit(u_input.a) ^ vec4<i32>(8303i, u_input.d.x, -2425i, 2147483647i)), !(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, false), var_0.x))), u_input.a.ywx | (-vec3<i32>(u_input.b, -35275i, 20048i) & vec3<i32>(-u_input.b, ~u_input.a.x, -1924i)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-165f)), _wgslsmith_f_op_f32(ceil(-2397f)), func_3(vec3<f32>(var_2.a, var_2.b.b.x, -258f)).x)))))) + -100f);
    return 6815u;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_5(arg_0.b.e.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, 1190f, arg_0.b.a)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-arg_0.a)), arg_0.b.c.x, 1f))));
    var var_2 = 79004u;
    var var_3 = ~_wgslsmith_sub_u32(~min(1285u, 486u), ~0u >> (1u % 32u)) ^ _wgslsmith_div_u32(~(~(~20221u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~4294967295u), vec2<u32>(select(4294967295u, 0u, false), ~22582u)));
    global3 = array<Struct_2, 12>();
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(70314u, _wgslsmith_add_u32(0u, 572u) << (_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13117u, 17506u), vec3<u32>(1u, 1u, 1u))) % 32u)), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 21>();
    global3 = array<Struct_2, 12>();
    let var_0 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 4294967295u, 37226u)), vec3<u32>(48191u, 34520u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(1u, 35387u))), func_1()), 21u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-167f, 868f), vec2<f32>(-351f, -561f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-242f, 1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-375f, -249f) - vec2<f32>(1320f, 385f))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1504f)))), Struct_1(_wgslsmith_f_op_f32(1688f - -1644f), _wgslsmith_f_op_vec3_f32(floor(func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 21u)], _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.a, 339f), vec2<f32>(var_0.a.a, var_0.c.a)))).c.b)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 4294967295u), ~vec3<u32>(40743u, 0u, 3642u)), 28u)], vec4<i32>(1i, var_0.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(-13752i, 32743i), var_0.b), _wgslsmith_sub_i32(min(35774i, 85655i), -68781i)), !(!select(var_0.a.e, var_0.a.e, var_0.a.e.x))), reverseBits(vec3<i32>(2147483647i, u_input.c.x, 20907i << (_wgslsmith_div_u32(46208u, 10810u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.x, countOneBits(~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(36227u, 20663u, 943u, 4294967295u), func_4(global2[_wgslsmith_index_u32(4294967295u, 21u)], var_0.a.b.yz).a.e)), _wgslsmith_div_vec2_f32(var_0.a.c.xy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(703f, -1002f)), vec2<f32>(370f, var_0.c.b.x)))))), -1i);
}

