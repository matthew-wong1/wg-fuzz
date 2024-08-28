// {"0:0":[240,52,248,165,251,118,214,41]}
// Seed: 16349922851846333747

struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(667f, -856f), vec2<f32>(-719f, 1213f), vec2<f32>(1575f, 1278f), vec2<f32>(-750f, -1401f), vec2<f32>(-977f, 1291f), vec2<f32>(-475f, -845f), vec2<f32>(-150f, -1887f), vec2<f32>(160f, 961f), vec2<f32>(-1000f, -1000f), vec2<f32>(-1000f, 696f), vec2<f32>(-257f, 277f), vec2<f32>(-448f, 115f), vec2<f32>(-178f, -812f), vec2<f32>(-959f, 1021f), vec2<f32>(630f, -1287f), vec2<f32>(-634f, 728f), vec2<f32>(-1000f, 946f), vec2<f32>(-1000f, 162f), vec2<f32>(672f, -377f), vec2<f32>(467f, -117f), vec2<f32>(1000f, -792f), vec2<f32>(-307f, 2309f), vec2<f32>(-1816f, 1202f), vec2<f32>(654f, -1474f), vec2<f32>(-1600f, -273f), vec2<f32>(208f, 416f), vec2<f32>(-1000f, 281f), vec2<f32>(2092f, 391f), vec2<f32>(-443f, -1000f), vec2<f32>(524f, -1770f), vec2<f32>(-1711f, -2494f));

