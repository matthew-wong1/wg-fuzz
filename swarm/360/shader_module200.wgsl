struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(15946u, 235f, true, true), false, 1u, false, Struct_1(1u, 411f, false, true)), Struct_2(Struct_1(4294967295u, 501f, true, false), true, 4294967295u, false, Struct_1(0u, 757f, true, false)), Struct_2(Struct_1(46270u, -840f, true, false), false, 68452u, true, Struct_1(11582u, -1231f, false, true)), Struct_2(Struct_1(1u, -2020f, true, false), true, 32413u, true, Struct_1(4294967295u, 1790f, true, false)), Struct_2(Struct_1(92322u, 193f, true, true), false, 1u, false, Struct_1(1u, -1000f, false, false)), Struct_2(Struct_1(11743u, 1020f, true, false), false, 60296u, true, Struct_1(112853u, -1904f, false, true)), Struct_2(Struct_1(53142u, -171f, true, true), true, 1u, true, Struct_1(66224u, -2172f, false, false)), Struct_2(Struct_1(0u, -651f, false, false), false, 24576u, false, Struct_1(1u, 128f, true, false)), Struct_2(Struct_1(0u, -1655f, false, false), true, 75973u, false, Struct_1(16572u, -479f, true, false)), Struct_2(Struct_1(0u, 1139f, false, true), false, 0u, false, Struct_1(1u, -295f, true, true)), Struct_2(Struct_1(0u, -1045f, false, true), true, 4294967295u, false, Struct_1(2565u, -2190f, false, false)), Struct_2(Struct_1(4294967295u, -1676f, false, true), false, 4294967295u, false, Struct_1(18133u, -1083f, true, true)), Struct_2(Struct_1(87051u, -1044f, true, true), false, 66835u, true, Struct_1(37980u, -1206f, false, false)), Struct_2(Struct_1(61403u, 1643f, false, true), true, 4294967295u, false, Struct_1(23176u, 1671f, true, true)), Struct_2(Struct_1(33273u, -619f, false, false), false, 49201u, false, Struct_1(83601u, -116f, false, false)), Struct_2(Struct_1(1u, 173f, false, true), true, 30776u, true, Struct_1(56383u, 1056f, false, true)), Struct_2(Struct_1(55702u, 541f, true, false), false, 4023u, true, Struct_1(50867u, -1130f, true, false)), Struct_2(Struct_1(30386u, -393f, true, true), true, 29279u, false, Struct_1(15697u, -542f, false, true)), Struct_2(Struct_1(73781u, -595f, false, true), false, 0u, true, Struct_1(0u, -1000f, false, false)), Struct_2(Struct_1(4294967295u, 502f, true, true), true, 57923u, false, Struct_1(18448u, -140f, false, true)), Struct_2(Struct_1(6421u, -725f, true, false), true, 1u, false, Struct_1(0u, 497f, false, true)), Struct_2(Struct_1(26358u, -159f, false, false), false, 78714u, true, Struct_1(31441u, 1702f, false, true)), Struct_2(Struct_1(1u, -357f, false, false), false, 1u, true, Struct_1(4203u, -1693f, false, true)), Struct_2(Struct_1(0u, 1597f, true, false), true, 50829u, false, Struct_1(19198u, 1530f, true, false)), Struct_2(Struct_1(9102u, -301f, true, false), false, 1u, false, Struct_1(4294967295u, 167f, false, true)), Struct_2(Struct_1(0u, -1176f, true, false), true, 27388u, false, Struct_1(62308u, 288f, false, false)));

var<private> global2: array<f32, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<Struct_2, 26>();
    var var_0 = Struct_1(4294967295u >> (arg_0.e.e.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 22u)] - global2[_wgslsmith_index_u32(67013u, 22u)]))))) - -654f), arg_0.d.d, false);
    global0 = array<i32, 27>();
    var var_1 = !any(!(!(!vec2<bool>(true, var_0.d))));
    var var_2 = vec3<bool>(all(!(!(!vec4<bool>(var_0.d, true, false, arg_0.d.d)))), any(!vec3<bool>(false, var_0.d, false)) || arg_0.d.c, any(vec4<bool>(true, false, arg_0.b.x, arg_0.b.x)) || false);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~84673u, var_0.a), 22u)] - global2[_wgslsmith_index_u32(8724u, 22u)]))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_5 {
    let var_0 = vec2<u32>(10139u, 4294967295u);
    var var_1 = vec2<u32>(arg_2.x << (arg_2.x % 32u), 2723u) | _wgslsmith_mod_vec2_u32(~(~vec2<u32>(11829u, arg_2.x)), _wgslsmith_sub_vec2_u32(var_0, arg_2.yz));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 22u)])), global2[_wgslsmith_index_u32(firstLeadingBit(arg_2.x), 22u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1468f)), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(arg_2.x, 22u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1198f, global2[_wgslsmith_index_u32(87737u, 22u)])), _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(1152f, global2[_wgslsmith_index_u32(63749u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(true, true), vec4<i32>(arg_0, -28004i, arg_3.x, global0[_wgslsmith_index_u32(var_1.x, 27u)]), Struct_1(arg_2.x, 1173f, false, false), Struct_2(Struct_1(8074u, -1686f, true, true), false, var_0.x, true, Struct_1(32668u, 1000f, false, false)))))))), !all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(arg_2, arg_2, arg_2), arg_2), -719f, !(!all(vec4<bool>(true, true, true, false))), true));
    var var_3 = 1972f;
    var var_4 = select(all(vec3<bool>(all(select(vec3<bool>(var_2.b, true, true), vec3<bool>(var_2.b, var_2.c.c, false), var_2.b)), true & (arg_3.x < 0i), !(1i == arg_3.x))), true, var_2.c.c);
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(var_2.a.xxx, select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, true), vec2<bool>(false, true)), abs(vec4<i32>(arg_0, -30580i, arg_3.x, -2147483647i)), Struct_1(4294967295u, var_2.a.x, var_2.b, true), global1[_wgslsmith_index_u32(var_2.c.a, 26u)]))), 411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_f_op_f32(floor(var_2.a.x))), var_2.b, var_2.c);
}

