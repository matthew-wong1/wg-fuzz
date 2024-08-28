// {"0:0":[85,97,41,222,127,71,25,242,42,228,75,158,207,218,14,145,94,199,181,160,179,135,161,90,134,154,29,10,85,36,147,35,206,128,173,105,249,216,75,39,38,156,102,106,152,127,149,30]}
// Seed: 9430142206089134559

struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(4294967295u, reverseBits(u_input.a ^ u_input.c), -vec3<f32>(-select(798f, 633f, false), 1099f / (-222f * 1058f), -434f), ~4294967295u + ((36074u | dot(vec4<u32>(0u, 8143u, u_input.c, 30792u), vec4<u32>(1699u, u_input.a, 1u, u_input.c))) + u_input.d), (-select(u_input.b.zwy, vec3<i32>(i32(-2147483648), arg_0, 0i), false) - vec3<i32>(0i, min(26189i, arg_0), 18071i)) & clamp(vec3<i32>(8096i, dot(u_input.b.yyy, u_input.b.yzw), 0i), ~(-u_input.b.xyx), ~u_input.b.wyw));
    var var_1 = max(countOneBits(dot(~(~vec4<u32>(119124u, u_input.c, var_0.b, u_input.c)), vec4<u32>(var_0.d, 4294967295u, u_input.a, var_0.b) & abs(vec4<u32>(u_input.c, 44803u, 72207u, u_input.a)))), ~(~44263u));
    var_0 = Struct_1(u_input.a, var_0.d, -vec3<f32>(-var_0.c.x, floor(var_0.c.x), -1134f) * ((select(var_0.c, var_0.c, true) + (vec3<f32>(1354f, 679f, var_0.c.x) / var_0.c)) / (var_0.c - vec3<f32>(var_0.c.x, 1304f, var_0.c.x))), (26796u + 0u) * u_input.a, vec3<i32>(u_input.b.x / (var_0.e.x % 1i), abs(~u_input.b.x), ~(~u_input.b.x)) + (select(vec3<i32>(u_input.b.x, -1i, var_0.e.x), -var_0.e, !false) * reverseBits(vec3<i32>(var_0.e.x, u_input.b.x, u_input.b.x) ^ var_0.e)));
    let var_2 = arg_0;
    let var_3 = Struct_3(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true))));
    return 37881u;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(Struct_2(Struct_1(reverseBits(80534u % 91044u), 26045u, vec3<f32>(337f + -1338f, step(829f, 1000f), -247f / -557f), min(52988u, dot(vec2<u32>(u_input.a, u_input.a), vec2<u32>(65869u, u_input.d))), max(u_input.b.zzy, u_input.b.wxw) / (u_input.b.xxw % vec3<i32>(-21879i, u_input.b.x, 47816i))), u_input.b - u_input.b, Struct_1(~0u % dot(vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(u_input.c, 5239u, 1u)), u_input.d, step(vec3<f32>(762f, -128f, 1003f), vec3<f32>(-360f, 1751f, 599f)) + -vec3<f32>(1075f, 520f, 669f), ~61426u, vec3<i32>(-1i, -23919i & u_input.b.x, ~u_input.b.x)), Struct_1(69642u, ~abs(u_input.d), (vec3<f32>(-1636f, 771f, 249f) / vec3<f32>(-343f, -537f, 1000f)) / vec3<f32>(-230f, 228f, 806f), (u_input.c << 4294967295u) % 23439u, u_input.b.wxx & ~vec3<i32>(-14661i, 2147483647i, u_input.b.x)), Struct_1(4294967295u % 78144u, func_3(u_input.b.x / -11967i), -vec3<f32>(1264f, 215f, -2753f), u_input.d, ~u_input.b.xwx)), u_input.c, Struct_1(~u_input.d, countOneBits(firstTrailingBit(u_input.d) & ~u_input.d), -(-vec3<f32>(984f, 2336f, -115f)), min((12228u & 12871u) + (14186u << 1u), 9955u), vec3<i32>((0i - u_input.b.x) << u_input.c, ~(-u_input.b.x), u_input.b.x)), select(vec4<f32>(round(1500f), -(-811f), trunc(-827f), select(-2339f, -101f, true)), (vec4<f32>(3037f, 1427f, 1045f, -500f) + vec4<f32>(-1000f, 983f, 410f, -422f)) / -vec4<f32>(-1096f, -249f, 696f, 160f), vec4<bool>(!false, false, !false, select(true, true, false))) - step(max(vec4<f32>(620f, 860f, -1283f, -1161f), vec4<f32>(433f, 1279f, -802f, 903f)) + (vec4<f32>(479f, 986f, -309f, -340f) * vec4<f32>(1000f, -933f, -1450f, 379f)), step(vec4<f32>(-2786f, 908f, -391f, 1359f), vec4<f32>(-221f, 713f, -191f, 1000f))), 602f + -abs(1012f));
    var var_1 = ~14553i;
    let var_2 = ~dot(select(max(vec2<u32>(0u, 32818u), vec2<u32>(1u, 35548u)), vec2<u32>(var_0.a.d.b, 28727u) + vec2<u32>(var_0.b, 4294967295u), !vec2<bool>(true, true)) * (vec2<u32>(1u, u_input.a) ^ vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(10037u, ~u_input.a));
    let var_3 = select(!vec2<bool>((6541u | var_2) == ~105446u, false), vec2<bool>(!(!true), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), !vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))), !(!(!(!vec2<bool>(false, true)))));
    let var_4 = -vec2<f32>(-var_0.a.c.c.x, round(615f));
    return -1251f;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> i32 {
    let var_0 = min(abs((u_input.b.xwx ^ ~vec3<i32>(-1908i, arg_3.x, arg_0.b.b.x)) | (abs(vec3<i32>(arg_3.x, -1i, -15600i)) % vec3<i32>(-4236i, arg_3.x, u_input.b.x))), arg_3.zwx);
    var var_1 = vec4<f32>(func_2(), -522f, -(-1443f / arg_0.b.c.c.x) - ((226f + arg_0.b.e.c.x) + arg_0.b.a.c.x), arg_0.b.a.c.x);
    var var_2 = Struct_2(arg_0.b.c, vec4<i32>(~(clamp(-32433i, u_input.b.x, -18557i) / var_0.x), reverseBits(u_input.b.x), arg_0.b.c.e.x << (1u ^ arg_1.x), -u_input.b.x), Struct_1(~(arg_1.x % arg_0.c) & countOneBits(~0u), arg_1.x, (vec3<f32>(824f, -344f, var_1.x) + -vec3<f32>(-957f, var_1.x, var_1.x)) * step(vec3<f32>(var_1.x, 645f, 1422f) * arg_0.b.c.c, arg_0.b.c.c - arg_0.b.c.c), ~65943u, arg_0.b.e.e), Struct_1(0u, 69357u | u_input.a, min(vec3<f32>(arg_0.b.a.c.x, -244f, -1603f), vec3<f32>(arg_0.b.d.c.x, -807f, arg_0.b.c.c.x)) / step(-var_1.zxw, vec3<f32>(-1665f, arg_0.b.e.c.x, arg_0.b.c.c.x)), ~(dot(arg_1, vec2<u32>(1u, 1u)) | ~arg_1.x), vec3<i32>(dot(vec2<i32>(22755i, arg_3.x), vec2<i32>(0i, u_input.b.x)), ~u_input.b.x, i32(-2147483648)) * arg_3.wyw), Struct_1(66206u, 21040u, var_1.wwx, ~1u, vec3<i32>(arg_0.b.c.e.x & reverseBits(41219i), ~reverseBits(-48768i), abs(arg_3.x << 67721u))));
    var var_3 = 1u;
    let var_4 = Struct_1(133945u, 1u, exp2(-vec3<f32>(-362f * var_2.a.c.x, arg_0.b.c.c.x * 2177f, -577f + -244f)), ~1u | var_2.e.a, u_input.b.yxw * (var_0 << (vec3<u32>(1u, u_input.d, arg_1.x) / (arg_0.d << arg_0.d))));
    return ((-(1i * 32324i) - 51894i) | -(~(-59499i))) / -firstTrailingBit(u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_3(select(select(vec4<bool>(true, all(vec4<bool>(false, true, false, arg_0)), !true, -1000f < 1836f), vec4<bool>(!arg_2, true, any(vec4<bool>(arg_0, true, arg_2, false)), false), !select(vec4<bool>(arg_0, false, arg_2, true), vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), !vec4<bool>(u_input.d < u_input.a, arg_2, i32(-2147483648) >= arg_1.x, any(vec2<bool>(false, arg_0))), !select(select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_0, arg_2, arg_2, arg_0), vec4<bool>(true, arg_0, arg_0, true)), vec4<bool>(false, false, arg_0, arg_2), false)));
    let var_1 = var_0.a.x;
    let var_2 = var_0;
    var var_3 = firstLeadingBit(0u / abs(func_3(26643i)));
    var_3 = max(u_input.a, abs(~abs(countOneBits(47041u))));
    return Struct_2(Struct_1(7954u, u_input.a, -select(-vec3<f32>(-1193f, 287f, 671f), min(vec3<f32>(1254f, -104f, -323f), vec3<f32>(1085f, 328f, -1408f)), var_2.a.xwx), 1u, ~countOneBits(~vec3<i32>(arg_1.x, arg_1.x, arg_1.x))), -arg_1, Struct_1(firstTrailingBit(firstTrailingBit(u_input.a) - ~1735u), u_input.c, round(select(vec3<f32>(169f, -106f, -463f), vec3<f32>(-231f, -489f, -1276f), var_2.a.wyy) / ceil(vec3<f32>(-269f, -707f, -920f))), countOneBits(~(u_input.a << u_input.a)), vec3<i32>(~select(i32(-2147483648), 2147483647i, var_2.a.x), func_1(Struct_5(u_input.c, Struct_2(Struct_1(u_input.c, 0u, vec3<f32>(-301f, -765f, -435f), 11630u, arg_1.xww), vec4<i32>(u_input.b.x, arg_1.x, 9631i, u_input.b.x), Struct_1(u_input.c, u_input.d, vec3<f32>(-1200f, -1000f, 110f), 0u, arg_1.xyw), Struct_1(38429u, 42388u, vec3<f32>(-375f, -545f, 1000f), u_input.c, vec3<i32>(-14070i, 45816i, arg_1.x)), Struct_1(4294967295u, 8693u, vec3<f32>(-505f, -1175f, -847f), u_input.c, vec3<i32>(u_input.b.x, arg_1.x, arg_1.x))), 35504u, vec3<u32>(13488u, u_input.c, 1u), var_2), ~vec2<u32>(u_input.a, 4294967295u), var_2.a.wx, vec4<i32>(37136i, arg_1.x, arg_1.x, 1i)), -(u_input.b.x % 0i))), Struct_1(~45360u, 86064u, sign(round(step(vec3<f32>(-1823f, 484f, 1359f), vec3<f32>(183f, 1490f, 1634f)))), max(~(u_input.a % 70593u), u_input.d), max(vec3<i32>(-1046i >> 1u, 12141i, countOneBits(u_input.b.x)), -(vec3<i32>(u_input.b.x, 0i, -13190i) / u_input.b.yzz))), Struct_1(min(30150u, u_input.d | 0u) ^ (1u | ~u_input.c), 0u, -ceil(vec3<f32>(673f, -1245f, -909f)) * min(-vec3<f32>(-1000f, -503f, 1000f), sign(vec3<f32>(-734f, 1831f, -600f))), u_input.a - u_input.c, clamp(min(vec3<i32>(arg_1.x, 21396i, 1i), vec3<i32>(0i, u_input.b.x, 30378i) >> vec3<u32>(1u, u_input.a, 4294967295u)), abs(-u_input.b.wyx), vec3<i32>(u_input.b.x, firstLeadingBit(u_input.b.x), arg_1.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_5(arg_0.d.a, arg_1.a, ~arg_0.e.a, ~(clamp(~vec3<u32>(arg_1.c.b, u_input.c, arg_0.c.d), vec3<u32>(46050u, 1u, arg_0.a.a) ^ vec3<u32>(arg_1.a.e.b, 0u, 38297u), vec3<u32>(u_input.c, arg_1.c.a, arg_1.b)) % ~(vec3<u32>(84715u, 18038u, arg_1.a.a.d) * vec3<u32>(1u, u_input.a, 74752u))), Struct_3(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !(arg_0.e.a >= u_input.a))));
    var_0 = Struct_5(clamp(~(~(~16786u)), u_input.a, var_0.b.e.d), Struct_2(arg_0.c, -(arg_0.b >> vec4<u32>(arg_1.c.a, var_0.b.d.a, 4294967295u, var_0.a)) ^ vec4<i32>(i32(-2147483648), u_input.b.x ^ arg_1.c.e.x, 0i % 1i, arg_2.x - arg_1.a.e.e.x), arg_1.a.e, func_4(!(var_0.e.a.x && true), ~firstLeadingBit(vec4<i32>(arg_1.c.e.x, 6133i, arg_1.c.e.x, var_0.b.a.e.x)), var_0.e.a.x).a, Struct_1(0u, ~16480u, arg_0.e.c, ~4294967295u * 1u, -arg_1.c.e)), ((var_0.c + abs(arg_1.b)) & 53540u) & abs(arg_1.b), var_0.d, Struct_3(vec4<bool>(!(!false), true && true, true, select(var_0.e.a.x, !true, var_0.e.a.x | var_0.e.a.x))));
    var var_1 = func_4(var_0.e.a.x, firstTrailingBit(~vec4<i32>(u_input.b.x, 0i, var_0.b.d.e.x, 29789i) & abs(arg_0.b / vec4<i32>(arg_0.c.e.x, 0i, arg_1.a.a.e.x, u_input.b.x))), var_0.e.a.x).c.e.x;
    let var_2 = !(!false);
    var var_3 = -func_4(!false, -(-vec4<i32>(-31785i, arg_0.d.e.x, -1i, var_0.b.d.e.x)), arg_0.d.a > u_input.d).e.c.x;
    return Struct_2(Struct_1(u_input.a, 1u, arg_1.a.c.c, u_input.d, arg_1.a.a.e), firstTrailingBit(-firstTrailingBit(arg_2)), func_4(var_2, -((arg_2 ^ arg_1.a.b) * vec4<i32>(arg_0.c.e.x, arg_1.a.c.e.x, arg_0.e.e.x, 1i)), var_0.e.a.x).a, Struct_1(1u, ~abs(abs(49463u)), vec3<f32>(var_0.b.a.c.x, sign(step(962f, 519f)), var_0.b.c.c.x), countOneBits(var_0.d.x) + reverseBits(u_input.a / var_0.b.c.d), vec3<i32>(~1i, -arg_0.d.e.x, ~arg_2.x) + -(arg_2.zzy / arg_2.zyw)), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(func_4((-1474f - -1679f) <= round(-1176f), vec4<i32>(~2147483647i, func_1(Struct_5(u_input.d, Struct_2(Struct_1(1u, u_input.d, vec3<f32>(1000f, -951f, 278f), u_input.d, u_input.b.xwx), vec4<i32>(u_input.b.x, i32(-2147483648), 39721i, -43321i), Struct_1(22088u, u_input.d, vec3<f32>(107f, -1616f, -859f), 20493u, vec3<i32>(u_input.b.x, 1i, u_input.b.x)), Struct_1(u_input.c, 87788u, vec3<f32>(454f, -1294f, 999f), u_input.d, u_input.b.wxx), Struct_1(4294967295u, 1u, vec3<f32>(408f, 356f, 322f), 4294967295u, u_input.b.zxx)), u_input.c, vec3<u32>(1u, u_input.c, u_input.c), Struct_3(vec4<bool>(true, true, true, false))), vec2<u32>(u_input.d, u_input.d), vec2<bool>(true, false), u_input.b), u_input.b.x, u_input.b.x), all(!vec4<bool>(false, true, true, true))), Struct_4(func_4(select(false, false, false), vec4<i32>(4317i, u_input.b.x, u_input.b.x, u_input.b.x), true), u_input.d, func_4(true, vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), true || false).d, -max(vec4<f32>(305f, -1424f, -518f, -601f), vec4<f32>(140f, 516f, 938f, 1545f)), exp2(-517f)), u_input.b), 1u, func_5(func_5(func_5(Struct_2(Struct_1(u_input.a, 4294967295u, vec3<f32>(2252f, 1316f, 708f), 1u, vec3<i32>(59880i, 12601i, u_input.b.x)), u_input.b, Struct_1(u_input.d, 58004u, vec3<f32>(-1273f, -861f, -2818f), 4294967295u, vec3<i32>(u_input.b.x, 0i, u_input.b.x)), Struct_1(u_input.c, 31625u, vec3<f32>(511f, 293f, -546f), 1u, vec3<i32>(-1i, i32(-2147483648), -43741i)), Struct_1(51413u, 8799u, vec3<f32>(120f, -1000f, 207f), u_input.d, vec3<i32>(u_input.b.x, -1i, u_input.b.x))), Struct_4(Struct_2(Struct_1(u_input.a, 52991u, vec3<f32>(156f, -916f, -1336f), u_input.d, u_input.b.xzw), u_input.b, Struct_1(30476u, u_input.a, vec3<f32>(1685f, -1000f, 413f), 4294967295u, u_input.b.xwz), Struct_1(u_input.d, 35066u, vec3<f32>(-1457f, 537f, 400f), u_input.a, vec3<i32>(-55562i, -13299i, u_input.b.x)), Struct_1(u_input.c, 6045u, vec3<f32>(161f, 614f, -762f), 0u, u_input.b.wxz)), u_input.a, Struct_1(u_input.c, 4294967295u, vec3<f32>(530f, -686f, -430f), 39513u, vec3<i32>(11180i, u_input.b.x, -19272i)), vec4<f32>(-1141f, -384f, 899f, -866f), 432f), ~u_input.b), Struct_4(func_5(Struct_2(Struct_1(u_input.a, 4294967295u, vec3<f32>(-509f, -244f, -2192f), u_input.a, u_input.b.yzy), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 14472i), Struct_1(46414u, 1u, vec3<f32>(-2049f, 722f, 1938f), 70103u, vec3<i32>(u_input.b.x, 21593i, u_input.b.x)), Struct_1(0u, u_input.c, vec3<f32>(-1747f, -168f, -1526f), u_input.d, vec3<i32>(u_input.b.x, 33464i, 1i)), Struct_1(u_input.c, u_input.d, vec3<f32>(-3047f, -1279f, -1000f), u_input.d, vec3<i32>(-54534i, 1i, u_input.b.x))), Struct_4(Struct_2(Struct_1(u_input.c, u_input.a, vec3<f32>(-786f, -1000f, 246f), u_input.d, u_input.b.wyz), u_input.b, Struct_1(u_input.c, 95793u, vec3<f32>(-788f, -1598f, 287f), 106057u, u_input.b.yzy), Struct_1(u_input.c, 4294967295u, vec3<f32>(-1209f, 1000f, -469f), u_input.d, u_input.b.wyx), Struct_1(u_input.d, u_input.d, vec3<f32>(159f, 269f, -227f), u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.a, Struct_1(25984u, 43538u, vec3<f32>(-1626f, -1000f, -220f), u_input.d, vec3<i32>(17293i, u_input.b.x, 1i)), vec4<f32>(-383f, -1000f, -483f, -922f), -1130f), vec4<i32>(u_input.b.x, -13694i, 50812i, u_input.b.x)), 36246u, func_4(false, u_input.b, true).c, exp2(vec4<f32>(186f, 884f, 1875f, -260f)), -859f), ~(-u_input.b)), Struct_4(func_5(func_5(Struct_2(Struct_1(u_input.a, u_input.c, vec3<f32>(2060f, 1063f, -565f), u_input.c, u_input.b.zww), vec4<i32>(2147483647i, -7738i, u_input.b.x, u_input.b.x), Struct_1(u_input.d, 1u, vec3<f32>(-624f, -1000f, 1914f), u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, 38629i)), Struct_1(38897u, 10052u, vec3<f32>(318f, 1000f, 393f), u_input.a, u_input.b.wwx), Struct_1(1u, u_input.d, vec3<f32>(-2087f, -659f, -1000f), 41723u, vec3<i32>(2147483647i, 22857i, u_input.b.x))), Struct_4(Struct_2(Struct_1(4294967295u, 4294967295u, vec3<f32>(-556f, 1000f, -853f), 6082u, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b, Struct_1(0u, 79727u, vec3<f32>(1185f, 414f, -1235f), 4294967295u, u_input.b.wxz), Struct_1(u_input.c, 41250u, vec3<f32>(398f, -364f, 3287f), u_input.a, u_input.b.zxy), Struct_1(4294967295u, 4294967295u, vec3<f32>(-1000f, -546f, 199f), 23764u, u_input.b.ywy)), 0u, Struct_1(u_input.d, 19491u, vec3<f32>(1056f, -572f, 1901f), 22962u, u_input.b.yzx), vec4<f32>(-1349f, 1000f, 875f, -363f), 2580f), vec4<i32>(u_input.b.x, i32(-2147483648), 0i, u_input.b.x)), Struct_4(Struct_2(Struct_1(u_input.d, u_input.a, vec3<f32>(-203f, -2449f, -162f), 0u, vec3<i32>(u_input.b.x, -55447i, u_input.b.x)), vec4<i32>(u_input.b.x, -47850i, -37784i, -25841i), Struct_1(u_input.d, 16058u, vec3<f32>(-416f, 183f, 515f), u_input.a, u_input.b.xzz), Struct_1(59579u, u_input.c, vec3<f32>(1151f, 1054f, -2520f), 0u, u_input.b.xwx), Struct_1(9751u, 1u, vec3<f32>(771f, -843f, -334f), u_input.a, u_input.b.wwx)), u_input.d, Struct_1(u_input.d, u_input.d, vec3<f32>(-1798f, 906f, -1612f), 1u, vec3<i32>(2147483647i, -10467i, 2147483647i)), vec4<f32>(2101f, -826f, -1153f, 1000f), -946f), -u_input.b), u_input.d, Struct_1(u_input.c, u_input.a % 4294967295u, ceil(vec3<f32>(-936f, 352f, 612f)), abs(4294967295u), u_input.b.xzz & u_input.b.yyy), -vec4<f32>(-163f, 335f, -1059f, 320f) - ceil(vec4<f32>(343f, -1000f, -514f, 102f)), step(1089f, 997f) - min(-1278f, 660f)), vec4<i32>(u_input.b.x * u_input.b.x, -14837i * u_input.b.x, u_input.b.x << u_input.c, 2147483647i / -1i) % vec4<i32>(-17804i, -(i32(-2147483648)), u_input.b.x, u_input.b.x)).c, -(vec4<f32>(-1048f * -400f, -1567f, floor(-968f), -2247f) * -(vec4<f32>(-902f, -1390f, -1000f, 900f) * vec4<f32>(-435f, 532f, -1000f, 1230f))), -(-500f));
    let var_1 = vec3<i32>(-u_input.b.x, i32(-2147483648) ^ ((select(var_0.c.e.x, 39256i, true) & func_5(var_0.a, Struct_4(Struct_2(var_0.a.c, vec4<i32>(u_input.b.x, u_input.b.x, var_0.c.e.x, 0i), Struct_1(10052u, 0u, vec3<f32>(var_0.c.c.x, -178f, var_0.d.x), u_input.d, vec3<i32>(var_0.c.e.x, -52218i, u_input.b.x)), Struct_1(0u, u_input.c, vec3<f32>(449f, var_0.a.a.c.x, var_0.e), var_0.b, u_input.b.xwx), Struct_1(36727u, u_input.a, var_0.d.zww, var_0.c.d, var_0.a.a.e)), 4294967295u, var_0.a.c, vec4<f32>(1461f, var_0.c.c.x, var_0.e, 801f), 319f), var_0.a.b).c.e.x) + -u_input.b.x), dot(-var_0.c.e, var_0.c.e));
    var_0 = Struct_4(var_0.a, ~(~(~u_input.d)), var_0.a.e, exp2(vec4<f32>(641f, var_0.c.c.x, var_0.d.x, floor(var_0.c.c.x))), var_0.a.a.c.x);
    let var_2 = Struct_1(~3466u, max(1u, (~4294967295u * max(var_0.a.e.b, u_input.c)) - func_5(func_5(Struct_2(Struct_1(4294967295u, u_input.d, vec3<f32>(var_0.a.c.c.x, 1000f, 454f), 0u, u_input.b.zwz), vec4<i32>(0i, u_input.b.x, -1i, -56088i), Struct_1(u_input.c, var_0.c.b, var_0.d.zzy, 1u, u_input.b.zyw), var_0.a.d, Struct_1(var_0.c.b, 4892u, vec3<f32>(431f, 1139f, var_0.e), var_0.a.c.a, vec3<i32>(u_input.b.x, var_1.x, 4110i))), Struct_4(Struct_2(var_0.a.c, vec4<i32>(var_0.c.e.x, -24797i, 29451i, u_input.b.x), var_0.a.e, Struct_1(var_0.a.a.d, var_0.a.a.a, var_0.d.yww, var_0.c.d, var_1), var_0.a.a), 0u, Struct_1(5294u, 13293u, var_0.d.xwx, 71638u, var_0.c.e), vec4<f32>(-377f, var_0.a.a.c.x, var_0.d.x, var_0.e), 2101f), vec4<i32>(u_input.b.x, u_input.b.x, -47688i, var_0.c.e.x)), Struct_4(var_0.a, var_0.b, var_0.a.c, var_0.d, var_0.d.x), -var_0.a.b).e.d), vec3<f32>(var_0.e, func_2(), var_0.e), 26203u, vec3<i32>(13739i, -firstLeadingBit(var_1.x), -(var_1.x * -39321i)) << ~(~vec3<u32>(u_input.c, 4294967295u, u_input.d) * vec3<u32>(var_0.c.d, var_0.a.d.b, 10195u)));
    var var_3 = ~(~vec3<u32>(firstLeadingBit(func_5(Struct_2(Struct_1(1u, var_2.b, var_2.c, 30320u, vec3<i32>(var_0.c.e.x, 16766i, 0i)), u_input.b, var_2, Struct_1(39904u, u_input.a, vec3<f32>(var_0.d.x, -229f, var_2.c.x), u_input.d, vec3<i32>(40151i, 0i, var_0.c.e.x)), var_2), Struct_4(var_0.a, 4294967295u, Struct_1(u_input.c, var_0.b, vec3<f32>(-1737f, 1000f, -1663f), var_2.b, var_1), var_0.d, var_2.c.x), vec4<i32>(2147483647i, var_1.x, var_2.e.x, var_1.x)).e.d), (u_input.d + 0u) - var_0.c.a, ~(~u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_2.a), var_2.c.xz, (((vec3<u32>(65732u, 1u, 29497u) - vec3<u32>(0u, var_0.c.b, var_0.b)) ^ vec3<u32>(u_input.d, 4294967295u, u_input.a)) >> (firstTrailingBit(vec3<u32>(var_3.x, u_input.d, 28420u)) & (vec3<u32>(var_0.c.a, 123600u, 366u) << vec3<u32>(49444u, 0u, 1u)))) * (((vec3<u32>(var_2.a, var_3.x, u_input.a) >> vec3<u32>(0u, 13855u, 2574u)) ^ firstTrailingBit(vec3<u32>(var_2.d, var_2.d, var_0.b))) / ~(~vec3<u32>(1u, 45921u, 35855u))), ~(~(vec2<u32>(u_input.d, 4294967295u) >> var_3.zz)));
}

