// {"0:0":[220,71,42,198,140,194,17,54,189,4,231,134,210,76,201,131,111,184,144,225,15,8,121,73,187,63,98,33,163,97,92,71,110,43,148,148,216,84,113,184,21,52,239,91,16,60,41,128]}
// Seed: 17484688646935786538

struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = vec3<u32>(firstTrailingBit(~dot(~vec3<u32>(u_input.b, 17001u, u_input.d.x), countOneBits(vec3<u32>(5559u, 0u, u_input.b)))), ~((47082u / select(u_input.a, u_input.b, false)) << ((60315u & u_input.b) | ~u_input.b)), 0u);
    var var_1 = Struct_2(1u);
    let var_2 = max(u_input.c.zyy, min(vec3<i32>(u_input.c.x & -1i, u_input.c.x, dot(vec3<i32>(arg_3, 31713i, u_input.c.x), vec3<i32>(arg_2.x, u_input.c.x, -13110i))) / arg_2.xyw, u_input.c.xxx));
    var_1 = Struct_2(select(countOneBits(1u) | ~var_0.x, ~var_1.a, all(!(!vec2<bool>(false, false)))));
    var_1 = Struct_2(var_1.a);
    return -(-u_input.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = firstTrailingBit(~vec2<u32>(45642u, 4294967295u % arg_0.d)) - u_input.d;
    return arg_3;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.d >> ~(u_input.d % reverseBits(vec2<u32>(26661u, 4294967295u)));
    let var_1 = 1488f;
    let var_2 = any(!(!(!(!vec4<bool>(false, false, false, true)))));
    var_0 = ~u_input.d;
    var var_3 = select(vec4<i32>(u_input.c.x / ~select(u_input.c.x, u_input.c.x, false), -5222i, ~(0i % ~u_input.c.x), 4800i), select(~(u_input.c | vec4<i32>(-39074i, 21287i, 0i, u_input.c.x)), u_input.c, (-224f - 558f) == (var_1 / -605f)) % firstTrailingBit(func_4(Struct_3(vec4<i32>(u_input.c.x, 32811i, 2147483647i, u_input.c.x), true, vec2<bool>(true, true), var_0.x, vec3<bool>(var_2, var_2, true)), func_3(vec2<f32>(-1000f, -2299f), var_1, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x), var_1 * 777f, u_input.c)), select(select(select(select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, false, var_2, false)), !vec4<bool>(false, false, false, true), vec4<bool>(false, var_2, var_2, var_2)), !vec4<bool>(var_2, var_2, var_2, var_2), all(select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, var_2), var_2))), select(select(select(vec4<bool>(true, true, true, var_2), vec4<bool>(var_2, true, true, var_2), true), vec4<bool>(false, true, var_2, false), any(vec4<bool>(var_2, false, true, true))), vec4<bool>(var_2, !true, any(vec4<bool>(true, var_2, true, var_2)), select(var_2, var_2, true)), vec4<bool>(var_2, !true, var_2, !var_2)), 27421u >= 1u));
    return Struct_3(~(u_input.c + -max(u_input.c, u_input.c)), var_2, select(vec2<bool>(var_2, var_2), !(!select(vec2<bool>(false, true), vec2<bool>(var_2, var_2), vec2<bool>(var_2, false))), all(select(!vec3<bool>(true, var_2, true), !vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, var_2)))), 0u, vec3<bool>(var_2, any(vec2<bool>(false, var_2)), var_2));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    var var_0 = false;
    let var_1 = vec4<f32>(-floor(-432f), 760f, arg_1.c, abs(-abs(arg_1.a) - (ceil(arg_1.a) / -113f)));
    var_0 = arg_0.b;
    var var_2 = Struct_4(var_1, func_2(), ~(clamp(vec2<u32>(arg_0.d, arg_0.d), u_input.d, u_input.d) * clamp(vec2<u32>(0u, arg_0.d), vec2<u32>(arg_0.d, u_input.a), vec2<u32>(0u, arg_0.d))) << (vec2<u32>(~1u, firstTrailingBit(6237u)) << min(u_input.d, u_input.d)));
    let var_3 = func_2();
    return -sign(724f) + -(trunc(min(988f, var_1.x)) / (select(-233f, 2012f, var_2.b.b) / var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<f32>(-(-928f + 414f), -(-275f), min(-(-1383f), -1087f)) + (vec3<f32>(select(-702f, -225f, true), -1384f + -549f, 731f / -682f) * vec3<f32>(func_1(Struct_3(vec4<i32>(-26146i, u_input.c.x, 3587i, 1i), true, vec2<bool>(true, false), u_input.b, vec3<bool>(true, true, true)), Struct_1(860f, u_input.c.x, -531f, u_input.c.x)), -140f, trunc(259f))), vec3<f32>(-sign(floor(357f)), -458f, sign(1176f)), func_2().e);
    var var_1 = ~117206u;
    var_1 = u_input.b;
    var var_2 = Struct_4(((-vec4<f32>(-527f, 348f, 754f, -1218f) / -vec4<f32>(var_0.x, 163f, 934f, var_0.x)) / vec4<f32>(var_0.x * var_0.x, round(563f), 117f, 551f)) / -vec4<f32>(var_0.x, -var_0.x, -(-1335f), sign(var_0.x)), func_2(), select(vec2<u32>((u_input.a ^ 0u) << ~82399u, u_input.a), min(u_input.d & u_input.d, u_input.d + vec2<u32>(4294967295u, 1u)) | min(u_input.d, reverseBits(u_input.d)), func_2().e.x && true));
    var var_3 = Struct_3(vec4<i32>(~u_input.c.x, -3705i, var_2.b.a.x, var_2.b.a.x), true, func_2().c, u_input.d.x % u_input.b, var_2.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(sign(var_0), max(-(-vec4<f32>(var_0.x, var_0.x, var_2.a.x, var_2.a.x)), floor(var_2.a)) + var_2.a, ~u_input.c.zx);
}

