struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(0i, -56316i, 0i, -1i, 43934i, 38207i, 9459i, 7635i, -1i, -1i, -29802i, 2147483647i);

var<private> global1: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(false, 826i, 669f, Struct_1(-2876f, vec2<f32>(-2089f, -834f), false), Struct_3(Struct_1(-787f, vec2<f32>(-1000f, -270f), false), -403f, Struct_1(-297f, vec2<f32>(1946f, 1390f), true))), Struct_5(false, i32(-2147483648), -529f, Struct_1(-1000f, vec2<f32>(677f, 610f), false), Struct_3(Struct_1(-656f, vec2<f32>(370f, 610f), true), -393f, Struct_1(255f, vec2<f32>(-742f, -223f), true))), Struct_5(true, i32(-2147483648), -1103f, Struct_1(-1999f, vec2<f32>(1000f, 509f), false), Struct_3(Struct_1(558f, vec2<f32>(-988f, -1000f), true), 1604f, Struct_1(-853f, vec2<f32>(-283f, 355f), false))), Struct_5(true, -26999i, 847f, Struct_1(-905f, vec2<f32>(-1115f, -621f), false), Struct_3(Struct_1(-117f, vec2<f32>(1365f, -1000f), true), 539f, Struct_1(-1453f, vec2<f32>(-1000f, -1000f), true))), Struct_5(true, -1i, -380f, Struct_1(-981f, vec2<f32>(1166f, -341f), false), Struct_3(Struct_1(495f, vec2<f32>(506f, -1136f), false), 1269f, Struct_1(-713f, vec2<f32>(229f, -763f), true))), Struct_5(false, -12176i, -1004f, Struct_1(1095f, vec2<f32>(-697f, -1025f), false), Struct_3(Struct_1(1000f, vec2<f32>(-670f, 1280f), false), 117f, Struct_1(-942f, vec2<f32>(360f, -870f), false))), Struct_5(true, 4903i, 369f, Struct_1(155f, vec2<f32>(135f, 1524f), true), Struct_3(Struct_1(657f, vec2<f32>(685f, 240f), true), -808f, Struct_1(-1925f, vec2<f32>(-675f, -241f), true))), Struct_5(false, 2147483647i, 1155f, Struct_1(-644f, vec2<f32>(417f, -218f), true), Struct_3(Struct_1(357f, vec2<f32>(-638f, 1876f), true), -233f, Struct_1(715f, vec2<f32>(603f, -1587f), true))), Struct_5(true, -48605i, -1426f, Struct_1(-692f, vec2<f32>(1150f, -167f), false), Struct_3(Struct_1(1020f, vec2<f32>(-611f, 830f), false), 2198f, Struct_1(-198f, vec2<f32>(904f, 647f), true))), Struct_5(true, 1i, -1612f, Struct_1(664f, vec2<f32>(-788f, -462f), false), Struct_3(Struct_1(-297f, vec2<f32>(399f, 290f), false), 455f, Struct_1(1481f, vec2<f32>(798f, -659f), true))), Struct_5(true, -52239i, 1316f, Struct_1(-733f, vec2<f32>(-297f, -2247f), true), Struct_3(Struct_1(934f, vec2<f32>(1329f, 673f), true), 103f, Struct_1(1000f, vec2<f32>(-900f, -877f), false))), Struct_5(true, -31451i, -411f, Struct_1(409f, vec2<f32>(643f, -759f), true), Struct_3(Struct_1(-1166f, vec2<f32>(717f, 214f), true), 179f, Struct_1(-735f, vec2<f32>(-1000f, 527f), true))), Struct_5(false, 31960i, -728f, Struct_1(-577f, vec2<f32>(-404f, 769f), false), Struct_3(Struct_1(1156f, vec2<f32>(786f, 114f), false), 301f, Struct_1(128f, vec2<f32>(-1078f, -903f), false))), Struct_5(false, -9148i, 2499f, Struct_1(-611f, vec2<f32>(124f, 1846f), true), Struct_3(Struct_1(293f, vec2<f32>(-1773f, 1351f), false), 304f, Struct_1(-130f, vec2<f32>(-106f, -950f), true))), Struct_5(false, 2147483647i, -1123f, Struct_1(1300f, vec2<f32>(-1000f, 398f), false), Struct_3(Struct_1(-720f, vec2<f32>(-1231f, -1420f), true), -481f, Struct_1(211f, vec2<f32>(-137f, 772f), true))), Struct_5(false, 14659i, 2157f, Struct_1(-207f, vec2<f32>(239f, 455f), true), Struct_3(Struct_1(-1211f, vec2<f32>(125f, 664f), false), 671f, Struct_1(-522f, vec2<f32>(448f, -844f), true))), Struct_5(false, 0i, 1290f, Struct_1(-608f, vec2<f32>(275f, 340f), false), Struct_3(Struct_1(-1000f, vec2<f32>(1000f, -1019f), false), -1801f, Struct_1(-1460f, vec2<f32>(371f, -219f), false))), Struct_5(false, 47384i, -1349f, Struct_1(944f, vec2<f32>(-1281f, -500f), true), Struct_3(Struct_1(-288f, vec2<f32>(-1374f, -172f), false), -387f, Struct_1(-430f, vec2<f32>(335f, -140f), true))), Struct_5(false, 2147483647i, 2149f, Struct_1(-670f, vec2<f32>(798f, -1000f), true), Struct_3(Struct_1(-243f, vec2<f32>(-515f, -793f), false), 144f, Struct_1(-637f, vec2<f32>(1041f, 683f), true))), Struct_5(true, -1i, 1000f, Struct_1(1636f, vec2<f32>(449f, -234f), true), Struct_3(Struct_1(272f, vec2<f32>(-861f, 1139f), true), 1432f, Struct_1(-835f, vec2<f32>(-542f, -537f), false))), Struct_5(true, -4456i, 403f, Struct_1(1244f, vec2<f32>(-561f, -856f), true), Struct_3(Struct_1(2065f, vec2<f32>(-594f, -399f), true), -232f, Struct_1(672f, vec2<f32>(-2669f, 448f), true))), Struct_5(false, 2147483647i, 148f, Struct_1(377f, vec2<f32>(816f, 233f), false), Struct_3(Struct_1(568f, vec2<f32>(-1596f, 1298f), true), 1431f, Struct_1(1244f, vec2<f32>(-138f, 1647f), false))), Struct_5(false, 0i, -1976f, Struct_1(-1000f, vec2<f32>(-498f, -2610f), false), Struct_3(Struct_1(-338f, vec2<f32>(-345f, -887f), true), 600f, Struct_1(-263f, vec2<f32>(-1292f, -1000f), false))), Struct_5(false, 3163i, 499f, Struct_1(369f, vec2<f32>(1000f, 180f), false), Struct_3(Struct_1(-520f, vec2<f32>(453f, 1564f), true), 521f, Struct_1(2108f, vec2<f32>(-489f, 545f), true))), Struct_5(true, 2147483647i, 408f, Struct_1(1450f, vec2<f32>(-2436f, 1229f), false), Struct_3(Struct_1(-1350f, vec2<f32>(-1042f, -160f), false), 1000f, Struct_1(-495f, vec2<f32>(126f, -1599f), true))), Struct_5(true, 2147483647i, -310f, Struct_1(-1010f, vec2<f32>(-506f, 295f), false), Struct_3(Struct_1(-1138f, vec2<f32>(117f, -288f), true), 1090f, Struct_1(507f, vec2<f32>(-227f, -794f), true))), Struct_5(true, 1i, 596f, Struct_1(203f, vec2<f32>(1340f, 713f), false), Struct_3(Struct_1(661f, vec2<f32>(144f, 345f), true), -237f, Struct_1(-516f, vec2<f32>(462f, -1695f), false))), Struct_5(true, i32(-2147483648), -750f, Struct_1(314f, vec2<f32>(642f, -1441f), false), Struct_3(Struct_1(770f, vec2<f32>(-1721f, -1506f), false), 689f, Struct_1(-1931f, vec2<f32>(1271f, -270f), true))), Struct_5(true, 1i, 1247f, Struct_1(1112f, vec2<f32>(727f, 168f), true), Struct_3(Struct_1(-1086f, vec2<f32>(1110f, 549f), false), -601f, Struct_1(248f, vec2<f32>(-1007f, 2626f), true))), Struct_5(false, -35880i, 546f, Struct_1(930f, vec2<f32>(-796f, 743f), true), Struct_3(Struct_1(919f, vec2<f32>(-1593f, 272f), false), -1074f, Struct_1(-645f, vec2<f32>(-2201f, 1203f), true))), Struct_5(true, 0i, -1166f, Struct_1(-495f, vec2<f32>(435f, 922f), false), Struct_3(Struct_1(-668f, vec2<f32>(1964f, 361f), true), 461f, Struct_1(-754f, vec2<f32>(621f, 1000f), false))));

