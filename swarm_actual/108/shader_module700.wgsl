// {"0:0":[210,97,95,52,33,150,194,196,170,73,70,98,67,225,43,74]}
// Seed: 6653259649123258434

struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_1() -> u32 {
    return ~u_input.d;
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(-reverseBits(~u_input.b) | -15430i, vec3<u32>(abs(~(u_input.d >> 20016u)), firstTrailingBit(u_input.d), ~47065u), any(vec4<bool>(false, !(true && true), true, false)), firstLeadingBit(dot((vec3<i32>(23970i, u_input.c, u_input.c) >> vec3<u32>(8079u, u_input.d, u_input.d)) * ~vec3<i32>(u_input.b, -81750i, u_input.c), vec3<i32>(u_input.a, -18679i * -1i, ~2147483647i))));
    let var_1 = ~var_0.b.x;
    var var_2 = Struct_1(var_0.d, var_0.b, all(select(select(vec2<bool>(false, var_0.c), !vec2<bool>(var_0.c, true), select(vec2<bool>(true, false), vec2<bool>(false, var_0.c), true)), !vec2<bool>(false, true), select(!vec2<bool>(true, var_0.c), select(vec2<bool>(var_0.c, true), vec2<bool>(false, var_0.c), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, var_0.c), var_0.c)))), -36364i);
    var var_3 = Struct_5(Struct_3(!false | any(vec4<bool>(true, var_2.c, false, var_2.c)), vec3<f32>(-(-(-497f)), -floor(169f), -floor(-1000f)), var_2.b.x / u_input.d, 4294967295u));
    let var_4 = Struct_5(Struct_3(true, min(var_3.a.b, vec3<f32>(round(-1020f), exp2(1000f), var_3.a.b.x)), 21214u, 1u));
    return vec3<bool>(false, var_0.d <= firstLeadingBit(clamp(-70911i % var_2.a, 16634i >> var_3.a.c, 0i)), !(~(~var_1) <= dot(var_0.b.xz >> vec2<u32>(u_input.d, 4294967295u), vec2<u32>(var_4.a.d, var_2.b.x) % var_2.b.zy)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = func_3();
    var_0 = !vec3<bool>(true != ((32886i ^ -9260i) >= u_input.a), any(vec3<bool>(var_0.x && true, !false, var_0.x)), true);
    let var_1 = max(1i, reverseBits(dot(select(vec3<i32>(u_input.c, u_input.a, u_input.b), vec3<i32>(u_input.c, u_input.b, u_input.c), vec3<bool>(false, var_0.x, true)), vec3<i32>(u_input.c, -1i, 2147483647i) + vec3<i32>(u_input.a, i32(-2147483648), i32(-2147483648)))) << reverseBits(1u));
    var_0 = vec3<bool>(true, !(!any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), true);
    var var_2 = arg_0;
    return Struct_3(true && false, min((select(vec3<f32>(1845f, 1019f, -1690f), vec3<f32>(-742f, -948f, -179f), vec3<bool>(var_0.x, true, false)) / -vec3<f32>(-1129f, 868f, -521f)) / -(vec3<f32>(1835f, 701f, -1592f) + vec3<f32>(870f, -1717f, 959f)), vec3<f32>(676f + -924f, 1466f, 1059f) + (vec3<f32>(-654f, 1000f, 155f) - -vec3<f32>(-943f, 240f, -1296f))), 0u, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~vec2<u32>(46075u, 0u))) * ~((~vec2<u32>(u_input.d, u_input.d) | firstLeadingBit(vec2<u32>(u_input.d, 1u))) % ~select(vec2<u32>(88280u, 54383u), vec2<u32>(u_input.d, 1u), vec2<bool>(true, false)));
    let var_1 = abs(~(-(~2147483647i) | firstLeadingBit(dot(vec3<i32>(u_input.a, 2147483647i, -59453i), vec3<i32>(u_input.c, 0i, 13450i)))));
    var_0 = countOneBits(vec2<u32>(var_0.x, func_1()));
    var var_2 = func_2(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(clamp(vec3<i32>(u_input.a, i32(-2147483648), var_1), vec3<i32>(26841i, var_1, var_1) ^ vec3<i32>(var_1, var_1, u_input.a), -vec3<i32>(u_input.c, var_1, -25356i)) % reverseBits(-vec3<i32>(var_1, var_1, u_input.b))), countOneBits(~vec2<u32>(var_2.c, var_2.c)) & (vec2<u32>(0u, ~64232u) / ~select(vec2<u32>(u_input.d, var_0.x), vec2<u32>(0u, u_input.d), vec2<bool>(var_2.a, var_2.a))), ~(~vec3<u32>(countOneBits(55665u), ~var_0.x, 60238u & 46400u)));
}

