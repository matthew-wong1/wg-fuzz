struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(vec3<f32>(332f, 1052f, -1000f), Struct_1(18965u, vec3<i32>(58089i, 0i, -15067i), vec2<u32>(4294967295u, 1u)), 1i)), Struct_3(Struct_2(vec3<f32>(947f, -300f, -1391f), Struct_1(1u, vec3<i32>(-1i, -35022i, 1i), vec2<u32>(18767u, 7763u)), i32(-2147483648))), Struct_3(Struct_2(vec3<f32>(-1565f, 630f, -1000f), Struct_1(0u, vec3<i32>(1021i, -11244i, 21749i), vec2<u32>(0u, 1u)), 36023i)), Struct_3(Struct_2(vec3<f32>(1085f, -498f, -1261f), Struct_1(0u, vec3<i32>(-16342i, 1i, 1i), vec2<u32>(938u, 4294967295u)), 1i)), Struct_3(Struct_2(vec3<f32>(805f, 636f, 1488f), Struct_1(27778u, vec3<i32>(-1i, 21833i, -46905i), vec2<u32>(39594u, 9088u)), -1i)), Struct_3(Struct_2(vec3<f32>(524f, 923f, -467f), Struct_1(4294967295u, vec3<i32>(-10346i, i32(-2147483648), -1i), vec2<u32>(50141u, 4294967295u)), 1i)), Struct_3(Struct_2(vec3<f32>(-170f, 452f, 1145f), Struct_1(32277u, vec3<i32>(18375i, -34240i, 2754i), vec2<u32>(2792u, 28248u)), 2147483647i)), Struct_3(Struct_2(vec3<f32>(-908f, 501f, -716f), Struct_1(42265u, vec3<i32>(56138i, 2147483647i, 2147483647i), vec2<u32>(6490u, 4294967295u)), -52476i)), Struct_3(Struct_2(vec3<f32>(-267f, -326f, -317f), Struct_1(4294967295u, vec3<i32>(2147483647i, 8577i, 24442i), vec2<u32>(1u, 24952u)), -2497i)), Struct_3(Struct_2(vec3<f32>(236f, -774f, -2349f), Struct_1(22934u, vec3<i32>(i32(-2147483648), 1i, -12381i), vec2<u32>(1u, 15010u)), -21607i)), Struct_3(Struct_2(vec3<f32>(930f, -2507f, 597f), Struct_1(62491u, vec3<i32>(-1i, 3313i, 7982i), vec2<u32>(1u, 7851u)), i32(-2147483648))), Struct_3(Struct_2(vec3<f32>(-1928f, -495f, 319f), Struct_1(4294967295u, vec3<i32>(-14012i, -1i, 28919i), vec2<u32>(0u, 29975u)), 27227i)), Struct_3(Struct_2(vec3<f32>(-686f, -599f, -1685f), Struct_1(0u, vec3<i32>(-19249i, 29085i, -1i), vec2<u32>(9861u, 1u)), 11985i)), Struct_3(Struct_2(vec3<f32>(799f, 1165f, 1015f), Struct_1(121978u, vec3<i32>(-35045i, 2147483647i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u)), -1i)), Struct_3(Struct_2(vec3<f32>(-464f, -701f, 747f), Struct_1(68331u, vec3<i32>(15091i, -23348i, 2147483647i), vec2<u32>(0u, 4294967295u)), -1i)), Struct_3(Struct_2(vec3<f32>(-716f, -736f, -497f), Struct_1(39929u, vec3<i32>(i32(-2147483648), 1i, -1i), vec2<u32>(90879u, 0u)), 22636i)), Struct_3(Struct_2(vec3<f32>(1015f, -1132f, 1946f), Struct_1(79799u, vec3<i32>(-1i, i32(-2147483648), -17253i), vec2<u32>(3134u, 28208u)), -43166i)), Struct_3(Struct_2(vec3<f32>(-686f, 1000f, 182f), Struct_1(4294967295u, vec3<i32>(2147483647i, 31757i, 19395i), vec2<u32>(19357u, 11728u)), i32(-2147483648))), Struct_3(Struct_2(vec3<f32>(1000f, 1242f, 1301f), Struct_1(36381u, vec3<i32>(4855i, i32(-2147483648), 0i), vec2<u32>(0u, 10836u)), -7625i)), Struct_3(Struct_2(vec3<f32>(1000f, -333f, 2043f), Struct_1(16002u, vec3<i32>(10380i, 6389i, 34095i), vec2<u32>(1u, 56514u)), 1i)), Struct_3(Struct_2(vec3<f32>(658f, -206f, 2128f), Struct_1(0u, vec3<i32>(0i, 40344i, -1i), vec2<u32>(43103u, 1u)), i32(-2147483648))), Struct_3(Struct_2(vec3<f32>(-1716f, -799f, 2349f), Struct_1(43645u, vec3<i32>(i32(-2147483648), 6761i, -1i), vec2<u32>(13903u, 19924u)), -43587i)), Struct_3(Struct_2(vec3<f32>(426f, -1093f, -737f), Struct_1(0u, vec3<i32>(0i, -1i, -31858i), vec2<u32>(25698u, 4294967295u)), i32(-2147483648))), Struct_3(Struct_2(vec3<f32>(-349f, -1069f, 502f), Struct_1(1u, vec3<i32>(2147483647i, 1i, -14733i), vec2<u32>(47962u, 29435u)), 0i)), Struct_3(Struct_2(vec3<f32>(353f, 1467f, 635f), Struct_1(52011u, vec3<i32>(0i, i32(-2147483648), 0i), vec2<u32>(4294967295u, 1u)), 0i)));

