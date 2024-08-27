struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = 4294967295u << (reverseBits(~_wgslsmith_sub_u32(~1u, ~u_input.e)) % 32u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(257f + -1262f), _wgslsmith_f_op_f32(f32(-1f) * -108f)))))), -1049f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-621f, _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 262f), vec2<f32>(-1065f, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, var_1))))));
    let var_3 = Struct_3(select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, !select(vec4<bool>(true, true, select(true, false, false), var_1 < -849f), vec4<bool>(true, u_input.a.x >= var_0, select(true, true, true), true), vec4<bool>(true, true, true, true)), -(~(-u_input.c)), -firstLeadingBit(_wgslsmith_mult_i32(u_input.d, -2147483647i)) | min(_wgslsmith_sub_i32(17105i | u_input.d, -1i), _wgslsmith_clamp_i32(u_input.d << (3610u % 32u), 2147483647i, _wgslsmith_sub_i32(u_input.b, -2147483647i))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(-783f)));
    return ~(~(-(16209i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.e, u_input.b, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b)))));
}

fn func_2() -> u32 {
    var var_0 = select(!vec3<bool>(any(vec2<bool>(false, true)), select(true, u_input.a.x == u_input.e, false), select(false, false, all(vec4<bool>(false, true, false, true)))), vec3<bool>(false, true, false), vec3<bool>(!all(vec4<bool>(false, true, false, false)), true && (select(u_input.d, 34796i, false) == func_3()), true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f - 386f) - _wgslsmith_f_op_f32(sign(369f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1299f * 601f)))), -785f)), 867f);
    var_0 = vec3<bool>(all(vec3<bool>(_wgslsmith_clamp_i32(62223i, 1i, u_input.b) >= u_input.b, true, true)), var_0.x, true);
    var var_2 = u_input.a;
    var_0 = !vec3<bool>(!var_0.x, all(!select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x))), var_0.x);
    return firstTrailingBit(_wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(17467u, u_input.a.x)), ~20286u, _wgslsmith_div_u32(var_2.x, select(23515u << (var_2.x % 32u), ~var_2.x, true))));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    let var_0 = ~func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1418f, -1064f)))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(388f, 366f)))))))));
    var var_2 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(346f, var_1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(select(-1245f, var_1.x, true)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1771f, 498f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-867f, var_1.x), vec2<f32>(var_1.x, var_1.x), true)))), vec2<f32>(var_1.x, var_1.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 627f), vec2<f32>(var_1.x, var_1.x)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(sign(102f)))));
    return vec3<i32>(45397i, u_input.d, countOneBits(2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(1u);
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.d, -1i), vec3<i32>(-(~(~u_input.c.x)), abs(-2725i), var_0.x));
    let var_2 = -_wgslsmith_div_i32(~2147483647i, ~var_0.x);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -832f, -1168f, _wgslsmith_f_op_f32(floor(-703f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, 2118f, 1557f, 357f) * vec4<f32>(-1931f, 546f, -1576f, 983f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, -1757f, 860f, -510f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(357f))), -202f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-2464f, 846f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_4 = var_3.zw;
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1799f, 1860f)), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-875f - var_4.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.x, 1568f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.x, -2565f, true))), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_4.x)), select(all(vec4<bool>(false, true, true, false)), 4294967295u > u_input.a.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-349f, _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 0u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 20148u, 0u), vec3<u32>(u_input.e, u_input.a.x, 1u), vec3<u32>(1u, 4294967295u, 4294967295u)))), ~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(1u, u_input.e, 1u) | vec3<u32>(1u, u_input.e, 4294967295u)), min(vec3<u32>(u_input.e, 72875u, 0u) ^ vec3<u32>(18414u, u_input.a.x, 1u), ~vec3<u32>(u_input.e, u_input.a.x, 47592u)), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), var_3.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, var_3.x)))));
}

