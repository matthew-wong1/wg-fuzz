struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_mod_i32(2147483647i, ~firstLeadingBit(min(u_input.b.x, 0i)));
    var var_1 = u_input.b;
    var var_2 = Struct_2(vec4<bool>(false, true, true, !any(vec4<bool>(true, true, true, true))), Struct_1(select(vec3<bool>(false, any(vec4<bool>(false, false, false, true)), select(true, true, false)), vec3<bool>(select(false, true, true), true, any(vec3<bool>(false, false, false))), select(false, true, any(vec3<bool>(false, false, false)))), ~(~firstLeadingBit(u_input.d)), 399f), 22135u & _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(1u, u_input.d)));
    var_2 = Struct_2(!select(var_2.a, vec4<bool>(var_2.a.x, -259f < var_2.b.c, true, true), false), var_2.b, 87792u);
    var var_3 = all(vec2<bool>(!all(select(vec4<bool>(var_2.b.a.x, var_2.a.x, var_2.a.x, true), vec4<bool>(true, true, var_2.b.a.x, var_2.a.x), var_2.a)), any(var_2.a.zx)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1017f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(vec2<u32>(~min(38027u, 1u), u_input.d));
    let var_1 = Struct_4(Struct_2(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false), Struct_1(vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true), var_0.x, _wgslsmith_f_op_f32(select(-2135f, _wgslsmith_f_op_f32(f32(-1f) * -2171f), true))), ~0u), -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(962f)), 655f), _wgslsmith_f_op_f32(func_3()))), Struct_1(vec3<bool>(true, !all(vec3<bool>(true, true, true)), true), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-555f, 1f) * -809f)), Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2018f, 1897f, _wgslsmith_f_op_f32(-1141f * 1285f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(447f, -1538f, -935f, -662f))))));
    let var_2 = firstTrailingBit(vec4<i32>(0i ^ abs(u_input.b.x), ~var_1.b >> (var_0.x % 32u), _wgslsmith_add_i32(min(u_input.b.x << (var_1.a.b.b % 32u), -var_1.b), ~u_input.b.x | (u_input.b.x ^ var_1.b)), firstLeadingBit(11741i)));
    let var_3 = _wgslsmith_sub_i32(max(i32(-1i) * -2147483647i, ~var_1.b), 2147483647i);
    let var_4 = var_1.e;
    return Struct_1(vec3<bool>(var_1.a.b.a.x, (_wgslsmith_dot_vec3_i32(var_2.yxw, var_2.xyy) <= abs(-2147483647i)) && (var_1.a.a.x || true), all(!select(var_1.a.a.ywz, vec3<bool>(false, var_1.a.a.x, false), var_1.d.a.x))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d, var_1.a.b.b, u_input.d) >> (vec3<u32>(1u, 61621u, u_input.d) % vec3<u32>(32u))), ~select(countOneBits(vec3<u32>(24003u, var_1.d.b, 0u)), ~vec3<u32>(33138u, 12397u, u_input.a), var_1.a.b.c <= 1306f)), _wgslsmith_f_op_f32(exp2(var_4.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = !(!(!func_2().a.yz));
    var_0 = vec2<bool>(arg_0.a.x, !(!all(select(vec4<bool>(arg_0.a.x, false, true, false), vec4<bool>(var_0.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(false, false, false, true)))));
    var_0 = !(!vec2<bool>(all(select(vec4<bool>(false, true, arg_0.a.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, arg_0.a.x, true))), var_0.x));
    var var_1 = all(select(vec4<bool>(true, !(!arg_0.a.x), false, !(false || var_0.x)), vec4<bool>(select(arg_0.a.x, all(vec2<bool>(true, arg_0.a.x)), func_2().a.x), true && var_0.x, !(4294967295u == arg_1.x), select(true, !var_0.x, true)), !(!select(false, var_0.x, true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, -3412f) * _wgslsmith_f_op_f32(floor(arg_0.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c + -675f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.c, 1120f)), _wgslsmith_f_op_f32(-arg_0.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -1683f, 320f)))));
    return arg_1.zx;
}

fn func_1() -> Struct_1 {
    let var_0 = min(~(~min(vec2<u32>(38462u, u_input.c), vec2<u32>(0u, u_input.a))), func_4(func_2(), _wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.a, u_input.c, 4294967295u), vec3<u32>(73999u, 68u, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 62802u, 4294967295u), vec3<u32>(u_input.d, 47905u, 5517u))))) & countOneBits(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(46745u, 0u), vec2<u32>(u_input.c, u_input.c))) | ~_wgslsmith_add_vec2_u32(vec2<u32>(42168u, u_input.d), vec2<u32>(u_input.c, u_input.a)));
    var var_1 = Struct_1(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), func_2().a), _wgslsmith_mult_u32(u_input.d, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f * -537f)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(624f - -1006f)), 723f, -1377f, _wgslsmith_f_op_f32(-1577f + -734f)), vec4<f32>(_wgslsmith_div_f32(-2588f, _wgslsmith_f_op_f32(var_1.c + 611f)), var_1.c, var_1.c, _wgslsmith_f_op_f32(step(1f, -1605f))))));
    var var_3 = Struct_2(vec4<bool>(true, any(vec2<bool>(var_1.a.x, var_0.x > 0u)), true, all(select(!vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), true))), Struct_1(!vec3<bool>(!var_1.a.x, !var_1.a.x, func_2().a.x), _wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec2_u32(var_0, ~vec2<u32>(u_input.a, 60002u))), 386f), ~(~4294967295u) & _wgslsmith_clamp_u32(1u, var_1.b >> (_wgslsmith_sub_u32(50433u, var_1.b) % 32u), ~(~var_0.x)));
    var_3 = Struct_2(vec4<bool>(false, var_1.a.x, false, any(vec4<bool>(var_3.a.x, true, var_1.a.x, false))), Struct_1(vec3<bool>(var_3.a.x, var_1.a.x, (43262u <= u_input.c) || (0i < u_input.b.x)), _wgslsmith_clamp_u32(select(~0u, var_0.x, any(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, false))), abs(50646u), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - -404f) - var_2.a.x))), ~var_1.b >> (u_input.d % 32u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(vec3<bool>(true, var_0.a.x, true), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, var_0.b), u_input.c), _wgslsmith_f_op_f32(-445f - var_0.c));
    var_0 = func_1();
    var var_1 = !vec4<bool>(false, var_0.a.x, true, false && !var_0.a.x);
    var var_2 = Struct_4(Struct_2(!select(select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(var_0.a.x, var_1.x, false, true), true), vec4<bool>(true, true, var_0.a.x, var_1.x), var_0.c >= 125f), Struct_1(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))), _wgslsmith_dot_vec4_u32(vec4<u32>(71540u, u_input.d, 9709u, var_0.b), vec4<u32>(1u, 11369u, 4294967295u, 15471u)), _wgslsmith_f_op_f32(-889f * _wgslsmith_f_op_f32(exp2(var_0.c)))), u_input.c), reverseBits(-2147483647i | abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) - vec2<f32>(-957f, var_0.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) + vec2<f32>(var_0.c, var_0.c)))))), func_2(), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(415f, 507f, var_0.c, -654f), vec4<f32>(-1278f, 137f, var_0.c, -1949f), vec4<bool>(true, var_0.a.x, var_1.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 853f, var_0.c, 580f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(885f, -1818f, var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, -178f, var_0.c, 1062f), vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), false)))), vec4<bool>(true, var_0.a.x, func_1().a.x, var_0.a.x)))));
    var var_3 = func_2().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(819f, 1194f, _wgslsmith_sub_i32(-13547i, var_2.b) | -2147483647i, ~(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.c, u_input.c, var_0.b), vec3<u32>(4294967295u, 6802u, var_2.d.b)), firstTrailingBit(vec3<u32>(0u, var_2.a.b.b, 4294967295u))) | reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, u_input.c, 119953u), vec3<u32>(35446u, 1u, var_2.d.b), vec3<u32>(u_input.d, 1u, 33952u)))));
}

