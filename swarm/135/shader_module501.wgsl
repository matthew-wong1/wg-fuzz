struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<bool>(false, true, false), Struct_1(-1000f, vec4<u32>(0u, 1u, 92858u, 0u), vec3<f32>(-644f, 1000f, -1000f), vec3<f32>(1082f, 485f, 421f), vec2<bool>(false, false)), vec4<f32>(-755f, 248f, 881f, 392f), -932f, vec2<u32>(13834u, 94274u)), Struct_2(vec3<bool>(false, true, true), Struct_1(2342f, vec4<u32>(4294967295u, 54908u, 1u, 4294967295u), vec3<f32>(174f, -450f, 442f), vec3<f32>(1183f, 636f, -1348f), vec2<bool>(true, true)), vec4<f32>(269f, 195f, -427f, 1770f), 1000f, vec2<u32>(1u, 1u)), Struct_2(vec3<bool>(true, true, true), Struct_1(220f, vec4<u32>(12833u, 28273u, 4294967295u, 14537u), vec3<f32>(1766f, 662f, 618f), vec3<f32>(340f, 821f, -224f), vec2<bool>(true, false)), vec4<f32>(-201f, -1820f, -712f, 288f), -1311f, vec2<u32>(4294967295u, 45490u)), Struct_2(vec3<bool>(true, true, false), Struct_1(857f, vec4<u32>(31812u, 0u, 7842u, 61070u), vec3<f32>(1000f, 347f, -775f), vec3<f32>(-967f, -353f, -456f), vec2<bool>(true, false)), vec4<f32>(1072f, -301f, 342f, 1320f), 795f, vec2<u32>(1u, 12763u)), Struct_2(vec3<bool>(false, false, true), Struct_1(-635f, vec4<u32>(1u, 1u, 1u, 18384u), vec3<f32>(-2453f, -612f, -1320f), vec3<f32>(688f, 565f, 1017f), vec2<bool>(false, true)), vec4<f32>(-966f, -1502f, 2545f, -1046f), -3371f, vec2<u32>(4294967295u, 43599u)), Struct_2(vec3<bool>(false, false, true), Struct_1(508f, vec4<u32>(24406u, 4294967295u, 102887u, 4294967295u), vec3<f32>(545f, 263f, -472f), vec3<f32>(427f, -118f, -1347f), vec2<bool>(true, true)), vec4<f32>(-653f, 617f, -478f, -1527f), -2929f, vec2<u32>(4294967295u, 90997u)), Struct_2(vec3<bool>(true, true, true), Struct_1(856f, vec4<u32>(0u, 0u, 4294967295u, 5444u), vec3<f32>(1398f, -1196f, 421f), vec3<f32>(1054f, -645f, 1434f), vec2<bool>(false, true)), vec4<f32>(1000f, 769f, 1266f, -1141f), -1261f, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<bool>(false, false, false), Struct_1(-343f, vec4<u32>(42923u, 5700u, 26901u, 1u), vec3<f32>(397f, 1000f, 818f), vec3<f32>(614f, 388f, -1499f), vec2<bool>(false, true)), vec4<f32>(-633f, -702f, 571f, 1346f), -1754f, vec2<u32>(21612u, 24942u)), Struct_2(vec3<bool>(true, false, true), Struct_1(653f, vec4<u32>(30003u, 0u, 1u, 0u), vec3<f32>(673f, 631f, -726f), vec3<f32>(-680f, 585f, 2030f), vec2<bool>(true, false)), vec4<f32>(1559f, 162f, 1254f, 949f), -351f, vec2<u32>(60507u, 40215u)), Struct_2(vec3<bool>(false, true, false), Struct_1(205f, vec4<u32>(59340u, 0u, 106555u, 10646u), vec3<f32>(1810f, -280f, 230f), vec3<f32>(-1279f, -238f, -497f), vec2<bool>(true, true)), vec4<f32>(-1062f, -1503f, 277f, 1012f), -284f, vec2<u32>(40431u, 4294967295u)), Struct_2(vec3<bool>(true, false, true), Struct_1(-534f, vec4<u32>(4294967295u, 4294967295u, 78474u, 35816u), vec3<f32>(-1408f, -493f, 1558f), vec3<f32>(322f, -515f, 284f), vec2<bool>(true, false)), vec4<f32>(-1461f, -1555f, -622f, 1153f), 632f, vec2<u32>(47317u, 33970u)), Struct_2(vec3<bool>(false, true, false), Struct_1(-1769f, vec4<u32>(4294967295u, 48250u, 4294967295u, 4294967295u), vec3<f32>(-2873f, 975f, -814f), vec3<f32>(-914f, -123f, -427f), vec2<bool>(false, false)), vec4<f32>(939f, -1216f, -952f, 2696f), -2117f, vec2<u32>(31127u, 1u)), Struct_2(vec3<bool>(true, true, true), Struct_1(1975f, vec4<u32>(58221u, 0u, 4294967295u, 32396u), vec3<f32>(-2399f, -1891f, -315f), vec3<f32>(1936f, 1342f, 302f), vec2<bool>(true, true)), vec4<f32>(-1436f, 2823f, -675f, 1114f), -222f, vec2<u32>(4294967295u, 1u)), Struct_2(vec3<bool>(true, false, true), Struct_1(1243f, vec4<u32>(0u, 8953u, 1u, 31622u), vec3<f32>(147f, 744f, -684f), vec3<f32>(-839f, 837f, 849f), vec2<bool>(true, true)), vec4<f32>(260f, -866f, 1098f, 1391f), -394f, vec2<u32>(1u, 4294967295u)), Struct_2(vec3<bool>(true, true, false), Struct_1(-613f, vec4<u32>(5279u, 22882u, 1u, 4294967295u), vec3<f32>(908f, -343f, -635f), vec3<f32>(203f, -1220f, -1780f), vec2<bool>(false, false)), vec4<f32>(1297f, 1000f, -1841f, 150f), 447f, vec2<u32>(0u, 1u)), Struct_2(vec3<bool>(false, false, false), Struct_1(1639f, vec4<u32>(59112u, 1u, 1u, 24862u), vec3<f32>(200f, -1236f, -399f), vec3<f32>(-1625f, -1000f, 816f), vec2<bool>(false, false)), vec4<f32>(-1000f, -1000f, 1935f, -1390f), 1249f, vec2<u32>(0u, 131265u)), Struct_2(vec3<bool>(false, false, false), Struct_1(1492f, vec4<u32>(1u, 81066u, 3628u, 30057u), vec3<f32>(507f, -1088f, 883f), vec3<f32>(-1000f, 311f, 835f), vec2<bool>(false, false)), vec4<f32>(-1585f, 519f, -367f, -829f), -1870f, vec2<u32>(12523u, 0u)), Struct_2(vec3<bool>(false, true, false), Struct_1(3132f, vec4<u32>(4294967295u, 4294967295u, 28466u, 542u), vec3<f32>(-369f, 1207f, -1232f), vec3<f32>(172f, 780f, 981f), vec2<bool>(false, false)), vec4<f32>(-1255f, 842f, 678f, -1301f), -533f, vec2<u32>(13128u, 6993u)), Struct_2(vec3<bool>(true, false, false), Struct_1(-263f, vec4<u32>(4294967295u, 87649u, 0u, 0u), vec3<f32>(-710f, 619f, -661f), vec3<f32>(700f, -757f, 1194f), vec2<bool>(true, true)), vec4<f32>(-1000f, 229f, 1047f, -692f), -315f, vec2<u32>(0u, 26310u)), Struct_2(vec3<bool>(true, false, true), Struct_1(1043f, vec4<u32>(16721u, 11005u, 4294967295u, 4294967295u), vec3<f32>(-677f, 223f, 2061f), vec3<f32>(-744f, 953f, 287f), vec2<bool>(false, true)), vec4<f32>(589f, -822f, 188f, 359f), 553f, vec2<u32>(0u, 0u)), Struct_2(vec3<bool>(true, true, false), Struct_1(1558f, vec4<u32>(1u, 17389u, 35284u, 35290u), vec3<f32>(924f, -887f, 184f), vec3<f32>(539f, -360f, 956f), vec2<bool>(false, false)), vec4<f32>(415f, 1203f, -566f, -669f), -1887f, vec2<u32>(79469u, 67165u)), Struct_2(vec3<bool>(true, false, true), Struct_1(221f, vec4<u32>(4294967295u, 1u, 21705u, 4294967295u), vec3<f32>(382f, 413f, -1381f), vec3<f32>(-945f, -613f, 616f), vec2<bool>(true, true)), vec4<f32>(-284f, -435f, -104f, -750f), 106f, vec2<u32>(24979u, 71041u)), Struct_2(vec3<bool>(true, false, true), Struct_1(164f, vec4<u32>(54001u, 0u, 72727u, 2014u), vec3<f32>(-1000f, 541f, 873f), vec3<f32>(200f, 2481f, 671f), vec2<bool>(true, true)), vec4<f32>(-1116f, -1000f, -424f, -464f), 3932f, vec2<u32>(0u, 66951u)), Struct_2(vec3<bool>(true, false, false), Struct_1(-925f, vec4<u32>(42172u, 6044u, 4294967295u, 4294967295u), vec3<f32>(-863f, 2229f, -103f), vec3<f32>(115f, -1778f, 1458f), vec2<bool>(false, true)), vec4<f32>(-106f, 973f, 456f, -1000f), 448f, vec2<u32>(69564u, 1u)));

