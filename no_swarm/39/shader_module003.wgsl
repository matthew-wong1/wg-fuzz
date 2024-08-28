struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<u32, 3> = array<u32, 3>(1u, 1u, 3054u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(all(select(vec3<bool>(true, false, true), select(arg_0.b.d.xxy, vec3<bool>(true, false, false), vec3<bool>(false, false, arg_1.x)), true)), arg_1.x, vec4<f32>(_wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(-arg_0.b.c.x)), arg_0.c.c.x, arg_0.a.c.x, _wgslsmith_f_op_f32(select(arg_2, -642f, arg_0.b.d.x))), arg_0.c.d), Struct_1(!(!arg_1.x), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -592f, 1f)), vec4<bool>(!arg_1.x, arg_1.x, u_input.d != reverseBits(global0[_wgslsmith_index_u32(43296u, 30u)]), arg_0.a.b)), arg_0.c, arg_0.b);
    global1 = array<u32, 3>();
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = u_input.e.x;
    return arg_2;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> vec3<f32> {
    global0 = array<i32, 30>();
    let var_0 = 0u;
    var var_1 = select(_wgslsmith_clamp_u32(countOneBits(u_input.c.x), 4294967295u, _wgslsmith_div_u32(arg_2.x, 4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(arg_2.x, var_0, var_0), u_input.b.zxz), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_2.x, 3u)], var_0)), _wgslsmith_div_vec3_u32(arg_2.xxw ^ vec3<u32>(4294967295u, var_0, 34620u), min(arg_2.xzw, vec3<u32>(55129u, 4294967295u, 7162u)))) & max(abs(4294967295u), ~global1[_wgslsmith_index_u32(u_input.e.x, 3u)]), !all(arg_1.c.d.yyw) | all(vec4<bool>(29182u == var_0, arg_3.b.b, true, true)));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(1i >> (select(~arg_2.x, 4294967295u, true) % 32u), min(arg_0, global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), -49909i, -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2.yyx, arg_2.zxy ^ vec3<u32>(76077u, var_0, 13471u)), 30u)], -firstLeadingBit(-13023i >> (u_input.c.x % 32u)));
    let var_3 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(abs(4294967295u), ~(9826u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 3u)], 3u)])), abs(~_wgslsmith_mod_u32(30175u, global1[_wgslsmith_index_u32(~0u, 3u)])));
    return _wgslsmith_f_op_vec3_f32(arg_3.c.c.wwy - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.c.zxx), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -229f), arg_3.c.c.x)), 1460f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    global0 = array<i32, 30>();
    var var_0 = true;
    var_0 = arg_1;
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-905f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f + -2651f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1366f)) + -321f) - _wgslsmith_f_op_f32(1940f + _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(false, arg_0.x, vec4<f32>(-1014f, 616f, 354f, -366f), vec4<bool>(arg_0.x, arg_0.x, false, arg_1)), Struct_1(false, arg_0.x, vec4<f32>(981f, -556f, -251f, -476f), vec4<bool>(arg_0.x, false, false, arg_1)), Struct_1(true, true, vec4<f32>(-450f, -1542f, 1739f, 1179f), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), Struct_1(arg_0.x, arg_1, vec4<f32>(1067f, 929f, 883f, 1211f), vec4<bool>(arg_1, true, arg_0.x, false))), vec2<bool>(arg_1, arg_0.x), -1317f)))), _wgslsmith_f_op_f32(f32(-1f) * -1167f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], Struct_2(Struct_1(arg_0.x, arg_1, vec4<f32>(1127f, -941f, 372f, -168f), vec4<bool>(false, false, arg_0.x, arg_1)), Struct_1(arg_0.x, false, vec4<f32>(553f, 1242f, 432f, -307f), vec4<bool>(true, arg_1, arg_1, false)), Struct_1(true, arg_1, vec4<f32>(-473f, 623f, -682f, -219f), vec4<bool>(false, arg_1, true, true)), Struct_1(false, false, vec4<f32>(708f, -179f, 804f, -841f), vec4<bool>(true, false, true, arg_1))), u_input.b, Struct_2(Struct_1(arg_0.x, true, vec4<f32>(265f, 1858f, -1304f, -1107f), vec4<bool>(true, false, true, arg_1)), Struct_1(arg_0.x, arg_1, vec4<f32>(424f, -571f, 1508f, -1163f), vec4<bool>(arg_1, arg_1, true, false)), Struct_1(false, true, vec4<f32>(276f, 994f, 1518f, 305f), vec4<bool>(arg_1, false, arg_0.x, false)), Struct_1(arg_0.x, arg_0.x, vec4<f32>(249f, -720f, -712f, 1000f), vec4<bool>(arg_0.x, false, true, arg_1)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(812f, 1411f, 898f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-672f, -577f, 1012f), vec3<f32>(-1156f, 179f, 404f)))), any(vec3<bool>(arg_0.x, false, false)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1443f, 753f, -1743f)) - vec3<f32>(2264f, 2273f, 933f))))));
    var var_2 = true;
    return Struct_1(arg_1, !(!arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, -345f, var_1.x), vec4<f32>(-999f, 853f, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, -164f, -1110f, var_1.x)), vec4<f32>(-1783f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(var_1.x, -132f)))))), !(!vec4<bool>(true, select(arg_0.x, false, arg_1), all(vec4<bool>(true, arg_1, true, arg_0.x)), var_1.x >= var_1.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -288f))), 128f, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * arg_0)), arg_1.a.c.x);
    let var_1 = _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(18486u, ~u_input.a << (u_input.b.x % 32u)));
    global0 = array<i32, 30>();
    var var_2 = reverseBits(_wgslsmith_mod_vec2_u32(u_input.e, vec2<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(37325u, u_input.a, 53628u), 3u)], global1[_wgslsmith_index_u32(~(~1u), 3u)])));
    var var_3 = ~var_1;
    return -(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, var_2.x, u_input.b.x, 26740u) ^ (vec4<u32>(var_2.x, 1u, var_1, 50732u) | u_input.b)), 30u)] | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(30328u, _wgslsmith_clamp_u32(var_1, 1u, var_2.x)), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1356f, 615f))), Struct_2(Struct_1(false, true, vec4<f32>(-313f, -1466f, -457f, -1556f), vec4<bool>(true, true, false, true)), Struct_1(true, true, vec4<f32>(1525f, -1369f, 2547f, 118f), vec4<bool>(true, true, true, false)), func_1(vec3<bool>(false, true, true), false), func_1(vec3<bool>(false, true, true), false)), -u_input.d == _wgslsmith_add_i32(u_input.d, 0i)) >> (35478u % 32u), reverseBits(_wgslsmith_mult_i32(u_input.d, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(7390u, 30u)] & 2147483647i, max(global0[_wgslsmith_index_u32(7272u, 30u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 30u)])))), global0[_wgslsmith_index_u32(~(~(~abs(u_input.b.x))), 30u)], global0[_wgslsmith_index_u32(543u ^ ~abs(_wgslsmith_clamp_u32(35236u, 0u, 53868u)), 30u)]);
    global1 = array<u32, 3>();
    global0 = array<i32, 30>();
    var var_1 = any(select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), !(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41322u, 3u)], 30u)] != -26390i), !all(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true), true)));
    let var_2 = Struct_2(func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(select(true, true, true), false, all(vec4<bool>(true, true, false, false)))), !(!(u_input.d == 0i))), func_1(func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, false))).d.wxy, true), Struct_1(true, true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(486f, -1451f, -924f, -1009f))), vec4<f32>(994f, -1381f, -779f, -1000f)))), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(15709u, 3u)] < 30177u, true)), func_1(select(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 30u)] <= 1i), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), select(false, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c.x, select(~u_input.e, ~(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.a, 1u)) | u_input.b.wx), var_2.a.d.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(339f))));
}

