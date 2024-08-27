struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(39872u, 4294967295u, 4294967295u, 4294967295u, 16016u, 1u, 4294967295u, 37527u, 1u, 1u, 52108u, 0u, 36997u, 4294967295u, 1u, 103153u, 1u, 0u, 43684u, 4294967295u, 0u, 1u, 0u);

var<private> global1: bool = true;

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -2044i), vec4<i32>(i32(-2147483648), 13498i, 13573i, i32(-2147483648)), vec4<i32>(-23748i, 21017i, 0i, -1i), vec4<i32>(-1i, i32(-2147483648), 0i, -5603i), vec4<i32>(0i, -1i, 19784i, 7313i), vec4<i32>(-26555i, 0i, 72925i, 1i), vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -45666i, -45501i, -14118i), vec4<i32>(-1i, 7363i, 1i, 45647i), vec4<i32>(i32(-2147483648), 1i, 0i, 12361i), vec4<i32>(-87441i, 51867i, 800i, 36087i), vec4<i32>(i32(-2147483648), 1i, -21554i, -1i), vec4<i32>(-41931i, 1i, 0i, -1i), vec4<i32>(21893i, 1i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(-1i, 13734i, 18951i, 0i), vec4<i32>(1i, 0i, 2147483647i, -97299i), vec4<i32>(2147483647i, 0i, 25513i, -1695i), vec4<i32>(-36639i, 0i, -6454i, -52154i), vec4<i32>(-720i, 1i, -21101i, -16313i), vec4<i32>(i32(-2147483648), -32733i, 0i, -1i), vec4<i32>(1i, -21178i, -1i, -73517i));

