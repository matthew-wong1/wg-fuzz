struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = -389f;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(630f * global0.x), _wgslsmith_f_op_f32(-global0.x))) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 1545f) - _wgslsmith_f_op_f32(round(global0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(997f)) + _wgslsmith_f_op_f32(1000f - -2527f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(928f, global0.x)) * _wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 243f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)))) - 942f));
    let var_3 = !select(true, select(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), -216f >= global0.x, true), all(vec2<bool>(false, any(vec4<bool>(true, false, false, false)))));
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(select(712f, 376f, var_3))))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * var_1.a.x)));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = select(vec3<bool>(!(true && all(vec2<bool>(true, false))), !select(66853u > u_input.b, true, func_3()), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), true))), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true), func_3());
    let var_1 = all(vec3<bool>(true, select(global0.x != global0.x, !var_0.x, true) && all(var_0), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -1093f)) > -132f));
    let var_2 = -(~firstTrailingBit(select(~vec4<i32>(u_input.a.x, u_input.a.x, arg_0.x, 28818i), vec4<i32>(u_input.a.x, 4209i, u_input.c, arg_0.x) << (vec4<u32>(0u, u_input.b, u_input.b, u_input.d.x) % vec4<u32>(32u)), vec4<bool>(false, var_0.x, var_0.x, true))));
    let var_3 = !all(vec4<bool>(u_input.d.x <= _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), var_1, var_0.x, false));
    var var_4 = !(!vec4<bool>(all(vec3<bool>(var_1, var_3, var_1)), all(vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_f_op_f32(floor(global0.x)) > -2863f, true));
    return !(!(!var_0.xz));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), !func_2(u_input.a)));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(361f * 766f), _wgslsmith_f_op_f32(1190f * global0.x)))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * -2150f), var_0.x)), -607f)), global0.x), true));
    let var_1 = -(abs(_wgslsmith_div_i32(1i, arg_0)) >> (13102u % 32u));
    let var_2 = 1598f;
    let var_3 = var_2;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3, -1073f, var_2), vec3<f32>(1172f, 296f, -565f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(30064i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, global0.x, -472f), var_0.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 319f, 445f) + var_0.a))));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = abs(_wgslsmith_add_vec3_u32(min(max(u_input.d << (vec3<u32>(u_input.b, 4294967295u, u_input.d.x) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, 4294967295u, 24957u)), u_input.d), ~vec3<u32>(abs(u_input.b), 40481u, u_input.b)));
    var_0 = func_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(41961i, ~(~(-2147483647i))), -43855i ^ u_input.c));
    var var_4 = select(select(select(select(!vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, true, true), !vec3<bool>(var_2.x, false, var_2.x)), !(!vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(true, all(vec3<bool>(var_2.x, var_2.x, true)), all(vec4<bool>(var_2.x, var_2.x, false, true)))), select(select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, false, false), vec3<bool>(true, var_2.x, var_2.x)), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, var_2.x, var_2.x), var_2.x), var_2.x), select(select(vec3<bool>(var_2.x, false, false), vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false)), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, false, false)), all(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), var_2.x))), !(false & (u_input.a.x >= 1i))), vec3<bool>(var_2.x, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))) <= _wgslsmith_f_op_f32(select(-318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - -118f) * _wgslsmith_f_op_f32(var_0.a.x + -309f)), true || var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~vec3<u32>(0u, 1u, u_input.b), reverseBits(u_input.a), u_input.d);
}

