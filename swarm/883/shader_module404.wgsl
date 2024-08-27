struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-1346f, -170f, 490f, -1641f), -1771f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = 356f;
    var var_1 = vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_div_u32(min(1u, ~(~global0.a.x)), _wgslsmith_add_u32(abs(0u), 63714u) << (global0.a.x % 32u)), 11245u);
    var var_2 = _wgslsmith_div_u32(~reverseBits(u_input.a), 47250u << (~arg_0.a.x % 32u));
    let var_3 = arg_0;
    return true;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = func_3(Struct_1(vec2<u32>(abs(u_input.a), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), global0.c));
    var var_1 = 8516u;
    let var_2 = -232f;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 44835u, 31563u | u_input.a) >> (~vec4<u32>(6844u, u_input.a, u_input.a, 15918u) % vec4<u32>(32u)), ~vec4<u32>(58117u, 20434u, global0.a.x, u_input.a) | reverseBits(vec4<u32>(1u, 1u, 4294967295u, global0.a.x))), 15537u);
    global0 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(var_3), ~0u)), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global0.c - 475f), var_2, _wgslsmith_f_op_f32(var_2 + var_2), global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f - _wgslsmith_f_op_f32(ceil(var_2))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2)) + -378f));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(-vec4<i32>(-1i, -41986i, -65895i, -13376i))), -318f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(global0.b.x))))));
    global0 = Struct_1(global0.a << (vec2<u32>(10009u, u_input.a | 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -172f, arg_1) - global0.b)))), arg_1);
    var var_1 = !select(select(!(!vec4<bool>(arg_0, true, true, arg_2.x)), !(!vec4<bool>(true, false, arg_0, arg_2.x)), vec4<bool>(true, arg_0, true, !arg_2.x)), select(select(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_2.x, false, arg_2.x, false), arg_2.x), select(vec4<bool>(arg_0, false, arg_0, arg_2.x), vec4<bool>(true, arg_0, true, arg_2.x), true), select(vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(true, true, arg_2.x, arg_2.x), true)), select(select(vec4<bool>(true, true, arg_2.x, true), vec4<bool>(arg_0, true, arg_0, arg_2.x), arg_0), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_2.x, true, arg_0, false), vec4<bool>(true, false, false, arg_0)), !arg_0), arg_0), arg_0);
    let var_2 = !(!func_3(Struct_1(_wgslsmith_mult_vec2_u32(global0.a, global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, arg_1, arg_1, arg_1)), _wgslsmith_f_op_f32(-arg_1))));
    var_1 = !(!(!select(vec4<bool>(var_1.x, true, arg_2.x, arg_2.x), !vec4<bool>(var_1.x, true, true, var_1.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, arg_2.x), arg_0))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1032f)) + _wgslsmith_f_op_f32(-global0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~(~global0.a), vec4<f32>(_wgslsmith_f_op_f32(func_1(true, -1266f, select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), false))), global0.c, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c)))))), -1428f);
    global0 = Struct_1(~global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.x, global0.b.x, 1172f, -112f))), _wgslsmith_f_op_vec4_f32(-global0.b)) - global0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.x - 104f), _wgslsmith_f_op_f32(select(global0.c, -1107f, false)))))));
    var var_0 = Struct_1(~global0.a, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-536f + global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -894f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f))), 1120f, _wgslsmith_f_op_f32(-global0.b.x)), global0.c);
    var var_1 = global0.a;
    let var_2 = ~(~(~max(min(vec4<u32>(u_input.a, 37732u, u_input.a, 1u), vec4<u32>(var_0.a.x, 63044u, 1490u, u_input.a)), ~vec4<u32>(u_input.a, 4891u, var_0.a.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, global0.c);
}

