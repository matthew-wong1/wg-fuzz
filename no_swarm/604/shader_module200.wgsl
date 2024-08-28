// {"0:0":[167,55,209,42]}
// Seed: 7597556163771949688

struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_3(~(-((vec4<i32>(arg_1, 40144i, -1i, arg_1) | vec4<i32>(u_input.a, arg_1, 19887i, u_input.a)) & vec4<i32>(0i, arg_1, -38360i, 2147483647i))), any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true))), Struct_2(~(clamp(vec3<u32>(96094u, 21120u, 107397u), vec3<u32>(1u, 1u, 8372u), vec3<u32>(11333u, 4294967295u, 19614u)) + ~vec3<u32>(38878u, 36135u, 28839u)), ~abs(firstLeadingBit(vec4<u32>(8133u, 0u, 4294967295u, 58226u))), -695f * (-(-467f) * trunc(arg_0.x))), ~(-vec3<i32>(2147483647i, arg_1, -arg_1)), any(!(!vec3<bool>(true, false, true))));
    var var_1 = Struct_1(!(var_0.b || (1u <= var_0.c.b.x)), !vec3<bool>(var_0.b, var_0.b, !var_0.e), any(vec3<bool>(var_0.b, false, var_0.b)), ceil(arg_0.x) + (550f + var_0.c.c));
    let var_2 = var_0.a.zy;
    var var_3 = -117f;
    let var_4 = Struct_1(any(select(select(var_1.b, select(vec3<bool>(true, true, true), vec3<bool>(var_0.e, var_1.a, true), var_0.e), false), var_1.b, !select(vec3<bool>(var_1.a, var_1.c, false), var_1.b, var_0.e))), select(select(select(var_1.b, var_1.b, vec3<bool>(true, var_1.c, false)), var_1.b, !all(vec3<bool>(var_0.e, var_0.e, var_0.b))), select(!(!var_1.b), var_1.b, var_0.e), select(vec3<bool>(var_0.e, var_1.b.x, false), vec3<bool>(var_1.a, var_0.b || true, all(var_1.b.zy)), select(var_1.a, all(vec4<bool>(var_1.a, false, true, false)), var_0.b || false))), select(true, any(select(vec4<bool>(false, true, var_1.a, var_0.b), vec4<bool>(var_1.b.x, var_1.c, false, var_0.b), var_0.e)), var_0.e) & var_0.e, arg_0.x);
    return !vec4<bool>(any(!vec3<bool>(false, var_0.e, true)), true && false, true, select(!all(vec4<bool>(var_1.a, true, false, var_1.c)), any(vec4<bool>(true, var_4.b.x, true, true)), !false));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> vec3<bool> {
    var var_0 = select(!true, !arg_2, true);
    var var_1 = max(54965u, min(reverseBits(~25265u), 1u) | 82976u);
    var var_2 = func_3(-(-(arg_1.yxy + arg_1.wyw) - max(vec3<f32>(arg_1.x, 289f, 274f), vec3<f32>(arg_1.x, 960f, arg_1.x))), u_input.a);
    var_1 = max(~abs(0u), ~38803u + (~(~0u) + (~16764u - ~0u)));
    let var_3 = -min(arg_0 * -(-arg_0), floor(arg_1.x));
    return var_2.xzy;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = any(select(func_3(vec3<f32>(ceil(-783f), 136f, 1183f), u_input.a).yz, !arg_0.b.yx, vec2<bool>(!(4294967295u < 6980u), true)));
    var_0 = arg_0.b.x;
    let var_1 = Struct_3(~(~(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << vec4<u32>(4294967295u, 63871u, 59854u, 0u))) ^ (~select(vec4<i32>(-1i, 2147483647i, -36039i, 1i), vec4<i32>(-1i, u_input.a, 0i, 13500i), false) ^ -min(vec4<i32>(-1i, -1131i, 14465i, 7977i), vec4<i32>(2806i, u_input.a, u_input.a, -1i))), true, Struct_2(select(~(vec3<u32>(35626u, 1u, 0u) / vec3<u32>(4294967295u, 0u, 48032u)), ~vec3<u32>(4294967295u, 0u, 2233u), func_3(step(vec3<f32>(-480f, arg_0.d, arg_0.d), vec3<f32>(arg_0.d, -338f, arg_0.d)), u_input.a).x), ((vec4<u32>(15513u, 0u, 60477u, 1u) * vec4<u32>(18502u, 67448u, 0u, 1u)) * ~vec4<u32>(0u, 21311u, 995u, 24940u)) >> ~(vec4<u32>(26710u, 76936u, 4294967295u, 0u) >> vec4<u32>(0u, 4294967295u, 4294967295u, 60954u)), 840f), firstTrailingBit(vec3<i32>(reverseBits(u_input.a), -22527i, -53394i) ^ (vec3<i32>(u_input.a, 32295i, 20584i) | (vec3<i32>(22622i, -33708i, 20497i) << vec3<u32>(50169u, 4294967295u, 4294967295u)))), all(vec3<bool>(true, false, arg_0.b.x)));
    let var_2 = vec3<bool>(!func_2(-236f, vec4<f32>(1223f, sign(arg_0.d), trunc(-1632f), arg_0.d), false).x, arg_0.a, false);
    var var_3 = Struct_3(reverseBits(countOneBits(abs(vec4<i32>(31807i, 1i, u_input.a, 2147483647i)))), false, Struct_2(~((vec3<u32>(var_1.c.b.x, var_1.c.b.x, 0u) & var_1.c.a) << vec3<u32>(0u, 55580u, 37595u)), vec4<u32>(~var_1.c.b.x * var_1.c.a.x, var_1.c.a.x ^ (var_1.c.b.x << 0u), 4294967295u, 4294967295u), sign(-312f)), var_1.a.wyz, !all(!func_2(var_1.c.c, vec4<f32>(-1741f, 2090f, var_1.c.c, -1000f), true)));
    return Struct_3(~firstLeadingBit(vec4<i32>(var_3.a.x, min(10326i, 1i), var_3.d.x, countOneBits(var_1.d.x))), !arg_0.a, var_3.c, vec3<i32>(-((20669i << var_1.c.a.x) << ~var_3.c.b.x), clamp(25331i, u_input.a << dot(var_3.c.b.zyz, vec3<u32>(var_1.c.b.x, var_3.c.b.x, 1u)), ~(-(-46807i))), abs(var_1.a.x)), arg_0.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    let var_0 = func_4(Struct_1(true, vec3<bool>(any(func_2(-804f, vec4<f32>(arg_0.a.x, arg_1.b.c.c, -621f, arg_1.a.x), arg_0.b.e)), all(select(vec4<bool>(false, false, arg_1.b.e, true), vec4<bool>(arg_1.b.b, arg_2, arg_0.b.e, true), vec4<bool>(arg_0.b.e, arg_0.b.b, true, false))), arg_0.b.e), false, arg_0.a.x));
    var var_1 = vec4<i32>(var_0.d.x, -(~(-dot(vec2<i32>(arg_1.b.d.x, u_input.a), var_0.d.zx))), dot(abs(~(arg_0.b.a.zy / vec2<i32>(var_0.d.x, 15095i))), ~reverseBits(arg_0.b.a.xz) + arg_1.b.d.yx), u_input.a * -1i);
    var_1 = vec4<i32>(arg_0.b.d.x, var_1.x, -62082i, 2147483647i) | -arg_1.b.a;
    var_1 = var_0.a;
    var_1 = var_0.a & vec4<i32>(var_1.x ^ -26792i, u_input.a, (firstLeadingBit(u_input.a) % ~var_1.x) | arg_0.b.d.x, reverseBits(~(~26594i)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = step(exp2(select(-(-731f) * sign(2099f), min(ceil(-241f), -1977f), 27028i == 2147483647i)), -609f);
    var_0 = -(-(-(-1222f / 2014f)) + func_1(Struct_4(-vec2<f32>(297f, 540f), Struct_3(vec4<i32>(u_input.a, 18088i, 0i, i32(-2147483648)), true, Struct_2(vec3<u32>(17549u, 24177u, 0u), vec4<u32>(1u, 44307u, 71195u, 4294967295u), 561f), vec3<i32>(u_input.a, u_input.a, u_input.a), false), clamp(vec3<u32>(27361u, 47313u, 0u), vec3<u32>(1u, 80380u, 13515u), vec3<u32>(67701u, 10021u, 25526u))), Struct_4(abs(vec2<f32>(-777f, 623f)), Struct_3(vec4<i32>(27878i, u_input.a, 27206i, -44198i), false, Struct_2(vec3<u32>(1u, 14855u, 0u), vec4<u32>(18005u, 1u, 10926u, 4294967295u), 161f), vec3<i32>(u_input.a, u_input.a, -23186i), false), vec3<u32>(1417u, 17539u, 44265u)), false && true, vec2<u32>(dot(vec2<u32>(28145u, 1u), vec2<u32>(0u, 1u)), 0u)));
    var_0 = -ceil(floor(select(step(-455f, 353f), trunc(1425f), any(vec3<bool>(true, false, false)))));
    var var_1 = ~max(dot(firstLeadingBit(vec4<i32>(0i, 24200i, 1i, u_input.a) << vec4<u32>(4294967295u, 0u, 0u, 1u)), (vec4<i32>(-32632i, u_input.a, -15265i, u_input.a) | vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) >> vec4<u32>(87314u, 1u, 1u, 4294967295u)), ~reverseBits(-68989i) & -u_input.a);
    var var_2 = dot(vec4<i32>(0i / u_input.a, ~abs(u_input.a), u_input.a, (dot(vec3<i32>(u_input.a, u_input.a, -48799i), vec3<i32>(1i, u_input.a, 2147483647i)) << dot(vec2<u32>(4294967295u, 102870u), vec2<u32>(13147u, 38292u))) << 52592u), func_4(Struct_1(func_2(-2762f, vec4<f32>(-270f, -456f, 1120f, 816f), false).x, !vec3<bool>(true, true, false), true, 499f - 657f)).a * firstLeadingBit(~vec4<i32>(u_input.a, 0i, u_input.a, -1i) % (vec4<i32>(u_input.a, 21682i, -254i, -15854i) & vec4<i32>(2147483647i, -40750i, -1i, u_input.a))));
    var var_3 = Struct_3(-vec4<i32>(i32(-2147483648), -(-u_input.a), -u_input.a, -1i), all(vec3<bool>(!false, true, !(!false))), Struct_2(reverseBits(~vec3<u32>(0u, 80840u, 1u)) ^ vec3<u32>(7969u, ~4294967295u, ~0u), vec4<u32>(~4294967295u << 1u, clamp(6208u, 1u, 6287u) >> (2740u - 1u), ~0u * 0u, select(0u | 33809u, 1u, !false)), abs(938f)), vec3<i32>(-(i32(-2147483648)), u_input.a, 5737i) | (vec3<i32>(u_input.a + 0i, -u_input.a, -u_input.a) + vec3<i32>(u_input.a, u_input.a + u_input.a, ~u_input.a)), func_2(abs(1046f + -478f) + 1115f, vec4<f32>(ceil(-596f), -(1398f + 899f), func_4(Struct_1(false, vec3<bool>(true, false, true), false, -1333f)).c.c, 498f * (-488f * -1000f)), false && false).x);
    var_3 = Struct_3(-abs(vec4<i32>(-1i, u_input.a >> 11255u, var_3.a.x + u_input.a, 15267i)), !var_3.e, func_4(Struct_1(func_2(var_3.c.c + 2122f, -vec4<f32>(-969f, 702f, var_3.c.c, 380f), var_3.e).x, vec3<bool>(!var_3.b, var_3.e, !var_3.e), !any(vec4<bool>(var_3.b, var_3.e, var_3.b, true)), var_3.c.c / var_3.c.c)).c, -firstLeadingBit(var_3.a.ywx), !var_3.b);
    let var_4 = Struct_4(abs(-(vec2<f32>(278f, var_3.c.c) * vec2<f32>(-1210f, var_3.c.c))) * vec2<f32>(774f, -(-var_3.c.c)), func_4(Struct_1(var_3.e, func_2(-var_3.c.c, -vec4<f32>(var_3.c.c, var_3.c.c, 1000f, -969f), i32(-2147483648) == 1i), 1436i <= (var_3.a.x << var_3.c.b.x), select(421f * var_3.c.c, -var_3.c.c, all(vec2<bool>(var_3.b, var_3.e))))), vec3<u32>(var_3.c.b.x, 1u, ~var_3.c.b.x));
    var_2 = (-1i | firstTrailingBit(0i)) << 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_3.c.a.x), var_4.b.c.c, vec2<i32>(max(53583i, ~37309i), var_3.a.x) % vec2<i32>((var_3.a.x - 1i) * (u_input.a * var_4.b.d.x), u_input.a), -339f, vec4<i32>(u_input.a, ~2147483647i, -2686i, 13046i & -(-11353i)));
}

