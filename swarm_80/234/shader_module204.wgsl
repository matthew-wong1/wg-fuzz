struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = -797f;
    var var_2 = vec2<u32>(var_0.b.x, _wgslsmith_mult_u32(28142u, 116265u << (arg_1.a.x % 32u)) >> (var_0.b.x % 32u)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.x, arg_0.x), var_0.b), vec2<u32>(4294967295u, _wgslsmith_mod_u32(196u, 4294967295u)), min(vec2<u32>(7461u, u_input.d.x), arg_1.b)), ~u_input.b) % vec2<u32>(32u));
    let var_3 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.b.x, 0u, var_2.x, 4294967295u)), vec4<u32>(var_0.b.x, arg_0.x, u_input.b.x, 30290u)), arg_0));
    var var_4 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false)), _wgslsmith_f_op_f32(sign(var_1)) == _wgslsmith_div_f32(arg_2.x, arg_2.x), true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(false, true, false)), false, arg_3 > u_input.e), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, !any(vec4<bool>(false, false, true, false))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), select(vec4<bool>(any(vec4<bool>(false, true, false, false)) == (-1i >= arg_3), true || select(true, true, false), select(true, true, all(vec2<bool>(false, true))), true), vec4<bool>(_wgslsmith_div_f32(var_1, 1000f) != _wgslsmith_f_op_f32(round(761f)), u_input.b.x >= _wgslsmith_div_u32(arg_0.x, 48531u), true, ~var_3.x <= 32152u), true));
    return vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(26027u, 4294967295u, var_0.b.x), arg_0.yyx), ~(~u_input.b.x)), ~0u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(var_0.b.x, abs(86411u))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27130u, var_2.x, arg_0.x, u_input.b.x), vec4<u32>(41815u, 58251u, 30391u, var_0.b.x)), 4294967295u), min(4294967295u ^ var_2.x, arg_1.b.x >> (19107u % 32u)))) << (abs(_wgslsmith_div_vec4_u32(min(var_0.a, arg_0), var_0.a)) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = u_input.e;
    var_0 = ~u_input.e;
    let var_1 = ~vec4<i32>(arg_1.b.x ^ _wgslsmith_dot_vec2_i32(u_input.c, arg_1.b.zy | u_input.c), u_input.c.x, 36367i, arg_1.b.x);
    var_0 = -(var_1.x >> (u_input.d.x % 32u));
    var_0 = u_input.a;
    return ~arg_1.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = arg_0.zx;
    var var_1 = Struct_1((vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 27908u), vec2<u32>(u_input.b.x, 32259u)), u_input.d.x, firstTrailingBit(46766u), 4294967295u) & ~firstLeadingBit(vec4<u32>(32535u, u_input.b.x, u_input.b.x, u_input.d.x))) ^ _wgslsmith_sub_vec4_u32(~(~vec4<u32>(30536u, 0u, 94511u, 0u)), abs(vec4<u32>(12771u, u_input.b.x, 0u, u_input.b.x))), u_input.b);
    var var_2 = _wgslsmith_clamp_i32(func_4(Struct_1(vec4<u32>(2612u, 4294967295u, var_1.a.x, u_input.b.x) & func_3(var_1.a, Struct_1(vec4<u32>(var_1.a.x, 0u, u_input.d.x, u_input.d.x), vec2<u32>(u_input.b.x, var_1.b.x)), vec2<f32>(var_0.x, var_0.x), 14172i), ~vec2<u32>(1u, 1u)), Struct_2(Struct_1(var_1.a, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 13447u), u_input.b)), abs(abs(vec3<i32>(u_input.e, u_input.e, -2147483647i)))), var_1.a, !arg_1.wzx), u_input.e, 0i);
    let var_3 = ~1u;
    let var_4 = Struct_2(Struct_1(vec4<u32>(44263u, u_input.b.x | max(u_input.d.x, 1u), var_1.a.x, _wgslsmith_mod_u32(u_input.d.x, 46736u) | ~29174u), u_input.b), -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 30505i), u_input.c.x << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.e), vec2<i32>(u_input.c.x, -29973i))), -(vec3<i32>(0i, u_input.a, u_input.c.x) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)), abs(vec3<i32>(u_input.c.x, u_input.a, -20605i)) | (vec3<i32>(40430i, 15646i, 21278i) | vec3<i32>(-15418i, -2147483647i, u_input.a))));
    return var_4.b.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec4<u32>(arg_0.x, arg_0.x ^ ~0u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.d.x), _wgslsmith_div_u32(4294967295u, arg_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 40674u, 1u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.d.x)) << (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)), vec2<u32>(8299u, ~(~arg_0.x))), vec3<i32>(25312i, countOneBits(12618i), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1237f, 156f, -802f)), vec4<bool>(true, true, false, false)) & _wgslsmith_mod_i32(abs(u_input.c.x), _wgslsmith_mult_i32(1i, u_input.a))));
    var var_1 = vec3<bool>(false, true, false);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1078f + -832f), _wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(928f, 276f))))))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 * var_2) * var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1582f, _wgslsmith_f_op_f32(-var_2.x))))));
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_1(max(u_input.d, ~countOneBits(arg_0.a.a.zy))).a;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_div_f32(-1556f, arg_1.x), _wgslsmith_f_op_f32(sign(arg_1.x)));
    let var_2 = select(vec4<i32>(_wgslsmith_mod_i32(12432i, -u_input.c.x), u_input.c.x, 2147483647i, arg_0.b.x), ~select(vec4<i32>(firstLeadingBit(48319i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, u_input.c.x, 27063i), vec4<i32>(arg_0.b.x, arg_0.b.x, 44823i, 4542i)), min(u_input.a, 0i), max(arg_0.b.x, u_input.c.x)), vec4<i32>(u_input.c.x >> (5878u % 32u), -1i, 60964i, 42118i >> (var_0.b.x % 32u)), select(!vec4<bool>(arg_2.x, true, false, arg_2.x), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(true, true, arg_2.x, false), arg_2.x))), any(vec4<bool>(arg_2.x, false, false, false)));
    var var_3 = -arg_0.b.x;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1878f))), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(426f * -1000f), _wgslsmith_f_op_f32(-1736f * var_1.x))))));
    return func_1(vec2<u32>(~(_wgslsmith_div_u32(25943u, 35232u) << (max(var_0.b.x, u_input.d.x) % 32u)), u_input.d.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x)) >> (~vec4<u32>(u_input.b.x, 15625u, 1u, u_input.b.x) % vec4<u32>(32u))), reverseBits(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), abs(~50362u))));
    let var_1 = 592f;
    var_0 = func_5(func_1(u_input.b), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(1000f - 1243f)))), 926f, 462f), vec2<bool>(!all(vec4<bool>(true, true, true, true)), !(u_input.c.x != abs(u_input.c.x))));
    let var_2 = func_5(Struct_2(func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, var_0.b.x)), u_input.b)).a, vec3<i32>(abs(u_input.e), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.a, -30423i) >> (var_0.a.yzx % vec3<u32>(32u)), vec3<i32>(2147483647i, 813i, u_input.e)), -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(var_1 + var_1)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -864f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1, -184f, var_1), vec3<f32>(var_1, var_1, var_1)))))), vec2<bool>(all(vec3<bool>(true, any(vec2<bool>(false, true)), true)), true));
    var var_3 = !(!(!all(vec3<bool>(true, true, true))));
    var_0 = var_2;
    var var_4 = !vec2<bool>(true || !(-765f <= var_1), -846f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1749f, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.a, var_2.a.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1216f, _wgslsmith_f_op_f32(floor(939f)), var_1), vec3<f32>(_wgslsmith_f_op_f32(ceil(1144f)), _wgslsmith_f_op_f32(select(555f, var_1, true)), _wgslsmith_f_op_f32(min(var_1, -156f))), !(-1138f <= var_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(932f, -1295f, var_1) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -161f)))))), ~(vec3<i32>(func_1(vec2<u32>(var_0.a.x, 41080u)).b.x, u_input.c.x, max(1i, u_input.e)) >> ((~var_0.a.yxz & var_2.a.xxx) % vec3<u32>(32u))));
}