fn func_2(arg_0: Struct_3, arg_1: f32) -> bool {
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = -step(vec2<f32>(-arg_1.b.a, -(-1000f)), -(-vec2<f32>(arg_1.e.a, -1500f)) + vec2<f32>(-(-586f), arg_1.e.a));
    let var_1 = round(var_0) * (var_0 / (vec2<f32>(-1059f, min(2689f, 1000f)) * var_0));
    return Struct_1(-717f);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(-(-(-829f)));
    global0 = array<bool, 3>();
    let var_1 = -(vec3<i32>(2147483647i, u_input.b, u_input.b) & ~countOneBits(vec3<i32>(u_input.b, 16217i, u_input.a)));
    let var_2 = Struct_2(-214f, func_3(vec4<bool>(global0[9018u], !func_2(Struct_3(true, global0[33749u], vec3<bool>(true, true, global0[4294967295u]), global0[4773u], Struct_2(var_0.a, Struct_1(-1000f), var_1.x, var_0.a, Struct_1(1450f))), var_0.a), global0[dot(vec4<u32>(4294967295u, 12530u, 4294967295u, 18425u), vec4<u32>(18434u, 24659u, 8219u, 38960u))], true), Struct_2(var_0.a, Struct_1(var_0.a), ~abs(6145i), -(var_0.a - 257f), Struct_1(max(var_0.a, 260f))), ~(vec2<u32>(0u, 4294967295u) * (vec2<u32>(60856u, 63020u) >> vec2<u32>(4294967295u, 4294967295u)))), -dot((vec2<i32>(var_1.x, 3392i) << vec2<u32>(0u, 0u)) * (var_1.xy | var_1.yx), (var_1.xz | var_1.xx) - var_1.zz), var_0.a, Struct_1(761f));
    var var_3 = Struct_3(!(countOneBits(44918u ^ 50163u) >= ((1u / 6409u) ^ 4294967295u)), !global0[0u], select(select(vec3<bool>(select(global0[30730u], true, global0[0u]), !false, global0[clamp(0u, 4294967295u, 4294967295u)]), !(!vec3<bool>(false, false, true)), true), select(select(select(vec3<bool>(true, global0[4294967295u], false), vec3<bool>(global0[0u], global0[13857u], true), vec3<bool>(global0[10957u], global0[4294967295u], false)), select(vec3<bool>(global0[0u], global0[10312u], global0[4294967295u]), vec3<bool>(false, global0[0u], global0[112216u]), vec3<bool>(global0[51472u], false, false)), select(global0[12942u], global0[1u], false)), !vec3<bool>(global0[13775u], false, global0[19589u]), !vec3<bool>(true, global0[29770u], global0[14492u])), false), dot(select(vec2<u32>(0u, 17288u), vec2<u32>(4294967295u, 50538u), true) % vec2<u32>(67622u, 15352u), ~vec2<u32>(4294967295u, 0u) >> (vec2<u32>(1u, 1u) >> vec2<u32>(85967u, 4294967295u))) == dot(~vec2<u32>(1u, 4294967295u), ~(~vec2<u32>(0u, 7259u))), Struct_2(981f - var_2.a, func_3(vec4<bool>(global0[~17707u], global0[reverseBits(0u)], false, global0[54063u * 4294967295u]), Struct_2(var_2.d + var_2.d, Struct_1(-1000f), abs(-14122i), var_2.d / var_0.a, Struct_1(var_0.a)), vec2<u32>(108239u >> 32795u, ~1u)), var_1.x, var_0.a * var_2.a, var_2.e));
    return ((0u - (~11999u * 51612u)) >> (dot(abs(vec3<u32>(13495u, 0u, 9237u)), vec3<u32>(4294967295u, 28246u, 6028u) >> vec3<u32>(0u, 44239u, 1u)) | ~(~34010u))) % 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 31>();
    let var_0 = vec3<bool>(!(select(func_1(), 1u, true) >= firstTrailingBit(firstTrailingBit(0u))), all(vec3<bool>(global0[(1u | 0u) + 19847u], 1u <= 46157u, !global0[0u] & true)), !(countOneBits(-(-22344i)) > firstTrailingBit(2147483647i)));
    global0 = array<bool, 3>();
    var var_1 = select(vec4<bool>(!func_2(Struct_3(false, false, var_0, var_0.x, Struct_2(1175f, Struct_1(223f), 21585i, 1000f, Struct_1(136f))), 561f / -419f), !true, any(select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), false)), global0[9017u]), select(!vec4<bool>(true, all(vec3<bool>(false, var_0.x, true)), !global0[305u], !true), select(vec4<bool>(false, any(vec3<bool>(global0[0u], true, false)), u_input.b == u_input.a, var_0.x), vec4<bool>(var_0.x, !var_0.x, !global0[51285u], var_0.x), !false), vec4<bool>(!true, var_0.x, all(var_0.yx), false)), !(!(!select(vec4<bool>(false, true, var_0.x, global0[20060u]), vec4<bool>(false, false, true, global0[0u]), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    var var_2 = Struct_3(!all(select(!var_0, select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, true)), false)), -(-125f + (100f / -1103f)) >= (abs(round(1152f)) + -491f), var_1.xyz, var_0.x, Struct_2(-1172f, func_3(!select(vec4<bool>(false, global0[1u], true, global0[4294967295u]), vec4<bool>(true, var_0.x, global0[1u], false), vec4<bool>(true, global0[1u], global0[5503u], var_1.x)), Struct_2(1821f * -446f, Struct_1(188f), max(0i, u_input.a), 1000f, func_3(vec4<bool>(false, true, var_1.x, var_0.x), Struct_2(-1092f, Struct_1(-881f), 15224i, -1287f, Struct_1(1386f)), vec2<u32>(1u, 37843u))), ~vec2<u32>(1u, 91474u) >> clamp(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13845u, 1716u), vec2<u32>(0u, 0u))), u_input.b, -(-1000f), Struct_1(max(sign(1111f), 1492f + -797f))));
    let var_3 = ~(-select(-vec3<i32>(u_input.a, u_input.a, var_2.e.c), vec3<i32>(var_2.e.c, 24185i, 17681i) * vec3<i32>(var_2.e.c, u_input.a, u_input.a), vec3<bool>(var_1.x, true, var_1.x))) ^ vec3<i32>((countOneBits(0i) * 3713i) & u_input.a, max(2147483647i, 14906i), -1i);
    var var_4 = 10467u;
    var var_5 = Struct_3(any(var_1.wyx), all(!vec4<bool>(all(vec4<bool>(var_2.d, false, global0[0u], false)), all(var_1.wxy), var_2.e.b.a <= 295f, all(var_0))), vec3<bool>(select(var_2.e.a > var_2.e.a, !global0[1u], true) | true, var_2.a, var_0.x), !false, var_2.e);
    let var_6 = vec4<i32>(62482i, (~26426i | (dot(var_3, vec3<i32>(var_3.x, var_3.x, var_3.x)) - (var_2.e.c << 4294967295u))) + (firstTrailingBit(~var_3.x) % -(var_2.e.c * var_2.e.c)), var_5.e.c, -(-1i >> 50521u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(clamp(firstTrailingBit(dot(var_6, vec4<i32>(var_6.x, 0i, -353i, -73365i))), i32(-2147483648), select(i32(-2147483648) ^ 0i, 16544i, func_2(Struct_3(true, true, vec3<bool>(global0[222u], false, global0[16382u]), var_5.d, Struct_2(var_5.e.b.a, Struct_1(var_2.e.b.a), u_input.a, var_5.e.d, var_2.e.e)), -196f)))), 214f, (vec2<i32>(dot(vec3<i32>(var_5.e.c, -9993i, var_5.e.c), vec3<i32>(u_input.a, 20285i, 0i)), var_2.e.c ^ -708i) << (~vec2<u32>(0u, 40847u) ^ select(vec2<u32>(34637u, 0u), vec2<u32>(4294967295u, 0u), false))) - var_6.wy, (vec4<f32>(var_2.e.a - var_5.e.b.a, step(1025f, 593f), 1058f * var_5.e.e.a, -359f) * -(vec4<f32>(-513f, -790f, var_2.e.a, var_5.e.b.a) - vec4<f32>(-557f, var_5.e.b.a, 3592f, var_2.e.a))) + vec4<f32>((-1437f / -959f) - var_5.e.a, (-1181f - var_5.e.d) - var_2.e.b.a, trunc(-var_5.e.e.a), 409f));
}