var<private> global3: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(1i, vec2<f32>(463f, 1466f), true, vec2<f32>(728f, -703f)), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(819f, 906f), true, vec2<f32>(-853f, 1053f)), Struct_1(-34114i, vec2<f32>(425f, -586f), false, vec2<f32>(815f, -966f))), Struct_2(Struct_1(1i, vec2<f32>(1513f, -162f), false, vec2<f32>(-843f, -626f)), Struct_1(35544i, vec2<f32>(1218f, -857f), true, vec2<f32>(-694f, -861f)))), Struct_3(Struct_1(0i, vec2<f32>(1586f, 1367f), false, vec2<f32>(-798f, 145f)), Struct_2(Struct_1(1i, vec2<f32>(-1468f, -1000f), false, vec2<f32>(-656f, -188f)), Struct_1(-312i, vec2<f32>(-2558f, 274f), false, vec2<f32>(-401f, -363f))), Struct_2(Struct_1(23811i, vec2<f32>(-810f, -595f), false, vec2<f32>(114f, -265f)), Struct_1(6229i, vec2<f32>(469f, 914f), false, vec2<f32>(-120f, -1019f)))), Struct_3(Struct_1(-1i, vec2<f32>(387f, 721f), true, vec2<f32>(-557f, 875f)), Struct_2(Struct_1(-8233i, vec2<f32>(207f, -959f), true, vec2<f32>(-465f, -664f)), Struct_1(4617i, vec2<f32>(-1022f, 1067f), false, vec2<f32>(-727f, -934f))), Struct_2(Struct_1(1i, vec2<f32>(1253f, -558f), true, vec2<f32>(-453f, 1488f)), Struct_1(33594i, vec2<f32>(1693f, 395f), true, vec2<f32>(557f, -1000f)))), Struct_3(Struct_1(1i, vec2<f32>(262f, -850f), true, vec2<f32>(627f, 1100f)), Struct_2(Struct_1(1i, vec2<f32>(2006f, 1000f), false, vec2<f32>(-663f, -2325f)), Struct_1(2147483647i, vec2<f32>(539f, 166f), true, vec2<f32>(865f, -683f))), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(-861f, -1000f), true, vec2<f32>(1745f, 984f)), Struct_1(2613i, vec2<f32>(171f, -215f), false, vec2<f32>(1000f, -912f)))), Struct_3(Struct_1(i32(-2147483648), vec2<f32>(-340f, -1000f), false, vec2<f32>(-1000f, -413f)), Struct_2(Struct_1(1i, vec2<f32>(-628f, 1000f), true, vec2<f32>(-2532f, -1763f)), Struct_1(i32(-2147483648), vec2<f32>(-1828f, 965f), false, vec2<f32>(-636f, -753f))), Struct_2(Struct_1(2703i, vec2<f32>(-793f, 342f), true, vec2<f32>(385f, -125f)), Struct_1(-8515i, vec2<f32>(-924f, 1378f), false, vec2<f32>(884f, 398f)))), Struct_3(Struct_1(-55755i, vec2<f32>(-2047f, -1373f), true, vec2<f32>(-988f, 1000f)), Struct_2(Struct_1(2147483647i, vec2<f32>(159f, 1000f), false, vec2<f32>(-212f, -1553f)), Struct_1(55178i, vec2<f32>(-877f, -489f), false, vec2<f32>(-396f, -766f))), Struct_2(Struct_1(21221i, vec2<f32>(660f, 450f), true, vec2<f32>(-1074f, 121f)), Struct_1(-1i, vec2<f32>(-1345f, 575f), false, vec2<f32>(582f, 335f)))), Struct_3(Struct_1(4020i, vec2<f32>(831f, 743f), false, vec2<f32>(-1582f, 1528f)), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(177f, 1498f), false, vec2<f32>(1222f, -1351f)), Struct_1(-347i, vec2<f32>(1709f, -1349f), false, vec2<f32>(1055f, 200f))), Struct_2(Struct_1(2147483647i, vec2<f32>(613f, -1000f), false, vec2<f32>(1000f, -474f)), Struct_1(33885i, vec2<f32>(1000f, 209f), true, vec2<f32>(1000f, -1501f)))), Struct_3(Struct_1(-42957i, vec2<f32>(-2070f, -1168f), false, vec2<f32>(749f, 665f)), Struct_2(Struct_1(2147483647i, vec2<f32>(725f, -663f), true, vec2<f32>(-113f, -102f)), Struct_1(-1i, vec2<f32>(-1491f, -1170f), true, vec2<f32>(-1260f, 659f))), Struct_2(Struct_1(21794i, vec2<f32>(346f, -617f), true, vec2<f32>(-715f, -190f)), Struct_1(31734i, vec2<f32>(580f, 492f), true, vec2<f32>(270f, -1135f)))), Struct_3(Struct_1(-48116i, vec2<f32>(1008f, -172f), true, vec2<f32>(187f, -836f)), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(1556f, -921f), true, vec2<f32>(-188f, -1766f)), Struct_1(i32(-2147483648), vec2<f32>(274f, 335f), true, vec2<f32>(-753f, 680f))), Struct_2(Struct_1(-13064i, vec2<f32>(-1060f, -843f), false, vec2<f32>(-1149f, -709f)), Struct_1(13784i, vec2<f32>(-1299f, 159f), false, vec2<f32>(-137f, 539f)))), Struct_3(Struct_1(-32023i, vec2<f32>(688f, -181f), false, vec2<f32>(371f, 1000f)), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(1908f, -371f), true, vec2<f32>(-413f, -429f)), Struct_1(19350i, vec2<f32>(1000f, 180f), true, vec2<f32>(186f, 155f))), Struct_2(Struct_1(i32(-2147483648), vec2<f32>(225f, 661f), false, vec2<f32>(1000f, 1000f)), Struct_1(20905i, vec2<f32>(-553f, 191f), false, vec2<f32>(1259f, -1084f)))), Struct_3(Struct_1(9556i, vec2<f32>(-206f, 564f), false, vec2<f32>(701f, -1531f)), Struct_2(Struct_1(-8548i, vec2<f32>(-191f, 800f), true, vec2<f32>(-2278f, 1104f)), Struct_1(1i, vec2<f32>(841f, 741f), true, vec2<f32>(-1000f, 391f))), Struct_2(Struct_1(1i, vec2<f32>(1121f, 1149f), false, vec2<f32>(-1206f, -582f)), Struct_1(1i, vec2<f32>(1537f, 685f), true, vec2<f32>(1000f, -1152f)))), Struct_3(Struct_1(-4387i, vec2<f32>(1644f, -1633f), false, vec2<f32>(669f, 2137f)), Struct_2(Struct_1(1i, vec2<f32>(1629f, 164f), false, vec2<f32>(-219f, 243f)), Struct_1(-1i, vec2<f32>(375f, -758f), true, vec2<f32>(-506f, 342f))), Struct_2(Struct_1(-28492i, vec2<f32>(596f, 2468f), false, vec2<f32>(140f, -327f)), Struct_1(-1i, vec2<f32>(-162f, 676f), true, vec2<f32>(-2016f, 1089f)))), Struct_3(Struct_1(-4862i, vec2<f32>(-1744f, 1224f), false, vec2<f32>(-549f, 1348f)), Struct_2(Struct_1(2192i, vec2<f32>(-1255f, -517f), true, vec2<f32>(-216f, 964f)), Struct_1(1i, vec2<f32>(1061f, -1367f), false, vec2<f32>(1704f, 553f))), Struct_2(Struct_1(-1474i, vec2<f32>(1239f, 916f), true, vec2<f32>(1824f, 1150f)), Struct_1(-7238i, vec2<f32>(-1410f, -189f), false, vec2<f32>(-622f, -2177f)))), Struct_3(Struct_1(-20987i, vec2<f32>(418f, 1218f), false, vec2<f32>(2976f, 419f)), Struct_2(Struct_1(29789i, vec2<f32>(-948f, -993f), false, vec2<f32>(468f, -606f)), Struct_1(i32(-2147483648), vec2<f32>(-1245f, -1000f), true, vec2<f32>(731f, -363f))), Struct_2(Struct_1(-51202i, vec2<f32>(489f, -1306f), false, vec2<f32>(-1010f, 783f)), Struct_1(1i, vec2<f32>(-185f, -2064f), false, vec2<f32>(-774f, -771f)))), Struct_3(Struct_1(23518i, vec2<f32>(-742f, -1024f), false, vec2<f32>(691f, 1497f)), Struct_2(Struct_1(-903i, vec2<f32>(-197f, -592f), false, vec2<f32>(-175f, 502f)), Struct_1(-3330i, vec2<f32>(216f, 159f), false, vec2<f32>(-682f, 113f))), Struct_2(Struct_1(2147483647i, vec2<f32>(-1421f, -1215f), false, vec2<f32>(-647f, -1654f)), Struct_1(24036i, vec2<f32>(-526f, 690f), false, vec2<f32>(927f, 831f)))));

