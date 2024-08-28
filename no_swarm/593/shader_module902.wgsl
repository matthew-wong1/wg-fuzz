// {"0:0":[160,233,33,55]}
// Seed: 5201614016579803663

struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<f32, 12>;

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = Struct_3(~((~arg_0.x << 4294967295u) & (~arg_0.x / (arg_0.x * arg_0.x))), trunc(vec2<f32>(-global1[abs(11119u)], 386f)), Struct_2(clamp(min(~vec3<u32>(u_input.a, 4346u, u_input.a), firstLeadingBit(vec3<u32>(1u, 65675u, u_input.a))), ~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), reverseBits(vec3<u32>(u_input.a, u_input.a, 8885u))), all(vec4<bool>(!true, any(vec3<bool>(false, true, true)), false, true)), global0[clamp(4294967295u, u_input.a & 0u, u_input.a) - ~u_input.a]));
    global0 = array<Struct_1, 2>();
    var_0 = Struct_3(abs(var_0.c.c.b - (-(-1i) & -var_0.a)), var_0.b, Struct_2(abs(~(~var_0.c.a)), !all(select(vec3<bool>(true, var_0.c.c.c.x, var_0.c.b), vec3<bool>(true, var_0.c.c.a, false), vec3<bool>(var_0.c.b, var_0.c.c.d, var_0.c.b))), var_0.c.c));
    let var_1 = 2147483647i >> 20460u;
    var var_2 = Struct_3(-45541i, floor(-vec2<f32>(546f - -320f, 1000f)), Struct_2(~(~vec3<u32>(686u, 4294967295u, var_0.c.a.x)), var_0.c.b, Struct_1(-1666f != max(var_0.b.x, -510f), ~(1i % 0i), vec2<bool>(true, 245f > -197f), var_0.c.b)));
    return vec3<u32>(10240u, u_input.a >> var_2.c.a.x, ~46992u);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(abs(func_3(abs(vec3<i32>(48729i, 1i, 2652i))) - (~vec3<u32>(1u, 0u, u_input.a) - ~vec3<u32>(u_input.a, u_input.a, 17330u))), !true, global0[~(~u_input.a) ^ 35867u]);
    var var_1 = Struct_2(~firstTrailingBit(select(max(vec3<u32>(38697u, 0u, u_input.a), vec3<u32>(u_input.a, 16475u, u_input.a)), vec3<u32>(var_0.a.x, u_input.a, 92441u), vec3<bool>(false, false, true))), !(var_0.b & var_0.b), Struct_1(var_0.b, -var_0.c.b * var_0.c.b, var_0.c.c, select(select(!true, var_0.c.a || var_0.c.d, var_0.b), false, any(!vec4<bool>(var_0.b, var_0.b, var_0.c.d, true)))));
    var var_2 = -((vec3<f32>(264f, 1892f * 475f, -1324f) - ((vec3<f32>(716f, global1[36980u], 184f) / vec3<f32>(global1[var_0.a.x], global1[var_0.a.x], global1[var_1.a.x])) / (vec3<f32>(global1[0u], 489f, 469f) / vec3<f32>(global1[var_0.a.x], global1[33742u], global1[4294967295u])))) + trunc(sign(vec3<f32>(1667f, 1313f, -1000f)) / -vec3<f32>(-229f, global1[4294967295u], global1[1u])));
    let var_3 = -(-547f);
    let var_4 = dot(vec2<u32>(var_0.a.x, 4294967295u >> 23314u) | reverseBits(vec2<u32>(var_0.a.x, 9106u)), ~(vec2<u32>(4294967295u, 18505u) ^ ~var_0.a.yy)) << select(~(var_1.a.x - 0u), u_input.a, select(any(!vec3<bool>(false, false, var_1.b)), var_0.c.d, var_0.a.x > max(39292u, var_1.a.x)));
    return exp2(global1[var_0.a.x >> firstTrailingBit(var_0.a.x)]);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(func_2(), 477f + sign(1693f - -global1[35597u]));
    var var_1 = 1u;
    var var_2 = Struct_3(-2147483647i | (clamp(max(31148i, -1i), 44462i >> u_input.a, ~45172i) * -16553i), abs(var_0), Struct_2(~(vec3<u32>(19836u, u_input.a, u_input.a) - vec3<u32>(1u, 28688u, 30758u)), all(!vec4<bool>(true, true, false, true)), global0[21709u]));
    let var_3 = -min(select(-vec4<f32>(global1[4294967295u], 670f, 636f, global1[27311u]), min(vec4<f32>(global1[u_input.a], var_2.b.x, 245f, -1091f), vec4<f32>(global1[u_input.a], var_2.b.x, var_0.x, var_0.x)), vec4<bool>(false, var_2.c.b, true, var_2.c.b)), -round(vec4<f32>(var_0.x, var_2.b.x, 1379f, var_0.x))) / (-vec4<f32>(1358f + var_0.x, -380f, -573f, abs(-1958f)) * ((ceil(vec4<f32>(global1[3767u], 604f, global1[0u], -1756f)) * -vec4<f32>(var_0.x, var_2.b.x, var_0.x, var_2.b.x)) - -vec4<f32>(158f, 594f, 447f, global1[1u])));
    var_2 = Struct_3(0i, -round((vec2<f32>(-564f, 1267f) + var_2.b) + var_2.b), Struct_2(vec3<u32>(var_2.c.a.x << 0u, 23116u, ~(20085u << 24129u)), var_2.c.c.c.x, Struct_1(var_2.c.b, dot(vec2<i32>(0i, var_2.a) % vec2<i32>(28542i, -47517i), clamp(vec2<i32>(var_2.a, 27544i), vec2<i32>(0i, var_2.a), vec2<i32>(var_2.c.c.b, -1i))), !(!vec2<bool>(true, var_2.c.c.a)), all(!var_2.c.c.c))));
    return Struct_1(true || true, var_2.c.c.b, var_2.c.c.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~vec3<u32>(u_input.a, 1u >> u_input.a, 36832u << 1u)), false, func_1());
    let var_1 = max(vec3<f32>(-global1[~dot(vec4<u32>(var_0.a.x, 1u, 0u, u_input.a), vec4<u32>(var_0.a.x, 0u, 1u, 1u))], ceil(exp2(-1212f * -294f)), -(-(-(-228f)))), vec3<f32>(1183f, -(-(-global1[0u])), 1000f));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_2 = var_0.a.x;
    let var_3 = any(select(select(!vec4<bool>(false, false, true, false), vec4<bool>(false, var_0.c.d, false, false), any(vec3<bool>(var_0.c.c.x, false, false))), !select(vec4<bool>(var_0.b, var_0.c.d, true, true), vec4<bool>(var_0.b, false, var_0.c.d, var_0.c.c.x), false), (u_input.a / u_input.a) > dot(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 7817u)))) | (!(!(1348f >= var_1.x)) | false);
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(var_0.c.b, 1i, var_0.c.b) / vec3<i32>(2147483647i, 26180i, 2147483647i), vec3<i32>(-(-31703i), -var_0.c.b, -24742i), var_0.c.d) ^ select(abs(vec3<i32>(var_0.c.b, -27594i, i32(-2147483648))), reverseBits(abs(vec3<i32>(var_0.c.b, var_0.c.b, var_0.c.b))), vec3<bool>(any(vec3<bool>(true, false, var_0.b)), false | false, var_0.b | var_3)), -var_0.c.b ^ min(-16812i, -(-var_0.c.b)), vec2<f32>(select(738f, var_1.x, true), global1[var_2]), vec4<f32>(min(select(-(-1270f), var_1.x - -899f, false), -(-(-1787f))), -(-391f), -1408f, 135f), sign(-1156f));
}

