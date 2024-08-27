struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -952f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-2038f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2022f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1809f))), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * 893f), _wgslsmith_f_op_f32(max(540f, 697f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-517f, -654f) + vec2<f32>(1548f, 162f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-706f, -759f) * vec2<f32>(-1275f, 1193f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-661f, -777f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-312f, 1663f) + vec2<f32>(1551f, -1417f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(124f, -2191f)))), false))));
    let var_1 = ~(-u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1349f) - _wgslsmith_f_op_f32(var_0.x - -554f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(250f - var_0.x), var_0.x, select(false, true, true)))))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)))));
    global0 = _wgslsmith_f_op_f32(ceil(var_2.a));
    var var_3 = vec4<bool>(!(!all(vec4<bool>(var_2.b, var_2.b, true, true)) & false), all(vec4<bool>((var_2.b | false) || true, any(!vec3<bool>(true, var_2.b, var_2.b)), true, var_2.b)), _wgslsmith_f_op_f32(floor(var_2.a)) >= var_0.x, !all(select(vec2<bool>(true, true), !vec2<bool>(var_2.b, false), true)));
    return var_2.a;
}

fn func_2() -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) - 1505f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(595f)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-793f + 387f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(827f)), _wgslsmith_f_op_f32(ceil(-1894f)))) - _wgslsmith_f_op_f32(ceil(-485f))))));
    var var_2 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), any(vec2<bool>(true, true))), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), !vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(any(vec2<bool>(false, true)), false, true, true), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(21480u, 370u), vec2<u32>(4294967295u, 0u))), true), select(select(vec4<bool>(false, false, true, any(vec2<bool>(true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), select(false, all(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, true)))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, true, true))));
    var var_3 = reverseBits(countOneBits(_wgslsmith_dot_vec2_i32((vec2<i32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) | select(u_input.b, vec2<i32>(u_input.b.x, 1062i), var_2.ww), ~(u_input.a.zy >> (vec2<u32>(0u, 1959u) % vec2<u32>(32u))))));
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) + _wgslsmith_f_op_f32(-arg_1))) * arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(trunc(-1737f)))))));
    global0 = 1047f;
    var var_0 = vec3<bool>(all(vec4<bool>(!arg_3.b | arg_3.b, arg_3.b, false, (arg_3.b || arg_3.b) && (arg_3.b || true))), !arg_3.b, false);
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.wwz * arg_2.zwx))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(242f * var_1.a), 1690f, -1456f)))) - vec3<f32>(-805f, arg_3.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1146f))))));
    return arg_3;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(468f, -1023f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1663f)) - _wgslsmith_f_op_f32(217f * 211f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(sign(-969f))));
    var var_0 = 3099u;
    var var_1 = func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1641f, 623f, 322f, 596f), vec4<f32>(1928f, -905f, -447f, -376f)))))), Struct_1(1220f, false));
    global0 = _wgslsmith_f_op_f32(-var_1.a);
    var var_2 = -u_input.a.wwy;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - -314f), 754f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f + _wgslsmith_f_op_f32(func_1(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))))));
    global0 = _wgslsmith_f_op_f32(select(-417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1401f + -204f) + _wgslsmith_f_op_f32(trunc(203f))))), true));
    global0 = -888f;
    global0 = 881f;
    let var_0 = vec3<f32>(1062f, -158f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -845f) - _wgslsmith_f_op_f32(719f - -377f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(703f, 812f))))));
    global0 = var_0.x;
    var var_1 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1589f, -320f, var_0.x) - vec4<f32>(-1000f, -744f, -2638f, 384f)))))), ~vec4<u32>(_wgslsmith_mult_u32(0u, 15900u >> (0u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1365u, 0u), vec2<u32>(24574u, 36140u)), vec2<u32>(1u, 1u)), ~0u, 0u));
}

