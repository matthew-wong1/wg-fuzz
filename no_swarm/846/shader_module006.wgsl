struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = 1795f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-global0.a)), global0.a))));
    var_1 = _wgslsmith_f_op_f32(-arg_1.a);
    let var_2 = reverseBits(-1i) << ((arg_0.x | 39932u) % 32u);
    var_1 = _wgslsmith_f_op_f32(-arg_1.a);
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = !vec2<bool>(!(countOneBits(1u) > _wgslsmith_div_u32(4294967295u, u_input.b)), false);
    var var_1 = true;
    var_1 = all(vec3<bool>(true, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.a, global0.a), _wgslsmith_f_op_f32(abs(900f)))) > _wgslsmith_f_op_f32(global0.a * 947f)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    global0 = Struct_1(411f);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    global0 = var_0;
    global0 = func_1(~(select(abs(vec2<u32>(18045u, u_input.a)), vec2<u32>(66980u, u_input.a) | vec2<u32>(u_input.b, u_input.a), select(vec2<bool>(false, false), vec2<bool>(true, true), false)) << (max(firstLeadingBit(vec2<u32>(1u, u_input.a)), ~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u))), var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -384f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a)))))));
    let var_1 = all(!vec3<bool>(all(vec3<bool>(true, true, true)), true, func_2(func_1(vec2<u32>(u_input.a, 1u), var_0, -1616f))));
    var var_2 = Struct_2(-1i, 532f, func_1(vec2<u32>(25814u, ~abs(53068u)), Struct_1(185f), 978f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(775f, 1805f, -937f, 332f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, global0.a, -548f), vec4<f32>(-1598f, global0.a, 735f, -741f), vec4<bool>(var_1, false, true, var_1))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, 1000f)), _wgslsmith_f_op_f32(global0.a * var_0.a), _wgslsmith_f_op_f32(1000f * global0.a), -611f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, var_0.a, var_0.a, 323f) - vec4<f32>(-2857f, 1592f, -660f, global0.a))))), var_0);
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -509f))), var_0, vec4<f32>(global0.a, var_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.d.x)) - _wgslsmith_f_op_f32(f32(-1f) * -567f)))), var_2.d.x), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.a, ~(~(~u_input.b)), 0u << (_wgslsmith_div_u32(0u, ~u_input.a) % 32u)));
}

