// {"0:0":[61,147,82,28,100,155,233,36,62,187,106,220,243,145,81,202,30,190,61,246,120,235,88,193,243,130,40,130,130,181,139,183]}
// Seed: 15804599362168620601

struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = -1971f;
    let var_1 = Struct_2(Struct_1(floor(vec2<f32>(-1472f, 1000f)) / -vec2<f32>(1000f, -623f)), firstLeadingBit(abs(u_input.a)));
    let var_2 = arg_0.x;
    var var_3 = Struct_2(var_1.a, min(var_1.b, vec2<u32>(var_1.b.x >> u_input.a.x, dot(vec2<u32>(u_input.d.x, u_input.a.x) >> vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, var_1.b.x)))));
    let var_4 = Struct_4(~(dot(vec3<u32>(4294967295u, var_3.b.x, var_3.b.x), vec3<u32>(48179u, 15898u, u_input.c)) % (74407u ^ 0u)) % ~(var_3.b.x | ~21685u), -(-min(vec3<f32>(var_1.a.a.x, var_3.a.a.x, var_3.a.a.x), vec3<f32>(var_1.a.a.x, 111f, -584f))) * (-(vec3<f32>(700f, -1230f, var_1.a.a.x) / vec3<f32>(-1493f, var_1.a.a.x, var_1.a.a.x)) / vec3<f32>(var_1.a.a.x, -(-845f), var_1.a.a.x)));
    return -481f;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = vec2<u32>(dot(vec4<u32>(dot(vec3<u32>(arg_0.a.b.x, 0u, arg_0.a.b.x), vec3<u32>(52220u, 3721u, u_input.a.x)), 0u, ~u_input.a.x, arg_0.a.b.x / arg_0.a.b.x), vec4<u32>(u_input.d.x, ~1u, u_input.a.x + arg_0.a.b.x, firstTrailingBit(12115u))), (47739u + ~117064u) + ~1u) | (u_input.d / ~(u_input.d / ~vec2<u32>(u_input.d.x, arg_0.a.b.x)));
    var_0 = arg_0.a.b * ~vec2<u32>(79666u, ~arg_0.a.b.x);
    var var_1 = -(reverseBits(-19776i) + -18294i) < 2147483647i;
    var var_2 = arg_0.a.a;
    var_2 = arg_0.a.a;
    return vec4<bool>(!false, !true, !select(all(!vec4<bool>(true, true, true, false)), !true, false), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = max(vec2<u32>(abs(0u * arg_1.a.x) - 4294967295u, 27853u), (~arg_1.a.xy ^ (vec2<u32>(u_input.c, 1u) + (vec2<u32>(arg_1.a.x, u_input.c) << vec2<u32>(u_input.c, 0u)))) & vec2<u32>(arg_3.x, arg_1.a.x));
    var var_1 = true;
    let var_2 = dot(max(~(~vec2<u32>(60104u, 0u)), reverseBits(vec2<u32>(0u, arg_3.x) & (var_0 & var_0))), vec2<u32>(arg_1.a.x, 0u));
    let var_3 = var_2;
    let var_4 = (-132f * (arg_0.a.x + ceil(step(arg_0.a.x, arg_0.a.x)))) / arg_0.a.x;
    return select(func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(988f, var_4)), select(arg_3, u_input.d, vec2<bool>(false, arg_2)))), -func_3(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), countOneBits(countOneBits(arg_1.d)) & -arg_1.d), !vec4<bool>(0u != ~arg_3.x, arg_2, max(var_4, 228f) <= (var_4 / 1060f), any(!vec4<bool>(false, false, arg_2, true))), select(vec4<bool>((arg_1.e.x == arg_1.c.x) || select(arg_2, false, arg_2), true, -(-56243i) <= arg_1.e.x, -arg_0.a.x == var_4), func_4(Struct_3(Struct_2(Struct_1(arg_0.a), vec2<u32>(var_3, var_2))), select(arg_0.a.x, var_4, !arg_2), vec4<i32>(-683i | -1i, ~0i, -arg_1.d.x, 0i)), !(!arg_2 | (0u <= 1u))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_5(~(firstTrailingBit(~vec3<u32>(arg_2.x, u_input.c, 0u)) >> arg_2.yzy), vec4<i32>(-(-(-arg_3)), -arg_3 & u_input.b.x, 52067i & -5094i, ~u_input.b.x), firstTrailingBit(u_input.b), reverseBits(~reverseBits(vec4<i32>(arg_3, -26511i, arg_3, -14340i))), vec2<i32>(-9138i, -firstTrailingBit(arg_3)));
    var var_1 = vec3<f32>(exp2(arg_1.x) + (exp2(919f * 354f) / arg_1.x), arg_1.x, -(1668f * (2079f * -627f)) / -(-(-1593f * 1857f)));
    var var_2 = ~arg_2;
    var_1 = -vec3<f32>(select(arg_1.x, 1000f, 23221u != 0u) + 1994f, -324f, arg_1.x);
    var_0 = Struct_5(select(var_0.a, ~arg_2.xzw, arg_0.ywy), vec4<i32>(u_input.b.x, ~(-43001i), firstLeadingBit(-arg_3), 2147483647i + arg_3), vec2<i32>(~(-9591i), 50963i), -vec4<i32>(1i, arg_3, arg_3, abs(~arg_3)), var_0.e);
    return Struct_2(Struct_1(vec2<f32>(-exp2(arg_1.x), 863f)), arg_2.zw);
}

