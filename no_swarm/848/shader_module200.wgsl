struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<f32>(-638f, -1510f, 1606f, 636f), true, 819f, -1261f, Struct_1(false, vec2<f32>(-1564f, 255f))), Struct_2(vec4<f32>(-1000f, 1884f, 1205f, 521f), false, 306f, -588f, Struct_1(true, vec2<f32>(198f, -728f))), Struct_2(vec4<f32>(-1307f, 1191f, 246f, 971f), false, -837f, -1000f, Struct_1(true, vec2<f32>(423f, 759f))), Struct_2(vec4<f32>(583f, -237f, -2502f, 197f), true, 805f, -2115f, Struct_1(true, vec2<f32>(1290f, 1000f))), Struct_2(vec4<f32>(-1120f, 1123f, 408f, -552f), true, 1446f, 1836f, Struct_1(true, vec2<f32>(544f, -793f))), Struct_2(vec4<f32>(1740f, 1000f, -721f, 638f), true, 944f, -1172f, Struct_1(false, vec2<f32>(-398f, 1000f))), Struct_2(vec4<f32>(925f, 306f, -497f, 1001f), true, -1892f, 277f, Struct_1(true, vec2<f32>(1163f, -191f))), Struct_2(vec4<f32>(-638f, 633f, -236f, -656f), true, 1000f, 1000f, Struct_1(true, vec2<f32>(826f, 507f))), Struct_2(vec4<f32>(-1581f, -475f, -609f, -351f), true, 275f, 236f, Struct_1(false, vec2<f32>(-792f, 267f))), Struct_2(vec4<f32>(-1922f, -1964f, -1392f, 410f), true, 2161f, -2242f, Struct_1(false, vec2<f32>(-276f, 421f))), Struct_2(vec4<f32>(867f, -1576f, -1000f, 298f), false, -810f, -813f, Struct_1(false, vec2<f32>(935f, 875f))), Struct_2(vec4<f32>(-1456f, 531f, -295f, -506f), true, -247f, -886f, Struct_1(true, vec2<f32>(1112f, 1000f))), Struct_2(vec4<f32>(1160f, 1114f, -423f, 1000f), true, 575f, -788f, Struct_1(true, vec2<f32>(1000f, 701f))), Struct_2(vec4<f32>(-475f, 167f, -221f, -636f), true, 810f, -199f, Struct_1(true, vec2<f32>(-535f, -376f))), Struct_2(vec4<f32>(674f, -758f, -545f, -2049f), false, -1477f, -550f, Struct_1(false, vec2<f32>(-1000f, 1095f))), Struct_2(vec4<f32>(410f, -217f, -975f, -1321f), false, -683f, 1661f, Struct_1(true, vec2<f32>(1000f, -734f))), Struct_2(vec4<f32>(1727f, 456f, -464f, 1439f), false, -642f, -228f, Struct_1(false, vec2<f32>(1933f, -790f))), Struct_2(vec4<f32>(-1051f, -632f, 864f, -536f), false, -1563f, 1149f, Struct_1(false, vec2<f32>(514f, 1106f))), Struct_2(vec4<f32>(-160f, -1003f, 1721f, -1777f), false, 1079f, 1335f, Struct_1(false, vec2<f32>(-399f, -2284f))), Struct_2(vec4<f32>(-1266f, 1513f, 207f, 634f), false, -393f, 382f, Struct_1(false, vec2<f32>(577f, -2140f))), Struct_2(vec4<f32>(-1000f, -1448f, -1295f, -1000f), false, 509f, -1487f, Struct_1(true, vec2<f32>(-2348f, -1971f))), Struct_2(vec4<f32>(1000f, 1585f, 286f, 241f), true, 1844f, 696f, Struct_1(true, vec2<f32>(-147f, -1000f))), Struct_2(vec4<f32>(165f, -431f, 280f, -533f), true, 1079f, 565f, Struct_1(true, vec2<f32>(-738f, 311f))), Struct_2(vec4<f32>(-969f, 579f, -882f, 1000f), true, -1066f, 1296f, Struct_1(false, vec2<f32>(-1059f, -1391f))), Struct_2(vec4<f32>(-250f, 267f, -896f, -222f), true, 134f, -806f, Struct_1(true, vec2<f32>(-1127f, -646f))));

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(2092f, 832f, -392f, -1000f), vec4<f32>(1305f, -601f, 634f, -1141f), vec4<f32>(-375f, -1000f, -112f, 188f), vec4<f32>(-286f, -479f, -788f, 216f), vec4<f32>(400f, -928f, 986f, 647f), vec4<f32>(-660f, 2080f, -990f, -547f), vec4<f32>(1990f, 828f, -802f, 876f), vec4<f32>(-1957f, 272f, 1594f, 1562f), vec4<f32>(1000f, -747f, 1000f, -486f), vec4<f32>(-238f, -482f, 1662f, 898f), vec4<f32>(-341f, 332f, -2703f, -547f), vec4<f32>(-1647f, -2136f, -3238f, -170f), vec4<f32>(-607f, 1240f, -418f, -247f), vec4<f32>(-126f, -916f, 611f, -1371f), vec4<f32>(-1934f, -1255f, -1154f, 1109f), vec4<f32>(-557f, 2852f, 444f, -146f), vec4<f32>(1000f, -172f, -1885f, 136f), vec4<f32>(480f, -749f, 548f, -211f), vec4<f32>(1234f, -751f, -511f, 969f), vec4<f32>(2436f, 550f, 1388f, 643f), vec4<f32>(1429f, 1212f, 1884f, -186f), vec4<f32>(299f, -325f, -386f, 1965f), vec4<f32>(1393f, -154f, 573f, 2939f), vec4<f32>(1000f, -325f, -1118f, -792f), vec4<f32>(-984f, 881f, -1781f, 366f), vec4<f32>(380f, -1223f, -1000f, 356f), vec4<f32>(-434f, -1534f, 781f, -1119f), vec4<f32>(-1169f, -2060f, -1000f, 2092f), vec4<f32>(-1146f, -837f, -1750f, 1611f), vec4<f32>(-1151f, -635f, -229f, 392f), vec4<f32>(-399f, -605f, 1384f, 435f));

