// {"0:0":[234,27,7,195,182,26,241,86,126,233,162,141,37,100,119,99]}
// Seed: 2034759832274788813

struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = ~(select(arg_1.wy | arg_1.wz, vec2<u32>(u_input.b, 75155u) >> vec2<u32>(1u, 16138u), select(arg_0.c, vec2<bool>(arg_2.x, arg_2.x), arg_0.b)) % (arg_1.xy | ~vec2<u32>(79014u, 121019u))) ^ (reverseBits((vec2<u32>(44935u, u_input.b) % arg_1.yw) ^ vec2<u32>(u_input.b, u_input.b)) % (((vec2<u32>(1u, u_input.b) << vec2<u32>(u_input.b, u_input.b)) + ~arg_1.xz) ^ vec2<u32>(4294967295u % u_input.b, arg_1.x / 4294967295u)));
    var var_1 = vec3<u32>(abs(~clamp(max(41037u, 0u), min(28950u, 0u), 33164u)), arg_1.x, 47687u | (arg_1.x - ~0u));
    global0 = array<Struct_3, 22>();
    let var_2 = Struct_1(true, step(trunc(-(-(-1148f))), -287f), -209f, dot(vec2<u32>(var_1.x, ~(~arg_1.x)), arg_1.yw), (vec4<f32>(round(-1607f), -707f * -1000f, select(1996f, 1198f, false), sign(763f)) * max(vec4<f32>(851f, 358f, -420f, 727f) / vec4<f32>(-583f, 504f, -1677f, -939f), vec4<f32>(-1000f, -636f, 1763f, -1218f) - vec4<f32>(277f, -1000f, 1238f, 1012f))) * floor(vec4<f32>(-1253f, 174f, 384f, 1513f) * exp2(vec4<f32>(-498f, -578f, -595f, -857f))));
    global0 = array<Struct_3, 22>();
    return abs((max(5503i, ~1i) >> abs(33878u)) >> ~26080u);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = reverseBits(~(func_3(arg_3, vec4<u32>(u_input.b, u_input.b, 11233u, 72418u) | vec4<u32>(u_input.b, 46183u, u_input.b, u_input.b), vec4<bool>(arg_2, arg_2, arg_2, true)) % (max(u_input.a.x, arg_1.x) * (arg_3.a & arg_1.x))));
    var_0 = abs(-1i << ~abs(u_input.b | 0u));
    var var_1 = false;
    var var_2 = -(-(((vec4<f32>(-478f, -1424f, 1790f, arg_0) + vec4<f32>(1000f, arg_0, arg_0, arg_0)) + vec4<f32>(174f, arg_0, 745f, arg_0)) / -ceil(vec4<f32>(-272f, -380f, 305f, arg_0))));
    let var_3 = Struct_4(((21307i + reverseBits(arg_3.a)) + u_input.a.x) - (~1i >> 0u), true, vec2<bool>(!arg_2, u_input.b <= u_input.b));
    return Struct_2(-round(vec4<f32>(-arg_0, -340f, arg_0, arg_0 / arg_0)), -(-var_2.x + -(-973f)) * abs(ceil(var_2.x)), Struct_1(var_3.c.x, -(-min(arg_0, arg_0)), var_2.x + trunc(floor(var_2.x)), 0u, -(vec4<f32>(867f, -325f, -545f, 389f) + vec4<f32>(1584f, arg_0, arg_0, -1022f))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = ~vec3<u32>(arg_2.c.d / u_input.b, 23575u, arg_1.x + min(arg_2.c.d + 4294967295u, 1u));
    var_0 = abs(vec3<u32>(~firstLeadingBit(func_2(191f, vec4<i32>(u_input.a.x, 11881i, 0i, -23894i), true, Struct_4(1i, arg_2.c.a, arg_0)).c.d), var_0.x, 2318u));
    global0 = array<Struct_3, 22>();
    let var_1 = vec3<i32>(~min(-u_input.a.x, ~u_input.a.x), i32(-2147483648), reverseBits(u_input.a.x));
    var var_2 = clamp(i32(-2147483648), u_input.a.x, 58889i);
    return !(!(!true && arg_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = arg_0.e.xyz;
    let var_1 = vec2<i32>(~(~(~abs(i32(-2147483648)))), ~(~2147483647i));
    var var_2 = select(vec4<bool>(arg_0.a || !any(vec3<bool>(arg_0.a, true, arg_0.a)), true, all(select(!vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.a)), arg_0.a)), false), vec4<bool>(func_4(select(select(vec2<bool>(arg_0.a, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(arg_0.a, false), vec2<bool>(true, arg_0.a), vec2<bool>(true, false)), false), countOneBits(vec2<u32>(arg_0.d, arg_0.d)), func_2(-var_0.x, reverseBits(vec4<i32>(arg_1.x, u_input.a.x, -62217i, 16038i)), false, Struct_4(var_1.x, arg_0.a, vec2<bool>(false, arg_0.a)))), (arg_0.d << 1179u) < ~46857u, select(false, false, !true), arg_0.a), !(all(vec3<bool>(arg_0.a, true, arg_0.a)) != arg_0.a));
    let var_3 = arg_0.c;
    let var_4 = Struct_1(!arg_0.a, (1622f * ceil(arg_0.b + arg_0.e.x)) + arg_0.c, (arg_0.e.x + arg_0.b) / -trunc(var_3 / var_0.x), 0u, -(step(max(arg_0.e, vec4<f32>(var_0.x, -1458f, -286f, 1364f)), vec4<f32>(var_3, arg_0.b, arg_0.b, 694f)) / (trunc(vec4<f32>(1372f, 2792f, arg_0.c, -753f)) / -arg_0.e)));
    return Struct_4(countOneBits(dot(u_input.a * u_input.a, vec3<i32>(var_1.x, 1i, u_input.a.x) + u_input.a)), false, !var_2.yw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-641f, -round(-(-700f)));
    let var_1 = func_1(Struct_1(!(!(!false)), -1000f, ceil(var_0), 19935u, (vec4<f32>(var_0, var_0, var_0, var_0) + vec4<f32>(-109f, -366f, var_0, var_0)) * (round(vec4<f32>(892f, 1000f, 1684f, var_0)) + vec4<f32>(var_0, -1000f, var_0, 805f))), vec3<i32>(1i, ~(i32(-2147483648) % max(i32(-2147483648), -39362i)), -min(dot(u_input.a.yy, vec2<i32>(-1i, -31416i)), u_input.a.x)));
    var var_2 = global0[firstLeadingBit(u_input.b) % (~u_input.b | ~u_input.b)];
    let x = u_input.a;
    s_output = StorageBuffer(-(-(var_0 - var_0) - -1088f), var_2.d.e.xwy, -1061f);
}

