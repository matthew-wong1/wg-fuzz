// {"0:0":[122,221,226,14,47,189,52,216,109,103,155,15,105,149,124,212,126,129,158,175,126,50,38,169,191,189,194,64,253,227,78,157,207,37,248,254,37,44,131,157,218,55,177,91,225,40,63,121,9,47,118,86,163,46,179,255,164,87,133,175,142,18,237,129]}
// Seed: 11334342183234531418

struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, 17265i, 34739i, 2147483647i, 2147483647i, 44895i, 13334i, 2238i, 0i, i32(-2147483648), -28533i, -11546i, 17405i, 1i, i32(-2147483648), 8496i, -1i, 1i);

var<private> global2: bool;

var<private> global3: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(1313f, 2628f), vec2<f32>(1027f, -542f), vec2<f32>(-1318f, -957f), vec2<f32>(502f, -1000f), vec2<f32>(-444f, 1108f), vec2<f32>(-888f, 1000f), vec2<f32>(1314f, 239f), vec2<f32>(-1619f, -1094f), vec2<f32>(133f, -331f), vec2<f32>(-376f, -1278f), vec2<f32>(-669f, 569f), vec2<f32>(678f, -279f), vec2<f32>(814f, 764f), vec2<f32>(-557f, -435f), vec2<f32>(1309f, 346f), vec2<f32>(165f, -1000f), vec2<f32>(1793f, -216f), vec2<f32>(-272f, -354f), vec2<f32>(-501f, -774f), vec2<f32>(-1853f, 1000f), vec2<f32>(636f, -429f));

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = !(!vec4<bool>(-1i > ~global1[u_input.b.x], true, true, dot(vec2<i32>(global1[4294967295u], i32(-2147483648)), vec2<i32>(global1[u_input.b.x], 12031i)) <= -global1[10296u]));
    var var_1 = select(max(-(-939f), -1828f), -784f / global0.x, ~(~0u) >= ~(~50823u));
    global1 = array<i32, 18>();
    var var_2 = !(!all(vec3<bool>(arg_0.x, true, all(vec3<bool>(false, arg_0.x, false)))));
    let var_3 = Struct_2(Struct_1(-(arg_1 - (vec3<f32>(-781f, 292f, 411f) + vec3<f32>(-1289f, global0.x, -2674f))), firstTrailingBit(~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << u_input.b)), ((vec4<i32>(2147483647i, global1[u_input.b.x], 629i, u_input.c.x) ^ vec4<i32>(global1[0u], -19708i, 26449i, u_input.c.x)) / clamp(vec4<i32>(u_input.d, -1i, global1[u_input.b.x], 17205i), u_input.c, u_input.c)) - vec4<i32>(~1i, dot(vec2<i32>(u_input.d, i32(-2147483648)), vec2<i32>(-22430i, i32(-2147483648))), reverseBits(0i), u_input.c.x), ~firstTrailingBit(vec2<i32>(u_input.d, 2147483647i) * u_input.c.yx)));
    return select(vec4<bool>(!arg_0.x, !((-13702i + u_input.d) == 0i), abs(~0i) == clamp(dot(var_3.a.c.zyw, u_input.c.wyx), dot(vec4<i32>(2147483647i, var_3.a.d.x, 2147483647i, u_input.d), vec4<i32>(var_3.a.d.x, u_input.d, 6895i, -4823i)), min(u_input.d, -53247i)), !(var_3.a.a.x <= sign(arg_1.x))), vec4<bool>(true, true & true, abs(-18025i) < clamp(global1[min(1u, u_input.b.x)], global1[var_3.a.b.x] % u_input.c.x, dot(var_3.a.d, vec2<i32>(-1i, global1[88968u]))), arg_0.x || true), vec4<bool>(true, -81886i > var_3.a.c.x, all(select(!arg_0.xz, !vec2<bool>(false, false), !true)), any(vec3<bool>(var_0.x, false, !true))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = vec3<f32>(arg_0 * ((-1004f / (global0.x / 1000f)) / 678f), -(-761f), exp2(arg_0));
    global3 = array<vec2<f32>, 21>();
    global1 = array<i32, 18>();
    var var_0 = func_3(!vec3<bool>(all(!vec3<bool>(false, false, false)), false, 1i >= ~0i), vec3<f32>(1221f - arg_0, arg_0 - arg_0, -586f));
    global3 = array<vec2<f32>, 21>();
    return Struct_3(~((u_input.a.x - dot(vec2<u32>(26912u, u_input.a.x), vec2<u32>(u_input.b.x, 61087u))) / (~14128u ^ firstTrailingBit(73792u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    var var_0 = arg_1.a;
    let var_1 = func_2(exp2(min(var_0.a.x, arg_1.a.a.x - exp2(382f))));
    var var_2 = func_2(-global0.x);
    var var_3 = ~abs(~72630u);
    var var_4 = arg_1.a.c.x / 2147483647i;
    return Struct_4(Struct_1(arg_1.a.a, abs(~u_input.b), ~(-u_input.c << ~vec4<u32>(var_0.b.x, 1u, 1u, 1u)), select(max(vec2<i32>(u_input.c.x, arg_1.a.d.x), vec2<i32>(global1[40304u], var_0.d.x)) | arg_1.a.d, ~vec2<i32>(global1[0u], 85261i) ^ u_input.c.ww, vec2<bool>(!false, true))), abs(firstTrailingBit(global1[var_1.a] / 11701i)), -abs(-(-global0.x)), arg_1);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global1 = array<i32, 18>();
    global3 = array<vec2<f32>, 21>();
    global1 = array<i32, 18>();
    global3 = array<vec2<f32>, 21>();
    var var_0 = Struct_4(Struct_1(arg_0.a.a, ~arg_0.a.b, -(~u_input.c), arg_0.a.c.zz), arg_0.d.a.c.x, 426f, Struct_2(arg_0.a));
    return var_0.d.a;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = func_5(func_4(func_2(global0.x), Struct_2(Struct_1(exp2(arg_0), reverseBits(u_input.b), u_input.c | u_input.c, vec2<i32>(-956i, u_input.c.x)))));
    var var_1 = func_4(func_2(656f), func_4(func_2(-(-(-1147f))), func_4(func_2(-var_0.a.x), func_4(func_2(var_0.a.x), func_4(Struct_3(var_0.b.x), Struct_2(Struct_1(var_0.a, vec3<u32>(var_0.b.x, u_input.a.x, 20246u), vec4<i32>(global1[var_0.b.x], 27837i, 0i, 16004i), var_0.c.yw))).d).d).d).d).d;
    let var_2 = global0.x;
    let var_3 = func_3(vec3<bool>(!all(vec2<bool>(false, true)), any(!vec2<bool>(false, false)), !false), arg_0).x;
    let var_4 = u_input.a;
    return 109823u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(max(~((19549u ^ 4294967295u) + abs(u_input.b.x)), dot(abs(vec4<u32>(7317u, 19620u, 35307u, u_input.a.x)) / (vec4<u32>(26457u, 10690u, u_input.a.x, 4294967295u) >> vec4<u32>(5464u, 1u, u_input.b.x, u_input.a.x)), vec4<u32>(62493u, ~46465u, 0u, func_1(vec3<f32>(global0.x, global0.x, global0.x))))), 4401u, ~u_input.b.x, dot(~vec4<u32>(u_input.a.x, abs(4294967295u), abs(9017u), u_input.b.x | 0u), firstLeadingBit(abs(select(vec4<u32>(u_input.b.x, 109379u, 9736u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x), true)))));
    let var_1 = max(-u_input.d, ~global1[func_5(Struct_4(func_4(Struct_3(0u), Struct_2(Struct_1(vec3<f32>(1160f, global0.x, global0.x), vec3<u32>(15706u, var_0.x, 0u), u_input.c, u_input.c.xy))).a, 2147483647i, round(global0.x), func_4(Struct_3(0u), Struct_2(Struct_1(vec3<f32>(-1491f, 1081f, global0.x), vec3<u32>(var_0.x, var_0.x, var_0.x), vec4<i32>(-1i, 36738i, 16877i, global1[38989u]), vec2<i32>(global1[0u], global1[var_0.x])))).d)).b.x]);
    var var_2 = func_4(Struct_3(1u), Struct_2(Struct_1(vec3<f32>(global0.x, global0.x, global0.x) / vec3<f32>(1000f, global0.x, -1000f), vec3<u32>(44147u, var_0.x, u_input.b.x), vec4<i32>(15157i, var_1, -28i, 0i) - u_input.c, vec2<i32>(110i, 27866i)))).a.d / (~u_input.c.zx | (vec2<i32>(i32(-2147483648) % 51804i, u_input.d) ^ u_input.c.xx));
    global3 = array<vec2<f32>, 21>();
    var var_3 = ~(vec4<u32>(10853u, u_input.b.x, ~u_input.a.x + ~var_0.x, 14119u) | vec4<u32>(u_input.b.x, select(u_input.a.x, 23569u, true) / 32215u, ~4294967295u, ~(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, abs(vec2<i32>(global1[u_input.a.x], dot(vec4<i32>(0i, -52116i, u_input.d, global1[var_0.x]), -vec4<i32>(u_input.d, 1i, 22162i, 0i)))));
}

