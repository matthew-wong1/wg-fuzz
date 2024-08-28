// {"0:0":[162,124,28,116,212,95,15,131]}
// Seed: 7750159160512643057

struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<i32, 15> = array<i32, 15>(1i, i32(-2147483648), -1i, -68859i, 8964i, -56859i, i32(-2147483648), -5788i, -35973i, 0i, -1i, 24063i, 0i, 1i, 2147483647i);

var<private> global1: array<Struct_3, 4>;

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = global0[abs(~6796u)];
    let var_1 = Struct_4(Struct_2(Struct_1(round(arg_0.x) / abs(279f), (2147483647i / i32(-2147483648)) >> 4294967295u, min(vec3<i32>(0i, global0[8553u], 0i), vec3<i32>(2147483647i, 72630i, global0[u_input.a])) + -vec3<i32>(1i, global0[u_input.b], 0i), u_input.a, max(-vec4<i32>(global0[13521u], 24875i, -56222i, global0[u_input.b]), vec4<i32>(global0[u_input.b], global0[4294967295u], global0[u_input.b], -35478i) - vec4<i32>(-42818i, 30665i, 12869i, global0[u_input.b]))), select(firstTrailingBit(-15190i), ~(-1i) % 1i, max(507f, arg_0.x) < -(-349f)), select(~vec2<u32>(42397u, 0u), abs(vec2<u32>(u_input.a, u_input.a) + vec2<u32>(0u, 0u)), vec2<bool>(any(vec2<bool>(true, true)), true))), 1000f, select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), !vec4<bool>(false, true, false, false), !false), !(!vec4<bool>(false, true, true, true)), all(!vec2<bool>(false, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true | true, all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true)), all(vec3<bool>(true, true, false))), dot(vec3<i32>(-18488i, global0[4294967295u], global0[u_input.b]), vec3<i32>(1i, i32(-2147483648), 2147483647i)) < dot(vec2<i32>(global0[u_input.a], 0i), vec2<i32>(global0[u_input.a], global0[u_input.b]))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), !(true & !true) | all(vec4<bool>(false, false | false, true, true)));
    global0 = array<i32, 15>();
    var var_2 = clamp(var_1.a.a.e, var_1.a.a.e, reverseBits(~max(var_1.a.a.e, var_1.a.a.e)) - max(var_1.a.a.e, firstLeadingBit(var_1.a.a.e >> vec4<u32>(0u, 1u, u_input.b, 26187u))));
    var_2 = max(select(select(var_1.a.a.e, vec4<i32>(var_2.x >> 4294967295u, var_2.x, ~1i, reverseBits(0i)), !true), var_1.a.a.e << vec4<u32>(~u_input.b, 76311u, u_input.a % var_1.a.c.x, abs(var_1.a.a.d)), vec4<bool>(!(var_1.d & false), select(any(var_1.c.zxw), var_1.d, var_1.c.x), !(var_1.d & var_1.d), var_1.a.a.d > ~u_input.b)), vec4<i32>(abs(~(-27704i)), dot(~var_2.zwx, var_1.a.a.e.yzy), global0[abs(var_1.a.c.x >> var_1.a.c.x)], -1i) >> ~(~vec4<u32>(0u, var_1.a.a.d, 1u, var_1.a.c.x)));
    return var_1.a.a.e;
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(arg_0.x, ~(-(global0[u_input.a] & global0[4294967295u])), countOneBits(vec3<i32>(global0[u_input.a], global0[u_input.a], -1i) * abs(vec3<i32>(global0[u_input.b], -35984i, global0[9537u]))), u_input.a * abs(1u), (abs(vec4<i32>(-44995i, -57155i, 1i, global0[u_input.a])) / ~vec4<i32>(2147483647i, -1i, 41188i, global0[u_input.b])) | ~func_3(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x))), global0[u_input.a], vec2<u32>(min(5323u, u_input.a), ~(~u_input.b - (0u & u_input.b))));
    global0 = array<i32, 15>();
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    let var_1 = ~vec2<u32>(u_input.b, ((u_input.a - u_input.b) - var_0.a.d) * dot(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(var_0.a.d, 0u, 1u)));
    return -arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(1178f - round(-(-608f)), global0[firstTrailingBit(u_input.a) | ~u_input.b] >> u_input.a, abs(vec3<i32>(global0[34227u], -34157i, arg_1.x)) + vec3<i32>(62169i, abs(-543i), arg_1.x), 5171u, -reverseBits(~vec4<i32>(-13246i, global0[u_input.a], -1i, 8921i))), -arg_1.x, ~(~(vec2<u32>(u_input.b, 23166u) ^ vec2<u32>(35470u, u_input.b)) ^ select(~vec2<u32>(23334u, u_input.a), vec2<u32>(u_input.a, u_input.b) & vec2<u32>(19091u, u_input.a), !vec2<bool>(false, arg_0.x))));
    var var_1 = !(((7368u & countOneBits(55740u)) / (24392u / 0u)) <= clamp(1u, var_0.c.x % (var_0.a.d * var_0.a.d), reverseBits(dot(vec2<u32>(u_input.b, 4294967295u), var_0.c))));
    let var_2 = false;
    var_1 = var_2;
    global0 = array<i32, 15>();
    return Struct_2(Struct_1(-652f, 61437i, vec3<i32>(-(-33861i) + abs(global0[72960u]), ~global0[52163u - var_0.a.d], dot(arg_1, abs(vec2<i32>(var_0.a.c.x, global0[427u])))), clamp(29315u * (var_0.a.d & 54555u), ~(4553u & 4294967295u), u_input.b), var_0.a.e), arg_1.x, vec2<u32>(var_0.a.d, u_input.a));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_4 {
    global1 = array<Struct_3, 4>();
    var var_0 = vec2<f32>(func_4(vec3<bool>(!false, false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), vec2<i32>(arg_0.b, 73932i) ^ -(~vec2<i32>(i32(-2147483648), 2147483647i)), vec2<f32>(-1919f + arg_0.a.a, arg_0.a.a / arg_0.a.a) - (-vec2<f32>(arg_0.a.a, 334f) + vec2<f32>(474f, arg_0.a.a)), sign(sign(1000f))).a.a, round(abs(-(arg_0.a.a / 900f))));
    global0 = array<i32, 15>();
    var var_1 = ~arg_0.a.e.zxz + -((func_4(vec3<bool>(false, true, true), vec2<i32>(0i, 33036i), vec2<f32>(-848f, -2213f), var_0.x).a.e.xxw * reverseBits(arg_0.a.c)) ^ max(~vec3<i32>(0i, arg_1, arg_0.b), clamp(vec3<i32>(-3198i, arg_1, arg_0.a.e.x), vec3<i32>(arg_0.a.b, -1i, 1i), vec3<i32>(arg_0.b, 1i, 15781i))));
    var var_2 = 34101u;
    return Struct_4(Struct_2(Struct_1(arg_0.a.a, 0i, (vec3<i32>(arg_0.a.b, global0[31806u], 34284i) ^ vec3<i32>(global0[arg_0.c.x], -1i, arg_0.a.e.x)) * reverseBits(vec3<i32>(-12323i, arg_0.a.e.x, var_1.x)), arg_0.a.d, vec4<i32>(select(18258i, -15854i, false), -17165i / -1i, -1i, ~arg_1)), dot(vec3<i32>(dot(var_1.yz, vec2<i32>(1i, -16896i)), global0[u_input.a], reverseBits(arg_1)), ~vec3<i32>(60153i, var_1.x, 0i) % (arg_0.a.c >> vec3<u32>(65681u, 52737u, 69882u))), vec2<u32>(55892u & arg_0.a.d, 4085u) / (~vec2<u32>(0u, arg_0.a.d) | ~vec2<u32>(u_input.b, 17080u))), var_0.x, !select(!vec4<bool>(true, true, false, true), vec4<bool>(!true, false, true, true), (true & false) || true), any(!select(vec4<bool>(true, true, false, true), !vec4<bool>(false, true, true, true), any(vec3<bool>(false, false, false)))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), vec2<bool>(!select(all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, false, true)), false), true), !(!true));
    let var_1 = all(vec3<bool>(all(vec3<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(var_0.x, true, var_0.x)), true)), all(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, true), var_0.x)) != (var_0.x && var_0.x), all(select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), false))));
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    let var_2 = func_5(func_4(vec3<bool>(var_1, true, !(true | true)), ~reverseBits(vec2<i32>(arg_2.e.x, arg_2.e.x)) ^ vec2<i32>(arg_0.e.b | 9426i, 1i >> 0u), -arg_3.xz * -func_2(vec2<f32>(-1000f, arg_3.x)), -1301f), ~(~countOneBits(0i)) * -clamp(1i, i32(-2147483648), i32(-2147483648)));
    return reverseBits(vec3<u32>(((var_2.a.c.x + 1u) >> ~13425u) + countOneBits(~arg_0.a), firstTrailingBit(0u ^ ~1u), ~4294967295u * ~arg_2.d));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = array<i32, 15>();
    global1 = array<Struct_3, 4>();
    var var_0 = exp2(sign(vec3<f32>(-(191f / 836f), 1119f, -(-848f))));
    global0 = array<i32, 15>();
    let var_1 = Struct_3(~0u, countOneBits(vec4<u32>(arg_2.x, arg_2.x, ~arg_2.x, dot(vec3<u32>(arg_2.x, 1492u, u_input.b), arg_2))), u_input.a, Struct_1(arg_1.x, -1i / dot(-vec2<i32>(global0[7155u], -16205i), vec2<i32>(5911i, 1i) * vec2<i32>(global0[arg_2.x], global0[47801u])), abs(min(vec3<i32>(-4586i, -28591i, global0[u_input.b]) % vec3<i32>(-2414i, global0[arg_2.x], global0[0u]), vec3<i32>(-1i, i32(-2147483648), 2147483647i))), u_input.a, vec4<i32>(0i, 0i, global0[dot(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(55857u, u_input.a, arg_2.x))], ~(-global0[arg_2.x]))), func_4(arg_0, vec2<i32>(global0[(u_input.b & u_input.b) % 61147u], dot(vec3<i32>(1i, -31491i, i32(-2147483648)), vec3<i32>(-25587i, 39653i, 2147483647i)) >> 57510u), arg_1.wx, -(-arg_1.x)).a);
    return ~(vec2<u32>(var_1.a, ~(~var_1.d.d)) ^ var_1.b.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(-(-(-1129f))), (((global0[43936u] & -52924i) / global0[abs(u_input.a)]) & dot(~vec4<i32>(global0[u_input.b], -52766i, global0[1u], -2666i), vec4<i32>(global0[13420u], i32(-2147483648), 25195i, i32(-2147483648)) | vec4<i32>(global0[u_input.a], 1i, 44509i, -19197i))) & 5091i, abs((select(vec3<i32>(global0[0u], global0[16010u], 0i), vec3<i32>(-15663i, 46918i, 26936i), vec3<bool>(false, false, false)) | firstTrailingBit(vec3<i32>(1i, global0[4294967295u], 10972i))) | -(~vec3<i32>(global0[36239u], global0[u_input.a], 2147483647i))), u_input.a, clamp(~vec4<i32>(global0[~u_input.a], global0[0u], abs(global0[68378u]), -global0[u_input.a]), abs((vec4<i32>(global0[u_input.b], global0[u_input.a], global0[1u], i32(-2147483648)) << vec4<u32>(0u, u_input.b, 1u, u_input.a)) ^ (vec4<i32>(2147483647i, global0[1u], global0[u_input.b], i32(-2147483648)) * vec4<i32>(global0[4294967295u], global0[u_input.a], -1i, -1584i))), ~(vec4<i32>(34748i, global0[u_input.a], i32(-2147483648), 6204i) / vec4<i32>(global0[u_input.b], global0[u_input.b], global0[4294967295u], 0i)) ^ abs(-vec4<i32>(global0[u_input.b], global0[u_input.a], -8703i, global0[u_input.b]))));
    var var_1 = Struct_4(Struct_2(Struct_1(trunc(max(var_0.a, var_0.a)), -2771i, var_0.e.yzx, (var_0.d ^ 0u) / 0u, var_0.e), 22988i, func_6(vec3<bool>(all(vec2<bool>(true, true)), !true, all(vec2<bool>(false, false))), -(-vec4<f32>(1181f, var_0.a, -878f, var_0.a)), func_1(Struct_3(0u, vec4<u32>(4294967295u, u_input.a, var_0.d, var_0.d), u_input.a, var_0, var_0), u_input.a, Struct_1(-1000f, i32(-2147483648), vec3<i32>(global0[u_input.b], 2147483647i, 2147483647i), var_0.d, var_0.e), vec3<f32>(-1083f, var_0.a, var_0.a)))), ceil(var_0.a) - select(trunc(718f), -(var_0.a - var_0.a), func_5(Struct_2(var_0, 54919i, vec2<u32>(1u, var_0.d)), -16706i).c.x & !false), func_5(Struct_2(Struct_1(-482f / 142f, dot(vec2<i32>(17542i, global0[u_input.b]), var_0.e.zw), vec3<i32>(global0[var_0.d], 27846i, 1i), abs(var_0.d), reverseBits(var_0.e)), -(~0i), ~(~vec2<u32>(var_0.d, u_input.b))), -1i).c, !true);
    var var_2 = var_0;
    let var_3 = firstLeadingBit(~clamp(vec3<u32>(firstLeadingBit(0u), 1u, ~0u), ~vec3<u32>(var_0.d, 1u, var_0.d) - abs(vec3<u32>(var_2.d, 37336u, var_1.a.c.x)), vec3<u32>(var_2.d >> 45358u, reverseBits(27262u), ~u_input.b)));
    global1 = array<Struct_3, 4>();
    var var_4 = vec3<f32>(min(exp2(max(469f, var_2.a)), var_0.a), var_1.a.a.a, var_0.a + 1000f);
    var var_5 = 259f - -(-(-var_0.a));
    var var_6 = func_4(select(var_1.c.zxz, func_5(Struct_2(func_4(var_1.c.wzw, vec2<i32>(var_1.a.a.e.x, var_0.c.x), vec2<f32>(var_2.a, var_2.a), -1402f).a, ~(-52576i), var_1.a.c), global0[~4294967295u & (1u & 0u)]).c.zww, !select(!var_1.c.zyz, var_1.c.zxw, true || var_1.c.x)), vec2<i32>(-(~(~var_1.a.b)), 0i), vec2<f32>(-abs(506f), -705f / ((678f - var_2.a) * var_1.a.a.a)), -992f).a;
    var var_7 = !var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(1u ^ var_3.x, 0u, -661f >= -(-var_1.a.a.a)));
}

