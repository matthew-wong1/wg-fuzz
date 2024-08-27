struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: bool = false;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    global1 = all(arg_1);
    return arg_0;
}

fn func_1() -> vec2<f32> {
    global3 = array<Struct_1, 31>();
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u << (~u_input.a % 32u), 7u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec4<bool>(true, false, true, false))))), _wgslsmith_div_f32(699f, 726f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], -1000f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 7u)] - 2047f)), -625f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-359f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 7u)] * -942f))) + global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~25995u, ~0u, firstTrailingBit(u_input.a)), 7u)])) + global0[_wgslsmith_index_u32(0u, 7u)]);
    let var_1 = Struct_1(vec3<bool>(!(!(global0[_wgslsmith_index_u32(41323u, 7u)] >= global0[_wgslsmith_index_u32(u_input.a, 7u)])), true, true & select(global0[_wgslsmith_index_u32(0u, 7u)] > 1843f, true, true)));
    let var_2 = global3[_wgslsmith_index_u32(0u, 31u)];
    let var_3 = ~u_input.a;
    var var_4 = ~(~(~(vec2<u32>(82635u, 0u) >> ((vec2<u32>(57668u, 36769u) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))));
    let var_5 = Struct_1(vec3<bool>(false | var_1.a.x, var_2.a.x, !(!var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1()));
}

