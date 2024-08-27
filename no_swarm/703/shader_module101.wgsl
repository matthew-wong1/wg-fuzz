struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1485f + -2886f))))) - 834f));
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-110f, 1000f) - _wgslsmith_f_op_f32(ceil(943f))))) - 708f));
    return firstTrailingBit(2147483647i) | _wgslsmith_sub_i32(-5817i, u_input.b.x);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(min(u_input.b.x, u_input.c), ~u_input.c, _wgslsmith_div_i32(u_input.c, u_input.b.x)), u_input.c, countOneBits(~u_input.b.x)), u_input.b.x, u_input.d, ~(-1i)), vec4<i32>(2147483647i, func_3(), i32(-1i) * -21945i, u_input.b.x << (59843u % 32u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-390f, 1024f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) * _wgslsmith_div_f32(-1269f, -154f))) - 1776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 498f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-156f * -1814f))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -326f));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1880f)), -892f, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - 527f), 1531f, -969f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x))))), vec4<bool>(any(vec2<bool>(true, false)), false, -741f >= var_1.x, all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), any(vec4<bool>(false, false, true, true)))))));
    let var_2 = vec2<u32>(46708u, u_input.a.x);
    let var_3 = Struct_2(select(!vec3<bool>(true, 34634u <= var_2.x, any(vec2<bool>(false, false))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), !(-u_input.d == -1i)));
    return ~select(~_wgslsmith_div_u32(~58373u, 766u), countOneBits(max(_wgslsmith_sub_u32(107311u, var_2.x), 1u)), (select(var_0.x, var_0.x, var_3.a.x) | u_input.d) <= -1i);
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = select(vec4<bool>(!arg_0.a.x, u_input.a.x <= func_2(), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-112f)) * _wgslsmith_f_op_f32(ceil(-1606f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1217f))), vec4<bool>(arg_0.a.x == !(false & arg_0.a.x), true, true, true), arg_0.a.x);
    let var_1 = !var_0.x;
    let var_2 = arg_0;
    var var_3 = Struct_2(select(vec3<bool>(all(!vec4<bool>(var_1, true, var_0.x, false)), arg_0.a.x, var_1), select(select(select(var_2.a, arg_0.a, true), vec3<bool>(true, true, true), !var_2.a), select(vec3<bool>(true, true, false), var_2.a, var_0.yzw), vec3<bool>(!arg_0.a.x, all(var_0.yy), true)), var_0.x));
    let var_4 = any(!(!var_2.a));
    return reverseBits(~(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.c, u_input.c), ~vec2<i32>(-42762i, u_input.c)) & vec2<i32>(u_input.b.x, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(~u_input.a.x, ~29166u)), 19773u, 54084u, 46620u) ^ ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(10660u, 0u, 31149u, 4294967295u)), vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x) | vec4<u32>(0u, 2266u, 4294967295u, u_input.a.x)), vec4<u32>(~0u, ~111311u, ~u_input.a.x, ~u_input.a.x));
    var var_1 = func_1(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(true, false))))) & u_input.b.xy;
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_sub_u32(12273u, ~var_2 | (_wgslsmith_sub_u32(countOneBits(var_0.x), _wgslsmith_mod_u32(48584u, var_2)) << (0u % 32u)));
    var_3 = ~18427u;
    var var_4 = _wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1372f, -991f, true)))) * 1462f))));
    let var_5 = _wgslsmith_f_op_f32(sign(-1000f));
    let var_6 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_1.x, i32(-1i) * -20506i, 0i, _wgslsmith_div_i32(u_input.d, var_1.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.c, abs(-26778i), func_1(Struct_2(vec3<bool>(true, true, false))).x, firstTrailingBit(u_input.d)), vec4<i32>(-1i, 15069i, 19123i, var_1.x) | vec4<i32>(u_input.d, u_input.c, u_input.c, var_1.x))) ^ u_input.c;
    var var_7 = true | all(vec4<bool>(any(vec3<bool>(true, true, true)), (35826u > var_2) | false, true, any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<f32>(596f, 1000f, var_5, -2135f), ~(~u_input.a.x) << (~1u % 32u), ~(~abs(vec2<i32>(var_1.x, var_6))) ^ vec2<i32>(var_1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 23919i, -1i, u_input.c), vec4<i32>(var_6, 2147483647i, var_1.x, -2147483647i)), u_input.c)));
}

