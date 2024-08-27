struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
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

var<private> global0: vec2<f32> = vec2<f32>(-1083f, -2311f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1f));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -271f), global0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1160f, global0.x), vec2<f32>(global0.x, global0.x))))));
    let var_0 = Struct_1(u_input.c.yz);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(-1093f, global0.x), any(vec4<bool>(false, false, false, true))))))));
    return select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, false))), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), select(vec2<bool>(global0.x > _wgslsmith_f_op_f32(trunc(global0.x)), false), vec2<bool>(true, true), !(!(global0.x == global0.x))), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x));
    var var_0 = arg_0;
    let var_1 = arg_1.c;
    let var_2 = true;
    let var_3 = any(!select(select(func_3(), vec2<bool>(arg_1.b, var_2), !vec2<bool>(arg_1.b, true)), vec2<bool>(true, true), !vec2<bool>(true, var_2)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1093f, global0.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + global0.x)))))));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f + global0.x)), global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.c.zz), Struct_2(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x)), false, Struct_1(vec2<u32>(1u, 4294967295u)), 4294967295u))), _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1000f) + vec2<f32>(global0.x, -1231f)))), all(vec4<bool>(true, true, true, true)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1016f, global0.x), global0.x)));
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2289f, global0.x))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-global0.x)))))));
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-58525i | u_input.a, 1378i), vec2<i32>(-14441i, abs(-(~u_input.d.x))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -1357f), vec2<f32>(-811f, -1904f), (u_input.c.x < 0u) | true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1097f), vec2<f32>(global0.x, 812f), true)), vec2<f32>(-315f, -331f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    return Struct_1(vec2<u32>((u_input.c.x << (u_input.c.x % 32u)) >> (34259u % 32u), u_input.c.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = !(!(!(!(!vec3<bool>(arg_1.b, arg_1.b, false)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))));
    var var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.c.wy), Struct_2(func_1(), true, arg_1.c, _wgslsmith_add_u32(65937u, u_input.c.x))))), -1307f, _wgslsmith_f_op_f32(-1f));
    let var_3 = true;
    return Struct_2(func_1(), !var_0.x, func_1(), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true);
    let var_1 = func_4(~1u, Struct_2(Struct_1(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(21305u, 29793u, u_input.c.x, 0u)))), true, func_1(), ~(0u >> (u_input.c.x % 32u))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x + 921f))), global0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1606f, global0.x)))));
    let var_2 = 35475i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) - -1292f), false))));
}

