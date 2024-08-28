// {"0:0":[170,245,56,116,11,68,65,237,13,125,15,120]}
// Seed: 6551047643658809656

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = i32(-2147483648);
    let var_1 = u_input.a + u_input.a;
    let var_2 = ~dot(~(vec3<u32>(0u, 0u, u_input.b) << vec3<u32>(0u, u_input.b, 4294967295u)) % ((vec3<u32>(0u, 4294967295u, u_input.b) << vec3<u32>(4294967295u, arg_0, 0u)) - (vec3<u32>(arg_1, u_input.b, arg_0) ^ vec3<u32>(31395u, 38139u, 37518u))), select(~vec3<u32>(23579u, 1u, 7709u), vec3<u32>(u_input.b, arg_1, u_input.c) % vec3<u32>(arg_1, 6603u, u_input.b), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))));
    let var_3 = Struct_4(Struct_1(!vec2<bool>(false, !true), exp2(vec4<f32>(1839f, 1595f, 965f, 259f) / step(vec4<f32>(212f, -1323f, 2095f, -1507f), vec4<f32>(-376f, 440f, -233f, -323f))), floor(-1760f)), -(((vec3<f32>(183f, 1000f, -2975f) + vec3<f32>(1305f, 619f, 1000f)) / vec3<f32>(847f, -451f, -662f)) / vec3<f32>(-(-192f), -(-652f), trunc(1149f))), Struct_3(arg_0, Struct_1(!(!vec2<bool>(false, true)), exp2(step(vec4<f32>(364f, 1000f, 811f, -227f), vec4<f32>(564f, 436f, -1595f, -1000f))), (184f * 471f) + ceil(-675f)), Struct_2(max(vec4<f32>(663f, 2282f, 881f, -1000f) + vec4<f32>(121f, 2414f, -171f, -447f), vec4<f32>(748f, 1145f, -253f, -465f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-526f, -324f, 411f, 977f), max(-345f, -449f))), abs(abs(vec3<u32>(4294967295u, u_input.b, 594u)) & vec3<u32>(861u, 92619u, u_input.b))), ~6271i);
    var var_4 = vec3<f32>(-trunc(var_3.a.b.x), round(sign(var_3.b.x)) - round(var_3.c.c.b.c), step(-var_3.c.b.c * var_3.b.x, round(-2135f)));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = vec3<u32>(76634u >> arg_1.a, ~u_input.c, arg_1.a);
    let var_1 = Struct_3(func_3(~(1u ^ (0u - 1u)), var_0.x), arg_1.c.b, arg_1.c, ~((var_0 << ~vec3<u32>(0u, arg_1.a, 81204u)) ^ arg_1.d));
    let var_2 = vec3<u32>(var_1.d.x, min(0u, arg_1.d.x), 68657u);
    let var_3 = 0u;
    var var_4 = dot(vec2<i32>(firstTrailingBit(-arg_0), arg_0), ~(vec2<i32>(-1i, 0i) << var_1.d.xx) + min(~vec2<i32>(1i, i32(-2147483648)), -vec2<i32>(u_input.a, 0i))) & u_input.a;
    return select(!select(select(!vec4<bool>(true, var_1.c.b.a.x, true, true), vec4<bool>(var_1.b.a.x, false, true, var_1.b.a.x), all(vec2<bool>(var_1.b.a.x, var_1.b.a.x))), vec4<bool>(any(arg_1.b.a), var_1.c.b.a.x & arg_1.c.b.a.x, select(var_1.b.a.x, var_1.c.b.a.x, arg_1.b.a.x), arg_1.c.b.a.x), !(!var_1.b.a.x)), !(!vec4<bool>(arg_0 >= u_input.a, select(var_1.c.b.a.x, false, false), true, false && true)), all(!select(!vec4<bool>(arg_1.c.b.a.x, var_1.b.a.x, arg_1.b.a.x, false), select(vec4<bool>(arg_1.b.a.x, var_1.b.a.x, var_1.b.a.x, false), vec4<bool>(true, false, false, true), true), !true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = any(select(select(!func_2(u_input.a, Struct_3(0u, Struct_1(arg_1.a.a, arg_1.c.b.b, arg_1.a.b.x), arg_1.c.c, vec3<u32>(arg_1.c.a, arg_1.c.a, 1u))), !(!vec4<bool>(arg_1.c.c.b.a.x, arg_1.a.a.x, arg_1.c.b.a.x, arg_1.a.a.x)), !vec4<bool>(arg_1.c.c.b.a.x, arg_1.c.b.a.x, true, true)), func_2(5529i, Struct_3(arg_1.c.d.x, Struct_1(arg_1.a.a, arg_1.c.b.b, arg_0.x), Struct_2(vec4<f32>(arg_0.x, arg_0.x, 1445f, 1465f), Struct_1(arg_1.a.a, vec4<f32>(931f, arg_1.b.x, -1021f, arg_0.x), arg_0.x)), vec3<u32>(arg_1.c.d.x, 102663u, 57300u))), select(func_2(-467i, Struct_3(u_input.c, Struct_1(arg_1.c.c.b.a, vec4<f32>(1206f, 120f, -1975f, 1263f), arg_1.a.b.x), arg_1.c.c, vec3<u32>(arg_1.c.d.x, 61727u, 4294967295u))), vec4<bool>(4294967295u > u_input.b, !true, all(arg_1.a.a), !false), vec4<bool>(false, false & arg_1.a.a.x, any(vec2<bool>(false, false)), arg_1.a.a.x))));
    var var_1 = Struct_2(-abs(vec4<f32>(949f, arg_1.a.c, round(-1007f), arg_0.x)), Struct_1(arg_1.a.a, sign((arg_1.c.b.b + arg_1.a.b) * -arg_1.c.c.b.b), 110f));
    var var_2 = arg_1.b.x;
    var var_3 = (~vec2<i32>(u_input.a, dot(vec4<i32>(u_input.a, u_input.a, -1i, i32(-2147483648)), vec4<i32>(-1i, u_input.a, u_input.a, 30792i))) ^ -((vec2<i32>(20145i, u_input.a) / vec2<i32>(arg_1.d, u_input.a)) - reverseBits(vec2<i32>(27336i, -29698i)))) << vec2<u32>(clamp(countOneBits(u_input.b) & 43767u, 1u, ~arg_1.c.a), 9315u);
    var_1 = Struct_2(arg_1.c.b.b, var_1.b);
    return arg_1.c;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    var var_0 = select(select(firstTrailingBit(vec2<i32>(-u_input.a, ~(-63887i))), (~vec2<i32>(arg_1, u_input.a) << select(arg_0.d.zy, vec2<u32>(arg_0.d.x, 0u), false)) - max(-vec2<i32>(0i, -51897i), vec2<i32>(-21564i, 20159i) / vec2<i32>(arg_1, -1i)), !vec2<bool>(arg_0.c.b.a.x, -25001i >= 28907i)), -firstTrailingBit(-vec2<i32>(arg_1, arg_1)) * ~countOneBits(~vec2<i32>(u_input.a, arg_1)), !arg_0.b.a);
    var_0 = vec2<i32>(firstLeadingBit(1i), max(var_0.x, -(-(~arg_1))));
    var var_1 = -(i32(-2147483648) << 72760u) | -(-abs(arg_1));
    var var_2 = dot(firstTrailingBit(vec3<i32>(~(i32(-2147483648)), -1i, reverseBits(1i) << 12824u)), (vec3<i32>(var_0.x, -13493i, arg_1 - 14435i) & firstTrailingBit(countOneBits(vec3<i32>(arg_1, -38965i, var_0.x)))) - -(~vec3<i32>(arg_1, -1i, -48768i)));
    var_1 = clamp(i32(-2147483648) * var_0.x, -firstLeadingBit(arg_1), -31396i);
    return Struct_4(arg_0.c.b, vec3<f32>(arg_0.c.a.x, 223f - (abs(1000f) + 1019f), (-arg_0.c.a.x - -232f) * abs(step(arg_0.b.b.x, 523f))), arg_0, ~u_input.a);
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_2.d;
    var var_1 = true;
    return func_1(func_4(arg_2.c, ~1i).a.b.zx, Struct_4(func_4(arg_2.c, dot(abs(vec4<i32>(u_input.a, u_input.a, arg_2.d, 1i)), vec4<i32>(var_0, var_0, arg_2.d, var_0) + vec4<i32>(arg_2.d, var_0, u_input.a, 0i))).a, vec3<f32>(-trunc(154f), exp2(arg_2.b.x - arg_2.a.b.x), 2139f - max(arg_2.b.x, arg_2.b.x)), arg_2.c, arg_2.d)).c.b;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_4(func_5(dot(vec4<u32>(25810u, u_input.c, 4294967295u, 4294967295u) ^ arg_1, ~vec4<u32>(4294967295u, arg_1.x, 7566u, u_input.b)) * ~max(u_input.c, 0u), vec3<bool>(func_1(max(arg_2.b.xx, arg_2.b.xw), Struct_4(arg_2, vec3<f32>(arg_2.b.x, arg_2.c, arg_2.c), Struct_3(0u, Struct_1(vec2<bool>(arg_2.a.x, true), arg_2.b, -1897f), Struct_2(arg_2.b, Struct_1(arg_2.a, vec4<f32>(arg_2.b.x, arg_2.c, arg_2.c, arg_2.c), arg_2.b.x)), vec3<u32>(50921u, u_input.c, u_input.c)), 2147483647i)).b.a.x, !false, arg_2.a.x), func_4(Struct_3(263u, Struct_1(arg_2.a, vec4<f32>(493f, -474f, arg_2.b.x, -202f), -1197f), Struct_2(arg_2.b, Struct_1(arg_2.a, arg_2.b, arg_2.c)), ~vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), 46575i)), arg_2.b.yzx, func_1(ceil(-(arg_2.b.yx + vec2<f32>(arg_2.c, arg_2.c))), func_4(Struct_3(dot(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.c)), func_1(arg_2.b.yz, Struct_4(Struct_1(arg_2.a, arg_2.b, -137f), arg_2.b.zww, Struct_3(4547u, Struct_1(arg_2.a, vec4<f32>(arg_2.c, 1304f, 129f, arg_2.c), -339f), Struct_2(arg_2.b, arg_2), vec3<u32>(63213u, 4294967295u, arg_1.x)), u_input.a)).c.b, func_1(arg_2.b.wz, Struct_4(Struct_1(arg_2.a, arg_2.b, arg_2.b.x), vec3<f32>(arg_2.c, arg_2.c, 1250f), Struct_3(0u, Struct_1(vec2<bool>(arg_2.a.x, arg_2.a.x), vec4<f32>(arg_2.b.x, 105f, arg_2.b.x, arg_2.b.x), arg_2.b.x), Struct_2(arg_2.b, arg_2), arg_1.xyz), arg_0.x)).c, firstLeadingBit(vec3<u32>(1u, 0u, 4294967295u))), arg_0.x)), dot(arg_0, ((arg_0 * arg_0) ^ ~vec4<i32>(5984i, 4778i, 1i, u_input.a)) ^ -(~vec4<i32>(arg_0.x, u_input.a, -1i, u_input.a))));
    var_0 = Struct_4(Struct_1(!vec2<bool>(!true, !true), vec4<f32>(242f + var_0.c.c.b.c, -var_0.c.b.b.x, min(var_0.b.x, -1121f), var_0.a.b.x), select(-arg_2.b.x / -495f, -var_0.c.b.b.x, true)), vec3<f32>(628f, -arg_2.b.x, 161f), var_0.c, 54770i);
    var var_1 = func_1((arg_2.b.wx + arg_2.b.xz) * -arg_2.b.xw, func_4(var_0.c, 1i ^ u_input.a)).b;
    return abs(vec3<u32>(var_0.c.a, ~dot(countOneBits(arg_1), ~arg_1), ~func_3(abs(u_input.c), var_0.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2490f + ((-trunc(567f) / -sign(-1000f)) + ((-296f + -(-272f)) + -1000f));
    let var_1 = -vec4<i32>(i32(-2147483648), u_input.a, u_input.a, 2147483647i);
    var var_2 = clamp(~(~(vec3<u32>(u_input.c, 4294967295u, u_input.c) & (vec3<u32>(u_input.c, u_input.b, 4294967295u) - vec3<u32>(u_input.c, u_input.b, u_input.c)))), firstLeadingBit(~reverseBits(~vec3<u32>(u_input.b, 1u, 27304u))), countOneBits(vec3<u32>(62062u, 4294967295u, 19494u) * ~vec3<u32>(65213u, 1u, 1u)) % vec3<u32>(u_input.b, u_input.c, min(~u_input.b, u_input.b)));
    var_2 = select(func_6(vec4<i32>(var_1.x, 1i, dot(var_1, vec4<i32>(var_1.x, 22416i, u_input.a, var_1.x)), u_input.a) - var_1, ~abs(vec4<u32>(0u, 4294967295u, 1u, 0u)), func_5(var_2.x, !(!vec3<bool>(true, false, false)), func_4(func_1(vec2<f32>(-1049f, var_0), Struct_4(Struct_1(vec2<bool>(true, true), vec4<f32>(-1443f, var_0, 1305f, -240f), var_0), vec3<f32>(266f, 2393f, var_0), Struct_3(u_input.c, Struct_1(vec2<bool>(true, false), vec4<f32>(-1064f, 580f, var_0, -662f), 1278f), Struct_2(vec4<f32>(var_0, -356f, var_0, var_0), Struct_1(vec2<bool>(true, false), vec4<f32>(-294f, -466f, 1965f, var_0), var_0)), vec3<u32>(12050u, var_2.x, 4294967295u)), var_1.x)), 10425i))), ~vec3<u32>(var_2.x, 1u << 0u, var_2.x >> var_2.x) ^ vec3<u32>(4294967295u, u_input.b, var_2.x), !(-var_0 <= -1876f));
    let var_3 = func_4(Struct_3(abs((var_2.x | 0u) ^ 30630u), func_4(Struct_3(~u_input.b, Struct_1(vec2<bool>(true, true), vec4<f32>(var_0, var_0, var_0, var_0), 571f), func_4(Struct_3(0u, Struct_1(vec2<bool>(true, true), vec4<f32>(var_0, var_0, 100f, -1473f), -746f), Struct_2(vec4<f32>(var_0, var_0, var_0, -131f), Struct_1(vec2<bool>(true, true), vec4<f32>(var_0, var_0, var_0, -551f), -495f)), vec3<u32>(1u, u_input.c, u_input.b)), u_input.a).c.c, vec3<u32>(u_input.b, 35462u, 86833u) >> vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~(-u_input.a)).a, Struct_2(vec4<f32>(var_0, var_0, -177f, var_0) * func_5(48975u, vec3<bool>(true, true, true), Struct_4(Struct_1(vec2<bool>(false, false), vec4<f32>(1426f, 179f, var_0, -1002f), 998f), vec3<f32>(1416f, 105f, var_0), Struct_3(1u, Struct_1(vec2<bool>(true, true), vec4<f32>(1266f, var_0, var_0, -414f), -790f), Struct_2(vec4<f32>(1000f, var_0, 1033f, var_0), Struct_1(vec2<bool>(false, false), vec4<f32>(var_0, var_0, 1155f, var_0), var_0)), vec3<u32>(var_2.x, var_2.x, u_input.c)), 2147483647i)).b, func_5(u_input.c, select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), func_4(Struct_3(var_2.x, Struct_1(vec2<bool>(true, true), vec4<f32>(var_0, 1000f, var_0, -1087f), var_0), Struct_2(vec4<f32>(var_0, var_0, var_0, var_0), Struct_1(vec2<bool>(true, false), vec4<f32>(var_0, var_0, var_0, var_0), var_0)), vec3<u32>(u_input.c, 46752u, 1u)), 1i))), vec3<u32>(~u_input.c, 13985u, abs(u_input.b)) << ~(~vec3<u32>(var_2.x, var_2.x, var_2.x))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-sign(var_3.c.c.b.b.ww / ceil(var_3.c.c.a.yw)));
}