var<private> global1: array<vec3<u32>, 12>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<f32>(-1305f, 456f, 335f), Struct_1(49478u, vec3<i32>(-23459i, -1i, i32(-2147483648)), vec2<u32>(0u, 1u)), -1i), Struct_2(vec3<f32>(1000f, -141f, -388f), Struct_1(106702u, vec3<i32>(2147483647i, 1i, 0i), vec2<u32>(1u, 0u)), -1i), Struct_2(vec3<f32>(-292f, 426f, -136f), Struct_1(73301u, vec3<i32>(-2419i, 41971i, 2147483647i), vec2<u32>(4294967295u, 18913u)), i32(-2147483648)), Struct_2(vec3<f32>(-276f, 1119f, -1000f), Struct_1(6341u, vec3<i32>(-22233i, 2147483647i, -1i), vec2<u32>(67130u, 1u)), 11050i), Struct_2(vec3<f32>(-631f, 298f, 693f), Struct_1(26148u, vec3<i32>(75505i, 0i, 2147483647i), vec2<u32>(30083u, 98267u)), -1i), Struct_2(vec3<f32>(-641f, 1412f, -745f), Struct_1(1u, vec3<i32>(-80108i, 1i, -24591i), vec2<u32>(0u, 4294967295u)), i32(-2147483648)), Struct_2(vec3<f32>(745f, 191f, 1203f), Struct_1(52584u, vec3<i32>(-21833i, -36388i, -9008i), vec2<u32>(1u, 56958u)), 34021i), Struct_2(vec3<f32>(-958f, -2473f, -1255f), Struct_1(4294967295u, vec3<i32>(1i, -17621i, 2147483647i), vec2<u32>(26896u, 1u)), 53686i), Struct_2(vec3<f32>(-717f, 722f, 667f), Struct_1(88924u, vec3<i32>(2147483647i, 16916i, -75125i), vec2<u32>(40095u, 23490u)), 29462i), Struct_2(vec3<f32>(-503f, -1639f, -1000f), Struct_1(7091u, vec3<i32>(-819i, 1i, -15450i), vec2<u32>(39690u, 29367u)), -18937i), Struct_2(vec3<f32>(-249f, 643f, -180f), Struct_1(77275u, vec3<i32>(29098i, 34897i, i32(-2147483648)), vec2<u32>(31607u, 0u)), -1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> u32 {
    global3 = array<Struct_2, 11>();
    global0 = array<Struct_3, 25>();
    let var_0 = !vec3<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-381f)), -1000f, 1u < u_input.a.x)) < _wgslsmith_f_op_f32(ceil(1f)), false);
    let var_1 = arg_0.xzx;
    global1 = array<vec3<u32>, 12>();
    return abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 0u, u_input.a.x)), firstTrailingBit(reverseBits(vec3<u32>(0u, 70822u, 4294967295u))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3.b.b, ~u_input.b.zxx), vec3<i32>(arg_1.a.b.b.x << (u_input.a.x % 32u), arg_3.c, i32(-1i) * -2147483647i))) != 13331i;
    global2 = all(!select(vec3<bool>(arg_0.x, true, arg_2), arg_0, select(!vec3<bool>(false, false, arg_2), arg_0, arg_0.x)));
    var var_1 = 2147483647i != (_wgslsmith_div_i32(abs(arg_1.a.b.b.x ^ 1i), -15560i) | -_wgslsmith_clamp_i32(2147483647i, ~arg_3.c, u_input.c >> (u_input.a.x % 32u)));
    global1 = array<vec3<u32>, 12>();
    let var_2 = Struct_3(Struct_2(arg_1.a.a, arg_3.b, ~(-14959i)));
    return arg_1.a.b.c.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    global2 = true;
    let var_0 = Struct_1(28979u, vec3<i32>(arg_1.x, -21038i, arg_1.x), select(_wgslsmith_mod_vec2_u32(vec2<u32>(49768u, 0u), vec2<u32>(~82606u, _wgslsmith_mod_u32(75286u, 99653u))), ~reverseBits(_wgslsmith_clamp_vec2_u32(arg_0, arg_0, u_input.a.xy)), vec2<bool>(true, true)));
    global0 = array<Struct_3, 25>();
    var var_1 = Struct_4(!(43405u < u_input.a.x));
    let var_2 = select(vec3<i32>(-1i, 1i, ~(i32(-1i) * -arg_1.x)), arg_1, !var_1.a == true);
    return var_2.x;
}

