struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-1000f, -564f, -987f), vec3<f32>(-1375f, -645f, 232f), vec3<f32>(-1110f, -537f, -1252f), vec3<f32>(570f, -1000f, 1437f), vec3<f32>(919f, 1135f, -464f), vec3<f32>(-1328f, -1073f, 1740f), vec3<f32>(-882f, 803f, -1150f), vec3<f32>(-1129f, -132f, -417f), vec3<f32>(-762f, -1000f, -1238f), vec3<f32>(-1091f, -1172f, 561f), vec3<f32>(2525f, -573f, -953f), vec3<f32>(341f, -1665f, 1737f), vec3<f32>(-268f, -1780f, 947f), vec3<f32>(1464f, -111f, 1159f), vec3<f32>(-957f, 2167f, -1871f), vec3<f32>(1233f, 1000f, -1218f), vec3<f32>(339f, 1464f, 559f), vec3<f32>(-1000f, -303f, -829f), vec3<f32>(1061f, -1368f, -960f));

var<private> global1: vec4<f32>;

var<private> global2: i32 = -27192i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(false);
    global0 = array<vec3<f32>, 19>();
    return 2147483647i;
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = arg_1.b.a.a;
    global0 = array<vec3<f32>, 19>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), arg_1.c.x, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))))));
    let var_1 = u_input.c;
    let var_2 = Struct_2(Struct_1(false));
    return !select(vec4<bool>(!var_2.a.a, !var_2.a.a, arg_1.b.a.a, var_2.a.a), select(vec4<bool>(any(vec3<bool>(true, false, arg_1.b.a.a)), all(vec4<bool>(var_2.a.a, var_2.a.a, var_2.a.a, var_2.a.a)), all(vec4<bool>(var_2.a.a, var_2.a.a, var_2.a.a, var_2.a.a)), true), select(vec4<bool>(true, false, arg_1.a.a, false), !vec4<bool>(false, arg_1.a.a, false, true), true), !all(vec2<bool>(arg_1.a.a, var_2.a.a))), !arg_1.a.a);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> bool {
    var var_0 = func_2();
    var var_1 = true;
    var var_2 = -1146f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_3 = true;
    let var_4 = vec2<bool>(true, all(func_3(1f, Struct_4(Struct_1(arg_1), arg_2.b, _wgslsmith_f_op_vec3_f32(arg_2.c - vec3<f32>(arg_2.c.x, arg_2.c.x, 482f))))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(u_input.a.x != 24140i, true), vec2<bool>(true, true)), select(vec2<bool>(all(vec2<bool>(false, false)) & func_1(true, false, Struct_4(Struct_1(true), Struct_2(Struct_1(true)), vec3<f32>(global1.x, global1.x, global1.x)), false), false), vec2<bool>(true, true), false), !(!vec2<bool>(u_input.a.x > u_input.a.x, true)));
    let var_1 = 1i;
    var_0 = !(!(!func_3(1434f, Struct_4(Struct_1(var_0.x), Struct_2(Struct_1(true)), vec3<f32>(-1311f, -1400f, 158f))).zw));
    let var_2 = global1.x;
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(trunc(-449f)) < global1.x, !all(func_3(111f, Struct_4(Struct_1(var_0.x), Struct_2(Struct_1(false)), vec3<f32>(356f, global1.x, -1190f))).wy) & false, false, var_0.x && !var_0.x);
    var var_4 = 37878i;
    let x = u_input.a;
    s_output = StorageBuffer(~1i);
}

