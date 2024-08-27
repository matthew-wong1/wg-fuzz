struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(1399f, Struct_2(Struct_1(vec3<f32>(1379f, 539f, 621f), 8009u, vec4<f32>(304f, 425f, 119f, 885f), 1000f, vec3<f32>(-343f, -607f, 175f)), i32(-2147483648), Struct_1(vec3<f32>(637f, 994f, 990f), 4294967295u, vec4<f32>(892f, -315f, -481f, 2018f), -349f, vec3<f32>(-564f, 1449f, -784f)), Struct_1(vec3<f32>(-144f, 551f, -704f), 1u, vec4<f32>(-331f, 1000f, 792f, -1218f), 1337f, vec3<f32>(190f, 329f, -431f)))), Struct_4(122f, Struct_2(Struct_1(vec3<f32>(1870f, -1449f, 144f), 14271u, vec4<f32>(347f, -545f, -1087f, -2421f), -282f, vec3<f32>(-2163f, 1495f, -128f)), 72590i, Struct_1(vec3<f32>(-279f, 2041f, -3531f), 1u, vec4<f32>(1315f, 1206f, 379f, -747f), -531f, vec3<f32>(1569f, -1126f, -817f)), Struct_1(vec3<f32>(-783f, 1935f, 1109f), 26091u, vec4<f32>(929f, -140f, 467f, -616f), -1359f, vec3<f32>(1000f, 1069f, -185f)))), Struct_4(1937f, Struct_2(Struct_1(vec3<f32>(-801f, -2242f, -1705f), 6358u, vec4<f32>(1181f, 206f, 573f, 434f), -471f, vec3<f32>(-482f, -1750f, -1412f)), 2147483647i, Struct_1(vec3<f32>(263f, -1728f, 2060f), 1u, vec4<f32>(-340f, -932f, -1683f, -1083f), 1018f, vec3<f32>(-238f, -1000f, -1000f)), Struct_1(vec3<f32>(799f, 716f, -975f), 76626u, vec4<f32>(1133f, 817f, 630f, -2363f), 207f, vec3<f32>(896f, 815f, 1000f)))), Struct_4(360f, Struct_2(Struct_1(vec3<f32>(163f, 1320f, 1665f), 27083u, vec4<f32>(715f, -1348f, -185f, 3312f), 530f, vec3<f32>(195f, 270f, 222f)), 22410i, Struct_1(vec3<f32>(860f, -1671f, 633f), 0u, vec4<f32>(172f, 1000f, 302f, 214f), 1357f, vec3<f32>(1270f, 847f, 1664f)), Struct_1(vec3<f32>(935f, -299f, -1109f), 211u, vec4<f32>(-309f, -823f, 182f, 842f), -1398f, vec3<f32>(-2472f, 756f, 285f)))), Struct_4(-776f, Struct_2(Struct_1(vec3<f32>(-1531f, -590f, -1207f), 1u, vec4<f32>(-1000f, 1138f, -1000f, 2215f), 1756f, vec3<f32>(-111f, 1807f, -593f)), -21234i, Struct_1(vec3<f32>(-1619f, -943f, -234f), 0u, vec4<f32>(-1436f, -410f, 376f, -169f), 529f, vec3<f32>(-1019f, -588f, 1016f)), Struct_1(vec3<f32>(-532f, 491f, 1474f), 43043u, vec4<f32>(1532f, -421f, 717f, 133f), -596f, vec3<f32>(-1477f, -560f, 1172f)))), Struct_4(232f, Struct_2(Struct_1(vec3<f32>(1487f, -624f, 419f), 4294967295u, vec4<f32>(-1000f, 1419f, -1178f, 680f), 785f, vec3<f32>(-136f, -106f, -377f)), 12642i, Struct_1(vec3<f32>(-438f, 1459f, -140f), 4294967295u, vec4<f32>(483f, -749f, -844f, 277f), 332f, vec3<f32>(431f, -1569f, -509f)), Struct_1(vec3<f32>(833f, -1332f, 947f), 4294967295u, vec4<f32>(-823f, 1994f, -892f, 788f), -1792f, vec3<f32>(-559f, -239f, -1961f)))), Struct_4(1278f, Struct_2(Struct_1(vec3<f32>(378f, -1000f, -469f), 4294967295u, vec4<f32>(197f, -610f, -745f, 1000f), -687f, vec3<f32>(908f, -588f, 793f)), -12335i, Struct_1(vec3<f32>(-425f, -572f, 920f), 0u, vec4<f32>(529f, -974f, -1393f, 468f), 1088f, vec3<f32>(627f, 375f, -1000f)), Struct_1(vec3<f32>(-1051f, 1000f, -998f), 1u, vec4<f32>(-133f, 833f, -1062f, -506f), 423f, vec3<f32>(-717f, -286f, -739f)))), Struct_4(494f, Struct_2(Struct_1(vec3<f32>(-359f, 951f, 305f), 0u, vec4<f32>(2147f, -829f, 1156f, -138f), -747f, vec3<f32>(-662f, -746f, -1017f)), 5294i, Struct_1(vec3<f32>(-194f, 1398f, -1000f), 14794u, vec4<f32>(136f, 111f, 149f, 422f), 1000f, vec3<f32>(-1003f, 1320f, 719f)), Struct_1(vec3<f32>(-1131f, 263f, 1042f), 0u, vec4<f32>(-1005f, -802f, 354f, 589f), -1000f, vec3<f32>(-984f, -418f, 309f)))), Struct_4(366f, Struct_2(Struct_1(vec3<f32>(484f, -632f, 541f), 18988u, vec4<f32>(-1044f, 208f, 467f, -1191f), -116f, vec3<f32>(-1897f, -145f, 1219f)), i32(-2147483648), Struct_1(vec3<f32>(-1000f, -366f, 1000f), 4294967295u, vec4<f32>(373f, -1510f, 1030f, 243f), 126f, vec3<f32>(867f, 675f, -1967f)), Struct_1(vec3<f32>(-1652f, -2078f, -742f), 4294967295u, vec4<f32>(905f, 629f, -247f, -803f), 645f, vec3<f32>(-883f, 1062f, 2316f)))), Struct_4(-956f, Struct_2(Struct_1(vec3<f32>(-404f, 488f, -820f), 1u, vec4<f32>(1605f, 1762f, -338f, 1476f), -939f, vec3<f32>(-877f, -1438f, -1235f)), -21389i, Struct_1(vec3<f32>(-877f, -780f, 441f), 2032u, vec4<f32>(-1169f, -175f, -1962f, 178f), 685f, vec3<f32>(-522f, -641f, -1038f)), Struct_1(vec3<f32>(-324f, -283f, -1202f), 0u, vec4<f32>(-1000f, 977f, -254f, 2096f), 640f, vec3<f32>(698f, 469f, -128f)))), Struct_4(1570f, Struct_2(Struct_1(vec3<f32>(1032f, 720f, 766f), 0u, vec4<f32>(722f, -922f, 456f, 1549f), 1418f, vec3<f32>(1574f, -371f, 449f)), -14370i, Struct_1(vec3<f32>(1349f, -139f, -1272f), 0u, vec4<f32>(-1194f, -1149f, 1671f, 1695f), 513f, vec3<f32>(-1869f, -1181f, 117f)), Struct_1(vec3<f32>(1086f, -1244f, 737f), 0u, vec4<f32>(305f, 1000f, 319f, -2255f), 101f, vec3<f32>(-464f, 985f, -406f)))), Struct_4(802f, Struct_2(Struct_1(vec3<f32>(-1375f, 1473f, 1000f), 16381u, vec4<f32>(781f, -1000f, -1672f, -1325f), 995f, vec3<f32>(-245f, 744f, -296f)), i32(-2147483648), Struct_1(vec3<f32>(-1268f, -1760f, -622f), 2394u, vec4<f32>(925f, -1465f, -1250f, -934f), -570f, vec3<f32>(-1254f, 911f, 294f)), Struct_1(vec3<f32>(2047f, -1054f, 1000f), 0u, vec4<f32>(-759f, 826f, -316f, 637f), 852f, vec3<f32>(-567f, 392f, 436f)))), Struct_4(-362f, Struct_2(Struct_1(vec3<f32>(-442f, 1026f, -900f), 54340u, vec4<f32>(-435f, -1156f, -318f, 153f), 844f, vec3<f32>(-1105f, 533f, -727f)), i32(-2147483648), Struct_1(vec3<f32>(-842f, -1000f, 322f), 4294967295u, vec4<f32>(-163f, -168f, 382f, -132f), 920f, vec3<f32>(336f, -182f, 690f)), Struct_1(vec3<f32>(-2405f, -184f, 134f), 69016u, vec4<f32>(-227f, -1491f, 733f, -186f), -763f, vec3<f32>(135f, 207f, -562f)))), Struct_4(-995f, Struct_2(Struct_1(vec3<f32>(879f, -594f, 686f), 4294967295u, vec4<f32>(197f, 1000f, 1022f, -829f), -2103f, vec3<f32>(1000f, 602f, 1521f)), i32(-2147483648), Struct_1(vec3<f32>(1601f, 510f, -1575f), 4294967295u, vec4<f32>(1047f, -496f, 612f, -527f), -1284f, vec3<f32>(1000f, 1542f, -415f)), Struct_1(vec3<f32>(1000f, 1035f, 607f), 1u, vec4<f32>(906f, 705f, -288f, -376f), -128f, vec3<f32>(-1177f, 718f, 1022f)))), Struct_4(475f, Struct_2(Struct_1(vec3<f32>(-298f, 553f, -1459f), 26291u, vec4<f32>(-1412f, -2309f, -335f, -1000f), -547f, vec3<f32>(-1101f, -129f, -958f)), 64756i, Struct_1(vec3<f32>(310f, 528f, 1000f), 12014u, vec4<f32>(-509f, 1947f, -298f, -907f), 2112f, vec3<f32>(-635f, 969f, -1000f)), Struct_1(vec3<f32>(564f, 1000f, 246f), 1u, vec4<f32>(936f, -436f, -826f, 186f), -686f, vec3<f32>(622f, 434f, 529f)))));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(403f, 250f, 930f), 4294967295u, vec4<f32>(1040f, -1321f, -255f, -1310f), 402f, vec3<f32>(881f, 289f, 1000f)), Struct_1(vec3<f32>(-1134f, 849f, -1528f), 37656u, vec4<f32>(1000f, 178f, -542f, 1034f), -1095f, vec3<f32>(-720f, -1016f, 237f)), Struct_1(vec3<f32>(-765f, 531f, -766f), 68456u, vec4<f32>(1266f, 542f, 1000f, 128f), 821f, vec3<f32>(189f, -1757f, -434f)), Struct_1(vec3<f32>(852f, 1135f, -271f), 6012u, vec4<f32>(-446f, -2254f, 1485f, 1439f), 1819f, vec3<f32>(-665f, 1669f, -1309f)), Struct_1(vec3<f32>(384f, 348f, 1274f), 0u, vec4<f32>(844f, -748f, 745f, 657f), -1503f, vec3<f32>(-1000f, -1264f, -627f)), Struct_1(vec3<f32>(-762f, 928f, -3124f), 4294967295u, vec4<f32>(486f, 1121f, -1396f, -829f), 920f, vec3<f32>(808f, -271f, 1000f)), Struct_1(vec3<f32>(-892f, 1726f, 1232f), 0u, vec4<f32>(267f, 1514f, 637f, 977f), -829f, vec3<f32>(-2801f, -473f, 860f)), Struct_1(vec3<f32>(1173f, -2278f, -197f), 38828u, vec4<f32>(1569f, -995f, 1000f, 1314f), 1000f, vec3<f32>(-1000f, -2102f, -2200f)), Struct_1(vec3<f32>(-1000f, -881f, -242f), 4294967295u, vec4<f32>(-1015f, 598f, 188f, -638f), 1756f, vec3<f32>(-2103f, -216f, 1082f)), Struct_1(vec3<f32>(917f, -2799f, 439f), 34580u, vec4<f32>(-983f, 669f, -264f, 118f), -220f, vec3<f32>(-956f, -1400f, 1526f)), Struct_1(vec3<f32>(-649f, 428f, -1153f), 0u, vec4<f32>(1869f, -1420f, -1446f, -1000f), 291f, vec3<f32>(-836f, -2226f, 1326f)), Struct_1(vec3<f32>(-1450f, -544f, -229f), 4294967295u, vec4<f32>(198f, 1511f, 667f, 1230f), -1000f, vec3<f32>(-2008f, -1623f, 525f)), Struct_1(vec3<f32>(-1627f, 160f, -1947f), 4294967295u, vec4<f32>(2141f, 329f, 1038f, 171f), 617f, vec3<f32>(956f, 145f, 236f)), Struct_1(vec3<f32>(936f, -795f, -895f), 80366u, vec4<f32>(-1228f, 1122f, 554f, -1000f), -117f, vec3<f32>(-1199f, -250f, -334f)), Struct_1(vec3<f32>(1443f, 2538f, -801f), 14355u, vec4<f32>(-440f, -796f, 1055f, 1624f), 1935f, vec3<f32>(195f, -1233f, -821f)), Struct_1(vec3<f32>(-891f, 127f, 673f), 13577u, vec4<f32>(-699f, 1542f, -2136f, 431f), -509f, vec3<f32>(513f, 1254f, -117f)), Struct_1(vec3<f32>(-2884f, 368f, -339f), 72915u, vec4<f32>(-208f, 1151f, -1211f, 779f), -286f, vec3<f32>(228f, 166f, 1363f)), Struct_1(vec3<f32>(789f, -1505f, 130f), 111953u, vec4<f32>(1000f, -1645f, 1373f, -1327f), -2647f, vec3<f32>(968f, 383f, 165f)), Struct_1(vec3<f32>(-553f, -914f, 579f), 1u, vec4<f32>(-668f, 157f, 1000f, 1000f), -725f, vec3<f32>(1707f, 499f, 517f)), Struct_1(vec3<f32>(-471f, -896f, -153f), 4294967295u, vec4<f32>(-1794f, -290f, 554f, -262f), -921f, vec3<f32>(3381f, -681f, 365f)), Struct_1(vec3<f32>(-798f, -1310f, 1273f), 0u, vec4<f32>(-1307f, 226f, 873f, 1680f), 980f, vec3<f32>(-173f, -923f, 1489f)), Struct_1(vec3<f32>(897f, 706f, -1027f), 0u, vec4<f32>(1435f, -672f, 814f, -106f), 993f, vec3<f32>(-1075f, -356f, 751f)));

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: i32) -> vec4<i32> {
    global2 = array<Struct_1, 1>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(14843u, global3.x << (u_input.c.x % 32u)), 22u)];
    global2 = array<Struct_1, 1>();
    let var_1 = ~var_0.b;
    global1 = array<Struct_1, 22>();
    return arg_1;
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f))))))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1078f)))), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(724f, -268f, -1000f, -1363f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 432f, 341f, arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(f32(-1f) * -276f))), vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 462f), _wgslsmith_f_op_f32(1138f * arg_0), _wgslsmith_f_op_f32(arg_0 + -603f))), abs(2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2253f, -1293f, arg_0) * vec3<f32>(375f, arg_0, arg_0)))), global3.x >> (abs(u_input.c.x) % 32u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 1840f, -204f, -778f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1152f, arg_0, arg_0), vec4<f32>(263f, 1146f, arg_0, 1310f)))), _wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(sign(348f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-121f, arg_0, 1066f), vec3<f32>(arg_0, arg_0, 102f))))), global1[_wgslsmith_index_u32(global3.x, 22u)]));
    let var_1 = var_0.b;
    global2 = array<Struct_1, 1>();
    global0 = array<Struct_4, 15>();
    var var_2 = !all(vec4<bool>(true, true, false & any(vec2<bool>(false, false)), true));
    return max(-2147483647i, ~(-2147483647i));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_4, 15>();
    global2 = array<Struct_1, 1>();
    global0 = array<Struct_4, 15>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~1i, -37311i), u_input.b);
    let var_1 = 60072i;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), min(1u, _wgslsmith_div_u32(61281u, 51338u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 779f))), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, 229f, arg_0.x)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1563f)))), global1[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 1u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.c.x, 34379u) >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), ~vec2<u32>(global3.x, u_input.c.x)), 22u)]);
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = ~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.a.b, 1i)) & max(vec2<i32>(arg_0.a.b, 2147483647i), ~vec2<i32>(-2147483647i, -40916i)), max(vec2<i32>(~18482i, -arg_0.a.b), firstLeadingBit(vec2<i32>(arg_0.a.b, u_input.a) ^ vec2<i32>(u_input.a, u_input.a))));
    let var_1 = Struct_5(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.wx), 1u)), 1u)], -18498i >> (~arg_0.a.a.b % 32u), Struct_3(arg_0.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.a))).b), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_2 = -(~(-select(-18311i, func_1(vec4<f32>(var_1.b.c.x, 432f, -447f, var_1.d.a.c.e.x), vec4<i32>(u_input.d, 3434i, arg_0.a.b, 0i), var_0.x).x, true)));
    global3 = ~vec2<u32>(76432u, ~firstTrailingBit(global3.x >> (1u % 32u)));
    let var_3 = arg_0;
    return select(!var_1.e.zx, var_1.e.zy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.a.x, 1000f))))) > 1719f);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> StorageBuffer {
    return StorageBuffer(vec2<u32>(0u, ~max(_wgslsmith_sub_u32(global3.x, global3.x), 12251u)), -966f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstLeadingBit(u_input.c.zxx));
    global3 = u_input.c.yx;
    var var_1 = vec4<i32>(-3717i, -15481i, u_input.d, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(-47054i, -1i, u_input.b, -25028i), vec4<i32>(0i, u_input.b, 1i, -2147483647i), true), ~func_1(vec4<f32>(1084f, -704f, -2720f, 836f), vec4<i32>(u_input.a, 1i, 9976i, u_input.d), u_input.b)), min(1i, -30376i)));
    global2 = array<Struct_1, 1>();
    let var_2 = vec2<f32>(-551f, -1000f);
    let x = u_input.a;
    s_output = func_5(func_4(func_2(vec3<f32>(1068f, -1355f, -614f))), select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), true), select(~vec3<i32>(abs(u_input.d), u_input.a, _wgslsmith_mult_i32(24244i, -33136i)), vec3<i32>(-min(u_input.a, 0i), u_input.e, -96177i), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), any(vec3<bool>(true, false, true)))));
}

