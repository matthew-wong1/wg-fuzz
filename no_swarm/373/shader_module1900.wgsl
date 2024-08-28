// {"0:0":[101,118,105,214,134,178,236,112,154,59,52,72,223,43,223,97,229,103,91,68,40,135,119,105,184,151,114,253,187,73,165,40,158,200,215,117,223,11,204,164,165,131,3,245,168,123,194,183]}
// Seed: 1165301839586841355

struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 34347u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), 1i, vec2<f32>(651f, -680f), 1i, vec4<bool>(true, true, true, true));

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(select(select(!select(global2.a, vec4<bool>(global2.a.x, false, true, global2.e.x), true), vec4<bool>(true, global1.x, global2.a.x, global1.x | global2.a.x), any(vec2<bool>(false, global2.e.x))), !vec4<bool>(!global2.a.x, !false, 889f < -802f, any(global2.a.yx)), true), u_input.b.x, max(round(global2.c), vec2<f32>(-global2.c.x, -global2.c.x) - vec2<f32>(sign(-166f), ceil(184f))), 1i, vec4<bool>(any(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global2.a.x, global2.e.x, global1.x), vec3<bool>(true, global2.e.x, global2.a.x))) & all(global2.a.xzw), select(global1.x, true, true), !(false || !global1.x), (global2.c.x >= (-593f / global2.c.x)) && false));
    let var_1 = vec4<bool>(all(select(vec3<bool>(global2.e.x, -42751i < 60960i, 0u >= global0.x), !select(vec3<bool>(global2.a.x, global2.e.x, var_0.a.x), var_0.a.xxz, var_0.a.wzw), select(var_0.a.zzx, !var_0.a.yyz, var_0.e.yyx))), true || global2.a.x, global1.x, global2.a.x);
    global2 = Struct_1(var_1, dot(-vec4<i32>(2147483647i - u_input.b.x, global2.b, 7751i & 2147483647i, u_input.b.x), vec4<i32>(0i % global2.d, countOneBits(u_input.b.x), (15663i << 1u) + u_input.b.x, -2147483647i << reverseBits(global0.x))), -global2.c, -19347i * ~var_0.b, global2.a);
    var var_2 = Struct_1(!global2.a, -16196i, global2.c, 2147483647i, !(!select(global2.e, !var_1, true & true)));
    global0 = ~select(u_input.c.xx, u_input.a.zx, vec2<bool>(true, true));
    return -((~countOneBits(vec4<i32>(7894i, -1i, var_0.d, global2.d)) - vec4<i32>(var_0.b, var_0.d & global2.d, 0i / u_input.b.x, -u_input.b.x)) % abs(~(vec4<i32>(-24818i, -35705i, -38302i, u_input.b.x) / vec4<i32>(global2.b, i32(-2147483648), 0i, var_2.b))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -(-func_3());
    return arg_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    var var_0 = clamp(vec4<i32>(-56623i, i32(-2147483648), arg_1.b, func_3().x), abs(-(~vec4<i32>(arg_2.d, arg_2.b, 2147483647i, i32(-2147483648)))), vec4<i32>(-23060i, ~(arg_1.b << arg_0.x), -(~arg_1.d), reverseBits(-arg_1.d))) + -(-vec4<i32>(u_input.b.x, arg_2.b, i32(-2147483648), u_input.b.x) << u_input.a);
    global2 = Struct_1(vec4<bool>(select(global2.c.x > (global2.c.x - global2.c.x), all(!arg_1.a.xz), func_2(arg_2.b, Struct_1(global2.e, 35920i, vec2<f32>(-258f, 766f), arg_1.b, global2.a), arg_0.x, arg_2).a.x), 75120u < (7970u << u_input.c.x), !(!all(vec2<bool>(arg_2.a.x, true))), any(vec3<bool>(!false, false, true))), -19948i, arg_1.c, -(-18806i) | global2.d, vec4<bool>(!(arg_0.x != u_input.d) | (-10595i == arg_1.b), any(vec2<bool>(global2.a.x, global1.x)), func_2(select(global2.b, arg_2.b, global2.a.x), func_2(arg_1.b, arg_1, 31357u, arg_2), ~(~u_input.c.x), arg_1).a.x, true));
    global0 = select(~vec2<u32>(121001u, 7242u ^ arg_0.x), select(vec2<u32>(4294967295u, arg_0.x), arg_0, all(vec4<bool>(true, global1.x, arg_2.a.x, false))) / u_input.c.zx, global2.a.x) % u_input.a.wy;
    let var_1 = select(vec4<bool>(global2.e.x, true, true, (arg_3 >= (u_input.d / 0u)) == true), !arg_1.e, all(func_2(u_input.b.x, arg_1, 18743u, Struct_1(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(false, global2.a.x, true, true), vec4<bool>(true, false, global2.e.x, arg_1.e.x)), max(var_0.x, arg_2.d), floor(vec2<f32>(976f, arg_1.c.x)), i32(-2147483648) >> u_input.c.x, global2.a)).a));
    global2 = func_2((-(-22528i % -6670i) | (-21299i + dot(vec3<i32>(u_input.b.x, 45305i, var_0.x), var_0.zyz))) - 1843i, Struct_1(global2.a, var_0.x, max(arg_2.c, -vec2<f32>(255f, -630f)), u_input.b.x, func_2(-(-42250i) | ~global2.b, arg_1, 0u, arg_1).a), arg_0.x, arg_1);
    return ~((vec2<u32>(~4294967295u, 81662u >> 66910u) << ~arg_0) << ~abs(clamp(vec2<u32>(1191u, 4156u), u_input.c.zx, vec2<u32>(arg_3, arg_3))));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    global0 = max(u_input.c.xy, ~reverseBits(u_input.a.ww));
    let var_0 = u_input.b.x;
    let var_1 = ((var_0 << select(~4294967295u, arg_0.x | u_input.d, false)) ^ firstLeadingBit(-global2.b)) - -15152i;
    var var_2 = abs(-(-round(166f) / abs(global2.c.x * global2.c.x)));
    let var_3 = ~(arg_0 | select(vec2<u32>(func_4(vec2<u32>(1u, arg_0.x), Struct_1(vec4<bool>(global2.e.x, global1.x, true, false), -13316i, vec2<f32>(-1139f, 334f), var_1, vec4<bool>(false, true, true, global1.x)), Struct_1(vec4<bool>(true, global2.e.x, global1.x, false), 34441i, vec2<f32>(global2.c.x, 334f), -1i, vec4<bool>(false, global1.x, true, global2.a.x)), arg_0.x).x, ~global0.x), vec2<u32>(firstLeadingBit(704u), reverseBits(global0.x)), vec2<bool>(any(global1.zx), !false)));
    return ~71510u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = clamp(u_input.a, abs(u_input.a), u_input.a << ~(~vec4<u32>(4646u, global0.x, global0.x, 23943u))) * (((select(vec4<u32>(4294967295u, 1u, 15009u, 35219u), u_input.a, global2.e.x) % max(vec4<u32>(4294967295u, u_input.c.x, 7288u, arg_1.x), u_input.a)) << vec4<u32>(u_input.c.x % 2254u, ~u_input.d, arg_1.x, arg_1.x)) - u_input.a);
    let var_1 = arg_0;
    var var_2 = ~u_input.a;
    let var_3 = global2.e.xy;
    var_2 = u_input.a;
    return 50103u % func_5(func_4(~u_input.a.ww, Struct_1(global2.a, global2.b, vec2<f32>(462f, 279f), -31152i, global2.e), func_2(i32(-2147483648), Struct_1(vec4<bool>(false, true, global1.x, true), i32(-2147483648), vec2<f32>(924f, var_1), -1i, global2.a), 45061u, Struct_1(vec4<bool>(var_3.x, global1.x, global2.a.x, global1.x), -9871i, global2.c, u_input.b.x, global2.a)), ~1u) + firstTrailingBit(var_0.zx), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(32944u) & func_1(-1682f, ~(~vec3<u32>(21570u, 43055u, global0.x)));
    var var_1 = vec2<u32>(56336u, max(1u, 3138u - countOneBits(~33560u)));
    var var_2 = func_2(((global2.b + dot(u_input.b, vec2<i32>(-1i, u_input.b.x))) + 18824i) ^ abs(-33954i), func_2(-countOneBits(u_input.b.x & u_input.b.x), Struct_1(func_2(dot(vec3<i32>(-9859i, i32(-2147483648), 1i), vec3<i32>(-1i, -5484i, global2.d)), Struct_1(global2.e, global2.b, global2.c, 43240i, vec4<bool>(false, true, global2.a.x, false)), countOneBits(global0.x), func_2(1i, Struct_1(global2.e, u_input.b.x, vec2<f32>(global2.c.x, 1000f), global2.d, vec4<bool>(true, true, true, false)), 61770u, Struct_1(global2.e, -5764i, global2.c, global2.b, global2.e))).a, ~global2.b, vec2<f32>(-218f, -global2.c.x), global2.b | 22674i, !func_2(-41225i, Struct_1(global2.e, u_input.b.x, vec2<f32>(global2.c.x, global2.c.x), u_input.b.x, vec4<bool>(false, global1.x, global2.a.x, true)), var_1.x, Struct_1(global2.a, global2.d, vec2<f32>(-1091f, -419f), global2.d, global2.e)).a), ~0u * ~6236u, Struct_1(select(!global2.e, func_2(global2.b, Struct_1(vec4<bool>(global2.a.x, true, false, global1.x), -1i, global2.c, global2.d, global2.e), 44399u, Struct_1(vec4<bool>(false, true, global2.a.x, global1.x), 0i, global2.c, 2147483647i, global2.e)).a, global2.e), ~global2.d * i32(-2147483648), vec2<f32>(-(-1099f), abs(-1000f)), 41022i << (61759u - 4294967295u), select(global2.e, vec4<bool>(false, global1.x, global1.x, global1.x), global2.a))), dot(vec4<u32>(func_4(vec2<u32>(0u, 0u), func_2(1i, Struct_1(vec4<bool>(global1.x, global1.x, global2.e.x, global2.a.x), global2.d, vec2<f32>(global2.c.x, -768f), -1i, global2.a), var_0, Struct_1(global2.e, u_input.b.x, global2.c, global2.d, global2.a)), Struct_1(vec4<bool>(global1.x, false, false, global1.x), -1i, global2.c, u_input.b.x, vec4<bool>(global2.a.x, true, false, global1.x)), 104148u).x, func_5(u_input.c.yz, global1.x), ~u_input.a.x, ~dot(u_input.a, vec4<u32>(2158u, global0.x, 4294967295u, var_1.x))), vec4<u32>(var_1.x, var_0, ~1339u >> 0u, ~(var_1.x ^ 32628u))), func_2(u_input.b.x, Struct_1(!vec4<bool>(true, global1.x, global1.x, true), ~global2.d, -vec2<f32>(548f, global2.c.x), -51855i, func_2(0i, func_2(global2.d, Struct_1(global2.e, 0i, vec2<f32>(global2.c.x, 730f), global2.b, global2.a), 1u, Struct_1(global2.e, global2.b, global2.c, u_input.b.x, global2.a)), var_1.x + 4294967295u, Struct_1(global2.a, -30971i, vec2<f32>(-839f, -604f), u_input.b.x, global2.e)).e), abs(var_1.x + 4294967295u) - 32201u, Struct_1(vec4<bool>(true, any(global2.e.zy), global1.x, global2.c.x <= -2097f), dot(u_input.b, -u_input.b), vec2<f32>(-349f, global2.c.x) - global2.c, ~(i32(-2147483648)) | (-7450i * global2.d), func_2(1i, func_2(1i, Struct_1(global2.a, 22935i, vec2<f32>(global2.c.x, global2.c.x), u_input.b.x, global2.a), 4294967295u, Struct_1(global2.e, 48363i, global2.c, -32419i, vec4<bool>(global1.x, global2.a.x, global2.a.x, global1.x))), 105873u, func_2(u_input.b.x, Struct_1(global2.a, u_input.b.x, vec2<f32>(global2.c.x, global2.c.x), u_input.b.x, global2.a), 2063u, Struct_1(vec4<bool>(false, global2.a.x, true, false), u_input.b.x, global2.c, 1i, vec4<bool>(true, true, false, global2.a.x)))).e)));
    global1 = !select(select(var_2.a.zyx, vec3<bool>(!true, !global1.x, var_2.c.x > var_2.c.x), !global2.a.x), global2.a.zxz, func_2((-16901i | var_2.b) | (-1589i * global2.d), Struct_1(global2.e, u_input.b.x << var_0, vec2<f32>(-1528f, global2.c.x) / vec2<f32>(188f, global2.c.x), u_input.b.x, vec4<bool>(true, global1.x, false, false)), max(dot(u_input.a, vec4<u32>(45887u, 0u, var_1.x, var_1.x)), var_1.x), Struct_1(select(var_2.a, vec4<bool>(false, var_2.e.x, false, false), vec4<bool>(global1.x, global1.x, false, true)), 834i * global2.d, vec2<f32>(-569f, global2.c.x), max(u_input.b.x, global2.d), !var_2.e)).a.zxw);
    var var_3 = vec4<i32>(0i / ~(u_input.b.x - global2.b), ~(u_input.b.x * (u_input.b.x * 23280i)), -(~(global2.d | 21648i)), i32(-2147483648)) * vec4<i32>(-(-17283i >> 0u) & ~var_2.d, 2147483647i % (-1i | min(-16525i, 11523i)), ~2147483647i, -(~(u_input.b.x >> u_input.d)));
    var_2 = func_2(reverseBits(23056i ^ -1i), func_2(u_input.b.x, func_2(clamp(var_3.x, 1i, 22104i) / (var_3.x & u_input.b.x), Struct_1(!vec4<bool>(global1.x, global2.e.x, global2.e.x, false), firstTrailingBit(u_input.b.x), max(var_2.c, var_2.c), 2147483647i, vec4<bool>(false, global2.a.x, false, global1.x)), ~u_input.d, Struct_1(func_2(u_input.b.x, Struct_1(var_2.a, 4080i, global2.c, 48122i, vec4<bool>(false, global1.x, global2.e.x, global2.a.x)), global0.x, Struct_1(var_2.e, -44891i, vec2<f32>(global2.c.x, global2.c.x), i32(-2147483648), vec4<bool>(true, true, var_2.e.x, global2.a.x))).e, -11270i, -vec2<f32>(1277f, 579f), var_2.b, !global2.a)), 1u, Struct_1(!vec4<bool>(true, var_2.a.x, false, global2.a.x), 2147483647i, vec2<f32>(848f, var_2.c.x), abs(var_2.d), !(!vec4<bool>(var_2.a.x, true, var_2.e.x, true)))), 1u, Struct_1(vec4<bool>(global1.x, !global1.x, any(var_2.e.yx), all(global2.a.zwz)), -((var_3.x >> 0u) % clamp(var_3.x, 1i, 5720i)), vec2<f32>(global2.c.x, select(var_2.c.x, step(152f, -1380f), u_input.b.x > -23351i)), clamp((var_3.x / -49266i) ^ var_2.d, global2.b, -func_2(var_3.x, Struct_1(vec4<bool>(global1.x, var_2.a.x, true, true), i32(-2147483648), global2.c, u_input.b.x, global2.e), global0.x, Struct_1(var_2.a, i32(-2147483648), var_2.c, 30i, global2.e)).d), !var_2.a));
    var_3 = firstTrailingBit(countOneBits(vec4<i32>(u_input.b.x, countOneBits(dot(vec3<i32>(-27669i, 2565i, -892i), var_3.ywx)), -57050i, u_input.b.x & (6868i * global2.d))));
    let var_4 = ~(~func_4(~u_input.c.yx ^ vec2<u32>(56429u, 0u), func_2(-1i, Struct_1(vec4<bool>(var_2.e.x, false, true, global2.e.x), 35406i, global2.c, var_2.b, var_2.e), func_5(u_input.c.zx, false), Struct_1(global2.e, 9139i, vec2<f32>(global2.c.x, -678f), -20904i, vec4<bool>(true, true, true, true))), func_2(dot(vec4<i32>(0i, -46605i, i32(-2147483648), -1i), vec4<i32>(var_2.d, var_3.x, -68863i, var_2.b)), Struct_1(vec4<bool>(global1.x, false, true, false), 18103i, vec2<f32>(687f, var_2.c.x), 1i, global2.e), 19832u * global0.x, func_2(1i, Struct_1(vec4<bool>(true, global2.a.x, global1.x, true), global2.b, vec2<f32>(var_2.c.x, -1131f), 33957i, global2.a), 497u, Struct_1(var_2.a, 2147483647i, var_2.c, 0i, vec4<bool>(global1.x, true, var_2.e.x, false)))), u_input.d).x);
    let x = u_input.a;
    s_output = StorageBuffer(step(-1000f, round(990f)), -(-742f));
}

