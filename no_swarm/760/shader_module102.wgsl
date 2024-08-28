// {"0:0":[54,90,48,54,40,190,149,137,84,243,85,185,73,233,33,209,248,232,121,252,131,87,194,93,17,225,227,213,104,81,30,162,233,199,201,209,231,101,189,110,5,189,73,188,60,253,5,36,207,124,252,109,28,245,229,206,49,88,103,148,89,58,35,10,123,139,130,198,255,86,94,97,64,101,86,84,233,35,191,100]}
// Seed: 10675212991490155580

struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: f32 = -1623f;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(886f, vec2<bool>(true, false), 48893u, vec4<i32>(37979i, 0i, i32(-2147483648), 0i))), Struct_2(Struct_1(-881f, vec2<bool>(true, true), 0u, vec4<i32>(1i, -1i, 1i, 1i))), Struct_2(Struct_1(-393f, vec2<bool>(true, true), 42205u, vec4<i32>(53510i, 2147483647i, i32(-2147483648), 0i))), Struct_2(Struct_1(-1000f, vec2<bool>(false, true), 4294967295u, vec4<i32>(-69192i, 2147483647i, 31785i, -29021i))), Struct_2(Struct_1(781f, vec2<bool>(false, false), 0u, vec4<i32>(1i, i32(-2147483648), 31679i, 0i))), Struct_2(Struct_1(1430f, vec2<bool>(true, false), 9579u, vec4<i32>(-24024i, -14457i, -1723i, 9171i))), Struct_2(Struct_1(999f, vec2<bool>(true, true), 13748u, vec4<i32>(i32(-2147483648), i32(-2147483648), -13618i, -31041i))), Struct_2(Struct_1(-428f, vec2<bool>(true, false), 4294967295u, vec4<i32>(1i, 2147483647i, -54754i, 1i))), Struct_2(Struct_1(-506f, vec2<bool>(false, true), 0u, vec4<i32>(-30894i, 47598i, 41523i, -25391i))), Struct_2(Struct_1(-1831f, vec2<bool>(true, true), 4294967295u, vec4<i32>(i32(-2147483648), -1i, -1i, 0i))), Struct_2(Struct_1(525f, vec2<bool>(false, false), 0u, vec4<i32>(1i, 1i, -1i, 0i))), Struct_2(Struct_1(-1141f, vec2<bool>(true, true), 23608u, vec4<i32>(i32(-2147483648), 44500i, 9749i, 36157i))), Struct_2(Struct_1(-1359f, vec2<bool>(false, true), 4294967295u, vec4<i32>(-1i, 14020i, -1690i, 13989i))), Struct_2(Struct_1(370f, vec2<bool>(false, true), 25305u, vec4<i32>(1543i, -30146i, i32(-2147483648), -10764i))), Struct_2(Struct_1(828f, vec2<bool>(false, false), 0u, vec4<i32>(11258i, 36657i, 39353i, 1i))), Struct_2(Struct_1(913f, vec2<bool>(false, false), 4294967295u, vec4<i32>(69088i, -20929i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(-1113f, vec2<bool>(false, true), 4294967295u, vec4<i32>(7385i, i32(-2147483648), -40908i, 1i))));

var<private> global3: array<Struct_3, 17>;

var<private> global4: Struct_1;

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_4(global4.b, global2[286u], select(clamp(12790u ^ u_input.b, 37830u, 0u / global4.c), 4294967295u, arg_0.x) << ~1u, select(((global4.c << 0u) | (u_input.d ^ 4294967295u)) * (global4.c >> ~u_input.b), global4.c, all(vec4<bool>(!false, select(arg_0.x, global4.b.x, global4.b.x), global4.d.x > -55650i, !arg_0.x))), !select(true, global4.a > -1000f, arg_0.x));
    let var_1 = abs(-(-global4.d.yyx) & (vec3<i32>(countOneBits(-1i), -u_input.e.x, reverseBits(global0[11952u])) ^ ~firstTrailingBit(u_input.a.ywy)));
    return !select(select(!var_0.b.a.b, select(!var_0.a, vec2<bool>(false, false), false && arg_0.x), !true), !(!vec2<bool>(arg_0.x, false)), !(!var_0.a));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_1(max(-ceil(floor(-367f)), min(min(arg_1.b.a.a, 103f) * (arg_0.b.a.a - -903f), 1550f)), vec2<bool>(select(all(select(vec4<bool>(true, false, arg_2.x, global4.b.x), vec4<bool>(true, false, false, true), true)), (1000f * arg_0.b.a.a) < (-1275f * global4.a), global4.b.x), arg_0.e && arg_1.a.x), ~(max(~global4.c, 38538u) & ~1u), ~reverseBits(vec4<i32>(-12713i, arg_3.b.a.d.x, i32(-2147483648), i32(-2147483648)) * vec4<i32>(arg_0.b.a.d.x, 40623i, -26552i, arg_1.b.a.d.x)) >> max(~vec4<u32>(global4.c, global4.c, u_input.b, arg_0.d), vec4<u32>(77733u / 27860u, 1u, arg_0.b.a.c, u_input.d)));
    global1 = 1192f;
    var var_1 = -75822i;
    var var_2 = select(select(!vec3<bool>(false, global4.b.x & global4.b.x, false), vec3<bool>(var_0.b.x && !arg_0.a.x, any(select(arg_2.yz, vec2<bool>(true, arg_1.a.x), arg_3.e)), 673u != abs(1u)), var_0.b.x), arg_2, select(countOneBits(i32(-2147483648)), -23666i, false) >= -(0i));
    var_0 = Struct_1(-global4.a, select(vec2<bool>(false, arg_3.b.a.b.x), global4.b, vec2<bool>(arg_0.e, arg_0.e)), ~(~arg_0.c), abs(firstLeadingBit(var_0.d)) + select(max(vec4<i32>(var_0.d.x, arg_1.b.a.d.x, -8785i, u_input.e.x), var_0.d) * vec4<i32>(24012i, 11486i, var_0.d.x, 2147483647i), -abs(vec4<i32>(var_0.d.x, var_0.d.x, arg_3.b.a.d.x, arg_0.b.a.d.x)), !select(vec4<bool>(arg_0.a.x, arg_3.a.x, false, false), vec4<bool>(global4.b.x, var_0.b.x, arg_2.x, true), true)));
    return 2147483647i;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = vec3<i32>(clamp(max(2147483647i, global0[1u] | (global0[u_input.b] / arg_0)), func_4(Struct_4(func_3(vec4<bool>(true, false, global4.b.x, false), vec3<f32>(430f, -596f, 1451f)), Struct_2(Struct_1(304f, global4.b, 0u, global4.d)), 4294967295u + u_input.b, u_input.b * u_input.d, !false), Struct_4(global4.b, Struct_2(Struct_1(global4.a, vec2<bool>(true, true), u_input.b, vec4<i32>(-41935i, u_input.a.x, u_input.e.x, global4.d.x))), select(20491u, 0u, global4.b.x), 25447u, !false), !(!vec3<bool>(global4.b.x, false, false)), Struct_4(!global4.b, global2[6108u >> 15573u], u_input.d, ~u_input.d, select(global4.b.x, true, true))), 0i % -15148i), global0[dot(~vec3<u32>(1u, global4.c, global4.c), ~vec3<u32>(1u, global4.c, u_input.b) / min(vec3<u32>(6558u, 1u, u_input.b), vec3<u32>(93629u, 1u, u_input.d)))] + ~arg_0, arg_0);
    global3 = array<Struct_3, 17>();
    global3 = array<Struct_3, 17>();
    global1 = global4.a;
    global2 = array<Struct_2, 17>();
    return false;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    global3 = array<Struct_3, 17>();
    let var_0 = vec2<u32>(~((~global4.c ^ (4294967295u ^ u_input.d)) | ~11509u), reverseBits(~abs(global4.c % 1u)));
    global1 = step(671f, -(-step(-699f, 2214f + -339f)));
    var var_1 = u_input.e.x;
    let var_2 = !select(vec2<bool>(global4.b.x, func_2(global4.d.x)), vec2<bool>(global4.b.x | !true, global4.b.x || (227f == arg_2)), vec2<bool>(false, (257f <= -869f) & false));
    return global2[0u];
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = u_input.a.x;
    global1 = -(abs((-2697f - -2700f) / global4.a) - 330f);
    global3 = array<Struct_3, 17>();
    global3 = array<Struct_3, 17>();
    let var_1 = Struct_4(arg_2.yx, Struct_2(func_1(arg_0.b.a.a, countOneBits(vec4<u32>(83458u, arg_0.d, 0u, arg_0.d)), 268f).a), ~abs((1u - 1u) % ~arg_0.b.a.c), ((u_input.b + u_input.d) & global4.c) * (u_input.b >> ~clamp(u_input.d, 0u, arg_0.b.a.c)), arg_0.a.x);
    return -(select(~abs(var_1.b.a.d.yww), countOneBits(vec3<i32>(38025i, 7998i, -12799i)), global4.b.x) / (var_1.b.a.d.wyx / select(vec3<i32>(global0[4294967295u], global4.d.x, global4.d.x), u_input.c.wyw, arg_0.e)));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    var var_0 = 1i ^ 0i;
    var var_1 = arg_2;
    let var_2 = global3[global4.c];
    var var_3 = global3[global4.c];
    let var_4 = func_1(1347f, arg_0, min(-1790f, -((-1460f - var_2.a.a) / 379f))).a.d.x;
    return func_1(-(315f - -floor(-1820f)), vec4<u32>(global4.c | global4.c, ~(~min(arg_0.x, var_2.a.c)), ~arg_0.x, 38311u), abs(var_3.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[~(~((~76671u & 0u) + 42784u))];
    var var_1 = vec2<f32>(global4.a, -(-(-678f + sign(var_0.a.a))));
    var var_2 = 1i;
    global2 = array<Struct_2, 17>();
    var var_3 = Struct_4(var_0.a.b, func_6(vec4<u32>(0u >> 33397u, ~4294967295u, global4.c, global4.c) / (reverseBits(vec4<u32>(global4.c, 4294967295u, u_input.b, 0u)) ^ (vec4<u32>(0u, 4294967295u, var_0.b.x, 0u) ^ vec4<u32>(var_0.a.c, u_input.d, u_input.b, u_input.d))), func_5(Struct_4(var_0.a.b, func_1(var_1.x, vec4<u32>(47209u, 0u, 1u, 10122u), 575f), ~u_input.d, ~u_input.d, var_0.a.c >= 4294967295u), vec3<i32>(1i, 8569i, global4.d.x), select(vec3<bool>(global4.b.x, var_0.a.b.x, true), !vec3<bool>(var_0.a.b.x, global4.b.x, global4.b.x), select(false, var_0.a.b.x, global4.b.x))), -(740f / -206f) >= (abs(var_0.a.a) + (305f + var_0.a.a))), dot(max(var_0.b | var_0.b, var_0.b), var_0.b) >> global4.c, ~(~dot(vec3<u32>(var_0.a.c, var_0.a.c, var_0.b.x), vec3<u32>(1u, global4.c, u_input.b))) ^ (var_0.b.x >> clamp(dot(vec4<u32>(4294967295u, var_0.b.x, 0u, var_0.a.c), vec4<u32>(var_0.a.c, var_0.a.c, 17077u, 54120u)), u_input.b, global4.c)), false);
    var_3 = Struct_4(vec2<bool>(var_3.b.a.d.x > reverseBits(global0[52468u]), global4.b.x), var_3.b, ~global4.c, ~(~(0u * u_input.d)) | global4.c, var_0.a.b.x);
    var var_4 = func_1(var_3.b.a.a, max(~(~(~vec4<u32>(var_3.d, 99610u, u_input.d, 0u))), vec4<u32>(abs(global4.c + 0u), 9383u, 18767u, countOneBits(1u))), 1094f).a;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(var_3.b.a.d.x), trunc(vec4<f32>(402f / global4.a, min(465f, 1602f), -var_4.a, var_3.b.a.a) * vec4<f32>(var_0.a.a, var_4.a, 1525f * var_4.a, func_1(var_1.x, vec4<u32>(var_3.b.a.c, var_4.c, 23428u, u_input.b), 114f).a.a)), vec4<u32>(func_6(vec4<u32>(global4.c, var_4.c, 5717u, 4294967295u) >> vec4<u32>(u_input.b, 4294967295u, var_3.d, var_3.c), vec3<i32>(var_0.a.d.x, 1i, var_3.b.a.d.x) & vec3<i32>(-56066i, -50006i, u_input.c.x), !var_0.a.b.x).a.c % firstTrailingBit(max(0u, u_input.d)), var_4.c, ~(~var_4.c), dot(~abs(var_0.b.yy), var_0.b.zz)));
}

