struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(9616u, 4243u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28323u), vec2<u32>(6434u, global0.a.x)), 44219u), ~global0.a) >> (~vec2<u32>(global0.a.x, global0.a.x) % vec2<u32>(32u)));
    let var_0 = Struct_1(vec2<u32>(global0.a.x, ~1u));
    global0 = var_0;
    let var_1 = any(vec2<bool>(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, true, true)))), true));
    var var_2 = false;
    return Struct_1(~(~(~vec2<u32>(global0.a.x, 0u))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = -1000f;
    var var_2 = ~(~_wgslsmith_sub_vec2_u32(select(arg_0.a, vec2<u32>(arg_0.a.x, global0.a.x), vec2<bool>(true, var_0)), arg_0.a)) >> (_wgslsmith_mod_vec2_u32(~(_wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(40014u, 0u)) << (vec2<u32>(global0.a.x, arg_0.a.x) % vec2<u32>(32u))), arg_0.a) % vec2<u32>(32u));
    var var_3 = 26453i;
    var var_4 = func_2();
    return func_2();
}

fn func_1(arg_0: vec2<bool>) -> vec4<f32> {
    global0 = func_3(func_2(), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1035f, -568f, -835f, 516f) - vec4<f32>(683f, 1000f, -1058f, 119f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(702f, 317f, -195f, -837f))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(911f, -991f, -1000f, 976f) * vec4<f32>(-1459f, -1263f, 1471f, -719f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(3035f, 494f, -907f, -1089f))))));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1916f * _wgslsmith_f_op_f32(1000f + -681f)), 735f);
    var var_1 = !select(!vec3<bool>(all(vec3<bool>(true, arg_0.x, false)), all(vec3<bool>(false, arg_0.x, false)), arg_0.x), vec3<bool>(false, false, true), !vec3<bool>(all(vec3<bool>(true, false, true)), arg_0.x, any(vec2<bool>(true, arg_0.x))));
    var_1 = !vec3<bool>(all(!vec2<bool>(var_1.x, true)) || !(arg_0.x == false), true, any(arg_0));
    global0 = func_3(Struct_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(41419u, global0.a.x, 1706u, 0u), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 0u)), global0.a.x & 36101u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(932f, var_0, -365f, 1303f)) - vec4<f32>(989f, 533f, _wgslsmith_f_op_f32(trunc(var_0)), 382f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f) + -1530f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1410f, 342f, var_0, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(918f))))))));
}

