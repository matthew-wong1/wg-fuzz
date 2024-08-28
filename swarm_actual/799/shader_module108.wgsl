// {"0:0":[120,107,253,190,156,166,158,214,116,198,22,191,27,16,166,213,167,128,236,175,5,245,25,212,101,36,184,77,141,60,254,92]}
// Seed: 17856660276060918305

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1132f, -1335f, -327f, -798f);

var<private> global1: array<u32, 1>;

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(7712i, 1i), vec2<i32>(-34020i, -4684i), vec2<i32>(-2773i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(38508i, 1i), vec2<i32>(-26932i, 37541i), vec2<i32>(19867i, -27091i), vec2<i32>(-42248i, 0i), vec2<i32>(i32(-2147483648), 28823i), vec2<i32>(-55222i, -13736i), vec2<i32>(1i, 11629i), vec2<i32>(-41297i, -1i), vec2<i32>(-1i, 9632i), vec2<i32>(-1i, -12670i), vec2<i32>(2938i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(38948i, 10379i), vec2<i32>(-2712i, 2147483647i), vec2<i32>(79992i, -37816i), vec2<i32>(24437i, 2147483647i), vec2<i32>(-52142i, -67717i), vec2<i32>(0i, 0i), vec2<i32>(-23058i, 21817i), vec2<i32>(-1i, -10062i), vec2<i32>(30906i, -2496i), vec2<i32>(-6767i, -2555i), vec2<i32>(-30499i, -1i), vec2<i32>(1031i, 2147483647i));

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.a.a;
    let var_1 = 43282u;
    global2 = array<vec2<i32>, 29>();
    let var_2 = arg_0.d.d.x;
    global2 = array<vec2<i32>, 29>();
    return arg_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    var var_0 = func_1(func_1(Struct_2(func_1(func_1(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(arg_2, u_input.e, arg_2, 0i), arg_1.x, vec3<bool>(true, true, true), vec2<bool>(true, true)), arg_2, global1[26749u], Struct_1(vec2<bool>(false, false), vec4<i32>(85149i, 1i, 15007i, arg_2), global0.x, vec3<bool>(false, true, false), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, arg_2, 520i, arg_2), 1471f, vec3<bool>(false, true, false), vec2<bool>(true, true))))).d, -(i32(-2147483648)), 4294967295u, func_1(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.e, arg_2, -20683i, arg_2), 966f, vec3<bool>(false, true, false), vec2<bool>(false, true)), arg_2, 29203u, Struct_1(vec2<bool>(false, true), vec4<i32>(-2300i, 2147483647i, -44854i, i32(-2147483648)), 1105f, vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), vec4<i32>(-50486i, -1i, 14115i, 2147483647i), 347f, vec3<bool>(true, true, false), vec2<bool>(false, true)))).e, Struct_1(vec2<bool>(false, true), vec4<i32>(1i, i32(-2147483648), u_input.d, u_input.d), 1000f, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec2<bool>(true, true))))).d;
    var var_1 = abs(~reverseBits((vec2<u32>(1u, u_input.c.x) ^ arg_0) % max(arg_0, vec2<u32>(arg_0.x, 4294967295u))));
    var var_2 = reverseBits(((vec3<u32>(u_input.c.x, u_input.c.x, arg_0.x) - (vec3<u32>(0u, global1[var_1.x], var_1.x) << vec3<u32>(4294967295u, 1u, 1u))) << ~(vec3<u32>(42955u, 23236u, arg_0.x) / vec3<u32>(var_1.x, global1[10853u], u_input.a.x))) << vec3<u32>(dot(arg_0, abs(vec2<u32>(global1[global1[arg_0.x]], 0u))), u_input.b, 34149u));
    var var_3 = Struct_1(vec2<bool>(var_0.e.x, func_1(func_1(func_1(Struct_2(Struct_1(var_0.a, var_0.b, -553f, vec3<bool>(var_0.d.x, false, true), vec2<bool>(var_0.e.x, var_0.d.x)), u_input.e, var_2.x, Struct_1(vec2<bool>(false, true), vec4<i32>(var_0.b.x, 1i, 68588i, 2147483647i), -843f, vec3<bool>(false, false, false), vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(var_0.e, vec4<i32>(0i, i32(-2147483648), 1i, u_input.e), global0.x, vec3<bool>(false, var_0.e.x, false), var_0.d.zy))))).d.e.x), -countOneBits(-reverseBits(var_0.b)), 250f, select(vec3<bool>(var_0.d.x, var_0.a.x, false), !(!(!vec3<bool>(false, var_0.a.x, true))), -var_0.b.x >= (~u_input.d ^ -1428i)), !var_0.a);
    global1 = array<u32, 1>();
    return arg_1.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = -vec4<f32>(-(-global0.x), 1000f, select(trunc(abs(-1865f)), -(global0.x / 1018f), true), -select(global0.x, arg_0.c.c.d.c, 618f < arg_1.x));
    let var_0 = -(~(arg_0.c.d.d.b.ww << ~(~vec2<u32>(u_input.c.x, 2152u))));
    var var_1 = u_input.a;
    global1 = array<u32, 1>();
    let var_2 = Struct_1(!arg_0.c.d.d.e, (-(arg_0.c.c.d.b / arg_0.c.c.e.b) + select(vec4<i32>(-50203i, 17681i, var_0.x, u_input.e), func_1(arg_0.c.c).d.b, 1i > 2147483647i)) & (-vec4<i32>(arg_0.c.d.b, arg_0.a, 2147483647i, 0i) / arg_0.c.c.d.b), 231f, select(select(select(!arg_0.c.d.a.d, arg_0.c.d.e.d, !arg_0.b), vec3<bool>(arg_0.b && arg_0.c.a.x, any(vec2<bool>(false, arg_0.b)), global0.x < -1512f), vec3<bool>(arg_0.c.a.x, -36644i != u_input.d, !arg_0.b)), vec3<bool>(!arg_0.c.a.x, !(-18480i != u_input.d), arg_0.c.a.x), func_1(arg_0.c.c).a.e.x), arg_0.c.c.d.a);
    return select(!select(!vec4<bool>(false, true, false, arg_0.b), !vec4<bool>(false, false, arg_0.c.d.d.a.x, false), vec4<bool>(true, arg_0.b, false, false)), !(!vec4<bool>(arg_0.b & false, any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)), any(vec2<bool>(var_2.e.x, arg_0.c.c.d.d.x)), all(var_2.d))), var_2.e.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    var var_0 = (1i + (arg_0.a.b.x & ~(-arg_1.b))) << 60699u;
    let var_1 = func_4(Struct_4(8330i, min(i32(-2147483648), arg_1.a.b.x) != ~firstTrailingBit(u_input.e), Struct_3(vec3<bool>(arg_1.d.d.x | false, !arg_1.d.a.x, arg_0.d.d.x), select(i32(-2147483648), -8653i, arg_1.d.e.x) * u_input.e, Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -1i, -53561i, 15951i), arg_1.a.c, arg_1.e.d, arg_1.a.d.yz), dot(vec2<i32>(arg_1.a.b.x, u_input.d), arg_1.d.b.xy), func_1(arg_0).c, arg_1.e, func_1(Struct_2(arg_0.d, 42742i, global1[24070u], Struct_1(arg_0.d.d.yz, arg_0.e.b, 173f, arg_1.d.d, arg_1.d.e), arg_1.a)).d), Struct_2(func_1(Struct_2(arg_1.d, u_input.d, arg_0.c, Struct_1(arg_0.d.e, arg_1.e.b, -448f, arg_0.a.d, vec2<bool>(true, arg_0.e.a.x)), arg_1.a)).e, 2147483647i, dot(u_input.c, u_input.a), Struct_1(vec2<bool>(arg_0.a.a.x, arg_0.e.d.x), vec4<i32>(u_input.d, arg_0.b, 2147483647i, arg_0.b), global0.x, arg_0.a.d, vec2<bool>(arg_1.a.a.x, arg_1.a.d.x)), Struct_1(arg_0.a.e, vec4<i32>(-30699i, -23165i, arg_1.e.b.x, 2147483647i), -391f, vec3<bool>(arg_0.d.a.x, true, arg_1.e.e.x), vec2<bool>(arg_1.e.a.x, false))), firstLeadingBit(vec4<u32>(global1[u_input.c.x], 1u, 18333u, global1[u_input.c.x])))), trunc(vec2<f32>(round(arg_1.d.c) - func_3(u_input.a, global0.xy, arg_1.d.b.x), round(arg_0.d.c))));
    let var_2 = vec4<i32>(u_input.e - -(-58137i), firstTrailingBit(arg_1.b), -(~(-949i)), u_input.e);
    var var_3 = ~(~abs(arg_0.e.b.zy));
    var var_4 = 0i;
    return clamp(vec3<i32>(var_3.x, -(~(-6752i)) ^ -(~var_2.x), u_input.e << ~(51801u & arg_0.c)), -(-(-var_2.xww)), vec3<i32>(-11236i, var_3.x, ~(-(~(-8771i)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = func_1(func_1(Struct_2(func_1(Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -38560i, arg_0.x, arg_0.x), -222f, vec3<bool>(var_0, var_0, var_0), vec2<bool>(var_0, var_0)), arg_0.x, global1[0u], Struct_1(vec2<bool>(var_0, var_0), vec4<i32>(arg_0.x, 2147483647i, 10433i, -8909i), arg_2.x, vec3<bool>(false, var_0, true), vec2<bool>(var_0, var_0)), Struct_1(vec2<bool>(var_0, var_0), vec4<i32>(arg_0.x, 34381i, arg_0.x, arg_0.x), -408f, vec3<bool>(var_0, true, false), vec2<bool>(var_0, var_0)))).d, arg_0.x, func_1(Struct_2(Struct_1(vec2<bool>(var_0, var_0), vec4<i32>(arg_0.x, u_input.d, -25228i, arg_0.x), -2314f, vec3<bool>(true, var_0, var_0), vec2<bool>(false, var_0)), u_input.e, global1[4294967295u], Struct_1(vec2<bool>(var_0, var_0), vec4<i32>(arg_0.x, u_input.d, u_input.e, u_input.d), global0.x, vec3<bool>(true, var_0, false), vec2<bool>(var_0, var_0)), Struct_1(vec2<bool>(true, var_0), vec4<i32>(u_input.e, arg_0.x, arg_0.x, u_input.e), arg_1, vec3<bool>(true, var_0, var_0), vec2<bool>(var_0, var_0)))).c + ~u_input.b, func_1(func_1(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-104062i, i32(-2147483648), u_input.d, arg_0.x), -1254f, vec3<bool>(var_0, false, var_0), vec2<bool>(false, var_0)), 1i, 10102u, Struct_1(vec2<bool>(true, var_0), vec4<i32>(arg_0.x, u_input.d, u_input.d, 0i), arg_2.x, vec3<bool>(false, true, var_0), vec2<bool>(true, var_0)), Struct_1(vec2<bool>(var_0, var_0), vec4<i32>(u_input.d, u_input.e, 0i, u_input.e), arg_2.x, vec3<bool>(var_0, var_0, var_0), vec2<bool>(true, true))))).e, Struct_1(vec2<bool>(false, false), max(vec4<i32>(arg_0.x, -2543i, 11954i, arg_0.x), vec4<i32>(37290i, u_input.e, 0i, 11487i)), -357f, !vec3<bool>(false, var_0, var_0), vec2<bool>(false, var_0))))).e;
    let var_2 = arg_2;
    var var_3 = Struct_5(var_1, ~(~u_input.a.x - u_input.c.x));
    var var_4 = 0i;
    return func_1(Struct_2(var_1, dot(vec3<i32>(409i, -803i, -(-44535i)), -var_3.a.b.yxx << firstLeadingBit(vec3<u32>(50739u, 33931u, u_input.c.x))), u_input.c.x, Struct_1(vec2<bool>(var_3.a.a.x, !true), vec4<i32>(-23336i & var_3.a.b.x, dot(vec3<i32>(-1i, -55306i, u_input.d), vec3<i32>(-881i, arg_0.x, i32(-2147483648))), -var_3.a.b.x, dot(vec3<i32>(i32(-2147483648), 32475i, 0i), var_1.b.xwz)), -1526f, vec3<bool>(var_1.a.x, any(vec2<bool>(var_0, true)), true), vec2<bool>(!var_0, !false)), var_1)).e;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = ~(~arg_0.b.yxw);
    global0 = -vec4<f32>(arg_0.c, -step(-503f, step(arg_0.c, -1958f)), func_1(Struct_2(func_5(vec3<i32>(767i, 0i, arg_2.x), global0.x, vec4<f32>(arg_3.x, -635f, arg_3.x, 472f)), ~u_input.e, ~0u, arg_0, arg_0)).a.c, arg_0.c);
    global1 = array<u32, 1>();
    global1 = array<u32, 1>();
    var_0 = vec3<i32>(i32(-2147483648) ^ (var_0.x * ~arg_2.x), var_0.x, arg_2.x);
    return Struct_1(!arg_0.e, arg_0.b, global0.x, arg_0.d, func_5(countOneBits(~arg_0.b.xyy * vec3<i32>(i32(-2147483648), 0i, u_input.d)), -1037f - -arg_3.x, vec4<f32>(ceil(arg_3.x), abs(-913f), -797f, -arg_3.x)).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_2(func_1(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.d, u_input.e, 9391i, u_input.e), 304f, vec3<bool>(true, true, false), vec2<bool>(true, true)), u_input.d, 1u, Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.d, u_input.e, u_input.e, u_input.d), 1062f, vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.e, -24093i, 26678i, 16490i), global0.x, vec3<bool>(true, false, false), vec2<bool>(true, false)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 2147483647i, -1i, -4115i), global0.x, vec3<bool>(false, true, true), vec2<bool>(true, true)), i32(-2147483648), 8173u, Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -1i, -11055i, 0i), global0.x, vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, -1i, u_input.e, 0i), 1692f, vec3<bool>(false, false, true), vec2<bool>(true, false))), 705f - global0.x) + vec3<i32>(u_input.e << u_input.a.x, 85410i, ~u_input.d), -194f, vec4<f32>(floor(exp2(global0.x)), round(floor(global0.x)), (407f + global0.x) * -global0.x, (-2191f / -470f) + (global0.x / -1049f))), vec2<u32>(u_input.c.x, 1u), global2[firstLeadingBit(~(~u_input.b) + ((67189u / u_input.b) % (u_input.a.x ^ 0u)))], -global0.wy);
    global0 = ceil((-(vec4<f32>(193f, -1593f, -266f, global0.x) + vec4<f32>(var_0.c, -828f, var_0.c, 372f)) + step(sign(vec4<f32>(var_0.c, global0.x, var_0.c, 380f)), round(vec4<f32>(175f, global0.x, -2317f, var_0.c)))) - (((vec4<f32>(var_0.c, 253f, var_0.c, -1435f) / vec4<f32>(514f, -1148f, var_0.c, var_0.c)) / -vec4<f32>(global0.x, var_0.c, global0.x, -1634f)) - vec4<f32>(-640f, -275f / global0.x, -var_0.c, exp2(global0.x))));
    let var_1 = 504f;
    var var_2 = u_input.b;
    var var_3 = floor(vec4<f32>(func_3(firstTrailingBit(~vec2<u32>(1u, 7981u)), vec2<f32>(var_0.c, var_1) * vec2<f32>(-366f, var_1), u_input.d), var_0.c, -484f * var_0.c, -var_1));
    let var_4 = (vec2<u32>(0u, 4294967295u) << (select(abs(vec2<u32>(4294967295u, global1[2335u])), vec2<u32>(global1[45196u], 4294967295u), !vec2<bool>(var_0.d.x, var_0.d.x)) % ((vec2<u32>(u_input.c.x, 57353u) ^ u_input.a) + (u_input.c >> u_input.a)))) - ~(~u_input.c);
    var var_5 = var_0.d.x;
    var_3 = trunc(vec4<f32>(3507f, var_0.c, var_1 + -1332f, -(var_3.x * var_0.c))) + -(vec4<f32>(-var_3.x, 499f, var_1, -(-283f)) / step(select(vec4<f32>(var_0.c, var_1, var_1, var_1), vec4<f32>(global0.x, global0.x, var_0.c, var_0.c), vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x)), vec4<f32>(964f, 1296f, 915f, var_3.x) * vec4<f32>(353f, var_3.x, 925f, -507f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, 4070i, dot(var_0.b.xxz, vec3<i32>(clamp(-15101i << global1[24538u], abs(u_input.d), ~0i), var_0.b.x, 1i)), var_1, var_0.c);
}

