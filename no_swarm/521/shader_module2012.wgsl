// {"0:0":[180,182,238,252,186,238,86,47,98,105,154,250,244,63,97,172,148,191,18,97,209,35,69,65,149,18,32,158,179,46,40,219,172,177,69,37,137,113,36,23,107,154,252,96,248,225,72,196,111,60,115,55,85,42,114,11,68,154,92,136,255,54,191,49]}
// Seed: 16926657715879647924

struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0i, vec3<u32>(62488u, 4294967295u, 1u), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 53913u, true), Struct_2(647f, vec3<i32>(0i, 1i, -30488i), -1122f));

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = vec4<bool>(true, all(vec2<bool>(any(vec4<bool>(true, var_0.c.c, false, var_0.c.c)) & arg_0.c.c, any(!vec2<bool>(false, true)))), false, arg_0.c.c);
    var var_2 = vec2<i32>(abs(1i >> ~(~global0.c.b)), -19030i);
    let var_3 = (((select(var_0.d.b.x, u_input.e.x, false) >> ~global0.b.x) >> ~13716u) << arg_0.c.b) >> countOneBits(u_input.c);
    let var_4 = global0.b.xx;
    return u_input.a.wyy;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_1(vec3<u32>(~(arg_0 << 0u), arg_0, ~(global0.b.x ^ arg_0)) - ~(~(~global0.c.a)), dot(~((vec3<u32>(arg_0, 47993u, global0.c.b) & global0.c.a) + vec3<u32>(global0.b.x, u_input.b.x, arg_0)), func_3(Struct_3(i32(-2147483648), ~u_input.d.yxy, Struct_1(vec3<u32>(4294967295u, 12985u, arg_0), u_input.c, false), arg_2))), all(select(vec3<bool>(true, all(vec3<bool>(true, true, global0.c.c)), !true), select(vec3<bool>(true, true, global0.c.c), !vec3<bool>(true, global0.c.c, global0.c.c), vec3<bool>(global0.c.c, false, global0.c.c)), vec3<bool>(!global0.c.c, false, global0.c.c))));
    var var_1 = vec3<f32>(arg_2.c, -(-2487f), -836f) * -(-round(vec3<f32>(arg_1.a, -1000f, arg_2.a)) + -vec3<f32>(-1000f, 1149f, arg_2.a));
    let var_2 = global0.d;
    return vec3<u32>(~var_0.b / (~abs(u_input.c) / u_input.b.x), firstTrailingBit(arg_0 % ((arg_0 - 1u) << 17023u)), var_0.b);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_3(-(-459i), vec3<u32>(~1u, global0.b.x % 35662u, ~73244u), global0.c, Struct_2(-step(-(-1000f), global0.d.a), firstTrailingBit(vec3<i32>(-12296i, -(-13981i), -global0.d.b.x)), global0.d.c));
    let var_0 = global0.c.c & !(!((global0.c.c == true) || global0.c.c));
    let var_1 = abs(-(-473f)) - -628f;
    global0 = Struct_3(0i, vec3<u32>(~u_input.a.x, reverseBits(~(4375u - 4294967295u)), 53873u), Struct_1(~(~func_2(u_input.a.x, global0.d, global0.d, vec4<i32>(u_input.e.x, i32(-2147483648), 1i, 0i))), global0.c.a.x, any(select(!vec2<bool>(global0.c.c, global0.c.c), vec2<bool>(var_0, var_0), !false))), Struct_2(-global0.d.c, countOneBits(~(vec3<i32>(arg_0.x, global0.a, 2147483647i) ^ vec3<i32>(u_input.e.x, global0.d.b.x, 2147483647i))), global0.d.a));
    global0 = Struct_3(-1i >> 60952u, ~(~global0.b), global0.c, Struct_2(global0.d.c, -select(~arg_0.yxx, vec3<i32>(arg_0.x, u_input.e.x, 1i), global0.c.c | global0.c.c), var_1));
    return Struct_1(abs(global0.c.a), abs(u_input.b.x), global0.c.c);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = global0.d;
    var var_1 = (countOneBits(func_2(dot(vec3<u32>(u_input.b.x, global0.c.b, 13873u), arg_0.a), global0.d, global0.d, -vec4<i32>(i32(-2147483648), -51226i, var_0.b.x, 2147483647i)).x) % ~global0.b.x) & ~u_input.b.x;
    let var_2 = firstLeadingBit(~(-select(~vec4<i32>(-5568i, -1361i, i32(-2147483648), -13814i), vec4<i32>(-30155i, 55986i, i32(-2147483648), u_input.e.x), select(vec4<bool>(arg_0.c, arg_0.c, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, global0.c.c, global0.c.c, global0.c.c)))));
    var var_3 = !select(vec3<bool>(any(vec4<bool>(false, arg_0.c, false, false)), func_1(vec4<i32>(1i, i32(-2147483648), 33159i, u_input.e.x)).c, !global0.c.c), !(!select(vec3<bool>(global0.c.c, global0.c.c, true), vec3<bool>(global0.c.c, arg_0.c, false), vec3<bool>(false, false, true))), false);
    let var_4 = Struct_3((u_input.e.x << ~4294967295u) ^ var_0.b.x, vec3<u32>(dot(reverseBits(global0.c.a), global0.c.a) + dot(vec4<u32>(5356u, 0u, 4294967295u, arg_0.b), vec4<u32>(global0.b.x, 4294967295u, 4000u, u_input.c)), 4294967295u, arg_0.a.x), arg_0, global0.d);
    return Struct_3(countOneBits(-clamp(-global0.a, -1i << arg_0.a.x, var_4.d.b.x ^ -21205i)), vec3<u32>(u_input.c, ~1u, ((52857u - 1u) << func_1(vec4<i32>(global0.a, global0.a, -1i, var_4.d.b.x)).b) / 0u), func_1(vec4<i32>(clamp(50792i, var_2.x ^ var_0.b.x, max(11428i, var_2.x)), 4230i ^ var_0.b.x, ~(-5619i), 55417i)), Struct_2(1096f, countOneBits(abs(-global0.d.b)), abs(428f) * min(396f, var_4.d.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-vec4<i32>(dot(vec4<i32>(5278i, u_input.e.x, global0.d.b.x, -14295i), vec4<i32>(1i, 2009i, u_input.e.x, u_input.e.x)), u_input.e.x, global0.d.b.x, u_input.e.x)));
    var var_1 = global0.a / 13616i;
    var var_2 = (-floor(round(vec3<f32>(-1172f, 1000f, global0.d.a))) / vec3<f32>(global0.d.c + (2502f - var_0.d.c), 1000f, var_0.d.c)) / select(((vec3<f32>(524f, 1000f, var_0.d.c) * vec3<f32>(global0.d.c, -1574f, var_0.d.a)) * (vec3<f32>(309f, var_0.d.c, -1171f) * vec3<f32>(var_0.d.c, -1000f, -848f))) / (step(vec3<f32>(-312f, 1539f, global0.d.a), vec3<f32>(global0.d.c, -399f, var_0.d.a)) / -vec3<f32>(global0.d.a, var_0.d.a, 640f)), -abs(vec3<f32>(405f, -172f, -336f) * vec3<f32>(var_0.d.a, 340f, -1000f)), global0.c.c);
    let var_3 = Struct_2(-2270f, -vec3<i32>(global0.d.b.x, -70167i * ~14697i, -1i), 1581f);
    var var_4 = ~(~min(vec4<i32>(i32(-2147483648), var_0.d.b.x, 2147483647i, 0i) >> u_input.d, select(-vec4<i32>(0i, 38271i, var_3.b.x, -2422i), reverseBits(vec4<i32>(var_3.b.x, -21348i, var_3.b.x, var_3.b.x)), select(vec4<bool>(false, var_0.c.c, false, false), vec4<bool>(var_0.c.c, false, var_0.c.c, true), global0.c.c))));
    var_4 = vec4<i32>(max(-2410i, 0i), countOneBits(-25535i), -18040i, global0.d.b.x);
    var_2 = -(vec3<f32>(sign(-1916f), abs(var_3.c), -(987f - var_2.x)) + (vec3<f32>(ceil(global0.d.c), var_0.d.a, -(-574f)) / (-vec3<f32>(909f, var_3.c, -983f) - abs(vec3<f32>(670f, global0.d.c, 538f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1000f * -global0.d.c, exp2(var_0.d.c), var_0.d.c, (var_0.d.a + 1832f) - (var_2.x - -890f)) + -round(vec4<f32>(722f, var_2.x, -1738f, var_3.a) + vec4<f32>(1133f, var_3.a, 702f, -1355f)), vec4<u32>(~u_input.c, ~global0.c.a.x, dot(vec2<u32>(var_0.c.b, u_input.a.x), vec2<u32>(~u_input.a.x, global0.b.x)), u_input.a.x), u_input.a.x, ~(~(var_0.c.a.xy % ~vec2<u32>(1u, var_0.c.a.x))), step(vec3<f32>(-step(var_0.d.a, global0.d.a), 320f, -1164f), max(-vec3<f32>(var_0.d.a, var_0.d.a, -1000f), -select(vec3<f32>(-1490f, global0.d.a, var_2.x), vec3<f32>(var_2.x, -686f, var_0.d.a), vec3<bool>(global0.c.c, false, true)))));
}

