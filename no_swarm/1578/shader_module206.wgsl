struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<u32, 14> = array<u32, 14>(4294967295u, 2405u, 0u, 37488u, 4294967295u, 0u, 18417u, 58891u, 46297u, 44151u, 52360u, 4294967295u, 4619u, 26009u);

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~(~(~1u)) << (select(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u | ~u_input.a, 14u)], 14u)], 45463u | u_input.a, !(!(!arg_0.a))) % 32u), 26u)];
    global1 = array<u32, 14>();
    let var_1 = all(!(!(!vec2<bool>(true, arg_0.b)))) | arg_0.a;
    var var_2 = arg_0;
    global2 = firstTrailingBit(u_input.c);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-260f, -1000f)))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 26u)], _wgslsmith_f_op_f32(f32(-1f) * -426f));
}

fn func_2() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 26u)];
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 26u)], 1000f, 476f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 26u)], 510f, -260f), true))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(true, false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-720f, 1000f, 763f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], -983f), vec3<f32>(global0[_wgslsmith_index_u32(54960u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]))), vec3<f32>(global0[_wgslsmith_index_u32(16025u, 26u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29621u, 26u)] - global0[_wgslsmith_index_u32(50822u, 26u)]), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a, 14u)], 26u)])))));
    let var_2 = all(vec4<bool>((firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]) ^ u_input.a) == _wgslsmith_mult_u32(30141u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(34182u, global1[_wgslsmith_index_u32(u_input.a, 14u)]))), true, true, !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22054u, 14u)], 14u)] < 0u) | all(vec3<bool>(false, true, false))));
    var var_3 = _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.b.yx), vec2<i32>(2147483647i, 46426i));
    var var_4 = select(!select(vec4<bool>(var_2, var_2, true && var_2, var_3.x < -4659i), !(!vec4<bool>(var_2, true, true, true)), any(select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(true, true, var_2, false), vec4<bool>(var_2, var_2, var_2, var_2)))), !select(select(!vec4<bool>(false, var_2, var_2, true), vec4<bool>(false, var_2, true, true), !vec4<bool>(true, false, var_2, var_2)), vec4<bool>(true, var_2, var_2, all(vec3<bool>(false, var_2, var_2))), !vec4<bool>(true, true, false, var_2)), true);
    return true;
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 14>();
    var var_0 = -36243i;
    global1 = array<u32, 14>();
    let var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32((u_input.a ^ ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(44899u, 20625u), 14u)]) | u_input.a, 26u)]);
    let var_2 = var_1;
    return Struct_1(func_2(), !(15210i <= _wgslsmith_add_i32(u_input.b.x, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<u32, 14>();
    global0 = array<f32, 26>();
    global2 = min(_wgslsmith_add_i32(2147483647i, u_input.d), _wgslsmith_mod_i32(u_input.d, _wgslsmith_div_i32(u_input.d, u_input.c)));
    global0 = array<f32, 26>();
    let var_1 = 380f;
    let var_2 = vec3<bool>((u_input.d != ~(-65052i)) && any(vec2<bool>(var_1 < var_1, !var_0.b)), any(vec2<bool>(u_input.c <= 49264i, (var_0.b | false) & (u_input.c <= -37720i))), (firstLeadingBit(u_input.a >> (global1[_wgslsmith_index_u32(4294967295u, 14u)] % 32u)) >> (~u_input.a % 32u)) > ~39888u);
    let var_3 = vec4<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~(~82637u)), ~select(vec2<u32>(55323u, global1[_wgslsmith_index_u32(53783u, 14u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], global1[_wgslsmith_index_u32(4214u, 14u)]), true) | _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 4294967295u) | vec2<u32>(u_input.a, 42881u))), 14u)], abs(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a), 14u)], ~(4294967295u & global1[_wgslsmith_index_u32(u_input.a, 14u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -firstLeadingBit(max(vec3<i32>(u_input.d, 2147483647i, 21920i) & vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(1i, u_input.d, u_input.c) >> (var_3.yzw % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(~(var_3.xyx & var_3.wxw) | vec3<u32>(~0u, ~21925u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 14808u), vec2<u32>(u_input.a, 40891u))), var_3.yxx), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(~_wgslsmith_div_u32(u_input.a, global1[_wgslsmith_index_u32(50430u, 14u)]), _wgslsmith_add_u32(u_input.a, min(global1[_wgslsmith_index_u32(65132u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]))), ~u_input.a, ~(~_wgslsmith_add_u32(0u, var_3.x))), 26u)], max(~firstLeadingBit(u_input.a), global1[_wgslsmith_index_u32(var_3.x & _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(16643u, 1u))), 14u)]));
}

