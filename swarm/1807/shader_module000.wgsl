struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-1941f, i32(-2147483648), vec3<f32>(-294f, 861f, -649f), 1934f, Struct_1(vec4<f32>(-351f, 1000f, -189f, -2042f), -1125f, -526f, vec3<i32>(-70i, 18623i, 12489i), vec4<i32>(i32(-2147483648), 39403i, -22518i, 8855i))), Struct_2(651f, 0i, vec3<f32>(532f, 335f, 241f), 1303f, Struct_1(vec4<f32>(-1000f, 677f, -1787f, -249f), 631f, -1000f, vec3<i32>(-44051i, -11809i, -5800i), vec4<i32>(-23355i, i32(-2147483648), i32(-2147483648), i32(-2147483648)))), Struct_2(-1563f, 60374i, vec3<f32>(-1443f, -341f, -1310f), 1000f, Struct_1(vec4<f32>(2557f, -860f, 1048f, -645f), -1738f, -1408f, vec3<i32>(-15428i, 1i, 10861i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 1i))), Struct_2(-1149f, i32(-2147483648), vec3<f32>(787f, 1087f, 1000f), 671f, Struct_1(vec4<f32>(-161f, -836f, 504f, -646f), -1435f, -477f, vec3<i32>(738i, -13659i, -36186i), vec4<i32>(i32(-2147483648), 28075i, 1i, 31823i))), Struct_2(-403f, -1i, vec3<f32>(-1596f, -605f, 952f), -475f, Struct_1(vec4<f32>(-625f, 533f, 947f, 1628f), -406f, 1000f, vec3<i32>(1i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), -12711i, -26563i, i32(-2147483648)))), Struct_2(2798f, -10321i, vec3<f32>(-922f, 1618f, 1730f), -1178f, Struct_1(vec4<f32>(2757f, 221f, -1000f, 674f), 404f, 746f, vec3<i32>(4138i, -1i, 32338i), vec4<i32>(0i, 2147483647i, -47603i, -1i))), Struct_2(-1221f, -53276i, vec3<f32>(142f, -1126f, 590f), -168f, Struct_1(vec4<f32>(-598f, 572f, -1017f, -210f), 673f, 468f, vec3<i32>(0i, i32(-2147483648), 13391i), vec4<i32>(1i, 1i, 23711i, -20284i))), Struct_2(-680f, 41701i, vec3<f32>(472f, 165f, 974f), 1808f, Struct_1(vec4<f32>(1294f, -1572f, 1474f, 258f), 150f, -608f, vec3<i32>(1342i, 50525i, i32(-2147483648)), vec4<i32>(1i, 23120i, 11040i, 2147483647i))), Struct_2(-793f, 73171i, vec3<f32>(2059f, 564f, 638f), 532f, Struct_1(vec4<f32>(-1087f, -1616f, 906f, -2008f), 1313f, 1716f, vec3<i32>(9778i, i32(-2147483648), -57521i), vec4<i32>(25181i, 1i, -35983i, -22987i))), Struct_2(-1624f, 0i, vec3<f32>(-114f, -355f, 1000f), 1497f, Struct_1(vec4<f32>(-297f, -1076f, 1471f, -1000f), -224f, -297f, vec3<i32>(1260i, -11412i, 6205i), vec4<i32>(0i, 0i, 1i, i32(-2147483648)))), Struct_2(1000f, 2147483647i, vec3<f32>(-1359f, -1197f, 1289f), -677f, Struct_1(vec4<f32>(251f, 2474f, -1096f, -937f), -2448f, 427f, vec3<i32>(47759i, 1i, 21198i), vec4<i32>(i32(-2147483648), -15746i, -18015i, 1i))), Struct_2(-736f, i32(-2147483648), vec3<f32>(712f, -1454f, 459f), 1435f, Struct_1(vec4<f32>(165f, 888f, 1000f, 207f), 451f, 1907f, vec3<i32>(i32(-2147483648), 37599i, 62039i), vec4<i32>(-7367i, -11009i, 55085i, -35215i))), Struct_2(-206f, 2147483647i, vec3<f32>(-1300f, -1316f, 909f), -172f, Struct_1(vec4<f32>(537f, -1000f, -858f, -105f), -1585f, -222f, vec3<i32>(23006i, -48782i, 25532i), vec4<i32>(-20426i, 2147483647i, 39584i, -6234i))), Struct_2(313f, 1i, vec3<f32>(-420f, 1000f, -396f), 765f, Struct_1(vec4<f32>(-970f, -737f, -183f, 264f), 1277f, 730f, vec3<i32>(2147483647i, i32(-2147483648), 48410i), vec4<i32>(-1i, 14801i, -515i, i32(-2147483648)))), Struct_2(-1550f, 2147483647i, vec3<f32>(-407f, 1212f, -1000f), -222f, Struct_1(vec4<f32>(1625f, 393f, 457f, -722f), 1436f, 1155f, vec3<i32>(-48993i, 0i, -1i), vec4<i32>(2147483647i, -6632i, -25378i, i32(-2147483648)))), Struct_2(1794f, -1i, vec3<f32>(-981f, 847f, -387f), 1709f, Struct_1(vec4<f32>(1085f, 359f, -163f, 398f), -1443f, 132f, vec3<i32>(31429i, 366i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -10648i, 0i, 0i))), Struct_2(638f, 59823i, vec3<f32>(-985f, -1227f, 444f), 1372f, Struct_1(vec4<f32>(-700f, 1468f, 595f, -389f), -989f, 752f, vec3<i32>(-1i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 0i))), Struct_2(1000f, 39194i, vec3<f32>(437f, 826f, -386f), 304f, Struct_1(vec4<f32>(-588f, 1287f, 423f, 1128f), 1067f, -1918f, vec3<i32>(0i, -4580i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 27743i, i32(-2147483648)))), Struct_2(-573f, -1i, vec3<f32>(-780f, 115f, -548f), -992f, Struct_1(vec4<f32>(1236f, -489f, 1223f, -308f), 202f, 532f, vec3<i32>(1i, -42685i, -5124i), vec4<i32>(2147483647i, -27164i, 2147483647i, -17772i))), Struct_2(-708f, 62867i, vec3<f32>(-550f, 1721f, -298f), -553f, Struct_1(vec4<f32>(1000f, -286f, 2507f, -515f), 1099f, 256f, vec3<i32>(1i, 32528i, -51922i), vec4<i32>(0i, 18565i, -21755i, i32(-2147483648)))), Struct_2(1338f, 0i, vec3<f32>(433f, 1234f, -190f), -2022f, Struct_1(vec4<f32>(-924f, 372f, -215f, 190f), 2242f, -1745f, vec3<i32>(1675i, -41804i, 1i), vec4<i32>(-21923i, 0i, 10531i, -4507i))), Struct_2(393f, 34085i, vec3<f32>(1882f, 477f, 1000f), 605f, Struct_1(vec4<f32>(1672f, -2168f, -1000f, -1385f), -1000f, 759f, vec3<i32>(3856i, -9165i, -1i), vec4<i32>(-58121i, -1i, 53170i, -18491i))));

