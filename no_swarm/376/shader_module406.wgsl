// {"0:0":[216,76,57,0,91,0,249,178,133,236,61,250]}
// Seed: 17486951940525273191

struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = u_input.a;
    let var_1 = -min(exp2(vec4<f32>(-(-154f), 1204f, trunc(564f), -666f)), vec4<f32>(ceil(-(-1617f)), -124f, 303f - -(-946f), 1007f / sign(-1000f)));
    var var_2 = u_input.b;
    let var_3 = Struct_1(false, vec4<u32>(1u | u_input.a, 0u >> abs(firstTrailingBit(arg_0.x)), ~abs(arg_0.x) ^ (min(u_input.a, 87560u) ^ 1u), clamp(1u, ~arg_0.x, 1u)), dot(~abs(vec3<i32>(arg_2.c, u_input.c, arg_2.c)) % (vec3<i32>(arg_2.c, 55722i, u_input.c) + -vec3<i32>(u_input.c, -4157i, arg_2.c)), min(-vec3<i32>(arg_2.c, 10184i, 30715i), vec3<i32>(-9194i, -21328i, u_input.b) % vec3<i32>(arg_2.c, arg_2.c, 2147483647i)) + vec3<i32>(u_input.b % 1i, -u_input.b, 26188i + u_input.c)), vec3<bool>(-(-var_1.x) >= select(-407f + var_1.x, var_1.x / -1081f, arg_1.x != arg_2.a), -ceil(-1160f) == -980f, arg_2.a), arg_2.b);
    var_0 = var_3.e.x;
    return vec3<f32>(-1056f, -1593f, step(-1840f, floor(var_1.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_1(arg_2.a, clamp(vec4<u32>(abs(~1u), ~clamp(arg_0, 33345u, 98705u), u_input.a, abs(11827u * arg_2.e.x)), arg_2.e, ~vec4<u32>(max(12116u, 4294967295u), arg_0 * 1u, dot(vec4<u32>(u_input.a, arg_0, 0u, u_input.a), arg_2.e), 16288u & 29465u)), 1i, arg_2.d, firstLeadingBit(arg_2.b));
    let var_1 = var_0.b << arg_2.b;
    var_0 = arg_2;
    var var_2 = arg_3.x;
    let var_3 = arg_3.x;
    return ~(arg_2.b & ~countOneBits(arg_2.e & vec4<u32>(u_input.a, arg_2.b.x, arg_0, u_input.a)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = Struct_1(!any(!(!vec4<bool>(true, true, true, arg_1))), arg_0.b, arg_0.c, arg_0.d, ~(~(vec4<u32>(4294967295u, 0u, 1u, 17314u) & ~vec4<u32>(16628u, arg_0.e.x, 4294967295u, arg_0.e.x))));
    var_0 = arg_0;
    var_0 = Struct_1(((-(-1226f) + -(-1081f)) * round(round(-355f))) == -step(-327f, -426f), max(firstTrailingBit(vec4<u32>(arg_0.b.x | var_0.e.x, ~15192u, 1u * u_input.a, var_0.b.x)), ~firstTrailingBit(abs(vec4<u32>(var_0.b.x, var_0.b.x, 1817u, arg_0.e.x)))), u_input.b, !(!var_0.d), func_4(u_input.a >> 0u, ~(~vec3<i32>(10414i, 0i, 1i)) - vec3<i32>(clamp(u_input.c, 23091i, 0i), arg_0.c ^ -4685i, u_input.c), arg_0, -func_3(~arg_0.b.zy, !vec4<bool>(false, true, false, var_0.a), Struct_1(true, vec4<u32>(arg_0.e.x, u_input.a, u_input.a, u_input.a), u_input.c, var_0.d, arg_0.e))));
    var var_1 = abs(~arg_0.b);
    var_0 = arg_0;
    return -(-2099f * min(1215f - 206f, -385f)) - -(-sign(808f));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = step(func_2(Struct_1(any(arg_0.d), ~vec4<u32>(arg_0.b.x, arg_0.e.x, arg_2.e.x, u_input.a), clamp(-43170i, -8580i, i32(-2147483648)), arg_0.d, (arg_0.e ^ vec4<u32>(20140u, 9327u, arg_2.b.x, arg_2.e.x)) / ~vec4<u32>(26505u, 1u, 49360u, arg_0.b.x)), !any(vec4<bool>(false, false, false, arg_1))), -1176f);
    return arg_0;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(func_1(func_1(arg_3, !select(false, arg_2.a, arg_3.a), arg_2), !((u_input.c + 0i) > 62011i), Struct_1(any(arg_2.d.xx), ~(vec4<u32>(u_input.a, arg_0.x, arg_0.x, 40809u) - arg_3.e), max(~(-35142i), -1i), vec3<bool>(any(vec3<bool>(arg_2.d.x, arg_3.a, true)), all(vec4<bool>(arg_2.a, false, arg_3.a, arg_3.a)), !false), vec4<u32>(firstTrailingBit(71453u), arg_0.x >> 1u, 4715u, 53513u))).d.x, ~(vec4<u32>(6193u, 14239u, abs(arg_2.e.x), 19146u) << arg_3.e), ~abs(~(8017i / 1i)), select(!(!vec3<bool>(arg_2.a, true, true)), vec3<bool>(true, !(arg_1.x > arg_1.x), -399f > -arg_1.x), vec3<bool>(!(arg_3.e.x >= 10422u), arg_3.d.x, !(arg_3.d.x | arg_3.d.x))), max(vec4<u32>(~20282u * ~1u, arg_2.b.x, ~reverseBits(81325u), (46300u * 31990u) * (4294967295u << 1563u)), ~(~arg_2.b | vec4<u32>(63993u, 70030u, 4204u, arg_3.b.x))));
    var_0 = arg_3;
    var_0 = func_1(Struct_1(arg_2.d.x, arg_2.b, var_0.c, vec3<bool>(max(68214i, u_input.b) == (u_input.c << 0u), -22755i > dot(vec2<i32>(2147483647i, arg_2.c), vec2<i32>(1i, u_input.b)), select(var_0.d.x, select(true, true, true), false)), vec4<u32>(35834u, 0u, dot(reverseBits(vec3<u32>(1u, arg_2.e.x, 1u)), vec3<u32>(699u, arg_3.e.x, 20171u)), 1316u)), any(arg_2.d), arg_2);
    var_0 = arg_2;
    var_0 = func_1(arg_3, any(vec3<bool>(func_1(func_1(Struct_1(arg_3.d.x, vec4<u32>(u_input.a, var_0.e.x, arg_3.e.x, arg_3.e.x), arg_3.c, var_0.d, vec4<u32>(0u, var_0.b.x, arg_2.e.x, 0u)), false, Struct_1(true, vec4<u32>(1u, arg_2.e.x, 1u, 41609u), u_input.c, arg_3.d, vec4<u32>(0u, arg_0.x, var_0.b.x, 59000u))), false, arg_3).a, arg_2.a, false || var_0.d.x)), arg_3);
    return vec4<bool>(var_0.d.x, !true, var_0.d.x, all(!vec4<bool>(1350f != 1000f, true, arg_2.a, true)));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = min(-(func_3(vec2<u32>(0u, u_input.a), arg_1, Struct_1(arg_1.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.c, arg_0.zyx, vec4<u32>(1u, 23335u, u_input.a, u_input.a))).zx * (vec2<f32>(-1948f, 185f) + vec2<f32>(-530f, -1449f))), vec2<f32>((1000f / -1586f) - func_3(vec2<u32>(u_input.a, 20018u), arg_1, Struct_1(arg_0.x, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), 1i, arg_1.zzx, vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))).x, floor(-1000f))) * (trunc(-(vec2<f32>(1308f, -212f) * vec2<f32>(1382f, -936f))) / select(vec2<f32>(1908f * 2439f, -396f), -vec2<f32>(-742f, -1813f), func_1(Struct_1(true, vec4<u32>(1u, 54846u, u_input.a, 0u), -1i, vec3<bool>(arg_1.x, arg_0.x, false), vec4<u32>(u_input.a, 14071u, 0u, u_input.a)), any(arg_1.yy), func_1(Struct_1(false, vec4<u32>(0u, 5142u, 116538u, u_input.a), -1i, arg_0.xwz, vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), arg_0.x, Struct_1(false, vec4<u32>(95411u, 0u, 1u, u_input.a), u_input.c, vec3<bool>(arg_1.x, false, arg_1.x), vec4<u32>(0u, u_input.a, 0u, u_input.a)))).d.xz));
    var var_1 = round(var_0);
    let var_2 = Struct_1(arg_0.x, abs(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)) << (~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) - vec4<u32>(u_input.a, 4294967295u, 4210u, u_input.a))), ~firstTrailingBit(37207i), arg_1.zzy, (~select(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 2466u), false) - abs(select(vec4<u32>(46316u, 16737u, 83100u, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), arg_1))) ^ vec4<u32>(~firstTrailingBit(u_input.a), u_input.a, min(1u | 4294967295u, u_input.a << 129441u), 85883u));
    var var_3 = func_1(func_1(func_1(func_1(var_2, all(var_2.d.zz), func_1(Struct_1(true, var_2.e, u_input.c, var_2.d, vec4<u32>(u_input.a, 94128u, var_2.b.x, u_input.a)), true, Struct_1(true, var_2.e, u_input.b, arg_1.wwz, var_2.e))), true, var_2), arg_0.x, var_2), any(vec3<bool>(var_2.a, 27381u > u_input.a, true)), var_2);
    let var_4 = var_3.c;
    return Struct_1(var_3.d.x, ~var_2.b, 13297i >> (25426u / (9182u + u_input.a)), vec3<bool>(any(!arg_1), var_3.a, all(var_3.d)), ~vec4<u32>(max(func_4(14536u, vec3<i32>(27985i, 0i, u_input.b), Struct_1(false, var_2.e, -87752i, vec3<bool>(false, var_2.a, false), vec4<u32>(1u, var_3.e.x, 0u, 2540u)), vec3<f32>(var_0.x, -654f, -483f)).x, u_input.a * u_input.a), countOneBits(4294967295u), 41134u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<bool>(select(false, all(vec4<bool>(true, false, true, false)) | true, (u_input.a << 13374u) <= 45530u), any(func_5(~vec3<u32>(1u, u_input.a, 4294967295u), vec4<f32>(1853f, -722f, 691f, 494f) * vec4<f32>(1094f, 322f, 1000f, -1009f), func_1(Struct_1(false, vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u), u_input.c, vec3<bool>(false, false, true), vec4<u32>(22821u, 3771u, 1835u, u_input.a)), false, Struct_1(false, vec4<u32>(u_input.a, 1u, 0u, 4294967295u), u_input.b, vec3<bool>(false, false, true), vec4<u32>(1u, u_input.a, u_input.a, 10865u))), Struct_1(true, vec4<u32>(1u, u_input.a, 1u, 0u), u_input.c, vec3<bool>(true, true, false), vec4<u32>(9172u, 1u, u_input.a, 4294967295u)))), true, select(!select(false, false, true), func_5(vec3<u32>(u_input.a, 1u, u_input.a) * vec3<u32>(46399u, 1u, 19024u), -vec4<f32>(-1228f, 580f, 575f, 524f), Struct_1(true, vec4<u32>(1u, 0u, 4294967295u, 4294967295u), u_input.b, vec3<bool>(false, true, true), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), func_1(Struct_1(true, vec4<u32>(u_input.a, 4294967295u, 20085u, u_input.a), 22772i, vec3<bool>(true, true, true), vec4<u32>(53039u, 26851u, u_input.a, u_input.a)), false, Struct_1(true, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), u_input.c, vec3<bool>(true, true, true), vec4<u32>(u_input.a, 68300u, 7981u, u_input.a)))).x, 313f != -897f)), select(!vec4<bool>(false, true, 455f <= 1469f, any(vec4<bool>(true, false, false, true))), select(vec4<bool>(!false, true | false, !true, true), !(!vec4<bool>(true, false, true, true)), true), vec4<bool>(!(u_input.b > 12538i), select(true, false, true) && !true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), 3953u != u_input.a)));
    let var_1 = select(abs(vec4<f32>(abs(-116f), -(-455f) + select(958f, -1550f, var_0.a), -(655f + -122f), 1000f)), sign(-(-vec4<f32>(-1143f, 591f, 1551f, -311f) * (vec4<f32>(375f, 1687f, 976f, -1130f) * vec4<f32>(-1000f, 346f, 258f, 249f)))), any(var_0.d.yy));
    let var_2 = min(var_0.e.ww, vec2<u32>(~1u / 43052u, firstLeadingBit(21042u))) << ~var_0.b.yy;
    let var_3 = Struct_1(var_0.a, var_0.e, 0i, vec3<bool>(!func_1(Struct_1(true, var_0.b, u_input.c, vec3<bool>(false, var_0.d.x, var_0.d.x), vec4<u32>(4294967295u, 17358u, 67203u, u_input.a)), !var_0.d.x, func_6(vec4<bool>(var_0.d.x, false, false, var_0.a), vec4<bool>(var_0.d.x, true, var_0.d.x, false))).a, !((var_1.x > var_1.x) && !true), !any(!vec2<bool>(var_0.d.x, false))), ~(~var_0.b) ^ vec4<u32>(var_0.b.x, var_2.x, abs(26593u) << u_input.a, ~select(var_2.x, 15101u, var_0.a)));
    var var_4 = var_1.www;
    let var_5 = func_6(select(!vec4<bool>(true, var_0.d.x, !true, !var_0.d.x), select(vec4<bool>(var_3.d.x, any(vec4<bool>(var_3.a, var_3.d.x, var_3.a, true)), 704f >= var_4.x, false), vec4<bool>(false, !var_0.a, var_0.d.x, any(vec2<bool>(var_0.d.x, var_3.a))), vec4<bool>(!false, !false, any(vec3<bool>(false, false, var_3.d.x)), !false)), vec4<bool>(all(vec4<bool>(false, var_0.d.x, true, var_0.a)), var_0.d.x, !true, false)), func_5(var_0.b.xzx + (~var_3.b.yxz >> (vec3<u32>(var_2.x, var_3.e.x, 4294967295u) << var_0.b.zzx)), -var_1, func_1(var_3, var_0.a, var_3), func_6(vec4<bool>(select(false, var_3.a, false), any(var_3.d.yz), var_3.a, false), !select(vec4<bool>(var_0.a, var_0.a, var_3.a, true), vec4<bool>(var_3.d.x, true, var_3.d.x, var_0.a), true))));
    var var_6 = abs(min(firstLeadingBit(vec4<i32>(0i, var_3.c, 33130i, -13151i)) >> vec4<u32>(66941u, u_input.a, var_3.e.x, u_input.a), ~vec4<i32>(2147483647i, 21411i, 19828i, var_3.c))) - ((vec4<i32>(var_3.c, var_5.c + var_5.c, func_6(vec4<bool>(var_5.d.x, var_5.a, false, var_5.a), vec4<bool>(true, true, true, var_5.a)).c, firstLeadingBit(u_input.c)) % -(vec4<i32>(1i, u_input.b, var_5.c, var_3.c) & vec4<i32>(var_5.c, -1i, var_5.c, var_5.c))) * ((~vec4<i32>(var_5.c, 51218i, var_0.c, 19880i) - vec4<i32>(u_input.b, 2147483647i, var_5.c, u_input.b)) - -vec4<i32>(-12129i, var_0.c, var_5.c, var_0.c)));
    var_6 = ~(~(-vec4<i32>(-60931i, var_0.c, var_0.c, var_0.c) & vec4<i32>(-var_0.c, var_5.c ^ 24635i, var_3.c, 0i & 22319i)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-2147483648) + min(-11512i, var_5.c % -var_3.c), (vec3<u32>(var_0.b.x >> 37894u, ~107235u, min(var_2.x, 79603u)) | (~vec3<u32>(1u, 29466u, 1u) & vec3<u32>(var_0.b.x, var_5.e.x, var_5.e.x))) + (var_5.b.yxy / ~firstTrailingBit(var_0.b.wyx)), max(vec3<i32>(reverseBits(var_5.c % 14888i), dot(vec4<i32>(u_input.c, var_5.c, var_6.x, -15669i) ^ vec4<i32>(2147483647i, 55707i, var_5.c, 7840i), ~vec4<i32>(u_input.c, 1i, 1i, var_3.c)), max(var_3.c ^ var_6.x, var_6.x)), ~var_6.xww));
}

