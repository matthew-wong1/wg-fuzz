// {"0:0":[189,163,192,167,24,43,46,177,161,170,143,205,107,185,219,132,138,117,121,137,115,74,117,218,73,205,185,150,69,213,28,127]}
// Seed: 15038126149418628903

struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1734f, 613f, 964f, 2640f, 3206f, -482f, -399f, 679f, -932f, 1047f, -1405f, 145f, -300f, 1000f, -1000f, 901f, -926f, -1326f, 666f, 310f, -1960f, -1290f, -464f, -2033f, -191f);

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4) -> vec2<i32> {
    global0 = array<f32, 25>();
    var var_0 = !vec4<bool>(!true, u_input.e.x > ~1u, -339f < -max(463f, 974f), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)));
    let var_1 = arg_2.b;
    var var_2 = vec4<bool>(var_0.x, var_0.x & ((arg_2.a == 46842u) & true), var_0.x, any(var_0.wyw));
    var var_3 = var_1.a.d.wyy;
    return -(~arg_0.b.zz + arg_0.b.yz);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> vec2<i32> {
    var var_0 = !select(vec3<bool>(arg_0.d, select(any(vec2<bool>(true, false)), arg_0.d | true, false), false), vec3<bool>(abs(62901u) < countOneBits(46030u), arg_0.d, select(!arg_0.d, false, true)), true);
    let var_1 = !(!vec4<bool>(var_0.x, false, (u_input.d % arg_0.b.x) != u_input.c, var_0.x));
    return -arg_0.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_1(-global0[u_input.a], ~abs(vec3<i32>(-35175i, i32(-2147483648), i32(-2147483648))), trunc(global0[~u_input.e.x]) / -(-271f), -(trunc(vec4<f32>(336f, 1352f, 124f, global0[u_input.e.x])) + (vec4<f32>(global0[u_input.e.x], -129f, global0[u_input.a], -144f) - vec4<f32>(global0[52534u], -3043f, global0[693u], global0[1u]))), -(-(-417f * global0[u_input.a]))), func_4(Struct_3(Struct_1(global0[0u], ~vec3<i32>(-1i, -31519i, i32(-2147483648)), -global0[u_input.e.x], vec4<f32>(-1279f, global0[19826u], global0[1u], global0[4294967295u]) / vec4<f32>(global0[u_input.a], global0[u_input.e.x], global0[65697u], 718f), -(-1164f)), func_3(Struct_1(-784f, vec3<i32>(u_input.b, u_input.d, 2147483647i), -537f, vec4<f32>(global0[1u], global0[23668u], -1425f, global0[u_input.e.x]), -2068f), vec2<f32>(global0[u_input.a], 172f), Struct_4(0u, Struct_2(Struct_1(global0[0u], vec3<i32>(u_input.d, u_input.c, 56304i), global0[4294967295u], vec4<f32>(-883f, 114f, global0[1u], -1501f), global0[u_input.a]), Struct_1(global0[u_input.a], vec3<i32>(u_input.b, u_input.c, u_input.b), -802f, vec4<f32>(global0[14595u], 444f, 588f, global0[u_input.e.x]), 809f), Struct_1(866f, vec3<i32>(14121i, u_input.b, u_input.c), -803f, vec4<f32>(-469f, global0[u_input.a], global0[u_input.a], -1470f), global0[50962u]), vec4<i32>(-24463i, -6774i, -73225i, u_input.c)))) / ~vec2<i32>(-19276i, u_input.c), Struct_2(Struct_1(-577f, vec3<i32>(4420i, u_input.c, u_input.b), 515f, vec4<f32>(global0[4294967295u], -508f, -965f, 2056f), global0[71276u]), Struct_1(462f, vec3<i32>(u_input.b, u_input.d, -16687i), -1412f, vec4<f32>(-2070f, -310f, 1204f, -122f), 1139f), Struct_1(global0[u_input.a], vec3<i32>(u_input.c, 2147483647i, u_input.c), 1513f, vec4<f32>(866f, 1000f, global0[u_input.a], -1186f), -792f), ~vec4<i32>(1i, 17936i, 1i, i32(-2147483648))), !false), u_input.e, true), Struct_2(Struct_1(abs(global0[u_input.a]) + global0[u_input.a ^ u_input.a], vec3<i32>(dot(vec2<i32>(-9768i, u_input.c), vec2<i32>(u_input.d, i32(-2147483648))), -u_input.b, abs(u_input.b)), global0[~(38925u | 98893u)], round(vec4<f32>(-361f, global0[4294967295u], -1589f, -1000f)) - min(vec4<f32>(global0[u_input.e.x], -263f, global0[u_input.e.x], global0[u_input.e.x]), vec4<f32>(global0[34195u], -1000f, global0[u_input.a], 370f)), sign(global0[1u]) - (global0[1u] - global0[u_input.a])), Struct_1(-1978f * global0[dot(vec4<u32>(4294967295u, 4294967295u, u_input.a, 20664u), vec4<u32>(u_input.a, 0u, u_input.e.x, 0u))], clamp(select(vec3<i32>(6165i, u_input.d, 52872i), vec3<i32>(53167i, u_input.d, u_input.c), true), vec3<i32>(u_input.b, u_input.d, 44425i), -vec3<i32>(u_input.b, u_input.d, u_input.d)), global0[u_input.a | 19596u] + 575f, -vec4<f32>(global0[u_input.a], -374f, 1000f, 1111f) * -vec4<f32>(global0[8731u], global0[u_input.e.x], global0[1u], -616f), global0[min(u_input.a, u_input.a)] / global0[min(69361u, u_input.e.x)]), Struct_1(global0[~u_input.e.x * (u_input.e.x << 37569u)], vec3<i32>(~u_input.c, -65032i, -29756i), min(global0[103446u], -1231f) * global0[u_input.e.x ^ u_input.e.x], select(sign(vec4<f32>(global0[u_input.a], global0[16205u], global0[1u], 428f)), vec4<f32>(-1632f, global0[26037u], global0[83141u], global0[u_input.e.x]) - vec4<f32>(global0[u_input.e.x], -1166f, 711f, global0[u_input.a]), !vec4<bool>(false, true, true, false)), round(ceil(1585f))), clamp(vec4<i32>(u_input.c, -51837i, -1i, u_input.c), vec4<i32>(10388i * 1i, u_input.d, i32(-2147483648) / 24257i, -(-7636i)), abs(~vec4<i32>(u_input.d, 23883i, u_input.b, u_input.c)))), false);
    let var_1 = -((-(var_0.c.b.d.yxy - var_0.a.d.wwy) / -(vec3<f32>(662f, global0[56007u], 1718f) - var_0.c.a.d.xzw)) * -(-floor(vec3<f32>(global0[0u], global0[1u], var_0.c.a.e))));
    var var_2 = vec3<u32>(abs(reverseBits(u_input.e.x)), u_input.e.x, countOneBits(39581u << 1u));
    var var_3 = Struct_3(Struct_1(-(-var_1.x) + trunc(var_1.x - -578f), -((vec3<i32>(-21242i, i32(-2147483648), u_input.b) ^ vec3<i32>(1i, u_input.c, var_0.a.b.x)) >> (vec3<u32>(4294967295u, 25753u, 4294967295u) ^ vec3<u32>(u_input.a, u_input.a, u_input.e.x))), -(-(-874f)), vec4<f32>(ceil(531f), -round(-1000f), -1210f, -152f + sign(-1000f)), var_1.x), var_0.c.a.b.xy * vec2<i32>(dot(-var_0.b, func_4(Struct_3(var_0.a, var_0.b, Struct_2(var_0.a, Struct_1(global0[var_2.x], vec3<i32>(u_input.c, var_0.c.c.b.x, var_0.a.b.x), var_1.x, vec4<f32>(-1814f, 1000f, var_1.x, 269f), var_1.x), Struct_1(var_1.x, vec3<i32>(10990i, var_0.b.x, -43176i), var_1.x, var_0.a.d, var_1.x), var_0.c.d), var_0.d), u_input.e, true)), -(i32(-2147483648)) << ~var_2.x), var_0.c, var_0.d);
    let var_4 = 4294967295u;
    return var_3.c;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.c;
    global0 = array<f32, 25>();
    let var_1 = vec3<bool>(arg_0.d, arg_0.d, arg_0.d);
    global0 = array<f32, 25>();
    var var_2 = vec3<i32>(-abs(~(-u_input.b)), u_input.c & 27325i, clamp(~(u_input.b + -var_0.b.b.x), max(i32(-2147483648), clamp(dot(arg_0.a.b.yz, var_0.d.yy), ~22466i, 1i)), arg_0.a.b.x));
    return func_2().b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    let var_0 = clamp(~arg_1.a, arg_1.a, ~(~firstTrailingBit(u_input.a)));
    let var_1 = func_2();
    var var_2 = Struct_1(func_2().a.a, ~select(vec3<i32>(2147483647i, arg_0.d.x, arg_0.a.b.x) * vec3<i32>(arg_1.b.d.x, arg_0.d.x, 61763i), -(~var_1.c.b), select(!vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), 302f, arg_0.a.d, max(arg_2, (arg_0.a.a + sign(-1557f)) * var_1.c.d.x));
    let var_3 = ~min(abs(~9214u % arg_1.a), clamp(1u, 1u, ~(~u_input.a)));
    global0 = array<f32, 25>();
    return Struct_3(arg_1.b.b, arg_0.a.b.yy, Struct_2(arg_1.b.b, func_2().b, Struct_1(trunc(-var_2.c), vec3<i32>(-24319i, arg_0.c.b.x, dot(var_1.b.b, vec3<i32>(u_input.b, 0i, 22279i))), -(-1707f) + (668f - 1000f), arg_1.b.b.d, -673f), vec4<i32>(-clamp(2147483647i, u_input.b, var_2.b.x), arg_0.d.x, reverseBits(-30650i ^ u_input.b), -(u_input.b / arg_1.b.c.b.x))), !((40520u < 0u) || any(vec3<bool>(true, true, false))) || any(!vec3<bool>(true, true, true)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 25>();
    let var_0 = !(select(any(vec3<bool>(false, false, true)), !(!true), false) | (select(-258f - 136f, arg_0.c, all(vec3<bool>(true, true, true))) < 124f));
    var var_1 = func_6(Struct_2(func_5(Struct_3(Struct_1(-662f, vec3<i32>(arg_0.b.x, u_input.d, -2291i), -2743f, vec4<f32>(-165f, 1310f, global0[u_input.e.x], 454f), global0[4294967295u]), -vec2<i32>(-41386i, arg_0.b.x), func_2(), !var_0)), arg_0, func_5(Struct_3(arg_0, arg_0.b.zx, Struct_2(Struct_1(global0[13867u], arg_0.b, 1901f, vec4<f32>(-210f, global0[u_input.a], -513f, -222f), -1747f), Struct_1(953f, vec3<i32>(-21477i, u_input.d, arg_0.b.x), 481f, arg_0.d, global0[4294967295u]), Struct_1(global0[u_input.e.x], arg_0.b, -1143f, arg_0.d, -1000f), vec4<i32>(1i, 69802i, -34348i, i32(-2147483648))), !var_0)), vec4<i32>(arg_0.b.x, ~(0i / 2862i), abs(arg_0.b.x), ~(u_input.c * u_input.d))), Struct_4(1u, Struct_2(arg_0, arg_0, arg_0, vec4<i32>(countOneBits(arg_0.b.x), abs(u_input.c), -38213i + -43348i, dot(vec2<i32>(u_input.b, 2147483647i), arg_0.b.yy)))), arg_0.a);
    var var_2 = Struct_3(func_5(func_6(var_1.c, Struct_4(u_input.a >> u_input.e.x, var_1.c), -309f)), firstTrailingBit(var_1.a.b.yx), func_6(func_2(), Struct_4(98745u, Struct_2(var_1.c.b, func_2().b, var_1.c.a, vec4<i32>(-1i, u_input.b, -39262i, arg_0.b.x) + var_1.c.d)), floor(-(var_1.a.a + global0[u_input.e.x]))).c, var_0 & func_6(func_6(func_2(), Struct_4(0u, Struct_2(var_1.c.b, Struct_1(-1239f, vec3<i32>(arg_0.b.x, var_1.b.x, var_1.c.b.b.x), var_1.a.a, vec4<f32>(var_1.a.e, 305f, var_1.a.e, var_1.c.c.a), -1364f), arg_0, vec4<i32>(-30627i, var_1.c.c.b.x, -2149i, arg_0.b.x))), 1183f).c, Struct_4(~938u, var_1.c), step(global0[u_input.a], -517f) - round(927f)).d);
    let var_3 = func_6(var_2.c, Struct_4(0u / dot(~u_input.e.xx, firstLeadingBit(vec2<u32>(u_input.a, u_input.e.x))), func_6(func_6(func_6(var_1.c, Struct_4(u_input.a, Struct_2(Struct_1(-188f, vec3<i32>(0i, var_2.a.b.x, -32629i), arg_0.a, vec4<f32>(global0[u_input.a], -451f, 1566f, -318f), var_1.c.b.e), var_2.c.c, Struct_1(global0[u_input.e.x], vec3<i32>(var_1.b.x, -1i, 0i), global0[u_input.a], vec4<f32>(var_2.c.c.a, -1268f, 150f, arg_0.c), -747f), var_1.c.d)), -740f).c, Struct_4(u_input.a, var_1.c), 724f / arg_0.d.x).c, Struct_4(u_input.a, var_1.c), 1471f / var_2.a.a).c), -(func_6(Struct_2(Struct_1(1630f, var_2.a.b, global0[u_input.e.x], vec4<f32>(816f, arg_0.e, global0[0u], -1000f), 676f), Struct_1(global0[u_input.e.x], vec3<i32>(-47005i, 21627i, arg_0.b.x), global0[4294967295u], vec4<f32>(-1238f, var_2.a.c, global0[8560u], 1459f), -973f), arg_0, vec4<i32>(var_1.a.b.x, var_2.a.b.x, u_input.d, var_2.b.x)), Struct_4(1u, Struct_2(arg_0, arg_0, Struct_1(var_2.c.a.a, var_1.c.d.www, var_1.c.a.d.x, var_2.c.c.d, var_2.c.c.a), vec4<i32>(-41777i, var_1.c.a.b.x, 23134i, -32532i))), 549f).c.b.c - var_2.a.a)).d;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-267f, select(vec3<i32>(u_input.c, 51550i, 0i), vec3<i32>(u_input.c, -(-17332i), func_1(Struct_1(global0[79301u], vec3<i32>(7709i, i32(-2147483648), u_input.b), global0[u_input.a], vec4<f32>(-1861f, 1000f, -335f, 1209f), -845f))), !(!false)), -390f, round(abs(vec4<f32>(-606f, global0[25148u], global0[0u], global0[0u]) + vec4<f32>(global0[0u], global0[u_input.e.x], 1677f, -141f))), -2458f), func_6(Struct_2(Struct_1(-285f - global0[12807u], -vec3<i32>(u_input.c, -1519i, u_input.b), -370f, -vec4<f32>(1043f, global0[0u], -1330f, 1038f), 558f - global0[u_input.a]), Struct_1(global0[30662u] / -1000f, -vec3<i32>(19285i, u_input.b, 1i), -global0[u_input.e.x], vec4<f32>(-1783f, -700f, -546f, global0[u_input.e.x]), -global0[3545u]), func_6(func_2(), Struct_4(0u, Struct_2(Struct_1(985f, vec3<i32>(38572i, u_input.b, u_input.d), global0[4294967295u], vec4<f32>(global0[1u], global0[53488u], global0[u_input.e.x], global0[u_input.e.x]), global0[u_input.a]), Struct_1(global0[u_input.a], vec3<i32>(u_input.c, u_input.b, i32(-2147483648)), -3640f, vec4<f32>(global0[u_input.a], 2076f, global0[37074u], global0[32427u]), global0[u_input.a]), Struct_1(261f, vec3<i32>(-7572i, u_input.b, 1i), global0[u_input.e.x], vec4<f32>(global0[u_input.a], global0[0u], global0[u_input.e.x], global0[u_input.e.x]), global0[1u]), vec4<i32>(9597i, i32(-2147483648), 5164i, u_input.c))), global0[select(u_input.e.x, 11065u, true)]).a, ~(-vec4<i32>(2147483647i, u_input.c, u_input.b, 7978i))), Struct_4(u_input.a ^ ~51741u, func_2()), -(-abs(global0[27944u]))).c.b, Struct_1(-(global0[u_input.e.x % u_input.a] / (-366f / global0[48150u])), vec3<i32>(~1763i, 0i, 19758i), 1009f, (min(vec4<f32>(334f, 101f, global0[u_input.a], -602f), vec4<f32>(global0[u_input.e.x], -1000f, global0[32120u], -1791f)) * max(vec4<f32>(global0[u_input.e.x], global0[u_input.e.x], global0[u_input.a], -329f), vec4<f32>(157f, 513f, -500f, 1000f))) / vec4<f32>(974f, -997f, max(-1564f, 334f), -global0[u_input.e.x]), -2013f), vec4<i32>(func_3(func_2().a, vec2<f32>(global0[16186u], global0[37104u]) / vec2<f32>(377f, global0[1u]), Struct_4(4294967295u, Struct_2(Struct_1(1000f, vec3<i32>(u_input.b, 4949i, 2147483647i), -749f, vec4<f32>(1424f, 477f, -486f, 141f), -884f), Struct_1(208f, vec3<i32>(-12946i, 18377i, 14525i), global0[31652u], vec4<f32>(global0[39956u], global0[u_input.e.x], 119f, global0[59327u]), global0[u_input.a]), Struct_1(global0[71847u], vec3<i32>(u_input.d, 1i, -34099i), -319f, vec4<f32>(global0[0u], global0[u_input.a], 290f, global0[24262u]), 329f), vec4<i32>(u_input.d, u_input.b, -12344i, u_input.d)))).x, func_5(Struct_3(Struct_1(170f, vec3<i32>(2147483647i, 0i, u_input.b), global0[u_input.e.x], vec4<f32>(638f, global0[0u], 292f, -877f), global0[u_input.e.x]), vec2<i32>(47918i, -1i), Struct_2(Struct_1(-1384f, vec3<i32>(i32(-2147483648), u_input.c, -9557i), global0[6086u], vec4<f32>(1582f, 1154f, global0[u_input.e.x], global0[u_input.a]), -107f), Struct_1(global0[u_input.e.x], vec3<i32>(0i, u_input.b, u_input.d), global0[u_input.a], vec4<f32>(681f, global0[1u], global0[38645u], global0[88124u]), -1103f), Struct_1(-976f, vec3<i32>(u_input.b, u_input.d, u_input.d), -407f, vec4<f32>(global0[u_input.a], global0[61419u], global0[5243u], global0[u_input.e.x]), global0[u_input.e.x]), vec4<i32>(38015i, 27314i, 1i, u_input.d)), false)).b.x << 0u, ~func_3(Struct_1(global0[64786u], vec3<i32>(u_input.c, u_input.d, 45667i), global0[0u], vec4<f32>(-881f, global0[u_input.e.x], global0[153113u], -219f), global0[4294967295u]), vec2<f32>(-1060f, global0[10031u]), Struct_4(4294967295u, Struct_2(Struct_1(-1000f, vec3<i32>(u_input.c, u_input.b, u_input.d), global0[5115u], vec4<f32>(-543f, global0[u_input.a], 384f, global0[18400u]), 835f), Struct_1(1247f, vec3<i32>(u_input.b, u_input.d, 10295i), 886f, vec4<f32>(-1286f, -354f, -528f, global0[u_input.a]), -412f), Struct_1(1158f, vec3<i32>(2147483647i, u_input.b, u_input.d), global0[u_input.a], vec4<f32>(173f, -1128f, 335f, global0[u_input.a]), -1000f), vec4<i32>(i32(-2147483648), u_input.c, 2147483647i, u_input.c)))).x, -(-62736i) & -1i) - countOneBits(-(-vec4<i32>(-55224i, i32(-2147483648), -1i, 2147483647i))));
    var var_1 = func_5(Struct_3(var_0.c, firstLeadingBit(var_0.d.zx) & firstLeadingBit(var_0.d.wy), func_6(Struct_2(var_0.c, Struct_1(-1640f, vec3<i32>(0i, var_0.b.b.x, var_0.d.x), -1263f, var_0.a.d, 2461f), var_0.c, vec4<i32>(-1829i, 2147483647i, -25426i, 2147483647i) * vec4<i32>(u_input.d, 0i, 24678i, -4722i)), Struct_4(~u_input.a, func_2()), (global0[u_input.e.x] + global0[u_input.a]) + 222f).c, firstTrailingBit(~u_input.e.x) > ~u_input.a)).d.xyw;
    let var_2 = false;
    let var_3 = vec2<f32>((-global0[max(u_input.e.x, u_input.a)] / -(-329f)) + (1000f * (-2606f * -var_1.x)), 260f);
    let var_4 = firstTrailingBit(reverseBits(~(0i & var_0.d.x)) * (firstLeadingBit(reverseBits(23720i)) / func_5(Struct_3(var_0.b, var_0.c.b.xy, Struct_2(var_0.c, Struct_1(var_3.x, var_0.a.b, 511f, vec4<f32>(var_0.a.c, -582f, 244f, -412f), -1362f), Struct_1(-827f, var_0.c.b, var_1.x, vec4<f32>(global0[4294967295u], 1000f, 1305f, var_1.x), var_3.x), var_0.d), false)).b.x));
    var var_5 = max(reverseBits(firstTrailingBit(select(vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(24291u, u_input.a, u_input.a), u_input.e + u_input.e, select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, true, true), false)))), (vec3<u32>(14190u, 0u, ~u_input.e.x) / vec3<u32>(76475u, 14852u << u_input.e.x, ~4294967295u)) % ~clamp(select(vec3<u32>(5480u, 0u, 4294967295u), vec3<u32>(u_input.e.x, 25205u, u_input.a), var_2), ~vec3<u32>(0u, 1u, 14691u), vec3<u32>(4294967295u, u_input.e.x, u_input.a) & vec3<u32>(4294967295u, 4294967295u, u_input.e.x)));
    var_0 = func_6(func_6(func_2(), Struct_4(0u, func_6(func_6(Struct_2(var_0.b, Struct_1(var_0.a.a, vec3<i32>(var_4, 9487i, -34470i), 1000f, var_0.c.d, -959f), var_0.c, var_0.d), Struct_4(14367u, Struct_2(var_0.b, Struct_1(var_1.x, vec3<i32>(var_0.a.b.x, i32(-2147483648), var_4), 145f, vec4<f32>(110f, var_1.x, var_1.x, var_0.b.a), -605f), var_0.c, vec4<i32>(-35495i, 2147483647i, -44874i, u_input.b))), global0[4294967295u]).c, Struct_4(13547u, Struct_2(Struct_1(var_3.x, vec3<i32>(2147483647i, var_0.c.b.x, var_0.a.b.x), var_1.x, var_0.b.d, 1000f), var_0.b, var_0.b, vec4<i32>(1i, var_0.c.b.x, var_0.d.x, 2147483647i))), 887f).c), var_1.x).c, Struct_4(abs(dot(vec2<u32>(1u, 4294967295u), vec2<u32>(5009u, var_5.x) + u_input.e.xy)), func_6(Struct_2(Struct_1(-145f, vec3<i32>(-48879i, var_4, u_input.d), 1000f, var_0.c.d, 2582f), func_5(Struct_3(var_0.a, vec2<i32>(var_4, var_4), Struct_2(Struct_1(global0[var_5.x], var_0.c.b, -1006f, var_0.b.d, global0[4294967295u]), Struct_1(var_0.b.e, var_0.d.zww, 1000f, var_0.b.d, -140f), Struct_1(var_1.x, var_0.a.b, 685f, vec4<f32>(-634f, var_0.b.e, -205f, var_1.x), 564f), vec4<i32>(var_0.d.x, var_0.a.b.x, var_0.b.b.x, u_input.b)), true)), var_0.a, firstTrailingBit(vec4<i32>(u_input.c, 1i, -1i, u_input.b))), Struct_4(firstTrailingBit(var_5.x), func_2()), global0[4294967295u]).c), global0[52943u]).c;
    let x = u_input.a;
    s_output = StorageBuffer(min(-(-var_3.x), var_1.x) * select(round(-260f), var_1.x - 984f, var_2), vec2<f32>(var_0.c.d.x / ((var_0.c.c / var_1.x) / exp2(949f)), -689f * var_3.x));
}

