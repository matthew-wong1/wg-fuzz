// {"0:0":[14,119,96,92,159,73,3,226,231,126,66,232,75,16,111,199,211,143,35,232,222,51,39,6,129,137,182,118,103,40,49,226,194,31,32,105,221,169,69,215,245,180,171,134,132,78,6,232]}
// Seed: 1874132111223594581

struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, true, true, true, false, false, true, true, false, false);

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = vec4<f32>(-192f, 2002f * -(-143f), 835f / -211f, 1422f);
    let var_1 = Struct_1(var_0.xw, arg_0.x == true, countOneBits(~(arg_1.xy ^ abs(arg_1.xy))), vec2<f32>(-(-(-724f * -931f)), var_0.x));
    var var_2 = var_1;
    var var_3 = var_1.c;
    let var_4 = var_1;
    return ~(~arg_1.x << ((0u - arg_1.x) >> ~arg_1.x)) << var_1.c.x;
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global0 = array<bool, 11>();
    var var_0 = vec2<bool>(true | false, global0[~47444u]);
    var_0 = select(select(vec2<bool>(139055u < 76570u, !any(vec2<bool>(false, global0[4294967295u]))), !vec2<bool>(true, !true), select(any(!vec3<bool>(false, true, true)), arg_0, true)), vec2<bool>(!var_0.x & false, global0[78429u]), any(select(vec3<bool>(true && global0[u_input.d], arg_0, !true), vec3<bool>(!true, all(vec4<bool>(var_0.x, global0[u_input.a], true, false)), u_input.e != -2598i), any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, arg_0, true), arg_0)))));
    var_0 = vec2<bool>(!(30634i < -1i), all(vec2<bool>(!arg_0, true)) & (false || arg_0));
    var_0 = select(vec2<bool>(true, !any(!vec2<bool>(true, true))), vec2<bool>(u_input.c == 1i, all(!(!vec4<bool>(true, var_0.x, true, global0[u_input.a])))), !(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(var_0.x, false), global0[u_input.d]))));
    return u_input.b.zw;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<i32>(dot(vec2<i32>(0i, u_input.e % u_input.c), func_3(!global0[1u])) >> (arg_0 % (firstTrailingBit(22109u) << (44044u ^ 4294967295u))), ~(~(-17150i)), 0i);
    let var_1 = -(1000f - -525f);
    let var_2 = Struct_1(-vec2<f32>(-max(var_1, 1307f), abs(max(var_1, 647f))), select(!all(select(vec2<bool>(global0[u_input.d], false), vec2<bool>(global0[11017u], true), global0[arg_1.x])), !(!all(vec2<bool>(false, false))), !((true & true) && global0[dot(vec3<u32>(0u, arg_0, 0u), vec3<u32>(arg_1.x, 0u, 93521u))])), ~(~firstTrailingBit(vec2<u32>(19348u, arg_1.x) << arg_1)), (((vec2<f32>(var_1, var_1) * vec2<f32>(758f, 1076f)) - select(vec2<f32>(775f, var_1), vec2<f32>(var_1, var_1), false)) * ((vec2<f32>(1360f, var_1) * vec2<f32>(-1228f, 1968f)) / -vec2<f32>(-822f, var_1))) + vec2<f32>(round(-(-1000f)), var_1));
    let var_3 = ~min(func_3(!false).x, 41189i);
    var var_4 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(0u, select(~vec2<u32>(~1u, 20928u), vec2<u32>(4294967295u, func_1(select(vec3<bool>(false, global0[0u], true), vec3<bool>(global0[1765u], true, global0[u_input.d]), global0[4294967295u]), ~vec4<u32>(0u, 34295u, u_input.a, u_input.d), !vec4<bool>(false, false, false, global0[u_input.a]))), select(select(vec2<bool>(global0[27160u], global0[u_input.a]), select(vec2<bool>(global0[8918u], global0[u_input.a]), vec2<bool>(false, global0[u_input.a]), global0[u_input.a]), global0[4294967295u]), vec2<bool>(any(vec4<bool>(false, false, false, global0[u_input.a])), any(vec3<bool>(global0[u_input.a], global0[64313u], false))), true)));
    var var_1 = func_2(0u, ~var_0.c);
    let var_2 = var_1.b;
    let var_3 = 17823u;
    var_1 = Struct_1(trunc(round(vec2<f32>(-968f, -var_0.d.x))), var_1.b, vec2<u32>(func_1(!select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(global0[73494u], false, global0[0u]), global0[u_input.a]), ~vec4<u32>(1u, var_3, var_3, 14755u) / ~vec4<u32>(38335u, 15716u, 1u, 0u), vec4<bool>(!var_0.b, all(vec4<bool>(true, true, var_0.b, var_0.b)), !var_0.b, global0[var_1.c.x] == true)), dot(abs(vec4<u32>(4294967295u, 73054u, 1u, var_3)), ~(~vec4<u32>(var_3, u_input.a, var_3, 94972u)))), max(vec2<f32>(floor(1020f), sign(var_1.d.x) + 644f), var_1.d));
    var_0 = func_2(32206u >> u_input.d, var_0.c);
    var var_4 = func_2(~(abs(clamp(1u, 27551u, 4294967295u)) / u_input.a), ~var_1.c);
    let var_5 = u_input.b.xzy;
    var_4 = func_2(32044u, countOneBits((var_0.c << min(vec2<u32>(10949u, var_1.c.x), var_1.c)) ^ (min(var_0.c, var_0.c) / var_4.c)));
    let x = u_input.a;
    s_output = StorageBuffer((var_4.c.x + firstLeadingBit(var_3)) - ~15131u);
}

