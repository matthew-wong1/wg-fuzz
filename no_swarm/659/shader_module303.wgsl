// {"0:0":[228,119,134,74,42,57,172,17]}
// Seed: 13013526461008879673

struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(vec3<u32>(global0.a.x, clamp(33873u, u_input.a.x, ~global0.a.x), 1u));
    let var_1 = vec2<bool>(arg_0, any(vec3<bool>(!true, -(-1116f) <= -648f, true)));
    global0 = Struct_1(~(~vec3<u32>(u_input.a.x, 3936u, u_input.a.x) >> ~(~global0.a)));
    let var_2 = reverseBits(~global0.a.x);
    global0 = Struct_1(vec3<u32>(2833u, abs(8603u), 1u >> u_input.a.x));
    return min(firstTrailingBit(~var_0.a.x), ~44839u);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    global0 = Struct_1(((select(arg_2.c.a, arg_0.c.a.e.a, true) & ~global0.a) + vec3<u32>(u_input.a.x, dot(vec3<u32>(arg_2.a.x, arg_1.a.a.x, 11197u), global0.a), arg_1.a.e.a.x >> 1u)) | ~vec3<u32>(~0u, ~arg_1.a.b.a.x, func_3(true)));
    global0 = arg_2.c;
    global0 = Struct_1(~vec3<u32>(func_3(false) + dot(vec2<u32>(u_input.a.x, 1u), arg_0.c.a.e.a.xz), arg_1.a.b.a.x >> 9795u, 11042u | ~global0.a.x));
    global0 = arg_1.a.e;
    var var_0 = arg_0.c.a.e;
    return Struct_3(abs((abs(vec4<u32>(var_0.a.x, global0.a.x, arg_2.a.x, 4294967295u)) >> vec4<u32>(arg_2.e.a.x, 2156u, 3347u, 21686u)) + select(vec4<u32>(47744u, global0.a.x, 0u, arg_0.b), vec4<u32>(42866u, u_input.a.x, 51949u, 42925u) / arg_0.c.a.a, true)), Struct_1(vec3<u32>(u_input.a.x, var_0.a.x, ~func_3(false))), Struct_1(vec3<u32>(10719u % 6672u, firstLeadingBit(arg_0.d + 8417u), ~arg_1.a.a.x << ~97466u)), ~(dot(-vec3<i32>(0i, arg_0.c.a.d, arg_2.d), vec3<i32>(11881i, -1i, arg_1.a.d)) * arg_2.d), arg_1.a.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = func_2(Struct_5(arg_2.d, 24035u, Struct_4(Struct_3(select(arg_2.a, arg_2.a, vec4<bool>(true, true, false, false)), arg_2.e, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, global0.a.x)), 19372i, func_2(Struct_5(arg_2.d, 0u, Struct_4(arg_2), global0.a.x), Struct_4(Struct_3(vec4<u32>(u_input.a.x, 11416u, 258u, 108062u), arg_2.c, Struct_1(vec3<u32>(global0.a.x, u_input.a.x, 50588u)), i32(-2147483648), Struct_1(vec3<u32>(152568u, 3406u, 4294967295u)))), Struct_3(vec4<u32>(arg_2.e.a.x, global0.a.x, global0.a.x, global0.a.x), arg_2.b, Struct_1(arg_2.c.a), -10614i, Struct_1(arg_2.a.zxw))).e)), firstLeadingBit(0u)), Struct_4(func_2(Struct_5(arg_2.d, ~global0.a.x, Struct_4(Struct_3(arg_2.a, Struct_1(global0.a), arg_2.b, arg_2.d, arg_2.e)), clamp(4294967295u, 0u, 57139u)), Struct_4(func_2(Struct_5(arg_2.d, global0.a.x, Struct_4(arg_2), global0.a.x), Struct_4(arg_2), arg_2)), Struct_3(vec4<u32>(arg_2.a.x, 13232u, u_input.a.x, arg_2.a.x) >> vec4<u32>(0u, global0.a.x, 1u, arg_2.e.a.x), arg_2.c, Struct_1(global0.a), arg_2.d, arg_2.b))), arg_2);
    let var_1 = Struct_5(-1i & (func_2(Struct_5(arg_2.d, u_input.a.x, Struct_4(arg_2), var_0.e.a.x), Struct_4(Struct_3(var_0.a, Struct_1(vec3<u32>(var_0.a.x, 1u, arg_2.b.a.x)), arg_2.c, var_0.d, Struct_1(var_0.b.a))), Struct_3(var_0.a, Struct_1(vec3<u32>(var_0.a.x, 4294967295u, 272u)), Struct_1(vec3<u32>(8621u, arg_2.c.a.x, u_input.a.x)), arg_2.d, Struct_1(vec3<u32>(31994u, u_input.a.x, 1u)))).d >> var_0.a.x), global0.a.x, Struct_4(func_2(Struct_5(2147483647i / var_0.d, u_input.a.x, Struct_4(Struct_3(var_0.a, Struct_1(global0.a), arg_2.c, -2030i, Struct_1(arg_2.e.a))), global0.a.x % 4294967295u), Struct_4(func_2(Struct_5(-1i, 0u, Struct_4(Struct_3(vec4<u32>(var_0.c.a.x, u_input.a.x, var_0.b.a.x, arg_2.a.x), Struct_1(arg_2.c.a), Struct_1(global0.a), i32(-2147483648), arg_2.b)), 89271u), Struct_4(Struct_3(arg_2.a, var_0.b, arg_2.e, arg_2.d, var_0.e)), Struct_3(vec4<u32>(var_0.c.a.x, 32702u, 45282u, arg_2.c.a.x), Struct_1(vec3<u32>(1u, 25257u, u_input.a.x)), Struct_1(var_0.b.a), arg_2.d, Struct_1(vec3<u32>(106695u, var_0.a.x, arg_2.e.a.x))))), func_2(Struct_5(24232i, global0.a.x, Struct_4(arg_2), 33436u), Struct_4(Struct_3(arg_2.a, Struct_1(arg_2.c.a), Struct_1(var_0.c.a), -1i, var_0.b)), Struct_3(vec4<u32>(var_0.e.a.x, global0.a.x, var_0.e.a.x, 0u), arg_2.b, var_0.c, -17094i, arg_2.b)))), 29927u);
    let var_2 = arg_2.c.a.x;
    global0 = Struct_1(global0.a);
    let var_3 = reverseBits(firstTrailingBit(~vec3<i32>(1i, var_0.d, 2147483647i) / reverseBits(vec3<i32>(arg_2.d, var_0.d, var_1.a)))) & -reverseBits(min(-vec3<i32>(var_1.c.a.d, var_1.a, 2147483647i), -vec3<i32>(var_1.c.a.d, 1246i, i32(-2147483648))));
    return var_0.a.wzw | vec3<u32>(~0u, 1u, ~1u);
}

