// {"0:0":[75,75,74,18,102,180,160,162,56,150,18,41,154,40,26,206,53,159,201,143,206,15,66,50,181,146,26,232,158,225,108,118]}
// Seed: 18239330114391099872

struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2(arg_0: Struct_1) -> Struct_3 {
    return Struct_3(Struct_1(~(vec3<i32>(0i, arg_0.b, arg_0.a.x) >> firstTrailingBit(vec3<u32>(68768u, 1u, u_input.c))), (min(-163i, u_input.b.x) / 1i) & ~2147483647i, u_input.a), Struct_2(select(26143u, arg_0.c.x, u_input.b.x == ~arg_0.b), arg_0, vec2<f32>((-485f + -1000f) + (1462f + -562f), -select(1026f, 1000f, false)), 1u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    let var_0 = u_input.c;
    let var_1 = Struct_3(arg_0.b.b, Struct_2(4490u * ~firstLeadingBit(0u), arg_0.b.b, -(vec2<f32>(arg_0.b.c.x, arg_0.b.c.x) + -vec2<f32>(arg_0.b.c.x, 922f)), abs(dot(vec3<u32>(arg_0.a.c.x, var_0, 27400u), u_input.a.zyx & arg_0.a.c.yxz))));
    let var_2 = !select(arg_1.zy, !(!vec2<bool>(false, true)), vec2<bool>(true, arg_1.x));
    var var_3 = !true;
    let var_4 = clamp(select(u_input.a, vec4<u32>(0u, arg_0.a.c.x, arg_0.a.c.x, var_1.a.c.x) ^ var_1.b.b.c, select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(var_2.x, false, true, true))) * u_input.a, vec4<u32>(var_0 + 27709u, 25117u, arg_0.b.b.c.x, dot(~vec2<u32>(var_1.b.b.c.x, 1u), ~vec2<u32>(u_input.c, var_0))), ~(~u_input.a) - ~(vec4<u32>(1994u, 763u, 1u, 36167u) + vec4<u32>(var_0, var_1.a.c.x, var_1.b.b.c.x, 19742u))) % countOneBits(~u_input.a);
    return var_1.b;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_2.d >> (func_3(func_2(arg_2.b), vec3<bool>(true | true, !false, all(vec4<bool>(true, true, true, false))), !(!false)).b.c.x >> arg_2.b.c.x);
    let var_1 = dot(arg_2.b.a.zz - vec2<i32>(u_input.b.x, firstTrailingBit(arg_2.b.b)), vec2<i32>(arg_3.x, 2147483647i));
    let var_2 = arg_2;
    var var_3 = clamp(~0u, var_2.b.c.x, ~0u);
    let var_4 = u_input.b.x;
    return func_2(func_2(Struct_1(~(-vec3<i32>(var_2.b.b, 1i, 40917i)), ~(-1i), vec4<u32>(firstLeadingBit(4294967295u), 1u - 4294967295u, 3301u, 1u / 60562u))).b.b).a;
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = select(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, false, true), !vec4<bool>(true, true, false, false), !false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), !vec4<bool>(true, !(!false), false, false), !(!false | !all(vec3<bool>(false, false, true))));
    var var_1 = func_2(arg_2).b;
    var_1 = func_3(Struct_3(var_1.b, func_3(Struct_3(var_1.b, func_2(Struct_1(arg_2.a, arg_2.a.x, var_1.b.c)).b), select(vec3<bool>(var_0.x, var_0.x, false), var_0.zzy, !var_0.xwz), all(var_0.xwx))), !select(!var_0.wzy, vec3<bool>(any(vec3<bool>(false, var_0.x, true)), false, !true), select(select(vec3<bool>(true, false, false), var_0.zyz, true), var_0.zxw, select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x), var_0.xwy))), any(vec2<bool>(!(var_0.x & var_0.x), -1000f < (354f - arg_0))));
    let var_2 = var_1.b.b;
    var var_3 = var_1.a + var_1.d;
    return Struct_3(func_3(func_2(arg_2), !select(!vec3<bool>(false, var_0.x, var_0.x), select(var_0.wzx, var_0.zwx, var_0.wxy), !vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x && (u_input.b.x <= 0i)).b, func_2(Struct_1(vec3<i32>(arg_2.b, arg_2.b, ~2147483647i), arg_2.a.x, vec4<u32>(81411u, func_4(u_input.b.x, arg_1, Struct_2(52471u, var_1.b, arg_1.zz, 0u), var_1.b.a).c.x, var_1.d, ~u_input.c))).b);
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(func_5(arg_3.b.c.x + step(select(arg_3.b.c.x, -634f, true), arg_3.b.c.x), exp2(-exp2(vec4<f32>(arg_3.b.c.x, arg_3.b.c.x, 1181f, arg_3.b.c.x))), arg_3.a).a, Struct_2(1u, Struct_1(select(arg_3.a.a, vec3<i32>(3855i, 0i, 2147483647i), select(vec3<bool>(true, false, arg_0.x), arg_0, vec3<bool>(false, arg_0.x, false))), u_input.b.x, vec4<u32>(~arg_3.b.d, 41540u + u_input.a.x, 4294967295u, ~arg_1)), arg_3.b.c, reverseBits(arg_1)));
    var_0 = Struct_3(func_4(countOneBits(abs(func_3(arg_3, vec3<bool>(true, false, true), arg_0.x).b.a.x)), -select(-vec4<f32>(var_0.b.c.x, 205f, var_0.b.c.x, arg_3.b.c.x), -vec4<f32>(var_0.b.c.x, -1000f, arg_3.b.c.x, arg_3.b.c.x), all(arg_0)), func_3(func_2(func_3(arg_3, arg_0, arg_0.x).b), !arg_0, arg_0.x), abs(vec3<i32>(arg_2.x, 1518i, -3290i) * vec3<i32>(13978i, arg_2.x, 63483i)) % func_3(Struct_3(var_0.a, arg_3.b), arg_0, !false).b.a), arg_3.b);
    var_0 = func_5(-(-(-1000f)), -(abs(vec4<f32>(1480f, arg_3.b.c.x, 272f, 2275f)) + (vec4<f32>(var_0.b.c.x, 2143f, arg_3.b.c.x, var_0.b.c.x) - vec4<f32>(-1245f, var_0.b.c.x, -126f, -1748f))) * min(vec4<f32>(arg_3.b.c.x, arg_3.b.c.x, var_0.b.c.x, 2625f) - -vec4<f32>(var_0.b.c.x, arg_3.b.c.x, arg_3.b.c.x, var_0.b.c.x), vec4<f32>(-1773f, arg_3.b.c.x, arg_3.b.c.x, arg_3.b.c.x) / floor(vec4<f32>(-759f, arg_3.b.c.x, arg_3.b.c.x, 546f))), func_3(arg_3, select(vec3<bool>(-123f < 172f, true, !arg_0.x), select(vec3<bool>(false, arg_0.x, true), select(arg_0, vec3<bool>(arg_0.x, true, false), arg_0.x), arg_0), arg_0), true).b);
    var_0 = func_2(func_3(Struct_3(func_4(reverseBits(58652i), -vec4<f32>(-1105f, arg_3.b.c.x, arg_3.b.c.x, 368f), func_5(var_0.b.c.x, vec4<f32>(arg_3.b.c.x, var_0.b.c.x, -433f, arg_3.b.c.x), Struct_1(arg_2, 36253i, u_input.a)).b, select(arg_2, arg_2, true)), arg_3.b), select(vec3<bool>(-6095i <= 0i, !false, arg_0.x || arg_0.x), vec3<bool>(596f <= var_0.b.c.x, arg_3.b.c.x != arg_3.b.c.x, !arg_0.x), any(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), !arg_0.x).b);
    var_0 = arg_3;
    return arg_3;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = -vec3<i32>((4762i + (arg_1.b ^ -38607i)) - (u_input.b.x - (2147483647i | 1i)), 2147483647i, abs(0i));
    var_0 = -vec3<i32>(~(firstLeadingBit(var_0.x) & var_0.x), var_0.x, 43839i << ~(~33040u));
    var_0 = vec3<i32>(0i, u_input.b.x, 28681i);
    let var_1 = arg_1;
    var var_2 = func_6(arg_3.xxw, ~(~arg_2.x), select(var_1.a, ~(vec3<i32>(var_0.x, 2147483647i, 16599i) & vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), any(!arg_3)), func_5(-368f, vec4<f32>(-378f - -828f, -416f, 1164f, -665f - 795f) - abs(exp2(vec4<f32>(383f, -1366f, 2088f, -372f))), func_4(firstLeadingBit(42935i) % 2147483647i, min(vec4<f32>(1383f, 1511f, -700f, 767f), vec4<f32>(-1199f, 161f, -2039f, 1345f) / vec4<f32>(-748f, 254f, -1934f, 146f)), func_3(func_2(Struct_1(var_1.a, -11761i, vec4<u32>(0u, var_1.c.x, 26889u, var_1.c.x))), select(arg_3.wwy, arg_3.zzy, arg_3.x), arg_3.x), var_1.a)));
    return Struct_3(Struct_1(~min(var_2.a.a * arg_1.a, var_1.a), -firstTrailingBit(var_2.b.b.a.x), func_4(62182i, min(vec4<f32>(var_2.b.c.x, 120f, var_2.b.c.x, var_2.b.c.x), vec4<f32>(1734f, -1040f, 785f, var_2.b.c.x)), func_5(-772f, vec4<f32>(var_2.b.c.x, 353f, 180f, var_2.b.c.x), var_2.a).b, vec3<i32>(1i, -1i, var_2.b.b.b)).c << max(min(vec4<u32>(1u, 0u, var_1.c.x, 35266u), vec4<u32>(4294967295u, arg_2.x, 51563u, arg_1.c.x)), ~arg_1.c)), var_2.b);
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(func_1(func_1(~u_input.a.xxw, arg_0.a, ~(~vec2<u32>(arg_0.b.b.c.x, arg_0.b.a)), select(arg_2, vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), select(arg_2, vec4<bool>(false, false, arg_2.x, arg_2.x), true))).a.c.zwz, func_3(func_1(vec3<u32>(9514u, 4294967295u, 0u), arg_0.b.b, ~u_input.a.zx, !vec4<bool>(true, arg_2.x, true, false)), arg_2.xzw, true).b, select(arg_0.b.b.c.wz, ~u_input.a.wx, !(!arg_2.x)), arg_2).a.c.x, arg_0.b.b, round(arg_0.b.c), arg_0.b.a);
    var_0 = func_2(func_6(vec3<bool>(false, all(!vec2<bool>(arg_2.x, true)), arg_2.x | all(vec4<bool>(arg_2.x, true, arg_2.x, false))), ~(~(3046u >> u_input.a.x)), arg_0.b.b.a + arg_0.a.a, arg_0).a).b;
    var var_1 = var_0.b.a;
    var_1 = arg_0.b.b.a | vec3<i32>(-var_1.x, func_2(Struct_1(var_0.b.a, 40450i, vec4<u32>(75273u, 0u, 52054u, 1u))).b.b.a.x / 34986i, 31394i);
    let var_2 = ~max(dot(vec2<u32>(dot(vec3<u32>(15816u, var_0.d, u_input.a.x), arg_0.b.b.c.zwx), var_0.a), ~(var_0.b.c.wz * u_input.a.zz)), (u_input.a.x * 0u) ^ ((arg_0.b.b.c.x >> 25930u) ^ ~u_input.a.x));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(~(~(~vec3<u32>(u_input.c, u_input.a.x, 0u))), Struct_1(-(~vec3<i32>(-1i, u_input.b.x, 5636i)), u_input.b.x & dot(vec4<i32>(i32(-2147483648), u_input.b.x, -94122i, u_input.b.x), vec4<i32>(u_input.b.x, -32161i, u_input.b.x, u_input.b.x)), u_input.a), firstTrailingBit(max(firstLeadingBit(vec2<u32>(1u, 97319u)), ~vec2<u32>(1u, 22386u))), !(!(!vec4<bool>(false, true, true, false)))), -834f, !vec4<bool>(!false, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), all(vec4<bool>(true, false, true, true))));
    var_0 = func_5(1459f / step(2167f, -(-1000f) + (559f + -2083f)), max(select(vec4<f32>(631f, 556f, -1385f, 1000f), vec4<f32>(1889f, -1439f, -422f, -106f) - vec4<f32>(195f, 1611f, 1143f, 250f), vec4<bool>(false, false, true, true)), round(sign(vec4<f32>(772f, 342f, -841f, -755f)))) + trunc(vec4<f32>(step(-878f, -415f), 1806f, 874f, -(-1086f))), func_5(210f, -(round(vec4<f32>(-935f, -129f, 117f, 799f)) * -vec4<f32>(-1879f, 970f, 961f, -515f)), func_2(func_2(func_7(Struct_3(Struct_1(var_0.a, var_0.b, vec4<u32>(0u, 1u, u_input.c, var_0.c.x)), Struct_2(var_0.c.x, Struct_1(vec3<i32>(28233i, var_0.a.x, i32(-2147483648)), var_0.b, vec4<u32>(1u, 85561u, var_0.c.x, u_input.c)), vec2<f32>(-821f, -377f), var_0.c.x)), -210f, vec4<bool>(false, false, true, true))).b.b).a).a).a;
    var var_1 = true;
    let var_2 = func_2(Struct_1(var_0.a - -vec3<i32>(i32(-2147483648), var_0.a.x, 78106i), min(16942i, -abs(u_input.b.x)), reverseBits(var_0.c))).b.b;
    let var_3 = func_7(Struct_3(Struct_1(vec3<i32>(-var_0.a.x, var_2.b * u_input.b.x, var_2.a.x | -33479i), (-267i + i32(-2147483648)) * ~u_input.b.x, (u_input.a | vec4<u32>(var_2.c.x, var_0.c.x, 1u, 1u)) / var_0.c), Struct_2(~(var_2.c.x / 7557u), func_4(~var_0.b, -vec4<f32>(1000f, 118f, -1254f, -1000f), func_6(vec3<bool>(false, true, true), var_2.c.x, vec3<i32>(u_input.b.x, 34092i, var_0.b), Struct_3(Struct_1(var_0.a, var_0.a.x, vec4<u32>(var_2.c.x, 0u, 34609u, var_2.c.x)), Struct_2(0u, Struct_1(var_2.a, 2147483647i, var_2.c), vec2<f32>(-945f, -239f), var_2.c.x))).b, max(vec3<i32>(var_0.b, -11062i, var_0.a.x), vec3<i32>(2147483647i, u_input.b.x, -23590i))), -(vec2<f32>(126f, -328f) / vec2<f32>(-276f, 1906f)), var_2.c.x)), -991f, select(vec4<bool>(!false & (4294967295u < var_0.c.x), u_input.a.x > 4294967295u, func_4(u_input.b.x, vec4<f32>(-1253f, -1257f, 406f, -178f), Struct_2(var_0.c.x, var_2, vec2<f32>(375f, -582f), 27950u), var_2.a).b <= i32(-2147483648), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), vec4<bool>(all(vec4<bool>(true, false, false, true)), !(-418f < 609f), select(true, true, false) && !false, !any(vec4<bool>(false, false, false, true))), !vec4<bool>(any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true)), false, -233f <= 187f))).a.x;
    var_0 = Struct_1(-reverseBits(~countOneBits(var_0.a)), var_0.a.x, var_2.c);
    let var_4 = vec4<f32>(func_2(Struct_1(func_2(var_2).a.a, ~var_2.b, max(var_2.c, vec4<u32>(var_2.c.x, var_0.c.x, u_input.a.x, 4294967295u)))).b.c.x, -1000f, -(-1000f) * func_1(vec3<u32>(46152u, var_2.c.x, var_0.c.x), func_7(Struct_3(Struct_1(var_0.a, 40345i, var_2.c), Struct_2(1u, var_2, vec2<f32>(-199f, 952f), var_0.c.x)), -923f, vec4<bool>(false, false, false, true)), vec2<u32>(var_2.c.x, var_2.c.x), !vec4<bool>(true, false, true, true)).b.c.x, func_2(var_2).b.c.x) * vec4<f32>(select(sign(484f), abs(1937f), !(!false)), 610f, 1144f, func_3(func_6(!vec3<bool>(true, false, true), abs(65625u), var_2.a ^ var_2.a, func_6(vec3<bool>(true, false, false), var_0.c.x, var_0.a, Struct_3(Struct_1(var_2.a, var_2.b, var_2.c), Struct_2(1941u, var_2, vec2<f32>(299f, 292f), var_0.c.x)))), !(!vec3<bool>(true, true, false)), select(all(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, false)), !false)).c.x);
    var_1 = !(select(!(!false), !any(vec4<bool>(true, true, true, true)), !false) & all(vec2<bool>(true & true, true)));
    let x = u_input.a;
    s_output = StorageBuffer((min(firstTrailingBit(vec4<i32>(u_input.b.x, 21577i, var_3, var_3)), vec4<i32>(u_input.b.x, u_input.b.x, -1i, var_0.a.x)) | ~vec4<i32>(var_2.b, u_input.b.x, 1i, -13336i)) << vec4<u32>(firstLeadingBit(var_0.c.x), 2880u - dot(var_2.c, vec4<u32>(u_input.a.x, var_0.c.x, var_2.c.x, u_input.a.x)), u_input.c, var_2.c.x), vec2<u32>(var_0.c.x, u_input.a.x));
}

