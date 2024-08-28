struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(1i >> (0u % 32u), 1i | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-333i, 7059i), vec2<i32>(10252i, -32195i)), vec2<i32>(1i, 1i))), ~abs(~_wgslsmith_div_u32(u_input.b, u_input.b)), vec2<i32>(1i, ~_wgslsmith_clamp_i32(1i, 0i, -1i)), arg_0.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(u_input.a, 68673u), reverseBits(_wgslsmith_mod_u32(51823u, 75745u))), ~(~vec2<u32>(27138u, u_input.b) << (abs(vec2<u32>(30455u, u_input.b)) % vec2<u32>(32u))), ~(~abs(vec2<u32>(19680u, u_input.b)))));
    let var_1 = countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.a), vec4<i32>(var_0.c.x, var_0.c.x, var_0.a, 0i)), vec4<i32>(var_0.a, 2147483647i, var_0.c.x, var_0.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(65748i, -45236i, 5572i, var_0.a), vec4<i32>(7451i, var_0.c.x, var_0.c.x, 9491i)), var_0.c.x, -var_0.a, var_0.a))) ^ vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, 2147483647i), var_0.c.x), _wgslsmith_mod_i32(56876i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.c.x), vec2<i32>(var_0.c.x, 9485i))), 4464i, var_0.c.x);
    var var_2 = arg_0.xwy;
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1627f, _wgslsmith_f_op_f32(f32(-1f) * -968f)) + _wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1308f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-794f, -1000f))))), -627f), -2336f);
    var var_3 = _wgslsmith_add_vec2_u32(var_0.e, max(select(select(vec2<u32>(var_0.e.x, u_input.b), vec2<u32>(41417u, 4294967295u), true), var_0.e, any(vec3<bool>(true, false, true))), vec2<u32>(var_0.b, ~var_0.e.x)) << (abs(var_0.e) % vec2<u32>(32u)));
    return _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 32891i) & ~var_1.yx, abs(var_1.yx))), firstLeadingBit(7842i));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, 1f, _wgslsmith_f_op_f32(317f * _wgslsmith_div_f32(672f, 443f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + arg_0.d) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, arg_0.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.d, arg_0.d)))), 1424f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, 1000f, arg_0.d) * vec4<f32>(arg_0.d, arg_0.d, arg_0.d, 566f)))))), true));
    let var_1 = vec4<i32>(arg_0.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(abs(67313i), 11699i, arg_0.a), vec3<i32>(i32(-1i) * -29692i, arg_0.a, func_3(vec4<f32>(arg_0.d, 247f, 361f, 1530f)))), 1i >> (u_input.b % 32u), -94563i);
    var var_2 = _wgslsmith_mult_i32(-max(arg_0.c.x, reverseBits(_wgslsmith_mod_i32(-17619i, -19202i))), ~abs(_wgslsmith_sub_i32(arg_0.a, -arg_0.a)));
    var_0 = vec4<f32>(arg_0.d, _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(ceil(-404f))), arg_0.d, -150f);
    var_2 = _wgslsmith_add_i32(-arg_0.a, ~arg_0.c.x);
    return true & all(vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false)), any(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, true)), var_0.x == _wgslsmith_f_op_f32(trunc(arg_0.d))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(any(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(sign(arg_2)), all(select(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, func_2(Struct_1(35458i, arg_3.b, arg_3.c, arg_3.d, vec2<u32>(25523u, arg_3.b)))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)), all(vec3<bool>(true, true, true)) & any(vec2<bool>(false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_3.d)))), arg_3.d), Struct_1(func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1605f, 1524f, arg_3.d, -341f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d, 1236f, -1000f, 1113f) - vec4<f32>(arg_2, arg_3.d, arg_2, -1227f))))), u_input.a, _wgslsmith_sub_vec2_i32(arg_3.c, vec2<i32>(select(arg_3.c.x, arg_3.a, true), -arg_3.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_div_f32(820f, arg_3.d))))), vec2<u32>(42005u, 1u) ^ ~(~vec2<u32>(arg_1, 53725u))));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b + -139f))))), all(vec2<bool>(true, true)), arg_3.d, Struct_1(arg_3.a, 75551u, vec2<i32>(_wgslsmith_div_i32(arg_3.a, _wgslsmith_dot_vec2_i32(arg_3.c, var_0.e.c)), var_0.e.c.x), -924f, vec2<u32>(~20877u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(52109u, 58972u, arg_0.x), ~1u))));
    var_0 = Struct_2(!((arg_3.c.x | arg_3.a) <= var_0.e.a), -376f, var_0.c, _wgslsmith_f_op_f32(1811f * 1495f), arg_3);
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(~(~4294967295u | _wgslsmith_clamp_u32(36886u, 1u, arg_1))), u_input.a ^ arg_1);
    var var_2 = Struct_2(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.d, _wgslsmith_f_op_f32(-1496f * -1000f))))), all(!select(vec2<bool>(var_0.c, false), vec2<bool>(true, true), var_0.e.c.x == var_0.e.a)), _wgslsmith_f_op_f32(-arg_2), arg_3);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.d, _wgslsmith_f_op_f32(arg_3.d * arg_3.d)))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(min(-2147483647i, max(1i, select(_wgslsmith_sub_i32(-63832i, 50757i), _wgslsmith_add_i32(2147483647i, -1i), arg_0.x <= arg_0.x))), 20114i);
    var var_1 = Struct_1(-11142i, _wgslsmith_clamp_u32(max(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.a))), 59921u, ~u_input.a), _wgslsmith_mod_vec2_i32(abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 0i), vec2<i32>(0i, var_0))), _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(22883i, 1i)), -_wgslsmith_add_vec2_i32(vec2<i32>(-32851i, var_0), vec2<i32>(-28339i, var_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) + _wgslsmith_f_op_f32(max(arg_0.x, -1000f))))), 383f)), vec2<u32>(~(~u_input.a), 1u));
    var_1 = Struct_1(1i, 0u, vec2<i32>(_wgslsmith_add_i32(var_0, -(~1i)), -(i32(-1i) * -24866i)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1179f, arg_0.x))))), vec2<u32>(4294967295u, 28787u));
    var var_2 = 34888u;
    var var_3 = Struct_2(select(all(vec2<bool>(var_0 <= var_1.a, any(vec2<bool>(true, true)))), true, !(!any(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-954f, var_1.d)) * -476f), Struct_1((_wgslsmith_add_i32(var_0, 2147483647i) << (1u % 32u)) ^ ~(-var_1.a), u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), -vec2<i32>(var_1.c.x, var_1.c.x) | var_1.c), arg_0.x, vec2<u32>(var_1.e.x, 4294967295u << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u))));
    return var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2065f, 1084f, 614f), vec3<f32>(134f, -434f, 309f), true))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 4294967295u, 4294967295u), u_input.a, -119f, Struct_1(13363i, 19176u, vec2<i32>(2147483647i, 0i), -218f, vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, u_input.a, 0u), 47686u, -952f, Struct_1(-1i, u_input.a, vec2<i32>(32808i, -1i), -484f, vec2<u32>(u_input.a, u_input.b))))))));
    var var_1 = Struct_2(true, var_0.d, false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(446f * var_0.d))), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, 1000f, 1660f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1015f, var_0.d, -326f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, 243f)), vec3<f32>(var_0.d, var_0.d, var_0.d), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)))))));
    var var_2 = ~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 9376u & var_0.e.x, var_0.b, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.e.e.x, 5918u, 1u) << (vec4<u32>(var_1.e.b, 30292u, 1u, 1u) % vec4<u32>(32u)), ~vec4<u32>(var_1.e.e.x, var_0.e.x, var_0.b, var_0.b))));
    var_1 = Struct_2(var_1.e.c.x == -var_0.a, -148f, true, _wgslsmith_f_op_f32(106f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.e.d + var_0.d))) + var_1.d)), var_1.e);
    let var_3 = Struct_2(true, var_0.d, var_1.c | true, _wgslsmith_f_op_f32(-var_0.d), func_4(vec3<f32>(-328f, var_0.d, var_1.e.d)));
    let var_4 = !vec3<bool>(select(true, var_3.a, _wgslsmith_f_op_f32(var_3.d - var_0.d) > _wgslsmith_f_op_f32(floor(1290f))), !(any(vec2<bool>(var_3.c, false)) & any(vec4<bool>(true, var_1.c, var_1.a, var_3.c))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_3.e.a, -25648i));
}

