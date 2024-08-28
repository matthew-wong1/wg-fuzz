// {"0:0":[222,236,61,78,126,211,68,102,88,112,220,106,10,149,25,204,124,156,182,104,96,99,54,37,5,81,113,130,41,126,250,92]}
// Seed: 6644511978660580988

struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: bool, arg_1: u32) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = all(!select(vec4<bool>(arg_1 == 49916u, arg_0, !arg_0, any(vec2<bool>(arg_0, arg_0))), !vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(false, arg_0, true, false)));
    var_0 = true;
    var var_1 = 4294967295u;
    let var_2 = Struct_4(Struct_2(-(-9921i) != (u_input.a.x >> 12375u), Struct_1(firstTrailingBit(vec4<u32>(1u, 1u, arg_1, arg_1)), vec3<bool>(!false, true, !true)), arg_0, Struct_1(vec4<u32>(~arg_1, 0u / arg_1, countOneBits(58415u), ~arg_1), select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_0, true), arg_0))), -ceil(-(-(-873f))), Struct_3(Struct_1(reverseBits(vec4<u32>(1u, arg_1, arg_1, 1u)), vec3<bool>(any(vec4<bool>(arg_0, arg_0, false, true)), arg_0, false)), Struct_2(arg_0, Struct_1(vec4<u32>(arg_1, arg_1, 1u, arg_1) * vec4<u32>(1u, arg_1, arg_1, 23823u), vec3<bool>(true, arg_0, arg_0)), any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), false)), Struct_1(vec4<u32>(arg_1, arg_1, 4294967295u, 4294967295u), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, arg_0), true))), Struct_1(~vec4<u32>(1u, arg_1, 8554u, arg_1), vec3<bool>(false, !arg_0, 27731u <= arg_1)), Struct_2(true, Struct_1(~vec4<u32>(67135u, 41701u, 4294967295u, arg_1), vec3<bool>(true, arg_0, arg_0)), abs(-532f) > -1947f, Struct_1(~vec4<u32>(0u, 21476u, arg_1, 23284u), vec3<bool>(true, arg_0, false))), Struct_1(countOneBits(vec4<u32>(arg_1, 4294967295u, 78842u, arg_1) / vec4<u32>(arg_1, arg_1, 50217u, 0u)), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, true)))), 1i ^ -29387i, vec4<i32>(u_input.b.x, dot(vec2<i32>(u_input.a.x, u_input.a.x) * select(u_input.b.yx, vec2<i32>(u_input.a.x, -36391i), vec2<bool>(arg_0, true)), max(u_input.a.zx, vec2<i32>(374i, 0i)) + u_input.b.xx), 1i, u_input.a.x));
    return vec3<bool>(arg_0, false && (!arg_0 | all(select(vec4<bool>(arg_0, arg_0, true, var_2.a.c), vec4<bool>(arg_0, var_2.c.a.b.x, true, true), vec4<bool>(true, var_2.a.b.b.x, var_2.a.d.b.x, false)))), true);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(vec4<u32>(abs(0u % 4294967295u), 24872u, select(4507u ^ 4294967295u, firstLeadingBit(20836u), !true), ~(14796u / 75658u)), vec3<bool>(false, any(!vec2<bool>(true, true)), false)), Struct_2((4294967295u == 11431u) != all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), Struct_1(vec4<u32>(4294967295u - 8615u, 45604u - 0u, ~48399u, 4294967295u), vec3<bool>(false || true, all(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)))), false, Struct_1(vec4<u32>(54962u, 73697u, 0u, 110970u) - ~vec4<u32>(1u, 19431u, 67135u, 1u), vec3<bool>(!true, false != false, !true))), Struct_1(vec4<u32>(1u, ~(~1u), 65782u, abs(clamp(0u, 27203u, 0u))), vec3<bool>((1000f + 247f) > -931f, any(!vec4<bool>(false, false, false, false)), !(!false))), Struct_2(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(false, false))), Struct_1(abs(vec4<u32>(77217u, 1u, 1u, 0u)), func_3(u_input.b.x > i32(-2147483648), dot(vec4<u32>(57333u, 4294967295u, 9165u, 0u), vec4<u32>(57048u, 1u, 30880u, 1u)))), false, Struct_1(~vec4<u32>(1u, 0u, 11359u, 4294967295u) >> (vec4<u32>(69435u, 18715u, 26407u, 50145u) - vec4<u32>(25471u, 4936u, 87723u, 4294967295u)), !(!vec3<bool>(false, false, false)))), Struct_1(vec4<u32>(4294967295u, 35664u << 1u, 4294967295u << 0u, 4294967295u) << ~firstLeadingBit(vec4<u32>(0u, 112514u, 1u, 4294967295u)), select(vec3<bool>(all(vec4<bool>(true, false, false, false)), !true, !false), !(!vec3<bool>(true, false, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)))));
    var var_1 = Struct_3(var_0.e, Struct_2(false, Struct_1(~var_0.a.a - var_0.c.a, vec3<bool>(-860f >= 116f, true, !false)), true, var_0.b.d), var_0.b.b, var_0.d, Struct_1(vec4<u32>(countOneBits(26330u), ~var_0.d.b.a.x + ~var_0.e.a.x, ~(~var_0.e.a.x), ~(var_0.e.a.x & 26411u)), func_3(all(var_0.d.b.b.xx), 6355u)));
    var var_2 = firstTrailingBit(((~vec2<u32>(45880u, 1u) / min(var_1.d.b.a.ww, vec2<u32>(var_1.d.d.a.x, 4294967295u))) & var_0.d.d.a.ww) % vec2<u32>(var_0.a.a.x, min(var_1.a.a.x >> 1u, var_0.e.a.x)));
    var_0 = Struct_3(Struct_1(vec4<u32>(~4294967295u >> var_2.x, max(0u, ~var_2.x), var_1.d.b.a.x, ~(~4294967295u)), vec3<bool>((0i << var_2.x) < firstLeadingBit(-18737i), var_0.a.b.x, 17653u > (4294967295u / var_1.c.a.x))), var_0.d, var_1.a, var_1.b, var_1.d.b);
    var var_3 = ~(select(u_input.b.x / -42289i, -(-1i), var_1.a.b.x) >> var_0.e.a.x);
    return vec3<bool>(!true, !(!(dot(vec4<u32>(var_0.a.a.x, var_2.x, 28281u, 1u), vec4<u32>(4294967295u, 20809u, 54669u, var_0.e.a.x)) <= ~1u)), var_1.c.b.x);
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = arg_0.d;
    let var_1 = true;
    var var_2 = select(select(vec2<bool>(var_1, !false), arg_0.a.b.b.xx, any(vec3<bool>(arg_0.b >= 1000f, -1412f >= arg_0.b, !false))), vec2<bool>(arg_0.c.a.b.x, any(select(arg_0.c.c.b, func_2(), select(vec3<bool>(true, false, var_1), arg_0.c.c.b, vec3<bool>(var_1, arg_0.c.c.b.x, arg_0.a.b.b.x))))), func_3(!any(vec2<bool>(false, arg_0.c.e.b.x)), 1u).zy);
    var_0 = dot(-(~arg_0.e), vec4<i32>(dot(select(vec2<i32>(arg_0.e.x, 56704i), arg_0.e.xw, !true), -u_input.b.xz), select(~firstLeadingBit(-71171i), ~u_input.a.x, var_1 == (0i <= -54058i)), ~(-18224i), -(dot(arg_0.e.wyx, arg_0.e.wzy) * abs(28020i))));
    var var_3 = Struct_4(arg_0.a, -(-101f), arg_0.c, clamp(dot(select(arg_0.e, arg_0.e, var_1), arg_0.e >> vec4<u32>(76816u, 5025u, 0u, arg_0.c.e.a.x)) / -2147483647i, u_input.b.x + u_input.a.x, firstTrailingBit(2147483647i)), arg_0.e);
    return round(-step(-var_3.b / 446f, arg_0.b));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_2.b;
    var_0 = max(arg_2.b, sign(-801f));
    let var_1 = ((arg_2.b + arg_2.b) * (arg_2.b * -1462f)) / -(arg_2.b - -1336f);
    let var_2 = Struct_1(vec4<u32>(~arg_3.d.b.a.x, dot(vec3<u32>(arg_1.x, min(1u, 8913u), arg_3.d.d.a.x + 1u), ~min(arg_3.b.d.a.yxx, vec3<u32>(1u, 4294967295u, 33668u))), 1u, abs(dot(vec3<u32>(0u, arg_1.x, 0u), arg_3.d.b.a.yxy) << 1u)), !arg_2.c.b.d.b);
    var_0 = 889f;
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(all(!vec3<bool>(true, all(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)))), vec2<u32>(4294967295u ^ 67590u, ~(~(~1u))), Struct_4(Struct_2(-u_input.b.x <= dot(u_input.b, vec3<i32>(-1i, -9897i, -1i)), Struct_1(vec4<u32>(7235u, 3727u, 14877u, 1u) - vec4<u32>(4294967295u, 70951u, 88621u, 0u), !vec3<bool>(true, true, false)), -1340f == (-1255f - 326f), Struct_1(~vec4<u32>(4294967295u, 1u, 6891u, 4294967295u), !vec3<bool>(true, true, false))), -(func_1(Struct_4(Struct_2(true, Struct_1(vec4<u32>(39924u, 4294967295u, 1u, 75307u), vec3<bool>(false, true, false)), true, Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec3<bool>(false, true, true))), 754f, Struct_3(Struct_1(vec4<u32>(3676u, 57208u, 4294967295u, 33620u), vec3<bool>(true, false, true)), Struct_2(false, Struct_1(vec4<u32>(1u, 25220u, 1u, 1u), vec3<bool>(true, false, true)), true, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 43563u), vec3<bool>(false, true, true))), Struct_1(vec4<u32>(0u, 17731u, 20843u, 22614u), vec3<bool>(false, false, true)), Struct_2(false, Struct_1(vec4<u32>(112560u, 6497u, 14373u, 16896u), vec3<bool>(false, true, false)), false, Struct_1(vec4<u32>(101481u, 4294967295u, 30682u, 0u), vec3<bool>(false, false, true))), Struct_1(vec4<u32>(56920u, 56723u, 0u, 92812u), vec3<bool>(true, false, false))), 2147483647i, vec4<i32>(-51542i, 64161i, -1i, u_input.b.x))) + -1000f), Struct_3(Struct_1(vec4<u32>(7183u, 0u, 4294967295u, 0u) / vec4<u32>(0u, 301u, 4294967295u, 22793u), func_3(false, 20255u)), Struct_2(all(vec3<bool>(false, false, true)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 13883u, 4294967295u), vec3<bool>(false, true, false)), false, Struct_1(vec4<u32>(34468u, 1u, 62433u, 19950u), vec3<bool>(false, false, false))), Struct_1(~vec4<u32>(19985u, 1u, 1u, 3900u), !vec3<bool>(true, false, false)), Struct_2(any(vec3<bool>(true, false, false)), Struct_1(vec4<u32>(81897u, 2741u, 4294967295u, 35534u), vec3<bool>(false, true, true)), 0u <= 1u, Struct_1(vec4<u32>(4294967295u, 2314u, 53614u, 37544u), vec3<bool>(false, false, true))), Struct_1(abs(vec4<u32>(20847u, 4294967295u, 4294967295u, 1u)), !vec3<bool>(true, true, false))), u_input.b.x, reverseBits(reverseBits(~vec4<i32>(u_input.b.x, -6640i, 20989i, 0i)))), Struct_3(Struct_1(firstTrailingBit(vec4<u32>(0u, 20339u, 69002u, 66789u) * vec4<u32>(69191u, 38751u, 0u, 1u)), vec3<bool>(!true, select(true, true, true), true || false)), Struct_2(true, Struct_1(~vec4<u32>(1u, 36039u, 18363u, 0u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), !(!false), Struct_1(vec4<u32>(60549u, 3988u, 4294967295u, 81709u), func_2())), Struct_1(~(vec4<u32>(20548u, 0u, 30655u, 8641u) - vec4<u32>(46738u, 0u, 3227u, 2982u)), vec3<bool>(all(vec2<bool>(false, true)), true, !true)), Struct_2(false, Struct_1(vec4<u32>(1u, 4294967295u, 24223u, 35462u), !vec3<bool>(false, true, true)), true, Struct_1(~vec4<u32>(59482u, 45083u, 0u, 0u), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), Struct_1(max(~vec4<u32>(56072u, 1u, 0u, 4294967295u), vec4<u32>(26851u, 4294967295u, 68374u, 27897u) / vec4<u32>(4294967295u, 1u, 45825u, 1u)), !(!vec3<bool>(false, false, true)))));
    var var_1 = vec3<u32>(var_0.b.a.x << (9634u * 4294967295u), var_0.b.a.x, func_4(!all(func_2()), vec2<u32>(var_0.b.a.x, ~(~22782u)), Struct_4(Struct_2(false, func_4(var_0.b.b.x, vec2<u32>(var_0.d.a.x, var_0.d.a.x), Struct_4(Struct_2(true, var_0.d, true, Struct_1(vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, 0u), vec3<bool>(true, true, true))), -505f, Struct_3(var_0.b, Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.d.b), var_0.a, Struct_1(var_0.b.a, var_0.b.b)), Struct_1(vec4<u32>(var_0.d.a.x, 6558u, var_0.d.a.x, 4294967295u), var_0.b.b), var_0, Struct_1(var_0.d.a, var_0.b.b)), 4683i, vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, i32(-2147483648))), Struct_3(var_0.d, var_0, Struct_1(var_0.d.a, var_0.d.b), Struct_2(var_0.b.b.x, Struct_1(var_0.b.a, vec3<bool>(false, var_0.d.b.x, var_0.a)), var_0.b.b.x, Struct_1(vec4<u32>(var_0.b.a.x, 4294967295u, var_0.b.a.x, var_0.d.a.x), var_0.b.b)), var_0.b)).b, true, Struct_1(var_0.d.a, vec3<bool>(false, var_0.d.b.x, var_0.c))), round(-182f), Struct_3(var_0.d, var_0, var_0.b, func_4(var_0.c, vec2<u32>(var_0.d.a.x, 1u), Struct_4(var_0, -1131f, Struct_3(var_0.d, Struct_2(var_0.b.b.x, Struct_1(vec4<u32>(131789u, var_0.d.a.x, var_0.b.a.x, 52340u), vec3<bool>(false, var_0.b.b.x, var_0.d.b.x)), var_0.d.b.x, Struct_1(vec4<u32>(0u, 63921u, var_0.d.a.x, var_0.b.a.x), var_0.d.b)), Struct_1(vec4<u32>(var_0.d.a.x, 0u, 9168u, 23011u), vec3<bool>(var_0.b.b.x, true, var_0.a)), Struct_2(true, Struct_1(var_0.b.a, var_0.b.b), var_0.b.b.x, var_0.d), Struct_1(vec4<u32>(0u, var_0.b.a.x, var_0.b.a.x, 4294967295u), vec3<bool>(var_0.b.b.x, false, var_0.c))), u_input.b.x, vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x)), Struct_3(var_0.d, var_0, var_0.d, Struct_2(true, var_0.b, false, Struct_1(var_0.b.a, var_0.d.b)), var_0.b)), Struct_1(var_0.b.a, var_0.d.b)), countOneBits(-1i), -vec4<i32>(-5643i, u_input.b.x, u_input.b.x, u_input.a.x)), Struct_3(var_0.d, var_0, Struct_1(vec4<u32>(var_0.b.a.x, 5152u, var_0.d.a.x, 62718u) & var_0.d.a, !vec3<bool>(true, var_0.d.b.x, var_0.d.b.x)), Struct_2(0i < u_input.b.x, var_0.b, false, func_4(true, vec2<u32>(var_0.d.a.x, 0u), Struct_4(Struct_2(true, Struct_1(vec4<u32>(var_0.d.a.x, 15396u, var_0.b.a.x, 1u), vec3<bool>(var_0.a, false, var_0.c)), true, Struct_1(vec4<u32>(var_0.d.a.x, 0u, var_0.d.a.x, 0u), var_0.d.b)), -1298f, Struct_3(var_0.b, var_0, Struct_1(vec4<u32>(4294967295u, var_0.d.a.x, 73270u, var_0.b.a.x), vec3<bool>(true, var_0.b.b.x, var_0.c)), var_0, var_0.b), u_input.a.x, vec4<i32>(46101i, u_input.b.x, u_input.b.x, -1i)), Struct_3(Struct_1(vec4<u32>(35822u, 0u, var_0.b.a.x, 4294967295u), vec3<bool>(true, var_0.c, true)), var_0, Struct_1(vec4<u32>(1u, 68561u, 44082u, var_0.b.a.x), var_0.d.b), Struct_2(var_0.c, Struct_1(vec4<u32>(54318u, var_0.b.a.x, 1u, 0u), var_0.d.b), false, Struct_1(vec4<u32>(var_0.b.a.x, var_0.b.a.x, 4503u, var_0.d.a.x), var_0.b.b)), Struct_1(vec4<u32>(1u, 4294967295u, var_0.d.a.x, 4294967295u), var_0.b.b))).b), Struct_1(vec4<u32>(var_0.b.a.x, var_0.b.a.x, var_0.d.a.x, 4294967295u) | var_0.d.a, vec3<bool>(false, false, true)))).b.a.x);
    var_1 = select(firstLeadingBit(var_0.b.a.zyy) << (select(vec3<u32>(var_0.d.a.x, var_1.x, 2613u), vec3<u32>(var_0.d.a.x, var_1.x, 62449u), var_0.b.b) - ~var_0.d.a.wzz), var_0.d.a.xxy, !(!select(vec3<bool>(var_0.c, false, var_0.d.b.x), vec3<bool>(var_0.d.b.x, false, true), var_0.d.b.x))) * ~(~vec3<u32>(10871u, ~0u, var_1.x >> 0u));
    var var_2 = Struct_2(var_0.c, Struct_1(vec4<u32>(~(49062u & var_1.x), 1u, var_1.x, 0u), !var_0.b.b), var_0.b.b.x, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(true, var_2.d.a.yy, Struct_4(func_4(all(var_0.b.b.yy), var_2.d.a.wz >> var_1.zz, Struct_4(var_0, 1000f, Struct_3(Struct_1(var_0.d.a, var_0.d.b), Struct_2(true, var_0.d, var_2.c, var_2.b), var_2.d, var_0, var_0.d), u_input.b.x, vec4<i32>(u_input.a.x, -8232i, 1i, u_input.b.x)), Struct_3(Struct_1(var_2.d.a, vec3<bool>(false, var_0.c, true)), var_0, Struct_1(var_0.b.a, var_2.b.b), var_0, Struct_1(var_2.b.a, vec3<bool>(false, var_2.a, true)))), -875f, Struct_3(func_4(true, var_2.d.a.wx, Struct_4(var_0, -1012f, Struct_3(var_2.b, var_0, Struct_1(var_2.b.a, var_2.b.b), Struct_2(var_0.a, Struct_1(vec4<u32>(var_1.x, var_1.x, 3031u, var_2.b.a.x), vec3<bool>(true, false, var_0.d.b.x)), var_0.b.b.x, var_0.d), var_2.b), u_input.b.x, vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x)), Struct_3(Struct_1(vec4<u32>(var_2.b.a.x, var_1.x, var_2.d.a.x, var_2.b.a.x), var_0.b.b), var_0, Struct_1(var_2.d.a, var_2.d.b), var_0, var_0.d)).b, Struct_2(false, Struct_1(vec4<u32>(var_1.x, 1u, var_0.d.a.x, 4294967295u), vec3<bool>(true, false, var_0.d.b.x)), var_2.a, Struct_1(var_0.d.a, vec3<bool>(true, var_0.c, var_2.d.b.x))), var_0.d, var_0, Struct_1(vec4<u32>(var_2.d.a.x, var_2.b.a.x, 5288u, var_0.d.a.x), var_2.d.b)), reverseBits(u_input.a.x), -vec4<i32>(0i, u_input.b.x, 25904i, u_input.a.x)), Struct_3(func_4(false, max(var_2.d.a.wy, vec2<u32>(var_0.b.a.x, 0u)), Struct_4(var_0, 889f, Struct_3(var_2.d, var_0, var_0.d, var_0, Struct_1(var_2.b.a, var_2.d.b)), 1i, vec4<i32>(u_input.a.x, 1i, -19543i, i32(-2147483648))), Struct_3(Struct_1(vec4<u32>(var_2.b.a.x, 1u, var_1.x, var_0.d.a.x), vec3<bool>(false, var_0.a, var_2.c)), var_0, var_0.b, Struct_2(var_0.d.b.x, var_0.b, false, Struct_1(vec4<u32>(var_2.b.a.x, var_2.d.a.x, var_1.x, var_0.d.a.x), vec3<bool>(var_2.a, false, false))), Struct_1(var_2.b.a, var_2.b.b))).b, var_0, var_0.b, Struct_2(!var_0.a, var_2.d, !var_0.c, var_0.d), func_4(false, ~var_1.zy, Struct_4(var_0, -1000f, Struct_3(Struct_1(vec4<u32>(var_1.x, var_1.x, var_1.x, var_2.d.a.x), var_0.b.b), var_0, Struct_1(vec4<u32>(var_2.d.a.x, var_0.d.a.x, 33217u, var_0.b.a.x), var_0.d.b), Struct_2(false, var_2.d, var_2.c, Struct_1(vec4<u32>(var_0.d.a.x, var_0.b.a.x, 4294967295u, 1u), var_0.d.b)), Struct_1(var_2.d.a, vec3<bool>(true, true, false))), -38220i, vec4<i32>(u_input.b.x, 59350i, -38238i, -1i)), Struct_3(var_2.d, Struct_2(var_2.c, var_2.d, true, var_2.d), Struct_1(vec4<u32>(38607u, 60056u, 0u, 1540u), vec3<bool>(var_2.c, false, var_2.d.b.x)), var_0, Struct_1(var_2.b.a, vec3<bool>(true, true, true)))).d)).d.a.x, func_1(Struct_4(Struct_2(false, var_0.b, var_2.b.b.x & true, func_4(var_0.d.b.x, var_2.b.a.yy, Struct_4(Struct_2(true, Struct_1(vec4<u32>(31377u, 76480u, var_2.d.a.x, 0u), vec3<bool>(var_0.b.b.x, var_2.a, var_2.a)), false, var_2.b), 174f, Struct_3(var_2.d, var_0, var_2.b, Struct_2(var_2.a, Struct_1(vec4<u32>(4294967295u, var_2.d.a.x, var_2.b.a.x, 1u), var_0.b.b), var_2.b.b.x, var_0.d), Struct_1(var_2.d.a, vec3<bool>(var_2.a, var_0.b.b.x, true))), 6968i, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 2147483647i)), Struct_3(Struct_1(vec4<u32>(1u, 94199u, var_1.x, 1u), var_2.d.b), Struct_2(var_2.c, Struct_1(vec4<u32>(1u, var_1.x, 38484u, 32986u), var_2.b.b), var_0.d.b.x, var_0.d), var_0.d, var_0, var_0.b)).d), -853f, Struct_3(func_4(var_0.c, var_1.zz, Struct_4(Struct_2(var_0.a, Struct_1(var_2.b.a, vec3<bool>(true, var_0.b.b.x, var_2.b.b.x)), false, Struct_1(var_0.b.a, vec3<bool>(false, false, false))), -943f, Struct_3(Struct_1(vec4<u32>(1u, var_1.x, 12430u, 16790u), var_2.d.b), var_0, var_2.d, Struct_2(false, var_0.b, var_2.b.b.x, Struct_1(var_0.b.a, var_2.b.b)), var_0.d), -1i, vec4<i32>(2147483647i, u_input.b.x, 36889i, i32(-2147483648))), Struct_3(Struct_1(var_2.d.a, vec3<bool>(false, false, true)), var_0, var_0.b, Struct_2(var_0.c, Struct_1(vec4<u32>(var_0.b.a.x, 0u, 1214u, 1u), vec3<bool>(var_0.d.b.x, var_2.d.b.x, var_0.b.b.x)), var_2.b.b.x, Struct_1(var_0.b.a, var_2.b.b)), Struct_1(var_0.d.a, vec3<bool>(true, false, true)))).b, func_4(var_2.c, vec2<u32>(4294967295u, var_2.b.a.x), Struct_4(Struct_2(true, Struct_1(var_0.d.a, vec3<bool>(var_2.d.b.x, true, false)), var_2.c, var_0.b), -515f, Struct_3(Struct_1(vec4<u32>(1u, var_2.b.a.x, var_2.b.a.x, 15161u), var_2.b.b), var_0, Struct_1(var_2.b.a, vec3<bool>(false, false, var_2.b.b.x)), Struct_2(var_0.b.b.x, var_0.b, false, Struct_1(vec4<u32>(var_0.d.a.x, 15250u, 91676u, var_2.d.a.x), vec3<bool>(var_0.c, false, false))), Struct_1(var_0.d.a, var_2.b.b)), u_input.a.x, vec4<i32>(u_input.b.x, -3207i, 13351i, u_input.a.x)), Struct_3(Struct_1(var_0.d.a, var_2.d.b), Struct_2(var_2.a, Struct_1(vec4<u32>(var_2.b.a.x, var_2.b.a.x, 4294967295u, 570u), vec3<bool>(var_0.c, true, var_2.c)), true, var_2.d), var_2.b, var_0, Struct_1(var_0.d.a, vec3<bool>(var_2.d.b.x, true, false)))), Struct_1(var_0.d.a, vec3<bool>(false, var_2.b.b.x, var_0.d.b.x)), var_0, Struct_1(var_2.b.a, vec3<bool>(var_2.b.b.x, false, var_2.b.b.x))), u_input.b.x & dot(vec4<i32>(-1i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a.x, i32(-2147483648), 0i)), -vec4<i32>(-21753i, 2147483647i, u_input.a.x, 0i) + ~vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x))), min(~(-u_input.b.yy), firstTrailingBit(~(~u_input.b.xz))));
}

