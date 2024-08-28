// {"0:0":[147,241,94,184,88,230,204,162,50,179,210,209,194,48,45,167,44,71,156,193,206,217,11,45,104,87,51,171,159,68,157,42,84,75,238,218,82,146,222,160,60,102,103,198,57,56,175,214]}
// Seed: 7352347438252307393

struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_3,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(0i, 2147483647i, i32(-2147483648), 50062i, 2147483647i, 42978i, i32(-2147483648), -5699i);

var<private> global1: array<Struct_3, 12>;

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 20>;

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(0u > 2866u, all(vec2<bool>(true, false)), !false, !true)), global0[firstLeadingBit(dot(abs(~vec2<u32>(0u, u_input.d.x)), (u_input.d.wy % vec2<u32>(12783u, u_input.d.x)) * max(vec2<u32>(14474u, u_input.b.x), u_input.b)))], Struct_1(vec4<bool>(!(!false), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), all(vec3<bool>(false, false, false)) || (true & true), false)));
    global2 = var_0.a.a.x;
    let var_1 = var_0;
    let var_2 = Struct_3(4294967295u, var_0.c, -199f, vec4<bool>(!any(vec3<bool>(var_1.a.a.x, var_1.a.a.x, false)), !(-(-1291f) >= step(-631f, 550f)), true, var_0.c.a.x));
    let var_3 = -(~firstLeadingBit(-vec4<i32>(1i, -1i, global0[0u], 16433i))) * (((vec4<i32>(u_input.c.x, var_0.b, var_1.b, 2147483647i) << (vec4<u32>(u_input.b.x, 4927u, 4294967295u, u_input.b.x) & vec4<u32>(4294967295u, 4294967295u, 0u, var_2.a))) ^ firstLeadingBit(vec4<i32>(var_0.b, u_input.c.x, 5574i, -63217i) | vec4<i32>(global0[40356u], -14290i, 11008i, 887i))) + select((vec4<i32>(u_input.a, -2825i, 2147483647i, 4972i) >> u_input.d) + vec4<i32>(4797i, -24671i, 25595i, 1i), ~firstLeadingBit(vec4<i32>(u_input.a, -49967i, 2147483647i, u_input.c.x)), !var_0.a.a));
    return exp2((251f + 323f) * -sign(var_2.c)) - -var_2.c;
}