fn func_2() -> vec3<bool> {
    global3 = array<Struct_2, 11>();
    global0 = array<Struct_3, 25>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1323f, 420f, -694f) + vec3<f32>(-188f, -776f, -765f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(639f, -1581f, -1084f) - vec3<f32>(1000f, -135f, -1395f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(496f, 625f, -587f) - vec3<f32>(778f, 1119f, 791f)))))))), Struct_1(4294967295u, u_input.b.yzx | ~vec3<i32>(u_input.b.x, u_input.b.x, 1i), firstLeadingBit(~u_input.a.xz)), u_input.c);
    var var_1 = func_5(vec2<u32>(firstTrailingBit(~abs(var_0.b.c.x)), func_4(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), global0[_wgslsmith_index_u32(func_3(max(vec4<i32>(var_0.c, u_input.b.x, -54939i, 40892i), u_input.b), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), 25u)], false, Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), Struct_1(u_input.a.x, vec3<i32>(var_0.c, var_0.b.b.x, -11249i), vec2<u32>(u_input.a.x, 39897u)), u_input.b.x))), _wgslsmith_clamp_vec3_i32((~var_0.b.b ^ vec3<i32>(var_0.b.b.x, -83634i, -2147483647i)) >> ((select(global1[_wgslsmith_index_u32(31806u, 12u)], vec3<u32>(4294967295u, 0u, 4294967295u), false) | reverseBits(u_input.a.yyx)) % vec3<u32>(32u)), var_0.b.b, vec3<i32>(var_0.c, u_input.c ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x), 1i)), -(~_wgslsmith_mod_i32(var_0.b.b.x, 1i | u_input.b.x)));
    let var_2 = Struct_4(true);
    return !vec3<bool>(true, var_2.a, !(!any(vec2<bool>(false, false))));
}

fn func_1() -> bool {
    global2 = any(!select(func_2(), vec3<bool>(true, all(vec3<bool>(false, false, false)), 28344u > u_input.a.x), vec3<bool>(true, true, any(vec4<bool>(false, false, false, false)))));
    let var_0 = func_2().xy;
    global0 = array<Struct_3, 25>();
    var var_1 = any(select(var_0, var_0, func_2().x));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2805f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1142f, 355f))), _wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(min(-814f, -995f)), 251f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1805f, -680f, -277f, 394f) * _wgslsmith_div_vec4_f32(vec4<f32>(-316f, -1450f, -767f, -1710f), vec4<f32>(1000f, -315f, -1678f, 1274f))))))));
    return var_0.x;
}

fn func_6(arg_0: bool, arg_1: u32) -> f32 {
    global3 = array<Struct_2, 11>();
    let var_0 = select(vec3<bool>(true, !any(vec2<bool>(true, true)), true), vec3<bool>(true, false, func_1()), select(vec3<bool>(!(!arg_0), all(!vec2<bool>(arg_0, true)), true), vec3<bool>(true, false, true), !func_2()));
    global0 = array<Struct_3, 25>();
    var var_1 = Struct_5(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(194f)) * -1252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(310f, 989f))), _wgslsmith_f_op_f32(f32(-1f) * -196f)), Struct_1(75805u, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -1200i), u_input.b.zyx), reverseBits(~u_input.a.yx)), -52972i), Struct_4(true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)))) * -315f);
    return var_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global0 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_f_op_f32(func_6(func_1(), ~u_input.a.x)) <= -1109f;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_mod_u32(~(~u_input.a.x) | u_input.a.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<u32>(u_input.a.x, 60364u, u_input.a.x)), firstLeadingBit(u_input.a.wyw))), u_input.a.x), 11u)];
    var var_3 = false;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5044u, func_3(vec4<i32>(1i, 0i, var_0, var_0) | ~vec4<i32>(var_0, -27825i, 1i, -1i), select(vec2<bool>(var_1, var_1), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), _wgslsmith_mod_u32(25072u, ~11378u)), 25u)];
    var_2 = var_4.a;
    var var_5 = var_4.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-243f, var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + _wgslsmith_f_op_f32(-var_4.a.a.x)), _wgslsmith_f_op_f32(select(1604f, var_2.a.x, false))))), abs(reverseBits(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(19386u, var_2.b.a, var_2.b.a, var_2.b.a), u_input.a) ^ _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, 31335u, var_2.b.a, var_4.a.b.a)))), var_4.a.a.x);
}

