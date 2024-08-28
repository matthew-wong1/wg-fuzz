// {"0:0":[89,204,233,98,143,139,254,241,49,217,252,189,70,141,172,114]}
// Seed: 16723233569004633669

struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: u32 = 1u;

var<private> global2: vec3<f32>;

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_5(!(!true), arg_0, -trunc(-max(vec4<f32>(905f, 167f, 1084f, 184f), vec4<f32>(global2.x, global2.x, global2.x, global2.x))), global2.x);
    global1 = arg_0.d.x >> (arg_0.d.x % max((0u >> 24644u) & (56106u % arg_0.d.x), arg_0.d.x));
    let var_1 = 1i;
    let var_2 = Struct_1(~(~(~(vec4<i32>(arg_0.c.a.x, var_0.b.b.c, var_0.b.c.a.x, 19225i) ^ vec4<i32>(-24187i, arg_0.a, var_1, i32(-2147483648))))), vec2<bool>(true, var_0.d != -623f), vec2<bool>((true && true) | false, ceil(global2.x + -914f) == -max(var_0.c.x, global2.x)));
    global2 = vec3<f32>(step(1461f, ceil(var_0.c.x - -897f)), -(-abs(-300f)), var_0.c.x) - (-var_0.c.yzx - -(-vec3<f32>(-765f, -742f, -763f)));
    return arg_0.b;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = vec3<i32>(arg_1, arg_1, firstLeadingBit(-5535i));
    var_0 = arg_0.a.a.yzy;
    var var_1 = vec4<bool>(!true, arg_2, !(arg_2 && arg_0.a.b.x), false);
    let var_2 = ~reverseBits(~arg_3.zy);
    var var_3 = -var_0.x;
    return Struct_4(-310i, func_2(Struct_4(func_2(Struct_4(arg_0.b.x, arg_0, arg_0.a, arg_3.wxz), Struct_1(arg_0.a.a, var_1.yx, var_1.wx)).b.x, arg_0, func_2(Struct_4(var_0.x, Struct_2(Struct_1(arg_0.b, vec2<bool>(arg_2, false), vec2<bool>(false, arg_2)), vec4<i32>(-6470i, var_0.x, i32(-2147483648), -3886i), 1i), arg_0.a, vec3<u32>(4294967295u, arg_3.x, u_input.a.x)), Struct_1(vec4<i32>(-38954i, 2147483647i, arg_0.c, var_0.x), arg_0.a.b, vec2<bool>(arg_2, true))).a, select(max(arg_3.yyx, vec3<u32>(u_input.b, 1u, arg_3.x)), vec3<u32>(27002u, var_2.x, var_2.x), arg_2 || arg_2)), arg_0.a), func_2(Struct_4(-26638i, Struct_2(Struct_1(vec4<i32>(arg_1, -10950i, 24019i, arg_0.b.x), var_1.yy, var_1.xz), vec4<i32>(arg_0.a.a.x, 1i, arg_1, 0i) >> vec4<u32>(var_2.x, global0.x, arg_3.x, 29171u), reverseBits(arg_0.a.a.x)), arg_0.a, ~select(vec3<u32>(0u, var_2.x, var_2.x), arg_3.xyx, var_1.wxx)), func_2(Struct_4(-1i | var_0.x, Struct_2(Struct_1(vec4<i32>(-1i, arg_1, var_0.x, var_0.x), vec2<bool>(arg_0.a.b.x, var_1.x), vec2<bool>(false, false)), vec4<i32>(arg_0.a.a.x, 42278i, arg_1, i32(-2147483648)), arg_0.c), Struct_1(arg_0.b, arg_0.a.c, arg_0.a.c), arg_3.xww), Struct_1(~vec4<i32>(var_0.x, arg_1, 1i, arg_0.c), var_1.xx, select(vec2<bool>(false, false), vec2<bool>(arg_0.a.b.x, var_1.x), arg_0.a.c))).a).a, vec3<u32>(1u, dot(vec4<u32>(global0.x >> 43024u, arg_3.x + 5799u, reverseBits(70819u), ~29438u), vec4<u32>(global0.x + 100327u, 1u, 57524u, arg_3.x)), 4294967295u));
}

