// {"0:0":[203,58,80,238]}
// Seed: 15231140602162622866

struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> vec2<u32> {
    var var_0 = ~max(~vec2<u32>(19014u, ~1u), ~(vec2<u32>(0u, 0u) - vec2<u32>(1u, 5155u)) & ~(~vec2<u32>(19824u, 31485u)));
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = vec3<f32>(arg_2.x, -457f, min(-arg_3, -1115f));
    let var_3 = ~((29815u * var_0.x) / 4294967295u);
    return ~(~(~vec2<u32>(var_0.x, var_3)) >> reverseBits(vec2<u32>(55315u, var_0.x))) - abs(vec2<u32>(~var_3, 66869u));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(!select(!(!vec2<bool>(true, arg_2.x)), !arg_2.yw, arg_2.zw), vec4<bool>(true, true, true, any(arg_2.zyy)));
    let var_1 = abs(-(ceil(min(vec2<f32>(1321f, -1000f), vec2<f32>(-1331f, 1430f))) + vec2<f32>(-(-429f), 909f - 1122f)));
    var var_2 = Struct_1(vec3<f32>(-var_1.x, -(-1000f), (-(-1779f) + 309f) * 1629f), 4294967295u, 815f, -1i);
    var var_3 = Struct_1(trunc(-vec3<f32>(var_2.c, 650f, -383f + -675f)), ~0u, var_2.a.x, abs(var_2.d) % arg_0);
    return reverseBits(dot(func_3(var_0, arg_2.x, -(vec4<f32>(-331f, 472f, var_2.c, var_2.c) / vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_1.x)), var_3.c), vec2<u32>(clamp(~4294967295u, 65346u ^ 0u, 0u + 18u), dot(min(vec2<u32>(var_3.b, var_2.b), vec2<u32>(var_3.b, var_2.b)), vec2<u32>(0u, var_2.b) % vec2<u32>(var_2.b, var_2.b)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<u32>(18605u | (46808u * ~4294967295u), func_2(u_input.a, 0i + countOneBits(1i), !arg_0.b, any(!vec2<bool>(arg_0.b.x, false))), 20156u, ~(~countOneBits(1u))) | ((select(vec4<u32>(28896u, 4294967295u, 1u, 33733u) % vec4<u32>(1u, 71845u, 0u, 1u), firstLeadingBit(vec4<u32>(0u, 15216u, 1u, 1u)), select(arg_0.b, arg_0.b, vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x))) % (reverseBits(vec4<u32>(29319u, 1u, 81954u, 1u)) % vec4<u32>(1u, 3881u, 24647u, 4294967295u))) << ~(min(vec4<u32>(35195u, 14858u, 4294967295u, 2075u), vec4<u32>(9560u, 30596u, 48229u, 0u)) * vec4<u32>(0u, 4294967295u, 1u, 1u)));
    var var_1 = -(-424f - -(-(-1369f + 1163f)));
    let var_2 = arg_0.b;
    var_1 = -floor(-641f);
    var_1 = max(exp2(-1000f), -(-376f));
    return Struct_1(ceil(-(vec3<f32>(684f, -606f, 2290f) - vec3<f32>(-1007f, -1232f, -1835f)) + ((vec3<f32>(-155f, -285f, -733f) - vec3<f32>(-1000f, 344f, 988f)) * vec3<f32>(1578f, 1260f, -539f))), ~(~var_0.x), max(round(floor(sign(-1383f))), 303f), firstLeadingBit(dot(clamp(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, 51462i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a) << vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) - i32(-2147483648)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    return Struct_2(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec2<bool>(!(!true), true), -arg_0.a.x == -304f), !vec4<bool>(!select(false, false, false), false, false, any(vec2<bool>(false, false)) || all(vec3<bool>(false, false, false))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    return ~arg_1.x > func_3(arg_0, arg_0.b.x, -(vec4<f32>(717f, 1000f, -869f, 1275f) + (vec4<f32>(-1925f, -1473f, -430f, -384f) + vec4<f32>(223f, -827f, -2033f, -1301f))), step(511f, -1755f) - -min(-1143f, 1522f)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(Struct_2(vec2<bool>(false, false), vec4<bool>(false, true, false, false))), ~(~vec4<u32>(4294967295u, 1u, 1u, 0u) - abs(vec4<u32>(1u, 4294967295u, 0u, 4294967295u))), vec3<f32>(816f, min(-1000f, -(-529f)), sign(-168f)), Struct_1(func_1(Struct_2(vec2<bool>(true, true), vec4<bool>(false, true, true, false))).a, 1u, (-417f * -1118f) / (545f / 1994f), -56960i)), ((firstLeadingBit(vec3<u32>(60056u, 1u, 4294967295u)) / vec3<u32>(4294967295u, 39728u, 27643u)) * firstLeadingBit(vec3<u32>(96123u, 1u, 7905u))) << clamp(~(~vec3<u32>(7624u, 97601u, 0u)), vec3<u32>(~1u, 134912u % 1u, 1u), ~abs(vec3<u32>(31349u, 78084u, 15679u))));
    let var_1 = select(-(~(-(-vec3<i32>(u_input.a, u_input.a, u_input.a)))), abs(reverseBits(-clamp(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(47463i, 3759i, u_input.a), vec3<i32>(u_input.a, -21493i, -13827i)))), func_4(Struct_1(vec3<f32>(max(1074f, 510f), 660f, -(-794f)), 36576u * ~0u, -990f, 0i), abs(vec4<u32>(41411u, 1u, 64019u * 13526u, reverseBits(4294967295u))), trunc(vec3<f32>(503f, 815f, -1039f) / vec3<f32>(-101f, -114f, 2170f)) - -trunc(vec3<f32>(131f, -889f, -157f)), Struct_1(abs(vec3<f32>(718f, -397f, 684f) / vec3<f32>(851f, -570f, -767f)), ~(1u << 4414u), -(-1396f) + -1135f, select(-(-11197i), u_input.a / 1i, all(vec4<bool>(false, false, false, true))))).b.wzw);
    var var_2 = 10948u;
    var_2 = 28903u;
    var var_3 = abs(vec2<i32>(u_input.a, u_input.a / u_input.a) * var_1.zx) >> vec2<u32>(11768u, select(dot(vec2<u32>(78991u, 3036u) - vec2<u32>(49826u, 0u), vec2<u32>(0u, 0u) - vec2<u32>(20946u, 66769u)), 7686u, any(!vec2<bool>(false, true))));
    let var_4 = var_3.x;
    var_2 = func_3(Struct_2(func_4(func_1(Struct_2(vec2<bool>(false, true), vec4<bool>(false, false, false, false))), vec4<u32>(0u, 0u, 4294967295u, 43413u) + vec4<u32>(1u, 1u, 48769u, 15066u), vec3<f32>(-803f, 532f, -475f), Struct_1(vec3<f32>(1777f, 1000f, -1217f), 38023u, -601f, var_1.x)).a, !(!vec4<bool>(true, true, false, false))), false, round(vec4<f32>(-1000f, -1000f, -1043f, 2261f) - vec4<f32>(-1527f, 380f, 517f, -638f)) - ((vec4<f32>(-996f, 497f, -398f, 680f) * vec4<f32>(-430f, -632f, -233f, -684f)) + vec4<f32>(351f, 442f, 721f, -400f)), -(exp2(-586f) - -(-1885f))).x / (~4853u * min(abs(func_1(Struct_2(vec2<bool>(true, false), vec4<bool>(false, true, true, false))).b), ~4294967295u));
    let var_5 = func_4(func_1(Struct_2(vec2<bool>(!false, true && true), vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true && true, all(vec2<bool>(false, false))))), ~(vec4<u32>(44373u, 4294967295u, 4294967295u, 0u) ^ reverseBits(vec4<u32>(280u, 54966u, 0u, 1u))) >> vec4<u32>(func_1(Struct_2(vec2<bool>(true, true), vec4<bool>(false, false, true, true))).b, 0u, ~4294967295u * clamp(20909u, 4294967295u, 4294967295u), firstLeadingBit(~93946u)), (floor(-vec3<f32>(-1242f, 219f, -1001f)) + -(vec3<f32>(1010f, -508f, 967f) * vec3<f32>(883f, 1192f, -436f))) + sign(min(vec3<f32>(-2504f, 953f, -1315f), vec3<f32>(-556f, 790f, 360f) * vec3<f32>(-2284f, -1311f, -112f))), func_1(func_4(Struct_1(vec3<f32>(-695f, -383f, -1623f), ~115400u, -2043f, var_3.x), ~(~vec4<u32>(1u, 1u, 9073u, 0u)), min(vec3<f32>(-743f, 664f, -275f) / vec3<f32>(454f, -1369f, -388f), exp2(vec3<f32>(1052f, 516f, 1312f))), func_1(Struct_2(vec2<bool>(true, true), vec4<bool>(true, false, true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, -min(vec4<f32>(1162f, 1129f + -1430f, sign(123f), 576f), floor(abs(vec4<f32>(-182f, -1533f, 1320f, -1126f)))), ~(~countOneBits(~0u)), ~vec3<u32>(func_3(Struct_2(var_5.a, vec4<bool>(var_5.a.x, var_5.a.x, var_5.b.x, var_5.b.x)), var_5.a.x, vec4<f32>(388f, -851f, 107f, 741f), 1000f).x / 9905u, 4294967295u ^ ~0u, ~4294967295u / max(9095u, 5063u)), vec2<u32>(func_3(func_4(func_1(var_5), abs(vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), vec3<f32>(622f, 352f, 1367f), func_1(Struct_2(vec2<bool>(var_5.b.x, false), vec4<bool>(true, false, var_5.b.x, var_5.a.x)))), !(false | false), max(vec4<f32>(1256f, 303f, 1194f, -227f) + vec4<f32>(-1074f, -151f, 807f, 714f), sign(vec4<f32>(318f, -320f, -315f, 959f))), -411f).x, firstLeadingBit(~1u ^ 0u)));
}