var<private> global3: array<vec4<u32>, 8>;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, vec2<f32>(1000f, 2014f)), Struct_1(true, vec2<f32>(729f, -389f)), Struct_1(false, vec2<f32>(1449f, -740f)), Struct_1(false, vec2<f32>(410f, 1452f)), Struct_1(false, vec2<f32>(-421f, -1278f)), Struct_1(true, vec2<f32>(189f, 1149f)), Struct_1(true, vec2<f32>(-1892f, 555f)), Struct_1(true, vec2<f32>(-699f, -1000f)), Struct_1(true, vec2<f32>(-520f, 354f)), Struct_1(false, vec2<f32>(-643f, 293f)), Struct_1(false, vec2<f32>(-952f, 747f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global2 = array<vec4<f32>, 31>();
    global1 = array<Struct_2, 25>();
    global2 = array<vec4<f32>, 31>();
    var var_0 = !select(vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !vec3<bool>(any(vec4<bool>(true, false, false, false)), true, true));
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -769f), _wgslsmith_f_op_f32(f32(-1f) * -869f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(218f, -1598f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), 1f)));
    return !var_1.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0.a.wz;
    var var_1 = arg_0.d;
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, ~u_input.c, ~_wgslsmith_mult_u32(u_input.c, u_input.c)), 31u)], func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-402f * var_0.x), _wgslsmith_div_f32(arg_0.c, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.b.x) * _wgslsmith_f_op_f32(-104f + -549f))))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f)))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(25068u, 9383u, u_input.c))), countOneBits(~vec3<u32>(62181u, 18077u, u_input.c))), 11u)]);
    global4 = array<Struct_1, 11>();
    let var_3 = 14997u;
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(808f - 626f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-338f, _wgslsmith_f_op_f32(floor(-285f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global2 = array<vec4<f32>, 31>();
    global0 = array<i32, 30>();
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b + vec2<f32>(_wgslsmith_f_op_f32(ceil(696f)), 1768f))));
    var var_1 = func_2(global1[_wgslsmith_index_u32(9265u, 25u)], vec4<bool>(var_0.a, true, all(!(!vec3<bool>(true, arg_0.a, false))), !all(!vec2<bool>(arg_2.a, arg_2.a))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1021f, arg_2.b.x, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.c, 31u)] * global2[_wgslsmith_index_u32(14529u, 31u)])) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.c, 31u)] - global2[_wgslsmith_index_u32(23056u, 31u)]) * _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(83548u, 31u)] * global2[_wgslsmith_index_u32(0u, 31u)]))) * vec4<f32>(-1235f, _wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(472f, 180f, false))), arg_0.b.x)));
    global3 = array<vec4<u32>, 8>();
    return ~abs(vec3<u32>(select(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), true), min(_wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 35127u), vec3<u32>(22128u, u_input.c, 4294967295u))), 34729u));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    global0 = array<i32, 30>();
    global3 = array<vec4<u32>, 8>();
    let var_0 = func_2(global1[_wgslsmith_index_u32(~(~u_input.c), 25u)], !(!(!select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, false, false, false), false))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(687f, 270f, -890f, 346f), vec4<f32>(arg_3.x, 457f, arg_3.x, -411f), true)), select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, true, arg_1), vec4<bool>(arg_1, false, true, false)))), vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(min(arg_3.x, arg_3.x)), _wgslsmith_f_op_f32(trunc(-1658f))))));
    let var_1 = select(!vec4<bool>(true, select(all(vec4<bool>(var_0.a, false, var_0.a, true)), all(vec2<bool>(false, var_0.a)), arg_1), all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1)), any(vec2<bool>(true, true))), select(vec4<bool>(arg_1, false, true, true), select(!select(vec4<bool>(arg_1, var_0.a, arg_1, true), vec4<bool>(false, true, var_0.a, var_0.a), true), select(vec4<bool>(false, var_0.a, arg_1, var_0.a), !vec4<bool>(true, false, arg_1, false), any(vec4<bool>(var_0.a, true, true, var_0.a))), false), select(select(!vec4<bool>(var_0.a, var_0.a, var_0.a, arg_1), vec4<bool>(arg_1, false, arg_1, false), var_0.a), select(select(vec4<bool>(false, arg_1, var_0.a, true), vec4<bool>(var_0.a, false, true, false), vec4<bool>(arg_1, var_0.a, var_0.a, var_0.a)), !vec4<bool>(arg_1, true, true, false), true), select(vec4<bool>(true, true, var_0.a, arg_1), vec4<bool>(var_0.a, true, var_0.a, arg_1), var_0.a))), !select(vec4<bool>(true, var_0.b.x <= arg_3.x, true, true), !vec4<bool>(var_0.a, false, true, true), true));
    global0 = array<i32, 30>();
    return var_0.b.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = -firstTrailingBit(-arg_0);
    global1 = array<Struct_2, 25>();
    let var_1 = reverseBits(u_input.c) >> (~reverseBits(_wgslsmith_add_u32(30130u, u_input.c) << (~u_input.c % 32u)) % 32u);
    global1 = array<Struct_2, 25>();
    var_0 = -vec2<i32>(~(-5297i << (u_input.c % 32u)), global0[_wgslsmith_index_u32(u_input.c ^ select(var_1 << (27480u % 32u), ~u_input.c, false), 30u)]);
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1960f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1227f * -496f))), _wgslsmith_f_op_f32(-1318f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1294f))))), _wgslsmith_f_op_f32(func_5(func_4(func_2(Struct_2(vec4<f32>(-1719f, -1042f, 140f, 333f), true, -657f, -317f, Struct_1(true, vec2<f32>(-1482f, 749f))), vec4<bool>(false, false, true, false), false, vec4<f32>(542f, -2435f, -349f, 1000f)), false, func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.c, 31u)], true, -420f, -638f, Struct_1(true, vec2<f32>(1548f, 1668f))), vec4<bool>(true, false, false, false), true, vec4<f32>(582f, 391f, -503f, 1052f))), any(vec4<bool>(true, true, true, true)), -48239i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1194f, 1223f, -1000f, 340f), vec4<f32>(-2503f, 539f, 615f, 1044f)) + global2[_wgslsmith_index_u32(u_input.c, 31u)]))), 1f), true, -1854f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1409f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + 299f))), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, 269f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(775f, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), all(vec2<bool>(true, true)), 14940u == u_input.c);
    global4 = array<Struct_1, 11>();
    var var_1 = u_input.d.xxz;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1876f, _wgslsmith_f_op_f32(-1656f + _wgslsmith_f_op_f32(f32(-1f) * -1629f))))));
    let var_3 = func_1(firstTrailingBit(max(vec2<i32>(0i, var_1.x), vec2<i32>(u_input.b, 2147483647i) | vec2<i32>(global0[_wgslsmith_index_u32(0u, 30u)], 5166i))));
    var var_4 = vec4<bool>(!((_wgslsmith_f_op_f32(func_5(vec3<u32>(3960u, u_input.c, 4294967295u), false, var_1.x, vec4<f32>(1453f, var_2.x, var_2.x, var_3.a.x))) >= _wgslsmith_f_op_f32(trunc(var_3.e.b.x))) || var_0), ~var_1.x >= u_input.a.x, false, false);
    global2 = array<vec4<f32>, 31>();
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

