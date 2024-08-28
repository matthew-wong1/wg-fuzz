// {"0:0":[173,187,12,203,249,164,61,18,15,72,93,54,103,171,38,58,66,19,226,248,58,51,21,41,156,113,211,70,140,24,157,89]}
// Seed: 591868914947752988

struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(71675u, 73718u), -1000f, vec4<bool>(true, true, true, false), 152f);

var<private> global1: array<bool, 20> = array<bool, 20>(true, true, false, false, true, true, true, true, true, true, false, true, false, true, true, false, false, true, true, false);

var<private> global2: array<i32, 25>;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec2<u32>(66372u, 0u), -1046f, vec4<bool>(true, true, false, true), -291f), -2169i, -17167i), Struct_2(Struct_1(vec2<u32>(1u, 4425u), 137f, vec4<bool>(true, false, false, true), -1104f), 2147483647i, 0i), Struct_2(Struct_1(vec2<u32>(0u, 1u), 184f, vec4<bool>(false, false, false, true), -133f), 50905i, 1i), Struct_2(Struct_1(vec2<u32>(0u, 7135u), 1025f, vec4<bool>(false, true, true, true), -450f), i32(-2147483648), 1i), Struct_2(Struct_1(vec2<u32>(30163u, 1u), 286f, vec4<bool>(false, false, true, false), 1632f), -1i, -14140i), Struct_2(Struct_1(vec2<u32>(21091u, 2069u), -575f, vec4<bool>(true, true, false, false), 272f), -18664i, 29300i), Struct_2(Struct_1(vec2<u32>(1u, 1u), 341f, vec4<bool>(true, false, true, true), -189f), 2147483647i, 40828i), Struct_2(Struct_1(vec2<u32>(62031u, 104122u), 1179f, vec4<bool>(false, false, true, true), 164f), 0i, 2147483647i), Struct_2(Struct_1(vec2<u32>(4294967295u, 32895u), 593f, vec4<bool>(true, false, false, false), 155f), -43826i, -1i), Struct_2(Struct_1(vec2<u32>(40352u, 1u), -1425f, vec4<bool>(true, true, true, false), 366f), 0i, -24984i), Struct_2(Struct_1(vec2<u32>(21809u, 1u), -1119f, vec4<bool>(false, false, true, true), 324f), 812i, 0i), Struct_2(Struct_1(vec2<u32>(8412u, 47312u), 857f, vec4<bool>(true, true, true, false), -429f), -11323i, 0i), Struct_2(Struct_1(vec2<u32>(11087u, 68660u), -354f, vec4<bool>(false, true, true, true), 2146f), -1i, -28731i), Struct_2(Struct_1(vec2<u32>(49273u, 12163u), 1013f, vec4<bool>(true, false, true, false), 1927f), -1i, -9966i), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 252f, vec4<bool>(true, true, true, false), -1019f), -15775i, i32(-2147483648)));

