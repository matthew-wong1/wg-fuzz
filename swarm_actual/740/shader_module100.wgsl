// {"0:0":[127,91,111,121]}
// Seed: 369412589613655395

struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> vec4<i32> {
    global0 = Struct_1(countOneBits(vec4<i32>(select(-global0.a.x, i32(-2147483648), true), global0.a.x | (arg_0.a.x >> 10282u), firstLeadingBit(-45762i) - reverseBits(arg_0.a.x), 0i)), vec4<f32>(global0.b.x, exp2(arg_0.b.x) / trunc(global0.b.x), select(arg_0.b.x, -128f, !arg_1), -(608f / arg_0.b.x)) * arg_0.b);
    global0 = Struct_1(vec4<i32>(-(global0.a.x * (u_input.a >> arg_2.x)), u_input.a, u_input.a, ~(~countOneBits(arg_0.a.x))), step(-(vec4<f32>(arg_0.b.x, arg_0.b.x, -114f, 208f) + arg_0.b), select(vec4<f32>(global0.b.x, 1057f, global0.b.x, -1088f), vec4<f32>(751f, arg_0.b.x, 583f, global0.b.x), arg_1) + sign(arg_0.b)) / global0.b);
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = exp2(-(global0.b / (-global0.b - arg_0.b)));
    return min(global0.a, ~vec4<i32>(-26236i * reverseBits(u_input.a), u_input.a, abs(arg_0.a.x / global0.a.x), 6779i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = select(global0.a.x, arg_1.a.x, false);
    var var_1 = -step(select(-(-arg_1.b.wyx), arg_1.b.wzz, all(vec4<bool>(arg_2.a.b, false, false, arg_2.a.b)) == true), (vec3<f32>(-333f, arg_2.a.a.e.b.x, 575f) * (global0.b.zxy * vec3<f32>(global0.b.x, -1735f, -802f))) + arg_1.b.wxw);
    let var_2 = arg_2.d;
    let var_3 = arg_2;
    var var_4 = ~vec2<u32>(63598u - ~47362u, firstTrailingBit(~4796u >> clamp(27u, 0u, 39810u)));
    return 1u + var_4.x;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_4(~global0.a.x, Struct_1(min(func_3(Struct_1(vec4<i32>(u_input.a, arg_0.a.a.a.x, u_input.a, -41287i), vec4<f32>(global0.b.x, arg_0.a.b.x, global0.b.x, global0.b.x)), !true, vec3<u32>(61433u, 0u, 44804u) << vec3<u32>(1u, 73182u, 4294967295u)), vec4<i32>(1i / -58912i, func_3(arg_0.a.a, arg_0.a.c.x, vec3<u32>(4294967295u, 1u, 27347u)).x, 21405i, i32(-2147483648))), vec4<f32>(609f, -1097f, -arg_0.a.d.x, exp2(arg_0.a.d.x)) - (arg_0.a.a.b + -global0.b)), Struct_4(Struct_3(arg_0.a, all(select(arg_0.a.c, vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, false)))), floor(global0.b.wy), firstTrailingBit(~vec2<i32>(1i, 3049i)), Struct_1(firstTrailingBit(firstLeadingBit(global0.a)), min(-vec4<f32>(arg_0.a.d.x, arg_0.a.b.x, -2376f, arg_0.a.b.x), global0.b)), select(select(vec3<bool>(arg_0.a.c.x, false, true), select(vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.b), vec3<bool>(arg_0.a.c.x, arg_0.b, arg_0.a.c.x), vec3<bool>(false, true, true)), !vec3<bool>(arg_0.b, arg_0.a.c.x, false)), select(!vec3<bool>(true, false, true), vec3<bool>(true, arg_0.a.c.x, false), false), !vec3<bool>(arg_0.a.c.x, true, arg_0.a.c.x))));
    var_0 = (min(51785u, (4294967295u / 12481u) >> 45128u) & dot(abs(vec4<u32>(0u, 3792u, 83769u, 20029u)) | (vec4<u32>(4294967295u, 1u, 0u, 0u) & vec4<u32>(69484u, 97600u, 79202u, 0u)), vec4<u32>(0u, 7079u << 14418u, 14073u >> 4294967295u, ~0u))) - ~(~0u);
    let var_1 = Struct_2(Struct_1(arg_0.a.a.a, arg_0.a.e.b), vec2<f32>(ceil(global0.b.x), 563f), arg_0.a.c, vec4<f32>(1583f, arg_0.a.d.x * arg_0.a.a.b.x, -sign(arg_0.a.e.b.x), -947f) + vec4<f32>(global0.b.x, step(1414f - -1438f, -(-141f)), 126f, arg_0.a.a.b.x), arg_0.a.e);
    let var_2 = 291f;
    var_0 = 1u + (~firstLeadingBit(1u) / abs(clamp(~3668u, ~0u, ~1u)));
    return arg_0.a.a;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    global0 = Struct_1(vec4<i32>(u_input.a, -18979i, ~(u_input.a % -12053i), arg_1.a.x), vec4<f32>(-427f, arg_1.b.x, -(-(-arg_1.b.x)), trunc(trunc(floor(arg_1.b.x)))));
    var var_0 = 24373i;
    var_0 = global0.a.x;
    var_0 = 13273i;
    var var_1 = Struct_4(Struct_3(Struct_2(func_2(Struct_3(Struct_2(arg_1, arg_1.b.zw, vec2<bool>(true, arg_2), vec4<f32>(global0.b.x, -362f, global0.b.x, 129f), Struct_1(arg_1.a, arg_1.b)), true)), arg_1.b.zy * (vec2<f32>(-1521f, -1115f) - vec2<f32>(global0.b.x, 1429f)), select(select(vec2<bool>(true, arg_2), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_2), vec2<bool>(false, arg_2)), min(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, arg_1.b.x), func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(arg_1.a.x, arg_1.a.x, u_input.a, -57554i), vec4<f32>(-1000f, arg_1.b.x, 1672f, 938f)), vec2<f32>(arg_1.b.x, -1366f), vec2<bool>(arg_2, arg_2), vec4<f32>(global0.b.x, arg_1.b.x, arg_1.b.x, global0.b.x), arg_1), arg_2)).b), Struct_1(global0.a, -vec4<f32>(global0.b.x, arg_1.b.x, global0.b.x, arg_1.b.x))), all(!select(vec2<bool>(true, arg_2), vec2<bool>(true, true), false))), arg_1.b.wy, ~clamp(vec2<i32>(10330i, global0.a.x) * (arg_1.a.yw ^ vec2<i32>(-1i, -87959i)), vec2<i32>(global0.a.x << arg_0, firstLeadingBit(global0.a.x)), countOneBits(arg_1.a.wz) << ~vec2<u32>(16084u, arg_0)), Struct_1(arg_1.a, arg_1.b - -(vec4<f32>(arg_1.b.x, -2031f, global0.b.x, -645f) * vec4<f32>(-1271f, arg_1.b.x, 214f, -470f))), !vec3<bool>(!(global0.a.x > global0.a.x), arg_2, any(vec4<bool>(true, false, arg_2, arg_2)) && arg_2));
    return Struct_3(var_1.a.a, arg_2);
}

