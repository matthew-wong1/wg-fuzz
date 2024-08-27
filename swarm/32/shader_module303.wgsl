struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec3<f32>(-2176f, 1095f, -472f), false, vec3<f32>(192f, -1339f, -1753f), 84287u), vec3<u32>(31260u, 196u, 1u), 35064i, 23792u, Struct_1(vec3<f32>(-654f, 692f, -378f), true, vec3<f32>(-697f, 348f, -523f), 4294967295u)), Struct_2(Struct_1(vec3<f32>(-927f, -1047f, 339f), true, vec3<f32>(-501f, -389f, 1148f), 0u), vec3<u32>(18165u, 0u, 1u), 19733i, 59275u, Struct_1(vec3<f32>(-1666f, -529f, 1510f), false, vec3<f32>(-252f, 113f, -516f), 1u)), Struct_2(Struct_1(vec3<f32>(-838f, -504f, 644f), false, vec3<f32>(-1000f, -376f, -150f), 0u), vec3<u32>(1u, 90018u, 37888u), -27067i, 85440u, Struct_1(vec3<f32>(-212f, 988f, 480f), true, vec3<f32>(-1178f, -703f, 617f), 0u)), Struct_2(Struct_1(vec3<f32>(-695f, -1303f, 167f), false, vec3<f32>(-834f, 1687f, 150f), 18289u), vec3<u32>(7478u, 72037u, 64852u), 11803i, 12125u, Struct_1(vec3<f32>(-1162f, -1000f, 1000f), true, vec3<f32>(121f, 1312f, 128f), 14671u)), Struct_2(Struct_1(vec3<f32>(178f, -714f, 261f), false, vec3<f32>(393f, -1323f, 2550f), 43522u), vec3<u32>(1u, 32995u, 0u), 50651i, 4294967295u, Struct_1(vec3<f32>(-746f, -1000f, -258f), false, vec3<f32>(-542f, -1102f, -963f), 1u)), Struct_2(Struct_1(vec3<f32>(2165f, -1000f, -745f), true, vec3<f32>(373f, -632f, -135f), 1u), vec3<u32>(18035u, 4294967295u, 0u), i32(-2147483648), 3008u, Struct_1(vec3<f32>(-128f, -616f, -1173f), true, vec3<f32>(-1556f, -329f, 1213f), 4294967295u)), Struct_2(Struct_1(vec3<f32>(320f, 430f, 651f), false, vec3<f32>(319f, 387f, -901f), 103687u), vec3<u32>(124893u, 1u, 4294967295u), 5761i, 12638u, Struct_1(vec3<f32>(-653f, 349f, -1481f), true, vec3<f32>(-408f, -216f, -266f), 0u)), Struct_2(Struct_1(vec3<f32>(1678f, 1000f, 117f), false, vec3<f32>(856f, -1751f, 635f), 96246u), vec3<u32>(20552u, 65980u, 6845u), 1i, 1u, Struct_1(vec3<f32>(-835f, -430f, -290f), true, vec3<f32>(-893f, 859f, -695f), 22100u)), Struct_2(Struct_1(vec3<f32>(-1880f, -684f, -1448f), false, vec3<f32>(261f, 1066f, 1411f), 31194u), vec3<u32>(0u, 14641u, 47565u), 2147483647i, 28222u, Struct_1(vec3<f32>(1373f, 1110f, -348f), false, vec3<f32>(1408f, 666f, -1315f), 1u)), Struct_2(Struct_1(vec3<f32>(-970f, 1076f, 411f), true, vec3<f32>(1815f, 1000f, 641f), 1u), vec3<u32>(1u, 33761u, 1u), -8889i, 4294967295u, Struct_1(vec3<f32>(1000f, -504f, 601f), true, vec3<f32>(248f, 1000f, 354f), 6647u)), Struct_2(Struct_1(vec3<f32>(778f, 1224f, -1620f), true, vec3<f32>(2188f, -223f, -1454f), 4294967295u), vec3<u32>(23208u, 1u, 1u), 2147483647i, 19629u, Struct_1(vec3<f32>(-863f, 458f, -866f), true, vec3<f32>(-1262f, 950f, 430f), 124804u)), Struct_2(Struct_1(vec3<f32>(389f, -213f, 1153f), false, vec3<f32>(-2069f, -349f, -181f), 4294967295u), vec3<u32>(0u, 0u, 15784u), -1i, 34290u, Struct_1(vec3<f32>(1084f, 743f, -1104f), false, vec3<f32>(-754f, 1056f, -2600f), 0u)), Struct_2(Struct_1(vec3<f32>(-780f, -1324f, -939f), false, vec3<f32>(-722f, 1472f, 1867f), 1u), vec3<u32>(47151u, 4294967295u, 9195u), -11608i, 24243u, Struct_1(vec3<f32>(684f, -220f, -266f), false, vec3<f32>(-579f, -510f, -700f), 57810u)), Struct_2(Struct_1(vec3<f32>(261f, -1813f, -314f), true, vec3<f32>(1543f, -243f, 244f), 11399u), vec3<u32>(33586u, 4630u, 57776u), 49524i, 1u, Struct_1(vec3<f32>(1199f, -656f, 1864f), false, vec3<f32>(359f, 313f, -572f), 0u)), Struct_2(Struct_1(vec3<f32>(-1437f, -1024f, -131f), false, vec3<f32>(-1000f, -1208f, 1497f), 0u), vec3<u32>(6528u, 4294967295u, 27417u), 20174i, 4294967295u, Struct_1(vec3<f32>(-416f, -1189f, 1645f), false, vec3<f32>(-764f, -1270f, -1476f), 0u)), Struct_2(Struct_1(vec3<f32>(1070f, -315f, -1000f), true, vec3<f32>(711f, 299f, -1000f), 1u), vec3<u32>(67799u, 54963u, 107406u), -29267i, 0u, Struct_1(vec3<f32>(940f, 239f, 225f), true, vec3<f32>(484f, 566f, -133f), 64558u)), Struct_2(Struct_1(vec3<f32>(1000f, 2366f, 326f), false, vec3<f32>(1000f, -1753f, 381f), 12320u), vec3<u32>(2965u, 0u, 0u), 18248i, 20221u, Struct_1(vec3<f32>(-1135f, -798f, 1000f), false, vec3<f32>(-204f, 1776f, 1000f), 47785u)), Struct_2(Struct_1(vec3<f32>(-511f, 1225f, -245f), false, vec3<f32>(-2671f, 648f, -1342f), 1u), vec3<u32>(1u, 0u, 24964u), i32(-2147483648), 76661u, Struct_1(vec3<f32>(-299f, -1895f, -1920f), true, vec3<f32>(-893f, -1638f, 410f), 0u)), Struct_2(Struct_1(vec3<f32>(124f, 851f, -220f), false, vec3<f32>(-188f, -226f, 515f), 56784u), vec3<u32>(10184u, 1u, 25110u), 12305i, 4294967295u, Struct_1(vec3<f32>(1714f, 1069f, -1121f), true, vec3<f32>(-699f, -1790f, 499f), 52424u)), Struct_2(Struct_1(vec3<f32>(-1969f, -1089f, -620f), true, vec3<f32>(332f, -1140f, 138f), 4294967295u), vec3<u32>(1u, 24740u, 67240u), 0i, 0u, Struct_1(vec3<f32>(1000f, 2783f, -1160f), true, vec3<f32>(966f, 1855f, 232f), 22106u)), Struct_2(Struct_1(vec3<f32>(1729f, -852f, -1733f), true, vec3<f32>(133f, -526f, -192f), 0u), vec3<u32>(1u, 34246u, 4294967295u), 48815i, 1u, Struct_1(vec3<f32>(-1319f, -656f, -1135f), true, vec3<f32>(333f, -1477f, 1000f), 57271u)), Struct_2(Struct_1(vec3<f32>(-1004f, -1614f, 1172f), true, vec3<f32>(236f, -868f, 1118f), 0u), vec3<u32>(51750u, 23826u, 29981u), 1i, 47305u, Struct_1(vec3<f32>(-478f, 2148f, 814f), false, vec3<f32>(-759f, 1000f, -1542f), 26377u)), Struct_2(Struct_1(vec3<f32>(341f, 780f, 1166f), false, vec3<f32>(700f, -731f, 549f), 1u), vec3<u32>(21280u, 13275u, 61408u), 0i, 7039u, Struct_1(vec3<f32>(-580f, -758f, -1233f), true, vec3<f32>(-1388f, 488f, -1000f), 68825u)), Struct_2(Struct_1(vec3<f32>(106f, -436f, 308f), false, vec3<f32>(1134f, -746f, 559f), 4294967295u), vec3<u32>(16509u, 1u, 15294u), 0i, 4294967295u, Struct_1(vec3<f32>(-1753f, -813f, -848f), true, vec3<f32>(-819f, 2423f, -127f), 1u)), Struct_2(Struct_1(vec3<f32>(-1356f, 626f, 1209f), false, vec3<f32>(-226f, -696f, 1378f), 39500u), vec3<u32>(20218u, 34891u, 0u), -62524i, 1u, Struct_1(vec3<f32>(-404f, -1119f, 1000f), false, vec3<f32>(417f, 715f, 510f), 17692u)), Struct_2(Struct_1(vec3<f32>(-1000f, 1398f, 814f), false, vec3<f32>(754f, 538f, -551f), 1u), vec3<u32>(82677u, 0u, 85638u), 34998i, 28149u, Struct_1(vec3<f32>(-862f, -2330f, -535f), false, vec3<f32>(594f, -1485f, -1158f), 13258u)));

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    return !(arg_1.d >= 1u);
}

