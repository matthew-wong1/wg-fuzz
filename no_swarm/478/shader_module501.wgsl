// {"0:0":[25,223,88,88,128,175,76,127,253,10,100,38,35,71,54,178,70,240,238,10,33,81,17,158,47,150,138,99,93,55,51,72]}
// Seed: 5063367221200935597

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(false, vec3<f32>(-1380f, 2281f, -1000f), 1u), Struct_2(true, vec3<f32>(169f, 225f, -828f), 0u), Struct_2(true, vec3<f32>(-595f, 601f, 392f), 23811u), Struct_2(true, vec3<f32>(-312f, -321f, 639f), 4294967295u), Struct_2(false, vec3<f32>(602f, 1033f, -1064f), 9946u), Struct_2(false, vec3<f32>(-842f, 1240f, -519f), 122840u), Struct_2(true, vec3<f32>(-650f, 1583f, -2156f), 64657u), Struct_2(true, vec3<f32>(-1433f, 707f, 945f), 1u), Struct_2(false, vec3<f32>(616f, -793f, 415f), 50479u), Struct_2(true, vec3<f32>(-877f, 250f, 673f), 4294967295u), Struct_2(true, vec3<f32>(477f, 1826f, -2232f), 100590u), Struct_2(true, vec3<f32>(-1000f, -1000f, 872f), 7180u), Struct_2(true, vec3<f32>(-215f, 303f, -2215f), 19659u), Struct_2(true, vec3<f32>(-854f, 213f, 1052f), 0u), Struct_2(true, vec3<f32>(-613f, 375f, -964f), 17494u), Struct_2(false, vec3<f32>(-351f, 135f, -2195f), 1u), Struct_2(true, vec3<f32>(369f, -1447f, 638f), 37205u), Struct_2(true, vec3<f32>(-294f, -2083f, -1000f), 4294967295u));

var<private> global1: vec4<i32> = vec4<i32>(-30973i, -33119i, -54743i, i32(-2147483648));

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 4>;

