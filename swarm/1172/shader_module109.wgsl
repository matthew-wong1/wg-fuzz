struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(1000f, -957f, -208f, -1322f), vec4<f32>(-2024f, -1348f, 387f, -799f), vec4<f32>(-1050f, 1982f, 115f, -983f), vec4<f32>(-115f, -161f, 2409f, 1173f), vec4<f32>(495f, 871f, 1250f, 408f), vec4<f32>(-575f, -1084f, -203f, -1605f), vec4<f32>(-1566f, -1348f, 1000f, -2044f), vec4<f32>(-1057f, -649f, -703f, -1098f), vec4<f32>(-663f, 862f, 111f, 238f), vec4<f32>(881f, -1362f, -545f, -212f), vec4<f32>(-1080f, 372f, -273f, -1000f), vec4<f32>(1700f, 746f, -219f, 779f), vec4<f32>(2494f, 282f, 1352f, 593f), vec4<f32>(-686f, 3285f, 940f, 496f));

var<private> global1: f32 = 1052f;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec3<i32>(i32(-2147483648), -53034i, 1i), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, true, false)), vec2<f32>(496f, 382f)), Struct_1(vec4<bool>(true, false, true, true)), true, Struct_1(vec4<bool>(false, false, true, true)));

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: vec2<f32> = vec2<f32>(-1258f, 559f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    var var_0 = abs(u_input.e.x);
    var_0 = u_input.d.x;
    global4 = global2.a.e;
    return global2.a.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.e.x), global2.a.e.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, -864f, true))), var_0.e.x), false));
    var var_2 = Struct_3(global2.a, func_2(), var_0.e.x < _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1515f, var_1.x) + global4.x)), arg_1);
    let var_3 = u_input.c.zx;
    var var_4 = ~(~_wgslsmith_sub_vec2_u32(~u_input.c.wz | vec2<u32>(var_3.x, var_3.x), ~(~u_input.a.xx)));
    return func_2();
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    global3 = !(!arg_1.a.ww);
    global2 = arg_0;
    let var_0 = Struct_3(global2.a, func_1(arg_1, global2.d), !(arg_0.a.b.x == -1i), Struct_1(!(!vec4<bool>(global3.x, true, arg_0.a.a.a.x, global3.x))));
    global1 = global4.x;
    global2 = var_0;
    return global2.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global4.x;
    global4 = vec2<f32>(_wgslsmith_f_op_f32(-1041f + global2.a.e.x), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(global2.b, vec3<i32>(u_input.e.x, u_input.b.x, 1i), Struct_1(vec4<bool>(global2.c, true, global3.x, global3.x)), global2.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-416f, global2.a.e.x))), Struct_1(global2.d.a), !(global4.x != 1523f), Struct_1(global2.d.a)), func_1(global2.d, global2.a.c))));
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(global2.a.e));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-419f + _wgslsmith_div_f32(-1000f, global4.x))), global2.a.e.x)) * -1000f);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(622f, 1443f);
}

