struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-893f, 246f, -1695f, 232f, -820f, 567f, 101f, 1759f, -374f, 1284f, -1101f, 880f, 1127f, 1234f, -1377f, -954f, 127f, -1000f, 1401f);

var<private> global1: array<vec3<i32>, 4>;

var<private> global2: array<u32, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    global1 = array<vec3<i32>, 4>();
    return 930f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = array<vec3<i32>, 4>();
    var var_0 = Struct_1(_wgslsmith_div_u32(firstLeadingBit(firstTrailingBit(global2[_wgslsmith_index_u32(arg_0.a, 18u)]) ^ max(62471u, u_input.a.x)), select(~arg_1.a, u_input.a.x, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)) - _wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(arg_0.b.x, arg_0.b.x, global0[_wgslsmith_index_u32(23992u, 19u)], 958f))) * vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~arg_1.a, 18u)], 19u)], -751f, _wgslsmith_f_op_f32(max(arg_0.b.x, 490f)), 1115f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.a, 19u)], arg_0.b.x, arg_0.b.x, arg_0.b.x))), vec4<f32>(arg_0.b.x, arg_1.b.x, arg_0.b.x, -1070f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(81785u, 19u)])), _wgslsmith_f_op_f32(-506f + -1000f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a, 19u)] - arg_0.b.x), arg_1.b.x)), vec4<bool>(true, true, true, true))));
    let var_1 = i32(-1i) * -30884i;
    var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + -642f) + global0[_wgslsmith_index_u32(u_input.b << (84401u % 32u), 19u)]), _wgslsmith_f_op_f32(select(1427f, 567f, true)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.a, 19u)], _wgslsmith_f_op_f32(-593f * 239f)), 1000f))));
    let var_2 = false;
    return global2[_wgslsmith_index_u32(arg_0.a, 18u)] >= var_0.a;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(vec4<bool>(any(vec4<bool>(func_3(Struct_1(0u, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -1520f, 1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 18u)], 19u)])), Struct_1(1u, arg_0.b)), true, true, true)), any(vec4<bool>(true, true, true, true)), true, true), !(!vec4<bool>(false, true, true, select(false, true, false))), vec4<bool>(true, true & (-204i > _wgslsmith_clamp_i32(10111i, -1i, 1197i)), false, !any(vec4<bool>(true, false, true, false))));
    let var_1 = !func_3(arg_0, Struct_1(u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(14841u, 19u)], _wgslsmith_f_op_f32(min(arg_0.b.x, -1926f)), _wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_f_op_f32(-399f - global0[_wgslsmith_index_u32(arg_0.a, 19u)]))));
    let var_2 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -377f);
    global1 = array<vec3<i32>, 4>();
    let var_1 = func_2(Struct_1(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39053u, 18u)], 18u)], 19u)]), -1030f, _wgslsmith_f_op_f32(func_1(Struct_2(vec3<bool>(true, true, false), vec2<u32>(41234u, u_input.a.x), false, Struct_1(4294967295u, vec4<f32>(495f, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43899u, 18u)], 19u)], 1189f)), -784f), var_0)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 19u)])))));
    global2 = array<u32, 18>();
    global1 = array<vec3<i32>, 4>();
    let var_2 = func_2(func_2(func_2(func_2(Struct_1(0u, vec4<f32>(-538f, -1000f, var_0, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), 237f, var_1.b.x, ~(~min(select(vec2<u32>(76227u, 36978u), vec2<u32>(var_2.a, u_input.a.x), false), vec2<u32>(4294967295u, 46437u) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)))));
}

