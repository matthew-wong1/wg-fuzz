struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> vec4<bool> {
    var var_0 = firstTrailingBit(u_input.a.x);
    var_0 = 101057u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1559f - 427f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-139f, 656f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1771f, -671f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1420f, 209f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2111f, -1592f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1199f, -368f), vec2<f32>(-590f, 407f)))))), 1f, false, vec2<i32>(2147483647i, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(136f * -671f))) * 184f)));
    var var_2 = -1i;
    let var_3 = -vec2<i32>(1i, -1i);
    return !(!select(!vec4<bool>(true, true, true, arg_3), select(vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), select(vec4<bool>(true, false, var_1.c, true), vec4<bool>(var_1.c, var_1.c, true, var_1.c), vec4<bool>(true, true, var_1.c, true)), vec4<bool>(arg_3, var_1.c, false, false)), vec4<bool>(!var_1.c, arg_3, var_1.c, true)));
}

fn func_2() -> vec4<bool> {
    global0 = false;
    global0 = all(select(select(vec4<bool>(true, all(vec2<bool>(false, false)), false, false), select(func_3(vec3<i32>(u_input.c.x, -18015i, u_input.c.x), vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 0u), u_input.a.x, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), false), true), vec4<bool>(true, true, true, true), false));
    global0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)));
    global0 = all(vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(0u, 4294967295u)) > 31878u, select(1i >= u_input.c.x, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(-1635f, 757f)) < _wgslsmith_f_op_f32(step(-1000f, -675f))), true));
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.yx), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x, 1u, u_input.a.x));
    return select(select(select(vec4<bool>(all(vec3<bool>(true, false, false)), select(true, false, false), true, true), vec4<bool>(true, false, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), !func_3(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(16012u, 4294967295u, u_input.a.x, u_input.b), 4294967295u, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false)), func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<i32>(98301i, u_input.c.x, u_input.c.x)), ~vec4<u32>(var_0.x, 27831u, 1u, u_input.a.x), var_0.x, false), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, true)), false))), !vec4<bool>(!all(vec2<bool>(false, true)), true, false, true), !(any(vec4<bool>(true, false, false, false)) && true) || all(vec3<bool>(false, true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-476f)), _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2476f))), 527f));
    let var_1 = firstTrailingBit(_wgslsmith_mult_i32(-29505i, arg_0.a));
    var var_2 = !(!select(func_2(), !func_3(vec3<i32>(arg_0.a, 0i, 0i), vec4<u32>(0u, 56217u, arg_0.b, arg_0.b), arg_0.b, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, var_0.a.x)), vec2<f32>(arg_1, arg_1))))))), arg_1, true, u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -247f));
    var_3 = Struct_3(var_3.a, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_3.b))))))), var_3.c, ~vec2<i32>(-37254i, ~_wgslsmith_clamp_i32(var_3.d.x, var_1, -1i)), _wgslsmith_f_op_f32(-arg_1));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 658f, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - var_3.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(445f, 1841f) - _wgslsmith_f_op_vec2_f32(func_1(Struct_1(-75623i, u_input.a.x), 869f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1600f, 521f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-492f, var_0.x) * vec2<f32>(1281f, var_0.x)))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(abs(var_0.x))))), var_0));
    let var_2 = firstLeadingBit(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 6781i, -1i, u_input.c.x), ~vec4<i32>(-35286i, u_input.c.x, 517i, u_input.c.x)), select(u_input.c.x, u_input.c.x, true), _wgslsmith_sub_i32(~u_input.c.x, 1i))));
    var_1 = var_0;
    var var_3 = 270f;
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_1.x), var_0)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, var_0.x))))), vec2<f32>(var_0.x, 2171f), vec2<bool>(false, any(vec4<bool>(true, true, true, true)))));
    let var_4 = -115f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(37185i, 2147483647i), -vec2<i32>(35013i, -2147483647i)), 34458i, 2147483647i), _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, u_input.c.x), vec2<i32>(var_2.x, var_2.x)), vec2<i32>(_wgslsmith_mult_i32(-6626i, u_input.c.x), _wgslsmith_mod_i32(-1i, u_input.c.x)))), u_input.c.x);
}

