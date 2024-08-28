// {"0:0":[35,82,207,103,44,17,249,72,173,228,176,33,129,53,15,145,28,168,153,165,107,176,88,205,221,107,9,102,244,33,236,81]}
// Seed: 5933156648522420718

struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(0i);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(-338f, -253f, 1211f, 542f), 241f, 298f), Struct_1(vec4<f32>(710f, -1571f, -1209f, -592f), -1462f, -303f), Struct_1(vec4<f32>(-1204f, -165f, 101f, 1463f), 582f, -597f), Struct_1(vec4<f32>(-1886f, 1000f, -131f, 131f), -1000f, 1084f), Struct_1(vec4<f32>(642f, 1563f, -1115f, 100f), -376f, -520f), Struct_1(vec4<f32>(1614f, -419f, -877f, -633f), 588f, 1308f), Struct_1(vec4<f32>(-398f, 1066f, -2422f, -1316f), -206f, -221f), Struct_1(vec4<f32>(1284f, 836f, -1069f, 870f), -1143f, 1000f), Struct_1(vec4<f32>(-261f, 504f, 768f, 2217f), -1173f, 2319f), Struct_1(vec4<f32>(1155f, 569f, 1300f, 833f), 1135f, -829f), Struct_1(vec4<f32>(215f, -597f, 201f, -232f), 219f, 1384f), Struct_1(vec4<f32>(1296f, -344f, 612f, -183f), -277f, 896f), Struct_1(vec4<f32>(311f, 450f, -1717f, 1396f), -280f, 982f), Struct_1(vec4<f32>(-965f, -790f, -987f, -1026f), -114f, -545f), Struct_1(vec4<f32>(-570f, -1051f, -579f, 279f), 217f, -719f), Struct_1(vec4<f32>(-280f, -1510f, -1029f, 275f), -707f, 215f), Struct_1(vec4<f32>(1347f, -130f, -1534f, -303f), -1723f, 588f), Struct_1(vec4<f32>(-1377f, 940f, 1316f, -1275f), -628f, -1824f), Struct_1(vec4<f32>(629f, -416f, -518f, 1000f), -1000f, -1631f), Struct_1(vec4<f32>(116f, 1000f, 697f, 1169f), -1218f, -591f));

var<private> global2: vec3<u32> = vec3<u32>(63690u, 1u, 0u);

var<private> global3: array<i32, 5>;

