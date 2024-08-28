// {"0:0":[177,7,247,147,161,201,214,185,170,231,135,57,126,72,64,146,190,155,2,143,240,177,106,106,180,196,28,33,107,129,140,27]}
// Seed: 7129382362407095942

struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 476f;

var<private> global1: vec3<f32> = vec3<f32>(289f, 388f, -1501f);

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = global1.x;
    global1 = vec3<f32>(arg_0.x, arg_1.e.x, -624f);
    var var_0 = -(-(-vec3<i32>(0i, 9659i, u_input.a.x))) << min(clamp(max(abs(vec3<u32>(arg_1.c, 7168u, 0u)), min(vec3<u32>(arg_1.c, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 41342u))), vec3<u32>(firstLeadingBit(arg_1.c), u_input.c.x / u_input.c.x, 4294967295u), vec3<u32>(arg_1.c, u_input.c.x, 59315u >> 4294967295u)), select(countOneBits(vec3<u32>(arg_1.c, u_input.c.x, u_input.c.x) & vec3<u32>(1u, 4294967295u, 4294967295u)), select(vec3<u32>(1u, arg_1.c, 67646u) ^ vec3<u32>(arg_1.c, u_input.c.x, u_input.c.x), vec3<u32>(11084u, arg_1.c, 77674u), all(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true))), select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.b.x), select(vec3<bool>(arg_1.b.x, arg_1.a, true), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(true, true, arg_1.b.x)))));
    global1 = vec3<f32>(2015f, round(708f), global1.x) * (arg_1.e.zyw * exp2(arg_0.yzz));
    var_0 = -(-(~(vec3<i32>(arg_1.d, 0i, -1i) >> firstTrailingBit(vec3<u32>(u_input.c.x, 65171u, u_input.c.x)))));
    return -arg_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> i32 {
    global0 = -(-(-508f));
    global0 = min(round(global1.x), -global1.x);
    global1 = -step(-(vec3<f32>(global1.x, 530f, 1833f) * vec3<f32>(180f, 629f, global1.x)), -vec3<f32>(func_3(vec4<f32>(510f, global1.x, global1.x, -1619f), Struct_1(true, vec4<bool>(false, true, true, true), u_input.c.x, 0i, vec4<f32>(global1.x, global1.x, global1.x, global1.x))), select(global1.x, -1000f, false), 640f - 537f));
    var var_0 = Struct_1(all(vec3<bool>(select(all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, false, true)), !false), false, arg_1.x == clamp(u_input.c.x, 1347u, arg_1.x))), vec4<bool>(all(!vec3<bool>(true, true, false)), !(!(1u < 101396u)), !any(!vec4<bool>(true, false, true, true)), arg_0.x <= -(~53732i)), ~(~arg_1.x), arg_0.x, -vec4<f32>(exp2(global1.x), global1.x, round(trunc(-358f)), global1.x));
    global1 = -(max(var_0.e.zyw, vec3<f32>(global1.x, -1222f, -440f * 1065f)) / -(var_0.e.wxy - var_0.e.xyw));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~firstLeadingBit(u_input.c);
    let var_1 = sign(((vec2<f32>(-666f, global1.x) * global1.yz) * vec2<f32>(arg_2.e.x, 716f)) - (global1.xy + (arg_0.e.wx * vec2<f32>(arg_2.e.x, arg_2.e.x)))) * -(-step(arg_0.e.zx / arg_0.e.xw, vec2<f32>(global1.x, global1.x)));
    global0 = -192f;
    global1 = vec3<f32>(arg_0.e.x, arg_2.e.x, -212f);
    global0 = 1000f;
    return Struct_1(arg_2.a, !vec4<bool>(arg_0.b.x, any(select(vec3<bool>(arg_0.b.x, false, false), arg_0.b.zwx, vec3<bool>(arg_0.a, arg_2.b.x, arg_2.a))), all(arg_2.b.zy), 77092u > 11913u), 40562u, -min(select(select(arg_2.d, 2147483647i, false), arg_0.d, !arg_0.b.x), arg_2.d >> (0u & 4294967295u)), -vec4<f32>(-1426f + (arg_2.e.x * -936f), var_1.x, var_1.x, -(-arg_2.e.x)));
}

