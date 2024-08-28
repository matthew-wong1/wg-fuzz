struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -209f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, -1717f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f + _wgslsmith_f_op_f32(max(-284f, arg_1.b))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(727f - -1216f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(abs(1f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_3.b.x)), 1452f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * var_0.x)), var_0.x)) - arg_1.b);
    global0 = 1650f;
    var var_3 = Struct_2(vec2<i32>(-max(u_input.a, _wgslsmith_sub_i32(arg_3.a.x, arg_3.a.x)), 0i), arg_3.b, arg_2, arg_3.d);
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(max(129182u >> (0u % 32u), 0u >> (arg_1.c.c.x % 32u)), arg_2.c.x, arg_2.c.x), vec3<u32>(select(30844u, _wgslsmith_sub_u32(arg_2.c.x, var_3.d.c.x), var_3.c.a), abs(arg_1.c.c.x), _wgslsmith_mult_u32(~arg_3.c.c.x, 0u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> bool {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -117f))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.x, 2351f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1713f, -658f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(-arg_0.b.x)))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x * -1741f), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-arg_0.b.x))))));
    let var_1 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(func_3(vec3<i32>(u_input.a, arg_0.a.x, u_input.a), Struct_3(arg_0.d.b.x, arg_0.b.x, arg_0.c, vec3<bool>(arg_0.d.b.x, false, arg_0.c.a)), Struct_1(true, vec4<bool>(arg_0.c.b.x, true, false, true), arg_0.d.c), arg_0), func_3(vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.a), Struct_3(false, arg_0.b.x, arg_0.c, arg_0.d.b.xzy), Struct_1(arg_0.d.a, arg_0.d.b, vec4<u32>(1u, 1u, arg_1, arg_1)), Struct_2(vec2<i32>(u_input.a, u_input.a), vec3<f32>(953f, var_0.x, -1032f), arg_0.c, arg_0.c)), abs(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<u32>(0u, arg_0.c.c.x, arg_0.c.c.x, arg_0.c.c.x))), abs(arg_0.d.c)), ~reverseBits(vec4<u32>(0u, 10080u, arg_0.d.c.x, 5219u)));
    global0 = _wgslsmith_f_op_f32(722f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x))) + var_0.x))));
    global0 = var_0.x;
    return false;
}

fn func_1() -> vec4<f32> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -444f));
    let var_0 = !(!vec2<bool>(true, !func_2(Struct_2(vec2<i32>(-26740i, -15589i), vec3<f32>(-1093f, -1216f, 1328f), Struct_1(false, vec4<bool>(true, false, false, false), vec4<u32>(22955u, 44803u, 0u, 11817u)), Struct_1(false, vec4<bool>(true, true, false, true), vec4<u32>(0u, 0u, 4294967295u, 13760u))), 0u)));
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec2_i32(~(~(vec2<i32>(u_input.a, 28164i) ^ vec2<i32>(-25816i, u_input.a))), ~(~(-vec2<i32>(u_input.a, -1i)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-138f, -1601f))));
    global0 = -442f;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2341f - _wgslsmith_f_op_f32(abs(1224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f * -632f) - 493f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -124f))), 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_1 = abs(vec2<i32>(-firstLeadingBit(~(-10535i)), -_wgslsmith_mod_i32(u_input.a, ~(-40992i))));
    global0 = _wgslsmith_f_op_f32(-1651f + var_0.x);
    global0 = 653f;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 703f)))));
    let var_3 = max(select(vec2<u32>(1u, 1u), max(vec2<u32>(1u, 4294967295u), firstLeadingBit(vec2<u32>(46273u, 4294967295u))), true), _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 21385u), ~3674u), countOneBits(~(~vec2<u32>(1u, 0u)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-202f)) * -740f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -1i, -1i, u_input.a), vec4<i32>(-6713i, u_input.a, 2147483647i, 47670i), vec4<i32>(u_input.a, -48200i, -2147483647i, 1i)), vec4<i32>(-11333i, _wgslsmith_clamp_i32(16368i, 48554i, u_input.a), -2147483647i | u_input.a, 1i))), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.yzy - var_0.wwx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, 962f, var_0.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(-370f, 1187f))))), ~(~vec4<u32>(select(var_3.x, 80883u, false), max(var_3.x, 0u), firstTrailingBit(0u), 33578u)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 0i, 19546i, -2147483647i), vec4<i32>(u_input.a, u_input.a, var_1.x, var_1.x)), ~vec4<i32>(var_1.x, 2147483647i, 2147483647i, var_1.x)), vec4<i32>(u_input.a, var_1.x & u_input.a, u_input.a, _wgslsmith_add_i32(u_input.a, 1i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 1i, 2147483647i) ^ vec4<i32>(u_input.a, var_1.x, u_input.a, -1i), abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, 85985i)), vec4<i32>(var_1.x, 2147483647i, -1i, var_1.x))));
}

