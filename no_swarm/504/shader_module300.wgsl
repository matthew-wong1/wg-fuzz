struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(22379i, -14017i, -46788i, -58727i, 2147483647i, -40491i, 2147483647i, -3276i, 16332i, i32(-2147483648));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_4, 5>;

var<private> global3: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-344f, 196f, -1731f, -204f), vec4<f32>(1000f, -959f, 149f, -427f), vec4<f32>(-1275f, 1000f, 1052f, -477f), vec4<f32>(591f, -308f, -1010f, -260f), vec4<f32>(1308f, 515f, 432f, -222f), vec4<f32>(343f, -932f, -408f, -1360f), vec4<f32>(243f, -924f, 1000f, 594f), vec4<f32>(-236f, -2832f, 1387f, 1249f), vec4<f32>(905f, -285f, 2507f, 840f), vec4<f32>(1152f, 870f, -229f, -563f), vec4<f32>(327f, -2106f, 1083f, 1569f), vec4<f32>(-1726f, -628f, 1078f, -638f), vec4<f32>(-1000f, 1246f, -415f, -174f), vec4<f32>(1000f, 155f, 455f, -1210f), vec4<f32>(-1947f, -629f, -2938f, -164f), vec4<f32>(-1281f, -869f, -436f, -573f), vec4<f32>(-406f, -1125f, 530f, -508f), vec4<f32>(557f, -652f, 265f, -936f), vec4<f32>(-1794f, -409f, 1559f, -1134f), vec4<f32>(-721f, 2141f, -851f, 411f), vec4<f32>(537f, 1048f, 1587f, -114f), vec4<f32>(886f, 1929f, -2813f, 1308f), vec4<f32>(567f, -1000f, -460f, -158f), vec4<f32>(-1365f, 184f, -269f, -228f), vec4<f32>(833f, -156f, -1065f, -818f), vec4<f32>(2735f, 422f, -551f, 1186f), vec4<f32>(-1388f, -320f, 594f, 713f), vec4<f32>(-1514f, 599f, -1000f, -491f), vec4<f32>(-594f, -1891f, 1000f, 1590f), vec4<f32>(1285f, -266f, -959f, -265f), vec4<f32>(-1268f, 690f, -407f, -1932f), vec4<f32>(-1378f, 571f, -1179f, 1681f));

