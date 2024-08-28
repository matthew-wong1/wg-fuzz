// {"0:0":[146,203,206,20,83,19,75,59,41,249,212,58,230,217,207,19,218,178,95,37,194,194,41,130,210,15,70,99,75,51,163,139,146,187,107,254,147,164,199,248,156,6,47,149,126,213,66,28,44,66,98,224,0,54,11,211,147,53,219,159,252,209,245,41]}
// Seed: 10133884260157671284

struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<u32, 7> = array<u32, 7>(34877u, 0u, 1347u, 2289u, 2412u, 53270u, 0u);

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global4: Struct_3 = Struct_3(-32183i, vec3<f32>(-1884f, 858f, -365f), 7142i, vec4<u32>(0u, 20619u, 2674u, 32275u), Struct_2(vec2<bool>(false, false), vec4<f32>(684f, -1622f, -151f, -1000f), 62578u));

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<u32, 7>();
    let var_0 = true;
    let var_1 = 98058u << u_input.d;
    global1 = array<u32, 7>();
    global0 = array<vec2<bool>, 22>();
    return Struct_2(vec2<bool>(56074u < 0u, var_0), -max(vec4<f32>(global4.b.x, global4.b.x, global4.b.x, -global4.e.b.x), vec4<f32>(-global4.b.x, global4.e.b.x / global4.e.b.x, -1840f, global4.e.b.x)), 32673u);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = func_2(arg_1);
    let var_1 = global4.d ^ vec4<u32>(u_input.d << (4294967295u / abs(7528u)), max((8746u % 26002u) + 1868u, dot(~global4.d.yy, vec2<u32>(0u, 84761u))), ~(~(~var_0.c)), abs(func_2(arg_1).c) & u_input.e.x);
    let var_2 = -1000f;
    global1 = array<u32, 7>();
    let var_3 = ~vec2<u32>(0u ^ countOneBits(18511u | 4294967295u), abs(1u) + 29264u);
    return func_2(Struct_1(!any(global4.e.a)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = reverseBits(u_input.b.yy);
    let var_1 = func_1(true, global3[~(abs(4294967295u) * (80797u % func_2(Struct_1(true)).c))], Struct_3(abs(firstLeadingBit(-1i)), floor(arg_1.b.xzw), 19736i, ~firstLeadingBit(abs(arg_3.d)), Struct_2(arg_1.a, -vec4<f32>(arg_1.b.x, 191f, arg_3.b.x, -192f) / (arg_1.b + vec4<f32>(arg_3.e.b.x, arg_1.b.x, -308f, global4.b.x)), arg_3.e.c << global1[dot(global4.d, arg_3.d)])), arg_1.a);
    let var_2 = Struct_5(global3[(global1[global2.x] - 4294967295u) - (((global1[9186u] | arg_1.c) << select(arg_1.c, 49652u, true)) >> arg_1.c)]);
    var var_3 = true | false;
    var var_4 = vec2<f32>(-((-649f - 1464f) * min(-arg_3.e.b.x, 1000f)), -149f);
    return -arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(global4.e.a, select(!(!vec2<bool>(global4.e.a.x, global4.e.a.x)), vec2<bool>(all(global0[1u]), false), global4.e.a.x), vec2<bool>(!(!false), all(!vec3<bool>(global4.e.a.x, false, false)))), vec4<f32>(global4.e.b.x, 763f, func_3(dot(abs(u_input.b), ~u_input.b), func_1(select(true, false, true), Struct_1(true), Struct_3(0i, global4.b, u_input.b.x, global4.d, Struct_2(vec2<bool>(false, global4.e.a.x), vec4<f32>(139f, -1000f, 1000f, global4.e.b.x), global4.d.x)), select(global4.e.a, global4.e.a, global4.e.a)), global4.e.a.x | !false, Struct_3(-u_input.c, round(global4.e.b.xxz), global4.a * 33115i, vec4<u32>(global1[4868u], global2.x, 7476u, 4294967295u), global4.e)), global4.e.b.x), (1u & (35589u ^ func_1(false, global3[28609u], Struct_3(1i, vec3<f32>(818f, global4.b.x, global4.b.x), 38151i, vec4<u32>(8904u, global4.e.c, u_input.d, global4.d.x), global4.e), vec2<bool>(false, true)).c)) * 25106u);
    var_0 = Struct_2(func_2(global3[var_0.c << 53536u]).a, -(-global4.e.b) - (step(-vec4<f32>(global4.e.b.x, global4.b.x, var_0.b.x, global4.e.b.x), func_1(true, Struct_1(var_0.a.x), Struct_3(-1i, vec3<f32>(-718f, global4.b.x, var_0.b.x), u_input.a, global4.d, global4.e), vec2<bool>(var_0.a.x, global4.e.a.x)).b) - (vec4<f32>(var_0.b.x, -840f, -387f, var_0.b.x) - vec4<f32>(-813f, global4.b.x, global4.b.x, -597f))), func_1(!(!(false && false)), Struct_1(var_0.a.x & (4294967295u > 1u)), Struct_3(u_input.b.x, var_0.b.yxy * var_0.b.wzx, dot(vec4<i32>(2147483647i, 14568i, 17307i, -1i), max(vec4<i32>(3935i, u_input.a, global4.c, -48959i), vec4<i32>(917i, global4.c, -1i, 1i))), vec4<u32>(~global2.x, ~global2.x, var_0.c + 0u, global2.x), func_1(false, global3[firstLeadingBit(68779u)], Struct_3(-18737i, var_0.b.yww, u_input.b.x, vec4<u32>(global2.x, u_input.d, global4.d.x, global4.d.x), global4.e), !var_0.a)), !vec2<bool>(false, true)).c);
    var var_1 = global3[var_0.c];
    var_1 = global3[global1[global1[dot(~(~vec4<u32>(4294967295u, u_input.e.x, var_0.c, global1[4294967295u]) << (vec4<u32>(var_0.c, var_0.c, global4.d.x, global1[49381u]) ^ global4.d)) | vec4<u32>(~(global4.e.c + 0u), 51681u, firstLeadingBit(u_input.e.x), global1[func_2(Struct_1(false)).c]), min(vec4<u32>(select(global4.d.x, 48834u, var_0.a.x) * ~u_input.d, 0u, abs(17929u), ~global4.d.x / 0u), vec4<u32>(firstTrailingBit(0u), global2.x, firstTrailingBit(global1[u_input.d]), 781u + max(var_0.c, var_0.c))))]]];
    let var_2 = var_0.a;
    global1 = array<u32, 7>();
    var var_3 = Struct_3(-countOneBits(u_input.a * i32(-2147483648)) * 39172i, -func_1(true, global3[~0u], Struct_3(52636i, ceil(global4.e.b.zyy), u_input.c, vec4<u32>(u_input.e.x, global1[u_input.e.x], global4.d.x, global4.e.c), global4.e), vec2<bool>(global4.e.a.x == var_0.a.x, any(vec4<bool>(true, false, true, var_0.a.x)))).b.wxw, -6261i, firstTrailingBit(global4.d), Struct_2(global0[~0u], -global4.e.b, 1u));
    var var_4 = Struct_1(global4.e.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global4.d.xyw);
}

