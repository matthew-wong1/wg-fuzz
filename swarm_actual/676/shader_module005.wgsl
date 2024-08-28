// {"0:0":[189,85,236,92,196,59,204,97,4,141,227,38,216,212,139,106,243,181,173,32,144,156,89,208,97,13,161,203,200,220,81,33,162,206,144,60,22,46,106,45,63,247,214,100,144,180,69,153]}
// Seed: 9450940336245801173

struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 0i), vec4<f32>(-611f, 1306f, 211f, -1816f), 75507u, false);

var<private> global3: array<f32, 20>;

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = vec3<u32>(57163u, (clamp(firstLeadingBit(0u), 4294967295u - 0u, arg_1.c & arg_1.c) ^ ~(arg_1.c ^ u_input.c.x)) + (dot(vec2<u32>(global2.c, arg_1.c), vec2<u32>(4294967295u, 0u)) | 0u), global2.c - ~(17178u / ~u_input.d));
    global1 = round(arg_1.b.yxz);
    global2 = Struct_1(vec4<i32>(((0i - 14795i) / (u_input.a.x >> u_input.d)) - (reverseBits(-36472i) & (arg_1.a.x | i32(-2147483648))), global2.a.x, dot(arg_1.a.xzz, global2.a.wwz), arg_2), vec4<f32>(-max(global2.b.x, -1000f), -907f, arg_1.b.x, floor(736f / global1.x) - -820f), var_0.x, any(vec3<bool>(ceil(global3[56465u]) <= -(-1000f), any(vec4<bool>(global2.d, true, false, true)), all(select(global0[u_input.d], global0[49627u], vec3<bool>(true, false, false))))));
    let var_1 = -763f / -274f;
    var var_2 = -global1.x;
    return -arg_1.a.x ^ global2.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = min(func_3(876f, arg_1, max(-arg_2.a.x, arg_1.a.x) - ~clamp(arg_2.a.x, global2.a.x, -49210i)), -8035i);
    let var_1 = arg_1;
    var var_2 = ~(~(~firstTrailingBit(firstLeadingBit(vec3<u32>(4294967295u, 0u, var_1.c)))));
    return Struct_2(arg_2, global3[~dot(reverseBits(vec2<u32>(var_1.c, u_input.d)), u_input.b.zw & countOneBits(var_2.yx))], Struct_1(abs(vec4<i32>(-5128i, 21154i, var_1.a.x, u_input.a.x) % ~arg_1.a), vec4<f32>(-951f, round(-arg_0.x), max(-1679f, 1000f), step(floor(global3[var_1.c]), global3[dot(vec4<u32>(0u, 0u, 38969u, u_input.d), vec4<u32>(1u, 4294967295u, arg_1.c, u_input.d))])), u_input.c.x, !(global2.d & var_1.d)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: i32) -> vec3<bool> {
    let var_0 = -vec4<f32>(floor((arg_0.a.b.x / -133f) * -131f), 1054f * 358f, arg_0.b, (arg_0.b * -1000f) * trunc(-1156f));
    let var_1 = abs(vec3<f32>(-848f, max(exp2(global1.x) + -(-787f), -global3[4294967295u] / -var_0.x), -(-arg_2 - -457f)));
    global2 = Struct_1(arg_0.c.a - -(-vec4<i32>(arg_0.a.a.x, arg_3, 1i, u_input.a.x)), ceil(var_0), reverseBits(1u), arg_0.c.d);
    global1 = floor(ceil(arg_0.c.b.zzw));
    var var_2 = global0[abs(9131u)];
    return global0[arg_1.x];
}

fn func_1() -> Struct_2 {
    var var_0 = (global2.b.x != (trunc(-global1.x) / ((-572f / 623f) - 532f))) != (true || all(func_4(func_2(global2.b.xz, Struct_1(vec4<i32>(u_input.a.x, 10194i, -305i, 15084i), global2.b, 0u, true), Struct_1(vec4<i32>(global2.a.x, -21350i, u_input.a.x, 36047i), vec4<f32>(global1.x, 782f, 196f, 384f), 0u, true)), countOneBits(u_input.b), global3[u_input.b.x] + 2505f, dot(vec3<i32>(u_input.a.x, 10841i, global2.a.x), vec3<i32>(1i, 6842i, u_input.a.x)))));
    return func_2(-vec2<f32>(trunc(-419f), trunc(-411f) * -(-1000f)), func_2(vec2<f32>(global3[u_input.d] * exp2(global1.x), -global3[global2.c] * abs(global3[global2.c])), Struct_1(vec4<i32>(func_2(vec2<f32>(339f, global2.b.x), Struct_1(global2.a, vec4<f32>(669f, -784f, global1.x, -146f), u_input.c.x, true), Struct_1(vec4<i32>(global2.a.x, 1i, global2.a.x, 1i), vec4<f32>(global2.b.x, global2.b.x, global1.x, 1252f), 0u, true)).c.a.x, dot(global2.a, vec4<i32>(-6004i, global2.a.x, u_input.a.x, -61584i)), ~global2.a.x, reverseBits(global2.a.x)), vec4<f32>(-817f, -237f, step(1013f, global3[4294967295u]), -1805f), abs(abs(global2.c)), 1i == ~1i), func_2(vec2<f32>(-(-200f), 2402f), func_2(abs(global1.zy), func_2(vec2<f32>(global2.b.x, -837f), Struct_1(global2.a, global2.b, global2.c, global2.d), Struct_1(global2.a, vec4<f32>(-1531f, -1172f, 1104f, global3[4294967295u]), global2.c, global2.d)).a, func_2(vec2<f32>(global1.x, global3[u_input.b.x]), Struct_1(global2.a, vec4<f32>(846f, -178f, global1.x, -1175f), u_input.b.x, global2.d), Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), global2.b, 8258u, global2.d)).a).a, Struct_1(abs(vec4<i32>(global2.a.x, i32(-2147483648), -8018i, u_input.a.x)), global2.b, u_input.c.x >> u_input.b.x, global2.d)).a).c, func_2(trunc(vec2<f32>(global3[global2.c] * 2134f, 2025f + -1588f)), Struct_1(countOneBits(global2.a), vec4<f32>(func_2(global2.b.yx, Struct_1(vec4<i32>(-41238i, 0i, u_input.a.x, -1i), vec4<f32>(-123f, global3[0u], 742f, global2.b.x), 1u, false), Struct_1(vec4<i32>(-21463i, 27774i, i32(-2147483648), u_input.a.x), global2.b, 40418u, global2.d)).b, global1.x, -(-520f), func_2(vec2<f32>(1269f, -1455f), Struct_1(global2.a, global2.b, u_input.c.x, global2.d), Struct_1(global2.a, vec4<f32>(global2.b.x, 663f, global1.x, global1.x), global2.c, global2.d)).c.b.x), u_input.d * 0u, ~u_input.d > firstTrailingBit(global2.c)), Struct_1(-(global2.a & global2.a), trunc(vec4<f32>(global1.x, global3[global2.c], -2824f, -107f)), u_input.b.x, global2.d == true)).c);
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = 1i;
    global0 = array<vec3<bool>, 23>();
    let var_1 = -global2.b.x;
    var var_2 = func_1().c;
    let var_3 = global0[global2.c];
    return var_2.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(-arg_0.a, (round(vec4<f32>(global1.x, 212f, arg_0.b.x, -327f)) * (vec4<f32>(571f, global1.x, -2737f, -770f) + abs(global2.b))) * -((vec4<f32>(-209f, global2.b.x, 688f, global3[u_input.d]) / arg_1.b) * vec4<f32>(arg_1.b.x, global1.x, -173f, global2.b.x)), ~0u, global2.d);
    global0 = array<vec3<bool>, 23>();
    var var_1 = Struct_2(func_1().c, global3[dot(vec4<u32>(~dot(vec3<u32>(arg_0.c, var_0.c, 89373u), vec3<u32>(146u, u_input.c.x, u_input.b.x)), ~select(global2.c, u_input.d, arg_3), ~(u_input.d ^ arg_0.c), 23932u / ~global2.c), ~vec4<u32>(arg_0.c, arg_0.c, var_0.c, 4294967295u) / u_input.b)], var_0);
    global3 = array<f32, 20>();
    return func_2(sign(vec2<f32>(-958f, global1.x) - vec2<f32>(var_0.b.x, 1167f)) + vec2<f32>(-779f, -775f), func_2(-sign(vec2<f32>(-1145f, -1000f)), Struct_1(vec4<i32>(21899i % u_input.a.x, -18635i, arg_1.a.x, ~var_0.a.x), (arg_0.b / vec4<f32>(arg_0.b.x, var_1.b, 1328f, global1.x)) / vec4<f32>(166f, global2.b.x, -1139f, -285f), firstLeadingBit(58085u >> arg_0.c), all(vec4<bool>(arg_1.d, false, false, arg_0.d))), func_2(-vec2<f32>(-985f, -144f), Struct_1(countOneBits(vec4<i32>(arg_0.a.x, arg_1.a.x, 0i, 13330i)), -vec4<f32>(global1.x, 832f, -1000f, global3[u_input.d]), 27048u, global2.d), var_1.c).a).c, Struct_1(clamp(arg_1.a, -vec4<i32>(arg_0.a.x, 0i, -22691i, arg_2), -func_2(arg_1.b.xy, var_0, arg_0).c.a), func_2(-vec2<f32>(var_1.a.b.x, arg_0.b.x) / (vec2<f32>(2494f, -1713f) - vec2<f32>(266f, 1065f)), func_2(global2.b.xw, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 3781i), vec4<f32>(-942f, 165f, -1253f, -656f), 29267u, false), Struct_1(vec4<i32>(-31286i, -13589i, var_1.c.a.x, arg_0.a.x), vec4<f32>(var_1.b, -1221f, 1121f, global1.x), 47174u, false)).a, func_2(-global2.b.wz, arg_1, Struct_1(arg_1.a, global2.b, 0u, var_0.d)).a).a.b, countOneBits(4294967295u), select(func_1().a.d, -global2.a.x < arg_0.a.x, var_1.a.a.x > -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(global2.a.x);
    var var_1 = func_6(Struct_1(global2.a, vec4<f32>(-870f - step(global1.x, -230f), global3[reverseBits(global2.c)], -global2.b.x / (-145f * global1.x), 940f), ~func_5(func_1()), false), Struct_1(global2.a, ((global2.b - vec4<f32>(1026f, global1.x, global1.x, 987f)) - round(global2.b)) / -ceil(global2.b), ~u_input.b.x, all(!select(global0[u_input.c.x], vec3<bool>(global2.d, true, false), true))), i32(-2147483648), 61421i != 18376i);
    let var_2 = Struct_1(vec4<i32>(global2.a.x, abs(var_1.a.a.x), select(i32(-2147483648), 10021i, !(!var_1.c.d)), -(-29479i)), (vec4<f32>(698f, 720f, func_2(vec2<f32>(1000f, var_1.c.b.x), Struct_1(vec4<i32>(28248i, 2147483647i, u_input.a.x, -1i), global2.b, 1u, false), Struct_1(global2.a, vec4<f32>(var_1.a.b.x, global3[0u], 1085f, -1407f), global2.c, false)).a.b.x, global2.b.x) * -func_1().a.b) + var_1.c.b, ~53862u, false);
    global3 = array<f32, 20>();
    let var_3 = countOneBits(dot(vec4<i32>(i32(-2147483648), 1i, var_1.c.a.x, 0i) | vec4<i32>(-1i, -6820i, -26759i, -1i), func_6(var_2, Struct_1(vec4<i32>(var_1.c.a.x, 2147483647i, var_2.a.x, global2.a.x), var_2.b, var_1.a.c, true), 1i, global2.d).a.a) ^ ((u_input.a.x & var_1.c.a.x) / ~(-1i))) - 1i;
    var var_4 = func_2(vec2<f32>(global2.b.x, func_1().c.b.x), var_2, func_2(global2.b.yy, Struct_1(abs(vec4<i32>(-1i, 15539i, var_3, -166i)) / ~vec4<i32>(-39356i, -11252i, u_input.a.x, 84344i), sign(var_1.c.b - vec4<f32>(global1.x, var_1.b, -122f, -632f)), 14910u + (0u >> 0u), any(select(global0[var_2.c], global0[var_1.c.c], false))), func_2(-global2.b.zy, var_1.c, var_1.c).c).a);
    let var_5 = !func_4(Struct_2(func_2(vec2<f32>(var_4.a.b.x, global2.b.x) + vec2<f32>(1255f, var_4.c.b.x), Struct_1(global2.a, vec4<f32>(-786f, global1.x, var_2.b.x, global3[1u]), 0u, var_2.d), Struct_1(global2.a, var_1.a.b, 55823u, true)).c, var_2.b.x, func_1().a), ~u_input.b, 1000f, abs(var_4.a.a.x * global2.a.x)).zz;
    let var_6 = abs(-exp2(vec3<f32>(-600f, 189f, -154f)) * (((vec3<f32>(global2.b.x, var_4.c.b.x, -314f) / var_2.b.wzw) * step(vec3<f32>(1127f, global2.b.x, global2.b.x), var_2.b.zzx)) + -var_2.b.xzz));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x / -(-(-1225f)), u_input.a, max(~vec4<u32>(1u, global2.c, 6525u, 57839u), vec4<u32>(u_input.c.x, 40293u + 47250u, 83642u + u_input.d, select(1u, var_4.c.c, var_4.a.d))) * (vec4<u32>(abs(8628u), 11912u * 4294967295u, func_6(var_1.a, Struct_1(global2.a, var_4.c.b, var_1.a.c, true), var_3, var_1.a.d).c.c, 21084u) << firstTrailingBit(u_input.b)));
}

