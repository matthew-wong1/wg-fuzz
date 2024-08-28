// {"0:0":[198,14,20,165,104,106,207,114,239,242,235,231,133,249,64,164]}
// Seed: 14758484088386937389

struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: i32 = 27074i;

var<private> global2: array<Struct_4, 14>;

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    return select(arg_0.b.e, arg_0.a.e, select(arg_0.b.e, !select(vec4<bool>(arg_0.a.c.x, arg_0.b.b, true, arg_0.a.b), vec4<bool>(false, false, false, false), vec4<bool>(arg_0.b.c.x, arg_0.a.c.x, arg_0.b.c.x, true)), !arg_0.a.e));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_3(u_input.a.zx, Struct_2(Struct_1(-(-961f), !false & (631f != 1307f), func_3(Struct_2(Struct_1(-1000f, false, vec4<bool>(true, false, false, false), u_input.a, vec4<bool>(false, true, false, false)), Struct_1(-469f, false, vec4<bool>(false, true, false, false), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 70416u), vec4<bool>(false, true, false, true)), u_input.a.x)), u_input.a, func_3(Struct_2(Struct_1(768f, false, vec4<bool>(false, true, false, false), u_input.a, vec4<bool>(true, false, false, false)), Struct_1(-2104f, false, vec4<bool>(true, false, true, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<bool>(true, false, true, true)), u_input.a.x))), Struct_1(-1084f, all(func_3(Struct_2(Struct_1(-136f, false, vec4<bool>(false, false, false, true), u_input.a, vec4<bool>(true, false, true, true)), Struct_1(339f, false, vec4<bool>(false, false, false, false), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 70036u), vec4<bool>(false, false, false, true)), 1u)).zy), vec4<bool>(!false, all(vec4<bool>(false, false, true, true)), false, true | true), vec4<u32>(0u << u_input.a.x, ~0u, u_input.a.x, ~u_input.a.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !vec4<bool>(false, true, true, false), func_3(Struct_2(Struct_1(-1000f, false, vec4<bool>(false, true, false, false), u_input.a, vec4<bool>(true, false, false, true)), Struct_1(970f, false, vec4<bool>(true, true, true, true), vec4<u32>(1u, 3599u, u_input.a.x, 51324u), vec4<bool>(true, false, false, false)), 1u)))), reverseBits(49474u)));
    global0 = array<vec4<i32>, 18>();
    let var_1 = vec4<u32>(571u, reverseBits(u_input.a.x >> clamp(u_input.a.x, 55749u, 58892u)), 38395u, 4294967295u) ^ (u_input.a << var_0.b.a.d);
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    return false;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(-(-min(-949f, step(-210f, -268f))), func_2(-(-(-46130i)) & min(48485i, -1i - 80825i)), vec4<bool>(true || false, !(arg_0.x | (1u == u_input.a.x)), arg_0.x, arg_0.x), ~(~(u_input.a >> u_input.a) % ~u_input.a), vec4<bool>(!func_3(Struct_2(Struct_1(268f, true, vec4<bool>(false, true, true, arg_0.x), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<bool>(arg_0.x, arg_0.x, true, false)), Struct_1(2092f, arg_0.x, arg_0, u_input.a, arg_0), u_input.a.x)).x, all(vec4<bool>(true && arg_0.x, func_3(Struct_2(Struct_1(-1213f, true, vec4<bool>(true, true, false, true), u_input.a, arg_0), Struct_1(1567f, true, vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), u_input.a, vec4<bool>(false, arg_0.x, false, true)), u_input.a.x)).x, true, arg_0.x)), dot(vec2<i32>(41318i, -29658i) >> vec2<u32>(4294967295u, u_input.a.x), ~vec2<i32>(22718i, 26686i)) <= -16585i, true));
    let var_1 = ~vec3<i32>(0i, -(-select(2147483647i, i32(-2147483648), arg_0.x)), -(-7343i));
    let var_2 = global2[min(4294967295u | var_0.d.x, ~var_0.d.x)];
    var var_3 = -(var_1.x ^ (~var_1.x | (var_1.x + 1i))) & var_1.x;
    var var_4 = 46941i;
    return 843f;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_3 {
    global1 = dot(arg_2.zxw, ~arg_2.wwx) + -(~(~1i));
    return Struct_3(countOneBits((arg_3.d.xx / vec2<u32>(arg_3.d.x, 0u)) % vec2<u32>(25118u, u_input.a.x)), Struct_2(Struct_1(arg_1 + ceil(710f), false, select(!vec4<bool>(arg_3.b, arg_3.b, false, arg_3.b), func_3(Struct_2(arg_3, Struct_1(-2523f, arg_3.b, arg_3.c, vec4<u32>(7344u, 39168u, 0u, 3100u), vec4<bool>(arg_3.c.x, arg_3.e.x, arg_3.b, true)), 8539u)), arg_3.e.x), firstTrailingBit(arg_3.d), arg_3.e), arg_3, 33495u));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    global1 = -(~(arg_1.x / arg_1.x));
    let var_0 = func_3(func_4(-floor(abs(vec4<f32>(arg_0.b.a.a, -1572f, -1438f, arg_3.x))), floor(-1020f) * 1381f, ~global0[u_input.a.x], arg_0.b.a).b).zyx;
    let var_1 = func_4(vec4<f32>(-arg_0.b.b.a, max(arg_0.b.a.a, arg_0.b.a.a) * arg_3.x, select(arg_3.x * arg_0.b.a.a, arg_3.x, arg_0.b.b.c.x), -(arg_3.x * arg_0.b.a.a)) + round((vec4<f32>(-255f, 1097f, 1457f, arg_3.x) + vec4<f32>(-910f, arg_0.b.a.a, arg_0.b.b.a, arg_3.x)) + (vec4<f32>(-1421f, 2125f, 1185f, -1399f) + vec4<f32>(-820f, arg_0.b.a.a, arg_3.x, arg_0.b.b.a))), -arg_3.x, countOneBits(abs(global0[4294967295u]) ^ clamp(global0[arg_2], global0[arg_2], global0[31547u])) | vec4<i32>(firstLeadingBit(-1i) | arg_1.x, firstTrailingBit(i32(-2147483648) ^ -1i), firstTrailingBit(-1i), dot(vec3<i32>(1i, 1i, -1567i) - vec3<i32>(-1i, arg_1.x, -1i), vec3<i32>(arg_1.x, arg_1.x, 0i) | vec3<i32>(arg_1.x, arg_1.x, 1i))), func_4(-max(vec4<f32>(-1629f, 185f, arg_0.b.b.a, arg_3.x) / vec4<f32>(arg_0.b.b.a, -1220f, arg_3.x, 882f), min(vec4<f32>(567f, 124f, arg_3.x, 627f), vec4<f32>(arg_0.b.a.a, -784f, 115f, arg_0.b.b.a))), -646f, ((vec4<i32>(12752i, 40914i, arg_1.x, arg_1.x) >> arg_0.b.b.d) | global0[reverseBits(0u)]) & ~(global0[arg_0.b.a.d.x] * vec4<i32>(arg_1.x, i32(-2147483648), arg_1.x, arg_1.x)), Struct_1(arg_3.x + 1210f, true, vec4<bool>(false, any(var_0.yy), true, var_0.x), max(vec4<u32>(arg_2, 4294967295u, 33682u, 1u), u_input.a), select(!arg_0.b.a.e, vec4<bool>(arg_0.b.a.b, true, arg_0.b.a.e.x, false), select(vec4<bool>(arg_0.b.b.b, true, var_0.x, false), arg_0.b.a.e, arg_0.b.b.c)))).b.a).b;
    let var_2 = true;
    var var_3 = -arg_3.yz * arg_3.xy;
    return func_4(abs(-(-vec4<f32>(1832f, var_1.b.a, -1110f, var_3.x)) + vec4<f32>(arg_0.b.a.a, abs(arg_3.x), -var_1.b.a, -823f)), var_3.x, ~clamp(~global0[var_1.a.d.x] * global0[max(arg_2, 1u)], global0[2461u], select(~global0[0u], global0[arg_0.b.c] | vec4<i32>(arg_1.x, 2147483647i, arg_1.x, 1i), vec4<bool>(false, false, true, true))), func_4(-floor(-vec4<f32>(435f, -1154f, arg_3.x, 762f)), 950f, -global0[abs(var_1.a.d.x)], var_1.a).b.b).b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 2147483647i;
    global1 = (~firstLeadingBit(24998i) >> 52210u) << ~(~(~4294967295u));
    var var_0 = -func_5(func_4(vec4<f32>(883f, 1217f, 1945f, 999f), func_1(vec4<bool>(false, true, true, false)), vec4<i32>(2147483647i, 1i, 17488i, 2147483647i), Struct_1(1510f, true, vec4<bool>(true, false, true, false), u_input.a, vec4<bool>(true, false, false, true))), vec2<i32>(8630i / 1i, min(i32(-2147483648), -1i)), u_input.a.x, vec3<f32>(-1995f, 221f, 323f) - vec3<f32>(-399f, -1682f, -783f)) - -(-floor(-200f));
    var var_1 = abs((step(trunc(1000f), round(640f)) + 498f) / (-(-475f - 1403f) - func_4(exp2(vec4<f32>(707f, 665f, -485f, -603f)), -1000f, countOneBits(global0[25144u]), Struct_1(-1078f, false, vec4<bool>(true, false, false, true), u_input.a, vec4<bool>(false, false, false, false))).b.a.a));
    global2 = array<Struct_4, 14>();
    let var_2 = max(-(((vec2<f32>(380f, 1412f) * vec2<f32>(1236f, -1878f)) + (vec2<f32>(878f, -352f) * vec2<f32>(207f, -1315f))) + -sign(vec2<f32>(2375f, -1278f))), -vec2<f32>(-(-437f), -(-1176f)) / min(-(-vec2<f32>(-227f, 385f)), vec2<f32>(261f, 1902f) - -vec2<f32>(711f, 2336f)));
    var var_3 = u_input.a;
    let var_4 = 1186f;
    let var_5 = (8854i & -4955i) + 0i;
    let x = u_input.a;
    s_output = StorageBuffer(52635u, vec4<f32>(-var_4, -182f, -546f, abs(-(-1000f))), var_3.xy);
}

