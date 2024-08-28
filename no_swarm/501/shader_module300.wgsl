// {"0:0":[113,61,176,109,140,8,35,227,217,139,96,21,84,241,144,168,97,208,39,28,68,88,127,4,244,157,63,13,38,193,168,214,169,65,120,137,119,29,32,49,254,154,186,70,113,241,209,16,255,81,9,194,233,150,218,39,39,158,141,173,125,232,20,19]}
// Seed: 15481951063287080905

struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> i32 {
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(firstTrailingBit(i32(-2147483648)), (func_3(global0[~13309u], Struct_2(vec3<bool>(false, false, false), vec4<f32>(-1000f, -670f, 818f, -515f), global0[u_input.c], Struct_1(vec3<f32>(-652f, -1369f, 518f), vec3<f32>(-1899f, -255f, 439f), vec4<f32>(-188f, -1173f, -914f, -2476f), false), Struct_1(vec3<f32>(-1150f, 411f, -1000f), vec3<f32>(-417f, 929f, 762f), vec4<f32>(-1000f, -464f, 992f, 216f), false)), -1063f - 1000f, Struct_5(Struct_2(vec3<bool>(true, true, false), vec4<f32>(-950f, 940f, -543f, 1112f), i32(-2147483648), Struct_1(vec3<f32>(-210f, 1794f, -241f), vec3<f32>(1561f, -813f, -1664f), vec4<f32>(154f, -2032f, 802f, -463f), true), Struct_1(vec3<f32>(611f, 1035f, 648f), vec3<f32>(1300f, 454f, 1027f), vec4<f32>(-310f, 1535f, -712f, -1068f), false)), u_input.d.x, u_input.c)) * global0[52319u / abs(0u)]) & i32(-2147483648));
    let var_1 = max(~vec3<u32>(47451u, 28669u, max(dot(u_input.b.wwy, vec3<u32>(25298u, 1u, 1u)), ~1u)), ~u_input.b.wwy);
    var var_2 = Struct_2(!vec3<bool>(!true, all(!vec2<bool>(false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), vec4<f32>(1603f, -(-363f - -685f), -(-186f) / (1194f / -1837f), -1207f / (-691f - 1448f)) * (ceil(vec4<f32>(-116f, 414f, -231f, 573f)) * (vec4<f32>(-433f, -743f, 1510f, -1005f) * (vec4<f32>(423f, -501f, -148f, -2338f) * vec4<f32>(503f, -1094f, -941f, -902f)))), 0i, Struct_1(vec3<f32>((-276f - 377f) - -(-1000f), -825f, 2354f), min(vec3<f32>(-598f, -636f, -440f) * vec3<f32>(769f, -948f, -843f), (vec3<f32>(2505f, -972f, 2690f) + vec3<f32>(-1036f, -895f, -398f)) / -vec3<f32>(148f, -160f, -2474f)), vec4<f32>(exp2(569f), min(ceil(1646f), max(-184f, 658f)), round(-885f - 1032f), -293f), all(!(!vec4<bool>(true, true, false, true)))), Struct_1(-(-vec3<f32>(431f, -890f, 705f) * vec3<f32>(-334f, -167f, -650f)), vec3<f32>(-(-676f), -(-(-466f)), -step(-872f, -273f)), abs(vec4<f32>(1104f, 209f, -469f, 2025f)) - (-vec4<f32>(-1328f, -1207f, -504f, -155f) - (vec4<f32>(-721f, 285f, 948f, -773f) + vec4<f32>(-1180f, 451f, 298f, -164f))), 1u >= (clamp(0u, 4294967295u, var_1.x) & 1702u)));
    var var_3 = vec4<i32>(-1i, 2147483647i, ~(~var_2.c), select((min(-3421i, 23789i) + -138i) / max(-5902i, firstLeadingBit(1i)), (global0[var_1.x & var_1.x] ^ dot(var_0, var_0)) + var_0.x, var_2.a.x));
    let var_4 = Struct_3(vec3<f32>(-(abs(-809f) + min(var_2.b.x, 1365f)), var_2.e.b.x, trunc(-1138f + select(var_2.e.a.x, -1394f, var_2.e.d))), func_3(reverseBits(countOneBits(max(var_0.x, i32(-2147483648)))), Struct_2(var_2.a, select(vec4<f32>(var_2.d.b.x, var_2.d.c.x, var_2.d.b.x, var_2.b.x) + var_2.b, select(vec4<f32>(var_2.e.b.x, -1250f, var_2.e.c.x, -957f), vec4<f32>(738f, var_2.d.c.x, -564f, 1909f), false), true || var_2.d.d), var_0.x, Struct_1(min(vec3<f32>(var_2.e.a.x, -1601f, -1098f), vec3<f32>(-1000f, -776f, var_2.d.a.x)), round(var_2.e.b), trunc(var_2.d.c), true), Struct_1(-var_2.e.a, round(var_2.b.wyz), -var_2.b, 1000f != var_2.b.x)), -836f, Struct_5(Struct_2(!var_2.a, max(vec4<f32>(-1263f, 1000f, 872f, 123f), vec4<f32>(var_2.d.a.x, var_2.d.a.x, var_2.b.x, var_2.b.x)), select(global0[39065u], var_2.c, var_2.d.d), var_2.d, Struct_1(vec3<f32>(-447f, var_2.b.x, var_2.e.c.x), vec3<f32>(var_2.e.c.x, 326f, -932f), vec4<f32>(var_2.b.x, -2120f, var_2.b.x, var_2.e.b.x), var_2.d.d)), (u_input.a - i32(-2147483648)) % (17418i + u_input.a), (u_input.e | u_input.e) - firstTrailingBit(43331u))), Struct_1(var_2.e.a - vec3<f32>(-(-391f), -374f, -642f), sign(vec3<f32>(var_2.d.b.x, var_2.b.x, var_2.b.x) * var_2.b.yyx) / vec3<f32>(-261f, var_2.e.a.x, 1000f + -265f), vec4<f32>(-var_2.d.b.x, -var_2.e.a.x, -var_2.b.x, -(-435f)) / vec4<f32>(-(-898f), 1648f, 270f, sign(var_2.b.x)), false), false);
    return Struct_1(var_2.b.yyy, (vec3<f32>(1000f, 1033f, var_2.d.c.x) - (round(var_4.a) / vec3<f32>(-719f, -294f, var_4.a.x))) / floor(var_4.a), ceil(max(-(-var_2.d.c), vec4<f32>(-(-499f), var_2.e.c.x - var_2.b.x, -var_2.e.a.x, -1000f + var_2.e.b.x))), any(select(var_2.a, !select(var_2.a, var_2.a, vec3<bool>(true, true, true)), var_2.a)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<i32, 31>();
    let var_0 = 23434i;
    let var_1 = func_2();
    var var_2 = var_1.c.xy - -(-vec2<f32>(410f + -673f, 1132f));
    let var_3 = Struct_4(u_input.b.xwx, Struct_3(arg_0.a, 1i & ~(~(i32(-2147483648))), func_2(), !true), (func_2().b.x * exp2(var_1.c.x)) * step((var_2.x - var_1.c.x) * var_2.x, sign(-781f)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    var var_0 = true;
    var_0 = all(!select(!vec3<bool>(true, false, true), !vec3<bool>(true, true, false), vec3<bool>(!false, true, !false)));
    var_0 = !((select(-799f + 272f, -811f - -185f, u_input.e == 0u) / ((-2087f * -1000f) + (-571f * -984f))) > ((-435f / -620f) + -861f));
    var_0 = false;
    var var_1 = ~0u;
    var_1 = firstLeadingBit(func_1(Struct_1(-(-vec3<f32>(914f, 2210f, 1604f)), sign(vec3<f32>(150f, -405f, 463f) * vec3<f32>(357f, 1009f, -386f)), select(vec4<f32>(-837f, -1067f, -559f, 1000f), vec4<f32>(-200f, 772f, -1035f, -517f), false) * (vec4<f32>(1018f, -130f, -503f, 1957f) - vec4<f32>(-500f, 1194f, 887f, 1049f)), true)));
    var var_2 = Struct_4(abs(vec3<u32>(0u, select(~20044u, 17202u, any(vec4<bool>(false, true, true, false))), ~(u_input.b.x + 9912u))), Struct_3(ceil(exp2(vec3<f32>(249f, -1000f, -1992f))) * -(-vec3<f32>(743f, -1207f, 793f)), dot(reverseBits(vec4<i32>(global0[u_input.c], -48729i, -5111i, u_input.d.x)), vec4<i32>(1i, 0i, u_input.a, global0[u_input.e])) * ~max(u_input.d.x, -12320i), func_2(), false), select((-968f * -260f) - abs(1467f), exp2(-floor(-550f)), false));
    let var_3 = Struct_2(vec3<bool>(false || (!false | var_2.b.c.d), (var_2.c - -294f) == trunc(floor(var_2.c)), any(vec4<bool>(!true, var_2.b.c.a.x < -150f, var_2.b.d, var_2.b.d))), min(select(var_2.b.c.c, exp2(-var_2.b.c.c), false), vec4<f32>(trunc(-1228f), -(-211f), min(1233f, var_2.b.a.x) - 1343f, var_2.c)), ~abs(~(-2147483647i)), func_2(), Struct_1(-(-var_2.b.c.c.zwy) / floor(vec3<f32>(407f, var_2.c, -975f)), -(var_2.b.c.a + round(var_2.b.a)), -(-(vec4<f32>(var_2.c, var_2.b.a.x, var_2.c, -1254f) / var_2.b.c.c)), func_2().d));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(firstTrailingBit(var_2.a.zx) + countOneBits(vec2<u32>(0u, u_input.c)))));
}

