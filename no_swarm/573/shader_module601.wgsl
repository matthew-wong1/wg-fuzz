struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: array<vec4<bool>, 20>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<u32>(32066u, 1u, 0u), vec4<bool>(true, true, true, false), vec4<f32>(-916f, 872f, 285f, 1938f), Struct_1(116f, -1503f, -978f, 2147483647i, 1u)), Struct_2(vec3<u32>(1u, 0u, 32890u), vec4<bool>(true, false, false, false), vec4<f32>(1335f, 2584f, -2575f, 126f), Struct_1(1465f, 1078f, -502f, 19963i, 47085u)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), vec4<bool>(true, false, true, false), vec4<f32>(-231f, 1847f, 1000f, -128f), Struct_1(-1000f, -1135f, 511f, 0i, 1u)), Struct_2(vec3<u32>(4294967295u, 5909u, 30738u), vec4<bool>(false, true, true, true), vec4<f32>(1204f, 832f, 2050f, -117f), Struct_1(897f, -606f, 1278f, 1i, 43400u)), Struct_2(vec3<u32>(43312u, 1u, 0u), vec4<bool>(true, false, true, false), vec4<f32>(-602f, -2131f, 824f, -231f), Struct_1(-1625f, -2046f, -191f, i32(-2147483648), 78886u)), Struct_2(vec3<u32>(7965u, 1u, 0u), vec4<bool>(false, true, false, true), vec4<f32>(936f, -955f, -433f, -252f), Struct_1(2112f, -1056f, 314f, -1i, 4294967295u)), Struct_2(vec3<u32>(43465u, 31821u, 0u), vec4<bool>(false, true, false, true), vec4<f32>(561f, 760f, 587f, 139f), Struct_1(357f, 243f, 706f, -1i, 4294967295u)), Struct_2(vec3<u32>(1u, 55696u, 22793u), vec4<bool>(true, false, false, true), vec4<f32>(2846f, 940f, 837f, 232f), Struct_1(2070f, 1000f, -1000f, -1i, 1u)), Struct_2(vec3<u32>(49227u, 25164u, 2497u), vec4<bool>(false, false, false, false), vec4<f32>(-1338f, -1320f, 1000f, -377f), Struct_1(930f, -1179f, -926f, i32(-2147483648), 0u)), Struct_2(vec3<u32>(0u, 71365u, 35502u), vec4<bool>(true, true, false, true), vec4<f32>(-894f, -385f, -1817f, -1815f), Struct_1(1336f, 209f, 336f, -20365i, 7478u)), Struct_2(vec3<u32>(4294967295u, 38505u, 1u), vec4<bool>(false, false, true, true), vec4<f32>(1036f, 1619f, -444f, 702f), Struct_1(314f, 614f, -491f, 13957i, 10183u)), Struct_2(vec3<u32>(1u, 3947u, 4294967295u), vec4<bool>(false, true, true, true), vec4<f32>(-288f, -1576f, -1048f, -303f), Struct_1(-1000f, 1858f, -659f, 0i, 17451u)), Struct_2(vec3<u32>(1u, 0u, 46086u), vec4<bool>(false, false, true, true), vec4<f32>(1000f, 1013f, 990f, 283f), Struct_1(-1077f, 1691f, 1000f, -1i, 1u)), Struct_2(vec3<u32>(4294967295u, 46511u, 1u), vec4<bool>(true, true, false, false), vec4<f32>(-2220f, -662f, 1039f, 217f), Struct_1(423f, -980f, 813f, -23467i, 44020u)), Struct_2(vec3<u32>(0u, 104441u, 1u), vec4<bool>(false, true, false, false), vec4<f32>(688f, 729f, -1296f, 1000f), Struct_1(934f, 425f, 192f, i32(-2147483648), 60015u)), Struct_2(vec3<u32>(1u, 16112u, 4294967295u), vec4<bool>(false, true, true, true), vec4<f32>(864f, 714f, 595f, -1307f), Struct_1(-683f, -1527f, -132f, 1i, 8887u)));

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<u32>(27946u, 0u, 47618u), vec4<bool>(true, false, true, false), vec4<f32>(-475f, -278f, -160f, -755f), Struct_1(-241f, -777f, 612f, -25532i, 48080u)), Struct_2(vec3<u32>(38996u, 0u, 53876u), vec4<bool>(true, false, false, false), vec4<f32>(-1000f, 419f, 1000f, 1786f), Struct_1(1552f, 353f, 378f, 0i, 0u)), Struct_2(vec3<u32>(1u, 0u, 10812u), vec4<bool>(true, true, true, true), vec4<f32>(-613f, -1767f, 1274f, -752f), Struct_1(-318f, -470f, -709f, 35478i, 105223u)), Struct_2(vec3<u32>(1u, 1039u, 43682u), vec4<bool>(false, true, true, true), vec4<f32>(344f, -1025f, -596f, -1000f), Struct_1(873f, 1560f, -1345f, i32(-2147483648), 91090u)), Struct_2(vec3<u32>(7716u, 0u, 0u), vec4<bool>(true, false, true, true), vec4<f32>(-499f, -1000f, -1383f, 411f), Struct_1(465f, -1000f, 1408f, i32(-2147483648), 0u)), Struct_2(vec3<u32>(44919u, 4294967295u, 0u), vec4<bool>(true, true, true, true), vec4<f32>(-374f, 157f, 383f, -767f), Struct_1(1263f, -1740f, 480f, 2147483647i, 43568u)), Struct_2(vec3<u32>(4196u, 53651u, 18586u), vec4<bool>(true, false, false, true), vec4<f32>(-469f, 2268f, -1000f, 635f), Struct_1(-1093f, 2314f, -1231f, 2587i, 53584u)), Struct_2(vec3<u32>(32785u, 1u, 10684u), vec4<bool>(true, true, false, true), vec4<f32>(872f, -831f, 561f, 1198f), Struct_1(-533f, 1739f, -1245f, -1i, 0u)), Struct_2(vec3<u32>(37505u, 8852u, 56760u), vec4<bool>(true, false, false, false), vec4<f32>(1266f, 491f, -278f, 853f), Struct_1(-354f, -1000f, 484f, 69276i, 46000u)), Struct_2(vec3<u32>(1u, 32211u, 0u), vec4<bool>(false, false, false, false), vec4<f32>(-380f, -1446f, 963f, -1264f), Struct_1(1000f, 851f, 1000f, 0i, 4294967295u)), Struct_2(vec3<u32>(0u, 4294967295u, 21261u), vec4<bool>(true, true, false, true), vec4<f32>(-453f, 259f, -250f, -1128f), Struct_1(-739f, -1814f, 496f, 3870i, 4294967295u)), Struct_2(vec3<u32>(63785u, 0u, 4294967295u), vec4<bool>(true, true, false, false), vec4<f32>(296f, -1856f, -472f, 542f), Struct_1(658f, -1034f, 2133f, 68918i, 65981u)), Struct_2(vec3<u32>(4294967295u, 58089u, 0u), vec4<bool>(true, true, true, false), vec4<f32>(-650f, 1452f, -469f, 1231f), Struct_1(1070f, 958f, 897f, -10237i, 0u)), Struct_2(vec3<u32>(24610u, 0u, 11810u), vec4<bool>(false, true, true, true), vec4<f32>(-387f, -330f, -1000f, 350f), Struct_1(1000f, 439f, 365f, 2147483647i, 5444u)), Struct_2(vec3<u32>(1u, 1u, 1u), vec4<bool>(false, true, false, false), vec4<f32>(-371f, 289f, -588f, -1175f), Struct_1(2665f, -274f, -1094f, -27205i, 87302u)));

