struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: array<i32, 16>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, 1i), vec2<f32>(428f, 174f), vec3<f32>(-1000f, -1075f, 2129f), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-1i, i32(-2147483648), -23228i), vec2<f32>(-481f, 101f), vec3<f32>(653f, -1015f, -550f), vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec3<i32>(13199i, -1i, 3774i), vec2<f32>(1230f, 358f), vec3<f32>(-895f, -1456f, 158f), vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(-14994i, i32(-2147483648), -16836i), vec2<f32>(859f, -651f), vec3<f32>(-557f, 1866f, -1048f), vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), vec2<f32>(-158f, 549f), vec3<f32>(-199f, 689f, 2561f), vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(-7359i, 2147483647i, 46798i), vec2<f32>(-822f, 2590f), vec3<f32>(-191f, 525f, 1259f), vec4<bool>(false, false, false, false))), Struct_2(Struct_1(vec3<i32>(-60191i, -1i, -25240i), vec2<f32>(-1161f, -724f), vec3<f32>(-1212f, 2212f, 263f), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec2<f32>(1000f, 1000f), vec3<f32>(540f, -1860f, -322f), vec4<bool>(false, false, false, false))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<f32>(1335f, 1704f), vec3<f32>(183f, 1136f, 644f), vec4<bool>(true, true, false, true)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec2<f32>(-272f, 632f), vec3<f32>(1442f, 825f, 488f), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec3<i32>(1i, 14230i, i32(-2147483648)), vec2<f32>(-551f, -822f), vec3<f32>(-985f, -687f, 469f), vec4<bool>(true, true, false, false)), Struct_1(vec3<i32>(-8064i, 0i, -23015i), vec2<f32>(165f, 676f), vec3<f32>(573f, -227f, -1000f), vec4<bool>(true, false, false, true))), Struct_2(Struct_1(vec3<i32>(-37296i, 21229i, 16412i), vec2<f32>(1000f, -1520f), vec3<f32>(-1488f, -1000f, -350f), vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -6764i), vec2<f32>(1207f, 186f), vec3<f32>(-2319f, 1000f, -1232f), vec4<bool>(true, true, false, true))), Struct_2(Struct_1(vec3<i32>(-113530i, -1i, 2147483647i), vec2<f32>(-1000f, -2473f), vec3<f32>(-1312f, -1000f, 1022f), vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(-1i, 0i, -1i), vec2<f32>(981f, -1000f), vec3<f32>(-689f, -1446f, 934f), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec3<i32>(0i, -63382i, -35718i), vec2<f32>(-423f, 1060f), vec3<f32>(-1301f, -1621f, -514f), vec4<bool>(false, false, true, false)), Struct_1(vec3<i32>(20052i, 36019i, i32(-2147483648)), vec2<f32>(1316f, -1209f), vec3<f32>(-762f, 432f, 1042f), vec4<bool>(false, false, false, false))), Struct_2(Struct_1(vec3<i32>(2147483647i, -17647i, 2147483647i), vec2<f32>(2492f, 460f), vec3<f32>(-1345f, 1917f, 1630f), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-10666i, -19552i, 28567i), vec2<f32>(-1394f, -293f), vec3<f32>(876f, 924f, 1317f), vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec3<i32>(-4338i, 2147483647i, i32(-2147483648)), vec2<f32>(508f, 1742f), vec3<f32>(711f, -800f, 1045f), vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(-1i, 1i, 8703i), vec2<f32>(-1065f, -213f), vec3<f32>(571f, 862f, 276f), vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec3<i32>(27038i, 1i, 0i), vec2<f32>(-932f, 204f), vec3<f32>(546f, -241f, 1398f), vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(i32(-2147483648), -37504i, -9734i), vec2<f32>(-1529f, -751f), vec3<f32>(-1293f, 2400f, 1193f), vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec3<i32>(-30308i, 1i, 29126i), vec2<f32>(949f, -2237f), vec3<f32>(172f, -867f, -521f), vec4<bool>(true, true, false, false)), Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), vec2<f32>(-707f, -238f), vec3<f32>(212f, 159f, -606f), vec4<bool>(true, true, false, true))), Struct_2(Struct_1(vec3<i32>(-1i, 1i, -17468i), vec2<f32>(729f, 138f), vec3<f32>(278f, -247f, -1000f), vec4<bool>(true, true, false, false)), Struct_1(vec3<i32>(-12455i, 2147483647i, -11165i), vec2<f32>(-237f, 2000f), vec3<f32>(-758f, -359f, -1047f), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -40109i, 2147483647i), vec2<f32>(1045f, 3116f), vec3<f32>(-1000f, -947f, 1000f), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(4924i, -1i, i32(-2147483648)), vec2<f32>(-1876f, -1159f), vec3<f32>(154f, -1077f, 541f), vec4<bool>(false, true, true, false))));

var<private> global3: i32;

var<private> global4: array<vec4<bool>, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global4 = array<vec4<bool>, 26>();
    let var_0 = vec2<i32>(arg_1.a.a.x, 39556i) | vec2<i32>(_wgslsmith_add_i32(0i, -36279i), u_input.a.x);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f), _wgslsmith_f_op_f32(ceil(-551f))), arg_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), -343f, arg_0 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(764f)), arg_2.b.x))), arg_0);
    let var_2 = Struct_2(Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(arg_2.a.x, arg_2.a.x))), -2147483647i, _wgslsmith_div_i32(-28208i, _wgslsmith_sub_i32(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c.x, arg_1.b.c.x)), _wgslsmith_f_op_vec2_f32(max(arg_2.b, vec2<f32>(121f, arg_0)))))), arg_1.a.c, !vec4<bool>(global0.x, true, arg_1.a.c.x == -1857f, true)), arg_1.b);
    let var_3 = ~(~29163u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(875f)) + -1032f);
}

