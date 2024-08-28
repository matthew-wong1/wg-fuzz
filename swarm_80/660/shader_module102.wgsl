struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = arg_2.b;
    var var_1 = var_0.c;
    var var_2 = Struct_4(-_wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(arg_2.c, 1i, var_0.b, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(4294967295u, var_0.e.a.x, arg_0.e.e.x, 7215u) % vec4<u32>(32u)), ~vec4<i32>(11801i, 57619i, arg_0.b, u_input.b.x)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.d.b, -14642i, arg_2.d.b, arg_2.d.b)), min(vec4<i32>(var_0.b, -9975i, arg_0.b, arg_0.b), vec4<i32>(arg_2.d.b, 29606i, arg_2.d.b, var_0.b)))), select(select(vec3<bool>(var_0.e.e.x != 1005u, true, false), vec3<bool>(var_0.e.d.x, true, arg_2.b.e.d.x), !vec3<bool>(false, arg_0.e.d.x, var_0.e.d.x)), vec3<bool>(arg_2.d.e.d.x, (arg_1 || arg_0.e.d.x) & false, arg_0.e.d.x || true), vec3<bool>(true, !(u_input.b.x < -4450i), false)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a)), var_0, _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.b.b, u_input.b.x), -1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x), arg_0.e.e) % 32u)), arg_2.b), var_0.e.e.x);
    var_2 = Struct_4(vec4<i32>(~var_2.a.x, -1i, abs(33094i), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, -10230i), vec2<i32>(u_input.b.x, 1i)) >> (53975u % 32u)), select(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.e.a.x, u_input.a.x, 14058u, 71220u), vec4<u32>(129473u, 4294967295u, 4294967295u, 1u)) > u_input.a.x, !any(var_2.b), _wgslsmith_f_op_f32(arg_0.e.b * arg_0.c) < var_2.c.b.d), !(!select(vec3<bool>(arg_1, true, false), var_2.b, false)), arg_2.b.e.d.x), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), var_2.c.a)), var_0, 0i, Struct_2(_wgslsmith_f_op_f32(abs(var_0.e.c)), 1i, -1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c)), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(24223u, var_0.e.e.x, arg_2.b.e.a.x), arg_0.e.e.yzz), arg_0.a, var_0.d, arg_2.d.e.d, ~vec4<u32>(arg_2.d.e.e.x, 1u, var_0.e.a.x, var_0.e.e.x)))), ~countOneBits(arg_0.e.e.x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(-454f)), reverseBits(u_input.b.x), var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1570f, -855f), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(1024f * _wgslsmith_f_op_f32(-arg_2.a.x))))), arg_0.e);
    return max(select(~var_2.c.b.e.a.yz, _wgslsmith_mult_vec2_u32(var_3.e.a.xy, vec2<u32>(0u, ~0u)), arg_0.e.d.x), vec2<u32>(~(~u_input.a.x << (~80715u % 32u)), var_2.c.b.e.e.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = ~vec4<u32>(arg_0.b.e.e.x, 4294967295u, ~4294967295u, select(~_wgslsmith_div_u32(0u, arg_1.c.e.a.x), u_input.a.x, !all(arg_3.b.e.d)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) - 1532f) + arg_2.d.a);
    let var_2 = Struct_1(~arg_1.c.e.a, 101f, arg_0.b.c, vec2<bool>(all(arg_1.c.e.d), true), ~reverseBits(~(~arg_1.c.e.e)));
    var var_3 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_0.x, var_2.e.x)), ~func_3(arg_1.c, arg_2.d.e.d.x, arg_0));
    let var_4 = arg_1;
    return max(~(arg_3.c << (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_1.c.e.e.x), var_2.a.yx) % 32u)), 0i);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec3<bool>) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_5(_wgslsmith_sub_i32(0i, ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(arg_2.c.b.b, 0i, arg_2.a.x)), u_input.b << (vec3<u32>(4294967295u, 16014u, 41622u) % vec3<u32>(32u)))), -vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-18020i, arg_2.a.x), vec2<i32>(arg_2.c.b.b, arg_2.a.x))), -u_input.b.x, (arg_2.c.b.b << (u_input.a.x % 32u)) << (~61300u % 32u)), arg_2.c.d);
    var var_2 = var_1.b.x;
    var var_3 = reverseBits(var_1.c.e.e);
    var_2 = _wgslsmith_dot_vec2_i32(var_1.b.yy, _wgslsmith_mod_vec2_i32(~(vec2<i32>(1i, u_input.b.x) | vec2<i32>(arg_2.a.x, arg_2.a.x)), vec2<i32>(func_2(Struct_3(vec4<f32>(-120f, -1218f, -451f, arg_2.c.a.x), var_1.c, arg_2.c.c, Struct_2(-545f, u_input.b.x, arg_1.x, var_0.x, Struct_1(vec3<u32>(23143u, var_3.x, u_input.a.x), var_1.c.d, var_0.x, vec2<bool>(true, false), vec4<u32>(arg_2.c.b.e.a.x, 4294967295u, 42557u, 0u)))), var_1, Struct_3(vec4<f32>(-1000f, 1925f, var_1.c.d, var_1.c.a), var_1.c, -13922i, Struct_2(var_0.x, -21119i, var_0.x, arg_2.c.b.d, arg_2.c.b.e)), Struct_3(arg_2.c.a, var_1.c, 1i, Struct_2(1000f, u_input.b.x, var_0.x, var_1.c.c, Struct_1(var_3.wzy, var_0.x, 232f, var_1.c.e.d, vec4<u32>(4438u, 24597u, 76599u, arg_2.d))))), ~arg_2.c.b.b))) >> (arg_2.d % 32u);
    return func_2(Struct_3(vec4<f32>(_wgslsmith_div_f32(var_1.c.a, arg_1.x), _wgslsmith_f_op_f32(-arg_2.c.d.a), -255f, -1464f), var_1.c, ~42124i, arg_2.c.d), var_1, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_2.c.a)) * vec4<f32>(1000f, arg_1.x, arg_1.x, -1000f)), Struct_2(_wgslsmith_f_op_f32(var_0.x - 150f), -var_1.b.x, -659f, _wgslsmith_f_op_f32(-224f + arg_2.c.a.x), Struct_1(vec3<u32>(arg_2.d, arg_2.c.b.e.a.x, 23799u), arg_1.x, -915f, vec2<bool>(true, true), vec4<u32>(u_input.a.x, 4294967295u, var_1.c.e.e.x, 2283u))), -(u_input.b.x & 67214i), arg_2.c.d), arg_2.c) ^ (u_input.b.x << (var_1.c.e.e.x % 32u));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~firstLeadingBit(max(arg_1.c.d.e.e | vec4<u32>(1u, 0u, 1u, u_input.a.x), arg_1.c.b.e.e)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) * 442f)));
    var var_2 = 132f;
    let var_3 = ~u_input.b;
    let var_4 = select(select(!(!(!vec4<bool>(true, arg_1.c.d.e.d.x, arg_1.c.b.e.d.x, arg_1.c.b.e.d.x))), vec4<bool>(!all(vec4<bool>(arg_2, arg_1.b.x, false, true)), false, arg_2, (arg_2 & true) == arg_2), vec4<bool>(true, true, arg_2, true)), !(!(!select(vec4<bool>(arg_2, arg_2, arg_1.c.b.e.d.x, false), vec4<bool>(true, true, false, false), true))), vec4<bool>(arg_2, any(!vec3<bool>(false, arg_1.b.x, arg_1.b.x)) && false, any(select(!vec3<bool>(arg_1.b.x, arg_2, arg_1.b.x), vec3<bool>(arg_2, true, false), arg_1.c.d.e.d.x)), !arg_2));
    return arg_1.c.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1139f;
    let var_1 = _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(1u, ~4294967295u, 1u, 10117u));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)))), -7723i, var_0, _wgslsmith_f_op_f32(347f * var_0), func_4(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(trunc(611f))), Struct_4(vec4<i32>(reverseBits(2147483647i), u_input.b.x, func_1(true, vec4<f32>(var_0, var_0, var_0, var_0), Struct_4(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.b.x), vec3<bool>(false, true, true), Struct_3(vec4<f32>(-2024f, 964f, var_0, 1000f), Struct_2(146f, 0i, 143f, var_0, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 105f, var_0, vec2<bool>(true, true), u_input.a)), 2147483647i, Struct_2(var_0, -294i, 1000f, -1000f, Struct_1(u_input.a.xyy, 1062f, var_0, vec2<bool>(true, true), u_input.a))), var_1), vec3<bool>(false, true, true)), ~u_input.b.x), vec3<bool>(true, any(vec2<bool>(true, false)), true), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, var_0, 573f, 488f)), Struct_2(var_0, 2147483647i, var_0, -918f, Struct_1(u_input.a.xxy, var_0, -573f, vec2<bool>(false, true), u_input.a)), 0i, Struct_2(var_0, u_input.b.x, var_0, var_0, Struct_1(u_input.a.wxx, var_0, var_0, vec2<bool>(true, true), u_input.a))), reverseBits(u_input.a.x)), false, vec3<u32>(~43254u, _wgslsmith_clamp_u32(2651u, ~4294967295u, 4294967295u), 12363u)));
    var var_3 = Struct_5(u_input.b.x, select(u_input.b, ~firstTrailingBit(vec3<i32>(0i, var_2.b, var_2.b)), select(select(vec3<bool>(var_2.e.d.x, false, true), vec3<bool>(true, false, var_2.e.d.x), true & var_2.e.d.x), select(select(vec3<bool>(true, true, var_2.e.d.x), vec3<bool>(false, var_2.e.d.x, var_2.e.d.x), var_2.e.d.x), select(vec3<bool>(var_2.e.d.x, true, true), vec3<bool>(true, false, var_2.e.d.x), var_2.e.d.x), all(vec4<bool>(var_2.e.d.x, true, true, true))), !select(vec3<bool>(false, false, false), vec3<bool>(false, var_2.e.d.x, var_2.e.d.x), var_2.e.d.x))), Struct_2(-2021f, firstTrailingBit(-2147483647i), 1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_2.e.b))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 424f)) - _wgslsmith_f_op_f32(-var_0)), Struct_4(select(vec4<i32>(u_input.b.x, var_2.b, -3441i, 18383i), vec4<i32>(-2147483647i, u_input.b.x, var_2.b, u_input.b.x), false), !vec3<bool>(true, var_2.e.d.x, true), Struct_3(vec4<f32>(-491f, 442f, var_2.d, var_2.c), Struct_2(-665f, -1i, var_2.c, -374f, Struct_1(vec3<u32>(1u, var_2.e.e.x, u_input.a.x), var_2.a, var_0, var_2.e.d, u_input.a)), 8757i, Struct_2(var_0, var_2.b, var_0, var_2.e.b, Struct_1(vec3<u32>(var_2.e.a.x, 0u, var_2.e.a.x), -879f, var_2.a, vec2<bool>(true, var_2.e.d.x), vec4<u32>(var_2.e.a.x, u_input.a.x, 28354u, var_1)))), _wgslsmith_mod_u32(var_2.e.e.x, 46153u)), all(vec4<bool>(false, var_2.e.d.x, false, false)), u_input.a.yzw)));
    var_2 = var_3.c;
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(var_3.b.yz, var_3.b.xx), var_3.b.x, var_3.c.b, var_3.a ^ u_input.b.x), vec4<i32>(-11099i, ~var_2.b, var_2.b, var_2.b));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-256f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -143f))))), -2757i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -152f)) - var_2.d), -1000f, func_4(_wgslsmith_f_op_f32(1501f * 428f), Struct_4(vec4<i32>(1i, 0i, ~u_input.b.x, u_input.b.x), vec3<bool>(true, true, true), Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1287f, var_0, var_2.d, var_3.c.c), vec4<f32>(-216f, var_2.a, -586f, var_3.c.e.c))), Struct_2(-1661f, var_2.b, var_0, 1517f, var_3.c.e), -23867i, var_3.c), 0u), true, func_4(_wgslsmith_f_op_f32(min(var_3.c.c, -2843f)), Struct_4(var_4, vec3<bool>(false, true, true), Struct_3(vec4<f32>(-994f, -1256f, -1017f, -1466f), Struct_2(var_2.d, -1i, var_3.c.a, var_0, var_3.c.e), -6274i, Struct_2(1109f, var_3.a, var_2.a, -228f, Struct_1(vec3<u32>(25222u, 7015u, 0u), 1228f, var_0, vec2<bool>(var_3.c.e.d.x, false), var_2.e.e))), u_input.a.x), true, firstLeadingBit(var_3.c.e.e.xxy)).a | min(var_2.e.e.yxx, max(var_2.e.a, vec3<u32>(0u, 73386u, var_1)))));
    var_2 = Struct_2(-602f, 12769i << (_wgslsmith_mult_u32(var_2.e.a.x, _wgslsmith_sub_u32(var_2.e.a.x, _wgslsmith_add_u32(u_input.a.x, 50797u))) % 32u), -723f, _wgslsmith_f_op_f32(-var_2.d), func_4(_wgslsmith_div_f32(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), Struct_4(~var_4, vec3<bool>(any(vec4<bool>(var_3.c.e.d.x, var_2.e.d.x, false, var_3.c.e.d.x)), func_4(-174f, Struct_4(var_4, vec3<bool>(var_2.e.d.x, false, false), Struct_3(vec4<f32>(var_3.c.d, var_2.d, -586f, 991f), Struct_2(1006f, var_4.x, var_2.a, -1000f, var_3.c.e), 45752i, Struct_2(350f, var_4.x, 858f, var_3.c.a, Struct_1(vec3<u32>(1u, 10123u, 4294967295u), var_3.c.d, var_0, vec2<bool>(var_2.e.d.x, var_2.e.d.x), vec4<u32>(var_1, var_1, 45239u, 27599u)))), var_2.e.e.x), false, vec3<u32>(4294967295u, u_input.a.x, 57307u)).d.x, true), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.e.b, var_3.c.e.c, -416f, 1748f), vec4<f32>(var_0, var_2.e.c, 498f, 482f), vec4<bool>(var_2.e.d.x, var_2.e.d.x, true, var_3.c.e.d.x))), var_3.c, -24358i << (var_3.c.e.a.x % 32u), var_3.c), 36066u), var_4.x != -6016i, var_2.e.a));
    let var_5 = ~var_2.e.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, _wgslsmith_mult_u32(abs(var_1), 0u), var_4, u_input.a);
}

