struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: Struct_1 = Struct_1(false, vec3<i32>(53984i, -12369i, -66998i), 1u, -1172f, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(-461f, _wgslsmith_f_op_f32(min(-908f, global1.d)));
    global0 = array<bool, 15>();
    let var_1 = ~countOneBits(countOneBits((arg_2.x << (4294967295u % 32u)) << (_wgslsmith_mod_u32(u_input.a.x, arg_1.x) % 32u)));
    var var_2 = Struct_1(all(vec4<bool>(all(select(vec2<bool>(global1.a, true), vec2<bool>(false, global1.e), vec2<bool>(false, true))), any(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_1, 15u)]), vec4<bool>(global1.a, true, global1.e, true), true)), global0[_wgslsmith_index_u32(89340u, 15u)], global1.e)), firstLeadingBit(min(-vec3<i32>(arg_0.x, 48930i, 58802i) >> (vec3<u32>(arg_2.x, 97782u, u_input.a.x) % vec3<u32>(32u)), arg_0)), max(4294967295u, _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(1u, global1.c, arg_1.x, arg_2.x))) >> (~global1.c % 32u), var_0, all(select(vec2<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)])), true), vec2<bool>(!global0[_wgslsmith_index_u32(8584u, 15u)], true), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 15u)]), vec2<bool>(global1.a, false), global0[_wgslsmith_index_u32(32703u, 15u)]))));
    var_2 = Struct_1(any(vec4<bool>(true, global1.d < 484f, false, firstTrailingBit(1i) >= 2147483647i)), ~var_2.b, _wgslsmith_dot_vec4_u32(select(countOneBits(u_input.a) << (countOneBits(u_input.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(27792u, u_input.a.x), abs(var_2.c), arg_2.x, ~10969u), select(select(vec4<bool>(var_2.e, true, global1.a, true), vec4<bool>(global1.a, true, global1.e, global1.e), global1.e), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 15u)], true, false), vec4<bool>(global1.e, false, false, global0[_wgslsmith_index_u32(var_2.c, 15u)]), false), true)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(4294967295u), ~21149u, 23916u, ~u_input.a.x), vec4<u32>(global1.c, 0u, 14508u, 0u) | ~u_input.a)), -1115f, !(!select(true, true & global0[_wgslsmith_index_u32(0u, 15u)], var_2.e)));
    return vec3<bool>(!global0[_wgslsmith_index_u32(abs(max(~78792u, ~arg_1.x)), 15u)], global1.a, true && !(898f < _wgslsmith_f_op_f32(select(414f, var_0, false))));
}

