struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(i32(-2147483648), true, vec2<f32>(944f, 115f), vec2<i32>(1i, 0i), -360f), Struct_1(1i, true, vec2<f32>(-1260f, -1607f), vec2<i32>(19140i, 29741i), 684f), Struct_1(-601i, false, vec2<f32>(2140f, 2160f), vec2<i32>(i32(-2147483648), 2147483647i), 582f));

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec2<i32>(-6483i, i32(-2147483648)), Struct_2(Struct_1(-20973i, false, vec2<f32>(-238f, 140f), vec2<i32>(-1i, -31467i), 429f), vec3<i32>(0i, 0i, -31780i), Struct_1(-15916i, false, vec2<f32>(-1000f, 1000f), vec2<i32>(0i, -1i), -239f), 1i, Struct_1(-44482i, true, vec2<f32>(-1004f, -680f), vec2<i32>(-4727i, 2147483647i), -1328f)), vec3<i32>(0i, -17864i, 0i), vec4<f32>(786f, -1581f, 865f, -1285f)), Struct_4(vec2<i32>(2147483647i, 2147483647i), Struct_2(Struct_1(-34658i, true, vec2<f32>(-2064f, 2436f), vec2<i32>(i32(-2147483648), 10082i), 2167f), vec3<i32>(-22298i, 0i, -23035i), Struct_1(8071i, true, vec2<f32>(1363f, 1371f), vec2<i32>(i32(-2147483648), -29267i), 607f), 33651i, Struct_1(-19259i, true, vec2<f32>(-1503f, -1703f), vec2<i32>(2147483647i, -59206i), -1000f)), vec3<i32>(-13631i, -1i, -932i), vec4<f32>(-471f, 671f, 468f, -464f)), Struct_4(vec2<i32>(28960i, -53280i), Struct_2(Struct_1(i32(-2147483648), false, vec2<f32>(1044f, 304f), vec2<i32>(i32(-2147483648), -6927i), 472f), vec3<i32>(i32(-2147483648), 2147483647i, -1i), Struct_1(2147483647i, true, vec2<f32>(627f, -1598f), vec2<i32>(-27695i, -1433i), -555f), i32(-2147483648), Struct_1(-15256i, false, vec2<f32>(1098f, 2077f), vec2<i32>(-3416i, i32(-2147483648)), 119f)), vec3<i32>(i32(-2147483648), 50217i, 2147483647i), vec4<f32>(-444f, -110f, -1293f, 186f)), Struct_4(vec2<i32>(-15285i, -22012i), Struct_2(Struct_1(-45822i, false, vec2<f32>(389f, -1969f), vec2<i32>(-36903i, 8264i), -268f), vec3<i32>(-1i, -30738i, -21866i), Struct_1(2147483647i, true, vec2<f32>(-582f, -723f), vec2<i32>(-33470i, -1i), 623f), -2971i, Struct_1(i32(-2147483648), false, vec2<f32>(797f, 1724f), vec2<i32>(i32(-2147483648), 5470i), 1579f)), vec3<i32>(2147483647i, i32(-2147483648), -3227i), vec4<f32>(-833f, 770f, 336f, 960f)), Struct_4(vec2<i32>(22217i, i32(-2147483648)), Struct_2(Struct_1(-16523i, false, vec2<f32>(-830f, -1201f), vec2<i32>(2147483647i, -36758i), 160f), vec3<i32>(1i, 59714i, 0i), Struct_1(i32(-2147483648), true, vec2<f32>(-1000f, -1378f), vec2<i32>(-21445i, 0i), -588f), -60343i, Struct_1(6542i, false, vec2<f32>(-348f, -1294f), vec2<i32>(i32(-2147483648), 0i), -394f)), vec3<i32>(1i, 33236i, 0i), vec4<f32>(-2281f, -425f, -605f, 954f)), Struct_4(vec2<i32>(-29961i, 6397i), Struct_2(Struct_1(34831i, true, vec2<f32>(-1857f, 1171f), vec2<i32>(-44404i, -31466i), -794f), vec3<i32>(1i, 50370i, 1i), Struct_1(-10657i, false, vec2<f32>(-1196f, -1000f), vec2<i32>(8916i, 1i), 2962f), 14152i, Struct_1(0i, true, vec2<f32>(2038f, -1482f), vec2<i32>(25778i, 1i), 565f)), vec3<i32>(2147483647i, 0i, 2147483647i), vec4<f32>(1674f, -1000f, -1044f, 2773f)), Struct_4(vec2<i32>(8588i, 0i), Struct_2(Struct_1(20097i, false, vec2<f32>(-312f, 330f), vec2<i32>(18642i, -22634i), -1187f), vec3<i32>(8427i, -44809i, 77603i), Struct_1(i32(-2147483648), true, vec2<f32>(168f, 133f), vec2<i32>(i32(-2147483648), 2147483647i), -1508f), i32(-2147483648), Struct_1(74050i, true, vec2<f32>(-1360f, 116f), vec2<i32>(0i, i32(-2147483648)), 1126f)), vec3<i32>(-43503i, i32(-2147483648), 10311i), vec4<f32>(-1170f, -716f, 761f, 794f)), Struct_4(vec2<i32>(-3501i, i32(-2147483648)), Struct_2(Struct_1(1i, false, vec2<f32>(-1344f, 275f), vec2<i32>(13114i, 9501i), -658f), vec3<i32>(-2138i, 7832i, 4062i), Struct_1(59929i, true, vec2<f32>(-273f, -246f), vec2<i32>(i32(-2147483648), -1i), 1746f), 0i, Struct_1(2147483647i, false, vec2<f32>(644f, -460f), vec2<i32>(1i, 0i), 2766f)), vec3<i32>(15479i, -26507i, 2147483647i), vec4<f32>(-1252f, -1015f, -1020f, -172f)), Struct_4(vec2<i32>(1i, 0i), Struct_2(Struct_1(1i, false, vec2<f32>(-299f, 1776f), vec2<i32>(5458i, 38969i), 1439f), vec3<i32>(2147483647i, -21140i, 0i), Struct_1(50599i, false, vec2<f32>(-193f, 1828f), vec2<i32>(-2138i, 2147483647i), -201f), 9138i, Struct_1(18818i, false, vec2<f32>(-1152f, 1421f), vec2<i32>(-17641i, 0i), -1690f)), vec3<i32>(0i, 23852i, 1i), vec4<f32>(370f, -1314f, -371f, 292f)), Struct_4(vec2<i32>(-1i, 8861i), Struct_2(Struct_1(1i, true, vec2<f32>(1057f, -387f), vec2<i32>(-28486i, -1i), -1000f), vec3<i32>(2147483647i, 41823i, 70619i), Struct_1(-25619i, false, vec2<f32>(-464f, 594f), vec2<i32>(-1i, -28196i), 430f), 1i, Struct_1(29488i, true, vec2<f32>(1642f, -1153f), vec2<i32>(70812i, 2147483647i), -1204f)), vec3<i32>(-1i, -40651i, 27348i), vec4<f32>(-1830f, -1000f, 745f, -1550f)), Struct_4(vec2<i32>(2147483647i, 2147483647i), Struct_2(Struct_1(1i, false, vec2<f32>(413f, -296f), vec2<i32>(0i, 19696i), -2079f), vec3<i32>(0i, -2717i, 11106i), Struct_1(0i, false, vec2<f32>(266f, -750f), vec2<i32>(-1i, 48398i), -1294f), i32(-2147483648), Struct_1(6281i, false, vec2<f32>(-371f, 463f), vec2<i32>(0i, 48388i), 440f)), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec4<f32>(1418f, 224f, -297f, -154f)), Struct_4(vec2<i32>(1i, -45819i), Struct_2(Struct_1(-13840i, true, vec2<f32>(327f, 1000f), vec2<i32>(1i, -1i), 684f), vec3<i32>(-1i, -14163i, i32(-2147483648)), Struct_1(i32(-2147483648), false, vec2<f32>(160f, 174f), vec2<i32>(-40522i, -60476i), -106f), i32(-2147483648), Struct_1(0i, false, vec2<f32>(-630f, 179f), vec2<i32>(i32(-2147483648), -1i), -1157f)), vec3<i32>(-1i, -1i, 25231i), vec4<f32>(-1000f, -844f, 331f, -167f)), Struct_4(vec2<i32>(2147483647i, -14542i), Struct_2(Struct_1(16362i, false, vec2<f32>(-1849f, -1158f), vec2<i32>(-5988i, 4631i), 105f), vec3<i32>(2147483647i, 2147483647i, -1i), Struct_1(2147483647i, true, vec2<f32>(186f, -754f), vec2<i32>(2147483647i, 15902i), 1357f), 2147483647i, Struct_1(-14375i, true, vec2<f32>(258f, -1000f), vec2<i32>(i32(-2147483648), 23301i), 187f)), vec3<i32>(-16591i, 7374i, 2147483647i), vec4<f32>(-955f, -293f, 3701f, 217f)), Struct_4(vec2<i32>(70271i, 0i), Struct_2(Struct_1(-52136i, true, vec2<f32>(-916f, 495f), vec2<i32>(-1i, 10274i), -666f), vec3<i32>(78953i, -1i, -1i), Struct_1(i32(-2147483648), false, vec2<f32>(-1000f, 555f), vec2<i32>(-39531i, -12887i), 336f), i32(-2147483648), Struct_1(20311i, false, vec2<f32>(2233f, -712f), vec2<i32>(13447i, 1i), -708f)), vec3<i32>(2147483647i, -5567i, 2147483647i), vec4<f32>(-318f, -251f, -1509f, -1298f)), Struct_4(vec2<i32>(-14466i, -1i), Struct_2(Struct_1(-16958i, true, vec2<f32>(-1213f, 1101f), vec2<i32>(-19709i, 1i), 1499f), vec3<i32>(i32(-2147483648), -1i, 1i), Struct_1(0i, true, vec2<f32>(1097f, -229f), vec2<i32>(-1i, 0i), 617f), -20086i, Struct_1(-17715i, false, vec2<f32>(491f, 651f), vec2<i32>(-20364i, 0i), 601f)), vec3<i32>(-33307i, -30501i, 1i), vec4<f32>(1860f, -837f, 2213f, 2968f)), Struct_4(vec2<i32>(1i, 1i), Struct_2(Struct_1(-1i, false, vec2<f32>(1003f, -714f), vec2<i32>(60968i, -8931i), -1689f), vec3<i32>(-1i, -15152i, 0i), Struct_1(-1i, true, vec2<f32>(-2290f, -1000f), vec2<i32>(0i, 6698i), 2227f), -300i, Struct_1(i32(-2147483648), true, vec2<f32>(-437f, -975f), vec2<i32>(-43810i, -1i), 734f)), vec3<i32>(-32508i, 1i, -30234i), vec4<f32>(496f, -259f, 826f, 1000f)), Struct_4(vec2<i32>(1i, -85163i), Struct_2(Struct_1(-4086i, true, vec2<f32>(935f, -185f), vec2<i32>(-17939i, -32424i), 211f), vec3<i32>(-1i, 39514i, 2147483647i), Struct_1(19955i, true, vec2<f32>(-706f, 2085f), vec2<i32>(1i, -4497i), -690f), -9155i, Struct_1(-1i, false, vec2<f32>(772f, 343f), vec2<i32>(2147483647i, 26620i), -1803f)), vec3<i32>(2147483647i, 12828i, 2147483647i), vec4<f32>(1513f, 374f, 1224f, -297f)), Struct_4(vec2<i32>(2147483647i, -20427i), Struct_2(Struct_1(7159i, false, vec2<f32>(-472f, -1461f), vec2<i32>(-16242i, 12974i), 919f), vec3<i32>(-15234i, 49143i, -15054i), Struct_1(0i, false, vec2<f32>(306f, 2665f), vec2<i32>(22627i, 31375i), 279f), 56247i, Struct_1(-6623i, true, vec2<f32>(375f, -1517f), vec2<i32>(0i, 1i), 1000f)), vec3<i32>(-9703i, -1098i, -10272i), vec4<f32>(-1000f, 1213f, -411f, -468f)), Struct_4(vec2<i32>(0i, 0i), Struct_2(Struct_1(-54517i, true, vec2<f32>(-1000f, 810f), vec2<i32>(0i, 32040i), 1890f), vec3<i32>(16305i, -34529i, 0i), Struct_1(1i, false, vec2<f32>(-469f, 683f), vec2<i32>(i32(-2147483648), -13242i), 859f), 0i, Struct_1(2147483647i, true, vec2<f32>(509f, -960f), vec2<i32>(1i, -15117i), -444f)), vec3<i32>(8605i, -29502i, -1251i), vec4<f32>(782f, -230f, -831f, -164f)), Struct_4(vec2<i32>(-53423i, -1i), Struct_2(Struct_1(-1i, true, vec2<f32>(-417f, -326f), vec2<i32>(47629i, 0i), -217f), vec3<i32>(2147483647i, -6625i, 0i), Struct_1(i32(-2147483648), false, vec2<f32>(962f, 722f), vec2<i32>(-1i, 2147483647i), -1119f), -1i, Struct_1(0i, false, vec2<f32>(2289f, 2317f), vec2<i32>(1i, 7758i), 1000f)), vec3<i32>(35704i, 2147483647i, -1i), vec4<f32>(-1511f, 2175f, -926f, 399f)), Struct_4(vec2<i32>(i32(-2147483648), -37619i), Struct_2(Struct_1(35225i, true, vec2<f32>(-552f, -1000f), vec2<i32>(12702i, 2147483647i), -1869f), vec3<i32>(-1i, 1i, 1i), Struct_1(14431i, false, vec2<f32>(-821f, -284f), vec2<i32>(i32(-2147483648), -14062i), -1154f), 2147483647i, Struct_1(-1i, false, vec2<f32>(1734f, 386f), vec2<i32>(27698i, -91386i), 653f)), vec3<i32>(2147483647i, 9640i, i32(-2147483648)), vec4<f32>(482f, 720f, -309f, -731f)), Struct_4(vec2<i32>(772i, 2147483647i), Struct_2(Struct_1(i32(-2147483648), false, vec2<f32>(-2218f, -1121f), vec2<i32>(21371i, -29555i), -847f), vec3<i32>(1i, 2147483647i, 0i), Struct_1(-10880i, false, vec2<f32>(-1022f, -747f), vec2<i32>(2147483647i, 22672i), -1849f), 0i, Struct_1(-1i, true, vec2<f32>(-140f, 167f), vec2<i32>(0i, i32(-2147483648)), 1162f)), vec3<i32>(0i, -1i, 12701i), vec4<f32>(393f, -732f, -1518f, -555f)), Struct_4(vec2<i32>(1i, 1i), Struct_2(Struct_1(-11279i, true, vec2<f32>(-2859f, 520f), vec2<i32>(0i, -14607i), 821f), vec3<i32>(1i, 0i, -70526i), Struct_1(15319i, true, vec2<f32>(704f, -1523f), vec2<i32>(2057i, -6496i), 723f), 2122i, Struct_1(-35586i, false, vec2<f32>(797f, -904f), vec2<i32>(22005i, i32(-2147483648)), 131f)), vec3<i32>(30247i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-963f, 396f, 1970f, 1173f)), Struct_4(vec2<i32>(i32(-2147483648), 0i), Struct_2(Struct_1(-10139i, false, vec2<f32>(145f, 2198f), vec2<i32>(1i, i32(-2147483648)), 636f), vec3<i32>(-763i, -1i, 1i), Struct_1(1i, true, vec2<f32>(311f, 1865f), vec2<i32>(-62484i, 1i), 382f), i32(-2147483648), Struct_1(-1i, true, vec2<f32>(1109f, -608f), vec2<i32>(i32(-2147483648), -2648i), -950f)), vec3<i32>(i32(-2147483648), 64227i, 2147483647i), vec4<f32>(463f, 1251f, 1213f, 261f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32) -> vec2<i32> {
    let var_0 = firstLeadingBit(min(abs(u_input.c.zx), vec2<u32>(~u_input.c.x, 1u)));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_1 = any(vec3<bool>(!(_wgslsmith_f_op_f32(arg_2 * 1936f) >= _wgslsmith_f_op_f32(arg_2 * -601f)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true)), any(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, all(vec4<bool>(false, true, true, true)), true))));
    var_1 = true;
    return ~(~(-vec2<i32>(1i, 1i)) ^ -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 17585i), vec2<i32>(u_input.d, u_input.b))) & ~vec2<i32>(u_input.b, _wgslsmith_mult_i32(2147483647i, u_input.a) & abs(-21217i));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_3 {
    global1 = array<Struct_4, 24>();
    var var_0 = Struct_5(u_input.c.x, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1448f, arg_0.e.c.x, arg_0.e.e)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.e, arg_0.a.e, arg_0.e.c.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1137f, 789f, 210f), vec3<f32>(arg_0.a.e, -1000f, arg_0.c.e), true)))), _wgslsmith_clamp_u32(u_input.c.x, ~(u_input.c.x >> (11890u % 32u)), select(u_input.c.x >> (u_input.c.x % 32u), u_input.c.x, !arg_1.x)), Struct_1(-4306i, false | (arg_1.x && arg_0.a.b), _wgslsmith_f_op_vec2_f32(ceil(arg_0.c.c)), func_3(u_input.c.x, ~u_input.c.x, _wgslsmith_f_op_f32(sign(arg_0.e.c.x))), arg_0.a.c.x), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, -2147483647i), arg_0.d), -22989i)));
    global0 = array<Struct_1, 3>();
    var_0 = Struct_5(~reverseBits(_wgslsmith_mult_u32(~10738u, min(var_0.b.b, 35960u))), var_0.b);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.e.e, 1114f, 204f), var_0.b.a)))))), 116223u, arg_0.c, var_0.b.d);
    return Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1015f, var_1.a.x)), -265f), arg_0.c.e, -482f))), firstTrailingBit(38213u), var_0.b.c, vec2<i32>(var_1.c.d.x, arg_0.d));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = func_2(Struct_2(Struct_1(u_input.a, func_2(Struct_2(Struct_1(53886i, arg_2.x, vec2<f32>(-1259f, -1163f), arg_3.b.c.d, arg_3.b.c.e), vec3<i32>(u_input.d, u_input.a, 0i), global0[_wgslsmith_index_u32(arg_0.b, 3u)], u_input.a, arg_0.c), vec2<bool>(true, arg_0.c.b)).d.x < (i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.yy)))), arg_3.b.c.d, 297f), select(-vec3<i32>(-2147483647i, arg_3.b.d.x, arg_3.b.d.x), -(~vec3<i32>(2147483647i, 2147483647i, u_input.d)), false), arg_0.c, u_input.a, Struct_1(_wgslsmith_mod_i32(arg_0.c.a & 3095i, 28461i), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.b.a.xz, vec2<f32>(arg_0.c.e, arg_3.b.c.c.x))), vec2<i32>(firstLeadingBit(-28086i), -45627i), -905f)), arg_2);
    global1 = array<Struct_4, 24>();
    global0 = array<Struct_1, 3>();
    var var_1 = select(vec3<bool>(!arg_0.c.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x - 1133f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) * _wgslsmith_f_op_f32(abs(1388f))), var_0.c.b | false), !vec3<bool>(func_2(Struct_2(var_0.c, vec3<i32>(var_0.c.d.x, arg_1, u_input.d), global0[_wgslsmith_index_u32(46775u, 3u)], 1i, global0[_wgslsmith_index_u32(arg_3.b.b, 3u)]), arg_2).c.b, !any(vec3<bool>(false, arg_2.x, arg_0.c.b)), any(vec4<bool>(var_0.c.b, arg_2.x, false, true))), var_0.c.b);
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_i32(-17193i, arg_1), false, _wgslsmith_f_op_vec2_f32(arg_0.c.c + vec2<f32>(arg_3.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2178f))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(arg_3.b.c.d, vec2<i32>(1i, arg_0.c.d.x)), vec2<i32>(-1i) * -vec2<i32>(var_0.d.x, arg_0.c.d.x)), _wgslsmith_f_op_f32(-368f * arg_3.b.c.e)), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(-9157i, arg_3.b.c.a, arg_0.c.d.x)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b, -3704i, u_input.d), vec3<i32>(var_0.c.a, arg_3.b.c.d.x, var_0.d.x), vec3<bool>(var_0.c.b, var_0.c.b, var_0.c.b)), countOneBits(vec3<i32>(arg_3.b.c.d.x, -2147483647i, u_input.b))), select(~vec3<i32>(arg_3.b.c.a, arg_3.b.c.d.x, u_input.b), firstLeadingBit(vec3<i32>(-2147483647i, -55595i, -5788i)), var_0.c.b))), Struct_1(i32(-1i) * -12859i, any(select(vec3<bool>(false, var_1.x, arg_3.b.c.b), vec3<bool>(true, arg_2.x, true), true)), _wgslsmith_f_op_vec2_f32(floor(var_0.c.c)), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b.a.x, arg_3.b.c.e) + _wgslsmith_f_op_f32(1197f + arg_0.c.e)) + _wgslsmith_f_op_f32(floor(715f)))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 51710i, arg_3.b.c.d.x) ^ vec3<i32>(-1i, arg_0.c.a, -32271i), countOneBits(vec3<i32>(0i, var_0.c.d.x, arg_3.b.c.a))), vec3<i32>(7242i, firstLeadingBit(-38856i), reverseBits(var_0.c.d.x) | 1i)), Struct_1(~(~2147483647i), var_0.c.b, var_0.c.c, _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b, ~1i), vec2<i32>(func_3(19426u, 45111u, -1656f).x, 67292i << (arg_3.b.b % 32u))), _wgslsmith_f_op_f32(abs(-1000f))));
    return -vec2<i32>((arg_3.b.d.x ^ -2147483647i) | u_input.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, 0i), var_2.a.a) & 1i);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = !(true | any(vec2<bool>(false, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(-476f + -1196f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1589f, 623f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(834f)) - _wgslsmith_f_op_f32(-878f - 1000f)), _wgslsmith_f_op_f32(-1249f * _wgslsmith_f_op_f32(f32(-1f) * -779f))))));
    global1 = array<Struct_4, 24>();
    let var_2 = !select(true, (arg_0.x >= min(arg_0.x, arg_1.x)) == true, all(vec4<bool>(true, true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(abs(-819f));
    return Struct_4(select(vec2<i32>(16849i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -31130i, -1i), max(vec4<i32>(-1i, -1i, arg_0.x, arg_1.x), arg_0))), _wgslsmith_add_vec2_i32(func_4(func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], vec3<i32>(arg_1.x, 10201i, 2147483647i), global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<bool>(var_2, var_2)), max(-18933i, u_input.a), vec2<bool>(var_2, true), Struct_5(74382u, Struct_3(vec3<f32>(var_1.x, var_1.x, var_1.x), u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], arg_0.yx))), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(arg_1.x, arg_1.x)), vec2<i32>(u_input.a, arg_1.x) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))), !select(vec2<bool>(var_2, true), vec2<bool>(true, true), true)), Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(-23757i, true, vec2<f32>(var_1.x, var_1.x), vec2<i32>(1i, arg_1.x), var_1.x), arg_1.yzw, global0[_wgslsmith_index_u32(0u, 3u)], u_input.a, Struct_1(arg_0.x, false, vec2<f32>(var_1.x, var_3), vec2<i32>(2147483647i, 0i), 1146f)), vec2<bool>(true, var_2)).c, _wgslsmith_sub_vec3_i32(arg_0.zzx, vec3<i32>(arg_1.x, arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 2147483647i, func_2(Struct_2(Struct_1(u_input.a, false, vec2<f32>(1210f, var_3), vec2<i32>(arg_1.x, 12459i), var_1.x), arg_0.zzz, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], arg_0.x, Struct_1(-1i, var_2, vec2<f32>(562f, var_3), vec2<i32>(-44208i, arg_1.x), -876f)), vec2<bool>(var_2, var_2)).c), !vec2<bool>(false, var_2)).c, -abs(vec3<i32>(arg_0.x, arg_1.x, -25429i)), func_2(Struct_2(func_2(Struct_2(global0[_wgslsmith_index_u32(15985u, 3u)], vec3<i32>(arg_0.x, u_input.b, arg_0.x), Struct_1(29939i, var_2, var_1.ww, arg_1.yy, 1860f), -46659i, Struct_1(38521i, false, vec2<f32>(1053f, var_3), arg_0.wz, var_3)), vec2<bool>(false, false)).c, vec3<i32>(arg_1.x, -2147483647i, u_input.a), Struct_1(arg_1.x, true, vec2<f32>(-873f, -717f), vec2<i32>(-1i, u_input.b), var_1.x), u_input.a, Struct_1(-2147483647i, var_2, var_1.wz, arg_0.xx, var_1.x)), vec2<bool>(var_2, true)).c, u_input.d, global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), u_input.c)), 3u)]), vec3<i32>(25116i, u_input.b, ~7265i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1766f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.c.x, ~29000u, _wgslsmith_div_u32(4294967295u, select(~_wgslsmith_add_u32(u_input.c.x, 4294967295u), 70259u, true)), ~u_input.c.x);
    var_0 = ~vec4<u32>(~4294967295u, ~_wgslsmith_div_u32(var_0.x, 4294967295u), 16886u, var_0.x);
    global1 = array<Struct_4, 24>();
    let var_1 = vec4<i32>(-16419i, _wgslsmith_mult_i32(u_input.b, 21754i ^ _wgslsmith_add_i32(u_input.b, 0i)), _wgslsmith_mult_i32(2147483647i, u_input.b), -1i);
    var var_2 = func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 27704i) | var_1.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.x), var_1.xw), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a, var_1.x), vec4<i32>(var_1.x, -1i, u_input.a, 2147483647i)), ~26i), _wgslsmith_div_i32(reverseBits(var_1.x), 0i)), select(var_1, vec4<i32>(firstTrailingBit(35075i), -33592i, ~var_1.x, var_1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), ~reverseBits(min(vec4<i32>(u_input.a, var_1.x, 2147483647i, 1i), var_1))), var_1);
    let var_3 = func_2(Struct_2(global0[_wgslsmith_index_u32(max(func_2(func_1(vec4<i32>(var_1.x, u_input.b, var_2.c.x, 6260i), var_1).b, !vec2<bool>(var_2.b.a.b, var_2.b.c.b)).b, 4294967295u), 3u)], -(-var_1.zyx & ~var_2.b.b), func_1(var_1, var_1).b.e, min(-func_2(var_2.b, vec2<bool>(var_2.b.a.b, var_2.b.a.b)).c.a, var_2.b.b.x), global0[_wgslsmith_index_u32(u_input.c.x, 3u)]), select(vec2<bool>(!var_2.b.a.b, var_2.b.c.b), select(vec2<bool>(var_2.d.x >= var_2.b.c.e, !var_2.b.a.b), vec2<bool>(true, true), func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], var_1.xxz, Struct_1(0i, true, var_2.d.xz, var_2.c.zz, var_2.b.e.e), 1i, Struct_1(-2147483647i, var_2.b.e.b, vec2<f32>(1000f, var_2.b.a.c.x), vec2<i32>(var_1.x, var_1.x), -122f)), vec2<bool>(var_2.b.c.b, false)).c.b), select(false, var_2.b.a.b, var_2.b.e.b)));
    var var_4 = Struct_4(var_1.yx, func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.c.a, var_3.d.x, 0i, 2147483647i), var_1), reverseBits(vec4<i32>(0i, -2147483647i, u_input.d, var_1.x))), var_1).b, var_1.xzx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.a.e), var_3.c.e, -1000f, _wgslsmith_f_op_f32(max(-1000f, -1402f))) * var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(537f, var_3.c.c.x)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -169f)), 1342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1012f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b.a.c.x, var_3.c.e, var_3.a.x, var_4.b.c.c.x), var_2.d, vec4<bool>(var_4.b.c.b, var_2.b.c.b, var_4.b.e.b, true))))), vec4<f32>(_wgslsmith_f_op_f32(1611f * var_2.b.a.e), _wgslsmith_f_op_f32(floor(1061f)), _wgslsmith_f_op_f32(564f + 804f), _wgslsmith_div_f32(-754f, -962f)))), 1u & _wgslsmith_mult_u32(var_3.b, u_input.c.x), -638f, vec4<u32>(57911u, var_3.b, ~_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(var_3.b, u_input.c.x)), u_input.c.x) >> ((~vec4<u32>(var_0.x, 1u, 4294967295u, 4294967295u) | vec4<u32>(var_0.x, ~u_input.c.x, ~1u, countOneBits(29015u))) % vec4<u32>(32u)), var_3.d.x);
}

