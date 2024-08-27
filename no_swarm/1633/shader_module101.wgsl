struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, _wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a, global0.a))))))));
    var var_1 = true;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)));
    var_1 = true;
    let var_2 = Struct_1(var_0.x);
    return u_input.a;
}

fn func_3(arg_0: u32, arg_1: u32) -> Struct_1 {
    global0 = Struct_1(global0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(-1000f * global0.a));
    global0 = Struct_1(186f);
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-393f, global0.a) + global0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a + -408f))), 262f))));
    global0 = Struct_1(-742f);
    return Struct_1(_wgslsmith_f_op_f32(floor(global0.a)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global0 = func_3(func_2(), reverseBits(28333u));
    var var_0 = Struct_1(arg_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)))))));
    var var_1 = _wgslsmith_div_u32(u_input.a, 0u);
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.a, -164f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1010f))))));
    let var_1 = !(!(!vec4<bool>(u_input.a < u_input.a, false, true, true)));
    global0 = Struct_1(var_0.a);
    var_0 = func_1(Struct_1(-2438f), !(!(!vec3<bool>(var_1.x, var_1.x, var_1.x))), Struct_1(_wgslsmith_f_op_f32(-690f * var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)), 864f))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 1u, u_input.a, u_input.a))), ~vec4<u32>(abs(0u), abs(65216u), firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.a, 4294967295u))));
}

