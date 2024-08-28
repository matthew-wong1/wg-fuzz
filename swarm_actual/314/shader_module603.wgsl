// {"0:0":[139,116,201,252,26,185,239,161,202,32,241,37,133,25,227,165,116,17,135,59,111,98,249,88,91,120,41,111,84,19,136,31,78,80,135,196,48,211,69,163,169,219,207,233,172,37,68,149]}
// Seed: 3473946100243112372

struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global2: array<bool, 11> = array<bool, 11>(false, false, true, true, true, true, false, false, true, false, true);

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = min(-vec3<f32>(1730f, -select(-606f, global0.x, false), round(2097f) + (893f / -1005f)), vec3<f32>(-(-757f), -ceil(-642f), -(-251f) / -924f) + (vec3<f32>(sign(global0.x), -747f, global0.x) - -(vec3<f32>(global0.x, -637f, 138f) - vec3<f32>(625f, global0.x, global0.x))));
    let var_0 = Struct_2(Struct_1(round(-(-global0.x)), !vec2<bool>(all(vec3<bool>(true, true, global2[0u])), !global2[4294967295u]), 54468u, global2[~(0u & 1u)], 4294967295u));
    global0 = vec3<f32>(1328f, global0.x, 992f / -(292f / trunc(-505f)));
    global1 = array<vec3<bool>, 7>();
    var var_1 = ceil(vec2<f32>(max(abs(1130f) + 277f, -global0.x), ceil(-var_0.a.a)));
    return select(~(~vec4<u32>(50101u, var_0.a.e, 2974u, var_0.a.e)) ^ min(~vec4<u32>(var_0.a.e, 0u, var_0.a.c, var_0.a.c), vec4<u32>(4294967295u, var_0.a.e, ~var_0.a.e, 47531u)), (~(vec4<u32>(4294967295u, var_0.a.c, 21587u, var_0.a.e) / vec4<u32>(4294967295u, var_0.a.e, var_0.a.c, var_0.a.c)) / vec4<u32>(~var_0.a.c, max(var_0.a.e, var_0.a.e), dot(vec2<u32>(var_0.a.c, 0u), vec2<u32>(118929u, var_0.a.e)), ~var_0.a.c)) - vec4<u32>(var_0.a.e + 1u, ~1u, min(21141u, var_0.a.c) + 15461u, var_0.a.c), false);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec3<i32>(9897i, reverseBits(~1i), ~(-select(-5242i, 1i, true)) >> select(~4294967295u, ~arg_0.x, !global2[firstLeadingBit(arg_1.x)]));
    global1 = array<vec3<bool>, 7>();
    var var_1 = firstLeadingBit(~(~0i - var_0.x));
    let var_2 = select(!select(select(select(vec2<bool>(global2[0u], global2[1u]), vec2<bool>(global2[27949u], false), global2[arg_1.x]), !vec2<bool>(false, global2[1u]), !vec2<bool>(false, true)), select(vec2<bool>(global2[4294967295u], global2[arg_1.x]), !vec2<bool>(global2[43920u], false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global2[arg_1.x], global2[arg_1.x]))), true && (true | true)), select(vec2<bool>(all(!vec4<bool>(global2[24266u], global2[4294967295u], true, false)), global2[arg_0.x]), select(vec2<bool>(1381f <= global0.x, !true), select(!vec2<bool>(false, true), !vec2<bool>(true, global2[arg_0.x]), select(vec2<bool>(global2[arg_1.x], true), vec2<bool>(false, global2[4294967295u]), true)), true), vec2<bool>(global2[arg_1.x] && any(vec4<bool>(false, true, false, global2[17885u])), any(select(vec2<bool>(global2[arg_1.x], global2[arg_1.x]), vec2<bool>(global2[109525u], true), global2[20341u])))), !(!vec2<bool>(25804i != 3442i, false)));
    var var_3 = vec2<u32>(1u, 0u);
    return -(-917f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec3<f32> {
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    var var_0 = ceil(vec4<f32>(func_4(func_3(clamp(arg_1.x, arg_1.x, -1i)), ~(~vec2<u32>(46438u, 4294967295u))), floor(arg_0.x), ceil(ceil(trunc(209f))), trunc(-565f / -arg_0.x)));
    var var_1 = (468f - 452f) <= var_0.x;
    return vec3<f32>(arg_0.x / 1983f, -(arg_0.x * -1399f), 247f);
}

fn func_1() -> u32 {
    global0 = vec3<f32>(1001f, -1875f * global0.x, max(exp2(702f), max(abs(trunc(-553f)), -(1000f + -1283f))));
    let var_0 = exp2(global0.x) / -(-max(918f - global0.x, -441f));
    global0 = -(trunc(func_2(min(vec3<f32>(438f, -772f, 566f), vec3<f32>(-697f, -620f, 1000f)), firstTrailingBit(vec3<i32>(u_input.b.x, -11156i, u_input.a.x)))) - step(-vec3<f32>(var_0, 205f, -563f) * vec3<f32>(var_0, global0.x, var_0), -vec3<f32>(-1356f, -205f, var_0)));
    var var_1 = -func_2(sign(-vec3<f32>(global0.x, var_0, var_0) + (vec3<f32>(-286f, global0.x, 1252f) - vec3<f32>(global0.x, global0.x, 878f))), vec3<i32>(-27669i, ~dot(u_input.a.wyz, vec3<i32>(u_input.b.x, 14339i, u_input.c)), ~u_input.a.x / ~u_input.c)).yz;
    global0 = (-min(vec3<f32>(var_1.x, var_0, -1015f), vec3<f32>(var_1.x, -471f, var_0) + vec3<f32>(-809f, global0.x, var_0)) - ceil(ceil(vec3<f32>(122f, -864f, 1617f)))) + select(sign(vec3<f32>(global0.x, -2665f, 419f)), -(trunc(vec3<f32>(var_1.x, var_0, global0.x)) - vec3<f32>(var_0, -364f, var_0)), global1[(86360u | (16811u ^ 579u)) * firstLeadingBit(~43023u)]);
    return (4294967295u - abs(1u)) * 36030u;
}

fn func_5(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = -(-(-(-trunc(vec3<f32>(183f, 532f, global0.x)))));
    let var_0 = Struct_2(Struct_1(func_2(trunc(round(vec3<f32>(global0.x, -1222f, global0.x))), ~vec3<i32>(u_input.b.x, u_input.c, u_input.c)).x, vec2<bool>(true, global2[~arg_0.x]), ~arg_0.x >> firstTrailingBit(~29401u), !(!true), arg_0.x));
    var var_1 = var_0.a.a;
    global0 = trunc(-(-vec3<f32>(1000f, global0.x, global0.x) / -vec3<f32>(867f, 577f, 528f)) + sign(-trunc(vec3<f32>(global0.x, var_0.a.a, global0.x))));
    let var_2 = ~vec4<u32>(arg_0.x, ~var_0.a.c, reverseBits(arg_0.x) * select(dot(arg_0, vec4<u32>(arg_0.x, arg_0.x, 0u, var_0.a.e)), 120874u, -23606i <= u_input.c), firstLeadingBit(~firstLeadingBit(0u)));
    return func_2(func_2(-exp2(vec3<f32>(global0.x, 1322f, var_0.a.a)), vec3<i32>(~(u_input.c & 1i), (1i - 7496i) ^ ~u_input.a.x, 1i)), firstTrailingBit(~(-vec3<i32>(u_input.c, u_input.b.x, 0i) * (u_input.b.xxy + vec3<i32>(-1i, u_input.a.x, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~vec4<u32>(~1u, func_1(), ~0u, 25951u)) + -func_2(vec3<f32>(global0.x, global0.x, 1767f - 995f), vec3<i32>(-u_input.b.x, 0i, u_input.c));
    global1 = array<vec3<bool>, 7>();
    var var_0 = -(-(vec4<f32>(global0.x, global0.x, global0.x, 563f) - vec4<f32>(-1569f, 1330f, -964f, global0.x)) / vec4<f32>(-1074f, global0.x - global0.x, 695f, 292f)) + min(-trunc(vec4<f32>(global0.x, 314f, -1400f, global0.x)), vec4<f32>(-global0.x / -2517f, 708f, floor(trunc(456f)), -1275f));
    let var_1 = u_input.a.yzx;
    global2 = array<bool, 11>();
    let var_2 = vec4<bool>(global2[~(abs(~10089u) % (34219u >> reverseBits(4294967295u)))], all(vec3<bool>(false, !global2[min(0u, 43265u)], !(!true))), false, global2[clamp(func_3(~var_1.x | 40275i).x, 1u, max(~(0u & 16319u), reverseBits(~1u)))]);
    var var_3 = ~vec3<i32>(25679i, var_1.x, u_input.b.x);
    var var_4 = all(vec2<bool>(u_input.c <= var_3.x, global2[1u ^ 1093u]));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, ~(~24312u), ~111323u - 1u), firstTrailingBit(firstLeadingBit(~(~vec4<u32>(1u, 1u, 1u, 4294967295u)))), var_0.x, vec3<u32>(1u, 1u, func_3(-var_3.x).x), 0u);
}

