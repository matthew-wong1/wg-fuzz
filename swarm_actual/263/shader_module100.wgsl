// {"0:0":[44,91,252,174,132,104,225,105,11,25,84,72,128,22,16,56,149,71,167,241,201,119,186,168,131,213,205,153,118,229,239,94]}
// Seed: 10473231967473724421

struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    let var_0 = (select(~(vec2<i32>(i32(-2147483648), -18623i) ^ vec2<i32>(arg_0.d, 0i)), vec2<i32>(1i, 4424i), true) / u_input.b) * vec2<i32>(25533i, ~(-u_input.e));
    var var_1 = vec4<f32>(-(-1000f + -1000f) / -floor(-351f), (select(227f, -140f, true) * -533f) * (-1000f + step(448f, 1061f)), -(-451f), -989f) + select(-vec4<f32>(-(-929f), -159f + -501f, -375f, -(-1698f)), vec4<f32>(-148f * 1149f, -(-1218f), step(1000f, -1587f), min(106f, 609f)) / -(-vec4<f32>(-524f, -111f, -494f, -189f)), !select(all(vec4<bool>(arg_0.c, false, arg_0.c, true)), true, arg_1.a.c));
    var_1 = vec4<f32>(-1791f, var_1.x, -(var_1.x * 1000f), -(-1181f) / var_1.x) * floor(-vec4<f32>(round(1000f), -(-1820f), var_1.x, var_1.x));
    let var_2 = ceil(max(vec4<f32>(var_1.x, -331f, select(var_1.x, var_1.x, arg_1.a.c) * step(-157f, var_1.x), -(-1513f)), -(vec4<f32>(-743f, var_1.x, -130f, var_1.x) / trunc(vec4<f32>(-355f, var_1.x, var_1.x, var_1.x)))));
    var var_3 = any(!(!(!(!vec3<bool>(arg_1.a.c, arg_0.c, arg_0.c)))));
    return !all(!(!vec3<bool>(arg_0.c, arg_0.c, arg_1.a.c)));
}

