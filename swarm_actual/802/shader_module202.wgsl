// {"0:0":[188,154,90,137,199,195,55,40,20,93,144,171,32,214,70,117,137,12,79,223]}
// Seed: 6411865179439114871

struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    global0 = 1u;
    var var_0 = Struct_4(Struct_3(~firstTrailingBit(23877u | 12583u), arg_2.xwz, vec2<u32>(reverseBits(u_input.a) & (u_input.a / u_input.a), abs(u_input.a)), Struct_1(-vec3<i32>(arg_0, arg_3, 11040i)), abs(min(vec2<u32>(u_input.d, u_input.a) / vec2<u32>(22211u, u_input.a), clamp(vec2<u32>(1u, 0u), vec2<u32>(u_input.d, u_input.e), vec2<u32>(u_input.a, u_input.a))))), Struct_2(exp2(-vec4<f32>(-205f, 721f, -563f, -2346f) * -vec4<f32>(296f, -571f, -749f, -124f)), Struct_1(~abs(vec3<i32>(arg_3, 1540i, i32(-2147483648)))), vec2<i32>(select(reverseBits(-1i), dot(arg_2.zy, arg_2.wy), false), -1i), abs(abs(~u_input.d))));
    let var_1 = -(var_0.b.a.wzx * -var_0.b.a.wyw) / select(step(-var_0.b.a.yzy, vec3<f32>(623f, -147f, var_0.b.a.x)) / var_0.b.a.xzy, var_0.b.a.ywx, select(vec3<bool>(!arg_1, !false, arg_1), vec3<bool>(false, any(vec2<bool>(true, true)), all(vec3<bool>(false, true, true))), vec3<bool>(any(vec3<bool>(true, arg_1, false)), arg_1, !arg_1)));
    var_0 = Struct_4(var_0.a, Struct_2(var_0.b.a, var_0.a.d, clamp(-vec2<i32>(2147483647i, u_input.b) * ~arg_2.wx, ~(~vec2<i32>(0i, 46494i)), ~clamp(var_0.a.b.xx, vec2<i32>(arg_0, -26019i), vec2<i32>(arg_3, arg_2.x))), reverseBits(~(62734u + 912u))));
    var var_2 = var_1.x;
    return -ceil(ceil(-var_0.b.a.x));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<u32>(u_input.d, 1263u, ~(u_input.e & u_input.e) % ~4493u) ^ vec3<u32>(~4294967295u, select(u_input.a - u_input.e, u_input.d, false || false) * u_input.a, countOneBits(firstLeadingBit(u_input.a)));
    var var_1 = Struct_2(-(-(vec4<f32>(-785f, 443f, 142f, -619f) + vec4<f32>(-308f, -589f, 742f, -1239f))) / (((vec4<f32>(-213f, -641f, -1184f, 116f) / vec4<f32>(132f, -733f, 1210f, -692f)) / -vec4<f32>(265f, -488f, -654f, -476f)) - vec4<f32>(-(-1462f), -1521f, -1000f + -2175f, func_3(u_input.b, true, vec4<i32>(-30535i, 1i, u_input.b, i32(-2147483648)), -3697i))), Struct_1(vec3<i32>(-3904i, -dot(vec3<i32>(u_input.c, -5145i, 45432i), vec3<i32>(u_input.b, u_input.b, 65088i)), i32(-2147483648))), -min(vec2<i32>(0i, 0i), vec2<i32>(-46929i, 0i % 50722i)), var_0.x);
    var_1 = Struct_2(var_1.a, Struct_1(abs(abs(var_1.b.a))), vec2<i32>(-12487i << select(54843u, 60238u, false), 0i) + vec2<i32>(firstTrailingBit(0i & var_1.b.a.x), -var_1.b.a.x & -1i), 42172u);
    global0 = u_input.d;
    var var_2 = (select(var_1.c, abs(var_1.c) | (vec2<i32>(66251i, 2827i) - vec2<i32>(u_input.c, u_input.c)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)) % var_1.c) * var_1.c;
    return Struct_2((-var_1.a + -vec4<f32>(var_1.a.x, var_1.a.x, 1131f, var_1.a.x)) / (vec4<f32>(var_1.a.x - var_1.a.x, 699f, -var_1.a.x, -var_1.a.x) / -step(var_1.a, vec4<f32>(var_1.a.x, -1000f, var_1.a.x, var_1.a.x))), Struct_1(abs(min(vec3<i32>(var_2.x, var_2.x, -1i) / vec3<i32>(var_2.x, i32(-2147483648), -21400i), vec3<i32>(2147483647i, -17322i, i32(-2147483648))))), -(~vec2<i32>(-23621i, -43742i)), var_1.d);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_2 {
    global0 = arg_2.a.c.x;
    var var_0 = func_2();
    var var_1 = countOneBits(1u);
    let var_2 = Struct_2(-arg_2.b.a, Struct_1(select(~var_0.b.a, select(arg_1.b.a - var_0.b.a, arg_2.b.b.a, vec3<bool>(arg_3.x, true, false)), arg_3.x)), vec2<i32>(select(dot(firstLeadingBit(vec4<i32>(-6408i, 6212i, u_input.b, 1i)), vec4<i32>(0i, 29060i, -10103i, -40103i)), dot(vec2<i32>(var_0.c.x, -1i) ^ vec2<i32>(-1i, u_input.c), min(arg_2.a.d.a.zx, arg_2.a.b.yz)), !false == !arg_3.x), 1i), var_0.d >> abs(select(arg_1.d, reverseBits(34482u), any(arg_3))));
    var_0 = Struct_2(vec4<f32>(-473f, -var_0.a.x, 568f, -arg_1.a.x), Struct_1(-(vec3<i32>(var_2.c.x, -1i, arg_1.b.a.x) % vec3<i32>(i32(-2147483648), arg_1.c.x, -26530i)) * countOneBits(vec3<i32>(u_input.c, -12504i, var_2.b.a.x) >> vec3<u32>(4294967295u, u_input.a, 0u))), arg_2.b.c, ~dot(vec4<u32>(1u, 50934u, 59201u, 73519u) * max(vec4<u32>(0u, var_2.d, var_0.d, 0u), vec4<u32>(var_2.d, 1u, var_0.d, var_0.d)), ~(vec4<u32>(u_input.a, u_input.d, 1u, var_0.d) + vec4<u32>(1u, arg_1.d, 1u, arg_2.b.d))));
    return func_2();
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = arg_2;
    var var_1 = select(vec2<bool>(arg_2.c.x > (u_input.c % arg_1), !(51520i <= ~2147483647i)), vec2<bool>(true, true), select(vec2<bool>(!true && (arg_1 <= i32(-2147483648)), u_input.a <= u_input.a), vec2<bool>(true || any(vec3<bool>(false, true, false)), !true & (false == false)), false));
    var var_2 = Struct_4(Struct_3(func_2().d | var_0.d, clamp(arg_2.b.a | min(var_0.b.a, var_0.b.a), arg_2.b.a, var_0.b.a), ~(~clamp(vec2<u32>(arg_2.d, var_0.d), vec2<u32>(u_input.a, var_0.d), vec2<u32>(40554u, 0u))), func_1(-2162f, func_1(-arg_2.a.x, func_1(arg_2.a.x, Struct_2(var_0.a, Struct_1(vec3<i32>(-31515i, var_0.c.x, arg_2.c.x)), var_0.c, 17347u), Struct_4(Struct_3(u_input.d, vec3<i32>(var_0.c.x, 7972i, -1i), vec2<u32>(25939u, 4294967295u), var_0.b, vec2<u32>(4294967295u, 91288u)), var_0), vec3<bool>(var_1.x, false, false)), Struct_4(Struct_3(9763u, arg_2.b.a, vec2<u32>(arg_2.d, arg_2.d), Struct_1(var_0.b.a), vec2<u32>(71925u, var_0.d)), var_0), vec3<bool>(true, var_1.x, var_1.x)), Struct_4(Struct_3(arg_2.d, vec3<i32>(4477i, u_input.b, u_input.b), vec2<u32>(u_input.a, 39410u), var_0.b, vec2<u32>(0u, 1u)), func_2()), select(vec3<bool>(var_1.x, false, true), !vec3<bool>(false, var_1.x, false), var_1.x)).b, vec2<u32>(~(31333u + u_input.e), ~44030u)), func_2());
    var_2 = Struct_4(var_2.a, var_2.b);
    global0 = var_2.a.c.x;
    return abs(~vec4<u32>(abs(arg_2.d), 6634u % 30871u, var_2.b.d, 18738u)) + ~(~(~vec4<u32>(arg_2.d, 73514u, 18985u, var_0.d) ^ vec4<u32>(1u, var_2.a.c.x, 4294967295u, var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(-(-(-483f)));
    let var_1 = Struct_3(dot((vec4<u32>(34179u, 4412u, 1u, u_input.d) * ~vec4<u32>(21771u, 34183u, u_input.a, u_input.d)) ^ ~(vec4<u32>(u_input.a, 4294967295u, 4790u, 0u) | vec4<u32>(1u, 1u, 4438u, 128857u)), func_4(min(var_0, var_0), 4216i << 0u, func_1(var_0, Struct_2(vec4<f32>(var_0, 1417f, var_0, var_0), Struct_1(vec3<i32>(u_input.b, u_input.b, 0i)), vec2<i32>(-4416i, -16610i), 11695u), Struct_4(Struct_3(51822u, vec3<i32>(-23793i, 45872i, 1i), vec2<u32>(u_input.a, 1u), Struct_1(vec3<i32>(2147483647i, u_input.b, -18492i)), vec2<u32>(39995u, 52884u)), Struct_2(vec4<f32>(539f, -339f, var_0, -832f), Struct_1(vec3<i32>(i32(-2147483648), u_input.c, u_input.c)), vec2<i32>(u_input.c, u_input.c), 10817u)), vec3<bool>(false, true, false))) + min(abs(vec4<u32>(64487u, u_input.e, u_input.e, u_input.a)), select(vec4<u32>(u_input.e, 90223u, 37882u, 62950u), vec4<u32>(3542u, u_input.d, 5880u, 0u), vec4<bool>(false, false, true, true)))), func_1((func_3(u_input.b, false, vec4<i32>(i32(-2147483648), u_input.c, -33762i, i32(-2147483648)), 2147483647i) * (2139f / var_0)) - floor(-679f), Struct_2(ceil(-vec4<f32>(var_0, var_0, -891f, var_0)), Struct_1(vec3<i32>(-1i, u_input.b, u_input.c)), vec2<i32>(~u_input.c, -2147483647i), u_input.e), Struct_4(Struct_3(u_input.d, select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.b, u_input.c, i32(-2147483648)), true), min(vec2<u32>(u_input.a, 80492u), vec2<u32>(u_input.d, 1u)), Struct_1(vec3<i32>(1i, u_input.c, u_input.b)), ~vec2<u32>(104696u, u_input.a)), func_1(round(var_0), func_1(var_0, Struct_2(vec4<f32>(var_0, var_0, var_0, var_0), Struct_1(vec3<i32>(u_input.b, i32(-2147483648), -12531i)), vec2<i32>(u_input.b, 1i), u_input.e), Struct_4(Struct_3(u_input.e, vec3<i32>(0i, u_input.c, -1i), vec2<u32>(22667u, 0u), Struct_1(vec3<i32>(u_input.b, 0i, u_input.b)), vec2<u32>(4294967295u, u_input.a)), Struct_2(vec4<f32>(var_0, var_0, var_0, var_0), Struct_1(vec3<i32>(u_input.b, -36081i, u_input.c)), vec2<i32>(-1i, u_input.c), u_input.a)), vec3<bool>(true, false, false)), Struct_4(Struct_3(u_input.e, vec3<i32>(u_input.c, 1i, 2147483647i), vec2<u32>(1u, 14826u), Struct_1(vec3<i32>(-1i, 40945i, u_input.c)), vec2<u32>(u_input.a, 44056u)), Struct_2(vec4<f32>(var_0, var_0, -1321f, 1774f), Struct_1(vec3<i32>(u_input.b, 1i, -5993i)), vec2<i32>(u_input.c, u_input.b), u_input.e)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), !vec3<bool>(false, false, true), !vec3<bool>(true, true, false))).b.a, ~vec2<u32>(~23109u | 1u, ~u_input.d | ~u_input.a), func_1(var_0, func_2(), Struct_4(Struct_3(~31834u, vec3<i32>(u_input.c, u_input.b, u_input.b), ~vec2<u32>(u_input.d, u_input.e), func_2().b, vec2<u32>(1u, u_input.e)), func_2()), vec3<bool>(false, any(!vec3<bool>(false, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))))).b, vec2<u32>(~58680u, ~(~1u)));
    let var_2 = ~(~(((vec4<i32>(0i, 21003i, var_1.d.a.x, 1i) % vec4<i32>(u_input.c, var_1.b.x, u_input.b, -6131i)) - clamp(vec4<i32>(0i, u_input.b, u_input.b, u_input.c), vec4<i32>(0i, u_input.b, 9633i, -1i), vec4<i32>(-45597i, -1i, u_input.b, i32(-2147483648)))) << vec4<u32>(u_input.d, firstTrailingBit(4294967295u), var_1.a, ~0u)));
    var var_3 = vec4<u32>(abs(16034u) + (~u_input.d | ~u_input.e), u_input.a, max(~countOneBits(~11346u), ~var_1.a), u_input.a);
    var_3 = clamp(~(~(vec4<u32>(u_input.e, 1u, 1u, var_3.x) - (vec4<u32>(var_1.c.x, u_input.a, 0u, u_input.e) << vec4<u32>(1u, var_1.a, u_input.e, 22085u)))), vec4<u32>(var_1.c.x ^ (u_input.d & 24049u), var_1.a, u_input.e, 3091u % ~(1u ^ 2459u)), firstTrailingBit(~vec4<u32>(~0u, max(var_3.x, var_1.a), var_3.x + 62081u, ~1u)));
    var var_4 = vec4<bool>(true, (-(-u_input.b) & var_1.d.a.x) <= var_2.x, any(!(!vec3<bool>(true, false, false))), all(vec3<bool>(~var_1.b.x != (var_2.x ^ -1i), !(u_input.c < u_input.c), !(var_0 <= 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~(0i))), var_2, var_1.b.x << (var_3.x % ~(33267u - 23740u)));
}

