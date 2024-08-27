struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1297f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global0 = 846f;
    let var_0 = 1000f;
    var var_1 = var_0;
    let var_2 = Struct_1(select(vec2<bool>(true, true), !(!vec2<bool>(arg_0, arg_0)), vec2<bool>(select(!arg_0, true, arg_0), any(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, true, arg_0, true))))));
    var var_3 = vec2<i32>(max(select(u_input.a, _wgslsmith_add_i32(49757i, 6735i), arg_0), -select(u_input.a, u_input.a, false)) & u_input.a, abs(_wgslsmith_add_i32(u_input.a, ~(-2147483647i))));
    return select(select(!vec2<bool>(any(vec3<bool>(true, false, false)), false), vec2<bool>(false, true), false), !select(var_2.a, var_2.a, !all(vec3<bool>(false, true, arg_0))), select(!(!var_2.a), vec2<bool>(true, true), true));
}

fn func_2() -> Struct_1 {
    let var_0 = select(true, true, !(!all(vec2<bool>(false, true))));
    var var_1 = !(!(!vec3<bool>(false, var_0, any(vec2<bool>(var_0, var_0)))));
    let var_2 = Struct_1(func_3(true));
    var var_3 = Struct_1(vec2<bool>((1u << (select(0u, 3592u, var_1.x) % 32u)) > _wgslsmith_sub_u32(0u & u_input.b, u_input.b), true));
    var var_4 = true;
    return Struct_1(func_3(any(!select(vec4<bool>(false, var_3.a.x, var_3.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_0, true, var_0), vec4<bool>(var_3.a.x, false, false, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_3(false).x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -327f);
    let var_2 = ~(~vec3<i32>(-u_input.a, 32934i, -2147483647i));
    var var_3 = Struct_1(vec2<bool>(arg_0.a.x, func_2().a.x));
    return Struct_1(var_3.a);
}

fn func_1() -> f32 {
    var var_0 = 0u;
    let var_1 = -1i;
    let var_2 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1809f, 190f, -1609f))))), ~_wgslsmith_mod_u32(~0u, u_input.b) & ~u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-242f - 467f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1224f)) + _wgslsmith_f_op_f32(f32(-1f) * -1303f)) + -569f))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(127f))), _wgslsmith_f_op_f32(f32(-1f) * -1083f)));
    var var_3 = !var_2.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1019f - -150f)))), _wgslsmith_f_op_f32(f32(-1f) * -715f), false)) * _wgslsmith_f_op_f32(max(211f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(724f * 1307f), 813f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-788f)) * -351f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2317f))));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) - _wgslsmith_f_op_f32(floor(-990f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1004f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(618f, -1000f)), _wgslsmith_f_op_f32(max(-1046f, _wgslsmith_f_op_f32(f32(-1f) * -1283f))))), -352f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-560f, _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1983f))));
    global0 = _wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(trunc(-362f)));
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1180f, -447f, var_0.x), vec3<f32>(-960f, var_0.x, var_0.x), var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(227f, -1000f, -427f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 421f, var_0.x)))))), 2147483647i, 30271u, ~vec3<u32>(1u >> (u_input.b % 32u), ~15833u, u_input.b | u_input.b) ^ ~(~select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 4294967295u, u_input.b), vec3<bool>(true, var_1, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(func_1())), vec4<f32>(var_0.x, -2528f, var_0.x, _wgslsmith_div_f32(1124f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1392f, var_0.x, -435f), vec4<f32>(var_0.x, var_0.x, -2329f, var_0.x))))));
}