fn func_2() -> vec4<i32> {
    let var_0 = u_input.c;
    let var_1 = firstLeadingBit(vec2<u32>(4294967295u, dot(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u) + vec4<u32>(13923u, u_input.d, 4294967295u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 100849u))) % vec2<u32>(~u_input.a, u_input.d));
    var var_2 = vec3<bool>(var_1.x != 18238u, !func_3(Struct_2(Struct_1(var_1), Struct_1(vec2<u32>(18242u, 51373u)), true, u_input.c.x, var_0.x), Struct_3(Struct_2(Struct_1(var_1), Struct_1(var_1), true, u_input.b.x, 2147483647i))) | func_3(Struct_2(Struct_1(vec2<u32>(68427u, 1626u)), Struct_1(vec2<u32>(u_input.d, u_input.a)), !true, u_input.b.x ^ u_input.e, var_0.x - u_input.e), Struct_3(Struct_2(Struct_1(vec2<u32>(8u, var_1.x)), Struct_1(vec2<u32>(17998u, 0u)), true, -4543i, u_input.b.x))), !(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    var_2 = !select(!(!(!vec3<bool>(true, var_2.x, false))), select(select(!vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, false, var_2.x), select(vec3<bool>(true, var_2.x, true), vec3<bool>(false, true, var_2.x), false)), vec3<bool>(!var_2.x, false, var_2.x), !var_2.x), select(select(select(vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, true, true), vec3<bool>(false, var_2.x, false)), select(vec3<bool>(var_2.x, false, true), vec3<bool>(false, true, var_2.x), false), false), select(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, var_2.x, false), false), select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, false, var_2.x), vec3<bool>(false, true, var_2.x)), false), select(!vec3<bool>(var_2.x, true, false), select(vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x)), select(vec3<bool>(false, var_2.x, false), vec3<bool>(false, var_2.x, var_2.x), var_2.x))));
    var_2 = !select(!vec3<bool>(!true, u_input.b.x == -34308i, var_2.x), select(select(!vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, true, var_2.x), all(vec4<bool>(true, false, var_2.x, var_2.x))), select(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, false, false), var_2.x), !vec3<bool>(var_2.x, var_2.x, false), true), any(!vec3<bool>(var_2.x, var_2.x, true))), all(!(!vec3<bool>(true, false, false))));
    return countOneBits(vec4<i32>(~(u_input.c.x ^ (-1i & u_input.c.x)), -(~dot(vec2<i32>(32237i, -19115i), var_0)), firstTrailingBit(48408i), 13404i * ((u_input.e * -1937i) % (u_input.b.x >> 4294967295u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: i32) -> vec3<u32> {
    var var_0 = -649f;
    var_0 = -588f;
    var_0 = 321f - min((218f * -(-431f)) + -1303f, 151f);
    var_0 = 1826f - (-2439f / -(-2838f / -(-170f)));
    let var_1 = arg_1;
    return vec3<u32>(1u >> ~4294967295u, arg_0.a.b.a.x, 0u);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = (func_4(Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.d, 4294967295u)), Struct_1(vec2<u32>(u_input.a, 28987u)), true, u_input.e, u_input.e)), ~vec3<u32>(4294967295u, 3984u, u_input.d), func_2(), firstLeadingBit(firstLeadingBit(11448i))) | ~vec3<u32>(dot(vec4<u32>(u_input.d, u_input.d, 1u, 7455u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.a + u_input.d, dot(vec4<u32>(1u, 4294967295u, u_input.d, u_input.a), vec4<u32>(u_input.d, u_input.d, u_input.a, u_input.d)))) << select(vec3<u32>(u_input.a, 1u & 0u, reverseBits(21882u)), (~vec3<u32>(u_input.d, u_input.a, u_input.a) / ~vec3<u32>(u_input.d, u_input.a, 0u)) * func_4(Struct_3(Struct_2(Struct_1(vec2<u32>(35926u, 4294967295u)), Struct_1(vec2<u32>(36373u, u_input.a)), false, 2147483647i, 23737i)), clamp(vec3<u32>(58301u, u_input.a, 50797u), vec3<u32>(31787u, 1u, 16629u), vec3<u32>(u_input.a, 24133u, u_input.d)), vec4<i32>(1i, u_input.e, 47746i, u_input.e) >> vec4<u32>(4939u, 98063u, u_input.d, 0u), ~(-41942i)), vec3<bool>(!(!false), !(true | false), !true));
    return -1i;
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(~(select(vec2<u32>(22429u, u_input.d), vec2<u32>(4294967295u, u_input.d), true) | vec2<u32>(u_input.a, 1u))), Struct_1(vec2<u32>(u_input.d, ~(~34375u))), true, -79329i, 10956i);
    var var_1 = var_0.b.a.x;
    let var_2 = u_input.c;
    var var_3 = Struct_3(Struct_2(var_0.a, Struct_1(firstTrailingBit(~vec2<u32>(var_0.a.a.x, 0u))), var_0.c, reverseBits(1i), -11300i));
    var_3 = Struct_3(Struct_2(Struct_1(var_0.b.a), Struct_1(select(abs(var_0.b.a), max(var_0.b.a, vec2<u32>(0u, var_0.a.a.x)), vec2<bool>(var_0.c, var_0.c))), var_3.a.c, 12862i, -(-(~var_2.x))));
    return Struct_2(var_3.a.b, var_3.a.b, any(!select(select(vec4<bool>(var_3.a.c, true, false, false), vec4<bool>(false, true, true, var_0.c), vec4<bool>(var_0.c, var_3.a.c, var_0.c, false)), vec4<bool>(false, var_0.c, false, true), select(vec4<bool>(var_0.c, true, true, var_0.c), vec4<bool>(var_3.a.c, true, false, var_3.a.c), var_3.a.c))), ~abs(-(0i)), var_0.e);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(select(vec3<bool>(true, 641f <= trunc(215f), !false), !(!(!vec3<bool>(true, arg_0.a.c, true))), !select(any(vec2<bool>(true, arg_1.c)), arg_1.c & true, arg_1.c)), !select(!vec3<bool>(false, arg_1.c, arg_2.c), !(!vec3<bool>(arg_0.a.c, false, false)), false), select(select(select(vec3<bool>(false, false, false), !vec3<bool>(false, false, arg_1.c), false & false), vec3<bool>(arg_1.c, false, !arg_0.a.c), !(!vec3<bool>(false, arg_2.c, arg_1.c))), !(!select(vec3<bool>(arg_0.a.c, arg_2.c, true), vec3<bool>(arg_1.c, false, false), arg_2.c)), !true));
    let var_1 = (vec2<f32>(select(1000f * -120f, sign(1618f), all(vec3<bool>(false, var_0.x, var_0.x))), 589f - -143f) - -select(select(vec2<f32>(254f, 2020f), vec2<f32>(-1110f, -1133f), var_0.xz), vec2<f32>(196f, -1172f) / vec2<f32>(-924f, 858f), !arg_0.a.c)) + min(vec2<f32>(101f * -668f, trunc(-1052f)), -vec2<f32>(2192f - 1508f, min(-734f, -1790f)));
    var var_2 = (-exp2(vec3<f32>(-583f, var_1.x, 193f) * vec3<f32>(var_1.x, 414f, var_1.x)) * min(exp2(vec3<f32>(var_1.x, var_1.x, -2826f)) - vec3<f32>(var_1.x, -1519f, var_1.x), -(vec3<f32>(var_1.x, -545f, -2095f) + vec3<f32>(1250f, var_1.x, 752f)))) - select(round(vec3<f32>(-975f + -125f, -1698f, 1000f)), round(max(-vec3<f32>(461f, 1158f, -407f), -vec3<f32>(-502f, var_1.x, var_1.x))), !(!vec3<bool>(false, true, false)));
    let var_3 = Struct_1(vec2<u32>(4294967295u, dot(reverseBits(~vec3<u32>(arg_2.b.a.x, arg_0.a.a.a.x, 4294967295u)), ~vec3<u32>(arg_2.a.a.x, 4416u, 18771u) >> (vec3<u32>(81963u, arg_2.b.a.x, arg_2.a.a.x) | vec3<u32>(arg_1.a.a.x, arg_0.a.b.a.x, u_input.d)))));
    let var_4 = Struct_3(arg_1);
    return func_5(u_input.b.x, -(-trunc(vec4<f32>(-332f, -429f, -922f, var_1.x)) - vec4<f32>(-867f, var_2.x, -var_2.x, -2449f)), vec3<f32>(-1000f / var_1.x, var_1.x, var_1.x), -818f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.a % ~u_input.a);
    var_0 = 24945u;
    var var_1 = -(-(-(-1760f) / round(-(-1168f))));
    let var_2 = ~vec3<i32>(-(-u_input.c.x) >> 4294967295u, u_input.c.x, -24048i);
    var var_3 = u_input.e;
    let var_4 = vec2<u32>(~(1u << ~u_input.a), ~4294967295u << 61567u);
    let var_5 = func_6(Struct_3(Struct_2(Struct_1(~vec2<u32>(4294967295u, var_4.x)), Struct_1(vec2<u32>(u_input.a, var_4.x)), var_2.x <= 47820i, i32(-2147483648) + clamp(var_2.x, var_2.x, u_input.e), var_2.x)), func_5(func_1(-(vec3<f32>(-665f, -1478f, -415f) - vec3<f32>(603f, -785f, -196f))), vec4<f32>(max(866f, -110f) + min(854f, -887f), 437f, -813f, 1301f), vec3<f32>(sign(max(-397f, 2646f)), -(-871f) / max(-1386f, -135f), (-366f * -667f) + trunc(-185f)), -step(select(1332f, 2218f, false), 1929f + -534f)), func_5(firstTrailingBit(u_input.b.x), vec4<f32>(step(-455f, -855f * -1049f), -(-740f), 978f, abs(-(-1000f))), -(-vec3<f32>(334f, -167f, -1254f)) + -(vec3<f32>(349f, -423f, -676f) * vec3<f32>(-677f, -1000f, 812f)), -395f / (max(2169f, 617f) - (-726f - 140f))));
    var var_6 = func_6(Struct_3(Struct_2(var_5.b, func_6(Struct_3(var_5), Struct_2(Struct_1(vec2<u32>(1u, 40558u)), var_5.a, true, 0i, var_5.e), Struct_2(Struct_1(vec2<u32>(7353u, u_input.a)), var_5.a, false, var_2.x, var_2.x)).b, var_5.c, var_5.d, (-7500i - -25041i) / ~(-12747i))), func_6(Struct_3(func_5(~39660i, -vec4<f32>(367f, 143f, -1000f, -476f), vec3<f32>(-1000f, 716f, 983f), floor(1000f))), var_5, func_6(Struct_3(var_5), Struct_2(var_5.b, Struct_1(var_5.b.a), var_5.c, -var_5.d, var_5.e), Struct_2(func_6(Struct_3(var_5), var_5, var_5).a, var_5.a, false, 0i, 5166i | var_2.x))), var_5).c;
    let x = u_input.a;
    s_output = StorageBuffer(select(trunc(-vec4<f32>(-1927f, 747f, 1229f, -567f)) - -select(vec4<f32>(752f, 1875f, -461f, -3226f), vec4<f32>(582f, 3172f, 1000f, 247f), var_5.c), vec4<f32>((-1238f + 1000f) + 1000f, floor(select(-1740f, 903f, true)), -733f, -(-355f)), func_5(select(1i, 1i, true), sign(vec4<f32>(212f, -1861f, 411f, 702f)), vec3<f32>(-1785f, -660f, -439f), 527f * -260f).c != select(false, 51403u > var_5.b.a.x, var_5.c)), round(-1000f / -(-543f * -479f)));
}

