struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(43370u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(21413u, 44265u), vec2<u32>(4294967295u, 1u), vec2<u32>(11458u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 63001u), vec2<u32>(48422u, 59214u), vec2<u32>(84579u, 1u), vec2<u32>(4294967295u, 1505u), vec2<u32>(33642u, 40008u), vec2<u32>(31532u, 4294967295u), vec2<u32>(1u, 13113u), vec2<u32>(1u, 0u), vec2<u32>(17382u, 32461u), vec2<u32>(61369u, 948u), vec2<u32>(4294967295u, 24227u));

var<private> global1: array<vec2<f32>, 16>;

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_1(-518f, vec2<bool>(false, true), vec4<f32>(-1492f, -1407f, -524f, -1000f), 33230u), vec4<u32>(26424u, 1u, 27676u, 22483u), Struct_3(Struct_2(Struct_1(1577f, vec2<bool>(true, false), vec4<f32>(-1059f, -236f, -1000f, -101f), 7163u), true, -1000f), vec4<u32>(40390u, 4294967295u, 70668u, 1u), vec3<bool>(false, true, false)), Struct_1(1246f, vec2<bool>(true, false), vec4<f32>(516f, -613f, -2549f, -1795f), 28102u)), Struct_4(Struct_1(1935f, vec2<bool>(false, true), vec4<f32>(-499f, 158f, -1236f, 1108f), 35648u), vec4<u32>(4761u, 55554u, 101481u, 0u), Struct_3(Struct_2(Struct_1(850f, vec2<bool>(false, false), vec4<f32>(165f, 1279f, 723f, 1000f), 0u), false, -1000f), vec4<u32>(54465u, 1u, 36175u, 6566u), vec3<bool>(false, true, false)), Struct_1(232f, vec2<bool>(false, true), vec4<f32>(132f, 336f, -275f, -141f), 19039u)), Struct_4(Struct_1(-2399f, vec2<bool>(false, true), vec4<f32>(370f, -1499f, 261f, -1000f), 29172u), vec4<u32>(782u, 7702u, 0u, 13521u), Struct_3(Struct_2(Struct_1(-298f, vec2<bool>(false, false), vec4<f32>(822f, -2015f, 207f, -834f), 0u), true, -901f), vec4<u32>(0u, 33938u, 62924u, 0u), vec3<bool>(false, false, false)), Struct_1(-1136f, vec2<bool>(true, true), vec4<f32>(-1963f, -757f, 629f, 1015f), 0u)), Struct_4(Struct_1(-1547f, vec2<bool>(false, true), vec4<f32>(1000f, 361f, -673f, -1000f), 0u), vec4<u32>(0u, 9586u, 4294967295u, 4294967295u), Struct_3(Struct_2(Struct_1(-2159f, vec2<bool>(false, false), vec4<f32>(495f, 120f, -641f, 231f), 16498u), true, 1100f), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec3<bool>(true, true, false)), Struct_1(503f, vec2<bool>(false, false), vec4<f32>(983f, 1000f, 834f, 1754f), 46572u)), Struct_4(Struct_1(1000f, vec2<bool>(true, true), vec4<f32>(-1195f, -181f, -933f, 883f), 44413u), vec4<u32>(25831u, 15842u, 1u, 0u), Struct_3(Struct_2(Struct_1(567f, vec2<bool>(true, true), vec4<f32>(488f, 1000f, -1000f, 2299f), 17009u), false, -1241f), vec4<u32>(10032u, 1u, 23870u, 26201u), vec3<bool>(false, false, false)), Struct_1(-509f, vec2<bool>(false, true), vec4<f32>(703f, 771f, 1306f, 306f), 1u)), Struct_4(Struct_1(-1000f, vec2<bool>(true, true), vec4<f32>(1537f, 447f, -1278f, -114f), 819u), vec4<u32>(0u, 42907u, 4294967295u, 37400u), Struct_3(Struct_2(Struct_1(707f, vec2<bool>(false, false), vec4<f32>(469f, -1150f, 1031f, 803f), 0u), false, -671f), vec4<u32>(9262u, 18241u, 14512u, 37141u), vec3<bool>(false, true, true)), Struct_1(-1602f, vec2<bool>(true, false), vec4<f32>(-558f, -2152f, 843f, -1000f), 1u)), Struct_4(Struct_1(381f, vec2<bool>(true, false), vec4<f32>(1907f, 1142f, 1000f, 1339f), 27350u), vec4<u32>(4294967295u, 0u, 8130u, 2004u), Struct_3(Struct_2(Struct_1(-144f, vec2<bool>(false, false), vec4<f32>(-1075f, -327f, 1039f, -1864f), 35520u), false, -1031f), vec4<u32>(4609u, 62629u, 1u, 39982u), vec3<bool>(true, false, true)), Struct_1(-1842f, vec2<bool>(true, true), vec4<f32>(-350f, -618f, -2092f, 516f), 0u)), Struct_4(Struct_1(-2018f, vec2<bool>(true, true), vec4<f32>(-211f, -415f, 1618f, -1000f), 0u), vec4<u32>(1u, 4294967295u, 23267u, 22942u), Struct_3(Struct_2(Struct_1(1124f, vec2<bool>(false, false), vec4<f32>(1000f, -626f, 780f, 546f), 4294967295u), false, 568f), vec4<u32>(26680u, 44950u, 4294967295u, 3728u), vec3<bool>(false, false, true)), Struct_1(-345f, vec2<bool>(false, true), vec4<f32>(-977f, 1715f, 870f, -896f), 19128u)), Struct_4(Struct_1(690f, vec2<bool>(true, false), vec4<f32>(510f, 414f, 1878f, 191f), 4294967295u), vec4<u32>(13473u, 4294967295u, 1u, 35228u), Struct_3(Struct_2(Struct_1(1050f, vec2<bool>(true, true), vec4<f32>(395f, 1000f, -208f, -1172f), 1u), true, 577f), vec4<u32>(20310u, 57080u, 0u, 1u), vec3<bool>(true, true, false)), Struct_1(-1604f, vec2<bool>(true, false), vec4<f32>(-343f, -1454f, 879f, -703f), 17794u)), Struct_4(Struct_1(252f, vec2<bool>(false, true), vec4<f32>(-391f, 815f, -1034f, -853f), 26300u), vec4<u32>(1u, 4294967295u, 0u, 2417u), Struct_3(Struct_2(Struct_1(-670f, vec2<bool>(true, false), vec4<f32>(1947f, -1882f, 631f, -1706f), 686u), true, -1101f), vec4<u32>(0u, 10583u, 1u, 0u), vec3<bool>(false, true, false)), Struct_1(638f, vec2<bool>(false, false), vec4<f32>(1336f, -727f, 896f, -635f), 19619u)), Struct_4(Struct_1(-2249f, vec2<bool>(true, true), vec4<f32>(-396f, -359f, 1094f, -436f), 17383u), vec4<u32>(26483u, 12036u, 4294967295u, 4294967295u), Struct_3(Struct_2(Struct_1(476f, vec2<bool>(true, false), vec4<f32>(-1178f, 278f, 1703f, 1027f), 4294967295u), false, -763f), vec4<u32>(1u, 0u, 15883u, 30666u), vec3<bool>(true, true, true)), Struct_1(-1372f, vec2<bool>(false, false), vec4<f32>(-289f, -1125f, 177f, 963f), 1u)), Struct_4(Struct_1(964f, vec2<bool>(false, true), vec4<f32>(-285f, 725f, 839f, 989f), 28009u), vec4<u32>(2682u, 4294967295u, 0u, 1u), Struct_3(Struct_2(Struct_1(-1000f, vec2<bool>(true, true), vec4<f32>(-2673f, 1878f, 662f, 1452f), 4294967295u), true, 2052f), vec4<u32>(49853u, 0u, 98002u, 1u), vec3<bool>(true, true, false)), Struct_1(-442f, vec2<bool>(false, true), vec4<f32>(-1133f, 399f, -481f, 103f), 1u)), Struct_4(Struct_1(-174f, vec2<bool>(false, false), vec4<f32>(-2092f, 389f, -2806f, -1879f), 1u), vec4<u32>(81111u, 30586u, 10636u, 74747u), Struct_3(Struct_2(Struct_1(-617f, vec2<bool>(true, false), vec4<f32>(-804f, 1000f, -175f, 100f), 39044u), false, 1332f), vec4<u32>(1u, 66849u, 1u, 4294967295u), vec3<bool>(true, true, true)), Struct_1(1524f, vec2<bool>(false, true), vec4<f32>(757f, -2169f, 211f, -490f), 1u)), Struct_4(Struct_1(-1514f, vec2<bool>(false, false), vec4<f32>(260f, -1783f, -405f, 351f), 28645u), vec4<u32>(0u, 22758u, 0u, 41218u), Struct_3(Struct_2(Struct_1(1731f, vec2<bool>(true, true), vec4<f32>(1657f, -1625f, 763f, 1143f), 4568u), true, 556f), vec4<u32>(1u, 0u, 5554u, 0u), vec3<bool>(false, true, false)), Struct_1(566f, vec2<bool>(true, false), vec4<f32>(-1000f, -2112f, -1000f, -664f), 98909u)), Struct_4(Struct_1(-1176f, vec2<bool>(true, false), vec4<f32>(1269f, 1110f, 427f, -2655f), 1u), vec4<u32>(41326u, 1u, 4294967295u, 7601u), Struct_3(Struct_2(Struct_1(-1239f, vec2<bool>(false, true), vec4<f32>(-969f, -1041f, -167f, 216f), 0u), false, -366f), vec4<u32>(19135u, 1u, 37239u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(-420f, vec2<bool>(true, true), vec4<f32>(-938f, -1038f, 676f, 1000f), 57980u)), Struct_4(Struct_1(289f, vec2<bool>(true, true), vec4<f32>(536f, 499f, 2205f, -160f), 0u), vec4<u32>(18001u, 27384u, 54958u, 1u), Struct_3(Struct_2(Struct_1(-952f, vec2<bool>(false, true), vec4<f32>(692f, 1323f, -412f, 161f), 0u), false, -211f), vec4<u32>(28563u, 4294967295u, 1u, 1u), vec3<bool>(false, true, true)), Struct_1(-364f, vec2<bool>(true, true), vec4<f32>(-1512f, -1712f, -353f, -125f), 1u)), Struct_4(Struct_1(-1883f, vec2<bool>(false, false), vec4<f32>(320f, -1585f, -236f, -2250f), 4294967295u), vec4<u32>(4294967295u, 15283u, 51762u, 4294967295u), Struct_3(Struct_2(Struct_1(-729f, vec2<bool>(true, true), vec4<f32>(1983f, 146f, -782f, -1610f), 4294967295u), false, 643f), vec4<u32>(2389u, 10417u, 16061u, 0u), vec3<bool>(true, false, true)), Struct_1(685f, vec2<bool>(false, false), vec4<f32>(235f, 244f, -1256f, -185f), 1u)), Struct_4(Struct_1(298f, vec2<bool>(false, true), vec4<f32>(-329f, -2136f, 1000f, 293f), 4294967295u), vec4<u32>(51060u, 4294967295u, 17971u, 76038u), Struct_3(Struct_2(Struct_1(-375f, vec2<bool>(false, false), vec4<f32>(-476f, -291f, -1279f, 719f), 81206u), false, -910f), vec4<u32>(0u, 20411u, 1u, 51086u), vec3<bool>(true, false, true)), Struct_1(242f, vec2<bool>(false, false), vec4<f32>(710f, -304f, 1108f, -1312f), 0u)), Struct_4(Struct_1(730f, vec2<bool>(true, false), vec4<f32>(-760f, 2409f, -2469f, 577f), 73220u), vec4<u32>(1u, 0u, 4294967295u, 43677u), Struct_3(Struct_2(Struct_1(-1673f, vec2<bool>(true, false), vec4<f32>(-686f, 404f, 972f, -507f), 31593u), false, 1211f), vec4<u32>(9801u, 21114u, 4604u, 56695u), vec3<bool>(false, true, true)), Struct_1(-378f, vec2<bool>(false, true), vec4<f32>(-734f, 857f, 749f, 348f), 1u)), Struct_4(Struct_1(-1379f, vec2<bool>(true, false), vec4<f32>(872f, 176f, 1094f, -1230f), 1u), vec4<u32>(28678u, 4294967295u, 27202u, 0u), Struct_3(Struct_2(Struct_1(128f, vec2<bool>(true, true), vec4<f32>(1000f, -519f, 150f, -1372f), 1u), false, 500f), vec4<u32>(4294967295u, 1u, 0u, 75662u), vec3<bool>(false, true, false)), Struct_1(-2416f, vec2<bool>(true, false), vec4<f32>(-203f, 713f, -279f, 1000f), 22978u)), Struct_4(Struct_1(-402f, vec2<bool>(false, true), vec4<f32>(-402f, 550f, -155f, -727f), 1u), vec4<u32>(58468u, 47325u, 1u, 11851u), Struct_3(Struct_2(Struct_1(306f, vec2<bool>(false, false), vec4<f32>(-1062f, -344f, 196f, 1356f), 1u), true, -1347f), vec4<u32>(13732u, 1u, 40062u, 1u), vec3<bool>(true, true, true)), Struct_1(-1387f, vec2<bool>(true, true), vec4<f32>(-127f, 168f, -601f, -133f), 0u)), Struct_4(Struct_1(-311f, vec2<bool>(true, true), vec4<f32>(908f, -231f, 287f, 1278f), 4294967295u), vec4<u32>(0u, 38316u, 53295u, 4294967295u), Struct_3(Struct_2(Struct_1(911f, vec2<bool>(false, true), vec4<f32>(-397f, 134f, -498f, -245f), 53597u), false, -421f), vec4<u32>(35583u, 1u, 4294967295u, 33355u), vec3<bool>(true, false, true)), Struct_1(-1230f, vec2<bool>(false, false), vec4<f32>(-876f, 1228f, 623f, -1000f), 31467u)), Struct_4(Struct_1(-1343f, vec2<bool>(false, false), vec4<f32>(324f, -959f, -574f, 450f), 0u), vec4<u32>(23457u, 47237u, 0u, 4294967295u), Struct_3(Struct_2(Struct_1(-339f, vec2<bool>(true, true), vec4<f32>(-1004f, -1000f, -2051f, -637f), 36005u), true, 244f), vec4<u32>(123084u, 1u, 16899u, 786u), vec3<bool>(false, false, false)), Struct_1(-831f, vec2<bool>(false, true), vec4<f32>(1000f, 135f, 2120f, -524f), 0u)), Struct_4(Struct_1(-645f, vec2<bool>(true, true), vec4<f32>(726f, -1000f, 1037f, -1665f), 113015u), vec4<u32>(12670u, 4294967295u, 0u, 16562u), Struct_3(Struct_2(Struct_1(1269f, vec2<bool>(false, true), vec4<f32>(954f, 326f, -534f, 361f), 67300u), true, -513f), vec4<u32>(1u, 21746u, 0u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(845f, vec2<bool>(false, true), vec4<f32>(1377f, -1342f, -248f, -502f), 0u)), Struct_4(Struct_1(122f, vec2<bool>(true, false), vec4<f32>(476f, 2533f, 1075f, 1826f), 46052u), vec4<u32>(35321u, 105589u, 59746u, 0u), Struct_3(Struct_2(Struct_1(713f, vec2<bool>(false, false), vec4<f32>(-1000f, 1000f, 1374f, -174f), 37994u), false, 546f), vec4<u32>(0u, 1u, 4294967295u, 27037u), vec3<bool>(true, false, false)), Struct_1(-856f, vec2<bool>(false, false), vec4<f32>(121f, 196f, 250f, -625f), 4294967295u)), Struct_4(Struct_1(-1812f, vec2<bool>(true, true), vec4<f32>(-174f, 1190f, -731f, 1896f), 0u), vec4<u32>(5137u, 0u, 1u, 40050u), Struct_3(Struct_2(Struct_1(-301f, vec2<bool>(true, false), vec4<f32>(1000f, -1506f, 1527f, -499f), 0u), false, -627f), vec4<u32>(43776u, 30696u, 11908u, 31446u), vec3<bool>(false, true, true)), Struct_1(-1000f, vec2<bool>(true, true), vec4<f32>(790f, 1151f, 1044f, -616f), 28720u)), Struct_4(Struct_1(-135f, vec2<bool>(true, false), vec4<f32>(-1189f, 686f, 258f, 2264f), 8620u), vec4<u32>(7226u, 2283u, 1u, 14377u), Struct_3(Struct_2(Struct_1(760f, vec2<bool>(true, true), vec4<f32>(-1350f, -856f, -860f, 651f), 0u), true, 968f), vec4<u32>(1u, 0u, 0u, 3039u), vec3<bool>(false, false, false)), Struct_1(762f, vec2<bool>(false, false), vec4<f32>(157f, 631f, -1633f, 1000f), 33464u)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global1 = array<vec2<f32>, 16>();
    var var_0 = !(!select(arg_0.a.b.x || !arg_0.b, !any(arg_0.a.b), !(!arg_0.a.b.x)));
    let var_1 = vec3<u32>(reverseBits(u_input.d), u_input.d, ~(~arg_0.a.d | arg_0.a.d));
    let var_2 = Struct_4(arg_0.a, firstLeadingBit(vec4<u32>(~_wgslsmith_mod_u32(arg_0.a.d, 39545u), _wgslsmith_mult_u32(1u, ~5486u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, var_1.x, 0u), var_1), max(1u, var_1.x ^ 1u))), Struct_3(arg_0, ~reverseBits(select(vec4<u32>(u_input.d, u_input.d, var_1.x, u_input.d), vec4<u32>(0u, 147369u, u_input.d, u_input.d), true)), !select(!vec3<bool>(arg_0.b, false, arg_0.a.b.x), !vec3<bool>(true, arg_0.a.b.x, arg_0.b), !vec3<bool>(true, false, arg_0.b))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.x + 319f))), !(!vec2<bool>(arg_0.b, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(658f - arg_0.a.a), _wgslsmith_f_op_f32(ceil(-1030f)), -189f, 1452f) * arg_0.a.c), reverseBits(abs(1u)) & ~firstTrailingBit(36824u)));
    var_0 = all(!(!select(vec4<bool>(true, true, var_2.a.b.x, var_2.d.b.x), vec4<bool>(true, false, true, var_2.c.c.x), !var_2.c.c.x)));
    return vec2<bool>(all(vec4<bool>(arg_0.b, select(var_2.a.b.x & var_2.c.a.b, var_2.d.b.x, var_2.c.c.x), all(!var_2.c.c), !(var_2.c.a.b & arg_0.a.b.x))), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = vec4<i32>(u_input.c.x, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-21853i, 40537i) << (vec2<u32>(arg_0.d, 1u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.c.yx, u_input.c.zx)), countOneBits(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, u_input.a.x))), u_input.b.x, -1i);
    var var_1 = 681f;
    global2 = array<Struct_4, 27>();
    global0 = array<vec2<u32>, 17>();
    var_1 = 1887f;
    return arg_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec2<bool> {
    global0 = array<vec2<u32>, 17>();
    var var_0 = u_input.d;
    global1 = array<vec2<f32>, 16>();
    var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(2066f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-171f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-471f, -493f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, -374f) + vec2<f32>(-1000f, -1479f)))))));
    return !func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -698f), func_3(Struct_2(Struct_1(-351f, vec2<bool>(true, false), vec4<f32>(var_1.x, -1078f, var_1.x, -823f), u_input.d), true, -750f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(377f, var_1.x, -455f, 211f)))), arg_0.x), !vec2<bool>(true, var_1.x == -1546f), vec4<bool>(true, !all(vec2<bool>(true, true)), func_3(Struct_2(Struct_1(var_1.x, vec2<bool>(false, true), vec4<f32>(var_1.x, 1643f, 359f, -1000f), 0u), true, -689f)).x, !(651f == var_1.x)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a.a.a, !select(select(func_2(vec2<u32>(26312u, arg_0.b.x), -11761i), vec2<bool>(arg_0.c.x, true), select(arg_0.c.x, false, true)), !arg_0.c.yx, arg_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.c.x, arg_0.a.c, _wgslsmith_div_f32(135f, arg_0.a.c), _wgslsmith_f_op_f32(arg_0.a.a.a * 916f)))), _wgslsmith_mult_u32(~(4294967295u ^ u_input.d), arg_0.a.a.d));
    return arg_0.a.a;
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    return -1411f;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.c.x), vec2<i32>(~(-11479i), -1i));
    let var_1 = arg_0.c;
    let var_2 = Struct_3(arg_0.c.a, min(abs(~(~vec4<u32>(105718u, 63855u, 89995u, 78766u))), vec4<u32>(_wgslsmith_sub_u32(0u & arg_2.a.d, _wgslsmith_mult_u32(arg_2.a.d, 0u)), ~var_1.a.a.d, func_1(var_1, firstTrailingBit(0u)).d, arg_2.d.d)), arg_2.c.c);
    global2 = array<Struct_4, 27>();
    let var_3 = _wgslsmith_add_vec2_i32(u_input.c.xx, vec2<i32>(countOneBits(var_0.x), abs(2147483647i ^ u_input.a.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -523f), -2248f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_6(Struct_4(Struct_1(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_f32(-684f, 1245f), Struct_5(vec3<i32>(36545i, u_input.b.x, 8910i)), func_1(Struct_3(Struct_2(Struct_1(155f, vec2<bool>(false, true), vec4<f32>(112f, 1065f, -564f, -654f), 0u), false, 980f), vec4<u32>(0u, 1u, 173328u, 1u), vec3<bool>(false, true, false)), 56078u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, 279f, 427f, -1267f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x > u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1876f, -466f, -1206f, 1078f))), ~countOneBits(4294967295u)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.d, 38492u, u_input.d, 0u)), ~(vec4<u32>(18802u, u_input.d, 1u, u_input.d) << (vec4<u32>(u_input.d, u_input.d, 11965u, 67046u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.d, 40266u, u_input.d, 0u))), Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(-488f, vec2<bool>(true, false), vec4<f32>(1000f, 1000f, -777f, -1717f), u_input.d), false, 378f), vec4<u32>(u_input.d, 0u, 1u, 77590u), vec3<bool>(true, false, true)), u_input.d), all(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -966f)), ~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), func_1(Struct_3(Struct_2(Struct_1(2133f, vec2<bool>(true, false), vec4<f32>(-1884f, 1147f, -826f, -992f), 4294967295u), true, 303f), vec4<u32>(0u, 4294967295u, u_input.d, 12162u), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), u_input.d)), Struct_2(func_1(Struct_3(Struct_2(Struct_1(-415f, vec2<bool>(false, true), vec4<f32>(-1357f, -1512f, 512f, 1131f), u_input.d), false, -1535f), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) & vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), countOneBits(u_input.d)), !any(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(212f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1342f, -1149f)))))), Struct_4(Struct_1(141f, !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec4<f32>(-479f, _wgslsmith_f_op_f32(1000f + 567f), 1000f, _wgslsmith_f_op_f32(round(409f))), u_input.d), min(select(vec4<u32>(1u, 57320u, 4294967295u, 25000u) << (vec4<u32>(4294967295u, u_input.d, 4916u, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec4<bool>(true, false, false, true)), _wgslsmith_div_vec4_u32(vec4<u32>(67267u, u_input.d, u_input.d, u_input.d), ~vec4<u32>(3262u, 40773u, 4294967295u, u_input.d))), Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(-2396f, vec2<bool>(true, true), vec4<f32>(1243f, 397f, -542f, -806f), u_input.d), true, -318f), vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), vec3<bool>(false, false, false)), u_input.d), true, _wgslsmith_f_op_f32(789f + -1275f)), countOneBits(~vec4<u32>(1u, u_input.d, u_input.d, 12830u)), vec3<bool>(all(vec2<bool>(true, false)), false, all(vec3<bool>(false, false, false)))), func_1(Struct_3(Struct_2(Struct_1(-2188f, vec2<bool>(true, true), vec4<f32>(-344f, 1027f, 2443f, 1182f), u_input.d), true, -318f), reverseBits(vec4<u32>(0u, 2897u, u_input.d, u_input.d)), vec3<bool>(true, false, true)), 0u))));
    let var_1 = select(vec2<u32>(4294967295u, abs(u_input.d)), global0[_wgslsmith_index_u32(countOneBits(u_input.d), 17u)], !(!select(func_2(vec2<u32>(51036u, u_input.d), 6557i), func_3(Struct_2(Struct_1(var_0.x, vec2<bool>(false, true), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), 4294967295u), false, var_0.x)), true)));
    let var_2 = true;
    let var_3 = 1537f;
    let var_4 = !(!select(!(!vec4<bool>(var_2, true, true, false)), select(vec4<bool>(true, var_2, true, false), select(vec4<bool>(false, true, true, var_2), vec4<bool>(var_2, true, var_2, true), vec4<bool>(false, var_2, true, var_2)), select(vec4<bool>(false, true, var_2, var_2), vec4<bool>(false, true, true, true), true)), !select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

