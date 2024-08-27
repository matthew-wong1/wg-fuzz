struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: vec2<f32> = vec2<f32>(-1932f, 608f);

var<private> global2: Struct_3 = Struct_3(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)));

var<private> global3: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(vec4<bool>(true, true, true, true), Struct_2(1i, Struct_1(vec4<f32>(-890f, 593f, -2212f, -895f), 88147u), vec3<i32>(-37409i, i32(-2147483648), i32(-2147483648))), Struct_2(-56290i, Struct_1(vec4<f32>(-772f, -1362f, -974f, -596f), 0u), vec3<i32>(2147483647i, -1i, -2088i)), vec4<i32>(35101i, 17894i, -709i, -7992i), vec3<bool>(true, false, false)), Struct_5(vec4<bool>(true, false, true, false), Struct_2(-89169i, Struct_1(vec4<f32>(1891f, -1394f, 748f, 1000f), 0u), vec3<i32>(20789i, -15770i, 0i)), Struct_2(-10986i, Struct_1(vec4<f32>(-1000f, -1000f, 1312f, 919f), 34108u), vec3<i32>(-24759i, 0i, i32(-2147483648))), vec4<i32>(-1i, -11122i, 1i, 1i), vec3<bool>(true, true, true)), Struct_5(vec4<bool>(false, true, true, false), Struct_2(-50612i, Struct_1(vec4<f32>(-1891f, 1224f, -406f, 144f), 18921u), vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_2(2147483647i, Struct_1(vec4<f32>(1124f, -450f, -2333f, -1215f), 30276u), vec3<i32>(4910i, 1i, -1i)), vec4<i32>(271i, 1i, 1299i, -10811i), vec3<bool>(false, true, true)), Struct_5(vec4<bool>(false, false, true, true), Struct_2(-1i, Struct_1(vec4<f32>(1367f, -691f, 150f, -701f), 4294967295u), vec3<i32>(-16076i, 11596i, -21082i)), Struct_2(43938i, Struct_1(vec4<f32>(-213f, 189f, 578f, 524f), 64200u), vec3<i32>(i32(-2147483648), 2147483647i, 42604i)), vec4<i32>(9216i, 0i, -1i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_5(vec4<bool>(false, false, true, false), Struct_2(-1995i, Struct_1(vec4<f32>(1000f, 254f, 307f, 1016f), 81409u), vec3<i32>(21851i, -16431i, -29840i)), Struct_2(19173i, Struct_1(vec4<f32>(-1000f, 832f, -350f, 142f), 1u), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), vec4<i32>(-7265i, 11539i, 14035i, -40293i), vec3<bool>(false, false, false)), Struct_5(vec4<bool>(false, true, true, true), Struct_2(2147483647i, Struct_1(vec4<f32>(484f, -619f, 363f, -1974f), 6193u), vec3<i32>(i32(-2147483648), 0i, -12870i)), Struct_2(-32012i, Struct_1(vec4<f32>(-244f, 582f, -379f, 1751f), 0u), vec3<i32>(6395i, -25721i, -23443i)), vec4<i32>(30029i, 1i, i32(-2147483648), 4671i), vec3<bool>(false, true, false)), Struct_5(vec4<bool>(false, true, true, true), Struct_2(44097i, Struct_1(vec4<f32>(-416f, -448f, 373f, -688f), 4294967295u), vec3<i32>(i32(-2147483648), -10942i, 38886i)), Struct_2(i32(-2147483648), Struct_1(vec4<f32>(-490f, -1051f, 454f, -798f), 0u), vec3<i32>(-47963i, 2147483647i, -95488i)), vec4<i32>(-14937i, -13774i, i32(-2147483648), -1i), vec3<bool>(false, false, true)), Struct_5(vec4<bool>(true, false, false, true), Struct_2(44632i, Struct_1(vec4<f32>(-1151f, -1583f, -830f, -1399f), 19415u), vec3<i32>(-1i, 66381i, -564i)), Struct_2(16211i, Struct_1(vec4<f32>(-855f, 263f, 697f, -296f), 0u), vec3<i32>(48534i, -42605i, 32540i)), vec4<i32>(18230i, -1i, 2147483647i, 21022i), vec3<bool>(false, true, false)), Struct_5(vec4<bool>(true, true, true, true), Struct_2(2147483647i, Struct_1(vec4<f32>(1305f, 390f, 286f, 1367f), 1u), vec3<i32>(-31182i, 0i, -15465i)), Struct_2(2147483647i, Struct_1(vec4<f32>(-1758f, 744f, -744f, -435f), 4294967295u), vec3<i32>(39127i, 2147483647i, 0i)), vec4<i32>(i32(-2147483648), 88774i, 25922i, -1i), vec3<bool>(false, true, true)), Struct_5(vec4<bool>(false, false, true, true), Struct_2(-43955i, Struct_1(vec4<f32>(884f, -1300f, -379f, -1492f), 23525u), vec3<i32>(2147483647i, -8007i, 7908i)), Struct_2(2147483647i, Struct_1(vec4<f32>(-1070f, -1034f, -233f, 965f), 11460u), vec3<i32>(-25260i, -16012i, -1i)), vec4<i32>(18062i, -26282i, 33047i, -25606i), vec3<bool>(true, true, false)), Struct_5(vec4<bool>(true, true, false, true), Struct_2(-1i, Struct_1(vec4<f32>(1129f, -2030f, -2030f, 173f), 36710u), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_2(-3795i, Struct_1(vec4<f32>(-1672f, 1824f, 1439f, 1329f), 125231u), vec3<i32>(i32(-2147483648), -1i, -1i)), vec4<i32>(2147483647i, 16582i, 11172i, -1i), vec3<bool>(true, true, true)), Struct_5(vec4<bool>(false, false, false, true), Struct_2(-40047i, Struct_1(vec4<f32>(-1000f, -776f, -491f, -519f), 81617u), vec3<i32>(-1i, -94i, 2147483647i)), Struct_2(20856i, Struct_1(vec4<f32>(1000f, 312f, 886f, 827f), 0u), vec3<i32>(-48975i, -17263i, i32(-2147483648))), vec4<i32>(-1i, -66852i, -34209i, -44887i), vec3<bool>(false, false, false)), Struct_5(vec4<bool>(false, true, true, false), Struct_2(44804i, Struct_1(vec4<f32>(-885f, 1966f, -522f, 371f), 0u), vec3<i32>(-1038i, -58345i, -5039i)), Struct_2(-34332i, Struct_1(vec4<f32>(-174f, 1367f, 144f, 1000f), 82075u), vec3<i32>(1i, -12308i, i32(-2147483648))), vec4<i32>(0i, 10310i, -1i, -12158i), vec3<bool>(true, false, true)), Struct_5(vec4<bool>(false, true, true, false), Struct_2(12178i, Struct_1(vec4<f32>(-749f, -144f, 794f, -294f), 1u), vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_2(-33249i, Struct_1(vec4<f32>(-362f, -872f, 615f, 747f), 24587u), vec3<i32>(18237i, i32(-2147483648), -1i)), vec4<i32>(i32(-2147483648), 26397i, 2147483647i, -56395i), vec3<bool>(true, false, true)), Struct_5(vec4<bool>(false, false, true, false), Struct_2(2147483647i, Struct_1(vec4<f32>(617f, 717f, 183f, -277f), 15239u), vec3<i32>(-1155i, 0i, 2147483647i)), Struct_2(-1i, Struct_1(vec4<f32>(1000f, -1741f, -272f, -1000f), 0u), vec3<i32>(i32(-2147483648), -16739i, 69658i)), vec4<i32>(21743i, 67603i, 31459i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_5(vec4<bool>(true, true, true, true), Struct_2(0i, Struct_1(vec4<f32>(971f, 1618f, -328f, 312f), 1u), vec3<i32>(i32(-2147483648), -7970i, -3459i)), Struct_2(0i, Struct_1(vec4<f32>(680f, -2263f, -1157f, 192f), 24169u), vec3<i32>(2147483647i, -49443i, 1i)), vec4<i32>(0i, -16243i, -43661i, -1i), vec3<bool>(false, false, true)), Struct_5(vec4<bool>(true, false, true, true), Struct_2(2147483647i, Struct_1(vec4<f32>(-465f, 1267f, 446f, -1076f), 46844u), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), Struct_2(-5753i, Struct_1(vec4<f32>(-527f, 216f, 603f, -1053f), 33402u), vec3<i32>(0i, 2147483647i, 1i)), vec4<i32>(-30143i, 2605i, 48156i, -40474i), vec3<bool>(true, false, false)), Struct_5(vec4<bool>(true, false, false, false), Struct_2(-110298i, Struct_1(vec4<f32>(343f, -550f, 424f, -1494f), 0u), vec3<i32>(2147483647i, 2147483647i, 1i)), Struct_2(8722i, Struct_1(vec4<f32>(2542f, 784f, -1000f, 481f), 0u), vec3<i32>(42451i, 69512i, -41441i)), vec4<i32>(-20802i, -1i, -46060i, -42693i), vec3<bool>(true, false, false)), Struct_5(vec4<bool>(true, false, false, false), Struct_2(55359i, Struct_1(vec4<f32>(1697f, -198f, 673f, 1747f), 0u), vec3<i32>(0i, 51722i, -1i)), Struct_2(1i, Struct_1(vec4<f32>(-685f, -1127f, 1366f, -536f), 23395u), vec3<i32>(0i, 2147483647i, -54125i)), vec4<i32>(1i, -1i, -36113i, -1i), vec3<bool>(true, true, true)), Struct_5(vec4<bool>(true, true, true, true), Struct_2(3798i, Struct_1(vec4<f32>(-472f, 420f, 371f, -842f), 4294967295u), vec3<i32>(-1i, 3026i, 0i)), Struct_2(-43707i, Struct_1(vec4<f32>(-544f, 340f, -378f, 172f), 4294967295u), vec3<i32>(-4788i, -11421i, -5875i)), vec4<i32>(1i, 27499i, -63763i, 9573i), vec3<bool>(false, false, false)), Struct_5(vec4<bool>(false, false, false, false), Struct_2(0i, Struct_1(vec4<f32>(-1000f, -390f, -1304f, -1000f), 11705u), vec3<i32>(i32(-2147483648), 6764i, -1i)), Struct_2(-1i, Struct_1(vec4<f32>(179f, -1617f, 481f, 800f), 61355u), vec3<i32>(-45042i, i32(-2147483648), 7892i)), vec4<i32>(-44339i, -1i, 0i, 13423i), vec3<bool>(false, true, false)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(abs(vec3<i32>(-13398i, 4557i, -1i)), global2.a), _wgslsmith_mod_vec3_i32(firstTrailingBit(min(~global2.a, global2.a)), min(~(-global2.a), firstTrailingBit(-vec3<i32>(global2.a.x, global2.a.x, global2.a.x)))));
    var var_1 = vec3<bool>(false, (u_input.a | ~(4294967295u | u_input.a)) != (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(47267u, u_input.a)), vec2<u32>(16202u, 4294967295u)) & ~(4294967295u << (u_input.a % 32u))), !(!arg_0.x));
    global0 = array<vec3<bool>, 16>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, 110f), _wgslsmith_f_op_f32(-global1.x), -1000f))))), _wgslsmith_add_u32(u_input.a, u_input.a));
    let var_3 = ~(var_0 & 0i) >> (var_2.b % 32u);
    return 1u;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global2.a.x;
    global0 = array<vec3<bool>, 16>();
    var var_1 = Struct_4(func_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))), u_input.a, global2.a.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f - global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -124f)) - 548f)), Struct_3(vec3<i32>(min(-14731i, countOneBits(global2.a.x)), -1i, -global2.a.x)));
    let var_2 = global0[_wgslsmith_index_u32(55332u, 16u)];
    let var_3 = reverseBits(select(vec2<u32>(var_1.b, max(1u, 43817u)) & vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, 4294967295u), vec3<u32>(arg_0, 22936u, 20242u))), firstLeadingBit(vec2<u32>(1u, u_input.a)) | vec2<u32>(func_3(vec2<bool>(var_2.x, var_2.x)), ~1u), vec2<bool>(true, any(var_2.yy) || select(var_2.x, true, false))));
    return ~var_3.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5, arg_2: f32) -> u32 {
    global2 = Struct_3(global2.a);
    global0 = array<vec3<bool>, 16>();
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(493f, arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.b.b.a.x, -1445f)))))), arg_0.b.a.x));
    var var_2 = ~max(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(4294967295u, 0u), ~18567u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 15123u, arg_0.b.b), vec3<u32>(4294967295u, 52932u, u_input.a))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(42744u, 0u, 22937u), vec3<u32>(arg_0.b.b, 42700u, arg_0.b.b), vec3<u32>(4235u, arg_1.b.b.b, arg_1.b.b.b)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, arg_1.b.b.b), vec3<u32>(33714u, 28567u, arg_0.b.b)))), vec3<u32>(41804u, ~u_input.a ^ (4294967295u | arg_1.b.b.b), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 42387u), arg_0.b.b ^ 35423u)));
    return ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, var_2.x), func_2(10873u), ~4294967295u)), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 16>();
    var var_0 = vec4<bool>(true, true, true, !((func_1(Struct_2(0i, Struct_1(vec4<f32>(global1.x, 820f, global1.x, 1215f), u_input.a), global2.a), Struct_5(vec4<bool>(false, false, false, false), Struct_2(global2.a.x, Struct_1(vec4<f32>(global1.x, global1.x, global1.x, -152f), u_input.a), global2.a), Struct_2(global2.a.x, Struct_1(vec4<f32>(201f, global1.x, -1154f, -683f), u_input.a), global2.a), vec4<i32>(-2147483647i, 1i, global2.a.x, global2.a.x), vec3<bool>(false, true, false)), global1.x) | u_input.a) >= u_input.a));
    var_0 = vec4<bool>(var_0.x, false, !any(vec4<bool>(u_input.a >= u_input.a, any(vec4<bool>(var_0.x, false, var_0.x, false)), !var_0.x, select(true, false, false))), false);
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-104f * 138f), -1064f) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -862f) * vec2<f32>(-481f, -314f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-860f, 2441f), vec2<f32>(global1.x, global1.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(310f, global1.x), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-900f, -729f), vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(335f, 1260f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1089f * global1.x), global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1939f))), _wgslsmith_f_op_f32(floor(-1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1624f)))), false));
    let var_1 = vec4<bool>(all(!(!select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), false))), !var_0.x, all(vec2<bool>(any(vec2<bool>(var_0.x, false)), global2.a.x >= global2.a.x)) || var_0.x, (func_2(124683u) >> (_wgslsmith_div_u32(func_2(u_input.a), 0u) % 32u)) > _wgslsmith_sub_u32(~u_input.a, u_input.a));
    global3 = array<Struct_5, 21>();
    var var_2 = Struct_4(max(~(~firstLeadingBit(0u)), 1811u), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 429u), _wgslsmith_mod_u32(1u, u_input.a), min(u_input.a, u_input.a)), 4294967295u), vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(10082i, 6647i)), _wgslsmith_mod_vec2_i32(global2.a.zy, ~vec2<i32>(global2.a.x, global2.a.x))), 16374i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(step(228f, _wgslsmith_div_f32(2831f, -1000f)))) - global1.x), Struct_3(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, 8258i) ^ vec2<i32>(-20113i, -93778i), global2.a.zz << (vec2<u32>(u_input.a, 83029u) % vec2<u32>(32u))), global2.a.x, select(global2.a.x, abs(-36667i), var_0.x))));
    let var_3 = global3[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_4 = max(global2.a.x, firstLeadingBit(19768i)) << (u_input.a % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, global2.a.x);
}

