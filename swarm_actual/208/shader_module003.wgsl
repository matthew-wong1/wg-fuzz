// {"0:0":[124,137,143,39,125,140,242,215,90,37,142,109,76,102,183,200,167,154,210,140,83,99,227,31,163,122,12,159,77,252,218,253,210,207,202,146,187,27,121,61,32,45,133,199,181,218,86,91]}
// Seed: 7632568977497131489

struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    return arg_3.e;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(-((-287f - 899f) * (-(-400f) * (-539f * -366f))), u_input.d, i32(-2147483648) & dot(-(-u_input.d), u_input.d % (vec3<i32>(2147483647i, u_input.d.x, u_input.b) - vec3<i32>(arg_2, -26127i, -23801i))), reverseBits(~vec4<i32>(-27089i, clamp(-2400i, 1i, arg_2), -arg_2, arg_2)));
    let var_1 = Struct_4(Struct_1(-floor(vec3<f32>(var_0.a, -764f, -162f) * vec3<f32>(241f, -1000f, var_0.a)), ceil(floor(-474f)) + (abs(var_0.a) * -846f)), 756f, select(!(!(!vec2<bool>(false, true))), !(!(!vec2<bool>(true, true))), !select(!vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), var_0.a != -206f)), -3525i, arg_1);
    let var_2 = vec4<u32>(11777u, arg_0.x, 4294967295u, arg_0.x) / ~(~countOneBits(select(u_input.a, u_input.a, vec4<bool>(true, var_1.c.x, var_1.c.x, true))));
    let var_3 = firstLeadingBit(vec3<i32>(u_input.c, -u_input.c, abs(~var_1.d)) << (((arg_0 / vec3<u32>(13467u, 5559u, 14574u)) << ~u_input.a.wxz) | firstLeadingBit(var_2.zzz << vec3<u32>(38133u, var_1.e.a, 14356u))));
    let var_4 = (dot(var_0.d, -(var_0.d + var_0.d)) - dot(vec2<i32>(var_1.d, var_3.x), -var_3.zx)) >> 0u;
    return Struct_1(-(-select(var_1.a.a, vec3<f32>(-171f, 2188f, -587f), false)) / step(vec3<f32>(-1478f, -816f, var_1.a.b) / step(var_1.a.a, var_1.a.a), select(vec3<f32>(1346f, -462f, 397f), var_1.a.a, vec3<bool>(false, var_1.c.x, var_1.c.x)) / (var_1.a.a + vec3<f32>(-893f, var_1.a.a.x, -1277f))), -var_1.b);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_1(floor(arg_0.a.a * (exp2(arg_0.a.a) / sign(vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.b)))), floor(-990f));
    let var_1 = vec4<f32>(-var_0.a.x, -(-arg_0.b), -(-(-arg_0.b) - (858f - -(-528f))), 1073f);
    var_0 = Struct_1(vec3<f32>(-1703f / abs(-903f / var_1.x), sign(-var_0.a.x), 208f), var_1.x);
    var_0 = arg_0.a;
    var var_2 = vec4<bool>(((~8999u << ~0u) - func_2(max(var_0.a.x, -1000f), select(u_input.a, arg_3, false), u_input.b, Struct_4(arg_0.a, -1000f, arg_0.c, arg_0.d, arg_0.e)).a) < arg_3.x, all(arg_1), !(select(false, any(vec3<bool>(arg_0.c.x, arg_2.x, arg_0.c.x)), true) && true), any(select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_0.c.x), select(select(vec4<bool>(arg_0.c.x, false, true, arg_1.x), vec4<bool>(arg_2.x, arg_1.x, arg_2.x, true), vec4<bool>(false, true, true, arg_0.c.x)), !vec4<bool>(false, arg_1.x, arg_1.x, false), !vec4<bool>(arg_0.c.x, arg_1.x, false, false)), !select(vec4<bool>(true, arg_2.x, false, arg_0.c.x), vec4<bool>(true, true, arg_0.c.x, true), false))));
    return Struct_3(sign(var_1.x), vec3<i32>(16451i, arg_0.d, (u_input.d.x ^ (u_input.d.x % 2147483647i)) % (arg_0.d / max(0i, u_input.b))), -(i32(-2147483648) | -46133i), ((vec4<i32>(i32(-2147483648), -9144i, -1i, 49389i) ^ -vec4<i32>(0i, arg_0.d, 1i, 2147483647i)) | ~vec4<i32>(-1i, 26692i, u_input.c, u_input.d.x)) * vec4<i32>(1i | (arg_0.d % arg_0.d), arg_0.d, u_input.c, -(-arg_0.d)));
}

