struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1760f, 386f), 28799i, vec3<f32>(-149f, -781f, 1457f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = arg_2.e.e;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), global0.c.yx, all(vec2<bool>(arg_1.e, var_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-381f * 1729f), _wgslsmith_f_op_f32(-arg_2.c)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(347f, arg_2.e.d), vec2<f32>(-691f, -2029f)))))))), arg_1.a.x, vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.e.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1614f)))), _wgslsmith_f_op_f32(f32(-1f) * -1736f)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(437f - arg_2.b.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - 285f)))))));
    let var_2 = arg_2.e;
    let var_3 = !any(vec3<bool>(true, any(arg_3.yx), _wgslsmith_f_op_f32(-arg_2.c) < _wgslsmith_f_op_f32(f32(-1f) * -1181f)));
    return _wgslsmith_f_op_vec3_f32(arg_1.c.c + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_2.b.c)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(global0.c, vec3<f32>(arg_1.c.a.x, var_2.d, 1000f))), vec3<f32>(global0.c.x, 1000f, -580f)))))));
}

fn func_2() -> vec3<f32> {
    global0 = Struct_1(global0.a, u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.a.x, global0.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(204f, global0.a.x, global0.a.x) * global0.c)) + global0.c) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, 888f))), global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(561f)))))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), -242f)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), global0.c);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(global0.b, Struct_2(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, global0.b), u_input.a, Struct_1(vec2<f32>(global0.c.x, 1267f), -1i, vec3<f32>(1474f, 780f, global0.c.x)), 1000f, false), Struct_3(u_input.a.x, Struct_1(global0.c.yz, u_input.a.x, vec3<f32>(global0.c.x, global0.a.x, -479f)), -1040f, u_input.b.x, Struct_2(vec4<i32>(u_input.a.x, global0.b, u_input.a.x, u_input.a.x), vec3<i32>(-1556i, -2147483647i, global0.b), Struct_1(vec2<f32>(global0.c.x, global0.a.x), u_input.a.x, vec3<f32>(-400f, -261f, -400f)), global0.a.x, true)), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.a.x, 787f) + global0.c))) - global0.c) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(trunc(-3111f))), global0.c.x, global0.a.x)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(721f, 1191f)))))), -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))), global0.a.x, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_vec3_f32(func_3(0i, Struct_2(vec4<i32>(-2147483647i, 53205i, 28590i, 2147483647i), vec3<i32>(u_input.a.x, 1i, -12720i), Struct_1(global0.c.zz, -1i, global0.c), global0.a.x, false), Struct_3(-9080i, Struct_1(global0.c.xx, -30847i, global0.c), global0.c.x, 1u, Struct_2(vec4<i32>(global0.b, 1i, -7971i, 0i), u_input.a, Struct_1(vec2<f32>(global0.a.x, global0.c.x), 264i, global0.c), 648f, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))).x)));
    var var_0 = !select(vec4<bool>(any(vec3<bool>(true, true, true)), select(any(vec2<bool>(false, true)), true, true), false, all(vec4<bool>(false, true, false, false)) & (global0.c.x < global0.c.x)), vec4<bool>(true, all(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true))), vec4<bool>(select(select(false, true, true), true, 1u > u_input.b.x), true, true, 0u >= firstTrailingBit(u_input.b.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)) - vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), global0.c.x, _wgslsmith_f_op_vec3_f32(func_3(global0.b, Struct_2(vec4<i32>(global0.b, global0.b, -1i, global0.b), vec3<i32>(-35639i, u_input.a.x, global0.b), Struct_1(global0.c.yx, 15743i, vec3<f32>(global0.a.x, 1809f, -418f)), 782f, var_0.x), Struct_3(global0.b, Struct_1(global0.a, u_input.a.x, global0.c), -1347f, u_input.b.x, Struct_2(vec4<i32>(global0.b, u_input.a.x, 1i, -31682i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), Struct_1(vec2<f32>(global0.a.x, global0.c.x), 44356i, global0.c), global0.a.x, var_0.x)), vec3<bool>(var_0.x, true, true))).x))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> bool {
    let var_0 = vec2<bool>(arg_1.e, true != arg_1.e);
    global0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(2185f, arg_0), _wgslsmith_f_op_f32(-357f - _wgslsmith_f_op_f32(-arg_0))), 67563i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-273f - -846f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(584f, -821f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_2, Struct_2(arg_1.a, vec3<i32>(2147483647i, 0i, -29634i), arg_1.c, arg_1.d, false), Struct_3(-32351i, arg_1.c, arg_1.d, u_input.b.x, Struct_2(vec4<i32>(global0.b, arg_1.b.x, 23784i, arg_1.b.x), u_input.a, arg_1.c, 648f, true)), vec3<bool>(false, true, var_0.x))).x + arg_0)))));
    let var_2 = arg_1;
    global0 = Struct_1(global0.a, ~(-2147483647i) >> (u_input.b.x % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.c.a.x)))))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), !vec2<bool>(all(vec3<bool>(true, true, true)), true), !vec2<bool>(func_1(global0.c.x, Struct_2(vec4<i32>(global0.b, -41392i, global0.b, -1i), vec3<i32>(2147483647i, global0.b, -6415i), Struct_1(vec2<f32>(487f, 1475f), global0.b, global0.c), 1112f, false), 10884i), true)), vec2<bool>(-1189f > _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, global0.a.x) + global0.c.x), false), !vec2<bool>(!any(vec3<bool>(true, false, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(43667u, 2147483647i, _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1309f - global0.c.x), _wgslsmith_f_op_f32(-global0.c.x), global0.a.x) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))), !(!(!vec3<bool>(false, var_0.x, var_0.x))))), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, -969f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(835f * -1136f) + 1157f)), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(-2147483647i, Struct_2(vec4<i32>(-2147483647i, global0.b, global0.b, 25044i), vec3<i32>(-21048i, u_input.a.x, -24811i), Struct_1(global0.a, -1i, global0.c), -413f, true), Struct_3(global0.b, Struct_1(global0.a, u_input.a.x, global0.c), 2421f, u_input.b.x, Struct_2(vec4<i32>(global0.b, global0.b, 2147483647i, u_input.a.x), vec3<i32>(-29808i, u_input.a.x, global0.b), Struct_1(global0.c.yx, -2147483647i, vec3<f32>(global0.c.x, global0.a.x, global0.c.x)), global0.a.x, true)), vec3<bool>(true, false, var_0.x))).x + global0.c.x))));
}

