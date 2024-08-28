struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2441f;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    global1 = arg_0.a;
    let var_0 = vec3<i32>(2147483647i, min(firstLeadingBit(0i), firstLeadingBit(u_input.b)), ~countOneBits(~1i));
    let var_1 = 0i;
    return arg_0.b;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global1.a), -1000f), 0u)));
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1182f);
    let var_3 = var_0;
    let var_4 = any(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), false), vec2<bool>(true, true), true));
    return Struct_1(-686f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = select(!vec3<bool>(false, _wgslsmith_f_op_f32(-global1.a) >= _wgslsmith_f_op_f32(var_0.a * arg_0.a), true), select(vec3<bool>(true != select(true, true, false), true, all(vec3<bool>(true, true, true))), !vec3<bool>(true, any(vec2<bool>(false, false)), all(vec3<bool>(true, false, false))), !vec3<bool>(true, all(vec2<bool>(false, false)), true)), any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), true)) | (all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))) && false));
    let var_2 = -countOneBits(abs(arg_1));
    var var_3 = var_1.x;
    var var_4 = vec2<bool>(true & all(vec4<bool>(false, select(false, var_1.x, true), var_1.x, true)), all(vec3<bool>(!var_1.x, true, !all(vec2<bool>(true, false)))));
    return Struct_2(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(109f), ~(~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, 0i)), max(vec2<i32>(1i, u_input.b), vec2<i32>(-39584i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(29484i, -3955i), vec2<i32>(u_input.b, u_input.b)))), 14949i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + global1.a);
    var var_1 = 1223f;
    var var_2 = !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(global1.a)));
    global0 = _wgslsmith_f_op_f32(ceil(132f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -536f, _wgslsmith_f_op_f32(global1.a * -2426f), 317f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, -709f, global1.a, -824f))))))), _wgslsmith_f_op_f32(f32(-1f) * -550f), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(574f, 296f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(518f - 1528f) + -223f)), var_0.b));
}