fn func_1() -> vec3<bool> {
    global0 = Struct_1(~(reverseBits(global0.a) | ~vec3<u32>(52052u, u_input.a.x, 4925u)) | (func_4(vec2<bool>(true, false), !vec4<bool>(false, false, false, false), func_2(Struct_5(-1i, global0.a.x, Struct_4(Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, 995u, global0.a.x), Struct_1(vec3<u32>(u_input.a.x, global0.a.x, global0.a.x)), Struct_1(global0.a), 32378i, Struct_1(global0.a))), global0.a.x), Struct_4(Struct_3(vec4<u32>(global0.a.x, 0u, 1u, u_input.a.x), Struct_1(global0.a), Struct_1(vec3<u32>(1u, global0.a.x, 1u)), -20500i, Struct_1(global0.a))), Struct_3(vec4<u32>(global0.a.x, global0.a.x, 4096u, 4294967295u), Struct_1(global0.a), Struct_1(vec3<u32>(0u, 0u, global0.a.x)), -21247i, Struct_1(vec3<u32>(0u, 0u, 31900u)))), !vec3<bool>(false, false, false)) / firstLeadingBit(~vec3<u32>(1u, 91870u, global0.a.x))));
    var var_0 = -(vec2<f32>(max(-1247f, -1759f), -(-498f)) * (ceil(vec2<f32>(-1820f, 1000f)) * vec2<f32>(-1572f, -1000f))) * vec2<f32>(-1245f, -(abs(-904f) / floor(-1000f)));
    global0 = func_2(Struct_5(-13444i / dot(vec3<i32>(i32(-2147483648), -6526i, -27009i), ~vec3<i32>(859i, 10916i, 21693i)), firstLeadingBit(10000u), Struct_4(func_2(Struct_5(-17351i, global0.a.x, Struct_4(Struct_3(vec4<u32>(1u, global0.a.x, global0.a.x, u_input.a.x), Struct_1(vec3<u32>(1u, 4294967295u, 16533u)), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, global0.a.x)), 17822i, Struct_1(global0.a))), u_input.a.x), Struct_4(Struct_3(vec4<u32>(0u, global0.a.x, 7686u, global0.a.x), Struct_1(vec3<u32>(2667u, 25553u, u_input.a.x)), Struct_1(global0.a), -67896i, Struct_1(vec3<u32>(u_input.a.x, 1u, 44855u)))), func_2(Struct_5(1i, u_input.a.x, Struct_4(Struct_3(vec4<u32>(18065u, 0u, global0.a.x, global0.a.x), Struct_1(global0.a), Struct_1(vec3<u32>(4294967295u, global0.a.x, 75559u)), 2147483647i, Struct_1(global0.a))), 62119u), Struct_4(Struct_3(vec4<u32>(global0.a.x, global0.a.x, 70182u, global0.a.x), Struct_1(vec3<u32>(0u, u_input.a.x, global0.a.x)), Struct_1(global0.a), 46633i, Struct_1(vec3<u32>(global0.a.x, global0.a.x, global0.a.x)))), Struct_3(vec4<u32>(84125u, global0.a.x, 0u, 1u), Struct_1(global0.a), Struct_1(global0.a), 29991i, Struct_1(vec3<u32>(global0.a.x, global0.a.x, 106474u)))))), u_input.a.x), Struct_4(Struct_3(~(vec4<u32>(5683u, 54862u, 15490u, 35596u) * vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 24440u)), Struct_1(vec3<u32>(global0.a.x, u_input.a.x, global0.a.x)), Struct_1(~global0.a), (-1i ^ 1i) / 0i, func_2(Struct_5(1i, 40117u, Struct_4(Struct_3(vec4<u32>(4294967295u, 79547u, u_input.a.x, 1u), Struct_1(vec3<u32>(u_input.a.x, 4294967295u, 21400u)), Struct_1(vec3<u32>(88845u, global0.a.x, 4294967295u)), 1i, Struct_1(vec3<u32>(global0.a.x, u_input.a.x, 9565u)))), u_input.a.x), Struct_4(Struct_3(vec4<u32>(0u, u_input.a.x, 4294967295u, global0.a.x), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), Struct_1(vec3<u32>(1115u, 0u, global0.a.x)), -4311i, Struct_1(vec3<u32>(34929u, 47451u, 53368u)))), func_2(Struct_5(0i, global0.a.x, Struct_4(Struct_3(vec4<u32>(117638u, u_input.a.x, 4294967295u, global0.a.x), Struct_1(vec3<u32>(67262u, 154544u, 1u)), Struct_1(vec3<u32>(u_input.a.x, 103714u, 4294967295u)), 1879i, Struct_1(global0.a))), global0.a.x), Struct_4(Struct_3(vec4<u32>(global0.a.x, 1u, u_input.a.x, 1u), Struct_1(global0.a), Struct_1(global0.a), 2147483647i, Struct_1(global0.a))), Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, 36207u, 4294967295u), Struct_1(global0.a), Struct_1(global0.a), -15049i, Struct_1(vec3<u32>(1u, 1u, global0.a.x))))).c)), Struct_3(clamp(vec4<u32>(u_input.a.x, global0.a.x, 28389u, 58458u) % vec4<u32>(u_input.a.x, global0.a.x, 10647u, 0u), vec4<u32>(u_input.a.x, 32896u, 53018u, global0.a.x) << vec4<u32>(59117u, 38950u, global0.a.x, 78955u), vec4<u32>(0u, 4294967295u, 57094u, 53039u) / vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.a.x)) ^ min(select(vec4<u32>(0u, 0u, 4294967295u, 37891u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), true), ~vec4<u32>(global0.a.x, 0u, 1138u, global0.a.x)), Struct_1(~global0.a), func_2(Struct_5(17164i % -52111i, 17517u, Struct_4(Struct_3(vec4<u32>(global0.a.x, global0.a.x, 4684u, 0u), Struct_1(vec3<u32>(1u, u_input.a.x, 1u)), Struct_1(vec3<u32>(u_input.a.x, global0.a.x, 13890u)), -27984i, Struct_1(global0.a))), clamp(global0.a.x, global0.a.x, 4294967295u)), Struct_4(func_2(Struct_5(-17928i, 1u, Struct_4(Struct_3(vec4<u32>(global0.a.x, 70346u, u_input.a.x, 5086u), Struct_1(vec3<u32>(3458u, 1u, global0.a.x)), Struct_1(global0.a), 1i, Struct_1(global0.a))), u_input.a.x), Struct_4(Struct_3(vec4<u32>(u_input.a.x, 4294967295u, 23116u, 4466u), Struct_1(global0.a), Struct_1(vec3<u32>(4294967295u, global0.a.x, u_input.a.x)), -77937i, Struct_1(global0.a))), Struct_3(vec4<u32>(global0.a.x, 0u, 0u, u_input.a.x), Struct_1(global0.a), Struct_1(vec3<u32>(u_input.a.x, 23732u, global0.a.x)), 8932i, Struct_1(global0.a)))), func_2(Struct_5(-67660i, 16956u, Struct_4(Struct_3(vec4<u32>(0u, global0.a.x, 99876u, u_input.a.x), Struct_1(global0.a), Struct_1(vec3<u32>(12964u, 7602u, 1u)), 0i, Struct_1(global0.a))), u_input.a.x), Struct_4(Struct_3(vec4<u32>(u_input.a.x, global0.a.x, u_input.a.x, 1u), Struct_1(global0.a), Struct_1(global0.a), -1i, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 72469u)))), func_2(Struct_5(-15427i, 4294967295u, Struct_4(Struct_3(vec4<u32>(global0.a.x, u_input.a.x, 18014u, 37583u), Struct_1(global0.a), Struct_1(vec3<u32>(35499u, 60279u, global0.a.x)), 2147483647i, Struct_1(global0.a))), u_input.a.x), Struct_4(Struct_3(vec4<u32>(0u, u_input.a.x, u_input.a.x, global0.a.x), Struct_1(global0.a), Struct_1(vec3<u32>(71078u, 58424u, global0.a.x)), -1i, Struct_1(vec3<u32>(16695u, u_input.a.x, 0u)))), Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.a.x), Struct_1(vec3<u32>(1u, 17076u, 43026u)), Struct_1(global0.a), 14898i, Struct_1(vec3<u32>(global0.a.x, global0.a.x, 6284u)))))).c, 2147483647i, Struct_1(global0.a))).e;
    var var_1 = Struct_5(func_2(Struct_5(-25245i ^ ~(i32(-2147483648)), 4294967295u + u_input.a.x, Struct_4(Struct_3(vec4<u32>(17086u, global0.a.x, 4294967295u, global0.a.x), Struct_1(global0.a), Struct_1(vec3<u32>(u_input.a.x, global0.a.x, 0u)), 2147483647i, Struct_1(global0.a))), 6161u + (0u + 1u)), Struct_4(func_2(Struct_5(i32(-2147483648), global0.a.x, Struct_4(Struct_3(vec4<u32>(23620u, 4294967295u, 10153u, 28003u), Struct_1(global0.a), Struct_1(global0.a), 9871i, Struct_1(vec3<u32>(92547u, 5763u, 9623u)))), 0u), Struct_4(Struct_3(vec4<u32>(43872u, u_input.a.x, 1u, 0u), Struct_1(vec3<u32>(global0.a.x, u_input.a.x, u_input.a.x)), Struct_1(global0.a), -22010i, Struct_1(vec3<u32>(global0.a.x, global0.a.x, 0u)))), Struct_3(vec4<u32>(40486u, global0.a.x, 4294967295u, u_input.a.x), Struct_1(global0.a), Struct_1(global0.a), 5463i, Struct_1(global0.a)))), Struct_3(vec4<u32>(u_input.a.x, global0.a.x - global0.a.x, abs(u_input.a.x), 20270u / 84893u), Struct_1(global0.a), Struct_1(abs(global0.a)), -(-(-27315i)), Struct_1(select(global0.a, vec3<u32>(52800u, 4294967295u, u_input.a.x), true)))).d, global0.a.x, Struct_4(Struct_3(~(~vec4<u32>(0u, 1u, 37366u, 43652u)), func_2(Struct_5(-24948i, global0.a.x, Struct_4(Struct_3(vec4<u32>(global0.a.x, 40337u, 70808u, 50145u), Struct_1(global0.a), Struct_1(global0.a), 0i, Struct_1(vec3<u32>(global0.a.x, global0.a.x, 21899u)))), 108889u), Struct_4(Struct_3(vec4<u32>(global0.a.x, 4294967295u, global0.a.x, global0.a.x), Struct_1(vec3<u32>(global0.a.x, 4294967295u, u_input.a.x)), Struct_1(vec3<u32>(1u, 28246u, 63550u)), i32(-2147483648), Struct_1(vec3<u32>(4294967295u, 3390u, 16894u)))), Struct_3(vec4<u32>(47667u, 1u, 1u, 36443u), Struct_1(global0.a), Struct_1(vec3<u32>(global0.a.x, u_input.a.x, 5354u)), 26142i, Struct_1(global0.a))).e, Struct_1(vec3<u32>(0u, 29362u, 80906u)), -1i, Struct_1(vec3<u32>(u_input.a.x, global0.a.x, u_input.a.x)))), 11215u);
    var var_2 = var_1.c;
    return !vec3<bool>(any(!(!vec3<bool>(true, true, false))), false, true || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (true || ((-364f > 171f) || (all(vec3<bool>(true, false, true)) && false))) | !all(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a, min(((-727f * -1000f) * floor(-985f)) + sign(ceil(-192f)), -867f));
}

