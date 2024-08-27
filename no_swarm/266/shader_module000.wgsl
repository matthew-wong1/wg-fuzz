struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.c.zw, abs(u_input.c.yx));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + -1580f) + _wgslsmith_div_f32(-1630f, 1140f));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    global0 = arg_0.a;
    global0 = arg_0.a;
    let var_0 = 364u;
    return arg_0.a;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> f32 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.c, _wgslsmith_clamp_i32(-arg_3.a.c, -4667i, -arg_3.a.c)), global0.c >> (4294967295u % 32u));
    var var_1 = ~(~(~(~(~u_input.c))));
    let var_2 = arg_3.c;
    var var_3 = vec4<bool>(arg_2, false, false, arg_3.b);
    var var_4 = abs(~1u);
    return _wgslsmith_f_op_f32(arg_3.a.d.x - -1039f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(473f, global0.b, -9929i, vec3<f32>(global0.d.x, global0.d.x, global0.d.x)), global0.b.x, global0.d.x, true, global0.b))))), _wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -412f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global0.d.x, vec3<bool>(false, true, global0.b.x), 2147483647i, global0.d), false, 1000f, false, global0.b))), global0.d.x))), global0.d.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1(Struct_2(func_2(Struct_2(Struct_1(var_0.x, global0.b, global0.c, var_0), global0.b.x, var_0.x, global0.b.x, global0.b), false, vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), Struct_2(Struct_1(691f, global0.b, u_input.a, var_0), global0.b.x, 2126f, true, global0.b)), true, -358f, false, global0.b))), !vec3<bool>(all(global0.b.zy), any(global0.b), global0.b.x), 0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), global0.a, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(1000f)), u_input.c, global0.c < global0.c, Struct_2(Struct_1(var_0.x, global0.b, global0.c, vec3<f32>(var_0.x, 237f, 2139f)), global0.b.x, global0.d.x, global0.b.x, vec3<bool>(global0.b.x, global0.b.x, false)))))), !all(vec4<bool>(!global0.b.x, true & global0.b.x, !global0.b.x, false != global0.b.x)), _wgslsmith_f_op_f32(ceil(global0.a)), !func_2(Struct_2(Struct_1(var_0.x, global0.b, global0.c, vec3<f32>(var_0.x, var_0.x, -2570f)), any(vec4<bool>(false, global0.b.x, global0.b.x, true)), _wgslsmith_f_op_f32(-var_0.x), any(vec4<bool>(true, global0.b.x, global0.b.x, true)), !global0.b), true, !select(vec4<bool>(global0.b.x, true, true, global0.b.x), vec4<bool>(global0.b.x, true, false, true), false), Struct_2(Struct_1(-469f, global0.b, 0i, var_0), any(vec4<bool>(true, true, false, global0.b.x)), _wgslsmith_f_op_f32(global0.d.x + -274f), false, global0.b)).b.x, !select(global0.b, func_2(Struct_2(Struct_1(global0.d.x, global0.b, global0.c, vec3<f32>(-995f, 1073f, 1648f)), true, global0.a, false, global0.b), global0.b.x, !vec4<bool>(false, true, global0.b.x, global0.b.x), Struct_2(Struct_1(global0.d.x, vec3<bool>(false, false, false), u_input.a, vec3<f32>(-767f, 400f, -132f)), global0.b.x, var_0.x, false, global0.b)).b, vec3<bool>(false == global0.b.x, !global0.b.x, global0.b.x)));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), 1041f), var_1.a.b, 0i, _wgslsmith_f_op_vec3_f32(min(func_2(Struct_2(var_1.a, all(var_1.e.zx), global0.d.x, var_1.a.b.x, global0.b), any(!vec3<bool>(true, false, global0.b.x)), vec4<bool>(func_2(Struct_2(Struct_1(-1000f, vec3<bool>(global0.b.x, false, true), global0.c, var_0), true, 750f, false, global0.b), true, vec4<bool>(global0.b.x, false, true, true), Struct_2(Struct_1(190f, vec3<bool>(global0.b.x, false, global0.b.x), 30066i, var_0), false, var_1.a.a, false, vec3<bool>(var_1.e.x, false, true))).b.x, any(var_1.a.b.zz), false, global0.b.x), Struct_2(Struct_1(-535f, global0.b, -1i, var_0), !global0.b.x, 673f, true, !vec3<bool>(true, global0.b.x, var_1.d))).d, var_1.a.d)));
    let var_2 = !(u_input.a >= u_input.a);
    var_1 = Struct_2(func_2(Struct_2(var_1.a, var_2, _wgslsmith_f_op_f32(ceil(-575f)), true, select(vec3<bool>(global0.b.x, var_2, var_2), var_1.e, global0.b)), true, !select(!vec4<bool>(global0.b.x, global0.b.x, var_1.e.x, false), vec4<bool>(true, false, global0.b.x, false), vec4<bool>(var_2, var_1.b, global0.b.x, var_1.d)), Struct_2(var_1.a, true || var_1.e.x, 991f, func_2(Struct_2(var_1.a, var_2, -484f, true, vec3<bool>(global0.b.x, global0.b.x, false)), var_2, select(vec4<bool>(false, false, global0.b.x, var_2), vec4<bool>(global0.b.x, false, true, var_2), var_1.d), Struct_2(Struct_1(533f, global0.b, var_1.a.c, global0.d), var_2, global0.a, true, vec3<bool>(var_2, false, true))).b.x, !func_2(Struct_2(var_1.a, var_2, -758f, var_1.e.x, vec3<bool>(global0.b.x, var_2, false)), false, vec4<bool>(true, var_2, var_1.d, true), Struct_2(var_1.a, true, var_1.a.a, false, global0.b)).b)), global0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-545f * -1000f))), global0.b.x, select(vec3<bool>(false, all(!var_1.e.xz), true), vec3<bool>(func_2(Struct_2(Struct_1(2168f, vec3<bool>(true, false, true), u_input.a, vec3<f32>(1000f, var_0.x, -308f)), var_1.d, 1627f, false, vec3<bool>(false, true, false)), true, select(vec4<bool>(true, global0.b.x, var_2, false), vec4<bool>(var_1.d, false, false, global0.b.x), vec4<bool>(var_2, true, true, var_2)), Struct_2(var_1.a, var_2, -691f, false, global0.b)).b.x, !var_1.e.x && true, false), !select(vec3<bool>(var_1.a.b.x, global0.b.x, false), !vec3<bool>(true, false, global0.b.x), global0.b)));
    var var_3 = Struct_1(var_0.x, func_2(Struct_2(func_2(Struct_2(Struct_1(-1088f, vec3<bool>(true, var_1.a.b.x, var_2), -26972i, var_0), var_1.d, -954f, global0.b.x, var_1.e), var_2, !vec4<bool>(global0.b.x, global0.b.x, false, true), Struct_2(Struct_1(global0.a, vec3<bool>(var_2, false, false), u_input.b.x, vec3<f32>(var_1.c, var_1.a.a, -675f)), var_1.b, var_1.c, false, global0.b)), all(vec2<bool>(global0.b.x, true)) | !var_1.a.b.x, _wgslsmith_div_f32(-699f, 2026f), var_2, var_1.e), !(!var_1.e.x), vec4<bool>(any(!vec4<bool>(global0.b.x, var_2, var_2, var_1.e.x)), false, true, 0i < ~u_input.a), Struct_2(var_1.a, var_2, -215f, global0.b.x, func_2(Struct_2(var_1.a, var_1.d, global0.d.x, false, var_1.a.b), func_2(Struct_2(Struct_1(193f, global0.b, -2147483647i, global0.d), global0.b.x, 1000f, var_2, vec3<bool>(var_1.a.b.x, global0.b.x, var_2)), global0.b.x, vec4<bool>(var_2, var_1.b, true, true), Struct_2(Struct_1(1844f, vec3<bool>(var_2, false, var_1.a.b.x), 0i, vec3<f32>(324f, var_0.x, 196f)), false, var_0.x, global0.b.x, vec3<bool>(true, true, var_1.e.x))).b.x, select(vec4<bool>(var_2, var_1.b, false, var_1.b), vec4<bool>(global0.b.x, true, false, true), vec4<bool>(false, var_1.b, false, var_1.e.x)), Struct_2(Struct_1(var_0.x, vec3<bool>(false, true, false), -35175i, vec3<f32>(global0.a, var_0.x, -2071f)), true, var_0.x, true, vec3<bool>(false, global0.b.x, true))).b)).b, _wgslsmith_add_i32(u_input.a, -(~(-43056i) >> (_wgslsmith_sub_u32(u_input.d, u_input.c.x) % 32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.d.x + -2757f), -344f, global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, var_0.x, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wzw, _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, var_3.d.x, var_0.x, -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, var_1.a.d.x, var_3.a, global0.a))) + vec4<f32>(global0.d.x, 663f, var_3.d.x, var_0.x)))), _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(var_3.d.x - var_3.d.x)), ~(abs(~u_input.c) & firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 47766u, u_input.d))));
}

