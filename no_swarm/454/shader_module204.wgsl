struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -(u_input.a.zz | u_input.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1180f))))));
    global0 = -195f;
    global0 = -1072f;
    global0 = -249f;
    return arg_0;
}

fn func_3() -> f32 {
    let var_0 = vec3<f32>(975f, -1088f, 1f);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-676f * _wgslsmith_f_op_f32(-var_0.x)), 1168f);
    let var_1 = !all(!vec3<bool>(select(false, false, false), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false))));
    global0 = _wgslsmith_f_op_f32(var_0.x - -450f);
    let var_2 = func_2(func_2(Struct_1(!(var_1 & true), vec3<u32>(0u, u_input.e, ~u_input.b))));
    return _wgslsmith_f_op_f32(ceil(190f));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(false, min(select(vec3<u32>(4294967295u, u_input.b, 33750u), abs(vec3<u32>(4294967295u, 4294967295u, 41568u)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), select(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(17634u, u_input.e, 4294967295u), true) << (~vec3<u32>(u_input.b, 22564u, 60898u) % vec3<u32>(32u)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1341f * -678f), _wgslsmith_f_op_f32(-1000f + -876f)))))));
    let var_1 = 4294967295u;
    global0 = -775f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(820f)) + _wgslsmith_f_op_f32(func_3()))));
    return func_2(Struct_1(all(vec4<bool>(var_0.a, -1i > u_input.c.x, !var_0.a, false)), abs(~var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f))), -586f);
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
}

