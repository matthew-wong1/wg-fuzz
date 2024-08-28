struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = Struct_3(vec2<i32>(-1i, arg_2.a.x), Struct_2(arg_2.c.c.a, select(select(!arg_2.c.b, vec2<bool>(arg_2.b.b.x, true), select(arg_2.b.b, vec2<bool>(true, false), arg_2.c.b.x)), select(select(vec2<bool>(true, arg_2.c.b.x), arg_2.b.b, arg_2.b.b.x), arg_2.c.b, arg_2.c.b.x), (0i >= u_input.c.x) && (arg_2.b.c.c > 20946i)), arg_2.b.c), arg_2.b, arg_0);
    let var_1 = vec3<u32>(u_input.a, max(arg_0, 13831u), 17470u);
    var var_2 = var_0.b.c;
    let var_3 = arg_2.c.c;
    var_2 = Struct_1(var_0.c.a, _wgslsmith_dot_vec3_u32(~(vec3<u32>(52472u, 34650u, var_1.x) << (~vec3<u32>(0u, 723u, 21196u) % vec3<u32>(32u))), vec3<u32>(31018u, var_0.b.c.b, 50616u)), _wgslsmith_sub_i32(abs(u_input.b >> (arg_0 % 32u)), var_0.a.x) << (~10974u % 32u), arg_2.c.c.d);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_mod_vec2_i32(~reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x))), -u_input.c), Struct_2(vec4<f32>(543f, -512f, _wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(1140f + _wgslsmith_f_op_f32(f32(-1f) * -1826f))), vec2<bool>(all(vec2<bool>(true, true)), true), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(565f, 1403f, true)), _wgslsmith_div_f32(315f, -391f), _wgslsmith_f_op_f32(round(-1429f)), _wgslsmith_f_op_f32(f32(-1f) * -1009f)), u_input.a, abs(i32(-1i) * -2147483647i), -334f)), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-672f, _wgslsmith_f_op_f32(1366f * -121f), _wgslsmith_f_op_f32(f32(-1f) * -3219f), _wgslsmith_f_op_f32(floor(194f))), vec4<f32>(-1011f, _wgslsmith_f_op_f32(906f - -368f), _wgslsmith_f_op_f32(func_3(u_input.a, vec4<f32>(1209f, 818f, -147f, -1000f), Struct_3(vec2<i32>(-2147483647i, u_input.b), Struct_2(vec4<f32>(-1602f, -679f, 113f, 178f), vec2<bool>(false, true), Struct_1(vec4<f32>(287f, 332f, 1451f, -2108f), u_input.a, 0i, 948f)), Struct_2(vec4<f32>(-572f, -1000f, -816f, 1645f), vec2<bool>(false, false), Struct_1(vec4<f32>(-292f, 1391f, -632f, 1428f), u_input.a, 31833i, -517f)), 1u), u_input.a)), _wgslsmith_f_op_f32(trunc(870f))), !any(vec3<bool>(true, true, false)))), vec2<bool>(~4294967295u < (u_input.a << (u_input.a % 32u)), true), Struct_1(vec4<f32>(1075f, _wgslsmith_f_op_f32(floor(-658f)), 230f, 983f), 0u, 0i, 115f)), _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(u_input.a, u_input.a)), ~1u));
    var_0 = Struct_3(select(_wgslsmith_div_vec2_i32(select(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(-2147483647i, var_0.b.c.c)), true), select(u_input.c, var_0.a ^ vec2<i32>(u_input.b, 82757i), select(vec2<bool>(var_0.c.b.x, false), vec2<bool>(var_0.c.b.x, var_0.c.b.x), true))), vec2<i32>(_wgslsmith_mult_i32(-17699i, -var_0.c.c.c), _wgslsmith_dot_vec2_i32(vec2<i32>(24791i, 1i), ~u_input.c)), var_0.c.b.x), var_0.b, var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, _wgslsmith_add_u32(30227u, 0u), u_input.a) ^ ~(vec4<u32>(0u, 0u, u_input.a, var_0.d) >> (vec4<u32>(var_0.b.c.b, var_0.c.c.b, u_input.a, 4294967295u) % vec4<u32>(32u))), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.b.c.b, 88856u, 21512u), ~vec4<u32>(51870u, 100668u, 4294967295u, u_input.a), firstTrailingBit(vec4<u32>(32939u, u_input.a, var_0.c.c.b, 0u))), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))));
    let var_1 = -306f;
    var var_2 = Struct_4(select(min(-vec3<i32>(1i, 2147483647i, u_input.b), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, -1i)), _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(u_input.c.x, 1i)), ~u_input.c.x)), ~vec3<i32>(var_0.c.c.c, -52412i, 2147483647i), select(select(vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.b.b.x), vec3<bool>(var_0.c.b.x, false, var_0.b.b.x), select(vec3<bool>(var_0.c.b.x, var_0.c.b.x, false), vec3<bool>(var_0.b.b.x, var_0.c.b.x, var_0.c.b.x), vec3<bool>(true, true, var_0.b.b.x))), vec3<bool>(true, var_0.b.b.x & false, select(var_0.c.b.x, false, var_0.c.b.x)), false)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.c.a.x, var_0.c.c.d)), _wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(724f + var_0.b.c.d), -155f, !var_0.b.b.x)), var_1), countOneBits(u_input.a), -1i, _wgslsmith_f_op_f32(floor(1000f))), Struct_1(var_0.b.a, var_0.d, -max(var_0.a.x, ~u_input.b), 671f), all(!select(!vec4<bool>(true, var_0.b.b.x, var_0.c.b.x, true), !vec4<bool>(false, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x), true)), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.b.c.a), var_0.c.b, Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.b.a)), reverseBits(1u), ~(~14234i), -1088f)));
    var var_3 = u_input.a;
    return false;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * 1949f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(440f))))));
    let var_1 = abs(abs(~((vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) | vec4<u32>(30732u, 4294967295u, 13229u, 4294967295u)) & ~vec4<u32>(91730u, 4294967295u, 4294967295u, u_input.a))));
    let var_2 = arg_0.xz;
    var var_3 = Struct_3(u_input.c, Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(var_0.x, 1899f, -1137f, arg_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, -430f, 350f, 565f))))), vec2<bool>(func_2(), all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -1439f, -720f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(733f, 699f, arg_0.x, arg_0.x) * arg_0)), 6946u, -26358i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_2.x))), Struct_2(arg_0, select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(arg_0, ~_wgslsmith_sub_u32(4294967295u, var_1.x), countOneBits(u_input.c.x), 1511f)), var_1.x);
    var var_4 = min(reverseBits(select(countOneBits(-vec3<i32>(-24933i, var_3.b.c.c, -1i)), _wgslsmith_div_vec3_i32(~vec3<i32>(var_3.c.c.c, 53560i, 44735i), min(vec3<i32>(u_input.b, 48557i, u_input.b), vec3<i32>(u_input.b, 2147483647i, -2147483647i))), var_3.c.b.x)), select(vec3<i32>(-u_input.c.x, -2147483647i, -1i) | (firstLeadingBit(vec3<i32>(1i, u_input.c.x, -20374i)) | select(vec3<i32>(4802i, 16999i, u_input.c.x), vec3<i32>(u_input.c.x, -64696i, -1i), false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(26092i, var_3.b.c.c), -8186i, u_input.b), -abs(vec3<i32>(var_3.b.c.c, -28157i, var_3.a.x)), vec3<i32>(u_input.c.x, -var_3.b.c.c, ~2147483647i)), select(!select(vec3<bool>(true, var_3.c.b.x, true), vec3<bool>(var_3.c.b.x, var_3.c.b.x, var_3.b.b.x), false), !vec3<bool>(var_3.c.b.x, var_3.c.b.x, true), !func_2())));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1143f - _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(155f, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f))), var_3.c.a.x, _wgslsmith_f_op_f32(-926f - var_3.b.a.x)), u_input.a, ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_3.b.c.c, -2147483647i, 2147483647i), vec3<i32>(0i, var_3.a.x, var_3.a.x)), ~vec3<i32>(-18048i, 35762i, 1i), max(vec3<i32>(0i, 1i, 1i), vec3<i32>(var_4.x, var_4.x, 28987i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, var_4.x, u_input.c.x), ~vec3<i32>(-2210i, var_3.c.c.c, -11584i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1008f))), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(2230f, -1169f, -475f, -685f) + vec4<f32>(1011f, -1000f, -148f, -894f)))), vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(-1276f - -1858f));
    let var_1 = _wgslsmith_f_op_f32(func_3(max(_wgslsmith_add_u32(u_input.a, 31684u), _wgslsmith_add_u32(max(u_input.a, ~u_input.a), abs(34u) & firstTrailingBit(4294967295u))), var_0.a, Struct_3(vec2<i32>(~var_0.c & _wgslsmith_add_i32(var_0.c, -70463i), _wgslsmith_mod_i32(var_0.c, -32323i)), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), vec2<bool>(false, true), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(897f, -1094f, -1206f, var_0.d) + vec4<f32>(821f, 238f, 2147f, 472f)), var_0.a.x)), Struct_2(var_0.a, vec2<bool>(false, any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(781f, -544f, var_0.a.x, var_0.d))), var_0.b, -10262i, _wgslsmith_f_op_f32(-165f * var_0.d))), var_0.b), 39914u));
    let var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.b, 32147u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, var_0.b), vec4<u32>(var_0.b, var_0.b, 79201u, var_0.b))), select(0u, 0u, true), ~39758u), var_0.b, ~(~39749u ^ ~var_0.b), _wgslsmith_add_u32(7986u, max(~23973u, ~var_0.b)));
    var var_3 = _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -533f));
    let var_4 = Struct_3(_wgslsmith_mult_vec2_i32(~(~_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(var_0.c, var_0.c))), abs(countOneBits(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, vec2<i32>(-1i, -1i))))), Struct_2(vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(552f - var_0.d), var_0.a.x)), var_0.a.x), vec2<bool>(true, true), var_0), Struct_2(_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, all(vec2<bool>(false, false)))), vec2<bool>(true, true), var_0), _wgslsmith_sub_u32(52760u, _wgslsmith_dot_vec3_u32(var_2.zwy, ~vec3<u32>(4294967295u, 4294967295u, var_2.x) >> (var_2.yzz % vec3<u32>(32u)))));
    var var_5 = -1107f;
    let var_6 = _wgslsmith_f_op_vec3_f32(-var_4.c.a.xyx);
    var_3 = var_0.d;
    var var_7 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, var_4.c.c.d, 722f, var_1) + var_4.b.c.a))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 565f, -151f, 1700f))), vec4<f32>(-2583f, var_0.d, _wgslsmith_f_op_f32(1596f - -1136f), _wgslsmith_f_op_f32(-var_0.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c.c.a + _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-844f, 164f, -353f, 115f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, -1042f, var_6.x, var_0.a.x) + vec4<f32>(var_0.a.x, var_6.x, var_1, 452f)), vec4<f32>(360f, -227f, var_4.c.c.a.x, var_1))) + _wgslsmith_f_op_vec4_f32(select(var_4.b.c.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, var_4.c.a.x, -199f, var_1) + vec4<f32>(var_6.x, 1000f, var_0.a.x, var_1)), vec4<bool>(all(vec3<bool>(true, true, var_4.c.b.x)), !var_4.c.b.x, var_4.b.b.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, select(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(var_4.c.c.c, -1i)) | firstLeadingBit(var_4.a), select(vec2<i32>(-34515i, u_input.b), vec2<i32>(u_input.c.x, var_0.c), all(vec2<bool>(var_4.c.b.x, false))), !var_4.c.b.x) ^ _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-44301i, 6939i), vec2<i32>(var_0.c, -37309i)) ^ -vec2<i32>(1333i, u_input.b), -(~vec2<i32>(1i, 1i))));
}

