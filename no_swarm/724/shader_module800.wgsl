// {"0:0":[6,14,66,209]}
// Seed: 11002671331628101545

struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<bool, 4>;

fn func_3() -> u32 {
    global0 = global2[4294967295u];
    global0 = all(!select(select(vec4<bool>(global2[u_input.a], global2[0u], false, true), !vec4<bool>(global2[u_input.a], global2[u_input.a], false, global2[20922u]), global2[29350u] != global2[u_input.a]), select(vec4<bool>(global2[u_input.a], global2[u_input.a], global2[u_input.a], false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(global2[0u], false, global2[0u], true)), !global2[1u]), !global2[dot(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(50777u, u_input.a, 0u))]));
    global0 = !global2[firstLeadingBit(u_input.a % 46218u)];
    let var_0 = !(!true && global2[countOneBits(~(~4294967295u))]);
    let var_1 = countOneBits(10657u) << ~(~(~4294967295u));
    return ~(~19568u);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(~(~(-1i ^ -19273i)), abs(0i) ^ -13186i) - -firstLeadingBit(vec2<i32>(firstTrailingBit(3235i), -57476i));
    let var_1 = Struct_3(vec4<u32>(min(min(u_input.a, 59279u), 1u ^ u_input.a) * u_input.a, func_3() & (~30239u + clamp(u_input.a, 1u, u_input.a)), ~abs(u_input.a) << (u_input.a * u_input.a), u_input.a));
    var var_2 = Struct_4(vec2<u32>(u_input.a & ~var_1.a.x, ~(~var_1.a.x)) & var_1.a.xx, vec3<u32>(10879u, ~(var_1.a.x % 1u), ~31404u & u_input.a) - (~(vec3<u32>(var_1.a.x, 28531u, u_input.a) & var_1.a.wyw) + ~(vec3<u32>(var_1.a.x, 36962u, u_input.a) * vec3<u32>(var_1.a.x, u_input.a, var_1.a.x))));
    let var_3 = (max(0i, var_0.x) * (~min(0i, var_0.x) ^ 2147483647i)) % ~firstLeadingBit(var_0.x << (17663u * var_2.b.x));
    global2 = array<bool, 4>();
    return Struct_1(-round(vec3<f32>(382f, 498f, -1000f)) + (-(-vec3<f32>(-1075f, 1417f, -1231f)) + ((vec3<f32>(1569f, -784f, -1186f) + vec3<f32>(1115f, -1269f, -894f)) / vec3<f32>(-345f, -1238f, 664f))), !select(vec2<bool>(global2[min(4294967295u, var_2.a.x)], select(global2[1u], false, global2[33159u])), select(!vec2<bool>(false, true), vec2<bool>(false, global2[u_input.a]), !false), false || (-827f > 551f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = true;
    let var_1 = (arg_0.a.x >= ~(arg_0.a.x >> arg_3.x)) & all(vec2<bool>(func_3() < ~4793u, all(select(arg_1.d.b, vec2<bool>(true, global2[1u]), arg_1.b.b))));
    let var_2 = !(!select(!select(vec4<bool>(arg_1.c, var_1, var_0, var_1), vec4<bool>(arg_0.d.b.x, global2[17688u], false, arg_0.b.b.x), var_1), !select(vec4<bool>(var_1, false, var_0, false), vec4<bool>(false, true, var_1, global2[55942u]), vec4<bool>(true, var_0, var_1, false)), false));
    var var_3 = ~(vec4<u32>(arg_3.x, ~(~arg_3.x), clamp(55222u / u_input.a, u_input.a - 0u, ~u_input.a), ~(1u % arg_0.a.x)) | vec4<u32>(1u, select(53929u, 0u, false), ~36051u % ~u_input.a, arg_0.a.x % arg_0.a.x));
    var var_4 = Struct_4((select(vec2<u32>(48088u, 47882u), arg_1.a / arg_3, true) * ~(~arg_0.a)) | arg_3, ~vec3<u32>(var_3.x / 1u, ~arg_0.a.x, ~1u) & var_3.wzz);
    return Struct_2(abs(max(vec2<u32>(4294967295u, arg_0.a.x) << vec2<u32>(arg_1.a.x, var_4.a.x), var_4.a & vec2<u32>(arg_1.a.x, 9702u))), arg_1.b, any(vec2<bool>(!(!var_0), -1i < abs(-1i))), Struct_1((vec3<f32>(arg_1.b.a.x, 1612f, 930f) * arg_1.d.a) + -(-arg_1.b.a), !vec2<bool>(false, !global2[arg_0.a.x])));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_5(Struct_4(~select(~vec2<u32>(arg_0.a.x, u_input.a), abs(vec2<u32>(0u, 4294967295u)), global2[arg_0.a.x]), ~(~vec3<u32>(arg_0.a.x, 48915u, u_input.a) ^ reverseBits(vec3<u32>(u_input.a, u_input.a, 4294967295u)))), select(select(func_2().b, !func_2().b, !arg_0.b.b), func_2().b, arg_0.b.b), clamp(113594u | ~u_input.a, reverseBits(~arg_0.a.x) ^ (abs(arg_0.a.x) * 44271u), u_input.a), -(813f + arg_0.d.a.x), ~abs(~(-244i) | 36063i));
    let var_1 = -vec2<i32>(-1i, select(abs(1i), max(1i, var_0.e) % (-11488i << 25046u), global2[dot(select(vec4<u32>(u_input.a, var_0.c, u_input.a, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, u_input.a), true), ~vec4<u32>(44584u, 52229u, 4294967295u, 4294967295u))]));
    global2 = array<bool, 4>();
    var var_2 = Struct_4(arg_0.a >> ~arg_0.a, max(vec3<u32>(~15926u ^ 1u, 0u, var_0.c << func_4(arg_0, Struct_2(var_0.a.b.yx, Struct_1(vec3<f32>(var_0.d, 434f, arg_0.d.a.x), vec2<bool>(global2[1u], arg_0.b.b.x)), global2[arg_0.a.x], arg_0.d), arg_0.d.a.x, vec2<u32>(1u, 0u)).a.x), ~(~var_0.a.b) * select(~var_0.a.b, ~var_0.a.b, var_0.b.x | false)));
    global2 = array<bool, 4>();
    return arg_0.b;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = false;
    var var_1 = Struct_2(arg_1.zz, func_5(func_4(Struct_2(~vec2<u32>(28795u, arg_0), func_2(), !false, func_2()), Struct_2(arg_1.yy ^ arg_1.wz, func_2(), global2[6416u ^ 0u], Struct_1(vec3<f32>(arg_2, -213f, arg_2), vec2<bool>(false, false))), -arg_2, arg_1.xx)), any(!select(vec4<bool>(true, global2[23075u], true, false), vec4<bool>(true, true, global2[arg_1.x], global2[46914u]), select(vec4<bool>(true, global2[u_input.a], false, global2[5680u]), vec4<bool>(true, global2[u_input.a], global2[u_input.a], true), global2[arg_0]))), func_2());
    let var_2 = ~(4294967295u | (((var_1.a.x / u_input.a) << firstLeadingBit(arg_1.x)) % ~arg_1.x));
    var var_3 = vec4<f32>(ceil(-(-var_1.d.a.x) * -1072f), -118f, arg_2, func_4(func_4(Struct_2(vec2<u32>(59054u, arg_1.x), var_1.b, var_1.d.b.x || true, Struct_1(var_1.b.a, var_1.d.b)), Struct_2(vec2<u32>(arg_1.x, var_1.a.x), Struct_1(var_1.d.a, vec2<bool>(global2[0u], global2[0u])), false, func_2()), -(var_1.d.a.x - 984f), firstTrailingBit(vec2<u32>(9593u, 36573u) * vec2<u32>(arg_0, var_1.a.x))), Struct_2(~vec2<u32>(var_1.a.x, 19799u) + ~vec2<u32>(arg_0, u_input.a), func_4(func_4(Struct_2(vec2<u32>(u_input.a, arg_1.x), var_1.b, var_1.c, Struct_1(var_1.d.a, vec2<bool>(global2[19143u], var_1.b.b.x))), Struct_2(var_1.a, var_1.d, global2[var_1.a.x], Struct_1(vec3<f32>(var_1.b.a.x, var_1.d.a.x, 594f), var_1.b.b)), -1118f, var_1.a), func_4(Struct_2(arg_1.ww, Struct_1(vec3<f32>(arg_2, 850f, -1533f), vec2<bool>(var_1.d.b.x, var_1.b.b.x)), var_1.d.b.x, var_1.b), Struct_2(vec2<u32>(1u, u_input.a), Struct_1(vec3<f32>(1483f, -1804f, 357f), vec2<bool>(global2[arg_0], true)), false, Struct_1(var_1.b.a, var_1.b.b)), var_1.d.a.x, vec2<u32>(var_1.a.x, 69350u)), var_1.d.a.x, var_1.a * var_1.a).d, true, Struct_1(var_1.d.a, !var_1.d.b)), func_4(func_4(Struct_2(vec2<u32>(arg_0, 4294967295u), Struct_1(var_1.b.a, vec2<bool>(false, global2[67247u])), var_1.c, var_1.d), Struct_2(arg_1.yw, Struct_1(vec3<f32>(-528f, 649f, arg_2), vec2<bool>(false, true)), var_1.b.b.x, Struct_1(var_1.d.a, var_1.b.b)), abs(var_1.d.a.x), arg_1.xy), func_4(Struct_2(vec2<u32>(u_input.a, 4294967295u), var_1.d, true, var_1.d), Struct_2(var_1.a, var_1.d, false, Struct_1(vec3<f32>(var_1.d.a.x, -1709f, var_1.b.a.x), vec2<bool>(false, global2[0u]))), -613f, select(var_1.a, vec2<u32>(var_1.a.x, u_input.a), vec2<bool>(false, true))), -(-1087f), select(vec2<u32>(59912u, 0u) / vec2<u32>(u_input.a, 87025u), countOneBits(var_1.a), select(var_1.d.b, vec2<bool>(true, var_1.b.b.x), false))).d.a.x, ~min(max(arg_1.wx, arg_1.yx), vec2<u32>(16026u, 0u))).d.a.x);
    let var_4 = all(select(select(select(vec3<bool>(global2[16621u], true, var_1.c), vec3<bool>(var_1.c, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, var_1.c, global2[0u]), vec3<bool>(true, var_1.c, true), false), all(vec2<bool>(var_1.d.b.x, var_1.d.b.x))), select(!vec3<bool>(false, var_1.b.b.x, var_1.c), vec3<bool>(true, global2[4294967295u], false), var_1.b.a.x <= 400f), select(!vec3<bool>(global2[var_2], var_1.c, true), !vec3<bool>(global2[arg_0], var_1.c, var_1.c), arg_2 < 831f))) && true;
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(vec4<u32>(1u, ~u_input.a, u_input.a * 0u, u_input.a) >> ~(~(vec4<u32>(u_input.a, 29167u, u_input.a, u_input.a) + vec4<u32>(0u, 1u, 55056u, u_input.a))));
    let var_1 = global1[~var_0.a.x];
    var_0 = global1[dot(vec4<u32>(1u, dot((vec2<u32>(var_0.a.x, var_1.a.x) | vec2<u32>(0u, var_1.a.x)) * vec2<u32>(4294967295u, 68676u), ~var_1.a.wx), var_0.a.x, ~(~var_0.a.x) >> ~0u), abs(((vec4<u32>(0u, u_input.a, 9398u, 1u) + vec4<u32>(897u, u_input.a, 0u, 23802u)) / (vec4<u32>(67381u, var_0.a.x, 17494u, 27460u) | var_0.a)) + ~vec4<u32>(0u, var_1.a.x, 1u, var_1.a.x)))];
    var var_2 = func_5(func_4(Struct_2(vec2<u32>(var_1.a.x, 84669u) ^ vec2<u32>(22762u, u_input.a), func_4(func_4(Struct_2(vec2<u32>(4294967295u, 11165u), Struct_1(vec3<f32>(515f, -1080f, -843f), vec2<bool>(global2[var_0.a.x], global2[4294967295u])), global2[40972u], Struct_1(vec3<f32>(1044f, 998f, 213f), vec2<bool>(false, global2[var_1.a.x]))), Struct_2(vec2<u32>(var_0.a.x, u_input.a), Struct_1(vec3<f32>(-180f, 574f, -1730f), vec2<bool>(global2[0u], false)), true, Struct_1(vec3<f32>(172f, -484f, 1000f), vec2<bool>(true, arg_1))), -706f, var_1.a.zx), Struct_2(vec2<u32>(var_1.a.x, 48020u), Struct_1(vec3<f32>(-1240f, 329f, -650f), vec2<bool>(true, global2[19321u])), arg_1, Struct_1(vec3<f32>(997f, -265f, 1049f), vec2<bool>(global2[44464u], arg_1))), 720f, ~vec2<u32>(4294967295u, 1u)).b, -277f == -928f, func_4(func_4(Struct_2(var_0.a.yz, Struct_1(vec3<f32>(-1452f, -383f, -641f), vec2<bool>(true, arg_1)), false, Struct_1(vec3<f32>(-377f, 952f, 1000f), vec2<bool>(false, false))), Struct_2(vec2<u32>(60035u, 4294967295u), Struct_1(vec3<f32>(188f, -971f, 1171f), vec2<bool>(global2[2947u], true)), global2[4294967295u], Struct_1(vec3<f32>(583f, -551f, -1289f), vec2<bool>(global2[70307u], true))), 461f, var_1.a.zz), func_4(Struct_2(vec2<u32>(49606u, 4294967295u), Struct_1(vec3<f32>(953f, 216f, 726f), vec2<bool>(false, global2[var_1.a.x])), true, Struct_1(vec3<f32>(127f, -954f, 1043f), vec2<bool>(false, false))), Struct_2(var_1.a.ww, Struct_1(vec3<f32>(-607f, 1806f, -155f), vec2<bool>(true, global2[46942u])), arg_1, Struct_1(vec3<f32>(1000f, -1000f, 409f), vec2<bool>(global2[var_1.a.x], global2[1u]))), -1475f, var_1.a.xx), -1000f, vec2<u32>(105068u, var_1.a.x)).d), func_4(Struct_2(vec2<u32>(52786u, var_0.a.x), Struct_1(vec3<f32>(661f, 1584f, 278f), vec2<bool>(global2[4294967295u], global2[var_0.a.x])), !arg_1, func_2()), Struct_2(vec2<u32>(var_1.a.x, 34612u) + vec2<u32>(14885u, var_0.a.x), Struct_1(vec3<f32>(641f, 350f, -816f), vec2<bool>(false, true)), var_0.a.x == var_1.a.x, func_5(Struct_2(vec2<u32>(0u, u_input.a), Struct_1(vec3<f32>(-561f, 233f, 743f), vec2<bool>(false, global2[1320u])), false, Struct_1(vec3<f32>(-498f, -2051f, 1000f), vec2<bool>(true, false))))), -336f, max(~var_0.a.zz, countOneBits(var_1.a.zz))), -(-705f), vec2<u32>(dot(vec4<u32>(1u, 89150u, 25581u, 0u), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, 0u)), 0u) * abs(reverseBits(vec2<u32>(var_1.a.x, 67964u))))).b;
    global0 = any(!vec2<bool>(true, all(vec3<bool>(global2[var_1.a.x], true, arg_1))));
    return Struct_4(vec2<u32>(abs(~u_input.a), 1u), var_1.a.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    var var_0 = Struct_5(func_6(dot(func_1(u_input.a, vec4<u32>(82440u, 4294967295u, 11538u, 68663u), 437f, vec4<i32>(-38004i, 2147483647i, 104i, -1i)), ~vec4<i32>(0i, -79294i, 20007i, 48562i)) >> u_input.a, false, vec2<i32>(~1i, (26613i >> u_input.a) | ~1i)), select(select(vec2<bool>(any(vec4<bool>(global2[26963u], true, true, global2[24274u])), global2[0u * u_input.a]), vec2<bool>(func_2().b.x, global2[u_input.a]), all(!vec2<bool>(global2[u_input.a], global2[u_input.a]))), vec2<bool>(4294967295u >= 24787u, all(!vec3<bool>(true, true, global2[u_input.a]))), vec2<bool>(any(func_2().b), !true)), dot(countOneBits(vec2<u32>(4294967295u, 85077u)) - (vec2<u32>(4294967295u, 0u) >> vec2<u32>(24624u, 0u)), ~(vec2<u32>(1u, u_input.a) | vec2<u32>(u_input.a, u_input.a))) + dot((vec4<u32>(16761u, u_input.a, 14149u, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) % ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) - vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) / select(vec4<u32>(1u, u_input.a, 1u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 20383u), global2[u_input.a])), -1361f, reverseBits(abs(-76404i)));
    let var_1 = !(!var_0.b.x);
    var var_2 = Struct_4(var_0.a.b.zy, var_0.a.b);
    var_2 = Struct_4(firstTrailingBit(vec2<u32>(var_0.a.b.x, 30730u)), ~(~reverseBits(vec3<u32>(var_0.a.b.x, u_input.a, var_0.c)) | (min(vec3<u32>(var_0.c, var_0.a.b.x, 0u), vec3<u32>(var_0.c, 0u, 1u)) >> (vec3<u32>(u_input.a, 70129u, 4294967295u) % var_0.a.b))));
    let var_3 = func_2();
    let var_4 = ~(-(-var_0.e) * -(~var_0.e)) < ((countOneBits(-1i) / ~18330i) & ~var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(trunc(-var_0.d), countOneBits(var_2.b), abs(-(-vec3<i32>(0i, var_0.e, -1i) * vec3<i32>(var_0.e, var_0.e, -1i))), max(var_0.a.b, var_2.b), select(~var_2.b.x, 17237u, var_0.b.x));
}

