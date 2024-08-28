// {"0:0":[201,218,33,121,182,129,108,103,109,53,136,32,171,200,25,220,112,70,5,128,78,71,180,99,19,208,137,164,233,63,1,171,159,190,220,17,91,64,214,77,202,36,53,88,134,166,186,166,133,200,99,20,161,24,121,44,51,171,73,255,147,104,148,4]}
// Seed: 7695162140187640625

struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> u32 {
    var var_0 = Struct_1(~reverseBits((u_input.a >> 0u) << ~4294967295u), -301f, -4652i, -179f, vec2<bool>(true, any(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))));
    return dot(vec2<u32>(var_0.a >> 1u, ~0u), ~(vec2<u32>(u_input.b.x, 63891u * 36656u) ^ u_input.b));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    let var_0 = dot(~vec2<u32>(~u_input.a, 4294967295u) & vec2<u32>(~arg_0, 32924u), vec2<u32>(~(~(0u >> 17906u)), u_input.b.x));
    var var_1 = ~func_3();
    var var_2 = min(step(vec4<f32>(round(-176f), -(-397f), -(-2162f), -563f), select(vec4<f32>(-569f, -1323f, 2249f, -1485f), -vec4<f32>(1040f, 1484f, -1373f, 316f), var_0 >= 4294967295u)) / (vec4<f32>(-1714f, -(-282f), -1000f, -853f) * ((vec4<f32>(-297f, 1000f, -1023f, -954f) * vec4<f32>(-1285f, 274f, 210f, 1504f)) + min(vec4<f32>(-164f, 627f, -823f, -1926f), vec4<f32>(1198f, -1232f, 1000f, 551f)))), vec4<f32>(((-574f - -1961f) / -451f) - (round(-1305f) / -(-139f)), -1122f, -1900f, 540f));
    let var_3 = Struct_1(~var_0 + 0u, var_2.x, (~(u_input.c * 33172i) << reverseBits(var_0)) >> dot(min(~u_input.d, vec4<u32>(var_0, 4294967295u, arg_0, arg_0)), vec4<u32>(reverseBits(25214u), ~var_0, abs(4294967295u), arg_0 << 0u)), -1366f, !vec2<bool>(arg_1.x || any(vec2<bool>(false, false)), arg_1.x));
    let var_4 = vec4<bool>(any(select(select(select(vec2<bool>(arg_1.x, true), arg_1.xx, false), !var_3.e, !var_3.e.x), arg_1.yz, !var_3.e.x)), all(select(select(vec4<bool>(false, false, var_3.e.x, var_3.e.x), select(vec4<bool>(var_3.e.x, true, var_3.e.x, false), vec4<bool>(var_3.e.x, arg_1.x, false, true), vec4<bool>(var_3.e.x, false, var_3.e.x, false)), !vec4<bool>(var_3.e.x, true, false, var_3.e.x)), !select(vec4<bool>(var_3.e.x, false, false, true), vec4<bool>(arg_1.x, true, arg_1.x, var_3.e.x), arg_1.x), all(!vec3<bool>(true, true, true)))), arg_1.x, false);
    return 4294967295u;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = ~(countOneBits(firstLeadingBit(-5509i) % min(u_input.c, u_input.e.x)) << func_2(~(u_input.a + 0u), arg_0.yyz));
    var var_1 = min(-ceil(-200f + -1267f), (-678f / -157f) - (1681f / (1862f / -1651f))) - abs(abs(-745f / -209f) - 2051f);
    var_1 = 759f;
    var var_2 = u_input.a;
    return Struct_1(1u, -max(-min(-498f, -292f), select(-1528f, -216f, arg_0.x) / -(-565f)), i32(-2147483648), (max(1297f - -314f, -1580f) * -(383f + 247f)) - -(-394f), vec2<bool>(all(!select(arg_0.yzw, vec3<bool>(arg_0.x, false, false), true)), !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec4<bool>(!all(vec4<bool>(false, false, false, false)), false, all(vec2<bool>(true, false)) | true, true), vec4<bool>(!(!true), select(all(vec2<bool>(false, true)), true, select(false, false, false)), false, true), !(!vec4<bool>(false, true, false, true))));
    var_0 = Struct_1(func_1(select(vec4<bool>(true || false, var_0.a != 42561u, u_input.e.x > var_0.c, var_0.d != -313f), vec4<bool>(true, var_0.e.x, var_0.e.x, any(var_0.e)), !vec4<bool>(var_0.e.x, var_0.e.x, true, false))).a, var_0.b, i32(-2147483648), -(-var_0.b), vec2<bool>(func_1(select(select(vec4<bool>(var_0.e.x, false, false, var_0.e.x), vec4<bool>(var_0.e.x, var_0.e.x, true, var_0.e.x), true), !vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x), vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x))).e.x, var_0.e.x));
    var var_1 = countOneBits(u_input.e.yx) ^ u_input.e.yz;
    var_1 = abs(vec2<i32>(~u_input.e.x * (u_input.c - -51227i), (var_1.x % var_0.c) ^ (0i - 0i)) | u_input.e.yy);
    let var_2 = Struct_1(34030u, var_0.d, ~select(abs(-118329i) ^ var_1.x, -17279i, -var_0.d < 708f), -select(-ceil(1387f), -var_0.b, !var_0.e.x && var_0.e.x), vec2<bool>(any(select(select(vec3<bool>(var_0.e.x, false, var_0.e.x), vec3<bool>(true, var_0.e.x, true), var_0.e.x), select(vec3<bool>(false, var_0.e.x, true), vec3<bool>(true, var_0.e.x, var_0.e.x), vec3<bool>(false, false, var_0.e.x)), vec3<bool>(false, false, false))), dot(-u_input.e, vec3<i32>(u_input.e.x, var_1.x, 7798i)) > -(u_input.e.x + i32(-2147483648))));
    let var_3 = var_2;
    var_0 = Struct_1(var_2.a, var_3.d, var_1.x, (775f - (-var_0.d - var_0.b)) * abs(-round(var_2.d)), vec2<bool>(!(!var_0.e.x), !var_0.e.x));
    var_1 = vec2<i32>(-36532i, max(2300i, ~35605i) / abs(0i % i32(-2147483648))) * countOneBits(vec2<i32>(~var_3.c / ~1i, ~(var_3.c - -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(13190i, var_2.c, -func_1(!vec4<bool>(false, true, var_2.e.x, var_0.e.x)).d, ~firstLeadingBit(var_1.x), 1000f);
}

