struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = 975f;
    var var_0 = arg_3;
    let var_1 = min(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(i32(-1i) * -1i, select(-2147483647i, 2147483647i, true), 1i, firstLeadingBit(1i))), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, -1i), vec3<i32>(0i, -12688i, -2147483647i)), ~1i, ~(~(-17895i)))), _wgslsmith_clamp_i32(27415i, select(min(0i, abs(-39391i)), -96826i, !arg_2), max(_wgslsmith_add_i32(-41122i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-34496i, 2147483647i), firstLeadingBit(vec2<i32>(-18045i, 0i))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(782f)));
    let var_3 = var_0.a;
    return -487f;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), 4294967295u, false, Struct_1(-267f)))))), -961f)));
    let var_1 = Struct_1(697f);
    var var_2 = vec2<bool>(true, true);
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2120f, var_1.a))), var_3.a)), var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a))), -363f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(-212f * var_4.x)))), 339f);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) - 877f)) - _wgslsmith_f_op_f32(func_2(arg_0.yyy))));
    var var_1 = Struct_1(-821f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1467f * var_1.a))), var_0)));
    let var_3 = Struct_1(var_2.a);
    let var_4 = vec4<bool>(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true))), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -345f)), true)) > var_3.a, any(vec3<bool>(false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), false)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -159f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -941f))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) - var_1));
    var var_3 = any(vec4<bool>(_wgslsmith_f_op_f32(func_1(select(vec4<u32>(u_input.b, u_input.a, u_input.c, 47779u), vec4<u32>(u_input.b, 63362u, u_input.a, u_input.a), vec4<bool>(false, true, false, false)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f * var_2.a)), all(vec3<bool>(true, true, true)), !(select(false, true, false) == true), var_2.a > var_1));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -135f));
    var var_5 = u_input.b >> (~(~u_input.a) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec3<u32>(1u, ~u_input.a, u_input.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -524f) - vec4<f32>(var_4.a, var_1, var_1, 415f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-910f, -1053f, var_1, var_4.a))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1401f, var_1, var_2.a, -682f), vec4<f32>(var_2.a, -1000f, var_1, -902f))))))));
}

