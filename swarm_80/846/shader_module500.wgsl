struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(16896u, 1u, 47667u);

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(false, Struct_2(false, vec4<i32>(0i, 0i, i32(-2147483648), 6087i), vec4<f32>(-1429f, -709f, -898f, 400f), Struct_1(vec4<bool>(false, false, true, true), 0u, i32(-2147483648), false), vec2<f32>(374f, -1582f)), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, -9695i, true), 0u), Struct_3(true, Struct_2(true, vec4<i32>(2147483647i, 50884i, 0i, 13680i), vec4<f32>(-931f, -1809f, -1000f, 250f), Struct_1(vec4<bool>(false, false, true, false), 38390u, 41567i, true), vec2<f32>(1000f, -1314f)), Struct_1(vec4<bool>(false, false, true, true), 49982u, -1921i, true), 4294967295u), Struct_3(true, Struct_2(true, vec4<i32>(-1i, -2786i, 1i, 5238i), vec4<f32>(-1122f, 2346f, 818f, -2015f), Struct_1(vec4<bool>(true, false, true, true), 90278u, 221i, true), vec2<f32>(544f, 1351f)), Struct_1(vec4<bool>(false, true, false, false), 48144u, -1i, true), 70844u), Struct_3(true, Struct_2(false, vec4<i32>(-7702i, i32(-2147483648), -1i, -27914i), vec4<f32>(634f, -1926f, 1549f, -830f), Struct_1(vec4<bool>(true, true, true, false), 4253u, i32(-2147483648), true), vec2<f32>(108f, -1461f)), Struct_1(vec4<bool>(true, false, true, false), 14162u, -23128i, true), 29687u), Struct_3(true, Struct_2(false, vec4<i32>(0i, 1i, -58531i, 1i), vec4<f32>(-1000f, -406f, 419f, 1000f), Struct_1(vec4<bool>(true, false, false, false), 69581u, 0i, false), vec2<f32>(670f, 1123f)), Struct_1(vec4<bool>(true, true, false, true), 0u, 72110i, true), 4294967295u), Struct_3(true, Struct_2(false, vec4<i32>(2147483647i, 17518i, -1i, -1i), vec4<f32>(-133f, -120f, 1527f, -809f), Struct_1(vec4<bool>(true, false, true, false), 1u, 0i, true), vec2<f32>(-856f, -616f)), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, -29468i, true), 4294967295u), Struct_3(true, Struct_2(true, vec4<i32>(1i, i32(-2147483648), 2147483647i, 1454i), vec4<f32>(927f, 1419f, -1247f, -993f), Struct_1(vec4<bool>(false, false, true, false), 0u, 0i, false), vec2<f32>(-265f, 677f)), Struct_1(vec4<bool>(false, false, true, true), 1u, 44470i, false), 3818u), Struct_3(false, Struct_2(true, vec4<i32>(2147483647i, -1i, -69089i, -1i), vec4<f32>(171f, -628f, 700f, 2212f), Struct_1(vec4<bool>(false, false, false, false), 0u, 0i, false), vec2<f32>(1459f, -870f)), Struct_1(vec4<bool>(false, false, false, true), 1u, -19372i, false), 4294967295u), Struct_3(false, Struct_2(true, vec4<i32>(-63245i, 18707i, -1i, -24337i), vec4<f32>(305f, 1342f, -287f, -239f), Struct_1(vec4<bool>(true, true, true, true), 4294967295u, 0i, false), vec2<f32>(-1684f, 1065f)), Struct_1(vec4<bool>(false, false, false, true), 21186u, 2147483647i, true), 0u), Struct_3(true, Struct_2(false, vec4<i32>(-55490i, -1i, i32(-2147483648), 1i), vec4<f32>(-547f, -1118f, 244f, 495f), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, i32(-2147483648), false), vec2<f32>(794f, 2199f)), Struct_1(vec4<bool>(false, false, true, true), 0u, 14607i, false), 87939u), Struct_3(true, Struct_2(true, vec4<i32>(470i, 2147483647i, 25978i, 0i), vec4<f32>(-331f, -209f, 436f, 124f), Struct_1(vec4<bool>(false, false, false, true), 12441u, 1i, false), vec2<f32>(489f, 1728f)), Struct_1(vec4<bool>(true, false, false, true), 2791u, -25933i, false), 4294967295u), Struct_3(true, Struct_2(true, vec4<i32>(0i, i32(-2147483648), -24063i, i32(-2147483648)), vec4<f32>(-364f, -278f, -205f, 398f), Struct_1(vec4<bool>(true, true, true, false), 17924u, 3770i, true), vec2<f32>(1000f, 290f)), Struct_1(vec4<bool>(true, false, false, true), 0u, 40618i, false), 56472u), Struct_3(false, Struct_2(true, vec4<i32>(1i, i32(-2147483648), 5559i, -1i), vec4<f32>(1762f, -149f, -856f, 1000f), Struct_1(vec4<bool>(false, false, false, false), 47226u, -31850i, false), vec2<f32>(-455f, -166f)), Struct_1(vec4<bool>(true, false, false, true), 1u, 1i, false), 1u), Struct_3(false, Struct_2(true, vec4<i32>(-7369i, 17970i, -47982i, -1i), vec4<f32>(1780f, -1661f, -394f, -1167f), Struct_1(vec4<bool>(false, false, false, false), 334u, 0i, false), vec2<f32>(515f, 103f)), Struct_1(vec4<bool>(false, false, true, true), 4294967295u, i32(-2147483648), true), 11545u), Struct_3(true, Struct_2(false, vec4<i32>(14819i, 73455i, -73763i, 0i), vec4<f32>(543f, -720f, 1233f, -635f), Struct_1(vec4<bool>(true, true, false, true), 20316u, -4191i, false), vec2<f32>(-650f, 755f)), Struct_1(vec4<bool>(false, false, true, false), 52760u, 0i, true), 107519u), Struct_3(false, Struct_2(false, vec4<i32>(-1i, -28944i, 9072i, 1i), vec4<f32>(-1237f, -298f, -1399f, 793f), Struct_1(vec4<bool>(true, false, false, false), 14430u, 0i, false), vec2<f32>(-1966f, 1000f)), Struct_1(vec4<bool>(true, false, true, true), 82147u, 1i, true), 0u), Struct_3(true, Struct_2(false, vec4<i32>(2147483647i, 2374i, 2147483647i, i32(-2147483648)), vec4<f32>(-152f, 227f, -597f, -673f), Struct_1(vec4<bool>(true, true, true, true), 24747u, i32(-2147483648), false), vec2<f32>(1000f, 1000f)), Struct_1(vec4<bool>(false, false, false, true), 28091u, -30470i, true), 795u), Struct_3(false, Struct_2(true, vec4<i32>(24031i, -8850i, i32(-2147483648), 2147483647i), vec4<f32>(-582f, 1065f, 1731f, -1213f), Struct_1(vec4<bool>(true, true, false, true), 0u, 2147483647i, true), vec2<f32>(1000f, 278f)), Struct_1(vec4<bool>(false, true, true, false), 28676u, -44155i, true), 17411u), Struct_3(false, Struct_2(false, vec4<i32>(44883i, -69640i, 22273i, 1i), vec4<f32>(-1412f, -671f, 1850f, -584f), Struct_1(vec4<bool>(false, true, true, false), 0u, -1i, false), vec2<f32>(402f, -2505f)), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, 0i, false), 22863u), Struct_3(true, Struct_2(false, vec4<i32>(-1i, 1i, 1i, 0i), vec4<f32>(-252f, -1963f, -109f, 364f), Struct_1(vec4<bool>(true, false, false, false), 17382u, 40589i, true), vec2<f32>(-706f, -319f)), Struct_1(vec4<bool>(true, true, false, true), 70161u, -35582i, false), 57602u), Struct_3(true, Struct_2(false, vec4<i32>(0i, 35052i, -1i, 35957i), vec4<f32>(-608f, -715f, 275f, 2010f), Struct_1(vec4<bool>(true, true, false, false), 1u, 1i, false), vec2<f32>(1225f, -1000f)), Struct_1(vec4<bool>(true, false, false, true), 13816u, -21180i, false), 4294967295u));

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(true, Struct_2(false, vec4<i32>(-11839i, 2147483647i, -27365i, 49824i), vec4<f32>(-735f, 1575f, -1588f, 321f), Struct_1(vec4<bool>(true, false, true, false), 56846u, 18487i, true), vec2<f32>(527f, -355f)), Struct_1(vec4<bool>(false, false, false, false), 54643u, 14798i, false), 64023u), Struct_3(false, Struct_2(true, vec4<i32>(2147483647i, -13562i, 2147483647i, 1i), vec4<f32>(-678f, 154f, -1251f, 329f), Struct_1(vec4<bool>(true, false, true, false), 14625u, 2147483647i, true), vec2<f32>(-900f, 951f)), Struct_1(vec4<bool>(false, false, false, false), 82077u, 0i, true), 4294967295u), Struct_3(true, Struct_2(false, vec4<i32>(15173i, 1i, -1i, 2147483647i), vec4<f32>(818f, -195f, -369f, 313f), Struct_1(vec4<bool>(true, true, true, false), 1728u, 63159i, true), vec2<f32>(241f, 721f)), Struct_1(vec4<bool>(true, true, true, true), 109262u, 0i, true), 43971u), Struct_3(false, Struct_2(false, vec4<i32>(0i, 1i, -6718i, -27375i), vec4<f32>(-1927f, -978f, 1907f, 262f), Struct_1(vec4<bool>(true, true, true, true), 4294967295u, -36340i, false), vec2<f32>(-154f, -961f)), Struct_1(vec4<bool>(false, true, false, false), 53717u, i32(-2147483648), false), 2716u), Struct_3(true, Struct_2(true, vec4<i32>(-41458i, -9887i, -15713i, 105482i), vec4<f32>(333f, 1857f, -818f, -221f), Struct_1(vec4<bool>(true, true, true, true), 6324u, -1i, true), vec2<f32>(-1000f, -572f)), Struct_1(vec4<bool>(true, false, true, true), 0u, -11499i, false), 44970u), Struct_3(false, Struct_2(true, vec4<i32>(i32(-2147483648), 33389i, 1i, 1i), vec4<f32>(-1034f, -752f, -125f, -1275f), Struct_1(vec4<bool>(true, false, false, true), 4294967295u, -1i, false), vec2<f32>(-1166f, 1766f)), Struct_1(vec4<bool>(false, true, false, false), 16987u, 2147483647i, false), 1u), Struct_3(true, Struct_2(true, vec4<i32>(2147483647i, 1i, 37267i, -1i), vec4<f32>(541f, -524f, -268f, -522f), Struct_1(vec4<bool>(true, false, false, false), 0u, 2147483647i, true), vec2<f32>(-734f, -772f)), Struct_1(vec4<bool>(false, false, true, true), 4294967295u, -61728i, true), 4294967295u), Struct_3(false, Struct_2(true, vec4<i32>(1i, 27727i, 23754i, -41377i), vec4<f32>(495f, 297f, -1995f, 708f), Struct_1(vec4<bool>(false, false, false, false), 0u, 1i, true), vec2<f32>(296f, -233f)), Struct_1(vec4<bool>(true, false, false, true), 8831u, 22610i, false), 62216u), Struct_3(true, Struct_2(false, vec4<i32>(0i, i32(-2147483648), 24908i, 42063i), vec4<f32>(783f, -1000f, -714f, 1321f), Struct_1(vec4<bool>(false, true, false, true), 82537u, 12177i, false), vec2<f32>(124f, 108f)), Struct_1(vec4<bool>(false, true, true, true), 4294967295u, -31431i, true), 33906u), Struct_3(true, Struct_2(false, vec4<i32>(-1i, 1i, 15473i, 2147483647i), vec4<f32>(1262f, 293f, 1000f, 1000f), Struct_1(vec4<bool>(false, true, false, true), 3006u, 2147483647i, true), vec2<f32>(559f, 1127f)), Struct_1(vec4<bool>(false, false, false, true), 0u, i32(-2147483648), true), 52891u));

