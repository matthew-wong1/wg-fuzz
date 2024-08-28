struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: vec2<f32>;

var<private> global3: Struct_1;

var<private> global4: array<f32, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = vec4<u32>(28067u, ~4294967295u, 1u, arg_2);
    let var_1 = arg_0;
    let var_2 = firstLeadingBit(~_wgslsmith_mult_u32(1u, arg_2));
    var var_3 = u_input.a.xw;
    let var_4 = firstLeadingBit(vec4<i32>(~_wgslsmith_div_i32(u_input.b, u_input.b), firstLeadingBit(0i), var_1, _wgslsmith_mod_i32(var_1, -1i)));
    return _wgslsmith_dot_vec3_i32(var_4.xxy, firstLeadingBit(~(~u_input.a.xyy) << (~vec3<u32>(arg_2, var_2, 39959u) % vec3<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> bool {
    global2 = arg_1.a.c.yx;
    global1 = arg_1.b;
    global2 = _wgslsmith_f_op_vec2_f32(-arg_1.a.c.xz);
    var var_0 = global0[_wgslsmith_index_u32(arg_1.a.e.x, 10u)];
    let var_1 = Struct_2(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.a.b.x, 0u, arg_1.a.a), ~66917u) << (~arg_1.a.b.x % 32u), vec4<u32>(max(4294967295u, 4294967295u), firstTrailingBit(1u), 30656u, firstLeadingBit(_wgslsmith_clamp_u32(arg_1.a.e.x, 64223u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1874f, arg_1.a.c.x, arg_1.c, -383f))))), select(select(!arg_1.a.d, vec3<bool>(var_0.a, arg_3.x, var_0.a), arg_3.x), arg_1.a.d, arg_1.a.d), abs(~abs(vec4<u32>(1u, arg_1.a.a, arg_1.a.e.x, 67511u))));
    return _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, arg_0, 46162i), vec3<i32>(-4096i, arg_0, arg_0), vec3<bool>(true, true, arg_1.b.a)), vec3<i32>(-1i, -2147483647i, u_input.b)), 1i) < -(-41246i & u_input.b);
}

fn func_2() -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_0 = vec4<bool>(any(vec3<bool>(global3.a, true, any(vec4<bool>(true, true, global1.a, false)))) | (any(select(vec2<bool>(global1.a, true), vec2<bool>(true, global1.a), true)) || global3.a), !global1.a, true, func_4(func_3(-_wgslsmith_dot_vec3_i32(u_input.a.zxx, vec3<i32>(1608i, u_input.c, u_input.a.x)), Struct_3(Struct_2(21071u, vec4<u32>(21951u, 17365u, 38798u, 23282u), vec4<f32>(844f, 1000f, -796f, global2.x), vec3<bool>(true, false, global3.a), vec4<u32>(6836u, 8545u, 67046u, 4294967295u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11387u, 14388u), 10u)], _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(1u, 21u)], -116f, global1.a))), 15305u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 54272u), 10u)]), Struct_3(Struct_2(max(45279u, 0u), max(vec4<u32>(1u, 0u, 4294967295u, 75085u), vec4<u32>(1115u, 1u, 1u, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, 1973f, -1000f, global2.x)), select(vec3<bool>(global3.a, global3.a, true), vec3<bool>(false, true, global1.a), global1.a), ~vec4<u32>(4294967295u, 97974u, 0u, 4294967295u)), Struct_1(false), global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(721f))))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(global3.a, global3.a, global3.a)) | (global2.x >= global4[_wgslsmith_index_u32(12498u, 21u)]))));
    let var_1 = global3.a;
    var var_2 = global0[_wgslsmith_index_u32(1u, 10u)];
    global2 = vec2<f32>(_wgslsmith_f_op_f32(754f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1017f + 1054f) + _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(4294967295u, 21u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(90862u, 21u)], global2.x, var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 1275f))) + -430f));
    return global0[_wgslsmith_index_u32((0u << (1u % 32u)) | select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 34075u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 123496u, 0u, 2170u), ~vec4<u32>(1u, 1u, 1u, 1u)), true), 10u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    global1 = func_2();
    let var_0 = vec3<u32>(reverseBits(firstLeadingBit(abs(_wgslsmith_mod_u32(85914u, 74376u)))), 1u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 3714u), ~arg_2.e.x, arg_2.a, ~arg_2.e.x), arg_2.b), arg_2.a, func_4(2147483647i, Struct_3(Struct_2(arg_2.e.x, vec4<u32>(4294967295u, arg_2.e.x, arg_2.e.x, arg_2.e.x), vec4<f32>(-1099f, -909f, 634f, 1907f), vec3<bool>(false, arg_2.d.x, global3.a), vec4<u32>(81070u, 7619u, 26076u, arg_2.e.x)), func_2(), -171f), -118f, vec2<bool>(any(arg_2.d.zz), arg_2.d.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(119f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global2.x)))) + -563f);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-591f * -202f))));
    let var_3 = 1009f;
    return _wgslsmith_clamp_u32(23850u, arg_2.e.x, ~(~7612u));
}

fn func_5(arg_0: vec2<u32>) -> vec4<f32> {
    global0 = array<Struct_1, 10>();
    let var_0 = func_2();
    global4 = array<f32, 21>();
    global4 = array<f32, 21>();
    global1 = Struct_1(func_2().a);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 717f) - _wgslsmith_div_f32(1103f, _wgslsmith_f_op_f32(global2.x - 1068f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-479f, -476f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1930f)) + _wgslsmith_f_op_f32(min(global2.x, global4[_wgslsmith_index_u32(arg_0.x, 21u)])))), -684f, global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(func_5(vec2<u32>(func_1(global0[_wgslsmith_index_u32(0u, 10u)], vec4<f32>(1044f, global4[_wgslsmith_index_u32(95959u, 21u)], -1182f, global4[_wgslsmith_index_u32(16733u, 21u)]), Struct_2(0u, vec4<u32>(4294967295u, 1u, 4294967295u, 5932u), vec4<f32>(390f, global2.x, 2011f, -1460f), vec3<bool>(global1.a, global1.a, false), vec4<u32>(1u, 49095u, 15276u, 21044u))) ^ 30087u, 29842u))), u_input.c, -vec2<i32>(u_input.b, countOneBits(1i)));
}

