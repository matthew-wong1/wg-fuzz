struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-277f, 187f, 1000f, 1000f, -833f, 1490f);

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-7967i, i32(-2147483648), -1i, 0i), vec4<i32>(-1i, -21950i, 1i, 18890i), vec4<i32>(0i, 2147483647i, 16781i, 2147483647i), vec4<i32>(2147483647i, 22854i, 17690i, i32(-2147483648)), vec4<i32>(-1i, -1i, 0i, -47100i), vec4<i32>(-1i, 13229i, -30891i, -1i), vec4<i32>(0i, 9057i, 48590i, -49537i), vec4<i32>(1i, 7401i, 2147483647i, 21025i), vec4<i32>(i32(-2147483648), -33507i, 19797i, -42758i), vec4<i32>(-53231i, -1i, 1i, 0i), vec4<i32>(-9538i, 89764i, 34819i, 47618i), vec4<i32>(-1i, 0i, -24685i, i32(-2147483648)), vec4<i32>(1i, 35415i, 77659i, -1i), vec4<i32>(-1i, 0i, 1i, -8900i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    global1 = array<vec4<i32>, 14>();
    global1 = array<vec4<i32>, 14>();
    let var_0 = arg_1.c;
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), ~(~(~27928u))), _wgslsmith_clamp_i32(firstLeadingBit(max(_wgslsmith_add_i32(arg_2.e, u_input.b.x), -arg_0.x)), arg_2.e, firstLeadingBit(min(arg_1.e, reverseBits(-18617i)))));
    let var_2 = _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 14u)], ~vec4<i32>(min(arg_1.e, 42244i) & -u_input.b.x, ~(-7162i), ~1198i, _wgslsmith_dot_vec2_i32(arg_0.yw, u_input.c.zx) & -13810i));
    return ~vec2<u32>(abs(97370u), arg_2.b);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = Struct_1(vec2<u32>(select(_wgslsmith_div_u32(max(u_input.a, 4294967295u), u_input.a), _wgslsmith_mod_u32(u_input.a, 47942u >> (u_input.a % 32u)), arg_0.x), 0u), -((0i ^ (-7353i | var_0)) | min(1i, ~u_input.c.x)));
    global0 = array<f32, 6>();
    var var_2 = false;
    var var_3 = Struct_1(~(abs(vec2<u32>(0u, var_1.a.x)) << (func_3(abs(global1[_wgslsmith_index_u32(33537u, 14u)]), Struct_3(u_input.a, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], 1327f, 1415f), vec3<u32>(var_1.a.x, u_input.a, var_1.a.x), -47499i), Struct_3(4294967295u, 42513u, vec4<f32>(global0[_wgslsmith_index_u32(26236u, 6u)], global0[_wgslsmith_index_u32(17384u, 6u)], -129f, global0[_wgslsmith_index_u32(1u, 6u)]), vec3<u32>(u_input.a, var_1.a.x, 2341u), var_0)) % vec2<u32>(32u))), max(-52325i, u_input.b.x));
    return Struct_1(~vec2<u32>(u_input.a, func_3(~global1[_wgslsmith_index_u32(var_3.a.x, 14u)], Struct_3(var_1.a.x, 1u, vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], 1706f, -1137f), vec3<u32>(u_input.a, 39665u, var_3.a.x), var_0), Struct_3(var_3.a.x, 1u, vec4<f32>(-1576f, global0[_wgslsmith_index_u32(11497u, 6u)], -1061f, 444f), vec3<u32>(4294967295u, 76506u, u_input.a), var_3.b)).x), -28118i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    global1 = array<vec4<i32>, 14>();
    let var_0 = Struct_3(4294967295u, _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1, arg_1), select(arg_1, vec3<u32>(24765u, u_input.a, arg_0.a.x), false)), 6u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-949f - global0[_wgslsmith_index_u32(21386u, 6u)]), 437f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f * 507f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(35004u), 6u)]) * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_f_op_f32(-517f * -1072f), true))), -264f), arg_1, arg_0.b);
    global0 = array<f32, 6>();
    let var_1 = select(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 6u)] == -1000f, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_0.a.x >= ~arg_0.a.x), vec4<bool>(false, all(vec3<bool>(true, true, true)), false, all(vec3<bool>(true, true, true))), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, -1762f <= var_0.c.x, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, any(vec2<bool>(false, false)), true, select(true, arg_0.b == -2147483647i, true))));
    let var_2 = Struct_2(Struct_1(arg_1.yy, var_0.e), vec4<u32>(~_wgslsmith_add_u32(u_input.a << (33680u % 32u), ~arg_0.a.x), func_3(abs(max(vec4<i32>(u_input.b.x, var_0.e, u_input.c.x, 18287i), global1[_wgslsmith_index_u32(var_0.d.x, 14u)])), Struct_3(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, 9708u, 54484u)), arg_1.x, var_0.c, vec3<u32>(76310u, arg_0.a.x, 1u), u_input.b.x), Struct_3(0u, arg_0.a.x, var_0.c, abs(var_0.d), -2147483647i)).x, var_0.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 21808u), arg_1)), !var_1.wzy);
    return var_2.c.x;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = vec2<bool>(!((u_input.b.x >= 9428i) == true), select(arg_0 | func_4(func_2(vec3<bool>(arg_0, false, arg_0)), vec3<u32>(u_input.a, u_input.a, arg_1)), select(true, arg_0, !(3105u < u_input.a)), arg_0));
    var var_1 = ~abs(select(reverseBits(vec4<u32>(4294967295u, 41151u, u_input.a, 15480u)), reverseBits(vec4<u32>(arg_1, arg_1, arg_1, 3166u)), select(vec4<bool>(false, true, true, arg_0), vec4<bool>(true, arg_0, true, var_0.x), vec4<bool>(true, false, false, false))) & _wgslsmith_div_vec4_u32(~vec4<u32>(23219u, u_input.a, u_input.a, arg_1), ~vec4<u32>(1u, 30404u, arg_1, 41958u)));
    var var_2 = !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x);
    return Struct_2(Struct_1(abs(~abs(var_1.yy)), -func_2(var_2.xyz).b), select(min(vec4<u32>(u_input.a, 0u, ~u_input.a, countOneBits(4294967295u)), select(max(vec4<u32>(0u, arg_1, 22202u, 3554u), vec4<u32>(0u, 0u, 65914u, u_input.a)), countOneBits(vec4<u32>(var_1.x, 42848u, 1u, 4294967295u)), false)), ~abs(vec4<u32>(87904u, 41087u, var_1.x, 5453u)), !vec4<bool>(true, true, var_2.x, all(var_2.yw))), vec3<bool>(false, !arg_0, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    global0 = array<f32, 6>();
    global1 = array<vec4<i32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(-482f * global0[_wgslsmith_index_u32(func_3(vec4<i32>(-7525i, firstLeadingBit(u_input.b.x), u_input.c.x, (u_input.c.x | arg_1.a.b) | -arg_1.a.b), Struct_3(105511u, 22969u, _wgslsmith_f_op_vec4_f32(vec4<f32>(430f, global0[_wgslsmith_index_u32(arg_1.b.x, 6u)], -1000f, -1426f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-642f, global0[_wgslsmith_index_u32(16345u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(arg_2, 6u)]) + vec4<f32>(-1330f, -1237f, 313f, 1085f))), ~(arg_1.b.xyx | arg_1.b.wzz), ~36801i), Struct_3(12410u, u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.a.a.x, 6u)], -536f, -1180f, global0[_wgslsmith_index_u32(arg_1.b.x, 6u)]) * vec4<f32>(global0[_wgslsmith_index_u32(27342u, 6u)], 535f, global0[_wgslsmith_index_u32(arg_1.b.x, 6u)], global0[_wgslsmith_index_u32(arg_2, 6u)])), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(443f, global0[_wgslsmith_index_u32(1u, 6u)], 205f, -645f)))), arg_1.b.xzy, arg_1.a.b)).x, 6u)]);
    var var_1 = abs(select(vec4<u32>(arg_1.a.a.x, u_input.a, (arg_1.a.a.x ^ 0u) & 1u, (u_input.a << (u_input.a % 32u)) & 12995u), firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, arg_2, 1u)), arg_1.c.x));
    let var_2 = Struct_3(u_input.a, ~(~0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(31761u, 6u)], -933f, 1000f) * _wgslsmith_div_vec4_f32(vec4<f32>(176f, global0[_wgslsmith_index_u32(arg_2, 6u)], -865f, -435f), vec4<f32>(global0[_wgslsmith_index_u32(32271u, 6u)], global0[_wgslsmith_index_u32(arg_1.a.a.x, 6u)], global0[_wgslsmith_index_u32(arg_1.b.x, 6u)], 750f))), vec4<f32>(_wgslsmith_f_op_f32(max(-530f, 413f)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(6350u, 6u)])), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 6u)])))))), ~firstTrailingBit(var_1.wwz), u_input.b.x);
    return vec2<bool>(any(arg_0), arg_0.x && !(global0[_wgslsmith_index_u32(select(4294967295u, 0u, false), 6u)] <= _wgslsmith_f_op_f32(ceil(var_2.c.x))));
}

