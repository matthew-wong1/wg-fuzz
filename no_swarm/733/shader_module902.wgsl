// {"0:0":[185,152,19,99,160,12,151,102,141,183,155,107,182,212,92,0,91,228,248,176,43,35,166,229,154,67,165,196,27,202,192,26]}
// Seed: 5292126233042417955

struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: array<f32, 17> = array<f32, 17>(1606f, 1018f, 1100f, 1494f, -484f, 648f, 1411f, 1079f, -1147f, -414f, -979f, 1255f, -1040f, -1030f, 726f, -1000f, -489f);

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_4) -> vec3<f32> {
    global0 = array<f32, 17>();
    var var_0 = abs(arg_2.b) * vec3<f32>(-global0[39735u], -(-select(arg_0.x, global0[arg_2.c.a.b], arg_2.c.e.d.x)), ((-1469f + 552f) + -368f) + 262f);
    let var_1 = Struct_1(~u_input.c.zx / -u_input.c.yx, 2247f, -53169i);
    var var_2 = arg_2.c;
    var var_3 = Struct_3(var_2.e, !var_2.b, -vec2<i32>(select(20711i, -1i, true), ~(-arg_1.x)), !all(select(vec4<bool>(arg_2.c.a.d.x, var_2.b.x, false, var_2.a.d.x), arg_2.c.e.d, vec4<bool>(true, var_2.d, arg_2.c.a.d.x, var_2.d))), Struct_2(~vec4<u32>(var_2.e.b << 50868u, var_2.e.b, 10776u * arg_2.c.e.e, 77800u), 0u, var_2.a.c, select(vec4<bool>(false, any(vec4<bool>(arg_2.c.d, false, var_2.a.d.x, var_2.a.d.x)), 36278i == -38852i, false), var_2.e.d, select(vec4<bool>(true, var_2.a.d.x, var_2.a.d.x, arg_2.a.x), select(vec4<bool>(false, arg_2.a.x, true, arg_2.a.x), arg_2.c.e.d, var_2.a.d), arg_2.c.e.d.x)), 9188u));
    return select(arg_2.b - (-vec3<f32>(global0[var_2.a.e], -580f, global0[var_3.a.a.x]) + select(vec3<f32>(-425f, -912f, -499f), arg_2.b, var_3.e.d.yyw)), vec3<f32>(max(1562f, 340f), -196f - (-1405f + 451f), sign(-arg_2.b.x)), !select(!vec3<bool>(var_3.d, var_3.e.d.x, var_3.e.d.x), vec3<bool>(false, var_3.a.d.x, var_2.b.x), !vec3<bool>(var_3.a.d.x, arg_2.a.x, false))) / vec3<f32>(var_0.x, -(-(-246f)), -arg_2.b.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.c.x, ~(-(arg_0.x % 0i) / 1i), ~dot(~(vec4<i32>(arg_0.x, -1i, 26290i, u_input.b) & vec4<i32>(-16349i, 23191i, u_input.c.x, 1i)), min(vec4<i32>(u_input.c.x, 41810i, 2147483647i, -3065i), vec4<i32>(arg_0.x, i32(-2147483648), arg_0.x, 1i)) ^ (vec4<i32>(60699i, 2147483647i, 45228i, u_input.c.x) % vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x))));
    var var_1 = 0u;
    var var_2 = -vec3<f32>(1000f / (-2464f - -820f), 378f / -782f, arg_2.x) - (-((vec3<f32>(-1169f, 623f, 341f) / vec3<f32>(global0[u_input.a], arg_2.x, arg_2.x)) - vec3<f32>(arg_2.x, 997f, global0[33466u])) / floor(select(vec3<f32>(arg_2.x, -683f, -1000f), vec3<f32>(-254f, -534f, -975f), vec3<bool>(true, true, true)) / (vec3<f32>(-160f, global0[101758u], arg_2.x) - vec3<f32>(-659f, arg_2.x, 362f))));
    var_2 = -(func_3(exp2(vec2<f32>(1724f, var_2.x)) + arg_2, vec2<i32>(var_0.x, var_0.x) % var_0.yy, Struct_4(vec2<bool>(true, true), vec3<f32>(arg_2.x, var_2.x, global0[arg_1]) + vec3<f32>(arg_2.x, 651f, var_2.x), Struct_3(Struct_2(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), u_input.a, var_0, vec4<bool>(true, true, false, true), 55224u), vec4<bool>(true, true, true, true), vec2<i32>(var_0.x, u_input.c.x), false, Struct_2(vec4<u32>(78290u, u_input.a, 1u, arg_1), arg_1, vec3<i32>(u_input.b, -1i, 1817i), vec4<bool>(false, true, false, true), 593u)), -u_input.c)) - abs(-vec3<f32>(1853f, var_2.x, -155f) - -vec3<f32>(800f, global0[u_input.a], 330f)));
    global0 = array<f32, 17>();
    return Struct_2(((~vec4<u32>(58742u, u_input.a, u_input.a, u_input.a) / ~vec4<u32>(1u, 4294967295u, arg_1, 23144u)) & ~vec4<u32>(u_input.a, 12598u, 1u, u_input.a)) ^ vec4<u32>(25029u, 4294967295u | 69264u, u_input.a, ~19801u), ~1u, ~(vec3<i32>(dot(vec3<i32>(u_input.b, i32(-2147483648), u_input.c.x), vec3<i32>(var_0.x, arg_0.x, i32(-2147483648))), select(var_0.x, u_input.b, true), 2147483647i + 7283i) * var_0), select(vec4<bool>(!false, false, any(vec2<bool>(true, true)) || (-20929i != arg_0.x), false), vec4<bool>(true | all(vec3<bool>(false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), !false, !all(vec3<bool>(true, true, false))), false && true), dot(min(~vec3<u32>(49357u, 34240u, 16621u), vec3<u32>(u_input.a, 26431u & 41346u, 0u >> 37244u)), ~(~vec3<u32>(u_input.a, 4294967295u, u_input.a) >> abs(vec3<u32>(26103u, 32474u, u_input.a)))));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global0 = array<f32, 17>();
    let var_0 = u_input.b - -dot(arg_0.a.c + ~vec3<i32>(arg_0.e.c.x, arg_0.a.c.x, 0i), firstLeadingBit(vec3<i32>(u_input.c.x, 0i, u_input.c.x)));
    global0 = array<f32, 17>();
    var var_1 = ~(~(~countOneBits(u_input.a * 4294967295u)));
    var var_2 = vec3<u32>(u_input.a ^ (arg_0.e.e - (clamp(29806u, 0u, 4294967295u) * clamp(0u, 1u, u_input.a))), 0u, 6627u ^ clamp(min(~4294967295u, 0u), countOneBits(103045u), ~(u_input.a - 5798u)));
    return Struct_4(!select(!select(arg_0.a.d.xw, vec2<bool>(arg_0.b.x, arg_0.e.d.x), vec2<bool>(arg_0.d, false)), !vec2<bool>(false, arg_0.a.d.x), arg_0.b.x), -vec3<f32>(global0[u_input.a], global0[~25898u], -1261f + global0[var_2.x]) - vec3<f32>(global0[9u * ~1u], global0[~arg_0.a.a.x], global0[abs(0u)]), arg_0, vec3<i32>(firstTrailingBit((var_0 + u_input.c.x) - min(arg_0.a.c.x, 2147483647i)), arg_0.a.c.x, 0i));
}