var<private> global4: array<i32, 1>;

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_4) -> f32 {
    global4 = array<i32, 1>();
    global2 = arg_2.a.yzx;
    var var_0 = 0i;
    var_0 = countOneBits(dot(~vec4<i32>(global4[4294967295u] ^ 0i, 2147483647i * 0i, -30488i & -1i, ~global0[0u]), vec4<i32>(global0[global2.x] % u_input.d.x, global0[4294967295u * global2.x], 13067i - 1i, global4[abs(23497u)]) | countOneBits(vec4<i32>(-13096i, global3[global2.x], 24224i, global0[28510u]))));
    global2 = select(~abs(~vec3<u32>(global2.x, 1u, 8050u) + arg_2.a.xxx), arg_2.a.yzx, ~min(152u, 4294967295u - 1u) > ~(~0u ^ global2.x));
    return -1000f + -(-ceil(arg_1.x) / sign(min(1297f, -1124f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> Struct_3 {
    global4 = array<i32, 1>();
    let var_0 = Struct_1(vec4<f32>(step(1167f, min(1400f, -285f)), 394f, 434f, sign(-428f / 2005f)) * vec4<f32>(-(-290f) * -(-788f), -(-1500f) * round(199f), -1000f, -(422f * -191f)), -(356f - -(-1434f)), -func_3(vec4<bool>(true & false, !false, false, true), vec2<f32>(-1001f, -191f) + trunc(vec2<f32>(805f, 357f)), arg_0));
    let var_1 = -427f;
    var var_2 = ceil(var_0.a.wxx);
    global0 = array<i32, 1>();
    return Struct_3(Struct_2(global3[~(~4294967295u)] - min(i32(-2147483648), global3[arg_1.a.x]), var_1 / -(var_1 / var_1), ~(-13749i), Struct_1(vec4<f32>(var_0.c / -127f, max(1454f, var_1), -var_2.x, round(392f)), 1118f, 432f), var_0), 1u, 14219u, Struct_1(-vec4<f32>(var_2.x, func_3(vec4<bool>(false, true, false, false), vec2<f32>(var_2.x, var_0.a.x), Struct_4(vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, 1u))), var_0.a.x, var_0.a.x), var_2.x, 1510f), Struct_2(max(global4[~71065u], max(-60445i ^ global3[0u], ~2147483647i)), round((var_0.c - 360f) + (496f - var_0.b)), global0[44719u], global1[abs(abs(41581u >> global2.x))], Struct_1(vec4<f32>(var_1 - var_2.x, -1000f / -349f, var_0.b, -var_2.x), var_2.x, -round(var_0.a.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global0 = array<i32, 1>();
    var var_0 = Struct_2(-54377i & global3[18793u], -(-(-arg_1.e.b)), global0[arg_0.c] | ~(-10336i), func_2(Struct_4(abs(vec4<u32>(53562u, global2.x, arg_2.c, arg_0.b)) * countOneBits(vec4<u32>(2746u, arg_0.c, 12568u, 1u))), Struct_4(~(~vec4<u32>(40670u, 0u, global2.x, arg_1.c)))).d, arg_0.a.d);
    var var_1 = reverseBits(-25893i);
    var var_2 = -(-1917f / (1000f + (func_3(vec4<bool>(false, true, false, false), vec2<f32>(arg_0.a.d.b, 1301f), Struct_4(vec4<u32>(arg_0.b, 4294967295u, arg_0.b, global2.x))) / trunc(1499f))));
    global2 = select(~vec3<u32>(select(9600u, 1u, true), arg_0.c % arg_1.c, max(0u, arg_1.c)), ~vec3<u32>(27354u ^ arg_0.b, 23102u, firstTrailingBit(arg_1.b)), select(select(!vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), vec3<bool>(!false, !false, !true), all(!vec2<bool>(false, false)))) << ((~vec3<u32>(12393u, 4294967295u, global2.x) - (vec3<u32>(global2.x, arg_2.b, arg_0.c) & ~vec3<u32>(31834u, 4294967295u, arg_0.c))) % (reverseBits(~vec3<u32>(arg_1.b, 0u, arg_1.b)) >> (firstLeadingBit(vec3<u32>(1u, 0u, 2627u)) * reverseBits(vec3<u32>(33227u, global2.x, arg_1.c)))));
    return Struct_2(1i, -(-116f), reverseBits(11529i) / -(-30110i), Struct_1(vec4<f32>(-(-2147f * 527f), arg_2.a.e.c, arg_2.a.d.c - ceil(1000f), arg_2.e.b * arg_0.e.e.c), -(floor(-479f) * (var_0.d.b + 100f)), arg_1.e.b), Struct_1(-(-vec4<f32>(arg_2.a.d.b, 198f, var_0.e.c, arg_1.e.b)), 379f - -(arg_2.a.d.b / -563f), -(529f - 146f)));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = global0[~clamp((~4294967295u | ~global2.x) ^ ~dot(vec2<u32>(global2.x, global2.x), global2.xz), ~0u, select(46637u, global2.x, all(vec3<bool>(false, true, false))))];
    let var_1 = sign(arg_1.e.a.yw);
    var var_2 = dot(min(vec2<u32>(1u, min(8924u, global2.x)), global2.zz), ~abs(vec2<u32>(4294967295u, global2.x) ^ vec2<u32>(global2.x, 65261u))) + dot(vec3<u32>(27402u << abs(global2.x), ~(~global2.x), ~4294967295u), (vec3<u32>(global2.x, 8005u, global2.x) ^ vec3<u32>(21233u, 1u, 50269u)) & vec3<u32>(48219u, ~global2.x, global2.x));
    global0 = array<i32, 1>();
    let var_3 = ~(~global2.x | 1u);
    return Struct_4(vec4<u32>(max(select(1u, var_3, false), 37951u), 1u, global2.x | 42785u, select(global2.x >> var_3, ~global2.x, !true)) / ~abs(select(vec4<u32>(var_3, 14981u, global2.x, 4294967295u), vec4<u32>(0u, 38377u, 51768u, var_3), false)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    var var_0 = !false;
    let var_1 = func_2(Struct_4(~arg_0.a), arg_0).e;
    global2 = arg_1.a.xwx;
    global3 = array<i32, 5>();
    global0 = array<i32, 1>();
    return global4[27129u] & -(((u_input.a.x & 1i) ^ countOneBits(arg_2.x)) << (arg_1.a.x - (0u / 1u)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(func_6(func_5(0i, func_4(func_2(Struct_4(vec4<u32>(47792u, 4294967295u, 26678u, global2.x)), Struct_4(vec4<u32>(global2.x, 0u, 1u, global2.x))), Struct_3(Struct_2(global0[61023u], -543f, global3[250u], global1[4294967295u], Struct_1(vec4<f32>(380f, 1274f, 1186f, 1000f), -146f, -1500f)), 57360u, 53759u, Struct_1(vec4<f32>(1105f, -553f, 1266f, -767f), 740f, 645f), Struct_2(-44635i, -1402f, global4[7985u], global1[global2.x], Struct_1(vec4<f32>(1004f, 419f, 684f, 1130f), 735f, 170f))), Struct_3(Struct_2(global0[global2.x], 1000f, global0[global2.x], Struct_1(vec4<f32>(496f, 1202f, -106f, -2302f), 928f, -634f), global1[4294967295u]), global2.x, 63649u, global1[global2.x], Struct_2(global3[34735u], -1178f, 1720i, global1[global2.x], global1[4294967295u])))), Struct_4(firstTrailingBit(clamp(vec4<u32>(0u, 14717u, 4294967295u, global2.x), vec4<u32>(4294967295u, 0u, 0u, global2.x), vec4<u32>(0u, global2.x, global2.x, global2.x)))), vec3<i32>(-21533i, select(global3[36784u], -global4[4294967295u], true), -20332i), 15861u), -1230f, ~(0i & abs(~global3[global2.x])), Struct_1(-(-vec4<f32>(-220f, -1000f, 352f, -1000f)), 947f - -(872f - -1934f), func_3(vec4<bool>(false, true == false, any(vec3<bool>(false, false, true)), !false), -vec2<f32>(465f, -350f), Struct_4(vec4<u32>(0u, 1u, global2.x, global2.x) & vec4<u32>(72689u, global2.x, 9594u, global2.x)))), global1[min((26020u ^ global2.x) ^ global2.x, global2.x) / global2.x]);
    global3 = array<i32, 5>();
    global3 = array<i32, 5>();
    var var_1 = select(select(select(select(!vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), !true), !vec3<bool>(true, true, true), !true & select(false, false, true)), vec3<bool>(!all(vec3<bool>(false, false, false)), func_2(Struct_4(vec4<u32>(global2.x, 52151u, 0u, global2.x)), Struct_4(vec4<u32>(global2.x, global2.x, global2.x, 4294967295u))).a.c <= ~(-1i), select(true, true, -1605f == var_0.e.a.x)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), vec3<bool>(false, !any(vec4<bool>(true, false, false, false)), !(!true)), vec3<bool>(false, !(!false), false));
    global3 = array<i32, 5>();
    return global1[~abs(~global2.x)];
}

fn func_7(arg_0: Struct_1) -> i32 {
    let var_0 = func_2(func_5(1i, Struct_2(abs(global4[global2.x]) - global0[0u + global2.x], arg_0.b, global3[~global2.x * 30087u], arg_0, func_1(vec3<i32>(global0[2864u], -8557i, global3[1u])))), func_5(-12834i | (-44126i + ~(-15756i)), func_4(func_2(func_5(0i, Struct_2(22429i, arg_0.b, -27704i, global1[global2.x], Struct_1(arg_0.a, -1239f, arg_0.a.x))), func_5(-1i, Struct_2(global4[global2.x], arg_0.c, 0i, Struct_1(arg_0.a, arg_0.b, 1176f), Struct_1(arg_0.a, 1176f, arg_0.b)))), func_2(Struct_4(vec4<u32>(1u, global2.x, 87001u, 59807u)), func_5(global0[1u], Struct_2(1i, 1602f, 1i, arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.c)))), func_2(Struct_4(vec4<u32>(1u, 7808u, 64165u, 0u)), Struct_4(vec4<u32>(global2.x, 123085u, 29900u, global2.x)))))).a;
    let var_1 = abs(0i + -(-1i));
    var var_2 = Struct_3(Struct_2(var_0.c, -627f, ~var_1, Struct_1(sign(arg_0.a), -(-(-184f)), exp2(arg_0.c + arg_0.b)), arg_0), ~(~(global2.x + global2.x)) - ~global2.x, 0u, func_2(func_5(clamp(var_1, var_0.a, -1i), var_0), Struct_4(abs(vec4<u32>(global2.x, global2.x, global2.x, global2.x)) * abs(vec4<u32>(9920u, 13115u, global2.x, 4294967295u)))).e.e, var_0);
    let var_3 = !select(select(select(!vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), !false), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), all(!vec3<bool>(false, true, true))), !true);
    let var_4 = var_3.x;
    return global0[global2.x];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~(dot(vec3<i32>(2824i, 1i, global0[1u]), u_input.d) ^ (global0[37005u] * global3[1u])), (global3[global2.x] + ~global3[global2.x]) << ~max(global2.x, 73878u), global0[~11792u], dot(firstLeadingBit(u_input.d.xy) / ~vec2<i32>(i32(-2147483648), global0[global2.x]), countOneBits(clamp(u_input.a, vec2<i32>(global3[0u], -12375i), vec2<i32>(-1i, global4[global2.x]))))) + vec4<i32>(func_7(func_1(vec3<i32>(0i, global3[global2.x], 17650i) % u_input.d)), -40977i, func_6(Struct_4(vec4<u32>(4294967295u, global2.x, 4294967295u, 1806u)), Struct_4(vec4<u32>(global2.x, 4294967295u, 4294967295u, 0u)), ~u_input.d, 30303u) >> 30269u, dot(u_input.d.xy, vec2<i32>(global4[38072u], -37398i)));
    let var_1 = firstLeadingBit(vec2<u32>(~(~global2.x), func_5(global3[0u] ^ 8985i, Struct_2(global4[23727u], -853f, u_input.a.x, global1[global2.x], Struct_1(vec4<f32>(609f, 288f, -546f, 1497f), 1000f, 746f))).a.x) + (vec2<u32>(4294967295u, ~31320u) >> ~global2.zy));
    var var_2 = Struct_4(select(~(~vec4<u32>(var_1.x, global2.x, global2.x, var_1.x)) / vec4<u32>(~0u, abs(21108u), ~global2.x, select(1u, 0u, true)), ~(~abs(vec4<u32>(44920u, global2.x, var_1.x, global2.x))), any(vec3<bool>(any(vec3<bool>(false, false, false)), !false, all(vec3<bool>(false, false, true))))));
    var var_3 = func_4(Struct_3(Struct_2(-global0[12244u], func_2(Struct_4(vec4<u32>(var_2.a.x, 13532u, var_2.a.x, var_2.a.x)), Struct_4(vec4<u32>(1u, 0u, var_2.a.x, 32239u))).e.d.a.x, dot(vec2<i32>(-23862i, 2147483647i), vec2<i32>(global4[0u], 22069i) / vec2<i32>(u_input.d.x, 18892i)), global1[~(69929u << var_1.x)], Struct_1(trunc(vec4<f32>(597f, 1217f, 1207f, 1098f)), func_3(vec4<bool>(true, true, false, true), vec2<f32>(-492f, 598f), Struct_4(var_2.a)), 1102f)), ~6995u, var_1.x, global1[59883u], Struct_2(~firstTrailingBit(global4[var_2.a.x]), -826f, 80491i, func_2(func_5(var_0.x, Struct_2(global0[var_2.a.x], 635f, 8357i, global1[global2.x], Struct_1(vec4<f32>(-1307f, 1611f, 153f, 774f), 916f, 376f))), Struct_4(vec4<u32>(4294967295u, var_1.x, 6848u, var_2.a.x))).a.e, func_2(func_5(1i, Struct_2(1i, 113f, -7957i, Struct_1(vec4<f32>(1484f, -1494f, 361f, 1210f), -472f, 584f), global1[var_1.x])), func_5(1i, Struct_2(2147483647i, -822f, 1i, global1[1u], global1[4294967295u]))).e.d)), Struct_3(func_4(Struct_3(Struct_2(u_input.c, -1391f, global3[var_2.a.x], Struct_1(vec4<f32>(1173f, -2390f, 1191f, -574f), 672f, 2036f), global1[var_1.x]), var_2.a.x ^ global2.x, var_2.a.x, func_1(vec3<i32>(-1i, u_input.c, -37000i)), Struct_2(-56296i, 1347f, global3[var_2.a.x], global1[1u], Struct_1(vec4<f32>(751f, 1000f, 435f, 857f), -584f, 1050f))), Struct_3(Struct_2(18278i, 822f, var_0.x, Struct_1(vec4<f32>(2148f, -1158f, 610f, 1000f), -850f, 1661f), Struct_1(vec4<f32>(-1954f, 794f, -1098f, -692f), 380f, -431f)), 56220u ^ 21595u, 1u, func_1(vec3<i32>(1i, i32(-2147483648), global3[global2.x])), func_4(Struct_3(Struct_2(global4[4294967295u], 1426f, global4[0u], Struct_1(vec4<f32>(453f, 1466f, 535f, 1000f), 476f, 1192f), global1[var_1.x]), 1u, global2.x, Struct_1(vec4<f32>(-482f, -376f, 602f, -1769f), -1588f, -1531f), Struct_2(10794i, -168f, -34195i, Struct_1(vec4<f32>(419f, 1755f, 1000f, -1696f), -613f, -111f), Struct_1(vec4<f32>(-498f, -1562f, 337f, 289f), 954f, -1429f))), Struct_3(Struct_2(u_input.b, -1732f, global0[var_2.a.x], Struct_1(vec4<f32>(427f, -333f, -910f, -310f), 2181f, -1785f), global1[var_1.x]), var_2.a.x, var_1.x, Struct_1(vec4<f32>(1000f, 1669f, 786f, -952f), 1174f, 126f), Struct_2(global3[var_1.x], 686f, -1i, Struct_1(vec4<f32>(347f, -1669f, -1785f, -2152f), 803f, 582f), global1[1u])), Struct_3(Struct_2(3424i, -105f, 2991i, Struct_1(vec4<f32>(-452f, 1502f, -520f, -1000f), -255f, 1000f), global1[34979u]), var_2.a.x, 5347u, global1[var_2.a.x], Struct_2(var_0.x, -691f, i32(-2147483648), Struct_1(vec4<f32>(607f, -1000f, -1000f, 1322f), 1016f, 817f), global1[var_1.x])))), Struct_3(func_2(Struct_4(vec4<u32>(var_2.a.x, global2.x, var_1.x, var_2.a.x)), Struct_4(vec4<u32>(var_2.a.x, global2.x, 1u, var_1.x))).a, 4294967295u, ~var_2.a.x, func_2(Struct_4(var_2.a), Struct_4(var_2.a)).a.d, func_2(Struct_4(var_2.a), Struct_4(var_2.a)).e)), ~(~(var_1.x ^ 2331u)), ~(~var_1.x) << firstLeadingBit(1u * 33613u), Struct_1(-vec4<f32>(1831f, 193f, 1028f, 1065f) * -vec4<f32>(1540f, -216f, 1948f, -926f), func_3(vec4<bool>(false, true, true, true), vec2<f32>(128f, -1178f) * vec2<f32>(-666f, 904f), Struct_4(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x))), (-147f + 263f) / -841f), func_4(Struct_3(Struct_2(59297i, 1939f, var_0.x, global1[var_1.x], Struct_1(vec4<f32>(153f, -237f, 498f, 215f), -1179f, 122f)), global2.x, 75772u, global1[~4294967295u], Struct_2(1i, 1072f, 2147483647i, global1[4294967295u], global1[global2.x])), Struct_3(func_2(Struct_4(var_2.a), Struct_4(var_2.a)).a, global2.x & var_1.x, var_2.a.x, global1[global2.x], Struct_2(-2280i, 976f, -27650i, Struct_1(vec4<f32>(747f, -585f, 1728f, 1266f), 1167f, 194f), global1[var_2.a.x])), func_2(func_5(-1i, Struct_2(u_input.d.x, 1000f, 13320i, Struct_1(vec4<f32>(1742f, 1431f, 1000f, -758f), -1000f, -1756f), global1[global2.x])), Struct_4(var_2.a)))), Struct_3(Struct_2(dot(vec2<i32>(u_input.a.x, global3[var_1.x]), u_input.d.yy), ceil(step(245f, -257f)), max(global4[1u], -37998i) >> var_1.x, func_4(Struct_3(Struct_2(1054i, -1000f, 0i, global1[226u], global1[38975u]), 0u, 6105u, global1[22276u], Struct_2(i32(-2147483648), 1271f, -1i, global1[global2.x], Struct_1(vec4<f32>(-270f, -1120f, -332f, -174f), 347f, -212f))), Struct_3(Struct_2(0i, -206f, global3[4425u], global1[68881u], Struct_1(vec4<f32>(-420f, 220f, 465f, 960f), 696f, -1298f)), var_1.x, 0u, global1[121987u], Struct_2(global0[var_2.a.x], -851f, var_0.x, global1[var_1.x], Struct_1(vec4<f32>(-200f, 949f, 1000f, -1397f), -148f, 488f))), Struct_3(Struct_2(var_0.x, 818f, -8648i, Struct_1(vec4<f32>(1444f, 1315f, 1290f, -330f), -1447f, -878f), Struct_1(vec4<f32>(851f, -1095f, 871f, 590f), 347f, 1000f)), var_1.x, var_1.x, Struct_1(vec4<f32>(531f, 1000f, -415f, 962f), 1043f, -874f), Struct_2(21222i, 168f, global3[var_2.a.x], global1[global2.x], global1[0u]))).e, Struct_1(vec4<f32>(1079f, -757f, -673f, -3077f), -1448f, -726f / -1031f)), var_2.a.x, 29725u, global1[5763u], Struct_2(0i, 535f, -1i << dot(var_2.a.zzw, var_2.a.yzx), global1[dot(vec3<u32>(20559u, 1u, var_1.x) % var_2.a.xxx, var_2.a.wwx)], func_1(u_input.d))));
    var var_4 = vec2<bool>(true, select(true, !true, !(!true)) && (all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)) == all(!vec4<bool>(true, false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.e.a.xzy, -global0[var_1.x], 16748u, reverseBits(-vec4<i32>(-6620i, ~global3[16011u], 34770i, func_6(Struct_4(vec4<u32>(var_1.x, var_2.a.x, 4294967295u, 0u)), Struct_4(vec4<u32>(global2.x, var_2.a.x, var_2.a.x, var_1.x)), u_input.d, var_1.x))), vec3<i32>(dot(~vec3<i32>(16623i, global0[4294967295u], -1i) % vec3<i32>(var_0.x, var_3.a, 2147483647i), u_input.d), (0i % (37077i << 1u)) - 29071i, ((global0[0u] << var_1.x) | dot(vec4<i32>(u_input.d.x, i32(-2147483648), u_input.b, global3[global2.x]), vec4<i32>(global4[var_2.a.x], -1i, global3[global2.x], -48158i))) - i32(-2147483648)));
}