fn func_6(arg_0: Struct_3) -> Struct_4 {
    global0 = arg_0.a.a;
    var var_0 = Struct_4(func_5(clamp(4294967295u, (1u | 35050u) >> (0u / 1u), ~42697u), Struct_1(vec4<i32>(~(-2173i), global0.a.x / 0i, arg_0.a.a.a.x, global0.a.x), arg_0.a.d), !all(select(arg_0.a.c, vec2<bool>(true, arg_0.b), arg_0.a.c))), vec2<f32>(1248f, max(arg_0.a.d.x, 1281f - global0.b.x) - -(-arg_0.a.e.b.x)), vec2<i32>(-func_3(arg_0.a.a, arg_0.a.c.x, vec3<u32>(33624u, 0u, 17122u) + vec3<u32>(0u, 115020u, 4294967295u)).x, abs(1i) + firstTrailingBit(-43813i)), arg_0.a.e, !(!(!(!vec3<bool>(arg_0.b, arg_0.b, true)))));
    let var_1 = Struct_4(arg_0, select(vec2<f32>(abs(global0.b.x), abs(global0.b.x)), -exp2(var_0.d.b.xy), var_0.a.a.c) - var_0.a.a.a.b.zw, arg_0.a.e.a.yz, func_2(func_5((27991u | 0u) % (1u & 8465u), Struct_1(vec4<i32>(arg_0.a.a.a.x, arg_0.a.e.a.x, u_input.a, arg_0.a.a.a.x), vec4<f32>(-1000f, -1380f, arg_0.a.a.b.x, var_0.a.a.b.x)), arg_0.a.c.x)), select(!var_0.e, select(select(!var_0.e, !vec3<bool>(false, var_0.a.b, true), all(vec2<bool>(arg_0.a.c.x, true))), var_0.e, var_0.e), var_0.e));
    global0 = func_5(49022u | ~1u, func_2(arg_0), !var_0.a.a.c.x).a.e;
    var var_2 = !(func_5(clamp(~0u, ~1u, ~11110u), Struct_1(arg_0.a.e.a >> vec4<u32>(4294967295u, 48310u, 23865u, 26068u), vec4<f32>(886f, -514f, var_0.b.x, 277f)), var_1.a.b).b & func_5(countOneBits(1u), func_5(min(87951u, 10556u), func_5(1u, Struct_1(vec4<i32>(var_1.c.x, u_input.a, global0.a.x, var_1.d.a.x), global0.b), true).a.a, var_1.a.a.b.x > var_1.d.b.x).a.e, any(!vec4<bool>(false, true, false, true))).b);
    return Struct_4(Struct_3(func_5(countOneBits(max(4294967295u, 4294967295u)), var_1.a.a.e, arg_0.b).a, any(select(vec4<bool>(arg_0.b, true, true, false), !vec4<bool>(var_0.e.x, arg_0.b, var_0.e.x, false), !vec4<bool>(false, true, var_1.e.x, var_1.e.x)))), -vec2<f32>(trunc(-(-604f)), global0.b.x), vec2<i32>(u_input.a, 2147483647i), var_1.d, !vec3<bool>(true, -977f < trunc(1000f), true));
}

