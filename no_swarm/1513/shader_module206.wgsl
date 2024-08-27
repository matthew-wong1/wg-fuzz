struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(54497u, vec3<u32>(18826u, 0u, 4294967295u), vec2<bool>(true, true), vec3<f32>(545f, -1604f, -270f)), true, vec3<f32>(553f, 1448f, -1192f), vec4<f32>(220f, 305f, -193f, -1791f), 4294967295u), Struct_3(Struct_1(4294967295u, vec3<u32>(13187u, 45039u, 4294967295u), vec2<bool>(false, false), vec3<f32>(-265f, -1347f, 275f)), true, vec3<f32>(-991f, 1263f, 352f), vec4<f32>(-1856f, -1452f, 184f, 749f), 1u), Struct_3(Struct_1(45901u, vec3<u32>(74220u, 0u, 16078u), vec2<bool>(false, true), vec3<f32>(2296f, -214f, 1759f)), true, vec3<f32>(203f, -1612f, -718f), vec4<f32>(-379f, -646f, 795f, -1186f), 55968u), Struct_3(Struct_1(1u, vec3<u32>(1u, 1u, 92680u), vec2<bool>(false, true), vec3<f32>(785f, 898f, -1525f)), true, vec3<f32>(1670f, -396f, 1123f), vec4<f32>(1745f, 794f, -1241f, -1294f), 1746u), Struct_3(Struct_1(0u, vec3<u32>(1u, 0u, 1u), vec2<bool>(true, false), vec3<f32>(-482f, 1000f, 743f)), true, vec3<f32>(-1405f, -2235f, 365f), vec4<f32>(2116f, 1365f, 157f, -1410f), 1u), Struct_3(Struct_1(31966u, vec3<u32>(0u, 4294967295u, 2801u), vec2<bool>(false, true), vec3<f32>(447f, -631f, -684f)), false, vec3<f32>(1000f, 785f, -1222f), vec4<f32>(845f, 2078f, 914f, 1244f), 4294967295u), Struct_3(Struct_1(0u, vec3<u32>(36333u, 4294967295u, 4294967295u), vec2<bool>(true, false), vec3<f32>(809f, -328f, 333f)), true, vec3<f32>(-118f, 445f, -322f), vec4<f32>(-2146f, -1313f, 1160f, 335f), 5772u), Struct_3(Struct_1(64582u, vec3<u32>(1u, 56066u, 4294967295u), vec2<bool>(true, true), vec3<f32>(-1321f, -393f, -140f)), true, vec3<f32>(1294f, -479f, 267f), vec4<f32>(-1238f, -578f, -1571f, 749f), 48635u), Struct_3(Struct_1(5924u, vec3<u32>(89809u, 0u, 0u), vec2<bool>(false, false), vec3<f32>(-343f, 911f, 1000f)), false, vec3<f32>(-292f, 351f, -474f), vec4<f32>(331f, 127f, -594f, 1434f), 22481u), Struct_3(Struct_1(1u, vec3<u32>(4294967295u, 1u, 3151u), vec2<bool>(false, true), vec3<f32>(-643f, -817f, -994f)), true, vec3<f32>(653f, -353f, 329f), vec4<f32>(-1000f, -139f, -1443f, -1138f), 5154u), Struct_3(Struct_1(0u, vec3<u32>(1207u, 1u, 85512u), vec2<bool>(true, false), vec3<f32>(-1938f, 656f, -1000f)), false, vec3<f32>(-1129f, -986f, -638f), vec4<f32>(-548f, 179f, 1037f, -608f), 27018u), Struct_3(Struct_1(21162u, vec3<u32>(16783u, 9619u, 0u), vec2<bool>(false, false), vec3<f32>(497f, -235f, 305f)), false, vec3<f32>(-1227f, -259f, 438f), vec4<f32>(1424f, 424f, -306f, -870f), 15761u), Struct_3(Struct_1(43038u, vec3<u32>(1u, 1u, 13492u), vec2<bool>(false, true), vec3<f32>(-595f, 1493f, 2463f)), false, vec3<f32>(-842f, 799f, 1069f), vec4<f32>(-736f, -109f, -1425f, 333f), 15699u), Struct_3(Struct_1(1u, vec3<u32>(3053u, 4294967295u, 4294967295u), vec2<bool>(false, false), vec3<f32>(550f, 828f, 538f)), false, vec3<f32>(-1477f, 503f, -1577f), vec4<f32>(803f, 2036f, -846f, 469f), 1u), Struct_3(Struct_1(1u, vec3<u32>(7521u, 4294967295u, 1u), vec2<bool>(false, true), vec3<f32>(-552f, -2009f, 2865f)), false, vec3<f32>(-113f, -114f, -1159f), vec4<f32>(156f, -326f, -1688f, -893f), 50385u), Struct_3(Struct_1(73154u, vec3<u32>(1u, 0u, 18734u), vec2<bool>(true, false), vec3<f32>(-740f, -2307f, 544f)), false, vec3<f32>(-1000f, 858f, 1199f), vec4<f32>(657f, 1005f, -261f, -1117f), 17038u), Struct_3(Struct_1(1u, vec3<u32>(4294967295u, 1u, 24630u), vec2<bool>(false, false), vec3<f32>(626f, -158f, 310f)), true, vec3<f32>(573f, 762f, 996f), vec4<f32>(-222f, 466f, 1758f, -588f), 1u), Struct_3(Struct_1(1u, vec3<u32>(12610u, 62767u, 18428u), vec2<bool>(true, true), vec3<f32>(904f, -886f, 1448f)), true, vec3<f32>(692f, 802f, 2179f), vec4<f32>(1252f, 783f, 1777f, 549f), 129137u), Struct_3(Struct_1(29515u, vec3<u32>(1u, 4884u, 62485u), vec2<bool>(true, true), vec3<f32>(-559f, -135f, -661f)), true, vec3<f32>(-658f, -360f, -2702f), vec4<f32>(-981f, 1254f, 543f, -444f), 119610u), Struct_3(Struct_1(4294967295u, vec3<u32>(71095u, 8543u, 11158u), vec2<bool>(false, false), vec3<f32>(-780f, -1000f, 341f)), true, vec3<f32>(408f, 1000f, -1195f), vec4<f32>(1060f, -2459f, -938f, -740f), 40642u), Struct_3(Struct_1(21263u, vec3<u32>(4294967295u, 1u, 4294967295u), vec2<bool>(true, true), vec3<f32>(561f, 1000f, 1183f)), false, vec3<f32>(-356f, -185f, 807f), vec4<f32>(644f, 1000f, -245f, -1075f), 110777u), Struct_3(Struct_1(391u, vec3<u32>(4294967295u, 36307u, 45605u), vec2<bool>(false, false), vec3<f32>(-1287f, -1125f, 727f)), false, vec3<f32>(989f, 761f, -580f), vec4<f32>(-1000f, -759f, -2284f, 691f), 74268u), Struct_3(Struct_1(2023u, vec3<u32>(3669u, 23978u, 20986u), vec2<bool>(true, true), vec3<f32>(690f, -778f, -1000f)), false, vec3<f32>(-1000f, -2184f, -1622f), vec4<f32>(-124f, -405f, 1535f, -887f), 50013u), Struct_3(Struct_1(1u, vec3<u32>(11375u, 0u, 0u), vec2<bool>(false, true), vec3<f32>(940f, 1351f, 580f)), true, vec3<f32>(-251f, 531f, 278f), vec4<f32>(917f, 358f, -1365f, -260f), 10105u), Struct_3(Struct_1(44781u, vec3<u32>(50050u, 1u, 4294967295u), vec2<bool>(false, false), vec3<f32>(-944f, -241f, 1412f)), false, vec3<f32>(1414f, -2139f, -1582f), vec4<f32>(736f, -626f, -1641f, 173f), 0u), Struct_3(Struct_1(31864u, vec3<u32>(4294967295u, 101998u, 1u), vec2<bool>(true, true), vec3<f32>(-547f, 1000f, -821f)), false, vec3<f32>(1176f, 127f, 347f), vec4<f32>(990f, -510f, 225f, -878f), 104734u), Struct_3(Struct_1(1u, vec3<u32>(2305u, 36540u, 4294967295u), vec2<bool>(false, false), vec3<f32>(918f, -574f, -1690f)), false, vec3<f32>(-1320f, -1117f, -1186f), vec4<f32>(1027f, -382f, 616f, 105f), 1u), Struct_3(Struct_1(4294967295u, vec3<u32>(84194u, 19160u, 46311u), vec2<bool>(false, true), vec3<f32>(-384f, 232f, 905f)), false, vec3<f32>(-688f, 766f, -313f), vec4<f32>(924f, 949f, 306f, 2032f), 4294967295u), Struct_3(Struct_1(4294967295u, vec3<u32>(1u, 1u, 55138u), vec2<bool>(true, true), vec3<f32>(-155f, 842f, 906f)), false, vec3<f32>(1000f, -550f, -274f), vec4<f32>(2057f, -470f, -1714f, 564f), 1u));

