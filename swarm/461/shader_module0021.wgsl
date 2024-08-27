struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-509f), Struct_2(784f), Struct_2(1132f), Struct_2(945f), Struct_2(-1856f), Struct_2(1654f), Struct_2(-626f), Struct_2(347f), Struct_2(305f), Struct_2(-1000f), Struct_2(-124f), Struct_2(129f), Struct_2(391f), Struct_2(-1704f), Struct_2(-177f), Struct_2(-1404f), Struct_2(-1778f), Struct_2(-2214f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> i32 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_0 = arg_0.e;
    global0 = array<Struct_2, 18>();
    return u_input.a.x;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_4(Struct_3(select(select(1i, func_3(Struct_3(u_input.a.x, vec2<f32>(-592f, 271f), vec2<f32>(-630f, 1153f), vec3<u32>(11870u, 98347u, arg_0), Struct_1(1000f, vec3<f32>(-810f, -981f, 1072f), arg_0, -15776i)), vec4<bool>(true, false, true, true)), true), _wgslsmith_sub_i32(max(2147483647i, u_input.a.x), min(-1i, u_input.a.x)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(380f, -1160f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1439f, -162f))), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, 1u, 0u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(741f)), _wgslsmith_f_op_f32(1296f - 333f), 1247f), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, 10821u), countOneBits(vec2<u32>(73817u, 0u))), ~(-1i))), Struct_3((_wgslsmith_mult_i32(-48331i, 18105i) | u_input.a.x) | _wgslsmith_dot_vec3_i32(u_input.a ^ vec3<i32>(0i, u_input.a.x, 16984i), select(vec3<i32>(-8495i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, 0i), false)), vec2<f32>(-1748f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(453f, -470f))))), ~(~(vec3<u32>(arg_0, 87606u, arg_0) & vec3<u32>(arg_0, 35496u, 88217u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -811f), vec3<f32>(_wgslsmith_f_op_f32(abs(731f)), _wgslsmith_f_op_f32(trunc(-348f)), 1263f), arg_0, i32(-1i) * -2147483647i)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(f32(-1f) * -1293f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-146f, _wgslsmith_f_op_f32(f32(-1f) * -546f), -217f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(196f, -711f, 1124f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(403f, 1507f, -1561f) + vec3<f32>(-1554f, -1171f, -1000f)))), arg_0, _wgslsmith_mult_i32(min(-2147483647i, -60801i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), u_input.a)))), _wgslsmith_f_op_f32(2371f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)))));
    global0 = array<Struct_2, 18>();
    var var_1 = (!(!any(vec2<bool>(true, false))) & all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)))) & any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false));
    var_1 = 30796u >= (~(~arg_0) ^ _wgslsmith_mod_u32(arg_0, ~var_0.a.d.x));
    var_1 = ((abs(arg_0) >> (arg_0 % 32u)) | 1u) <= firstLeadingBit(arg_0);
    return min(_wgslsmith_mod_u32(1u, abs(9999u)), _wgslsmith_dot_vec4_u32(vec4<u32>(35630u, 4294967295u, 1u, 47215u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, var_0.a.e.c, 0u, 27205u), vec4<u32>(8089u, var_0.b.d.x, 56216u, 11460u) ^ vec4<u32>(var_0.b.e.c, arg_0, 24979u, 21266u)), max(vec4<u32>(var_0.c.c, var_0.b.d.x, arg_0, 0u) >> (vec4<u32>(arg_0, arg_0, 50130u, 58146u) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_0.b.e.c, arg_0, var_0.c.c)), abs(max(vec4<u32>(22383u, 9977u, arg_0, 1u), vec4<u32>(22082u, var_0.c.c, arg_0, var_0.c.c))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    var var_0 = vec4<u32>(0u, ~(~(~func_2(50139u))), ~63061u, _wgslsmith_mult_u32(firstLeadingBit(~(~1u)), 1u));
    var_0 = vec4<u32>(var_0.x, ~0u, ~(var_0.x | var_0.x), _wgslsmith_mod_u32(select(_wgslsmith_mult_u32(var_0.x, 4294967295u), ~(~1u), !arg_1 | false), ~var_0.x));
    var var_1 = vec2<i32>(-(~abs(1i)), -u_input.a.x);
    let var_2 = var_0.zxx;
    let var_3 = Struct_4(Struct_3(~(var_1.x ^ ~u_input.a.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1528f + 880f), _wgslsmith_f_op_f32(f32(-1f) * -282f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(839f, 1272f), vec2<f32>(935f, 612f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-405f, 782f)))), (max(vec3<u32>(48622u, var_2.x, 94168u), var_0.zyy) & vec3<u32>(var_0.x, 1u, var_0.x)) >> (~(~var_0.zzy) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 335f) + _wgslsmith_f_op_f32(f32(-1f) * -1422f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1191f, 1470f, 290f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1751f, -1000f, 1783f)))), _wgslsmith_sub_u32(var_2.x, 37968u) & ~var_0.x, arg_0.x)), Struct_3(firstLeadingBit(var_1.x | var_1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-997f, 1000f)) - vec2<f32>(1515f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(369f, 522f))), var_0.wxz, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-958f)), -386f, any(vec2<bool>(false, false)))), vec3<f32>(1115f, _wgslsmith_f_op_f32(ceil(1136f)), _wgslsmith_f_op_f32(round(1000f))), ~min(1u, var_0.x), _wgslsmith_mod_i32(-30511i << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 0i, arg_0.x), vec3<i32>(-33127i, -2147483647i, 1i))))), Struct_1(-592f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-711f * 1016f), -717f, _wgslsmith_f_op_f32(-650f - -1403f))), ~(~(var_0.x & var_2.x)), 35490i), -504f);
    return _wgslsmith_dot_vec2_i32(~(firstLeadingBit(u_input.a.zy) >> (~vec2<u32>(var_3.a.e.c, var_0.x) % vec2<u32>(32u))), abs(vec2<i32>(u_input.a.x | _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~28122i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 18>();
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, abs(func_1(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), true)), ~u_input.a.x >> (1u % 32u), 10616i), abs(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, -1i, 30326i), vec4<i32>(2147483647i, 0i, 2147483647i, -40567i), vec4<i32>(1i, u_input.a.x, -1i, 1i)), firstLeadingBit(vec4<i32>(10677i, u_input.a.x, u_input.a.x, 106950i)), any(vec3<bool>(true, false, true)))));
    global0 = array<Struct_2, 18>();
    var var_1 = Struct_4(Struct_3(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) & firstTrailingBit(countOneBits(0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2041f, 516f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(560f, -140f))), vec2<f32>(450f, -1830f), true))), vec2<f32>(1f, 1f), ~vec3<u32>(1u, 1u, 1u), Struct_1(1f, vec3<f32>(-374f, 1253f, _wgslsmith_f_op_f32(1000f - -1463f)), 1u >> (abs(1u) % 32u), 47967i)), Struct_3(-(~(~u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(550f, -1216f), vec2<f32>(695f, 1965f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1509f, 178f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) * _wgslsmith_f_op_f32(1894f - 369f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1351f, -187f)))), vec3<u32>(1u, 1u, ~_wgslsmith_div_u32(1u, 96152u)), Struct_1(-1730f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u) & firstTrailingBit(40658u), u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-234f)) - _wgslsmith_div_f32(142f, 1350f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-593f, -2348f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(573f)) * _wgslsmith_f_op_f32(ceil(-1166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(573f, 528f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 12540u, 72170u, 4294967295u), vec4<u32>(0u, 4294967295u, 187u, 4294967295u)), select(vec4<u32>(54134u, 1u, 2444u, 20300u), vec4<u32>(4294967295u, 3063u, 33403u, 0u), vec4<bool>(false, true, false, true)), vec4<u32>(0u, 63141u, 0u, 4294967295u))), func_3(Struct_3(func_3(Struct_3(1i, vec2<f32>(-476f, -1527f), vec2<f32>(-2874f, 329f), vec3<u32>(4294967295u, 0u, 20924u), Struct_1(-3238f, vec3<f32>(643f, 1975f, -550f), 0u, -43866i)), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1931f, -853f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, 1433f)), ~vec3<u32>(79040u, 1u, 39290u), Struct_1(599f, vec3<f32>(-693f, -639f, 1483f), 19450u, u_input.a.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f + 554f) * -170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1634f, 1121f)) + -360f), true)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -257f), -739f, true))));
    let var_2 = var_1.a;
    var_0 = ~0i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f * 1869f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1607f, var_1.d, var_1.c.a, var_1.a.b.x), vec4<f32>(-308f, var_1.c.a, -632f, var_2.c.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1524f, var_3.a, var_3.a, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, -469f, var_2.b.x, var_1.c.a)), true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, var_3.a, -1991f, 351f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.e.a, 189f, 122f, -2109f)))))), vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.d.x, var_2.d.x), 0u), var_2.e.c), firstLeadingBit(~reverseBits(var_2.d.yx)), vec4<f32>(var_2.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a - var_2.e.a) + var_3.a), 352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.b.x)))), var_1.a.d.x);
}

