// {"0:0":[144,25,127,188]}
// Seed: 3272385947885740127

struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<bool>(true, true, true), false, 323f, vec4<i32>(-6805i, -1i, 31479i, 0i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, true), false, -1321f, vec4<i32>(49335i, 32484i, 32542i, 0i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, true, true), true, 250f, vec4<i32>(-1i, 2147483647i, 1i, 56116i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), false, -1000f, vec4<i32>(i32(-2147483648), 287i, 2147483647i, i32(-2147483648)), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), true, 289f, vec4<i32>(1i, 2147483647i, 2147483647i, 2071i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), false, -933f, vec4<i32>(i32(-2147483648), -16704i, 4474i, 1i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, false, true), true, -680f, vec4<i32>(113392i, -73684i, 1i, -1i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), true, -1120f, vec4<i32>(73136i, i32(-2147483648), -1i, 75186i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, false), false, 602f, vec4<i32>(-1i, 0i, 20979i, 18487i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, false), false, 1000f, vec4<i32>(2147483647i, 8100i, -38352i, 2147483647i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, true, true), false, -1305f, vec4<i32>(2147483647i, 2147483647i, 12926i, -34739i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, true, true), false, 215f, vec4<i32>(-37641i, -2026i, 20219i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, false), false, 188f, vec4<i32>(10198i, -1i, -36253i, 1i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, true, true), true, 306f, vec4<i32>(-1i, -40870i, -97755i, 0i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, false), true, 193f, vec4<i32>(-5468i, 20224i, 30766i, -1i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), false, -1105f, vec4<i32>(10655i, 31944i, i32(-2147483648), -6146i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, true), true, 520f, vec4<i32>(i32(-2147483648), -42036i, i32(-2147483648), 58923i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, false), false, -1421f, vec4<i32>(-15177i, -1i, 2147483647i, 1i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, false, false), true, 522f, vec4<i32>(0i, 0i, -39082i, 0i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, true), false, -348f, vec4<i32>(-35862i, 2147483647i, 2147483647i, 27683i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, true, true), true, 630f, vec4<i32>(42767i, 27863i, 2147483647i, 0i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, false, true), true, -767f, vec4<i32>(i32(-2147483648), 1i, 1i, 2147483647i), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, true, false), false, 198f, vec4<i32>(9698i, 1i, 41281i, -39449i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(false, false, false), true, -658f, vec4<i32>(i32(-2147483648), 45163i, 13726i, -4337i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, true), false, -1842f, vec4<i32>(-64041i, 10911i, -1i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, false), true, 1583f, vec4<i32>(-31754i, 43735i, 0i, 16593i), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, true), false, -716f, vec4<i32>(2147483647i, 8519i, 80534i, -15428i), vec4<bool>(false, false, true, true)));

