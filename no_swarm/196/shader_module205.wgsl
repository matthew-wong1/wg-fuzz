struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(vec3<f32>(1798f, 672f, -664f), 20428i, -1152f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(611f, -571f, -946f), -15748i, 592f, vec3<bool>(false, true, false)), vec4<bool>(true, false, true, true), false, Struct_1(vec3<f32>(723f, 1000f, -958f), 1067i, -1638f, vec3<bool>(false, true, true))), vec3<u32>(33325u, 42815u, 6849u), false), Struct_3(Struct_1(vec3<f32>(1950f, -106f, -304f), 45414i, -182f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(-477f, 1402f, -324f), -40734i, 802f, vec3<bool>(false, false, true)), vec4<bool>(true, false, false, false), false, Struct_1(vec3<f32>(1452f, -751f, 2010f), -1i, -418f, vec3<bool>(true, true, true))), vec3<u32>(17569u, 1u, 0u), false), Struct_3(Struct_1(vec3<f32>(-1359f, 1387f, -691f), i32(-2147483648), -1000f, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(900f, -3204f, 2090f), 1i, 1528f, vec3<bool>(true, false, false)), vec4<bool>(false, true, false, true), false, Struct_1(vec3<f32>(156f, 479f, -1880f), 0i, -865f, vec3<bool>(true, false, false))), vec3<u32>(88437u, 64677u, 4294967295u), true), Struct_3(Struct_1(vec3<f32>(-1699f, -807f, 1000f), 29613i, -985f, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<f32>(-129f, -786f, -1000f), -1i, -1336f, vec3<bool>(false, true, false)), vec4<bool>(false, true, false, true), true, Struct_1(vec3<f32>(-547f, 720f, 983f), -12549i, -251f, vec3<bool>(false, false, true))), vec3<u32>(4294967295u, 25605u, 7594u), true), Struct_3(Struct_1(vec3<f32>(-1000f, 571f, -980f), i32(-2147483648), 578f, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(815f, -193f, 1051f), -2557i, 228f, vec3<bool>(true, true, false)), vec4<bool>(true, true, true, false), false, Struct_1(vec3<f32>(-1564f, -614f, -1360f), i32(-2147483648), 1095f, vec3<bool>(false, true, false))), vec3<u32>(5212u, 60936u, 1u), true), Struct_3(Struct_1(vec3<f32>(723f, -603f, -374f), 25997i, -525f, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(-173f, -956f, 379f), 0i, -144f, vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true), true, Struct_1(vec3<f32>(-1733f, -2173f, 1484f), -14311i, 2124f, vec3<bool>(true, false, true))), vec3<u32>(37465u, 4294967295u, 1u), false), Struct_3(Struct_1(vec3<f32>(-855f, -1325f, -1490f), 2325i, -161f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(1155f, -1044f, -1192f), 0i, -149f, vec3<bool>(false, true, true)), vec4<bool>(true, true, true, false), true, Struct_1(vec3<f32>(-383f, 610f, -1236f), 54469i, -210f, vec3<bool>(true, true, false))), vec3<u32>(40883u, 35398u, 0u), true), Struct_3(Struct_1(vec3<f32>(-1260f, -1565f, -657f), 2147483647i, 316f, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(-859f, -1893f, -662f), 55714i, 691f, vec3<bool>(false, true, false)), vec4<bool>(true, false, true, true), false, Struct_1(vec3<f32>(-1127f, -2358f, -1800f), -16389i, 879f, vec3<bool>(false, false, true))), vec3<u32>(0u, 0u, 61015u), false), Struct_3(Struct_1(vec3<f32>(-791f, -2009f, 2482f), 65192i, -852f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(-1953f, 118f, 292f), -25086i, -213f, vec3<bool>(false, true, false)), vec4<bool>(true, false, false, true), true, Struct_1(vec3<f32>(1000f, 803f, -995f), 1i, 598f, vec3<bool>(false, true, true))), vec3<u32>(79361u, 4294967295u, 81498u), true), Struct_3(Struct_1(vec3<f32>(1696f, -985f, -873f), i32(-2147483648), -428f, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(587f, 1825f, -462f), 1i, -783f, vec3<bool>(true, false, false)), vec4<bool>(true, false, true, true), true, Struct_1(vec3<f32>(-793f, 1004f, 2122f), 21984i, -993f, vec3<bool>(true, false, true))), vec3<u32>(17079u, 46239u, 4294967295u), true), Struct_3(Struct_1(vec3<f32>(-1000f, -327f, -682f), 48295i, 929f, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(1087f, -166f, 1970f), 0i, 562f, vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true), true, Struct_1(vec3<f32>(965f, 1000f, 439f), 14243i, -405f, vec3<bool>(true, true, false))), vec3<u32>(25699u, 21282u, 1u), false), Struct_3(Struct_1(vec3<f32>(634f, 495f, -131f), 2147483647i, -1360f, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-968f, 650f, 1259f), 1i, 481f, vec3<bool>(false, true, true)), vec4<bool>(false, true, true, true), false, Struct_1(vec3<f32>(-1710f, -825f, -530f), -32102i, -171f, vec3<bool>(false, false, true))), vec3<u32>(1u, 2710u, 1u), false), Struct_3(Struct_1(vec3<f32>(389f, 140f, 988f), 10163i, -1098f, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(1440f, -162f, -864f), 23367i, -1050f, vec3<bool>(true, true, false)), vec4<bool>(true, false, true, true), true, Struct_1(vec3<f32>(-977f, 227f, -1000f), -45853i, -251f, vec3<bool>(true, true, true))), vec3<u32>(4294967295u, 16429u, 85438u), true), Struct_3(Struct_1(vec3<f32>(504f, 915f, -1601f), 6475i, -533f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(185f, -530f, -541f), 2147483647i, -1062f, vec3<bool>(true, false, true)), vec4<bool>(false, true, true, false), false, Struct_1(vec3<f32>(-110f, 1000f, 1565f), i32(-2147483648), 1015f, vec3<bool>(false, true, true))), vec3<u32>(4294967295u, 0u, 70656u), true), Struct_3(Struct_1(vec3<f32>(1273f, 405f, -1092f), 30006i, 2208f, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(233f, 203f, 433f), i32(-2147483648), -961f, vec3<bool>(false, false, false)), vec4<bool>(false, true, false, false), true, Struct_1(vec3<f32>(-1241f, -2830f, -1117f), -1i, -1441f, vec3<bool>(false, true, false))), vec3<u32>(12789u, 4294967295u, 24459u), true), Struct_3(Struct_1(vec3<f32>(1000f, 1239f, 1000f), i32(-2147483648), -314f, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec3<f32>(550f, 982f, 530f), i32(-2147483648), 520f, vec3<bool>(false, false, false)), vec4<bool>(false, true, true, true), false, Struct_1(vec3<f32>(-970f, 1380f, 981f), 1i, -1130f, vec3<bool>(true, false, false))), vec3<u32>(56161u, 23540u, 1u), true), Struct_3(Struct_1(vec3<f32>(-668f, -139f, 543f), 19519i, -2548f, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(1551f, -351f, 672f), 0i, 1094f, vec3<bool>(true, true, false)), vec4<bool>(false, false, false, true), true, Struct_1(vec3<f32>(-1547f, -1128f, -2331f), 2000i, -244f, vec3<bool>(false, false, false))), vec3<u32>(1u, 0u, 0u), true), Struct_3(Struct_1(vec3<f32>(-2654f, 1383f, -1648f), 0i, -283f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(-420f, 1000f, -477f), 2147483647i, 1744f, vec3<bool>(true, false, true)), vec4<bool>(false, true, true, true), true, Struct_1(vec3<f32>(-808f, -1116f, -1311f), 51161i, 966f, vec3<bool>(true, false, true))), vec3<u32>(0u, 0u, 32888u), true), Struct_3(Struct_1(vec3<f32>(729f, 1000f, -276f), 26413i, -584f, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(-1616f, -2336f, -1697f), 1i, 594f, vec3<bool>(true, false, true)), vec4<bool>(false, true, true, false), true, Struct_1(vec3<f32>(1021f, 1000f, -1000f), 27824i, 645f, vec3<bool>(true, true, false))), vec3<u32>(59791u, 0u, 15764u), false), Struct_3(Struct_1(vec3<f32>(-886f, -1857f, 1000f), -28721i, -133f, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-792f, -1374f, -533f), -1i, 1104f, vec3<bool>(false, false, false)), vec4<bool>(false, false, true, false), false, Struct_1(vec3<f32>(-194f, 287f, 1954f), -31478i, -329f, vec3<bool>(true, false, false))), vec3<u32>(1u, 20712u, 0u), false), Struct_3(Struct_1(vec3<f32>(-2808f, 136f, -1000f), 2147483647i, 980f, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-1006f, 430f, -1000f), 1i, -690f, vec3<bool>(false, false, false)), vec4<bool>(false, true, true, true), true, Struct_1(vec3<f32>(479f, 1000f, 1006f), 2147483647i, 483f, vec3<bool>(false, true, false))), vec3<u32>(8875u, 101947u, 975u), true), Struct_3(Struct_1(vec3<f32>(-913f, 349f, -644f), -347i, 837f, vec3<bool>(true, true, false)), Struct_2(Struct_1(vec3<f32>(-372f, -225f, -523f), 1i, 440f, vec3<bool>(true, false, false)), vec4<bool>(false, true, false, false), true, Struct_1(vec3<f32>(-1534f, 561f, -547f), 0i, 598f, vec3<bool>(false, true, true))), vec3<u32>(0u, 28818u, 26469u), true), Struct_3(Struct_1(vec3<f32>(434f, -132f, 219f), 2147483647i, 418f, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(-928f, -1000f, 1837f), 1i, 1210f, vec3<bool>(false, false, true)), vec4<bool>(true, false, true, true), true, Struct_1(vec3<f32>(-466f, 1297f, 297f), 6238i, 157f, vec3<bool>(false, false, false))), vec3<u32>(72526u, 1u, 1u), false), Struct_3(Struct_1(vec3<f32>(1088f, 1000f, 759f), 2147483647i, 1053f, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(-210f, -1685f, -988f), -24861i, -457f, vec3<bool>(true, false, false)), vec4<bool>(true, true, true, false), false, Struct_1(vec3<f32>(-1702f, 2751f, 1197f), i32(-2147483648), -782f, vec3<bool>(true, true, true))), vec3<u32>(22522u, 4294967295u, 4294967295u), true), Struct_3(Struct_1(vec3<f32>(225f, -417f, 1165f), 0i, 505f, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(-217f, 1282f, 1847f), 1790i, 961f, vec3<bool>(true, true, true)), vec4<bool>(true, false, false, true), false, Struct_1(vec3<f32>(1479f, -231f, 1222f), 1i, -1000f, vec3<bool>(false, false, true))), vec3<u32>(13651u, 0u, 1u), true), Struct_3(Struct_1(vec3<f32>(1000f, 2056f, 203f), 8444i, -1001f, vec3<bool>(true, false, true)), Struct_2(Struct_1(vec3<f32>(462f, -790f, 1999f), 2147483647i, 1239f, vec3<bool>(false, true, false)), vec4<bool>(false, true, true, false), true, Struct_1(vec3<f32>(181f, -876f, -694f), -1i, -153f, vec3<bool>(true, true, false))), vec3<u32>(4294967295u, 37273u, 4294967295u), true), Struct_3(Struct_1(vec3<f32>(448f, 731f, 651f), -45993i, 815f, vec3<bool>(true, false, false)), Struct_2(Struct_1(vec3<f32>(1136f, -1153f, -446f), 8889i, -388f, vec3<bool>(true, true, true)), vec4<bool>(true, false, true, false), false, Struct_1(vec3<f32>(129f, -497f, -1193f), 32344i, -1000f, vec3<bool>(true, true, true))), vec3<u32>(22942u, 29588u, 19541u), true), Struct_3(Struct_1(vec3<f32>(-542f, 516f, 190f), -21978i, -1105f, vec3<bool>(false, true, false)), Struct_2(Struct_1(vec3<f32>(1348f, 1695f, -1751f), 1i, -1000f, vec3<bool>(true, true, false)), vec4<bool>(false, false, true, false), true, Struct_1(vec3<f32>(1000f, 906f, -945f), 2147483647i, 1591f, vec3<bool>(false, false, true))), vec3<u32>(18556u, 0u, 0u), true), Struct_3(Struct_1(vec3<f32>(379f, -431f, -1787f), -14350i, 102f, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<f32>(1086f, -1468f, 1000f), -1i, 1542f, vec3<bool>(true, false, false)), vec4<bool>(true, true, false, false), true, Struct_1(vec3<f32>(-686f, -931f, -108f), i32(-2147483648), -1729f, vec3<bool>(true, true, false))), vec3<u32>(5675u, 73802u, 58803u), false), Struct_3(Struct_1(vec3<f32>(918f, -191f, -814f), -9133i, -647f, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(563f, -1000f, -2343f), 26726i, 1347f, vec3<bool>(false, true, true)), vec4<bool>(false, true, true, true), false, Struct_1(vec3<f32>(182f, -1000f, 754f), i32(-2147483648), 324f, vec3<bool>(true, true, false))), vec3<u32>(33895u, 0u, 0u), false), Struct_3(Struct_1(vec3<f32>(-138f, -1603f, -516f), 28670i, 260f, vec3<bool>(true, true, true)), Struct_2(Struct_1(vec3<f32>(-450f, 1281f, 1000f), 1i, 1000f, vec3<bool>(false, true, false)), vec4<bool>(false, false, true, true), false, Struct_1(vec3<f32>(-979f, -1381f, -1035f), -1i, -1684f, vec3<bool>(true, false, false))), vec3<u32>(57623u, 64795u, 1u), false), Struct_3(Struct_1(vec3<f32>(-1049f, -499f, 1000f), -15128i, -1398f, vec3<bool>(false, true, true)), Struct_2(Struct_1(vec3<f32>(481f, 1327f, 158f), 27616i, 284f, vec3<bool>(true, false, true)), vec4<bool>(true, true, false, true), true, Struct_1(vec3<f32>(104f, -875f, 122f), -38935i, 690f, vec3<bool>(true, false, true))), vec3<u32>(37155u, 1u, 0u), false));

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<u32, 26> = array<u32, 26>(18112u, 32090u, 4294967295u, 1u, 4294967295u, 4294967295u, 12271u, 1u, 4294967295u, 4575u, 4294967295u, 4294967295u, 1u, 42734u, 5945u, 4294967295u, 4294967295u, 68964u, 44843u, 29242u, 4294967295u, 4294967295u, 2117u, 0u, 1u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> f32 {
    global3 = array<u32, 26>();
    global1 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global3[_wgslsmith_index_u32(18997u, 26u)] << (11592u % 32u), abs(u_input.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(13100u, 0u, 12334u), firstLeadingBit(vec3<u32>(0u, 4294967295u, 1u))) | u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2452f) + _wgslsmith_f_op_f32(-909f - -184f)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> vec3<i32> {
    global1 = u_input.a.x;
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(577f)), _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.b, u_input.b, u_input.b), arg_1.c)), arg_1.b.x)), -u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-519f - -1124f)))), arg_1.c), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), arg_1.b.x, vec3<bool>(!arg_1.c.x, true, u_input.a.x > 4294967295u)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), arg_1.c.x), vec4<bool>(false, true, select(arg_1.c.x, arg_1.c.x, false), true), select(select(vec4<bool>(arg_1.c.x, true, arg_1.c.x, true), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, true), vec4<bool>(arg_1.c.x, false, true, arg_1.c.x)), vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x), false)), any(select(select(vec4<bool>(true, arg_1.c.x, false, arg_1.c.x), vec4<bool>(true, true, arg_1.c.x, true), true), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.d, arg_1.d))), ~firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(sign(arg_1.b.x)), arg_1.c)), ~_wgslsmith_add_vec3_u32(arg_1.e.yxw, ~arg_1.a.wwz) & vec3<u32>(~global3[_wgslsmith_index_u32(4294967295u, 26u)] ^ 0u, u_input.a.x, countOneBits(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)])), !select(any(select(vec4<bool>(false, true, arg_1.c.x, arg_1.c.x), vec4<bool>(true, false, false, false), arg_1.c.x)), any(select(vec4<bool>(true, arg_1.c.x, false, arg_1.c.x), vec4<bool>(false, false, arg_1.c.x, arg_1.c.x), vec4<bool>(true, arg_1.c.x, true, true))), !any(arg_1.c)));
    global3 = array<u32, 26>();
    global2 = arg_1.c.x;
    global3 = array<u32, 26>();
    return vec3<i32>(2250i, ~(u_input.b | -var_0.a.b), min(~(~(-1i) & (var_0.b.a.b & var_0.a.b)), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(u_input.b, u_input.b, u_input.b, 1203i), vec4<i32>(var_0.b.d.b, var_0.a.b, u_input.b, 15328i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -25780i, 2147483647i, var_0.a.b) & vec4<i32>(u_input.b, 27662i, var_0.b.d.b, 26873i), vec4<i32>(-2884i, u_input.b, var_0.b.d.b, u_input.b)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 26u)];
    var var_1 = firstLeadingBit(~(func_2(vec4<f32>(arg_0.b.a.a.x, -349f, arg_0.b.a.c, 959f), Struct_4(vec4<u32>(u_input.a.x, arg_0.c.x, arg_0.c.x, 100586u), arg_0.a.a, vec3<bool>(false, arg_0.b.c, arg_1.x), 1000f, vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 26u)], u_input.a.x, 0u))) << (vec3<u32>(72854u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 26u)], 26u)], 0u) % vec3<u32>(32u)))) ^ _wgslsmith_mult_vec3_i32(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, arg_0.b.d.b), vec3<i32>(arg_0.b.a.b, 0i, -18310i)) | firstLeadingBit(vec3<i32>(arg_0.a.b, 25565i, 2147483647i))), vec3<i32>(~56475i, func_2(vec4<f32>(arg_0.b.d.c, -430f, -1032f, -1000f), Struct_4(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(1000f, arg_0.b.d.a.x, arg_0.b.d.c), arg_0.b.a.d, -2423f, vec4<u32>(1u, global3[_wgslsmith_index_u32(arg_0.c.x, 26u)], u_input.a.x, 29330u))).x << (_wgslsmith_mod_u32(u_input.a.x, 1u) % 32u), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-611f, -243f, arg_0.a.a.x, 119f))), Struct_4(vec4<u32>(arg_0.c.x, 1u, global3[_wgslsmith_index_u32(arg_0.c.x, 26u)], 0u), arg_0.b.d.a, arg_0.b.d.d, 1280f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 3992u))).x));
    var var_2 = !(!arg_0.a.d.yx);
    var var_3 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b.a.c)), _wgslsmith_f_op_f32(sign(arg_0.b.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)), 1f), ~arg_0.a.b, 1f, select(select(arg_1, !arg_1, arg_1), arg_0.b.b.wzy, true)), arg_0.b, ~arg_0.c, arg_0.a.d.x);
    let var_4 = var_3.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-1i, -(i32(-1i) * -u_input.b), u_input.b >> (_wgslsmith_add_u32(~9024u, global3[_wgslsmith_index_u32(max(85431u, 46809u), 26u)]) % 32u));
    var var_1 = 704f;
    let var_2 = select(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), func_1(global0[_wgslsmith_index_u32(4294967295u, 32u)], vec3<bool>(false, true, true))), !all(vec4<bool>(true, true, true, true))), select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, true, true), true)), vec4<bool>(all(vec2<bool>(true, false)), true, true, min(4294967295u, u_input.a.x) >= ~global3[_wgslsmith_index_u32(4294967295u, 26u)]), !(func_1(global0[_wgslsmith_index_u32(1u, 32u)], vec3<bool>(false, true, true)) & any(vec2<bool>(true, false)))), select(2147483647i > u_input.b, true, true));
    let var_3 = -106f;
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~u_input.a), ~u_input.a & ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 26u)], 1u)) << ((min(select(u_input.a, vec2<u32>(1u, u_input.a.x), false), u_input.a) & u_input.a) % vec2<u32>(32u)), vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18120u, 43800u), u_input.a), 26u)], u_input.a.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(738f, var_3, var_3))) * vec3<f32>(var_3, var_3, var_3)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3, var_3, var_3)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 1000f, 508f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1307f, var_3, var_3), vec3<f32>(-1046f, var_3, var_3))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1211f, -2060f, var_3) + vec3<f32>(var_3, var_3, 680f))), !select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, false), var_2.zxx)))), abs(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-21056i, 18457i, 0i, 2147483647i), vec4<i32>(u_input.b, var_0.x, 2147483647i, 1i)) ^ ~vec4<i32>(var_0.x, 28806i, 2147483647i, u_input.b), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(24382i, var_0.x, 2147483647i, -2147483647i), vec4<i32>(u_input.b, u_input.b, var_0.x, 10668i)), vec4<i32>(u_input.b, var_0.x, 2147483647i, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -641f), -455f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3)) * var_3)), select(var_2.yyx, select(select(var_2.wxw, var_2.xxx, var_2.zzw), select(var_2.yxz, !vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x)), var_2.zxw), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, var_4.b, 3572i), ~vec4<i32>(-7135i, -2147483647i, -7881i, var_4.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1245f, -845f, 911f, var_4.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, 827f, var_3, 1555f), vec4<f32>(530f, -1996f, 1311f, 1426f))), u_input.a.x <= global3[_wgslsmith_index_u32(4294967295u, 26u)])))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_4.a.x, -147f, var_4.c))))), vec4<f32>(_wgslsmith_f_op_f32(-var_3), 931f, var_3, -440f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(-30546i, 1596i, -9012i), vec3<i32>(2147483647i, -1i, 32507i)), select(var_2.yxy, select(var_2.wyw, vec3<bool>(var_2.x, false, false), var_4.d.x), vec3<bool>(var_4.d.x, var_4.d.x, var_4.d.x))))));
}