fn func_7(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = trunc(1300f);
    var var_1 = arg_0.a.a.a.a;
    var_1 = ~(~select(~vec4<i32>(-50101i, arg_0.c.x, 1i, arg_0.c.x), abs(vec4<i32>(44072i, 41707i, arg_0.c.x, 1i)), vec4<bool>(arg_0.a.b, false, arg_0.e.x, arg_0.a.b || false)));
    let var_2 = arg_0.a.b;
    var var_3 = arg_0;
    return arg_0.e.zx;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(arg_1, trunc(vec2<f32>(exp2(arg_1.b.x / arg_1.b.x), ceil(select(192f, global0.b.x, arg_2.x)))), func_7(func_6(func_5(arg_0, func_2(Struct_3(Struct_2(arg_1, global0.b.zx, arg_2.wz, global0.b, arg_1), false)), !arg_2.x))), arg_1.b, arg_1);
    var var_1 = Struct_3(Struct_2(Struct_1(~global0.a, vec4<f32>(sign(690f), 1002f, -897f - arg_1.b.x, func_6(Struct_3(Struct_2(Struct_1(vec4<i32>(arg_1.a.x, 0i, arg_3, -20734i), var_0.e.b), arg_1.b.yz, var_0.c, vec4<f32>(var_0.a.b.x, global0.b.x, var_0.b.x, -1910f), Struct_1(var_0.a.a, vec4<f32>(677f, -1321f, arg_1.b.x, var_0.d.x))), var_0.c.x)).b.x)), arg_1.b.yx, !vec2<bool>(func_5(0u, arg_1, var_0.c.x).b, arg_2.x & true), sign(vec4<f32>(func_6(Struct_3(Struct_2(arg_1, vec2<f32>(-166f, -1506f), vec2<bool>(var_0.c.x, true), arg_1.b, arg_1), arg_2.x)).d.b.x, 1624f / 950f, min(global0.b.x, arg_1.b.x), 1332f)), Struct_1(~reverseBits(var_0.e.a), select(global0.b / arg_1.b, select(vec4<f32>(1932f, -512f, -1288f, var_0.e.b.x), vec4<f32>(arg_1.b.x, -420f, arg_1.b.x, -1000f), arg_2), global0.b.x != var_0.a.b.x))), true);
    global0 = Struct_1(countOneBits(~arg_1.a), step(var_1.a.a.b, -vec4<f32>(1911f, var_1.a.e.b.x, var_0.e.b.x, -394f)) / var_0.a.b);
    global0 = Struct_1((vec4<i32>(~9176i, arg_3, global0.a.x ^ 10246i, func_6(Struct_3(Struct_2(var_1.a.e, var_0.d.zx, var_0.c, var_0.a.b, Struct_1(global0.a, vec4<f32>(639f, 200f, 1129f, -1310f))), true)).c.x) % var_1.a.e.a) % vec4<i32>(clamp(~(-1i), var_0.e.a.x, func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.a, -1i, global0.a.x, -1i), var_1.a.a.b), var_0.a.b.zx, var_1.a.c, vec4<f32>(var_1.a.b.x, arg_1.b.x, arg_1.b.x, 158f), Struct_1(vec4<i32>(arg_3, arg_3, 1i, arg_1.a.x), vec4<f32>(var_0.e.b.x, arg_1.b.x, var_1.a.b.x, 741f))), arg_2.x)).a.x), var_0.a.a.x, -1i, func_3(Struct_1(var_0.e.a, arg_1.b), arg_2.x, select(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(arg_0, 0u, arg_0), arg_2.x)).x), var_0.a.b);
    var_0 = Struct_2(var_1.a.a, select(sign(select(vec2<f32>(743f, global0.b.x), vec2<f32>(-560f, var_1.a.d.x), select(true, true, var_0.c.x))), arg_1.b.yz, all(arg_2)), func_6(Struct_3(Struct_2(arg_1, -vec2<f32>(var_1.a.d.x, var_1.a.b.x), select(var_1.a.c, vec2<bool>(arg_2.x, var_1.a.c.x), true), vec4<f32>(global0.b.x, -335f, -277f, 103f) * vec4<f32>(arg_1.b.x, 622f, 406f, -170f), Struct_1(var_1.a.a.a, global0.b)), !arg_2.x)).e.zz, -select(sign(func_2(Struct_3(var_1.a, arg_2.x)).b), -vec4<f32>(arg_1.b.x, 1000f, 381f, global0.b.x) * (var_1.a.d / global0.b), !select(arg_2, arg_2, arg_2.x)), Struct_1(abs(vec4<i32>(u_input.a, 1i, var_0.a.a.x, i32(-2147483648)) << select(vec4<u32>(arg_0, arg_0, 26025u, 4294967295u), vec4<u32>(35607u, 27039u, arg_0, 4294967295u), true)), -vec4<f32>(-1000f, global0.b.x, var_1.a.e.b.x, var_1.a.b.x - 787f)));
    return func_5((20204u | abs(43563u)) & ~arg_0, var_1.a.a, var_0.a.a.x < (~firstTrailingBit(var_0.e.a.x) & -abs(arg_3))).a.a;
}

