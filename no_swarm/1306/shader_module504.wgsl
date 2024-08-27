struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> i32 {
    global0 = false && (u_input.c >= (0i & (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, 2438i, 14384i), vec4<i32>(61758i, u_input.c, 15502i, 2147483647i)) & u_input.d)));
    let var_0 = true;
    global0 = false;
    return -36157i;
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> bool {
    global0 = all(vec4<bool>(true, all(vec3<bool>(arg_1.a.a, false, true)), arg_1.a.a, _wgslsmith_f_op_f32(arg_1.a.b * _wgslsmith_div_f32(arg_0, -460f)) <= 289f));
    global0 = any(select(!select(!vec3<bool>(arg_1.a.a, true, true), vec3<bool>(true, true, true), any(vec4<bool>(arg_1.a.a, false, arg_1.a.a, true))), select(vec3<bool>(false, true, true || arg_1.a.a), !select(vec3<bool>(false, true, arg_1.a.a), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_1.a.a)), vec3<bool>(true, true, true)), true));
    global0 = !all(vec4<bool>(all(vec4<bool>(arg_1.a.a, false, arg_1.a.a, arg_1.a.a)), all(vec2<bool>(true, true)), any(!vec4<bool>(true, arg_1.a.a, arg_1.a.a, true)), arg_1.a.a));
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)));
    return arg_1.a.a;
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    let var_0 = func_2(-865f, Struct_4(arg_0.a));
    global0 = true;
    var var_1 = ~(-6645i);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1f), arg_0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -377f))), _wgslsmith_div_f32(arg_0.a.b, 832f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(arg_0.a.b - arg_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(-arg_0.a.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1514f * -2119f), -641f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b * 1797f), -234f, _wgslsmith_f_op_f32(f32(-1f) * -1539f), _wgslsmith_f_op_f32(580f - arg_0.a.b)), vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(-arg_0.a.b), arg_0.a.b), !(!vec4<bool>(false, arg_0.a.a, true, arg_0.a.a))))), (func_3(arg_0.a.b, Struct_4(arg_0.a)) || true) == false));
    var var_3 = select(!select(!(!vec2<bool>(arg_0.a.a, arg_0.a.a)), select(select(vec2<bool>(false, false), vec2<bool>(arg_0.a.a, arg_0.a.a), false), vec2<bool>(true, arg_0.a.a), func_3(-664f, Struct_4(Struct_1(false, arg_0.a.b)))), !(!vec2<bool>(true, arg_0.a.a))), select(!(!vec2<bool>(arg_0.a.a, arg_0.a.a)), select(select(vec2<bool>(arg_0.a.a, false), !vec2<bool>(true, arg_0.a.a), false), !select(vec2<bool>(arg_0.a.a, false), vec2<bool>(true, arg_0.a.a), vec2<bool>(true, true)), firstTrailingBit(22856u) == 0u), true), !vec2<bool>(arg_0.a.a | all(vec2<bool>(arg_0.a.a, arg_0.a.a)), false));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(1430f)) < _wgslsmith_f_op_f32(1592f + -759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(980f))))), ~u_input.b.x);
    let var_1 = ~(~vec2<u32>(u_input.b.x, ~u_input.b.x));
    var var_2 = Struct_3(any(vec2<bool>(func_3(_wgslsmith_f_op_f32(-180f - var_0.a.b), func_1(Struct_4(Struct_1(true, var_0.a.b)), 23965u)), false)), !vec4<bool>(var_0.a.a, true, var_0.a.a, true));
    global0 = true;
    global0 = ~u_input.d < ~(-4440i);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(~(-2147483647i), u_input.d, 2147483647i >> (u_input.b.x % 32u)), vec3<i32>(u_input.d, u_input.d, u_input.d), !select(!var_2.b.wyw, !var_2.b.yxy, false)));
}

