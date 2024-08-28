// {"0:0":[157,111,171,156]}
// Seed: 16837736647833041202

struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_3(Struct_2(31530u, Struct_1(-2454f, vec3<bool>(false, true, false), vec3<f32>(206f, -424f, -1262f), vec4<i32>(-58417i, -17451i, -51221i, -1i)), Struct_1(331f, vec3<bool>(true, true, false), vec3<f32>(-534f, 1000f, -642f), vec4<i32>(-3997i, -62944i, 0i, i32(-2147483648))), Struct_1(-1377f, vec3<bool>(false, false, true), vec3<f32>(1263f, 548f, 1045f), vec4<i32>(i32(-2147483648), 0i, -1i, i32(-2147483648)))), vec2<f32>(1044f, -1000f)), Struct_3(Struct_2(4294967295u, Struct_1(-1435f, vec3<bool>(false, false, true), vec3<f32>(807f, 101f, -347f), vec4<i32>(2147483647i, 37439i, -7016i, 1i)), Struct_1(2015f, vec3<bool>(false, false, false), vec3<f32>(659f, 1963f, 217f), vec4<i32>(35233i, -4037i, 2147483647i, i32(-2147483648))), Struct_1(-955f, vec3<bool>(true, true, true), vec3<f32>(-300f, -121f, -1111f), vec4<i32>(2147483647i, 39607i, -38370i, -5726i))), vec2<f32>(153f, -512f))), Struct_4(Struct_3(Struct_2(5262u, Struct_1(540f, vec3<bool>(false, false, false), vec3<f32>(590f, -986f, 330f), vec4<i32>(0i, 8027i, i32(-2147483648), -1i)), Struct_1(-158f, vec3<bool>(false, true, true), vec3<f32>(-977f, 1000f, 1341f), vec4<i32>(i32(-2147483648), i32(-2147483648), -36322i, -9293i)), Struct_1(-722f, vec3<bool>(true, true, false), vec3<f32>(586f, -1818f, -602f), vec4<i32>(2147483647i, i32(-2147483648), 1i, 12204i))), vec2<f32>(-1640f, -206f)), Struct_3(Struct_2(788u, Struct_1(-933f, vec3<bool>(true, true, true), vec3<f32>(-2624f, -376f, -1540f), vec4<i32>(2147483647i, 0i, -32916i, -34226i)), Struct_1(317f, vec3<bool>(false, false, true), vec3<f32>(-1149f, 211f, -380f), vec4<i32>(1i, 0i, 18993i, 0i)), Struct_1(650f, vec3<bool>(false, false, true), vec3<f32>(1261f, 1638f, 1621f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)))), vec2<f32>(-1212f, 255f))), Struct_4(Struct_3(Struct_2(4294967295u, Struct_1(-1333f, vec3<bool>(false, false, false), vec3<f32>(1409f, 1019f, 1000f), vec4<i32>(2147483647i, 0i, -53358i, -23654i)), Struct_1(-1306f, vec3<bool>(false, true, false), vec3<f32>(-604f, -1000f, 291f), vec4<i32>(2147483647i, -10473i, 2147483647i, i32(-2147483648))), Struct_1(-470f, vec3<bool>(true, true, true), vec3<f32>(970f, -1457f, 1232f), vec4<i32>(-30433i, 1i, 27081i, 0i))), vec2<f32>(-802f, -784f)), Struct_3(Struct_2(1119u, Struct_1(-245f, vec3<bool>(true, true, false), vec3<f32>(-957f, -373f, -1382f), vec4<i32>(-1i, -37347i, -15681i, 1i)), Struct_1(1742f, vec3<bool>(false, false, false), vec3<f32>(247f, 2806f, 496f), vec4<i32>(2147483647i, i32(-2147483648), 0i, i32(-2147483648))), Struct_1(-1371f, vec3<bool>(true, false, true), vec3<f32>(-1821f, -1354f, 1050f), vec4<i32>(-4170i, 2147483647i, 2147483647i, -17028i))), vec2<f32>(1116f, -2281f))), Struct_4(Struct_3(Struct_2(86404u, Struct_1(-902f, vec3<bool>(true, true, false), vec3<f32>(1173f, -1766f, -702f), vec4<i32>(-5452i, -29340i, 44907i, 0i)), Struct_1(474f, vec3<bool>(true, true, true), vec3<f32>(-1164f, -313f, -1044f), vec4<i32>(56764i, -13481i, 22523i, -38026i)), Struct_1(375f, vec3<bool>(true, true, true), vec3<f32>(-3264f, -833f, 413f), vec4<i32>(i32(-2147483648), -1i, 16558i, 24985i))), vec2<f32>(-705f, -1684f)), Struct_3(Struct_2(32782u, Struct_1(1147f, vec3<bool>(true, false, true), vec3<f32>(-759f, -691f, 622f), vec4<i32>(i32(-2147483648), -36491i, i32(-2147483648), 11601i)), Struct_1(1430f, vec3<bool>(true, false, false), vec3<f32>(1128f, -1261f, 1000f), vec4<i32>(26371i, 0i, 2147483647i, i32(-2147483648))), Struct_1(2043f, vec3<bool>(true, false, false), vec3<f32>(-859f, 426f, 1669f), vec4<i32>(0i, 0i, i32(-2147483648), 16374i))), vec2<f32>(1803f, -1644f))), Struct_4(Struct_3(Struct_2(46625u, Struct_1(-979f, vec3<bool>(false, true, true), vec3<f32>(2608f, -281f, -664f), vec4<i32>(i32(-2147483648), 16435i, 1i, 2147483647i)), Struct_1(-2066f, vec3<bool>(false, true, false), vec3<f32>(857f, 377f, -828f), vec4<i32>(1i, -42511i, -5615i, -76024i)), Struct_1(219f, vec3<bool>(true, false, false), vec3<f32>(-1160f, -423f, 658f), vec4<i32>(-1i, -22314i, -37330i, -27417i))), vec2<f32>(-1447f, -276f)), Struct_3(Struct_2(1u, Struct_1(834f, vec3<bool>(true, false, false), vec3<f32>(-774f, 120f, 1837f), vec4<i32>(1i, -1i, 7159i, 29255i)), Struct_1(466f, vec3<bool>(false, false, false), vec3<f32>(-412f, -488f, -351f), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 1i)), Struct_1(497f, vec3<bool>(true, false, true), vec3<f32>(-2077f, -527f, 2530f), vec4<i32>(2391i, -40122i, i32(-2147483648), 9072i))), vec2<f32>(1904f, -914f))), Struct_4(Struct_3(Struct_2(51471u, Struct_1(-718f, vec3<bool>(true, true, true), vec3<f32>(-1317f, -1938f, 279f), vec4<i32>(22496i, 2147483647i, 0i, 0i)), Struct_1(-127f, vec3<bool>(true, true, false), vec3<f32>(640f, 198f, 379f), vec4<i32>(10162i, 29123i, 2147483647i, i32(-2147483648))), Struct_1(-207f, vec3<bool>(true, false, true), vec3<f32>(810f, 108f, 393f), vec4<i32>(75100i, i32(-2147483648), -16674i, -1i))), vec2<f32>(-364f, -208f)), Struct_3(Struct_2(0u, Struct_1(-878f, vec3<bool>(true, true, false), vec3<f32>(867f, 390f, -220f), vec4<i32>(15364i, 0i, 0i, -26270i)), Struct_1(1225f, vec3<bool>(true, true, true), vec3<f32>(2073f, 730f, 911f), vec4<i32>(2147483647i, -3718i, -1i, 2147483647i)), Struct_1(824f, vec3<bool>(true, false, false), vec3<f32>(926f, 907f, 460f), vec4<i32>(-26924i, -12781i, 39930i, 2147483647i))), vec2<f32>(247f, -1455f))), Struct_4(Struct_3(Struct_2(96331u, Struct_1(-1117f, vec3<bool>(false, false, false), vec3<f32>(884f, -1309f, 1000f), vec4<i32>(1i, i32(-2147483648), -34040i, 44416i)), Struct_1(-1388f, vec3<bool>(false, true, false), vec3<f32>(-2184f, 682f, 152f), vec4<i32>(-1i, 24837i, 65892i, 1i)), Struct_1(-333f, vec3<bool>(false, true, false), vec3<f32>(768f, 1087f, -627f), vec4<i32>(-745i, -26390i, -1066i, -6956i))), vec2<f32>(-514f, -1441f)), Struct_3(Struct_2(17473u, Struct_1(-734f, vec3<bool>(false, false, true), vec3<f32>(1010f, -237f, 559f), vec4<i32>(0i, 2147483647i, -1128i, -7776i)), Struct_1(1379f, vec3<bool>(false, false, false), vec3<f32>(320f, 1144f, 630f), vec4<i32>(0i, 25888i, -1i, -32668i)), Struct_1(-865f, vec3<bool>(true, true, false), vec3<f32>(-1154f, 187f, -550f), vec4<i32>(0i, -14111i, 16857i, 2147483647i))), vec2<f32>(2253f, -681f))), Struct_4(Struct_3(Struct_2(0u, Struct_1(382f, vec3<bool>(false, false, true), vec3<f32>(416f, -657f, 362f), vec4<i32>(49571i, 0i, 6043i, -461i)), Struct_1(-198f, vec3<bool>(true, false, true), vec3<f32>(-609f, -245f, -134f), vec4<i32>(-1i, -1i, -58748i, 1i)), Struct_1(-1384f, vec3<bool>(true, false, false), vec3<f32>(-499f, -1221f, -1000f), vec4<i32>(2147483647i, 62616i, 0i, -10814i))), vec2<f32>(-555f, 240f)), Struct_3(Struct_2(51222u, Struct_1(565f, vec3<bool>(true, false, true), vec3<f32>(-1003f, -1660f, 1181f), vec4<i32>(19853i, 30077i, -1i, i32(-2147483648))), Struct_1(1000f, vec3<bool>(false, true, true), vec3<f32>(2074f, -2522f, 165f), vec4<i32>(-1i, 2147483647i, -33680i, 12390i)), Struct_1(1000f, vec3<bool>(false, false, true), vec3<f32>(203f, -1000f, -123f), vec4<i32>(1i, 2147483647i, 0i, -1i))), vec2<f32>(548f, 831f))), Struct_4(Struct_3(Struct_2(0u, Struct_1(581f, vec3<bool>(true, true, false), vec3<f32>(849f, 1788f, 1853f), vec4<i32>(12970i, -18637i, 33181i, i32(-2147483648))), Struct_1(109f, vec3<bool>(true, false, false), vec3<f32>(1000f, 1344f, -288f), vec4<i32>(58886i, -7096i, -29085i, i32(-2147483648))), Struct_1(-377f, vec3<bool>(true, true, false), vec3<f32>(912f, 776f, 446f), vec4<i32>(-30359i, -65650i, i32(-2147483648), 2942i))), vec2<f32>(747f, 2264f)), Struct_3(Struct_2(4294967295u, Struct_1(214f, vec3<bool>(true, false, false), vec3<f32>(-1003f, -293f, 1001f), vec4<i32>(-1i, -464i, 1i, 5551i)), Struct_1(-538f, vec3<bool>(true, false, true), vec3<f32>(-258f, 631f, 642f), vec4<i32>(2147483647i, 47841i, -1829i, i32(-2147483648))), Struct_1(-1734f, vec3<bool>(true, true, true), vec3<f32>(-1940f, 1053f, 882f), vec4<i32>(1i, -1i, 14575i, -14586i))), vec2<f32>(1850f, -580f))), Struct_4(Struct_3(Struct_2(0u, Struct_1(-1513f, vec3<bool>(false, true, true), vec3<f32>(158f, 1581f, 1552f), vec4<i32>(0i, 17401i, -17836i, 2147483647i)), Struct_1(1190f, vec3<bool>(false, true, false), vec3<f32>(182f, 314f, 983f), vec4<i32>(1i, 20889i, 23316i, -462i)), Struct_1(-1450f, vec3<bool>(true, true, true), vec3<f32>(-777f, -615f, 608f), vec4<i32>(1i, 0i, 1i, -3450i))), vec2<f32>(-561f, -667f)), Struct_3(Struct_2(55185u, Struct_1(-1281f, vec3<bool>(true, false, false), vec3<f32>(-567f, -285f, 991f), vec4<i32>(-28427i, -20875i, 1i, 1i)), Struct_1(-1461f, vec3<bool>(true, false, true), vec3<f32>(-281f, 350f, 364f), vec4<i32>(-11420i, -8283i, 11591i, i32(-2147483648))), Struct_1(-121f, vec3<bool>(false, true, false), vec3<f32>(-1130f, -643f, -931f), vec4<i32>(15748i, 0i, 12584i, 47142i))), vec2<f32>(-688f, 204f))));

