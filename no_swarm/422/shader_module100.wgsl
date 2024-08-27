struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = abs(~_wgslsmith_sub_vec2_u32(countOneBits(u_input.a.yz), select(~vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 50576u) >> (u_input.a.yz % vec2<u32>(32u)), !arg_0.yz)));
    return select(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(select(95640u, u_input.a.x, arg_0.x), _wgslsmith_div_u32(4294967295u, var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x), 56708u), reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 34115u, 9783u, 0u))))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(min(10307u, 0u), ~4294967295u, firstTrailingBit(var_0.x), var_0.x), ~(~vec4<u32>(var_0.x, 0u, 0u, 0u))), !arg_0.x);
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = -297f;
    var var_1 = Struct_1(select(-26067i, _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(-2147483647i, 72539i, 1i, -27250i)), min(vec4<i32>(1847i, -2147483647i, 41193i, 1i), vec4<i32>(2147483647i, 42807i, 2147483647i, -2147483647i)) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), select(arg_0.x, 0u != ~u_input.a.x, true)), func_3(arg_0.wyy));
    var var_2 = select(select(arg_0.wz, select(vec2<bool>(true, true), vec2<bool>(false | arg_0.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, -3025i, var_1.a), vec4<i32>(-11779i, var_1.a, 28353i, var_1.a)) >= _wgslsmith_mult_i32(var_1.a, var_1.a)), arg_0.x | arg_0.x), !arg_0.xz, vec2<bool>(false, false));
    var var_3 = !select(any(arg_0.wz) & true, var_2.x || true, false);
    let var_4 = -1275f;
    return select(!vec4<bool>(var_2.x, global0.x <= var_4, arg_0.x, any(vec4<bool>(var_2.x, arg_0.x, arg_0.x, true))), arg_0, true);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    let var_0 = min(firstLeadingBit(~(-(~arg_2.a))), arg_2.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, _wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(480f * -369f), _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1299f, global0.x, 1518f, global0.x)) - vec4<f32>(global0.x, 270f, arg_3, global0.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3322f, arg_3, _wgslsmith_f_op_f32(arg_3 + global0.x), _wgslsmith_f_op_f32(-1000f - arg_3)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 939f, var_1.x, arg_3)) + vec4<f32>(_wgslsmith_f_op_f32(-483f + -758f), _wgslsmith_f_op_f32(select(1379f, var_1.x, true)), global0.x, _wgslsmith_f_op_f32(round(arg_3)))), vec4<f32>(-1321f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 521f) + _wgslsmith_f_op_f32(global0.x + 188f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) - _wgslsmith_f_op_f32(round(global0.x)))))));
    let var_2 = Struct_1(-abs(_wgslsmith_div_i32(23992i, -arg_2.a)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(abs(arg_2.b), min(vec4<u32>(0u, u_input.a.x, 32990u, 53038u) & vec4<u32>(u_input.a.x, arg_2.b.x, u_input.a.x, 4294967295u), arg_2.b)), reverseBits(func_3(vec3<bool>(true, false, arg_1)))));
    var var_3 = arg_1;
    return vec3<u32>(min(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(11051u, u_input.a.x), var_2.b.zw & vec2<u32>(17707u, 49850u))), _wgslsmith_div_u32(1u ^ _wgslsmith_mult_u32(0u, u_input.a.x), 17729u)), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, 4294967295u)), _wgslsmith_clamp_u32(var_2.b.x, min(func_3(!vec3<bool>(true, true, arg_1)).x, select(~4294967295u, var_2.b.x, !arg_1)), _wgslsmith_add_u32(u_input.a.x & 0u, ~u_input.a.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~(-2147483647i), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4419u), vec4<u32>(1u, 50836u, u_input.a.x, 623u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~vec4<u32>(4184u ^ u_input.a.x, u_input.a.x ^ u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x))));
    var var_1 = _wgslsmith_mult_vec3_u32(func_4(~_wgslsmith_dot_vec4_i32(vec4<i32>(-19248i, var_0.a, 1i, 2147483647i), vec4<i32>(var_0.a, var_0.a, -9719i, var_0.a)), any(select(vec4<bool>(true, true, true, true), func_2(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)))), Struct_1(-var_0.a, _wgslsmith_div_vec4_u32(countOneBits(var_0.b), var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -399f))) * _wgslsmith_f_op_f32(min(1f, 1148f)))), vec3<u32>(63701u, _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), 52864u << (select(var_0.b.x, u_input.a.x << (u_input.a.x % 32u), false) % 32u)));
    let var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true), vec4<bool>(!any(vec3<bool>(false, false, false)), !func_2(vec4<bool>(false, true, false, false)).x, all(func_2(vec4<bool>(false, false, true, true))), false), true), (76619u < countOneBits(_wgslsmith_clamp_u32(var_0.b.x, 25828u, 87055u))) && func_2(!func_2(vec4<bool>(true, true, true, true))).x);
    var var_3 = _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, var_1.x, var_1.x)) >> (~31350u % 32u), countOneBits(16952u | var_0.b.x), ~u_input.a.x << (35545u % 32u)), var_0.b.xwx);
    var_3 = u_input.a;
    return Struct_1(~2147483647i, func_3(vec3<bool>(var_2.x, true, global0.x != 1257f)) >> (var_0.b % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = 0u;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-180f, _wgslsmith_f_op_f32(f32(-1f) * -1497f))) + _wgslsmith_f_op_f32(round(arg_3))), 211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-137f, -1000f, all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(-arg_3));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, 1030f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(937f, global0.x)))), global0.x) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, -183f), vec4<f32>(global0.x, global0.x, arg_3, 1538f))))));
    let var_1 = !all(vec2<bool>(true, true));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-75345i, -1i, 1i, arg_1.x), vec4<i32>(arg_1.x, arg_0.a, 17543i, -4384i))), vec4<i32>(~2147483647i, max(-689i, arg_0.a), -2088i, arg_1.x << (arg_0.b.x % 32u)))) & _wgslsmith_add_i32(9007i, -reverseBits(arg_0.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(656f, global0.x))))) * _wgslsmith_f_op_f32(round(-294f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -307f) - global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + global0.x))), false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f + global0.x) - _wgslsmith_f_op_f32(global0.x + -519f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-283f, -978f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(774f, 982f)), _wgslsmith_f_op_f32(global0.x + -663f)))), _wgslsmith_f_op_f32(func_5(func_1(), vec3<i32>(abs(-44905i), 1i, 1i), ~4294967295u ^ min(0u, u_input.a.x), global0.x)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x + 552f))), _wgslsmith_f_op_f32(625f * -249f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f);
    var var_0 = firstLeadingBit(vec4<i32>(~(~1i), _wgslsmith_sub_i32(~(-5609i), _wgslsmith_mod_i32(-2147483647i, 1i)), 2147483647i, 35705i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-25758i, 2147483647i, 2147483647i, 1i) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 17425u) % vec4<u32>(32u)), vec4<i32>(1i, 1i, ~(-24820i), i32(-1i) * -2147483647i)));
    var var_1 = 975f;
    let var_2 = Struct_1(-var_0.x, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(min(vec4<u32>(1u, 3421u, u_input.a.x, u_input.a.x), vec4<u32>(59871u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), ~vec4<u32>(3692u, 4294967295u, 1u, u_input.a.x))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 56793u, 13583u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 0u, 31637u, 29938u), _wgslsmith_div_vec4_u32(vec4<u32>(77572u, 93498u, u_input.a.x, u_input.a.x), vec4<u32>(23565u, u_input.a.x, 18260u, 4294967295u)), vec4<u32>(u_input.a.x, 41965u, 52874u, 0u) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.b.x, 1u, u_input.a.x << (0u % 32u)), func_3(vec3<bool>(all(vec3<bool>(false, true, false)), true, (global0.x != global0.x) || true)).zwz, var_2.b.yyz, _wgslsmith_f_op_f32(round(-1188f)));
}

