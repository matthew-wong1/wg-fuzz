struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(false, true, Struct_1(vec4<f32>(-869f, -209f, 1197f, -458f), vec2<i32>(-26829i, 1i)), Struct_1(vec4<f32>(-1824f, -1000f, -243f, -2823f), vec2<i32>(-24902i, i32(-2147483648))), Struct_1(vec4<f32>(1000f, -696f, -1094f, 131f), vec2<i32>(0i, -1i))), Struct_2(true, true, Struct_1(vec4<f32>(1339f, -186f, 1000f, -1151f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(1137f, 1120f, 559f, -1348f), vec2<i32>(0i, 16364i)), Struct_1(vec4<f32>(441f, 517f, -781f, -511f), vec2<i32>(0i, 0i))), Struct_2(false, true, Struct_1(vec4<f32>(-256f, 1698f, 1125f, 1000f), vec2<i32>(-32417i, -42744i)), Struct_1(vec4<f32>(1791f, 658f, 1566f, -413f), vec2<i32>(10403i, 1i)), Struct_1(vec4<f32>(-283f, -1265f, 918f, -295f), vec2<i32>(-22519i, 89701i))), Struct_2(false, true, Struct_1(vec4<f32>(-470f, 470f, 335f, 599f), vec2<i32>(-1i, 17609i)), Struct_1(vec4<f32>(-472f, 737f, 369f, 439f), vec2<i32>(0i, 11799i)), Struct_1(vec4<f32>(365f, -126f, 1497f, -503f), vec2<i32>(1i, -12692i))), Struct_2(true, false, Struct_1(vec4<f32>(-1437f, -2015f, 2085f, 310f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec4<f32>(596f, 599f, 1161f, 2020f), vec2<i32>(-22773i, 1i)), Struct_1(vec4<f32>(-783f, -1463f, -915f, -647f), vec2<i32>(-1i, 1i))), Struct_2(false, false, Struct_1(vec4<f32>(-1397f, -2173f, 761f, -124f), vec2<i32>(0i, 1i)), Struct_1(vec4<f32>(-882f, 1094f, -543f, 977f), vec2<i32>(1i, -38626i)), Struct_1(vec4<f32>(233f, 1588f, -1000f, -1591f), vec2<i32>(i32(-2147483648), -3316i))), Struct_2(true, true, Struct_1(vec4<f32>(-984f, 1328f, 1706f, 1057f), vec2<i32>(-18749i, -10313i)), Struct_1(vec4<f32>(2530f, -946f, -318f, -640f), vec2<i32>(0i, 69054i)), Struct_1(vec4<f32>(1151f, -904f, 162f, -323f), vec2<i32>(-10462i, 1i))), Struct_2(true, true, Struct_1(vec4<f32>(-1000f, 664f, 515f, 737f), vec2<i32>(-44568i, 7931i)), Struct_1(vec4<f32>(659f, -883f, -365f, -1000f), vec2<i32>(-4675i, -42069i)), Struct_1(vec4<f32>(-670f, 768f, -171f, -1781f), vec2<i32>(2147483647i, -14893i))), Struct_2(false, false, Struct_1(vec4<f32>(-1971f, -1441f, 617f, 1000f), vec2<i32>(0i, -8954i)), Struct_1(vec4<f32>(-416f, -1550f, 1088f, 1182f), vec2<i32>(16751i, -15453i)), Struct_1(vec4<f32>(-624f, -530f, -1067f, -660f), vec2<i32>(-36966i, -1i))), Struct_2(true, true, Struct_1(vec4<f32>(1082f, 1043f, 263f, 3182f), vec2<i32>(2147483647i, 3376i)), Struct_1(vec4<f32>(104f, -1363f, 1887f, -795f), vec2<i32>(2147483647i, -80970i)), Struct_1(vec4<f32>(1000f, -1245f, -1557f, -349f), vec2<i32>(25626i, 1i))), Struct_2(false, true, Struct_1(vec4<f32>(102f, 228f, 1000f, 536f), vec2<i32>(-1i, -1i)), Struct_1(vec4<f32>(-861f, 179f, -1184f, -231f), vec2<i32>(-40093i, -1i)), Struct_1(vec4<f32>(-732f, -1126f, 558f, -147f), vec2<i32>(2147483647i, 2147483647i))), Struct_2(true, false, Struct_1(vec4<f32>(-1000f, -1109f, -612f, -929f), vec2<i32>(15649i, 1i)), Struct_1(vec4<f32>(-1372f, 898f, -192f, -365f), vec2<i32>(-10840i, -32488i)), Struct_1(vec4<f32>(-819f, 565f, 1931f, -1037f), vec2<i32>(-1i, 27307i))), Struct_2(false, false, Struct_1(vec4<f32>(-2593f, 1031f, 471f, 410f), vec2<i32>(0i, 40483i)), Struct_1(vec4<f32>(-1000f, -507f, 475f, -228f), vec2<i32>(95599i, 1i)), Struct_1(vec4<f32>(-468f, -1000f, -154f, -251f), vec2<i32>(-1i, 0i))), Struct_2(false, false, Struct_1(vec4<f32>(-606f, 1458f, -259f, 2363f), vec2<i32>(2147483647i, 13487i)), Struct_1(vec4<f32>(1000f, -1682f, -518f, 142f), vec2<i32>(-22611i, -11834i)), Struct_1(vec4<f32>(310f, 473f, -134f, 206f), vec2<i32>(i32(-2147483648), 46381i))), Struct_2(true, false, Struct_1(vec4<f32>(-559f, 842f, -898f, -919f), vec2<i32>(-1i, 1i)), Struct_1(vec4<f32>(-1254f, 223f, -1184f, -1555f), vec2<i32>(2147483647i, 0i)), Struct_1(vec4<f32>(1417f, 539f, -1447f, -2129f), vec2<i32>(-1i, -10939i))), Struct_2(true, true, Struct_1(vec4<f32>(326f, 129f, -1485f, 630f), vec2<i32>(0i, -1i)), Struct_1(vec4<f32>(722f, 732f, 310f, -561f), vec2<i32>(3873i, 0i)), Struct_1(vec4<f32>(1208f, -896f, -567f, 1000f), vec2<i32>(-20726i, -1i))), Struct_2(true, false, Struct_1(vec4<f32>(1599f, -595f, 519f, -689f), vec2<i32>(1i, 1i)), Struct_1(vec4<f32>(-841f, 389f, -686f, -149f), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec4<f32>(-268f, -678f, 471f, -924f), vec2<i32>(1i, 33198i))), Struct_2(true, true, Struct_1(vec4<f32>(-144f, -249f, 376f, -1418f), vec2<i32>(-27779i, 47083i)), Struct_1(vec4<f32>(-181f, -414f, -514f, 673f), vec2<i32>(-1i, 2147483647i)), Struct_1(vec4<f32>(905f, -789f, -1266f, -666f), vec2<i32>(-16707i, 1i))), Struct_2(true, true, Struct_1(vec4<f32>(-928f, 199f, 1198f, -151f), vec2<i32>(0i, 7475i)), Struct_1(vec4<f32>(1000f, 319f, 478f, 571f), vec2<i32>(0i, 1i)), Struct_1(vec4<f32>(622f, -659f, -402f, -623f), vec2<i32>(-1i, 1i))), Struct_2(false, true, Struct_1(vec4<f32>(-410f, 622f, -1000f, 629f), vec2<i32>(1i, 12312i)), Struct_1(vec4<f32>(-826f, 1538f, -298f, -1518f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(-1990f, -380f, -777f, 264f), vec2<i32>(8186i, -49549i))), Struct_2(true, true, Struct_1(vec4<f32>(692f, 168f, 525f, -1482f), vec2<i32>(16674i, 2381i)), Struct_1(vec4<f32>(-1015f, -1485f, 1651f, -1563f), vec2<i32>(-13020i, 14373i)), Struct_1(vec4<f32>(2182f, -614f, -473f, 157f), vec2<i32>(35635i, 1i))), Struct_2(false, false, Struct_1(vec4<f32>(1000f, 557f, -598f, -2429f), vec2<i32>(0i, -1i)), Struct_1(vec4<f32>(-189f, 2121f, 674f, -121f), vec2<i32>(-9084i, i32(-2147483648))), Struct_1(vec4<f32>(261f, 102f, 543f, -371f), vec2<i32>(-18075i, 2147483647i))), Struct_2(false, true, Struct_1(vec4<f32>(-1000f, -264f, -680f, 280f), vec2<i32>(21971i, -1270i)), Struct_1(vec4<f32>(1811f, -2022f, 1619f, -1882f), vec2<i32>(33483i, -1i)), Struct_1(vec4<f32>(-433f, -743f, -357f, 874f), vec2<i32>(44656i, 5317i))), Struct_2(false, true, Struct_1(vec4<f32>(-981f, -217f, 1000f, 1319f), vec2<i32>(2147483647i, 28000i)), Struct_1(vec4<f32>(-1000f, 1070f, 1000f, 125f), vec2<i32>(-81951i, -1i)), Struct_1(vec4<f32>(-1000f, -408f, -1586f, -450f), vec2<i32>(-1i, -1i))), Struct_2(true, true, Struct_1(vec4<f32>(-1738f, -409f, 1646f, -178f), vec2<i32>(14317i, -8142i)), Struct_1(vec4<f32>(286f, 1000f, 1402f, 471f), vec2<i32>(-29575i, 43861i)), Struct_1(vec4<f32>(463f, -170f, 328f, 616f), vec2<i32>(21223i, 200i))), Struct_2(true, true, Struct_1(vec4<f32>(227f, -439f, -976f, -337f), vec2<i32>(6124i, 2147483647i)), Struct_1(vec4<f32>(1180f, 879f, 142f, 163f), vec2<i32>(-1i, 11233i)), Struct_1(vec4<f32>(587f, 319f, 692f, -1355f), vec2<i32>(-4904i, 43339i))), Struct_2(false, true, Struct_1(vec4<f32>(-1999f, 519f, 684f, -216f), vec2<i32>(33198i, 4170i)), Struct_1(vec4<f32>(2272f, 484f, -720f, -207f), vec2<i32>(35261i, 55500i)), Struct_1(vec4<f32>(-296f, -306f, 1317f, -1373f), vec2<i32>(-30580i, -46294i))), Struct_2(false, true, Struct_1(vec4<f32>(-1727f, 255f, -907f, -482f), vec2<i32>(-33867i, 1i)), Struct_1(vec4<f32>(551f, 1506f, 575f, 522f), vec2<i32>(-78500i, -8503i)), Struct_1(vec4<f32>(890f, 2897f, -1358f, 156f), vec2<i32>(0i, 0i))), Struct_2(false, false, Struct_1(vec4<f32>(-1771f, -218f, -158f, -1108f), vec2<i32>(-1i, -30633i)), Struct_1(vec4<f32>(228f, -945f, 484f, 1182f), vec2<i32>(-10260i, 37618i)), Struct_1(vec4<f32>(-874f, -400f, -1465f, 1307f), vec2<i32>(-18084i, 2831i))), Struct_2(false, false, Struct_1(vec4<f32>(735f, 934f, -247f, 1800f), vec2<i32>(-1i, 1i)), Struct_1(vec4<f32>(-1732f, -392f, 350f, -605f), vec2<i32>(46307i, -1i)), Struct_1(vec4<f32>(896f, 902f, 1380f, 1000f), vec2<i32>(-10605i, -49944i))), Struct_2(true, true, Struct_1(vec4<f32>(-1540f, -423f, 1933f, -1614f), vec2<i32>(0i, -47330i)), Struct_1(vec4<f32>(1000f, -191f, 1035f, -1004f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<f32>(-1048f, 837f, 130f, -281f), vec2<i32>(i32(-2147483648), 14866i))));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = vec2<f32>(1411f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2163f)))));
    let var_1 = 1969f;
    let var_2 = arg_3;
    return arg_3;
}

