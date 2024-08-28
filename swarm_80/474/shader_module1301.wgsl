struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    return vec3<bool>(true, !(~u_input.c > ~(-1i)) != false, true);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = select(!select(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), false), vec3<bool>(true, true, true), !vec3<bool>(global0.x, global0.x, global0.x)), !select(vec3<bool>(global0.x, !global0.x, global0.x), !func_2(vec4<bool>(false, global0.x, true, global0.x)), !(!vec3<bool>(true, true, global0.x))), global0.x);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -153f);
    let var_1 = Struct_1(1534f);
    global0 = !vec3<bool>(true, !select(true, global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false))), all(!(!vec4<bool>(true, true, global0.x, global0.x))));
    var var_2 = 25113u;
    return Struct_1(-544f);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    global0 = select(vec3<bool>(global0.x, true, false), vec3<bool>(false, select(false, global0.x, global0.x) && any(vec4<bool>(true, global0.x, true, global0.x)), global0.x | !select(global0.x, true, true)), arg_1.a != func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_1.a)) + vec2<f32>(arg_2.a, arg_0.a))).a);
    var var_0 = abs(~(~1u));
    global0 = !select(!select(!vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), func_2(vec4<bool>(global0.x, global0.x, false, false))), vec3<bool>(global0.x, global0.x, global0.x), func_2(vec4<bool>(any(vec3<bool>(global0.x, global0.x, false)), false, global0.x, true)));
    var var_1 = arg_2;
    var_1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - vec2<f32>(arg_0.a, 1818f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, var_1.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 833f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1191f, arg_2.a))))))));
    return !global0.x & select(global0.x, func_2(select(vec4<bool>(false, true, false, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), false), any(vec4<bool>(global0.x, global0.x, false, true)))).x, !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(u_input.d <= reverseBits(min(u_input.d, u_input.d)), false, (_wgslsmith_f_op_f32(sign(433f)) > 1f) & global0.x), select(!(!vec3<bool>(global0.x, false, global0.x)), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), global0.x && true), vec3<bool>(global0.x, !global0.x, !global0.x)), true);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-1257f)));
    global0 = select(select(vec3<bool>(true, all(global0.xx), true), vec3<bool>(false, global0.x, (u_input.d < 46583u) || global0.x), global0.x), select(vec3<bool>(func_3(func_1(vec2<f32>(499f, -928f)), Struct_1(257f), var_0, max(vec2<u32>(u_input.d, u_input.e), vec2<u32>(4294967295u, u_input.d))), true, !global0.x), !select(!vec3<bool>(global0.x, true, true), func_2(vec4<bool>(global0.x, global0.x, global0.x, false)), !vec3<bool>(true, true, global0.x)), func_2(select(vec4<bool>(global0.x, global0.x, global0.x, false), !vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true)))), !vec3<bool>(true, global0.x, !(!global0.x)));
    var var_1 = _wgslsmith_f_op_f32(352f * _wgslsmith_div_f32(622f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -1000f))))));
    var var_2 = u_input.b.zy;
    global0 = vec3<bool>(false, any(global0.zz), all(!vec3<bool>(global0.x, true, false)) | all(vec3<bool>(any(vec3<bool>(global0.x, global0.x, global0.x)), true, 0u < u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(max(select(vec2<u32>(u_input.e, 39769u) | vec2<u32>(69053u, u_input.e), ~vec2<u32>(1u, 0u), vec2<bool>(true, true)) & ~vec2<u32>(4294967295u, 1u), _wgslsmith_mod_vec2_u32(~min(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, u_input.d)), ~(vec2<u32>(u_input.d, 1u) | vec2<u32>(u_input.e, 0u)))), _wgslsmith_f_op_f32(-var_0.a));
}

