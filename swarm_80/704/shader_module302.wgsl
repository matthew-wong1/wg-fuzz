struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: i32) -> vec4<f32> {
    var var_0 = any(select(!(!select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, arg_0.x))), !(!(!vec3<bool>(arg_0.x, true, false))), arg_0.x));
    let var_1 = true;
    var_0 = !(!var_1 & any(!select(vec4<bool>(true, var_1, true, arg_0.x), vec4<bool>(true, var_1, true, false), vec4<bool>(true, true, false, false))));
    let var_2 = Struct_4(select(vec4<u32>(1040u, u_input.a, _wgslsmith_mod_u32(67492u, u_input.a), _wgslsmith_mod_u32(u_input.a, 0u)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 5274u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(26372u, u_input.a, 1604u, 4294967295u)), vec4<u32>(1u, 24626u, u_input.a, 4294967295u)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(~1774u, 34940u, 1u, 0u)), !(!vec4<bool>(false, false, arg_0.x, true))));
    let var_3 = Struct_3(true);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(530f, 521f, 1000f, -1000f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, 609f), vec4<f32>(global0.x, 1178f, global0.x, 1635f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1134f, 314f, -135f, 871f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 130f, 408f))))));
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 901f, 1958f, 522f) * vec4<f32>(329f, 1000f, -550f, 720f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, global0.x, global0.x, -673f) + vec4<f32>(1000f, 1827f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -860f, 495f))))))) - _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), reverseBits(firstTrailingBit(0i)) << (u_input.a % 32u), -34350i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(2147483647i, 1i)), select(~vec2<i32>(-2147483647i, -13498i), vec2<i32>(-22654i, -965i), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))))));
    let var_0 = vec4<i32>(8429i, ~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, 35611i, -2147483647i, 2147483647i)), vec4<i32>(reverseBits(1i), i32(-1i) * -2147483647i, 2147483647i, i32(-1i) * -5077i)), -2956i, reverseBits(_wgslsmith_sub_i32(1i, abs(-16135i >> (1u % 32u)))));
    var var_1 = min(vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(19238u, 1u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 18945u), vec2<u32>(1u, u_input.a)), vec2<u32>(u_input.a, 20384u) ^ vec2<u32>(72353u, u_input.a), false)), reverseBits(~0u) | ~max(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(firstTrailingBit(countOneBits(vec3<u32>(4294967295u, u_input.a, u_input.a))), ~vec3<u32>(u_input.a, u_input.a, 18605u) << (max(vec3<u32>(u_input.a, 76691u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), min(min(u_input.a ^ u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) ^ vec2<u32>(19215u, 1u), firstTrailingBit(vec2<u32>(u_input.a, 4294967295u))))), vec4<u32>(countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~4294967295u)), firstLeadingBit(u_input.a), 1u, u_input.a));
    let var_2 = _wgslsmith_mult_u32(select(~(var_1.x ^ 34496u), 0u, true) >> (var_1.x % 32u), _wgslsmith_mult_u32(0u, 1u));
    var var_3 = Struct_5(Struct_4(firstTrailingBit(vec4<u32>(6479u, _wgslsmith_dot_vec2_u32(vec2<u32>(57868u, u_input.a), var_1.yz), u_input.a, max(4294967295u, var_1.x)))), 1490u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + -673f))), _wgslsmith_f_op_f32(-global0.x), global0.x)), reverseBits(0u), var_1.x);
    return _wgslsmith_clamp_vec4_u32(var_3.a.a << (~vec4<u32>(_wgslsmith_dot_vec4_u32(var_3.a.a, vec4<u32>(0u, 69636u, 16708u, 75859u)), 0u, var_1.x, 1u) % vec4<u32>(32u)), vec4<u32>(~(~56813u), var_3.b, var_3.e, 55691u), var_3.a.a);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = func_2().x;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -213f) * -739f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1236f * -419f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) + -265f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_2), arg_2)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 917f)), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_div_f32(1000f, -428f)), _wgslsmith_f_op_f32(sign(arg_2)), global0.x), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1171f)) + 280f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), -890f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1f) + -382f), 2313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f + _wgslsmith_f_op_f32(min(-1971f, global0.x))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, -871f, global0.x, -1039f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2453f, 943f, 111f, -151f)), true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-289f, arg_0, 865f, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1291f, arg_2, arg_0, arg_2) - vec4<f32>(-1597f, global0.x, arg_2, global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 137f, arg_2, arg_0) - vec4<f32>(-898f, -407f, arg_2, 633f)) * vec4<f32>(-714f, global0.x, 897f, arg_2))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1277f, 1968f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1939f, -1349f, global0.x) * vec4<f32>(global0.x, arg_2, global0.x, -1000f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(arg_0 - -648f)))), 311f) * _wgslsmith_f_op_vec2_f32(global0.yw - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zx), vec2<f32>(_wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(abs(arg_2))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1458f, _wgslsmith_f_op_f32(f32(-1f) * -771f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(global0.x, arg_2)))), arg_0, _wgslsmith_f_op_f32(trunc(1000f))) - vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(arg_0, arg_2))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(1665f)))));
    return reverseBits(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(-1i, select(1i, 1i, true)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(1i, 1i, 50777i)), abs(vec3<i32>(1i, -29266i, 0i))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    let var_0 = !any(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true));
    var var_1 = vec3<bool>(reverseBits(_wgslsmith_mod_i32(-11677i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-2147483647i, -1i)))) != -26091i, !any(!select(vec3<bool>(false, false, true), vec3<bool>(var_0, var_0, true), true)), var_0);
    let var_2 = 2147483647i;
    var_1 = !select(!(!select(vec3<bool>(false, var_0, var_1.x), vec3<bool>(var_0, false, var_1.x), true)), vec3<bool>(!all(vec4<bool>(false, var_0, true, true)), 438f == _wgslsmith_f_op_f32(global0.x - global0.x), var_1.x), var_1.x);
    var var_3 = func_4(arg_0.x, Struct_4(func_2()), arg_0.x, _wgslsmith_mult_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(80140u, 17884u))), ~vec2<u32>(~arg_1, 1u ^ u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -365f))) - -1137f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1200f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(784f)) * _wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(global0.zy, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(247f, global0.x)) - 367f)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_f32(global0.zz, global0.zz), reverseBits(33851u)))))), 601f, global0.x);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1339f)))), global0.x, _wgslsmith_f_op_f32(round(623f)), _wgslsmith_f_op_f32(-global0.x));
    let var_1 = !(!(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), any(vec2<bool>(true, true)))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(-var_0))))));
    var var_2 = vec4<u32>(max(u_input.a, u_input.a), _wgslsmith_clamp_u32(~7595u, _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0.x, Struct_4(~(~vec4<u32>(var_2.x, 37812u, 12467u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.x))))), vec2<u32>(var_2.x, ~_wgslsmith_mult_u32(var_2.x, u_input.a))));
}