fn func_8(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global0 = func_5(~((1u + (63675u | 57213u)) - ~max(41708u, 4294967295u)), Struct_1(vec4<i32>(countOneBits(arg_1.a.x * -14771i), global0.a.x - global0.a.x, func_5(47275u + 27434u, func_1(22770u, Struct_1(arg_1.a, arg_1.b), vec4<bool>(false, true, false, false), 2147483647i), false).a.e.a.x, min(firstTrailingBit(arg_0.x), 1i % 10827i)), global0.b), any(select(!vec2<bool>(false, true), vec2<bool>(1i < 2147483647i, !false), vec2<bool>(0u >= 0u, arg_1.b.x != -1725f)))).a.e;
    let var_0 = func_6(Struct_3(func_5(clamp(1u, 0u >> 58921u, 0u), Struct_1(arg_1.a, global0.b), !select(true, false, true)).a, -(-767f) != trunc(arg_1.b.x - -803f))).a.a;
    var var_1 = Struct_2(Struct_1(firstTrailingBit(~var_0.a.a), ceil(-(vec4<f32>(-3024f, arg_1.b.x, global0.b.x, global0.b.x) * vec4<f32>(var_0.e.b.x, global0.b.x, var_0.d.x, var_0.a.b.x)))), arg_1.b.wy, vec2<bool>(26033u > ~4294967295u, true), vec4<f32>(633f, -1839f, (global0.b.x + -(-1000f)) * round(-var_0.a.b.x), var_0.a.b.x), func_5(~abs(0u | 6707u), var_0.a, all(!select(vec4<bool>(var_0.c.x, true, var_0.c.x, true), vec4<bool>(false, false, var_0.c.x, true), var_0.c.x))).a.e);
    var var_2 = false;
    var var_3 = vec4<bool>(true, 1273f >= (-max(-409f, 1110f) * -func_6(Struct_3(Struct_2(var_0.e, var_0.a.b.xw, vec2<bool>(false, true), arg_1.b, var_0.a), var_1.c.x)).b.x), (0i / clamp(i32(-2147483648) % 10940i, 22108i / arg_1.a.x, ~global0.a.x)) == ~(~9790i), func_6(func_6(Struct_3(Struct_2(Struct_1(var_0.e.a, var_0.a.b), vec2<f32>(global0.b.x, 139f), var_0.c, var_0.e.b, var_1.a), false)).a).e.x);
    return -(-var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec4<f32>(func_8(abs(global0.a), func_1(457u, Struct_1(vec4<i32>(u_input.a, global0.a.x, global0.a.x, -11539i), global0.b), vec4<bool>(false, true, false, true), global0.a.x)) / -806f, global0.b.x, -sign(-105f / global0.b.x), global0.b.x - -3071f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>((u_input.a % 55112i) * -u_input.a, clamp(global0.a.x >> 67385u, u_input.a, u_input.a * 2147483647i), 24474i) + vec3<i32>(global0.a.x, -13019i, ~u_input.a + ~(i32(-2147483648))));
}

