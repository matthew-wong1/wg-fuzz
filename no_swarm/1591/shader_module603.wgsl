struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<bool>(false, false, false), Struct_1(-411f, -321f, 43540u, true, vec3<bool>(true, false, true)), Struct_1(238f, 2419f, 1u, false, vec3<bool>(false, true, false)), -87884i, vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(false, false, true), Struct_1(510f, 510f, 35562u, true, vec3<bool>(true, true, false)), Struct_1(-1000f, -1589f, 4294967295u, true, vec3<bool>(false, false, true)), -12500i, vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(-564f, 602f, 1u, false, vec3<bool>(true, true, false)), Struct_1(-427f, -175f, 89351u, false, vec3<bool>(true, false, false)), 8967i, vec4<bool>(true, true, false, true)), Struct_2(vec3<bool>(true, false, false), Struct_1(1278f, -1000f, 18368u, false, vec3<bool>(false, false, true)), Struct_1(-520f, 1234f, 1u, false, vec3<bool>(true, true, true)), -41i, vec4<bool>(false, false, true, true)), Struct_2(vec3<bool>(true, false, true), Struct_1(-343f, -2367f, 8750u, false, vec3<bool>(false, false, true)), Struct_1(-311f, 1000f, 1u, true, vec3<bool>(false, false, false)), -11537i, vec4<bool>(true, false, true, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(-345f, -453f, 4294967295u, true, vec3<bool>(false, false, false)), Struct_1(393f, 1679f, 4294967295u, true, vec3<bool>(false, false, true)), i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(true, true, true), Struct_1(2726f, -113f, 1u, true, vec3<bool>(false, true, false)), Struct_1(197f, -490f, 36381u, true, vec3<bool>(true, true, true)), 21630i, vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(false, true, true), Struct_1(-1423f, -131f, 1u, false, vec3<bool>(false, false, false)), Struct_1(918f, 894f, 21922u, true, vec3<bool>(false, true, true)), -53410i, vec4<bool>(true, false, true, false)), Struct_2(vec3<bool>(false, true, true), Struct_1(681f, -1801f, 0u, true, vec3<bool>(false, true, false)), Struct_1(-990f, -746f, 69036u, false, vec3<bool>(true, true, true)), 2147483647i, vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(true, true, true), Struct_1(921f, 527f, 4294967295u, false, vec3<bool>(true, false, false)), Struct_1(2120f, -236f, 64836u, true, vec3<bool>(false, false, false)), 10233i, vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(568f, -858f, 21770u, true, vec3<bool>(true, true, false)), Struct_1(1810f, -199f, 4294967295u, true, vec3<bool>(false, false, true)), 11797i, vec4<bool>(false, true, true, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(-492f, -1262f, 48529u, false, vec3<bool>(false, true, true)), Struct_1(-507f, -1980f, 4294967295u, false, vec3<bool>(true, false, true)), 17706i, vec4<bool>(false, true, false, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(-480f, 529f, 12616u, false, vec3<bool>(false, true, true)), Struct_1(739f, -1000f, 1u, true, vec3<bool>(false, true, false)), 0i, vec4<bool>(true, true, true, false)), Struct_2(vec3<bool>(false, false, true), Struct_1(-614f, 111f, 4294967295u, true, vec3<bool>(false, false, true)), Struct_1(-168f, 1185f, 1u, true, vec3<bool>(true, true, false)), i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_2(vec3<bool>(false, true, true), Struct_1(833f, -1776f, 4294967295u, false, vec3<bool>(false, true, true)), Struct_1(1834f, -1382f, 0u, false, vec3<bool>(false, false, false)), -1i, vec4<bool>(false, false, false, false)), Struct_2(vec3<bool>(false, false, true), Struct_1(-830f, 125f, 0u, true, vec3<bool>(true, false, false)), Struct_1(-837f, 1213f, 4294967295u, false, vec3<bool>(true, true, false)), 43748i, vec4<bool>(false, false, true, true)), Struct_2(vec3<bool>(false, false, false), Struct_1(-758f, 571f, 25865u, true, vec3<bool>(true, false, true)), Struct_1(-477f, 238f, 4294967295u, false, vec3<bool>(false, false, false)), 22274i, vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(false, true, false), Struct_1(-153f, -657f, 32166u, false, vec3<bool>(true, true, true)), Struct_1(-219f, 2050f, 1u, true, vec3<bool>(false, false, true)), 16827i, vec4<bool>(true, false, false, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(996f, -930f, 39373u, true, vec3<bool>(true, true, true)), Struct_1(-417f, -837f, 4294967295u, true, vec3<bool>(true, true, true)), 0i, vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(true, true, false), Struct_1(579f, 873f, 4294967295u, false, vec3<bool>(false, false, false)), Struct_1(523f, 764f, 51881u, false, vec3<bool>(false, false, true)), 46105i, vec4<bool>(false, true, false, false)), Struct_2(vec3<bool>(false, false, false), Struct_1(-1687f, 1128f, 32774u, true, vec3<bool>(false, true, true)), Struct_1(606f, -475f, 1u, true, vec3<bool>(false, false, true)), -60375i, vec4<bool>(true, false, false, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(-183f, -245f, 0u, true, vec3<bool>(false, true, true)), Struct_1(-663f, 311f, 4294967295u, false, vec3<bool>(true, false, true)), 14581i, vec4<bool>(false, false, false, false)), Struct_2(vec3<bool>(true, false, false), Struct_1(-508f, 428f, 1u, false, vec3<bool>(true, false, false)), Struct_1(-198f, 612f, 32134u, false, vec3<bool>(true, true, false)), -20887i, vec4<bool>(true, true, false, false)), Struct_2(vec3<bool>(true, false, true), Struct_1(1366f, 1207f, 17628u, false, vec3<bool>(false, false, true)), Struct_1(-1046f, 342f, 1u, false, vec3<bool>(false, true, false)), -1i, vec4<bool>(true, true, false, false)), Struct_2(vec3<bool>(false, true, true), Struct_1(646f, -414f, 7456u, false, vec3<bool>(false, true, true)), Struct_1(735f, 2083f, 1u, true, vec3<bool>(true, true, true)), 1i, vec4<bool>(false, false, false, true)), Struct_2(vec3<bool>(true, true, false), Struct_1(-686f, -572f, 0u, true, vec3<bool>(true, false, true)), Struct_1(930f, -1415f, 0u, true, vec3<bool>(true, false, true)), 0i, vec4<bool>(false, false, false, true)), Struct_2(vec3<bool>(false, false, true), Struct_1(-1456f, -930f, 1u, false, vec3<bool>(false, true, false)), Struct_1(1775f, -1257f, 30109u, true, vec3<bool>(false, false, true)), -19092i, vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(true, true, false), Struct_1(729f, 1000f, 36522u, false, vec3<bool>(false, false, false)), Struct_1(-830f, -801f, 0u, false, vec3<bool>(true, false, false)), 13713i, vec4<bool>(false, false, false, true)), Struct_2(vec3<bool>(false, false, false), Struct_1(386f, -940f, 13230u, true, vec3<bool>(false, true, false)), Struct_1(520f, -414f, 9638u, true, vec3<bool>(false, false, true)), 20437i, vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(false, true, false), Struct_1(873f, -1000f, 53355u, false, vec3<bool>(true, false, true)), Struct_1(-115f, 910f, 73935u, true, vec3<bool>(true, true, false)), -3352i, vec4<bool>(true, false, false, true)));

var<private> global2: array<bool, 22> = array<bool, 22>(false, false, true, false, false, true, false, true, true, false, true, false, true, true, false, false, false, false, false, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = vec4<u32>(~(~_wgslsmith_mult_u32(u_input.a, u_input.a)) | firstTrailingBit(2278u), ~1u, u_input.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a | 19827u, u_input.a) >> (reverseBits(_wgslsmith_add_u32(1u, u_input.a)) % 32u), ~0u, ~1u));
    var var_1 = vec3<u32>(var_0.x, 4294967295u, 0u);
    let var_2 = _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, ~2147483647i, select(-1i, -8457i >> (var_1.x % 32u), any(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)])))), vec4<i32>(_wgslsmith_sub_i32(1i, 0i), max(_wgslsmith_mult_i32(0i, -1i), u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1824i, u_input.b.x), vec4<i32>(-28408i, u_input.b.x, u_input.b.x, -33386i)))), -1i);
    global0 = var_0.x;
    var_1 = abs(~countOneBits(~var_0.xxx));
    return 451f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(927f, 992f), _wgslsmith_f_op_f32(f32(-1f) * -102f), true)) * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1750f + -1049f), -712f)) * 1f) + _wgslsmith_f_op_f32(f32(-1f) * -956f)), 0u, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a >> (62667u % 32u)), 22u)] || any(vec3<bool>(any(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.a, 22u)])), true, true)), !vec3<bool>(true, true | any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(0u, 22u)])), true));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(func_3()), ~var_0.c, false | any(!vec2<bool>(global2[_wgslsmith_index_u32(33725u, 22u)], true)), vec3<bool>(any(vec3<bool>(2147483647i != u_input.b.x, var_0.e.x, true)), !(!select(true, true, var_0.d)), !global2[_wgslsmith_index_u32(0u, 22u)]));
    return Struct_1(318f, var_0.b, u_input.a, !var_0.d, vec3<bool>(true, !(!var_0.d), !all(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 22u)], true, false)) && (~u_input.b.x < _wgslsmith_mult_i32(0i, u_input.b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, (_wgslsmith_mod_u32(arg_0, arg_0) ^ arg_1.c) | 13594u) & 4294967295u, 30u)];
    global0 = 54373u | u_input.a;
    var var_1 = ~vec4<u32>(~(~1u) >> (func_2().c % 32u), 17002u, arg_1.c, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, u_input.a, 1u)), ~vec3<u32>(u_input.a, u_input.a, arg_1.c)) >> (max(_wgslsmith_mult_u32(arg_1.c, 1u), arg_1.c) % 32u));
    var var_2 = Struct_2(arg_1.e, func_2(), var_0.c, -2147483647i, !(!var_0.e));
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, select(99423u, 45659u, true)), ~var_1.xw), ~(47351u & u_input.a), 8895u, _wgslsmith_mult_u32(arg_0, ~max(~11094u, reverseBits(var_2.b.c))));
    return global1[_wgslsmith_index_u32(countOneBits(~var_2.b.c) >> (~(~u_input.a) % 32u), 30u)];
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> bool {
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    global2 = array<bool, 22>();
    let var_0 = arg_1.e.xx;
    global1 = array<Struct_2, 30>();
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 527f)), func_4(arg_1.c, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(514f)) * _wgslsmith_f_op_f32(trunc(708f)))), func_4(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(41297u, u_input.a, 4294967295u), ~vec3<u32>(79088u, 18075u, 85513u))), arg_0, arg_2.x), _wgslsmith_f_op_f32(-arg_0.a));
    global0 = _wgslsmith_mult_u32(2492u, firstTrailingBit(109743u));
    return select(!(!arg_1.e), vec3<bool>(all(arg_0.e.yx), true, all(!arg_1.e)), vec3<bool>(arg_1.d, any(!select(vec4<bool>(false, var_0.x, false, global2[_wgslsmith_index_u32(u_input.a, 22u)]), vec4<bool>(var_0.x, true, global2[_wgslsmith_index_u32(1697u, 22u)], arg_1.d), vec4<bool>(true, var_1, false, var_1))), true | (var_0.x | any(arg_1.e))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = func_2();
    return ~vec3<u32>(arg_2.c, 1u, _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(var_0.c, var_0.c)), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~(~select(u_input.a, u_input.a, true)) ^ _wgslsmith_mod_u32((u_input.a | 32445u) >> (1u % 32u), ~3645u & u_input.a)) | u_input.a;
    global2 = array<bool, 22>();
    global1 = array<Struct_2, 30>();
    var var_1 = 0u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(-307f)), _wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_dot_vec3_u32(func_6(~vec4<i32>(u_input.b.x, 1i, 0i, 27786i), Struct_1(_wgslsmith_f_op_f32(1403f * -820f), _wgslsmith_f_op_f32(sign(1050f)), 126664u, true, func_1(Struct_1(1067f, 651f, 66624u, false, vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 22u)])), Struct_1(-502f, 3349f, var_0, true, vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)])), vec4<f32>(-164f, 1132f, 1000f, -698f))), func_4(u_input.a, func_4(u_input.a, Struct_1(-1469f, -276f, 59158u, true, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(var_0, 22u)])), 1189f).c, -189f).c, vec3<u32>(1u, ~u_input.a, 29389u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4034u, u_input.a), vec3<u32>(1u, 37950u, var_0))) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, u_input.a, 0u), vec4<u32>(74584u, 56479u, 41960u, 41490u)), ~41903u, u_input.a)), !all(vec3<bool>(func_2().d, select(true, global2[_wgslsmith_index_u32(u_input.a, 22u)], false), func_2().d)), select(vec3<bool>(func_4(~var_0, Struct_1(682f, -599f, 2148u, true, vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 22u)])), -1130f).e.x, func_4(~1u, Struct_1(-1000f, -1606f, var_0, false, vec3<bool>(global2[_wgslsmith_index_u32(var_0, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)], true)), _wgslsmith_f_op_f32(ceil(-768f))).b.d, global2[_wgslsmith_index_u32(18358u, 22u)]), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(51740u, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)])), vec3<bool>(true, true, true), 1u != var_0), vec3<bool>(5633i < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, 2147483647i), vec4<i32>(50589i, -2147483647i, -13541i, u_input.b.x)), true, false)));
    var var_3 = -1113f;
    var var_4 = !(!(!select(!vec4<bool>(var_2.e.x, var_2.e.x, false, var_2.d), vec4<bool>(true, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(var_2.c, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(var_0, 22u)], var_2.d))));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, var_2.a), vec2<f32>(var_2.a, -1901f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), -1566f), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1528f, var_2.a, -388f, var_2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(1573f, var_5.x, var_5.x, -372f) + vec4<f32>(var_5.x, var_2.a, var_2.a, 831f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, 981f, var_5.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1080f, -325f, var_5.x), vec3<f32>(var_5.x, var_5.x, -829f))))), vec3<bool>(true, true, var_2.d == var_4.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, 363f, var_2.b))))), ~firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0, 3020u, 3852u), vec3<u32>(var_0, 66376u, var_2.c))));
}