fn func_3() -> i32 {
    global0 = Struct_4(Struct_1(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.a, global0.b.a, global0.b.a, global0.b.a), vec4<u32>(4294967295u, 27637u, 42241u, global0.b.a)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.a, global0.b.a, 0u, global0.b.a), vec4<u32>(4294967295u, 4294967295u, 4294967295u, global0.b.a), vec4<u32>(11399u, global0.b.a, 4294967295u, 27342u)) % vec4<u32>(32u)), _wgslsmith_add_i32(global0.b.b.b.x, func_2(vec4<u32>(global0.b.a, global0.b.a, 95201u, 1u), -20268i, global0.b.b.a.yx, global0.b).b.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.a.xx)), func_2(abs(vec4<u32>(1u, global0.b.a, global0.b.a, 51999u)), _wgslsmith_div_i32(-1i, u_input.a.x), vec2<f32>(585f, global0.a.a.x), global0.b)).b.a, abs(global0.b.b.b)), Struct_3(1u, func_2(vec4<u32>(global0.b.a, firstTrailingBit(global0.b.a), func_2(vec4<u32>(global0.b.a, global0.b.a, 56412u, global0.b.a), global0.a.b.x, vec2<f32>(global0.b.b.a.x, global0.c.x), Struct_3(global0.b.a, Struct_1(vec4<f32>(-385f, global0.a.a.x, global0.c.x, global0.a.a.x), global0.b.b.b))).a, 1u), abs(i32(-1i) * -1i), vec2<f32>(-321f, _wgslsmith_f_op_f32(-global0.b.b.a.x)), func_2(vec4<u32>(global0.b.a, 1u, 10713u, global0.b.a), ~0i, vec2<f32>(712f, global0.c.x), global0.b)).b), _wgslsmith_f_op_vec2_f32(global0.c + global0.c));
    var var_0 = global1[_wgslsmith_index_u32(~min(_wgslsmith_clamp_u32(43861u, global0.b.a, select(global0.b.a, global0.b.a, true) | _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a, 30894u, global0.b.a, global0.b.a), vec4<u32>(0u, 26873u, global0.b.a, global0.b.a))), global0.b.a), 31u)];
    global1 = array<Struct_2, 31>();
    var var_1 = vec2<u32>(23730u, 4294967295u);
    global0 = Struct_4(Struct_1(global0.a.a, -(-global0.b.b.b | vec2<i32>(global0.b.b.b.x, u_input.a.x))), func_2(~((vec4<u32>(var_1.x, var_1.x, global0.b.a, 0u) >> (vec4<u32>(101715u, 68848u, var_1.x, 0u) % vec4<u32>(32u))) & ~vec4<u32>(0u, var_1.x, var_1.x, var_1.x)), -(~(-6547i)), vec2<f32>(global0.b.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a.x)))), func_2(vec4<u32>(0u, global0.b.a, 4294967295u, var_1.x) & (vec4<u32>(var_1.x, 4294967295u, 0u, 0u) & vec4<u32>(var_1.x, 1u, var_1.x, var_1.x)), firstTrailingBit(countOneBits(global0.b.b.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_0.e.a.xy, vec2<f32>(107f, -376f))))), Struct_3(4294967295u, func_2(vec4<u32>(var_1.x, 1u, var_1.x, 83644u), -2147483647i, var_0.c.a.xw, global0.b).b))), global0.b.b.a.zx);
    return 33811i;
}

