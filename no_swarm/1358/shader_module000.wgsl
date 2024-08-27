struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = -181f;
    global2 = vec2<bool>(!any(select(select(vec4<bool>(true, global1.x, global2.x, true), vec4<bool>(false, global1.x, false, global2.x), false), select(vec4<bool>(global1.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(true, global2.x, true, false)), !vec4<bool>(global2.x, global1.x, global1.x, true))), countOneBits(1i) > _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(57666i, -1i, -39277i), vec3<i32>(-2147483647i, 1i, -30954i), vec3<i32>(13499i, 10447i, u_input.b))), min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 31500i, 737i), u_input.a.yzx), -vec3<i32>(u_input.b, u_input.a.x, 357i))));
    var var_1 = ~(((select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9141u, 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8090u, 5u)], 5u)], global1.x) << (~12849u % 32u)) >> (abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) % 32u)) >> (_wgslsmith_clamp_u32(min(~4294967295u, ~3591u), global0[_wgslsmith_index_u32(35124u, 5u)], 0u) % 32u));
    let var_2 = global2.x;
    var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], 5u)], 1u), vec2<u32>(27311u, global0[_wgslsmith_index_u32(4294967295u, 5u)])), 4294967295u, 31221u | global0[_wgslsmith_index_u32(reverseBits(4294967295u), 5u)]), ~vec3<u32>(1u, _wgslsmith_add_u32(108292u, 56449u), abs(0u)));
    return true;
}

