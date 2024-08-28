// {"0:0":[136,191,60,86,226,57,125,107,111,54,238,217,130,200,150,119]}
// Seed: 4783499713972613541

struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: array<bool, 6> = array<bool, 6>(false, false, false, true, true, true);

var<private> global3: array<u32, 22> = array<u32, 22>(31621u, 1u, 39032u, 11530u, 46553u, 0u, 59815u, 1u, 0u, 8311u, 4294967295u, 35517u, 8558u, 0u, 1u, 0u, 9063u, 2132u, 4294967295u, 91013u, 89781u, 16264u);

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(-step(607f, -162f) / -224f, -(-min(-805f, 662f))), Struct_1(-146f, 1000f), vec2<u32>(global3[14449u], 1u), vec4<bool>(global2[dot(~vec2<u32>(global3[global3[0u]], global3[4294967295u]) - ~vec2<u32>(1u, global3[global3[global3[4294967295u]]]), firstLeadingBit(vec2<u32>(global3[21020u], global3[13416u])) & vec2<u32>(0u, global3[global3[global3[global3[global3[0u]]]]]))], !(!false), false, global2[(1u >> (global3[64233u] << 88024u)) << (~global3[global3[22106u]] << 42399u)]));
    var var_1 = var_0;
    var var_2 = ~(~(~vec3<u32>(global3[var_1.c.x], var_1.c.x, 84416u)) | abs(vec3<u32>(4294967295u, var_1.c.x, 1u) + vec3<u32>(4294967295u, 0u, global3[var_0.c.x]))) + ~abs(~(vec3<u32>(var_0.c.x, var_0.c.x, 4294967295u) / vec3<u32>(4294967295u, 1u, var_0.c.x)));
    global2 = array<bool, 6>();
    var var_3 = vec2<u32>(var_0.c.x, dot(vec3<u32>(59198u, var_2.x & (4294967295u & var_1.c.x), var_2.x), abs(min(vec3<u32>(var_1.c.x, 1u, var_1.c.x), vec3<u32>(var_1.c.x, var_2.x, var_0.c.x)))));
    return trunc(-(-(-970f + -607f))) * 1899f;
}

fn func_2() -> vec4<u32> {
    global1 = array<vec2<bool>, 3>();
    let var_0 = Struct_2(Struct_1(sign(-(-(-1374f))), -(func_3(u_input.c) + -801f)), Struct_1(-1000f, floor(-(-203f))), vec2<u32>(global3[~global3[global3[~4294967295u]]], 30313u), vec4<bool>(true, false, false, -abs(492f) <= -(1315f * -1000f)));
    global3 = array<u32, 22>();
    return ~(vec4<u32>(countOneBits(23905u), ~var_0.c.x, dot(var_0.c, vec2<u32>(var_0.c.x, 58348u)) >> (0u - 1u), var_0.c.x % global3[global3[41215u]]) / ~firstLeadingBit(vec4<u32>(30962u, var_0.c.x, 67264u, 4294967295u) ^ vec4<u32>(global3[0u], var_0.c.x, global3[21367u], 32674u)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = func_2() & (abs(vec4<u32>(global3[32385u] | 1u, dot(arg_2, vec3<u32>(global3[0u], 25037u, arg_2.x)), 43147u, global3[global3[53215u]] << arg_2.x)) << max(max(vec4<u32>(4294967295u, global3[global3[4294967295u]], 10428u, 0u), max(vec4<u32>(arg_2.x, 932u, arg_2.x, 4294967295u), vec4<u32>(global3[arg_2.x], arg_2.x, arg_2.x, global3[4294967295u]))), ~(vec4<u32>(global3[arg_2.x], 1u, 38563u, global3[41686u]) + vec4<u32>(global3[arg_2.x], 53593u, arg_2.x, global3[global3[arg_2.x]]))));
    let var_1 = Struct_2(Struct_1(-(arg_1.x * 1476f) - func_3(u_input.c), -2170f), Struct_1(arg_1.x / -588f, -528f + -(-780f)), vec2<u32>(~((4294967295u << 0u) << countOneBits(var_0.x)), var_0.x), select(select(select(!vec4<bool>(arg_0, global2[arg_2.x], global2[arg_2.x], arg_0), !vec4<bool>(global2[arg_2.x], true, false, false), vec4<bool>(arg_0, arg_0, false, global2[var_0.x])), select(select(vec4<bool>(false, global2[4294967295u], global2[var_0.x], false), vec4<bool>(arg_0, true, true, true), false), vec4<bool>(true, global2[global3[global3[13073u]]], true, global2[arg_2.x]), !vec4<bool>(false, arg_0, arg_0, false)), vec4<bool>(!false, false, false, select(arg_0, global2[0u], true))), vec4<bool>(!(1u >= var_0.x), arg_0, !(arg_2.x < var_0.x), global3[0u] <= ~arg_2.x), arg_0));
    global2 = array<bool, 6>();
    global2 = array<bool, 6>();
    return ~(var_0.xxw >> vec3<u32>(~firstLeadingBit(var_1.c.x), arg_2.x, dot(vec4<u32>(11118u, global3[var_0.x], 194u, global3[28036u]) >> vec4<u32>(arg_2.x, global3[global3[global3[var_1.c.x]]], var_1.c.x, arg_2.x), ~vec4<u32>(var_1.c.x, arg_2.x, global3[21279u], 18111u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -190f;
    global3 = array<u32, 22>();
    let var_1 = min(-(var_0 - -(-var_0)), -2271f);
    let var_2 = ~u_input.c;
    var var_3 = ~(select(vec3<i32>(0i, var_2.x, 2147483647i), vec3<i32>(-5746i, u_input.a, u_input.c.x) << vec3<u32>(global3[60567u], global3[global3[591u]], global3[global3[global3[1u]]]), vec3<bool>(global2[6816u], global2[27721u], false)) >> clamp(~vec3<u32>(global3[global3[15888u]], 20553u, 63474u), firstLeadingBit(vec3<u32>(global3[0u], global3[global3[34525u]], global3[global3[global3[1u]]])), func_1(global2[global3[99656u]], vec3<f32>(var_0, 1478f, var_0), vec3<u32>(42812u, global3[4294967295u], global3[global3[global3[global3[global3[global3[global3[4294967295u]]]]]]])))) + (-firstTrailingBit(clamp(vec3<i32>(var_2.x, 16016i, -8634i), vec3<i32>(var_2.x, u_input.a, u_input.c.x), vec3<i32>(u_input.b, 17029i, -2728i))) - vec3<i32>(firstLeadingBit(var_2.x % -44724i), u_input.b, firstTrailingBit(u_input.a)));
    var var_4 = ~select(((0i - u_input.a) + (-1i / -9731i)) | 2147483647i, ~u_input.a, var_1 >= -floor(var_1));
    let var_5 = vec3<i32>(-9882i, clamp((var_3.x / dot(vec2<i32>(2147483647i, var_2.x), vec2<i32>(u_input.a, i32(-2147483648)))) * var_2.x, -(-30179i / u_input.c.x) << ~(~4294967295u), firstTrailingBit(-121i)), -countOneBits(~var_3.x));
    var var_6 = vec2<i32>(28512i, u_input.a);
    let var_7 = 19904u;
    let x = u_input.a;
    s_output = StorageBuffer(-(-(var_1 + (384f / -431f))), vec4<f32>(-var_0, -var_1, func_3(-var_5.zx), var_1), -561f);
}