fn func_4(arg_0: Struct_4) -> f32 {
    global2 = -(-(-min(vec3<f32>(global2.x, 396f, global2.x), vec3<f32>(global2.x, 233f, -746f) / vec3<f32>(-635f, -172f, -1000f))));
    var var_0 = Struct_5(true, arg_0, sign(vec4<f32>(1382f, -global2.x, global2.x, 852f)), -2545f - (ceil(-217f) * (921f - (global2.x - global2.x))));
    global0 = ~(u_input.a * vec2<u32>(~select(arg_0.d.x, 48474u, true), clamp(arg_0.d.x, u_input.b, ~u_input.a.x)));
    let var_1 = var_0.b.b;
    global0 = vec2<u32>(~(~1u), min(u_input.a.x, reverseBits(~global0.x ^ 1u)));
    return global2.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_3 {
    let var_0 = arg_0.a.yx % ((arg_0.a.xw >> u_input.a) / (arg_0.a.yy * vec2<i32>(0i, ~(-27558i))));
    global0 = abs(~(~vec2<u32>(u_input.b ^ 0u, select(u_input.a.x, global0.x, true))));
    global0 = u_input.a * u_input.a;
    var var_1 = vec4<f32>(floor(max((arg_1.x + 1282f) / (-399f + arg_1.x), 468f)), exp2((global2.x + -(-1814f)) + -1655f), -271f, max(-(-768f), func_4(func_3(func_2(Struct_4(var_0.x, Struct_2(Struct_1(arg_0.a, arg_0.c, vec2<bool>(arg_0.c.x, true)), arg_0.a, arg_2), Struct_1(arg_0.a, arg_0.c, vec2<bool>(arg_0.b.x, arg_0.b.x)), vec3<u32>(66196u, 0u, global0.x)), Struct_1(vec4<i32>(arg_2, arg_0.a.x, var_0.x, -14039i), vec2<bool>(true, false), vec2<bool>(arg_0.c.x, false))), -39537i % 0i, any(vec4<bool>(false, false, false, arg_0.c.x)), vec4<u32>(u_input.a.x, 30364u, u_input.b, global0.x)))));
    var var_2 = dot(~(min(vec3<u32>(41710u, u_input.b, global0.x) >> vec3<u32>(u_input.a.x, global0.x, global0.x), ~vec3<u32>(1u, global0.x, global0.x)) ^ ~(~vec3<u32>(16454u, global0.x, 0u))), (vec3<u32>(60521u, 1u, ~48418u) * vec3<u32>(u_input.a.x, 65491u & 51537u, u_input.a.x)) << vec3<u32>(global0.x, ~abs(u_input.b), 102319u));
    return Struct_3(func_3(Struct_2(Struct_1(arg_0.a, func_3(Struct_2(Struct_1(vec4<i32>(arg_2, arg_0.a.x, 1i, var_0.x), arg_0.c, vec2<bool>(arg_0.b.x, true)), vec4<i32>(var_0.x, -34790i, -1i, -23342i), var_0.x), 10007i, false, vec4<u32>(2845u, global0.x, 44932u, 37783u)).c.c, select(arg_0.b, vec2<bool>(true, false), false)), countOneBits(arg_0.a), (2147483647i + arg_0.a.x) / -56270i), -1i, false, firstTrailingBit(~(vec4<u32>(global0.x, 71566u, 27927u, 47147u) | vec4<u32>(u_input.b, 71248u, 26372u, 19000u)))).b, (3507u >> func_3(func_2(Struct_4(var_0.x, Struct_2(arg_0, vec4<i32>(var_0.x, 9335i, 1i, i32(-2147483648)), var_0.x), Struct_1(arg_0.a, arg_0.c, vec2<bool>(arg_0.c.x, arg_0.b.x)), vec3<u32>(u_input.b, 0u, global0.x)), Struct_1(arg_0.a, vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c)), -var_0.x, 2856f >= global2.x, reverseBits(vec4<u32>(global0.x, 45532u, u_input.a.x, 43850u))).d.x) << max(dot(reverseBits(u_input.a), vec2<u32>(8191u, global0.x)), ~global0.x), select(any(!vec4<bool>(false, true, arg_0.b.x, arg_0.c.x)), arg_0.c.x, !arg_0.b.x) || arg_0.b.x, func_2(func_3(Struct_2(func_3(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 3187i, -57543i, arg_0.a.x), arg_0.c, arg_0.b), vec4<i32>(arg_0.a.x, 0i, var_0.x, 0i), i32(-2147483648)), i32(-2147483648), arg_0.b.x, vec4<u32>(1u, global0.x, global0.x, 62498u)).b.a, arg_0.a, var_0.x), dot(-arg_0.a.zzx, select(arg_0.a.xyz, vec3<i32>(arg_0.a.x, arg_2, arg_0.a.x), vec3<bool>(false, true, false))), func_2(Struct_4(arg_0.a.x, Struct_2(Struct_1(vec4<i32>(0i, var_0.x, 17362i, var_0.x), vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(arg_0.c.x, arg_0.b.x)), arg_0.a, 2147483647i), arg_0, vec3<u32>(4294967295u, u_input.b, 35401u)), Struct_1(arg_0.a, arg_0.b, arg_0.c)).a.c.x, ~vec4<u32>(global0.x, global0.x, u_input.a.x, 12520u) + vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 0u)), func_3(func_3(Struct_2(Struct_1(vec4<i32>(13566i, i32(-2147483648), 1i, arg_2), vec2<bool>(arg_0.c.x, arg_0.b.x), arg_0.b), arg_0.a, arg_2), 0i >> u_input.b, false, vec4<u32>(global0.x, u_input.b, global0.x, u_input.a.x) % vec4<u32>(4294967295u, global0.x, 1u, 113112u)).b, 2147483647i, select(global0.x, 6229u, false) < ~0u, vec4<u32>(u_input.a.x, 88392u, global0.x * u_input.a.x, 0u)).c).b.wyx);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = global2.x;
    global2 = -(((vec3<f32>(1435f, global2.x, 403f) + vec3<f32>(-1726f, global2.x, 1434f)) / (vec3<f32>(-609f, 1228f, -660f) - vec3<f32>(-920f, global2.x, 305f))) / -(vec3<f32>(global2.x, -1549f, global2.x) - vec3<f32>(1691f, 444f, global2.x))) * (vec3<f32>(global2.x, 944f, ceil(2350f)) - vec3<f32>(global2.x * (global2.x + 315f), step(736f, floor(global2.x)), global2.x));
    var var_1 = func_3(func_2(Struct_4(-73552i, arg_2.a, arg_1, arg_3), Struct_1(arg_1.a, !arg_1.c, !arg_2.a.a.b)), ~min(-(arg_0.x - arg_0.x), ~0i * i32(-2147483648)), any(!vec4<bool>(!arg_2.a.a.c.x, true, false, select(arg_1.c.x, arg_1.b.x, true))), ~(~(~vec4<u32>(10407u, global0.x, arg_3.x, global0.x)) | vec4<u32>(~1788u, abs(global0.x), 37773u, ~arg_3.x)));
    var_1 = func_3(Struct_2(func_1(func_1(func_2(Struct_4(arg_2.d.x, arg_2.a, Struct_1(arg_1.a, arg_2.a.a.b, arg_2.a.a.c), var_1.d), Struct_1(vec4<i32>(arg_2.a.c, -28083i, 49980i, arg_2.d.x), vec2<bool>(arg_2.c, true), vec2<bool>(true, false))).a, vec4<f32>(548f, 892f, 1000f, global2.x), arg_2.a.c).a.a, -(vec4<f32>(1000f, global2.x, 1096f, -369f) - vec4<f32>(1223f, global2.x, 126f, -497f)), -14222i - arg_0.x).a.a, ((arg_2.a.a.a >> vec4<u32>(1u, 1u, 0u, 4294967295u)) << min(vec4<u32>(4294967295u, arg_2.b, 1u, u_input.b), vec4<u32>(arg_3.x, 44695u, 4294967295u, u_input.b))) + (arg_1.a * ~vec4<i32>(arg_0.x, 7142i, 5922i, 24071i)), dot(min(vec3<i32>(var_1.c.a.x, -20822i, i32(-2147483648)) ^ vec3<i32>(-13117i, 1i, 15254i), vec3<i32>(-14469i, 2147483647i, var_1.c.a.x) | vec3<i32>(arg_2.a.b.x, -20982i, arg_0.x)), -arg_0)), arg_1.a.x, func_3(arg_2.a, 6390i, true, vec4<u32>(dot(vec4<u32>(var_1.d.x, 0u, 61476u, global0.x) * vec4<u32>(global0.x, u_input.a.x, global0.x, 17655u), ~vec4<u32>(27973u, 24974u, 1u, 34542u)), arg_3.x * reverseBits(2236u), min(var_1.d.x, u_input.b) ^ (4294967295u % var_1.d.x), func_3(Struct_2(var_1.c, vec4<i32>(2101i, arg_1.a.x, arg_1.a.x, arg_2.a.b.x), -1i), -51145i, arg_2.a.a.c.x, firstLeadingBit(vec4<u32>(u_input.a.x, arg_2.b, 44231u, 7607u))).d.x)).b.a.c.x, firstTrailingBit(~vec4<u32>(~1u, 4294967295u, arg_3.x ^ u_input.b, 0u >> 4294967295u)));
    global1 = 42016u >> 4294967295u;
    return arg_3.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    global0 = vec2<u32>(0u % dot(~(vec3<u32>(23309u, u_input.b, 4294967295u) + vec3<u32>(u_input.a.x, 7771u, 24612u)), select(min(vec3<u32>(43907u, u_input.b, global0.x), vec3<u32>(1u, global0.x, 23876u)), vec3<u32>(4294967295u, 64730u, global0.x), vec3<bool>(false, true, true))), 0u);
    global1 = dot(u_input.a, abs(u_input.a) >> ~func_5(~vec3<i32>(2147483647i, 171i, 2147483647i), Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 2147483647i), vec2<bool>(true, false), vec2<bool>(true, false)), func_1(Struct_1(vec4<i32>(1i, -1i, 1820i, -1i), vec2<bool>(false, true), vec2<bool>(false, false)), vec4<f32>(global2.x, 359f, -159f, -601f), 59705i), func_3(Struct_2(Struct_1(vec4<i32>(1i, 1i, -1i, 2306i), vec2<bool>(true, true), vec2<bool>(true, false)), vec4<i32>(1i, -76194i, i32(-2147483648), 1i), 1i), 41585i, false, vec4<u32>(global0.x, u_input.b, global0.x, u_input.a.x)).d));
    let var_0 = floor(sign(-(vec2<f32>(global2.x, global2.x) + vec2<f32>(-1720f, -1000f)) / (select(vec2<f32>(global2.x, global2.x), vec2<f32>(561f, -535f), vec2<bool>(false, true)) * (vec2<f32>(1000f, global2.x) - vec2<f32>(-841f, global2.x)))));
    let var_1 = Struct_5(true, Struct_4(-(~76345i & (1105i ^ 91318i)), func_3(Struct_2(func_1(Struct_1(vec4<i32>(i32(-2147483648), 0i, -36760i, 1i), vec2<bool>(true, false), vec2<bool>(false, false)), vec4<f32>(1000f, -394f, var_0.x, 1565f), i32(-2147483648)).a.a, vec4<i32>(67150i, -1i, 1i, 2147483647i) * vec4<i32>(i32(-2147483648), -40346i, 2147483647i, -23613i), select(9608i, i32(-2147483648), true)), ~(-11056i - 2147483647i), !func_3(Struct_2(Struct_1(vec4<i32>(15991i, -9838i, 0i, 6970i), vec2<bool>(false, true), vec2<bool>(true, false)), vec4<i32>(0i, i32(-2147483648), 3024i, 0i), -45496i), -57504i, true, vec4<u32>(global0.x, u_input.b, u_input.b, 4294967295u)).b.a.b.x, select(firstLeadingBit(vec4<u32>(18048u, 11951u, u_input.b, global0.x)), countOneBits(vec4<u32>(global0.x, 4294967295u, u_input.a.x, 1u)), !vec4<bool>(true, true, false, true))).b, func_2(Struct_4(-29667i, Struct_2(Struct_1(vec4<i32>(-5387i, 2147483647i, 9757i, 34027i), vec2<bool>(true, false), vec2<bool>(false, true)), vec4<i32>(44782i, 47399i, 0i, -47303i), 0i), func_2(Struct_4(2147483647i, Struct_2(Struct_1(vec4<i32>(0i, 1i, 3528i, 0i), vec2<bool>(false, false), vec2<bool>(false, true)), vec4<i32>(1i, 8789i, -18885i, 0i), i32(-2147483648)), Struct_1(vec4<i32>(-25614i, -24946i, 2147483647i, -3682i), vec2<bool>(true, false), vec2<bool>(true, false)), vec3<u32>(global0.x, 0u, 927u)), Struct_1(vec4<i32>(-24373i, -1i, 0i, 0i), vec2<bool>(false, false), vec2<bool>(true, false))).a, vec3<u32>(0u, 15098u, 1u)), Struct_1(-vec4<i32>(1i, 2147483647i, 41443i, 0i), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))).a, vec3<u32>(~firstLeadingBit(0u), global0.x, (1u & 1u) * 4294967295u)), -(-(-select(vec4<f32>(-575f, 1000f, global2.x, global2.x), vec4<f32>(-804f, var_0.x, -2358f, global2.x), vec4<bool>(true, false, true, false)))), -1366f);
    let var_2 = clamp(-vec3<i32>(select(-43935i, ~var_1.b.a, var_1.b.c.c.x), ~reverseBits(24047i), 29930i), clamp(~vec3<i32>(var_1.b.c.a.x, var_1.b.c.a.x, -35004i) * (-var_1.b.b.a.a.yxx << countOneBits(var_1.b.d)), var_1.b.c.a.wwz | vec3<i32>(24469i, 48429i, var_1.b.c.a.x), vec3<i32>(-12749i, -abs(-14430i), var_1.b.a)), max(var_1.b.c.a.ywz, var_1.b.c.a.wyy));
    var var_3 = var_1.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<f32>(-1213f, global2.x, 1569f) + -vec3<f32>(var_0.x, -2158f, var_0.x)) + vec3<f32>(-454f, -(-1118f) / (var_0.x * var_0.x), trunc(global2.x * var_0.x)), 635f, -floor(-sign(-131f)));
}

