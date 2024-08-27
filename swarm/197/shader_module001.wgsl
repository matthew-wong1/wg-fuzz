struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global1: Struct_1;

var<private> global2: vec3<u32>;

var<private> global3: f32 = -1000f;

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    global3 = -560f;
    global0 = array<bool, 4>();
    var var_0 = arg_0;
    global1 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-919f, 887f, -539f, 274f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(278f, 800f, -408f, 528f), vec4<f32>(-1858f, 1308f, -1677f, -788f)))), !global0[_wgslsmith_index_u32(23878u, 4u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(853f, 1055f), -1925f, _wgslsmith_f_op_f32(351f + 1504f), 119f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1132f, 1253f, -813f, 263f))))));
    return 739f;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> f32 {
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global4.a.a, arg_1.x, vec3<u32>(global1.c.x, 4294967295u, global4.a.c.x), 42147u, global0[_wgslsmith_index_u32(global2.x, 4u)]), arg_0)) + _wgslsmith_f_op_f32(-2073f - 928f))))))));
    global1 = Struct_1(u_input.a, all(vec2<bool>(global1.b && (u_input.a == u_input.a), true)), ~vec3<u32>(global4.b, global1.c.x, global1.d), abs(_wgslsmith_mult_u32(~_wgslsmith_div_u32(global2.x, 1u), ~reverseBits(20361u))), arg_1.x);
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(1i, arg_0.x, -1i, 1i)), countOneBits(abs(select(vec4<i32>(-16594i, global1.a, 0i, global1.a), vec4<i32>(-1i, global1.a, arg_0.x, global1.a), arg_1.x)))), ~vec4<i32>(u_input.a, ~abs(2147483647i), _wgslsmith_clamp_i32(global1.a, -20762i, -29590i >> (global4.a.c.x % 32u)), _wgslsmith_dot_vec2_i32(arg_0.yy | arg_0.yz, vec2<i32>(-56911i, global1.a))));
    let var_1 = ~abs(~global1.c.x);
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(abs(1000f));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 413f, _wgslsmith_f_op_f32(func_2(vec3<i32>(1i, -1i, arg_1.x), select(vec3<bool>(global4.a.e, true, global4.a.b), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.d, 4u)], true), true)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1060f))))))));
    global2 = min(vec3<u32>(global2.x, 1u, 1u) >> (global1.c % vec3<u32>(32u)), ~(~global1.c)) >> (_wgslsmith_div_vec3_u32(global1.c, ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.b, global4.b, global1.d), vec4<u32>(1u, 1u, global4.a.c.x, global1.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.d), global2.zy), _wgslsmith_sub_u32(global2.x, global2.x))) % vec3<u32>(32u));
    global0 = array<bool, 4>();
    global2 = vec3<u32>(global1.c.x, 6135u, countOneBits(~(global2.x & 13655u))) ^ vec3<u32>(global4.a.c.x, ~_wgslsmith_clamp_u32(global1.c.x, ~4538u, 1u), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(29870u, global2.x), 64265u));
    global0 = array<bool, 4>();
    return Struct_2(Struct_1(1i, arg_2, abs(global1.c), 1u, true), _wgslsmith_mod_u32(countOneBits(countOneBits(~56704u)), global4.a.c.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1396f * -619f))) - -2078f))), -277f);
    global3 = _wgslsmith_f_op_f32(func_3(Struct_1(~(-(-2147483647i >> (arg_0.b % 32u))), all(vec2<bool>(all(vec3<bool>(arg_0.a.e, true, global4.a.e)), global0[_wgslsmith_index_u32(countOneBits(arg_0.b), 4u)])), arg_0.a.c, ~countOneBits(arg_0.b), !(_wgslsmith_add_u32(0u, global4.b) > 1u)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-select(vec3<i32>(25757i, global1.a, global4.a.a), vec3<i32>(arg_0.a.a, u_input.a, u_input.a), true), ~vec3<i32>(5626i, global4.a.a, u_input.a) & ~vec3<i32>(22866i, u_input.a, 1i)), vec3<i32>(_wgslsmith_div_i32(global1.a, -3405i) & 1i, global4.a.a, -_wgslsmith_clamp_i32(global4.a.a, 2147483647i, 0i)))));
    var var_1 = arg_0.a.d;
    let var_2 = !select(global4.a.e, !(!any(vec2<bool>(arg_0.a.e, global0[_wgslsmith_index_u32(1u, 4u)]))), true);
    global0 = array<bool, 4>();
    return Struct_2(Struct_1(func_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -1159f, _wgslsmith_f_op_f32(-1000f * 1176f)), ~abs(vec3<i32>(global4.a.a, -56722i, global4.a.a)), (var_0.x < var_0.x) || (u_input.a < global4.a.a)).a.a, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.d, 0u), 4u)], global1.c, ~global4.a.d, true), _wgslsmith_sub_u32(max(global4.a.d, global1.c.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.a.c.x, 0u), 1u)) ^ _wgslsmith_dot_vec4_u32(~min(vec4<u32>(28085u, 1u, 1u, 0u), vec4<u32>(global4.a.c.x, global2.x, 21189u, 4294967295u)), firstLeadingBit(vec4<u32>(arg_0.b, global2.x, 1u, global1.d) << (vec4<u32>(global4.b, global4.b, 33969u, arg_0.b) % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = Struct_1(-2861i, all(!vec2<bool>(global1.b, true)) != false, ~(~firstTrailingBit(func_1(vec4<f32>(868f, 1004f, 1000f, 689f), vec3<i32>(0i, 1i, arg_2.a), true).a.c)), 20981u, global4.a.e);
    global2 = global4.a.c;
    global0 = array<bool, 4>();
    let var_0 = Struct_2(func_4(func_4(Struct_2(arg_0.a, firstLeadingBit(global4.b)))).a, global2.x);
    var var_1 = vec2<i32>(u_input.a, arg_0.a.a);
    return Struct_1(var_0.a.a, true, vec3<u32>(1u, arg_0.b, 0u), (~4294967295u | var_0.a.c.x) << (global2.x % 32u), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1509f, 1452f, 1714f, 2016f), vec4<f32>(1000f, 757f, -1000f, -518f))) - vec4<f32>(318f, -1018f, 307f, -301f)), max(vec3<i32>(-20127i, 29763i, global1.a), _wgslsmith_div_vec3_i32(vec3<i32>(global1.a, u_input.a, -10529i), vec3<i32>(global4.a.a, global1.a, global1.a))), all(vec4<bool>(true, global1.e, global1.e, true)))), func_4(Struct_2(global4.a, 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.c.x, 8915u, global1.d, global2.x), vec4<u32>(29639u, 10608u, global4.a.c.x, 11919u)))), global4.a, global4.a);
    let var_1 = func_5(Struct_2(Struct_1(global1.a, global4.a.e, global1.c, 0u, !global0[_wgslsmith_index_u32(func_1(vec4<f32>(309f, -868f, 1339f, -1645f), vec3<i32>(u_input.a, 2147483647i, global4.a.a), false).a.d, 4u)]), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -716f, -754f, -1272f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, 174f, -201f, -497f))), (vec3<i32>(2147483647i, 43317i, u_input.a) | vec3<i32>(u_input.a, 2147483647i, 0i)) << (var_0.c % vec3<u32>(32u)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1865f, 1159f, -1200f, -1014f) + vec4<f32>(287f, 240f, 554f, -441f)), min(vec3<i32>(global1.a, -1861i, -1i), vec3<i32>(-23828i, -29934i, global4.a.a)), global4.a.e).a.b).b), Struct_2(Struct_1(var_0.a, true, abs(max(global1.c, global1.c)), 0u, var_0.b), _wgslsmith_mod_u32(~1u, 4294967295u) ^ global1.c.x), func_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(181f, 266f, -524f, -701f) + vec4<f32>(975f, 1021f, -590f, -419f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-605f, 2581f, -1829f, -1005f)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.a.a, global4.a.a, 7596i), vec3<i32>(-2147483647i, var_0.a, u_input.a) & vec3<i32>(var_0.a, -46802i, -17559i), select(vec3<i32>(u_input.a, global4.a.a, -31379i), vec3<i32>(u_input.a, global4.a.a, global4.a.a), vec3<bool>(global0[_wgslsmith_index_u32(47142u, 4u)], false, true))), true)).a, func_5(func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-2123f)), _wgslsmith_div_f32(1155f, -646f), _wgslsmith_f_op_f32(trunc(2319f)), _wgslsmith_f_op_f32(func_3(global4.a, vec3<i32>(15009i, var_0.a, 2147483647i)))), (vec3<i32>(13534i, global1.a, global4.a.a) | vec3<i32>(var_0.a, -8463i, u_input.a)) >> ((vec3<u32>(global2.x, 0u, 62727u) & vec3<u32>(global2.x, 4294967295u, var_0.c.x)) % vec3<u32>(32u)), !any(vec4<bool>(global1.e, global4.a.b, var_0.e, true))), Struct_2(func_4(Struct_2(global4.a, global1.c.x)).a, global4.b), global4.a, global4.a));
    global2 = ~select(var_1.c, vec3<u32>(global2.x, _wgslsmith_div_u32(max(global1.d, 13682u), ~var_0.d), select(_wgslsmith_clamp_u32(var_1.d, 1u, 0u), ~global1.c.x, all(vec4<bool>(false, false, false, false)))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(vec4<f32>(-582f, 208f, -702f, 1230f), vec3<i32>(-2169i, var_1.a, global1.a), true).b, 26266u), 4u)], var_1.b, true));
    let var_2 = global1.a;
    global1 = func_1(vec4<f32>(_wgslsmith_f_op_f32(2232f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(global1.a, -44498i, 0i), vec3<bool>(var_0.b, false, false))))), _wgslsmith_f_op_f32(305f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-592f - 745f) + -670f)), _wgslsmith_f_op_f32(func_3(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1288f, -1000f, 959f) * vec4<f32>(1035f, 158f, -824f, -936f)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 47653i, u_input.a), vec3<i32>(global1.a, -1i, -17935i)), all(vec2<bool>(true, true))).a, vec3<i32>(abs(global4.a.a), _wgslsmith_mult_i32(-3130i, 2508i), firstTrailingBit(19759i)))), _wgslsmith_f_op_f32(func_3(func_5(func_1(vec4<f32>(-1000f, 1088f, 1314f, -689f), vec3<i32>(u_input.a, var_1.a, -2147483647i), true), func_1(vec4<f32>(212f, -920f, 350f, 787f), vec3<i32>(var_1.a, global4.a.a, var_0.a), global4.a.e), func_4(Struct_2(var_1, global4.b)).a, Struct_1(-1i, true, vec3<u32>(14445u, global1.d, global4.a.c.x), global4.b, false)), -vec3<i32>(-36409i, -2147483647i, -9642i)))), -vec3<i32>(global1.a, func_5(Struct_2(var_1, 0u), func_1(vec4<f32>(1000f, 1063f, -289f, -1140f), vec3<i32>(u_input.a, global1.a, var_1.a), true), func_1(vec4<f32>(206f, 1000f, 1200f, 1046f), vec3<i32>(global4.a.a, global1.a, 40511i), true).a, func_5(Struct_2(Struct_1(-25849i, true, global4.a.c, var_0.d, true), 10871u), Struct_2(global4.a, 47727u), global4.a, Struct_1(global1.a, var_0.b, vec3<u32>(9789u, global4.b, 4294967295u), var_1.d, true))).a, _wgslsmith_clamp_i32(-1i, var_0.a ^ -32940i, -16510i | u_input.a)), all(select(vec2<bool>(!global1.b, any(vec4<bool>(true, global4.a.e, global0[_wgslsmith_index_u32(1u, 4u)], true))), select(vec2<bool>(global1.e, var_1.e), vec2<bool>(global1.b, false), true), any(vec4<bool>(true, global0[_wgslsmith_index_u32(global1.c.x, 4u)], false, true))))).a;
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, 180f, 189f, 551f) - vec4<f32>(2573f, 259f, 521f, 495f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(995f, -487f, -139f, -1729f) * vec4<f32>(-1000f, 2311f, 1672f, -800f))))), vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(global4.a.a, -51262i, -23042i), vec3<i32>(var_1.a, global1.a, -71503i)), vec3<bool>(false, global0[_wgslsmith_index_u32(10857u, 4u)], true))), -149f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-779f, -1006f) * -393f), _wgslsmith_div_f32(2103f, _wgslsmith_div_f32(-745f, 2279f))))), firstLeadingBit(abs(select(vec3<i32>(1i, global1.a, -2773i) >> (vec3<u32>(var_1.c.x, var_0.c.x, var_1.c.x) % vec3<u32>(32u)), -vec3<i32>(global1.a, global4.a.a, u_input.a), true & global1.b))), true).a;
    let var_3 = select(!select(vec3<bool>(var_0.a > global4.a.a, all(vec3<bool>(true, false, false)), true), !vec3<bool>(var_0.b, var_1.e, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 4u)], true)), select(select(vec3<bool>(all(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(7867u, 4u)])), true && global0[_wgslsmith_index_u32(global2.x, 4u)], select(true, var_0.e, global4.a.e)), vec3<bool>(true, !global0[_wgslsmith_index_u32(global1.d, 4u)], any(vec3<bool>(global4.a.e, true, global1.b))), true), vec3<bool>(true, true, func_4(Struct_2(Struct_1(global4.a.a, false, vec3<u32>(28337u, var_1.d, 86649u), global4.a.c.x, var_0.b), global4.b)).a.e), all(vec2<bool>(true, global1.e))), !global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-188f, _wgslsmith_f_op_f32(max(1331f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1633f * 629f), _wgslsmith_f_op_f32(max(-181f, 1484f))))), 945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - 1869f))), 155f, var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -458f), -398f, 1u == var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

