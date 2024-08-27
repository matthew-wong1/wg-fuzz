struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -111f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = vec4<bool>(arg_1.a, true, true, true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1389f, _wgslsmith_f_op_f32(max(-1047f, -1574f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(576f, -561f))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -781f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1287f))))));
    var var_2 = Struct_1(u_input.c);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(917f + -923f)) + vec2<f32>(_wgslsmith_f_op_f32(-768f - 712f), _wgslsmith_f_op_f32(f32(-1f) * -360f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-125f * var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(floor(1000f)))));
    return var_1.x;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(vec3<u32>(u_input.c.x << (u_input.c.x % 32u), arg_0, 1u));
    var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1.x, arg_0, arg_0, arg_2.b), abs(vec4<u32>(var_0.a.x, arg_1.x, arg_0, 32103u))), firstLeadingBit(~vec4<u32>(arg_2.b, arg_1.x, arg_0, arg_0))), 50220u, var_0.a.x));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1521f))));
    var var_3 = Struct_1(_wgslsmith_add_vec3_u32(var_0.a, u_input.c));
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-346f, -938f, -1226f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-536f, -1030f, -1745f))), arg_0.a))))) + vec3<f32>(757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~48911u, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 0u, u_input.a), u_input.c), select(vec2<u32>(u_input.c.x, 11792u), vec2<u32>(4294967295u, u_input.a), vec2<bool>(false, true)), Struct_2(true, 4294967295u))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f - 1000f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.x) - _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(-1074f + var_0.x), any(vec3<bool>(true, true, true)))), -1052f, -1000f));
    let var_1 = arg_1;
    var var_2 = 1i <= select(-2147483647i, -(u_input.d & var_1) | arg_1, true);
    var var_3 = -1019f;
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)), _wgslsmith_f_op_f32(func_2(27855u, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -292f, var_0.x) + vec4<f32>(-123f, var_0.x, var_0.x, 318f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, var_0.x, var_0.x, var_0.x)), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec2<bool>(any(vec4<bool>(true, false, false, false)), true), vec2<bool>(false, 0u < abs(u_input.c.x)), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(all(vec3<bool>(var_0.x, false, var_0.x)), min(u_input.a, u_input.a)), u_input.b, _wgslsmith_f_op_f32(sign(-1385f)) <= _wgslsmith_f_op_f32(round(-952f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -128f, 275f, -463f) * vec4<f32>(-439f, -1768f, -913f, 516f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, 491f, 930f, 1900f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1179f), -135f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, -138f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, var_1.x, var_1.x, -539f) + vec4<f32>(-2035f, var_1.x, var_1.x, -1663f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1663f, var_1.x, var_1.x, var_1.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1940f, var_1.x, var_1.x, 349f), vec4<f32>(-333f, var_1.x, var_1.x, var_1.x))), vec4<f32>(220f, var_1.x, var_1.x, var_1.x))))));
    var var_2 = Struct_1(~vec3<u32>(u_input.c.x, _wgslsmith_div_u32(abs(65357u), _wgslsmith_div_u32(0u, u_input.c.x)), 0u));
    global0 = -1259f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.a.x));
}