var<private> global4: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), -530f, vec4<i32>(2147483647i, 4612i, 56700i, 2147483647i)), vec2<f32>(1315f, 1365f), Struct_1(vec2<bool>(false, false), 976f, vec4<i32>(-50520i, 35789i, 22039i, 1i)), Struct_1(vec2<bool>(false, false), -505f, vec4<i32>(23541i, 35325i, 31569i, 21536i))), vec4<i32>(2147483647i, -25686i, -31094i, -5504i), -1i, vec3<i32>(-55427i, i32(-2147483648), -21145i)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), -931f, vec4<i32>(-6657i, -1216i, -71698i, 7963i)), vec2<f32>(785f, -1000f), Struct_1(vec2<bool>(false, false), -965f, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -36996i)), Struct_1(vec2<bool>(true, true), 847f, vec4<i32>(703i, -29347i, -41725i, -43809i))), vec4<i32>(2687i, 0i, 1i, 2147483647i), 0i, vec3<i32>(59418i, 2147483647i, -12031i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), 1000f, vec4<i32>(37697i, 1i, -7232i, 18731i)), vec2<f32>(-400f, -944f), Struct_1(vec2<bool>(false, true), 777f, vec4<i32>(i32(-2147483648), 26798i, i32(-2147483648), 0i)), Struct_1(vec2<bool>(true, true), -191f, vec4<i32>(-69976i, 19812i, i32(-2147483648), -25645i))), vec4<i32>(i32(-2147483648), 0i, 0i, 4047i), 1i, vec3<i32>(-22383i, 1i, 0i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), 105f, vec4<i32>(-22013i, 7200i, i32(-2147483648), 0i)), vec2<f32>(893f, -1000f), Struct_1(vec2<bool>(true, false), 501f, vec4<i32>(-1i, -11401i, 23162i, -8018i)), Struct_1(vec2<bool>(false, false), -564f, vec4<i32>(-26112i, 2147483647i, 1i, 0i))), vec4<i32>(4411i, 1i, 0i, 0i), 33613i, vec3<i32>(0i, -17891i, -5619i)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), -1000f, vec4<i32>(-55219i, 15491i, -1i, 2147483647i)), vec2<f32>(-696f, 152f), Struct_1(vec2<bool>(true, false), 616f, vec4<i32>(-8093i, 0i, -59400i, -1i)), Struct_1(vec2<bool>(false, false), 1383f, vec4<i32>(-1i, -18878i, -1274i, 25873i))), vec4<i32>(-20286i, 30636i, 2147483647i, 2147483647i), -1i, vec3<i32>(1i, 23182i, 2147483647i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), -1204f, vec4<i32>(77600i, -5175i, -18976i, 2147483647i)), vec2<f32>(843f, -396f), Struct_1(vec2<bool>(true, false), -818f, vec4<i32>(1i, 42172i, -52543i, 31002i)), Struct_1(vec2<bool>(false, true), 428f, vec4<i32>(2147483647i, i32(-2147483648), 5105i, i32(-2147483648)))), vec4<i32>(1i, -20228i, 1i, -69076i), -23380i, vec3<i32>(1239i, -3944i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), 1323f, vec4<i32>(7094i, 2092i, -19309i, 1i)), vec2<f32>(-664f, 119f), Struct_1(vec2<bool>(true, false), 762f, vec4<i32>(i32(-2147483648), i32(-2147483648), -39790i, 62780i)), Struct_1(vec2<bool>(false, true), 232f, vec4<i32>(-1475i, i32(-2147483648), 13548i, 1i))), vec4<i32>(6758i, 1i, 101206i, 3372i), -1i, vec3<i32>(10144i, -38261i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), -552f, vec4<i32>(-16574i, -11070i, -15733i, 32385i)), vec2<f32>(1242f, 453f), Struct_1(vec2<bool>(false, false), -2931f, vec4<i32>(2147483647i, 22343i, 1i, 19424i)), Struct_1(vec2<bool>(true, true), -312f, vec4<i32>(0i, 0i, 1i, -19718i))), vec4<i32>(30356i, 1i, 2147483647i, -29571i), 5107i, vec3<i32>(-28650i, 1i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), 919f, vec4<i32>(1649i, 2147483647i, 33739i, -828i)), vec2<f32>(1007f, 2680f), Struct_1(vec2<bool>(false, true), 373f, vec4<i32>(-6638i, 0i, 14159i, 51256i)), Struct_1(vec2<bool>(false, true), 371f, vec4<i32>(1i, -1i, i32(-2147483648), 0i))), vec4<i32>(-26484i, 18575i, 14715i, -12042i), -30550i, vec3<i32>(-7439i, -19611i, 31205i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), 539f, vec4<i32>(-4533i, -5700i, 8133i, 0i)), vec2<f32>(524f, 451f), Struct_1(vec2<bool>(false, false), -581f, vec4<i32>(0i, 38730i, -56376i, -50680i)), Struct_1(vec2<bool>(false, true), -377f, vec4<i32>(-25248i, 1i, 0i, i32(-2147483648)))), vec4<i32>(16869i, 1i, -1i, -11644i), 14296i, vec3<i32>(i32(-2147483648), -2125i, 41717i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), -979f, vec4<i32>(i32(-2147483648), i32(-2147483648), -19497i, -1i)), vec2<f32>(1262f, 1723f), Struct_1(vec2<bool>(true, false), -1426f, vec4<i32>(36i, -77011i, 0i, 0i)), Struct_1(vec2<bool>(false, false), -2664f, vec4<i32>(0i, -32313i, 48444i, 1i))), vec4<i32>(0i, -1i, 0i, 0i), 0i, vec3<i32>(3590i, 2147483647i, i32(-2147483648))), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), -874f, vec4<i32>(2147483647i, -1i, 0i, -10065i)), vec2<f32>(534f, 1474f), Struct_1(vec2<bool>(false, true), 1000f, vec4<i32>(-1i, 31394i, 0i, -13339i)), Struct_1(vec2<bool>(true, true), -415f, vec4<i32>(1i, 0i, -23513i, 2147483647i))), vec4<i32>(2147483647i, -1i, 2147483647i, 1i), i32(-2147483648), vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), -178f, vec4<i32>(40844i, 21879i, -17917i, -1i)), vec2<f32>(795f, -1343f), Struct_1(vec2<bool>(false, true), 836f, vec4<i32>(i32(-2147483648), -1i, -1i, -12656i)), Struct_1(vec2<bool>(false, true), -1117f, vec4<i32>(20356i, -1i, i32(-2147483648), 1i))), vec4<i32>(13334i, -70298i, 2147483647i, 0i), i32(-2147483648), vec3<i32>(-1i, 25386i, -25997i)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), -961f, vec4<i32>(10942i, 0i, 0i, -7840i)), vec2<f32>(733f, -750f), Struct_1(vec2<bool>(false, true), -1000f, vec4<i32>(61073i, 1i, i32(-2147483648), 3383i)), Struct_1(vec2<bool>(true, false), -890f, vec4<i32>(1i, -1i, -10314i, 15358i))), vec4<i32>(25168i, -1i, -36880i, -3020i), 0i, vec3<i32>(-1i, i32(-2147483648), -33051i)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, false), 196f, vec4<i32>(926i, -24021i, 37465i, -11480i)), vec2<f32>(-212f, 121f), Struct_1(vec2<bool>(false, false), 875f, vec4<i32>(1i, 1i, 21640i, -11301i)), Struct_1(vec2<bool>(true, true), 673f, vec4<i32>(2147483647i, i32(-2147483648), -15901i, -8476i))), vec4<i32>(-1i, 53415i, i32(-2147483648), -16382i), -1i, vec3<i32>(10760i, -24601i, -35317i)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), 1637f, vec4<i32>(-25222i, -1i, 2147483647i, -1i)), vec2<f32>(-445f, 1229f), Struct_1(vec2<bool>(false, false), 138f, vec4<i32>(-10748i, 2147483647i, 1i, 30503i)), Struct_1(vec2<bool>(false, true), 1000f, vec4<i32>(0i, -20688i, i32(-2147483648), 2147483647i))), vec4<i32>(i32(-2147483648), -30942i, 2147483647i, 1i), i32(-2147483648), vec3<i32>(-1i, -7896i, 9574i)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> vec2<bool> {
    global4 = array<Struct_4, 16>();
    var var_0 = -firstLeadingBit((_wgslsmith_add_i32(arg_0.c.x, 0i) | _wgslsmith_add_i32(1i, global1.x)) >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), ~7972u, firstLeadingBit(4294967295u)) % 32u));
    var var_1 = _wgslsmith_dot_vec3_u32(abs(min(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(49853u, u_input.a), vec2<u32>(u_input.a, u_input.a)), max(u_input.a, u_input.a)), vec3<u32>(46756u ^ u_input.a, abs(4294967295u), u_input.a))), vec3<u32>(4294967295u, u_input.a, u_input.a));
    let var_2 = _wgslsmith_mod_vec3_i32(arg_0.c.xxw, ~vec3<i32>(_wgslsmith_clamp_i32(arg_1, 457i, max(arg_0.c.x, global0[_wgslsmith_index_u32(u_input.a, 10u)])), global1.x, global0[_wgslsmith_index_u32(abs(u_input.a), 10u)] >> (22744u % 32u)));
    global4 = array<Struct_4, 16>();
    return vec2<bool>(true, !arg_2.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(!(!arg_0.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2232f)))), reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 2147483647i, global1.x, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(10602u, 10u)], -1i, global0[_wgslsmith_index_u32(u_input.a, 10u)], 1i))) & select(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, global1.x, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(77789u, 10u)]), vec4<i32>(global1.x, 16313i, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])), vec4<i32>(global0[_wgslsmith_index_u32(36806u, 10u)], -2147483647i, arg_2, arg_2)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, global1.x, 0i, -58736i), vec4<i32>(2147483647i, 5678i, global0[_wgslsmith_index_u32(u_input.a, 10u)], -2147483647i)), vec4<i32>(2147483647i, global1.x, arg_2, 18793i)), vec4<bool>(arg_1, false, !arg_1, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(290f, var_0.b, var_0.b)))))))));
    let var_2 = ~(~reverseBits(vec4<u32>(u_input.a, 14503u, _wgslsmith_add_u32(u_input.a, u_input.a), 0u)));
    var_0 = Struct_1(!func_3(Struct_1(vec2<bool>(false, arg_0.x), -1000f, var_0.c >> (vec4<u32>(15793u, var_2.x, u_input.a, 1u) % vec4<u32>(32u))), 2147483647i, select(select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_0.x, false, false), arg_0.xww), !vec3<bool>(false, var_0.a.x, false), vec3<bool>(arg_0.x, false, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f))), -425f, reverseBits(~(-var_0.c)));
    let var_3 = Struct_3(var_0.c, Struct_2(Struct_1(func_3(Struct_1(var_0.a, var_1.x, var_0.c), ~(-16115i), vec3<bool>(var_0.a.x, false, var_0.a.x), -1109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 1411f)), _wgslsmith_add_vec4_i32(min(var_0.c, vec4<i32>(var_0.c.x, global0[_wgslsmith_index_u32(var_2.x, 10u)], 7027i, var_0.c.x)), var_0.c)), _wgslsmith_div_vec2_f32(var_1.yz, var_1.xy), Struct_1(var_0.a, var_0.b, vec4<i32>(max(global0[_wgslsmith_index_u32(var_2.x, 10u)], var_0.c.x), global1.x, _wgslsmith_add_i32(-15112i, 17206i), ~0i)), Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-432f + var_0.b) + var_1.x), -(~vec4<i32>(3893i, var_0.c.x, -15547i, arg_2)))), arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(815f, 1330f, var_3.b.c.b)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1))))))));
}

