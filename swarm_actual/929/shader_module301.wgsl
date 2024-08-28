// {"0:0":[26,75,183,116,63,153,161,49,72,76,103,163,244,91,77,252,31,228,125,185,177,200,87,222,165,212,150,43,197,123,77,186,171,52,210,84,171,240,255,31,150,212,120,72,136,44,252,249]}
// Seed: 6315326909037852193

struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = !(!vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false));
    let var_1 = Struct_4(step(-(-vec4<f32>(arg_0.b.b, 1099f, 459f, arg_0.b.b)) + -(vec4<f32>(2278f, arg_0.b.b, arg_0.b.b, -891f) - vec4<f32>(arg_0.b.b, -624f, arg_0.b.b, arg_0.b.a.x)), ceil(-max(vec4<f32>(arg_0.b.b, arg_0.b.a.x, arg_0.b.a.x, 1000f), vec4<f32>(-579f, arg_0.b.a.x, arg_0.b.b, arg_0.b.b)))), arg_0.b, ceil(((114f * arg_0.b.a.x) - abs(606f)) - exp2(arg_0.b.a.x + arg_0.b.a.x)), Struct_1(~(-2147483647i), min(firstLeadingBit(~42782u), ~(arg_0.a.x / arg_0.a.x)), ((arg_0.a.x | 1u) + ~arg_0.a.x) - ~arg_0.a.x, select(vec2<bool>(!var_0.x, all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !(!vec2<bool>(var_0.x, var_0.x)), select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), var_0.x), !vec2<bool>(true, false), !vec2<bool>(true, false))), abs(u_input.c)));
    let var_2 = var_1.b;
    var_0 = select(!var_1.d.d, select(select(var_1.d.d, vec2<bool>(2147483647i <= -1i, true), vec2<bool>(u_input.c.x <= var_1.d.e.x, var_1.d.d.x)), !select(!vec2<bool>(false, var_0.x), var_1.d.d, false | true), false), select(vec2<bool>((var_1.d.d.x | var_0.x) && !var_0.x, any(!var_1.d.d)), !var_1.d.d, var_1.d.d.x));
    var_0 = select(select(!vec2<bool>(any(vec3<bool>(var_0.x, var_1.d.d.x, true)), all(var_1.d.d)), select(select(!var_1.d.d, var_1.d.d, !vec2<bool>(var_1.d.d.x, false)), select(select(vec2<bool>(true, var_1.d.d.x), var_1.d.d, var_1.d.d.x), !vec2<bool>(false, false), !var_1.d.d.x), all(var_1.d.d)), !any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_1.d.d.x, false, true, var_1.d.d.x)))), !select(select(vec2<bool>(false, var_1.d.d.x), select(vec2<bool>(false, var_0.x), var_1.d.d, false), !vec2<bool>(false, true)), select(vec2<bool>(var_0.x, var_0.x), !var_1.d.d, vec2<bool>(var_1.d.d.x, false)), select(vec2<bool>(var_0.x, var_1.d.d.x), select(vec2<bool>(var_0.x, var_1.d.d.x), vec2<bool>(false, var_1.d.d.x), vec2<bool>(var_0.x, true)), vec2<bool>(var_1.d.d.x, true))), any(vec4<bool>(false, true, var_0.x, false & true)) & !true);
    return var_2.b;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    return ((max(-1074f, -750f) - (-1000f * func_3(Struct_3(u_input.b, Struct_2(vec2<f32>(201f, 578f), 1160f))))) + -1113f) - -156f;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = select(vec3<bool>(any(vec4<bool>(true, !arg_0, arg_0, false)), true, true), select(vec3<bool>(!(!true), u_input.b.x <= 4294967295u, (arg_0 && arg_0) | (1u >= 17969u)), select(!vec3<bool>(arg_0, arg_0, false), !select(vec3<bool>(arg_0, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), false), !vec3<bool>(u_input.a <= u_input.c.x, true, 267f <= -1000f)), !false);
    var var_1 = vec4<f32>(-(447f / (func_2(35613i, vec2<bool>(false, var_0.x)) - 747f)), arg_1.x, -(-(-319f)), -(-func_3(Struct_3(u_input.b, Struct_2(arg_1.yy, arg_2)))));
    var var_2 = !vec3<bool>(all(!(!vec3<bool>(false, arg_0, var_0.x))), !arg_0, var_0.x != arg_0);
    var var_3 = Struct_4(-(-(vec4<f32>(260f, var_1.x, var_1.x, -346f) * (vec4<f32>(arg_1.x, var_1.x, arg_1.x, -2403f) / vec4<f32>(672f, arg_2, arg_2, var_1.x)))), Struct_2(-select(select(var_1.zw, arg_1.zz, var_2.xx), arg_1.zz, !var_2.yz), 191f), arg_2, Struct_1((~u_input.a | dot(vec2<i32>(u_input.c.x, 0i), vec2<i32>(u_input.a, u_input.a))) << ((1u << 4294967295u) * u_input.b.x), ((u_input.b.x >> u_input.b.x) ^ max(u_input.b.x, 4294967295u)) ^ ~max(0u, u_input.b.x), 15627u + (~82999u >> dot(u_input.b.zwx, u_input.b.xxw)), var_0.yy, reverseBits(vec3<i32>(u_input.a ^ u_input.a, 71011i, ~(-1i)))));
    let var_4 = all(!vec4<bool>(all(!vec4<bool>(false, var_3.d.d.x, var_3.d.d.x, arg_0)), var_2.x, var_3.d.d.x && all(vec2<bool>(var_0.x, var_2.x)), all(vec2<bool>(var_2.x, var_0.x)) & var_0.x));
    return ~(dot(u_input.b.ywz, ~(~u_input.b.zzy)) ^ ~(~(var_3.d.c | u_input.b.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = ~vec4<i32>(min(u_input.a, ~0i), 1i, -1i, 0i);
    let var_1 = arg_1;
    let var_2 = Struct_4(vec4<f32>(var_1.x, var_1.x / -arg_2.b.b, -784f - (-507f / -199f), 582f), arg_2.b, -select(268f, -162f, !all(vec3<bool>(false, true, false))), Struct_1(u_input.a, max(arg_2.a.x, u_input.b.x), arg_2.a.x ^ arg_2.a.x, !select(vec2<bool>(true, false), !vec2<bool>(false, true), false), ~(vec3<i32>(0i, var_0.x, var_0.x) + vec3<i32>(var_0.x, 2147483647i, var_0.x)) & clamp(u_input.c, vec3<i32>(var_0.x, 33489i, u_input.c.x), -var_0.zyw)));
    var var_3 = Struct_5(var_2, floor(var_2.c), -(~((15338i >> var_2.d.b) % -u_input.c.x)), vec4<bool>(var_2.d.d.x, true, false, true), u_input.b.x < 4965u);
    let var_4 = var_3.a.d.b;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(abs(u_input.a % 21353i) <= -(u_input.a ^ 18105i), round(-vec3<f32>(1986f, -3534f, 1000f) + vec3<f32>(-1506f, -412f, -191f)), ceil(-229f)), vec3<f32>(-(-(-855f) * -1093f), min(exp2(-1097f) * min(-724f, -1078f), (-553f * -2097f) * (-274f / 1416f)), step(sign(-338f * 857f), func_2(u_input.c.x, select(vec2<bool>(false, false), vec2<bool>(true, false), true)))), Struct_3(~max(u_input.b, u_input.b) | (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) >> u_input.b), Struct_2(vec2<f32>(380f, 272f) / (vec2<f32>(535f, -1896f) * vec2<f32>(-1006f, -241f)), -876f)));
    var_0 = Struct_3(select(vec4<u32>(4294967295u >> 46182u, 45478u << u_input.b.x, u_input.b.x, ~u_input.b.x), vec4<u32>(0u, ~4294967295u, 1u, ~var_0.a.x), any(vec2<bool>(true, true)) | !false) >> select(abs(abs(u_input.b)), ~vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 21216u), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false), any(vec2<bool>(false, true)))), var_0.b);
    let var_1 = u_input.c.x;
    var var_2 = func_4(~(~1u), vec3<f32>(552f, -(-709f), 931f), func_4(0u, min(abs(vec3<f32>(var_0.b.a.x, var_0.b.b, -1531f) + vec3<f32>(var_0.b.a.x, 619f, var_0.b.b)), max(-vec3<f32>(var_0.b.a.x, var_0.b.b, -525f), vec3<f32>(var_0.b.b, 279f, var_0.b.a.x))), func_4(var_0.a.x, -trunc(vec3<f32>(var_0.b.a.x, var_0.b.a.x, 256f)), func_4(~108340u, -vec3<f32>(-373f, -1075f, var_0.b.b), Struct_3(u_input.b, var_0.b)))));
    var_0 = Struct_3(var_0.a >> u_input.b, Struct_2(-var_0.b.a, abs(-429f)));
    var var_3 = !vec4<bool>(true, any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), -1523f <= var_2.b.a.x)), !(var_1 > u_input.c.x), all(select(!vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false)));
    var_2 = func_4(~((4294967295u % 32993u) ^ (4294967295u ^ var_0.a.x)), ceil(-exp2(vec3<f32>(var_2.b.a.x, 1355f, var_0.b.a.x)) - (round(vec3<f32>(-784f, 126f, var_2.b.b)) + -vec3<f32>(var_2.b.a.x, -1321f, 308f))), Struct_3((vec4<u32>(u_input.b.x, var_2.a.x, var_2.a.x, 1u) ^ vec4<u32>(4294967295u, 1u, 10304u, u_input.b.x)) >> countOneBits(var_2.a * u_input.b), func_4(~dot(var_2.a, u_input.b), abs(vec3<f32>(1000f, 710f, -755f)), func_4(~var_2.a.x, vec3<f32>(var_0.b.b, -1153f, var_2.b.b) - vec3<f32>(var_2.b.a.x, 2603f, var_2.b.a.x), func_4(0u, vec3<f32>(-1000f, -1516f, var_0.b.b), Struct_3(vec4<u32>(var_0.a.x, 104137u, 1u, u_input.b.x), var_2.b)))).b));
    var var_4 = Struct_1((-(-16946i) | (dot(u_input.c.yx, vec2<i32>(-37423i, var_1)) * -u_input.a)) - -(-1i), u_input.b.x * reverseBits(~dot(vec3<u32>(u_input.b.x, var_2.a.x, u_input.b.x), var_0.a.zxz)), min(~0u, ~var_0.a.x), vec2<bool>(any(var_3.wwy), false), vec3<i32>(reverseBits(-u_input.c.x), 27148i, clamp(u_input.a, -u_input.c.x, i32(-2147483648) - -47078i)) << vec3<u32>(~var_0.a.x, select(~1u, var_0.a.x, var_3.x && true), u_input.b.x));
    var var_5 = Struct_5(Struct_4(round((vec4<f32>(var_0.b.a.x, 383f, var_2.b.a.x, var_0.b.a.x) - vec4<f32>(-152f, var_2.b.a.x, 901f, var_2.b.a.x)) + -vec4<f32>(-1000f, var_0.b.b, var_2.b.b, 1382f)), func_4(var_4.c, vec3<f32>(349f, var_0.b.b * var_0.b.b, var_2.b.b - var_2.b.b), Struct_3(var_0.a + var_0.a, func_4(0u, vec3<f32>(1840f, -1103f, var_0.b.b), Struct_3(var_0.a, var_2.b)).b)).b, -(-(187f + var_2.b.a.x)), Struct_1(-29368i, ~(115u - u_input.b.x), ~26092u, select(select(var_4.d, vec2<bool>(true, var_3.x), var_3.yy), select(var_3.wx, var_3.xw, vec2<bool>(false, true)), var_4.d.x), vec3<i32>(var_1, -18925i, -6524i))), -(-select(step(var_2.b.a.x, 2620f), 1832f * var_0.b.b, true)), var_4.e.x, select(vec4<bool>(false, false, dot(u_input.c.xy, vec2<i32>(var_1, var_4.a)) < (100364i >> 0u), -707f >= (var_0.b.b * 1037f)), vec4<bool>(!select(var_3.x, false, false), false == var_4.d.x, var_3.x, -1000f < (-796f + var_0.b.a.x)), select(select(!vec4<bool>(false, true, var_3.x, var_3.x), select(vec4<bool>(false, false, true, false), vec4<bool>(var_4.d.x, false, true, false), vec4<bool>(var_3.x, false, var_3.x, var_3.x)), true), select(select(vec4<bool>(var_3.x, var_4.d.x, false, var_3.x), vec4<bool>(var_3.x, true, false, false), vec4<bool>(true, var_4.d.x, false, var_4.d.x)), !vec4<bool>(false, true, var_4.d.x, false), any(vec3<bool>(var_3.x, var_3.x, var_4.d.x))), (var_0.b.a.x <= -769f) == all(vec3<bool>(true, false, var_4.d.x)))), any(vec3<bool>(all(vec4<bool>(false, var_3.x, true, var_4.d.x)), var_3.x, !var_4.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(26683u, vec3<f32>(1000f + -var_2.b.a.x, var_5.a.c, -(-332f)), func_4(firstTrailingBit(0u), trunc(-var_5.a.a.zwx), func_4(~u_input.b.x, -vec3<f32>(var_2.b.b, 679f, -115f), func_4(25825u, vec3<f32>(293f, var_2.b.b, var_0.b.a.x), Struct_3(u_input.b, var_2.b))))).b.b, -var_0.b.a.x * -var_0.b.b);
}

