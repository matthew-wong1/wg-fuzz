struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, false, true), -917f), Struct_1(vec3<bool>(false, true, true), 1000f), Struct_1(vec3<bool>(false, false, false), -1000f), Struct_1(vec3<bool>(false, false, false), 383f), Struct_1(vec3<bool>(false, true, false), -237f), Struct_1(vec3<bool>(false, true, true), 259f), Struct_1(vec3<bool>(true, true, true), 1203f), Struct_1(vec3<bool>(false, false, true), 1297f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    global1 = array<Struct_1, 8>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), global0.x, -2099f);
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -854f, global0.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -1146f, -359f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 864f, 2234f), vec3<f32>(1117f, global0.x, 566f), vec3<bool>(false, false, true))))))));
    let var_0 = vec3<bool>(all(vec2<bool>(true, true)), true, select((~18205u >> (_wgslsmith_clamp_u32(0u, 0u, u_input.b.x) % 32u)) <= _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 17460u, 15589u, u_input.b.x), vec4<u32>(u_input.b.x, 31345u, u_input.b.x, 45216u)), abs(u_input.b)), true, true));
    var var_1 = Struct_1(select(var_0, select(!(!var_0), select(!vec3<bool>(var_0.x, false, false), !var_0, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x))), !var_0.x), all(!vec4<bool>(false, var_0.x, false, false)) && true), _wgslsmith_f_op_f32(trunc(-304f)));
    return !all(vec2<bool>(all(select(vec2<bool>(var_1.a.x, var_0.x), var_1.a.xx, var_0.x)), all(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_1.a.x, false, false, true), var_1.a.x))));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * global0.x);
    let var_1 = Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), global0.x);
    global1 = array<Struct_1, 8>();
    let var_2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 - 109f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(109f * var_1.b)))) && true;
    global1 = array<Struct_1, 8>();
    return vec3<bool>(0u != ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 34436u, u_input.b.x)), vec4<u32>(4294967295u, 1u, 0u, 0u)), any(vec2<bool>(any(!var_1.a.zx), !var_1.a.x & var_1.a.x)), _wgslsmith_div_u32(~4294967295u, u_input.b.x) != _wgslsmith_div_u32(~u_input.b.x, 1u));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    var var_0 = Struct_1(select(vec3<bool>(all(!vec4<bool>(true, true, arg_2.x, arg_2.x)), !(!arg_2.x), all(func_2())), !(!(!vec3<bool>(true, arg_2.x, arg_2.x))), vec3<bool>(true, arg_2.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_3.x, 19083u, 4294967295u, 10398u)) != ~arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -131f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(exp2(global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, global0.x, 765f) - vec3<f32>(var_0.b, -1000f, 687f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, -199f, var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(805f, global0.x, true)) + _wgslsmith_f_op_f32(select(556f, 3067f, false))), -1414f), vec3<bool>(func_2().x, any(vec3<bool>(var_0.a.x, arg_2.x, false)), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -590f)))));
    var var_1 = var_0.b;
    return Struct_1(vec3<bool>(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, arg_2.x), false), !vec4<bool>(false, var_0.a.x, arg_2.x, false), vec4<bool>(true, true, true, true))), var_0.a.x, !any(vec2<bool>(var_0.a.x, false))), var_0.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> StorageBuffer {
    return StorageBuffer(4294967295u, min(i32(-1i) * -7399i, 53051i), u_input.a.x << (select(u_input.b.x, min(u_input.b.x, u_input.b.x) ^ u_input.b.x, select(select(arg_1.a.x, true, false), all(arg_1.a), arg_1.a.x)) % 32u), u_input.a.yy, vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1034f)), _wgslsmith_f_op_f32(-2053f - 175f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1673f + arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -959f), global0.x), func_1(u_input.b.x, 0i, vec2<bool>(true, true), vec2<u32>(u_input.b.x, ~(~u_input.b.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1012f, global0.x, 139f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -2641f, global0.x, -235f)))))), -2147483647i);
}

