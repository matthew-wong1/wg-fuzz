struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<f32, 12> = array<f32, 12>(-355f, 647f, -779f, -380f, -1508f, 160f, 934f, -601f, -872f, 1240f, 398f, -724f);

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<Struct_3, 31>;

var<private> global4: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<f32>(373f, 216f, -1168f, 861f), 0u, -1472i, vec4<f32>(-1364f, 2062f, -1384f, 761f))), Struct_2(Struct_1(vec4<f32>(-1000f, 147f, 514f, 707f), 4294967295u, 36448i, vec4<f32>(736f, -699f, -1914f, -1182f))), false, Struct_2(Struct_1(vec4<f32>(628f, -1000f, -1570f, -522f), 31022u, 0i, vec4<f32>(-964f, -813f, 1224f, 223f)))), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<f32>(699f, 377f, -905f, 863f), 0u, 3203i, vec4<f32>(-1355f, -1169f, 400f, -720f))), Struct_2(Struct_1(vec4<f32>(-119f, -833f, 1000f, -502f), 0u, 2601i, vec4<f32>(-898f, -180f, -922f, 325f))), false, Struct_2(Struct_1(vec4<f32>(-563f, -286f, 779f, -1234f), 4294967295u, 0i, vec4<f32>(286f, -858f, 239f, 227f)))), Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<f32>(-1530f, 1000f, 1113f, 766f), 1u, 0i, vec4<f32>(-434f, 1185f, 1841f, 1412f))), Struct_2(Struct_1(vec4<f32>(686f, 1100f, 2286f, -523f), 29194u, -34681i, vec4<f32>(1385f, -134f, -783f, -894f))), true, Struct_2(Struct_1(vec4<f32>(-1846f, -214f, 110f, -1000f), 31577u, 30301i, vec4<f32>(882f, 1998f, -544f, -972f)))), Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<f32>(1000f, 1000f, 1080f, 1000f), 46729u, -59203i, vec4<f32>(305f, -543f, 634f, 705f))), Struct_2(Struct_1(vec4<f32>(1000f, 1409f, 625f, -2302f), 0u, 0i, vec4<f32>(889f, 375f, -752f, 357f))), true, Struct_2(Struct_1(vec4<f32>(1133f, -1157f, -784f, 211f), 1u, -1i, vec4<f32>(1000f, -796f, -101f, 1215f)))), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<f32>(3210f, -1000f, 1241f, 1000f), 1u, -36420i, vec4<f32>(134f, -279f, 510f, 215f))), Struct_2(Struct_1(vec4<f32>(-492f, -1219f, -162f, 951f), 7304u, 2147483647i, vec4<f32>(-1000f, -246f, 1096f, 278f))), true, Struct_2(Struct_1(vec4<f32>(-793f, -239f, -523f, -460f), 0u, i32(-2147483648), vec4<f32>(428f, -616f, 1075f, -682f)))), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<f32>(-1767f, -543f, -1000f, 1156f), 0u, 0i, vec4<f32>(-386f, 477f, -1267f, -1455f))), Struct_2(Struct_1(vec4<f32>(-876f, 884f, 227f, -191f), 15091u, 1i, vec4<f32>(465f, -898f, -1831f, 701f))), false, Struct_2(Struct_1(vec4<f32>(-821f, -194f, 341f, -2053f), 4294967295u, -10884i, vec4<f32>(-889f, 403f, -379f, -380f)))), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<f32>(858f, 285f, 1972f, -201f), 9163u, 15123i, vec4<f32>(-262f, 1092f, -878f, 1000f))), Struct_2(Struct_1(vec4<f32>(1180f, 1369f, -721f, 194f), 1u, 2147483647i, vec4<f32>(-1486f, -235f, -874f, 1099f))), false, Struct_2(Struct_1(vec4<f32>(760f, -1211f, -221f, -791f), 0u, -1i, vec4<f32>(-363f, -360f, -463f, 670f)))), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<f32>(-1093f, -1335f, 254f, -1053f), 53902u, 1i, vec4<f32>(-2132f, 912f, 1156f, -393f))), Struct_2(Struct_1(vec4<f32>(1000f, 1858f, 1575f, 1159f), 38014u, 0i, vec4<f32>(1280f, -112f, -1978f, 1024f))), false, Struct_2(Struct_1(vec4<f32>(460f, -1851f, 838f, -1000f), 20306u, -1i, vec4<f32>(-378f, 504f, -871f, -1000f)))), Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<f32>(986f, -1000f, 859f, -957f), 9347u, 15883i, vec4<f32>(1000f, -513f, -303f, 1007f))), Struct_2(Struct_1(vec4<f32>(126f, 411f, 261f, 896f), 94063u, 1i, vec4<f32>(847f, -900f, 1082f, 761f))), false, Struct_2(Struct_1(vec4<f32>(342f, 1263f, 315f, -1000f), 1u, -1i, vec4<f32>(2118f, 1000f, 795f, 1154f)))), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<f32>(651f, 648f, 713f, -127f), 39003u, 33561i, vec4<f32>(-1542f, -1254f, -252f, 189f))), Struct_2(Struct_1(vec4<f32>(636f, 1696f, -1000f, -351f), 4294967295u, 10786i, vec4<f32>(-1000f, -426f, -491f, -1344f))), false, Struct_2(Struct_1(vec4<f32>(-508f, 1118f, 350f, -240f), 34909u, 2147483647i, vec4<f32>(-434f, -1051f, 2136f, -233f)))), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<f32>(-685f, 862f, -709f, 953f), 21415u, 0i, vec4<f32>(1397f, -245f, 1143f, -1159f))), Struct_2(Struct_1(vec4<f32>(445f, 266f, 555f, 512f), 0u, -21333i, vec4<f32>(1042f, 1486f, -720f, -930f))), true, Struct_2(Struct_1(vec4<f32>(160f, -631f, 2087f, 663f), 4294967295u, -1i, vec4<f32>(873f, 1765f, 1000f, -309f)))), Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<f32>(1000f, -516f, 803f, 1901f), 40483u, 18770i, vec4<f32>(-266f, 1205f, -1957f, 656f))), Struct_2(Struct_1(vec4<f32>(-1692f, -1785f, -537f, -1231f), 4294967295u, 1i, vec4<f32>(507f, -2424f, 1439f, -1360f))), true, Struct_2(Struct_1(vec4<f32>(748f, 1053f, 950f, -1511f), 0u, -19066i, vec4<f32>(-431f, -2127f, -1391f, -125f)))), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<f32>(363f, -1047f, 487f, 797f), 15998u, 0i, vec4<f32>(-125f, -1080f, -901f, -853f))), Struct_2(Struct_1(vec4<f32>(-412f, -324f, -443f, 1047f), 51154u, 39728i, vec4<f32>(-199f, 1276f, -1508f, 169f))), false, Struct_2(Struct_1(vec4<f32>(1131f, -1325f, 376f, 703f), 102303u, 22720i, vec4<f32>(-1398f, 1611f, 1000f, -1168f)))), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<f32>(-417f, 496f, 841f, -1453f), 18614u, -33927i, vec4<f32>(-739f, 2549f, -716f, -457f))), Struct_2(Struct_1(vec4<f32>(-1707f, -898f, -894f, -1147f), 23718u, 5822i, vec4<f32>(-1533f, 1718f, 1893f, -1000f))), true, Struct_2(Struct_1(vec4<f32>(283f, -354f, -760f, -868f), 1u, i32(-2147483648), vec4<f32>(-329f, 1502f, 1133f, 1274f)))), Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<f32>(-1236f, -1276f, 380f, 1000f), 1u, 0i, vec4<f32>(968f, 1111f, 345f, -1577f))), Struct_2(Struct_1(vec4<f32>(-750f, 918f, 346f, 1351f), 4294967295u, 1i, vec4<f32>(1364f, -1575f, 292f, 1000f))), false, Struct_2(Struct_1(vec4<f32>(1371f, 1253f, 583f, -857f), 1u, -14974i, vec4<f32>(1192f, 1048f, 1270f, -419f)))), Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<f32>(-1414f, -514f, 1497f, -196f), 1u, i32(-2147483648), vec4<f32>(-554f, -579f, 1214f, 1000f))), Struct_2(Struct_1(vec4<f32>(862f, -1133f, 324f, -846f), 4294967295u, 12815i, vec4<f32>(607f, -637f, -667f, 1302f))), true, Struct_2(Struct_1(vec4<f32>(190f, 152f, 1689f, -142f), 1u, i32(-2147483648), vec4<f32>(1505f, 467f, -2250f, 463f)))), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<f32>(541f, -1000f, 1437f, -138f), 1u, 1i, vec4<f32>(-3368f, 1216f, -514f, 1459f))), Struct_2(Struct_1(vec4<f32>(-1113f, -2293f, 327f, 948f), 1u, -6236i, vec4<f32>(-918f, 155f, -931f, -1000f))), false, Struct_2(Struct_1(vec4<f32>(-1728f, -594f, -1052f, -638f), 4294967295u, -1i, vec4<f32>(-732f, 488f, 552f, -1603f)))), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<f32>(-498f, 1000f, 218f, 732f), 0u, 2147483647i, vec4<f32>(-1463f, -731f, 1442f, 246f))), Struct_2(Struct_1(vec4<f32>(1000f, 2088f, -563f, -495f), 1u, 2147483647i, vec4<f32>(-456f, 1142f, 233f, -262f))), true, Struct_2(Struct_1(vec4<f32>(1005f, -1496f, 1515f, 640f), 47151u, 2147483647i, vec4<f32>(-447f, 612f, 339f, -2460f)))), Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<f32>(-533f, -1398f, -2082f, -120f), 45213u, 16587i, vec4<f32>(538f, -1000f, -244f, -953f))), Struct_2(Struct_1(vec4<f32>(-345f, 1435f, -150f, -633f), 4294967295u, i32(-2147483648), vec4<f32>(-931f, 1017f, -1000f, 129f))), true, Struct_2(Struct_1(vec4<f32>(-462f, -996f, 383f, -1113f), 60741u, 2737i, vec4<f32>(-1000f, -1352f, 233f, 3699f)))), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<f32>(-1201f, 791f, -2016f, -1669f), 14444u, i32(-2147483648), vec4<f32>(-474f, 218f, 377f, -836f))), Struct_2(Struct_1(vec4<f32>(1428f, 159f, 396f, 1791f), 4294967295u, 2147483647i, vec4<f32>(-1000f, 431f, 434f, -2332f))), false, Struct_2(Struct_1(vec4<f32>(-1489f, 127f, -336f, -404f), 4348u, 49712i, vec4<f32>(173f, -1460f, 1815f, -125f)))), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<f32>(-1853f, 1000f, 769f, -1014f), 1u, 51149i, vec4<f32>(-1621f, 127f, 644f, 1412f))), Struct_2(Struct_1(vec4<f32>(1163f, -487f, -1903f, -314f), 0u, 0i, vec4<f32>(-1572f, -1736f, -309f, 652f))), false, Struct_2(Struct_1(vec4<f32>(-812f, -451f, 1048f, -957f), 2520u, -21507i, vec4<f32>(368f, -327f, -1225f, 670f)))), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<f32>(-726f, 411f, -2142f, -281f), 1u, -16291i, vec4<f32>(2525f, 1000f, -510f, 976f))), Struct_2(Struct_1(vec4<f32>(803f, 1950f, 1242f, -1082f), 0u, 0i, vec4<f32>(602f, 1000f, 494f, 1223f))), true, Struct_2(Struct_1(vec4<f32>(357f, 1109f, 591f, 1762f), 29868u, 27014i, vec4<f32>(-267f, 682f, -432f, 611f)))), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<f32>(1350f, -195f, -1000f, 1088f), 0u, 52854i, vec4<f32>(214f, -593f, 1070f, -1172f))), Struct_2(Struct_1(vec4<f32>(-1213f, -1166f, -1160f, 688f), 52570u, 14452i, vec4<f32>(-247f, 1986f, 264f, -1815f))), true, Struct_2(Struct_1(vec4<f32>(2215f, -1355f, 469f, -519f), 2821u, i32(-2147483648), vec4<f32>(532f, 1133f, -1910f, 281f)))), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<f32>(653f, 324f, -2323f, -642f), 8088u, 1i, vec4<f32>(714f, -266f, 328f, 445f))), Struct_2(Struct_1(vec4<f32>(623f, -1616f, -1653f, 1146f), 4231u, -1i, vec4<f32>(198f, -535f, -1069f, -1115f))), true, Struct_2(Struct_1(vec4<f32>(-239f, 737f, 647f, -1701f), 1u, i32(-2147483648), vec4<f32>(-880f, 1000f, 1060f, 522f)))), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<f32>(-404f, -154f, 309f, 418f), 42783u, -1i, vec4<f32>(-1162f, -838f, -1181f, -1283f))), Struct_2(Struct_1(vec4<f32>(-280f, -2321f, -174f, 476f), 20906u, 65690i, vec4<f32>(1167f, -1264f, 555f, -2086f))), false, Struct_2(Struct_1(vec4<f32>(-496f, -1091f, -395f, 681f), 36444u, 0i, vec4<f32>(-760f, 1654f, -552f, 1230f)))), Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<f32>(218f, -574f, -332f, 672f), 4294967295u, 1i, vec4<f32>(-373f, -843f, -690f, 171f))), Struct_2(Struct_1(vec4<f32>(1041f, -2718f, 1000f, -1000f), 80207u, -20695i, vec4<f32>(386f, 1078f, 1361f, 538f))), false, Struct_2(Struct_1(vec4<f32>(983f, 1107f, 404f, -150f), 64370u, -1i, vec4<f32>(535f, -298f, -1000f, -131f)))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 12u)] * global1[_wgslsmith_index_u32(36571u, 12u)]), -751f, _wgslsmith_f_op_f32(-1873f * global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(1033f * 586f)))), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, arg_0, arg_0, 21357u)), countOneBits(vec4<u32>(arg_0, arg_0, arg_0, 0u))), _wgslsmith_mod_i32(-23218i, u_input.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(arg_0, 12u)], 1000f, -1968f) + vec4<f32>(-584f, global1[_wgslsmith_index_u32(arg_0, 12u)], 444f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, 798f, global1[_wgslsmith_index_u32(arg_0, 12u)], global1[_wgslsmith_index_u32(arg_0, 12u)])))))));
    let var_1 = arg_0;
    var var_2 = !vec4<bool>(!select(true, true, all(vec2<bool>(false, true))), !(any(vec3<bool>(true, false, true)) & true), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !all(vec4<bool>(false, false, false, false)));
    global0 = array<Struct_3, 32>();
    var var_3 = global2[_wgslsmith_index_u32(~var_0.a.b, 28u)];
    return vec2<bool>(var_2.x, all(vec2<bool>(var_2.x, false)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = select(select(!func_3(arg_1.b), arg_0.a.zz, arg_0.a.x == arg_0.a.x), !vec2<bool>(!any(vec4<bool>(arg_0.a.x, false, true, true)), true), vec2<bool>(any(select(func_3(1962u), arg_0.a.yz, !arg_0.d)), true));
    let var_1 = arg_0.c.a.c;
    var var_2 = vec2<u32>(abs(0u), abs(min(arg_0.c.a.b, arg_1.b)));
    let var_3 = Struct_1(arg_0.b.a.a, var_2.x, arg_0.c.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.e.a.a, vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-402f + 1209f), -510f, _wgslsmith_f_op_f32(arg_0.b.a.a.x * arg_0.e.a.d.x)))));
    let var_4 = global0[_wgslsmith_index_u32(arg_0.c.a.b, 32u)];
    return var_3.b & _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(56967u, var_2.x, arg_1.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.c.a.b, var_2.x, var_4.c.a.b), vec3<u32>(1u, 0u, 16085u), vec3<u32>(arg_0.e.a.b, var_3.b, var_3.b))), 0u);
}

