struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<f32>(675f, 456f, 236f), vec2<i32>(-39546i, 43188i), vec2<bool>(false, true), Struct_1(vec3<f32>(407f, -186f, 1026f)), -419f), Struct_2(vec3<f32>(892f, -2279f, 153f), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(true, true), Struct_1(vec3<f32>(-474f, -948f, -1668f)), -525f), Struct_2(vec3<f32>(1540f, 314f, 359f), vec2<i32>(2147483647i, -439i), vec2<bool>(false, false), Struct_1(vec3<f32>(757f, 245f, 305f)), 1288f), Struct_2(vec3<f32>(-1561f, -182f, -744f), vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, true), Struct_1(vec3<f32>(1115f, 1012f, -942f)), -711f), Struct_2(vec3<f32>(3791f, -852f, -264f), vec2<i32>(2147483647i, -19291i), vec2<bool>(false, false), Struct_1(vec3<f32>(384f, 409f, 479f)), 136f), Struct_2(vec3<f32>(1600f, -1942f, -1000f), vec2<i32>(-1i, -1i), vec2<bool>(false, true), Struct_1(vec3<f32>(-1468f, -509f, 1253f)), -792f), Struct_2(vec3<f32>(-1123f, 857f, 1949f), vec2<i32>(-41558i, -1i), vec2<bool>(false, false), Struct_1(vec3<f32>(1000f, 548f, 1206f)), -1944f), Struct_2(vec3<f32>(433f, 322f, 146f), vec2<i32>(2147483647i, 1i), vec2<bool>(true, true), Struct_1(vec3<f32>(625f, 770f, -1449f)), 586f), Struct_2(vec3<f32>(-910f, -281f, -461f), vec2<i32>(i32(-2147483648), 55183i), vec2<bool>(true, true), Struct_1(vec3<f32>(2212f, 396f, 251f)), 1193f), Struct_2(vec3<f32>(3054f, 606f, -724f), vec2<i32>(-24967i, 1i), vec2<bool>(true, false), Struct_1(vec3<f32>(-1000f, 1672f, -305f)), -1151f), Struct_2(vec3<f32>(1965f, -515f, 2922f), vec2<i32>(-51563i, -14891i), vec2<bool>(true, true), Struct_1(vec3<f32>(-1063f, 446f, -505f)), 1000f), Struct_2(vec3<f32>(-668f, -320f, -738f), vec2<i32>(1i, -33429i), vec2<bool>(true, true), Struct_1(vec3<f32>(998f, -876f, -212f)), -1000f), Struct_2(vec3<f32>(822f, 1131f, 1000f), vec2<i32>(-9485i, -102295i), vec2<bool>(true, false), Struct_1(vec3<f32>(1073f, 633f, 279f)), -669f), Struct_2(vec3<f32>(-831f, 1000f, -2139f), vec2<i32>(1i, 0i), vec2<bool>(false, true), Struct_1(vec3<f32>(-155f, -981f, -1552f)), 1313f), Struct_2(vec3<f32>(423f, 152f, -465f), vec2<i32>(0i, 36577i), vec2<bool>(false, true), Struct_1(vec3<f32>(-784f, -1091f, -1226f)), 1000f), Struct_2(vec3<f32>(822f, 996f, -677f), vec2<i32>(-6725i, 64417i), vec2<bool>(false, true), Struct_1(vec3<f32>(-608f, -1423f, -544f)), -1000f), Struct_2(vec3<f32>(1000f, -1055f, 361f), vec2<i32>(1i, 57318i), vec2<bool>(true, false), Struct_1(vec3<f32>(2224f, -1541f, -212f)), 1028f), Struct_2(vec3<f32>(-581f, -1686f, -606f), vec2<i32>(1i, i32(-2147483648)), vec2<bool>(false, false), Struct_1(vec3<f32>(-1588f, -680f, 1747f)), 1207f), Struct_2(vec3<f32>(697f, -1781f, 773f), vec2<i32>(-36143i, -12346i), vec2<bool>(true, true), Struct_1(vec3<f32>(421f, 240f, -114f)), -157f), Struct_2(vec3<f32>(-786f, -749f, -2622f), vec2<i32>(2147483647i, 10135i), vec2<bool>(true, false), Struct_1(vec3<f32>(-1000f, -428f, 1434f)), 1220f), Struct_2(vec3<f32>(-1017f, -462f, 1170f), vec2<i32>(32824i, 0i), vec2<bool>(true, true), Struct_1(vec3<f32>(688f, 598f, -969f)), 401f), Struct_2(vec3<f32>(1259f, 1515f, 1770f), vec2<i32>(105430i, -32418i), vec2<bool>(false, false), Struct_1(vec3<f32>(499f, 933f, -445f)), 1000f), Struct_2(vec3<f32>(-400f, -877f, -2261f), vec2<i32>(0i, 2864i), vec2<bool>(false, true), Struct_1(vec3<f32>(628f, 363f, 739f)), -1557f), Struct_2(vec3<f32>(408f, 137f, -1846f), vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, true), Struct_1(vec3<f32>(-169f, -129f, -118f)), -542f), Struct_2(vec3<f32>(-770f, -944f, 1000f), vec2<i32>(0i, 0i), vec2<bool>(false, false), Struct_1(vec3<f32>(417f, 1458f, 116f)), -348f), Struct_2(vec3<f32>(848f, 287f, -1461f), vec2<i32>(-31113i, -35785i), vec2<bool>(false, true), Struct_1(vec3<f32>(779f, -985f, -1000f)), 314f), Struct_2(vec3<f32>(-1636f, 1469f, 407f), vec2<i32>(26351i, -22991i), vec2<bool>(false, true), Struct_1(vec3<f32>(2244f, -828f, 1557f)), -549f), Struct_2(vec3<f32>(-1368f, -1557f, 1034f), vec2<i32>(-18116i, 34946i), vec2<bool>(true, false), Struct_1(vec3<f32>(-532f, -796f, 1000f)), -425f), Struct_2(vec3<f32>(2280f, 1000f, 2684f), vec2<i32>(8345i, -14121i), vec2<bool>(true, false), Struct_1(vec3<f32>(-168f, 483f, 307f)), -633f), Struct_2(vec3<f32>(-231f, 498f, 1060f), vec2<i32>(-2627i, i32(-2147483648)), vec2<bool>(false, true), Struct_1(vec3<f32>(410f, 131f, -508f)), 1028f), Struct_2(vec3<f32>(1001f, 1234f, -714f), vec2<i32>(1i, -106745i), vec2<bool>(false, false), Struct_1(vec3<f32>(1000f, -1000f, 530f)), -600f));

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<f32>(1501f, -376f, 685f), vec2<i32>(0i, 28830i), vec2<bool>(true, false), Struct_1(vec3<f32>(-582f, -910f, -1143f)), -820f), Struct_2(vec3<f32>(-1056f, 1133f, -665f), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(true, true), Struct_1(vec3<f32>(-274f, -2270f, 594f)), -1067f), Struct_2(vec3<f32>(302f, 1000f, 586f), vec2<i32>(-81120i, 18916i), vec2<bool>(true, false), Struct_1(vec3<f32>(-1568f, 397f, -290f)), 1000f), Struct_2(vec3<f32>(1858f, 413f, -684f), vec2<i32>(19541i, i32(-2147483648)), vec2<bool>(true, true), Struct_1(vec3<f32>(-1000f, -738f, -1006f)), -268f), Struct_2(vec3<f32>(-521f, 1199f, 531f), vec2<i32>(74196i, 2147483647i), vec2<bool>(false, true), Struct_1(vec3<f32>(-649f, 792f, 1000f)), -186f), Struct_2(vec3<f32>(-1966f, 1391f, 2355f), vec2<i32>(2147483647i, 47829i), vec2<bool>(true, true), Struct_1(vec3<f32>(610f, 1566f, 1220f)), 599f), Struct_2(vec3<f32>(867f, 263f, 241f), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(true, true), Struct_1(vec3<f32>(-248f, 376f, -718f)), -593f), Struct_2(vec3<f32>(-1824f, -633f, -521f), vec2<i32>(-48078i, 0i), vec2<bool>(false, false), Struct_1(vec3<f32>(-830f, 439f, -1000f)), -996f), Struct_2(vec3<f32>(346f, 118f, 1320f), vec2<i32>(3647i, i32(-2147483648)), vec2<bool>(true, true), Struct_1(vec3<f32>(-895f, 671f, -1413f)), -186f));

