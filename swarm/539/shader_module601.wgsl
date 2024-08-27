struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec2<bool>(true, false);
    let var_1 = Struct_1(vec4<f32>(-338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1270f, _wgslsmith_f_op_f32(-1052f + 420f)))), -684f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(412f * -1422f), _wgslsmith_f_op_f32(f32(-1f) * -584f)), -604f))), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, false, var_0.x, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1124f + _wgslsmith_f_op_f32(-1082f * -404f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(276f)) + -398f)), _wgslsmith_f_op_f32(f32(-1f) * -542f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f)));
    var var_2 = -20988i;
    var_2 = 38743i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 370f, 1630f, -2928f)) - var_1.c))), var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.c), var_1.a, !var_1.b)))), _wgslsmith_f_op_f32(1000f * var_1.a.x));
    return var_1.b.ywy;
}

fn func_2() -> vec4<bool> {
    let var_0 = all(func_3());
    return !(!(!select(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, true, false), true), vec4<bool>(false, false, var_0, true), u_input.b > u_input.d.x)));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, arg_0.x, -1803f, arg_0.x)), func_2())))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1445f - arg_0.x), -202f)))));
    let var_1 = var_0.d < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 527f) - _wgslsmith_f_op_f32(-943f * arg_0.x)))));
    return _wgslsmith_f_op_f32(-381f + 906f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, 207f, 297f)) + vec3<f32>(-222f, _wgslsmith_f_op_f32(func_1(vec4<f32>(1409f, 289f, -408f, -1008f))), -954f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1512f * -125f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(458f, 2538f)), _wgslsmith_f_op_f32(f32(-1f) * -1274f), 639f, var_0.x))), select(!vec4<bool>(true, true, any(vec2<bool>(false, true)), true), vec4<bool>(_wgslsmith_div_u32(u_input.b, u_input.a.x) > select(0u, u_input.a.x, false), any(func_3().xy), !any(vec2<bool>(true, true)), false), select(vec4<bool>(true, true, true, true), func_2(), true)), vec4<f32>(_wgslsmith_f_op_f32(abs(1116f)), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), var_0.x), var_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.c.yyw, var_1.a.xxw, !var_1.b.xyz)) - vec3<f32>(-146f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) + -2670f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(~_wgslsmith_add_u32(13801u, u_input.a.x), ~(~u_input.d.x))));
}

