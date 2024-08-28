struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<u32, 30>;

var<private> global2: array<vec2<f32>, 20>;

var<private> global3: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(111827u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38530u, 30u)] << (46929u % 32u), 30u)]), 30u)], 30u)], 30u)], 30u)], abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)]), 30u)], _wgslsmith_add_u32(0u, 64994u)), 30u)], 30u)]))), 30u)], 20u)];
    global2 = array<vec2<f32>, 20>();
    let var_1 = Struct_4(Struct_1(-vec4<i32>(min(u_input.a, u_input.a), firstLeadingBit(7574i), u_input.a, u_input.a)), ~global0[_wgslsmith_index_u32(~3723u, 7u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(75839u, 30u)], 30u)], _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(0u, 20u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1580f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -123f)))))));
    let var_2 = var_1;
    var var_3 = 8522u;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f - -2377f) - var_1.d.x), _wgslsmith_f_op_f32(floor(var_1.d.x)))));
}

fn func_2() -> vec2<f32> {
    global3 = u_input.a < u_input.a;
    let var_0 = false;
    return vec2<f32>(_wgslsmith_f_op_f32(-394f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2054f)), -610f) * -1356f)), _wgslsmith_f_op_f32(func_3()));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1088f * -1620f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.c.x, -339f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -1545f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(162f, 1000f))))), _wgslsmith_f_op_vec2_f32(func_2())))));
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    let var_1 = Struct_4(arg_1, firstLeadingBit(global0[_wgslsmith_index_u32(~(21952u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(90469u, 0u, 463u, 4294967295u), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22759u, 30u)], 30u)], 10094u, 79771u)) % 32u)), 7u)]), ~global1[_wgslsmith_index_u32(~54735u, 30u)], arg_0.c);
    global1 = array<u32, 30>();
    return global1[_wgslsmith_index_u32(39858u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = (-2147483647i >> (~func_1(Struct_3(vec3<i32>(1i, 56746i, u_input.a), Struct_1(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), global2[_wgslsmith_index_u32(64950u, 20u)], vec2<i32>(22856i, u_input.a), Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)))), Struct_1(vec4<i32>(u_input.a, u_input.a, -2147483647i, 28868i))) % 32u)) != u_input.a;
    let var_0 = Struct_1(~(-vec4<i32>(u_input.a, -u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, -14213i), min(-2147483647i, u_input.a))));
    let var_1 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, -9618i, var_0.a.wwz, _wgslsmith_f_op_f32(f32(-1f) * -1066f));
}