var<private> global2: vec2<f32>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-715f, -546f, -1373f));

var<private> global4: Struct_2 = Struct_2(vec3<f32>(1414f, 1790f, 470f), vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, true), Struct_1(vec3<f32>(1726f, 1000f, -664f)), -196f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(1u, 9u)], Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(global3.a.x - 1145f)), global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2710f)))), vec2<i32>(global4.b.x, global4.b.x), select(vec2<bool>(true, false), global4.c, firstTrailingBit(4294967295u) != 2292u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.d.a * global4.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-716f - _wgslsmith_f_op_f32(797f * global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -799f))), min(~19039u, u_input.a.x), vec3<i32>(global4.b.x, ~(-(global4.b.x ^ global4.b.x)), global4.b.x), vec4<bool>(global4.c.x, any(vec4<bool>(false, true, global4.c.x, true)), -global4.b.x < _wgslsmith_mod_i32(global4.b.x, global4.b.x), !global4.c.x));
    let var_1 = global3.a;
    var var_2 = var_0.a.d;
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(54591u, 31u)], Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1226f, var_2.a.x, var_1.x))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(10359i, global4.b.x, global4.b.x), 2147483647i ^ var_0.a.b.x), countOneBits(-vec2<i32>(global4.b.x, -2147483647i))), vec2<bool>(any(select(global4.c, vec2<bool>(true, global4.c.x), true)), !var_0.a.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.a, vec3<f32>(-1000f, var_0.a.d.a.x, 1126f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + global3.a.x))), u_input.b.x << (reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a | vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, u_input.b.x))) % 32u), _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(select(var_0.d.x, 21710i, var_0.e.x)), (10419i & global4.b.x) ^ _wgslsmith_mult_i32(2756i, var_0.d.x), _wgslsmith_mod_i32(global4.b.x, -var_0.a.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.x, 0i, select(-1i, global4.b.x, false)), abs(~var_0.d))), !(!var_0.e));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1151f, 985f, global2.x, -1033f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.a.x, -1072f, global2.x)), any(vec4<bool>(false, var_3.a.c.x, true, false)))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(230f - -779f), _wgslsmith_f_op_f32(-1935f * var_0.a.e), var_3.b.e, 101f)))), vec4<f32>(var_0.a.e, _wgslsmith_f_op_f32(1027f + _wgslsmith_f_op_f32(round(global4.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.d.a.x) + -853f), _wgslsmith_f_op_f32(f32(-1f) * -1154f)), var_1.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))) - _wgslsmith_f_op_f32(-global4.a.x)) - 176f);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = arg_1.b.c.x;
    var var_2 = ~(~vec4<u32>(~var_0.c, arg_1.c, reverseBits(717u), 0u) | ~vec4<u32>(83655u, 1u, arg_1.c, 1u & u_input.b.x));
    global1 = array<Struct_2, 9>();
    var var_3 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(func_3()))), var_0.a.e, all(var_0.e.xxw))));
    return var_0.a.d;
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.a.x, _wgslsmith_div_f32(-1293f, global4.e))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(329f)), 1568f, any(vec4<bool>(true, arg_0.e.x, global4.c.x, global4.c.x)))))), arg_0, max(-vec2<i32>(global4.b.x, -1i) ^ vec2<i32>(40313i, arg_0.a.b.x), vec2<i32>(-1i) * -abs(arg_0.d.xy)));
    global1 = array<Struct_2, 9>();
    let var_1 = global1[_wgslsmith_index_u32(abs(arg_0.c), 9u)];
    global2 = global4.a.xz;
    global1 = array<Struct_2, 9>();
    return global4.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global4.d;
    let var_0 = _wgslsmith_f_op_f32(-893f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
    let var_1 = false;
    var var_2 = u_input.a.zx;
    global0 = array<Struct_2, 31>();
    let var_3 = global4.d;
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(var_3.a.x, _wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(sign(1372f))))), _wgslsmith_f_op_f32(var_0 - global4.e), var_0));
    var var_5 = global4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.a.x, -1855f, global4.e, var_0)))), 40255u, vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(vec3<f32>(global4.a.x, 297f, global3.a.x), vec2<i32>(-11303i, global4.b.x), global4.c, Struct_1(vec3<f32>(795f, -262f, var_4.a.x)), 515f), Struct_2(global3.a, global4.b, global4.c, global4.d, -854f), 50201u, vec3<i32>(13012i, 1i, global4.b.x), vec4<bool>(var_1, false, global4.c.x, true)))), _wgslsmith_f_op_f32(var_0 + var_4.a.x), false))), _wgslsmith_f_op_f32(-1042f + -1067f), global3.a.x));
}