var<private> global1: array<i32, 5> = array<i32, 5>(1i, 15067i, i32(-2147483648), i32(-2147483648), -53912i);

fn func_2() -> f32 {
    global1 = array<i32, 5>();
    let var_0 = 1449f;
    global0 = array<Struct_4, 10>();
    var var_1 = Struct_3(Struct_2(~u_input.a, Struct_1(var_0, !vec3<bool>(false, false, false), -vec3<f32>(-749f, var_0, var_0), vec4<i32>(dot(vec3<i32>(global1[u_input.a], i32(-2147483648), i32(-2147483648)), vec3<i32>(global1[40986u], global1[u_input.a], 2147483647i)), -30622i - global1[59920u], abs(global1[u_input.a]), global1[10269u / 0u])), Struct_1(223f, !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<f32>(exp2(var_0), 379f + -1000f, -973f / var_0), vec4<i32>(clamp(global1[u_input.a], global1[u_input.a], global1[u_input.a]), countOneBits(global1[62297u]), reverseBits(-21356i), -global1[54821u])), Struct_1(1015f, !(!vec3<bool>(false, false, false)), -abs(vec3<f32>(var_0, var_0, -1000f)), abs(select(vec4<i32>(global1[17745u], global1[4294967295u], 57923i, -6952i), vec4<i32>(global1[11263u], -4617i, global1[u_input.a], 1i), false)))), -vec2<f32>(var_0 - -1699f, sign(1000f)) + vec2<f32>(max(var_0, var_0) + abs(var_0), -467f));
    global0 = array<Struct_4, 10>();
    return var_0;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: vec4<f32>) -> vec4<i32> {
    global0 = array<Struct_4, 10>();
    let var_0 = Struct_1(arg_3.x, arg_2.a.c.b, vec3<f32>(887f, arg_3.x, -(-ceil(arg_2.b.x))), -arg_2.a.c.d);
    let var_1 = arg_2.a.c;
    let var_2 = select(vec3<bool>(var_1.d.x == ~(var_0.d.x - i32(-2147483648)), var_0.b.x, reverseBits(dot(vec2<u32>(115699u, u_input.a), vec2<u32>(98802u, 28555u))) < 1u), !vec3<bool>(-572f <= func_2(), true, !(arg_2.a.c.b.x != false)), var_0.b);
    var var_3 = arg_2;
    return -(var_3.a.d.d + -(-vec4<i32>(-32282i, -52037i, global1[var_3.a.a], arg_0) >> vec4<u32>(1u, 4294967295u, 1u, 0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = select(30285u, u_input.a, !arg_0.b.x);
    let var_1 = global0[u_input.a];
    global0 = array<Struct_4, 10>();
    global1 = array<i32, 5>();
    let var_2 = 64470u;
    return trunc(-(var_1.a.a.d.c - arg_0.c));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = u_input.a;
    let var_1 = select(vec3<f32>(-(-1000f) - -268f, step(select(func_2(), -317f + 1766f, false), ceil(-124f)), (-(-669f) - step(-1305f, 667f)) / (-1458f - -1386f)), func_4(Struct_1(min(-528f, 1373f / 106f), !vec3<bool>(true, false, true), vec3<f32>(1226f, 1000f, -1623f) * -vec3<f32>(401f, -510f, 420f), vec4<i32>(global1[u_input.a ^ u_input.a], global1[u_input.a], 276i ^ 0i, -10155i)), func_3(1i, 11476i ^ (global1[68310u] * i32(-2147483648)), Struct_3(Struct_2(u_input.a, Struct_1(1000f, vec3<bool>(true, true, true), vec3<f32>(-192f, -1000f, -1000f), vec4<i32>(2147483647i, global1[1u], arg_0, global1[1u])), Struct_1(-238f, vec3<bool>(false, true, false), vec3<f32>(1006f, -1000f, -1000f), vec4<i32>(global1[u_input.a], global1[u_input.a], arg_0, global1[u_input.a])), Struct_1(-1478f, vec3<bool>(false, false, false), vec3<f32>(305f, 786f, 675f), vec4<i32>(-642i, 2147483647i, arg_0, global1[1u]))), -vec2<f32>(1009f, -206f)), floor(vec4<f32>(664f, -2074f, 2219f, 1143f)))), select(select(!(!vec3<bool>(false, false, false)), !vec3<bool>(false, true, true), !(!vec3<bool>(true, false, true))), vec3<bool>(all(vec2<bool>(false, false)), select(!false, all(vec4<bool>(true, false, true, true)), !true), any(!vec3<bool>(false, false, false))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), !false))));
    var var_2 = !(!vec2<bool>(!any(vec2<bool>(false, false)), !any(vec2<bool>(true, true))));
    var var_3 = Struct_1(187f, select(vec3<bool>(true, dot(vec3<i32>(i32(-2147483648), i32(-2147483648), arg_0), vec3<i32>(global1[17805u], arg_0, arg_0)) > reverseBits(i32(-2147483648)), all(!vec2<bool>(false, var_2.x))), vec3<bool>(-18041i != (-4506i >> 11575u), !any(vec2<bool>(false, var_2.x)), any(select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x)))), false), vec3<f32>(var_1.x * -1541f, exp2(var_1.x) + select(-1000f, var_1.x, true), ceil(func_2())) + var_1, select(vec4<i32>(-(i32(-2147483648)), func_3(15658i, -3918i, Struct_3(Struct_2(u_input.a, Struct_1(-829f, vec3<bool>(var_2.x, false, var_2.x), var_1, vec4<i32>(0i, 11152i, arg_0, global1[47540u])), Struct_1(-1002f, vec3<bool>(false, false, var_2.x), vec3<f32>(-877f, -698f, var_1.x), vec4<i32>(-1i, 2147483647i, -43812i, -30834i)), Struct_1(-626f, vec3<bool>(false, false, var_2.x), var_1, vec4<i32>(global1[4294967295u], i32(-2147483648), global1[u_input.a], 60298i))), vec2<f32>(var_1.x, var_1.x)), vec4<f32>(856f, var_1.x, var_1.x, 816f)).x, i32(-2147483648) * 2147483647i, firstTrailingBit(55057i)), firstLeadingBit(vec4<i32>(i32(-2147483648), i32(-2147483648), arg_0, 1i) + vec4<i32>(14506i, 35710i, i32(-2147483648), 30184i)), !all(vec4<bool>(false, var_2.x, var_2.x, var_2.x))) | vec4<i32>(-2147483647i + -(i32(-2147483648)), global1[0u], global1[u_input.a], -global1[u_input.a] >> ~1u));
    var var_4 = vec2<bool>((min(var_3.d.x, arg_0 * i32(-2147483648)) & 0i) < var_3.d.x, -var_3.c.x >= var_3.a);
    return 10609u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    var var_0 = vec4<i32>(2147483647i, -1i, 0i, global1[u_input.a / func_1(global1[dot(select(vec4<u32>(1u, 4294967295u, 3842u, u_input.a), vec4<u32>(4294967295u, 4294967295u, 21462u, 1u), false), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false))])]);
    var_0 = vec4<i32>(42294i, (-(i32(-2147483648)) - global1[u_input.a]) % var_0.x, 0i - dot(var_0.zzy, ~(~vec3<i32>(var_0.x, var_0.x, -66817i))), global1[~(41907u | 1u)] ^ ~(~(var_0.x * global1[u_input.a])));
    global0 = array<Struct_4, 10>();
    let var_1 = Struct_4(Struct_3(Struct_2(u_input.a, Struct_1(798f, select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), ceil(vec3<f32>(-631f, 1255f, -173f)), select(vec4<i32>(global1[42806u], 2147483647i, 72139i, 6272i), vec4<i32>(-9926i, global1[16374u], 2483i, 1i), vec4<bool>(true, false, true, true))), Struct_1(-281f, !vec3<bool>(true, false, false), vec3<f32>(188f, 2605f, -378f), ~vec4<i32>(0i, -34769i, 2724i, global1[u_input.a])), Struct_1(-(-241f), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), -vec3<f32>(-2239f, -239f, -1116f), vec4<i32>(var_0.x, global1[1u], var_0.x, global1[0u]) >> vec4<u32>(5251u, 4294967295u, u_input.a, u_input.a))), vec2<f32>(-750f, ceil(-188f))), Struct_3(Struct_2(~u_input.a << u_input.a, Struct_1(-1000f, select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), trunc(vec3<f32>(968f, -1345f, -505f)), -vec4<i32>(-15589i, var_0.x, -15144i, 1i)), Struct_1(-529f, !vec3<bool>(false, true, false), vec3<f32>(1000f, 1345f, 763f), firstLeadingBit(vec4<i32>(5430i, var_0.x, -35641i, global1[110850u]))), Struct_1(-(-108f), vec3<bool>(true, true, true), abs(vec3<f32>(1823f, -1493f, -231f)), -vec4<i32>(var_0.x, var_0.x, global1[u_input.a], global1[4294967295u]))), -min(vec2<f32>(-114f, -1000f) / vec2<f32>(-536f, 600f), min(vec2<f32>(-357f, -1452f), vec2<f32>(-601f, 1768f)))));
    global0 = array<Struct_4, 10>();
    let var_2 = vec4<bool>((true || true) & false, any(select(vec3<bool>(var_0.x >= global1[u_input.a], false, !false), !(!var_1.a.a.c.b), !var_1.b.a.c.b.x)), var_1.a.a.b.b.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(12360i, ~(~dot(~vec3<i32>(var_1.a.a.c.d.x, -1i, i32(-2147483648)), vec3<i32>(11087i, var_1.a.a.d.d.x, var_1.a.a.b.d.x) << vec3<u32>(77251u, 4294967295u, var_1.a.a.a))), min(var_1.a.a.c.a, min(-var_1.a.a.b.a, 1000f)), var_1.b.a.a, vec2<i32>(firstLeadingBit(42745i * -var_0.x), select(-1i, dot(vec2<i32>(var_0.x, 73990i), var_0.ww) ^ -13055i, !all(vec4<bool>(var_1.a.a.d.b.x, false, var_1.a.a.c.b.x, false)))));
}

