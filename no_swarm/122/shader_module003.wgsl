struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(962f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3125f), _wgslsmith_f_op_f32(round(arg_3.a))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.a)) * -224f)) - global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1982f)))) - _wgslsmith_f_op_f32(trunc(arg_3.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, -1996f), -143f, _wgslsmith_f_op_f32(floor(2048f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 475f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1515f, global0.a, arg_0.a))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1512f, 1167f), vec3<f32>(-665f, -1165f, global0.a)))))));
    global0 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a)), global0.a));
    return u_input.b.x < _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~u_input.a.x), vec2<i32>(~(~2147483647i), select(1i, -2147483647i, arg_3.b.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(-286f, vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))) != _wgslsmith_f_op_f32(-1000f * arg_1), global0.b.x, global0.b.x, true));
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), vec4<bool>(!var_0.b.x, (func_3(Struct_1(global0.a, var_0.b), var_0.b.x, true, var_0) | true) && all(vec2<bool>(false, global0.b.x)), global0.b.x, true));
    global0 = Struct_1(var_0.a, vec4<bool>(false, !var_0.b.x & true, true, any(select(select(vec4<bool>(false, false, false, var_0.b.x), vec4<bool>(global0.b.x, false, true, true), var_0.b.x), !vec4<bool>(var_0.b.x, global0.b.x, var_0.b.x, true), !vec4<bool>(true, false, true, global0.b.x)))));
    global0 = var_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_0.x)), global0.a))), select(global0.b, var_0.b, var_0.b));
    return Struct_1(_wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(-376f - 417f)), arg_0.x))), select(select(var_0.b, var_0.b, var_0.b.x & global0.b.x), vec4<bool>(all(global0.b.zzw), false, false, !(false | global0.b.x)), var_0.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(343f, vec4<bool>(select(global0.b.x, false, global0.b.x), true, !arg_1.x, ((global0.b.x && arg_1.x) || !arg_1.x) != all(vec4<bool>(arg_1.x, false, true, true))));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(228f, global0.a, 317f, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 131f, -551f) - vec4<f32>(var_0.a, arg_0.a, arg_0.a, arg_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(434f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-672f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))))));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1367f - global0.a), _wgslsmith_f_op_f32(-1823f - -520f)), 131f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.a)))), arg_0.a) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-944f, 326f, 1000f, var_0.a), vec4<f32>(var_0.a, arg_0.a, var_0.a, 813f)))))), _wgslsmith_f_op_f32(abs(-1384f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = func_1(Struct_1(global0.a, global0.b), global0.b);
    var var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * 1826f)))) * -1419f), select(vec4<bool>(true, false, var_1.b.x, false), global0.b, global0.b));
    var_2 = Struct_1(var_1.a, vec4<bool>(!(!global0.b.x), u_input.a.x < 360i, !(-32554i >= u_input.b.x), all(var_3.b)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), select(vec4<bool>(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(437f, -914f, global0.a, -772f), vec4<f32>(-1000f, -1000f, 1209f, 183f)), _wgslsmith_f_op_f32(-850f - global0.a)).b.x, u_input.c < u_input.c, true, true), var_2.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(157f, var_3.a, 726f, var_3.a), vec4<f32>(var_2.a, var_3.a, 172f, -411f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))).b.x));
    global0 = Struct_1(1000f, !(!vec4<bool>(all(var_2.b.xwx), any(vec4<bool>(global0.b.x, var_3.b.x, true, true)), true, all(var_3.b.xz))));
    let var_5 = var_4;
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(vec4<i32>(-1i) * -vec4<i32>(9407i, u_input.b.x, 36848i, u_input.b.x))), vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) & u_input.b.x), 2640i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(866f, var_5.a)), _wgslsmith_f_op_f32(f32(-1f) * -695f), var_2.a), vec3<f32>(-178f, var_4.a, var_4.a)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 880f, var_5.a, var_4.a) * vec4<f32>(-351f, var_5.a, 879f, var_2.a)), _wgslsmith_f_op_f32(max(478f, -274f))).a, var_2.a, var_1.a))));
}

