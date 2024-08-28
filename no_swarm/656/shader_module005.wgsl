struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = ~u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_f_op_f32(-982f + -229f)))), 874f));
    var var_2 = Struct_1(-abs(-u_input.a.x) & -45746i);
    return u_input.a.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = 1490f;
    var var_1 = Struct_1(func_3(arg_0));
    let var_2 = Struct_1(max(func_3(vec3<u32>(u_input.c, 0u, arg_0.x)), -2147483647i));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), var_0, var_0, -1902f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, var_0, var_0, 286f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, -263f, -120f, var_0))))))));
    let var_4 = Struct_1(reverseBits(global0.a >> (u_input.c % 32u)) & global0.a);
    return Struct_1(1i);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> bool {
    global0 = Struct_1(-29085i);
    let var_0 = Struct_1(global0.a);
    var var_1 = func_2(min(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, arg_1), vec3<u32>(49612u, 58838u, 2302u))), vec3<u32>(_wgslsmith_sub_u32(arg_1, ~u_input.b.x), u_input.b.x, ~u_input.c & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_1), vec3<u32>(60124u, 0u, 0u)))));
    var var_2 = _wgslsmith_div_f32(-1946f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(725f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(global1.x && (global1.x | false), (u_input.c ^ u_input.b.x) >= ~u_input.b.x, !(global1.x & false), !(global1.x == global1.x)), vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, 1000f, -1222f) - vec3<f32>(874f, 172f, 645f)), ~u_input.b.x), false, false, func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-991f, -434f, 277f), vec3<f32>(1053f, 2448f, -534f), vec3<bool>(global1.x, true, global1.x))), min(u_input.b.x, u_input.c))), true));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f + 932f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(388f)), 1f)))), _wgslsmith_f_op_f32(select(-1000f, -280f, any(vec3<bool>(true, func_1(vec3<f32>(2102f, -916f, 1512f), 21183u), global1.x & global1.x)))), true & select(!global1.x, global1.x, true)));
    var var_2 = ~(~(~abs(1u)));
    global0 = func_2(~(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<u32>(0u, 0u, u_input.c)), ~vec3<u32>(1u, u_input.c, u_input.c)) | ~(vec3<u32>(u_input.b.x, 4294967295u, 1u) & vec3<u32>(u_input.c, 1u, 1u))));
    let var_3 = func_2(~(~(~vec3<u32>(0u, u_input.c, 0u)) << (vec3<u32>(u_input.b.x, ~0u, u_input.b.x) % vec3<u32>(32u))));
    var var_4 = ~u_input.b;
    var_4 = ~vec2<u32>(1u, 1u) ^ u_input.b;
    let var_5 = true;
    var var_6 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), any(vec2<bool>(true, global1.x)), all(vec2<bool>(var_0, var_5 || false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(409f, -1636f), 1000f, !var_5)), -1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1192f)))), 37992u, var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(992f, var_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1458f, var_1, false)), var_1, any(vec3<bool>(true, false, var_6.x))))))));
}

