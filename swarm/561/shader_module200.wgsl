struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1258i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(684f)) + _wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1265f, -518f, true)))), _wgslsmith_f_op_f32(sign(-256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(286f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, 291f, -272f))))));
    let var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    global0 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-357f, var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -506f)) * 1359f)))));
}

fn func_2() -> f32 {
    var var_0 = 899f;
    let var_1 = (i32(-1i) * -(~u_input.a.x)) ^ abs(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(953f, -944f, -488f, 974f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2867f, _wgslsmith_f_op_f32(func_3(~vec2<u32>(4294967295u, 13480u))), _wgslsmith_f_op_f32(func_3(~vec2<u32>(0u, 15261u))), _wgslsmith_f_op_f32(func_3(~vec2<u32>(1u, 2222u)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(318f, _wgslsmith_f_op_f32(min(-1171f, 242f)), _wgslsmith_f_op_f32(select(-774f, 439f, true)), _wgslsmith_f_op_f32(f32(-1f) * -383f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-575f, var_2.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-988f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1053f));
    return var_2.x;
}

fn func_1(arg_0: u32, arg_1: bool) -> bool {
    global0 = u_input.a.x;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, 316f))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1692f))))));
    global0 = 3906i;
    var var_1 = !(!(!(!select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, true, false, arg_1), vec4<bool>(false, arg_1, false, arg_1)))));
    global0 = abs(-4648i);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -101f)))));
    var var_1 = 22547u > select(~0u, 1u, func_1(1u, false));
    var_1 = !(func_1(4294967295u, true) & true) || any(vec4<bool>(any(vec2<bool>(true, true)), true && all(vec4<bool>(true, false, true, false)), false, true));
    let var_2 = Struct_1(any(vec4<bool>(true, true, _wgslsmith_f_op_f32(func_2()) < -1311f, all(vec4<bool>(false, true, true, false)))));
    let var_3 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(7129u, 75521u, 40081u))), abs(select(countOneBits(vec2<u32>(4294967295u, 1u)), reverseBits(vec2<u32>(26779u, 0u)), !vec2<bool>(var_2.a, true)))), ~48928u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2810f), _wgslsmith_f_op_f32(func_3(vec2<u32>(1u, _wgslsmith_add_u32(20453u, 0u))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-485f)), _wgslsmith_f_op_f32(443f + -952f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2047f)), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-441f, -870f, -1251f), vec3<f32>(708f, -590f, 1023f), vec3<bool>(var_2.a, true, var_3.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1769f, 1475f, 2456f))))))));
}

