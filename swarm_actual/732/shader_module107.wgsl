// {"0:0":[107,221,123,142,75,31,108,212,191,167,19,107,208,225,11,105,195,201,172,115,78,126,153,96,41,205,118,236,9,222,117,213,22,28,253,167,237,28,176,171,109,4,99,19,185,203,177,151]}
// Seed: 9457677848926258210

struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(0i, 1i, 1i), vec3<f32>(-520f, 846f, -1157f), vec3<bool>(true, false, true), vec3<bool>(true, true, false), 0i), vec4<i32>(11132i, -15841i, 0i, -1i), 10497u, 6414i);

fn func_1() -> f32 {
    return -abs(global1.a.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> bool {
    let var_0 = abs(-(global1.a.b.x / (global1.a.b.x * global1.a.b.x)));
    global1 = Struct_2(global1.a, global1.b * -vec4<i32>(select(u_input.a, global1.a.e, true), ~u_input.a, select(u_input.a, 0i, false), ~56725i), ~((~9864u & ~0u) ^ (1u * min(u_input.d, 9546u))), i32(-2147483648));
    global0 = 1u;
    let var_1 = global1.a.d;
    var var_2 = -global1.a.a;
    return !((~(u_input.b.x >> global1.c) >> ~30891u) <= arg_0.x);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> u32 {
    global1 = arg_1;
    global0 = 35618u;
    let var_0 = 26459i;
    let var_1 = u_input.b;
    var var_2 = Struct_1(vec3<i32>(-(-arg_2.e), 2338i, countOneBits(-(2147483647i - global1.a.e))), vec3<f32>(arg_1.a.b.x / trunc(exp2(2640f)), -max(floor(arg_2.b.x), arg_2.b.x + -1000f), -1522f * abs(747f)), !global1.a.c, !vec3<bool>(arg_1.a.c.x && true, !arg_0, true), -u_input.a);
    return ~dot(vec3<u32>(var_1.x, arg_1.c, ~(global1.c + 4294967295u)), vec3<u32>(1u, select(~24433u, u_input.b.x, func_2(vec2<u32>(4294967295u, u_input.d), global1.d)), firstTrailingBit(arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(~vec3<i32>(dot(vec4<i32>(75196i, u_input.a, 1i, -33273i), global1.b), global1.b.x, 0i), vec3<f32>(func_1(), global1.a.b.x, -(global1.a.b.x / -2678f)), !(!(!vec3<bool>(global1.a.d.x, global1.a.d.x, false))), vec3<bool>(false, func_2(~vec2<u32>(u_input.c, 1u), global1.b.x), global1.a.d.x), -u_input.a), global1.b, u_input.d - ((~4294967295u & ~u_input.d) >> global1.c), 0i | u_input.a);
    let var_0 = -622f - select(abs(sign(round(global1.a.b.x))), 1112f - -(-1000f * 1569f), !true);
    global0 = 1491u;
    let var_1 = !select(vec4<bool>(true, !any(vec2<bool>(global1.a.d.x, false)), global1.a.c.x, 1u == 61287u), !select(vec4<bool>(global1.a.c.x, true, global1.a.c.x, global1.a.d.x), !vec4<bool>(global1.a.c.x, global1.a.d.x, true, true), false), !vec4<bool>(var_0 > global1.a.b.x, false, any(vec4<bool>(global1.a.d.x, global1.a.c.x, true, false)), global1.a.c.x));
    let var_2 = var_1.x;
    global0 = (1u ^ ~1u) & (u_input.c - (global1.c * ~(u_input.d ^ 17478u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_3(true != true, Struct_2(global1.a, vec4<i32>(2147483647i, 15279i, 7550i, -1i), 0u, u_input.a), Struct_1(global1.b.xyz, global1.a.b, var_1.wxx, global1.a.d, global1.b.x), 12017u << u_input.b.x)), max(abs(select(u_input.b, u_input.b, true)), vec4<u32>(dot(vec3<u32>(global1.c, global1.c, 91459u), vec3<u32>(4294967295u, 0u, 109323u)), min(1u, 1u), clamp(global1.c, 2928u, global1.c), global1.c)) / ~u_input.b, vec2<u32>(dot(u_input.b, firstLeadingBit(u_input.b) / ~vec4<u32>(global1.c, global1.c, u_input.c, 46107u)), dot(~vec2<u32>(98461u, u_input.b.x), ~u_input.b.xx) & (u_input.b.x / 1u)));
}

