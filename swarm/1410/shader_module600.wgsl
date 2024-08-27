struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(global0.a.x, 4294967295u, 61548u));
    global0 = Struct_1(var_0.xy);
    let var_1 = true;
    var var_2 = Struct_4(Struct_1(vec2<u32>(reverseBits(0u), ~(~global0.a.x))), vec4<i32>(u_input.e, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.e >> (global0.a.x % 32u), 27319i), 1i), u_input.e, ((32756i ^ u_input.e) & 19759i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(83288u, 1u, 103906u, u_input.d), ~vec4<u32>(global0.a.x, var_0.x, u_input.b.x, 21811u)) % 32u)), Struct_2(Struct_1(vec2<u32>(~global0.a.x, countOneBits(var_0.x))), ~vec3<i32>(25150i, min(u_input.e, 2147483647i), select(u_input.e, -1i, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, 224f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)), vec2<f32>(660f, -1073f))), _wgslsmith_f_op_f32(floor(arg_0)), true));
    var var_3 = 48932u ^ reverseBits(u_input.b.x);
    return global0.a.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(~firstTrailingBit(vec2<u32>(abs(arg_0), ~1u)));
    global0 = Struct_1(vec2<u32>(global0.a.x, ~firstLeadingBit(~32056u)));
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c), ~global0.a), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), false, true), 1u | _wgslsmith_sub_u32(10835u ^ global0.a.x, 0u << (global0.a.x % 32u)), ~u_input.c.x) ^ _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(131987u, arg_0, global0.a.x, 44548u), vec4<u32>(4294967295u, u_input.b.x, arg_0, 0u) & vec4<u32>(u_input.c.x, global0.a.x, 5994u, 27494u)), vec4<u32>(_wgslsmith_mult_u32(67215u, 5456u), 0u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(131f)) + -391f))));
    var var_2 = ~(~u_input.e);
    return Struct_1(countOneBits(vec2<u32>(~u_input.b.x, global0.a.x)));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(677f, -370f))))));
    global0 = func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, u_input.a), u_input.b.x), vec2<u32>(~(~4294967295u), firstLeadingBit(_wgslsmith_sub_u32(u_input.d, 1u)))));
    var var_1 = _wgslsmith_mod_vec2_i32(~select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.e, 0i), vec2<bool>(false, false)), vec2<i32>(u_input.e, -43912i << (0u % 32u))) ^ ~(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.e, u_input.e)), max(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(u_input.e, u_input.e)), firstLeadingBit(vec2<i32>(u_input.e, u_input.e))) ^ ((vec2<i32>(-15410i, u_input.e) ^ vec2<i32>(u_input.e, u_input.e)) >> (_wgslsmith_clamp_vec2_u32(u_input.b.xy, vec2<u32>(global0.a.x, global0.a.x), vec2<u32>(0u, 1u)) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0 - var_0)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-950f * var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1045f * var_0.x) - var_0.x))) * _wgslsmith_f_op_f32(abs(var_2.x))), var_0.x);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2 * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -450f), var_3.x), _wgslsmith_f_op_vec2_f32(max(var_2, vec2<f32>(2362f, 621f))), select(vec2<bool>(true, false), vec2<bool>(true, false), true)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-279f))))), var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1044f, -1786f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(194f, -1000f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(501f, -672f) + vec2<f32>(2259f, 1726f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -943f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(282f)), _wgslsmith_f_op_f32(-714f - -799f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-330f, -1141f)))), ~(-u_input.e) == -31587i)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-998f, var_0.x))) - vec2<f32>(1793f, var_0.x)) + vec2<f32>(126f, _wgslsmith_f_op_f32(-var_0.x))), vec2<f32>(-1795f, _wgslsmith_f_op_f32(ceil(var_0.x)))));
    var var_1 = func_3(-1000f, (-564f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1029f)))) | true, true);
    let var_2 = Struct_2(Struct_1(vec2<u32>(0u, ~1u)), max(vec3<i32>(u_input.e, u_input.e, u_input.e), firstLeadingBit(abs(vec3<i32>(-2147483647i, u_input.e, u_input.e) & vec3<i32>(u_input.e, u_input.e, u_input.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -423f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1930f, 120f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-3276f, -861f))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(205f, var_0.x) + vec2<f32>(var_0.x, -687f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, var_0.x)))))), _wgslsmith_f_op_f32(abs(var_0.x)), !(!all(vec3<bool>(true, true, true))));
    var var_3 = -675f;
    let var_4 = func_2(~((_wgslsmith_div_u32(var_2.a.a.x, var_2.a.a.x) ^ ~u_input.c.x) | ~58236u));
    let var_5 = 551f;
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-20031i, 26619i, 2147483647i, var_2.b.x) << (vec4<u32>(52351u, var_4.a.x, 17161u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, 4104i, u_input.e, u_input.e), vec4<i32>(var_2.b.x, -24609i, var_2.b.x, u_input.e))), -2147483647i), u_input.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d, var_0.x, var_5, var_5), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 961f, 657f, var_0.x) * vec4<f32>(var_5, 1316f, var_0.x, var_5)), select(vec4<bool>(var_2.e, var_2.e, true, var_2.e), vec4<bool>(var_2.e, var_2.e, false, false), vec4<bool>(false, var_2.e, true, true)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(829f, -603f, var_2.d, var_2.d) + vec4<f32>(var_2.d, 524f, var_2.c.x, var_5))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_2.c.x, var_5, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5, 568f, var_5, var_2.d), vec4<f32>(var_0.x, var_5, 2272f, -842f), vec4<bool>(var_2.e, var_2.e, var_2.e, true))))), var_2.e && false)));
}