fn func_1() -> bool {
    let var_0 = func_2(abs((vec4<u32>(0u, 12639u, 4294967295u, global0.b.a) << (vec4<u32>(20217u, 7556u, global0.b.a, 0u) % vec4<u32>(32u))) ^ select(_wgslsmith_sub_vec4_u32(vec4<u32>(39966u, global0.b.a, 4294967295u, 1u), vec4<u32>(18872u, global0.b.a, 1u, global0.b.a)), ~vec4<u32>(global0.b.a, global0.b.a, 49287u, global0.b.a), true)), ~u_input.a.x ^ u_input.a.x, _wgslsmith_f_op_vec2_f32(-global0.b.b.a.xw), Struct_3(4294967295u, global0.a));
    var var_1 = 24805i;
    global0 = Struct_4(global0.b.b, Struct_3(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(21238u, _wgslsmith_clamp_u32(4294967295u, global0.b.a, var_0.a))), func_2(~(~vec4<u32>(var_0.a, 57199u, var_0.a, var_0.a)), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b.a.yw))), Struct_3(var_0.a, var_0.b)).b), global0.a.a.wz);
    global0 = Struct_4(var_0.b, var_0, _wgslsmith_f_op_vec2_f32(-var_0.b.a.zw));
    var_1 = func_3();
    return all(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, ~var_0.a >= (80953u | var_0.a)), vec3<bool>(true, _wgslsmith_add_u32(39586u, var_0.a) > global0.b.a, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = Struct_4(func_2(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 92928u, global0.b.a, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.a, global0.b.a, global0.b.a, global0.b.a), vec4<u32>(81308u, 4294967295u, 4294967295u, 50314u))), global0.a.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global0.c.x), _wgslsmith_f_op_vec2_f32(-global0.b.b.a.yx))) + _wgslsmith_f_op_vec2_f32(global0.b.b.a.xx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-931f, 2565f)))), func_2(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(8596u, global0.b.a, 0u, 1u), vec4<u32>(4294967295u, 90545u, global0.b.a, global0.b.a))), _wgslsmith_sub_i32(global0.b.b.b.x | -15133i, 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1712f)), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 46577u, global0.b.a), vec4<u32>(global0.b.a, global0.b.a, global0.b.a, global0.b.a)), 1i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 2187f))), Struct_3(global0.b.a, Struct_1(global0.b.b.a, vec2<i32>(-2147483647i, arg_2.x)))))).b, Struct_3(global0.b.a, global0.b.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a.a.x, 428f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.a.wx - vec2<f32>(global0.a.a.x, global0.c.x)) * _wgslsmith_f_op_vec2_f32(-global0.a.a.zx))) * _wgslsmith_f_op_vec2_f32(-global0.c)));
    let var_0 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f)), global0.b.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.b.b.a.x), arg_1.x)), 1000f), select(arg_2.ww, (arg_2.zy ^ vec2<i32>(-1i, u_input.a.x)) << (~vec2<u32>(global0.b.a, global0.b.a) % vec2<u32>(32u)), arg_0.wz)), func_2(reverseBits(vec4<u32>(~global0.b.a, 17828u, 1u, 4294967295u)), firstLeadingBit(i32(-1i) * -42315i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.a.x, global0.b.b.a.x))))), func_2(vec4<u32>(global0.b.a, ~global0.b.a, global0.b.a >> (global0.b.a % 32u), ~0u), func_2(vec4<u32>(0u, 14009u, 0u, 0u), ~1i, global0.a.a.xy, global0.b).b.b.x, global0.b.b.a.xx, global0.b)), global0.a.a.xy);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_0.b.a), _wgslsmith_div_u32(~32206u, func_2(vec4<u32>(global0.b.a, var_0.b.a, var_0.b.a, 1245u), 49109i, vec2<f32>(-415f, var_0.c.x), Struct_3(var_0.b.a, Struct_1(vec4<f32>(785f, global0.c.x, var_0.a.a.x, global0.a.a.x), vec2<i32>(arg_2.x, u_input.a.x)))).a), firstLeadingBit(28611u)) ^ vec3<u32>(max(98976u, 11613u), 1u, select(4294967295u, abs(global0.b.a), false)), ~(~firstLeadingBit(abs(vec3<u32>(32894u, 0u, 38474u)))));
    var var_2 = func_2(~vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(var_0.b.a, global0.b.a)), 48901u, ~(global0.b.a ^ 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(2529u, 22773u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.a, 1u), vec2<u32>(var_0.b.a, 4294967295u)))), u_input.a.x ^ _wgslsmith_clamp_i32(-2147483647i, arg_2.x ^ u_input.a.x, -u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(select(global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), !(arg_1.x != false))), _wgslsmith_f_op_f32(ceil(var_0.a.a.x))), global0.b).b;
    global1 = array<Struct_2, 31>();
    return func_2(vec4<u32>(var_0.b.a, ~_wgslsmith_add_u32(global0.b.a, var_0.b.a), ~(~(~var_0.b.a)), global0.b.a), arg_2.x ^ (i32(-1i) * -8312i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.x, -365f), global0.a.a.yy, vec2<bool>(arg_1.x, false))))))), Struct_3(22423u, func_2(min(vec4<u32>(0u, 28083u, 8263u, 16487u), vec4<u32>(56172u, var_0.b.a, 4294967295u, global0.b.a)) & select(vec4<u32>(2742u, 41494u, 4294967295u, 0u), vec4<u32>(10612u, 13424u, 0u, 1u), arg_0), var_2.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a.a.yx, vec2<f32>(var_0.a.a.x, 888f))), vec2<f32>(var_2.a.x, 404f)), Struct_3(30744u, Struct_1(vec4<f32>(1000f, -547f, global0.a.a.x, var_2.a.x), global0.a.b))).b)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(-17522i << (1u % 32u)), countOneBits(u_input.a.x)), u_input.a.yx, ~(~u_input.a.yy));
    var var_1 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, 0u, 7123u, 24221u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.a, global0.b.a, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, global0.b.a, global0.b.a)), ~vec4<u32>(4294967295u, 36667u, global0.b.a, global0.b.a), ~vec4<u32>(62729u, 71157u, 0u, 1u))), ~global0.b.a), global0.b.b);
    let var_2 = func_4(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, func_1(), false), true), vec4<bool>(true, _wgslsmith_f_op_f32(var_1.b.a.x * _wgslsmith_f_op_f32(select(-282f, 606f, false))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) + global0.a.a.x), false, var_1.b.b.x < func_3()), max(~vec4<i32>(firstLeadingBit(var_1.b.b.x), abs(u_input.a.x), _wgslsmith_mult_i32(1i, 56270i), 1i << (0u % 32u)), abs(firstLeadingBit(vec4<i32>(global0.b.b.b.x, var_0.x, global0.a.b.x, var_0.x) >> (vec4<u32>(var_1.a, global0.b.a, var_1.a, 47077u) % vec4<u32>(32u))))));
    var_1 = Struct_3(_wgslsmith_sub_u32(~(~0u << (_wgslsmith_mult_u32(global0.b.a, 24805u) % 32u)), ~var_1.a), func_4(select(vec4<bool>(false, true, global0.b.a <= var_1.a, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), !all(vec3<bool>(false, true, true))), vec4<bool>(!all(vec4<bool>(false, false, true, true)), var_2.a.x != -978f, false, true), abs(vec4<i32>(var_1.b.b.x, -2147483647i, var_1.b.b.x, u_input.a.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.b.b.x, 72918i, var_1.b.b.x), vec4<i32>(var_1.b.b.x, var_2.b.x, 2147483647i, var_2.b.x)))));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_1.b.b.x, -8992i), ~func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.a, global0.b.a, var_1.a, var_1.a), vec4<u32>(var_1.a, var_1.a, 33626u, var_1.a)), var_2.b.x & var_0.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.a.x, global0.b.b.a.x))), Struct_3(global0.b.a, var_1.b)).b.b.x), _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.zx, global0.b.b.b), ~var_0), var_2.b >> (~vec2<u32>(4294967295u, var_1.a) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -165f), 2307f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1816f)))), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec3<bool>(true, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~(~vec4<u32>(73026u, 22030u, 30553u, 0u)))), vec4<u32>(global0.b.a, ~var_1.a, ~4294967295u, ~(~1u)), 69439u, countOneBits(~vec4<u32>(global0.b.a ^ 0u, var_1.a, global0.b.a | var_1.a, 1u)));
}

