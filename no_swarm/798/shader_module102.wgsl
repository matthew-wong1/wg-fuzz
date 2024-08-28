struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(1i, vec4<bool>(false, false, false, true), true, false, vec3<bool>(true, false, false)), Struct_2(-33589i, vec4<bool>(true, false, true, false), false, false, vec3<bool>(false, true, false)), Struct_2(-48685i, vec4<bool>(false, false, true, false), true, false, vec3<bool>(true, true, true)), Struct_2(25677i, vec4<bool>(true, true, false, false), true, true, vec3<bool>(false, true, false)), Struct_2(857i, vec4<bool>(false, true, false, false), false, true, vec3<bool>(false, false, true)), Struct_2(2147483647i, vec4<bool>(true, false, true, false), false, false, vec3<bool>(true, false, false)), Struct_2(-41762i, vec4<bool>(false, true, true, false), true, true, vec3<bool>(false, true, true)), Struct_2(-48159i, vec4<bool>(false, false, true, true), false, true, vec3<bool>(false, true, false)), Struct_2(i32(-2147483648), vec4<bool>(true, true, false, false), true, false, vec3<bool>(true, false, false)), Struct_2(63563i, vec4<bool>(false, false, true, true), true, true, vec3<bool>(false, false, true)), Struct_2(0i, vec4<bool>(false, false, true, true), true, false, vec3<bool>(true, true, false)), Struct_2(78103i, vec4<bool>(true, false, true, true), false, true, vec3<bool>(false, false, false)), Struct_2(1i, vec4<bool>(false, false, true, true), false, false, vec3<bool>(false, false, false)), Struct_2(0i, vec4<bool>(false, false, true, false), true, false, vec3<bool>(true, false, true)), Struct_2(-1168i, vec4<bool>(false, true, false, true), true, true, vec3<bool>(false, false, true)), Struct_2(i32(-2147483648), vec4<bool>(false, false, false, true), false, true, vec3<bool>(true, false, false)));

var<private> global2: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(0i, -6229i, 32733i), vec3<i32>(-51937i, -1i, -8185i), vec3<i32>(-48174i, 0i, 55592i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-1i, -10287i, i32(-2147483648)), vec3<i32>(2147483647i, -55102i, -23489i), vec3<i32>(-17612i, 27054i, 0i), vec3<i32>(-39416i, -2861i, -5383i), vec3<i32>(-45326i, 23485i, 20699i), vec3<i32>(17782i, 0i, -25330i), vec3<i32>(-9478i, 26472i, 2147483647i), vec3<i32>(0i, 5762i, 1i), vec3<i32>(22552i, 60619i, 2147483647i), vec3<i32>(8670i, 17791i, -93945i), vec3<i32>(-63554i, 38324i, -3931i), vec3<i32>(-40457i, -44070i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 32039i));

