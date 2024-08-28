// {"0:0":[175,112,210,143,12,124,106,154,57,171,206,59,82,195,93,9,126,9,185,152,122,104,96,163,7,206,178,218,134,49,62,138,101,186,138,215,175,38,43,139,78,55,182,96,146,110,5,65]}
// Seed: 17887376545180991964

struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, true, true, false, true, true, true, false, true, false, true, false, false, true, true, false, true, false, false, true);

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(~global0[~55784u]);
    let var_1 = Struct_2(Struct_1(~vec3<u32>(0u, var_0.a.x, u_input.b.x) | ((var_0.a & vec3<u32>(0u, 17127u, var_0.a.x)) | vec3<u32>(38697u, 40488u, 86712u))), Struct_1(vec3<u32>(u_input.c, var_0.a.x, ~dot(u_input.b, vec4<u32>(4294967295u, var_0.a.x, 4294967295u, u_input.c)))), vec2<f32>(-(-(-1000f) * trunc(2036f)), select(-770f, -(-(-363f)), global1[~var_0.a.x])));
    var var_2 = -vec3<f32>(-1165f - -(-838f + 1920f), min(-var_1.c.x, 2486f / var_1.c.x) / (max(var_1.c.x, var_1.c.x) + -1000f), -((-356f / var_1.c.x) - floor(var_1.c.x)));
    global1 = array<bool, 21>();
    return !vec3<bool>(all(vec2<bool>(!true, !global1[0u])), any(!select(vec4<bool>(false, false, true, global1[u_input.b.x]), vec4<bool>(global1[1u], global1[32541u], global1[4294967295u], true), vec4<bool>(global1[0u], true, global1[u_input.c], false))), global1[1u]);
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = Struct_3(trunc((vec2<f32>(-989f, -1008f) - vec2<f32>(-912f, -256f)) - exp2(vec2<f32>(-1781f, 905f))) + sign(-vec2<f32>(1000f, 192f) + (vec2<f32>(-723f, -1112f) - vec2<f32>(851f, 1163f))), round(1992f), -(~(~u_input.a.x)));
    var var_2 = !vec3<bool>(all(vec4<bool>(all(arg_0), global1[~105063u], global1[4294967295u], false)), false, arg_0.x || any(func_3()));
    var var_3 = max(u_input.b.xyw, select(~(global0[~u_input.c] + vec3<u32>(1u, 4294967295u, 51854u)), ~(~global0[u_input.c]), vec3<bool>(any(!arg_0.xxx), !arg_0.x, !all(vec3<bool>(arg_0.x, false, false)))));
    let var_4 = Struct_1(global0[~(u_input.c & countOneBits(var_3.x))]);
    return -var_1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3((vec2<f32>(-1577f * -473f, trunc(630f)) / func_2(vec4<bool>(false, global1[u_input.b.x], global1[46477u], false))) / (((vec2<f32>(-1000f, 1000f) * vec2<f32>(1779f, 410f)) + -vec2<f32>(-1795f, 160f)) - -exp2(vec2<f32>(-3183f, 1550f))), -(-(-(-488f))) - -328f, firstLeadingBit(-u_input.a.x));
    global1 = array<bool, 21>();
    let var_1 = !select(vec2<bool>(!(4294967295u > 0u), true), !select(vec2<bool>(global1[u_input.b.x], true), !vec2<bool>(false, true), select(vec2<bool>(true, global1[u_input.b.x]), vec2<bool>(global1[22195u], true), global1[1u])), !all(!vec3<bool>(false, false, false)));
    var var_2 = vec2<bool>(!global1[u_input.c - (u_input.b.x & 1u)], any(vec4<bool>(-53843i > -65614i, all(!vec4<bool>(false, false, false, false)), !(var_1.x && global1[17391u]), true)));
    let var_3 = !(!(!select(!vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(global1[1u], false, true, global1[4294967295u]), var_1.x)));
    return Struct_1(global0[90314u]);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_3(vec2<f32>(1398f, floor(func_2(select(vec4<bool>(global1[5844u], true, global1[arg_0.x], true), vec4<bool>(true, true, arg_2.x, arg_2.x), arg_2.x)).x)), -(-1409f), ~u_input.a.x);
    global1 = array<bool, 21>();
    let var_1 = select(func_3().x, all(!vec2<bool>(arg_2.x, !global1[arg_0.x])), var_0.b == var_0.a.x);
    global0 = array<vec3<u32>, 2>();
    return -(sign(-var_0.a) * (-vec2<f32>(var_0.b, -1000f) * ceil(vec2<f32>(1105f, -167f)))) / func_2(select(!select(vec4<bool>(true, global1[0u], true, false), vec4<bool>(true, true, arg_2.x, false), vec4<bool>(false, global1[4294967295u], true, global1[arg_1.a.x])), vec4<bool>(true, var_0.b >= -398f, false, var_1), global1[4294967295u]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b, func_1(), vec3<bool>(all(vec2<bool>(global1[3611u], false)), global1[u_input.b.x], func_3().x));
    var var_1 = !select(vec2<bool>(false, global1[~(~74207u)]), !vec2<bool>(global1[4294967295u + u_input.b.x], any(vec2<bool>(global1[u_input.c], global1[23773u]))), !(!(!vec2<bool>(true, false))));
    let var_2 = vec4<bool>(!(step(var_0.x * var_0.x, var_0.x) < min(exp2(var_0.x), -var_0.x)), var_1.x, dot(min(u_input.b, vec4<u32>(0u, u_input.c, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c) % (vec4<u32>(0u, u_input.b.x, 73484u, u_input.c) * vec4<u32>(0u, u_input.c, 33952u, u_input.b.x))) > 72927u, !(((var_0.x - -605f) / -531f) != ((var_0.x * -662f) / (194f - -537f))));
    let var_3 = round(559f);
    let var_4 = var_2.xx;
    let var_5 = u_input.a.x + -(~(30113i ^ u_input.a.x) / ~(-u_input.a.x));
    global1 = array<bool, 21>();
    let var_6 = vec4<bool>(false, var_4.x, true, true & true);
    let x = u_input.a;
    s_output = StorageBuffer(-(-(var_0.x - var_0.x)) + -((-204f * -250f) - -1312f), u_input.b.x >> u_input.b.x, vec2<i32>(var_5, ~(-13593i)));
}

