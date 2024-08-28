// {"0:0":[154,210,83,237,180,208,148,22,252,4,209,105,220,7,17,240,19,35,176,97,6,137,108,186,75,202,203,22,183,32,74,208]}
// Seed: 9515689505119734614

struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<i32>, 12>;

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32) -> vec4<u32> {
    var var_0 = Struct_1(abs(~vec4<i32>(-(i32(-2147483648)), arg_1.x, i32(-2147483648), 1i | -21430i)), round(max(max(vec2<f32>(2135f, 213f), vec2<f32>(arg_2, 977f)) + -vec2<f32>(arg_2, arg_2), round(vec2<f32>(arg_2, -780f) / vec2<f32>(arg_2, -1383f)))), ~((vec3<i32>(u_input.d.x, arg_1.x, 1i) >> arg_0) ^ ((vec3<i32>(u_input.d.x, -32979i, 26387i) | vec3<i32>(-48165i, 15645i, arg_1.x)) & ~u_input.d)), select(vec3<bool>(arg_0.x <= (arg_0.x % u_input.a.x), true, !global0.x), !(!vec3<bool>(false, true, global0.x)), !true), !vec3<bool>(false, -arg_2 <= -745f, global0.x));
    global1 = array<vec2<i32>, 12>();
    var var_1 = u_input.a.x | (~14168u ^ 30321u);
    let var_2 = vec2<u32>(max(~arg_0.x + arg_0.x, clamp(11529u, 8948u, dot(vec4<u32>(arg_0.x, 12716u, u_input.a.x, 36719u), ~vec4<u32>(arg_0.x, 21203u, u_input.a.x, 10180u)))), ~dot(vec2<u32>(1u ^ u_input.a.x, arg_0.x + u_input.a.x), vec2<u32>(~u_input.a.x, ~53727u)));
    global1 = array<vec2<i32>, 12>();
    return ((min(~vec4<u32>(u_input.a.x, 1u, var_2.x, 15176u), vec4<u32>(u_input.a.x, var_2.x, var_2.x, var_2.x)) * (select(vec4<u32>(arg_0.x, 1u, 1u, u_input.a.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), true) & (vec4<u32>(var_2.x, 9644u, 0u, arg_0.x) - vec4<u32>(1u, 20152u, 4294967295u, u_input.a.x)))) & vec4<u32>(~var_2.x + u_input.a.x, ~(~arg_0.x), ~var_2.x, ~var_2.x)) * vec4<u32>(~0u, 0u, abs(reverseBits(arg_0.x) & (arg_0.x & arg_0.x)), 43614u | 9190u);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>) -> bool {
    global0 = select(!vec3<bool>(all(!vec3<bool>(true, false, true)), false, arg_0.x), select(select(!vec3<bool>(global0.x, true, true), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, arg_0.x), global0.x), !vec3<bool>(global0.x, false, global0.x), true), select(!vec3<bool>(global0.x, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(global0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x)), arg_1 <= -1465f)), select(vec3<bool>(!arg_0.x, any(vec4<bool>(arg_0.x, true, false, global0.x)), !arg_0.x), vec3<bool>(true, 25845u < 28121u, global0.x & false), !select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, arg_0.x), false)), global0.x), any(select(select(select(arg_0, global0.xx, global0.x), vec2<bool>(true, arg_0.x), arg_0.x), vec2<bool>(false, 0u > u_input.a.x), !select(false, false, global0.x))));
    let var_0 = ~u_input.d.x;
    var var_1 = Struct_1(vec4<i32>(var_0 ^ -(-1i), dot(~(-global1[arg_2.x]), max(vec2<i32>(var_0, var_0) * vec2<i32>(5684i, var_0), countOneBits(vec2<i32>(i32(-2147483648), u_input.c)))), -52998i, dot(clamp(vec4<i32>(-1i, var_0, u_input.c, u_input.c), vec4<i32>(34410i, 41146i, 0i, var_0), vec4<i32>(0i, u_input.c, var_0, 2147483647i)) >> arg_2, ~(vec4<i32>(61019i, -15311i, var_0, u_input.d.x) / vec4<i32>(var_0, u_input.d.x, u_input.b, 9805i)))), max(-(-vec2<f32>(-269f, arg_1)), -ceil(vec2<f32>(arg_1, arg_1) + vec2<f32>(-755f, arg_1))), ~(-(-vec3<i32>(19217i, 1i, 2147483647i))), !select(vec3<bool>(all(vec3<bool>(arg_0.x, false, arg_0.x)), false, !global0.x), !(!vec3<bool>(true, false, global0.x)), !select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, true), arg_0.x)), vec3<bool>(!(!true), !(!global0.x), all(!arg_0)));
    let var_2 = abs(func_3(arg_2.xxw, var_1.a.xzy, arg_1).x) | (~u_input.a.x % arg_2.x);
    let var_3 = reverseBits(u_input.a.x) + 27055u;
    return any(select(!vec4<bool>(arg_0.x, arg_0.x, true, all(vec3<bool>(arg_0.x, global0.x, false))), !(!vec4<bool>(false, true, global0.x, arg_0.x)), vec4<bool>(false, any(!vec4<bool>(true, global0.x, false, global0.x)), false, all(vec3<bool>(global0.x, arg_0.x, var_1.e.x)) | !false)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ((-302f + step(-arg_0, select(arg_0, 135f, false))) + arg_1.b.x) / -min(select(arg_1.b.x + 1000f, -arg_0, arg_1.d.x), (arg_1.b.x - 417f) + -(-866f));
    let var_1 = arg_1.e;
    var var_2 = global0.x;
    global0 = var_1;
    var var_3 = arg_1;
    return Struct_1(vec4<i32>(((8092i | -63425i) ^ (i32(-2147483648) * u_input.c)) % 11914i, -(~(i32(-2147483648))), ~((-13483i * arg_1.c.x) >> 1u), 16496i), floor(select(-var_3.b, var_3.b * arg_1.b, vec2<bool>(arg_1.d.x, true)) - vec2<f32>(max(-157f, var_0), -510f)), u_input.d, !vec3<bool>(func_4(var_1.zx, 429f, func_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_1.a.zyw, arg_1.b.x)), any(!vec2<bool>(var_1.x, true)), true), !(!select(select(vec3<bool>(global0.x, true, global0.x), var_1, true), vec3<bool>(arg_1.d.x, true, false), !var_1.x)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = !select(func_2(min(-(-698f), step(-967f, arg_1.b.x)), Struct_1(vec4<i32>(1i, arg_2.c.x, arg_1.a.x, 2147483647i), vec2<f32>(1217f, arg_1.b.x), vec3<i32>(i32(-2147483648), u_input.d.x, arg_2.c.x), vec3<bool>(true, false, arg_1.d.x), arg_2.d)).e, vec3<bool>((false && false) || (arg_0 != arg_0), all(func_2(arg_2.b.x, Struct_1(vec4<i32>(arg_1.c.x, 1i, -1i, u_input.b), arg_1.b, arg_1.c, vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, false, true))).e.zz), arg_2.d.x), true);
    let var_0 = true;
    global0 = arg_1.e;
    var var_1 = arg_2.c.x;
    let var_2 = !all(select(vec4<bool>(true | false, true, arg_1.d.x | arg_2.e.x, true), select(select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, true, true, false), false), !vec4<bool>(true, arg_2.e.x, global0.x, true), func_4(global0.yz, 1466f, vec4<u32>(u_input.a.x, 8616u, u_input.a.x, u_input.a.x))), true));
    return arg_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    var var_0 = func_5(u_input.b, Struct_1(vec4<i32>(u_input.c, abs(-894i) / ~2147483647i, reverseBits(i32(-2147483648)), u_input.d.x | ~8636i), abs(vec2<f32>(-1000f, arg_0.x)), -(~vec3<i32>(u_input.d.x, u_input.b, u_input.b)) >> (reverseBits(vec3<u32>(9831u, 37978u, u_input.a.x)) >> vec3<u32>(27009u, 0u, u_input.a.x)), select(select(!vec3<bool>(true, global0.x, arg_1), vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(global0.x, true, arg_1), vec3<bool>(false, false, arg_1), true)), !vec3<bool>(false, global0.x, true), false), vec3<bool>(false, !false & false, global0.x)), func_2(-(-arg_0.x) - (arg_0.x + arg_0.x), Struct_1(vec4<i32>(2147483647i >> u_input.a.x, 2147483647i >> 43854u, 32588i, ~(-1i)), -(-vec2<f32>(646f, arg_0.x)), countOneBits(firstTrailingBit(u_input.d)), select(vec3<bool>(arg_1, true, true), vec3<bool>(false, arg_1, arg_1), !true), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))))));
    let var_1 = 77608u;
    global0 = vec3<bool>(global0.x, var_0.e.x, !(!true));
    var var_2 = -vec4<f32>(exp2(func_2(step(arg_0.x, -757f), Struct_1(vec4<i32>(-1i, u_input.d.x, u_input.b, u_input.d.x), var_0.b, var_0.a.wzx, var_0.e, var_0.e)).b.x), 853f, -933f, 1955f);
    let var_3 = var_0.a;
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-vec4<i32>(abs(-17217i), 35468i, func_1(vec3<f32>(442f, -672f, 538f) / vec3<f32>(1000f, 1722f, -2477f), select(true, true, global0.x)), 1i), vec2<f32>(1000f, floor(611f)), vec3<i32>(u_input.b, -(i32(-2147483648)), clamp(~(-1i), ~1978i, func_2(-712f, Struct_1(vec4<i32>(u_input.c, u_input.d.x, u_input.b, u_input.c), vec2<f32>(1345f, 565f), vec3<i32>(i32(-2147483648), 16178i, u_input.d.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, true))).a.x)) - (reverseBits(firstTrailingBit(vec3<i32>(-57022i, -1i, u_input.b))) * (u_input.d << ~vec3<u32>(72037u, u_input.a.x, 50191u))), select(select(vec3<bool>(false, -831f >= 945f, true), vec3<bool>(!global0.x, func_5(u_input.c, Struct_1(vec4<i32>(-1i, 47962i, u_input.d.x, u_input.b), vec2<f32>(339f, -1942f), u_input.d, vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, false)), Struct_1(vec4<i32>(1i, u_input.b, u_input.d.x, -1i), vec2<f32>(1032f, -1207f), vec3<i32>(u_input.b, u_input.c, 1004i), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, false))).d.x, true), !vec3<bool>(true, global0.x, true)), func_2(-416f, Struct_1(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b), vec2<f32>(593f, 768f), u_input.d, func_2(-320f, Struct_1(vec4<i32>(u_input.d.x, -12978i, -4180i, u_input.d.x), vec2<f32>(870f, -408f), u_input.d, vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x))).e, vec3<bool>(global0.x, true, false))).d, select(!func_2(580f, Struct_1(vec4<i32>(i32(-2147483648), -610i, u_input.d.x, -5093i), vec2<f32>(1000f, -371f), u_input.d, vec3<bool>(true, true, true), vec3<bool>(false, global0.x, global0.x))).d, vec3<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, global0.x, false)), true), !func_4(global0.zz, -366f, vec4<u32>(24208u, u_input.a.x, 0u, u_input.a.x)))), select(!func_2(-183f * 860f, func_2(-624f, Struct_1(vec4<i32>(2147483647i, -37479i, 2147483647i, u_input.c), vec2<f32>(-1119f, -1582f), u_input.d, vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, true)))).e, select(vec3<bool>(any(vec4<bool>(true, true, false, true)), any(vec3<bool>(global0.x, global0.x, global0.x)), true), select(!vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, true), func_5(-1i, Struct_1(vec4<i32>(1i, u_input.c, u_input.d.x, u_input.d.x), vec2<f32>(-677f, 488f), vec3<i32>(19763i, u_input.d.x, 21757i), vec3<bool>(global0.x, false, false), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(u_input.b, 1i, -3007i, -33280i), vec2<f32>(-1181f, 221f), u_input.d, vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true))).d), func_2(-665f, func_2(-366f, Struct_1(vec4<i32>(u_input.c, 36227i, i32(-2147483648), u_input.b), vec2<f32>(-598f, 257f), u_input.d, vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x)))).d.x), select(func_2(-(-419f), func_2(-403f, Struct_1(vec4<i32>(u_input.b, u_input.b, 77492i, u_input.d.x), vec2<f32>(169f, 1779f), u_input.d, vec3<bool>(true, global0.x, true), vec3<bool>(true, true, true)))).e, !(!vec3<bool>(false, global0.x, global0.x)), func_5(1i, func_2(-854f, Struct_1(vec4<i32>(1i, u_input.b, 2147483647i, u_input.d.x), vec2<f32>(639f, 866f), vec3<i32>(u_input.d.x, -28101i, 1i), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true))), func_2(-657f, Struct_1(vec4<i32>(84488i, u_input.b, i32(-2147483648), -1i), vec2<f32>(-1281f, -1929f), vec3<i32>(13042i, u_input.d.x, 2147483647i), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, false)))).e)));
    let var_1 = vec3<f32>(var_0.b.x, var_0.b.x, -1000f);
    let var_2 = global0.xy;
    var var_3 = ~vec3<u32>(u_input.a.x, u_input.a.x, dot(~vec4<u32>(22549u, 0u, u_input.a.x, 22912u), vec4<u32>(0u, 25848u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 63837u, 1u))) - ~clamp(~select(vec3<u32>(43762u, u_input.a.x, 14484u), vec3<u32>(u_input.a.x, 0u, u_input.a.x), var_0.d), vec3<u32>(~u_input.a.x, u_input.a.x & u_input.a.x, 0u), ~vec3<u32>(u_input.a.x, u_input.a.x, 33761u) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x));
    let var_4 = 97856u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(30804i >> (~4294967295u - (var_3.x / u_input.a.x))), 11385i, vec2<u32>(~firstLeadingBit(~var_4), ~(~(35876u ^ var_3.x))), max(vec4<i32>(abs(u_input.b) ^ ~u_input.c, var_0.c.x, dot(select(var_0.a, vec4<i32>(20449i, 1i, 1i, 66728i), false), select(var_0.a, vec4<i32>(var_0.c.x, var_0.a.x, var_0.c.x, var_0.c.x), global0.x)), dot(abs(vec2<i32>(var_0.a.x, u_input.c)), vec2<i32>(i32(-2147483648), -56001i))), vec4<i32>(i32(-2147483648), ~(~63916i), -(-u_input.b), -u_input.c * var_0.c.x)), reverseBits(2147483647i));
}