var<private> global4: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.e.x, 16u)];
    global3 = array<Struct_2, 15>();
    var var_1 = _wgslsmith_div_vec4_u32(~reverseBits(~abs(vec4<u32>(14759u, 0u, u_input.e.x, 1u))), abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, u_input.e.x, 0u, u_input.b.x)), vec4<u32>(22135u, u_input.c, u_input.b.x, 1u) << (vec4<u32>(26304u, var_0.d.e, 28053u, var_0.d.e) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.d.e, 41830u, 1u, 819u)), vec4<u32>(u_input.b.x, 30744u, 1u, 0u)))));
    global1 = array<vec4<bool>, 20>();
    let var_2 = u_input.d.x;
    return -(~9755i) << ((4294967295u | firstLeadingBit(countOneBits(u_input.c << (24987u % 32u)))) % 32u);
}

fn func_2() -> Struct_3 {
    let var_0 = select(27842i, -_wgslsmith_add_i32(func_3(), -20740i), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))) & any(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true)));
    var var_1 = _wgslsmith_clamp_u32(u_input.c ^ 43695u, 1254u, 1u);
    var var_2 = _wgslsmith_f_op_f32(-1857f * 550f);
    global2 = array<Struct_2, 16>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-696f, -281f, 1080f, 421f), vec4<f32>(-557f, -391f, 489f, 109f), global1[_wgslsmith_index_u32(1u, 20u)]))))), _wgslsmith_mult_i32(-u_input.d.x, u_input.a) > abs(~select(var_0, var_0, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(590f * -1820f), _wgslsmith_f_op_f32(f32(-1f) * -384f)))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1747f)), _wgslsmith_f_op_f32(abs(var_3.c.x)), var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x + var_3.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -471f)))), ~u_input.d.x < reverseBits(-1894i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-988f, 1511f)), _wgslsmith_f_op_f32(var_3.c.x - var_3.c.x), _wgslsmith_f_op_f32(-var_3.c.x)))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global3 = array<Struct_2, 15>();
    let var_0 = reverseBits(~_wgslsmith_mult_vec4_i32(~min(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, u_input.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, 2147483647i, u_input.d.x), vec4<i32>(-22332i, u_input.a, 2147483647i, u_input.d.x)) & _wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.d.x, 1i), vec4<i32>(6666i, u_input.a, -1i, 6030i))));
    let var_1 = 4294967295u;
    global3 = array<Struct_2, 15>();
    global0 = array<vec2<f32>, 29>();
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = func_3();
    let var_1 = global3[_wgslsmith_index_u32(abs(~(~(~_wgslsmith_add_u32(u_input.e.x, 13473u)))), 15u)];
    let var_2 = true;
    global1 = array<vec4<bool>, 20>();
    var var_3 = _wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(-2147483647i, ~_wgslsmith_div_i32(u_input.a, u_input.a), firstTrailingBit(-16434i)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 20>();
    var var_0 = ~reverseBits(~u_input.e);
    var var_1 = u_input.d;
    var var_2 = abs(-func_4(func_1(true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_3 = -_wgslsmith_div_i32(_wgslsmith_mult_i32(-var_1.x, ~2147483647i), -(_wgslsmith_dot_vec2_i32(vec2<i32>(-1632i, 20003i), vec2<i32>(-7866i, var_1.x)) & u_input.d.x));
    var_3 = -68552i;
    let var_4 = func_2();
    let var_5 = ~((32142u ^ u_input.e.x) << (u_input.e.x % 32u));
    var var_6 = !vec4<bool>(!var_4.b, select(false, var_4.b, true), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~u_input.e, vec2<u32>(firstLeadingBit(firstTrailingBit(0u)), reverseBits(var_0.x))), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(2341u, var_0.x, var_0.x, u_input.e.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 5198u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 3138u, 9798u, u_input.b.x), vec4<u32>(var_0.x, 1u, 85587u, 4294967295u)))), ~firstTrailingBit(select(vec4<u32>(var_5, 4294967295u, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 4294967295u), var_6.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 3579u, 25510u, 3870u), vec4<u32>(4294967295u, 0u, var_5, 0u)) >> (vec4<u32>(var_0.x, var_5, u_input.c, var_0.x) % vec4<u32>(32u)), vec4<u32>(var_5, 0u, ~u_input.b.x, var_5))), -var_1.x, var_1.x, ~_wgslsmith_div_vec3_u32(reverseBits(~u_input.b), select(~vec3<u32>(0u, 4331u, var_5), vec3<u32>(4294967295u, 140731u, var_0.x), true)));
}