fn func_2() -> u32 {
    global0 = global4[_wgslsmith_index_u32(5695u, 26u)];
    global2 = array<Struct_2, 15>();
    global3 = global1[_wgslsmith_index_u32(u_input.b.x, 16u)];
    var var_0 = Struct_1(vec3<i32>(~global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(abs(1u), 16u)], 2147483647i) | u_input.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1668f)), _wgslsmith_f_op_f32(f32(-1f) * -803f)) * vec2<f32>(-478f, _wgslsmith_f_op_f32(ceil(-377f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(-1028f, global2[_wgslsmith_index_u32(17835u, 15u)], Struct_1(u_input.a, vec2<f32>(681f, 1000f), vec3<f32>(218f, -1159f, 1208f), vec4<bool>(false, true, global0.x, true)))), _wgslsmith_f_op_f32(select(-1870f, -1024f, true))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(331f, -555f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1221f, 1175f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, -157f, -354f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, 167f, 493f) + vec3<f32>(-414f, -482f, -1194f))))), global4[_wgslsmith_index_u32(4294967295u, 26u)]);
    var var_1 = vec4<i32>(~((firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 16u)]) | ~var_0.a.x) << (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b.x, 4367u)), u_input.b) % 32u)), global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 16u)], -20274i, ((i32(-1i) * -55851i) & select(reverseBits(var_0.a.x), firstTrailingBit(2147483647i), true)) & _wgslsmith_clamp_i32(-firstLeadingBit(28445i), u_input.a.x, 55292i));
    return 27973u;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_3(global0.wyz, select(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(func_2(), max(u_input.b.x, 40141u)), 26u)], global4[_wgslsmith_index_u32(u_input.b.x, 26u)], vec4<bool>(!all(global0.zz), true, all(global4[_wgslsmith_index_u32(reverseBits(u_input.b.x), 26u)]), any(select(vec4<bool>(false, true, global0.x, global0.x), global4[_wgslsmith_index_u32(u_input.b.x, 26u)], global0.x)))), abs(vec2<u32>(u_input.b.x, 38774u)), u_input.b.x, Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), ~arg_0, max(1i, 1i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1809f) - vec2<f32>(-652f, -275f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, 512f)), global0.ww)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(116f, -1737f, -791f) + vec3<f32>(510f, 1001f, 1173f)))), vec4<bool>(true, all(global0.yyy), select(global0.x, true, global0.x), true)), Struct_1(vec3<i32>(u_input.a.x, 1i, arg_0) << ((vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) | vec3<u32>(0u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2439f, -1213f) - vec3<f32>(578f, 657f, -1368f))), !global4[_wgslsmith_index_u32(1u, 26u)])));
    var var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.e.a.c.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(var_0.e.a.b.x, var_0.e.a.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 15u)], var_0.e.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(731f, _wgslsmith_f_op_f32(-var_0.e.b.b.x), 2116f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(673f, var_0.e.b.c.x, var_0.e.a.c.x) - vec3<f32>(-1644f, -1095f, -1000f)))), vec3<bool>(true, var_0.b.x, var_0.b.x & false))), vec3<f32>(-380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(701f * 431f)), var_0.e.b.b.x)), !var_0.e.a.d);
    var var_2 = _wgslsmith_sub_i32(9458i, -_wgslsmith_add_i32(var_1.a.x, arg_0) ^ var_1.a.x) & ~(-var_1.a.x);
    var var_3 = global4[_wgslsmith_index_u32(4294967295u, 26u)];
    let var_4 = select(select(!select(var_0.b.zw, !vec2<bool>(var_0.e.a.d.x, true), !var_0.b.x), vec2<bool>(!(var_0.c.x <= u_input.b.x), true), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.d, u_input.b.x, 0u, var_0.c.x), vec4<u32>(4294967295u, 29218u, var_0.d, u_input.b.x)), vec4<u32>(55012u, u_input.b.x, 9491u, 92057u)) == max(48336u, u_input.b.x)), !var_0.a.xx, !(!(!global0.x)));
    return select(vec4<bool>(true, global0.x, true || var_0.b.x, true), !select(select(vec4<bool>(var_0.b.x, true, global0.x, false), var_0.e.a.d, true), vec4<bool>(true, true, any(var_4), all(global4[_wgslsmith_index_u32(0u, 26u)])), var_0.e.b.d), vec4<bool>(true, true, false, (func_2() << (u_input.b.x % 32u)) > var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_1(-1i), select(select(vec4<bool>(all(vec4<bool>(global0.x, false, true, true)), true, global0.x, true), select(select(vec4<bool>(false, true, global0.x, false), global4[_wgslsmith_index_u32(u_input.b.x, 26u)], vec4<bool>(false, global0.x, true, false)), global4[_wgslsmith_index_u32(1u, 26u)], vec4<bool>(global0.x, false, false, global0.x)), !global0.x), !vec4<bool>(global0.x, any(global4[_wgslsmith_index_u32(0u, 26u)]), true, u_input.b.x < u_input.b.x), all(select(global4[_wgslsmith_index_u32(func_2(), 26u)], select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, false, true)), global4[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 26u)]))), all(global0.ww));
    let var_0 = _wgslsmith_mult_vec3_i32(~u_input.a, vec3<i32>(~u_input.a.x, i32(-1i) * -15124i, global1[_wgslsmith_index_u32(20055u, 16u)]));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1828f) + -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1051f, -1667f)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1568f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(598f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-614f, 1000f, false)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -961f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(-178f * -767f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, var_2, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(225f, -664f))), var_0 & -vec3<i32>(-global1[_wgslsmith_index_u32(6765u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)] & global1[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(3404u, 16u)], 2147483647i)));
}

