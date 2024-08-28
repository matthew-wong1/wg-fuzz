// {"0:0":[109,250,221,207,24,83,19,9,231,71,75,225,201,25,117,71]}
// Seed: 6701987436107946762

struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> vec2<i32> {
    let var_0 = -ceil(arg_0.c.a.x * -991f);
    let var_1 = ~(~select(u_input.a.x % u_input.a.x, u_input.a.x / 846u, u_input.a.x <= dot(u_input.a, vec3<u32>(4294967295u, u_input.a.x, 8824u))));
    var var_2 = !arg_0.d.a.zz;
    var var_3 = Struct_3(arg_0.b, arg_0.b, Struct_2(-(vec2<f32>(-240f, arg_0.c.a.x) - (arg_0.c.a / arg_0.c.a)), select(i32(-2147483648), -11654i << select(29393u, var_1, arg_2), true), arg_2, arg_0.d.a, arg_0.c.e), Struct_1(arg_0.c.d, min(vec2<i32>(arg_0.a.b.x, arg_3), -select(vec2<i32>(0i, arg_0.b.b.x), arg_0.b.b, false))), true);
    var_2 = var_3.b.a.zz;
    return ~clamp(abs(-abs(vec2<i32>(arg_0.b.b.x, var_3.c.b))), arg_0.c.e.b, reverseBits(abs(vec2<i32>(var_3.b.b.x, arg_0.d.b.x) | arg_0.d.b)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = Struct_2(-arg_2.c.a, arg_2.a.b.x, !(!true), arg_0.c.e.a, arg_0.a);
    let var_1 = var_0.e.b.x;
    var var_2 = max(vec3<i32>(firstLeadingBit(-1i), dot(func_3(Struct_3(arg_2.d, Struct_1(vec4<bool>(true, arg_0.e, true, false), vec2<i32>(-2598i, 1380i)), var_0, Struct_1(vec4<bool>(var_0.d.x, true, true, true), arg_2.b.b), var_0.d.x), vec4<f32>(var_0.a.x, arg_2.c.a.x, -1000f, -1049f), var_0.d.x, i32(-2147483648)), ~(-arg_2.b.b)), ~abs(-8677i)), ~(vec3<i32>(var_1, var_0.b, ~var_0.e.b.x) << min(max(u_input.a, vec3<u32>(arg_1, 0u, u_input.a.x)), ~u_input.a)));
    var var_3 = arg_2;
    let var_4 = vec4<i32>(-45862i, dot(abs(-vec4<i32>(1i, var_1, arg_2.d.b.x, var_0.e.b.x)) >> ~(~vec4<u32>(102156u, u_input.a.x, 17149u, 19125u)), -abs(clamp(vec4<i32>(arg_0.c.b, -1i, -24757i, 0i), vec4<i32>(arg_2.c.b, var_2.x, 1923i, var_1), vec4<i32>(i32(-2147483648), arg_0.b.b.x, -27730i, var_2.x)))), var_2.x, abs(~1i));
    return select(var_0.e.a, var_0.d, vec4<bool>(-233f > var_0.a.x, true, true, true));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> vec4<f32> {
    let var_0 = vec2<u32>(countOneBits(arg_1) * 5628u, ~(4294967295u & max(~1u, 29130u | arg_0)));
    var var_1 = Struct_1(select(!(!vec4<bool>(arg_2, false, true, false)), !select(vec4<bool>(arg_2, true, false, arg_2), func_2(Struct_3(Struct_1(vec4<bool>(arg_2, arg_2, false, arg_2), vec2<i32>(1i, 1i)), Struct_1(vec4<bool>(arg_2, false, false, arg_2), vec2<i32>(-9506i, 16107i)), Struct_2(vec2<f32>(395f, -516f), -17825i, arg_2, vec4<bool>(true, arg_2, true, false), Struct_1(vec4<bool>(arg_2, false, true, arg_2), vec2<i32>(20828i, 22791i))), Struct_1(vec4<bool>(true, arg_2, false, arg_2), vec2<i32>(0i, 47817i)), arg_2), 4294967295u, Struct_3(Struct_1(vec4<bool>(arg_2, arg_2, arg_2, true), vec2<i32>(0i, -1i)), Struct_1(vec4<bool>(arg_2, true, arg_2, arg_2), vec2<i32>(11433i, -3953i)), Struct_2(vec2<f32>(553f, 1963f), 37457i, true, vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(arg_2, true, arg_2, false), vec2<i32>(-1i, 0i))), Struct_1(vec4<bool>(true, arg_2, false, false), vec2<i32>(-13699i, 9768i)), arg_2)), !vec4<bool>(arg_2, arg_2, true, false)), func_2(Struct_3(Struct_1(vec4<bool>(true, false, false, arg_2), vec2<i32>(-1i, -18137i)), Struct_1(vec4<bool>(arg_2, arg_2, false, false), vec2<i32>(7097i, 2147483647i)), Struct_2(vec2<f32>(641f, -558f), 2147483647i, false, vec4<bool>(true, arg_2, arg_2, arg_2), Struct_1(vec4<bool>(false, arg_2, true, arg_2), vec2<i32>(-6437i, i32(-2147483648)))), Struct_1(vec4<bool>(arg_2, true, true, arg_2), vec2<i32>(-22162i, -14924i)), !arg_2), reverseBits(14987u) & (var_0.x & 112841u), Struct_3(Struct_1(vec4<bool>(arg_2, false, arg_2, arg_2), vec2<i32>(i32(-2147483648), -39914i)), Struct_1(vec4<bool>(false, arg_2, arg_2, arg_2), vec2<i32>(23237i, 10756i)), Struct_2(vec2<f32>(223f, -343f), i32(-2147483648), true, vec4<bool>(arg_2, arg_2, arg_2, true), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(3645i, -14483i))), Struct_1(vec4<bool>(arg_2, arg_2, true, arg_2), vec2<i32>(1i, 37804i)), false)).x), min(~vec2<i32>(1i, -45096i) * vec2<i32>(-21693i & 53207i, 29018i ^ 35647i), vec2<i32>(42238i, ~reverseBits(-27330i))));
    var var_2 = -1i;
    let var_3 = vec3<i32>(~(func_3(Struct_3(Struct_1(var_1.a, vec2<i32>(var_1.b.x, var_1.b.x)), Struct_1(vec4<bool>(arg_2, true, arg_2, false), var_1.b), Struct_2(vec2<f32>(-2228f, -573f), var_1.b.x, arg_2, vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(var_1.a.x, arg_2, true, var_1.a.x), var_1.b)), Struct_1(var_1.a, var_1.b), true), vec4<f32>(1319f, 641f, 2817f, -463f), arg_2, var_1.b.x).x * ~29426i), (-var_1.b.x + var_1.b.x) >> (var_0.x + (arg_1 << 0u)), countOneBits(dot(vec4<i32>(var_1.b.x, -12642i, 1i, var_1.b.x), vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, -25474i)) << var_0.x)) ^ (-abs(vec3<i32>(var_1.b.x, var_1.b.x, -34616i)) ^ ~vec3<i32>(abs(6579i), ~1i, 33338i % -1i));
    var var_4 = Struct_1(!(!vec4<bool>(!false, var_1.a.x, 109100u >= arg_1, any(vec3<bool>(arg_2, arg_2, false)))), ~select(~var_1.b * var_3.yy, var_3.xx, !arg_2));
    return -(vec4<f32>(trunc(-545f), (-1174f * -1000f) * trunc(-1108f), 124f, abs(-1386f / 1837f)) * -(-vec4<f32>(1000f, -542f, 793f, -768f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(min(trunc(ceil(func_1(4294967295u, u_input.a.x, false))), func_1(~2894u, ~u_input.a.x, -32898i < 40874i) * step(vec4<f32>(-1000f, 130f, -746f, -1426f), vec4<f32>(1000f, 1000f, -124f, -485f) - vec4<f32>(551f, -1468f, 791f, 188f))), sign(floor(-vec4<f32>(-559f, -740f, -253f, 614f))) - vec4<f32>(ceil(632f), -max(644f, 1118f), 1958f, func_1(42600u << u_input.a.x, dot(vec4<u32>(u_input.a.x, 55831u, 25846u, u_input.a.x), vec4<u32>(64574u, 12346u, u_input.a.x, 11323u)), !true).x), vec4<bool>(true, ((false & true) && true) || false, any(func_2(Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(2147483647i, 10330i)), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-20753i, -22711i)), Struct_2(vec2<f32>(304f, -345f), -2592i, false, vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-32016i, -1306i))), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-1i, -16416i)), true), 74038u | 80797u, Struct_3(Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(46570i, 16237i)), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, -1i)), Struct_2(vec2<f32>(-1116f, -1308f), 16412i, false, vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(26483i, -13490i))), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(0i, -47053i)), false)).zy), select(!all(vec3<bool>(true, false, true)), clamp(9362i, 40321i, 0i) > func_3(Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(1i, 1i)), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(1i, 0i)), Struct_2(vec2<f32>(-572f, -434f), 60715i, true, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-1i, -43743i))), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, i32(-2147483648))), true), vec4<f32>(2497f, 743f, -778f, -533f), false, 2147483647i).x, !true || (u_input.a.x < 4294967295u))));
    var var_1 = Struct_2(var_0.yy, 2147483647i, ~(u_input.a.x + dot(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy)) >= (u_input.a.x & ((u_input.a.x - u_input.a.x) | (u_input.a.x + 4294967295u))), !select(vec4<bool>(true, any(vec3<bool>(true, false, false)), !false, true && true), vec4<bool>(false, true, false && false, all(vec3<bool>(false, false, false))), 0u > firstLeadingBit(u_input.a.x)), Struct_1(!select(vec4<bool>(true, false, true, false), !vec4<bool>(true, false, false, true), any(vec3<bool>(true, true, false))), func_3(Struct_3(Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(11729i, -1i)), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(7683i, -36290i)), Struct_2(vec2<f32>(1843f, var_0.x), 0i, true, vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), -17019i))), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(2147483647i, 0i)), true & false), min(-var_0, var_0 + var_0), false, -2147483647i * dot(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(194i, i32(-2147483648))))));
    var_1 = Struct_2(max(var_1.a, select((var_0.xy - vec2<f32>(var_0.x, 563f)) / var_0.wz, (var_0.xz / vec2<f32>(-1654f, var_0.x)) - vec2<f32>(-1416f, 484f), any(func_2(Struct_3(var_1.e, Struct_1(var_1.e.a, var_1.e.b), Struct_2(var_1.a, var_1.e.b.x, var_1.c, vec4<bool>(false, var_1.d.x, false, var_1.e.a.x), var_1.e), var_1.e, true), 2290u, Struct_3(var_1.e, var_1.e, Struct_2(vec2<f32>(449f, var_1.a.x), var_1.e.b.x, var_1.d.x, var_1.d, var_1.e), Struct_1(vec4<bool>(var_1.c, var_1.d.x, false, true), vec2<i32>(-1i, var_1.b)), var_1.d.x)).xz))), min(-max(1i, var_1.e.b.x), func_3(Struct_3(var_1.e, var_1.e, Struct_2(var_0.wy, 13834i, var_1.d.x, vec4<bool>(true, false, true, var_1.e.a.x), var_1.e), Struct_1(vec4<bool>(var_1.c, true, var_1.d.x, var_1.d.x), vec2<i32>(i32(-2147483648), 2147483647i)), true), -vec4<f32>(1000f, -650f, var_1.a.x, -911f), func_2(Struct_3(Struct_1(vec4<bool>(true, var_1.e.a.x, var_1.e.a.x, var_1.c), vec2<i32>(var_1.e.b.x, 26027i)), Struct_1(vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.c), var_1.e.b), Struct_2(vec2<f32>(-627f, 1557f), 2147483647i, false, var_1.e.a, Struct_1(var_1.d, var_1.e.b)), var_1.e, true), u_input.a.x, Struct_3(Struct_1(var_1.e.a, var_1.e.b), var_1.e, Struct_2(var_0.yw, var_1.b, var_1.c, var_1.e.a, var_1.e), Struct_1(var_1.d, var_1.e.b), var_1.c)).x, var_1.b >> 1u).x) | var_1.e.b.x, false, vec4<bool>((i32(-2147483648) % select(var_1.e.b.x, var_1.b, var_1.d.x)) >= (-var_1.b | ~(-49357i)), var_1.e.a.x, true, false), Struct_1(!var_1.d, -((vec2<i32>(var_1.e.b.x, var_1.b) & vec2<i32>(-61003i, var_1.b)) & (var_1.e.b % var_1.e.b))));
    var_1 = Struct_2(var_0.wx, var_1.e.b.x, var_1.c, !vec4<bool>(var_1.c, any(var_1.d.yz), !(false & true), !(!false)), Struct_1(vec4<bool>(all(!var_1.e.a.wy), true, any(vec3<bool>(var_1.c, var_1.e.a.x, false)), -var_1.a.x > var_1.a.x), (-vec2<i32>(0i, 28044i) >> select(u_input.a.yz, vec2<u32>(1u, u_input.a.x), vec2<bool>(var_1.c, false))) << min(vec2<u32>(u_input.a.x, 1u), u_input.a.zx)));
    let var_2 = select(var_1.d, !var_1.e.a, var_1.e.a);
    let var_3 = Struct_3(Struct_1(func_2(Struct_3(Struct_1(vec4<bool>(true, var_2.x, true, true), var_1.e.b), Struct_1(var_1.e.a, vec2<i32>(8309i, var_1.e.b.x)), Struct_2(var_1.a, var_1.b, var_1.e.a.x, var_2, Struct_1(vec4<bool>(true, var_2.x, var_1.c, true), var_1.e.b)), Struct_1(vec4<bool>(var_2.x, var_2.x, false, true), vec2<i32>(var_1.e.b.x, var_1.b)), true), ~u_input.a.x ^ (0u ^ 77197u), Struct_3(Struct_1(var_1.e.a, var_1.e.b), var_1.e, Struct_2(var_1.a, i32(-2147483648), true, var_1.d, var_1.e), var_1.e, var_1.c)), (firstLeadingBit(vec2<i32>(var_1.e.b.x, var_1.b)) << u_input.a.xz) + var_1.e.b), var_1.e, Struct_2(vec2<f32>(floor(-371f), 508f), -(-1i) * 9553i, any(var_1.d), func_2(Struct_3(var_1.e, var_1.e, Struct_2(var_0.yz, var_1.e.b.x, false, var_1.d, var_1.e), var_1.e, !var_2.x), 33374u, Struct_3(Struct_1(var_1.d, vec2<i32>(var_1.b, 1i)), var_1.e, Struct_2(vec2<f32>(var_1.a.x, 2116f), var_1.b, false, var_1.e.a, var_1.e), var_1.e, true)), var_1.e), var_1.e, any(vec2<bool>(true, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(0u >> dot(vec2<u32>(u_input.a.x, 1u), u_input.a.zx))), vec4<i32>(-var_1.b, var_1.b, -(-(-27362i)) << u_input.a.x, select(0i, -37732i, dot(vec4<i32>(18792i, 31033i, 2147483647i, 0i), vec4<i32>(var_1.e.b.x, var_1.e.b.x, -1i, 1i)) > -1i)), firstTrailingBit(~select(u_input.a.x, 1u / 48246u, var_2.x)), ~reverseBits(~(u_input.a.x | 8978u)), -9326i);
}

