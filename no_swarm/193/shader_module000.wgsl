struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-295f, 2732f, 870f);

var<private> global1: i32 = -3726i;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(true, 1i, vec4<bool>(true, false, false, true)), Struct_2(true, 1i, vec4<bool>(true, true, true, false)), Struct_2(true, i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_2(true, 18826i, vec4<bool>(true, true, false, true)), Struct_2(true, 1i, vec4<bool>(true, false, true, true)), Struct_2(false, i32(-2147483648), vec4<bool>(true, true, false, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1080f, _wgslsmith_f_op_f32(-global0.x)))));
    global3 = array<Struct_2, 6>();
    global2 = vec4<bool>(all(select(!vec4<bool>(true, false, true, global2.x), vec4<bool>(false, false, true, global2.x), false)) && any(!select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), true)), global2.x, global2.x, !(!(!global2.x)) || true);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f - 344f))), _wgslsmith_f_op_f32(f32(-1f) * -1366f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = global2.x;
    return 1u;
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1070f, 518f, true))))));
    let var_1 = u_input.a.x;
    global3 = array<Struct_2, 6>();
    var_0 = _wgslsmith_f_op_vec2_f32(-global0.xz);
    let var_2 = ~(~func_2());
    return select(!(!(!vec4<bool>(global2.x, global2.x, false, global2.x))), select(vec4<bool>(all(global2.zxx), -u_input.c <= -11980i, any(!global2.xx), true), select(!(!vec4<bool>(true, global2.x, false, true)), select(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(true, false, false, global2.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, global2.x, false), vec4<bool>(false, false, global2.x, true)), vec4<bool>(true, global2.x, global2.x, false)), global2.x), true), select(select(vec4<bool>(!global2.x, !global2.x, 114f > var_0.x, true), !(!vec4<bool>(true, global2.x, true, global2.x)), select(vec4<bool>(global2.x, false, true, true), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(false, global2.x, global2.x, global2.x)), var_2 > var_2)), !select(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, false, true)), !vec4<bool>(true, global2.x, global2.x, false), global2.x), !select(true, any(vec2<bool>(false, global2.x)), true)));
}

fn func_1() -> i32 {
    let var_0 = ~(~func_2());
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(758f + -1000f), _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-global0.x), global0.x)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(1308f - global0.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-597f, -1495f, -362f))))))))));
    var var_2 = !global2.x;
    global0 = _wgslsmith_div_vec3_f32(var_1, var_1);
    var var_3 = Struct_2(all(func_3()), 5173i, vec4<bool>(global2.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -976f)) > _wgslsmith_f_op_f32(f32(-1f) * -818f), global2.x));
    return 24387i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 6>();
    global1 = 24280i;
    let var_0 = !global2.x;
    let var_1 = false;
    global3 = array<Struct_2, 6>();
    var var_2 = Struct_2(true, func_1(), select(vec4<bool>(false, all(select(global2.wx, vec2<bool>(true, var_0), false)), any(!vec2<bool>(global2.x, false)), !var_0), vec4<bool>(var_1, global2.x, true, all(select(vec3<bool>(false, true, global2.x), global2.zwz, true))), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1464f, global0.x) * global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * 614f)))))));
}

