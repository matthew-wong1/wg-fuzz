struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-51319i, 80792i, 18678i, 13248i), vec4<i32>(57947i, 51382i, 0i, -31977i), vec4<i32>(16907i, 79037i, -21710i, -5204i), vec4<i32>(1i, -11602i, -38913i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 0i, 5246i), vec4<i32>(42804i, 10799i, 49057i, 3978i), vec4<i32>(21704i, 45467i, -1i, -3280i), vec4<i32>(-1i, -58081i, -29018i, 56675i), vec4<i32>(1i, 25573i, -46530i, -1i), vec4<i32>(-1i, 0i, 19496i, i32(-2147483648)), vec4<i32>(15655i, 53061i, -75188i, 18273i), vec4<i32>(0i, 1551i, -53905i, 9361i), vec4<i32>(-60174i, 0i, -6718i, i32(-2147483648)), vec4<i32>(42453i, 1i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 0i, 1i), vec4<i32>(-1i, i32(-2147483648), -13462i, 2147483647i), vec4<i32>(0i, 2147483647i, -7740i, -38095i), vec4<i32>(i32(-2147483648), -31858i, -41537i, 5913i), vec4<i32>(-1i, 14398i, -26726i, -35190i), vec4<i32>(5132i, 14382i, -34181i, 4335i), vec4<i32>(-21183i, 54783i, -42999i, -16009i), vec4<i32>(-28512i, -1i, -1i, 1i));

var<private> global1: array<u32, 3>;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(543f, 1000f, 1870f, 1087f), vec4<f32>(528f, 533f, 317f, -1820f), vec4<f32>(538f, 551f, -1531f, -1000f), vec4<f32>(-872f, -558f, 1002f, 330f), vec4<f32>(2106f, -166f, -213f, 1115f), vec4<f32>(-1671f, -1000f, 476f, -182f), vec4<f32>(-374f, 1000f, -1231f, 226f), vec4<f32>(1772f, 1096f, 2158f, 715f), vec4<f32>(1000f, -770f, 759f, -444f), vec4<f32>(-2032f, -904f, 1374f, -375f), vec4<f32>(-2046f, 1000f, -712f, 1400f), vec4<f32>(-1519f, -628f, 1269f, -1182f), vec4<f32>(-795f, 378f, -808f, -457f), vec4<f32>(-991f, -1000f, -946f, 1000f), vec4<f32>(417f, -677f, -395f, 1223f), vec4<f32>(696f, -1299f, -1248f, -519f), vec4<f32>(-1000f, -446f, 197f, -1088f), vec4<f32>(-1000f, 1110f, 792f, 1000f), vec4<f32>(-630f, 1068f, -499f, -1069f), vec4<f32>(2192f, -1130f, -1270f, 1606f), vec4<f32>(299f, 286f, -1132f, 243f), vec4<f32>(-1177f, 994f, 666f, 1363f), vec4<f32>(1000f, 1000f, -1191f, 1454f), vec4<f32>(-1546f, 354f, 1000f, 209f));

