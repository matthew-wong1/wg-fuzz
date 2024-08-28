// {"0:0":[178,246,81,249,13,189,131,157,143,248,175,203,3,92,113,84,138,58,9,171,190,203,77,9,216,62,226,24,34,154,162,190]}
// Seed: 9286728287246747087

struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: u32) -> vec2<u32> {
    let var_0 = Struct_1(699f, -139f, firstLeadingBit(select(countOneBits(vec2<u32>(arg_2, arg_2)), ~clamp(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, arg_2), vec2<u32>(arg_3, arg_3)), select(!vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))))), select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), !(!vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), !vec2<bool>(true, false))), vec2<bool>(true, false), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_1 = var_0;
    var var_2 = vec3<bool>((-var_0.b >= 399f) && true, arg_1 != min(-168i, firstLeadingBit(-21372i)), !any(vec3<bool>(!false, all(vec3<bool>(var_0.d.x, var_0.d.x, false)), true)));
    var var_3 = select(!(!vec3<bool>(select(true, var_1.d.x, var_0.d.x), select(true, false, true), any(vec3<bool>(var_2.x, true, var_0.d.x)))), select(!select(!vec3<bool>(var_0.d.x, true, false), select(vec3<bool>(var_0.d.x, var_2.x, var_2.x), vec3<bool>(true, var_0.d.x, false), var_2.x), vec3<bool>(false, var_1.d.x, var_2.x)), select(!select(vec3<bool>(false, var_0.d.x, true), vec3<bool>(var_0.d.x, var_1.d.x, true), vec3<bool>(var_1.d.x, true, var_2.x)), vec3<bool>(!var_0.d.x, !var_0.d.x, true | var_2.x), select(!vec3<bool>(var_1.d.x, var_2.x, true), select(vec3<bool>(var_2.x, var_0.d.x, true), vec3<bool>(var_0.d.x, false, var_2.x), vec3<bool>(var_1.d.x, true, false)), var_2.x)), select(select(vec3<bool>(false, var_0.d.x, false), select(vec3<bool>(var_1.d.x, false, true), vec3<bool>(var_1.d.x, false, var_2.x), true), 13835i > 54832i), !vec3<bool>(var_1.d.x, var_2.x, true), vec3<bool>(all(vec2<bool>(true, var_2.x)), all(vec3<bool>(var_1.d.x, var_2.x, var_0.d.x)), var_2.x))), vec3<bool>(select(any(!vec4<bool>(false, false, var_2.x, false)), !(var_0.c.x != 96184u), var_1.d.x), true, !true));
    let var_4 = Struct_1(-(-trunc(-422f)) / var_0.a, -(min(exp2(arg_0.x), -119f / var_0.a) / (1342f - 1000f)), ~var_0.c, var_2.zz);
    return var_1.c;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.d.x;
    let var_1 = arg_0;
    var_0 = arg_0.a == -ceil(-584f);
    let var_2 = Struct_1(1036f, -991f, firstLeadingBit(var_1.c), var_1.d);
    let var_3 = ~vec4<u32>(77246u, 51644u % var_2.c.x, 26193u, ~(~(~var_1.c.x)));
    return false;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    var var_0 = arg_1.wz;
    let var_1 = vec4<bool>(!func_4(Struct_1(exp2(-172f), min(598f, -1000f), func_3(vec2<f32>(823f, 1103f), var_0.x, 1u, 8673u), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), !(select(-319f, -(-762f), !true) >= -floor(-741f)), true, select(true, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), !vec3<bool>(true, false, true))), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), true))));
    let var_2 = Struct_1(-835f, -round(exp2(step(-542f, 1991f))), clamp(reverseBits(~vec2<u32>(1u, 1u) + (vec2<u32>(37864u, 0u) / vec2<u32>(0u, 55540u))), ~(~vec2<u32>(6872u, 4294967295u)), reverseBits(~vec2<u32>(67990u, 0u) & ~vec2<u32>(47449u, 0u))), var_1.wx);
    let var_3 = var_2.b * -860f;
    let var_4 = var_2;
    return 534f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = true;
    var var_1 = Struct_1(ceil(func_2(firstLeadingBit(0i), reverseBits(reverseBits(u_input.b)))), arg_2.b, ~arg_2.c, arg_2.d);
    let var_2 = ~(vec4<u32>(abs(arg_3.c.x), arg_0.x, 1u, firstTrailingBit(var_1.c.x)) % ~vec4<u32>(~4294967295u, 1u, var_1.c.x, 77335u));
    var var_3 = floor(-max(trunc(vec3<f32>(arg_2.a, 350f, 241f)) - exp2(vec3<f32>(var_1.a, arg_3.b, var_1.a)), vec3<f32>(-1054f, var_1.a, var_1.a) / vec3<f32>(var_1.b, -456f, arg_2.b)));
    var_3 = -(vec3<f32>(-(-1092f) * -1000f, -(-(-1000f)), -1564f) - (vec3<f32>(func_2(46076i, u_input.b), -1009f + -1500f, var_1.b - var_1.b) + (vec3<f32>(var_1.b, arg_3.b, -137f) * exp2(vec3<f32>(-1000f, 612f, var_3.x)))));
    return func_2(reverseBits(24082i), vec4<i32>(dot(abs(vec4<i32>(u_input.b.x, arg_1.x, 29924i, u_input.b.x)), u_input.b), ~reverseBits(arg_1.x), -(20310i % u_input.a), abs(-arg_1.x)) ^ min(vec4<i32>(~37125i, u_input.b.x, -1i, u_input.b.x), clamp(~vec4<i32>(u_input.a, arg_1.x, arg_1.x, -13674i), ~u_input.b, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((trunc(-vec3<f32>(930f, 1319f, 298f)) / vec3<f32>(-1061f - -1000f, -912f, ceil(-268f))) / -(-vec3<f32>(-329f, -538f, 1636f) + (vec3<f32>(454f, -469f, -566f) * vec3<f32>(836f, 120f, -237f)))) + vec3<f32>(-1409f, abs(-425f / (-315f / -336f)), abs(trunc(820f / 559f)));
    var var_1 = vec3<f32>(var_0.x, abs(-min(-var_0.x, -(-1538f))), select(-func_1(vec3<u32>(29829u, 4294967295u, 21537u), u_input.b.zyx, Struct_1(var_0.x, -1160f, vec2<u32>(8144u, 8204u), vec2<bool>(false, false)), Struct_1(-1064f, -782f, vec2<u32>(0u, 19503u), vec2<bool>(false, false))) - round(var_0.x + var_0.x), -(-var_0.x), -(var_0.x - 559f) == (var_0.x - (-633f + -571f))));
    var_0 = vec3<f32>(-exp2(-(-1406f)), var_1.x / -1620f, 759f);
    var var_2 = u_input.b % -abs(abs(vec4<i32>(1i, u_input.a, -38545i, u_input.a)) / u_input.b);
    var var_3 = Struct_1(-(-654f), -abs(abs(var_1.x + 1551f)), vec2<u32>(44521u, ~(~65087u)) % max(firstTrailingBit(~vec2<u32>(4294967295u, 9366u)), abs(vec2<u32>(24774u, 4294967295u))), select(vec2<bool>(func_4(Struct_1(1294f, 876f, vec2<u32>(54545u, 4294967295u), vec2<bool>(false, true))), all(vec3<bool>(true, true, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), !vec2<bool>(false, false), any(vec4<bool>(true, false, true, true))), !(!vec2<bool>(false, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), !false)));
    var var_4 = true;
    var var_5 = Struct_1(select(-(-(var_3.a * var_1.x)), trunc(-1096f + -var_1.x), ~(-36041i) < -(-(-12995i))), -floor(func_2(-1i | var_2.x, u_input.b ^ vec4<i32>(u_input.a, u_input.a, 32513i, -1i))), min((~vec2<u32>(var_3.c.x, var_3.c.x) ^ firstLeadingBit(var_3.c)) ^ (vec2<u32>(75241u, 58300u) % (vec2<u32>(1u, var_3.c.x) % var_3.c)), reverseBits(var_3.c)), var_3.d);
    var_0 = -vec3<f32>(trunc(-var_3.a), var_3.a, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | (u_input.b >> firstTrailingBit(~vec4<u32>(6269u, 2501u, 0u, var_5.c.x))), min(0u, min(var_3.c.x, ~48527u)), func_1(max(vec3<u32>(4294967295u, var_5.c.x, 40104u) >> vec3<u32>(var_3.c.x, 0u, var_5.c.x), vec3<u32>(1u, 6260u, var_3.c.x) - vec3<u32>(50463u, var_3.c.x, var_3.c.x)) % ~select(vec3<u32>(28161u, 4294967295u, var_5.c.x), vec3<u32>(var_3.c.x, var_5.c.x, 4294967295u), vec3<bool>(true, true, var_3.d.x)), var_2.yyy, Struct_1(round(var_0.x), (129f / 434f) / -var_3.b, reverseBits(vec2<u32>(39851u, var_3.c.x) + vec2<u32>(var_3.c.x, 73665u)), select(select(var_3.d, vec2<bool>(var_3.d.x, false), var_5.d.x), !vec2<bool>(true, true), vec2<bool>(var_3.d.x, true))), Struct_1(round(var_5.b), -var_0.x, var_3.c, vec2<bool>(var_5.d.x, true))), -1249f);
}

