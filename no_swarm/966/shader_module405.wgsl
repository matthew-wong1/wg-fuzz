struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 11>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global3: f32 = -1427f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(global2.x);
    global1 = array<f32, 11>();
    var var_1 = var_0;
    global0 = Struct_1(var_0.a);
    global1 = array<f32, 11>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(93640u, 11u)])), global1[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u << (u_input.d % 32u), 11u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 11u)] - -161f))) - global1[_wgslsmith_index_u32(~select(select(4294967295u, u_input.d, arg_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 36125u), vec2<u32>(34892u, 9533u)), arg_1.a != true), 11u)]), arg_0.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = ~(~vec3<u32>(~(~u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), u_input.a.zyw) ^ u_input.a.x, _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.a.x), u_input.a.yxx))));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(19278u, 11u)], 1010f)), global1[_wgslsmith_index_u32(14901u, 11u)], _wgslsmith_f_op_f32(-478f + -463f), _wgslsmith_div_f32(-1233f, -391f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 11u)]), -718f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 11u)] + 919f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(-347f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), _wgslsmith_f_op_f32(f32(-1f) * -932f)) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 11u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, arg_0, global2.x, arg_0), vec4<bool>(global2.x, true, arg_0, global2.x), false), Struct_1(true))))));
    let var_2 = Struct_1(!global2.x);
    var var_3 = reverseBits(-u_input.e);
    var var_4 = ~55417u;
    return var_2;
}

fn func_1() -> Struct_1 {
    global3 = -1028f;
    var var_0 = func_2(true);
    var var_1 = !vec2<bool>(any(select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global0.a, global0.a, false, true), global2.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, global2.x, false), false), vec4<bool>(false, true, true, true))), !(global0.a && true));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_f_op_f32(func_3(!vec4<bool>(global0.a, false, var_0.a, true), func_2(var_0.a)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(var_1.x, true, var_0.a, global0.a), Struct_1(global0.a))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.d, 11u)]))))));
    global1 = array<f32, 11>();
    return func_2(func_2(!(!global0.a == !global2.x)).a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(901f, global1[_wgslsmith_index_u32(u_input.d, 11u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 11u)] + -315f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-471f, global1[_wgslsmith_index_u32(0u, 11u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(352f, global1[_wgslsmith_index_u32(0u, 11u)]) - vec2<f32>(533f, global1[_wgslsmith_index_u32(13045u, 11u)])))))));
    let var_1 = u_input.a.x;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-2054f, var_0.x, var_1 <= 1u))))));
    let var_2 = u_input.c << (55849u % 32u);
    global1 = array<f32, 11>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1());
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 1411f, global1[_wgslsmith_index_u32(33189u, 11u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2205f, -1431f, global1[_wgslsmith_index_u32(u_input.d, 11u)])), !global2.yww))), vec3<f32>(1968f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.d, 11u)], global1[_wgslsmith_index_u32(u_input.d, 11u)])), 589f))));
    global2 = vec4<bool>(true, global0.a, global2.x || global0.a, select(all(select(vec4<bool>(global0.a, global0.a, global2.x, false), vec4<bool>(false, global0.a, global0.a, false), vec4<bool>(true, true, global0.a, false))), true, false) || global2.x);
    global3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(u_input.d, max(abs(~1u), ~1u)), 11u)] * -212f);
    var var_1 = ~u_input.a.x;
    var var_2 = 9252i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wy);
}