fn func_2() -> i32 {
    var var_0 = func_3() >= 604f;
    return global0[u_input.d.x];
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(select(!vec4<bool>(all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, true, true)), true & false, arg_2 <= 4294967295u), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), !vec4<bool>(false, true, true, false), !vec4<bool>(true, true, true, false)), vec4<bool>(!true, (-1691f < -1348f) || (true && false), !(-2329f <= -258f), (0i + 1i) == ~0i)));
    var_0 = Struct_1(select(select(var_0.a, vec4<bool>(all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), false, true, !true), all(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)) & all(var_0.a.zxw)), var_0.a, !var_0.a.x & (var_0.a.x || var_0.a.x)));
    let var_1 = var_0.a.x;
    var_0 = Struct_1(!vec4<bool>(true, !true, !false, var_0.a.x));
    let var_2 = Struct_3(select(41582u, 48922u, ((1021f - -1098f) - -(-519f)) > floor(-1669f)), Struct_1(!vec4<bool>(!false, !true, false, 45249u == 30752u)), -(-(-(-1588f))), var_0.a);
    return Struct_1(var_0.a);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(func_4(1i >> 4294967295u, 55216u, ~(~(u_input.b.x % 35797u)), func_2() ^ 1i), dot(-(-vec3<i32>(i32(-2147483648), -7296i, 56201i) ^ vec3<i32>(global0[4294967295u], global0[4294967295u], -19775i)), firstLeadingBit(~vec3<i32>(-19486i, u_input.c.x, global0[u_input.b.x]))), func_4(select(firstTrailingBit(global0[arg_1.x]), u_input.a, !func_4(-12872i, 26967u, arg_1.x, global0[u_input.b.x]).a.x), dot(vec4<u32>(arg_1.x, ~9345u, u_input.d.x, ~u_input.d.x), vec4<u32>(countOneBits(arg_1.x), arg_1.x, ~0u, u_input.d.x ^ arg_1.x)), u_input.d.x, u_input.a / (5831i ^ reverseBits(0i))));
    global1 = array<Struct_3, 12>();
    global0 = array<i32, 8>();
    var var_1 = var_0.c.a.x;
    let var_2 = Struct_4(Struct_3(dot(firstLeadingBit(~u_input.d), select(u_input.d, vec4<u32>(0u, arg_1.x, u_input.b.x, 1u), false)), Struct_1(select(vec4<bool>(false, arg_0, arg_0, arg_0), var_0.c.a, arg_0)), 548f, select(var_0.a.a, !(!vec4<bool>(var_0.a.a.x, false, var_0.c.a.x, var_0.c.a.x)), select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, var_0.a.a.x, var_0.c.a.x), vec4<bool>(false, arg_0, false, var_0.a.a.x)), select(vec4<bool>(var_0.a.a.x, false, arg_0, true), var_0.a.a, var_0.c.a), select(vec4<bool>(false, arg_0, false, var_0.c.a.x), vec4<bool>(true, arg_0, var_0.c.a.x, arg_0), false)))), arg_1, Struct_3(~(~(~8437u)), var_0.c, 993f + 2175f, var_0.a.a), (-(vec4<i32>(u_input.a, u_input.c.x, 1i, -7799i) % vec4<i32>(global0[arg_1.x], 0i, var_0.b, -30314i)) - ((vec4<i32>(-1i, var_0.b, -37182i, -34055i) / vec4<i32>(-40144i, -1i, var_0.b, global0[12421u])) ^ (vec4<i32>(-8729i, 51610i, u_input.c.x, u_input.c.x) + vec4<i32>(global0[arg_1.x], 2147483647i, global0[u_input.d.x], 2147483647i)))) << ~firstTrailingBit(reverseBits(u_input.d)), vec4<i32>(u_input.a, 46814i, var_0.b, max(-23224i, 9308i)));
    return var_0.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<i32, 8>();
    let var_0 = u_input.c;
    global0 = array<i32, 8>();
    global2 = func_1(!arg_2.a.x, ~vec2<u32>(~dot(vec3<u32>(108882u, u_input.d.x, u_input.d.x), u_input.d.wwx), 0u & 17436u)).a.x;
    let var_1 = -u_input.c.x;
    return Struct_2(Struct_1(select(func_1(2147483647i < global0[u_input.d.x], ~vec2<u32>(u_input.b.x, u_input.d.x)).a, select(func_1(true, u_input.d.yx).a, !vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x), !arg_2.a.x), func_4(dot(vec4<i32>(global0[u_input.d.x], var_1, 3350i, 0i), vec4<i32>(var_1, i32(-2147483648), u_input.a, var_0.x)), u_input.d.x % u_input.b.x, dot(vec2<u32>(37713u, u_input.d.x), u_input.d.wx), ~global0[u_input.d.x]).a)), global0[u_input.b.x], arg_2);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = firstLeadingBit(4294967295u << u_input.d.x);
    global3 = array<vec4<f32>, 20>();
    global2 = false;
    return func_5(vec4<f32>(-379f, arg_2, -816f, max(-(-548f), -arg_3)), vec4<bool>(arg_1.c.d.x, arg_1.a.b.a.x, any(arg_0.a.a), !(!arg_1.a.d.x) != arg_0.a.a.x), arg_1.a.b);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1.c.a.x;
    let var_1 = true && all(arg_1.c.a);
    global2 = arg_1.a.a.x;
    var var_2 = ~1u;
    var var_3 = !true;
    return 1275f / -740f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    let var_0 = func_7(func_6(func_5(abs(select(global3[u_input.d.x], vec4<f32>(463f, 1636f, 1000f, -956f), false)), vec4<bool>(all(vec2<bool>(false, false)), !false, true, true), func_1(all(vec3<bool>(false, true, true)), vec2<u32>(6011u, u_input.d.x) & u_input.d.wy)), Struct_4(global1[dot(~vec4<u32>(u_input.b.x, 7170u, u_input.d.x, 0u), vec4<u32>(26412u, 35851u, u_input.d.x, u_input.b.x))], vec2<u32>(0u + u_input.d.x, u_input.b.x), global1[39239u], vec4<i32>(reverseBits(global0[u_input.b.x]), global0[8691u], abs(u_input.a), select(global0[u_input.b.x], global0[0u], false)), abs(abs(vec4<i32>(-47404i, 1i, u_input.c.x, 2147483647i)))), select(-418f, -512f + 1401f, any(!vec3<bool>(false, false, false))), trunc(-1274f)), func_5(-select(-vec4<f32>(1245f, 416f, 1000f, -1436f), global3[46347u], true && true), func_1(!(true | true), ~(u_input.b % vec2<u32>(1u, u_input.d.x))).a, Struct_1(select(vec4<bool>(false, true, true, true), !vec4<bool>(false, true, true, true), !vec4<bool>(false, false, false, false)))), func_6(func_6(Struct_2(Struct_1(vec4<bool>(true, true, true, true)), u_input.a, Struct_1(vec4<bool>(true, true, false, true))), Struct_4(global1[min(u_input.d.x, 77691u)], u_input.d.xw, Struct_3(0u, Struct_1(vec4<bool>(true, true, true, true)), 491f, vec4<bool>(false, true, false, true)), abs(vec4<i32>(global0[77221u], u_input.c.x, global0[u_input.d.x], i32(-2147483648))), select(vec4<i32>(u_input.c.x, 5171i, 0i, global0[33535u]), vec4<i32>(-17189i, -29929i, u_input.c.x, global0[u_input.b.x]), false)), -1077f, -488f), Struct_4(global1[firstTrailingBit(u_input.b.x)], countOneBits(vec2<u32>(u_input.d.x, u_input.b.x)), global1[(40739u << 1u) & min(4294967295u, 42273u)], select(vec4<i32>(13205i, -2327i, i32(-2147483648), -4865i), vec4<i32>(13158i, 0i, i32(-2147483648), global0[u_input.b.x]) / vec4<i32>(u_input.a, 1403i, global0[u_input.d.x], 29260i), func_6(Struct_2(Struct_1(vec4<bool>(false, false, false, false)), -35411i, Struct_1(vec4<bool>(false, false, false, true))), Struct_4(Struct_3(16079u, Struct_1(vec4<bool>(false, false, false, false)), -1503f, vec4<bool>(true, true, true, true)), vec2<u32>(u_input.d.x, u_input.d.x), Struct_3(u_input.d.x, Struct_1(vec4<bool>(false, false, false, false)), -1172f, vec4<bool>(false, true, true, true)), vec4<i32>(global0[u_input.d.x], 2147483647i, 1i, 2147483647i), vec4<i32>(u_input.a, global0[u_input.b.x], 1i, 77826i)), -1721f, 2142f).c.a), vec4<i32>(~1i, u_input.c.x, func_5(vec4<f32>(1193f, -170f, 1449f, -1211f), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, false, false, true))).b, -5656i)), -(-288f), exp2(-(-560f))).c);
    global3 = array<vec4<f32>, 20>();
    global1 = array<Struct_3, 12>();
    let var_1 = global1[u_input.d.x];
    global2 = !false;
    let x = u_input.a;
    s_output = StorageBuffer(~(global0[0u] | dot(vec4<i32>(global0[35263u], u_input.a, -31241i, u_input.c.x) - vec4<i32>(u_input.a, -7158i, global0[0u], global0[38535u]), vec4<i32>(u_input.a, -1192i, 2147483647i, u_input.c.x) << u_input.d)), -(-2213f), exp2(var_1.c), countOneBits(firstTrailingBit(vec2<i32>(global0[314u], 2147483647i)) ^ (u_input.c | u_input.c)) / -u_input.c);
}

