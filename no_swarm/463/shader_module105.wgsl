struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(4294967295u, Struct_1(-37564i, 330f, vec2<f32>(1853f, 441f)), Struct_1(-1i, -1001f, vec2<f32>(-756f, 192f)), Struct_1(0i, 1000f, vec2<f32>(-403f, -1344f)), Struct_1(38587i, 1297f, vec2<f32>(1381f, 1014f))), Struct_2(1u, Struct_1(5291i, 507f, vec2<f32>(556f, -737f)), Struct_1(0i, 1278f, vec2<f32>(-383f, -2154f)), Struct_1(-4411i, -754f, vec2<f32>(401f, -157f)), Struct_1(2147483647i, -1268f, vec2<f32>(-1169f, -385f))), Struct_2(1u, Struct_1(-20135i, -469f, vec2<f32>(1714f, 210f)), Struct_1(-1i, 1038f, vec2<f32>(-649f, 967f)), Struct_1(1i, 1296f, vec2<f32>(458f, -1032f)), Struct_1(-1i, -1795f, vec2<f32>(-990f, -521f))), Struct_2(48485u, Struct_1(i32(-2147483648), -779f, vec2<f32>(1302f, -358f)), Struct_1(2147483647i, -431f, vec2<f32>(-728f, -953f)), Struct_1(i32(-2147483648), -2146f, vec2<f32>(1657f, 2090f)), Struct_1(-1i, 287f, vec2<f32>(310f, 1410f))), Struct_2(0u, Struct_1(2147483647i, -322f, vec2<f32>(-1000f, -618f)), Struct_1(0i, -110f, vec2<f32>(-579f, -304f)), Struct_1(2147483647i, -1450f, vec2<f32>(-2108f, 697f)), Struct_1(-40248i, 495f, vec2<f32>(793f, -1060f))), Struct_2(13457u, Struct_1(36300i, 716f, vec2<f32>(872f, 889f)), Struct_1(39008i, -759f, vec2<f32>(-1000f, -1158f)), Struct_1(50225i, 717f, vec2<f32>(1255f, -476f)), Struct_1(-50748i, -2557f, vec2<f32>(615f, -210f))), Struct_2(0u, Struct_1(i32(-2147483648), 501f, vec2<f32>(443f, 740f)), Struct_1(-6584i, -858f, vec2<f32>(-445f, 326f)), Struct_1(21760i, 1690f, vec2<f32>(-171f, 1187f)), Struct_1(3653i, 434f, vec2<f32>(-1199f, 1000f))), Struct_2(4294967295u, Struct_1(1i, -1289f, vec2<f32>(1233f, -357f)), Struct_1(55579i, -1000f, vec2<f32>(986f, 690f)), Struct_1(1i, -392f, vec2<f32>(506f, -175f)), Struct_1(5316i, -1000f, vec2<f32>(249f, 585f))), Struct_2(72517u, Struct_1(-1i, -1511f, vec2<f32>(-314f, -1735f)), Struct_1(-26790i, 408f, vec2<f32>(-1346f, -435f)), Struct_1(0i, -1000f, vec2<f32>(368f, -249f)), Struct_1(1i, 584f, vec2<f32>(1461f, -185f))), Struct_2(56004u, Struct_1(62566i, 214f, vec2<f32>(398f, 867f)), Struct_1(2147483647i, -489f, vec2<f32>(-562f, -1111f)), Struct_1(1i, -1162f, vec2<f32>(257f, 2159f)), Struct_1(-52515i, 1051f, vec2<f32>(1031f, 418f))), Struct_2(4294967295u, Struct_1(-41578i, -689f, vec2<f32>(203f, -1937f)), Struct_1(0i, 1009f, vec2<f32>(-1312f, -355f)), Struct_1(0i, 703f, vec2<f32>(567f, -173f)), Struct_1(-6881i, 1095f, vec2<f32>(1854f, 727f))), Struct_2(33144u, Struct_1(2147483647i, 187f, vec2<f32>(834f, 1627f)), Struct_1(-42967i, 228f, vec2<f32>(553f, -1691f)), Struct_1(2147483647i, -736f, vec2<f32>(-431f, -647f)), Struct_1(i32(-2147483648), -1394f, vec2<f32>(730f, -1616f))), Struct_2(15845u, Struct_1(-8215i, 106f, vec2<f32>(-335f, 578f)), Struct_1(991i, -338f, vec2<f32>(538f, -809f)), Struct_1(-22922i, 184f, vec2<f32>(935f, 1000f)), Struct_1(i32(-2147483648), 1307f, vec2<f32>(-871f, 1390f))), Struct_2(41674u, Struct_1(-25054i, 1024f, vec2<f32>(-519f, 1031f)), Struct_1(-40586i, 1212f, vec2<f32>(519f, 1035f)), Struct_1(-17199i, 267f, vec2<f32>(-1000f, -218f)), Struct_1(33677i, -1914f, vec2<f32>(342f, -763f))), Struct_2(56300u, Struct_1(12794i, 557f, vec2<f32>(-1975f, 529f)), Struct_1(1i, -990f, vec2<f32>(-880f, 388f)), Struct_1(-1i, 1271f, vec2<f32>(-304f, 247f)), Struct_1(2147483647i, -1764f, vec2<f32>(-106f, 1165f))), Struct_2(4294967295u, Struct_1(2147483647i, -1270f, vec2<f32>(650f, -1184f)), Struct_1(1i, 1797f, vec2<f32>(-1380f, 696f)), Struct_1(-40400i, 465f, vec2<f32>(305f, 1000f)), Struct_1(-1i, -218f, vec2<f32>(1875f, -1177f))), Struct_2(49595u, Struct_1(13082i, -311f, vec2<f32>(933f, 1277f)), Struct_1(2147483647i, 1638f, vec2<f32>(-657f, 2705f)), Struct_1(-12951i, 182f, vec2<f32>(-669f, 147f)), Struct_1(1i, 2723f, vec2<f32>(2480f, -446f))), Struct_2(2381u, Struct_1(3052i, 1295f, vec2<f32>(489f, -1096f)), Struct_1(2147483647i, 1169f, vec2<f32>(-1303f, -600f)), Struct_1(32861i, 1288f, vec2<f32>(-377f, -1000f)), Struct_1(0i, 346f, vec2<f32>(476f, 918f))), Struct_2(2651u, Struct_1(-1i, -2129f, vec2<f32>(-400f, -419f)), Struct_1(3057i, 104f, vec2<f32>(447f, 308f)), Struct_1(1i, -890f, vec2<f32>(-2048f, -1390f)), Struct_1(i32(-2147483648), -1000f, vec2<f32>(747f, -391f))), Struct_2(0u, Struct_1(1i, -850f, vec2<f32>(-265f, 447f)), Struct_1(i32(-2147483648), -1967f, vec2<f32>(2145f, -583f)), Struct_1(-50547i, -104f, vec2<f32>(208f, -1740f)), Struct_1(1i, -857f, vec2<f32>(-319f, 326f))), Struct_2(38609u, Struct_1(i32(-2147483648), 659f, vec2<f32>(1146f, -1214f)), Struct_1(0i, 1971f, vec2<f32>(829f, 309f)), Struct_1(50299i, -244f, vec2<f32>(1000f, -520f)), Struct_1(8456i, 303f, vec2<f32>(-877f, 1000f))), Struct_2(4294967295u, Struct_1(8472i, -1118f, vec2<f32>(1034f, -457f)), Struct_1(i32(-2147483648), 961f, vec2<f32>(-1000f, -351f)), Struct_1(18712i, 1639f, vec2<f32>(-897f, -1000f)), Struct_1(0i, 1000f, vec2<f32>(-982f, 1579f))), Struct_2(8904u, Struct_1(28690i, -130f, vec2<f32>(-1472f, -2082f)), Struct_1(-1i, -149f, vec2<f32>(-1149f, -528f)), Struct_1(-69553i, -1000f, vec2<f32>(-432f, -312f)), Struct_1(-37574i, 2877f, vec2<f32>(-915f, 1000f))), Struct_2(4294967295u, Struct_1(-16455i, 1000f, vec2<f32>(-465f, -952f)), Struct_1(1i, -2903f, vec2<f32>(1878f, 1527f)), Struct_1(0i, -1090f, vec2<f32>(818f, 2143f)), Struct_1(0i, 1000f, vec2<f32>(2017f, -932f))), Struct_2(1u, Struct_1(0i, 708f, vec2<f32>(1134f, 959f)), Struct_1(-1i, -338f, vec2<f32>(-777f, -1224f)), Struct_1(i32(-2147483648), 511f, vec2<f32>(-185f, 493f)), Struct_1(-22137i, 155f, vec2<f32>(-1492f, -587f))));

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(77724u, Struct_1(78601i, 986f, vec2<f32>(-1000f, -353f)), Struct_1(0i, -690f, vec2<f32>(1000f, -1578f)), Struct_1(1i, 1585f, vec2<f32>(217f, -1000f)), Struct_1(-2591i, -312f, vec2<f32>(482f, 1000f))), Struct_2(4294967295u, Struct_1(-1207i, 395f, vec2<f32>(1000f, 220f)), Struct_1(2147483647i, 2055f, vec2<f32>(1913f, -323f)), Struct_1(-35146i, 178f, vec2<f32>(-200f, 955f)), Struct_1(i32(-2147483648), -871f, vec2<f32>(-1400f, -1000f))), Struct_2(75152u, Struct_1(2147483647i, -174f, vec2<f32>(690f, -655f)), Struct_1(i32(-2147483648), 648f, vec2<f32>(2247f, 344f)), Struct_1(-27883i, -340f, vec2<f32>(-178f, 349f)), Struct_1(-28196i, -582f, vec2<f32>(-1821f, -735f))), Struct_2(4294967295u, Struct_1(-2024i, -546f, vec2<f32>(-1372f, -1000f)), Struct_1(-46580i, 949f, vec2<f32>(270f, -233f)), Struct_1(1i, -2326f, vec2<f32>(1051f, 703f)), Struct_1(i32(-2147483648), -358f, vec2<f32>(-1000f, -997f))), Struct_2(1u, Struct_1(45260i, -474f, vec2<f32>(885f, -1543f)), Struct_1(-63708i, 380f, vec2<f32>(1761f, 245f)), Struct_1(-19130i, -125f, vec2<f32>(1000f, -155f)), Struct_1(48326i, 520f, vec2<f32>(-1915f, 1399f))), Struct_2(98169u, Struct_1(-18497i, 1000f, vec2<f32>(1754f, 216f)), Struct_1(-1i, 456f, vec2<f32>(-260f, 941f)), Struct_1(i32(-2147483648), -705f, vec2<f32>(-605f, 698f)), Struct_1(-30073i, -911f, vec2<f32>(1455f, -845f))), Struct_2(4294967295u, Struct_1(-19117i, 1421f, vec2<f32>(1000f, -765f)), Struct_1(i32(-2147483648), 2190f, vec2<f32>(-1325f, 539f)), Struct_1(64911i, 1571f, vec2<f32>(402f, 926f)), Struct_1(-1i, 428f, vec2<f32>(-774f, 1000f))), Struct_2(26783u, Struct_1(2147483647i, -1755f, vec2<f32>(-811f, -104f)), Struct_1(2147483647i, 1573f, vec2<f32>(490f, -826f)), Struct_1(29736i, -1600f, vec2<f32>(-933f, -1500f)), Struct_1(-16929i, -1432f, vec2<f32>(1000f, -1306f))), Struct_2(1u, Struct_1(-1i, -567f, vec2<f32>(-991f, -2186f)), Struct_1(-6961i, -830f, vec2<f32>(514f, -391f)), Struct_1(-20412i, 222f, vec2<f32>(-227f, 417f)), Struct_1(i32(-2147483648), 458f, vec2<f32>(914f, -1008f))), Struct_2(41192u, Struct_1(-17390i, 1389f, vec2<f32>(-311f, 1012f)), Struct_1(40187i, 545f, vec2<f32>(693f, -2670f)), Struct_1(29054i, -318f, vec2<f32>(2180f, 262f)), Struct_1(i32(-2147483648), -550f, vec2<f32>(1289f, 1481f))), Struct_2(20197u, Struct_1(-12092i, 166f, vec2<f32>(-1644f, -112f)), Struct_1(14798i, -1000f, vec2<f32>(-1320f, -1000f)), Struct_1(-60509i, 1231f, vec2<f32>(359f, 1063f)), Struct_1(15551i, -179f, vec2<f32>(-1164f, -1261f))), Struct_2(1u, Struct_1(2147483647i, 361f, vec2<f32>(1000f, 620f)), Struct_1(-45646i, 414f, vec2<f32>(385f, -1000f)), Struct_1(1i, 323f, vec2<f32>(-1430f, 246f)), Struct_1(-1i, 1021f, vec2<f32>(358f, 1284f))), Struct_2(1u, Struct_1(0i, -1000f, vec2<f32>(610f, 561f)), Struct_1(i32(-2147483648), 1000f, vec2<f32>(-733f, -1000f)), Struct_1(45595i, 212f, vec2<f32>(219f, 2076f)), Struct_1(2147483647i, -965f, vec2<f32>(-882f, 609f))), Struct_2(15711u, Struct_1(2147483647i, 1201f, vec2<f32>(368f, -868f)), Struct_1(0i, 267f, vec2<f32>(-903f, -1427f)), Struct_1(473i, 1000f, vec2<f32>(-2074f, 348f)), Struct_1(-1i, 2365f, vec2<f32>(712f, -1000f))), Struct_2(48613u, Struct_1(49267i, 1000f, vec2<f32>(-596f, -179f)), Struct_1(2147483647i, 140f, vec2<f32>(1068f, 1000f)), Struct_1(-1i, 1564f, vec2<f32>(1061f, 280f)), Struct_1(0i, -678f, vec2<f32>(1662f, -1917f))), Struct_2(0u, Struct_1(2147483647i, 450f, vec2<f32>(-1996f, -486f)), Struct_1(2147483647i, 1938f, vec2<f32>(731f, -245f)), Struct_1(13877i, -166f, vec2<f32>(-1785f, -667f)), Struct_1(2582i, -831f, vec2<f32>(-1686f, -1000f))), Struct_2(39395u, Struct_1(1471i, -1189f, vec2<f32>(877f, 505f)), Struct_1(2147483647i, -587f, vec2<f32>(911f, 1051f)), Struct_1(99338i, -291f, vec2<f32>(-1815f, -483f)), Struct_1(0i, -1905f, vec2<f32>(-763f, -1384f))), Struct_2(45449u, Struct_1(-1i, 590f, vec2<f32>(1435f, 1000f)), Struct_1(2283i, -712f, vec2<f32>(-633f, 212f)), Struct_1(-1i, 530f, vec2<f32>(220f, -330f)), Struct_1(i32(-2147483648), 381f, vec2<f32>(-561f, -1024f))), Struct_2(1u, Struct_1(1i, -701f, vec2<f32>(-982f, 2391f)), Struct_1(0i, -1544f, vec2<f32>(154f, 1487f)), Struct_1(-1i, 788f, vec2<f32>(890f, 436f)), Struct_1(-1i, 1608f, vec2<f32>(1150f, -414f))), Struct_2(4294967295u, Struct_1(-22562i, 106f, vec2<f32>(-688f, -533f)), Struct_1(i32(-2147483648), -102f, vec2<f32>(344f, 217f)), Struct_1(1i, -2029f, vec2<f32>(736f, -717f)), Struct_1(-23477i, 669f, vec2<f32>(106f, -403f))), Struct_2(21218u, Struct_1(-16016i, -1171f, vec2<f32>(1241f, -518f)), Struct_1(-1i, -1997f, vec2<f32>(-1325f, 2742f)), Struct_1(-1i, 1323f, vec2<f32>(-1000f, 1085f)), Struct_1(-28931i, 402f, vec2<f32>(2846f, -691f))), Struct_2(0u, Struct_1(i32(-2147483648), 1084f, vec2<f32>(-2494f, -783f)), Struct_1(1i, 1767f, vec2<f32>(296f, -2217f)), Struct_1(0i, 1000f, vec2<f32>(1616f, -111f)), Struct_1(-1i, 756f, vec2<f32>(-295f, -1021f))));

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<vec4<f32>, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(any(vec3<bool>(false, false, false)), true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-34336i, u_input.a, 17283i, u_input.a), vec4<i32>(-320i, u_input.a, u_input.a, 2147483647i)) | (vec4<i32>(u_input.a, u_input.a, -64068i, -40518i) >> (vec4<u32>(u_input.b, 0u, 4294967295u, u_input.c.x) % vec4<u32>(32u))), reverseBits(reverseBits(vec4<i32>(u_input.a, -1i, -14869i, 25258i)))), _wgslsmith_div_i32(-1i, 26507i) >> (u_input.c.x % 32u), u_input.a));
}

