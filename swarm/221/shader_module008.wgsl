struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(-215f, 681f, -182f, 429f)), vec4<f32>(-731f, -703f, -1000f, 1246f), Struct_1(vec4<f32>(2541f, 115f, -395f, 994f)), vec4<i32>(-7324i, 74908i, 15729i, 2147483647i)), Struct_1(vec4<f32>(353f, 1017f, -817f, -1684f)), vec2<f32>(400f, 1000f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(214f, 969f, 171f, 497f)), vec4<f32>(1000f, 1679f, 1161f, -298f), Struct_1(vec4<f32>(-1587f, -103f, -145f, 1000f)), vec4<i32>(1i, i32(-2147483648), 3214i, -35869i)), Struct_1(vec4<f32>(-1000f, -753f, 225f, 165f)), vec2<f32>(-1000f, 2409f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(570f, 1073f, 954f, 1000f)), vec4<f32>(2336f, 1266f, 262f, 464f), Struct_1(vec4<f32>(-800f, -1995f, -189f, -433f)), vec4<i32>(25440i, 2147483647i, -25869i, -32114i)), Struct_1(vec4<f32>(574f, 913f, 572f, 1432f)), vec2<f32>(776f, -304f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(-1697f, 538f, -781f, -1000f)), vec4<f32>(1186f, 632f, 286f, 264f), Struct_1(vec4<f32>(-818f, -655f, 369f, 504f)), vec4<i32>(498i, i32(-2147483648), -1i, 35092i)), Struct_1(vec4<f32>(-208f, -2084f, -1000f, 1286f)), vec2<f32>(-146f, -1285f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(-1676f, 1030f, 839f, 989f)), vec4<f32>(-1180f, -241f, -1385f, 594f), Struct_1(vec4<f32>(-144f, -270f, 1158f, -1769f)), vec4<i32>(48012i, -62378i, 9539i, 0i)), Struct_1(vec4<f32>(824f, 437f, 2254f, -1000f)), vec2<f32>(-492f, 1000f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(915f, -792f, 1469f, 881f)), vec4<f32>(-777f, -1688f, 1000f, -169f), Struct_1(vec4<f32>(355f, -1542f, -1020f, 1000f)), vec4<i32>(i32(-2147483648), 2673i, 40132i, 45552i)), Struct_1(vec4<f32>(844f, 193f, -1251f, 1020f)), vec2<f32>(-917f, -1835f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(799f, -567f, -1094f, 1343f)), vec4<f32>(1313f, 413f, 378f, 251f), Struct_1(vec4<f32>(470f, -2522f, -1769f, 358f)), vec4<i32>(-1i, -33367i, 2147483647i, 2147483647i)), Struct_1(vec4<f32>(1000f, 867f, -778f, 1179f)), vec2<f32>(1226f, 1000f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(636f, -246f, -588f, -1045f)), vec4<f32>(-598f, -1560f, -1246f, 538f), Struct_1(vec4<f32>(363f, 1539f, -2139f, 1000f)), vec4<i32>(1i, -46982i, i32(-2147483648), -14821i)), Struct_1(vec4<f32>(340f, 1003f, -640f, -831f)), vec2<f32>(-1108f, -339f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(1513f, -1530f, 914f, 559f)), vec4<f32>(-302f, 1190f, -803f, 467f), Struct_1(vec4<f32>(963f, 1754f, -908f, -1404f)), vec4<i32>(1i, -61636i, -47968i, -59316i)), Struct_1(vec4<f32>(-1124f, 873f, 679f, -1336f)), vec2<f32>(390f, -391f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(-473f, 434f, -1617f, -764f)), vec4<f32>(454f, 518f, -587f, 291f), Struct_1(vec4<f32>(-377f, 1307f, -505f, -706f)), vec4<i32>(8732i, -22817i, 0i, -1i)), Struct_1(vec4<f32>(-1000f, 816f, 371f, 567f)), vec2<f32>(1000f, -505f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(513f, 1198f, 162f, 178f)), vec4<f32>(-762f, 210f, 1237f, -106f), Struct_1(vec4<f32>(-489f, -695f, -240f, -560f)), vec4<i32>(20716i, -1i, 2147483647i, -1i)), Struct_1(vec4<f32>(-708f, -1000f, 1441f, 706f)), vec2<f32>(243f, 1000f))), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(-1651f, -747f, 101f, -258f)), vec4<f32>(782f, -103f, 2474f, -1271f), Struct_1(vec4<f32>(866f, -1105f, 2241f, 634f)), vec4<i32>(-48937i, 36518i, -24097i, 0i)), Struct_1(vec4<f32>(-1585f, -483f, 272f, -169f)), vec2<f32>(110f, 1616f))));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    let var_0 = u_input.c.x;
    let var_1 = arg_0;
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b | countOneBits(select(u_input.b, vec4<u32>(arg_1.c.x, 4294967295u, var_0, 32951u), vec4<bool>(false, false, false, false))), abs(max(vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, 1u), vec4<u32>(39896u, u_input.c.x, arg_1.c.x, 34676u)))), ~47556u, 1u);
    var_2 = ~vec3<u32>(~select(reverseBits(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.d, arg_1.c), false), _wgslsmith_div_u32(0u, ~(6542u ^ var_0)), ~84534u);
    var_2 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~(~_wgslsmith_mod_vec2_u32(arg_1.c.xx, vec2<u32>(0u, var_2.x)))), var_0);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.c.x))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_5, 12>();
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(2255f, 498f, -1005f, -1301f)), vec4<f32>(-116f, 1398f, 1099f, -995f), Struct_1(vec4<f32>(-1079f, 123f, 532f, 425f)), u_input.a), Struct_1(vec4<f32>(-1029f, -1526f, -1000f, -525f)), vec2<f32>(816f, -1000f))), Struct_4(arg_0.x, 795f, vec3<u32>(63863u, 27209u, 47897u), 458f, arg_0.x), Struct_1(vec4<f32>(1350f, -275f, 390f, -156f)))), _wgslsmith_f_op_f32(120f - -677f))), _wgslsmith_f_op_f32(1233f - _wgslsmith_div_f32(-1000f, -1610f)), 1475f, -198f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 461f, -591f, -1753f) * vec4<f32>(-1571f, -1097f, -308f, 1000f)) - vec4<f32>(-1317f, -1305f, 300f, -403f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1125f, -992f, -1026f, -292f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1484f, 588f, -1126f, -1563f) - vec4<f32>(-905f, 1645f, 1999f, -436f))), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1015f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -286f))), _wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(1220f * _wgslsmith_f_op_f32(f32(-1f) * -2499f))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(1706f, 904f, -1734f, -1229f)), vec4<f32>(-904f, -1551f, -931f, 2523f), Struct_1(vec4<f32>(634f, -698f, 1000f, 627f)), vec4<i32>(-2147483647i, 2147483647i, 36397i, u_input.a.x)), Struct_1(vec4<f32>(-677f, 1606f, 682f, -739f)), vec2<f32>(275f, 2040f))), Struct_4(9714u, 308f, u_input.b.yzw, 1003f, u_input.e), Struct_1(vec4<f32>(-536f, 196f, -967f, 268f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1337f))), -536f)), _wgslsmith_mult_vec4_i32(abs(u_input.a >> (abs(u_input.b) % vec4<u32>(32u))), firstLeadingBit(u_input.a)));
    var var_1 = _wgslsmith_mod_vec4_i32(abs(u_input.a) ^ ~u_input.a, vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(~(var_0.d.x << (u_input.e % 32u)), 2147483647i, _wgslsmith_sub_i32(0i, 29007i) & abs(var_0.d.x)), _wgslsmith_add_i32(var_0.d.x, ~_wgslsmith_mult_i32(var_0.d.x, var_0.d.x)), ~(-u_input.a.x)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_0.d, _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(0i, 2147483647i, 55225i, 1i))), var_0.d), -min(8421i, abs(-18149i)), var_1.x, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -var_0.d, _wgslsmith_add_vec4_i32(abs(reverseBits(vec4<i32>(var_0.d.x, -2147483647i, var_1.x, u_input.a.x))), vec4<i32>(i32(-1i) * -1i, u_input.a.x, abs(u_input.a.x), ~5117i))));
    let var_3 = -(~firstTrailingBit(var_1.x));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.x, var_0.a.a.x, 1976f, var_0.a.a.x), var_0.a.a)), var_0.a.a, Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, var_0.b.x, var_0.b.x, var_0.a.a.x)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, _wgslsmith_dot_vec3_i32(u_input.a.yzy, var_0.d.wwx), -38685i << (1u % 32u), ~(-1i)), u_input.a, vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -8231i), var_1.xy), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.x, 88422i), vec3<i32>(var_2, 70889i, var_2)), 6420i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.a.a - vec4<f32>(-1000f, 1000f, 409f, 903f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) * vec4<f32>(var_0.c.a.x, var_0.b.x, -205f, var_0.c.a.x)))) + var_0.a.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_f32(1115f - -1470f)))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = func_2(vec3<u32>(u_input.c.x, u_input.b.x, ~abs(_wgslsmith_add_u32(u_input.b.x, 23396u))));
    global0 = array<Struct_5, 12>();
    var var_1 = Struct_5(func_2(select(~(u_input.d >> (vec3<u32>(u_input.b.x, u_input.e, u_input.d.x) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u, 4294967295u), ~1u), true)));
    global0 = array<Struct_5, 12>();
    let var_2 = !(!(!vec4<bool>(false, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true)), var_0.a.d.x <= 1i)));
    return var_1.a.b.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(-(~max(vec3<i32>(arg_1.d.x, u_input.a.x, 6714i), vec3<i32>(2147483647i, u_input.a.x, -28932i))), -vec3<i32>(6859i | u_input.a.x, 0i, -1i >> (u_input.e % 32u)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -2711i), vec3<i32>(u_input.a.x, u_input.a.x, arg_2.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.x, arg_1.d.x, u_input.a.x), u_input.a.zxx), -arg_1.d.x), abs(vec3<i32>(2147483647i, 0i, 28533i) >> (u_input.d % vec3<u32>(32u)))));
    global0 = array<Struct_5, 12>();
    var_0 = firstLeadingBit(select(arg_1.d.yyw, ~_wgslsmith_add_vec3_i32(-vec3<i32>(var_0.x, arg_1.d.x, 24906i), -vec3<i32>(arg_2.x, 2386i, 4762i)), vec3<bool>(true, false, true)));
    var_0 = u_input.a.zzx;
    var var_1 = 1496i;
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 12>();
    global0 = array<Struct_5, 12>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(381f, -851f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f + 692f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_1(u_input.a.x, u_input.a.x)), func_2(vec3<u32>(u_input.c.x, 4294967295u, u_input.e)).a, firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(304f, 249f, -1000f) * vec3<f32>(-187f, 2568f, -2236f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1197f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1056f, -1074f, -389f, -990f) - vec4<f32>(-1806f, 291f, 442f, 636f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(302f, 379f, 165f, -1000f) - vec4<f32>(387f, -779f, -317f, -238f)), func_2(u_input.b.wxz).b.a))));
    let var_1 = Struct_5(func_2(~vec3<u32>(~1u, _wgslsmith_mod_u32(7949u, u_input.c.x), 56926u)));
    var var_2 = -((i32(-1i) * -firstLeadingBit(var_1.a.a.d.x)) ^ _wgslsmith_div_i32(-2147483647i, var_1.a.a.d.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(725f, var_1.a.b.a.x, var_0.a.x, 688f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a.c.a.x, var_1.a.a.a.a.x, var_0.a.x, -362f), var_1.a.a.c.a)) - var_1.a.b.a) * func_2(firstTrailingBit(vec3<u32>(38394u, 17319u, u_input.d.x) >> (vec3<u32>(u_input.c.x, u_input.b.x, 24288u) % vec3<u32>(32u)))).a.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(min(vec4<u32>(~1u, _wgslsmith_div_u32(4294967295u, u_input.e), u_input.b.x, firstLeadingBit(38185u)), ~(~u_input.b)), reverseBits(~(vec4<u32>(0u, u_input.d.x, u_input.e, 4294967295u) | u_input.b))), reverseBits(~u_input.c.xx), abs(abs(-39742i)), u_input.d.yy & ~_wgslsmith_clamp_vec2_u32(u_input.b.zw, _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.yy), u_input.c.zx));
}

