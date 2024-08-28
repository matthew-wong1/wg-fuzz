struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-271f, 1000f, 1565f), vec3<f32>(-1003f, -639f, 295f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-282f, -1452f, 607f), vec3<f32>(-461f, 1678f, -1469f), true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-778f, -639f, -240f, -2489f), vec4<f32>(1f, 1f, 1f, 1f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-853f, 1250f, -672f, 1346f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1437f, -1063f, -860f, -580f), vec4<f32>(143f, 442f, 1000f, 252f)))))), Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-560i, u_input.a, u_input.c, u_input.c), vec4<i32>(-2147483647i, -41231i, -2147483647i, u_input.a) >> (vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, 46204i, -1i), vec4<i32>(u_input.c, -2147483647i, u_input.a, 0i))), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23868u, 9548u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(25562u, 1u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 32697u, 1u)))), reverseBits(vec4<i32>(0i, firstLeadingBit(u_input.a), ~u_input.a, select(u_input.a, u_input.c, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(any(vec4<bool>(true, false, true, true)), false, all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1494f, _wgslsmith_f_op_f32(-748f - 997f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1430f)) - var_0.b.x));
    let var_2 = var_0.c.a >> (min(select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b.x, 11084u, var_0.c.b.x, u_input.b.x)), firstLeadingBit(u_input.b)), u_input.b, vec4<bool>(var_0.c.d.x, -647f > var_0.a.x, true, any(vec4<bool>(var_0.c.d.x, true, var_0.c.d.x, var_0.c.d.x)))), vec4<u32>(u_input.b.x << (u_input.b.x % 32u), 87034u, 1u, ~1u ^ (var_0.c.b.x << (u_input.b.x % 32u)))) % vec4<u32>(32u));
    var_0 = Struct_2(vec3<f32>(var_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1589f)), var_1))), _wgslsmith_f_op_f32(select(-538f, 507f, !var_0.c.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(190f, var_1, var_1, -333f)))) + var_0.b)), Struct_1(-vec4<i32>(u_input.c, _wgslsmith_sub_i32(0i, -2147483647i), min(var_0.c.c.x, var_2.x), -1i), ~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.xx)), vec4<i32>(2147483647i, var_2.x, ~select(var_0.c.a.x, var_0.c.c.x, false), -var_2.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 10365i, -27506i, -2811i), vec4<i32>(-47212i, -2147483647i, var_0.c.c.x, var_2.x))), var_0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-697f)))));
    var_0 = Struct_2(vec3<f32>(1022f, -1338f, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-878f * var_0.a.x) * -1405f), -1000f, _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e) * _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.e, 355f, var_0.a.x, var_1)) - vec4<f32>(544f, var_1, var_1, 233f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-104f, -1412f, 479f, 408f), vec4<f32>(var_1, var_0.a.x, var_0.b.x, 483f), vec4<bool>(var_0.c.d.x, var_0.c.d.x, var_0.c.d.x, true))))))), Struct_1(var_0.c.c, vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, var_0.c.b.x), 19124u) ^ vec2<u32>(0u, 0u), -(vec4<i32>(u_input.c, -49658i, -13701i, 1i) ^ var_0.c.c), var_0.c.d, var_1));
    return ~(firstTrailingBit(reverseBits(vec4<i32>(-2147483647i, var_0.c.c.x, var_2.x, 48542i)) & (var_2 >> (u_input.b % vec4<u32>(32u)))) | select(vec4<i32>(-83803i | var_0.c.c.x, _wgslsmith_clamp_i32(u_input.a, -34184i, -56442i), ~(-24370i), 13027i >> (var_0.c.b.x % 32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a, 2147483647i), vec4<i32>(var_2.x, u_input.c, var_0.c.a.x, -2147483647i)), vec4<bool>(2147483647i == u_input.a, any(vec3<bool>(false, false, var_0.c.d.x)), var_0.c.d.x, true)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = vec2<bool>(!all(vec4<bool>(arg_0.c.d.x, !arg_0.c.d.x, !arg_0.c.d.x, any(arg_0.c.d.xy))), (~abs(66267u) | ~(arg_0.c.b.x ^ arg_0.c.b.x)) <= u_input.b.x);
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1275f), -685f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.e - arg_0.a.x))))), arg_0.b, Struct_1(-func_3(), u_input.b.zy, vec4<i32>(var_2.c.c.x, ~(u_input.c << (16729u % 32u)), _wgslsmith_dot_vec2_i32(var_1.c.a.zz | vec2<i32>(8524i, var_1.c.c.x), _wgslsmith_add_vec2_i32(arg_0.c.a.wy, vec2<i32>(1i, var_2.c.c.x))), ~(i32(-1i) * -1i)), vec3<bool>(any(select(vec2<bool>(var_1.c.d.x, arg_0.c.d.x), var_0, true)), true, (arg_1 & arg_1) >= 9980u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1471f))));
    var_1 = Struct_2(arg_0.b.zzy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b * var_2.b))), Struct_1(select(~var_2.c.a >> (~u_input.b % vec4<u32>(32u)), -(vec4<i32>(-415i, arg_0.c.a.x, var_1.c.a.x, -257i) ^ arg_0.c.a), vec4<bool>(var_2.b.x <= var_1.b.x, var_2.c.d.x, !var_2.c.d.x, var_1.c.d.x)), vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1), arg_0.c.b)), u_input.b.x), firstLeadingBit(vec4<i32>(-26860i, 3587i, u_input.c, ~u_input.c)), vec3<bool>(var_2.c.d.x, var_2.c.d.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(792f)), _wgslsmith_f_op_f32(sign(arg_0.a.x)))));
    return var_1.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0, ~14503u)), 1663f, 207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, 220f, 868f, -915f)))))), arg_0.b));
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1069f, arg_0.a.x, 1441f), vec3<f32>(arg_0.c.e, -538f, 214f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, 1305f, arg_0.a.x))))), arg_0.a), arg_0.b, arg_0.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-574f, 1216f) - var_0.wz), var_1.b.yx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.a.xx))) * arg_0.b.zz)), arg_0.a.xz, select(any(var_1.c.d), false, false)));
    var_1 = arg_0;
    return Struct_1(min(vec4<i32>(u_input.c, arg_0.c.a.x, 38475i, -7699i) | arg_0.c.a, select(_wgslsmith_add_vec4_i32(arg_0.c.a, vec4<i32>(20173i, 0i, arg_2.x, -6667i)), ~arg_0.c.a, var_2.x <= var_2.x)) ^ arg_0.c.a, _wgslsmith_mult_vec2_u32(arg_0.c.b, ~(~vec2<u32>(0u, 14662u) ^ var_1.c.b)), ~var_1.c.a, vec3<bool>(arg_1.x, !(arg_1.x == false) == arg_0.c.d.x, all(!vec3<bool>(false, var_1.c.d.x, arg_0.c.d.x))), -145f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = ~u_input.c <= arg_0.c.x;
    var var_1 = true;
    var var_2 = -arg_0.a.x;
    let var_3 = _wgslsmith_mult_vec4_u32(u_input.b, ~firstLeadingBit(~vec4<u32>(arg_2, 13540u, 35556u, arg_2)));
    var var_4 = reverseBits(abs(countOneBits(_wgslsmith_div_vec4_u32(~var_3, select(vec4<u32>(26842u, 0u, arg_0.b.x, 23748u), vec4<u32>(68273u, arg_2, 0u, 3177u), vec4<bool>(var_0, false, var_0, true))))));
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    return ~arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(~u_input.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 458f, -611f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, 602f, -978f, -901f)), func_4(func_1(Struct_2(vec3<f32>(1557f, 555f, -1700f), vec4<f32>(-777f, 1670f, -2059f, -635f), Struct_1(vec4<i32>(4741i, -14584i, 0i, 34985i), vec2<u32>(u_input.b.x, 50421u), vec4<i32>(u_input.a, 8958i, u_input.a, 3597i), vec3<bool>(false, true, true), 1687f)), vec4<bool>(true, true, false, false), vec3<i32>(0i, u_input.c, 0i)), Struct_1(vec4<i32>(u_input.a, -1i, 1i, 2147483647i), u_input.b.yy, vec4<i32>(u_input.a, u_input.a, 69253i, u_input.a), vec3<bool>(false, true, true), 1389f), u_input.b.x >> (u_input.b.x % 32u)))), _wgslsmith_div_vec2_u32(func_1(Struct_2(vec3<f32>(-1169f, -792f, 899f), vec4<f32>(687f, -497f, 544f, -1931f), Struct_1(vec4<i32>(u_input.a, -2147483647i, u_input.c, u_input.a), u_input.b.zy, vec4<i32>(15010i, u_input.a, 2147483647i, u_input.c), vec3<bool>(true, true, false), 1000f)), vec4<bool>(true, true, true, true), firstLeadingBit(vec3<i32>(u_input.a, u_input.c, u_input.a))).b, vec2<u32>(countOneBits(11404u), 23120u)) >> (countOneBits(abs(vec2<u32>(79232u, 60138u))) % vec2<u32>(32u)), vec4<i32>(-1i) * -(~func_5(1u, Struct_2(vec3<f32>(825f, -1966f, 1000f), vec4<f32>(1132f, 1234f, 1228f, -2254f), Struct_1(vec4<i32>(u_input.a, 0i, -33421i, -21087i), vec2<u32>(0u, u_input.b.x), vec4<i32>(3518i, -1i, 57907i, 1910i), vec3<bool>(true, true, false), 777f)))), select(!vec3<bool>(u_input.a >= u_input.c, false, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), select(true, true, true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-1000f, -323f, -911f), vec4<f32>(-1007f, 2046f, -147f, 1672f), Struct_1(vec4<i32>(10457i, u_input.a, u_input.c, u_input.c), vec2<u32>(0u, 12220u), vec4<i32>(-35189i, u_input.a, u_input.a, 17380i), vec3<bool>(true, true, false), -601f)), ~4294967295u)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(378f, 1854f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f * 991f) - _wgslsmith_f_op_f32(f32(-1f) * -519f)), false)))));
    var var_1 = _wgslsmith_clamp_vec3_i32(func_3().zxx, _wgslsmith_mod_vec3_i32(~vec3<i32>(-19471i, _wgslsmith_clamp_i32(u_input.c, -2147483647i, -2147483647i), -2147483647i >> (var_0.b.x % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.x, 34193i, -55794i) & -var_0.c.ywy, vec3<i32>(var_0.a.x, u_input.a, -2147483647i))), var_0.a.xxw);
    var_1 = ~_wgslsmith_clamp_vec3_i32(func_5(~var_0.b.x | _wgslsmith_clamp_u32(u_input.b.x, 13562u, 4294967295u), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, -1000f, 1765f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, 604f, 1112f, 887f)), func_4(var_0, Struct_1(var_0.a, var_0.b, vec4<i32>(var_0.c.x, 40491i, u_input.c, var_0.c.x), var_0.d, 373f), var_0.b.x))).wxx, func_3().yyz, abs(-vec3<i32>(u_input.c, 32168i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.x, -76582i, _wgslsmith_mod_i32(abs(countOneBits(var_1.x)), ~reverseBits(-37072i))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e + -407f), _wgslsmith_f_op_f32(-1140f - var_0.e)), 824f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f * var_0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-555f)), var_0.e))), var_0.e, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1236f + var_0.e), -816f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.e, var_0.e, true)) + _wgslsmith_f_op_f32(f32(-1f) * -490f))), vec2<f32>(174f, var_0.e))));
}

