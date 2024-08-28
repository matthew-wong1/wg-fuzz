// {"0:0":[55,30,216,127,48,242,220,198,159,206,75,108,68,126,26,180,254,44,198,189,58,230,183,47,208,230,10,190,104,169,104,187,29,217,52,230,137,197,21,200,208,58,161,210,14,57,38,73]}
// Seed: 9339733204616509149

struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> i32 {
    let var_0 = Struct_2(vec2<u32>(u_input.b.x - u_input.b.x, firstTrailingBit(countOneBits(28364u))) << (vec2<u32>(u_input.b.x, u_input.b.x) << (vec2<u32>(u_input.b.x, 14810u) & countOneBits(u_input.b))), Struct_1(u_input.e.wyz, -(-237f), ~select(vec3<u32>(0u, 100703u, u_input.b.x), vec3<u32>(u_input.b.x, 38600u, u_input.b.x), !false)), Struct_1(u_input.e.zww % u_input.e.zyz, sign(-888f - 671f) * 445f, abs(vec3<u32>(u_input.b.x, 20269u, u_input.b.x))), Struct_1(-(-max(vec3<i32>(-1i, -1i, 32363i), u_input.e.yzz)), -276f, ~min(vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(2116u, u_input.b.x, u_input.b.x))));
    return ~u_input.e.x % ((~(var_0.d.a.x >> var_0.a.x) << ~var_0.a.x) * (8529i ^ -(i32(-2147483648))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = Struct_4(vec3<u32>(firstTrailingBit(u_input.b.x), ~4294967295u + dot(firstTrailingBit(vec4<u32>(8510u, arg_0, 4294967295u, 0u)), ~vec4<u32>(1u, arg_0, u_input.b.x, 0u)), firstLeadingBit(9204u)), any(vec2<bool>(!false || false, (arg_0 << 13049u) < (arg_0 << 12774u))), Struct_3(reverseBits(vec4<u32>(~u_input.b.x, ~arg_0, 1u, 583u)), abs(vec3<f32>(-673f, -613f, step(1000f, -2332f))), -(-max(-361f, -147f)), ~u_input.b.x), arg_0);
    let var_1 = var_0.c.b.x;
    var var_2 = u_input.b.x;
    var_2 = var_0.a.x;
    var var_3 = -(-633f);
    return arg_3;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = func_4(1u, -vec4<i32>(func_3(), firstTrailingBit(u_input.e.x), -(u_input.c.x - -71016i), firstLeadingBit(min(u_input.e.x, u_input.d))), vec4<i32>(-40391i ^ u_input.a, u_input.c.x, -dot(u_input.e.ww, u_input.e.yx) & 0i, -1i), ((u_input.c.x - max(u_input.e.x, -1i)) | -12483i) % -1i);
    let var_1 = Struct_4(abs(vec3<u32>(42232u, u_input.b.x, ~14452u)) | ~(~vec3<u32>(u_input.b.x, u_input.b.x, arg_1)), any(vec2<bool>(!all(vec3<bool>(arg_2, arg_2, arg_2)), false)), Struct_3(vec4<u32>(139124u, ~4294967295u, ~u_input.b.x, ~arg_1) | min(~vec4<u32>(u_input.b.x, 4294967295u, arg_1, arg_1), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_1)), arg_0.xwy + -min(arg_0.xyx, arg_0.zwz), -334f, (~1u % u_input.b.x) + 1u), (abs(arg_1) * arg_1) << arg_1);
    return arg_1;
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    return Struct_4(reverseBits(min(vec3<u32>(u_input.b.x * 1u, u_input.b.x % u_input.b.x, ~4294967295u), vec3<u32>(u_input.b.x, u_input.b.x | u_input.b.x, func_2(arg_0, u_input.b.x, true)))), (dot(u_input.e.xz, u_input.e.zy ^ vec2<i32>(u_input.c.x, u_input.d)) + u_input.d) == -(~countOneBits(u_input.d)), Struct_3(~(~max(vec4<u32>(30370u, u_input.b.x, 1u, 4294967295u), vec4<u32>(u_input.b.x, 3713u, u_input.b.x, 0u))), vec3<f32>((arg_0.x / arg_0.x) * floor(699f), trunc(707f) - arg_0.x, max(451f * 1000f, arg_0.x + 1559f)), -min(arg_0.x * arg_0.x, 756f + arg_0.x), ~firstTrailingBit(50141u)), abs(u_input.b.x));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> u32 {
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-floor(-(-1128f)), -(1022f / min(-787f, 755f))) + -(vec2<f32>(-522f, trunc(1963f)) - -(vec2<f32>(-153f, 1000f) * vec2<f32>(1229f, -1136f)));
    let var_1 = 96409u;
    var var_2 = vec4<u32>(~(~(~(~var_1))), func_5(func_1(-vec4<f32>(148f, var_0.x, 1000f, -1074f) * vec4<f32>(1362f, 849f, var_0.x, 472f)), true, Struct_2(firstTrailingBit(~u_input.b), Struct_1(vec3<i32>(-2722i, 20757i, 8769i), -163f / -991f, ~vec3<u32>(var_1, 16024u, 10964u)), Struct_1(vec3<i32>(u_input.e.x, u_input.a, -26777i), var_0.x * var_0.x, vec3<u32>(var_1, u_input.b.x, u_input.b.x) % vec3<u32>(0u, var_1, 1u)), Struct_1(select(u_input.e.wyy, vec3<i32>(u_input.c.x, u_input.c.x, -13597i), false), var_0.x / 134f, vec3<u32>(9246u, 0u, u_input.b.x) | vec3<u32>(0u, var_1, 32477u))), -235f), ~var_1 >> 65136u, var_1);
    let var_3 = !vec3<bool>(func_1(vec4<f32>(ceil(var_0.x), -(-1447f), step(636f, var_0.x), min(var_0.x, -410f))).b, true, true);
    let var_4 = Struct_4(vec3<u32>((dot(vec2<u32>(u_input.b.x, 4294967295u), u_input.b) << ~var_1) / ~(~3008u), 1u, firstLeadingBit(~(~var_1))), true, func_1(vec4<f32>(var_0.x, sign(step(-1000f, var_0.x)), -1069f, var_0.x)).c, abs(4294967295u));
    var_2 = var_4.c.a;
    var var_5 = any(select(var_3.yx, select(select(vec2<bool>(false, false), !var_3.yy, select(var_3.xy, var_3.yx, vec2<bool>(var_4.b, var_4.b))), !vec2<bool>(var_3.x, var_3.x), false), !(!(!var_4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(var_4.c.a) << vec4<u32>(0u, 0u, 32604u, 61927u)) ^ vec4<u32>(min(abs(var_4.d), 16470u), 0u, countOneBits(var_1) & ~4294967295u, dot(firstLeadingBit(u_input.b), vec2<u32>(u_input.b.x, 119301u))), min(~vec2<u32>(~4294967295u, dot(vec4<u32>(var_4.c.d, 41899u, var_2.x, var_1), var_4.c.a)), vec2<u32>(countOneBits(1u), ~select(1u, 38243u, var_4.b))), sign(-((vec4<f32>(227f, var_0.x, -197f, var_4.c.b.x) - vec4<f32>(var_4.c.b.x, 705f, var_0.x, var_0.x)) - vec4<f32>(700f, var_4.c.c, var_4.c.b.x, var_4.c.b.x))));
}