var<private> global1: array<u32, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d.x)));
    let var_1 = _wgslsmith_add_u32(1u, 0u);
    let var_2 = true;
    let var_3 = arg_3;
    global0 = array<Struct_3, 29>();
    return var_3.a.c;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global1 = array<u32, 13>();
    let var_0 = Struct_3(Struct_1(~(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 13u)], 13u)]), 13u)]), vec3<u32>(~u_input.b.x, countOneBits(arg_0), firstLeadingBit(28982u)), !func_3(vec3<i32>(u_input.c, -13932i, u_input.d) >> (u_input.e % vec3<u32>(32u)), _wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(55750u, 13u)], u_input.b.x), Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 13u)], vec3<u32>(u_input.b.x, 1u, 51310u), vec2<bool>(true, true), vec3<f32>(392f, 548f, 169f)), true, vec3<f32>(829f, -689f, -1319f), vec4<f32>(861f, 511f, 1076f, -993f), 131343u), global0[_wgslsmith_index_u32(67474u << (u_input.e.x % 32u), 29u)]), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-990f, -163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-397f, -598f, true)) + -1000f))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f - 1326f), _wgslsmith_f_op_f32(-544f * _wgslsmith_f_op_f32(1364f + -341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -634f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1042f, -1328f, 468f), vec3<f32>(-422f, -1358f, -704f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1346f + -862f), -1000f, 2577f, _wgslsmith_f_op_f32(f32(-1f) * -829f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(550f, 1097f, 962f, 2092f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2213f, -370f, 811f, 867f))))) + vec4<f32>(_wgslsmith_f_op_f32(min(-300f, -238f)), 857f, 645f, _wgslsmith_f_op_f32(min(-1125f, _wgslsmith_f_op_f32(select(-427f, -189f, true)))))), 4294967295u);
    let var_1 = _wgslsmith_div_f32(1623f, 521f);
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.d, (-11947i >> (arg_0 % 32u)) ^ 3066i), u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(select(-24492i, u_input.c, var_0.a.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(29697i, u_input.d))), -vec2<i32>(u_input.c, 28713i)), _wgslsmith_mult_vec2_i32(countOneBits(select(vec2<i32>(20576i, u_input.c), vec2<i32>(-1i, -2147483647i), false)), vec2<i32>(~u_input.c, u_input.c))));
    return Struct_3(Struct_1(~abs(61654u), vec3<u32>(u_input.e.x, ~arg_0, var_0.e), var_2.c, _wgslsmith_f_op_vec3_f32(var_0.a.d - vec3<f32>(1172f, var_2.d.x, var_1))), firstTrailingBit(u_input.b.x) >= 1u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.x + -740f))), _wgslsmith_f_op_f32(step(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -453f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.d.x))))))), var_0.d, ~global1[_wgslsmith_index_u32(firstLeadingBit(arg_0), 13u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    global0 = array<Struct_3, 29>();
    let var_0 = arg_1.a.c;
    global0 = array<Struct_3, 29>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c.x, 659f))))), arg_1.d.x);
    let var_2 = ~vec2<i32>(-22795i, arg_0);
    return select(!select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, arg_1.b, select(false, arg_1.a.c.x, false)), !(!vec3<bool>(false, arg_1.b, arg_1.a.c.x))), !select(!(!vec3<bool>(false, false, arg_1.b)), !select(vec3<bool>(var_0.x, true, true), vec3<bool>(arg_1.b, false, true), false), false), vec3<bool>(var_0.x, any(arg_1.a.c), -(~var_2.x) < (~var_2.x << (5626u % 32u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    var var_0 = vec4<bool>(true && arg_2.x, any(func_4(~arg_0.x, func_2(1u))), arg_2.x, true);
    global0 = array<Struct_3, 29>();
    global1 = array<u32, 13>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-970f - _wgslsmith_div_f32(528f, 292f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)), -715f)));
    let var_2 = global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(1u, u_input.a, 0u, u_input.b.x)), ~vec4<u32>(u_input.e.x, 8425u, 5571u, 81838u) >> (~vec4<u32>(u_input.e.x, 12843u, u_input.e.x, u_input.b.x) % vec4<u32>(32u))), select(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 35571u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1024u, 13u)], 13u)], global1[_wgslsmith_index_u32(0u, 13u)]), countOneBits(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5838u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], 82577u, u_input.a) | vec4<u32>(4294967295u, 49195u, global1[_wgslsmith_index_u32(0u, 13u)], 1u)), !(!arg_2))), 13u)], 29u)];
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    var var_0 = Struct_3(Struct_1(1u, vec3<u32>(1u, 5998u, 1u), vec2<bool>(true != all(vec3<bool>(true, true, false)), true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-2147483647i, 1i), 737f, vec4<bool>(true, false, false, false))), _wgslsmith_div_f32(-1080f, -217f)), _wgslsmith_f_op_f32(ceil(1512f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1012f))))), func_2(min(4294967295u, 1u) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 13u)] % 32u)).a.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-490f, -787f, -1140f)))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-747f, 1921f, 643f, -1119f) * vec4<f32>(-1029f, 820f, -1162f, -955f)), _wgslsmith_div_vec4_f32(vec4<f32>(-309f, 431f, 533f, 1868f), vec4<f32>(-422f, 1338f, 1604f, -1423f))) + vec4<f32>(_wgslsmith_div_f32(174f, -1136f), _wgslsmith_div_f32(-681f, 1301f), _wgslsmith_f_op_f32(f32(-1f) * -893f), -1046f)))), u_input.b.x);
    let var_1 = func_3(vec3<i32>((~u_input.d & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -8587i), vec2<i32>(u_input.c, -1i))) << (abs(_wgslsmith_dot_vec2_u32(u_input.e.zx, u_input.e.xy)) % 32u), firstLeadingBit(-(~u_input.c)), _wgslsmith_sub_i32(u_input.c ^ u_input.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(12634i, -1i, 55247i), min(vec3<i32>(u_input.d, u_input.d, -2147483647i), vec3<i32>(-32294i, 0i, u_input.d))))), global1[_wgslsmith_index_u32(4294967295u, 13u)] | 29443u, func_2(global1[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(4294967295u | _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(38208u, 10688u), vec2<u32>(global1[_wgslsmith_index_u32(6802u, 13u)], 1u) | vec2<u32>(86901u, global1[_wgslsmith_index_u32(0u, 13u)]), firstTrailingBit(vec2<u32>(9517u, u_input.a))), ~(~vec2<u32>(11656u, u_input.e.x))), 29u)]);
    let var_2 = var_0.a.b.yz;
    var var_3 = global0[_wgslsmith_index_u32(~var_2.x, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-var_0.c.x)))), vec4<f32>(-224f, 226f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(359f, -318f), any(vec4<bool>(true, false, var_1.x, true)))))), -363f), firstTrailingBit(-1i), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.e, 65987u, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, var_0.e, var_3.e), vec4<u32>(var_0.e, global1[_wgslsmith_index_u32(116710u, 13u)], 1u, 26975u)) ^ firstTrailingBit(vec4<u32>(113677u, 67138u, 4294967295u, 40092u)), vec4<u32>(48083u, 51228u, max(var_2.x, var_0.e), u_input.a)), vec4<u32>(~(~91889u), 0u, _wgslsmith_add_u32(u_input.a, 1u) ^ _wgslsmith_add_u32(46877u, 22518u), ~max(var_2.x, 4294967295u))));
}

