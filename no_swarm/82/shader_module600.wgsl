struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(-1017f, vec4<bool>(true, false, true, true), vec4<f32>(927f, -101f, -1603f, 676f), 13770u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = arg_0.yz;
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global0.a);
    var var_1 = ~global0.a.d;
    return any(global0.a.b);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = firstLeadingBit(global0.a.d);
    var var_1 = 1i;
    let var_2 = global0.a.d;
    let var_3 = 1i;
    var var_4 = global0.a.b.xy;
    return -315f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), !select(select(vec4<bool>(true, true, false, false), arg_2.a.b, arg_2.a.b), !vec4<bool>(global0.a.b.x, true, arg_2.a.b.x, true), vec4<bool>(global0.a.b.x, global0.a.b.x, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c.x, arg_2.a.a, arg_2.a.c.x, 229f)))), 1u));
    global0 = var_0;
    var var_1 = !select(vec4<bool>(any(global0.a.b.xwz), !(!arg_2.a.b.x), !arg_2.a.b.x & func_2(vec3<f32>(arg_2.a.c.x, arg_1.x, 402f)), true), vec4<bool>(global0.a.b.x, true, all(vec2<bool>(true, true)), true), var_0.a.b);
    var var_2 = 0u;
    var var_3 = vec2<bool>(all(!vec2<bool>(global0.a.b.x || var_1.x, false)), var_0.a.b.x);
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(var_0.a.b)), _wgslsmith_f_op_f32(abs(-130f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1089f * arg_2.a.a), arg_2.a.c.x)), _wgslsmith_f_op_f32(-arg_2.a.c.x), arg_2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(Struct_3(243f, !(!(!vec4<bool>(global0.a.b.x, false, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(global0.a.d), global0.a.c, Struct_4(global0.a), Struct_1(57756u))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(global0.a.c)), _wgslsmith_f_op_vec4_f32(-global0.a.c)))), 48763u));
    global0 = Struct_4(global0.a);
    let var_0 = true;
    let var_1 = ~u_input.a.zwy;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(!global0.a.b)), _wgslsmith_f_op_f32(-global0.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x & (1u << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.x, 30861u, global0.a.d, 27468u), vec4<u32>(u_input.d, 27566u, var_1.x, u_input.a.x), global0.a.b), ~vec4<u32>(4294967295u, global0.a.d, var_1.x, global0.a.d)) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a.c.yz, global0.a.c.wy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(891f)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1106f - global0.a.c.x) * _wgslsmith_f_op_f32(-1351f * -1033f)), -525f)));
}

