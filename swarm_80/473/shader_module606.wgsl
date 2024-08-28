struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

var<private> global1: array<f32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    let var_0 = -select(u_input.c, _wgslsmith_div_i32(firstTrailingBit(u_input.c), select(41129i, -1i, true)) >> (4294967295u % 32u), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_1 = arg_2;
    global0 = array<vec2<u32>, 4>();
    global1 = array<f32, 4>();
    let var_2 = 895f;
    return all(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), select(false, true, true)), vec4<bool>(any(vec2<bool>(false, true)), !all(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, true)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = array<f32, 4>();
    global0 = array<vec2<u32>, 4>();
    let var_0 = vec3<bool>(!(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(17224u, 4u)], 877f, 1062f, 1285f)), global0[_wgslsmith_index_u32(u_input.b.x, 4u)], arg_0) && true), false, select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] + 1568f))) >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 4u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] * global1[_wgslsmith_index_u32(84880u, 4u)])), true, true));
    global0 = array<vec2<u32>, 4>();
    global1 = array<f32, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 4>();
    global1 = array<f32, 4>();
    let var_0 = vec3<i32>(-firstLeadingBit(-24393i), -(u_input.a << (2153u % 32u)), 1i);
    global1 = array<f32, 4>();
    let var_1 = Struct_1(select(firstLeadingBit(var_0.x), -61399i, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], _wgslsmith_f_op_f32(func_2(Struct_1(var_0.x))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-574f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], false)))));
    return Struct_1(abs(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<f32>(439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x >> (46858u % 32u), 4u)])) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 4u)])))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)], -1662f), _wgslsmith_f_op_f32(f32(-1f) * -757f)))))), global1[_wgslsmith_index_u32(abs(0u), 4u)]);
    var var_2 = var_1.x;
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    let var_3 = vec2<i32>(-2147483647i, -2147483647i);
    global1 = array<f32, 4>();
    var_0 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zw)), _wgslsmith_add_u32(10363u, u_input.b.x), firstLeadingBit(~(~104828u))), _wgslsmith_sub_i32(1i, i32(-1i) * -49253i) ^ ~func_1().a, var_3.x, global1[_wgslsmith_index_u32(countOneBits(~(~(u_input.b.x ^ u_input.b.x))), 4u)]);
}

