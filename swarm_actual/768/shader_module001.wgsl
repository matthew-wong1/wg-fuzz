// {"0:0":[57,38,99,132,115,53,102,84,95,2,162,51,172,186,18,126,150,32,195,98,226,22,231,139,100,71,74,143,114,227,125,157]}
// Seed: 326976612683017265

struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    return arg_1;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<Struct_3, 30>();
    let var_0 = arg_3;
    global0 = array<Struct_3, 30>();
    var var_1 = -u_input.a / -(-max(vec3<i32>(i32(-2147483648), u_input.a.x, -58324i) - vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x), vec3<i32>(u_input.a.x, -1i, u_input.a.x)));
    let var_2 = vec3<f32>(-944f, -405f, func_1(~(~vec4<u32>(u_input.c, arg_1.a.x, 45954u, arg_1.a.x) * ~vec4<u32>(arg_1.a.x, arg_2.a.a.x, arg_2.a.a.x, 4294967295u)), Struct_3(arg_2.a, var_0.a.x, sign(arg_2.b) / -(-408f)), floor(exp2(arg_3.a.x)) - abs(-866f), Struct_3(Struct_1(arg_2.a.a, vec4<f32>(arg_2.b, var_0.a.x, -1000f, -478f), !vec2<bool>(arg_0.x, arg_2.a.c.x), -vec4<f32>(331f, 447f, arg_2.b, 665f)), 282f, arg_1.d.x)).a.b.x);
    return select(vec3<bool>(arg_1.a.x == ~arg_2.a.a.x, arg_1.a.x == arg_1.a.x, !any(select(vec3<bool>(false, false, arg_1.c.x), vec3<bool>(true, true, false), arg_1.c.x))), vec3<bool>(func_1(vec4<u32>(1u, 30819u, 113388u, 45213u), func_1(vec4<u32>(arg_2.a.a.x, 0u, 1u, arg_2.a.a.x), Struct_3(Struct_1(u_input.b, arg_1.b, vec2<bool>(true, arg_2.a.c.x), arg_1.d), 1250f, arg_1.b.x), 397f, global0[0u]), -215f + arg_3.a.x, func_1(vec4<u32>(16054u, 1u, 29544u, 14977u), Struct_3(Struct_1(arg_2.a.a, vec4<f32>(arg_3.a.x, 695f, arg_3.a.x, -898f), arg_0, arg_2.a.b), var_0.a.x, 609f), var_0.a.x, global0[67117u])).a.a.x < arg_2.a.a.x, any(!select(vec4<bool>(arg_1.c.x, arg_2.a.c.x, false, true), vec4<bool>(arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x, arg_1.c.x), false)), !arg_0.x), vec3<bool>(false, !arg_2.a.c.x, func_1((vec4<u32>(38959u, 1254u, 58922u, u_input.b.x) / vec4<u32>(arg_1.a.x, u_input.c, 1u, arg_2.a.a.x)) + abs(vec4<u32>(arg_2.a.a.x, 12307u, 1u, 4294967295u)), func_1(min(vec4<u32>(arg_2.a.a.x, 4294967295u, 0u, u_input.b.x), vec4<u32>(4294967295u, arg_1.a.x, 10062u, arg_2.a.a.x)), global0[func_1(vec4<u32>(u_input.c, arg_1.a.x, 37063u, u_input.b.x), Struct_3(arg_1, arg_2.b, arg_2.c), arg_3.a.x, Struct_3(arg_1, 483f, var_2.x)).a.a.x], sign(var_0.a.x), func_1(vec4<u32>(arg_1.a.x, arg_2.a.a.x, u_input.b.x, 0u), Struct_3(Struct_1(vec2<u32>(5291u, u_input.b.x), vec4<f32>(var_2.x, arg_1.b.x, 1489f, 783f), vec2<bool>(true, true), arg_2.a.b), var_2.x, -1263f), 1510f, arg_2)), -2058f, arg_2).a.c.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = (arg_1.a.c.x && false) & (u_input.a.x == -(-865i));
    let var_1 = !(!select(select(func_3(arg_1.a.c, arg_1.a, Struct_3(arg_1.a, arg_0.a.x, 972f), arg_0), !vec3<bool>(true, false, arg_1.a.c.x), arg_1.a.c.x), !(!vec3<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x)), vec3<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x | false)));
    let var_2 = var_1.x;
    var var_3 = Struct_2(arg_1.a.d.ywx);
    var var_4 = -229f / min(step(select(trunc(arg_1.c), 924f + 1530f, false), func_1(~vec4<u32>(1u, u_input.c, 17481u, arg_1.a.a.x), Struct_3(Struct_1(vec2<u32>(63048u, 1u), arg_1.a.b, vec2<bool>(false, false), vec4<f32>(1614f, 120f, -604f, 161f)), -1093f, -783f), 2343f, Struct_3(arg_1.a, arg_0.a.x, 2134f)).b), var_3.a.x);
    return 63995u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    var var_0 = -4393i;
    var var_1 = firstLeadingBit(firstLeadingBit(reverseBits(vec3<u32>(u_input.b.x, u_input.c, u_input.c))) ^ vec3<u32>(4294967295u, ~18633u, u_input.b.x)) << (vec3<u32>(func_2(Struct_2(vec3<f32>(1000f, 1196f, -1358f)), func_1(vec4<u32>(u_input.b.x, 1u, 1u, u_input.c), global0[29453u], -639f, global0[u_input.b.x])), u_input.c, u_input.c) * select(countOneBits(max(vec3<u32>(4294967295u, 54072u, u_input.c), vec3<u32>(u_input.b.x, u_input.c, u_input.b.x))), min(firstTrailingBit(vec3<u32>(1u, u_input.c, u_input.b.x)), firstLeadingBit(vec3<u32>(u_input.b.x, 0u, u_input.c))), func_3(vec2<bool>(false, true), func_1(vec4<u32>(73884u, u_input.b.x, 22726u, u_input.c), global0[1u], -194f, Struct_3(Struct_1(u_input.b, vec4<f32>(1781f, 614f, 1021f, 555f), vec2<bool>(true, false), vec4<f32>(538f, 2567f, -219f, -291f)), 702f, -1092f)).a, global0[58022u], Struct_2(vec3<f32>(942f, -1000f, -487f)))));
    var var_2 = 1495f;
    var var_3 = ~u_input.c;
    var var_4 = Struct_1(u_input.b, ceil(vec4<f32>((998f / -178f) * -(-1350f), -193f * max(360f, -461f), 1651f, trunc(-1054f))), func_3(vec2<bool>(!true, false), func_1(~(vec4<u32>(0u, var_1.x, var_1.x, var_1.x) ^ vec4<u32>(var_1.x, 1u, 35618u, 36979u)), Struct_3(Struct_1(u_input.b, vec4<f32>(-742f, -2286f, 1176f, 323f), vec2<bool>(false, false), vec4<f32>(887f, -180f, -1393f, 1217f)), -(-1333f), -1648f), sign(-621f), func_1(vec4<u32>(49974u, 0u, u_input.b.x, u_input.c) % vec4<u32>(var_1.x, u_input.c, var_1.x, u_input.b.x), global0[var_1.x], -(-1623f), func_1(vec4<u32>(1u, var_1.x, 27496u, 0u), global0[47630u], -1349f, global0[var_1.x]))).a, func_1(~vec4<u32>(var_1.x, u_input.c, 1u, 32870u) % (vec4<u32>(5494u, var_1.x, 11855u, var_1.x) ^ vec4<u32>(0u, var_1.x, 0u, 4294967295u)), Struct_3(Struct_1(u_input.b, vec4<f32>(1114f, -140f, -745f, -572f), vec2<bool>(true, true), vec4<f32>(1437f, -547f, -408f, -1165f)), -(-602f), 223f - -587f), -2352f, global0[clamp(0u, var_1.x, 4294967295u) ^ u_input.c]), Struct_2(vec3<f32>(1296f, 499f, -896f) + -vec3<f32>(-818f, 145f, 191f))).xx, -step(floor(vec4<f32>(2075f, -1000f, -288f, 1632f)), -floor(vec4<f32>(-1000f, 561f, 180f, -233f))));
    var var_5 = Struct_1(vec2<u32>(u_input.b.x, ~dot(~vec4<u32>(u_input.c, 0u, 62889u, 85109u), abs(vec4<u32>(0u, var_4.a.x, var_4.a.x, u_input.c)))), var_4.b, vec2<bool>(false | false, !var_4.c.x), var_4.d - trunc(ceil(var_4.d + var_4.d)));
    let var_6 = -1i;
    var_4 = func_1(vec4<u32>(1u, var_1.x, var_4.a.x, ~min(var_5.a.x, ~var_5.a.x)), func_1(~(~(~vec4<u32>(var_5.a.x, u_input.c, var_5.a.x, 15768u))), func_1((vec4<u32>(var_1.x, u_input.b.x, var_4.a.x, 1u) * vec4<u32>(var_4.a.x, var_4.a.x, var_4.a.x, u_input.b.x)) | (vec4<u32>(1u, 0u, 0u, u_input.c) & vec4<u32>(var_4.a.x, var_1.x, 21186u, var_1.x)), global0[min(~31515u, 79918u * 0u)], -abs(var_4.d.x), global0[func_2(Struct_2(vec3<f32>(var_5.b.x, var_4.b.x, -1521f)), Struct_3(Struct_1(u_input.b, var_5.b, vec2<bool>(var_5.c.x, false), var_4.b), var_5.b.x, var_4.b.x))]), exp2(var_5.d.x), global0[(func_1(vec4<u32>(0u, var_4.a.x, 7532u, var_4.a.x), Struct_3(Struct_1(vec2<u32>(var_4.a.x, 64102u), var_4.d, vec2<bool>(false, var_5.c.x), vec4<f32>(1047f, 513f, 667f, 655f)), -1388f, -340f), var_4.b.x, Struct_3(Struct_1(vec2<u32>(50882u, 808u), vec4<f32>(var_5.b.x, 3045f, var_5.b.x, var_4.b.x), var_4.c, vec4<f32>(var_5.b.x, var_5.d.x, var_4.d.x, 1568f)), var_4.b.x, -247f)).a.a.x % 4294967295u) - (abs(70306u) & var_5.a.x)]), exp2(-(-(-(-669f)))), Struct_3(func_1(~vec4<u32>(61604u, var_1.x, u_input.c, var_1.x) * select(vec4<u32>(14778u, var_4.a.x, 4294967295u, 41457u), vec4<u32>(18579u, 41000u, 38248u, 4294967295u), var_5.c.x), global0[~1u], -2763f + var_5.d.x, Struct_3(Struct_1(var_1.xz, vec4<f32>(1016f, 1075f, -1532f, -111f), var_5.c, var_5.b), var_4.b.x, max(var_4.b.x, 834f))).a, func_1(vec4<u32>(28252u, 0u, var_4.a.x, 4294967295u) - (vec4<u32>(var_5.a.x, 1u, 37955u, var_5.a.x) << vec4<u32>(var_1.x, var_1.x, var_4.a.x, u_input.c)), func_1(~vec4<u32>(var_4.a.x, 16939u, var_4.a.x, 0u), global0[var_4.a.x % 1u], -386f, Struct_3(Struct_1(u_input.b, var_4.d, var_4.c, var_4.d), var_5.d.x, var_5.b.x)), var_5.d.x, Struct_3(func_1(vec4<u32>(u_input.b.x, u_input.b.x, var_5.a.x, 4294967295u), Struct_3(Struct_1(var_4.a, var_4.b, vec2<bool>(true, var_5.c.x), var_4.b), var_4.b.x, var_4.b.x), 905f, global0[var_4.a.x]).a, step(227f, var_5.b.x), sign(1000f))).c, min(261f, -round(var_4.d.x)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(72441u - var_5.a.x, clamp(23880u, 0u, 4294967295u)), vec2<f32>(var_4.d.x, floor(var_4.d.x)));
}