var<private> global3: array<vec2<i32>, 15>;

var<private> global4: array<vec3<u32>, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = Struct_1(select(!vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.a.x != 10683i, true, any(vec3<bool>(false, true, false))), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true)), true), 21115u, 0i, true);
    global2 = array<Struct_3, 10>();
    let var_1 = global2[_wgslsmith_index_u32(min(u_input.b.x, var_0.b), 10u)];
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~2002u, var_1.d ^ u_input.b.x, var_0.b), var_1.d) | firstLeadingBit(var_1.d);
    global0 = array<u32, 3>();
    return _wgslsmith_sub_u32(0u, ~0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 1u, ~var_0.b, _wgslsmith_dot_vec3_u32(u_input.b.zxw, u_input.b.xwx)), u_input.b) % 32u));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(!select(vec4<bool>(arg_0 >= 765i, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), true == any(vec4<bool>(false, true, true, true))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(107880u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(70205u, 3u)], 4294967295u, u_input.b.x), arg_1)), 3u)], 3u)] & abs(_wgslsmith_div_u32(4294967295u, countOneBits(4294967295u))), 3u)], ~(-1i), true);
    let var_2 = global0[_wgslsmith_index_u32(func_3(), 3u)];
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-236f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(124f, 1067f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1037f)) + 773f), false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1280f * -1000f)))))));
    global1 = array<Struct_3, 21>();
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(~28515u, ~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33190u, 3u)], 3u)], 3u)])), 1u) ^ u_input.b.xyx;
    global4 = array<vec3<u32>, 13>();
    global1 = array<Struct_3, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-495f + 1402f), _wgslsmith_f_op_f32(f32(-1f) * -851f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = true;
    return func_2(u_input.a.x, u_input.b.wyw);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = arg_2.c;
    var var_1 = Struct_2(false, arg_2.b.b, vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.e.x))), _wgslsmith_f_op_f32(arg_2.b.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * arg_2.b.e.x))), arg_2.b.e.x), Struct_1(!(!arg_1.a), ~(4294967295u & var_0.b), ~0i, all(arg_0)), _wgslsmith_f_op_vec2_f32(arg_2.b.c.xw + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(518f * arg_2.b.e.x), arg_2.b.e.x))));
    let var_2 = -1228f;
    let var_3 = Struct_1(!vec4<bool>(arg_3.x, true || select(false, false, arg_1.d), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_2.b.b.x, -21891i, var_0.c), var_1.b), vec3<u32>(4294967295u, u_input.b.x, 54150u) ^ vec3<u32>(var_1.d.b, 0u, var_1.d.b)).d, var_0.a.x), _wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(var_1.d.b, global0[_wgslsmith_index_u32(var_1.d.b, 3u)], 1u, 13635u)), abs(firstLeadingBit(countOneBits(vec4<u32>(arg_1.b, 47503u, arg_2.d, arg_2.d))))), arg_1.c, true);
    var_0 = var_1.d;
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global3 = array<vec2<i32>, 15>();
    global2 = array<Struct_3, 10>();
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~func_4(vec3<bool>(arg_0.c.a.x, var_0.a, true), arg_0.b.d, Struct_3(true, Struct_2(true, arg_0.b.b, vec4<f32>(-731f, 122f, -837f, -1171f), Struct_1(vec4<bool>(false, true, arg_0.c.a.x, true), arg_0.b.d.b, -18612i, false), arg_0.b.e), arg_0.c, arg_0.c.b), vec2<bool>(true, false)).c.b ^ var_0.d.b, 4294967295u), _wgslsmith_div_vec2_u32(select(~abs(u_input.b.zw), vec2<u32>(var_0.d.b, 0u), arg_0.c.d), _wgslsmith_div_vec2_u32(u_input.b.yw, u_input.b.zx)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_0.c);
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    global4 = array<vec3<u32>, 13>();
    global1 = array<Struct_3, 21>();
    global2 = array<Struct_3, 10>();
    global4 = array<vec3<u32>, 13>();
    var var_0 = func_5(func_4(select(vec3<bool>(false, true, u_input.a.x <= u_input.a.x), vec3<bool>(true, true, true), true), func_1(), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], 5661u)), select(vec2<u32>(65469u, 16210u), u_input.b.wx, func_2(u_input.a.x, vec3<u32>(17715u, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(143133u, 3u)])).a.wz)), 21u)], vec2<bool>(select(-18783i >= u_input.a.x, true, true), true)), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_4(vec3<bool>(true, var_0.d.d, var_0.d.a.x), Struct_1(vec4<bool>(var_0.a, var_0.d.d, var_0.a, var_0.d.a.x), global0[_wgslsmith_index_u32(46718u, 3u)], u_input.a.x, false), Struct_3(false, Struct_2(true, var_0.b, vec4<f32>(var_0.c.x, var_0.e.x, -1306f, 348f), Struct_1(var_0.d.a, u_input.b.x, u_input.a.x, true), var_0.c.xw), var_0.d, 0u), vec2<bool>(var_0.a, var_0.a)).c.a.yxx, Struct_1(var_0.d.a, 1u, var_0.d.c, var_0.a), func_4(var_0.d.a.zyw, var_0.d, global1[_wgslsmith_index_u32(4294967295u, 21u)], var_0.d.a.zz), !var_0.d.a.yx), ~0u).c + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.c)))))), func_4(func_4(var_0.d.a.wzy, Struct_1(func_1().a, u_input.b.x, _wgslsmith_div_i32(-30599i, var_0.b.x), !var_0.a), func_4(var_0.d.a.wxz, Struct_1(var_0.d.a, var_0.d.b, -1i, true), func_4(vec3<bool>(var_0.d.d, var_0.a, var_0.d.d), Struct_1(var_0.d.a, 4294967295u, var_0.b.x, var_0.a), Struct_3(var_0.d.a.x, Struct_2(var_0.a, vec4<i32>(var_0.d.c, var_0.b.x, var_0.b.x, 2147483647i), vec4<f32>(1383f, var_0.e.x, -1830f, -570f), Struct_1(var_0.d.a, 8346u, -18980i, var_0.d.a.x), vec2<f32>(var_0.e.x, var_0.e.x)), var_0.d, 14717u), var_0.d.a.zy), func_4(var_0.d.a.wwy, Struct_1(vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.a.x, var_0.d.d), global1[_wgslsmith_index_u32(48029u, 21u)], vec2<bool>(false, var_0.d.a.x)).b.d.a.zx), func_5(Struct_3(var_0.a, Struct_2(var_0.a, var_0.b, var_0.c, var_0.d, var_0.c.wy), Struct_1(vec4<bool>(true, true, false, var_0.a), global0[_wgslsmith_index_u32(1u, 3u)], -6014i, var_0.d.d), 0u), 1u).d.a.wx).c.a.zzx, var_0.d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~u_input.b.zxw), vec3<u32>(_wgslsmith_mod_u32(var_0.d.b, 1u), ~68440u, var_0.d.b)), 10u)], func_2(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.d.c, -2147483647i, -29325i)), vec3<i32>(-54498i, 1i, 0i)), vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], max(var_0.d.b, 64694u), 6274u)).a.zw).b.d.c);
}