var<private> global1: vec3<bool>;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 12> = array<u32, 12>(1u, 25631u, 431u, 4294967295u, 6268u, 0u, 6759u, 14688u, 4294967295u, 28582u, 4294967295u, 1u);

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(false, false, true), false, 301f, vec4<i32>(0i, i32(-2147483648), 28435i, -803i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), false, -1447f, vec4<i32>(-1i, -43420i, -1i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, false), false, -1003f, vec4<i32>(-1i, 62493i, -45582i, 0i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, false), true, -1801f, vec4<i32>(37364i, i32(-2147483648), 2147483647i, 0i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, true), true, 296f, vec4<i32>(2147483647i, 24178i, -11834i, 8519i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, false), true, -954f, vec4<i32>(0i, -23422i, 2147483647i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, false), false, 1361f, vec4<i32>(-41277i, -9872i, -36479i, 13879i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, false), false, 739f, vec4<i32>(22569i, 27607i, -21290i, 2273i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, true, false), false, 1000f, vec4<i32>(0i, i32(-2147483648), 1i, -40224i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), true, -1000f, vec4<i32>(1i, 35481i, -1i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, true, true), true, 577f, vec4<i32>(2147483647i, 22973i, 0i, 2147483647i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), true, 309f, vec4<i32>(27597i, -34222i, -1i, 51198i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, true), true, 459f, vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, true, false), true, 282f, vec4<i32>(-15705i, 14116i, -1i, -1i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, true, false), true, -689f, vec4<i32>(-8093i, -7447i, 0i, -46713i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false), true, -220f, vec4<i32>(i32(-2147483648), -1i, -13697i, 26536i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, true), true, 841f, vec4<i32>(1i, 4500i, 14318i, 1i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, false), true, 783f, vec4<i32>(23176i, -1i, -43785i, 0i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, false), false, 1710f, vec4<i32>(42606i, -15761i, 72978i, -1i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, true, true), true, 942f, vec4<i32>(-53217i, 2147483647i, 6087i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, false), true, -409f, vec4<i32>(i32(-2147483648), -65231i, -1i, -39278i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, false, false), false, 177f, vec4<i32>(-31671i, -42021i, 1i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), true, -1581f, vec4<i32>(2147483647i, -23999i, -43506i, 24174i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, true, true), true, 1020f, vec4<i32>(40459i, 73453i, 12681i, -4476i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, false, true), false, -204f, vec4<i32>(2147483647i, i32(-2147483648), 9094i, 1i), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, false), false, -607f, vec4<i32>(i32(-2147483648), 1i, -53969i, 2147483647i), vec4<bool>(true, false, true, true)));

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = true;
    let var_1 = Struct_2(60729u << ~(164310u + (19301u >> 20698u)), abs(dot(vec3<u32>(global3[50842u], 1u, 0u) & select(vec3<u32>(0u, 4294967295u, 115051u), vec3<u32>(global3[global3[85440u]], 0u, 65271u), var_0), min(vec3<u32>(global3[global3[1u]], global3[1u], 59910u), vec3<u32>(global3[1u], global3[global3[global3[global3[global3[29215u]]]]], 23120u)))), !(!select(select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, true, global1.x)), !vec3<bool>(var_0, true, true), !true)), Struct_1(!select(!vec3<bool>(global1.x, true, global1.x), !vec3<bool>(false, false, global1.x), false), any(select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(global1.x, false, var_0, true), global1.x), !vec4<bool>(false, false, var_0, global1.x), any(vec3<bool>(false, true, true)))), abs(1188f / 1467f) / (-(-1534f) - 321f), abs(-vec4<i32>(-18063i, u_input.a, 38586i, -9647i)) | reverseBits(abs(vec4<i32>(1i, -1i, u_input.a, 1i))), select(vec4<bool>(!true, !false, var_0, !false), !select(vec4<bool>(true, var_0, true, false), vec4<bool>(true, global1.x, var_0, var_0), var_0), (global1.x | var_0) | true)), countOneBits(abs(~vec3<u32>(global3[global3[9591u]], global3[38262u], global3[global3[43603u]])) + firstTrailingBit(vec3<u32>(global3[global3[global3[0u]]], 31270u, 1u))));
    global4 = array<Struct_1, 26>();
    var var_2 = ~(i32(-2147483648)) - -global2.x;
    let var_3 = var_0;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(arg_1.d.a.x, select(arg_1.c.x, any(arg_1.d.e.zwx), select(global1.x, func_3(arg_0.xwy + vec3<i32>(-75794i, 2147483647i, 2147483647i)), !select(arg_1.c.x, false, false))), any(arg_1.d.e.xxx), global1.x);
    let var_1 = arg_0;
    let var_2 = min(arg_0.yy, -reverseBits(select(global2.zw, global2.wy, arg_1.d.a.zx))) % (var_1.yx % vec2<i32>(select(~(-57122i), ~arg_0.x, global1.x), -min(var_1.x, 0i)));
    var var_3 = arg_1;
    global4 = array<Struct_1, 26>();
    return vec3<bool>(any(select(var_0.zzw, var_3.d.a, arg_1.d.e.x)), 563f != -var_3.d.c, arg_1.c.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = ~arg_3 & ~(~vec4<u32>(global3[10657u], arg_3.x, global3[global3[1u]], 48000u) + abs(vec4<u32>(global3[global3[4294967295u]], global3[arg_3.x], 0u, global3[1u])));
    global4 = array<Struct_1, 26>();
    global0 = array<Struct_1, 27>();
    global2 = vec4<i32>(max(arg_1, min(u_input.a | arg_0, dot(vec2<i32>(-9463i, arg_1), vec2<i32>(u_input.a, 1i)))), abs(-(i32(-2147483648))), u_input.a, -1982i / arg_0) ^ ((min(~vec4<i32>(global2.x, arg_0, i32(-2147483648), arg_0), vec4<i32>(-1i, 2147483647i, u_input.a, global2.x)) / firstLeadingBit(reverseBits(vec4<i32>(0i, global2.x, global2.x, arg_0)))) | min(select(vec4<i32>(i32(-2147483648), -1i, u_input.a, u_input.a), -vec4<i32>(18112i, i32(-2147483648), arg_0, 26604i), select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(global1.x, global1.x, arg_2.x, true), true)), vec4<i32>(arg_0, ~global2.x, ~global2.x, u_input.a >> global3[global3[4294967295u]])));
    return vec4<bool>(163f < -ceil(-(-1000f)), arg_2.x, false, !false);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(!(!(!(!vec3<bool>(true, false, global1.x)))), !any(select(!vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, false), !vec3<bool>(true, global1.x, false))), exp2(-(-1037f / -203f)) - -(exp2(-1000f) * (746f - -556f)), ~(-((vec4<i32>(i32(-2147483648), 61393i, 1i, -1i) % vec4<i32>(u_input.a, global2.x, -1935i, -32344i)) << (vec4<u32>(49943u, global3[1u], 10472u, 4294967295u) * vec4<u32>(global3[1u], 15633u, 46809u, 66146u)))), func_4(firstTrailingBit(-1941i - -2535i), global2.x, !select(!vec3<bool>(true, true, global1.x), func_2(vec4<i32>(u_input.a, 853i, global2.x, u_input.a), Struct_2(global3[global3[1u]], global3[4294967295u], vec3<bool>(global1.x, true, global1.x), global0[global3[global3[global3[22244u]]]], vec3<u32>(global3[global3[69892u]], 1u, global3[global3[4294967295u]])), vec4<f32>(-1160f, -1791f, -236f, 2322f)), func_3(vec3<i32>(u_input.a, -2896i, 20385i))), ~(~vec4<u32>(0u, 0u, 31294u, global3[100607u]) >> vec4<u32>(global3[4294967295u], global3[global3[global3[4294967295u]]], 18685u, 1u))));
    var var_1 = Struct_3(global4[global3[abs(global3[0u] / min(~9231u, global3[1u]))]]);
    var var_2 = 28508u;
    var_1 = Struct_3(global4[max(abs(8635u), ~reverseBits(global3[4294967295u])) << global3[dot(vec4<u32>(global3[global3[13627u]], global3[global3[4294967295u]], 4294967295u, global3[global3[global3[global3[global3[global3[1u]]]]]]) | (vec4<u32>(4294967295u, 15253u, 0u, global3[27511u]) * vec4<u32>(4294967295u, 0u, 39176u, global3[69229u])), ~(~vec4<u32>(4294967295u, 1u, global3[global3[1u]], 4294967295u)))]]);
    var_2 = ~(~67531u) & 4294967295u;
    return Struct_1(vec3<bool>(!(!any(vec2<bool>(true, global1.x))), !((4294967295u > global3[4294967295u]) && (var_0.c < 1000f)), true), func_4(~1030i, -4055i, vec3<bool>(select(var_1.a.a.x, var_0.e.x, false), !true, !false), ~(~min(vec4<u32>(12288u, global3[global3[global3[1u]]], 4294967295u, 0u), vec4<u32>(4294967295u, global3[9520u], 1u, 46837u)))).x, 174f, min(var_0.d - firstTrailingBit(vec4<i32>(u_input.a, var_0.d.x, -1i, var_0.d.x) ^ var_0.d), -(vec4<i32>(0i, u_input.a, var_0.d.x, global2.x) >> vec4<u32>(global3[global3[global3[74423u]]], 0u, global3[9971u], global3[global3[55134u]])) + vec4<i32>(45514i, -1i, u_input.a, reverseBits(global2.x))), vec4<bool>(func_4(var_1.a.d.x, -u_input.a % -(i32(-2147483648)), var_1.a.e.yww, vec4<u32>(4294967295u, global3[global3[4294967295u]], 1u, 4294967295u) ^ vec4<u32>(0u, global3[global3[global3[4294967295u]]], global3[global3[45043u]], 34535u)).x, true, func_4(firstLeadingBit(i32(-2147483648)), var_1.a.d.x, var_0.a, reverseBits(vec4<u32>(1u, global3[57407u], 0u, global3[global3[global3[1u]]]) + vec4<u32>(8430u, 55939u, global3[46123u], global3[global3[global3[55673u]]]))).x, false));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global4 = array<Struct_1, 26>();
    let var_0 = Struct_3(global0[(37932u - 41225u) / 0u]);
    let var_1 = arg_0.e.xx;
    global2 = ~clamp(arg_0.d.d, -vec4<i32>(~0i, global2.x, arg_0.d.d.x, ~u_input.a), vec4<i32>(8837i, (10303i + global2.x) ^ (global2.x / 20449i), -firstLeadingBit(var_0.a.d.x), 16768i));
    let var_2 = any(vec4<bool>(!arg_0.d.e.x, var_0.a.b, !arg_0.d.b & !true, !((20145i << 37578u) < 0i)));
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    global2 = ~max(countOneBits(vec4<i32>(-22465i, -39305i, func_5(Struct_2(76503u, 12151u, vec3<bool>(true, global1.x, false), Struct_1(arg_0.a.a, arg_1, -447f, arg_0.a.d, arg_0.a.e), vec3<u32>(global3[26866u], 35862u, arg_2.x))).a.d.x, 0i)), select(arg_0.a.d, max(arg_0.a.d, arg_0.a.d), arg_0.a.e) & vec4<i32>(countOneBits(0i), -1i, -2186i, -8926i));
    global1 = vec3<bool>(false & (arg_0.a.d.x < abs(global2.x)), !(false && (!arg_0.a.e.x & !arg_1)), global1.x);
    global4 = array<Struct_1, 26>();
    global3 = array<u32, 12>();
    let var_0 = ~vec3<u32>(arg_2.x, global3[abs(select(arg_2.x, 8298u, false)) / 1u], firstTrailingBit(arg_2.x));
    return func_5(Struct_2(var_0.x, 8479u, !vec3<bool>(!true, any(vec4<bool>(false, false, arg_1, true)), 0i != 2147483647i), func_5(Struct_2(1u, ~0u, !arg_0.a.e.wxz, global4[63325u], vec3<u32>(0u, global3[70792u], 0u))).a, ~(~var_0)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = global1.yz;
    var var_1 = dot(clamp(firstLeadingBit(vec4<u32>(24088u, 1u, 33178u, global3[0u])) >> vec4<u32>(1u, 4294967295u + global3[1u], ~global3[3732u], 30133u), vec4<u32>(global3[~(~global3[global3[global3[1u]]])], global3[~global3[1u]] >> 4294967295u, 1u, global3[global3[(global3[global3[69391u]] ^ 31801u) + min(25508u, 6667u)]]), vec4<u32>(0u, global3[dot(vec4<u32>(global3[global3[global3[global3[46121u]]]], 56574u, 27975u, 1u), vec4<u32>(0u, global3[global3[0u]], global3[80116u], global3[1u]))] * firstTrailingBit(0u), max(5963u, 17561u), 40543u)), vec4<u32>(0u, global3[~(~global3[global3[0u << global3[41884u]]])], 798u, (clamp(global3[47878u], 34197u, 41967u) & global3[dot(vec3<u32>(0u, global3[1u], 0u), vec3<u32>(944u, 1u, 0u))]) + ((76364u - global3[global3[0u]]) & global3[dot(vec2<u32>(131496u, 0u), vec2<u32>(4294967295u, 1u))])));
    var var_2 = 0u;
    global0 = array<Struct_1, 27>();
    let var_3 = func_1().b;
    return Struct_1(vec3<bool>(true, !(-arg_1.a.c >= -(-162f)), arg_1.a.b), (arg_0.c / -117f) <= exp2((arg_0.c * arg_1.a.c) / -(-1000f)), -arg_0.c, vec4<i32>(global2.x - -arg_0.d.x, func_1().d.x, global2.x, -(-3244i)), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = func_7(global4[~70252u], func_6(func_5(Struct_2(global3[global3[0u] ^ 5593u], global3[firstLeadingBit(0u)], select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, true, global1.x)), func_1(), ~vec3<u32>(global3[global3[global3[global3[global3[global3[11885u]]]]]], 83269u, global3[global3[global3[global3[4294967295u]]]]))), func_5(Struct_2(global3[125819u], 102934u, vec3<bool>(global1.x, global1.x, global1.x), Struct_1(vec3<bool>(false, global1.x, true), global1.x, 1602f, vec4<i32>(u_input.a, u_input.a, 24926i, -8898i), vec4<bool>(global1.x, global1.x, global1.x, true)), vec3<u32>(global3[4294967295u], global3[global3[22065u]], 47355u))).a.d.x <= (dot(vec4<i32>(global2.x, -15178i, 2147483647i, global2.x), vec4<i32>(-19831i, u_input.a, global2.x, global2.x)) + 0i), reverseBits((vec2<u32>(4294967295u, global3[global3[global3[global3[0u]]]]) - vec2<u32>(global3[global3[global3[global3[global3[1u]]]]], global3[global3[57369u]])) * (vec2<u32>(global3[14731u], global3[0u]) ^ vec2<u32>(39919u, global3[global3[852u]])))));
    var var_1 = Struct_2(firstLeadingBit(global3[global3[firstLeadingBit(global3[~23571u | dot(vec3<u32>(9093u, global3[global3[78599u]], 79047u), vec3<u32>(global3[19459u], 34923u, global3[16333u]))])]]), ~51433u, var_0.a, func_7(Struct_1(var_0.a, any(vec3<bool>(false, false, true)), var_0.c, select(var_0.d, func_7(Struct_1(var_0.a, true, var_0.c, vec4<i32>(-37565i, 0i, global2.x, u_input.a), var_0.e), Struct_3(global4[74494u])).d, !false), vec4<bool>(var_0.e.x, var_0.b, global1.x != global1.x, var_0.e.x)), Struct_3(Struct_1(select(var_0.a, vec3<bool>(true, false, true), var_0.e.xxy), global1.x && true, var_0.c - 189f, vec4<i32>(u_input.a, -49868i, -32067i, var_0.d.x) - var_0.d, select(var_0.e, var_0.e, vec4<bool>(true, var_0.a.x, true, var_0.e.x))))), vec3<u32>(dot(vec3<u32>(min(global3[21542u], global3[global3[1u]]), global3[1u | global3[global3[global3[global3[global3[36164u]]]]]], global3[global3[global3[global3[global3[global3[global3[9550u]]]]]] % 0u]), select(~vec3<u32>(global3[5861u], global3[global3[global3[1u]]], 2477u), vec3<u32>(global3[global3[0u]], 0u, global3[global3[global3[global3[0u]]]]), var_0.d.x > 1i)), max(~38085u >> (global3[global3[global3[global3[2187u]]]] ^ 39438u), global3[~(global3[24189u] & global3[global3[global3[global3[0u]]]])]), countOneBits(~(~global3[64026u]))));
    var var_2 = Struct_2(~abs(max(2128u - var_1.b, firstLeadingBit(var_1.e.x))), ((var_1.b ^ (global3[global3[14436u]] / var_1.a)) | global3[firstLeadingBit(~global3[0u])]) & countOneBits(clamp(~33413u, ~global3[global3[global3[4294967295u]]], 1u)), !(!(!(!var_1.d.a))), global4[dot(var_1.e.yz ^ var_1.e.zz, var_1.e.xz * var_1.e.yz)], var_1.e);
    var var_3 = -(2147483647i * func_5(Struct_2(global3[106846u] ^ var_1.a, countOneBits(global3[19279u]), func_5(Struct_2(global3[1u], var_1.b, vec3<bool>(var_0.b, true, global1.x), global0[1u], var_1.e)).a.a, var_1.d, ~var_1.e)).a.d.x);
    var var_4 = ~((vec4<u32>(~62106u, var_2.a % var_2.b, 1u ^ var_1.a, global3[15242u] & 0u) * ~vec4<u32>(44232u, var_2.e.x, global3[var_2.b], 51533u)) % (vec4<u32>(39058u & var_1.e.x, firstTrailingBit(18593u), ~65090u, 4294967295u) % min(vec4<u32>(4294967295u, 1u, global3[global3[15591u]], 4294967295u) ^ vec4<u32>(4294967295u, var_1.a, var_2.a, 4294967295u), select(vec4<u32>(1u, 5965u, var_2.a, var_1.a), vec4<u32>(var_2.e.x, 0u, 0u, var_1.a), var_1.d.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.c, 133f, 276f, -trunc(-(-829f))));
}

