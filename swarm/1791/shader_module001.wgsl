struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<bool>) -> f32 {
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.a, 1i, 48038i) & vec4<i32>(arg_1.a, -1i, 21497i, arg_1.b.x), min(arg_1.b, arg_1.b)), ~_wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b), 2344i) >> ((vec3<u32>(1u, u_input.a | 28081u, 1u) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 40343u), vec3<u32>(4294967295u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_mult_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(u_input.a, 3229u, u_input.a, u_input.a)) ^ ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 68072u))), min(select(vec4<u32>(u_input.a, ~294u, abs(u_input.a), u_input.a), ~vec4<u32>(40565u, u_input.a, u_input.a, u_input.a) & min(vec4<u32>(3565u, 4294967295u, u_input.a, 18521u), vec4<u32>(19874u, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, true, true, !arg_2.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), countOneBits(vec4<u32>(1u, u_input.a, 53009u, 19238u)) | firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, 71183u)))));
    let var_2 = arg_2.x;
    var_1 = vec4<u32>(u_input.a, ~1u, _wgslsmith_add_u32(firstLeadingBit(2736u | var_1.x), ~(var_1.x ^ 4294967295u)), 15755u) ^ ~abs(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, u_input.a, 1u, u_input.a), vec4<u32>(68063u, 0u, 109579u, 0u)));
    var_1 = ~min(select(~vec4<u32>(0u, u_input.a, 11138u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 1u, var_1.x)), false), ~(~vec4<u32>(var_1.x, var_1.x, u_input.a, var_1.x))) ^ vec4<u32>(~(~4294967295u), 0u, var_1.x, _wgslsmith_dot_vec2_u32(var_1.yx, ~var_1.wx << (~vec2<u32>(28007u, 0u) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -209f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) - arg_0))));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(217f, -1265f, 1028f, 312f), vec4<f32>(1350f, -2224f, -1087f, 1934f)))) - vec4<f32>(-954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2320f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-415f, 329f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1144f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(635f, Struct_4(-6557i, vec4<i32>(arg_1.a, arg_1.b.x, arg_1.a, -2147483647i)), vec3<bool>(arg_2.x, true, arg_2.x))), 646f)))));
    let var_2 = Struct_1(vec3<f32>(1000f, 1169f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))), !arg_2, 39985u);
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_f32(668f * var_1.x);
    return Struct_4(~min(max(-2147483647i, 2147483647i), arg_1.b.x) << (var_3 % 32u), firstLeadingBit(~arg_1.b));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = func_2(35777u, Struct_4(2147483647i, vec4<i32>(abs(min(var_0.a, -20457i)), -(-28375i >> (arg_0.x % 32u)), ~(-arg_1.b.x), -abs(1i))), vec3<bool>((~22819u & select(1u, 1u, false)) <= u_input.a, true, true));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1116f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_div_f32(373f, -981f))), _wgslsmith_f_op_f32(floor(939f)))), Struct_1(vec3<f32>(1f, 1f, 1f), !vec3<bool>(arg_1.b.x < -57860i, select(true, true, false), -59948i != arg_1.b.x), 58395u), select(vec4<bool>(true, _wgslsmith_dot_vec2_i32(var_0.b.yz, vec2<i32>(21539i, 2147483647i)) != ~1i, true, true), select(vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), true), !(arg_0.x != 35522u) || true), true);
    var var_2 = func_2(~(~var_1.b.c), Struct_4(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b.zw, vec2<i32>(-24559i, 6611i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_1.a), var_0.b.zz)) & 2147483647i, arg_1.b), vec3<bool>(true, select(all(!vec4<bool>(true, true, true, var_1.d)), !any(vec3<bool>(var_1.d, var_1.c.x, var_1.d)), any(var_1.c.xyx)), select(var_1.d, _wgslsmith_mult_i32(-3093i, arg_1.b.x) >= 18809i, !select(true, true, false))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)), !vec3<bool>(var_1.b.b.x, any(vec4<bool>(var_1.d, false, var_1.c.x, false)), true), _wgslsmith_add_u32(arg_0.x, 1u));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<bool>(arg_1.b.x, all(func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c, 15191u), reverseBits(vec2<u32>(arg_1.c, 56152u))), Struct_4(arg_0 << (0u % 32u), vec4<i32>(arg_0, arg_0, -2147483647i, 1i) & vec4<i32>(2147483647i, 13525i, arg_0, 5098i))).b));
    var var_1 = false;
    var var_2 = !arg_1.b.x || var_0.x;
    return 42334u << (firstLeadingBit(4294967295u) % 32u);
}

fn func_1(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -146f, 553f)))))))), vec3<bool>(false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), false)), !all(vec2<bool>(true, true))), ~func_5(-(2147483647i >> (u_input.a % 32u)), func_4(~vec2<u32>(u_input.a, 22618u), func_2(82821u, Struct_4(-40579i, vec4<i32>(2147483647i, -17737i, -39578i, -53277i)), vec3<bool>(true, false, true)))));
    let var_1 = -(i32(-1i) * -1i);
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    let var_3 = ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-30843i, -16701i, var_1), firstTrailingBit(vec3<i32>(6062i, var_1, -60813i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 2147483647i, 8527i), vec3<i32>(var_1, var_1, var_1)), _wgslsmith_div_i32(0i, var_1), var_1)) | _wgslsmith_div_i32(var_1, var_1);
    var var_4 = !all(var_0.b);
    return _wgslsmith_add_vec3_i32(countOneBits(~(-vec3<i32>(62675i, var_3, var_1) | ~vec3<i32>(0i, var_3, 1i))), ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_3, var_3, var_3), countOneBits(vec3<i32>(var_1, var_3, 0i))), vec3<i32>(_wgslsmith_sub_i32(var_3, var_3), 69119i, _wgslsmith_dot_vec2_i32(vec2<i32>(-28712i, 0i), vec2<i32>(var_3, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-493f))), 1486f, 1659f))), vec3<bool>(all(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), 57851u);
    let var_1 = _wgslsmith_div_u32(31345u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 25803u, var_0.c) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.c, var_0.c), vec3<u32>(var_0.c, u_input.a, 4294967295u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(10u, var_0.c, 30860u)))));
    var var_2 = var_0.a;
    var var_3 = -62309i;
    var_0 = Struct_1(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1041f)))), _wgslsmith_f_op_f32(step(var_0.a.x, 1f))), !vec3<bool>(var_0.b.x, var_0.b.x, true), ~(~(~(~34247u))));
    var_3 = 30699i;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(~(~var_0.c)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i << (var_1 % 32u), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -21129i), vec2<i32>(2025i, 2147483647i)))), firstTrailingBit(vec3<i32>(1i, 1i, 1i)) << (~(~vec3<u32>(var_0.c, u_input.a, var_0.c)) % vec3<u32>(32u))), 297f);
}

