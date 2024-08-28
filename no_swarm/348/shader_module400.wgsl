// {"0:0":[135,39,170,3,96,251,227,106,205,248,125,46,79,206,2,96,201,145,176,38,65,65,216,78]}
// Seed: 5673288650601778628

struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -376f;

fn func_3() -> f32 {
    let var_0 = Struct_1(-(-select(vec4<i32>(-55404i, 45333i, 2147483647i, u_input.d.x), vec4<i32>(21717i, 42722i, u_input.b, 1i), true)) & -vec4<i32>(u_input.d.x, 26612i, min(u_input.d.x, u_input.b), 0i ^ u_input.b), false || !all(!vec3<bool>(false, true, false)), -(-(-37251i | u_input.b)) << countOneBits(u_input.a), abs(reverseBits(~u_input.a)));
    var var_1 = Struct_1(clamp(vec4<i32>(dot(vec3<i32>(-31424i, var_0.c, 1i), var_0.a.xzy), var_0.c, var_0.c, reverseBits(28381i - -7151i)), var_0.a, vec4<i32>(u_input.b, -3637i, ~(-1i), i32(-2147483648))), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), var_0.b), vec3<bool>(false | true, true & var_0.b, var_0.b), false)), dot(-(var_0.a | var_0.a), vec4<i32>(~var_0.a.x / (19900i | i32(-2147483648)), (17604i & var_0.c) | (2147483647i / u_input.b), -dot(var_0.a, vec4<i32>(15576i, u_input.d.x, var_0.c, u_input.b)), u_input.b)), max(~1u | (~0u / ~33417u), u_input.c));
    var var_2 = var_0;
    var var_3 = ~var_1.c;
    var_2 = var_0;
    return max(max(-377f, 639f) + min(-513f, (195f + 968f) + -1000f), min(sign(-(1519f * 1000f)), sign(max(-1993f * 924f, min(305f, 490f)))));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec4<i32>(abs(i32(-2147483648)) / ~(-43742i), -u_input.b * dot(vec2<i32>(u_input.d.x, u_input.b), vec2<i32>(0i, 31676i)), u_input.d.x, ~u_input.b) * select(~vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, 13073i) ^ (vec4<i32>(u_input.d.x, u_input.d.x, -21616i, i32(-2147483648)) + vec4<i32>(u_input.d.x, u_input.b, -17558i, u_input.b)), vec4<i32>(u_input.b, -14603i + -1i, ~(-1i), -32834i), false), !((func_3() == 1000f) || false), abs(~(-1i >> (u_input.c & 9853u))), u_input.a);
    let var_1 = Struct_1(vec4<i32>(dot(-firstLeadingBit(vec2<i32>(-1i, var_0.a.x)), abs(vec2<i32>(2147483647i, -1i))), -1i, u_input.b, select(-(-11798i), -var_0.c, !var_0.b) % max(0i, abs(var_0.a.x))), !any(select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, false, var_0.b), false), !vec3<bool>(true, true, var_0.b), !true)), abs(((61641i << u_input.a) / 1i) ^ (u_input.d.x | -(i32(-2147483648)))), countOneBits(u_input.a));
    let var_2 = ceil(-vec3<f32>(min(-631f, -1198f), -(-1389f), select(-1355f, 390f, var_1.b))) - min(-(vec3<f32>(509f, -2000f, 173f) + vec3<f32>(2259f, -740f, -1842f)) - round(vec3<f32>(-1077f, -570f, -441f) - vec3<f32>(-329f, -400f, -745f)), vec3<f32>(-875f + -214f, min(trunc(-945f), -781f + 1558f), floor(-(-1271f))));
    var var_3 = -vec4<f32>((-888f + -2881f) / trunc(abs(var_2.x)), -711f, func_3(), var_2.x);
    let var_4 = vec4<f32>(var_2.x, -((1035f * -(-970f)) - var_3.x), -237f - -1572f, var_2.x);
    return min(dot(abs((vec2<i32>(2147483647i, -1i) ^ var_1.a.yw) ^ (u_input.d | vec2<i32>(var_0.c, 30628i))), u_input.d), firstLeadingBit((i32(-2147483648) ^ -7782i) & (var_1.a.x * 12805i)) + dot(var_1.a.yxx, vec3<i32>(~var_0.a.x, -1i / u_input.d.x, u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = -136f;
    global0 = -var_1;
    global0 = round(-1000f);
    global0 = 1421f / var_1;
    return Struct_1(vec4<i32>(~1i, abs(reverseBits(~2147483647i)), arg_0.a.x, 0i), any(select(!(!vec2<bool>(arg_0.b, true)), vec2<bool>(-752f != var_1, arg_3.b), arg_3.b)), ~4927i, ~arg_3.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: u32) -> vec3<u32> {
    let var_0 = 0i % (u_input.d.x << ~1u);
    var var_1 = func_4(Struct_1(vec4<i32>(func_2(), u_input.b, var_0, u_input.d.x) + (vec4<i32>(i32(-2147483648), 0i, var_0, u_input.d.x) & abs(vec4<i32>(1i, -33361i, u_input.b, 1i))), arg_1, -(~31124i + (2147483647i + i32(-2147483648))), 4294967295u * ~(~arg_0.x)), arg_1, -max(round(-vec3<f32>(687f, -1188f, -2507f)), floor(max(vec3<f32>(-1149f, -1000f, 1235f), vec3<f32>(434f, 233f, -953f)))), Struct_1(max(-vec4<i32>(u_input.d.x, u_input.b, 1i, -34839i), vec4<i32>(u_input.b, i32(-2147483648), u_input.d.x, var_0) % ~vec4<i32>(u_input.b, 0i, u_input.d.x, -2026i)), all(vec4<bool>(!arg_1, all(vec4<bool>(arg_1, false, arg_1, arg_1)), true, false & false)), u_input.d.x, abs(~13237u << 29623u)));
    var var_2 = func_4(func_4(func_4(func_4(Struct_1(var_1.a, false, 58368i, arg_0.x), !var_1.b, step(vec3<f32>(-214f, -1436f, 1206f), vec3<f32>(-406f, 337f, 111f)), Struct_1(var_1.a, arg_1, u_input.b, 0u)), any(vec2<bool>(false, arg_1)), -vec3<f32>(-809f, 797f, 899f), Struct_1(var_1.a, var_1.b, dot(vec3<i32>(-12459i, 2147483647i, var_0), var_1.a.zzz), ~4294967295u)), !var_1.b, -(-min(vec3<f32>(1000f, -1000f, 1056f), vec3<f32>(-2284f, -293f, 195f))), func_4(func_4(func_4(Struct_1(vec4<i32>(var_1.c, 45366i, u_input.b, u_input.d.x), var_1.b, var_0, 85395u), true, vec3<f32>(-172f, 402f, 919f), Struct_1(vec4<i32>(var_0, -58869i, var_1.c, var_0), false, var_0, 18281u)), 1u >= 31765u, vec3<f32>(1512f, -136f, -740f) + vec3<f32>(1516f, 514f, 672f), func_4(Struct_1(vec4<i32>(i32(-2147483648), var_0, u_input.d.x, 2147483647i), var_1.b, var_1.c, 36838u), true, vec3<f32>(-416f, -368f, 1519f), Struct_1(vec4<i32>(0i, 0i, var_0, -26338i), var_1.b, u_input.b, 63023u))), !(!true), vec3<f32>(-270f, -149f, -2554f), func_4(Struct_1(var_1.a, arg_1, u_input.d.x, 0u), !true, vec3<f32>(1688f, -485f, 259f) * vec3<f32>(1000f, -314f, 1149f), func_4(Struct_1(vec4<i32>(i32(-2147483648), u_input.d.x, var_0, u_input.d.x), false, var_1.a.x, 27740u), true, vec3<f32>(-1837f, 1715f, -2251f), Struct_1(vec4<i32>(i32(-2147483648), var_1.a.x, var_0, u_input.d.x), true, i32(-2147483648), u_input.a))))), -(-(-(-1788f))) >= 967f, select(vec3<f32>(-func_3(), -round(1273f), (-1316f - 110f) + (327f / 505f)), vec3<f32>(-(-(-1332f)), 1289f, -abs(425f)), var_1.b), func_4(Struct_1(var_1.a + (var_1.a | vec4<i32>(-36820i, var_0, i32(-2147483648), u_input.d.x)), true, var_0, min(var_1.d / var_1.d, countOneBits(15756u))), false, round((vec3<f32>(1438f, -583f, -466f) - vec3<f32>(935f, -318f, -247f)) - (vec3<f32>(-1370f, -141f, 1254f) * vec3<f32>(-485f, -864f, 829f))), func_4(Struct_1(vec4<i32>(var_1.c, -12535i, var_1.a.x, var_1.c), true && false, -69911i, abs(98864u)), !true, vec3<f32>(-1783f, 1000f, 620f) + (vec3<f32>(-1536f, 209f, 133f) - vec3<f32>(-1128f, -1312f, -249f)), func_4(func_4(Struct_1(vec4<i32>(12849i, var_1.c, var_0, -25165i), var_1.b, var_0, arg_0.x), false, vec3<f32>(1042f, -903f, -395f), Struct_1(vec4<i32>(50297i, u_input.b, var_0, var_1.a.x), var_1.b, 0i, arg_2)), true, vec3<f32>(-657f, 875f, -1135f) - vec3<f32>(-751f, -152f, 1509f), func_4(Struct_1(var_1.a, false, 2147483647i, arg_2), false, vec3<f32>(1083f, -2177f, -244f), Struct_1(var_1.a, true, var_0, arg_0.x))))));
    var var_3 = -1041f;
    var var_4 = Struct_1(var_2.a, var_2.b, var_0, max(var_2.d, ((36504u * 4294967295u) & (0u * arg_0.x)) + ~abs(var_1.d)));
    return firstLeadingBit(~(~(~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c >> (dot(abs(abs(vec3<u32>(54206u, 7771u, 11272u))), func_1(firstLeadingBit(vec3<u32>(1u, 0u, u_input.a)), true, ~63513u)) | u_input.a);
    let var_1 = u_input.b * countOneBits(func_4(Struct_1(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 943f != 820f, ~u_input.d.x, u_input.c), false, (vec3<f32>(1937f, 1593f, -514f) / vec3<f32>(701f, 574f, -467f)) * vec3<f32>(505f, 131f, -639f), func_4(func_4(Struct_1(vec4<i32>(u_input.b, 29192i, 0i, 1i), true, -19237i, 43674u), true, vec3<f32>(1057f, 167f, 2308f), Struct_1(vec4<i32>(u_input.d.x, -31414i, 1i, u_input.d.x), false, u_input.d.x, 0u)), u_input.b == -1i, vec3<f32>(2432f, 1446f, 597f), Struct_1(vec4<i32>(38332i, -43278i, u_input.d.x, u_input.b), true, 1i, u_input.c))).a.x);
    let var_2 = !(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits((vec2<u32>(4294967295u, u_input.a) ^ ~vec2<u32>(u_input.c, 58047u)) << vec2<u32>(u_input.c, max(u_input.c, 2911u))), -(-(-(-444f))) * floor(1711f), ~(49647i >> u_input.a), select(reverseBits(84492u), firstTrailingBit(select(u_input.c, 42888u, false)) - ~u_input.c, any(vec4<bool>(var_2.x, var_2.x, !false, var_2.x))));
}