fn func_2() -> bool {
    let var_0 = func_3();
    var var_1 = 0i;
    var var_2 = u_input.b;
    global1 = select(vec2<bool>(true, !global1.x), vec2<bool>(any(vec3<bool>(true, true, global1.x)) & true, global2.x), !(!vec2<bool>(any(vec2<bool>(var_0, global2.x)), all(vec4<bool>(global1.x, global1.x, false, true)))));
    var var_3 = select(!vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(27172u, 5u)]), 5u)], 5u)] != 0u, any(select(vec3<bool>(false, var_0, true), vec3<bool>(true, global1.x, global1.x), vec3<bool>(var_0, global1.x, true))), global1.x), vec3<bool>(true, !all(vec4<bool>(var_0, global1.x, true, true)), any(!vec4<bool>(var_0, false, false, true))), func_3());
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = vec3<i32>(-51629i, u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(26210u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec2<u32>(32370u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22932u, 5u)], 5u)]) ^ vec2<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(34824u, 5u)]))) % 32u), _wgslsmith_add_i32(u_input.a.x ^ u_input.a.x, -20811i));
    var var_1 = Struct_1(arg_0.a);
    let var_2 = ~(-(~vec2<i32>(var_0.x, _wgslsmith_div_i32(var_0.x, 48392i))));
    global2 = !vec2<bool>(true, any(vec4<bool>(true, true, func_2(), func_3())));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.xw - arg_0.a));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, var_3.a.x) + _wgslsmith_f_op_vec2_f32(-arg_2.xw)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(864f, var_1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, var_1.a.x) * vec2<f32>(arg_0.a.x, -592f)))), var_1.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    global1 = !(!(!(!select(vec2<bool>(global1.x, global2.x), vec2<bool>(false, global1.x), vec2<bool>(true, global2.x)))));
    let var_0 = arg_1;
    let var_1 = 30061u;
    let var_2 = func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(-arg_2.x))), !vec3<bool>(select(func_2(), true, !global2.x), !any(vec2<bool>(false, global2.x)), false), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_0.x) + _wgslsmith_f_op_f32(arg_0.x + -272f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_0.x, global2.x))) + 1088f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(-904f, _wgslsmith_f_op_f32(select(-2902f, -1852f, all(vec4<bool>(true, false, global1.x, false)))), all(select(vec2<bool>(true, global2.x), vec2<bool>(global1.x, global1.x), global2.x))))));
    let var_3 = arg_2;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x + arg_0.x))), -843f)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = vec2<bool>(!any(!vec3<bool>(global2.x, global1.x, global2.x)) && any(!(!vec2<bool>(global2.x, global2.x))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 8361u), 5u)] < _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 1491u, 1844u, 9762u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2114u, 5u)], 5u)], 5u)], 5u)], 55854u, 39593u, 4294967295u)), 5u)] & (global0[_wgslsmith_index_u32(1u, 5u)] | 0u), 5u)], ~(~global0[_wgslsmith_index_u32(12143u, 5u)])));
    global0 = array<u32, 5>();
    var var_0 = arg_0;
    let var_1 = u_input.a.x;
    global0 = array<u32, 5>();
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = ~global0[_wgslsmith_index_u32(32370u, 5u)];
    var var_2 = select(~vec4<u32>(1u, var_1, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(var_1, 5u)], var_1) & 1u, _wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])), ~countOneBits(~vec4<u32>(var_1, global0[_wgslsmith_index_u32(var_1, 5u)], var_1, global0[_wgslsmith_index_u32(var_1, 5u)])), true);
    global2 = vec2<bool>(!(false && (false && global1.x)), global2.x);
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.x, 834f), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, -163f, 600f)) - vec3<f32>(-1072f, 330f, arg_1.x)), 24038u, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-230f * -1000f), _wgslsmith_f_op_f32(round(arg_1.x)), -1000f)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f * arg_0.a.x)), func_5(arg_0).a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_1.x, arg_0.a.x, -617f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1220f, -2317f, arg_0.a.x) + vec4<f32>(arg_0.a.x, arg_1.x, arg_1.x, arg_0.a.x))))));
    return Struct_1(arg_1);
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = arg_2;
    var var_1 = vec3<bool>(true, u_input.a.x <= ((-u_input.a.x | u_input.a.x) & (-u_input.b ^ (-5634i & u_input.a.x))), true);
    var var_2 = arg_0.a.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a));
    var var_4 = Struct_1(vec2<f32>(var_0.a.x, -2218f));
    return 249u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(~u_input.b > 1i));
    var var_1 = vec4<u32>(~min(global0[_wgslsmith_index_u32(1u, 5u)], abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(12634u, 5u)], 4294967295u), vec3<u32>(0u, 56630u, 1u)))), func_7(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1205f, 1952f) * vec2<f32>(908f, -126f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1446f, -1000f))))), false, func_6(func_5(func_1(vec3<f32>(1000f, 514f, -521f), global0[_wgslsmith_index_u32(63926u, 5u)], vec4<f32>(457f, -632f, -149f, 1491f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, 285f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(func_4(Struct_1(vec2<f32>(664f, 1204f)), vec3<bool>(var_0, false, global2.x), vec4<f32>(-128f, 1543f, -1575f, 1286f)).a.x, -735f, -1024f, _wgslsmith_div_f32(-802f, -992f))))), ~global0[_wgslsmith_index_u32(~1u, 5u)], 1u);
    global1 = vec2<bool>(false, any(vec4<bool>(var_0, false, any(vec2<bool>(false, true)), global2.x)));
    let var_2 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-884f, -1896f, -515f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, 1000f, 194f) - vec3<f32>(-765f, 582f, 881f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(524f, 1000f, -950f)), vec3<f32>(1f, 1f, 1f)))), vec3<f32>(1f, 1f, 1f)), 66570u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1313f, _wgslsmith_f_op_f32(round(746f)), _wgslsmith_f_op_f32(1160f + 1385f), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1177f, -1089f, 268f, -284f), vec4<f32>(703f, 1786f, 374f, -114f), true)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1227f, 1168f, 781f), vec4<f32>(-641f, -259f, 1373f, -293f))))))));
    let var_3 = firstTrailingBit(-26079i);
    let var_4 = true;
    var var_5 = !all(vec2<bool>(-32895i > _wgslsmith_mod_i32(var_3, -43785i), true));
    let var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_6(Struct_1(vec2<f32>(-1538f, var_2.a.x)), var_2.a).a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3, var_1.xxw, var_6.a, 19322i);
}

