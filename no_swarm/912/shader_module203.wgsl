struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: i32) -> vec2<bool> {
    return !(!vec2<bool>(any(vec2<bool>(true, true)), true));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global0 = array<vec4<bool>, 12>();
    let var_0 = Struct_4(arg_1.b.www, 27025i);
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    let var_1 = arg_1.b.yw;
    return any(select(select(arg_1.b.yzz, select(select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_0.a.x, true, false)), arg_1.b.yww, select(var_0.a, var_0.a, vec3<bool>(var_1.x, false, arg_1.b.x))), 1285f > _wgslsmith_f_op_f32(-arg_1.c)), arg_1.b.yxy, !var_0.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32) -> StorageBuffer {
    var var_0 = select(vec3<bool>(arg_0.x <= _wgslsmith_div_f32(1157f, _wgslsmith_f_op_f32(f32(-1f) * -1078f)), arg_1.x, true), vec3<bool>(~u_input.a > 39565u, true, func_3(Struct_2(u_input.a), Struct_1(vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), 12u)], 269f), u_input.b)), select(select(!vec3<bool>(arg_1.x, true, true), select(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, arg_1.x, arg_1.x)), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, true), false), vec3<bool>(false, false, arg_1.x)), all(global0[_wgslsmith_index_u32(abs(1u), 12u)])), select(select(select(vec3<bool>(arg_1.x, false, true), vec3<bool>(false, false, arg_1.x), arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, true, false)), !vec3<bool>(false, arg_1.x, arg_1.x), false), true));
    let var_1 = Struct_4(!(!select(vec3<bool>(false, arg_1.x, false), vec3<bool>(var_0.x, var_0.x, arg_1.x), false)), firstTrailingBit(u_input.c));
    var_0 = var_1.a;
    var_0 = !(!select(vec3<bool>(true, all(global0[_wgslsmith_index_u32(u_input.a, 12u)]), arg_1.x), select(vec3<bool>(true, true, true), var_1.a, select(vec3<bool>(true, var_1.a.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x))), true));
    let var_2 = Struct_2(u_input.a);
    return StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.d, 4294967295u) | ~vec3<u32>(4294967295u, var_2.a, 40114u), max(u_input.b.yxy, ~vec3<u32>(4294967295u, 0u, u_input.b.x))), 4294967295u), vec2<u32>(0u, 0u), ~abs(u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz)))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(287f, 314f) * vec2<f32>(-1424f, 526f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(683f, -738f))))));
    let x = u_input.a;
    s_output = func_2(vec3<f32>(-1345f, 2593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1070f) + var_0.x)), !func_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 0i), abs(vec2<i32>(36189i, 1i))), 28006i), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-543f, var_0.x) - -473f)))));
}

