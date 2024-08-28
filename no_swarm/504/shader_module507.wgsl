// {"0:0":[184,84,71,74]}
// Seed: 5506110948790740008

struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(80065u, 1u, 22167u, 1u));

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 4294967295u), vec2<u32>(68939u, 45728u), vec2<u32>(58350u, 1u), vec2<u32>(14155u, 4294967295u), vec2<u32>(2206u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 29635u), vec2<u32>(17030u, 1u), vec2<u32>(0u, 39794u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1407u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(8277u, 61057u), vec2<u32>(4294967295u, 14785u), vec2<u32>(25060u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 49336u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 40016u), vec2<u32>(4294967295u, 12889u), vec2<u32>(1u, 3138u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(70985u, 1u), vec2<u32>(1u, 50106u), vec2<u32>(0u, 51035u));

var<private> global3: array<u32, 27>;

fn func_3(arg_0: vec4<f32>) -> i32 {
    return ~u_input.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global3 = array<u32, 27>();
    var var_0 = vec4<i32>(select(-global0.a.b, -arg_0.x % ~(-1i), any(!vec2<bool>(true, global0.c.a))), func_3((-vec4<f32>(-1180f, -549f, -1188f, -1546f) / -vec4<f32>(367f, -1944f, 1331f, 1699f)) * (exp2(vec4<f32>(1468f, 724f, 123f, 1172f)) - (vec4<f32>(1037f, -1435f, -2176f, -1456f) - vec4<f32>(1048f, -1050f, 1297f, -143f)))), abs(arg_0.x & global0.a.c.x), reverseBits(i32(-2147483648) ^ (u_input.a << 1u)));
    global2 = array<vec2<u32>, 30>();
    return Struct_2(Struct_1(global0.b, dot(reverseBits(~vec4<i32>(1i, global0.a.c.x, arg_0.x, var_0.x)), vec4<i32>(~var_0.x, var_0.x ^ var_0.x, -14104i, -18582i | -81087i)), global0.c.c, false, vec2<u32>(firstTrailingBit(11315u / 1u), ~(48945u | global3[1u]))), !any(select(!vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, global0.a.d, global0.b), vec4<bool>(false, global0.a.d, false, true), vec4<bool>(global0.a.d, global0.a.a, global0.b, false)), !vec4<bool>(global0.c.d, false, true, global0.c.a))), Struct_1(select(true, !global0.a.d && (global0.b || global0.a.d), any(vec3<bool>(global0.c.d, true, global0.c.d))), global0.a.c.x, vec2<i32>(-u_input.a, global0.a.b) ^ select(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(3283i, var_0.x), vec2<bool>(global0.b, global0.b)), (any(vec2<bool>(true, true)) != select(true, true, true)) || (-135f != 426f), ((vec2<u32>(2039u, 12149u) - global0.a.e) - vec2<u32>(global3[global0.c.e.x], global3[global0.a.e.x])) ^ min(vec2<u32>(global0.d, global3[970u]), global2[global3[40445u] & 0u])), min(1u, max(27400u, 0u & (25025u ^ 69165u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.a / arg_1.d.a.b;
    global0 = func_2(vec2<i32>(~(~u_input.a), -1i) | ~min(countOneBits(global0.a.c), arg_1.a.c));
    global1 = array<vec4<u32>, 1>();
    let var_1 = Struct_3(func_2(vec2<i32>(-6513i ^ u_input.a, 13521i)).c, round(vec3<f32>(-249f, (arg_0.x / 553f) * 840f, round(1294f) / (arg_1.b.x * 1000f))), all(vec3<bool>(arg_1.a.a, arg_1.d.a.d, arg_1.a.a == arg_1.c)) & arg_1.d.c.d, func_2(func_2(vec2<i32>(-32950i, global0.c.c.x) | arg_1.a.c).a.c - -reverseBits(arg_1.d.c.c)));
    var var_2 = -6225i;
    return func_2(reverseBits(var_1.d.c.c)).c;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<i32>) -> Struct_3 {
    global1 = array<vec4<u32>, 1>();
    let var_0 = -((-(-118f - arg_0.b.x) - arg_0.b.x) + exp2(-(-198f) + arg_0.b.x));
    let var_1 = arg_0;
    var var_2 = select(vec4<i32>(~(1i / (arg_0.d.a.c.x / arg_3.x)), dot(abs(vec3<i32>(59343i, 0i, -7479i)) + (arg_3.yww / arg_3.zzy), vec3<i32>(arg_3.x << var_1.d.d, arg_0.a.c.x + i32(-2147483648), 27074i / -48945i)), ~firstTrailingBit(i32(-2147483648)) - func_2(arg_3.yw / vec2<i32>(global0.c.b, arg_0.d.c.c.x)).c.c.x, -12328i), arg_3 << ~(global1[~global0.c.e.x] & vec4<u32>(var_1.d.a.e.x, global0.c.e.x, 18734u, arg_2)), !select(!(!vec4<bool>(var_1.a.a, true, true, true)), !vec4<bool>(global0.b, true, global0.b, true), false));
    let var_3 = vec2<u32>(global0.a.e.x, 13148u);
    return Struct_3(var_1.d.c, -(sign(vec3<f32>(var_0, arg_0.b.x, var_0)) * -arg_0.b) + arg_0.b, var_1.b.x < (select(890f + var_1.b.x, -255f, arg_0.a.c.x != -29228i) + -352f), Struct_2(Struct_1(select(true, !global0.b, false), -49791i, vec2<i32>(arg_3.x, i32(-2147483648)) | -vec2<i32>(58756i, 0i), ~0i < 1i, ~(global2[global3[4106u]] ^ var_3)), !select(!false, true, false), arg_0.a, firstTrailingBit(~1u | 11409u)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    global3 = array<u32, 27>();
    global1 = array<vec4<u32>, 1>();
    let var_0 = func_5(Struct_3(func_4(vec3<f32>(-702f, -(-1990f), 937f), Struct_3(global0.a, vec3<f32>(877f, 1000f, -1138f) + vec3<f32>(169f, -1437f, 926f), arg_0, func_2(vec2<i32>(global0.a.b, u_input.a)))), vec3<f32>(1000f + 884f, -243f - 1933f, -1514f - 264f) + max(-vec3<f32>(274f, -1395f, 762f), -vec3<f32>(1207f, -393f, -387f)), !(-1633f > 2408f) || ((907f + -1027f) >= -(-977f)), Struct_2(global0.c, func_2(vec2<i32>(1i, -31586i)).b, func_4(exp2(vec3<f32>(462f, -2149f, -1455f)), Struct_3(Struct_1(global0.b, global0.c.c.x, vec2<i32>(u_input.a, -1897i), global0.a.a, vec2<u32>(1u, 34767u)), vec3<f32>(1365f, -588f, 255f), arg_0, Struct_2(Struct_1(arg_0, 31969i, vec2<i32>(-1i, u_input.a), arg_0, global2[4576u]), true, global0.a, global0.a.e.x))), 4463u)), ~max(vec3<u32>(~global3[global3[1u]], 4294967295u / 4294967295u, func_4(vec3<f32>(985f, -170f, -1053f), Struct_3(global0.a, vec3<f32>(838f, 2498f, 140f), false, Struct_2(Struct_1(arg_0, 1i, vec2<i32>(-1i, -40220i), true, global2[4294967295u]), true, global0.c, global0.a.e.x))).e.x), firstTrailingBit(vec3<u32>(global0.c.e.x, global3[4294967295u], 9410u) / vec3<u32>(global3[global0.d], global3[0u], 4294967295u))), global3[~(~0u)], firstLeadingBit(min(~vec4<i32>(0i, 2147483647i, 0i, u_input.a) - -vec4<i32>(arg_1.x, 41703i, -40291i, 2147483647i), (vec4<i32>(u_input.a, 25260i, -54227i, u_input.a) ^ vec4<i32>(i32(-2147483648), u_input.a, arg_1.x, global0.c.c.x)) * vec4<i32>(1i, u_input.a, u_input.a, global0.a.c.x))));
    let var_1 = Struct_2(func_4(-(-var_0.b), var_0), func_4(-var_0.b, var_0).d, func_4(trunc(exp2(var_0.b)), func_5(var_0, (vec3<u32>(1u, global0.c.e.x, 59138u) << vec3<u32>(66063u, global3[2113u], global3[var_0.a.e.x])) & ~vec3<u32>(17380u, 1u, global3[12795u]), ~(38691u & 40164u), abs(vec4<i32>(0i, 2147483647i, var_0.d.c.c.x, arg_1.x)) & ~vec4<i32>(u_input.a, 2147483647i, var_0.a.b, arg_1.x))), firstTrailingBit(global3[func_2(arg_1).a.e.x]));
    var var_2 = Struct_5(var_0.a.d, max(~(var_0.a.e >> global0.a.e), vec2<u32>(~global3[global3[0u]], reverseBits(var_0.d.d))) << clamp(global0.c.e, vec2<u32>(global0.d, 4294967295u) << vec2<u32>(var_0.d.a.e.x, var_0.d.c.e.x), firstLeadingBit(var_0.a.e) & vec2<u32>(0u, 9996u)));
    return var_1;
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_2) -> f32 {
    global0 = func_2(clamp(vec2<i32>(0i, 1i), reverseBits(vec2<i32>(u_input.a, 2147483647i)) & ((vec2<i32>(global0.a.c.x, arg_3.c.b) * global0.c.c) ^ ~arg_3.a.c), vec2<i32>(func_4(vec3<f32>(-292f, 1370f, 314f), Struct_3(Struct_1(arg_3.b, -3142i, vec2<i32>(u_input.a, -18039i), arg_2.a, vec2<u32>(1u, 0u)), vec3<f32>(1055f, -1000f, 1194f), true, Struct_2(Struct_1(false, 2147483647i, arg_3.a.c, true, arg_3.c.e), false, Struct_1(arg_2.a, global0.a.c.x, arg_3.a.c, true, arg_2.b), 2229u))).c.x, 47019i)));
    var var_0 = vec2<bool>(global0.c.d, false);
    let var_1 = vec4<bool>(false, !(241f <= sign(-748f)), all(!select(vec3<bool>(global0.c.a, arg_2.a, arg_2.a), vec3<bool>(false, arg_3.c.d, false), false)) == !false, var_0.x);
    var var_2 = Struct_5(select(arg_3.c.a, true, firstLeadingBit(30353i) <= 74492i), ~(~func_1(arg_3.c.d, vec2<i32>(global0.a.c.x, u_input.a)).c.e) ^ (vec2<u32>(max(global0.c.e.x, arg_2.b.x), arg_3.a.e.x) | ~(~arg_3.a.e)));
    var var_3 = Struct_3(Struct_1(!((66597u != 4294967295u) && arg_2.a), global0.c.b, firstTrailingBit(vec2<i32>(-u_input.a, global0.c.c.x)), var_0.x, ~select(select(vec2<u32>(var_2.b.x, 83188u), vec2<u32>(0u, arg_3.a.e.x), vec2<bool>(var_1.x, true)), vec2<u32>(66424u, 29827u), !var_1.xx)), step(-(-max(vec3<f32>(-536f, -2805f, 848f), vec3<f32>(-2229f, 1033f, -1000f))), -(-max(vec3<f32>(1883f, 913f, -222f), vec3<f32>(-1011f, 1000f, -1000f)))), any(vec3<bool>(true, func_5(Struct_3(Struct_1(var_2.a, -12128i, arg_3.c.c, false, var_2.b), vec3<f32>(375f, 1209f, -726f), arg_3.b, Struct_2(Struct_1(true, i32(-2147483648), arg_3.a.c, true, vec2<u32>(1u, 25784u)), true, Struct_1(true, global0.c.c.x, global0.a.c, arg_3.b, vec2<u32>(arg_2.b.x, arg_2.b.x)), arg_0)), vec3<u32>(arg_1.b.x, 4294967295u, 23948u), 44102u, vec4<i32>(0i, 1i, arg_3.c.b, global0.c.c.x)).a.a, global0.a.d)) && true, func_1(true, global0.a.c));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global3 = array<u32, 27>();
    let var_1 = Struct_2(global0.c, ~global3[global0.d] == 4294967295u, Struct_1(all(vec2<bool>(false, false)), global0.a.c.x + (1i - global0.a.c.x), global0.a.c, !(u_input.a <= -global0.a.b), global2[0u]), 8255u);
    global2 = array<vec2<u32>, 30>();
    global2 = array<vec2<u32>, 30>();
    global3 = array<u32, 27>();
    var var_2 = all(select(!select(vec2<bool>(var_1.c.a, false), vec2<bool>(true, true), vec2<bool>(var_1.c.d, false)), !(!vec2<bool>(false, true)), var_1.b & global0.c.a)) | (((-1000f / 1881f) + ((232f + -1000f) / -(-1083f))) < func_6(17461u, Struct_5(var_1.a.d, ~global2[0u]), Struct_5(!var_1.b, global2[global0.d] >> vec2<u32>(global0.d, 1u)), func_1(!global0.b, global0.a.c)));
    var var_3 = -(-(max(vec4<f32>(776f, -1652f, -510f, 651f), vec4<f32>(1522f, 1161f, 692f, -1026f)) / vec4<f32>(-343f, -1018f, -150f, -2324f))) * (trunc(-(-vec4<f32>(1193f, -778f, 1054f, 202f))) * (vec4<f32>(max(231f, 969f), step(1377f, 1000f), 1550f, func_5(Struct_3(global0.c, vec3<f32>(320f, -341f, 728f), var_1.c.a, var_1), vec3<u32>(var_1.a.e.x, 0u, global3[18418u]), 63475u, vec4<i32>(u_input.a, var_1.c.c.x, var_1.c.b, u_input.a)).b.x) / abs(sign(vec4<f32>(639f, 1492f, 1000f, -884f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, abs(min(~(vec3<i32>(-41845i, u_input.a, global0.a.c.x) + vec3<i32>(0i, u_input.a, u_input.a)), min(-vec3<i32>(-13597i, -1i, i32(-2147483648)), abs(vec3<i32>(-33036i, var_1.c.b, i32(-2147483648)))))), 1584f);
}