var<private> global1: i32;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<bool>(false, true, false), Struct_1(1060f, vec4<u32>(78568u, 0u, 4294967295u, 41848u), vec3<f32>(341f, -975f, -1297f), vec3<f32>(665f, -1275f, 609f), vec2<bool>(true, false)), vec4<f32>(-1651f, 1000f, -382f, -767f), 558f, vec2<u32>(101364u, 81750u)), Struct_2(vec3<bool>(false, false, true), Struct_1(1578f, vec4<u32>(25927u, 1u, 0u, 50899u), vec3<f32>(-1091f, -369f, -1814f), vec3<f32>(1563f, -180f, 1020f), vec2<bool>(true, true)), vec4<f32>(1067f, -183f, -682f, -378f), 139f, vec2<u32>(74356u, 24551u)), Struct_2(vec3<bool>(true, true, false), Struct_1(474f, vec4<u32>(19183u, 1u, 1u, 1u), vec3<f32>(-867f, 679f, 867f), vec3<f32>(-118f, -1000f, 254f), vec2<bool>(false, true)), vec4<f32>(-885f, 1319f, -511f, -214f), 2385f, vec2<u32>(45435u, 41225u)), Struct_2(vec3<bool>(true, false, true), Struct_1(132f, vec4<u32>(50046u, 1u, 1u, 0u), vec3<f32>(859f, -312f, -582f), vec3<f32>(486f, -1277f, -215f), vec2<bool>(true, false)), vec4<f32>(-832f, -2135f, -866f, -607f), 191f, vec2<u32>(32548u, 26942u)));