var<private> global4: array<f32, 21> = array<f32, 21>(-478f, -1380f, -642f, -279f, -1044f, 953f, -1397f, 301f, -264f, -719f, 275f, -256f, -346f, -1126f, 1162f, 473f, 1000f, -465f, 520f, 1370f, -1504f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec2_u32(arg_0, ~vec2<u32>(max(_wgslsmith_add_u32(22705u, 1u), _wgslsmith_mod_u32(67971u, global0[_wgslsmith_index_u32(0u, 23u)])), 1062u));
    var var_1 = -1000f;
    var var_2 = Struct_1(_wgslsmith_mult_i32(0i, u_input.b), arg_3.c.a.d, select(arg_1, u_input.c <= (u_input.c ^ arg_0.x), firstLeadingBit(~arg_0.x) >= u_input.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 23u)], 23u)], 21u)], _wgslsmith_div_f32(arg_3.b.a.b.x, 800f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(u_input.e, 21u)])), global4[_wgslsmith_index_u32(36642u, 21u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.b.d.x, -537f))));
    let var_3 = 314u;
    return _wgslsmith_f_op_vec2_f32(var_2.d * var_2.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    global4 = array<f32, 21>();
    global3 = array<Struct_3, 15>();
    let var_0 = vec2<i32>(select(-18024i, _wgslsmith_sub_i32(reverseBits(2147483647i), arg_1.a.a), true), arg_1.b.b.a);
    var var_1 = Struct_2(arg_1.b.b, Struct_1(-38914i, arg_0.yx, true, vec2<f32>(arg_0.x, -1172f)));
    global1 = arg_1.a.c & var_1.b.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1216f)), arg_1.b.b.d.x))) >= 447f;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_add_vec2_i32(abs(vec2<i32>(16750i, u_input.d.x)), vec2<i32>(u_input.b, u_input.a.x));
    global0 = array<u32, 23>();
    var var_1 = vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(38192u, 21u)], global4[_wgslsmith_index_u32(u_input.c, 21u)], -152f), vec3<f32>(global4[_wgslsmith_index_u32(u_input.e, 21u)], 961f, -1800f)))) - vec3<f32>(_wgslsmith_f_op_f32(1094f + 312f), -477f, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.e, u_input.e)), 21u)])), Struct_3(Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(489u, 23u)], 23u)], 1u), true, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17714u, 23u)], 15u)])), true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 21u)], 1433f), vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 21u)], 175f)))), Struct_2(Struct_1(-1i, vec2<f32>(1016f, global4[_wgslsmith_index_u32(0u, 21u)]), true, vec2<f32>(global4[_wgslsmith_index_u32(25917u, 21u)], 1163f)), Struct_1(var_0.x, vec2<f32>(global4[_wgslsmith_index_u32(92489u, 21u)], global4[_wgslsmith_index_u32(u_input.e, 21u)]), true, vec2<f32>(-1652f, global4[_wgslsmith_index_u32(0u, 21u)]))), Struct_2(Struct_1(var_0.x, vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 23u)], 21u)]), true, vec2<f32>(240f, global4[_wgslsmith_index_u32(0u, 21u)])), Struct_1(-1i, vec2<f32>(385f, 979f), true, vec2<f32>(1440f, global4[_wgslsmith_index_u32(u_input.e, 21u)])))), vec2<u32>(~(~55138u), u_input.c)), true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2720f)) + -1337f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(max(u_input.e, 1u), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.e, 21u)] * global4[_wgslsmith_index_u32(6826u, 21u)]), global4[_wgslsmith_index_u32(13865u << (u_input.c % 32u), 21u)]))), 1224f, -470f);
    var var_3 = any(select(vec4<bool>(var_1.x, var_1.x & func_4(var_2.xxx, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 23u)], 15u)], vec2<u32>(u_input.e, u_input.c)), func_4(var_2.wzy, global3[_wgslsmith_index_u32(11561u, 15u)], min(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 23u)], 23u)], 23u)]), vec2<u32>(62527u, u_input.e))), true), vec4<bool>(true | var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false))), var_1.x), vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(-var_2.zyx), global3[_wgslsmith_index_u32(65071u, 15u)], select(vec2<u32>(0u, u_input.c), vec2<u32>(4294967295u, 48324u), true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, var_1.x))), (u_input.b >> (u_input.e % 32u)) == ~u_input.a.x, select(!var_1.x, true, false))));
    return u_input.a.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), any(vec2<bool>(false, true)) | any(vec4<bool>(true, false, true, false))));
    var var_1 = 22448u;
    let var_2 = Struct_1(_wgslsmith_mult_i32(0i, i32(-1i) * -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(2139f * 413f), -1758f), select(_wgslsmith_dot_vec2_i32(~vec2<i32>(11600i, 28542i), -vec2<i32>(2147483647i, -15502i)), func_2(), true) == (_wgslsmith_mult_i32(u_input.b, 0i) ^ -(~u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1478f, _wgslsmith_f_op_f32(-828f - global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 21u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-645f, -178f))), vec2<f32>(968f, -510f))))));
    let var_3 = _wgslsmith_f_op_f32(step(-529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-103f)))))));
    let var_4 = countOneBits(u_input.d);
    return var_2.d;
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    global0 = array<u32, 23>();
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, -282f, arg_2.d.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.e, 21u)], global4[_wgslsmith_index_u32(0u, 21u)], -1198f), vec3<f32>(arg_0.x, arg_0.x, arg_2.b.x)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(arg_1, 21u)])), 830f)))) <= 410f;
    let var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(arg_1, 22u)] ^ u_input.a, firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 22u)])), u_input.a.x, -37819i), firstTrailingBit(2147483647i)) | (i32(-1i) * -51712i);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_f32(floor(-172f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f), 381f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~u_input.e, select((global0[_wgslsmith_index_u32(~121913u, 23u)] | (4294967295u | global0[_wgslsmith_index_u32(29864u, 23u)])) & u_input.c, 1u, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_1()), 1u, Struct_1(-11065i, vec2<f32>(global4[_wgslsmith_index_u32(111771u, 21u)], -328f), false, vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 21u)], global4[_wgslsmith_index_u32(u_input.c, 21u)])))) != global4[_wgslsmith_index_u32(4294967295u, 21u)]), 0u, 20850u);
    global3 = array<Struct_3, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(max((var_0 | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], var_0.x, 4294967295u, 52018u)) ^ (vec4<u32>(u_input.e, u_input.c, u_input.c, var_0.x) | vec4<u32>(5735u, 48020u, var_0.x, global0[_wgslsmith_index_u32(u_input.e, 23u)])), _wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], 29166u, u_input.c, 16197u), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.e, 23u)], u_input.c, u_input.e) | vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26355u, 23u)], 23u)], u_input.e, 0u))), ~vec4<u32>(59894u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.e, 23u)]), u_input.e, firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 23u)])), vec4<bool>(any(vec3<bool>(true, true, true)), abs(u_input.e) <= 58762u, select(-14074i, u_input.b, false) != u_input.b, false)), ~(vec2<i32>(u_input.a.x ^ 0i, u_input.d.x) << (vec2<u32>(2313u, _wgslsmith_div_u32(0u, 1u)) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(var_0.x, 22u)] & ~(vec4<i32>(2147483647i, u_input.b, u_input.d.x, 1i) ^ vec4<i32>(u_input.d.x, -18187i, u_input.d.x, u_input.b)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, 18316i, -29285i), vec4<i32>(u_input.d.x, -10120i, u_input.a.x, u_input.a.x)))));
}

