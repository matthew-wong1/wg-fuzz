// {"0:0":[191,89,211,118,127,98,176,67,69,140,140,157,57,216,223,12,205,162,169,122,56,19,230,202]}
// Seed: 3845870246993111786

struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = vec2<u32>(u_input.d, (max(arg_0, u_input.d % 13381u) - countOneBits(arg_0)) << 43820u);
    var var_1 = abs(~u_input.a);
    let var_2 = !select(arg_3, select(arg_3, arg_3, !true), !vec2<bool>(all(vec3<bool>(arg_1, true, true)), !arg_1));
    let var_3 = Struct_1(select(!(!(!vec3<bool>(arg_3.x, arg_3.x, true))), vec3<bool>(!(!true), !(!true), arg_3.x || arg_1), !true), (firstLeadingBit(vec4<i32>(u_input.a, 35806i, 15465i, u_input.a) / vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)) * vec4<i32>(u_input.a * u_input.a, firstTrailingBit(u_input.a), i32(-2147483648), select(u_input.a, u_input.a, arg_1))) << ((firstTrailingBit(vec4<u32>(var_0.x, 1u, 103525u, 4294967295u)) | ~vec4<u32>(11358u, 4294967295u, u_input.d, 14339u)) << vec4<u32>(~64989u, ~u_input.b, ~u_input.d, var_0.x)), select(vec4<bool>(all(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(true, var_2.x, true, var_2.x), false)), !false, true, !(false | true)), select(select(vec4<bool>(var_2.x, true, true, true), !vec4<bool>(false, var_2.x, arg_3.x, true), vec4<bool>(false, false, false, arg_1)), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, false, arg_1, arg_3.x), arg_1), arg_3.x), select(vec4<bool>(!arg_3.x, var_2.x, var_2.x, 9217i >= -1i), !select(vec4<bool>(var_2.x, arg_1, arg_3.x, arg_3.x), vec4<bool>(false, var_2.x, false, arg_3.x), var_2.x), !vec4<bool>(false, arg_3.x, arg_3.x, false))), vec3<u32>(dot(vec2<u32>(47112u, arg_0) & vec2<u32>(32612u, 19692u), vec2<u32>(var_0.x, 3988u) * vec2<u32>(var_0.x, var_0.x)), u_input.b, var_0.x % ~arg_0) % vec3<u32>(~1u ^ (var_0.x * var_0.x), clamp(~15565u, arg_0, arg_0), ~0u), arg_2.x);
    var_1 = 0i;
    return -((vec4<i32>(~2147483647i, var_3.b.x, u_input.a & -550i, abs(17938i)) & select(var_3.b - var_3.b, -var_3.b, vec4<bool>(true, var_3.a.x, var_2.x, false))) + (var_3.b | (var_3.b << (vec4<u32>(u_input.c.x, var_3.d.x, arg_0, 21345u) << vec4<u32>(u_input.b, var_0.x, 1u, u_input.d)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(vec3<bool>((4294967295u <= 69120u) & !false, -(-1000f) == (-170f - -1133f), true), func_3(56469u - 41342u, all(vec2<bool>(false, false)), vec2<f32>(387f, 986f), select(vec2<bool>(false, true), vec2<bool>(false, true), false)) ^ countOneBits(countOneBits(vec4<i32>(u_input.a, -1i, 0i, -48945i))), select(!(!vec4<bool>(true, false, true, false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), any(vec3<bool>(true, false, false))), vec3<u32>(1u, u_input.b ^ 1u, u_input.b) ^ reverseBits(vec3<u32>(u_input.c.x, 22959u, u_input.b)), abs(-550f * max(155f, 1000f))), vec3<i32>(~u_input.a, u_input.a, dot(vec4<i32>(0i, 60723i, 24342i, u_input.a) | vec4<i32>(9319i, u_input.a, u_input.a, -1i), ~vec4<i32>(-21508i, -1i, 51629i, 25321i))) + -(-(vec3<i32>(51089i, u_input.a, u_input.a) / vec3<i32>(u_input.a, u_input.a, u_input.a))), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.d, 0u));
    let var_1 = Struct_1(var_0.a.a, (firstLeadingBit(-vec4<i32>(u_input.a, var_0.b.x, var_0.b.x, -39513i)) + ~(-vec4<i32>(var_0.b.x, u_input.a, 52008i, var_0.a.b.x))) | var_0.a.b, !vec4<bool>(!true, var_0.a.c.x, ~6485u == dot(vec4<u32>(u_input.b, u_input.c.x, u_input.d, 1u), var_0.c), !false), ~(~(~vec3<u32>(u_input.b, u_input.d, u_input.b))), -(-var_0.a.e * (sign(var_0.a.e) * sign(-291f))));
    var var_2 = Struct_2(Struct_1(select(select(!var_1.a, !vec3<bool>(var_0.a.c.x, var_0.a.c.x, true), true), var_0.a.a, select(vec3<bool>(true, var_0.a.a.x, true), select(var_1.a, vec3<bool>(true, var_1.c.x, var_1.c.x), var_1.c.yzx), var_1.e <= -650f)), vec4<i32>(var_1.b.x, countOneBits(-23199i), ~u_input.a, countOneBits(~u_input.a)), vec4<bool>(!all(var_0.a.a), (1000f - -2119f) == -1133f, any(vec4<bool>(var_1.a.x, var_0.a.c.x, true, true)), -621f < -1000f), var_1.d, var_1.e), var_0.a.b.ywy, (min(vec4<u32>(1u, var_1.d.x, 4294967295u, 3842u), firstTrailingBit(vec4<u32>(var_0.c.x, u_input.b, 1124u, 47918u))) - var_0.c) / var_0.c);
    let var_3 = var_0;
    var_2 = var_0;
    return var_1.b.wzy;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = min(firstTrailingBit(~arg_0.c / ~arg_0.c), vec4<u32>(0u, var_0.d.x, select(~0u, ~var_0.d.x, arg_0.a.a.x) | var_0.d.x, ~(4294967295u + min(0u, var_0.d.x))));
    let var_2 = Struct_1(select(!select(vec3<bool>(true, true, var_0.c.x), var_0.a, arg_0.a.a), vec3<bool>(arg_0.a.c.x, var_0.c.x, any(!var_0.c)), var_0.c.zyw), firstLeadingBit(vec4<i32>(min(-32776i, 0i), 1i, -1i, ~0i)) | var_0.b, arg_0.a.c, var_1.xzz, step(-(round(var_0.e) - max(var_0.e, -172f)), exp2(select(round(-343f), -var_0.e, !var_0.c.x))));
    let var_3 = var_2;
    let var_4 = var_1;
    return Struct_2(arg_0.a, select(vec3<i32>(-1i, ~11231i, reverseBits(1i << 0u)), vec3<i32>(29799i >> 4294967295u, var_3.b.x, var_3.b.x) ^ -vec3<i32>(1i, 1i, 15801i), all(select(!var_2.a.yx, vec2<bool>(var_2.c.x, var_2.a.x), var_0.e > var_2.e))), vec4<u32>(~(~firstLeadingBit(var_1.x)), var_1.x, (min(4294967295u, var_4.x) & select(0u, u_input.d, false)) & (var_0.d.x & ~4294967295u), abs(dot(arg_0.c, ~var_4))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = func_4(Struct_2(Struct_1(vec3<bool>(any(arg_2.a.c), !false, arg_2.a.e > arg_2.a.e), (arg_2.a.b | vec4<i32>(arg_2.a.b.x, u_input.a, arg_2.a.b.x, arg_2.b.x)) - ~vec4<i32>(arg_0, arg_2.a.b.x, 16214i, arg_1), !arg_2.a.c, ~vec3<u32>(arg_2.c.x, u_input.c.x, 0u) % max(arg_2.c.zzz, vec3<u32>(0u, 0u, 110410u)), -arg_2.a.e), func_2() - clamp(-vec3<i32>(-1i, 0i, arg_0), arg_2.a.b.xzz, -vec3<i32>(arg_0, arg_1, arg_0)), vec4<u32>(dot(vec4<u32>(arg_2.a.d.x, arg_2.a.d.x, 0u, 4294967295u), vec4<u32>(arg_2.a.d.x, 0u, 4294967295u, u_input.c.x)), abs(arg_2.c.x), 79417u, arg_2.c.x) % arg_2.c));
    var var_1 = func_4(arg_2);
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.d << ~dot(vec4<u32>(u_input.d, 4294967295u, 0u, 1u), ~vec4<u32>(68901u, u_input.b, 4294967295u, 7565u))) | ~u_input.c.x;
    var_0 = (1u ^ 20720u) / (reverseBits(u_input.b) % ~(func_1(1i, u_input.a, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, true, true), vec3<u32>(u_input.d, u_input.b, u_input.c.x), 1733f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<u32>(57115u, 1u, 45854u, u_input.d))) + u_input.d));
    var_0 = 45702u + (~(~(0u | 70293u)) | ~min(dot(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.c.x, u_input.d)), ~u_input.d));
    var_0 = func_1(~(-(~u_input.a)), u_input.a, Struct_2(Struct_1(vec3<bool>(true, false, all(vec3<bool>(false, false, true))), -vec4<i32>(i32(-2147483648), u_input.a, -56119i, -65588i) >> (vec4<u32>(u_input.c.x, u_input.d, 1u, 105390u) - vec4<u32>(4294967295u, u_input.d, u_input.b, 0u)), !vec4<bool>(true, true, true, false), ~(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u) & vec3<u32>(u_input.b, 0u, 17919u)), 111f), vec3<i32>(1453i, u_input.a, 2147483647i), abs(~vec4<u32>(4294967295u, u_input.c.x, u_input.d, u_input.c.x)) >> max(vec4<u32>(47134u, 4294967295u, 4294967295u, u_input.b) & vec4<u32>(u_input.c.x, 0u, 1u, 13057u), ~vec4<u32>(u_input.b, 11782u, u_input.c.x, 1u))));
    var_0 = dot(~(~vec4<u32>(u_input.b, 31136u, u_input.b, u_input.c.x)) - ~func_4(func_4(Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<i32>(-10676i, u_input.a, -1i, i32(-2147483648)), vec4<bool>(false, true, true, false), vec3<u32>(0u, 83852u, u_input.c.x), 525f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.d, u_input.b, 55763u, 11339u)))).c, firstTrailingBit(vec4<u32>(min(firstLeadingBit(u_input.c.x), u_input.d), u_input.d, max(u_input.c.x, func_1(24808i, 42612i, Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<i32>(2147483647i, u_input.a, i32(-2147483648), 2147483647i), vec4<bool>(true, false, false, false), vec3<u32>(0u, 4294967295u, 86998u), 1320f), vec3<i32>(u_input.a, u_input.a, -1i), vec4<u32>(u_input.d, 486u, 19323u, 1591u)))), u_input.b)));
    let var_1 = func_4(Struct_2(func_4(func_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<bool>(true, true, false, true), vec3<u32>(7032u, 4257u, u_input.c.x), -244f), vec3<i32>(i32(-2147483648), u_input.a, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 9342u)))).a, ((vec3<i32>(i32(-2147483648), 0i, u_input.a) - vec3<i32>(0i, u_input.a, u_input.a)) - vec3<i32>(u_input.a, u_input.a, -3338i)) ^ (vec3<i32>(u_input.a, 39848i, 14875i) | (vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(-19800i, u_input.a, u_input.a))), vec4<u32>(firstLeadingBit(1u ^ u_input.b), 1u, func_1(~u_input.a, u_input.a, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<i32>(2147483647i, -10233i, u_input.a, u_input.a), vec4<bool>(false, true, true, false), vec3<u32>(70524u, 86749u, u_input.c.x), -1014f), vec3<i32>(-5725i, -1i, i32(-2147483648)), vec4<u32>(u_input.b, 1u, 4294967295u, u_input.c.x))), reverseBits(u_input.b)))).a;
    var var_2 = var_1;
    let var_3 = !var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(trunc((round(vec3<f32>(232f, -1000f, -233f)) * -vec3<f32>(-389f, -469f, var_1.e)) / vec3<f32>(-(-1429f), 569f, -var_1.e)), abs(vec4<i32>(-1i & u_input.a, -40660i, 2147483647i, firstLeadingBit(u_input.a)) - var_1.b), (-1174f / var_2.e) - var_2.e, ~abs(select(u_input.a, var_2.b.x + 2147483647i, var_1.c.x)), 1u);
}