fn func_1() -> f32 {
    var var_0 = false;
    let var_1 = func_4(Struct_1(~u_input.c.x <= min(38873u, 0u << u_input.c.x), select(!vec4<bool>(true, true, false, false), vec4<bool>(select(true, true, false), any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)), true && false), -(-25856i) <= ~(-1i)), ~select(0u, reverseBits(40737u), any(vec3<bool>(false, false, true))), ~func_2(vec4<i32>(u_input.b, 3423i, 1i, i32(-2147483648)), vec4<u32>(u_input.c.x, u_input.c.x, 39780u, u_input.c.x)), vec4<f32>(-1890f, 1098f, global1.x, select(-665f, global1.x, true)) * (select(vec4<f32>(global1.x, 1000f, 1040f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, false, true)) * floor(vec4<f32>(1323f, global1.x, global1.x, global1.x)))), u_input.a, Struct_1(!(false == false) & false, select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), !false), true), 4294967295u, select(u_input.a.x, i32(-2147483648), false & all(vec4<bool>(true, false, true, false))), vec4<f32>(global1.x, (global1.x / -604f) + -1873f, -(global1.x * global1.x), -(-931f))));
    return global1.x - var_1.e.x;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = func_4(func_4(func_4(Struct_1(false, vec4<bool>(false, true, false, true), 4294967295u, max(arg_1, u_input.b), -vec4<f32>(arg_0, global1.x, arg_0, -603f)), ~u_input.a, Struct_1(select(false, false, true), !vec4<bool>(true, true, true, false), abs(1u), arg_1, vec4<f32>(1062f, 158f, 1709f, global1.x))), select(vec4<i32>(abs(u_input.b), ~arg_1, 42642i, 22327i), u_input.a, !vec4<bool>(false, false, true, false)), func_4(func_4(Struct_1(false, vec4<bool>(false, false, false, false), 4293u, u_input.a.x, vec4<f32>(arg_0, global1.x, arg_0, -647f)), u_input.a, Struct_1(true, vec4<bool>(true, true, false, true), u_input.c.x, u_input.a.x, vec4<f32>(arg_0, -988f, arg_0, global1.x))), vec4<i32>(-16993i, ~arg_1, u_input.a.x, 52791i), func_4(func_4(Struct_1(false, vec4<bool>(true, false, true, true), u_input.c.x, 2147483647i, vec4<f32>(global1.x, arg_0, global1.x, -995f)), vec4<i32>(-45584i, -1i, i32(-2147483648), arg_1), Struct_1(true, vec4<bool>(true, false, true, false), 3986u, u_input.a.x, vec4<f32>(812f, global1.x, global1.x, -804f))), u_input.a, func_4(Struct_1(false, vec4<bool>(true, false, true, true), arg_2, -32493i, vec4<f32>(arg_0, 1338f, arg_0, global1.x)), u_input.a, Struct_1(false, vec4<bool>(false, true, true, false), u_input.c.x, -12399i, vec4<f32>(arg_0, arg_0, -204f, arg_0)))))), u_input.a, Struct_1(~(u_input.c.x - arg_2) == ~4294967295u, func_4(func_4(Struct_1(true, vec4<bool>(false, false, true, true), 42140u, u_input.a.x, vec4<f32>(global1.x, 589f, 445f, -1978f)), -vec4<i32>(arg_1, arg_1, arg_1, u_input.a.x), func_4(Struct_1(false, vec4<bool>(true, false, true, true), 2601u, arg_1, vec4<f32>(global1.x, arg_0, -383f, arg_0)), vec4<i32>(u_input.a.x, u_input.b, u_input.b, -42250i), Struct_1(true, vec4<bool>(false, false, false, true), 4294967295u, arg_1, vec4<f32>(-803f, arg_0, arg_0, 479f)))), ~(vec4<i32>(2147483647i, -1i, i32(-2147483648), 9800i) - vec4<i32>(2147483647i, 26158i, u_input.b, u_input.a.x)), Struct_1(!true, func_4(Struct_1(false, vec4<bool>(true, false, true, true), arg_2, i32(-2147483648), vec4<f32>(arg_0, arg_0, -107f, global1.x)), u_input.a, Struct_1(true, vec4<bool>(true, true, false, false), 0u, u_input.b, vec4<f32>(arg_0, 972f, global1.x, arg_0))).b, ~u_input.c.x, 2147483647i, vec4<f32>(-400f, 351f, global1.x, global1.x) * vec4<f32>(arg_0, 730f, -1000f, global1.x))).b, arg_2, dot((u_input.a.wx % u_input.a.yw) % vec2<i32>(-1i, 38240i), -u_input.a.wx), step(-vec4<f32>(arg_0, arg_0, -626f, -1030f), -vec4<f32>(-1605f, 946f, 547f, global1.x)) + vec4<f32>(arg_0 - arg_0, select(-2243f, 114f, false), min(global1.x, 1063f), 990f / 892f)));
    var var_1 = (~vec2<u32>(arg_2 ^ var_0.c, abs(8233u)) << abs(u_input.c)) << vec2<u32>(max(countOneBits(65424u), arg_2), arg_2);
    var_1 = vec2<u32>(arg_2, ~(~(u_input.c.x * 19013u) + 0u));
    var var_2 = var_0;
    let var_3 = var_0;
    return !vec4<bool>(!(var_2.d <= 0i) & var_3.a, any(vec4<bool>(all(vec4<bool>(true, var_0.b.x, var_3.b.x, true)), var_3.a, func_4(Struct_1(false, vec4<bool>(var_2.b.x, var_0.b.x, var_2.b.x, true), 1u, var_0.d, var_3.e), u_input.a, var_3).b.x, !var_3.a)), var_3.b.x, all(select(func_4(Struct_1(var_0.a, var_0.b, 0u, 2271i, vec4<f32>(var_2.e.x, 128f, arg_0, var_3.e.x)), u_input.a, var_3).b, !vec4<bool>(false, var_3.b.x, false, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(11727u < reverseBits(dot(vec4<u32>(42812u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(u_input.c.x, u_input.c.x, 34109u, 61167u), ~vec4<u32>(84669u, 10924u, u_input.c.x, u_input.c.x))), select(func_5(-func_1(), u_input.a.x, u_input.c.x + (4294967295u + u_input.c.x)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), !vec4<bool>(true, false, true, true)), select(func_5(-global1.x, ~(-1i), ~5587u), vec4<bool>(all(vec2<bool>(false, false)), !true, select(false, true, true), any(vec2<bool>(true, false))), !false)), ~4294967295u, i32(-2147483648), vec4<f32>(((-756f / global1.x) + func_3(vec4<f32>(global1.x, global1.x, global1.x, global1.x), Struct_1(false, vec4<bool>(true, true, true, false), u_input.c.x, 0i, vec4<f32>(-609f, global1.x, global1.x, global1.x)))) + -1480f, -global1.x, global1.x / -556f, ((global1.x + -440f) * 1637f) - global1.x));
    global0 = ceil(global1.x);
    global1 = var_0.e.zyx;
    var_0 = func_4(func_4(func_4(func_4(func_4(Struct_1(true, vec4<bool>(var_0.a, var_0.a, true, true), var_0.c, 53354i, vec4<f32>(var_0.e.x, var_0.e.x, 1000f, var_0.e.x)), u_input.a, Struct_1(var_0.a, var_0.b, u_input.c.x, -21758i, vec4<f32>(866f, global1.x, global1.x, -787f))), vec4<i32>(22013i, 42573i, var_0.d, var_0.d) - vec4<i32>(24640i, 6716i, u_input.a.x, var_0.d), Struct_1(true, vec4<bool>(var_0.b.x, false, true, var_0.b.x), var_0.c, -27092i, vec4<f32>(var_0.e.x, global1.x, -822f, var_0.e.x))), u_input.a, func_4(func_4(Struct_1(var_0.a, vec4<bool>(true, var_0.b.x, true, var_0.b.x), 1u, u_input.a.x, vec4<f32>(var_0.e.x, global1.x, -135f, global1.x)), vec4<i32>(var_0.d, -54055i, 169i, 13970i), Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.b.x, false, true), 0u, 1i, vec4<f32>(var_0.e.x, 412f, -2155f, global1.x))), u_input.a, Struct_1(false, vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), 48203u, 6336i, vec4<f32>(2760f, var_0.e.x, global1.x, 1000f)))), vec4<i32>(abs(min(-12576i, i32(-2147483648))), 0i, u_input.a.x - u_input.a.x, dot(vec3<i32>(var_0.d, 25153i, u_input.b), u_input.a.www) & (8627i / 0i)), func_4(func_4(Struct_1(var_0.a, var_0.b, var_0.c, 0i, vec4<f32>(var_0.e.x, -806f, -1629f, var_0.e.x)), u_input.a, func_4(Struct_1(var_0.a, var_0.b, 15151u, u_input.a.x, var_0.e), u_input.a, Struct_1(true, var_0.b, 18734u, i32(-2147483648), vec4<f32>(397f, 1621f, var_0.e.x, 1091f)))), vec4<i32>(22709i, 1i, ~var_0.d, clamp(u_input.a.x, -2977i, i32(-2147483648))), func_4(Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.a, false, var_0.b.x), u_input.c.x, i32(-2147483648), vec4<f32>(global1.x, 777f, var_0.e.x, global1.x)), u_input.a | u_input.a, Struct_1(var_0.b.x, vec4<bool>(false, var_0.a, true, false), u_input.c.x, u_input.a.x, vec4<f32>(global1.x, var_0.e.x, global1.x, var_0.e.x))))), vec4<i32>(var_0.d, i32(-2147483648), var_0.d, -17442i), func_4(Struct_1((var_0.e.x == -1349f) & all(var_0.b), select(func_5(1121f, var_0.d, var_0.c), !var_0.b, vec4<bool>(var_0.a, true, true, false)), ~dot(u_input.c, u_input.c), u_input.b >> dot(vec3<u32>(0u, 16277u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 0u)), vec4<f32>(var_0.e.x, 160f, 1637f, -global1.x)), vec4<i32>(-var_0.d, u_input.a.x, u_input.b, ~(-17328i)), Struct_1(!(var_0.a || var_0.a), var_0.b, select(1u, select(4294967295u, var_0.c, false), !var_0.a), func_2(vec4<i32>(var_0.d, var_0.d, 10895i, i32(-2147483648)) + u_input.a, ~vec4<u32>(u_input.c.x, 48501u, var_0.c, var_0.c)), var_0.e - vec4<f32>(global1.x, global1.x, var_0.e.x, global1.x))));
    global1 = var_0.e.wzz;
    var var_1 = u_input.c;
    var_0 = func_4(func_4(func_4(func_4(func_4(Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.b.x, true, true), 3450u, var_0.d, vec4<f32>(var_0.e.x, var_0.e.x, 1000f, global1.x)), u_input.a, Struct_1(false, var_0.b, var_1.x, 29414i, vec4<f32>(376f, global1.x, global1.x, global1.x))), u_input.a, Struct_1(var_0.b.x, vec4<bool>(false, false, true, true), u_input.c.x, var_0.d, var_0.e)), ~(u_input.a / u_input.a), Struct_1(global1.x == global1.x, vec4<bool>(false, var_0.a, false, var_0.b.x), 1u, abs(-1i), sign(var_0.e))), firstTrailingBit(~(-u_input.a)), func_4(Struct_1(var_0.b.x, func_4(Struct_1(var_0.b.x, var_0.b, var_1.x, u_input.a.x, var_0.e), u_input.a, Struct_1(var_0.a, var_0.b, var_1.x, u_input.b, var_0.e)).b, 0u - var_1.x, ~1i, var_0.e), vec4<i32>(~2147483647i, 12133i, firstTrailingBit(u_input.b), -12019i), Struct_1(true, var_0.b, var_0.c, ~u_input.a.x, round(var_0.e)))), u_input.a, Struct_1(!var_0.a, func_4(Struct_1(all(var_0.b.yw), func_4(Struct_1(false, var_0.b, 71053u, u_input.b, var_0.e), vec4<i32>(u_input.a.x, u_input.b, var_0.d, 0i), Struct_1(var_0.a, var_0.b, var_0.c, 14390i, var_0.e)).b, 7037u, var_0.d / 2147483647i, var_0.e), u_input.a + reverseBits(vec4<i32>(u_input.b, i32(-2147483648), 30417i, 2147483647i)), func_4(Struct_1(var_0.b.x, var_0.b, var_1.x, -58705i, vec4<f32>(-275f, var_0.e.x, -1000f, 913f)), -vec4<i32>(-1i, var_0.d, 19826i, 12933i), func_4(Struct_1(var_0.b.x, var_0.b, 4294967295u, var_0.d, var_0.e), u_input.a, Struct_1(var_0.b.x, var_0.b, 77537u, 1i, vec4<f32>(1657f, var_0.e.x, global1.x, -834f))))).b, var_1.x % (~var_1.x | 0u), ~var_0.d, -var_0.e));
    let var_2 = false;
    var var_3 = func_4(func_4(Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.b.x, var_2, false), 39109u ^ min(var_0.c, 65946u), 6426i % (var_0.d | 2147483647i), round(var_0.e)), vec4<i32>(u_input.b | ~(i32(-2147483648)), ~var_0.d / i32(-2147483648), firstLeadingBit(i32(-2147483648)) * (1i >> var_1.x), 43131i), Struct_1(false, vec4<bool>(true, func_4(Struct_1(true, var_0.b, 136976u, -493i, vec4<f32>(971f, global1.x, 170f, 352f)), vec4<i32>(1i, var_0.d, u_input.b, var_0.d), Struct_1(true, var_0.b, 24639u, var_0.d, vec4<f32>(var_0.e.x, global1.x, global1.x, 2540f))).a, !false, false), 0u, 2147483647i, -abs(var_0.e))), select(u_input.a, vec4<i32>(4420i, u_input.a.x, 1i, dot(u_input.a.zwy, vec3<i32>(1i, u_input.b, u_input.b))), vec4<bool>(global1.x == 136f, all(var_0.b.wx), !false, !var_0.a)) << ~(~(vec4<u32>(u_input.c.x, 86098u, 16093u, 0u) / vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 25365u))), Struct_1(!(global1.x > 1456f), vec4<bool>(select(!var_0.b.x, any(var_0.b), !var_2), var_2, !true, !(u_input.a.x > 43466i)), (~4294967295u / u_input.c.x) & 68124u, clamp(-var_0.d, var_0.d, u_input.a.x * u_input.b) - var_0.d, var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.e.x, -194f - func_4(Struct_1(true, vec4<bool>(false, var_0.a, var_0.a, var_0.b.x), var_1.x, 2147483647i, vec4<f32>(774f, 834f, var_0.e.x, var_0.e.x)), vec4<i32>(u_input.a.x, var_3.d, var_3.d, var_3.d), Struct_1(false, var_3.b, 1u, var_0.d, vec4<f32>(var_0.e.x, var_3.e.x, var_0.e.x, var_0.e.x))).e.x), reverseBits(~select(vec3<u32>(var_1.x, var_3.c, 1u) / vec3<u32>(var_1.x, u_input.c.x, var_0.c), vec3<u32>(var_1.x, 1u, 8084u) % vec3<u32>(104443u, var_3.c, var_3.c), !true)));
}