fn func_1() -> vec4<f32> {
    let var_0 = func_5(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), !false), select(func_2(Struct_1(vec2<f32>(1363f, 1455f)), Struct_5(vec3<u32>(4294967295u, u_input.a.x, 9372u), vec4<i32>(i32(-2147483648), u_input.b.x, 1i, 0i), u_input.b, vec4<i32>(-4602i, u_input.b.x, u_input.b.x, u_input.b.x), vec2<i32>(-474i, u_input.b.x)), true, u_input.d), !vec4<bool>(false, false, false, false), func_2(Struct_1(vec2<f32>(1205f, 1000f)), Struct_5(vec3<u32>(u_input.c, 55786u, 77264u), vec4<i32>(u_input.b.x, u_input.b.x, -18345i, 26097i), vec2<i32>(u_input.b.x, 16116i), vec4<i32>(3334i, 58496i, 1i, 1i), vec2<i32>(2147483647i, -12623i)), false, vec2<u32>(u_input.a.x, u_input.c))), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, true, true)), false, func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1413f, 608f)), vec2<u32>(u_input.d.x, u_input.d.x))), 200f, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -46053i)).x)), select(vec4<bool>(false, true != false, !true, all(vec2<bool>(true, false))), !func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(-1750f, -622f)), vec2<u32>(35637u, u_input.d.x))), 1874f, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -36356i)), func_2(Struct_1(vec2<f32>(1205f, -806f)), Struct_5(vec3<u32>(u_input.a.x, 0u, u_input.d.x), vec4<i32>(1i, u_input.b.x, u_input.b.x, i32(-2147483648)), u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 0i)), !true, vec2<u32>(4294967295u, u_input.d.x))), ((-238f / -847f) <= step(-1745f, 1142f)) || all(vec2<bool>(false, false))), vec2<f32>(ceil(1000f - 663f), 866f) - -vec2<f32>(222f + -250f, -370f + -234f), ~(~vec4<u32>(u_input.d.x, 1415u, 1u, 42114u) / vec4<u32>(u_input.d.x, u_input.c, u_input.c, u_input.d.x)) + (vec4<u32>(u_input.c, u_input.c, reverseBits(343u), ~17854u) + (vec4<u32>(47966u, u_input.a.x, 60533u, u_input.c) & vec4<u32>(0u, 1u, u_input.c, u_input.d.x))), (u_input.b.x - 1346i) / -41451i);
    var var_1 = Struct_1(round(var_0.a.a + var_0.a.a));
    return max(exp2(vec4<f32>(ceil(-1215f), var_0.a.a.x, -213f, -1408f)), trunc(vec4<f32>(-1140f, -var_1.a.x / (-180f + -1521f), func_3(vec4<bool>(true, true, true, false)) * step(-170f, -1646f), func_5(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), select(vec2<f32>(var_1.a.x, var_0.a.a.x), var_0.a.a, false), vec4<u32>(var_0.b.x, u_input.a.x, 27097u, 59637u) | vec4<u32>(var_0.b.x, u_input.c, u_input.d.x, 3880u), ~u_input.b.x).a.a.x)));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32) -> vec2<bool> {
    var var_0 = -1000f;
    let var_1 = !(!vec4<bool>(!any(vec2<bool>(false, true)), func_2(Struct_1(vec2<f32>(arg_0.x, arg_0.x)), Struct_5(vec3<u32>(4294967295u, 25873u, 4294967295u), vec4<i32>(11987i, u_input.b.x, u_input.b.x, u_input.b.x), vec2<i32>(-25631i, 55695i), vec4<i32>(57558i, i32(-2147483648), -32643i, 5247i), vec2<i32>(u_input.b.x, u_input.b.x)), false, vec2<u32>(45966u, u_input.c) << u_input.d).x, select(false, !false, u_input.b.x == u_input.b.x), (true | true) | func_4(Struct_3(Struct_2(Struct_1(arg_0.wz), vec2<u32>(0u, u_input.c))), -118f, vec4<i32>(u_input.b.x, 18622i, u_input.b.x, u_input.b.x)).x));
    let var_2 = var_1.zyz;
    var_0 = 290f;
    var_0 = -(-arg_0.x);
    return var_1.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 39449u;
    var var_1 = select(func_6(floor(func_1()) + (vec4<f32>(-638f, -687f, 128f, 111f) - -vec4<f32>(-1653f, -1000f, 443f, 932f)), var_0), select(!vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>((-26897i - u_input.b.x) > select(60749i, u_input.b.x, true), (true && false) && !true), !false), 338f < ((select(1875f, 2366f, true) + min(304f, -390f)) / (-543f * min(-264f, -707f))));
    var var_2 = Struct_5(~vec3<u32>(firstTrailingBit(var_0) - 0u, ~4294967295u * (var_0 << 1u), var_0), select(abs(vec4<i32>(64065i % 36300i, 8111i, u_input.b.x, u_input.b.x)), ~((vec4<i32>(u_input.b.x, 58626i, u_input.b.x, 11833i) >> vec4<u32>(var_0, 1u, 19414u, var_0)) >> firstLeadingBit(vec4<u32>(u_input.d.x, 1u, 1u, var_0))), !(!true) || (-u_input.b.x > countOneBits(u_input.b.x))), clamp((vec2<i32>(i32(-2147483648), 1i) & ~u_input.b) - (min(vec2<i32>(i32(-2147483648), u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) * u_input.b), u_input.b, vec2<i32>(abs(u_input.b.x) + (u_input.b.x | u_input.b.x), firstTrailingBit(-10752i) - (1i ^ u_input.b.x))), firstLeadingBit(reverseBits(vec4<i32>(-18744i, -1i, u_input.b.x ^ u_input.b.x, 17462i))), -(~u_input.b >> ~(vec2<u32>(65310u, var_0) % u_input.d)));
    var var_3 = Struct_4(var_0, vec3<f32>(min(max(1355f, max(-751f, 1000f)), 822f), -abs(1173f * 247f), -1440f));
    let var_4 = reverseBits(var_2.b.yxx);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, vec3<u32>(firstTrailingBit(~(var_0 ^ 4294967295u)), var_3.a, dot(~abs(vec4<u32>(14253u, var_2.a.x, var_0, u_input.d.x)), clamp(~vec4<u32>(94599u, 38481u, 0u, 1u), abs(vec4<u32>(var_2.a.x, 4294967295u, 0u, 1u)), vec4<u32>(85000u, 1u, 17013u, var_3.a) * vec4<u32>(var_0, 1u, var_2.a.x, 6336u)))));
}

