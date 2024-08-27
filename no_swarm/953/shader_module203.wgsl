struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(i32(-2147483648), 2147483647i, 43899i, 44302i, 17542i, 17787i, -2140i, -17944i, i32(-2147483648), -31267i, -1i, 0i, 0i);

var<private> global1: array<f32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = -1i;
    global0 = array<i32, 13>();
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    return var_0 | (2147483647i >> ((arg_3 << (~(arg_3 & arg_3) % 32u)) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = array<f32, 10>();
    let var_0 = vec4<i32>((func_3(_wgslsmith_f_op_f32(-arg_1.a), arg_1, 506f, 14079u) | _wgslsmith_mod_i32(func_3(-1871f, arg_1, arg_1.a, 8729u), ~(-42649i))) | (_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), 1i) << (~reverseBits(0u) % 32u)), i32(-1i) * -76884i, -35571i, global0[_wgslsmith_index_u32(max(min(~97922u, ~14799u), 1u), 13u)] >> (1u % 32u));
    global0 = array<i32, 13>();
    let var_1 = arg_1;
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, arg_1.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global0 = array<i32, 13>();
    let var_0 = arg_1.b.a.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(arg_0.a)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(sign(var_1.a)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 669f) - vec2<f32>(-589f, _wgslsmith_f_op_f32(round(1718f)))))));
    return arg_1;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global0 = array<i32, 13>();
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(arg_0), Struct_1(arg_0)), Struct_3(global1[_wgslsmith_index_u32(1u, 10u)]), Struct_1(arg_0))))))), Struct_2(Struct_1(select(select(arg_0, arg_0, arg_0), !arg_0, arg_0)), Struct_1(select(arg_0, select(arg_0, arg_0, arg_0.x), !vec4<bool>(true, false, false, arg_0.x)))));
    let var_1 = !func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(39384u, 10u)]) * -348f)), func_4(Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 10u)])), Struct_2(var_0.a, func_4(Struct_3(global1[_wgslsmith_index_u32(18449u, 10u)]), Struct_2(var_0.b, var_0.a)).a))).a.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, all(vec3<bool>(true, !(global1[_wgslsmith_index_u32(41466u, 10u)] >= -1031f), true)), !func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)))), select(true, false, true));
    global1 = array<f32, 10>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] * global1[_wgslsmith_index_u32(~18360u, 10u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(168f))))) < _wgslsmith_f_op_f32(f32(-1f) * -291f);
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    var var_2 = firstLeadingBit(1606u & (~(~90602u) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(92741u, 19988u, 28701u, 54388u))));
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~1u, 13u)], 0u, reverseBits(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 13u)], -1i, -32276i, 1i), vec4<i32>(0i, -44066i, u_input.a.x, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], -36272i, -15989i, -17701i))) << (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))));
}