fn func_1(arg_0: bool) -> i32 {
    global4 = array<Struct_4, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(!(!(!vec4<bool>(true, arg_0, arg_0, true))), true, _wgslsmith_mod_i32(-1i, -20756i))));
    let var_1 = Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(select(-24855i, -1i, true), global1.x, _wgslsmith_mod_i32(global1.x, global1.x), -global1.x), -vec4<i32>(global1.x, 0i, -49676i, 0i) >> (min(vec4<u32>(26946u, 65573u, u_input.a, 62926u), vec4<u32>(0u, 5421u, 2436u, 4294967295u)) % vec4<u32>(32u))) | ~vec4<i32>(global0[_wgslsmith_index_u32(5389u, 10u)] << (1u % 32u), reverseBits(global0[_wgslsmith_index_u32(41184u, 10u)]), 6760i, global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 10u)]), Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -293f), -(~vec4<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 10u)], 2147483647i, global1.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xz, vec2<f32>(var_0.x, -1912f), false))))), Struct_1(vec2<bool>(arg_0, any(vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, global1.x, -1200i), vec4<i32>(global1.x, 10060i, global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])), vec4<i32>(global1.x, 82520i, global1.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]), ~vec4<i32>(global1.x, -56837i, -5883i, 0i))), Struct_1(!func_3(Struct_1(vec2<bool>(arg_0, false), var_0.x, vec4<i32>(global1.x, 23492i, global0[_wgslsmith_index_u32(1u, 10u)], -2147483647i)), -1i, vec3<bool>(arg_0, true, arg_0), -731f), var_0.x, abs(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], 1i, global0[_wgslsmith_index_u32(11960u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)])))), var_0.x >= _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    global1 = vec3<i32>(~(-var_1.b.c.c.x), global0[_wgslsmith_index_u32(u_input.a, 10u)], -7848i << (~(u_input.a ^ 102091u) % 32u));
    global3 = array<vec4<f32>, 32>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(min(countOneBits(global1.x), global1.x & func_1(all(vec3<bool>(true, true, false)))), ~firstTrailingBit(~global1.x) >> (1u % 32u));
    let var_1 = vec4<i32>(global0[_wgslsmith_index_u32(~60358u, 10u)], _wgslsmith_add_i32(-41642i, 5007i), global1.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), 0i, var_0, global0[_wgslsmith_index_u32(u_input.a, 10u)]), ~(vec4<i32>(0i, global1.x, global1.x, global0[_wgslsmith_index_u32(u_input.a, 10u)]) ^ vec4<i32>(global1.x, 2147483647i, var_0, 35287i)))));
    let var_2 = Struct_1(vec2<bool>(false, (_wgslsmith_div_u32(6008u, 4294967295u) >= ~u_input.a) | false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-457f, -922f)), _wgslsmith_f_op_f32(-106f * -448f)))) + -215f), vec4<i32>(abs(abs(global0[_wgslsmith_index_u32(u_input.a, 10u)])) >> (u_input.a % 32u), global1.x, -(~global1.x ^ min(global0[_wgslsmith_index_u32(48801u, 10u)], 0i)), var_0));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-651f * _wgslsmith_f_op_f32(exp2(var_2.b))), _wgslsmith_f_op_f32(step(-748f, _wgslsmith_f_op_f32(f32(-1f) * -1985f)))))), var_2.b));
    var var_4 = true;
    global0 = array<i32, 10>();
    let var_5 = Struct_3(-(var_1 << (~vec4<u32>(46280u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), Struct_2(var_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -739f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2257f, 314f), vec2<f32>(var_2.b, 2138f)))) + _wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(var_2.a.x, var_2.a.x, true, false), select(false, var_2.a.x, true), -14232i)).yz), Struct_1(!select(var_2.a, var_2.a, var_2.a.x), var_3, var_2.c), Struct_1(func_3(var_2, i32(-1i) * -2147483647i, vec3<bool>(false, var_2.a.x, var_2.a.x), var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)), max(var_1 | var_1, ~var_1))), select(func_3(var_2, -26719i, vec3<bool>(func_3(var_2, var_1.x, vec3<bool>(true, var_2.a.x, var_2.a.x), -584f).x, var_2.a.x & false, all(vec2<bool>(true, var_2.a.x))), 365f).x, var_2.a.x, var_2.a.x), _wgslsmith_f_op_f32(130f + var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(floor(-253f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_5.d)))), var_5.d)))), _wgslsmith_f_op_f32(exp2(var_3)), u_input.a);
}

