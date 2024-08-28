struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(1u, vec4<u32>(0u, 31735u, 0u, 4294967295u));

var<private> global2: array<bool, 7>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(global1.b.x, ~(~abs(_wgslsmith_div_vec4_u32(global1.b, global1.b))));
    let var_1 = select(vec4<bool>(select((true || global2[_wgslsmith_index_u32(8433u, 7u)]) || global2[_wgslsmith_index_u32(global3.a, 7u)], false, select(global2[_wgslsmith_index_u32(22199u, 7u)], true, any(vec3<bool>(global2[_wgslsmith_index_u32(global3.a, 7u)], false, true)))), true, (global2[_wgslsmith_index_u32(~1u, 7u)] | true) == global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 7u)], all(!vec2<bool>(false, global2[_wgslsmith_index_u32(78502u, 7u)]))), !select(!(!vec4<bool>(global2[_wgslsmith_index_u32(3322u, 7u)], global2[_wgslsmith_index_u32(arg_0.b.x, 7u)], global2[_wgslsmith_index_u32(global0.b.x, 7u)], true)), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(11919u, 7u)], global2[_wgslsmith_index_u32(u_input.e.x, 7u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(15861u, 7u)], global2[_wgslsmith_index_u32(53359u, 7u)], global2[_wgslsmith_index_u32(53894u, 7u)]), global2[_wgslsmith_index_u32(arg_0.a, 7u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(27888u, 7u)], false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(33716u, 7u)], false, false, false), global2[_wgslsmith_index_u32(global3.a, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(76729u, 7u)], true, global2[_wgslsmith_index_u32(u_input.b, 7u)], false)), !global2[_wgslsmith_index_u32(~var_0.b.x, 7u)]), all(!(!vec3<bool>(global2[_wgslsmith_index_u32(109775u, 7u)], false, global2[_wgslsmith_index_u32(2547u, 7u)]))));
    let var_2 = arg_1;
    global2 = array<bool, 7>();
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(global1.b.yx), max(vec2<u32>(13429u >> (global0.a % 32u), 0u), vec2<u32>(2333u, 26407u))), var_2.a);
    return ~(~34147u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(555f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(-arg_2.x)))))));
    global3 = Struct_1((_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a, global1.a), 0u) | 36440u) ^ func_3(Struct_1(arg_0.x, ~global3.b), Struct_1(4294967295u, vec4<u32>(u_input.e.x, arg_0.x, arg_0.x, 1u))), global3.b);
    let var_1 = arg_2;
    var var_2 = select(select(select(vec3<bool>(arg_1.x && true, false == arg_1.x, true), !vec3<bool>(false, arg_1.x, arg_1.x), !any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]))), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 7u)], arg_1.x, arg_1.x)), vec3<bool>(arg_1.x, true, arg_1.x), false), -(-2147483647i ^ u_input.a) == 0i), vec3<bool>(global2[_wgslsmith_index_u32(~51435u, 7u)], any(!select(vec4<bool>(global2[_wgslsmith_index_u32(global3.b.x, 7u)], global2[_wgslsmith_index_u32(global3.a, 7u)], true, true), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(12599u, 7u)]), arg_1.x)), true && global2[_wgslsmith_index_u32(arg_0.x, 7u)]), vec3<bool>(true, any(vec3<bool>(true, all(vec3<bool>(true, arg_1.x, false)), global0.a < global1.a)), any(vec3<bool>(true, arg_1.x, true))));
    var_0 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))))));
    return ~(global1.b.x & firstLeadingBit(_wgslsmith_div_u32(1u, u_input.c) | 4294967295u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -739f);
    var var_1 = vec2<bool>(true, all(vec4<bool>(false, ~global3.b.x == ~4294967295u, !(!global2[_wgslsmith_index_u32(63687u, 7u)]), global2[_wgslsmith_index_u32(~52980u >> (abs(0u) % 32u), 7u)])));
    var_1 = vec2<bool>(true, !(false || var_1.x));
    global3 = Struct_1(func_2(~u_input.e.zy, vec2<bool>(var_1.x, any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.a, 7u)], false, global2[_wgslsmith_index_u32(global3.a, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(8392u, 7u)], false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1913f, 1213f, 476f, -965f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1073f, 1224f, -1000f, 100f) + vec4<f32>(197f, 1290f, 438f, -1029f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-873f, -2508f, -1935f, -593f), vec4<f32>(-3090f, -137f, -943f, -1309f))))))), select(max(~vec4<u32>(25318u, global1.b.x, 30099u, 106571u), select(vec4<u32>(4294967295u, global0.b.x, global0.b.x, u_input.b) & global1.b, _wgslsmith_sub_vec4_u32(u_input.e, global3.b), vec4<bool>(global2[_wgslsmith_index_u32(52003u, 7u)], false, false, true))), select(vec4<u32>(u_input.e.x, ~1u, _wgslsmith_mult_u32(1u, 1u), global1.a | global1.a), global3.b, !all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)));
    global0 = Struct_1(global3.a, select(~global1.b, max(_wgslsmith_add_vec4_u32(firstLeadingBit(global1.b), global0.b), _wgslsmith_sub_vec4_u32(~global0.b, ~global0.b)), !(var_1.x || true)));
    return Struct_1(max(min(~27157u, max(0u, 2446u)), 34720u), vec4<u32>(4294967295u, 73546u, ~global3.a, _wgslsmith_sub_u32(~4294967295u, u_input.b)));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = Struct_1(~64321u, global1.b);
    global0 = func_1();
    global2 = array<bool, 7>();
    global1 = arg_2;
    let var_0 = Struct_1(countOneBits(19878u), global3.b);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(755f, 1355f, 386f) - vec3<f32>(-1388f, -575f, -855f))))), ~(~4294967295u), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f + 1527f) + _wgslsmith_f_op_f32(trunc(-162f))))));
    global2 = array<bool, 7>();
    global0 = Struct_1(_wgslsmith_clamp_u32(func_2(global1.b.zy, !vec2<bool>(global2[_wgslsmith_index_u32(global3.b.x, 7u)], global2[_wgslsmith_index_u32(u_input.e.x, 7u)]), vec4<f32>(-1000f, -1234f, 199f, -1072f)), global3.b.x, ~global1.a) << (_wgslsmith_add_u32(global0.a, global1.b.x) % 32u), global3.b);
    global2 = array<bool, 7>();
    let var_0 = select(vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b, 7u)] | true, global2[_wgslsmith_index_u32(func_3(Struct_1(global3.b.x, vec4<u32>(17439u, global3.a, u_input.b, global3.b.x) ^ vec4<u32>(38724u, 68649u, 75892u, u_input.c)), func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(262f, -702f, 640f))), 24009u, Struct_1(0u, vec4<u32>(39142u, 65894u, u_input.c, global3.a)), 2065f)), 7u)], false, all(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], true, global2[_wgslsmith_index_u32(global0.b.x, 7u)], true), vec4<bool>(true, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(55409u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], true, global2[_wgslsmith_index_u32(global0.a, 7u)])))), select(select(!select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0.a, 7u)], true, global2[_wgslsmith_index_u32(global0.b.x, 7u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(33066u, 7u)], true, true)), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 7u)] || global2[_wgslsmith_index_u32(u_input.e.x, 7u)], true, true, true), true), !vec4<bool>(true | global2[_wgslsmith_index_u32(33607u, 7u)], true, all(vec3<bool>(true, global2[_wgslsmith_index_u32(global1.b.x, 7u)], true)), global2[_wgslsmith_index_u32(4294967295u, 7u)]), select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global3.a, 7u)], global2[_wgslsmith_index_u32(global1.b.x, 7u)], true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(global3.a, 7u)], global2[_wgslsmith_index_u32(global3.b.x, 7u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(12562u, 7u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(global3.b.x, 7u)], false, false, true), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global3.a, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(u_input.e.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], false), vec4<bool>(true, true, false, true))), select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global0.b.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], true, global2[_wgslsmith_index_u32(global3.b.x, 7u)], false), false), vec4<bool>(global2[_wgslsmith_index_u32(13295u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], true, global2[_wgslsmith_index_u32(global0.b.x, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0.b.x, 7u)], global2[_wgslsmith_index_u32(global3.b.x, 7u)], global2[_wgslsmith_index_u32(75073u, 7u)], true)), _wgslsmith_dot_vec3_u32(u_input.e.wyy, vec3<u32>(44797u, global1.b.x, 4294967295u)) < (46484u >> (1u % 32u)))), !select(vec4<bool>(global2[_wgslsmith_index_u32(~19883u, 7u)], select(false, true, global2[_wgslsmith_index_u32(36830u, 7u)]), global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(61438u, 7u)], true, false), global2[_wgslsmith_index_u32(7141u, 7u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(406f, -283f), vec2<f32>(252f, -385f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-473f, 328f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1457f, 635f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-76481i, -vec3<i32>((u_input.a << (u_input.c % 32u)) & ~u_input.a, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, u_input.d, u_input.d), 21999i), -4984i), ~reverseBits(~(~global3.b.zxz)), ~(~vec3<u32>(global1.b.x, 66452u, global1.b.x)) << (reverseBits(firstLeadingBit(vec3<u32>(global0.b.x, 0u, global0.a) | vec3<u32>(0u, global0.a, global0.a))) % vec3<u32>(32u)));
}

