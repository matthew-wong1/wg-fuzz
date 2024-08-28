struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-2595f, 1051f, -166f, 752f), -13941i, i32(-2147483648), vec3<i32>(-7523i, 0i, 16419i));

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, -1000f, -1594f, 1246f), 0i, -2820i, vec3<i32>(0i, -1i, 2147483647i)), 654f), Struct_1(vec4<f32>(741f, 2837f, -733f, -1593f), -1i, -1i, vec3<i32>(-15585i, -62844i, 0i)), Struct_2(Struct_1(vec4<f32>(-375f, -658f, 953f, 573f), 0i, -5332i, vec3<i32>(1981i, 25103i, -1i)), -121f)), Struct_3(Struct_2(Struct_1(vec4<f32>(606f, 565f, 287f, 1104f), i32(-2147483648), 21623i, vec3<i32>(i32(-2147483648), 1i, -7152i)), 1027f), Struct_1(vec4<f32>(560f, -1333f, 154f, -130f), 12707i, -1i, vec3<i32>(-1i, 1405i, -1719i)), Struct_2(Struct_1(vec4<f32>(-1171f, 1937f, -594f, -1151f), 2147483647i, -8578i, vec3<i32>(1i, -7992i, 1i)), -957f)), Struct_3(Struct_2(Struct_1(vec4<f32>(706f, -3322f, 1836f, 783f), 1i, -11314i, vec3<i32>(i32(-2147483648), -1i, 1i)), -1534f), Struct_1(vec4<f32>(1000f, 123f, -225f, 1475f), 0i, i32(-2147483648), vec3<i32>(0i, -42061i, 1i)), Struct_2(Struct_1(vec4<f32>(-156f, 480f, -519f, -723f), i32(-2147483648), 8788i, vec3<i32>(16383i, 1897i, 2147483647i)), -977f)), Struct_3(Struct_2(Struct_1(vec4<f32>(602f, -1552f, 300f, -190f), -38628i, 2147483647i, vec3<i32>(0i, -1i, i32(-2147483648))), -951f), Struct_1(vec4<f32>(1417f, 412f, -635f, 359f), 7160i, 0i, vec3<i32>(-21964i, 16263i, -14648i)), Struct_2(Struct_1(vec4<f32>(-1066f, 1112f, 429f, -284f), -24884i, 29903i, vec3<i32>(25718i, 2147483647i, 27201i)), -351f)), Struct_3(Struct_2(Struct_1(vec4<f32>(221f, -733f, 1000f, 178f), 2147483647i, 1i, vec3<i32>(2147483647i, 0i, i32(-2147483648))), -406f), Struct_1(vec4<f32>(-491f, 1174f, 1650f, 215f), 0i, 2147483647i, vec3<i32>(0i, -24643i, 8219i)), Struct_2(Struct_1(vec4<f32>(1909f, 1057f, 458f, -1503f), -1i, 0i, vec3<i32>(-18585i, -19528i, 1546i)), -1764f)), Struct_3(Struct_2(Struct_1(vec4<f32>(1189f, 960f, 1000f, 164f), 3739i, 3898i, vec3<i32>(-1i, i32(-2147483648), 14993i)), 1000f), Struct_1(vec4<f32>(164f, 632f, 388f, 1000f), 1i, 2147483647i, vec3<i32>(i32(-2147483648), 14187i, 20351i)), Struct_2(Struct_1(vec4<f32>(-718f, 381f, -131f, 1000f), i32(-2147483648), -9668i, vec3<i32>(i32(-2147483648), 2147483647i, 1i)), -484f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-729f, -492f, -316f, 1000f), 0i, -30206i, vec3<i32>(11318i, -6581i, 1i)), 222f), Struct_1(vec4<f32>(110f, 945f, -1337f, -361f), 0i, -1i, vec3<i32>(0i, 1i, 1i)), Struct_2(Struct_1(vec4<f32>(256f, -928f, -667f, 439f), -53278i, -40282i, vec3<i32>(1i, -1i, -49666i)), 208f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1336f, -1047f, 1719f, 356f), -5334i, i32(-2147483648), vec3<i32>(1i, -14374i, i32(-2147483648))), -2217f), Struct_1(vec4<f32>(-829f, -197f, -459f, -793f), 65920i, 18787i, vec3<i32>(-10691i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(-855f, 318f, 1660f, 615f), -4118i, -23839i, vec3<i32>(26516i, 0i, i32(-2147483648))), 190f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-361f, 1170f, -513f, 311f), -11493i, 8521i, vec3<i32>(16040i, -1i, i32(-2147483648))), -316f), Struct_1(vec4<f32>(1796f, 1000f, 560f, 417f), 9883i, -11400i, vec3<i32>(2147483647i, -34976i, -24488i)), Struct_2(Struct_1(vec4<f32>(-529f, -595f, -1496f, 820f), 0i, 1i, vec3<i32>(3727i, 2147483647i, 2147483647i)), -1000f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-580f, 128f, -209f, -138f), 2147483647i, 23026i, vec3<i32>(1609i, 25455i, -15084i)), 1787f), Struct_1(vec4<f32>(1604f, 1517f, -1434f, -1707f), 0i, 2147483647i, vec3<i32>(1918i, 0i, 43987i)), Struct_2(Struct_1(vec4<f32>(-198f, 446f, 2528f, -1000f), -14575i, 1i, vec3<i32>(i32(-2147483648), 0i, -38090i)), 775f)), Struct_3(Struct_2(Struct_1(vec4<f32>(215f, 2665f, 937f, 1301f), i32(-2147483648), 1i, vec3<i32>(i32(-2147483648), -12609i, 88182i)), 307f), Struct_1(vec4<f32>(275f, -1455f, 1051f, 933f), 2147483647i, -15465i, vec3<i32>(-61390i, -5106i, 0i)), Struct_2(Struct_1(vec4<f32>(-236f, 824f, 1569f, -1310f), 2147483647i, 0i, vec3<i32>(-39524i, 17958i, i32(-2147483648))), 345f)), Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, 687f, 211f, 154f), 2147483647i, -3575i, vec3<i32>(65429i, 35152i, 2147483647i)), -210f), Struct_1(vec4<f32>(1967f, -1270f, -1136f, -1978f), -33204i, -4880i, vec3<i32>(9784i, 1i, 2147483647i)), Struct_2(Struct_1(vec4<f32>(2016f, 1232f, 133f, -738f), 0i, -61431i, vec3<i32>(-38005i, -4560i, i32(-2147483648))), 1044f)), Struct_3(Struct_2(Struct_1(vec4<f32>(415f, 1475f, -1220f, 1665f), 30272i, 2147483647i, vec3<i32>(1i, 1i, 25470i)), 1000f), Struct_1(vec4<f32>(641f, -2053f, -261f, 613f), -1i, i32(-2147483648), vec3<i32>(1i, 10299i, 1i)), Struct_2(Struct_1(vec4<f32>(1135f, 1000f, -186f, 1000f), -1i, 0i, vec3<i32>(2212i, 8843i, 1i)), 1588f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-442f, 268f, -865f, 1299f), 2147483647i, -247i, vec3<i32>(-1i, 26660i, 30740i)), 680f), Struct_1(vec4<f32>(-1000f, 649f, -180f, -1173f), -16378i, -31258i, vec3<i32>(-19988i, 1i, -1i)), Struct_2(Struct_1(vec4<f32>(914f, -674f, -871f, 1000f), 62856i, 1i, vec3<i32>(1i, 7562i, -86371i)), -435f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-2213f, 1628f, -1180f, 469f), 2147483647i, -901i, vec3<i32>(29620i, 41260i, -39339i)), 861f), Struct_1(vec4<f32>(-456f, -926f, 1151f, 1128f), 0i, 19616i, vec3<i32>(-15405i, -13097i, 1i)), Struct_2(Struct_1(vec4<f32>(322f, 1420f, -337f, 559f), -16008i, i32(-2147483648), vec3<i32>(-1i, 0i, -16623i)), -1078f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1371f, 1623f, 917f, 648f), 3559i, 2147483647i, vec3<i32>(i32(-2147483648), -41118i, 1665i)), -128f), Struct_1(vec4<f32>(236f, -989f, 2131f, -376f), 4646i, 9600i, vec3<i32>(i32(-2147483648), 27228i, -21560i)), Struct_2(Struct_1(vec4<f32>(222f, 1170f, -839f, -494f), 46423i, 8755i, vec3<i32>(-7271i, 1i, -17860i)), -1000f)), Struct_3(Struct_2(Struct_1(vec4<f32>(867f, -1010f, -187f, 1414f), 34959i, 2147483647i, vec3<i32>(1i, -12937i, 1i)), 803f), Struct_1(vec4<f32>(-738f, -775f, 683f, 991f), 1i, 1i, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(1087f, 372f, -625f, -1054f), 1i, 1i, vec3<i32>(0i, 0i, -67860i)), 197f)), Struct_3(Struct_2(Struct_1(vec4<f32>(233f, -1875f, -688f, 1000f), -39516i, 0i, vec3<i32>(-14743i, -1i, i32(-2147483648))), 155f), Struct_1(vec4<f32>(-1631f, -293f, -599f, 224f), -16661i, 2147483647i, vec3<i32>(0i, 21961i, 0i)), Struct_2(Struct_1(vec4<f32>(-1209f, -131f, 1306f, -1941f), 13325i, -5385i, vec3<i32>(7102i, -8628i, -17092i)), -878f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-844f, 353f, -101f, -256f), -5495i, 0i, vec3<i32>(-53063i, 19722i, 18234i)), -1280f), Struct_1(vec4<f32>(-1769f, 344f, 489f, 1634f), 1i, 0i, vec3<i32>(-20066i, -10668i, -1i)), Struct_2(Struct_1(vec4<f32>(-960f, -829f, 638f, 788f), -29637i, -88048i, vec3<i32>(2147483647i, -1i, 0i)), -413f)), Struct_3(Struct_2(Struct_1(vec4<f32>(1285f, 2136f, 101f, 1482f), 10052i, -11354i, vec3<i32>(28525i, -1i, 1i)), 486f), Struct_1(vec4<f32>(-440f, 376f, -2307f, 183f), 2147483647i, i32(-2147483648), vec3<i32>(0i, 0i, -19468i)), Struct_2(Struct_1(vec4<f32>(-675f, 1302f, -249f, 1625f), 2147483647i, 1i, vec3<i32>(i32(-2147483648), i32(-2147483648), -2885i)), -354f)), Struct_3(Struct_2(Struct_1(vec4<f32>(721f, 1344f, 2408f, 255f), -30417i, 94782i, vec3<i32>(-1i, 2147483647i, 1i)), 524f), Struct_1(vec4<f32>(-215f, 1980f, -1060f, 1536f), 1i, i32(-2147483648), vec3<i32>(-15266i, 1319i, -33837i)), Struct_2(Struct_1(vec4<f32>(-1065f, -1517f, 681f, 768f), -1i, i32(-2147483648), vec3<i32>(2147483647i, 1i, -12875i)), -1000f)), Struct_3(Struct_2(Struct_1(vec4<f32>(965f, -237f, 1100f, -1000f), 2147483647i, 15864i, vec3<i32>(1i, 0i, 0i)), 1000f), Struct_1(vec4<f32>(1047f, 553f, 688f, -372f), -23258i, i32(-2147483648), vec3<i32>(30332i, 43663i, 2147483647i)), Struct_2(Struct_1(vec4<f32>(856f, -532f, 1000f, -1000f), 1i, 22110i, vec3<i32>(42061i, 29677i, -19148i)), -507f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-345f, 227f, 1839f, 309f), -21741i, -53364i, vec3<i32>(4738i, -51338i, -36047i)), 977f), Struct_1(vec4<f32>(1004f, -1000f, -390f, 1173f), 4078i, 1i, vec3<i32>(i32(-2147483648), 1i, 13598i)), Struct_2(Struct_1(vec4<f32>(-212f, 1862f, -1347f, 1000f), 2147483647i, 1i, vec3<i32>(2147483647i, -1i, 6147i)), -1203f)), Struct_3(Struct_2(Struct_1(vec4<f32>(2168f, 287f, -206f, 2025f), i32(-2147483648), 0i, vec3<i32>(4392i, -1i, -27648i)), -758f), Struct_1(vec4<f32>(-1000f, 1089f, 410f, 2058f), 25013i, 4224i, vec3<i32>(16180i, 10845i, 16850i)), Struct_2(Struct_1(vec4<f32>(2402f, 1838f, -198f, -309f), -8033i, 2147483647i, vec3<i32>(0i, 45748i, 0i)), -1000f)), Struct_3(Struct_2(Struct_1(vec4<f32>(893f, 864f, 926f, 1067f), -42936i, 7796i, vec3<i32>(1i, 2555i, 1i)), 1477f), Struct_1(vec4<f32>(-814f, 1289f, 675f, -835f), 0i, 2147483647i, vec3<i32>(2147483647i, 13834i, 0i)), Struct_2(Struct_1(vec4<f32>(-539f, 433f, 428f, 1259f), -22139i, -18917i, vec3<i32>(0i, -108003i, 0i)), 1093f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1387f, 653f, 123f, -2165f), -1i, 79751i, vec3<i32>(1i, 12512i, 45444i)), 1156f), Struct_1(vec4<f32>(728f, 414f, -1818f, -1766f), -1i, 40827i, vec3<i32>(-31515i, -350i, -18302i)), Struct_2(Struct_1(vec4<f32>(-274f, -158f, 2048f, 1443f), -42055i, -1i, vec3<i32>(1i, -16350i, -1i)), 1035f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-160f, 1035f, -272f, -2704f), 17861i, 0i, vec3<i32>(-13169i, 0i, 2147483647i)), 1180f), Struct_1(vec4<f32>(-1358f, -709f, -234f, -1645f), 0i, 1i, vec3<i32>(1i, 34449i, -8914i)), Struct_2(Struct_1(vec4<f32>(500f, 452f, -319f, 1000f), 35076i, 1i, vec3<i32>(0i, 0i, 0i)), 420f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-260f, 732f, 346f, -308f), -3351i, -16336i, vec3<i32>(5542i, i32(-2147483648), 2147483647i)), -1000f), Struct_1(vec4<f32>(459f, 611f, 806f, 1267f), 1i, 269i, vec3<i32>(-25834i, -18142i, 8242i)), Struct_2(Struct_1(vec4<f32>(164f, 231f, 711f, -340f), 5589i, 25546i, vec3<i32>(-31611i, -1i, 13481i)), -1039f)), Struct_3(Struct_2(Struct_1(vec4<f32>(460f, 1225f, -1364f, -806f), -1i, 22062i, vec3<i32>(2147483647i, 2147483647i, -3851i)), 376f), Struct_1(vec4<f32>(-2745f, 1000f, -1228f, -760f), -1i, i32(-2147483648), vec3<i32>(2147483647i, 0i, 24903i)), Struct_2(Struct_1(vec4<f32>(-502f, 596f, -906f, -1000f), -1i, i32(-2147483648), vec3<i32>(-1i, i32(-2147483648), 2147483647i)), -235f)), Struct_3(Struct_2(Struct_1(vec4<f32>(721f, -1016f, -657f, 236f), 2147483647i, 1i, vec3<i32>(13723i, -18900i, i32(-2147483648))), -185f), Struct_1(vec4<f32>(-1111f, -389f, 505f, 339f), -14946i, 1i, vec3<i32>(4201i, -1i, 0i)), Struct_2(Struct_1(vec4<f32>(364f, -266f, -1000f, -1346f), 0i, -1i, vec3<i32>(30601i, 7228i, 2147483647i)), 1726f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(-1897f, -1479f)), _wgslsmith_f_op_f32(round(global0.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -279f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x))))), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + 1913f), global2.a.x, true)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-410f, global1.a.x), _wgslsmith_f_op_f32(global1.a.x - arg_0)))))));
    global0 = Struct_4(~(-global0.a ^ 2147483647i) | u_input.b.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(6979u, max(reverseBits(31657u), u_input.c.x)), select(global0.b, ~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 16233i), global2.d.yx) < global1.d.x), global0.b), global0.c, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, 34582u), global0.d) & select(select(1u, min(50253u, 1u), true), global0.d, true));
    return Struct_4(_wgslsmith_mod_i32(global1.d.x, min(1i, -13144i)), ~vec2<u32>(~_wgslsmith_add_u32(22996u, 22646u), ~(~1u)), global0.c, ~global0.b.x);
}