fn func_5(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = func_4(Struct_3(Struct_2(arg_0.c.a.a, arg_0.c.e.b, vec3<i32>(clamp(arg_0.c.c.x, u_input.c.x, 4726i), arg_0.c.c.x << 0u, 2147483647i), vec4<bool>(any(vec3<bool>(arg_0.c.b.x, false, true)), false, !arg_0.a.x, !arg_0.a.x), arg_0.c.e.a.x), vec4<bool>(abs(global0[arg_0.c.a.b]) <= -global0[0u], (arg_0.d.x > u_input.b) && all(vec4<bool>(arg_0.c.a.d.x, true, arg_0.c.d, arg_0.a.x)), firstTrailingBit(arg_0.c.e.e) > (16393u ^ arg_0.c.e.e), -arg_0.d.x >= 2147483647i), ~(-(vec2<i32>(1i, u_input.b) ^ vec2<i32>(arg_0.d.x, arg_0.c.e.c.x))), !(!(false | arg_0.c.b.x)), Struct_2(~arg_0.c.a.a + (arg_0.c.e.a % vec4<u32>(49706u, 31725u, 4294967295u, 0u)), ~arg_0.c.e.e >> u_input.a, u_input.c, !arg_0.c.b, 1u))).c.e.d;
    let var_1 = arg_0.c.e.b;
    global0 = array<f32, 17>();
    return func_2(u_input.c, ((u_input.a ^ (14392u & 4294967295u)) * ~(arg_0.c.e.a.x & u_input.a)) - ~(0u << abs(arg_0.c.e.a.x)), arg_0.b.xz).d;
}

