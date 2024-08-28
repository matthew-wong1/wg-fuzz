// {"0:0":[30,56,195,103,150,41,174,22,197,211,102,64]}
// Seed: 3726925616171647225

struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3) -> i32 {
    var var_0 = -1i;
    var_0 = max(~u_input.a, clamp(-abs(countOneBits(i32(-2147483648))), -32470i + ~2147483647i, ~dot(abs(arg_2.e.a), abs(vec2<i32>(39996i, 2147483647i)))));
    let var_1 = step(-vec2<f32>(step(165f, 1043f), arg_2.e.b / arg_2.e.b), -((vec2<f32>(157f, -1296f) / vec2<f32>(arg_0, -1272f)) + -vec2<f32>(138f, 350f))) - (vec2<f32>(arg_2.e.b, -arg_2.e.b) + -vec2<f32>(arg_2.e.b, max(-650f, arg_0)));
    var_0 = i32(-2147483648);
    let var_2 = vec4<bool>(all(!vec4<bool>(false, true, u_input.a < arg_1, !true)), !select(all(!vec3<bool>(false, false, true)), false, !(true | false)), false, false);
    return -1i;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = max((u_input.a - arg_3.a.x) & (-func_3(arg_0.e.b, -1i, Struct_3(arg_3.a.x, vec4<u32>(0u, 58457u, arg_0.e.c, 7819u), 0i, vec4<i32>(arg_0.c, arg_3.a.x, -1i, -39827i), Struct_2(arg_3.a, arg_1.x, arg_0.e.c))) * ~u_input.a), 15312i);
    var var_1 = vec3<u32>(~(~(~(~4294967295u))), dot(abs(countOneBits(arg_0.b.zy)), vec2<u32>(firstTrailingBit(~arg_3.c), arg_0.e.c)), arg_0.e.c);
    var_1 = vec3<u32>(abs(~arg_0.b.x), ~countOneBits(0u) ^ firstTrailingBit(arg_0.e.c >> ~var_1.x), ~(~(~arg_3.c)) | (countOneBits(0u >> u_input.b) / (arg_3.c & countOneBits(arg_3.c))));
    var var_2 = Struct_4(countOneBits(arg_0.b.x << arg_3.c), select(abs(vec4<i32>(2147483647i, var_0, -1i, arg_3.a.x)), vec4<i32>(19173i >> u_input.b, -1i, -var_0, u_input.a), arg_2) >> ~(~arg_0.b), Struct_1(-3769i, 1i, abs(vec3<f32>(arg_0.e.b, arg_3.b, arg_0.e.b)) / -(-vec3<f32>(arg_1.x, arg_0.e.b, arg_1.x)), max(min(arg_1.zzw, arg_1.ywx) - -arg_1.yxz, arg_1.yzz)), arg_3, Struct_2(vec2<i32>(~(i32(-2147483648)), 2147483647i), arg_3.b / step(-223f, arg_1.x * 1312f), firstLeadingBit(4294967295u)));
    var var_3 = vec3<bool>(any(!select(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, true)), !vec2<bool>(arg_2, true), vec2<bool>(false, arg_2))), 375f >= 1136f, false);
    return i32(-2147483648);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    let var_0 = (vec4<f32>(-arg_2.x, arg_2.x * sign(arg_2.x), arg_2.x, -abs(arg_2.x)) * (exp2(vec4<f32>(arg_2.x, -1677f, 1289f, arg_2.x) - vec4<f32>(arg_2.x, -184f, arg_2.x, arg_2.x)) / min(vec4<f32>(-1318f, -593f, 2255f, 873f), -vec4<f32>(arg_2.x, 390f, 551f, arg_2.x)))) / -ceil(max(max(vec4<f32>(arg_2.x, 526f, arg_2.x, 1095f), vec4<f32>(235f, arg_2.x, arg_2.x, -432f)), floor(vec4<f32>(-876f, 760f, -1774f, arg_2.x))));
    var var_1 = 23704u;
    let var_2 = Struct_4(~4294967295u, vec4<i32>(countOneBits(func_2(Struct_3(arg_0, vec4<u32>(54937u, u_input.c, u_input.b, u_input.b), 10357i, vec4<i32>(42568i, arg_0, 1i, arg_1), Struct_2(vec2<i32>(u_input.a, arg_1), -521f, 32236u)), vec4<f32>(-264f, -2403f, -360f, arg_2.x), false, Struct_2(vec2<i32>(arg_1, 0i), var_0.x, u_input.b)) * (arg_1 & 1i)), -(~2147483647i), select(arg_0, select(arg_0, arg_0 * -15358i, any(vec2<bool>(true, true))), true), ~(0i >> ~30919u)), Struct_1(-(i32(-2147483648)), 29336i, ((vec3<f32>(-663f, -744f, var_0.x) + var_0.xxw) - -var_0.yzy) - var_0.yww, exp2(-vec3<f32>(-238f, var_0.x, -153f))), Struct_2(abs(-vec2<i32>(-33015i, -63071i)), select((arg_2.x - var_0.x) / 712f, 1407f, !false | (true & false)), select(~(u_input.b & u_input.b), (4294967295u ^ u_input.c) % u_input.c, !true && (true | false))), Struct_2(vec2<i32>(0i, i32(-2147483648)), -(-(-782f)), ~abs(0u + u_input.c)));
    var_1 = ~4294967295u;
    var var_3 = Struct_4(dot(~(~vec2<u32>(var_2.e.c, var_2.a) | (vec2<u32>(0u, var_2.a) / vec2<u32>(42245u, u_input.b))), vec2<u32>(countOneBits(firstLeadingBit(var_2.e.c)), ~(~u_input.b))), (var_2.b ^ vec4<i32>(-10983i, 25175i | var_2.b.x, var_2.b.x, 2147483647i)) | min(var_2.b, vec4<i32>(-4817i, 13442i, -var_2.c.a, -18468i)), var_2.c, var_2.d, Struct_2(vec2<i32>(-1i, select(dot(vec2<i32>(2147483647i, arg_1), vec2<i32>(u_input.a, 6252i)), 0i, true)), trunc(var_0.x), select(u_input.c, 31316u * u_input.c, any(vec3<bool>(false, false, true))) | u_input.b));
    return ~4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = ~(4294967295u >> countOneBits(u_input.c | 0u)) - ((~dot(vec2<u32>(u_input.b, u_input.c), vec2<u32>(1u, arg_2.x)) >> (u_input.b / ~1u)) / abs(~(~0u)));
    var var_1 = Struct_2(~(((vec2<i32>(u_input.a, u_input.a) >> vec2<u32>(arg_2.x, 60003u)) | arg_3) / vec2<i32>(arg_3.x + arg_0.x, min(i32(-2147483648), u_input.a))), -346f, arg_2.x);
    let var_2 = vec3<bool>(-(-1906f) <= -var_1.b, false | !arg_1, all(!(!select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, false)))));
    var var_3 = ~countOneBits(arg_2.x) & ~8457u;
    let var_4 = Struct_4(~(~u_input.c), vec4<i32>(1335i, -(-1i), ~(-11360i), arg_0.x), Struct_1(u_input.a, ~21086i, vec3<f32>(457f, -exp2(var_1.b), var_1.b), -vec3<f32>(1056f * var_1.b, round(-1697f), var_1.b)), Struct_2(vec2<i32>(u_input.a, i32(-2147483648)), abs(-var_1.b), ~var_1.c), Struct_2(-(~arg_3), var_1.b, arg_2.x));
    return Struct_3(-9127i, vec4<u32>(arg_2.x, ~(arg_2.x | (var_1.c % 0u)), 4294967295u, u_input.b), 0i, var_4.b, Struct_2(countOneBits(arg_0), -331f, arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -933f;
    let var_1 = func_4((-(~vec2<i32>(2147483647i, 0i)) & (vec2<i32>(1i, u_input.a) * vec2<i32>(i32(-2147483648), i32(-2147483648)))) >> (vec2<u32>(u_input.c, u_input.b & 53000u) ^ (vec2<u32>(53202u, 10986u) << ~vec2<u32>(102867u, u_input.b))), all(vec2<bool>(false | (false & false), false)), ~vec2<u32>(u_input.b, firstTrailingBit(u_input.b % u_input.c)), vec2<i32>(~8360i % -92102i, u_input.a << func_1(u_input.a | 9539i, -1i, -vec2<f32>(-1000f, var_0))));
    let var_2 = Struct_3(i32(-2147483648), var_1.b, -(i32(-2147483648)), (abs(var_1.d % var_1.d) * ~(-var_1.d)) << ((~var_1.b - select(vec4<u32>(0u, u_input.c, 0u, var_1.e.c), vec4<u32>(var_1.b.x, var_1.b.x, 71518u, 60747u), vec4<bool>(true, true, true, false))) >> ((var_1.b | vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c)) ^ ~vec4<u32>(53399u, u_input.b, 0u, 90059u))), var_1.e);
    var var_3 = vec2<bool>(false, true);
    var_3 = vec2<bool>(false, !true);
    var var_4 = var_2.e.a;
    let var_5 = Struct_1(u_input.a, min(-38534i - abs(var_4.x), var_4.x), -(-select(vec3<f32>(var_0, var_1.e.b, var_2.e.b), vec3<f32>(var_1.e.b, 1794f, -847f), vec3<bool>(true, var_3.x, false)) - floor(vec3<f32>(var_1.e.b, var_2.e.b, -369f) + vec3<f32>(var_1.e.b, 970f, -1553f))), sign(select(vec3<f32>(1000f, var_1.e.b * var_0, -var_2.e.b), step(vec3<f32>(var_1.e.b, 1000f, var_1.e.b) / vec3<f32>(var_2.e.b, -1824f, -1583f), vec3<f32>(var_2.e.b, 366f, var_1.e.b) * vec3<f32>(var_0, var_1.e.b, var_0)), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(5408u & ((1u & ~0u) - (14464u & dot(vec2<u32>(0u, var_2.b.x), vec2<u32>(var_1.b.x, var_2.e.c)))), var_1.e.b, ~abs(var_2.b));
}

