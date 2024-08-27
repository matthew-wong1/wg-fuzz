struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-958f, 784f), vec2<f32>(-693f, -740f))) - vec2<f32>(-139f, 513f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(982f, -1903f), vec2<f32>(-167f, 782f), vec2<bool>(true, false))), vec2<f32>(122f, 158f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, -928f) * vec2<f32>(1230f, 812f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(763f, 221f) * vec2<f32>(-1979f, 1052f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(395f, -549f))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-560f, -349f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(903f, 421f), vec2<f32>(-116f, 1286f), true)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1476f - 284f), _wgslsmith_f_op_f32(select(1085f, -408f, true))), _wgslsmith_div_vec2_f32(vec2<f32>(1381f, -380f), _wgslsmith_f_op_vec2_f32(func_3()))))));
    var var_1 = select(firstTrailingBit(vec4<i32>(countOneBits(-20819i), _wgslsmith_dot_vec3_i32(vec3<i32>(19114i, -25576i, -2147483647i), vec3<i32>(-60307i, -1i, 2147483647i)), reverseBits(-22208i), 0i) >> ((countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) | ~vec4<u32>(u_input.a, 48533u, 1u, u_input.a)) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-5911i, 0i, 3835i, 22683i), -vec4<i32>(17157i, 56296i, 2723i, -2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(-34200i, 36983i, -10691i), 1i, -1i, _wgslsmith_div_i32(-1i, -29900i)))), all(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, false))));
    var_1 = abs(vec4<i32>(2147483647i, -13777i, -1i, 0i));
    global0 = true;
    let var_2 = Struct_2(vec3<bool>(!any(vec3<bool>(true, false, true)), true, select(u_input.a > 4294967295u, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), (var_0.x < var_0.x) & true)), Struct_1(firstLeadingBit(var_1.x) ^ _wgslsmith_clamp_i32(~(-1i), -var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -24269i, var_1.x, 32953i), vec4<i32>(1i, var_1.x, 0i, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 109f))), _wgslsmith_f_op_vec2_f32(func_3()).x), vec2<u32>(_wgslsmith_mod_u32(~1u, countOneBits(u_input.a)), (u_input.a ^ u_input.a) | ~0u), _wgslsmith_mult_u32(~(~u_input.a), u_input.a), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(59096u, u_input.a)), ~select(43957u, 53531u, true), firstLeadingBit(u_input.a) | _wgslsmith_clamp_u32(1u, u_input.a, u_input.a), (u_input.a ^ 18987u) ^ u_input.a)), var_1.xxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(1000f * -1094f)));
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1136f, 1002f))), _wgslsmith_f_op_f32(floor(-1278f)), -1854f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) + _wgslsmith_f_op_f32(select(-2250f, -2508f, arg_0.x)))) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec2_u32(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(0u, u_input.a)), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(92770u, u_input.a))), max(~vec2<u32>(u_input.a, 1u) & ~vec2<u32>(u_input.a, u_input.a), select(~vec2<u32>(1693u, 0u), ~vec2<u32>(37883u, u_input.a), arg_0.yy))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.a.yxy)) * vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(170f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), var_0.a.x))));
    let var_2 = select(func_2(), true & arg_0.x, !(!any(!arg_0)));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, -1317f, var_0.a.x, 201f)));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -579f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = arg_2;
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-938f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(var_0.x, var_0.x)))), arg_2);
    var var_1 = -firstTrailingBit(vec4<i32>(arg_0.c.x, arg_0.b.a, abs(-1i), arg_0.b.a));
    var_1 = -_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0.b.a, var_1.x, firstTrailingBit(2147483647i), ~(-1i)), firstLeadingBit(vec4<i32>(var_1.x, var_1.x, -15469i, 0i)), !vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)), min(select(vec4<i32>(var_1.x, arg_0.b.a, arg_0.b.a, arg_0.c.x), -vec4<i32>(var_1.x, -2147483647i, arg_0.c.x, var_1.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)), abs(-vec4<i32>(34270i, 1i, arg_0.b.a, var_1.x))));
    var_0 = arg_2;
    return ~(~(~(~(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-302f, -133f, -290f, 1477f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, 2232f, 747f, -835f) * vec4<f32>(1178f, -330f, 1232f, -338f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(473f, -346f, 281f, 832f), vec4<f32>(459f, -617f, 186f, 504f))))), ~(~vec2<u32>(1u, u_input.a)));
    let var_1 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, u_input.a, _wgslsmith_add_u32(u_input.a, var_0.b.x), abs(71816u)), ~(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, var_0.b.x))), 43232u), func_4(Struct_2(vec3<bool>(true, true, true), Struct_1(1i, _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(false, true, false), vec3<i32>(35085i, 2147483647i, 24451i), false, -1i)), ~var_0.b, var_0.b.x, ~vec4<u32>(u_input.a, 29016u, 95110u, var_0.b.x)), firstLeadingBit(~vec3<i32>(2147483647i, 0i, 33511i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -119f))), ~var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -113f, var_0.a.x), vec3<f32>(1000f, -229f, var_0.a.x))))));
    var var_2 = func_4(Struct_2(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), Struct_1(0i >> ((var_0.b.x >> (u_input.a % 32u)) % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.yx), _wgslsmith_f_op_vec2_f32(-var_0.a.xy)), var_1, max(107029u, u_input.a), ~countOneBits(vec4<u32>(var_0.b.x, 4294967295u, var_1.x, var_0.b.x))), abs(_wgslsmith_add_vec3_i32(vec3<i32>(43229i, -14073i, -2147483647i) << (vec3<u32>(var_1.x, 1u, 1u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(1i, 0i, -15264i)))), _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, true, true), vec3<i32>(1i, i32(-1i) * -31204i, 1i), false, _wgslsmith_clamp_i32(~2147483647i, ~0i, -1i))).x), vec2<u32>(_wgslsmith_mult_u32(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.b.x, 82656u), vec4<u32>(u_input.a, 0u, var_0.b.x, 5405u) ^ vec4<u32>(4294967295u, 1u, 1u, 4294967295u))), 1u), var_0.a.xzz);
    let var_3 = 1302f;
    var var_4 = true;
    var_4 = func_2() & (any(vec2<bool>(true, true)) & !all(vec3<bool>(true, true, true)));
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(vec3<i32>(1i, 9537i, 0i))), ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_0.b.x, 1u, 1u), vec4<u32>(var_1.x, var_5, 0u, u_input.a), vec4<u32>(1u, u_input.a, 8991u, 1u)), vec4<u32>(0u, 104091u, 0u, 92504u), vec4<u32>(61172u, var_5, 1u, u_input.a))));
}