fn func_1() -> bool {
    global1 = select(u_input.a & -u_input.a, abs(u_input.a % vec4<i32>(-22577i / global1.x, abs(u_input.a.x), 1i << 1u, global1.x)), vec4<bool>(!any(!vec3<bool>(true, global2.a, true)), !(global2.c <= global2.c), !false, global2.a));
    global1 = firstTrailingBit(-(-(-min(u_input.a, u_input.a))));
    let var_0 = all(vec2<bool>(true, !global2.a)) || all(vec4<bool>((global2.c ^ 29365u) != (77770u & global2.c), false, false, !true));
    var var_1 = -u_input.a.x;
    var_1 = -32239i;
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> bool {
    global0 = array<Struct_2, 18>();
    let var_0 = vec4<u32>(63670u, dot(~(vec4<u32>(global2.c, global2.c, global2.c, 1u) + vec4<u32>(arg_0.c, 23482u, 4294967295u, 33927u)), ~vec4<u32>(0u, 2033u, 11119u, 0u)), ~(~(arg_0.c * 0u)), dot(~vec2<u32>(arg_0.c, 1u), abs(vec2<u32>(global2.c, 50808u))) << (~global2.c << global2.c)) - (~(reverseBits(vec4<u32>(global2.c, 1u, 1u, 11581u)) | ~vec4<u32>(global2.c, arg_0.c, 17277u, 5688u)) >> ~(max(vec4<u32>(arg_0.c, 1u, 0u, 0u), vec4<u32>(19614u, arg_0.c, global2.c, 78130u)) / select(vec4<u32>(1u, global2.c, global2.c, arg_0.c), vec4<u32>(global2.c, 4294967295u, 1u, global2.c), vec4<bool>(false, true, false, false))));
    let var_1 = select(!vec3<bool>(!true, ~0u > (4294967295u + 1u), !arg_0.a && any(vec3<bool>(arg_0.a, true, true))), select(vec3<bool>(dot(u_input.a, vec4<i32>(global1.x, 1i, global1.x, i32(-2147483648))) >= abs(-21987i), !true, !global2.a), vec3<bool>(arg_0.a, (1936u | arg_0.c) != (arg_0.c / 51923u), false), arg_0.a), false | true);
    let var_2 = Struct_3(var_0.zx);
    global0 = array<Struct_2, 18>();
    return !(!arg_0.a) || false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1.x - arg_1.x);
    global1 = u_input.a;
    var var_1 = func_3(global0[reverseBits(~(~(~global2.c)))], vec4<i32>(u_input.a.x, 0i, dot(vec2<i32>(var_0.a, -66998i & global1.x), abs(-u_input.b.zx)), ~(-(-(-33422i)))), -arg_2);
    global0 = array<Struct_2, 18>();
    var_1 = false;
    return Struct_1(dot(~firstTrailingBit(vec4<i32>(0i, 16i, 7746i, global1.x) - vec4<i32>(21571i, -1i, arg_1.x, global1.x)), -(-(~u_input.a))));
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    let var_0 = 4294967295u * 19176u;
    var var_1 = dot(firstLeadingBit(vec2<u32>(1u + global2.c, dot(vec2<u32>(4294967295u, var_0) - vec2<u32>(var_0, var_0), reverseBits(vec2<u32>(global2.c, global2.c))))), ~clamp(vec2<u32>(clamp(0u, var_0, global2.c), 0u ^ global2.c), vec2<u32>(dot(vec4<u32>(var_0, global2.c, var_0, 1u), vec4<u32>(45944u, 1581u, 1u, global2.c)), var_0), max(vec2<u32>(var_0, 46890u), vec2<u32>(0u, 0u))));
    var var_2 = max(u_input.a, -u_input.a / u_input.a);
    let var_3 = ~firstTrailingBit(59059u) - (4294967295u | ~abs(min(global2.c, 1u)));
    global3 = array<vec2<bool>, 4>();
    return Struct_5(~(var_2.zz >> ~vec2<u32>(23772u, var_0)), select(~func_2(~vec3<u32>(1u, global2.c, 33553u), u_input.a - u_input.a, -global2.b).a, arg_0.a, !global2.a));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = vec4<bool>(!arg_2, false, false, func_3(global0[~0u], clamp(vec4<i32>(arg_1.a.x, global1.x % 31559i, ~0i, 2147483647i), vec4<i32>(arg_0, arg_1.a.x, arg_1.b, 1593i - -19942i), u_input.a), -(-global2.b + vec3<f32>(arg_3.x, 690f, 569f))));
    var var_1 = arg_3.x;
    let var_2 = ((((vec2<u32>(global2.c, global2.c) * vec2<u32>(25874u, global2.c)) >> vec2<u32>(global2.c, 45726u)) * ((vec2<u32>(2398u, 0u) ^ vec2<u32>(76u, global2.c)) - select(vec2<u32>(7611u, global2.c), vec2<u32>(0u, global2.c), false))) / vec2<u32>(global2.c << reverseBits(25454u), ~0u)) - clamp(vec2<u32>(reverseBits(abs(global2.c)), global2.c), ~(~vec2<u32>(4294967295u, global2.c)), reverseBits(firstLeadingBit(vec2<u32>(0u, 4294967295u)) & ~vec2<u32>(1u, global2.c)));
    let var_3 = func_3(global0[~(var_2.x + 0u)], firstTrailingBit(u_input.a) ^ (vec4<i32>(-5529i | -1i, u_input.b.x, ~19611i, -28973i) + ((vec4<i32>(2147483647i, global1.x, arg_0, arg_1.a.x) << vec4<u32>(var_2.x, 1u, var_2.x, var_2.x)) % (vec4<i32>(arg_0, -11829i, arg_0, -1i) >> vec4<u32>(36177u, 17998u, 0u, 0u)))), global2.b * global2.b);
    var var_4 = Struct_3(reverseBits(var_2));
    return Struct_4(Struct_3(vec2<u32>(abs(67079u), ~92097u)), abs(~u_input.a.yxw), var_0.x, select(sign(-637f), arg_3.x + global2.b.x, false), global0[0u & 4466u]);
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> Struct_3 {
    let var_0 = u_input.b.x;
    global2 = global0[~15333u & ~(~clamp(arg_2.a.a.x, min(arg_2.e.c, global2.c), ~global2.c))];
    let var_1 = vec3<f32>(1000f, arg_2.d, arg_2.e.b.x);
    let var_2 = 188f;
    var var_3 = global2.b;
    return arg_2.a;
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = select(~(global2.c & (43575u | dot(vec3<u32>(global2.c, arg_3.x, 158220u), vec3<u32>(89309u, global2.c, 2962u)))), ~(~(min(arg_2, global2.c) + ~global2.c)), !global2.a);
    global3 = array<vec2<bool>, 4>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    return func_2(abs(vec3<u32>((global2.c * global2.c) * (arg_2 & global2.c), ~dot(vec3<u32>(arg_2, 1u, 1u), vec3<u32>(1u, 1u, arg_3.x)), arg_3.x - ~global2.c)), vec4<i32>(-(-52820i), -30302i, abs(abs(u_input.a.x)) & 0i, select(-1i, global1.x, global2.a && true)), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 4>();
    global2 = global0[reverseBits(dot(abs(~vec2<u32>(global2.c, global2.c) * vec2<u32>(global2.c, global2.c)), vec2<u32>(~0u, ~(0u * global2.c))))];
    global3 = array<vec2<bool>, 4>();
    var var_0 = (any(vec3<bool>(!global2.a, 13895u <= 0u, any(vec3<bool>(true, global2.a, global2.a)))) | !(-global2.b.x >= -1773f)) & func_1();
    var var_1 = func_7(func_6(global2.b.x, -322f, func_5(-41334i, func_4(func_2(vec3<u32>(39036u, global2.c, 28011u), u_input.a, vec3<f32>(161f, global2.b.x, -1064f))), global2.a, -(global2.b.xz / global2.b.xy)), !(-778f >= -(-805f))), -457f, dot(select(vec3<u32>(12702u, global2.c, global2.c) % vec3<u32>(28996u, 4294967295u, 1u), ~vec3<u32>(108935u, global2.c, global2.c), global2.a), firstLeadingBit(~vec3<u32>(global2.c, 1u, 1u))) >> ~0u, vec2<u32>(countOneBits(global2.c), ~(global2.c | global2.c)) << ~vec2<u32>(7024u - 28717u, 65282u));
    var var_2 = global1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

