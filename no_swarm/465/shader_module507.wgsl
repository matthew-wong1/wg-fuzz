struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false));

var<private> global1: array<f32, 8>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, 9335i, -19930i, 48067i);

var<private> global3: array<Struct_3, 5>;

var<private> global4: f32 = 233f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(67554u, 8u)])));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(22117u, 8u)])))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~1u, 8u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(21207u, 8u)]), global1[_wgslsmith_index_u32(7705u, 8u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(30016u, 8u)], global1[_wgslsmith_index_u32(16168u, 8u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(0u, 8u)], -548f, 1586f, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<f32>(global1[_wgslsmith_index_u32(29360u, 8u)], -1956f, 3061f, global1[_wgslsmith_index_u32(38682u, 8u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(35853u, 8u)], -374f, global1[_wgslsmith_index_u32(0u, 8u)], -376f), vec4<f32>(-869f, 229f, 1000f, global1[_wgslsmith_index_u32(36564u, 8u)]))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(27096u, 8u)], 1274f, -524f, 512f)))))));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(29044u), 32u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, 1248f, global1[_wgslsmith_index_u32(18872u, 8u)], 1182f)))))), ~42736u, ~u_input.b);
    var var_4 = min(~abs(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, var_3.b), vec2<u32>(1u, 32583u), vec2<bool>(var_2.a, var_2.a)), reverseBits(vec2<u32>(8963u, 4294967295u)), ~vec2<u32>(36114u, var_3.b))), _wgslsmith_sub_vec2_u32(firstTrailingBit(firstLeadingBit(~vec2<u32>(0u, 75732u))), select(select(vec2<u32>(0u, var_3.b), vec2<u32>(var_3.b, var_3.b), vec2<bool>(var_2.a, false)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.b, 4294967295u), vec2<u32>(43811u, 26026u) ^ vec2<u32>(var_3.b, 10u)), var_2.a)));
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_3.b, 39139u), ~var_3.b), var_4.x), var_4.x) >> (1u % 32u);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2332f, -1000f)) + _wgslsmith_f_op_f32(select(1993f, -601f, true)))), _wgslsmith_div_f32(-626f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)] - -1317f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(42073u, 8u)], -1159f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(58347u, 8u)] + global1[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10023u, 8u)] - global1[_wgslsmith_index_u32(92759u, 8u)]), -1309f)) - -1604f)), ~(1u | (_wgslsmith_dot_vec3_u32(vec3<u32>(55536u, 32120u, 32584u), vec3<u32>(19608u, 108973u, 37610u)) ^ func_3())), u_input.d.x);
    var var_1 = var_0.a.zz;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global1[_wgslsmith_index_u32(1u, 8u)])), -790f)));
    let var_2 = global3[_wgslsmith_index_u32(var_0.b, 5u)];
    let var_3 = ~1u;
    return u_input.b;
}

fn func_1() -> Struct_3 {
    var var_0 = -1i <= func_2();
    global3 = array<Struct_3, 5>();
    var_0 = all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(true, all(vec2<bool>(true, false)))));
    let var_1 = vec4<bool>(false, -1826f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-130f + -201f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 8u)]))) * global1[_wgslsmith_index_u32(12122u, 8u)]), all(vec3<bool>(select(false, false, true), true, true)) | false, !(!(!any(vec3<bool>(true, false, true)))));
    var var_2 = Struct_2(all(var_1.yyx));
    return Struct_3(global0[_wgslsmith_index_u32(~(~firstTrailingBit(17396u) & _wgslsmith_sub_u32(abs(1u), abs(1u))), 32u)], -1913f, u_input.a, -249f, abs(u_input.e));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = true;
    var var_1 = global3[_wgslsmith_index_u32(25466u, 5u)];
    global3 = array<Struct_3, 5>();
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    return func_1().a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b * 727f))) + _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(-arg_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 8u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, arg_0.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 8u)] * _wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_mod_u32(arg_1.b, ~(~_wgslsmith_div_u32(arg_1.b, arg_1.b))), arg_0.c);
    let var_1 = func_1().a;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.b - var_0.a.x), -1106f);
    var var_3 = Struct_2(true);
    global3 = array<Struct_3, 5>();
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = vec2<u32>(13844u, max(~(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(24816u, 0u, 0u), vec3<u32>(53698u, 89088u, 0u))), 34441u));
    global0 = array<Struct_2, 32>();
    global2 = _wgslsmith_div_vec4_i32(arg_0.e, ~(func_1().e << (max(~vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u), ~vec4<u32>(var_0.x, 1u, var_0.x, 43551u)) % vec4<u32>(32u))));
    var var_1 = arg_0.a;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1801f)));
    return _wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -51127i, func_1().e.x, ~(i32(-1i) * -arg_1.c)), vec4<i32>(arg_0.c, -global2.x, 34580i, global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(Struct_3(func_4(func_1()), global1[_wgslsmith_index_u32(~0u, 8u)], _wgslsmith_mod_i32(u_input.e.x, _wgslsmith_div_i32(2147483647i, global2.x)), -2689f, ~vec4<i32>(15187i, -2147483647i, global2.x, -1i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(0u, 8u)], -1404f, -101f, global1[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(1220f, -258f, -1774f, 173f)))), 0u, max(-35399i, abs(1i))), -u_input.c), Struct_3(func_5(func_5(func_5(global3[_wgslsmith_index_u32(24555u, 5u)], Struct_1(vec4<f32>(-698f, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], -1119f), 0u, global2.x), u_input.e.x), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(94053u, 8u)], -2563f, global1[_wgslsmith_index_u32(7820u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), 4294967295u, 7900i), firstLeadingBit(u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-125f, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(60202u, 8u)], global1[_wgslsmith_index_u32(2832u, 8u)]))), 4294967295u, abs(global2.x)), func_2()).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 8u)] * global1[_wgslsmith_index_u32(68346u, 8u)])), u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-962f - global1[_wgslsmith_index_u32(29020u, 8u)]) + 1147f))), vec4<i32>(func_5(global3[_wgslsmith_index_u32(1u, 5u)], Struct_1(vec4<f32>(-1445f, -316f, -373f, global1[_wgslsmith_index_u32(138164u, 8u)]), 38402u, u_input.c), -global2.x).c, (i32(-1i) * -1i) | ~u_input.d.x, global2.x, ~u_input.c)), func_1().e.zzx);
    global1 = array<f32, 8>();
    var var_0 = _wgslsmith_add_i32(-abs(global2.x), 34705i);
    global2 = u_input.e;
    global3 = array<Struct_3, 5>();
    global0 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_3()), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(16782u, 1u)), 1u, 0u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(799f, 2718f, 1271f, global1[_wgslsmith_index_u32(0u, 8u)]))), vec4<f32>(464f, global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], 880f), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(35033u, 8u)], 362f, 146f, global1[_wgslsmith_index_u32(50146u, 8u)]), vec4<f32>(global1[_wgslsmith_index_u32(4560u, 8u)], 591f, global1[_wgslsmith_index_u32(63561u, 8u)], -716f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 240f, 1038f, global1[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(1538f, global1[_wgslsmith_index_u32(0u, 8u)], 741f, global1[_wgslsmith_index_u32(1u, 8u)]))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-375f, -698f, 1621f, global1[_wgslsmith_index_u32(1u, 8u)]) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], 1000f, 1000f, global1[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], 1004f, global1[_wgslsmith_index_u32(4294967295u, 8u)], 634f))))))), firstLeadingBit(u_input.e), _wgslsmith_sub_i32(u_input.d.x ^ ~_wgslsmith_div_i32(24652i, u_input.d.x), u_input.a));
}