fn func_3(arg_0: Struct_1) -> i32 {
    global3 = array<Struct_2, 15>();
    let var_0 = Struct_1(select(u_input.e, ~u_input.e, !true), -900f, global0.c, max(ceil(-(arg_0.b / arg_0.d)), abs(arg_0.d)));
    global0 = Struct_1(vec2<u32>(0u, dot(abs(vec3<u32>(1u, u_input.e.x, 1509u)), abs(vec3<u32>(1u, 38731u, global0.a.x)))) - ~((vec2<u32>(global0.a.x, global0.a.x) << arg_0.a) % vec2<u32>(51146u, 1u)), trunc(1000f), vec4<bool>(false, (any(vec2<bool>(var_0.c.x, global0.c.x)) | all(vec2<bool>(global0.c.x, var_0.c.x))) | false, any(var_0.c.yw), any(select(select(vec3<bool>(global0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(var_0.c.x, false, global1[arg_0.a.x]), global1[var_0.a.x]), arg_0.c.wwx, !arg_0.c.xxz))), exp2(var_0.b * (413f + arg_0.b)));
    let var_1 = vec4<f32>(-(-1000f), floor(-(-112f)), 307f, -141f);
    global0 = Struct_1(~(~global0.a / (firstTrailingBit(global0.a) >> ~global0.a)), -(-281f), global0.c, -(1035f * -abs(-695f)));
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = -1i & func_3(arg_3);
    var var_1 = dot(vec2<u32>(countOneBits(arg_3.a.x) * arg_3.a.x, ~(1u | 1u)) + (~arg_3.a - (global0.a / ~vec2<u32>(1u, arg_2.a.a.x))), global0.a);
    var var_2 = Struct_2(arg_2.a, ~abs(-1i), func_3(arg_2.a));
    return firstLeadingBit(~0u >> ((countOneBits(0u) ^ global0.a.x) >> abs(firstLeadingBit(u_input.e.x))));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    global0 = Struct_1(u_input.e, global0.d, global0.c, global0.d);
    var var_0 = global3[~abs(~(~(26504u << global0.a.x)))];
    global1 = array<bool, 20>();
    let var_1 = u_input.a;
    var_0 = Struct_2(var_0.a, abs(13286i - 0i), u_input.b.x);
    return global3[37357u & u_input.e.x];
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = func_4(!global0.c.x, vec2<u32>(~(func_2(global1[91506u], vec4<f32>(-273f, global0.b, 1000f, -954f), Struct_2(arg_0, global2[u_input.e.x], global2[1185u]), Struct_1(arg_0.a, 841f, arg_0.c, -225f)) - u_input.e.x), arg_0.a.x));
    let var_1 = ~24765u;
    return global0.a;
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    global3 = array<Struct_2, 15>();
    let var_0 = !global0.c.x;
    let var_1 = arg_0.a.x;
    let var_2 = vec4<f32>(1164f / abs(-1000f), -220f, step(select(-(-global0.d), -1648f / -global0.b, !any(vec2<bool>(true, arg_0.c.x))), ceil(global0.d)), -690f);
    let var_3 = -1000f;
    return vec4<bool>(global0.c.x, global1[arg_0.a.x], global1[1u + dot(firstLeadingBit(vec3<u32>(4294967295u, global0.a.x, u_input.e.x) * vec3<u32>(9351u, 13566u, var_1)), (vec3<u32>(1u, var_1, var_1) >> vec3<u32>(arg_0.a.x, 12719u, 41712u)) ^ ~vec3<u32>(1u, 7689u, u_input.a))], all(select(vec2<bool>(global1[~33971u], true), !arg_0.c.ww, vec2<bool>(false, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(max(global0.a, abs(min(min(vec2<u32>(global0.a.x, global0.a.x), global0.a), vec2<u32>(u_input.e.x, 38478u)))), global0.b, !func_5(Struct_1(func_1(Struct_1(vec2<u32>(54719u, u_input.a), global0.b, global0.c, global0.d)), -389f, !vec4<bool>(false, false, global1[1u], true), -417f)), global0.d);
    var var_0 = sign(global0.d);
    global3 = array<Struct_2, 15>();
    var var_1 = Struct_2(func_4(!false, vec2<u32>(11611u, u_input.d - global0.a.x) / u_input.e).a, ~(-1i), dot(-(vec2<i32>(global2[38457u], 0i) | u_input.b), -u_input.b) + -(-global2[global0.a.x] + -26416i));
    var var_2 = func_4(true, ~(~firstLeadingBit(vec2<u32>(38221u, global0.a.x))) + vec2<u32>(dot(vec2<u32>(68319u, 63653u) * vec2<u32>(46912u, 54994u), var_1.a.a), 4294967295u));
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>((39445i * 46231i) - -24265i, u_input.b.x)), ~var_1.b, var_1.a.d, global0.b - var_3.b);
}

