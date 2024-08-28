struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32> = vec3<i32>(-38928i, -1i, -1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) * -1166f) <= _wgslsmith_f_op_f32(-arg_1);
    let var_0 = !vec4<bool>(!(~46942u >= u_input.e), (2147483647i != _wgslsmith_clamp_i32(arg_2.b, -17411i, -71397i)) || (4294967295u >= _wgslsmith_mult_u32(4294967295u, u_input.e)), true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(true, arg_3, arg_3)), !vec3<bool>(arg_0.a.x, false, false), false)));
    var var_1 = 8626u;
    var var_2 = _wgslsmith_f_op_f32(arg_1 - arg_1);
    let var_3 = vec4<bool>(!arg_3, true, arg_0.a.x, true);
    return _wgslsmith_mod_i32(arg_0.c.b, arg_2.b) == arg_2.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1292f - arg_0.a)), -1749f))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), var_0.x);
    let var_2 = ~_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(arg_0.b, min(global1.x & 48557i, _wgslsmith_sub_i32(-2147483647i, arg_2))), ~(-1i));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(~(~35643u), ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(36557u, u_input.e, u_input.e, 11482u))), abs(~u_input.b.wz)));
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - -1343f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.a, arg_1.a), -1002f, _wgslsmith_div_f32(1000f, arg_1.a))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(select(false, true, false), true, any(vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) + arg_0.a))), select(vec2<bool>(true, true), vec2<bool>(true, (arg_1.a <= arg_1.a) && (-914f > arg_0.a)), false), Struct_1(_wgslsmith_f_op_f32(-var_0.x), arg_2), Struct_1(arg_1.a, global1.x & 1i));
    return var_4.c.x;
}

fn func_2() -> f32 {
    var var_0 = func_3(Struct_1(-1117f, _wgslsmith_mod_i32(-(0i << (u_input.e % 32u)), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.d.zwy))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f * _wgslsmith_f_op_f32(abs(942f)))), min(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, 137i)), global1.x)), 1i);
    let var_1 = -906f;
    var_0 = select((all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))) | any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))) & false, true, var_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(sign(var_1)))));
    var_0 = all(vec4<bool>(true, false, false, (_wgslsmith_f_op_f32(609f + var_1) <= _wgslsmith_f_op_f32(-var_1)) & true));
    let var_2 = Struct_2(vec2<bool>(func_1(Struct_2(vec2<bool>(true, true), -u_input.a.yy, Struct_1(1000f, u_input.c.x)), var_1, Struct_1(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_div_i32(-2147483647i, u_input.c.x)), false), true), vec2<i32>(~(-2147483647i), _wgslsmith_div_i32(_wgslsmith_div_i32(global1.x, -global1.x), ~9588i)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1067f))))), -(2147483647i & global1.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-717f + _wgslsmith_f_op_f32(min(var_1, var_2.c.a))), -751f, select(true, all(vec3<bool>(false, true, var_2.a.x)), !var_2.a.x)))), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.c.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.yzz;
    var var_0 = _wgslsmith_f_op_f32(floor(-622f));
    var var_1 = !(!(!vec3<bool>(func_1(Struct_2(vec2<bool>(false, false), u_input.a.zz, Struct_1(-1000f, global1.x)), -1021f, Struct_1(-573f, -21516i), true), true, func_1(Struct_2(vec2<bool>(false, true), vec2<i32>(-1i, 0i), Struct_1(-538f, global1.x)), -1168f, Struct_1(735f, u_input.c.x), false))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-104f, -834f, _wgslsmith_f_op_f32(1767f + _wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, _wgslsmith_f_op_f32(f32(-1f) * -441f), -172f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-693f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(306f - -1000f))))), vec2<bool>(func_3(Struct_1(-1179f, _wgslsmith_dot_vec3_i32(vec3<i32>(-17022i, u_input.d.x, u_input.d.x), vec3<i32>(3980i, 2147483647i, 2147483647i))), Struct_1(-886f, firstLeadingBit(u_input.c.x)), 0i), all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -604f), global1.x), Struct_1(_wgslsmith_f_op_f32(trunc(617f)), -46537i));
    var var_3 = _wgslsmith_div_vec2_f32(var_2.a.zz, var_2.a.zx);
    var var_4 = ~_wgslsmith_mod_u32(~(~u_input.b.x) ^ reverseBits(0u), _wgslsmith_dot_vec3_u32(~u_input.b.wzw, vec3<u32>(1u, u_input.e, _wgslsmith_add_u32(u_input.e, 41408u))));
    var_1 = select(!select(select(select(vec3<bool>(var_2.c.x, true, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x), select(vec3<bool>(false, var_2.c.x, var_1.x), vec3<bool>(true, var_2.c.x, false), vec3<bool>(false, false, false)), vec3<bool>(var_2.c.x, var_2.c.x, false)), vec3<bool>(var_1.x, !var_1.x, all(vec2<bool>(var_2.c.x, var_1.x))), select(vec3<bool>(var_2.c.x, var_2.c.x, true), vec3<bool>(true, var_2.c.x, false), vec3<bool>(true, true, true))), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(var_2.a.x + var_3.x)) > -1047f));
    var var_5 = Struct_2(!select(vec2<bool>(all(vec3<bool>(true, false, false)), true), vec2<bool>(true, true), var_1.x), ~(vec2<i32>(global1.x, u_input.c.x) & u_input.a.yz) << (u_input.b.zy % vec2<u32>(32u)), Struct_1(var_2.d.a, var_2.e.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(select(vec3<u32>(u_input.e, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<bool>(var_5.a.x, var_2.c.x, var_1.x)))));
}

