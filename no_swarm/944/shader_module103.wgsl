struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)));
    var var_1 = !arg_1.a;
    global0 = array<u32, 12>();
    var var_2 = vec3<bool>(true, arg_0.a, !all(!(!vec3<bool>(false, arg_0.b.a.x, false))));
    var var_3 = arg_1.b;
    return var_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    global0 = array<u32, 12>();
    var var_0 = arg_1.x;
    let var_1 = select(vec4<bool>(select(arg_0.a, any(arg_2.b.a.yx), all(vec2<bool>(true, arg_0.a))) & any(vec4<bool>(true, true, true, true)), all(!vec3<bool>(arg_2.a, arg_0.a, arg_0.b.c.x)), arg_2.b.c.x, arg_0.b.c.x), !(!vec4<bool>(arg_0.a, true, true, arg_0.b.c.x)), select(select(!(!vec4<bool>(false, true, arg_0.a, arg_0.a)), vec4<bool>(!arg_2.b.a.x, !arg_2.a, arg_0.a, all(arg_2.b.a)), true), select(!select(vec4<bool>(true, true, arg_2.b.c.x, false), vec4<bool>(false, arg_0.b.a.x, true, arg_2.b.a.x), true), vec4<bool>(true, false || arg_0.b.c.x, arg_0.b.a.x, !arg_0.a), !(!arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(458f))))));
    var_0 = u_input.a.x;
    let var_2 = var_1.wz;
    return _wgslsmith_f_op_f32(ceil(216f));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global0 = array<u32, 12>();
    var var_0 = 23112i;
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, -419f, 692f)), vec3<f32>(738f, 671f, 1516f), all(vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(276f)), _wgslsmith_f_op_f32(func_3(Struct_2(true, Struct_1(vec3<bool>(true, false, true), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 1u, 109106u), vec2<bool>(false, true))), u_input.a, Struct_2(false, Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 3100u, 9655u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22337u, 12u)], 12u)]), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(min(-979f, 1928f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let var_0 = Struct_2(true, Struct_1(vec3<bool>(true, false, any(vec2<bool>(true, true))), ~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 54998u, 1u, 1u)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1115f, 959f))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2384f, _wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(func_1(var_0, Struct_2(var_0.b.a.x, Struct_1(var_0.b.a, var_0.b.b, var_0.b.c)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1114f * 278f), 627f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1494f + -2765f)))));
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1662f, 1028f, var_0.a)), 1000f, _wgslsmith_f_op_f32(min(1890f, 1192f)))), select(select(select(var_0.b.a, vec3<bool>(false, true, var_0.b.a.x), var_0.b.c.x), var_0.b.a, true), select(vec3<bool>(var_0.b.a.x, var_0.a, false), !var_0.b.a, select(var_0.b.a, vec3<bool>(var_0.b.c.x, var_0.b.c.x, true), var_0.b.a)), var_0.b.a))), 13801i, vec4<f32>(_wgslsmith_f_op_f32(-1620f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(220f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1654f))), 928f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1757f, -109f, -2974f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2291f, 917f, 1490f), vec3<f32>(-792f, 1000f, -163f), true)))), ~u_input.a);
}