fn func_1() -> Struct_2 {
    let var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_2(Struct_3(vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(22658u, 28u)], global2[_wgslsmith_index_u32(43422u, 28u)], true, global2[_wgslsmith_index_u32(735u, 28u)]), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(27736u, 12u)], global1[_wgslsmith_index_u32(21227u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], -1860f), 3808u, -2147483647i, vec4<f32>(global1[_wgslsmith_index_u32(27384u, 12u)], -129f, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(22960u, 12u)]))), ~abs(108755u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(34363u, 1u, 0u, 4294967295u)), firstTrailingBit(select(vec4<u32>(4294967295u, 45790u, 60963u, 0u), vec4<u32>(1u, 0u, 47323u, 43332u), vec4<bool>(false, true, true, true))))));
    let var_1 = Struct_3(vec3<bool>(30197i == -(~u_input.a.x), true, false), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(27149u, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)], 105f, global1[_wgslsmith_index_u32(var_0, 12u)]) * vec4<f32>(-801f, -1833f, -387f, global1[_wgslsmith_index_u32(var_0, 12u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, global1[_wgslsmith_index_u32(68134u, 12u)], -406f, -322f))), 47639u << (var_0 % 32u), ~max(2147483647i, u_input.b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], 434f) * vec4<f32>(-1972f, global1[_wgslsmith_index_u32(var_0, 12u)], -493f, 224f)))))), global2[_wgslsmith_index_u32(func_2(Struct_3(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], 1986f, global1[_wgslsmith_index_u32(4294967295u, 12u)], -672f), 4294967295u, u_input.b.x, vec4<f32>(-1645f, 288f, global1[_wgslsmith_index_u32(27745u, 12u)], -1505f))), global2[_wgslsmith_index_u32(var_0, 28u)], true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(var_0), var_0), 28u)]), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], -123f, global1[_wgslsmith_index_u32(var_0, 12u)], 737f)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 507u, var_0, 24715u), vec4<u32>(1u, 30516u, 6069u, 22971u))), u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], 939f, global1[_wgslsmith_index_u32(1u, 12u)], -658f)))), 28u)], any(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(abs(func_2(Struct_3(vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(var_0 & 0u, 28u)], Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(4414u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], 1092f, 940f), var_0, u_input.c.x, vec4<f32>(361f, 440f, -2312f, global1[_wgslsmith_index_u32(var_0, 12u)]))), select(false, false, false), Struct_2(Struct_1(vec4<f32>(-348f, -1018f, -2137f, -913f), var_0, -1477i, vec4<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], 1734f, -524f, global1[_wgslsmith_index_u32(var_0, 12u)])))), Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], -536f, global1[_wgslsmith_index_u32(var_0, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)]), vec4<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)], 734f, 107f))), var_0, 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1141f, 931f, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)]) * vec4<f32>(global1[_wgslsmith_index_u32(var_0, 12u)], -493f, -512f, global1[_wgslsmith_index_u32(var_0, 12u)]))))), 28u)]);
    global1 = array<f32, 12>();
    let var_2 = func_3(var_1.e.a.b << (0u % 32u));
    let var_3 = ~min(firstLeadingBit(~vec2<u32>(var_1.b.a.b, var_1.b.a.b) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(0u, 16218u)) % vec2<u32>(32u))), firstTrailingBit(~(vec2<u32>(22717u, var_0) ^ vec2<u32>(var_0, 28065u))));
    return Struct_2(var_1.e.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(12355u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(64395u, 12u)]) + global1[_wgslsmith_index_u32(1u, 12u)]), 846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(93955u, 12u)]) * -614f)))));
    global2 = array<Struct_2, 28>();
    let var_1 = Struct_3(vec3<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true), global2[_wgslsmith_index_u32(~1u, 28u)], func_1(), true, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -835f, 1390f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(82249u, 12u)] + global1[_wgslsmith_index_u32(18266u, 12u)])), max(~19259u, 1u), _wgslsmith_dot_vec4_i32(~u_input.b, ~u_input.b), var_0)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.a.a.x, var_0.x, global1[_wgslsmith_index_u32(var_1.c.a.b, 12u)], 1008f) + vec4<f32>(global1[_wgslsmith_index_u32(var_1.c.a.b, 12u)], -459f, var_0.x, 635f))), var_1.e.a.b >> (1283u % 32u), -17079i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-362f, global1[_wgslsmith_index_u32(var_1.e.a.b, 12u)], 600f, 1437f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) * 824f), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.a.c, -2147483647i), u_input.a), vec4<u32>(var_2.a.b, 4294967295u << (max(1u, 0u << (var_2.a.b % 32u)) % 32u), ~(~1u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.b, 1u, 4839u, 46075u), vec4<u32>(9508u, var_1.b.a.b, 1u, 24458u))), var_1.c.a.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a.d.xy)) - vec2<f32>(864f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a.b, 12u)]))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0.yy, _wgslsmith_f_op_vec2_f32(ceil(var_0.ww)), var_1.d))))));
}

