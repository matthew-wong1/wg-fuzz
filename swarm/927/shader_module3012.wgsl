struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = u_input.a.x;
    var var_0 = Struct_1(any(vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(42814u, 1u)], global0[_wgslsmith_index_u32(49068u, 1u)], global0[_wgslsmith_index_u32(95698u, 1u)])), global0[_wgslsmith_index_u32(u_input.a.x & select(u_input.a.x, u_input.a.x, true), 1u)], global0[_wgslsmith_index_u32(27328u, 1u)], true)));
    var var_1 = Struct_1(true);
    global0 = array<bool, 1>();
    let var_2 = Struct_1(138427u < u_input.a.x);
    return 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~func_3();
    global0 = array<bool, 1>();
    let var_1 = all(select(vec4<bool>(all(vec2<bool>(true, true)), true, global2.x, true), vec4<bool>(firstLeadingBit(arg_0) != -26219i, all(global2.xz), true, any(vec3<bool>(arg_3.a, false, arg_2.a))), select(select(select(vec4<bool>(arg_1.a, true, false, global2.x), vec4<bool>(arg_3.a, arg_3.a, true, true), true), !vec4<bool>(false, global2.x, false, global2.x), true), vec4<bool>(global2.x, any(vec2<bool>(arg_2.a, false)), true, true), !select(false, true, arg_1.a))));
    var var_2 = ~u_input.a.zy;
    global2 = select(select(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(global2.x, false, false), false)), arg_2.a, true), vec3<bool>((u_input.a.x | 5465u) >= (1u << (var_2.x % 32u)), arg_2.a, true), !(!(true & arg_2.a))), vec3<bool>(false, any(select(select(global2.xy, global2.xy, vec2<bool>(false, true)), select(vec2<bool>(arg_1.a, arg_2.a), global2.zx, true), vec2<bool>(true, true))), true && (arg_0 == arg_0)), select(vec3<bool>(true, true, true), select(select(!vec3<bool>(true, false, global2.x), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 1u)], global2.x, arg_3.a)), select(vec3<bool>(arg_3.a, var_1, false), select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 1u)], global2.x, true), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], false), arg_1.a), true), all(!vec2<bool>(global2.x, global0[_wgslsmith_index_u32(0u, 1u)]))), !(!var_1)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1183f, -1993f, false))))))) * _wgslsmith_f_op_f32(-587f * _wgslsmith_f_op_f32(-842f * 1f)));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<bool> {
    var var_0 = 570f;
    global2 = vec3<bool>(true, true, false);
    global0 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_1, -375f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(1i, Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(34455u, 1u)]), Struct_1(global0[_wgslsmith_index_u32(61111u, 1u)]))))))), -809f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1, -177f), 190f, 1000f, _wgslsmith_div_f32(arg_1, arg_1)))));
    global0 = array<bool, 1>();
    return select(vec3<bool>(global2.x, true, !(!global2.x) & global0[_wgslsmith_index_u32(arg_0, 1u)]), !(!(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(43563u, 1u)], global0[_wgslsmith_index_u32(14348u, 1u)])))), !vec3<bool>(!global0[_wgslsmith_index_u32(func_3(), 1u)], any(vec3<bool>(false, global2.x, global2.x)), true != select(true, global2.x, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wxy, u_input.a.zxw), 1u)] == !all(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], true)), global2.x);
    global2 = func_1(27991u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(round(-930f))))));
    global0 = array<bool, 1>();
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(select((vec3<u32>(u_input.a.x, u_input.a.x, 23452u) | u_input.a.xzx) & max(u_input.a.yxx, vec3<u32>(76683u, u_input.a.x, 20656u)), abs(vec3<u32>(0u, 41746u, 0u)), var_0.x && !global2.x), _wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, 47247u, u_input.a.x) | vec3<u32>(u_input.a.x, 1u, 578u), min(vec3<u32>(0u, 0u, 79860u), u_input.a.zwz), func_1(u_input.a.x, 461f)), vec3<u32>(u_input.a.x >> (u_input.a.x % 32u), abs(u_input.a.x), _wgslsmith_clamp_u32(118217u, u_input.a.x, 3452u)))), 4294967295u);
    global1 = 1u;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(969f, -288f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, 1339f)), var_2))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1277f, -549f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f * 408f)))));
}