fn func_6(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<f32, 6>();
    let var_0 = arg_3;
    var var_1 = _wgslsmith_div_i32(arg_3.b | ~_wgslsmith_sub_i32(-24528i, 26891i), ~(i32(-1i) * -1i));
    global1 = array<vec4<i32>, 14>();
    var var_2 = true & func_1(func_5(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, false, arg_2.x), arg_2.x), !vec4<bool>(false, arg_2.x, true, true), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(false, false, true, arg_2.x), true)), func_1(true, _wgslsmith_mult_u32(93962u, arg_3.a.x)), 7309u).x, max(arg_0, ~arg_0 & 0u)).c.x;
    return func_2(!select(vec3<bool>(arg_2.x || arg_2.x, true, true), func_1(arg_2.x, arg_3.a.x).c, true));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = ~arg_2.a.a;
    let var_1 = Struct_3(reverseBits(46083u), u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), 295f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.x, 6u)])))), global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<f32>(global0[_wgslsmith_index_u32(32985u, 6u)], -709f, 837f, global0[_wgslsmith_index_u32(~(1u >> (arg_1.a.x % 32u)), 6u)])), select(vec3<u32>((u_input.a << (arg_1.a.x % 32u)) & ~u_input.a, 4294967295u, 46488u), select(arg_2.b.wxy, vec3<u32>(~arg_1.a.x, 36376u, u_input.a ^ arg_2.b.x), !arg_2.c.x), func_1(false, ~_wgslsmith_sub_u32(39630u, var_0.x)).c), u_input.c.x);
    var var_2 = select(!(!vec4<bool>(func_4(arg_1, var_1.d), false, arg_2.c.x, true)), vec4<bool>(arg_0, !all(!arg_2.c.yy), false, select(arg_2.c.x, !(!arg_0), true)), arg_2.c.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.c.xzy, var_1.c.www)));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(1462f * var_3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13314u, 6u)]))), _wgslsmith_f_op_f32(round(-525f)));
    return select(_wgslsmith_sub_vec3_i32(-u_input.c, max(firstLeadingBit(~u_input.c), u_input.c)), vec3<i32>(arg_1.b, var_1.e, var_1.e), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 14>();
    global0 = array<f32, 6>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-704f, -1179f)), _wgslsmith_f_op_f32(-427f * global0[_wgslsmith_index_u32(u_input.a, 6u)]), true)), global0[_wgslsmith_index_u32(4294967295u, 6u)]))) - global0[_wgslsmith_index_u32(1u, 6u)]);
    var var_1 = ~(-reverseBits(u_input.c));
    var var_2 = ~(-90574i);
    var_1 = func_7(true, func_6(~u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], -292f, -479f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1353f, 1000f))), any(vec3<bool>(false, true, false))))), func_5(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, true)), func_1(true, 1u), u_input.a), Struct_1(select(select(vec2<u32>(75157u, u_input.a), vec2<u32>(u_input.a, 1u), true), ~vec2<u32>(u_input.a, u_input.a), false), u_input.b.x)), func_1(false, func_1(!select(false, true, false), max(u_input.a, u_input.a)).a.a.x));
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_sub_i32(func_2(vec3<bool>(true, true, true)).b, -12331i), 2147483647i));
}

