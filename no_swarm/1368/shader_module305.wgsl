struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-494f, -625f, -717f, -562f), vec4<f32>(-1000f, -821f, 1384f, 374f), vec4<f32>(1000f, 575f, 336f, -245f), vec4<f32>(-119f, -946f, -302f, -274f), vec4<f32>(791f, -144f, 825f, 666f), vec4<f32>(332f, -1594f, 567f, 901f), vec4<f32>(1393f, 1162f, 1000f, 1159f), vec4<f32>(-124f, -1187f, -380f, -1866f), vec4<f32>(-222f, -217f, 1876f, -686f), vec4<f32>(-769f, -1000f, 1481f, -396f), vec4<f32>(-773f, -1035f, 1391f, -2730f), vec4<f32>(403f, 954f, 823f, -159f), vec4<f32>(1481f, 370f, -1000f, -1691f), vec4<f32>(-873f, -625f, 1270f, 677f), vec4<f32>(-1497f, -1000f, -224f, -181f));

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 25>;

var<private> global3: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = 46893u;
    var_0 = u_input.c.x;
    global3 = false && all(vec2<bool>(arg_0.a.x && false, !all(arg_0.a.xxz)));
    var var_1 = select(arg_0.a.yxy, select(!arg_0.a.xww, arg_0.a.yzz, arg_0.a.x), !arg_0.a.zxw);
    var var_2 = true;
    return vec2<bool>(false, false);
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    global2 = array<i32, 25>();
    global0 = array<vec4<f32>, 15>();
    global0 = array<vec4<f32>, 15>();
    var var_0 = u_input.c.zw;
    global1 = vec2<bool>(global1.x, global1.x);
    return !(!select(!arg_0.b.a, select(select(arg_0.b.a, vec4<bool>(true, global1.x, true, true), global1.x), vec4<bool>(true, true, true, false), true), false));
}

fn func_3(arg_0: Struct_1) -> Struct_3 {
    global2 = array<i32, 25>();
    global2 = array<i32, 25>();
    global3 = false;
    global2 = array<i32, 25>();
    var var_0 = Struct_1(select(vec4<bool>(true, global1.x, global1.x, select(true, arg_0.a.x, false)), vec4<bool>(global1.x, all(vec2<bool>(global1.x, arg_0.a.x)), global1.x, all(func_2(Struct_3(Struct_2(vec2<f32>(arg_0.b, arg_0.b)), Struct_1(vec4<bool>(true, global1.x, arg_0.a.x, false), 1052f), Struct_2(vec2<f32>(-2037f, arg_0.b)), vec3<f32>(arg_0.b, 141f, 790f))))), vec4<bool>(arg_0.a.x, arg_0.a.x, true, all(arg_0.a))), 1789f);
    return Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)), -872f)), var_0.b)), arg_0, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(step(-471f, -485f))))), vec3<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + 1635f)), 505f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f + var_0.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global0 = array<vec4<f32>, 15>();
    global1 = vec2<bool>(all(vec4<bool>(any(arg_0.a.wy), global1.x, arg_0.a.x, u_input.c.x <= u_input.c.x)), any(vec3<bool>(any(select(vec3<bool>(false, false, false), arg_1.b.a.zwy, arg_0.a.x)), arg_0.a.x, all(func_2(Struct_3(arg_1.a, arg_0, Struct_2(vec2<f32>(-949f, -659f)), vec3<f32>(arg_0.b, arg_1.d.x, arg_1.d.x)))))));
    global3 = global1.x;
    let var_0 = min(16310u, 120316u);
    let var_1 = func_3(arg_0).a;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1414f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    var var_0 = Struct_2(vec2<f32>(1f, 1f));
    global1 = select(vec2<bool>(true, select(global1.x, global1.x, u_input.a != global2[_wgslsmith_index_u32(u_input.c.x, 25u)]) || !all(vec2<bool>(true, false))), vec2<bool>(global1.x, any(select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x))), func_1(Struct_1(vec4<bool>(true, !global1.x, global1.x, global1.x), var_0.a.x)));
    global2 = array<i32, 25>();
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(select(vec4<bool>(true, select(true, false, false), global1.x, all(vec2<bool>(false, global1.x))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, false, true, global1.x)), !vec4<bool>(global1.x, true, global1.x, global1.x), true), vec4<bool>(true, !global1.x, all(vec4<bool>(true, false, true, global1.x)), any(vec2<bool>(false, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-394f, -855f))), func_3(Struct_1(select(func_2(Struct_3(Struct_2(var_0.a), Struct_1(vec4<bool>(global1.x, false, true, true), 242f), Struct_2(vec2<f32>(var_0.a.x, var_0.a.x)), vec3<f32>(var_0.a.x, -476f, var_0.a.x))), !vec4<bool>(false, global1.x, true, true), vec4<bool>(false, global1.x, false, true)), var_0.a.x))));
    var var_2 = func_3(func_3(Struct_1(!func_3(Struct_1(vec4<bool>(false, global1.x, false, false), var_0.a.x)).b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) - _wgslsmith_f_op_f32(round(1515f))))).b).b;
    let x = u_input.a;
    s_output = StorageBuffer(-5735i, var_2.b, abs(1i), u_input.c.x);
}

