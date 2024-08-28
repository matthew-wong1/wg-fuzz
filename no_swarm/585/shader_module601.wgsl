// {"0:0":[83,0,136,128]}
// Seed: 16206110090708249729

struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = !all(!vec4<bool>(true, 4294967295u == 1u, true, true));
    var var_1 = Struct_4(Struct_1(vec4<u32>(47021u, ~firstTrailingBit(4294967295u), 14238u, 1u), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), any(vec3<bool>(false, false, false))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, false, false), !false), select(!vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)))), step(-(-111f), 720f + -787f) < (ceil(1339f) + -1162f), vec2<bool>(!(!false), all(!vec2<bool>(true, true))), vec4<bool>((4872u | 92432u) < ~1u, select(false, true, any(vec2<bool>(false, false))), !(true && false), !false | (-37470i < arg_0.x))), ~(-16132i - clamp(-1i, arg_0.x, 2147483647i - 2147483647i)));
    let var_2 = Struct_1(var_1.a.a, !var_1.a.b, (116f / abs(select(139f, 230f, true))) == ceil(-973f), select(select(!(!var_1.a.e.yx), vec2<bool>(any(vec3<bool>(var_1.a.c, var_1.a.b.x, true)), any(vec4<bool>(var_1.a.b.x, var_1.a.d.x, var_1.a.c, var_1.a.e.x))), select(var_1.a.d, var_1.a.b.xw, true)), select(var_1.a.e.ww, select(select(var_1.a.e.xw, var_1.a.b.yx, false), !vec2<bool>(var_1.a.c, false), vec2<bool>(false, var_1.a.b.x)), select(var_1.a.b.zy, !var_1.a.b.xx, var_1.a.b.x && var_1.a.b.x)), var_1.a.b.x), select(!vec4<bool>(false, arg_0.x != arg_0.x, any(vec2<bool>(false, var_1.a.d.x)), false), !(!select(var_1.a.e, var_1.a.e, vec4<bool>(false, var_1.a.e.x, true, var_1.a.d.x))), false | (firstTrailingBit(arg_0.x) >= (i32(-2147483648) >> var_1.a.a.x))));
    var var_3 = 1i;
    let var_4 = var_2.b.yz;
    return select(!var_2.e.yzz, select(vec3<bool>(var_2.c, true, var_1.a.c), !vec3<bool>(2147483647i >= var_1.b, var_1.a.d.x, any(var_1.a.b.zyy)), var_4.x), vec3<bool>(41723u >= ~countOneBits(var_1.a.a.x), var_1.a.d.x, var_4.x));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(countOneBits(~(vec4<u32>(1u, 15758u, 4294967295u, 11058u) / vec4<u32>(84774u, 11971u, 46249u, 68818u))) + (vec4<u32>(4294967295u - 1u, 14719u >> 23775u, select(1u, 0u, true), 0u) * (~vec4<u32>(4294967295u, 21137u, 4294967295u, 1u) + vec4<u32>(4294967295u, 9259u, 84963u, 1u))), vec4<bool>(!false, all(!func_3(vec3<i32>(4051i, i32(-2147483648), u_input.a))), !all(!vec4<bool>(false, true, false, false)), select(func_3(~vec3<i32>(1i, u_input.a, -45400i)).x, true, select(any(vec4<bool>(false, false, false, false)), !false, select(false, false, false)))), all(vec4<bool>(!true, true, all(!vec2<bool>(false, false)), !(false | true))), vec2<bool>(!true, !false), select(vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), ~1u > ~0u, all(!vec2<bool>(true, false)), !(true | true)), select(vec4<bool>(!false, 2147483647i > u_input.a, true, false || false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), !true), (true & false) || true), false));
    let var_1 = Struct_4(Struct_1(var_0.a, vec4<bool>(var_0.d.x, false, var_0.e.x, true), true, select(func_3(vec3<i32>(u_input.a, u_input.a, 67205i)).zz, vec2<bool>(any(var_0.d), all(vec4<bool>(var_0.c, false, var_0.b.x, false))), vec2<bool>(!var_0.b.x, var_0.c)), vec4<bool>(any(!var_0.e), false, all(var_0.d), any(select(var_0.b.zxw, var_0.b.yyx, var_0.b.x)))), 2147483647i);
    let var_2 = Struct_3(Struct_2(sign(-332f) - 1839f, select(~vec4<i32>(13185i, var_1.b, u_input.a, u_input.a), vec4<i32>(2147483647i, -1i, 17251i, 24675i) >> var_0.a, false) >> vec4<u32>(reverseBits(var_1.a.a.x), ~var_1.a.a.x, select(var_1.a.a.x, var_1.a.a.x, false), dot(var_0.a.zz, var_0.a.xy))));
    var var_3 = var_1;
    var_3 = var_1;
    return -(-var_2.a.b.x) & -var_1.b;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = countOneBits(vec3<i32>(u_input.a | (func_2() * -u_input.a), u_input.a, (abs(u_input.a) ^ (u_input.a & u_input.a)) ^ 0i));
    var var_1 = Struct_3(Struct_2(634f / (-1000f / ceil(-384f)), -countOneBits(-vec4<i32>(u_input.a, u_input.a, 45510i, 18691i))));
    let var_2 = vec4<bool>(all(!select(!vec4<bool>(true, true, false, true), !vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), all(select(vec3<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, true)), 206f < var_1.a.a), select(func_3(vec3<i32>(var_0.x, u_input.a, -18855i)), !vec3<bool>(true, false, false), any(vec4<bool>(false, false, true, false))), vec3<bool>(false && false, false && false, arg_0 < -828f))), !(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true))), !(634f >= 456f));
    var_0 = var_1.a.b.yzy;
    var_0 = -((vec3<i32>(u_input.a, var_0.x, var_0.x) | ~var_1.a.b.yzx) << ~(~vec3<u32>(1u, arg_1.x, arg_2.x))) - (-(~(~vec3<i32>(var_1.a.b.x, var_1.a.b.x, i32(-2147483648)))) + var_1.a.b.wxw);
    return Struct_4(Struct_1((vec4<u32>(68760u, 1u, 0u, 18182u) + vec4<u32>(4294967295u, 4294967295u, arg_1.x, arg_1.x)) % (vec4<u32>(arg_1.x, 46801u, arg_1.x, arg_1.x) & (vec4<u32>(arg_1.x, 96695u, arg_1.x, arg_1.x) >> vec4<u32>(arg_2.x, 60405u, 17360u, 0u))), vec4<bool>(var_2.x, var_2.x, var_2.x, any(vec4<bool>(var_2.x, true, false, var_2.x))), var_2.x, select(var_2.zx, !func_3(var_1.a.b.xxy).xx, false), vec4<bool>(func_3(var_1.a.b.xzw).x || !var_2.x, u_input.a <= -1i, u_input.a == var_1.a.b.x, !var_2.x)), -(-max(var_0.x, -26004i)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.b;
    var var_1 = arg_0.a.a.wy;
    var var_2 = vec3<bool>(!all(arg_0.a.e.wzz), arg_0.a.b.x, false);
    var_2 = vec3<bool>(!false, (true & !func_1(1150f, arg_0.a.a.ww, arg_0.a.a.yx).a.d.x) && arg_0.a.b.x, false);
    var var_3 = arg_0.a.e;
    return Struct_2(-min(trunc(-(-1068f)), 1276f + ceil(-747f)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~(4294967295u >> 69702u) / (0u | (4294967295u * 4294967295u))), abs(~0u));
    var var_1 = vec4<u32>(dot(vec3<u32>((var_0.x / var_0.x) / ~1u, 1u, ~28126u), ~vec3<u32>(41599u, reverseBits(31245u), 4294967295u)), ~var_0.x << ((var_0.x ^ (var_0.x - 89041u)) >> (dot(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x)) & var_0.x)), 61622u, var_0.x);
    var var_2 = (-floor(vec2<f32>(1000f, -480f)) - -vec2<f32>(-646f, trunc(-1309f))) * vec2<f32>(-275f / 280f, -1964f);
    let var_3 = func_4(func_1(max(565f, var_2.x - var_2.x) - (-1457f * var_2.x), ~vec2<u32>(var_1.x, 34811u), ~var_1.xx), var_0.x, 67047u, vec4<i32>(abs(~u_input.a + func_2()), func_2(), -max(-1i, -1i) - abs(countOneBits(u_input.a)), 15948i));
    var var_4 = ~vec4<i32>(clamp(var_3.b.x, i32(-2147483648), reverseBits(~(-1i))), i32(-2147483648), ~var_3.b.x, 0i + (var_3.b.x & (0i << 34488u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<u32>(20699u, 10443u));
}

