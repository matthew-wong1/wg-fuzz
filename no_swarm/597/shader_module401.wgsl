// {"0:0":[180,128,43,74,170,234,164,221,3,143,190,195,207,152,141,153,241,94,130,3,30,171,50,125,143,220,45,55,96,234,30,3,167,7,129,217,150,197,137,113]}
// Seed: 10293040261436845507

struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    let var_0 = ~(vec3<u32>((22679u % 44743u) / (u_input.a / 0u), ~(~1u), 94532u) * arg_2.c.a);
    var var_1 = 0u % (dot(vec2<u32>(5341u, 20822u | 0u), abs(~arg_2.c.a.yy)) * ~var_0.x);
    var var_2 = vec3<u32>(abs(clamp(702u, var_0.x, dot(arg_2.e.a.xx, u_input.b))) - 4350u, ~var_0.x, var_0.x);
    let var_3 = Struct_2(1787f, Struct_1(arg_2.e.a, u_input.c, 16718u, any(select(!vec4<bool>(arg_3, arg_1, false, true), select(vec4<bool>(false, true, true, arg_2.e.d), vec4<bool>(false, true, arg_3, true), vec4<bool>(arg_2.c.d, true, arg_1, arg_2.b.d)), !vec4<bool>(arg_2.e.d, arg_1, true, arg_2.b.d))), dot(firstLeadingBit(select(vec4<u32>(86443u, 42961u, u_input.a, arg_2.b.e), vec4<u32>(4294967295u, 64207u, var_0.x, var_0.x), arg_3)), ~vec4<u32>(var_2.x, u_input.a, 19262u, u_input.b.x))), arg_2.d, arg_2.c, Struct_1(reverseBits(arg_2.b.a << firstLeadingBit(arg_2.b.a)), -31182i, var_0.x, arg_1, (158041u >> firstLeadingBit(arg_2.d.c)) - var_2.x));
    var_1 = var_2.x;
    return vec2<bool>((522f != (exp2(var_3.a) / var_3.a)) && true, !false);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = !(!func_3(-vec2<f32>(703f, 430f) / vec2<f32>(-309f, arg_1), arg_3.b.d, Struct_2(select(1158f, 623f, arg_2.d), arg_2, arg_2, Struct_1(arg_2.a, -48707i, arg_2.c, true, arg_3.c.c), Struct_1(vec3<u32>(4294967295u, arg_3.e.a.x, u_input.d.x), -1i, u_input.d.x, arg_2.d, arg_2.e)), !(arg_3.e.d && arg_2.d)));
    let var_1 = arg_2.a;
    var var_2 = !select(select(!vec4<bool>(var_0.x, false, var_0.x, true), !(!vec4<bool>(false, true, arg_2.d, var_0.x)), vec4<bool>(all(vec3<bool>(arg_2.d, true, false)), arg_2.d, arg_3.b.d || arg_3.c.d, arg_3.e.d)), vec4<bool>(false, !false, arg_3.b.d, !arg_3.e.d), true);
    let var_3 = ~(~(~vec2<u32>(arg_3.b.a.x, 6160u)) ^ select(arg_3.c.a.yy, var_1.xy, var_2.x));
    let var_4 = Struct_2(ceil(arg_0.x), Struct_1(~vec3<u32>(9827u, var_3.x, 0u) ^ ~vec3<u32>(u_input.b.x, 1u, arg_3.c.a.x), ~reverseBits(-1i), u_input.d.x, all(var_2.xyz), select(36422u, ~abs(4294967295u), !(!false))), Struct_1(var_1, -arg_3.b.b >> arg_3.d.c, 29805u | 1u, arg_2.d, firstLeadingBit(firstLeadingBit(~u_input.a))), Struct_1(vec3<u32>(~4294967295u, clamp(var_3.x + u_input.a, ~1u, var_3.x), arg_3.c.a.x), arg_3.e.b, ~min(~var_1.x, arg_2.e), arg_3.d.d, ~0u), Struct_1(vec3<u32>(1u, 1u / (42165u - var_1.x), ~(4294967295u / 22221u)), arg_2.b >> 70086u, 90100u, all(vec3<bool>(arg_2.d, -1000f == -1795f, var_0.x)), min(0u << var_3.x, arg_2.c ^ 4294967295u) / arg_2.a.x));
    return arg_3.c.a.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = Struct_2(-972f, Struct_1(firstLeadingBit(vec3<u32>(u_input.b.x, 4294967295u, u_input.a)) | vec3<u32>(0u, u_input.b.x, func_2(vec3<f32>(-1067f, 613f, 1216f), 684f, Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.d.x), arg_2.x, 61707u, true, 0u), Struct_2(-1576f, Struct_1(vec3<u32>(u_input.a, 4294967295u, u_input.b.x), u_input.c, u_input.d.x, true, u_input.d.x), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 150291u), arg_0.x, u_input.b.x, true, 18587u), Struct_1(vec3<u32>(0u, 35626u, 1u), arg_1, 4294967295u, true, u_input.a), Struct_1(vec3<u32>(11398u, 4294967295u, 17430u), u_input.c, 0u, true, u_input.a)))), ~countOneBits(u_input.c), 0u, !func_3(vec2<f32>(-1379f, -755f) - vec2<f32>(-943f, -1415f), all(vec2<bool>(false, true)), Struct_2(767f, Struct_1(vec3<u32>(u_input.b.x, 52817u, u_input.a), arg_2.x, 15189u, false, u_input.a), Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x), arg_0.x, 25612u, true, 1u), Struct_1(vec3<u32>(u_input.d.x, 0u, 0u), -16833i, 9307u, false, u_input.a), Struct_1(vec3<u32>(4294967295u, u_input.d.x, 18687u), 1i, 51174u, false, u_input.a)), func_3(vec2<f32>(-1373f, -652f), false, Struct_2(562f, Struct_1(vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x), 60505i, 58741u, true, u_input.d.x), Struct_1(vec3<u32>(40499u, 1u, 15068u), 15463i, u_input.d.x, false, u_input.d.x), Struct_1(vec3<u32>(17032u, u_input.b.x, u_input.d.x), arg_1, u_input.a, true, u_input.b.x), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), -1i, 4294967295u, true, u_input.d.x)), true).x).x, u_input.b.x), Struct_1(vec3<u32>(4294967295u, u_input.b.x, ~4294967295u), 10193i % (~2147483647i * -35636i), dot(vec4<u32>(4294967295u, 4294967295u, 87241u, 25390u) ^ ~vec4<u32>(u_input.b.x, 68585u, u_input.d.x, 46691u), ~countOneBits(vec4<u32>(1u, 17437u, 33623u, u_input.d.x))), true || false, u_input.b.x), Struct_1(vec3<u32>(13379u, 21128u, u_input.b.x), u_input.e, ~u_input.a, !true, abs(~(~0u))), Struct_1(~vec3<u32>(~u_input.d.x, u_input.a, u_input.d.x), ~(~(-arg_1)), reverseBits(~(~u_input.b.x)), !(abs(-442f) < (-848f / -274f)), clamp(u_input.d.x, u_input.a, abs(~4294967295u))));
    var var_1 = select(-min(-1000f, -325f), -var_0.a, var_0.c.d) < floor(482f);
    let var_2 = Struct_2(-1000f + (2699f * 739f), Struct_1(vec3<u32>(20169u, ~22042u >> ~48985u, (var_0.b.c | 1u) & ~u_input.d.x), (u_input.c + -(-33556i)) & max(-59614i, 8606i | arg_1), 1u, any(vec4<bool>(any(vec3<bool>(var_0.b.d, var_0.d.d, var_0.e.d)), func_3(vec2<f32>(var_0.a, 223f), false, Struct_2(1000f, Struct_1(vec3<u32>(4294967295u, u_input.a, 10745u), arg_1, 1u, true, u_input.a), Struct_1(vec3<u32>(u_input.b.x, var_0.c.c, 0u), var_0.b.b, var_0.e.c, true, 53500u), var_0.e, Struct_1(vec3<u32>(var_0.d.a.x, var_0.d.a.x, var_0.b.e), arg_2.x, var_0.e.e, var_0.d.d, 1u)), var_0.c.d).x, 55704u > var_0.d.e, 0i > u_input.e)), func_2(vec3<f32>(197f, var_0.a, 669f), -var_0.a, var_0.e, Struct_2(var_0.a, var_0.e, var_0.e, var_0.d, var_0.b)) % var_0.d.e), var_0.c, Struct_1(var_0.e.a, -1i, select(var_0.c.e, ~4294967295u, true), any(select(vec4<bool>(var_0.d.d, true, false, true), !vec4<bool>(false, false, var_0.c.d, var_0.e.d), false)), ~var_0.b.c), Struct_1(var_0.b.a, clamp(2147483647i, (u_input.c - -1i) << (25829u / u_input.b.x), ~(arg_1 ^ arg_2.x)), ~abs(var_0.b.a.x), false, 53064u));
    var var_3 = ~(~max(select(min(vec3<i32>(-22204i, arg_0.x, var_2.e.b), vec3<i32>(var_0.d.b, 1i, var_2.b.b)), clamp(vec3<i32>(-1i, -1i, -22234i), vec3<i32>(u_input.c, i32(-2147483648), arg_0.x), vec3<i32>(u_input.e, var_0.c.b, u_input.c)), !vec3<bool>(true, true, false)), vec3<i32>(2147483647i, 2147483647i * 1i, abs(16256i))));
    var_1 = !(!(!all(!vec4<bool>(var_2.e.d, false, false, var_2.c.d))));
    return ~max(var_0.c.a.yy / (var_0.b.a.xy & vec2<u32>(u_input.d.x, var_0.e.e)), abs(firstTrailingBit(var_2.e.a.zx))) - vec2<u32>(27945u - (39942u / (var_2.c.a.x | 4294967295u)), var_2.d.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(((84892u | 4294967295u) - 93936u) - ~1u, 37739u | u_input.d.x);
    var var_1 = select(~select(~u_input.d, func_1(vec2<i32>(u_input.e, -27484i), 2147483647i, vec2<i32>(17488i, 3977i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), u_input.b, true) ^ u_input.d;
    let var_2 = vec3<i32>(abs(~max(-29476i, -u_input.c)), u_input.e, ~(1i / (u_input.e | 34164i)) ^ max(47643i, -firstLeadingBit(u_input.c)));
    var_1 = u_input.b + ~(~vec2<u32>(~4501u, func_2(vec3<f32>(-566f, -984f, 393f), -705f, Struct_1(vec3<u32>(0u, var_0, u_input.d.x), u_input.c, 34909u, true, var_1.x), Struct_2(2009f, Struct_1(vec3<u32>(39090u, 4294967295u, 48183u), -42274i, 5292u, false, 1u), Struct_1(vec3<u32>(39519u, 4294967295u, u_input.d.x), -1i, var_1.x, false, 65175u), Struct_1(vec3<u32>(u_input.b.x, var_0, u_input.a), u_input.e, 70588u, false, 22586u), Struct_1(vec3<u32>(76642u, 61093u, 0u), 33298i, var_1.x, false, var_1.x)))));
    let var_3 = Struct_2(914f, Struct_1(vec3<u32>(firstTrailingBit(reverseBits(67377u)), 67581u, u_input.a), -(-(-1i)), var_0, !false & !(false & false), dot((vec4<u32>(u_input.a, 17871u, 40935u, 22428u) << vec4<u32>(1u, 15808u, 4294967295u, 4294967295u)) + vec4<u32>(61061u, 1u, 60190u, 40919u), ~(vec4<u32>(var_1.x, 58076u, 0u, 1u) % vec4<u32>(26046u, var_0, 54901u, 1u)))), Struct_1(vec3<u32>(var_0, 1u, ~1u / ~u_input.b.x), u_input.c % ((-16220i & 12859i) | -(-1i)), ~(~73775u), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false), true)), u_input.d.x), Struct_1(vec3<u32>(~var_1.x, 4294967295u, 18608u << var_0) << (~vec3<u32>(var_1.x, var_0, 4294967295u) % (vec3<u32>(u_input.d.x, var_1.x, 1u) & vec3<u32>(var_0, var_0, 1u))), -43542i, 1u, !((u_input.e - u_input.c) == u_input.e), var_1.x), Struct_1(reverseBits(~vec3<u32>(var_0, 0u, var_0)), ~firstTrailingBit(u_input.c) ^ 2147483647i, var_1.x, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

