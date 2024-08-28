// {"0:0":[79,245,106,19,51,255,25,47,215,5,109,2,46,212,29,242]}
// Seed: 9585156048772879794

struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = firstLeadingBit(0i + (-u_input.a * dot(vec4<i32>(u_input.a, u_input.a, 0i, u_input.b.x), vec4<i32>(-1i, 9194i, u_input.a, u_input.b.x) << vec4<u32>(arg_0.x, 0u, 0u, 4294967295u))));
    let var_1 = ((sign(-366f) / -step(2205f, -321f)) * -(-1228f)) - -(-620f);
    var var_2 = -(vec4<f32>(-1792f, (-1000f / -941f) + -269f, -1628f, 1091f) * (vec4<f32>(var_1, -var_1, floor(447f), -1586f) - -(vec4<f32>(-481f, var_1, 150f, var_1) + vec4<f32>(-883f, var_1, -301f, 611f))));
    let var_3 = Struct_2(vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), select(vec4<bool>(all(!vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)), (4294967295u & arg_0.x) == (arg_0.x ^ 1u), ~arg_0.x <= arg_0.x), !(!vec4<bool>(false, false, false, true)), !(!(!vec4<bool>(true, true, false, true)))), Struct_1(-(i32(-2147483648)) << (arg_0.x ^ abs(arg_0.x)), ~((vec4<u32>(4294967295u, 13797u, 1u, arg_0.x) * vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x)) | (vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x) * vec4<u32>(0u, 72427u, arg_0.x, arg_0.x))), ~14824u, -(~var_0 << (arg_0.x | 0u))), Struct_1(firstTrailingBit(max(1i, u_input.b.x)), ~(vec4<u32>(0u, arg_0.x, 0u, 0u) & (vec4<u32>(4294967295u, 11878u, 22420u, arg_0.x) | vec4<u32>(6248u, arg_0.x, 4294967295u, 1u))), ~((arg_0.x - arg_0.x) * dot(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, 0u))), ~select(var_0, 0i, true) - clamp(1i, 2147483647i, countOneBits(2147483647i))));
    var_2 = floor(round(round(round(abs(vec4<f32>(550f, var_1, 114f, var_2.x))))));
    return var_3.d.c;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(vec4<u32>(arg_0, ~0u >> ~4294967295u, func_3(vec3<u32>(1u, arg_0, arg_0) >> vec3<u32>(arg_0, 1u, 58825u)), ~arg_0) >> vec4<u32>(7730u, 3189u, firstTrailingBit(arg_0), 0u));
    let var_1 = var_0.x;
    var var_2 = abs(var_0.x & (~arg_0 >> reverseBits(arg_0))) ^ 15828u;
    var_2 = firstLeadingBit(var_0.x);
    let var_3 = Struct_3(-trunc(-min(1755f, 347f)));
    return Struct_1((~(0i / u_input.b.x) + firstLeadingBit(~arg_1.x)) ^ -u_input.a, vec4<u32>(var_0.x ^ arg_0, ~0u, var_0.x, clamp(~41764u, ~0u - (var_0.x & 10203u), ~var_0.x << clamp(25730u, 4294967295u, 1u))), arg_0, arg_1.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    var var_0 = -637f;
    var var_1 = func_2((arg_2.b.x + arg_2.c) >> arg_2.c, ~((u_input.b * (arg_1.zz >> arg_2.b.ww)) + ~arg_1.zy));
    var_1 = func_2(var_1.c, vec2<i32>(var_1.d, 1i));
    let var_2 = vec3<i32>(-((arg_1.x / arg_1.x) | select(5677i, arg_1.x, false)), select(11925i, var_1.d, !(!true)), u_input.b.x) & ((arg_1 - max(arg_1, min(arg_1, arg_1))) % clamp(arg_1 ^ (arg_1 + vec3<i32>(var_1.a, u_input.b.x, -10587i)), arg_1, select(vec3<i32>(26749i, -55057i, 600i), abs(arg_1), any(vec2<bool>(true, false)))));
    var_1 = func_2(0u, vec2<i32>(select(dot(~vec4<i32>(u_input.a, var_2.x, var_2.x, var_2.x), clamp(vec4<i32>(1i, i32(-2147483648), 2147483647i, -33224i), vec4<i32>(44415i, arg_2.a, arg_1.x, var_1.a), vec4<i32>(var_2.x, i32(-2147483648), -1i, 0i))), ~dot(vec2<i32>(1i, 3087i), vec2<i32>(-1i, var_2.x)), false), 9982i));
    return 69028u <= var_1.b.x;
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = true;
    let var_1 = ~(~(~((4294967295u - 1u) & (76192u | 1u))));
    let var_2 = Struct_1(1i, vec4<u32>((var_1 & min(var_1, 27636u)) ^ ((var_1 + var_1) & 1u), 4294967295u, abs(var_1), 0u), 41814u, u_input.a << max(var_1, ~(19610u | var_1)));
    let var_3 = true;
    var var_4 = dot(vec4<i32>(i32(-2147483648), ~1i, u_input.a ^ (-27336i % -24368i), u_input.b.x) - vec4<i32>(u_input.a, dot(vec3<i32>(u_input.a, var_2.d, var_2.d) % vec3<i32>(u_input.a, u_input.a, var_2.d), ~vec3<i32>(u_input.a, u_input.a, -12959i)), 76945i, ~22916i), vec4<i32>(~(-43355i | 16117i), u_input.a / firstLeadingBit(u_input.a), ~u_input.b.x, u_input.a) / countOneBits(~(vec4<i32>(i32(-2147483648), 9831i, var_2.d, var_2.d) * vec4<i32>(var_2.d, var_2.d, var_2.a, 43374i))));
    return func_2(var_2.b.x % ~0u, firstTrailingBit(u_input.b));
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(func_4(Struct_3(-max(1669f, -480f)), vec3<i32>(u_input.b.x, u_input.a, abs(34439i) - ~u_input.b.x), func_2(dot(firstLeadingBit(vec3<u32>(51427u, 7345u, 0u)), vec3<u32>(391u, 0u, 4294967295u)), -select(u_input.b, vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)))), -686f * 414f);
    let var_1 = dot(~vec2<u32>(0u, ~58808u) + vec2<u32>((0u & var_0.b.x) / 12534u, ~abs(var_0.b.x)), vec2<u32>(1u, 0u));
    let var_2 = var_1;
    var var_3 = var_0;
    let var_4 = var_0.a;
    return Struct_3(780f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(~(-abs(12675i)), firstTrailingBit(vec4<u32>(1u, 51197u * 0u, 6952u, clamp(5037u, 4294967295u, 29662u))) & func_5(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), sign(-405f * 260f)).b, 77664u, ~((u_input.a + u_input.b.x) + ~u_input.a));
    let var_2 = var_1;
    var var_3 = func_2(var_1.c, vec2<i32>(abs(func_5(false, var_0.a).a), -dot(min(vec3<i32>(var_2.a, u_input.b.x, -16012i), vec3<i32>(var_1.d, u_input.b.x, 6468i)), -vec3<i32>(-48428i, var_2.d, -1i))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, -(step(vec2<f32>(-518f, -1000f), vec2<f32>(-1006f, 187f) - vec2<f32>(var_0.a, -110f)) * ((vec2<f32>(486f, var_0.a) * vec2<f32>(var_0.a, 1586f)) * trunc(vec2<f32>(-301f, var_0.a)))), var_4.c, -(-((vec4<f32>(-246f, var_0.a, -1184f, var_0.a) * vec4<f32>(var_0.a, 400f, var_0.a, 1000f)) * (vec4<f32>(var_0.a, var_0.a, -368f, var_0.a) / vec4<f32>(var_0.a, -564f, 1000f, -2090f)))), func_1().a);
}

