// {"0:0":[181,247,148,88,21,167,43,154,217,222,248,7,207,5,91,23,186,82,123,35,22,229,130,205,38,65,1,8,27,231,106,225]}
// Seed: 2227056696808879432

struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 251f;

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = Struct_3(arg_3.a, Struct_1(~arg_2.a.b.a, all(select(arg_2.e, vec3<bool>(false, true, arg_2.a.b.b), vec3<bool>(arg_2.a.b.b, arg_2.c.b, true))) | !arg_2.c.b, arg_2.a.b.e, select(-1000f, arg_2.c.d, any(select(arg_2.b, vec4<bool>(true, true, arg_3.b.b, true), arg_3.b.b))), arg_1), clamp(arg_2.c.a.xxw, abs(u_input.b), firstTrailingBit(vec3<u32>(1u, arg_3.c.x, arg_0.x))) & (arg_3.b.a.xzx ^ vec3<u32>(countOneBits(32091u), reverseBits(arg_0.x), 4294967295u % 119793u)));
    global0 = -(-1000f);
    var var_1 = ~(arg_0.zzy & ~vec3<u32>(~64719u, ~u_input.b.x, 44460u - var_0.b.a.x));
    let var_2 = var_0.b.b;
    var_1 = vec3<u32>(((25722u << arg_2.c.a.x) * dot(var_0.b.a - arg_2.a.b.a, arg_3.b.a)) - arg_0.x, arg_3.b.a.x, ~(~(~(7937u - arg_0.x))));
    return arg_2.b.wyx;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    global0 = -(-1211f);
    let var_0 = Struct_3(Struct_2(dot(vec3<u32>(50028u / u_input.a, 46239u, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 0u)), true), Struct_1(abs(vec4<u32>(u_input.a, select(43586u, u_input.a, false), 30124u % 4294967295u, ~u_input.b.x)), all(select(!arg_1.yy, vec2<bool>(true, true), !arg_1.zx)), i32(-2147483648), step(-(-1374f) - 1123f, -1866f), -countOneBits(-24761i)), ~vec3<u32>(~4294967295u << (4294967295u << 0u), ~1u, u_input.a));
    return u_input.b.x;
}