fn func_1() -> bool {
    var var_0 = func_4(Struct_4(func_3(vec3<u32>(u_input.a.x, 50798u, u_input.a.x) << vec3<u32>(0u, 0u, 86918u), func_2(-1000f / -1363f, ~vec4<u32>(u_input.a.x, 0u, 4230u, u_input.a.x), -44263i, Struct_4(Struct_1(vec3<f32>(-787f, -158f, -546f), -153f), 2939f, vec2<bool>(true, true), i32(-2147483648), Struct_2(0u))), u_input.c, u_input.a.x), -ceil(-549f + 1801f), vec2<bool>(firstLeadingBit(u_input.d.x) <= ~u_input.b, !(!false)), -(~u_input.c), Struct_2(1u)), select(!vec2<bool>(false || true, all(vec4<bool>(true, false, true, true))), vec2<bool>(!(!true), any(vec2<bool>(false, true))), false), !vec3<bool>(!false, u_input.a.x < u_input.a.x, !all(vec4<bool>(true, true, false, true))), ~vec4<u32>(func_2(1232f, u_input.a, 1i, Struct_4(Struct_1(vec3<f32>(1657f, -506f, 529f), 969f), -1200f, vec2<bool>(false, true), 29780i, Struct_2(4294967295u))).a, abs(1u), 0u % u_input.a.x, firstLeadingBit(0u)) / u_input.a);
    var_0 = func_4(Struct_4(Struct_1(min(-vec3<f32>(var_0.a, var_0.a, var_0.a), abs(vec3<f32>(1559f, var_0.a, 850f))), var_0.a), var_0.a, vec2<bool>(select(!false, any(vec2<bool>(false, true)), !false), select(!true, true, !true)), 0i, Struct_2(4294967295u >> dot(u_input.a, vec4<u32>(97065u, u_input.a.x, u_input.a.x, u_input.a.x)))), !vec2<bool>(false, -var_0.a < (-1407f * 388f)), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), any(vec4<bool>(true, true, false, false)))), vec4<u32>(countOneBits(~dot(vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.a.ywy)), ~u_input.a.x, u_input.a.x, 25084u));
    var var_1 = floor(vec3<f32>(477f, var_0.a, var_0.a));
    var var_2 = -(-24545i);
    let var_3 = Struct_4(func_3(~(u_input.a.xzx + vec3<u32>(76431u, u_input.a.x, u_input.a.x)), func_2(var_1.x, ~(~vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x)), -20367i, Struct_4(Struct_1(vec3<f32>(163f, var_1.x, -119f), -2086f), var_0.a, !vec2<bool>(false, true), -(i32(-2147483648)), Struct_2(u_input.a.x))), dot(~(u_input.d << vec3<u32>(u_input.a.x, 38883u, u_input.a.x)), abs(countOneBits(u_input.d))), 49044u), var_1.x, !select(vec2<bool>(-504f == var_0.a, any(vec2<bool>(true, false))), !(!vec2<bool>(false, false)), !(false || false)), u_input.b, Struct_2(dot(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> u_input.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(-firstLeadingBit(-u_input.d.x), ~(-49644i));
    var_0 = -u_input.d.yx;
    let var_1 = abs(u_input.d.x / var_0.x);
    var var_2 = select(~var_0.x, ~0i, -(exp2(-716f) * (-809f + -171f)) >= 1907f);
    var var_3 = -(-u_input.b);
    var_2 = ~var_0.x;
    let var_4 = ~((vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x >> 4294967295u, u_input.a.x * u_input.a.x) % ~u_input.a) / select(vec4<u32>(43933u, u_input.a.x, 0u, 8651u) + u_input.a, abs(vec4<u32>(17889u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(all(vec4<bool>(true, false, false, false)), true || true, false & true, func_1())));
    var_2 = dot(~u_input.d.yx, ~(select(vec2<i32>(u_input.c, var_0.x) | u_input.d.xx, vec2<i32>(0i, u_input.c), vec2<bool>(false, false)) / vec2<i32>(-var_1, 0i + 29238i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.x, firstLeadingBit(countOneBits(69456i))), abs(var_4.xy), ~max(clamp(u_input.a.x, u_input.a.x + u_input.a.x, 20544u), var_4.x | abs(1u)), vec3<u32>(32717u, ~6895u, u_input.a.x));
}