var<private> global4: array<f32, 21> = array<f32, 21>(238f, 434f, -476f, 1698f, 194f, -900f, -1897f, 1080f, 672f, 493f, -475f, -236f, 863f, -1251f, -705f, -1250f, -1906f, -2465f, -1000f, -167f, 821f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_4) -> f32 {
    global1 = array<u32, 3>();
    global4 = array<f32, 21>();
    global0 = array<vec4<i32>, 22>();
    var var_0 = Struct_1(false, any(vec4<bool>(!any(vec4<bool>(arg_0.a, false, arg_0.b, true)), true, arg_0.b, _wgslsmith_f_op_f32(-1122f * -1000f) >= arg_3.a.a.b.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-arg_3.b.a.a.xy, vec2<i32>(0i, 0i)), u_input.a));
    var var_1 = any(select(vec2<bool>(all(select(vec4<bool>(false, true, arg_0.b, true), vec4<bool>(arg_0.b, false, false, false), vec4<bool>(arg_0.a, arg_0.a, var_0.a, false))), arg_0.a), vec2<bool>(var_0.a, false), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1124f)), -1179f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)) || (all(vec4<bool>(true, true, true, false)) | true), false, select(true, !any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(floor(1180f)) != _wgslsmith_f_op_f32(-609f * -481f)) | !(~1u == _wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(1u, 3u)])), true);
    global0 = array<vec4<i32>, 22>();
    let var_1 = u_input.b;
    global4 = array<f32, 21>();
    let var_2 = ~vec3<u32>(abs(~(~107433u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(u_input.b.zy), ~var_1.zx), var_1.x << (~var_1.x % 32u)), 3u)], 3u)], 4294967295u);
    return ~global1[_wgslsmith_index_u32((u_input.b.x & ~(~var_2.x)) << ((75519u >> (global1[_wgslsmith_index_u32(1u, 3u)] % 32u)) % 32u), 3u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_5 {
    let var_0 = arg_3;
    var var_1 = u_input.b.yyx;
    global1 = array<u32, 3>();
    var var_2 = firstLeadingBit(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-955f, -1571f, _wgslsmith_div_f32(arg_2, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 3u)], 21u)]), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.x, true, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<i32>(-73713i, -53847i), Struct_4(Struct_3(Struct_2(vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i), vec4<f32>(707f, 1317f, arg_2, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 21u)]))), Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_1.x, 22u)], global3[_wgslsmith_index_u32(var_0, 24u)])))))), vec4<f32>(_wgslsmith_f_op_f32(1000f + arg_1), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_f32(-124f - arg_2), arg_1)), Struct_2(vec4<i32>(-56538i, u_input.a, 4429i, -2147483647i) & abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-318f, arg_1, arg_1, 1039f) * global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(108585u, 3u)], 24u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_0, 21u)], -301f, arg_2, arg_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 21u)] - global4[_wgslsmith_index_u32(24746u, 21u)]) * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 21u)])) + global4[_wgslsmith_index_u32(~4294967295u, 21u)])));
    global0 = array<vec4<i32>, 22>();
    return Struct_5(select(arg_0.x, true, false), -1i);
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    let var_0 = u_input.b;
    let var_1 = Struct_3(arg_3.a.a);
    global2 = -23399i;
    global1 = array<u32, 3>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(arg_3.a.a.b, vec4<f32>(274f, -1956f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, false, 2147483647i), ~vec3<i32>(arg_3.b.a.a.x, var_1.a.a.x, u_input.a), -arg_3.b.a.a.xx, Struct_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(6873u, 22u)], var_1.a.b)), Struct_3(arg_3.b.a)))) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.x ^ u_input.b.x, 21u)]))), true));
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: Struct_4) -> vec2<bool> {
    global2 = i32(-1i) * -2147483647i;
    var var_0 = Struct_1(any(vec3<bool>(!func_2(vec2<bool>(false, false), -838f, -220f, 39065u).a, false, true)), false, func_2(vec2<bool>(0u >= firstLeadingBit(u_input.b.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 21u)] - global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.b.x, 3u)], 21u)]) * arg_1.b.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1320f, -1253f))), min(~1u, ~4294967295u)).b);
    global3 = array<vec4<f32>, 24>();
    return select(select(select(select(select(vec2<bool>(true, true), vec2<bool>(var_0.b, true), var_0.a), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.a)), !vec2<bool>(false, var_0.a)), !(!vec2<bool>(var_0.a, var_0.b)), true), vec2<bool>(u_input.a != 10320i, false), var_0.a), !(!vec2<bool>(var_0.b, var_0.a)), -837f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.a.b.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> bool {
    global3 = array<vec4<f32>, 24>();
    global3 = array<vec4<f32>, 24>();
    let var_0 = all(func_6(u_input.a, func_5(func_2(arg_0.yy, _wgslsmith_f_op_f32(f32(-1f) * -1796f), -421f, global1[_wgslsmith_index_u32(41478u, 3u)] ^ 4294967295u), -828f, arg_0.x, Struct_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global3[_wgslsmith_index_u32(1u, 24u)])), Struct_3(Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34863u, 3u)], 22u)], vec4<f32>(-954f, arg_1, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3695u, 3u)], 21u)], arg_1)))))));
    var var_1 = vec2<f32>(-966f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2244f) * -434f) - arg_1))));
    let var_2 = ~39000u;
    return _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 21u)]) < _wgslsmith_f_op_f32(round(263f));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~(u_input.b & _wgslsmith_clamp_vec4_u32(vec4<u32>(89679u, 31616u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 9764u, 21633u, u_input.b.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], 23967u, 20657u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52830u, 3u)], 3u)], 3u)], 3u)]) % vec4<u32>(32u)), vec4<u32>(27157u, u_input.b.x, 45923u, global1[_wgslsmith_index_u32(53313u, 3u)]))) & (~(firstTrailingBit(u_input.b) & vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.x, 4294967295u)) >> (u_input.b % vec4<u32>(32u)));
    global1 = array<u32, 3>();
    var var_1 = ~var_0.x;
    let var_2 = func_2(func_6(20341i, arg_2), func_5(Struct_5(true, -arg_0.c), arg_2.a.a.b.x, true, func_5(func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(-409f + arg_1.a.b.x), -1231f, var_0.x), _wgslsmith_f_op_f32(func_3(arg_0, -arg_1.a.a.xzz, vec2<i32>(arg_1.a.a.x, u_input.a) ^ arg_1.a.a.yx, func_5(Struct_5(arg_0.b, arg_2.b.a.a.x), 648f, false, arg_2))), arg_0.a, func_5(Struct_5(false, 1i), _wgslsmith_f_op_f32(step(arg_1.a.b.x, 515f)), func_1(vec3<bool>(arg_0.b, true, false), 1041f), Struct_4(Struct_3(arg_1.a), arg_1)))).a.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)))), 1u);
    var var_3 = arg_2.b;
    return Struct_2(vec4<i32>(var_2.b, u_input.a, var_2.b, _wgslsmith_div_i32(~_wgslsmith_sub_i32(-1879i, -2147483647i), var_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_2.b.a.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 3u)], 3u)], 3u)]), (1u ^ global1[_wgslsmith_index_u32(u_input.b.x, 3u)]) ^ ~global1[_wgslsmith_index_u32(4294967295u, 3u)]), 21u)], -221f, global4[_wgslsmith_index_u32(u_input.b.x, 21u)], 584f);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4[_wgslsmith_index_u32(32371u, 21u)], -1066f, -406f, global4[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<f32>(268f, 521f, global4[_wgslsmith_index_u32(40878u, 21u)], global4[_wgslsmith_index_u32(36920u, 21u)]))))))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2545f + global4[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(round(954f))))));
    global1 = array<u32, 3>();
    let var_2 = func_7(Struct_1(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -698f)), true, 1i), Struct_3(Struct_2(vec4<i32>(-28932i, i32(-1i) * -17303i, ~60491i, ~(-3058i)), func_5(Struct_5(false, u_input.a), _wgslsmith_f_op_f32(-var_0.x), false, func_5(Struct_5(true, u_input.a), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 3u)], 21u)], false, Struct_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 22u)], vec4<f32>(global4[_wgslsmith_index_u32(1u, 21u)], -457f, 723f, -699f))), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], var_1))))).b.a.b)), Struct_4(func_5(Struct_5(false, -1i), global4[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)] | global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), 21u)], true, func_5(func_2(vec2<bool>(false, true), 1685f, -1000f, 0u), 1696f, true, func_5(Struct_5(true, u_input.a), -1302f, false, Struct_4(Struct_3(Struct_2(global0[_wgslsmith_index_u32(1u, 22u)], vec4<f32>(-2170f, var_1.x, var_1.x, 1955f))), Struct_3(Struct_2(vec4<i32>(-1i, 24855i, -8816i, u_input.a), vec4<f32>(1304f, -1000f, global4[_wgslsmith_index_u32(33485u, 21u)], global4[_wgslsmith_index_u32(u_input.b.x, 21u)]))))))).b, func_5(func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), 292f, global4[_wgslsmith_index_u32(1u, 21u)], u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + global4[_wgslsmith_index_u32(1977u, 21u)]) * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 21u)] * 402f)), func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(select(var_0.x, var_1.x, true))), Struct_4(func_5(Struct_5(true, 0i), var_0.x, true, Struct_4(Struct_3(Struct_2(vec4<i32>(-2147483647i, 51420i, -7736i, -1i), global3[_wgslsmith_index_u32(u_input.b.x, 24u)])), Struct_3(Struct_2(vec4<i32>(43460i, u_input.a, u_input.a, u_input.a), vec4<f32>(var_0.x, var_1.x, var_0.x, 1000f))))).a, Struct_3(Struct_2(vec4<i32>(1i, -32246i, u_input.a, u_input.a), vec4<f32>(-304f, -1019f, -665f, var_1.x))))).a));
    global0 = array<vec4<i32>, 22>();
    var var_3 = Struct_1(true, ~(~(~0u)) < ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 19120u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18382u, 3u)], 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(1u, global1[_wgslsmith_index_u32(44569u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(0u, 3u)])), var_2.a.x);
    var var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-var_2.a.x), u_input.a >> (33866u % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_3.c, var_3.c), _wgslsmith_sub_i32(u_input.a, var_2.a.x)), -1i), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(71642u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), u_input.b), 22u)]), -_wgslsmith_div_i32(var_2.a.x, max(reverseBits(1i), 10530i | var_3.c)), var_3.c, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, var_3.c, -2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-var_3.c, ~var_3.c, abs(0i)), var_4.x)), u_input.b.x, ~_wgslsmith_div_u32(12983u, ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], 24725u), u_input.b.zyz), 3u)]), firstLeadingBit(abs(global1[_wgslsmith_index_u32(abs(u_input.b.x), 3u)])));
}

