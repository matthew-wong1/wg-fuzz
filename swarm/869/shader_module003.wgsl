struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = 592f;

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    return Struct_1(arg_0.c.a, vec2<bool>(!(!select(arg_0.c.e, arg_0.c.b.x, arg_1.b.b.x)), true), !(!vec2<bool>(!arg_0.c.c.x, arg_1.b.b.x)), _wgslsmith_f_op_vec3_f32(arg_0.c.d + _wgslsmith_f_op_vec3_f32(floor(arg_0.c.d))), true);
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0;
    global1 = 1005f;
    global0 = 1000f;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1796f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f + -1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.b.d.x)))));
    let var_1 = !(!select(vec3<bool>(true, var_0.b.e, arg_0.b.b.x), !(!vec3<bool>(var_0.b.c.x, false, true)), select(vec3<bool>(var_0.b.e, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.b.b.x, true, var_0.b.c.x), vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true)))));
    return Struct_1(var_0.a, !arg_0.b.b, vec2<bool>(true, arg_0.b.c.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(var_0.b.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-106f, _wgslsmith_f_op_f32(round(arg_0.b.d.x))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> i32 {
    global1 = _wgslsmith_f_op_f32(183f * 1704f);
    global2 = array<Struct_2, 26>();
    global2 = array<Struct_2, 26>();
    global2 = array<Struct_2, 26>();
    let var_0 = Struct_2(~(~vec4<u32>(67150u ^ arg_2, select(0u, arg_2, false), 14167u, _wgslsmith_mod_u32(1u, 26378u))), 107424u, func_3(Struct_3(vec3<i32>(51426i, arg_0.a.x, -u_input.a), arg_0)), -725f);
    return 0i;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    var var_0 = -1000f;
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.b.d.x, arg_0.b.d.x)));
    return 384f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))) - 1756f) + _wgslsmith_f_op_f32(1f * -1000f));
    let var_1 = global2[_wgslsmith_index_u32(1677u, 26u)];
    global0 = _wgslsmith_f_op_f32(-var_1.c.d.x);
    let var_2 = _wgslsmith_f_op_f32(func_4(Struct_3(vec3<i32>(func_2(func_1(Struct_2(var_1.a, 4294967295u, var_1.c, var_1.c.d.x), Struct_3(var_1.c.a, Struct_1(vec3<i32>(var_1.c.a.x, u_input.a, var_1.c.a.x), var_1.c.c, vec2<bool>(true, false), var_1.c.d, false)), vec4<f32>(327f, var_1.d, var_1.d, -1000f), var_1.c.d.x), var_1.c.a.x, var_1.a.x | var_1.b), ~(i32(-1i) * -48555i), var_1.c.a.x), func_3(Struct_3(var_1.c.a, func_1(Struct_2(var_1.a, 85405u, var_1.c, var_1.c.d.x), Struct_3(var_1.c.a, Struct_1(var_1.c.a, var_1.c.c, vec2<bool>(true, var_1.c.c.x), vec3<f32>(var_1.d, 668f, 1432f), var_1.c.c.x)), vec4<f32>(var_1.d, var_1.d, var_1.d, -1000f), -1319f)))), global2[_wgslsmith_index_u32(var_1.a.x, 26u)]));
    global2 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a, var_1.c.a.x, var_2, 73813u);
}

