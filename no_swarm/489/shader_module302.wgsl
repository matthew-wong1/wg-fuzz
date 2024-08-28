// {"0:0":[122,77,207,89,170,25,193,243,253,202,30,217,110,210,239,211,62,59,130,161,200,148,175,72]}
// Seed: 2424053550644676232

struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<bool, 31>;

fn func_3() -> bool {
    var var_0 = vec4<bool>((false | !(!global1[9180u])) || (round(-238f) == 491f), true, clamp(abs(u_input.b), ~4294967295u, (4294967295u & 1u) - 2711u) == max(7011u, ~reverseBits(3871u)), all(!(!vec3<bool>(global1[u_input.b], false, global1[u_input.d.x]))));
    var var_1 = vec4<u32>(12281u, u_input.d.x, dot(firstLeadingBit(firstLeadingBit(reverseBits(vec4<u32>(55008u, 57228u, 4294967295u, 1u)))), ~min(firstTrailingBit(vec4<u32>(1u, 9500u, u_input.d.x, u_input.b)), vec4<u32>(84690u, 18964u, u_input.b, global0[33376u]))), ~(~select(~1u, 5424u - global0[u_input.b], any(vec3<bool>(true, var_0.x, global1[global0[global0[u_input.d.x]]])))));
    var var_2 = ~vec4<u32>(~select(0u, var_1.x << 4294967295u, 0i > 0i), dot(~vec4<u32>(global0[var_1.x], u_input.d.x, var_1.x, var_1.x) | (vec4<u32>(4294967295u, 0u, global0[0u], 1u) | vec4<u32>(u_input.d.x, 1u, 1u, 32465u)), select(abs(vec4<u32>(var_1.x, 69218u, 0u, var_1.x)), max(vec4<u32>(u_input.d.x, var_1.x, 1u, var_1.x), vec4<u32>(global0[u_input.b], u_input.b, 13230u, u_input.d.x)), true)), 309u, 1u);
    global0 = array<u32, 1>();
    var_2 = vec4<u32>(4294967295u + var_2.x, u_input.d.x, 48907u, abs(u_input.d.x >> var_2.x));
    return any(!select(!vec4<bool>(false, false, false, var_0.x), vec4<bool>(global1[~4294967295u], 1143f > -2295f, all(vec4<bool>(var_0.x, true, true, true)), !false), !(!vec4<bool>(global1[u_input.d.x], global1[39677u], false, false))));
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_1(!vec2<bool>(false, global1[reverseBits(u_input.b)]), -(-2645f) * floor(-108f), !vec2<bool>(global1[~(~u_input.d.x)], global1[(u_input.b & 1u) * (26069u ^ global0[u_input.b])]));
    global0 = array<u32, 1>();
    let var_1 = select(vec4<bool>(func_3(), any(select(select(vec4<bool>(false, false, var_0.a.x, global1[2087u]), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global1[60065u]), vec4<bool>(var_0.c.x, true, global1[u_input.b], arg_0.x)), vec4<bool>(true, global1[global0[global0[29227u]]], false, true), !global1[29301u])), !all(var_0.c), !(abs(u_input.c) > 31274i)), vec4<bool>(!false, !(u_input.a < ~55011i), global1[~min(82773u, abs(global0[4294967295u]))], u_input.d.x < global0[countOneBits(dot(vec3<u32>(4294967295u, global0[0u], 4294967295u), vec3<u32>(global0[u_input.d.x], u_input.b, global0[0u])))]), vec4<bool>(arg_0.x, !(!true), !(!select(false, false, false)), !true));
    let var_2 = Struct_1(vec2<bool>(-floor(315f) >= step(ceil(856f), var_0.b), all(select(!vec4<bool>(var_1.x, var_1.x, false, var_0.a.x), !var_1, vec4<bool>(false, false, arg_0.x, var_0.a.x)))), -(681f - trunc(-148f)) + (-(-616f) + min(147f, sign(var_0.b))), arg_0);
    let var_3 = u_input.a;
    return select(select(var_0.a, var_0.a, vec2<bool>(true, !(var_2.b >= 243f))), var_1.zy, !var_0.c);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(select(select(func_2(select(vec2<bool>(false, global1[global0[global0[37738u]]]), vec2<bool>(false, true), global1[67924u])), vec2<bool>(!global1[u_input.b], false), false), !vec2<bool>(!false, !global1[1u]), !func_2(func_2(vec2<bool>(global1[54197u], global1[1u])))), -(-min(152f / 471f, -(-1000f))), select(select(select(func_2(vec2<bool>(true, global1[12746u])), vec2<bool>(global1[u_input.b], true), !vec2<bool>(global1[u_input.b], global1[global0[u_input.b]])), !vec2<bool>(false, global1[global0[global0[1u]]]), !(!vec2<bool>(false, true))), !select(vec2<bool>(true, global1[u_input.b]), vec2<bool>(global1[u_input.d.x], false), true), !(!false)));
    var var_1 = Struct_2(false, select(var_0.c, var_0.c, select(select(!var_0.a, var_0.c, var_0.c), func_2(vec2<bool>(var_0.c.x, true)), false)), Struct_1(!(!var_0.a), var_0.b, vec2<bool>(firstLeadingBit(global0[global0[u_input.d.x]]) <= 41347u, !var_0.c.x)), select(vec3<bool>(!(!global1[4294967295u]), (2147483647i - u_input.c) >= 0i, select(true, all(var_0.a), false)), vec3<bool>((var_0.b - var_0.b) >= var_0.b, false, var_0.c.x | global1[abs(4294967295u)]), vec3<bool>(false, true, ~55670u > dot(vec2<u32>(0u, 41989u), u_input.d))), Struct_1(select(func_2(!vec2<bool>(false, global1[u_input.d.x])), !(!var_0.c), vec2<bool>(all(vec3<bool>(true, global1[2087u], var_0.c.x)), var_0.c.x)), var_0.b, vec2<bool>(false, !(global1[u_input.b] | global1[u_input.b]))));
    var var_2 = select(true || var_1.e.c.x, all(vec4<bool>(false, var_1.b.x, all(select(vec2<bool>(var_1.e.a.x, global1[global0[global0[global0[global0[0u]]]]]), var_1.c.a, global1[global0[4294967295u]])), all(select(vec3<bool>(var_1.d.x, global1[26542u], false), vec3<bool>(true, global1[global0[81640u]], var_1.d.x), var_1.d)))), !var_0.c.x);
    var var_3 = select(firstLeadingBit(~(vec3<u32>(86570u, u_input.b, global0[1u]) | vec3<u32>(16976u, global0[4294967295u], 1u)) % ~vec3<u32>(u_input.b, global0[u_input.b], 14083u)), ~vec3<u32>(global0[global0[32284u]] % u_input.d.x, global0[4294967295u + global0[42849u]], u_input.b) | (firstLeadingBit(~vec3<u32>(global0[2938u], global0[41928u], 22186u)) / ((vec3<u32>(43984u, 1u, 0u) + vec3<u32>(u_input.d.x, 29384u, 133837u)) | (vec3<u32>(0u, u_input.d.x, global0[4294967295u]) >> vec3<u32>(0u, u_input.b, 0u)))), var_0.c.x);
    var var_4 = dot(vec3<u32>(27568u, 4294967295u, abs(~52335u / min(18966u, var_3.x))), ~(~(~(~vec3<u32>(12691u, global0[u_input.b], 37411u)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[u_input.b + func_1()];
    let var_1 = 1u;
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    let var_2 = ~(~select(~(~vec2<u32>(399u, 39097u)), u_input.d, any(!vec2<bool>(false, global1[u_input.d.x]))));
    var_0 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

