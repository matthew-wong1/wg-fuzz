// {"0:0":[41,172,120,233,90,130,235,64,28,104,228,33,227,116,49,10,87,136,79,99,144,77,0,101,67,66,86,65,79,245,10,181,53,186,25,225,67,66,33,56,109,194,51,169,42,226,240,35]}
// Seed: 3704038677537415647

struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    var var_0 = select(vec2<bool>(any(select(select(vec4<bool>(arg_0.b.a, arg_0.d, true, arg_0.d), vec4<bool>(false, false, true, true), vec4<bool>(arg_0.e.a, arg_0.c.d.a, false, false)), !vec4<bool>(arg_0.d, arg_0.c.d.a, true, arg_0.a.a), arg_0.b.a)), true), !vec2<bool>(!arg_0.c.d.a || (false & arg_0.b.a), !(arg_0.c.c.a | arg_0.b.a)), all(vec4<bool>(false && !arg_0.d, false, all(vec3<bool>(arg_0.a.a, arg_0.c.c.a, true)), false)));
    global0 = array<vec4<f32>, 8>();
    let var_1 = u_input.c;
    return -(-1683f * ((425f - (272f - arg_0.c.a.x)) + -203f));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = Struct_3(abs(select(vec4<i32>(1i, arg_1.a.x, -5431i, arg_3), select(arg_1.a, vec4<i32>(-1i, u_input.a, arg_1.a.x, -29742i), arg_1.b.c.a), !false) + ~reverseBits(arg_1.a)), arg_1.b);
    let var_1 = vec4<i32>(-(i32(-2147483648)) - arg_1.a.x, var_0.a.x, 2147483647i << ~countOneBits(1u), var_0.a.x);
    var_0 = Struct_3(var_1, Struct_2(global0[arg_1.b.b], ~(~var_0.b.b), arg_0, var_0.b.d));
    var_0 = Struct_3(-vec4<i32>(max(1i, ~arg_1.a.x), var_0.a.x / (i32(-2147483648) % 8730i), ~(-u_input.a), ~(~var_1.x)), Struct_2(arg_1.b.a, ~15185u, Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(arg_2.a, true), arg_1.b.c.a))), arg_0));
    return all(vec2<bool>(var_0.b.c.a & (~(-38440i) <= dot(var_0.a.yz, vec2<i32>(var_0.a.x, u_input.a))), arg_0.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = vec3<bool>(!false, all(vec4<bool>(!arg_1.b.d.a, arg_3.e.a, !any(vec3<bool>(false, arg_3.d, false)), arg_2.d)), true);
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    let var_1 = select(select(var_0, vec3<bool>(true, 1u <= 1u, floor(arg_0.x) <= -arg_1.b.a.x), vec3<bool>(all(vec2<bool>(arg_3.c.c.a, arg_3.c.c.a)), arg_1.b.c.a, select(false, true, false) && (false && false))), vec3<bool>(arg_3.d, !(!false), all(vec4<bool>(all(vec4<bool>(false, var_0.x, arg_3.e.a, false)), true, var_0.x, true))), !false);
    var var_2 = firstLeadingBit(arg_3.c.b);
    return arg_2.e;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1.c;
    global0 = array<vec4<f32>, 8>();
    let var_1 = arg_1.c.a.x;
    let var_2 = vec4<f32>(-464f, -(select(1000f, 125f, true) + (arg_1.c.a.x + var_0.a.x)) + exp2(arg_1.c.a.x), min(-ceil(trunc(371f)), (-1455f - (1000f + arg_1.c.a.x)) / -(-1871f)), var_0.a.x - -exp2(1000f));
    var var_3 = vec2<u32>(1u, ~0u / 4294967295u);
    return func_4(vec4<f32>(round(func_2(arg_1, vec3<i32>(-11423i, 26218i, u_input.a))), trunc(var_2.x) / abs(-2282f), (133f / var_1) * (869f / -1070f), arg_1.c.a.x) / (vec4<f32>(-(-2202f), var_1, -var_1, -var_0.a.x) + -(vec4<f32>(var_0.a.x, -109f, var_0.a.x, -341f) + arg_1.c.a)), Struct_3(-reverseBits(max(vec4<i32>(-1i, u_input.a, u_input.a, 3120i), vec4<i32>(-17259i, u_input.c.x, u_input.c.x, -11308i))), var_0), Struct_4(Struct_1(var_0.d.a), var_0.c, Struct_2(global0[0u], ~6435u, Struct_1(func_3(arg_1.a, Struct_3(vec4<i32>(u_input.c.x, 1i, u_input.a, u_input.c.x), var_0), Struct_1(true), u_input.a)), var_0.d), var_0.d.a | all(vec4<bool>(arg_0.a, arg_1.e.a, arg_2, false)), Struct_1(false)), arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<f32>, 8>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(Struct_1(true), Struct_4(Struct_1(any(vec3<bool>(true, true, true))), Struct_1(-821f <= 299f), Struct_2(global0[u_input.b.x ^ 1u], u_input.b.x, func_1(Struct_1(false), Struct_4(Struct_1(false), Struct_1(true), Struct_2(vec4<f32>(-835f, 1842f, -916f, 729f), 0u, Struct_1(true), Struct_1(true)), false, Struct_1(false)), false), Struct_1(true)), !true, func_4(vec4<f32>(-1169f, -1356f, 479f, -473f), Struct_3(vec4<i32>(32816i, 48133i, u_input.a, u_input.a), Struct_2(global0[14435u], u_input.b.x, Struct_1(false), Struct_1(true))), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(218f, 873f, 1400f, -572f), u_input.b.x, Struct_1(false), Struct_1(false)), false, Struct_1(false)), Struct_4(Struct_1(false), Struct_1(false), Struct_2(vec4<f32>(475f, -814f, -516f, -493f), 26390u, Struct_1(false), Struct_1(true)), true, Struct_1(true)))), Struct_3(-(vec4<i32>(u_input.c.x, u_input.c.x, 4317i, i32(-2147483648)) | vec4<i32>(-71442i, 0i, u_input.a, u_input.c.x)), Struct_2(-global0[53355u], reverseBits(61462u), func_4(global0[u_input.b.x], Struct_3(vec4<i32>(u_input.a, 1i, 39612i, u_input.a), Struct_2(global0[4294967295u], u_input.b.x, Struct_1(false), Struct_1(true))), Struct_4(Struct_1(true), Struct_1(false), Struct_2(global0[u_input.b.x], 4294967295u, Struct_1(true), Struct_1(false)), false, Struct_1(true)), Struct_4(Struct_1(false), Struct_1(true), Struct_2(global0[u_input.b.x], u_input.b.x, Struct_1(false), Struct_1(true)), true, Struct_1(true))), Struct_1(false))), ((vec3<i32>(0i, -1i, u_input.a) & vec3<i32>(2147483647i, -37498i, 2807i)) - (u_input.c / vec3<i32>(u_input.c.x, 2147483647i, -1i))) ^ (u_input.c % ~u_input.c)), func_1(func_1(Struct_1(!true), Struct_4(Struct_1(true), Struct_1(true), Struct_2(global0[u_input.b.x], 47044u, Struct_1(false), Struct_1(false)), all(vec2<bool>(true, false)), func_4(vec4<f32>(-986f, 2091f, 549f, 1171f), Struct_3(vec4<i32>(-8379i, 0i, 0i, u_input.a), Struct_2(global0[11195u], 4294967295u, Struct_1(false), Struct_1(false))), Struct_4(Struct_1(false), Struct_1(false), Struct_2(vec4<f32>(-1572f, 1000f, -114f, -832f), u_input.b.x, Struct_1(false), Struct_1(false)), true, Struct_1(false)), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(1455f, 978f, 178f, -250f), 1123u, Struct_1(true), Struct_1(true)), true, Struct_1(false)))), (false || true) && !false), Struct_4(Struct_1(!true), func_4(vec4<f32>(1000f, 719f, 1464f, 338f) * global0[4294967295u], Struct_3(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, 1i), Struct_2(global0[u_input.b.x], u_input.b.x, Struct_1(true), Struct_1(false))), Struct_4(Struct_1(false), Struct_1(false), Struct_2(vec4<f32>(2079f, 298f, 1690f, -421f), 4559u, Struct_1(true), Struct_1(true)), false, Struct_1(false)), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(-809f, 1350f, 846f, 251f), u_input.b.x, Struct_1(false), Struct_1(true)), false, Struct_1(true))), Struct_2(max(vec4<f32>(507f, -1125f, 1000f, -722f), global0[4294967295u]), 59869u % 77535u, Struct_1(true), Struct_1(false)), true, func_5(Struct_1(false), Struct_4(Struct_1(false), Struct_1(true), Struct_2(vec4<f32>(1000f, -759f, 704f, -2260f), 21756u, Struct_1(false), Struct_1(false)), false, Struct_1(false)), Struct_3(vec4<i32>(25009i, u_input.c.x, 14153i, -1i), Struct_2(global0[u_input.b.x], 33623u, Struct_1(true), Struct_1(true))), vec3<i32>(-5957i, u_input.c.x, u_input.c.x) / vec3<i32>(u_input.a, 31115i, u_input.a))), !(u_input.b.x <= ~4294967295u)), Struct_2(step(select(-vec4<f32>(-904f, -1967f, 873f, 402f), -vec4<f32>(1000f, -2097f, 854f, -1781f), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)), vec4<f32>(step(-189f, -510f), 332f + 518f, 667f / -978f, min(2535f, -2116f))), 4294967295u, func_5(func_5(func_1(Struct_1(true), Struct_4(Struct_1(false), Struct_1(true), Struct_2(vec4<f32>(-296f, -1537f, 793f, 225f), u_input.b.x, Struct_1(false), Struct_1(false)), false, Struct_1(false)), true), Struct_4(Struct_1(true), Struct_1(false), Struct_2(vec4<f32>(-445f, 2853f, -678f, 109f), u_input.b.x, Struct_1(false), Struct_1(true)), false, Struct_1(true)), Struct_3(vec4<i32>(-14204i, u_input.c.x, u_input.c.x, 0i), Struct_2(vec4<f32>(-870f, -1085f, 407f, -380f), 4294967295u, Struct_1(true), Struct_1(false))), u_input.c), Struct_4(func_4(vec4<f32>(-800f, 1245f, -136f, 1760f), Struct_3(vec4<i32>(1i, u_input.a, -46704i, 44245i), Struct_2(vec4<f32>(1812f, 129f, 1066f, -1000f), u_input.b.x, Struct_1(false), Struct_1(true))), Struct_4(Struct_1(true), Struct_1(true), Struct_2(global0[0u], 1u, Struct_1(true), Struct_1(true)), true, Struct_1(false)), Struct_4(Struct_1(false), Struct_1(false), Struct_2(global0[u_input.b.x], 0u, Struct_1(true), Struct_1(true)), false, Struct_1(false))), func_5(Struct_1(true), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(-685f, 141f, 1448f, -349f), 4294967295u, Struct_1(false), Struct_1(true)), false, Struct_1(false)), Struct_3(vec4<i32>(i32(-2147483648), u_input.a, u_input.a, u_input.c.x), Struct_2(vec4<f32>(-2566f, -367f, -402f, 457f), u_input.b.x, Struct_1(true), Struct_1(false))), u_input.c), Struct_2(vec4<f32>(1000f, 456f, 1578f, -791f), 18164u, Struct_1(true), Struct_1(true)), false, Struct_1(true)), Struct_3(~vec4<i32>(u_input.a, u_input.a, 1799i, i32(-2147483648)), Struct_2(vec4<f32>(898f, 905f, 187f, -615f), u_input.b.x, Struct_1(true), Struct_1(true))), abs(max(vec3<i32>(u_input.a, u_input.c.x, -15543i), vec3<i32>(2147483647i, u_input.c.x, u_input.a)))), Struct_1(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))))), true, Struct_1(false));
    let var_1 = sign(func_2(Struct_4(Struct_1(func_5(Struct_1(false), var_0, Struct_3(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 0i), var_0.c), vec3<i32>(1i, u_input.c.x, u_input.c.x)).a), Struct_1(4294967295u > 36712u), var_0.c, true, func_1(func_1(Struct_1(var_0.a.a), var_0, var_0.a.a), Struct_4(var_0.a, var_0.c.c, Struct_2(global0[u_input.b.x], var_0.c.b, Struct_1(true), var_0.b), true, Struct_1(var_0.a.a)), !false)), u_input.c));
    let var_2 = Struct_4(var_0.b, func_4(-(-round(vec4<f32>(var_0.c.a.x, -1076f, var_1, 721f))), Struct_3(vec4<i32>(-54905i >> u_input.b.x, -u_input.c.x, 2147483647i, dot(u_input.c, u_input.c)), var_0.c), Struct_4(func_1(func_1(Struct_1(false), Struct_4(Struct_1(var_0.b.a), Struct_1(false), var_0.c, true, Struct_1(true)), false), var_0, 4294967295u != 11125u), var_0.b, Struct_2(vec4<f32>(-252f, -2577f, -942f, 290f), 1u, func_1(var_0.c.c, var_0, true), func_4(var_0.c.a, Struct_3(vec4<i32>(2147483647i, u_input.a, 2147483647i, 0i), Struct_2(vec4<f32>(var_0.c.a.x, 1000f, var_0.c.a.x, var_0.c.a.x), var_0.c.b, Struct_1(false), var_0.b)), var_0, Struct_4(Struct_1(var_0.b.a), var_0.a, Struct_2(vec4<f32>(-1074f, var_0.c.a.x, var_1, var_0.c.a.x), var_0.c.b, Struct_1(var_0.a.a), Struct_1(var_0.c.d.a)), var_0.a.a, Struct_1(true)))), func_5(var_0.c.d, var_0, Struct_3(vec4<i32>(2147483647i, u_input.c.x, 29632i, 14679i), var_0.c), vec3<i32>(u_input.a, i32(-2147483648), u_input.c.x)).a & var_0.d, Struct_1(true && var_0.e.a)), var_0), Struct_2(var_0.c.a, ~(dot(vec2<u32>(1u, u_input.b.x), vec2<u32>(71157u, 4294967295u)) / (u_input.b.x >> u_input.b.x)), var_0.b, func_1(var_0.e, var_0, var_0.c.c.a)), (~90097u / 33269u) <= (~u_input.b.x % 29794u), func_5(var_0.e, var_0, Struct_3(~(vec4<i32>(-14386i, u_input.c.x, u_input.a, 2147483647i) - vec4<i32>(-1i, i32(-2147483648), 18150i, u_input.a)), var_0.c), (~u_input.c | vec3<i32>(i32(-2147483648), u_input.a, 2147483647i)) * (vec3<i32>(0i, -9017i, u_input.c.x) & clamp(u_input.c, u_input.c, vec3<i32>(u_input.c.x, -58369i, u_input.c.x)))));
    global0 = array<vec4<f32>, 8>();
    let var_3 = abs(vec2<u32>(0u, 0u));
    var var_4 = vec3<f32>(var_1, -var_0.c.a.x, -(-195f + (-var_0.c.a.x / step(-681f, 325f))));
    var var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(-var_2.c.a.xzw), reverseBits(max((u_input.b.xy >> u_input.b.xy) - ~var_3, (vec2<u32>(u_input.b.x, var_2.c.b) / var_3) << reverseBits(vec2<u32>(4294967295u, 1u)))), ~min(min(~vec4<u32>(4294967295u, 0u, var_3.x, 0u), u_input.b), ~vec4<u32>(var_2.c.b, var_0.c.b, var_2.c.b, var_2.c.b)), ~abs(u_input.b.xyy), abs(vec3<i32>(i32(-2147483648), 75118i ^ clamp(u_input.c.x, u_input.a, u_input.a), countOneBits(u_input.c.x))));
}