fn func_4(arg_0: Struct_5) -> bool {
    var var_0 = arg_0.c;
    var var_1 = arg_0.c.d;
    global2 = array<f32, 22>();
    let var_2 = vec4<f32>(1124f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, global2[_wgslsmith_index_u32(var_0.a, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f - arg_0.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-262f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a, 22u)] + 785f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) + _wgslsmith_f_op_f32(sign(var_0.b))))), var_0.b);
    var var_3 = any(vec4<bool>(select(select(104f <= global2[_wgslsmith_index_u32(1u, 22u)], arg_0.c.b >= arg_0.c.b, true), !(false | arg_0.c.d), true), arg_0.c.d, true, false));
    return all(!(!select(vec3<bool>(var_0.d, true, var_0.d), select(vec3<bool>(arg_0.b, false, false), vec3<bool>(arg_0.c.c, false, var_0.c), vec3<bool>(true, false, false)), true)));
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(~32741u, global2[_wgslsmith_index_u32(4294967295u, 22u)], true, func_4(func_2(2147483647i, -2147483647i, ~(~vec3<u32>(43710u, 49877u, 114292u)), u_input.c.xw << (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a, 22u)] * global2[_wgslsmith_index_u32(var_0.a, 22u)]), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -985f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1127f, var_0.b, -2169f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, global2[_wgslsmith_index_u32(var_0.a, 22u)], 149f), vec3<f32>(-302f, 594f, global2[_wgslsmith_index_u32(var_0.a, 22u)]), vec3<bool>(var_0.d, true, var_0.c)))), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1767f, _wgslsmith_div_f32(var_0.b, 667f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(58694u, 22u)])))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(1009f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(floor(669f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(-208f, 1127f, -393f), vec2<bool>(var_0.d, var_0.d), u_input.c, Struct_1(1u, global2[_wgslsmith_index_u32(0u, 22u)], var_0.c, var_0.d), global1[_wgslsmith_index_u32(36361u, 26u)]))) * _wgslsmith_f_op_f32(-var_0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(40836u, 22u)]) - _wgslsmith_f_op_f32(1566f + -578f)) + var_1.x)), var_1.x);
    global1 = array<Struct_2, 26>();
    var var_2 = vec4<bool>(!var_0.d, !var_0.c, true, true);
    return vec2<i32>(~u_input.c.x, reverseBits(firstLeadingBit(~_wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(4294967295u, 27u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.a.xx | func_1()) >> (_wgslsmith_mod_vec2_u32(~select(firstTrailingBit(vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, 4294967295u), false), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    var var_1 = select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), select(true, true, false)))), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), vec4<bool>(!func_4(Struct_5(vec4<f32>(-1742f, global2[_wgslsmith_index_u32(1u, 22u)], 158f, global2[_wgslsmith_index_u32(5895u, 22u)]), false, Struct_1(4294967295u, -1555f, true, true))), false, all(vec3<bool>(true, true, true)), false));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(~(~1u), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)), global2[_wgslsmith_index_u32(1u, 22u)], -929f)), func_2(~(i32(-1i) * -global0[_wgslsmith_index_u32(0u, 27u)]), 2147483647i, ~vec3<u32>(0u, ~4294967295u, ~4294967295u), vec2<i32>(var_0.x, 1i)).b, Struct_1(min(min(17360u, 0u), 1u) >> (0u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(36894u, 22u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(76307u, 22u)]))), -316f), var_1.x == !(var_1.x & true), true));
    global1 = array<Struct_2, 26>();
    global2 = array<f32, 22>();
    var var_3 = vec3<f32>(var_2.c.b, 738f, -530f);
    global1 = array<Struct_2, 26>();
    var var_4 = 1i & u_input.c.x;
    global1 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(53123u), 0u), vec4<u32>(~(~(var_2.c.a ^ 74274u)), 1u, var_2.c.a, 75045u));
}