var<private> global1: array<vec4<bool>, 10>;

var<private> global2: array<vec2<bool>, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = arg_0.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -1884f, 1108f, -300f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.d, -1177f, 676f, arg_1.c.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-246f, 1042f, arg_0.a, 550f))))), !arg_3)), arg_1.e.a)) + _wgslsmith_f_op_vec4_f32(arg_1.e.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1645f, -751f, arg_1.d) + _wgslsmith_f_op_vec4_f32(arg_1.e.a + vec4<f32>(arg_1.a, -784f, arg_1.d, arg_1.c.x))))));
    global1 = array<vec4<bool>, 10>();
    var var_2 = arg_2;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-455f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a - -632f))))), _wgslsmith_f_op_f32(round(-1176f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-336f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-177f, 740f)), -159f))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_1(vec4<f32>(-1000f, -1138f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1436f + _wgslsmith_f_op_f32(func_3(Struct_3(-873f, -884f, u_input.a), Struct_2(376f, -8584i, vec3<f32>(412f, -705f, 1428f), 846f, Struct_1(vec4<f32>(-1345f, 643f, -636f, 273f), 454f, 146f, vec3<i32>(u_input.a.x, -1i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), true, arg_2.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(212f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -233f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2080f, -1485f, true)) + _wgslsmith_f_op_f32(504f * 216f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 1000f)), _wgslsmith_f_op_f32(509f * -1215f), all(vec4<bool>(arg_3, true, true, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(403f, -813f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1938f))))), arg_3)), -(vec3<i32>(1i, u_input.a.x | u_input.a.x, -2147483647i) & -(~vec3<i32>(-1i, 17627i, u_input.a.x))), ~reverseBits(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a.x), -2147483647i, 0i, 1i)));
    global0 = array<Struct_2, 22>();
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), -445f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(108f * -1207f), _wgslsmith_f_op_f32(-var_0.b)))))), _wgslsmith_f_op_f32(var_0.c * var_0.a.x), 136f, -var_0.e.www << (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, _wgslsmith_sub_u32(arg_0, 60078u), _wgslsmith_add_u32(arg_0, arg_1)), reverseBits(~vec3<u32>(arg_0, arg_1, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(max(u_input.a.x, 1i), u_input.a.x, 42955i, 1i)), vec4<i32>(min(1i, var_0.d.x), max(_wgslsmith_div_i32(var_0.e.x, var_0.e.x), -u_input.a.x), firstTrailingBit(2147483647i) | -1i, ~(-68104i) & (u_input.a.x ^ 47559i))));
    global2 = array<vec2<bool>, 27>();
    global1 = array<vec4<bool>, 10>();
    return var_0.a.yyx;
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1391f, _wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(-1446f * -2308f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2635f * 587f) - -200f), _wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(607f, -109f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(742f, -1279f, 1016f), _wgslsmith_f_op_vec3_f32(func_2(47817u, 26910u, vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1611f, 867f, -424f) + vec3<f32>(424f, 1936f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -451f, -212f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(951f)))), _wgslsmith_f_op_f32(min(-1290f, _wgslsmith_f_op_f32(112f - 240f))), _wgslsmith_f_op_f32(1830f - 1000f))));
    let var_1 = arg_0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 404f)), var_0.x)), 490f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(exp2(var_0.x)))), ~abs(~(~vec3<i32>(0i, u_input.a.x, 0i))), -(~(-vec4<i32>(20806i, u_input.a.x, -31031i, -36231i))));
    var var_3 = ~(-32377i);
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), -var_2.d.yx | (-vec2<i32>(u_input.a.x, 29111i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(3472u, 10229u)) % vec2<u32>(32u)))));
    return ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(61312u, 4294967295u), vec2<u32>(0u, 0u), true) << (vec2<u32>(33959u, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 0u)), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(61452u, 1976u, 15869u), vec3<u32>(1u, 85630u, 14155u)), min(0u, ~75496u)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_2 {
    global1 = array<vec4<bool>, 10>();
    var var_0 = Struct_3(-201f, _wgslsmith_f_op_f32(-260f - -365f), ~max(u_input.a, ~vec2<i32>(u_input.a.x, 64633i) << (arg_0 % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1491f)));
    let var_2 = vec4<u32>(35617u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u << (max(8712u, arg_0.x) % 32u), 4294967295u), ~arg_0.x), countOneBits(~(~(~1u))), arg_0.x);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.b)))) * -1087f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1226f + var_0.a), -1585f, true)), 1582f)) + var_0.b), vec2<i32>(u_input.a.x, 0i));
    return global0[_wgslsmith_index_u32(var_2.x, 22u)];
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f))) + -792f);
    global1 = array<vec4<bool>, 10>();
    let var_1 = ~26930i;
    global2 = array<vec2<bool>, 27>();
    var var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-func_4(firstLeadingBit(vec2<u32>(0u, 101467u))).d));
    return func_4(~vec2<u32>(firstTrailingBit(min(0u, 4294967295u)), reverseBits(~4294967295u))).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(vec3<bool>(true, true, true)) << (select(vec2<u32>(80805u, 4909u), vec2<u32>(11029u, 4294967295u), select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(39781u, 27u)], true)) % vec2<u32>(32u))));
    global2 = array<vec2<bool>, 27>();
    var var_1 = func_5(Struct_2(var_0.c, -(~(1i >> (1u % 32u))), _wgslsmith_f_op_vec3_f32(-var_0.a.yyx), -1554f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -360f, -706f, var_0.a.x)), var_0.c, _wgslsmith_f_op_f32(-var_0.c), ~_wgslsmith_mod_vec3_i32(var_0.e.zwz, vec3<i32>(-1i, u_input.a.x, var_0.d.x)), ~var_0.e)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.wz));
    var var_3 = -(~vec4<i32>(-26781i, ~_wgslsmith_mod_i32(-27609i, var_0.e.x), -2147483647i, -6945i & -var_1.d.x));
    var var_4 = global2[_wgslsmith_index_u32(24918u, 27u)];
    var var_5 = Struct_3(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_1.b) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x + -1689f)))), var_1.d.yz);
    var var_6 = (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(abs(vec3<u32>(21929u, 33964u, 43509u)))) & abs(vec3<u32>(_wgslsmith_sub_u32(63512u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(57410u, 62346u), vec2<u32>(4294967295u, 4294967295u)), ~0u))) & vec3<u32>(1u, 1u, 1u);
    var var_7 = Struct_3(var_0.a.x, _wgslsmith_f_op_f32(abs(-151f)), select(var_1.e.xw, vec2<i32>(32683i, -50634i), !global2[_wgslsmith_index_u32(0u, 27u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.c.x, 1u, firstTrailingBit(~abs(~vec4<u32>(1u, var_6.x, 1u, var_6.x))));
}