var<private> global3: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global4: array<vec3<f32>, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = array<vec3<bool>, 11>();
    global2 = array<vec3<i32>, 17>();
    global4 = array<vec3<f32>, 18>();
    var var_0 = min(firstTrailingBit(u_input.e.x), 2247u);
    global2 = array<vec3<i32>, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1842f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(563f, -1203f)))))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> i32 {
    global0 = array<vec4<i32>, 32>();
    var var_0 = Struct_1(u_input.e, ~select(-5460i, -_wgslsmith_add_i32(u_input.d, -19532i), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(598f, -1148f, arg_2.c.x))))), arg_2.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.c.x, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(241f, -123f), vec2<f32>(arg_2.d, arg_2.d), vec2<bool>(false, true)))), true)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) * arg_2.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 695f))))));
    let var_1 = true & all(vec2<bool>(60767u != arg_0, false));
    global2 = array<vec3<i32>, 17>();
    global1 = array<Struct_2, 16>();
    return var_0.b << (~var_0.a.x % 32u);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global2 = array<vec3<i32>, 17>();
    global1 = array<Struct_2, 16>();
    global4 = array<vec3<f32>, 18>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yx) + vec2<f32>(arg_1.x, -751f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-764f, -489f), arg_1.zy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1275f)), all(vec2<bool>(arg_2.c.x, true))))))), Struct_4(true), Struct_3(-8695i, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_2.b.x, 0u, u_input.e.x), 55730u, 1u, 1u), ~abs(u_input.e)), vec2<bool>(any(vec4<bool>(arg_0, false, false, false)), any(select(vec4<bool>(false, arg_2.c.x, arg_2.c.x, false), vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_2.c.x, false, false, true)))), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.e.x, 22445u, u_input.a.x)) | vec4<u32>(1u, 1u, 36784u, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, 0u, 35793u, u_input.b.x)))), Struct_4(false));
    var var_1 = reverseBits(abs(abs(min(vec4<u32>(54429u, 19461u, u_input.e.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 40139u), vec4<u32>(4294967295u, arg_2.d.x, 24541u, 63082u), u_input.e)))));
    return Struct_3(1i, vec4<u32>(~63042u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(var_1.yyx, ~vec3<u32>(1u, var_0.c.d.x, 1u))), firstLeadingBit(1u), ~(~countOneBits(arg_2.b.x))), select(select(select(vec2<bool>(arg_2.c.x, true), !arg_2.c, arg_2.c), arg_2.c, select(select(arg_2.c, vec2<bool>(true, true), arg_2.c), vec2<bool>(false, var_0.d.a), !arg_2.c)), select(vec2<bool>(all(global3[_wgslsmith_index_u32(u_input.a.x, 11u)]), select(false, arg_0, arg_2.c.x)), !var_0.c.c, select(arg_2.c.x, select(arg_0, arg_0, false), true)), vec2<bool>(true, true)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.b.x, 56980u), vec2<u32>(4294967295u, u_input.a.x)), ~vec2<u32>(var_0.c.d.x, 0u)), 60413u, _wgslsmith_dot_vec3_u32(abs(arg_2.b.zzy), ~var_1.xyw), 9838u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = ~arg_1.b.x != arg_1.b.x;
    global4 = array<vec3<f32>, 18>();
    let var_1 = vec4<bool>(!arg_0.c.x, !any(select(vec2<bool>(true, arg_0.c.x), vec2<bool>(arg_0.c.x, arg_1.c.x), any(vec4<bool>(arg_0.c.x, true, arg_1.c.x, true)))), all(arg_0.c), true);
    let var_2 = all(vec3<bool>(true | arg_1.c.x, arg_0.c.x, false || all(vec3<bool>(arg_1.c.x, false, arg_1.c.x)))) || any(vec4<bool>(false, true, var_1.x | (true && arg_0.c.x), arg_0.c.x));
    let var_3 = var_1.xxy;
    return arg_0;
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, ~(~u_input.a.x) ^ 2902u), 11u)];
    var var_1 = _wgslsmith_f_op_f32(-620f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1460f, _wgslsmith_f_op_f32(sign(-348f))) - 113f));
    let var_2 = func_5(func_4(arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x > u_input.b.x)), _wgslsmith_f_op_f32(-635f - _wgslsmith_f_op_f32(-451f - -602f)), _wgslsmith_div_f32(-551f, _wgslsmith_f_op_f32(step(-135f, -1019f)))), Struct_3(func_3(~47079u, Struct_4(false), Struct_1(u_input.a, -17078i, global4[_wgslsmith_index_u32(4294967295u, 18u)], -528f, vec2<f32>(292f, -1000f))), u_input.e, vec2<bool>(arg_0.x == true, var_0.x), ~(vec4<u32>(49034u, 1u, 16591u, 27568u) ^ vec4<u32>(u_input.b.x, u_input.e.x, u_input.b.x, u_input.b.x))), ~(i32(-1i) * -38128i) | ~_wgslsmith_mult_i32(u_input.d, 53347i)), func_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1426f, -2166f, 2601f), vec3<f32>(-1087f, 1699f, -1148f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(566f, -122f, -1013f), vec3<f32>(-637f, -620f, -1863f))))), func_4(false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-903f, -744f, -1000f), vec3<f32>(-1134f, 529f, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1039f, 1364f, 631f), global4[_wgslsmith_index_u32(u_input.b.x, 18u)])), false)), func_4(any(vec2<bool>(true, var_0.x)), global4[_wgslsmith_index_u32(u_input.b.x, 18u)], func_4(true, global4[_wgslsmith_index_u32(4294967295u, 18u)], Struct_3(-1i, vec4<u32>(1u, 1u, u_input.e.x, 33288u), arg_0.xw, u_input.a), -25256i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2878i, -15885i), vec2<i32>(u_input.d, 0i))), -1i), _wgslsmith_mult_i32(~(~u_input.d), i32(-1i) * -u_input.d)));
    global0 = array<vec4<i32>, 32>();
    var var_3 = Struct_1(~_wgslsmith_div_vec4_u32(u_input.e, min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 80539u, 0u), vec4<u32>(0u, u_input.e.x, 6950u, 43894u)), vec4<u32>(var_2.b.x, u_input.e.x, var_2.d.x, 68284u) ^ vec4<u32>(var_2.b.x, 4294967295u, u_input.e.x, 1u))), min(-39278i, var_2.a), vec3<f32>(-619f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(582f, 1269f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-971f)), _wgslsmith_f_op_f32(127f - -1000f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1019f)))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.d, var_2.a & 27340i), -(~_wgslsmith_mult_i32(20821i, 10271i)), ~_wgslsmith_add_i32(-29424i, 2137i), -var_2.a), -reverseBits(abs(global0[_wgslsmith_index_u32(71683u, 32u)])) ^ select(~global0[_wgslsmith_index_u32(~4294967295u, 32u)], firstTrailingBit(global0[_wgslsmith_index_u32(7916u, 32u)] & global0[_wgslsmith_index_u32(var_3.a.x, 32u)]), !select(vec4<bool>(false, var_2.c.x, var_2.c.x, true), vec4<bool>(arg_0.x, var_2.c.x, var_2.c.x, var_0.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = ~0u;
    let var_1 = _wgslsmith_mult_vec4_i32(func_1(vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(18803u, 32u)]);
    let var_2 = firstTrailingBit(max(1i, func_1(vec4<bool>(true, true, true, true)).x));
    let var_3 = !(firstLeadingBit(u_input.e.x) > 6428u);
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~60305u >> (_wgslsmith_add_u32(4294967295u, u_input.b.x) % 32u)), firstTrailingBit(~u_input.b.x)) << (_wgslsmith_div_u32(func_5(func_5(Struct_3(-1i, u_input.e, vec2<bool>(var_3, false), vec4<u32>(30909u, 4294967295u, u_input.e.x, 23517u)), Struct_3(-2147483647i, u_input.e, vec2<bool>(var_3, true), vec4<u32>(u_input.a.x, 72342u, u_input.b.x, u_input.a.x))), func_4(var_1.x != var_2, _wgslsmith_f_op_vec3_f32(ceil(global4[_wgslsmith_index_u32(u_input.e.x, 18u)])), Struct_3(var_1.x, u_input.e, vec2<bool>(var_3, var_3), vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u)), -622i)).d.x, 9645u) % 32u), 16u)];
    global4 = array<vec3<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(33430u, 1u, u_input.e.x), vec3<u32>(u_input.e.x, u_input.b.x, 30097u)) & 15481u), 17u)] | ~vec3<i32>(-2147483647i, 44407i, _wgslsmith_mod_i32(1i, var_4.a)));
}