var<private> global3: array<Struct_2, 19>;

var<private> global4: array<i32, 14> = array<i32, 14>(1i, 0i, 1i, 0i, -1i, 2147483647i, -27116i, -8112i, -1i, -1i, -1i, 48910i, -12674i, 18i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<Struct_2, 4>();
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -182f), select((u_input.a << (countOneBits(u_input.a) % vec4<u32>(32u))) ^ u_input.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 54021u), u_input.d, ~u_input.a.x, 1u)), vec4<bool>(true, u_input.a.x != 1u, true, select(false, true, arg_0 < arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-723f, arg_0, -1268f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-315f, arg_0, 1185f), vec3<f32>(arg_0, arg_0, arg_0), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-786f, 333f, arg_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, 1115f, arg_0))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, 1000f, arg_0))))) + vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(round(arg_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, -1209f)))))), vec2<bool>(true, true));
    global3 = array<Struct_2, 19>();
    let var_1 = select(!(var_0.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f))), true, -22679i < u_input.b.x);
    var var_2 = Struct_1(var_0.d.x, vec4<u32>(_wgslsmith_sub_u32(u_input.d | _wgslsmith_dot_vec2_u32(var_0.b.wz, u_input.c), ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u)), 1u, 1u, ~27514u), var_0.d, _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))))), !vec2<bool>(false, any(select(vec4<bool>(false, var_0.e.x, var_0.e.x, false), vec4<bool>(true, var_0.e.x, var_1, false), false))));
    return ~(13292u >> (0u % 32u));
}

