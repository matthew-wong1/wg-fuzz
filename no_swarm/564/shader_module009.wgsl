struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(32765u, vec4<f32>(-1024f, -1643f, -1861f, -322f), vec3<u32>(16093u, 51742u, 1u), Struct_1(vec3<f32>(-1546f, 1284f, -2098f), vec4<bool>(true, true, true, false), -1023f), false), 47521u, Struct_1(vec3<f32>(-383f, -691f, -1198f), vec4<bool>(true, true, true, true), -1320f), false, Struct_2(0u, vec4<f32>(-1014f, -911f, 1419f, 382f), vec3<u32>(0u, 82027u, 0u), Struct_1(vec3<f32>(-606f, 182f, -604f), vec4<bool>(true, true, false, true), -226f), true)), Struct_3(Struct_2(17166u, vec4<f32>(681f, -1309f, -741f, -1570f), vec3<u32>(71909u, 0u, 1u), Struct_1(vec3<f32>(-1218f, -1579f, -1817f), vec4<bool>(true, true, true, true), 1438f), false), 10254u, Struct_1(vec3<f32>(-841f, -842f, 1212f), vec4<bool>(true, true, false, true), -1301f), true, Struct_2(1u, vec4<f32>(-705f, 1000f, -168f, -396f), vec3<u32>(40412u, 27907u, 68750u), Struct_1(vec3<f32>(706f, 751f, -1429f), vec4<bool>(false, false, false, false), 611f), false)), Struct_3(Struct_2(26346u, vec4<f32>(-467f, -1086f, -1226f, -444f), vec3<u32>(0u, 38538u, 7185u), Struct_1(vec3<f32>(468f, -466f, -136f), vec4<bool>(false, true, false, false), 1044f), false), 1u, Struct_1(vec3<f32>(1153f, -654f, -680f), vec4<bool>(false, false, false, true), -747f), false, Struct_2(7701u, vec4<f32>(175f, 430f, -331f, -1397f), vec3<u32>(4294967295u, 54624u, 5010u), Struct_1(vec3<f32>(914f, -1000f, 121f), vec4<bool>(true, true, false, true), 956f), true)), Struct_3(Struct_2(50330u, vec4<f32>(2101f, 1684f, -310f, 2040f), vec3<u32>(1u, 0u, 1u), Struct_1(vec3<f32>(-1048f, 315f, -566f), vec4<bool>(false, false, true, false), 467f), false), 3578u, Struct_1(vec3<f32>(441f, 1503f, 1137f), vec4<bool>(true, true, false, false), 976f), true, Struct_2(77141u, vec4<f32>(-504f, -618f, -157f, 161f), vec3<u32>(1u, 1360u, 31258u), Struct_1(vec3<f32>(1695f, -101f, -1000f), vec4<bool>(false, false, true, false), -1702f), false)), Struct_3(Struct_2(4294967295u, vec4<f32>(941f, 1349f, -1860f, -1073f), vec3<u32>(0u, 37262u, 1u), Struct_1(vec3<f32>(299f, 683f, -1355f), vec4<bool>(false, false, false, false), -1000f), false), 48836u, Struct_1(vec3<f32>(292f, -492f, 2178f), vec4<bool>(false, false, true, true), -715f), false, Struct_2(4294967295u, vec4<f32>(278f, 319f, 1000f, 1255f), vec3<u32>(0u, 1u, 4294967295u), Struct_1(vec3<f32>(-1188f, 845f, 1095f), vec4<bool>(false, true, true, true), -1225f), true)), Struct_3(Struct_2(67254u, vec4<f32>(-1209f, -1000f, -1218f, 1303f), vec3<u32>(1u, 44626u, 6924u), Struct_1(vec3<f32>(-1000f, -2892f, -1792f), vec4<bool>(false, true, true, false), 1525f), false), 0u, Struct_1(vec3<f32>(-751f, 680f, -439f), vec4<bool>(true, true, false, false), 986f), true, Struct_2(0u, vec4<f32>(1939f, 148f, 718f, 613f), vec3<u32>(1u, 77891u, 13870u), Struct_1(vec3<f32>(-2072f, -1104f, -1000f), vec4<bool>(true, true, true, true), 1000f), false)), Struct_3(Struct_2(72886u, vec4<f32>(-1000f, -593f, 792f, 633f), vec3<u32>(30905u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(-1553f, -385f, -1098f), vec4<bool>(true, true, false, false), -101f), true), 1u, Struct_1(vec3<f32>(215f, -240f, 1051f), vec4<bool>(false, false, false, true), -604f), false, Struct_2(55358u, vec4<f32>(714f, -2286f, 597f, 461f), vec3<u32>(46126u, 12138u, 6128u), Struct_1(vec3<f32>(-1019f, -574f, 494f), vec4<bool>(false, true, true, false), 1684f), false)), Struct_3(Struct_2(7100u, vec4<f32>(-1227f, -108f, 860f, -119f), vec3<u32>(19297u, 12552u, 4294967295u), Struct_1(vec3<f32>(-353f, -165f, -643f), vec4<bool>(true, false, false, false), 1627f), true), 49826u, Struct_1(vec3<f32>(459f, -221f, 519f), vec4<bool>(true, false, true, true), -349f), false, Struct_2(106902u, vec4<f32>(-1294f, 817f, -2010f, -366f), vec3<u32>(4294967295u, 45598u, 0u), Struct_1(vec3<f32>(-1553f, 1566f, 1432f), vec4<bool>(false, true, true, false), -299f), false)), Struct_3(Struct_2(30985u, vec4<f32>(1000f, 347f, 1421f, -703f), vec3<u32>(16294u, 0u, 4294967295u), Struct_1(vec3<f32>(-1449f, 1506f, -1000f), vec4<bool>(true, false, false, true), -338f), true), 18443u, Struct_1(vec3<f32>(-833f, -364f, 383f), vec4<bool>(true, false, false, false), -558f), true, Struct_2(17088u, vec4<f32>(-1572f, 156f, -524f, -508f), vec3<u32>(6949u, 0u, 21247u), Struct_1(vec3<f32>(1564f, -172f, 1824f), vec4<bool>(true, false, true, true), -2072f), true)), Struct_3(Struct_2(40186u, vec4<f32>(-762f, 1026f, 852f, -120f), vec3<u32>(66219u, 1u, 12035u), Struct_1(vec3<f32>(-1228f, -253f, 1362f), vec4<bool>(false, true, true, true), -486f), true), 54033u, Struct_1(vec3<f32>(-888f, -550f, -1301f), vec4<bool>(true, false, false, true), 1321f), true, Struct_2(106624u, vec4<f32>(-1000f, 781f, -483f, 1162f), vec3<u32>(4294967295u, 85161u, 13319u), Struct_1(vec3<f32>(-264f, -208f, 799f), vec4<bool>(false, true, true, false), 901f), true)), Struct_3(Struct_2(1u, vec4<f32>(765f, 1843f, -1000f, 679f), vec3<u32>(1u, 58483u, 36549u), Struct_1(vec3<f32>(-1292f, -1219f, 221f), vec4<bool>(true, false, false, true), -471f), true), 4294967295u, Struct_1(vec3<f32>(131f, 1778f, -875f), vec4<bool>(false, true, false, true), -101f), true, Struct_2(65289u, vec4<f32>(515f, 252f, 634f, 114f), vec3<u32>(0u, 0u, 154264u), Struct_1(vec3<f32>(-1111f, -787f, -709f), vec4<bool>(false, false, true, true), -760f), true)), Struct_3(Struct_2(14214u, vec4<f32>(-608f, 650f, -1326f, 333f), vec3<u32>(27895u, 28012u, 0u), Struct_1(vec3<f32>(-658f, -2265f, -1959f), vec4<bool>(false, false, true, true), 1918f), true), 1u, Struct_1(vec3<f32>(965f, -689f, -264f), vec4<bool>(false, true, false, true), 245f), false, Struct_2(4294967295u, vec4<f32>(-383f, 639f, -591f, -1028f), vec3<u32>(22914u, 13116u, 34936u), Struct_1(vec3<f32>(850f, 1066f, -1014f), vec4<bool>(false, false, false, true), 395f), false)), Struct_3(Struct_2(1u, vec4<f32>(781f, -1000f, -1000f, 1106f), vec3<u32>(4294967295u, 44219u, 1u), Struct_1(vec3<f32>(988f, 1308f, -2400f), vec4<bool>(false, true, false, false), -509f), false), 4294967295u, Struct_1(vec3<f32>(481f, 435f, -742f), vec4<bool>(false, true, false, false), -733f), false, Struct_2(33788u, vec4<f32>(457f, -1153f, 312f, -561f), vec3<u32>(1u, 1u, 10952u), Struct_1(vec3<f32>(1113f, -252f, 502f), vec4<bool>(false, false, true, false), -300f), false)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-2147483647i), 64467u);
}

