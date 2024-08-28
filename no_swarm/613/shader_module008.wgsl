struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<u32> {
    var var_0 = 42511u;
    let var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    var_0 = 8670u;
    return vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_3, 48621u, 69184u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, 4294967295u, arg_3), vec3<u32>(arg_3, arg_3, arg_3))), 969u), arg_3, 52361u);
}

fn func_2() -> vec2<bool> {
    var var_0 = abs(abs(vec2<i32>(u_input.a, u_input.a) ^ select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false)))) << (~_wgslsmith_sub_vec2_u32(select(firstTrailingBit(vec2<u32>(33238u, 25953u)), abs(vec2<u32>(55588u, 27758u)), vec2<bool>(false, true)), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    let var_1 = Struct_3(vec3<u32>(_wgslsmith_div_u32(~abs(0u), ~(~1u)), 1u, 75967u), reverseBits(vec3<u32>(~1u, ~9733u, countOneBits(4294967295u)) | (func_3(vec2<f32>(-971f, 232f), vec3<i32>(var_0.x, 1i, 0i), vec3<i32>(u_input.a, 1i, u_input.a), 74734u) | max(vec3<u32>(26358u, 4294967295u, 7252u), vec3<u32>(74933u, 1u, 104987u)))), -1i);
    let var_2 = firstLeadingBit(abs(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, 14283i), countOneBits(vec2<i32>(u_input.a, 9026i)), vec2<i32>(2147483647i, -25428i)), reverseBits(abs(vec2<i32>(34603i, -2147483647i))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-126f, 772f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(108f, -161f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1796f))), 1274f)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, 565f, -471f), vec3<f32>(-1618f, var_3.x, var_3.x)))), vec3<f32>(404f, -612f, var_3.x)))), vec3<bool>(select(!any(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, true, false))), true || all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))), true), -select(abs(-vec4<i32>(2280i, var_2.x, var_1.c, var_0.x)), reverseBits(-vec4<i32>(1i, -930i, u_input.a, var_2.x)), vec4<bool>(40679u != var_1.a.x, true, true, var_1.b.x <= 0u)), Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(-var_1.c, -26337i ^ var_0.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, 1i), ~var_0.x)), ~1i, !select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec3<bool>(true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true)), false)), any(vec4<bool>(true, true, true, true)));
    return !vec2<bool>(all(!(!vec3<bool>(true, var_4.e, false))), var_4.d.c.x);
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = ~vec4<i32>(-1i, ~abs(1i), arg_0, u_input.a);
    let var_1 = select(func_2(), select(select(select(vec2<bool>(true, true), func_2(), false), vec2<bool>(false, true), false), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), false), true), !func_2().x);
    var var_2 = -983f;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3046f - -389f))))), 278f));
    var_2 = _wgslsmith_f_op_f32(1247f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(301f)) + _wgslsmith_f_op_f32(-179f * -950f)), -265f)) * 1f));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, _wgslsmith_sub_i32(u_input.a, -30738i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 31407u, 38142u), vec4<u32>(0u, 4294967295u, 1u, 40897u)), ~4294967295u, 0u, ~4294967295u), ~(~vec4<u32>(22896u, 3249u, 1u, 1u))) % 32u), func_1(5467i), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, firstTrailingBit(26325u))) ^ 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(327f, 145f), _wgslsmith_f_op_f32(-240f + -1052f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_div_f32(880f, 414f))))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(u_input.a, var_0.b)), ~2147483647i, -33339i, u_input.a) & abs(-vec4<i32>(51313i, var_0.b, u_input.a, 0i)), ~select(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(-1i, -9178i, var_0.b)), vec3<i32>(1i, u_input.a, -8368i) & ~vec3<i32>(var_0.a, var_0.b, u_input.a), select(vec3<bool>(false, var_0.d.x, var_0.c.x), !var_0.d, -46269i > var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1521f, -1380f, -924f), vec3<f32>(-884f, 1444f, -1000f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(271f, _wgslsmith_f_op_f32(floor(-198f)), -926f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, -461f, 418f)), vec3<f32>(-1485f, 589f, -234f)))));
}