fn func_2(arg_0: Struct_1) -> bool {
    global2 = array<Struct_2, 4>();
    let var_0 = vec4<u32>(1u, arg_0.b.x, arg_0.b.x, func_3(1000f));
    return true;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = u_input.b.x;
    global3 = array<Struct_2, 19>();
    let var_1 = Struct_1(-403f, firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, -1380f)))), 721f) + vec3<f32>(_wgslsmith_f_op_f32(-597f + _wgslsmith_f_op_f32(-1000f - -1952f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-976f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-660f))))), vec3<f32>(1f, -2282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-931f * 1000f) + 1861f))), !(!vec2<bool>(func_2(Struct_1(-934f, vec4<u32>(u_input.e.x, 1913u, 43998u, u_input.a.x), vec3<f32>(1000f, 186f, 338f), vec3<f32>(882f, -262f, -1259f), vec2<bool>(false, true))), !arg_0)));
    let var_2 = ~(-vec4<i32>(~_wgslsmith_div_i32(var_0, -58479i), _wgslsmith_sub_i32(0i, 1i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0, 12073i, global4[_wgslsmith_index_u32(u_input.a.x, 14u)])) << ((u_input.a.x << (var_1.b.x % 32u)) % 32u), ~(i32(-1i) * -2147483647i)));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(select(var_1.a, -1213f, arg_0));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(483f + -897f), _wgslsmith_f_op_f32(arg_2.c.x + arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 725f) - _wgslsmith_f_op_f32(-arg_0)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.d)), _wgslsmith_f_op_f32(arg_2.c.x * arg_2.c.x)) * _wgslsmith_div_f32(arg_2.b.c.x, arg_0))));
    let var_2 = abs(u_input.e.zx);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(107f, arg_2.d) * _wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, arg_2.c.x)), !func_2(Struct_1(arg_2.b.d.x, arg_2.b.b, arg_2.c.zxx, vec3<f32>(-187f, var_1, 2363f), arg_2.b.e)))))), arg_2.c.x, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * -990f))));
    var var_4 = u_input.c.x | arg_2.b.b.x;
    return arg_2.b.e;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    global4 = array<i32, 14>();
    global3 = array<Struct_2, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1822f - _wgslsmith_f_op_f32(f32(-1f) * -227f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 684f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f))), ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_0.x, 34560u, arg_0.x, 86795u)), ~countOneBits(u_input.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, _wgslsmith_f_op_f32(sign(-296f)), _wgslsmith_f_op_f32(f32(-1f) * -396f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, -504f, 186f)))), vec3<f32>(1f, 1f, 1f))), vec2<bool>(arg_1, all(vec3<bool>(arg_2.x, arg_2.x, false))));
    global2 = array<Struct_2, 4>();
    var var_1 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(-var_0.d.x), reverseBits(select(u_input.a, select(vec4<u32>(36676u, 2171u, var_0.b.x, 37671u), firstLeadingBit(vec4<u32>(var_0.b.x, arg_0.x, 1u, 20687u)), vec4<bool>(var_1.e.x, true, var_1.e.x, true)), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_1.d.x, _wgslsmith_f_op_f32(-var_1.a)) * vec3<f32>(_wgslsmith_f_op_f32(round(-1283f)), var_1.c.x, _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c - vec3<f32>(-1000f, 229f, 658f)))))), var_0.c, !var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_5(~(~u_input.a), true, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(611f - _wgslsmith_f_op_f32(f32(-1f) * -1068f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0)))), select(-1i, 2147483647i, true) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(11541u, 14u)], u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(-541i, u_input.b.x, 2147483647i, 0i)), Struct_2(vec3<bool>(true, true, var_0), Struct_1(_wgslsmith_f_op_f32(max(613f, -256f)), abs(vec4<u32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, 869f, 332f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-724f, 1054f, -760f)), !vec2<bool>(var_0, var_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-2327f, -355f, 273f, -212f), vec4<f32>(-1114f, -153f, -931f, -571f)), vec4<f32>(179f, 671f, -1051f, -1357f), !vec4<bool>(var_0, var_0, true, true))), -1401f, _wgslsmith_add_vec2_u32(select(u_input.a.zz, u_input.a.xx, vec2<bool>(var_0, var_0)), min(u_input.e.yy, u_input.e.zz)))));
    var var_2 = global2[_wgslsmith_index_u32(0u, 4u)];
    var var_3 = var_2.c.wxy;
    let var_4 = var_1.c.yy;
    var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-483f)), var_2.c.x);
    let var_5 = Struct_1(var_4.x, ~var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_3.x + var_1.d.x), -719f, _wgslsmith_f_op_f32(sign(var_3.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.c.x))), _wgslsmith_f_op_f32(-var_2.d), var_3.x)), var_1.d, vec2<bool>(any(var_2.a.xx), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, select(~1u, func_3(-373f), false) >> (~(~u_input.e.x) % 32u));
}

