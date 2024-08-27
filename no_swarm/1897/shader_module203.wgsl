struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> bool {
    let var_0 = vec3<u32>(arg_3.x, ~_wgslsmith_div_u32(0u, 61400u), ~11911u);
    var var_1 = !vec2<bool>(arg_2.c.x == 1i, false);
    var_1 = select(vec2<bool>(true, var_1.x), select(!(!vec2<bool>(var_1.x, true)), !select(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x)), !vec2<bool>(var_1.x, var_1.x), true), any(vec2<bool>(all(vec3<bool>(true, true, var_1.x)), select(false, var_1.x, var_1.x)))), !(!(~53782u != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, var_0.x, var_0.x), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.b)))));
    var_1 = select(vec2<bool>(all(vec2<bool>(true, true)), false & (360f < _wgslsmith_f_op_f32(-arg_2.b.a))), vec2<bool>(true, (u_input.b < u_input.b) && true), vec2<bool>(_wgslsmith_f_op_f32(select(-1372f, _wgslsmith_f_op_f32(612f - arg_2.b.a), var_1.x)) < _wgslsmith_f_op_f32(arg_2.b.a + arg_1.a), false));
    var var_2 = ~select(vec3<i32>(-1i, arg_2.c.x, firstLeadingBit(17124i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.c.x, i32(-1i) * -2147483647i, -arg_2.c.x), select(vec3<i32>(2147483647i, arg_2.c.x, 1i), max(vec3<i32>(arg_2.c.x, arg_2.c.x, -1i), vec3<i32>(-1i, arg_2.c.x, -1i)), !vec3<bool>(false, true, var_1.x))), vec3<bool>(!(!var_1.x), true, var_1.x));
    return select(var_1.x || var_1.x, all(select(select(vec3<bool>(true, false, false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, false, var_1.x)), all(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), select(select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), var_1.x), !vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, true)), select(true, select(false, var_1.x, true), var_1.x))), false || var_1.x);
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = vec4<bool>(false, any(vec2<bool>(true, true)) || func_3(Struct_1(1f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -567f)), Struct_2(-1182f, Struct_1(-405f), ~vec2<i32>(5837i, 2147483647i)), select(vec3<u32>(u_input.b, u_input.a.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, arg_0, 0u), vec3<u32>(32800u, 4294967295u, 40022u), vec3<u32>(0u, arg_0, arg_0)), true)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true)))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1647f, -1351f)))), _wgslsmith_div_f32(-904f, _wgslsmith_div_f32(2287f, 149f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.a)))))));
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -388f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a, -1037f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, -475f) + vec2<f32>(-726f, var_3.a))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.a, 1099f)))))));
    return _wgslsmith_dot_vec3_i32(-((vec3<i32>(-1i) * -vec3<i32>(-4673i, -1i, 2147483647i)) ^ select(abs(vec3<i32>(2147483647i, 0i, -46877i)), vec3<i32>(1i, 1i, 1i), false)), vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, 8642i), _wgslsmith_clamp_i32(0i, 23653i, 62256i)), i32(-1i) * -26483i, ~1i));
}

fn func_1() -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(1i, 1i, -93125i)) >> (_wgslsmith_sub_u32(u_input.b, 1u) % 32u), _wgslsmith_mult_i32(~(~(~12911i)), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, 2147483647i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -11973i), vec2<i32>(0i, -1i)))), func_2(~(~abs(34206u))), 1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(245f)))) * 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 401f), 1245f) - -588f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1566f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1164f, 1675f, -187f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-104f, 1335f, 125f) + vec3<f32>(-951f, -1504f, -1387f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, -209f, 459f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, 404f, -189f)))))));
    var var_2 = vec2<u32>(~(7172u | u_input.a.x), 1u);
    var_2 = _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_add_u32(~min(0u, 111697u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, 45523u, 54917u, u_input.a.x)), ~1u)), ~u_input.a.x));
    var_2 = vec2<u32>(~1u, u_input.a.x);
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-760f * _wgslsmith_f_op_f32(329f + _wgslsmith_f_op_f32(sign(-242f)))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())));
    let var_3 = select(~(firstLeadingBit(vec3<u32>(var_0, var_0, 0u) << (vec3<u32>(1u, var_0, var_0) % vec3<u32>(32u))) << (firstTrailingBit(vec3<u32>(var_0, 1u, u_input.b) | vec3<u32>(1u, var_0, 1u)) % vec3<u32>(32u))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0, 4294967295u), vec3<u32>(var_0, 4294967295u, 4294967295u)) << (select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 22270u, 4294967295u), vec3<u32>(4294967295u, 0u, 13880u)), vec3<u32>(0u, 4294967295u, var_0) << (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)), vec3<bool>(true, true, true)) % vec3<u32>(32u))), false);
    var var_4 = ~(~((1u >> (~var_0 % 32u)) | 0u));
    var var_5 = _wgslsmith_clamp_u32(~var_3.x, ~var_0, var_0);
    var var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1267f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.a, -113f)), _wgslsmith_div_f32(var_2, 237f))) - _wgslsmith_f_op_f32(-var_2))));
    let var_7 = Struct_3(!all(vec4<bool>(true, true, true, true)) && ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 41365u, 44832u), vec4<u32>(var_3.x, 53386u, var_3.x, 1u)) <= _wgslsmith_mod_u32(0u, var_3.x)) || any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_6.x)) + _wgslsmith_f_op_f32(floor(-309f)))) + vec3<f32>(1f, 1f, 1f)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(var_2, -1000f))), var_1, vec2<i32>(-1i) * -vec2<i32>(1i, 1i)), u_input.a, Struct_1(var_1.a));
    var var_8 = !select(var_7.a, var_7.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(u_input.a.x), 59554u, _wgslsmith_mod_u32(15177u, 4294967295u)), ~var_3) & var_3, ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~var_7.d.x, 4294967295u, ~var_3.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(59018u, var_7.d.x, var_0, 0u), abs(vec4<u32>(var_0, var_0, var_3.x, 0u)))));
}