fn func_3() -> vec4<bool> {
    var var_0 = 1u;
    var var_1 = vec3<u32>(u_input.b, ~firstTrailingBit(_wgslsmith_div_u32(u_input.b, 36015u) & (1u ^ u_input.b)), u_input.b);
    var var_2 = (~vec4<i32>(u_input.a.x & u_input.a.x, min(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x) ^ (_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a.x, 33648i, 14185i, -44602i), vec4<i32>(-22056i, 10510i, u_input.a.x, u_input.a.x)), abs(vec4<i32>(u_input.a.x, 1i, -63169i, u_input.a.x))) & vec4<i32>(u_input.a.x | 35552i, -1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x))) | firstLeadingBit(vec4<i32>(-_wgslsmith_sub_i32(-20876i, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -(1i << (var_1.x % 32u)), countOneBits(u_input.a.x | u_input.a.x)));
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1480f, -1092f, 809f))), !(u_input.a.x > u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 390f, 1338f) + vec3<f32>(global1.x, 885f, -574f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, -1977f, 932f), vec3<f32>(global1.x, global1.x, 981f)))), ~u_input.b), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, 24622i, var_2.x, 22619i)), vec4<i32>(25290i, 1i, -1i, _wgslsmith_dot_vec2_i32(var_2.zw, vec2<i32>(-54632i, var_2.x))), -(~vec4<i32>(13920i, u_input.a.x, u_input.a.x, var_2.x))), _wgslsmith_add_vec2_u32(var_1.zx, vec2<u32>(var_1.x, 4294967295u)) ^ vec2<u32>(_wgslsmith_sub_u32(var_1.x, 92038u), min(var_1.x, u_input.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-361f, 962f, 507f, -1686f) + vec4<f32>(global1.x, global1.x, -1099f, global1.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -794f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-207f, -439f, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, -2453f, global1.x)), vec4<bool>(true, true, true, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -626f, 1157f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1486f, global1.x, -982f))), 0u <= u_input.b)), !(u_input.b < 61863u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1889f, 1901f, -282f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, -1201f, global1.x)))), _wgslsmith_add_u32(u_input.b, u_input.b))));
    var var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(var_3.a.a.a.x, var_3.a.e.c.x), -1098f, _wgslsmith_f_op_f32(trunc(416f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a.a.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(297f, var_3.a.e.c.x, -2327f) * var_3.a.e.a)))), var_3.a.e.b, var_3.a.a.c, u_input.b);
    return !(!vec4<bool>(var_4.b, all(select(vec4<bool>(false, var_3.a.a.b, var_4.b, false), vec4<bool>(var_3.a.e.b, true, var_4.b, true), vec4<bool>(true, true, false, var_4.b))), -var_3.a.b.x == -var_2.x, true));
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = ~(~(~_wgslsmith_div_u32(~u_input.b, u_input.b)));
    var var_1 = select(!(!func_3()), vec4<bool>(!func_3().x, select(select(false, arg_0, false), arg_0, false), arg_0, true), select(vec4<bool>(arg_0, any(!vec4<bool>(arg_0, true, false, true)), false, (u_input.b < u_input.b) | false), !(!(!vec4<bool>(false, arg_0, true, true))), -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 19973i)) == 1i));
    var_1 = vec4<bool>(all(vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, arg_0)), false, !any(vec3<bool>(true, arg_0, false)))), var_1.x, !((~u_input.b == _wgslsmith_add_u32(u_input.b, u_input.b)) == arg_0), false);
    var_1 = vec4<bool>(false, !arg_0, false, !(!var_1.x) != true);
    let var_2 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f - global1.x)), _wgslsmith_f_op_f32(select(global1.x, -1000f, false)), -211f), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1561f, 1165f, 688f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-891f, 220f, global1.x))))), u_input.b), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i) << (vec4<u32>(u_input.b, 16535u, 1u, 0u) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, 47784i, -1i, u_input.a.x)), select(min(~(vec2<u32>(9848u, 25162u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), firstLeadingBit(countOneBits(vec2<u32>(4294967295u, 4294967295u)))), min(~countOneBits(vec2<u32>(u_input.b, u_input.b)), min(vec2<u32>(1u, 1u) << (vec2<u32>(u_input.b, 31020u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(11565u, u_input.b), vec2<u32>(4294967295u, 1u)))), func_3().yz), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(trunc(1277f)), _wgslsmith_div_f32(global1.x, global1.x), 803f), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))), vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_div_f32(683f, 1000f), 865f)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), -908f, _wgslsmith_f_op_f32(max(1848f, global1.x)))), ~countOneBits(~u_input.b)));
    return Struct_4(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(!func_1(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 35141u, 0u), vec4<u32>(u_input.b, 2395u, u_input.b, u_input.b))), global0[_wgslsmith_index_u32(45335u, 26u)]));
    let var_1 = _wgslsmith_mod_i32(var_0.a.b.x, 1i);
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(341f, 1503f, _wgslsmith_f_op_f32(var_0.a.d.x * global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, var_0.a.a.a.x, -500f) * _wgslsmith_f_op_vec3_f32(step(var_0.a.d.ywz, var_0.a.e.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a.a + var_0.a.e.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-946f, global1.x, -1546f), vec3<f32>(var_0.a.d.x, var_0.a.a.c.x, 620f))) - vec3<f32>(global1.x, 446f, var_0.a.e.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.a.c, vec3<f32>(global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -560f, var_0.a.d.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.d.x, 1304f))), var_0.a.d.x, var_0.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(42867i | func_2(all(!vec3<bool>(false, var_0.a.e.b, false))).a.b.x);
}

