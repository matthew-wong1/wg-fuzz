struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = u_input.d.x;
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(-815f - _wgslsmith_f_op_f32(step(207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1771f, -748f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1740f, -1006f)), -445f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f + -592f)))));
    let var_3 = vec3<bool>(any(vec3<bool>(true == (u_input.b < u_input.c.x), true, true)), all(vec2<bool>(true, true)), !(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)) || true));
    return vec3<bool>(all(vec2<bool>(true, var_3.x)), any(!select(vec4<bool>(false, false, true, var_3.x), select(vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(var_3.x, var_3.x, var_3.x, false), false), all(vec4<bool>(false, var_3.x, true, true)))), true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(select(func_3(), vec3<bool>(true, true, true), true));
    return Struct_1(!any(select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, true, var_0.a.x), !var_0.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_5) -> bool {
    global0 = 1i;
    var var_0 = arg_1;
    let var_1 = vec4<bool>(true, all(arg_0), false, arg_0.x);
    var var_2 = vec2<bool>(arg_0.x, true);
    var var_3 = func_2();
    return u_input.d.x == ~(~(-44181i) >> (var_0.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-179f)), -1199f)))))));
    global2 = -196f;
    let var_0 = vec2<bool>(any(vec2<bool>(func_1(vec4<bool>(false, false, false, true), Struct_5(u_input.c.x, vec3<i32>(-21162i, u_input.d.x, 1i))), true)), _wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(-350f * _wgslsmith_f_op_f32(716f + 1207f))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-329f, -450f)) - _wgslsmith_f_op_f32(max(598f, -709f))))));
    let var_1 = ~u_input.c.x;
    global0 = u_input.d.x;
    var var_2 = -274f;
    let var_3 = min(0u, 28172u);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(2831f)), _wgslsmith_f_op_f32(821f * -473f))), 189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-493f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(_wgslsmith_div_f32(710f, _wgslsmith_f_op_f32(-545f + -1000f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, -1656f, vec4<u32>(~(~var_3), _wgslsmith_sub_u32(~40376u, u_input.a), ~17684u, 1u), select(vec4<i32>(_wgslsmith_add_i32(-u_input.d.x, u_input.d.x ^ u_input.d.x), -1i, -(~(-25622i)), -1i), abs(~vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x)), var_0.x));
}