fn func_1() -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c.a.x, _wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_f_op_f32(-global0.c.a.x), global2.a.x)))), global2.b, -_wgslsmith_clamp_i32(~3744i, -1i, 0i), _wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a, -16109i), u_input.b) >> ((vec3<u32>(22152u, 4294967295u, 6225u) & vec3<u32>(u_input.c.x, u_input.c.x, 63959u)) % vec3<u32>(32u)), u_input.b, true), select(vec3<i32>(2147483647i, global1.b, -18319i) >> (vec3<u32>(u_input.c.x, 5079u, 57528u) % vec3<u32>(32u)), u_input.b, select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) & (global1.d << (~vec3<u32>(4294967295u, 1u, u_input.c.x) % vec3<u32>(32u)))));
    var var_0 = func_2(global2.a.x);
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(min(global0.b.x, ~40610u)), 30u)];
    let var_2 = u_input.c;
    global3 = array<Struct_3, 30>();
    return global1.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global0 = arg_2;
    global3 = array<Struct_3, 30>();
    var var_0 = global0.b.x | ~abs(22762u);
    var_0 = ~3586u;
    var var_1 = func_2(func_2(global2.a.x).c.a.x).c;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global0.c.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, global0.c.a.x)))), _wgslsmith_f_op_f32(func_3(Struct_2(func_2(-199f).c, _wgslsmith_f_op_f32(-global0.c.a.x)), Struct_1(global1.a, _wgslsmith_sub_i32(41951i, -1i), i32(-1i) * -13747i, vec3<i32>(u_input.b.x, 39136i, -1i) & global2.d), Struct_4(min(1i, -19949i), max(vec2<u32>(global0.d, 28037u), vec2<u32>(4294967295u, global0.d)), global0.c, 36343u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x)))));
    let var_1 = _wgslsmith_dot_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) ^ ~vec3<u32>(1u, 70288u, 0u))), vec3<u32>(u_input.c.x & ~(~u_input.c.x), select(0u, ~u_input.c.x, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), 4294967295u));
    let var_2 = Struct_2(func_2(global0.c.a.x).c, _wgslsmith_f_op_f32(143f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.x)) * var_0.x) - global1.a.x)));
    var var_3 = global3[_wgslsmith_index_u32(16033u, 30u)];
    global3 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(17659u, 62189u), global0.b), vec2<u32>(global0.d, 29162u) >> (global0.b % vec2<u32>(32u))) >> (_wgslsmith_mult_u32(1u, ~4294967295u) % 32u), 0u, reverseBits(func_2(305f).d) > abs(1u)), global1.a, ~select(~vec4<u32>(var_1, 0u, var_1, 684u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, 1u, 53564u, 8825u), firstTrailingBit(vec4<u32>(u_input.c.x, global0.d, 57315u, var_1))), true));
}

