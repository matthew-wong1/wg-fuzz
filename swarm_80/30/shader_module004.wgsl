struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(true, Struct_1(-399f, vec3<f32>(-152f, -495f, -971f), vec4<i32>(-24013i, 0i, 2147483647i, -9415i), 14665u), vec3<u32>(345u, 888u, 35453u), Struct_1(844f, vec3<f32>(827f, -176f, -1000f), vec4<i32>(10084i, -1i, 1i, i32(-2147483648)), 1u)), Struct_2(false, Struct_1(310f, vec3<f32>(-2130f, -232f, -485f), vec4<i32>(7318i, 3052i, 2147483647i, 4338i), 30218u), vec3<u32>(4294967295u, 5154u, 1277u), Struct_1(-595f, vec3<f32>(197f, -1277f, -737f), vec4<i32>(-24715i, -16404i, 1i, 0i), 0u)), Struct_2(true, Struct_1(-417f, vec3<f32>(-952f, -502f, 263f), vec4<i32>(35170i, 19114i, 2147483647i, i32(-2147483648)), 52332u), vec3<u32>(48791u, 4294967295u, 1u), Struct_1(-904f, vec3<f32>(1393f, 185f, -141f), vec4<i32>(-47303i, -20369i, -1i, -10060i), 0u)), Struct_2(false, Struct_1(1490f, vec3<f32>(-859f, 1083f, -259f), vec4<i32>(18910i, -1i, 35878i, -4966i), 73405u), vec3<u32>(1u, 4294967295u, 20936u), Struct_1(254f, vec3<f32>(812f, 109f, -1352f), vec4<i32>(2147483647i, 2949i, 43178i, 0i), 36408u)), Struct_2(true, Struct_1(302f, vec3<f32>(538f, -237f, 613f), vec4<i32>(-41017i, 1i, 2147483647i, 10420i), 23668u), vec3<u32>(75676u, 20620u, 0u), Struct_1(-149f, vec3<f32>(1926f, -288f, 369f), vec4<i32>(-43781i, 1i, -1i, -1i), 0u)), Struct_2(false, Struct_1(-1140f, vec3<f32>(292f, 1000f, 957f), vec4<i32>(-29931i, 2147483647i, 0i, 0i), 1u), vec3<u32>(25695u, 0u, 28811u), Struct_1(-1230f, vec3<f32>(-987f, 138f, -261f), vec4<i32>(-29010i, 4543i, -1i, 1i), 7818u)), Struct_2(false, Struct_1(508f, vec3<f32>(-546f, -376f, 1000f), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 1i), 37204u), vec3<u32>(25040u, 21395u, 0u), Struct_1(2076f, vec3<f32>(-1000f, -976f, 1400f), vec4<i32>(33977i, 25424i, -1i, 1i), 19560u)), Struct_2(false, Struct_1(-333f, vec3<f32>(-1516f, 303f, 1185f), vec4<i32>(1959i, 2147483647i, -1i, -1i), 1u), vec3<u32>(18873u, 114491u, 38898u), Struct_1(1628f, vec3<f32>(1898f, 1489f, -1000f), vec4<i32>(9722i, -1i, i32(-2147483648), -1i), 1u)), Struct_2(false, Struct_1(1266f, vec3<f32>(-1164f, -1876f, -113f), vec4<i32>(-49307i, -28037i, 16737i, i32(-2147483648)), 35117u), vec3<u32>(4294967295u, 41557u, 0u), Struct_1(1402f, vec3<f32>(-106f, -754f, -366f), vec4<i32>(-5645i, 0i, 2147483647i, 34649i), 22171u)), Struct_2(true, Struct_1(262f, vec3<f32>(759f, 868f, -1725f), vec4<i32>(0i, -25353i, 2147483647i, 19803i), 26777u), vec3<u32>(0u, 19026u, 40666u), Struct_1(617f, vec3<f32>(-1193f, 1303f, -1444f), vec4<i32>(-1i, 54996i, -16914i, 2147483647i), 4294967295u)), Struct_2(false, Struct_1(1316f, vec3<f32>(-1168f, -1000f, -1104f), vec4<i32>(-782i, 1i, 61046i, 0i), 43419u), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(-1912f, vec3<f32>(441f, 1820f, 225f), vec4<i32>(24937i, 1i, 1i, 81787i), 8782u)), Struct_2(false, Struct_1(294f, vec3<f32>(1000f, -1000f, 1889f), vec4<i32>(2147483647i, -33640i, 2147483647i, 13277i), 6153u), vec3<u32>(0u, 52478u, 1u), Struct_1(525f, vec3<f32>(629f, -1698f, 1000f), vec4<i32>(2147483647i, -1i, 13431i, 45910i), 1u)), Struct_2(true, Struct_1(-1000f, vec3<f32>(-1038f, 1294f, -549f), vec4<i32>(2147483647i, 0i, -24726i, 0i), 33865u), vec3<u32>(1u, 0u, 4294967295u), Struct_1(-286f, vec3<f32>(1878f, -898f, -1000f), vec4<i32>(55381i, i32(-2147483648), 1i, 0i), 22888u)), Struct_2(false, Struct_1(1152f, vec3<f32>(-560f, 110f, 1209f), vec4<i32>(-1i, i32(-2147483648), -1i, 2147483647i), 4294967295u), vec3<u32>(80387u, 26762u, 4294967295u), Struct_1(518f, vec3<f32>(-1484f, -469f, 917f), vec4<i32>(-41i, 2147483647i, i32(-2147483648), 1i), 4294967295u)), Struct_2(true, Struct_1(-1251f, vec3<f32>(-863f, 890f, 818f), vec4<i32>(2147483647i, i32(-2147483648), 15415i, 2147483647i), 24308u), vec3<u32>(4294967295u, 0u, 58697u), Struct_1(-752f, vec3<f32>(-869f, -378f, 106f), vec4<i32>(-67481i, -1i, 4567i, i32(-2147483648)), 4294967295u)), Struct_2(true, Struct_1(-512f, vec3<f32>(103f, 311f, -252f), vec4<i32>(45943i, 2147483647i, 2147483647i, 2147483647i), 25078u), vec3<u32>(113751u, 0u, 43182u), Struct_1(878f, vec3<f32>(849f, 508f, -1361f), vec4<i32>(-1i, 20959i, 2147483647i, 7427i), 1u)), Struct_2(false, Struct_1(957f, vec3<f32>(757f, -1861f, -1000f), vec4<i32>(20083i, 2147483647i, -1i, -43289i), 4294967295u), vec3<u32>(1u, 1u, 4294967295u), Struct_1(-1106f, vec3<f32>(-1000f, -953f, 506f), vec4<i32>(2147483647i, 21677i, -1i, -1i), 0u)), Struct_2(true, Struct_1(-948f, vec3<f32>(-182f, -163f, 1409f), vec4<i32>(-1i, -23773i, -1i, -1i), 1u), vec3<u32>(1u, 4294967295u, 2353u), Struct_1(-323f, vec3<f32>(-1000f, 540f, -748f), vec4<i32>(-63018i, 1048i, 9795i, 2147483647i), 6564u)));

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<u32>(4294967295u, 30472u), vec2<f32>(-558f, 222f), Struct_2(true, Struct_1(763f, vec3<f32>(522f, -1618f, 1824f), vec4<i32>(1i, 1i, i32(-2147483648), 0i), 4294967295u), vec3<u32>(110512u, 0u, 39230u), Struct_1(1000f, vec3<f32>(-536f, 1478f, 919f), vec4<i32>(2147483647i, -1i, i32(-2147483648), -35517i), 1u)), vec3<i32>(1i, -1i, -30715i)), Struct_3(vec2<u32>(44981u, 80998u), vec2<f32>(1500f, -1000f), Struct_2(true, Struct_1(475f, vec3<f32>(-632f, -1037f, -1379f), vec4<i32>(-1i, -1i, -50113i, i32(-2147483648)), 37098u), vec3<u32>(4294967295u, 18689u, 4294967295u), Struct_1(1000f, vec3<f32>(1791f, 620f, -791f), vec4<i32>(7007i, -1i, 11030i, 0i), 0u)), vec3<i32>(-1i, -40256i, 0i)), Struct_3(vec2<u32>(1u, 47785u), vec2<f32>(445f, 1092f), Struct_2(false, Struct_1(-248f, vec3<f32>(702f, -141f, -769f), vec4<i32>(1i, 10375i, -7281i, 6194i), 4294967295u), vec3<u32>(23433u, 22154u, 0u), Struct_1(1417f, vec3<f32>(647f, 590f, 764f), vec4<i32>(i32(-2147483648), 15611i, 14090i, 25797i), 4294967295u)), vec3<i32>(2593i, 0i, 1i)), Struct_3(vec2<u32>(36198u, 38101u), vec2<f32>(2957f, 594f), Struct_2(false, Struct_1(993f, vec3<f32>(1225f, 412f, 1000f), vec4<i32>(2147483647i, 0i, 0i, 4740i), 0u), vec3<u32>(25380u, 51122u, 50578u), Struct_1(874f, vec3<f32>(-1000f, -605f, 1429f), vec4<i32>(1i, 31185i, 1i, -1i), 2482u)), vec3<i32>(-27795i, 15054i, 0i)), Struct_3(vec2<u32>(17604u, 18345u), vec2<f32>(-317f, -1000f), Struct_2(true, Struct_1(1024f, vec3<f32>(-402f, 1000f, 2185f), vec4<i32>(10248i, 1i, 1i, 1i), 30892u), vec3<u32>(0u, 4294967295u, 64756u), Struct_1(-611f, vec3<f32>(380f, 593f, -1628f), vec4<i32>(-1856i, 35885i, -38966i, -1i), 13603u)), vec3<i32>(8062i, 2147483647i, 5256i)), Struct_3(vec2<u32>(41976u, 20395u), vec2<f32>(1114f, -1084f), Struct_2(true, Struct_1(2856f, vec3<f32>(1174f, 424f, -1552f), vec4<i32>(2147483647i, 2147483647i, 7026i, 29898i), 4294967295u), vec3<u32>(65131u, 59819u, 1u), Struct_1(-724f, vec3<f32>(-477f, -240f, 368f), vec4<i32>(-26515i, -20231i, -47189i, -22532i), 9310u)), vec3<i32>(-33565i, 0i, 88i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_3(~vec2<u32>(1u, ~(global1.b.d >> (global1.b.d % 32u))), arg_0.d.b.xz, Struct_2(arg_1.a, global1.b, select(vec3<u32>(8078u, 0u, countOneBits(arg_0.d.d)), ~vec3<u32>(global1.b.d, 22525u, global1.c.x), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, true), select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(global0.c.a, global1.a, false), arg_2.a))), arg_0.b), vec3<i32>(abs(global0.c.b.c.x), select(arg_2.b.c.x, min(~global0.d.x, _wgslsmith_mult_i32(0i, u_input.a.x)), false && (global0.c.b.b.x < -735f)), ~countOneBits(0i)));
    var var_1 = arg_1.b;
    global1 = Struct_2(select(any(select(select(vec4<bool>(global1.a, var_0.c.a, true, false), vec4<bool>(false, global0.c.a, false, true), true), vec4<bool>(true, arg_1.a, true, var_0.c.a), any(vec4<bool>(global0.c.a, arg_0.a, global0.c.a, false)))), !all(vec4<bool>(global1.a, arg_0.a, global0.c.a, false)) && (2147483647i >= var_1.c.x), 1115f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.b.x + global0.b.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f * -1176f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.b.b))), _wgslsmith_f_op_vec3_f32(global0.c.b.b - vec3<f32>(var_0.c.b.a, 2135f, 658f))), vec4<i32>(-var_1.c.x & (global0.d.x ^ u_input.a.x), ~10189i << (select(6616u, 1u, global0.c.a) % 32u), var_1.c.x, _wgslsmith_clamp_i32(-5529i ^ var_1.c.x, -arg_1.d.c.x, 1i)), min(abs(9906u) | ~arg_0.c.x, 4195u)), ~vec3<u32>(~var_0.c.b.d, ~85258u | (var_1.d | 31623u), countOneBits(_wgslsmith_mod_u32(var_0.c.c.x, arg_0.b.d))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(global1.b.a - -1300f)), _wgslsmith_f_op_f32(sign(-647f)), all(vec3<bool>(arg_0.a, global1.a, false)))), _wgslsmith_f_op_vec3_f32(-var_0.c.d.b), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(arg_2.b.c.x, -2147483647i, var_1.c.x, -2147483647i)), -reverseBits(vec4<i32>(global0.c.b.c.x, -1i, 0i, arg_0.d.c.x)), _wgslsmith_mod_vec4_i32(var_0.c.d.c | vec4<i32>(-1i, -1i, -2618i, global1.d.c.x), var_1.c)), 1u));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.d.b))), -arg_1.b.c << (u_input.c % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_div_u32(26809u, 117011u)));
    return vec2<bool>(arg_2.a, -53080i == ~(~(arg_1.d.c.x << (15397u % 32u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_1(-157f, global1.d.b, global1.d.c, arg_3.c.c.x & 20830u);
    var var_1 = func_3(arg_3.c, arg_3.c, arg_3.c);
    global0 = global3[_wgslsmith_index_u32(var_0.d, 6u)];
    let var_2 = arg_3;
    global3 = array<Struct_3, 6>();
    return reverseBits(17486i);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    global2 = array<Struct_2, 18>();
    var var_0 = vec2<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1i, -2147483647i), vec3<i32>(u_input.a.x, global0.c.b.c.x, global1.b.c.x)), global0.d), -2147483647i);
    var var_1 = Struct_1(197f, global1.d.b, vec4<i32>(-16691i, _wgslsmith_mod_i32(max(global0.c.d.c.x << (arg_2 % 32u), _wgslsmith_add_i32(var_0.x, var_0.x)), var_0.x), -1153i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_0.x, arg_0), _wgslsmith_mod_i32(~u_input.a.x, global1.d.c.x))), 1u);
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), -672f), -627f) * _wgslsmith_div_f32(global1.d.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-188f, 369f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) - global1.d.b.x) * _wgslsmith_div_f32(global1.d.a, -1663f)), var_1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.b.x)), var_1.a, any(select(vec3<bool>(global0.c.a, true, global1.a), vec3<bool>(global0.c.a, false, true), true))))), -select(vec4<i32>(-30211i, 16031i, 1i & u_input.a.x, var_1.c.x >> (u_input.b.x % 32u)), var_1.c | global1.b.c, !(!global1.a)), _wgslsmith_div_u32(0u, var_1.d) << (countOneBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(40100u, u_input.c.x), 74796u)) % 32u));
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    return abs(vec2<i32>(0i, -2147483647i));
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-847f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-217f, 991f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-127f, 100f, arg_2.c.b.b.x), global1.d.b) * arg_2.c.b.b), false)), global1.b.b), global1.d.c, arg_0);
    let var_1 = !select(vec4<bool>(false, global1.a, true, -var_0.c.x < (arg_1.x >> (arg_2.c.b.d % 32u))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, arg_2.c.a, arg_2.c.a), vec4<bool>(global0.c.a, false, false, false)), select(vec4<bool>(arg_2.c.a, global0.c.a, true, global1.a), !vec4<bool>(true, true, false, arg_2.c.a), select(vec4<bool>(false, arg_2.c.a, arg_2.c.a, false), vec4<bool>(true, arg_2.c.a, arg_2.c.a, global0.c.a), global1.a))), vec4<bool>(all(vec4<bool>(arg_2.c.a, global1.a, true, arg_2.c.a)), !all(vec2<bool>(true, global0.c.a)), global0.c.a, true));
    global0 = Struct_3(vec2<u32>((_wgslsmith_mod_u32(5656u, 1u) ^ var_0.d) << (arg_2.c.c.x % 32u), 0u), arg_2.c.b.b.xx, Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(158f, arg_2.c.b.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.d.b)), _wgslsmith_f_op_vec3_f32(-global0.c.b.b)), vec4<i32>(~(-23974i), func_2(u_input.c.xyx, u_input.c, 22098u, arg_2), ~(-7610i), u_input.a.x), arg_0 & 1u), select(~(vec3<u32>(var_0.d, 0u, arg_0) | vec3<u32>(0u, global1.d.d, var_0.d)), global1.c, select(vec3<bool>(true, false, global0.c.a), select(vec3<bool>(true, global0.c.a, global1.a), var_1.xzx, vec3<bool>(false, global1.a, true)), false)), Struct_1(global0.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.d.b)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.a, arg_2.c.b.a, 551f)))), -_wgslsmith_clamp_vec4_i32(global0.c.d.c, vec4<i32>(u_input.a.x, 4350i, 2147483647i, 50321i), vec4<i32>(0i, arg_1.x, arg_2.c.b.c.x, global1.b.c.x)), u_input.b.x)), countOneBits(_wgslsmith_mod_vec3_i32(arg_2.c.b.c.ywz, _wgslsmith_mult_vec3_i32(global1.d.c.yyz, abs(vec3<i32>(97515i, -1i, 0i))))));
    global2 = array<Struct_2, 18>();
    let var_2 = _wgslsmith_clamp_u32(~4294967295u, 51244u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, u_input.c.x, 31402u), vec3<u32>(32584u, u_input.c.x, 0u)), u_input.b.x) <= (arg_0 >> ((~var_0.d ^ ~(u_input.c.x & 0u)) % 32u));
    return Struct_1(1f, vec3<f32>(-1275f, -231f, arg_2.c.d.b.x), _wgslsmith_mult_vec4_i32(-min(_wgslsmith_mod_vec4_i32(global1.d.c, arg_2.c.d.c), ~global1.b.c), vec4<i32>(select(_wgslsmith_clamp_i32(1757i, 61148i, u_input.a.x), -2147483647i, true & global1.a), global1.d.c.x, -arg_2.d.x, ~0i)), 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-110f)))))));
    let var_1 = func_6(_wgslsmith_sub_u32(global1.b.d, ~u_input.b.x & 1u), _wgslsmith_clamp_vec2_i32(func_5(func_4(func_2(vec3<u32>(arg_1.d, 20726u, 28243u), u_input.c, arg_2.c.x, global3[_wgslsmith_index_u32(global0.c.c.x, 6u)]), abs(vec4<u32>(arg_1.d, global0.c.b.d, 4294967295u, arg_1.d)), u_input.c.x & u_input.b.x)), -select(~vec2<i32>(arg_2.b.c.x, arg_1.c.x), select(vec2<i32>(39905i, global0.d.x), arg_1.c.xz, vec2<bool>(global0.c.a, global0.c.a)), true), firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_1.c.yy, vec2<i32>(0i, arg_2.d.c.x)))), global3[_wgslsmith_index_u32(~(~global0.c.c.x), 6u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d.a))))));
    let var_3 = global2[_wgslsmith_index_u32(0u, 18u)];
    global3 = array<Struct_3, 6>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.c.xx, global1.c.yz), vec2<u32>(~_wgslsmith_div_u32(56537u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(63902u, abs(1776u), var_1.d, max(u_input.b.x, u_input.c.x)), ~u_input.c)));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = abs(_wgslsmith_dot_vec3_i32(arg_0.d.c.xzy, max(firstTrailingBit(func_4(global0.c.b.c.x, u_input.c, arg_1.d).c.yxz), arg_0.d.c.xyz)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(global0.a.x ^ _wgslsmith_mult_u32(0u, global1.c.x)), _wgslsmith_mult_u32(global1.c.x, _wgslsmith_div_u32(~arg_0.b.d, 4294967295u))) >> (~35587u % 32u), 6u)];
    var var_2 = func_3(Struct_2(any(!select(vec2<bool>(global0.c.a, global1.a), vec2<bool>(false, global1.a), vec2<bool>(global1.a, global0.c.a))), var_1.c.b, select(~vec3<u32>(4294967295u, 0u, u_input.b.x), _wgslsmith_mod_vec3_u32(abs(global1.c), vec3<u32>(global1.c.x, 1u, 4294967295u)), vec3<bool>(true, true, arg_0.a)), func_6(global1.d.d, vec2<i32>(~2147483647i, 14278i), Struct_3(vec2<u32>(var_1.a.x, 1u), vec2<f32>(811f, -730f), global2[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_mod_vec3_i32(vec3<i32>(-7624i, var_0, 10134i), vec3<i32>(2147483647i, arg_1.c.x, var_1.d.x))))), global0.c, global0.c).x;
    global3 = array<Struct_3, 6>();
    var_2 = false;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(52614u, u_input.b.x, global0.a.x)) & func_1(global1.b.c.x, Struct_1(760f, vec3<f32>(619f, global1.d.a, -1508f), global0.c.b.c, global1.c.x), Struct_2(true, global1.b, vec3<u32>(50556u, 48287u, global0.c.c.x), Struct_1(global0.b.x, vec3<f32>(929f, global0.b.x, 859f), global0.c.b.c, u_input.c.x)))), 18u)], global0.c.b);
    let var_0 = global1.b;
    var var_1 = func_4(global0.c.d.c.x, ~vec4<u32>(30216u, 0u, _wgslsmith_sub_u32(41227u, _wgslsmith_mod_u32(global0.a.x, u_input.c.x)), ~(~31402u)), ~(global1.d.d & 1u));
    let var_2 = Struct_3(firstLeadingBit(select(~vec2<u32>(var_0.d, global0.c.d.d), select(countOneBits(global1.c.xz), u_input.c.zz, global1.a), !select(vec2<bool>(true, global0.c.a), vec2<bool>(global1.a, true), false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 740f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-2204f, var_0.b.x), var_1.b.zz)))))), Struct_2(global1.a, func_6(~_wgslsmith_add_u32(var_1.d, var_0.d), (vec2<i32>(u_input.a.x, -22226i) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) & (u_input.a << (global1.c.yz % vec2<u32>(32u))), global3[_wgslsmith_index_u32(0u, 6u)]), countOneBits(vec3<u32>(0u >> (global0.c.c.x % 32u), 1u, 0u)), global0.c.d), select(_wgslsmith_mod_vec3_i32(select(global1.d.c.wyx, vec3<i32>(u_input.a.x, var_0.c.x, global0.c.d.c.x), vec3<bool>(global0.c.a, false, global1.a)) << (global1.c % vec3<u32>(32u)), global1.b.c.ywz), vec3<i32>(34388i << (~var_0.d % 32u), var_0.c.x, 45604i), global0.c.a));
    global1 = func_7(func_7(Struct_2(global0.c.a, Struct_1(_wgslsmith_f_op_f32(abs(var_0.b.x)), var_2.c.d.b, -global1.b.c, 4294967295u), global0.c.c, func_6(var_0.d, countOneBits(u_input.a), Struct_3(var_2.c.c.zy, vec2<f32>(global0.c.b.a, -1970f), Struct_2(global1.a, Struct_1(global1.d.b.x, vec3<f32>(global1.d.a, global1.b.b.x, -585f), vec4<i32>(var_2.c.b.c.x, 1i, -28134i, -27685i), 0u), vec3<u32>(global0.c.c.x, 4294967295u, 0u), Struct_1(global1.d.a, global1.b.b, vec4<i32>(var_1.c.x, 12743i, -1i, global1.b.c.x), 31917u)), vec3<i32>(global1.d.c.x, -19910i, u_input.a.x)))), Struct_1(-195f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, global1.b.a, global1.d.a) - global0.c.d.b), vec3<f32>(2284f, -219f, var_0.b.x))), var_1.c, var_2.c.c.x)), Struct_1(_wgslsmith_f_op_f32(-1328f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f))), vec3<f32>(1613f, _wgslsmith_div_f32(global0.c.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -290f)), -1900f), firstTrailingBit(firstTrailingBit(global0.c.b.c & var_0.c)), ~(~10874u)));
    var var_3 = var_2.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.d.c.x, 1u, firstTrailingBit(-func_4(7929i, ~vec4<u32>(u_input.b.x, 35070u, global1.b.d, var_2.a.x), 71246u).c.wz));
}

