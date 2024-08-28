// {"0:0":[182,60,253,207,166,158,163,55,25,101,218,5,154,57,127,195,161,22,20,61,248,254,190,50,20,251,8,76,71,141,84,80]}
// Seed: 8672242728333857964

struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: f32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> vec3<i32> {
    var var_0 = arg_1;
    var_0 = Struct_3(arg_1.a, arg_1.b, ~(-select(vec3<i32>(u_input.c, i32(-2147483648), arg_1.c.x), vec3<i32>(57905i, 0i, u_input.b), arg_1.d.x)) + vec3<i32>(arg_1.a, ~(-31568i), max(dot(vec3<i32>(arg_1.b.a.b, arg_1.c.x, 23054i), vec3<i32>(1i, u_input.b, 1i)), 1i & -12499i)), vec3<bool>(!(true || !var_0.d.x), true, all(select(var_0.d.zy, var_0.b.a.d, !arg_1.d.yy))));
    var var_1 = Struct_3(select(~(-(arg_1.c.x + u_input.a.x)), -52824i, false), Struct_2(arg_1.b.a), -(~(~vec3<i32>(var_0.b.a.b, 21652i, 2147483647i))), !select(var_0.d, !vec3<bool>(arg_1.b.a.a, var_0.b.a.d.x, arg_1.d.x), arg_1.b.a.e.wzx));
    var_1 = Struct_3(firstTrailingBit(((0i << arg_1.b.a.c) ^ arg_1.c.x) >> 14879u), var_1.b, countOneBits(-max(u_input.a.xxy, vec3<i32>(u_input.b, 1i, u_input.a.x))) - vec3<i32>(abs(~u_input.c), reverseBits(var_1.b.a.b), var_0.a), var_0.b.a.e.yyy);
    var_1 = Struct_3(~var_0.c.x, arg_1.b, ~arg_1.c % ~(~countOneBits(var_1.c)), vec3<bool>(false, false || (-1638f > arg_2), var_0.d.x));
    return firstLeadingBit(reverseBits(vec3<i32>(var_0.a, arg_1.a, arg_1.a) / (countOneBits(arg_1.c) ^ ~vec3<i32>(u_input.a.x, 1i, 47014i))));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = Struct_3(((-1i ^ ~38347i) - dot(vec2<i32>(-37386i, 27818i), vec2<i32>(11637i, 1i) | u_input.a.wz)) + ~var_0.x, arg_0.e.b, func_3(arg_2, arg_0.e, arg_0.c), !select(vec3<bool>(0u >= arg_2, arg_1, true), arg_0.d.d, !select(vec3<bool>(arg_1, arg_1, arg_1), arg_0.d.b.a.e.yww, arg_0.e.b.a.d.x)));
    var var_2 = !var_1.d.x;
    return Struct_1(any(var_1.b.a.e.yy), 1i + -2197i, ~var_1.b.a.c, select(select(arg_0.e.d.xy, !arg_0.d.b.a.d, (var_1.d.x || false) & !true), !var_1.d.zy, !arg_0.e.d.zz), var_1.b.a.e);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = any(vec3<bool>(~(-(-1451i)) <= 12434i, all(arg_3.e), false));
    let var_1 = arg_3;
    var var_2 = 803f;
    var_2 = arg_1 + -705f;
    let var_3 = !(!false);
    return Struct_3(54531i, Struct_2(arg_3), select(u_input.a.xwz, -arg_0.c, true) & u_input.a.wxz, select(select(!(!arg_0.b.a.e.xzz), vec3<bool>(var_3, true, arg_3.a), !vec3<bool>(true, arg_0.d.x, arg_3.a)), !(!arg_0.d), !(any(vec4<bool>(true, true, var_3, arg_3.d.x)) & !arg_0.b.a.a)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = arg_1.b.a.c;
    let var_1 = !(((369f + exp2(153f)) * ceil(-1718f)) < -470f);
    var var_2 = Struct_2(Struct_1(!(!arg_1.d.x), firstLeadingBit(arg_1.b.a.b << 6336u) | u_input.c, 27341u, select(select(func_4(Struct_3(i32(-2147483648), arg_1.b, arg_1.c, arg_1.d), 867f, arg_1.c.yy, Struct_1(arg_1.d.x, u_input.b, var_0, vec2<bool>(true, arg_1.d.x), arg_1.b.a.e)).d.xx, vec2<bool>(true, var_1), func_4(arg_1, -126f, vec2<i32>(arg_1.c.x, -1i), Struct_1(false, u_input.b, 0u, vec2<bool>(false, arg_1.b.a.e.x), vec4<bool>(false, var_1, arg_1.d.x, arg_1.d.x))).d.zz), arg_1.b.a.d, all(arg_1.d.yz) || arg_1.d.x), func_4(Struct_3(-49575i, Struct_2(arg_1.b.a), arg_1.c, vec3<bool>(false, true, var_1)), arg_0.x / -arg_0.x, firstLeadingBit(vec2<i32>(arg_1.b.a.b, 1i)) + -vec2<i32>(34386i, arg_1.a), func_4(Struct_3(u_input.a.x, Struct_2(Struct_1(true, u_input.c, arg_1.b.a.c, arg_1.d.xz, arg_1.b.a.e)), vec3<i32>(40171i, u_input.c, 1i), vec3<bool>(var_1, var_1, false)), exp2(arg_0.x), u_input.a.ww, func_2(Struct_4(u_input.a.ww, arg_1, 645f, Struct_3(arg_1.c.x, Struct_2(Struct_1(var_1, u_input.b, arg_1.b.a.c, vec2<bool>(arg_1.b.a.e.x, arg_1.b.a.e.x), vec4<bool>(var_1, true, arg_1.b.a.d.x, true))), vec3<i32>(u_input.c, -61512i, arg_1.b.a.b), arg_1.d), arg_1), false, 0u)).b.a).b.a.e));
    var var_3 = ~(~(~(~vec2<u32>(0u, 49715u)))) * vec2<u32>(max(firstLeadingBit(4294967295u), firstTrailingBit(arg_1.b.a.c)), var_0 ^ min(16914u, 0u));
    var_2 = Struct_2(func_4(arg_1, -1000f, ~(-u_input.a.yy), Struct_1(arg_0.x <= -540f, min(var_2.a.b, 2147483647i) ^ firstLeadingBit(arg_1.c.x), var_2.a.c, var_2.a.e.xy, !select(vec4<bool>(var_1, false, var_1, false), var_2.a.e, true))).b.a);
    return 4294967295u;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = u_input.a.yzy;
    var var_1 = dot(vec3<u32>(1u & 43460u, arg_1 >> arg_1, arg_1 + arg_1), abs(vec3<u32>(arg_1, ~4294967295u << (34665u / arg_1), arg_1 | ~27491u)));
    var var_2 = sign(-(-1873f / floor(1000f / 700f)));
    let var_3 = vec3<u32>(arg_1, ~(47257u << ~arg_1), ~arg_1);
    let var_4 = Struct_1(~27547u >= func_5(vec4<f32>(-345f, abs(1261f), -(-1128f), -(-766f)), func_4(Struct_3(u_input.a.x, Struct_2(Struct_1(false, var_0.x, 31488u, vec2<bool>(false, false), vec4<bool>(false, false, false, true))), u_input.a.xzx, vec3<bool>(false, false, true)), -1150f, vec2<i32>(arg_0.x, 26822i), func_2(Struct_4(vec2<i32>(2147483647i, -1i), Struct_3(u_input.c, Struct_2(Struct_1(true, u_input.b, var_3.x, vec2<bool>(true, false), vec4<bool>(false, true, false, true))), u_input.a.yzx, vec3<bool>(true, false, true)), 783f, Struct_3(arg_0.x, Struct_2(Struct_1(false, var_0.x, var_3.x, vec2<bool>(false, false), vec4<bool>(true, false, false, true))), vec3<i32>(2147483647i, var_0.x, 2147483647i), vec3<bool>(true, true, false)), Struct_3(26211i, Struct_2(Struct_1(true, arg_0.x, arg_1, vec2<bool>(true, true), vec4<bool>(true, false, true, true))), u_input.a.yyy, vec3<bool>(false, true, true))), false, var_3.x))), func_4(func_4(func_4(Struct_3(u_input.a.x, Struct_2(Struct_1(true, -27614i, 35408u, vec2<bool>(false, true), vec4<bool>(false, true, false, true))), vec3<i32>(0i, 22972i, -1i), vec3<bool>(true, true, true)), 742f, vec2<i32>(1i, arg_0.x), Struct_1(true, -43800i, var_3.x, vec2<bool>(true, true), vec4<bool>(false, true, false, false))), select(1006f, -304f, false), abs(vec2<i32>(0i, arg_0.x)), func_2(Struct_4(vec2<i32>(arg_0.x, 0i), Struct_3(var_0.x, Struct_2(Struct_1(true, arg_0.x, arg_1, vec2<bool>(false, false), vec4<bool>(false, false, false, true))), vec3<i32>(u_input.a.x, -1i, var_0.x), vec3<bool>(true, false, false)), -1322f, Struct_3(arg_0.x, Struct_2(Struct_1(true, 1104i, 4294967295u, vec2<bool>(false, false), vec4<bool>(true, true, true, false))), vec3<i32>(arg_0.x, var_0.x, u_input.c), vec3<bool>(false, false, false)), Struct_3(u_input.c, Struct_2(Struct_1(true, 6066i, 4210u, vec2<bool>(false, false), vec4<bool>(true, true, false, true))), vec3<i32>(var_0.x, 0i, u_input.b), vec3<bool>(true, false, false))), false, 46466u)), 1474f, -(~vec2<i32>(1i, 30331i)), func_4(func_4(Struct_3(var_0.x, Struct_2(Struct_1(false, arg_0.x, arg_1, vec2<bool>(false, true), vec4<bool>(false, true, false, false))), var_0, vec3<bool>(false, false, false)), -595f, u_input.a.zw, Struct_1(true, u_input.a.x, 4294967295u, vec2<bool>(false, true), vec4<bool>(false, false, true, true))), 1769f, u_input.a.wz, func_4(Struct_3(i32(-2147483648), Struct_2(Struct_1(true, u_input.b, 0u, vec2<bool>(true, false), vec4<bool>(true, false, false, false))), vec3<i32>(var_0.x, 0i, u_input.c), vec3<bool>(false, false, false)), 1308f, var_0.zy, Struct_1(false, arg_0.x, 83794u, vec2<bool>(true, false), vec4<bool>(false, true, false, true))).b.a).b.a).b.a.b / (~0i >> ~(~1u)), 0u, !func_2(Struct_4(u_input.a.yy, Struct_3(u_input.a.x, Struct_2(Struct_1(false, 2147483647i, var_3.x, vec2<bool>(false, true), vec4<bool>(true, false, false, false))), var_0, vec3<bool>(false, false, true)), abs(-228f), func_4(Struct_3(var_0.x, Struct_2(Struct_1(true, var_0.x, 4294967295u, vec2<bool>(false, false), vec4<bool>(true, false, false, true))), vec3<i32>(arg_0.x, -39389i, arg_0.x), vec3<bool>(true, false, false)), 330f, vec2<i32>(var_0.x, u_input.c), Struct_1(false, arg_0.x, 48545u, vec2<bool>(true, true), vec4<bool>(true, false, true, false))), Struct_3(-1i, Struct_2(Struct_1(true, 1i, 1u, vec2<bool>(false, false), vec4<bool>(true, true, true, false))), u_input.a.xwy, vec3<bool>(false, false, false))), any(vec4<bool>(false, false, true, false)), ~dot(var_3.yy, var_3.xz)).d, vec4<bool>(func_4(func_4(func_4(Struct_3(u_input.b, Struct_2(Struct_1(false, -28271i, 0u, vec2<bool>(false, true), vec4<bool>(false, true, false, true))), var_0, vec3<bool>(true, false, false)), 1402f, vec2<i32>(40409i, 0i), Struct_1(true, u_input.a.x, var_3.x, vec2<bool>(true, false), vec4<bool>(true, false, true, true))), -311f, var_0.xx, Struct_1(false, var_0.x, 4294967295u, vec2<bool>(true, true), vec4<bool>(false, true, false, false))), round(1003f), abs(arg_0) / (vec2<i32>(var_0.x, arg_0.x) * var_0.zz), Struct_1(!false, dot(u_input.a, vec4<i32>(var_0.x, u_input.a.x, 7117i, arg_0.x)), arg_1 ^ arg_1, !vec2<bool>(false, false), !vec4<bool>(true, true, false, false))).d.x, abs(var_3.x) < ~countOneBits(4294967295u), false, true));
    return func_4(func_4(func_4(func_4(func_4(Struct_3(i32(-2147483648), Struct_2(Struct_1(var_4.a, var_4.b, var_4.c, vec2<bool>(var_4.e.x, var_4.e.x), vec4<bool>(true, false, var_4.a, true))), var_0, var_4.e.wzw), 913f, var_0.zz, var_4), ceil(726f), -var_0.zz, Struct_1(true, var_0.x, 73891u, vec2<bool>(var_4.d.x, var_4.e.x), vec4<bool>(false, true, var_4.a, false))), ceil(-957f), (arg_0 % vec2<i32>(var_0.x, u_input.a.x)) + vec2<i32>(16955i, var_0.x), Struct_1(!true, ~var_0.x, ~var_3.x, func_4(Struct_3(65198i, Struct_2(Struct_1(true, 13155i, 1u, vec2<bool>(false, var_4.d.x), vec4<bool>(false, true, true, var_4.a))), var_0, var_4.e.xxx), 1056f, vec2<i32>(var_0.x, 8360i), var_4).b.a.e.xx, func_4(Struct_3(var_4.b, Struct_2(Struct_1(true, -1i, 101585u, var_4.d, var_4.e)), u_input.a.yxy, var_4.e.zyy), -308f, arg_0, var_4).b.a.e)), -436f, vec2<i32>(1i, -var_0.x), var_4), -418f, arg_0 - (func_4(func_4(Struct_3(var_0.x, Struct_2(Struct_1(var_4.e.x, var_4.b, 70546u, var_4.e.xw, var_4.e)), vec3<i32>(arg_0.x, 20225i, var_0.x), vec3<bool>(var_4.a, true, var_4.a)), 891f, vec2<i32>(u_input.c, arg_0.x), var_4), 1022f - -243f, ~var_0.yz, Struct_1(true, arg_0.x, arg_1, vec2<bool>(var_4.e.x, true), var_4.e)).c.xy * ~vec2<i32>(var_0.x, var_0.x)), func_4(func_4(func_4(func_4(Struct_3(-41179i, Struct_2(var_4), u_input.a.zyy, var_4.e.zzx), -1048f, vec2<i32>(arg_0.x, 1i), Struct_1(var_4.e.x, -49391i, 17701u, var_4.d, var_4.e)), 1213f * 1000f, u_input.a.xw, func_4(Struct_3(arg_0.x, Struct_2(Struct_1(false, var_4.b, var_3.x, var_4.e.yw, vec4<bool>(var_4.a, var_4.a, var_4.d.x, true))), var_0, vec3<bool>(var_4.d.x, false, var_4.a)), -1435f, vec2<i32>(-18791i, var_0.x), var_4).b.a), -select(850f, 426f, var_4.e.x), u_input.a.wz, func_2(Struct_4(u_input.a.zy, Struct_3(2147483647i, Struct_2(Struct_1(var_4.e.x, 49027i, 4294967295u, vec2<bool>(var_4.d.x, true), var_4.e)), var_0, var_4.e.yzy), -664f, Struct_3(22681i, Struct_2(Struct_1(var_4.a, u_input.a.x, arg_1, var_4.e.yz, vec4<bool>(false, var_4.d.x, var_4.a, var_4.a))), vec3<i32>(u_input.b, u_input.a.x, -18519i), vec3<bool>(var_4.e.x, var_4.a, var_4.d.x)), Struct_3(arg_0.x, Struct_2(Struct_1(true, var_0.x, var_4.c, vec2<bool>(false, false), vec4<bool>(false, false, var_4.d.x, var_4.a))), u_input.a.yxy, vec3<bool>(false, var_4.a, var_4.e.x))), var_4.a, ~arg_1)), 1334f / min(1111f, -516f / 267f), vec2<i32>(9009i | -1i, ~(-(i32(-2147483648)))), var_4).b.a);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<f32>(arg_1.x, -1252f, -max(floor(arg_1.x), ceil(-929f)));
    var var_1 = arg_0.b;
    var var_2 = vec4<u32>(min(~(~firstLeadingBit(79894u)), var_1.a.c), ~(dot(~arg_2, arg_2) / ~(94089u & var_1.a.c)), ~(func_2(Struct_4(vec2<i32>(13696i, 13787i), Struct_3(arg_0.b.a.b, Struct_2(Struct_1(var_1.a.a, -4609i, var_1.a.c, var_1.a.e.zz, vec4<bool>(arg_0.b.a.d.x, false, true, false))), vec3<i32>(21534i, var_1.a.b, -25547i), arg_0.b.a.e.xzx), -199f, Struct_3(u_input.b, arg_0.b, vec3<i32>(-13241i, u_input.c, 0i), arg_0.b.a.e.yxw), Struct_3(arg_0.a, Struct_2(var_1.a), arg_0.c, vec3<bool>(var_1.a.e.x, arg_0.d.x, arg_0.d.x))), arg_0.d.x, 4294967295u).c / countOneBits(arg_0.b.a.c)) | ~reverseBits(~18914u), arg_2.x);
    var_1 = Struct_2(func_1(-vec2<i32>(~u_input.a.x, -1i), ~1u).b.a);
    let var_3 = Struct_1(true, u_input.a.x, dot(vec3<u32>(2977u, 1u - ~71838u, (arg_0.b.a.c % arg_0.b.a.c) >> ~var_1.a.c), var_2.wzy), !(!(!select(arg_0.d.zy, vec2<bool>(false, arg_0.d.x), false))), !select(!func_1(vec2<i32>(var_1.a.b, arg_0.c.x), 1u).b.a.e, var_1.a.e, !(!vec4<bool>(true, var_1.a.d.x, var_1.a.d.x, false))));
    return func_4(arg_0, 289f, arg_0.c.zz, Struct_1(~(18218u ^ var_3.c) == (~var_2.x - var_2.x), var_1.a.b, func_5(-(-vec4<f32>(399f, -1450f, var_0.x, -461f)), func_1(firstTrailingBit(arg_0.c.yz), ~1u)), var_3.e.zz, var_3.e)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(0u % 2075u))) | (1u / ~(14177u + dot(vec2<u32>(23121u, 21998u), vec2<u32>(4294967295u, 0u))));
    let var_1 = func_6(func_1(~vec2<i32>(u_input.c, u_input.a.x) + (~vec2<i32>(0i, -1i) << ~vec2<u32>(var_0, var_0)), firstLeadingBit(min(41125u, abs(var_0)))), vec2<f32>(floor(floor(-2183f + 424f)), max(sign(-1000f / -1000f), -497f)), vec4<u32>(var_0 | max(min(1u, 4294967295u), 20067u), var_0, clamp(8675u, ~(~var_0), var_0 * 88990u), reverseBits(1203u)));
    let var_2 = Struct_4(min(vec2<i32>(28439i, ~2147483647i), u_input.a.wz), func_4(func_1(clamp(vec2<i32>(var_1.a.b, var_1.a.b), u_input.a.xw, u_input.a.yx) * vec2<i32>(var_1.a.b, u_input.a.x), 4294967295u), abs(exp2(trunc(-912f))), ~(~u_input.a.wz) | -vec2<i32>(0i, var_1.a.b), var_1.a), round(-(-153f) + (-476f + -1089f)) / ((1936f + step(-2231f, -508f)) - (-456f + -1096f)), func_1(vec2<i32>(u_input.c, -var_1.a.b), 0u), Struct_3(-22046i, var_1, u_input.a.yxx, select(vec3<bool>(var_1.a.e.x, var_1.a.e.x, var_1.a.d.x), vec3<bool>(false, 38431u >= 0u, var_1.a.d.x), var_1.a.a)));
    var var_3 = !all(vec2<bool>(any(select(var_1.a.e, vec4<bool>(var_2.d.d.x, false, true, var_1.a.a), var_1.a.e)), var_2.b.d.x));
    var var_4 = -countOneBits(select(select(u_input.a % u_input.a, vec4<i32>(1i, 2147483647i, 37542i, i32(-2147483648)), func_6(Struct_3(var_1.a.b, Struct_2(var_1.a), u_input.a.wzw, var_1.a.e.wxw), vec2<f32>(-261f, var_2.c), vec4<u32>(32990u, var_2.e.b.a.c, var_1.a.c, var_0)).a.a), u_input.a, select(!var_1.a.e, func_1(var_2.b.c.zy, var_1.a.c).b.a.e, var_1.a.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-45329i, abs(~var_4.x), ~(var_2.b.a + 1i), var_2.b.a << firstLeadingBit(32951u)) << (firstTrailingBit(firstTrailingBit(vec4<u32>(13574u, var_1.a.c, var_2.e.b.a.c, var_0))) ^ vec4<u32>(~var_2.b.b.a.c, var_2.b.b.a.c & 1u, reverseBits(4294967295u), func_2(var_2, var_1.a.d.x, 1u).c)), min(~(~26731u) & select(var_0, 77u, true), var_1.a.c));
}

