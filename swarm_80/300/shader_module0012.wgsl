struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: f32 = -633f;

var<private> global2: Struct_5 = Struct_5(Struct_4(vec4<f32>(-586f, -268f, 2691f, 489f), Struct_2(801f, vec3<f32>(686f, -2419f, 901f), vec4<i32>(-20627i, 2147483647i, 0i, 5376i), -353f, vec4<i32>(21562i, 0i, 2147483647i, -38551i)), Struct_2(177f, vec3<f32>(-204f, -337f, -186f), vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648)), 341f, vec4<i32>(1i, 22234i, 0i, -17292i))), vec2<bool>(true, false), 0i, vec2<f32>(-1008f, 1000f));

var<private> global3: array<u32, 32>;

var<private> global4: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(Struct_4(vec4<f32>(730f, -1000f, 185f, 1000f), Struct_2(-799f, vec3<f32>(421f, 405f, -1000f), vec4<i32>(12379i, 1i, -4109i, -1i), -436f, vec4<i32>(4276i, -16552i, 1i, -4939i)), Struct_2(-599f, vec3<f32>(-627f, 572f, -320f), vec4<i32>(-54729i, i32(-2147483648), 39509i, 2147483647i), -1953f, vec4<i32>(15594i, i32(-2147483648), -12673i, 1952i))), vec2<bool>(false, false), -27642i, vec2<f32>(-309f, -505f)), Struct_5(Struct_4(vec4<f32>(-1799f, -1048f, -1000f, -1000f), Struct_2(-270f, vec3<f32>(-394f, -442f, 708f), vec4<i32>(-527i, i32(-2147483648), 30207i, 2147483647i), 1727f, vec4<i32>(1i, 1i, -19489i, 2147483647i)), Struct_2(-701f, vec3<f32>(-1135f, -1298f, -1000f), vec4<i32>(-55887i, 2147483647i, 0i, 35962i), -548f, vec4<i32>(64323i, 10177i, 0i, 2147483647i))), vec2<bool>(false, false), 3089i, vec2<f32>(-555f, 450f)), Struct_5(Struct_4(vec4<f32>(1256f, -1000f, -1888f, -1000f), Struct_2(733f, vec3<f32>(-1000f, 1620f, -824f), vec4<i32>(i32(-2147483648), -9260i, -34482i, -31141i), -1079f, vec4<i32>(1i, -10320i, i32(-2147483648), -314i)), Struct_2(-1175f, vec3<f32>(288f, -837f, 1000f), vec4<i32>(0i, 6635i, i32(-2147483648), 2147483647i), 1517f, vec4<i32>(0i, 2147483647i, i32(-2147483648), -1i))), vec2<bool>(true, false), 8555i, vec2<f32>(-257f, 591f)), Struct_5(Struct_4(vec4<f32>(-1000f, -1000f, -1896f, -2362f), Struct_2(554f, vec3<f32>(-123f, -702f, -396f), vec4<i32>(0i, 2147483647i, 1i, i32(-2147483648)), 1155f, vec4<i32>(1i, 0i, -4711i, 54087i)), Struct_2(-559f, vec3<f32>(-1038f, 433f, -773f), vec4<i32>(1330i, 10084i, -55669i, 11766i), -638f, vec4<i32>(19802i, -1i, -2201i, 1i))), vec2<bool>(false, true), 0i, vec2<f32>(2375f, -568f)), Struct_5(Struct_4(vec4<f32>(1026f, 1000f, -195f, 1841f), Struct_2(1593f, vec3<f32>(-915f, 2333f, 473f), vec4<i32>(i32(-2147483648), 31431i, 3034i, 6068i), -288f, vec4<i32>(i32(-2147483648), 16296i, 11850i, -26498i)), Struct_2(121f, vec3<f32>(660f, 220f, 1370f), vec4<i32>(-8119i, i32(-2147483648), 2147483647i, 0i), -2206f, vec4<i32>(19603i, 42366i, 1i, -35818i))), vec2<bool>(true, true), 1i, vec2<f32>(-621f, -749f)), Struct_5(Struct_4(vec4<f32>(539f, 529f, -818f, -1023f), Struct_2(2360f, vec3<f32>(-189f, -827f, -154f), vec4<i32>(8268i, 2147483647i, 2147483647i, -13166i), 223f, vec4<i32>(9659i, 2147483647i, -13053i, -1i)), Struct_2(304f, vec3<f32>(657f, 1102f, 670f), vec4<i32>(-1i, 3795i, -1i, -1i), 394f, vec4<i32>(25068i, 4416i, 32003i, 2147483647i))), vec2<bool>(true, true), -1i, vec2<f32>(535f, -980f)), Struct_5(Struct_4(vec4<f32>(360f, -105f, -801f, 479f), Struct_2(-1689f, vec3<f32>(-123f, 2115f, 393f), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 29976i), 873f, vec4<i32>(i32(-2147483648), 8545i, 0i, 42851i)), Struct_2(527f, vec3<f32>(156f, -988f, -1127f), vec4<i32>(54248i, 2147483647i, -16921i, i32(-2147483648)), -884f, vec4<i32>(32929i, i32(-2147483648), -1i, 0i))), vec2<bool>(true, true), -43651i, vec2<f32>(-1796f, 2583f)), Struct_5(Struct_4(vec4<f32>(1185f, 1035f, 902f, -271f), Struct_2(-1182f, vec3<f32>(-702f, -801f, 1000f), vec4<i32>(0i, 2147483647i, -16014i, -1i), 284f, vec4<i32>(-75i, -51660i, 1i, -1i)), Struct_2(990f, vec3<f32>(273f, -624f, 1334f), vec4<i32>(16403i, 17607i, 12083i, 1i), -439f, vec4<i32>(i32(-2147483648), 1036i, 1i, 7765i))), vec2<bool>(false, true), 1i, vec2<f32>(747f, -1484f)), Struct_5(Struct_4(vec4<f32>(-1772f, -786f, 1087f, -1133f), Struct_2(-1000f, vec3<f32>(-1893f, 1315f, -1127f), vec4<i32>(-28837i, i32(-2147483648), 2147483647i, i32(-2147483648)), 1757f, vec4<i32>(-33520i, 2147483647i, 1i, -26778i)), Struct_2(-736f, vec3<f32>(224f, 1746f, -1367f), vec4<i32>(2147483647i, 3792i, 2147483647i, -1i), -662f, vec4<i32>(0i, -17566i, i32(-2147483648), 19966i))), vec2<bool>(true, false), -19691i, vec2<f32>(-1388f, -183f)), Struct_5(Struct_4(vec4<f32>(-1436f, 2305f, -1213f, -1504f), Struct_2(-383f, vec3<f32>(1000f, -285f, -428f), vec4<i32>(1i, 15556i, i32(-2147483648), -76896i), -785f, vec4<i32>(-1i, -9978i, 16405i, 0i)), Struct_2(-1000f, vec3<f32>(2069f, -2329f, -1046f), vec4<i32>(24856i, -55729i, 9613i, 32409i), -1010f, vec4<i32>(20956i, 2147483647i, 18724i, 0i))), vec2<bool>(true, false), 1i, vec2<f32>(1733f, 1945f)), Struct_5(Struct_4(vec4<f32>(-385f, 614f, 1529f, -187f), Struct_2(1124f, vec3<f32>(396f, -1367f, -245f), vec4<i32>(26723i, 35469i, -31044i, 1i), 1246f, vec4<i32>(25406i, -1i, 49483i, 1i)), Struct_2(-288f, vec3<f32>(188f, 737f, 167f), vec4<i32>(-43178i, -1i, i32(-2147483648), 2147483647i), 963f, vec4<i32>(-1i, -65894i, 1580i, -3875i))), vec2<bool>(true, false), 1i, vec2<f32>(1164f, -1766f)), Struct_5(Struct_4(vec4<f32>(-137f, 1369f, -1308f, -328f), Struct_2(-2003f, vec3<f32>(-463f, -840f, 788f), vec4<i32>(1i, 1034i, 2147483647i, -6805i), -1000f, vec4<i32>(1i, 14089i, -8343i, 2147483647i)), Struct_2(1760f, vec3<f32>(-1185f, -108f, 588f), vec4<i32>(0i, 2147483647i, -32955i, 1i), -871f, vec4<i32>(1i, 1546i, 1i, 44384i))), vec2<bool>(false, false), -1i, vec2<f32>(-1707f, 1519f)), Struct_5(Struct_4(vec4<f32>(-1953f, 148f, 1000f, 1483f), Struct_2(-114f, vec3<f32>(-623f, -1000f, -1956f), vec4<i32>(-5741i, 0i, -19306i, 0i), -227f, vec4<i32>(1i, -73109i, 0i, 27300i)), Struct_2(-1350f, vec3<f32>(724f, -549f, -176f), vec4<i32>(2147483647i, 62003i, -24500i, i32(-2147483648)), -167f, vec4<i32>(16040i, 507i, 27673i, 17859i))), vec2<bool>(false, true), 4150i, vec2<f32>(1000f, -2061f)), Struct_5(Struct_4(vec4<f32>(1175f, -729f, 2241f, -2357f), Struct_2(-1000f, vec3<f32>(-517f, -1898f, -1546f), vec4<i32>(0i, i32(-2147483648), -12121i, 16723i), -551f, vec4<i32>(17065i, -843i, -31056i, -1i)), Struct_2(-340f, vec3<f32>(-369f, 541f, -773f), vec4<i32>(2147483647i, 46709i, 31086i, -15687i), 2007f, vec4<i32>(-108381i, 0i, -1i, -17948i))), vec2<bool>(false, true), 21801i, vec2<f32>(1164f, -1000f)), Struct_5(Struct_4(vec4<f32>(-873f, -454f, 1208f, 1412f), Struct_2(-161f, vec3<f32>(-1264f, -1567f, -2584f), vec4<i32>(8492i, 28842i, -74497i, 1962i), 137f, vec4<i32>(i32(-2147483648), 1i, -6920i, i32(-2147483648))), Struct_2(-493f, vec3<f32>(-888f, 946f, 1446f), vec4<i32>(-20885i, 0i, -1i, -1i), 464f, vec4<i32>(i32(-2147483648), -32344i, -37399i, 16829i))), vec2<bool>(false, false), -20151i, vec2<f32>(-844f, 594f)), Struct_5(Struct_4(vec4<f32>(349f, 623f, -381f, -377f), Struct_2(295f, vec3<f32>(-454f, 347f, 1047f), vec4<i32>(0i, 2327i, 30414i, 2147483647i), 374f, vec4<i32>(-22425i, 0i, 100i, -30064i)), Struct_2(1889f, vec3<f32>(1009f, -1577f, 746f), vec4<i32>(1i, 2147483647i, -1i, -87343i), -944f, vec4<i32>(-72669i, -14521i, -1i, -1i))), vec2<bool>(true, true), -1641i, vec2<f32>(-1390f, 245f)), Struct_5(Struct_4(vec4<f32>(833f, -2449f, -267f, 1008f), Struct_2(-1000f, vec3<f32>(288f, -1622f, -1299f), vec4<i32>(46763i, -28796i, 2147483647i, 2147483647i), 1000f, vec4<i32>(i32(-2147483648), -9481i, -15362i, 2147483647i)), Struct_2(-835f, vec3<f32>(-830f, -252f, -129f), vec4<i32>(29198i, 3098i, i32(-2147483648), 1i), 1552f, vec4<i32>(56163i, -1i, 1i, 48019i))), vec2<bool>(true, true), i32(-2147483648), vec2<f32>(-1946f, 862f)), Struct_5(Struct_4(vec4<f32>(372f, -2675f, -1268f, -653f), Struct_2(1187f, vec3<f32>(413f, 839f, -1911f), vec4<i32>(-26346i, 44236i, 18093i, 2147483647i), 996f, vec4<i32>(-15827i, -1i, i32(-2147483648), -56957i)), Struct_2(-250f, vec3<f32>(-1792f, -441f, 818f), vec4<i32>(-23729i, 32598i, -1i, 0i), 1000f, vec4<i32>(22202i, 1i, i32(-2147483648), 16553i))), vec2<bool>(false, false), 21518i, vec2<f32>(583f, -1146f)), Struct_5(Struct_4(vec4<f32>(-751f, -1000f, 405f, 190f), Struct_2(-862f, vec3<f32>(1000f, 1001f, 355f), vec4<i32>(-27485i, 14800i, -1i, 2147483647i), -736f, vec4<i32>(i32(-2147483648), 0i, 0i, -7761i)), Struct_2(1383f, vec3<f32>(-227f, 1070f, 1431f), vec4<i32>(-35887i, 14977i, i32(-2147483648), 34947i), 450f, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i))), vec2<bool>(true, false), 33526i, vec2<f32>(-1419f, -514f)), Struct_5(Struct_4(vec4<f32>(338f, 352f, -1000f, 964f), Struct_2(221f, vec3<f32>(1676f, -125f, 344f), vec4<i32>(i32(-2147483648), 43053i, 62429i, 21253i), -1885f, vec4<i32>(-1i, 51519i, 2147483647i, -246i)), Struct_2(698f, vec3<f32>(1553f, 432f, -520f), vec4<i32>(-1i, i32(-2147483648), 0i, -7897i), -1860f, vec4<i32>(7426i, 2147483647i, 1i, -15190i))), vec2<bool>(false, true), 0i, vec2<f32>(-383f, 923f)), Struct_5(Struct_4(vec4<f32>(569f, -658f, -319f, 1549f), Struct_2(1735f, vec3<f32>(-1000f, 2088f, -2286f), vec4<i32>(-1i, 1i, -4544i, -22365i), -199f, vec4<i32>(0i, -1i, 2332i, 0i)), Struct_2(885f, vec3<f32>(910f, 2298f, 1037f), vec4<i32>(40986i, 0i, 2147483647i, -7614i), -1000f, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648)))), vec2<bool>(false, true), -16092i, vec2<f32>(-1000f, 1538f)), Struct_5(Struct_4(vec4<f32>(305f, 346f, 468f, -546f), Struct_2(550f, vec3<f32>(-806f, -1126f, -1292f), vec4<i32>(-19593i, 2147483647i, -1i, 8197i), -490f, vec4<i32>(i32(-2147483648), -82150i, -8067i, 13975i)), Struct_2(-1047f, vec3<f32>(2620f, -480f, 1492f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 37710i), 2228f, vec4<i32>(0i, -1i, -1i, 30187i))), vec2<bool>(true, true), -1i, vec2<f32>(398f, -1543f)), Struct_5(Struct_4(vec4<f32>(-666f, 1000f, -1000f, -627f), Struct_2(1448f, vec3<f32>(-267f, 1395f, -1176f), vec4<i32>(37300i, 0i, 0i, i32(-2147483648)), -1399f, vec4<i32>(-1i, -48376i, 2147483647i, -31435i)), Struct_2(628f, vec3<f32>(-304f, -793f, -122f), vec4<i32>(10786i, -1i, 0i, 2147483647i), 802f, vec4<i32>(-30689i, 11176i, 26392i, 0i))), vec2<bool>(false, false), i32(-2147483648), vec2<f32>(407f, -294f)), Struct_5(Struct_4(vec4<f32>(484f, 257f, -198f, -282f), Struct_2(-1696f, vec3<f32>(-930f, -1427f, -297f), vec4<i32>(0i, 48430i, -1i, -2022i), 662f, vec4<i32>(1i, -22941i, -41901i, -2943i)), Struct_2(440f, vec3<f32>(1000f, -686f, -1000f), vec4<i32>(-27141i, 1i, 2147483647i, 1i), -763f, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i))), vec2<bool>(true, false), -2965i, vec2<f32>(-785f, 670f)), Struct_5(Struct_4(vec4<f32>(620f, 110f, -347f, 900f), Struct_2(-696f, vec3<f32>(-106f, -745f, 456f), vec4<i32>(-1i, 13460i, 1506i, 18621i), -1973f, vec4<i32>(19708i, 1i, 0i, 1i)), Struct_2(-1734f, vec3<f32>(-835f, 1000f, 766f), vec4<i32>(-5248i, 2147483647i, -18967i, -1i), -1000f, vec4<i32>(i32(-2147483648), i32(-2147483648), 4263i, 2147483647i))), vec2<bool>(true, true), 1i, vec2<f32>(316f, 1401f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    return ~(~abs(abs(select(vec4<u32>(18476u, global3[_wgslsmith_index_u32(3829u, 32u)], arg_2, 12257u), vec4<u32>(arg_2, global3[_wgslsmith_index_u32(20551u, 32u)], 13539u, 98795u), vec4<bool>(true, true, arg_0.a, arg_0.c)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(vec4<f32>(-462f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-298f + global2.a.a.x), _wgslsmith_f_op_f32(876f * -157f))), global2.a.a.x, 187f));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(max(func_3(Struct_1(false, global2.a.a, global2.b.x, global3[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, 636f, var_0.a.x, global2.a.c.d)), global3[_wgslsmith_index_u32(0u, 32u)] | global3[_wgslsmith_index_u32(0u, 32u)]), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18897u, 32u)], 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(17544u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], global3[_wgslsmith_index_u32(23986u, 32u)])), vec4<u32>(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)] | ~global3[_wgslsmith_index_u32(1u, 32u)], 32u)], 61450u, 27695u, global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), 32u)]), 32u)])), 0u, _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)] & 29710u), 32u)], global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(1u, 32u)] >> (global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)] % 32u)), 32u)]), abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 32u)] >> (max(4294967295u, 2003u) % 32u), 32u)], 32u)] ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30942u, 32u)], 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<u32>(13150u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(110335u, 32u)], 32u)], 32u)], 32u)], 32u)])), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], global3[_wgslsmith_index_u32(0u, 32u)])), 32u)]));
    var_1 = ~reverseBits(~reverseBits(~vec4<u32>(var_1.x, var_1.x, 4294967295u, 1u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1447f, 1115f, -495f) * vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1000f))))));
    var var_3 = _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(min(var_1.x, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(27486u, 32u)], var_1.x, 1u, global3[_wgslsmith_index_u32(4294967295u, 32u)]), ~vec4<u32>(102280u, 8103u, 72424u, 1u)), 32u)]), 32u)], 38109u);
    return global2.a.c;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    let var_0 = func_2();
    let var_1 = global2.a.c.a;
    let var_2 = global2.a.c.b.x;
    let var_3 = !global2.b.x;
    let var_4 = global2.a;
    return -_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, 1i, 1i), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.d.x, _wgslsmith_div_vec3_f32(global2.a.c.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1668f, global2.a.b.d, _wgslsmith_f_op_f32(step(global2.a.b.a, global2.a.c.d)))))), reverseBits(vec4<i32>(-2147483647i, u_input.a, -global2.c, ~func_1(18635u, global2.a.b.c.xy))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2().b.x))))), _wgslsmith_mod_vec4_i32(abs(global2.a.c.e), func_2().c));
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a.a.x, global2.d.x, global2.a.c.a, global2.a.c.a))), global2.a.b, func_2()), vec2<bool>(false, global2.b.x), u_input.a, global2.d);
    global2 = Struct_5(global2.a, select(select(!var_1.b, !(!var_1.b), -2147483647i < min(-1i, global2.a.b.e.x)), !vec2<bool>(true, true | var_1.b.x), select(select(vec2<bool>(true, true), select(global2.b, vec2<bool>(true, false), vec2<bool>(global2.b.x, global2.b.x)), !global2.b.x), select(vec2<bool>(var_1.b.x, global2.b.x), !global2.b, any(vec3<bool>(var_1.b.x, var_1.b.x, false))), !(!var_1.b))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~(~global2.a.c.e.zy), select(global2.a.c.e.xz, vec2<i32>(u_input.a, 1i), false)), ~(select(var_1.a.b.c.xz, var_1.a.c.c.zz, true) >> (~vec2<u32>(0u, 37748u) % vec2<u32>(32u)))), var_1.a.b.b.yz);
    var var_2 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u & global3[_wgslsmith_index_u32(0u, 32u)], 67108u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3557u, 32u)], 32u)], 32u)], 32u)]) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2027u, 32u)], 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73310u, 32u)], 32u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23033u, 32u)], 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(39634u, 32u)], 65442u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73734u, 32u)], 32u)], 4294967295u), vec2<u32>(8659u, 1u)))), 32u)] >> (1u % 32u), 32u)], 32u)];
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a.a.x)), -3098f);
    var var_4 = select(global2.a.b.e.zwx, -select(~abs(vec3<i32>(var_0.c.x, var_0.c.x, -31031i)), global2.a.c.e.yww, select(!vec3<bool>(var_1.b.x, false, true), vec3<bool>(var_1.b.x, false, global2.b.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)] != global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)])), !all(!vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)));
    global3 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + _wgslsmith_f_op_f32(select(var_1.a.a.x, 883f, true))) - -1527f))), 66715u, func_2().e, _wgslsmith_f_op_f32(-141f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.b.b.x + 1038f), _wgslsmith_f_op_f32(floor(686f)))))));
}