fn func_2() -> u32 {
    global0 = -trunc(-782f);
    let var_0 = Struct_3(Struct_2(((u_input.a * 49762u) | ~0u) << func_4(vec3<f32>(1619f, -1912f, 1000f) - vec3<f32>(-485f, 426f, -1000f), func_3(vec4<u32>(105991u, u_input.b.x, u_input.b.x, u_input.a), -1i, Struct_4(Struct_3(Struct_2(4294967295u, false), Struct_1(vec4<u32>(118103u, u_input.a, u_input.b.x, 10722u), false, 26836i, 995f, -103746i), vec3<u32>(0u, u_input.b.x, u_input.a)), vec4<bool>(true, false, true, true), Struct_1(vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x), false, 2147483647i, 151f, 19708i), u_input.a, vec3<bool>(false, true, true)), Struct_3(Struct_2(0u, false), Struct_1(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 11239u), false, -42524i, 2338f, 13988i), u_input.b)), -(-401f), vec2<i32>(-44789i, 1i)), false), Struct_1(vec4<u32>(clamp(u_input.a, 0u, 52724u) & ~6542u, clamp(u_input.a, 18417u, u_input.a - u_input.a), firstLeadingBit(48018u), abs(4294967295u << u_input.a)), (1000f + -(-458f)) >= -1771f, ~2147483647i, -344f, dot(-(-vec3<i32>(0i, 1i, -44109i)), vec3<i32>(~1i, -1i << u_input.a, -1i / -36830i))), max(vec3<u32>(~(~0u), abs(~u_input.a), reverseBits(u_input.a)), reverseBits(u_input.b) + vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x >> 0u)));
    let var_1 = select(select(vec3<bool>(var_0.a.b, !(!true), var_0.a.b), vec3<bool>(all(vec2<bool>(var_0.a.b, var_0.b.b)), var_0.b.d < floor(1608f), var_0.b.b), all(!vec3<bool>(var_0.a.b, false, false))), func_3(vec4<u32>(dot(firstTrailingBit(var_0.c.zy), ~vec2<u32>(u_input.a, 27231u)), max(var_0.c.x, countOneBits(var_0.c.x)), var_0.b.a.x, clamp(var_0.c.x << 0u, u_input.b.x, var_0.c.x)), 0i >> ~(4294967295u >> 451u), Struct_4(var_0, vec4<bool>(!var_0.b.b, !var_0.a.b, all(vec3<bool>(false, var_0.a.b, false)), var_0.a.b), Struct_1(var_0.b.a, !false, -(-13079i), 949f, -27443i), firstTrailingBit(u_input.b.x), vec3<bool>(select(false, var_0.b.b, var_0.a.b), var_0.a.b, 76064u < u_input.a)), var_0), select(vec3<bool>(false, var_0.a.b, !false), select(!(!vec3<bool>(var_0.a.b, var_0.a.b, true)), vec3<bool>(select(true, false, false), var_0.a.b, false && var_0.a.b), !vec3<bool>(true, true, false)), func_3(vec4<u32>(u_input.b.x, u_input.b.x, 24870u, ~u_input.b.x), max(max(var_0.b.e, var_0.b.c), 1i), Struct_4(var_0, select(vec4<bool>(var_0.a.b, var_0.b.b, true, true), vec4<bool>(var_0.b.b, false, var_0.a.b, var_0.a.b), vec4<bool>(true, var_0.b.b, false, false)), var_0.b, ~1u, !vec3<bool>(var_0.b.b, var_0.a.b, var_0.a.b)), Struct_3(Struct_2(0u, false), Struct_1(vec4<u32>(24913u, 1u, 4294967295u, var_0.c.x), var_0.a.b, var_0.b.e, 662f, 1i), firstLeadingBit(u_input.b)))));
    var var_2 = Struct_4(var_0, vec4<bool>(true, !false, any(!select(vec2<bool>(var_1.x, var_0.b.b), var_1.zz, var_0.a.b)), false), Struct_1(var_0.b.a, max(var_0.b.d, var_0.b.d) != 1000f, -1i, sign(748f), var_0.b.e), u_input.b.x, select(func_3(vec4<u32>(~1u, 0u, ~u_input.b.x, ~1u), dot(-vec2<i32>(-19008i, 41188i), vec2<i32>(-27594i, 0i)), Struct_4(Struct_3(var_0.a, Struct_1(vec4<u32>(var_0.b.a.x, u_input.b.x, var_0.a.a, 0u), var_0.b.b, var_0.b.c, var_0.b.d, 0i), var_0.c), !vec4<bool>(var_0.b.b, var_0.b.b, true, var_0.a.b), Struct_1(var_0.b.a, true, var_0.b.c, var_0.b.d, 2147483647i), ~u_input.a, var_1), Struct_3(Struct_2(u_input.b.x, false), Struct_1(vec4<u32>(60770u, var_0.c.x, var_0.b.a.x, 49972u), true, 25771i, var_0.b.d, var_0.b.e), var_0.b.a.ywz)), vec3<bool>(false, (38478u / var_0.b.a.x) < 2125u, var_1.x), !false));
    var var_3 = var_0.b.e;
    return var_0.a.a;
}

fn func_1() -> Struct_1 {
    return Struct_1(((select(vec4<u32>(4294967295u, u_input.a, u_input.b.x, 68401u), vec4<u32>(0u, 1u, 4294967295u, u_input.b.x), false) % (vec4<u32>(63283u, 4294967295u, u_input.b.x, 1u) / vec4<u32>(98054u, 0u, u_input.a, u_input.a))) << vec4<u32>(u_input.b.x, func_2(), dot(vec4<u32>(u_input.b.x, 77239u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 33743u, 84237u, u_input.b.x)), abs(11470u))) | ~abs(vec4<u32>(u_input.b.x, 1u, 1u, u_input.a) + vec4<u32>(17473u, u_input.a, u_input.b.x, 19332u)), any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), -abs(i32(-2147483648)), -(-619f), -2147483647i);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    return StorageBuffer(i32(-2147483648), u_input.b, vec3<u32>(select(~arg_2.a.x, 564u & 37277u, arg_2.b) - 0u, 1u >> ((u_input.a | arg_2.a.x) + ~u_input.b.x), firstTrailingBit(~(~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!true, !(-6428i > 32925i));
    let var_1 = 1545f;
    global0 = var_1 / var_1;
    global0 = -(var_1 + 1577f);
    global0 = -1181f;
    let x = u_input.a;
    s_output = func_5(max(-23282i, dot(-vec2<i32>(0i, 22655i), ~vec2<i32>(28455i, 6035i))) >> ((~u_input.b.x % (0u * u_input.a)) / (min(52693u, u_input.a) & (u_input.b.x + 1u))), exp2(var_1), Struct_1(vec4<u32>(1u / 72324u, 9777u, ~u_input.b.x, 8552u << 4294967295u), true, reverseBits(-(-60866i) | (i32(-2147483648) << 32962u)), sign(-2392f + (var_1 * var_1)), 46470i), func_1());
}