fn func_2() -> vec4<u32> {
    global0 = array<bool, 15>();
    let var_0 = Struct_1(any(select(!func_3(vec3<i32>(u_input.b.x, u_input.b.x, -1i), u_input.a.yzw, u_input.a.wwz), vec3<bool>(select(global1.e, false, global1.e), all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(16387u, 15u)], false)), global1.e), vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(2821u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), global0[_wgslsmith_index_u32(1u, 15u)] || false, global1.e))), ~vec3<i32>(13866i, 1i, -(2147483647i | global1.b.x)), ~(~4294967295u), global1.d, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~1u, ~_wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(4631u, global1.c, 0u)), 1u, countOneBits(1u))), 15u)]);
    var var_1 = !(!vec4<bool>(true, !(!global1.a), false, global1.a));
    var_1 = vec4<bool>(any(func_3(vec3<i32>(40886i, -1i, 19147i), vec3<u32>(var_0.c, u_input.a.x, global1.c) ^ vec3<u32>(4294967295u, 1u, 20326u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) << (u_input.a.zyz % vec3<u32>(32u))).zx) & var_1.x, !any(var_1.wx), !any(vec2<bool>(true, true)), var_0.e);
    let var_2 = Struct_2(max(~(abs(u_input.b.yx) << (~u_input.a.yw % vec2<u32>(32u))), min(abs(vec2<i32>(-1i, var_0.b.x)), countOneBits(select(var_0.b.yy, global1.b.yx, vec2<bool>(false, var_1.x))))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-322f, var_0.d, _wgslsmith_f_op_f32(ceil(var_0.d))))), Struct_1(all(!vec4<bool>(false, global1.e, global1.e, global0[_wgslsmith_index_u32(54108u, 15u)])), vec3<i32>(i32(-1i) * -1i, 15902i, global1.b.x), _wgslsmith_clamp_u32(~63042u, _wgslsmith_mod_u32(abs(var_0.c), ~4294967295u), _wgslsmith_mult_u32(80728u, var_0.c) << ((global1.c & 64185u) % 32u)), _wgslsmith_f_op_f32(1339f * 2393f), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 28372u) << (vec2<u32>(var_0.c, 1u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(var_0.c, global1.c)))), 15u)]));
    return vec4<u32>(_wgslsmith_mult_u32((~16052u & var_2.d.c) | _wgslsmith_sub_u32(global1.c | 73667u, firstTrailingBit(global1.c)), var_0.c), _wgslsmith_dot_vec3_u32(u_input.a.yyz, u_input.a.yzx), var_0.c, ~4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    let var_0 = any(!(!vec2<bool>(arg_2, 0u < arg_1.b)));
    var var_1 = ~(arg_1.d.b ^ global1.b);
    var var_2 = arg_1;
    var var_3 = Struct_1(true, global1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_2.b, ~abs(arg_1.d.c), select(20006u, var_2.b, true) << (_wgslsmith_div_u32(global1.c, 1u) % 32u)), select(firstTrailingBit(countOneBits(vec4<u32>(0u, u_input.a.x, 1u, 0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.c, 4294967295u, var_2.d.c, arg_1.d.c), u_input.a), !(var_0 && false))), _wgslsmith_f_op_f32(step(156f, _wgslsmith_f_op_f32(min(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-347f))))))), global1.e == all(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    var_1 = arg_1.d.b;
    return _wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(~global1.c, ~19648u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.zx), _wgslsmith_add_u32(26130u, var_2.d.c))), ~_wgslsmith_sub_vec4_u32(u_input.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d.c, 4294967295u, u_input.a.x, 4294967295u), u_input.a)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>) -> bool {
    global0 = array<bool, 15>();
    let var_0 = -_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, u_input.b.x), vec3<i32>(global1.b.x, -14784i, global1.b.x)), vec3<i32>(reverseBits(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1917i, global1.b.x, 1i), vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -23180i)), abs(u_input.b.x))) << (~arg_1.yxz % vec3<u32>(32u));
    let var_1 = Struct_3(717f, Struct_1(global1.e, reverseBits(-(var_0 >> (u_input.a.zxz % vec3<u32>(32u)))), 19916u, global1.d, any(vec2<bool>(global1.e, all(vec4<bool>(global1.e, true, global0[_wgslsmith_index_u32(1u, 15u)], false))))), global1.d, _wgslsmith_mult_vec3_u32(~arg_1.wwx, vec3<u32>(10041u, min(countOneBits(7602u), _wgslsmith_mult_u32(arg_1.x, global1.c)), 77146u)), Struct_2(~var_0.xy, global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1794f)), _wgslsmith_f_op_f32(trunc(global1.d)), _wgslsmith_f_op_f32(step(268f, 1065f)))), Struct_1(true, u_input.b, ~(~0u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d)), all(select(vec3<bool>(global0[_wgslsmith_index_u32(479u, 15u)], false, false), vec3<bool>(false, true, false), arg_0.x)))));
    global0 = array<bool, 15>();
    var var_2 = var_1.e;
    return global1.a;
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.b.x;
    var var_1 = global1.c;
    var var_2 = select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxz, ~select(vec3<u32>(1u, global1.c, u_input.a.x), u_input.a.xxy, vec3<bool>(global1.a, true, false))), 15u)], false, global1.e), vec3<bool>(global1.e == true, 2147483647i >= (_wgslsmith_clamp_i32(global1.b.x, 49472i, var_0) ^ var_0), func_5(vec2<bool>(true, global1.e), func_4(func_2(), Struct_2(vec2<i32>(global1.b.x, var_0), 6149u, vec3<f32>(-233f, 478f, -872f), Struct_1(global0[_wgslsmith_index_u32(13188u, 15u)], vec3<i32>(u_input.b.x, 25925i, var_0), 4294967295u, -441f, false)), any(vec4<bool>(global0[_wgslsmith_index_u32(global1.c, 15u)], global0[_wgslsmith_index_u32(74328u, 15u)], global1.a, true))))), vec3<bool>(_wgslsmith_f_op_f32(global1.d + -444f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(821f - global1.d))), false, global0[_wgslsmith_index_u32(20064u, 15u)]));
    var var_3 = vec3<bool>(!global1.a, all(select(vec4<bool>(global0[_wgslsmith_index_u32(func_4(vec4<u32>(u_input.a.x, 4294967295u, 55540u, 4294967295u), Struct_2(vec2<i32>(2147483647i, 0i), u_input.a.x, vec3<f32>(1519f, 781f, 1392f), Struct_1(true, vec3<i32>(-1974i, var_0, var_0), u_input.a.x, global1.d, true)), true).x, 15u)], false, all(vec4<bool>(false, false, true, global1.a)), false), vec4<bool>(global1.e, global1.a, true, true), vec4<bool>(var_2.x, !var_2.x, true, false))), true);
    let var_4 = 45138u;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(867f))))) * -1000f), Struct_1((global1.d != global1.d) != !(true & global1.e), reverseBits(vec3<i32>(-1i) * -vec3<i32>(2147483647i, global1.b.x, -1i)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - 345f)), all(vec4<bool>(all(vec3<bool>(false, true, true)), global1.e, !global0[_wgslsmith_index_u32(55686u, 15u)], global0[_wgslsmith_index_u32(min(4294967295u, 4294967295u), 15u)]))), 1f, min(u_input.a.zyx, vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 1u) >> (2860u % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4, global1.c, u_input.a.x), u_input.a.yww), var_4), var_4 | (var_4 | u_input.a.x))), Struct_2(u_input.b.xz, ~max(u_input.a.x | var_4, global1.c), vec3<f32>(_wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(trunc(global1.d))), -1245f, -693f), Struct_1(!(!global0[_wgslsmith_index_u32(4294967295u, 15u)]), global1.b, abs(select(1u, 46592u, true)), -1000f, !all(vec4<bool>(var_3.x, false, false, false)))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_3 {
    global0 = array<bool, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * -1535f) * _wgslsmith_f_op_f32(-global1.d)));
    global0 = array<bool, 15>();
    let var_1 = _wgslsmith_f_op_f32(var_0 * arg_0.b.d);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f * _wgslsmith_f_op_f32(min(arg_0.b.d, _wgslsmith_f_op_f32(-global1.d)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(747f)))) + arg_0.c)), Struct_1(!any(vec3<bool>(false, global1.a, true)), abs(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, arg_0.b.b.x, 1i), vec4<i32>(-35750i, 15346i, -43772i, -2147483647i)), ~arg_0.b.b.x)), arg_0.b.c, _wgslsmith_f_op_f32(abs(-1348f)), select(all(vec4<bool>(arg_1.x, false, false, false)), false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.x, 4294967295u), 15u)]) && arg_0.e.d.e), _wgslsmith_f_op_f32(-349f * -1022f), ~vec3<u32>(1u, max(~global1.c, ~global1.c), _wgslsmith_sub_u32(func_2().x, ~0u)), func_1().e);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(), vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(countOneBits(18782u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, global1.c)), 15u)], !any(vec3<bool>(global1.a, global1.a, global1.e)), true), firstTrailingBit(u_input.a.zyx));
    let var_1 = var_0.b;
    let var_2 = vec3<f32>(-1443f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.b.d))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-648f)))));
    let var_3 = var_1;
    global1 = Struct_1(var_1.e, ~abs(-vec3<i32>(var_0.b.b.x, var_3.b.x, 13247i)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1602f))), true);
    let var_4 = Struct_1(!var_3.a, -vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.b.x) | -49744i, 1i, var_3.b.x), ~min((var_0.d.x | 24595u) ^ 34740u, 57956u), var_3.d, true);
    let var_5 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.x, ~(-1i), _wgslsmith_mod_i32(1i, 1i)), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-47312i, var_0.e.a.x, global1.b.x, 20890i), vec4<i32>(14263i, -661i, u_input.b.x, u_input.b.x)), abs(-11114i))), var_3.b, select(~vec3<i32>(1i, var_3.b.x, global1.b.x), vec3<i32>(_wgslsmith_mod_i32(global1.b.x, var_4.b.x), -8051i, u_input.b.x), !(false | var_3.a)) << ((_wgslsmith_mult_vec3_u32(func_6(Struct_3(var_4.d, Struct_1(var_4.e, var_4.b, u_input.a.x, -1000f, false), global1.d, var_0.d, Struct_2(var_0.e.a, var_0.b.c, var_0.e.c, var_0.e.d)), vec3<bool>(var_3.e, var_4.e, true), vec3<u32>(19137u, 18651u, 13348u)).d, vec3<u32>(var_0.d.x, var_1.c, u_input.a.x)) >> (u_input.a.yxw % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_6 = var_3;
    var var_7 = vec4<bool>(!(var_4.a || (false == global1.a)), var_1.c <= 4294967295u, any(!select(vec2<bool>(var_4.e, true), !vec2<bool>(global1.e, var_3.a), !vec2<bool>(var_6.a, global0[_wgslsmith_index_u32(2822u, 15u)]))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-499i, _wgslsmith_f_op_f32(-global1.d), global1.b.x);
}

