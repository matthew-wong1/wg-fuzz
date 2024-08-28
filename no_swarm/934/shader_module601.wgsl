struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> vec2<i32> {
    let var_0 = !(!arg_0.zw);
    var var_1 = vec2<i32>(arg_2, _wgslsmith_clamp_i32(u_input.e, _wgslsmith_sub_i32(2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 4294967295u, 1u)) % 32u), -909i), abs(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(u_input.d.yw, vec2<i32>(u_input.a.x, -1601i))))));
    var_1 = -(~u_input.a);
    var_1 = u_input.d.xx;
    let var_2 = !all(vec2<bool>(1000f >= arg_1.x, true));
    return vec2<i32>(-1i) * -u_input.d.zx;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f - 354f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1161f + -719f) + -954f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f * -109f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-633f + -649f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1334f)))), 988f)));
    var var_2 = Struct_1(arg_0, !vec4<bool>(!(939u > u_input.c), true, false, min(1u, u_input.c) > u_input.c), vec3<u32>(~(~91835u) >> (u_input.c % 32u), _wgslsmith_mod_u32(15648u, reverseBits(1u)), ~(~1u << (_wgslsmith_add_u32(u_input.c, u_input.c) % 32u))), firstLeadingBit(max(_wgslsmith_add_vec2_i32(u_input.d.zw, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.b, u_input.d.x))), ~func_2(vec4<bool>(true, false, true, false), var_1, -35806i))));
    var_2 = Struct_1(select(arg_0, vec4<bool>(any(select(vec3<bool>(false, false, arg_0.x), var_2.b.zzz, var_2.b.xyw)), any(var_2.a), var_2.a.x, all(vec2<bool>(false, false))), true), select(var_2.b, !vec4<bool>(var_2.a.x & true, true, true, select(true, false, false)), var_2.b), abs(vec3<u32>(37086u, ~40081u, _wgslsmith_sub_u32(reverseBits(1u), u_input.c))), u_input.d.zy);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f - -391f)));
    return _wgslsmith_f_op_f32(select(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), all(vec4<bool>(var_2.a.x, true, all(vec3<bool>(var_2.a.x, false, true)), arg_0.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = -arg_0.b << (vec2<u32>(u_input.c, arg_3.c.x) % vec2<u32>(32u));
    var var_2 = arg_3;
    let var_3 = !(_wgslsmith_mult_i32((arg_0.b.x ^ u_input.b) | ~0i, -(~(-59472i))) <= 1i);
    var var_4 = Struct_2(arg_3.b.x, Struct_1(vec4<bool>(var_2.a.x, true, true & (4294967295u < arg_1.x), !(arg_1.x <= arg_1.x)), arg_3.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.c.x, 23394u, u_input.c), vec3<u32>(0u, 4294967295u, arg_1.x)) & vec3<u32>(u_input.c, _wgslsmith_mult_u32(1u, 24860u), 1u), arg_3.d));
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_2.a, arg_2.c) * vec3<f32>(arg_0.c, -1273f, var_0.c)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-921f, var_0.a, arg_2.c)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - var_0.a)), arg_2.c, 1000f)), var_4.b);
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = false;
    let var_1 = func_4(Struct_4(_wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1108f)))), select(u_input.a, ~u_input.a | func_2(vec4<bool>(var_0, var_0, true, false), vec3<f32>(898f, 918f, 2289f), arg_0.x), -u_input.d.x <= ~0i), 643f), _wgslsmith_add_vec3_u32(vec3<u32>(select(u_input.c, 31618u, var_0), 4294967295u ^ u_input.c, 4899u) << (~vec3<u32>(1u, 5203u, 908u) % vec3<u32>(32u)), ~(~max(vec3<u32>(u_input.c, 4294967295u, 62965u), vec3<u32>(u_input.c, 38567u, u_input.c)))), Struct_4(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, false | var_0, all(vec4<bool>(var_0, true, true, false))))), ~(~u_input.d.zz) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), -647f), Struct_1(!vec4<bool>(var_0 & var_0, true, true, false), select(!vec4<bool>(false, true, var_0, false), !select(vec4<bool>(false, false, true, var_0), vec4<bool>(true, true, var_0, false), var_0), !vec4<bool>(var_0, true, true, true)), firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c)), vec3<u32>(u_input.c, u_input.c, u_input.c) >> (vec3<u32>(u_input.c, 0u, 13099u) % vec3<u32>(32u)))), arg_0));
    var var_2 = Struct_4(var_1.a.x, var_1.b.d, 1665f);
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.b.c.yz, max(var_1.b.c.xz, ~vec2<u32>(4294967295u, var_1.b.c.x)) << (vec2<u32>(u_input.c, firstTrailingBit(3496u)) % vec2<u32>(32u))), ~select(abs(var_1.b.c.yy), firstTrailingBit(vec2<u32>(var_1.b.c.x, u_input.c)) >> (vec2<u32>(u_input.c, 75568u) % vec2<u32>(32u)), !select(vec2<bool>(false, false), var_1.b.b.wy, vec2<bool>(false, var_1.b.a.x))));
    let var_4 = var_2.b.x;
    return !(!vec2<bool>(true, func_4(Struct_4(var_2.c, arg_0, var_2.c), vec3<u32>(37932u, var_1.b.c.x, u_input.c), Struct_4(var_1.a.x, vec2<i32>(2147483647i, -1508i), -566f), var_1.b).b.b.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-295f + -705f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1351f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-1000f - -837f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-285f * -2096f) + 751f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1240f - 1000f)))))));
    var var_1 = Struct_1(select(select(!(!vec4<bool>(arg_1.x, true, arg_1.x, false)), vec4<bool>(true, func_1(u_input.a).x, arg_1.x & arg_0.x, arg_1.x), arg_0), vec4<bool>(true, (u_input.e | -86975i) != func_2(arg_0, vec3<f32>(969f, -426f, -307f), -2147483647i).x, arg_1.x, !arg_0.x), vec4<bool>(func_4(Struct_4(-609f, u_input.a, -738f), vec3<u32>(1u, 1u, 1u), Struct_4(1000f, vec2<i32>(u_input.d.x, 1i), -1000f), Struct_1(vec4<bool>(false, true, arg_0.x, false), arg_0, vec3<u32>(u_input.c, u_input.c, u_input.c), u_input.d.zz)).b.a.x, func_4(Struct_4(1034f, u_input.d.xw, 1000f), vec3<u32>(u_input.c, u_input.c, 16631u), Struct_4(1457f, vec2<i32>(u_input.d.x, 2147483647i), -1798f), func_4(Struct_4(-1767f, u_input.d.zx, -1000f), vec3<u32>(2794u, 0u, 85472u), Struct_4(680f, vec2<i32>(u_input.a.x, u_input.d.x), -1638f), Struct_1(arg_0, arg_0, vec3<u32>(4294967295u, 1u, 1u), vec2<i32>(u_input.a.x, 2147483647i))).b).b.b.x, arg_1.x, (arg_1.x | false) & (1u > u_input.c))), arg_0, vec3<u32>(u_input.c, func_4(Struct_4(359f, u_input.a, _wgslsmith_div_f32(2237f, -827f)), ~(~vec3<u32>(0u, u_input.c, u_input.c)), Struct_4(1611f, ~vec2<i32>(u_input.b, 29569i), -813f), func_4(Struct_4(-816f, vec2<i32>(u_input.b, u_input.e), -235f), vec3<u32>(u_input.c, 15883u, u_input.c), Struct_4(733f, u_input.a, 743f), Struct_1(vec4<bool>(arg_1.x, false, arg_0.x, arg_1.x), arg_0, vec3<u32>(60836u, u_input.c, 41356u), vec2<i32>(u_input.a.x, 0i))).b).b.c.x, ~countOneBits(u_input.c) & ~(~4294967295u)), -_wgslsmith_add_vec2_i32((u_input.a & vec2<i32>(-15620i, 0i)) | u_input.a, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 15017i), u_input.d.wy), -vec2<i32>(u_input.a.x, -22750i))));
    let var_2 = ~var_1.c;
    var var_3 = Struct_2(_wgslsmith_mult_u32(u_input.c ^ var_1.c.x, ~_wgslsmith_mod_u32(51518u, 17630u)) >= countOneBits(min(38403u, var_2.x)), func_4(Struct_4(_wgslsmith_div_f32(735f, -1182f), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_1.d.x) << (vec2<u32>(33832u, var_1.c.x) % vec2<u32>(32u)), var_1.d), _wgslsmith_div_f32(823f, _wgslsmith_f_op_f32(-279f + 633f))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(137285u, u_input.c, 94890u)), var_2 & vec3<u32>(u_input.c, u_input.c, 0u)) >> (~firstTrailingBit(vec3<u32>(u_input.c, 1u, u_input.c)) % vec3<u32>(32u)), Struct_4(864f, -vec2<i32>(var_1.d.x, -2147483647i), _wgslsmith_f_op_f32(floor(1f))), func_4(Struct_4(-107f, countOneBits(u_input.d.zx), _wgslsmith_div_f32(635f, 1000f)), ~var_2 | ~var_2, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_div_vec2_i32(u_input.d.zz, vec2<i32>(var_1.d.x, var_1.d.x)), -172f), func_4(Struct_4(347f, u_input.d.wz, -2183f), ~vec3<u32>(u_input.c, u_input.c, u_input.c), Struct_4(-366f, u_input.a, -1700f), func_4(Struct_4(-625f, vec2<i32>(u_input.b, -1i), -739f), var_1.c, Struct_4(-1467f, vec2<i32>(var_1.d.x, var_1.d.x), 1178f), Struct_1(var_1.a, vec4<bool>(arg_1.x, false, var_1.a.x, arg_1.x), vec3<u32>(29707u, var_1.c.x, 8370u), var_1.d)).b).b).b).b);
    var var_4 = !select(var_3.b.a.xw, vec2<bool>(true, var_3.b.a.x), vec2<bool>(_wgslsmith_add_i32(-1i, u_input.a.x) >= (var_1.d.x & var_1.d.x), var_1.a.x));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(func_4(Struct_4(_wgslsmith_f_op_f32(sign(1121f)), vec2<i32>(1i, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -638f)), vec3<u32>(abs(u_input.c), ~var_1.c.x, ~79186u), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -860f), u_input.a & u_input.d.xx, -802f), Struct_1(vec4<bool>(arg_1.x, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, var_1.a.x, true, true), var_1.c, var_1.d | u_input.d.xz)).b.c.x, 9219u), ~_wgslsmith_div_u32(1u, ~var_1.c.x) << ((~_wgslsmith_div_u32(1u, var_3.b.c.x) & 1u) % 32u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~1u, firstTrailingBit(func_5(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), !func_1(u_input.a))), u_input.c);
    let var_1 = _wgslsmith_div_i32(abs(-21265i), ~u_input.d.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, 911f)))), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(func_4(Struct_4(-966f, vec2<i32>(var_1, u_input.b), 887f), vec3<u32>(0u, var_0.x, u_input.c), Struct_4(554f, vec2<i32>(u_input.d.x, var_1), -1000f), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), var_0, vec2<i32>(var_1, u_input.b))).b.b.wz), _wgslsmith_f_op_f32(sign(1014f)) != _wgslsmith_div_f32(-971f, -276f)), select(vec3<u32>(~u_input.c, var_0.x, 5634u), var_0, vec3<bool>(true, true, true)), u_input.a));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~var_1) & var_2.b.d, func_2(vec4<bool>(true, var_2.b.b.x, !var_2.b.b.x, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(1417f, var_2.a.x, 1070f) - var_2.a), ~(-5116i ^ var_1))) & abs(reverseBits(var_1));
    var var_4 = func_4(Struct_4(869f, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(func_4(Struct_4(var_2.a.x, vec2<i32>(var_1, var_1), 769f), vec3<u32>(u_input.c, 1247u, u_input.c), Struct_4(var_2.a.x, u_input.d.ww, -459f), Struct_1(vec4<bool>(true, var_2.b.b.x, true, false), var_2.b.a, var_2.b.c, vec2<i32>(45024i, 2147483647i))).b.d, select(var_2.b.d, vec2<i32>(18359i, -1i), true)), vec2<i32>(var_1, ~(-2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -163f)), abs(min(_wgslsmith_sub_vec3_u32(var_0, var_0 & vec3<u32>(1u, 1u, 1u)), var_2.b.c)), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(424f * var_2.a.x))), -1232f), u_input.d.zy, var_2.a.x), func_4(Struct_4(_wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x))), abs(vec2<i32>(27588i, var_1)), -1660f), firstLeadingBit(vec3<u32>(var_0.x, ~4294967295u, _wgslsmith_dot_vec3_u32(var_0, var_0))), Struct_4(_wgslsmith_f_op_f32(trunc(var_2.a.x)), var_2.b.d, _wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_div_f32(-815f, var_2.a.x)))), var_2.b).b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_4.b.d.x, u_input.b) >> ((select(~var_4.b.c.yz, vec2<u32>(var_2.b.c.x, 37680u), vec2<bool>(true, var_4.b.a.x)) >> (vec2<u32>(_wgslsmith_sub_u32(31278u, var_0.x), countOneBits(28856u)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.x, 1559f)) + _wgslsmith_f_op_f32(step(-1136f, var_4.a.x))) * _wgslsmith_div_f32(-688f, var_2.a.x))), _wgslsmith_sub_vec3_u32(var_0, max(var_2.b.c, _wgslsmith_add_vec3_u32(vec3<u32>(12840u, 25710u, 15913u) << (var_4.b.c % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(1u, var_0.x, 39710u))))), var_4.b.c.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x))))));
}