var<private> global2: f32;

var<private> global3: Struct_5 = Struct_5(false, 0i, 547f, Struct_1(-663f, vec2<f32>(-639f, -250f), true), Struct_3(Struct_1(316f, vec2<f32>(335f, -935f), false), -462f, Struct_1(1477f, vec2<f32>(593f, -507f), false)));

var<private> global4: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global2 = -251f;
    global1 = array<Struct_5, 31>();
    global2 = global4.b;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.e.c.b.x, _wgslsmith_f_op_f32(max(global3.e.c.a, global3.e.a.b.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1088f))));
    let var_1 = 42680u;
    return _wgslsmith_mod_i32(global3.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, ~(-29982i)), vec2<i32>(-28392i, 1i)), vec2<i32>(countOneBits(global4.c) >> (~var_1 % 32u), 1i)));
}

fn func_2() -> bool {
    var var_0 = Struct_4(global4.a, -1000f, max(2147483647i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(1u, u_input.a.x)), 12u)] ^ ~global4.c, func_3())));
    var var_1 = abs(-vec2<i32>(reverseBits(-1i), abs(global0[_wgslsmith_index_u32(1u, 12u)])) ^ ~(reverseBits(vec2<i32>(11496i, global0[_wgslsmith_index_u32(8554u, 12u)])) | -vec2<i32>(global4.c, 28569i)));
    global3 = Struct_5(!global3.a, ~(~(-countOneBits(global0[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-585f)) - var_0.a.x))), _wgslsmith_f_op_f32(-1000f * var_0.a.x), !any(select(vec3<bool>(true, global3.e.c.c, global3.e.c.c), vec3<bool>(true, global3.a, global3.a), true)))), Struct_1(global3.e.b, global4.a, true), global3.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(441f, var_0.a.x) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global4.a)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1862f * -875f) + _wgslsmith_f_op_f32(sign(302f)))), global3.e.c.b, false);
    return true;
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) + _wgslsmith_f_op_f32(sign(-1284f))))) * global3.d.a);
    var var_0 = !vec4<bool>(true, func_2(), false, global3.a);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1186f, global3.e.a.b.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global4.a.x, global4.a.x), vec2<f32>(-1000f, global4.b)))), global4.a)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global3.e.a.a, global3.d.a)))) + global4.b), Struct_1(global3.e.a.a, global3.d.b, any(var_0.yww)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - 900f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1241f, 1016f), _wgslsmith_f_op_f32(-global3.c)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1335f, 738f)), global3.e.c.b, global4.a.x > 974f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.b.x, -1968f) - vec2<f32>(797f, var_1.c.a)))), all(!(!var_0.wyz)))), global3.d.c);
    var var_3 = select(true, var_0.x, true);
    return Struct_1(global4.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_1.a.b, var_2.b), global4.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2575f, 1000f)))), var_2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.b), 1079f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1662f, -687f)) + _wgslsmith_f_op_vec2_f32(max(global4.a, global3.d.b))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(_wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x)))), 31u)];
    let var_0 = 159f;
    global4 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.c + global3.c), global4.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, -702f) + vec2<f32>(global3.d.b.x, _wgslsmith_f_op_f32(select(var_0, -1000f, global3.d.c))))), _wgslsmith_div_f32(1516f, 1000f), ~global3.b);
    let var_1 = Struct_5(global3.a, global0[_wgslsmith_index_u32(~select(u_input.a.x, u_input.a.x, true) >> (4294967295u % 32u), 12u)], _wgslsmith_f_op_f32(var_0 - -501f), func_1(), global3.e);
    var var_2 = vec2<bool>(var_1.a, !global3.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-410f - 729f), _wgslsmith_f_op_f32(sign(-308f)))))), _wgslsmith_div_f32(var_1.e.b, global4.b), -44434i);
}

