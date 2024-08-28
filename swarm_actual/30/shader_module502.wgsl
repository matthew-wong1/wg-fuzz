// {"0:0":[109,107,182,218,29,99,42,167,197,75,195,182,144,180,4,233,139,76,233,192,107,57,10,130,173,62,39,236,73,159,164,226,186,162,137,73,187,117,76,178,144,157,33,114,65,96,27,215]}
// Seed: 1700099724139153539

struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    var var_0 = reverseBits(vec4<u32>(dot((vec4<u32>(77348u, 1u, 15509u, 4294967295u) % vec4<u32>(4294967295u, 1u, 61713u, 4294967295u)) + vec4<u32>(1u, 1u, 1u, 53508u), ~vec4<u32>(47765u, 50510u, 78148u, 4294967295u) / abs(vec4<u32>(1u, 0u, 1u, 4294967295u))), 91941u, clamp(select(~42536u, 1u - 25836u, any(vec3<bool>(arg_1.a, arg_0.x, arg_2.b.x))), (20800u & 19728u) ^ ~46459u, firstTrailingBit(29808u >> 5831u)), clamp(firstLeadingBit(1u) | ~4294967295u, (1u ^ 8969u) & (34888u | 35448u), abs(min(9694u, 81020u)))));
    var_0 = clamp(min(select(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 24846u, var_0.x) & vec4<u32>(4294967295u, var_0.x, var_0.x, 1u), !vec4<bool>(arg_0.x, arg_2.a, arg_2.a, false)), firstTrailingBit(~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))), ~(vec4<u32>(var_0.x, var_0.x, var_0.x, 40128u) << vec4<u32>(1u, 1u, var_0.x, 0u)) * vec4<u32>(var_0.x - var_0.x, 1u, var_0.x ^ 4294967295u, var_0.x), vec4<u32>(firstTrailingBit(var_0.x << 29531u), 32341u, 64007u, var_0.x >> var_0.x)) / ~(~(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) - select(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec4<u32>(0u, var_0.x, var_0.x, 90918u), arg_2.b.x)));
    let var_1 = arg_2;
    var var_2 = var_0.x;
    var_0 = vec4<u32>(dot(~(~var_0.xx), var_0.xy) | 4294967295u, 18560u, ~(~(~(~var_0.x))), clamp(~(~10386u) % ~firstLeadingBit(var_0.x), ~var_0.x << ~(var_0.x / 66976u), var_0.x));
    return -(-sign(arg_1.d.x / arg_1.d.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = -vec4<f32>(func_3(!select(vec3<bool>(arg_0.c, true, true), vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.c, arg_0.a, arg_0.a)), arg_0, Struct_4(!arg_0.c, vec2<bool>(arg_0.c, arg_0.c))), (-(-1000f) + -(-936f)) + arg_2.x, arg_2.x, -1157f);
    var var_1 = ~((vec2<u32>(39984u, 20717u) & (vec2<u32>(0u, 0u) - vec2<u32>(85807u, 4294967295u))) * ~countOneBits(vec2<u32>(4294967295u, 4294967295u))) / ~vec2<u32>(~firstLeadingBit(46525u), clamp(1u, 15986u, 1u) >> ~45605u);
    var_1 = vec2<u32>(7430u >> var_1.x, select(47058u, var_1.x, arg_0.c));
    var_1 = clamp(abs(firstLeadingBit(vec2<u32>(var_1.x, 15724u))), abs(select(max(vec2<u32>(7458u, var_1.x), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, var_1.x), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, true), true)) / ~(vec2<u32>(4294967295u, 0u) / vec2<u32>(var_1.x, 15243u))), min(min(max(~vec2<u32>(4940u, 1u), ~vec2<u32>(8227u, var_1.x)), ~min(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(4294967295u, var_1.x))), vec2<u32>(33054u, select(0u / 49647u, ~var_1.x, all(vec2<bool>(true, true))))));
    let var_2 = (countOneBits(vec3<u32>(var_1.x, select(var_1.x, 16788u, true), 1u << 4294967295u)) * firstLeadingBit(vec3<u32>(var_1.x - var_1.x, ~var_1.x, ~1517u))) + ~vec3<u32>(~var_1.x, dot(max(vec2<u32>(var_1.x, var_1.x), vec2<u32>(65537u, 44344u)), abs(vec2<u32>(var_1.x, var_1.x))), select(min(16248u, 38004u), ~0u, arg_0.a));
    return select(var_0 - (round(vec4<f32>(-2716f, 1000f, 233f, arg_2.x)) - arg_0.d), (min(-vec4<f32>(arg_2.x, var_0.x, arg_2.x, 157f), arg_0.d) * (var_0 * floor(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, var_0.x)))) - -vec4<f32>(arg_0.d.x, var_0.x, select(-843f, -189f, arg_0.c), -779f), !any(vec3<bool>(false, false, !arg_0.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    var var_0 = ((sign(2508f) - -389f) + -(1618f * arg_3.d.x)) - (exp2(-620f) * max(-(-394f) + (arg_3.d.x + arg_3.d.x), arg_3.d.x));
    let var_1 = Struct_1(false, vec2<i32>(firstLeadingBit(min(u_input.c.x % 2147483647i, 2147483647i)), u_input.d.x), any(arg_2.a), -vec4<f32>(trunc(max(arg_3.d.x, 352f)), 1000f, step(arg_3.d.x, -arg_3.d.x), min(1000f, -(-1279f))), -(-1i) ^ 2668i);
    var var_2 = Struct_4(!var_1.a, !select(select(vec2<bool>(false, true), arg_1, any(arg_2.a.yy)), arg_2.a.yy, vec2<bool>(!arg_3.a, any(vec2<bool>(arg_0.b.x, false)))));
    let var_3 = select(~(~max(~vec2<u32>(19423u, 1u), vec2<u32>(4294967295u, 36257u))), select(vec2<u32>(dot(vec4<u32>(61817u, 85447u, 0u, 0u) >> vec4<u32>(29040u, 4900u, 0u, 24852u), ~vec4<u32>(43779u, 4294967295u, 0u, 1u)), 64039u), ~((vec2<u32>(1u, 4294967295u) & vec2<u32>(4294967295u, 4294967295u)) / (vec2<u32>(1u, 1u) * vec2<u32>(1866u, 10644u))), arg_1), !vec2<bool>(arg_3.a, arg_3.d.x > 1485f));
    let var_4 = (-(0i >> 4294967295u) * u_input.a) >> var_3.x;
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = ~(~1u);
    let var_1 = ~0u;
    var var_2 = ~(~4294967295u);
    let var_3 = arg_1.b.x;
    let var_4 = Struct_3(dot(~vec4<u32>(var_1 % 0u, ~var_0, dot(vec4<u32>(0u, var_0, 0u, var_0), vec4<u32>(26488u, 30585u, arg_0.x, 98000u)), min(14031u, 56258u)), ~(~vec4<u32>(0u, 20518u, var_0, var_1)) / ~reverseBits(vec4<u32>(4294967295u, var_1, var_0, 1u))), max(trunc(vec4<f32>(-2204f, 1353f, 982f, 270f)) * vec4<f32>(-1303f, -1179f, 1285f, -335f), min(vec4<f32>(905f, -1661f, -1582f, -1521f), vec4<f32>(304f, 1454f, -1297f, 1031f)) * -vec4<f32>(-226f, 1197f, -2049f, 280f)) / (ceil(max(vec4<f32>(527f, 1163f, -885f, 809f), vec4<f32>(529f, 371f, 448f, -485f))) - (-vec4<f32>(-110f, 1041f, 636f, -898f) - (vec4<f32>(-258f, 729f, -443f, 548f) + vec4<f32>(381f, 1388f, -1140f, 814f)))));
    return Struct_4(var_3, select(select(!vec2<bool>(var_3, true), select(func_4(Struct_4(arg_1.b.x, vec2<bool>(var_3, arg_1.a)), arg_1.b, Struct_2(vec3<bool>(true, true, arg_1.a)), Struct_1(arg_1.b.x, u_input.c.xx, true, vec4<f32>(var_4.b.x, var_4.b.x, var_4.b.x, 1442f), 2147483647i)).b, !arg_1.b, vec2<bool>(var_3, true)), arg_1.b), !arg_1.b, vec2<bool>(!arg_1.b.x, false | (var_3 & true))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    let var_0 = -(vec4<f32>(sign(arg_0.x), -(-1395f) + (-530f - arg_0.x), -888f, 1131f) - vec4<f32>(-1183f, -738f, 1086f, -1307f));
    let var_1 = arg_2;
    let var_2 = dot(~(~max(vec2<u32>(1u, 4294967295u) & vec2<u32>(1u, 30258u), vec2<u32>(28268u, 0u))), reverseBits(firstLeadingBit(countOneBits(vec2<u32>(32600u, 63902u)))) - (~(~vec2<u32>(4294967295u, 39632u)) >> firstLeadingBit(vec2<u32>(69092u, 56803u))));
    var var_3 = Struct_1(-var_0.x == floor(1401f), -vec2<i32>(~0i, clamp(-1i, max(13868i, u_input.b.x), i32(-2147483648) / u_input.d.x)), !select(any(vec4<bool>(false, true, true, arg_1.a)), !all(vec4<bool>(arg_1.a, arg_1.a, true, arg_2.b.x)), all(vec2<bool>(false, var_1.b.x))), vec4<f32>(arg_0.x, (593f + var_0.x) + trunc(243f), select(-(-324f), 1145f / -1096f, true), var_0.x) * var_0, 1i);
    var var_4 = !select(vec3<bool>(arg_1.a, all(vec3<bool>(true, false, var_1.b.x)), var_1.b.x), select(vec3<bool>(var_1.a, var_1.a, 934f != -779f), !(!vec3<bool>(arg_1.b.x, false, var_1.b.x)), func_4(var_1, arg_2.b, Struct_2(vec3<bool>(arg_1.b.x, var_1.a, var_3.c)), Struct_1(false, vec2<i32>(-55834i, var_3.e), false, vec4<f32>(var_3.d.x, arg_0.x, -1538f, -2343f), u_input.b.x)).a | arg_2.b.x), select(!select(vec3<bool>(var_3.a, false, var_3.c), vec3<bool>(var_3.c, false, var_1.b.x), false), vec3<bool>(!arg_1.a, !false, all(arg_2.b)), !var_1.a));
    return Struct_3(var_2, sign(-var_3.d));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = func_6(-vec2<f32>(-(arg_2.d.x / arg_2.d.x), arg_2.d.x), Struct_4(!all(select(vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(arg_2.a, true, arg_2.c, arg_2.c), arg_2.c)), vec2<bool>(arg_2.a, false)), func_5(~((vec2<u32>(34544u, 7626u) >> vec2<u32>(0u, 1484u)) << (vec2<u32>(1u, 20727u) | vec2<u32>(37441u, 1u))), func_4(Struct_4(arg_2.c, vec2<bool>(true, arg_2.c)), !select(vec2<bool>(arg_2.a, true), vec2<bool>(false, false), false), Struct_2(select(vec3<bool>(arg_2.a, arg_2.c, arg_2.a), vec3<bool>(true, false, arg_2.c), vec3<bool>(arg_2.a, arg_2.a, false))), Struct_1(false, arg_1, false | arg_2.a, func_2(Struct_1(arg_2.a, vec2<i32>(arg_0.x, arg_1.x), true, vec4<f32>(arg_2.d.x, 1000f, arg_2.d.x, arg_2.d.x), arg_1.x), vec3<f32>(arg_2.d.x, 1244f, arg_2.d.x), arg_2.d.yz), abs(1i)))));
    var var_1 = Struct_4(!arg_2.c, func_5(vec2<u32>(var_0.a, var_0.a), Struct_4(false, func_5(vec2<u32>(42480u, 85081u), func_4(Struct_4(true, vec2<bool>(true, false)), vec2<bool>(arg_2.c, arg_2.a), Struct_2(vec3<bool>(true, arg_2.c, arg_2.c)), arg_2)).b)).b);
    var_0 = Struct_3(~(var_0.a * (16650u ^ var_0.a)) / (var_0.a + ((var_0.a % 1u) ^ 0u)), vec4<f32>(max(-(var_0.b.x - -920f), trunc(arg_2.d.x * var_0.b.x)), -961f / (func_3(vec3<bool>(var_1.a, var_1.a, arg_2.a), arg_2, Struct_4(true, var_1.b)) + sign(148f)), var_0.b.x, -(1805f - -arg_2.d.x)));
    var_1 = Struct_4((select(var_0.a, 4294967295u, func_5(vec2<u32>(var_0.a, 30601u), Struct_4(true, var_1.b)).b.x) * 1637u) != 4294967295u, var_1.b);
    var_1 = func_4(func_5(reverseBits(max(vec2<u32>(var_0.a, 1u), vec2<u32>(1u, var_0.a))) | vec2<u32>(var_0.a, dot(vec2<u32>(63252u, 0u), vec2<u32>(var_0.a, 4294967295u))), func_4(Struct_4(var_1.b.x && var_1.a, var_1.b), !(!vec2<bool>(arg_2.a, false)), Struct_2(!vec3<bool>(false, false, true)), Struct_1(any(vec4<bool>(true, arg_2.a, true, true)), min(vec2<i32>(30806i, 1i), u_input.b), !var_1.b.x, vec4<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x, var_0.b.x) * vec4<f32>(arg_2.d.x, -2908f, -1506f, arg_2.d.x), -(i32(-2147483648))))), vec2<bool>(((-357f + var_0.b.x) + arg_2.d.x) == -(-930f), false), Struct_2(!vec3<bool>(var_1.b.x, true, true)), arg_2);
    return select(!select(select(select(vec2<bool>(var_1.b.x, true), var_1.b, vec2<bool>(arg_2.c, arg_2.a)), vec2<bool>(true, true), !false), var_1.b, !arg_2.a), func_5(vec2<u32>(103u, var_0.a), func_4(func_5(vec2<u32>(13232u, var_0.a) * vec2<u32>(27454u, 4632u), func_4(Struct_4(false, var_1.b), var_1.b, Struct_2(vec3<bool>(var_1.a, var_1.b.x, false)), arg_2)), vec2<bool>(true, true), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(var_1.b.x, arg_2.a, false), var_1.b.x)), Struct_1(false, arg_1, all(vec4<bool>(true, true, true, arg_2.c)), exp2(arg_2.d), arg_1.x))).b, min(-var_0.b.x - select(var_0.b.x, -198f, var_1.b.x), min(arg_2.d.x, -var_0.b.x)) < -(-max(arg_2.d.x, arg_2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(-select(-u_input.c.yx, u_input.c.zy * vec2<i32>(u_input.b.x, u_input.b.x), -1015f <= 1113f), firstLeadingBit(u_input.d.yy << vec2<u32>(57254u, 42298u)) + ~(u_input.c.yz & u_input.b), select(vec2<bool>(u_input.d.x <= u_input.a, -27129i == -57049i), !func_1(vec3<i32>(u_input.d.x, -36264i, -724i), vec2<i32>(u_input.a, u_input.d.x), Struct_1(false, u_input.c.yz, false, vec4<f32>(1000f, 554f, -388f, -932f), u_input.c.x)), false)));
}

