// {"0:0":[23,119,170,196,165,77,85,166,162,88,117,112,142,222,38,149,34,41,184,165,119,7,17,57,55,210,167,244,247,138,64,20]}
// Seed: 8995142130646298615

struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, false, false), vec3<i32>(9262i, 48582i, 33798i), vec2<i32>(0i, i32(-2147483648)), -912f, 1000f), Struct_1(vec3<bool>(false, true, true), vec3<i32>(-61519i, 56157i, i32(-2147483648)), vec2<i32>(-5814i, 24262i), 327f, -1178f));

var<private> global2: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1000f, -1631f), vec2<f32>(1422f, 1131f), vec2<f32>(1241f, 1924f), vec2<f32>(1000f, 1000f), vec2<f32>(-967f, 1096f), vec2<f32>(176f, 364f), vec2<f32>(1065f, -773f), vec2<f32>(-1084f, -151f), vec2<f32>(-335f, 616f), vec2<f32>(-882f, 1735f), vec2<f32>(283f, -245f), vec2<f32>(1535f, 1475f), vec2<f32>(-1000f, -579f), vec2<f32>(-1820f, -651f), vec2<f32>(-1000f, 1037f), vec2<f32>(442f, -1130f), vec2<f32>(1211f, -525f), vec2<f32>(-164f, 1184f), vec2<f32>(951f, -308f), vec2<f32>(-618f, 2212f), vec2<f32>(882f, 1182f), vec2<f32>(1498f, 381f), vec2<f32>(925f, -967f), vec2<f32>(-128f, 1825f), vec2<f32>(-530f, 330f));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<i32>(1i, 2147483647i, -56731i), vec2<i32>(i32(-2147483648), 1i), 1211f, 372f));

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: u32) -> vec3<i32> {
    global0 = array<bool, 2>();
    var var_0 = Struct_2(global3.a);
    let var_1 = arg_0;
    let var_2 = vec3<f32>(-arg_0.b.b.e, ceil(round((360f / global3.a.e) + var_1.b.a.e)), -(-(max(713f, -2770f) * (arg_0.b.b.e - 868f))));
    var_0 = Struct_2(var_1.b.a);
    return countOneBits(vec3<i32>(~firstTrailingBit(50177i), u_input.b, -1i)) >> ~arg_0.a.wxx;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(select(global3.a.a, global1.b.a, vec3<bool>(true, all(global1.a.a.zx), global3.a.a.x)), func_3(Struct_4(select(u_input.a, vec4<u32>(u_input.a.x, u_input.c, 58944u, 4294967295u), global1.b.a.x), Struct_3(Struct_1(global3.a.a, vec3<i32>(u_input.b, 20787i, 18291i), vec2<i32>(-18269i, i32(-2147483648)), 1116f, global1.b.e), global3.a), u_input.c), countOneBits(-36748i * global1.b.b.x), ~1u), global1.b.c, -(-round(780f)), -(-sign(global1.b.d))));
    let var_1 = 22772u;
    var var_2 = -(-19009i);
    var_2 = var_0.a.c.x;
    let var_3 = step(trunc(-select(vec4<f32>(var_0.a.d, global1.a.d, 2185f, global1.b.e), vec4<f32>(var_0.a.e, -566f, var_0.a.e, var_0.a.e), vec4<bool>(var_0.a.a.x, false, global3.a.a.x, global3.a.a.x))), -vec4<f32>(global1.a.e, 859f - -754f, global3.a.e, global3.a.d)) - (abs(vec4<f32>(global3.a.d + 883f, -(-1949f), step(global1.b.e, 347f), 194f)) + -(trunc(vec4<f32>(895f, global1.a.e, -1000f, -723f)) - vec4<f32>(-1835f, global1.b.e, var_0.a.d, global3.a.d)));
    return Struct_3(Struct_1(!global1.a.a, var_0.a.b, vec2<i32>(global1.a.b.x, i32(-2147483648)) ^ vec2<i32>(-1i, -1i & global3.a.b.x), -(-591f / (-233f + global1.b.d)), global1.a.e), Struct_1(global3.a.a, vec3<i32>(i32(-2147483648), dot(vec3<i32>(12604i, 2147483647i, 0i), func_3(Struct_4(vec4<u32>(0u, var_1, 1u, 52955u), Struct_3(var_0.a, Struct_1(vec3<bool>(false, true, global0[var_1]), vec3<i32>(var_0.a.b.x, var_0.a.c.x, var_0.a.b.x), global3.a.b.zy, var_0.a.d, -654f)), 19676u), 9762i, var_1)), ~reverseBits(var_0.a.c.x)), var_0.a.b.zy, step(-(var_3.x - -1080f), min(global3.a.d * 1000f, -(-1586f))), -abs(1167f)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_4(select(u_input.a << vec4<u32>(62876u, 41283u, 1u, 14945u), u_input.a, any(vec4<bool>(arg_0.a.a.x && arg_1.a.x, any(global3.a.a), false, global0[~134996u]))), arg_0, ~arg_2 % 4294967295u);
    var var_1 = func_2().a;
    var var_2 = all(vec4<bool>(all(!vec4<bool>(arg_0.a.a.x, arg_1.a.x, arg_0.b.a.x, arg_0.b.a.x)), 473f >= abs(round(-1000f)), global3.a.e > global1.a.e, arg_1.a.x));
    var_1 = arg_0.a;
    var var_3 = global3.a.c.x;
    return Struct_2(Struct_1(vec3<bool>((var_1.b.x & 0i) <= abs(var_1.c.x), any(vec2<bool>(false, global0[arg_2])), global1.b.a.x), countOneBits(-vec3<i32>(0i, var_0.b.b.b.x, -1406i)), (vec2<i32>(i32(-2147483648), arg_0.a.b.x) % (vec2<i32>(1i, u_input.b) >> vec2<u32>(arg_2, u_input.c))) & ((vec2<i32>(i32(-2147483648), 37044i) & vec2<i32>(global1.a.b.x, -42328i)) >> (u_input.a.yy / vec2<u32>(arg_2, 1u))), round(440f), var_0.b.b.e));
}

fn func_1(arg_0: i32) -> Struct_4 {
    global3 = func_4(func_2(), Struct_1(vec3<bool>((43796u == 11998u) | any(vec4<bool>(global0[4294967295u], global3.a.a.x, global3.a.a.x, true)), any(func_2().b.a.zz), !true), ~global3.a.b, ~vec2<i32>(10523i, u_input.b - 20212i), global1.b.d, -1625f), u_input.a.x);
    let var_0 = Struct_1(vec3<bool>(all(global1.a.a), 1000f < -global1.b.d, func_2().a.a.x), vec3<i32>(~global1.b.b.x, func_3(Struct_4(min(u_input.a, vec4<u32>(u_input.d, 1u, 1u, 0u)), func_2(), u_input.e), select(i32(-2147483648), global1.b.b.x - global3.a.b.x, all(vec3<bool>(true, true, true))), max(u_input.e, 32628u % u_input.a.x)).x, -4836i << (~u_input.c ^ 0u)), ~max(max(vec2<i32>(global3.a.c.x, 1i), vec2<i32>(1i, 1i)), vec2<i32>(~(-23137i), 27486i)), step(min(-global3.a.d, 2668f) + -1000f, abs(ceil(-1308f))), -(-func_4(Struct_3(Struct_1(global1.b.a, vec3<i32>(4564i, -55128i, u_input.b), global3.a.c, global1.a.e, global3.a.d), Struct_1(global1.a.a, global1.a.b, global3.a.b.zy, global3.a.d, 1000f)), Struct_1(global3.a.a, global3.a.b, vec2<i32>(14785i, global1.a.c.x), -500f, global1.b.d), u_input.d).a.e + -ceil(global3.a.d)));
    global3 = Struct_2(func_4(Struct_3(Struct_1(select(var_0.a, global1.b.a, var_0.a), global1.a.b << u_input.a.xyz, vec2<i32>(arg_0, global3.a.c.x), -435f, var_0.d * global1.b.e), Struct_1(vec3<bool>(false, true, var_0.a.x), func_4(Struct_3(global1.a, global3.a), Struct_1(vec3<bool>(true, var_0.a.x, true), global3.a.b, vec2<i32>(arg_0, -80444i), global1.a.d, -293f), u_input.e).a.b, var_0.c, global3.a.d + global1.a.d, -1399f)), Struct_1(vec3<bool>(false, !true, global0[u_input.a.x] || global1.a.a.x), global3.a.b, (vec2<i32>(2147483647i, global3.a.c.x) % vec2<i32>(arg_0, 2147483647i)) / global3.a.c, -232f, global1.a.d * floor(-176f)), 0u).a);
    let var_1 = Struct_4(~(~vec4<u32>(u_input.e, max(4294967295u, u_input.d), u_input.c, 50332u)), func_2(), 13310u);
    let var_2 = (-637f - (-round(785f) * -(-(-801f)))) >= var_1.b.b.e;
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    global3 = func_4(arg_0.b, Struct_1(!arg_0.b.b.a, func_1(u_input.b).b.a.b, clamp(~arg_0.b.a.b.yx, ~vec2<i32>(global3.a.c.x, -22387i) % vec2<i32>(46825i, arg_0.b.b.c.x), ~vec2<i32>(global1.a.c.x, -1i) << (u_input.a.xy ^ u_input.a.zw)), global3.a.e, trunc(176f)), 4294967295u);
    let var_0 = ~(arg_0.c - (u_input.d << (1402u & u_input.a.x))) << arg_0.a.x;
    var var_1 = abs(~(~min(~arg_0.a.x, countOneBits(77578u))));
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(vec4<bool>(true, false, any(!vec4<bool>(true, true, true, global3.a.a.x)), any(vec2<bool>(global0[u_input.c], global0[u_input.d])))), !any(global3.a.a));
    let var_1 = 86249u;
    global2 = array<vec2<f32>, 25>();
    var var_2 = Struct_4(vec4<u32>(89908u, (~0u - var_1) / (u_input.d & ~var_1), u_input.e, 75912u), Struct_3(func_5(func_1(~global3.a.b.x), any(!var_0)), global1.a), var_1 / select(firstTrailingBit(dot(vec2<u32>(var_1, u_input.e), vec2<u32>(u_input.c, var_1))), (var_1 >> var_1) - (u_input.e ^ u_input.a.x), func_4(Struct_3(global1.a, global3.a), Struct_1(vec3<bool>(false, var_0.x, global3.a.a.x), global1.a.b, vec2<i32>(2147483647i, global3.a.b.x), global3.a.e, 812f), 1u).a.a.x));
    var var_3 = vec4<u32>(dot(u_input.a.yy, vec2<u32>(var_1, u_input.c)) + (var_2.a.x << dot(var_2.a.xw, vec2<u32>(3883u, var_1))), 0u, 1u, u_input.c) - countOneBits(firstTrailingBit(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<f32>(global3.a.e, 680f), vec4<i32>(~countOneBits(-39514i), 0i / -65538i, dot(global1.a.c, (global1.a.b.yx + global3.a.c) + global3.a.b.xy), func_1(~(-global3.a.c.x)).b.b.c.x));
}

