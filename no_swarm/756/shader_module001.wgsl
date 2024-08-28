// {"0:0":[9,4,211,101,148,97,148,1,78,33,156,69,103,93,115,87,203,169,100,87,85,176,210,14,248,146,255,51,36,27,247,159]}
// Seed: 1949801052869368539

struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(1u, 246f, vec3<f32>(1220f, -1740f, 1019f), 23999i);

var<private> global3: array<Struct_1, 26>;

var<private> global4: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(9641u, 1u, 0u), vec3<u32>(22543u, 44006u, 1u), vec3<u32>(6485u, 0u, 49153u), vec3<u32>(1u, 43663u, 0u), vec3<u32>(5458u, 0u, 0u), vec3<u32>(1u, 34999u, 99064u), vec3<u32>(53622u, 28033u, 1u), vec3<u32>(7607u, 52152u, 51104u), vec3<u32>(39207u, 1u, 7468u), vec3<u32>(26735u, 0u, 1u), vec3<u32>(40362u, 4294967295u, 0u), vec3<u32>(82593u, 11767u, 0u), vec3<u32>(4294967295u, 0u, 64844u), vec3<u32>(22296u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 11702u, 0u), vec3<u32>(4294967295u, 75549u, 12280u), vec3<u32>(4294967295u, 21189u, 23089u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 120722u), vec3<u32>(0u, 1u, 1u), vec3<u32>(49705u, 1u, 75378u), vec3<u32>(23193u, 34714u, 19663u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4207u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 9416u, 31001u), vec3<u32>(1u, 1u, 1u), vec3<u32>(13738u, 1u, 6197u), vec3<u32>(37252u, 4294967295u, 75640u));

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global2 = arg_1;
    let var_0 = vec4<i32>((global2.d | -dot(vec2<i32>(arg_1.d, -42227i), vec2<i32>(global1.x, 14696i))) ^ global1.x, -firstTrailingBit(-abs(2147483647i)), -(countOneBits(dot(vec4<i32>(global2.d, 2147483647i, global1.x, global1.x), vec4<i32>(36629i, arg_1.d, global2.d, global1.x))) - -55883i), ~firstTrailingBit(reverseBits(global2.d)) % (-(1i * global1.x) - -(global2.d / -16889i)));
    var var_1 = 10910i >> reverseBits(33587u);
    let var_2 = vec2<bool>(!all(!(!vec4<bool>(arg_0, arg_0, false, arg_0))), true);
    var var_3 = var_2.x;
    return global2.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(106u, (-100f + trunc(step(2198f, arg_2.b))) + (-1000f + 237f), vec3<f32>(global2.b, global2.c.x, -sign(-739f)) - vec3<f32>(arg_0.c.x, func_3(!false, global3[reverseBits(global2.a)]), -1332f), dot(u_input.b, (vec3<i32>(-24834i, arg_2.d, arg_2.d) % vec3<i32>(arg_2.d, 32801i, arg_0.d)) + u_input.b) / (arg_1.x & (global1.x * dot(vec4<i32>(-14494i, global1.x, 2147483647i, -7104i), vec4<i32>(arg_2.d, 0i, 0i, u_input.b.x)))));
    global0 = array<u32, 16>();
    global2 = var_0;
    var var_1 = select(~(~(global1.zxz * (vec3<i32>(0i, 22803i, -83773i) + global1.zzy))), u_input.b, !vec3<bool>(true, true, select(!true, !false, all(vec3<bool>(true, false, true)))));
    let var_2 = arg_2;
    return -(select(min(-32378i / i32(-2147483648), -1i), 0i * i32(-2147483648), all(vec4<bool>(true, true, true, false))) - (clamp(select(global2.d, -1i, false), var_2.d >> 108199u, dot(vec4<i32>(2147483647i, 56652i, global1.x, 30642i), vec4<i32>(global2.d, var_2.d, arg_2.d, u_input.a))) + (-2147483647i % max(0i, 2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = global3[firstLeadingBit(global2.a)];
    let var_1 = global1.x;
    global4 = array<vec3<u32>, 31>();
    var var_2 = ~func_2(Struct_1(~1u, arg_0.b, arg_0.c, 0i), global1.yx, Struct_1(~(~var_0.a), -(-720f * var_0.b), vec3<f32>(var_0.b, 212f * arg_0.c.x, round(770f)), 13775i));
    let var_3 = vec2<bool>(all(!select(vec3<bool>(true, arg_2, true), arg_1.zwx, vec3<bool>(true, arg_3, false))) && (firstTrailingBit(0i + arg_0.d) <= arg_0.d), max(arg_0.c.x * var_0.b, 1195f) < -178f);
    return Struct_1(~(~(0u | global0[1u])) ^ 95364u, -1022f, -global2.c, ~global2.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = func_1(func_1(Struct_1(min(~0u, ~48506u), step(global2.b, arg_1.c.x - global2.c.x), (arg_1.c * global2.c) + global2.c, -40867i), select(vec4<bool>(!arg_0.x, arg_0.x, false, global1.x <= global1.x), vec4<bool>(1u <= 28936u, arg_0.x, arg_0.x, global2.a > global2.a), arg_0), true, any(!arg_0.zwy)), select(select(vec4<bool>(-1341i != u_input.a, all(vec2<bool>(false, arg_0.x)), true, global0[16940u] != 20163u), !select(vec4<bool>(false, arg_0.x, true, false), arg_0, true), select(!vec4<bool>(arg_0.x, false, arg_0.x, true), !vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x))), select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), true), select(arg_0, !select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), false), vec4<bool>(false || arg_0.x, arg_0.x, !arg_0.x, all(arg_0.yz)))), true, all(vec2<bool>(arg_0.x, true)));
    var var_1 = Struct_1((((0u - 1u) % func_1(Struct_1(global0[global2.a], var_0.b, arg_1.c, 0i), vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0.x, true).a) * ~var_0.a) + (global0[global2.a] - global2.a), -max(-(-261f) / -944f, arg_1.c.x / arg_1.b), exp2(vec3<f32>(var_0.c.x, arg_1.c.x, -230f)), 1i);
    let var_2 = vec2<u32>(~1u, abs(min(min(44501u, 64990u) >> 27184u, min(var_1.a, ~arg_1.a))));
    let var_3 = 1000f;
    global2 = Struct_1(abs(dot(firstTrailingBit(vec2<u32>(arg_1.a, 1u)), var_2)), exp2(floor(580f)), global2.c, arg_1.d);
    return -12919i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    global0 = array<u32, 16>();
    let var_0 = !vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) || (global2.c.x >= global2.c.x));
    let var_1 = abs(-(vec4<f32>(abs(global2.c.x), 945f, 490f - global2.b, -688f - 908f) / max(vec4<f32>(global2.b, 403f, global2.b, global2.c.x), ceil(vec4<f32>(global2.c.x, global2.b, global2.b, -415f)))));
    global2 = Struct_1(global0[global2.a | global2.a], ((-348f - sign(1843f)) + (exp2(global2.b) / 128f)) - 359f, global2.c, arg_0);
    var var_2 = global3[78920u];
    return Struct_1(~(var_2.a / global2.a), -(-abs(138f - var_1.x)), vec3<f32>(-1041f, global2.c.x, max(var_1.x, var_1.x) - (-1872f - var_1.x)) + vec3<f32>(-231f, global2.c.x, -exp2(var_2.b)), ~((-(-15803i) << select(var_2.a, 0u, false)) + (u_input.a + (var_2.d * -41384i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[~8894u];
    let var_1 = exp2(-1199f);
    var var_2 = -firstTrailingBit(vec2<i32>(~2147483647i, ~0i));
    global0 = array<u32, 16>();
    let var_3 = select(!vec2<bool>(false, !(true && false)), !vec2<bool>(true, !(!true)), any(select(vec2<bool>(any(vec3<bool>(false, true, false)), false), select(vec2<bool>(false, true), !vec2<bool>(true, false), any(vec3<bool>(true, false, false))), !false)));
    let var_4 = func_5(func_4(select(vec4<bool>(true, false && var_3.x, any(vec3<bool>(var_3.x, false, var_3.x)), true), vec4<bool>(!var_3.x, any(vec3<bool>(var_3.x, var_3.x, true)), !true, false), select(!vec4<bool>(var_3.x, true, true, false), select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(var_3.x, true, var_3.x, false)), !vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), func_1(Struct_1(reverseBits(4294967295u), -1000f, vec3<f32>(global2.b, -599f, var_0.c.x), global1.x), vec4<bool>(false, true, all(vec4<bool>(false, false, true, false)), false & false), all(!var_3), !var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(max(var_0.d, -49173i), -1i)), (1i * (global2.d % reverseBits(2147483647i))) >> (var_0.a << global0[global2.a]), global4[~(~0u)] >> vec3<u32>(var_0.a * var_4.a, max(global2.a, global0[~76483u]), ~min(58034u, var_0.a)), global1.yyx, -var_4.c.x - -(var_0.b + select(var_1, -208f, true)));
}