fn func_1() -> Struct_2 {
    return Struct_2(~((min(vec4<u32>(u_input.a, 0u, u_input.a, 13707u), vec4<u32>(1u, 4294967295u, 0u, 71219u)) * select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), false)) | vec4<u32>(1u, ~u_input.a, 44070u, u_input.a << u_input.a)), reverseBits(countOneBits(~(u_input.a - u_input.a))), abs(~reverseBits(vec3<i32>(-28992i, 11020i, u_input.c.x)) ^ u_input.c), func_5(func_4(Struct_3(Struct_2(vec4<u32>(31938u, 1u, u_input.a, u_input.a), u_input.a, vec3<i32>(-18449i, u_input.b, -3483i), vec4<bool>(true, false, true, false), u_input.a), !vec4<bool>(false, true, true, false), vec2<i32>(u_input.b, 0i), any(vec4<bool>(true, true, false, true)), func_2(u_input.c, 14748u, vec2<f32>(global0[0u], 2337f))))), clamp(51835u, (~u_input.a - (u_input.a >> 1u)) - u_input.a, dot(~vec3<u32>(28907u, 7362u, 4294967295u) / (vec3<u32>(35152u, u_input.a, u_input.a) << vec3<u32>(u_input.a, u_input.a, u_input.a)), clamp(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 0u, 1u)))));
}

fn func_6(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<bool> {
    global0 = array<f32, 17>();
    var var_0 = arg_3.d.x;
    let var_1 = -1i;
    let var_2 = false;
    var var_3 = Struct_1(~(-arg_3.c.xx), step(floor(-233f), global0[func_4(Struct_3(arg_3, arg_3.d, vec2<i32>(0i, arg_3.c.x), false, Struct_2(arg_3.a, 39880u, u_input.c, arg_3.d, arg_3.e))).c.e.a.x]), 27802i);
    return arg_3.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!func_6(u_input.c.x, select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), (vec2<u32>(51790u, 1u) << vec2<u32>(4294967295u, u_input.a)) >> vec2<u32>(4294967295u, u_input.a), func_1()), vec3<f32>((global0[u_input.a] / -262f) * (global0[25125u] * global0[u_input.a]), trunc(626f) / 536f, -835f) * (-vec3<f32>(global0[u_input.a], -919f, global0[u_input.a]) * func_4(func_4(Struct_3(Struct_2(vec4<u32>(u_input.a, 1u, 1u, u_input.a), 8888u, u_input.c, vec4<bool>(true, false, false, true), 0u), vec4<bool>(true, true, true, true), u_input.c.xx, false, Struct_2(vec4<u32>(u_input.a, 1u, 58884u, 26103u), u_input.a, u_input.c, vec4<bool>(true, false, true, false), u_input.a))).c).b), func_4(func_4(func_4(Struct_3(Struct_2(vec4<u32>(1u, u_input.a, 31233u, 4294967295u), u_input.a, u_input.c, vec4<bool>(false, false, false, true), 4294967295u), vec4<bool>(false, false, false, true), u_input.c.xz, true, Struct_2(vec4<u32>(u_input.a, 0u, 18861u, 1u), u_input.a, vec3<i32>(u_input.c.x, 42795i, u_input.b), vec4<bool>(true, false, true, true), u_input.a))).c).c).c, ~(~(-u_input.c) * -(~u_input.c)));
    var var_1 = var_0.b.yy;
    global0 = array<f32, 17>();
    var var_2 = var_0.a.x;
    let var_3 = func_4(Struct_3(func_1(), func_2(~vec3<i32>(-1i, -1i, u_input.b) % var_0.d, ~0u, -(-vec2<f32>(global0[22106u], global0[var_0.c.a.e]))).d, ~(firstTrailingBit(u_input.c.zz) * -var_0.c.a.c.xz), any(func_4(func_4(var_0.c).c).c.b.zzw), var_0.c.a)).c;
    var var_4 = vec2<bool>(func_2(select((vec3<i32>(u_input.c.x, var_3.a.c.x, u_input.b) + var_0.c.a.c) * var_3.e.c, vec3<i32>(1i ^ i32(-2147483648), var_0.c.e.c.x, reverseBits(var_3.a.c.x)), func_4(func_4(Struct_3(var_3.e, vec4<bool>(false, true, var_3.d, var_3.e.d.x), var_3.c, var_3.a.d.x, Struct_2(var_3.e.a, u_input.a, var_3.a.c, vec4<bool>(var_3.d, var_0.c.a.d.x, var_0.c.b.x, var_0.c.d), var_0.c.e.e))).c).c.b.wxx), u_input.a, sign(vec2<f32>(-1358f, 468f) + vec2<f32>(-1000f, 292f))).d.x, !false);
    var_2 = select(var_4.x, !(any(var_3.b.yx) || all(vec2<bool>(true, var_3.b.x))), !all(vec3<bool>(!true, -316f >= -643f, !false)));
    let var_5 = !(!var_0.c.b.wxx);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>((min(1i, var_0.c.c.x) * (29017i - u_input.c.x)) - -firstTrailingBit(0i), ~abs(-var_0.c.a.c.x), func_1().c.x - -7261i));
}

