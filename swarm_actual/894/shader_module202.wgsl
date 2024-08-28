// {"0:0":[147,8,71,185,105,199,21,145,221,30,197,6,147,251,144,139,190,40,9,248,250,101,218,138,149,218,138,235,61,136,221,150,64,197,177,210,0,32,3,120,167,131,156,10,123,211,110,84]}
// Seed: 2426288741320723961

struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-2346f, 1150f, -873f, -1282f, -645f, 575f, -571f, -1587f, 1472f, 106f, -1000f, 575f, 2784f, -691f, -142f, -1000f, 313f, 515f, 1183f, 890f, 660f, 678f, 915f, 999f, 294f, 835f, -817f, 1000f, -541f, -458f);

var<private> global1: vec2<u32>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_4 = Struct_4(true, 43168u);

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(512f, -55711i), Struct_1(323f, -1i), Struct_1(-302f, 2474i), Struct_1(130f, -1i), Struct_1(-1107f, 1i));

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = ~(~((clamp(vec3<u32>(47712u, 0u, global1.x), vec3<u32>(1u, 33731u, global1.x), vec3<u32>(4294967295u, 83234u, global3.b)) | select(vec3<u32>(global1.x, global1.x, global3.b), vec3<u32>(u_input.a, 39906u, u_input.d), vec3<bool>(global3.a, global3.a, global3.a))) & abs(vec3<u32>(global3.b, 20909u, 66041u) % vec3<u32>(11353u, global1.x, u_input.c))));
    var var_1 = vec2<f32>(step(abs(global0[1u] + 1255f) * -398f, -(-(-259f))), abs(-global0[global1.x] * 1873f) + global0[9448u]);
    let var_2 = Struct_2(39056i | i32(-2147483648), 4294967295u, select(vec2<bool>(!false || arg_1, any(vec3<bool>(global3.a, arg_1, global3.a))), !(!vec2<bool>(global3.a, true)), select(!(!global3.a), any(!vec2<bool>(false, global3.a)), var_1.x > -(-866f))), 729f, global4[~u_input.a]);
    var var_3 = abs(select(firstTrailingBit(global2.yz), -vec2<i32>(-(-1i), 1223i), var_2.c));
    global1 = vec2<u32>(82931u, ~(var_2.b + ~clamp(10955u, 2437u, global3.b)));
    return ~abs(firstTrailingBit(dot(var_0.zy ^ vec2<u32>(0u, 4294967295u), var_0.yx)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    global1 = vec2<u32>(global1.x, dot(vec4<u32>(4294967295u, u_input.a, global1.x, arg_0), vec4<u32>(arg_0, 59412u, 1u, 0u) % vec4<u32>(20446u, 4294967295u, 0u, 4294967295u)) >> (~global3.b & 0u)) % abs(((vec2<u32>(30878u, arg_0) ^ vec2<u32>(1u, 1u)) << ~vec2<u32>(29194u, global1.x)) % vec2<u32>(u_input.a | arg_0, u_input.d >> u_input.c));
    let var_0 = vec3<u32>(0u, func_3(Struct_3(45735i), (~4294967295u & (u_input.a | arg_0)) < 0u), func_3(Struct_3(clamp(-10245i, arg_2 >> global1.x, -u_input.b.x)), false));
    var var_1 = Struct_2(-27061i, 4294967295u, select(vec2<bool>(global3.a, !global3.a), select(select(!vec2<bool>(false, false), select(vec2<bool>(global3.a, true), vec2<bool>(global3.a, false), true), vec2<bool>(global3.a, true)), select(vec2<bool>(global3.a, global3.a), !vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a)), global3.a | true), select(!(!vec2<bool>(global3.a, global3.a)), vec2<bool>(all(vec2<bool>(global3.a, false)), !global3.a), !vec2<bool>(false, global3.a))), -(-937f), arg_1);
    var var_2 = !true;
    var var_3 = Struct_1(835f, -(-(-15933i)));
    return -204f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = !(!(!any(arg_3)));
    let var_1 = abs(vec4<u32>(~((0u - global1.x) | 5854u), 2404u, select(1u, firstLeadingBit(0u), arg_0.c.x) | (arg_0.b ^ global1.x), 9241u));
    let var_2 = floor(-((-vec3<f32>(866f, -1876f, -1000f) / round(vec3<f32>(1890f, arg_0.e.a, arg_0.e.a))) - min(vec3<f32>(arg_0.d, -414f, arg_0.e.a) + vec3<f32>(-1156f, global0[24051u], arg_1.d), min(vec3<f32>(arg_0.e.a, arg_1.d, global0[0u]), vec3<f32>(-608f, global0[7427u], 1000f)))));
    let var_3 = sign(floor(abs(vec3<f32>(-1850f, arg_0.e.a, -1198f)))) * -var_2;
    let var_4 = arg_1.e;
    return Struct_4(any(!(!(!vec3<bool>(global3.a, arg_3.x, false)))), var_1.x + arg_0.b);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = -vec2<i32>(u_input.b.x, reverseBits(firstLeadingBit(select(global2.x, u_input.b.x, global3.a))));
    var var_1 = func_4(Struct_2(-(var_0.x | 71963i) + global2.x, max(~21683u, ~13711u) + ~(global3.b * u_input.d), select(!select(vec2<bool>(true, global3.a), vec2<bool>(true, false), vec2<bool>(global3.a, true)), !vec2<bool>(global3.a, false), select(vec2<bool>(false, false), vec2<bool>(global3.a, true), any(vec4<bool>(global3.a, global3.a, global3.a, true)))), abs(step(func_2(u_input.a, Struct_1(arg_0, var_0.x), var_0.x, arg_1), 265f)), global4[firstLeadingBit(~23650u)]), Struct_2(dot(vec4<i32>(-global2.x, firstLeadingBit(-64537i), u_input.b.x, dot(u_input.b.yx, vec2<i32>(i32(-2147483648), 1i))), select(vec4<i32>(var_0.x, var_0.x, 2147483647i, -42915i), vec4<i32>(u_input.b.x, 34555i, 8070i, -13274i), false) / (vec4<i32>(var_0.x, u_input.b.x, u_input.b.x, var_0.x) / vec4<i32>(34565i, global2.x, -35926i, global2.x))), 43583u, select(vec2<bool>(!true, false), select(select(vec2<bool>(true, true), vec2<bool>(global3.a, global3.a), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a), global3.a)), (global3.a && false) && (true | global3.a)), max(1000f, floor(381f)) / -2594f, global4[reverseBits(global3.b)]), Struct_3(2147483647i), select(vec4<bool>((false || true) || global3.a, false, !global3.a != (21234u == 0u), global3.a), vec4<bool>(global3.a, global3.a, !global3.a, var_0.x > 37518i), !global3.a));
    var var_2 = !(!select(vec2<bool>(!false, global3.a), select(select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, false)), !vec2<bool>(global3.a, global3.a), !vec2<bool>(var_1.a, var_1.a)), !select(vec2<bool>(true, true), vec2<bool>(global3.a, true), vec2<bool>(var_1.a, false))));
    let var_3 = Struct_2(dot(-min(vec4<i32>(-2532i, -4756i, global2.x, u_input.b.x), vec4<i32>(3455i, var_0.x, i32(-2147483648), var_0.x)), abs(max(vec4<i32>(-17587i, var_0.x, u_input.b.x, -8360i), vec4<i32>(2147483647i, -1552i, global2.x, var_0.x)))) >> ~(~15654u), ~(~global3.b), select(select(select(!vec2<bool>(global3.a, var_1.a), select(vec2<bool>(var_2.x, false), vec2<bool>(var_1.a, true), false), true), !select(vec2<bool>(var_2.x, false), vec2<bool>(true, global3.a), vec2<bool>(global3.a, var_1.a)), var_2.x), !vec2<bool>(var_2.x, all(vec4<bool>(var_2.x, var_1.a, global3.a, var_1.a))), !all(select(vec3<bool>(false, true, var_1.a), vec3<bool>(true, global3.a, false), var_2.x))), 1000f - round(-2079f + global0[global1.x]), global4[4294967295u >> 1u]);
    global3 = Struct_4(global3.a, ((var_3.b << global3.b) % firstLeadingBit(clamp(var_3.b, 0u, 65504u))) - (select(~u_input.a, 79742u, !true) % 47818u));
    return vec4<i32>(10221i, (-var_3.a >> 87045u) / ((i32(-2147483648) - i32(-2147483648)) << ~1u), clamp(u_input.b.x / -7995i, var_0.x ^ -1i, min(var_0.x, -2624i)) / i32(-2147483648), max(global2.x, firstLeadingBit(var_0.x - var_0.x))) & firstLeadingBit(vec4<i32>(-1i, -(var_3.a + 37832i), ~var_3.a, -18741i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(-1i + ((global2.x | -52859i) / 1i), -dot(~u_input.b, vec3<i32>(u_input.b.x, global2.x, global2.x)), min(select(u_input.b.x % global2.x, max(2147483647i, u_input.b.x), !true), select(-1i << global1.x, ~u_input.b.x, global0[global3.b] < 818f)), u_input.b.x) % func_1(278f, (vec4<f32>(-1537f, global0[61079u], -1654f, global0[52963u]) * vec4<f32>(global0[27910u], global0[58272u], global0[u_input.a], -706f)) + exp2(vec4<f32>(1217f, global0[global1.x], -1000f, global0[0u])));
    global3 = func_4(Struct_2(-20551i, u_input.a % ~global1.x, !vec2<bool>(!true, false), (-760f + -global0[global1.x]) + global0[~u_input.d ^ ~global3.b], Struct_1(global0[(0u << 4294967295u) % global3.b], ~u_input.b.x)), Struct_2(u_input.b.x, ((global1.x >> 2600u) ^ min(global1.x, global3.b)) | global3.b, vec2<bool>(select(func_4(Struct_2(2147483647i, u_input.a, vec2<bool>(false, true), -143f, global4[1u]), Struct_2(-21005i, 0u, vec2<bool>(global3.a, true), -170f, Struct_1(global0[u_input.c], global2.x)), Struct_3(u_input.b.x), vec4<bool>(global3.a, global3.a, true, global3.a)).a, func_4(Struct_2(u_input.b.x, 39385u, vec2<bool>(global3.a, global3.a), -925f, Struct_1(global0[7549u], u_input.b.x)), Struct_2(10648i, global1.x, vec2<bool>(global3.a, true), 100f, global4[global1.x]), Struct_3(u_input.b.x), vec4<bool>(global3.a, global3.a, false, global3.a)).a, any(vec3<bool>(false, global3.a, false))), global3.a), ((global0[0u] - global0[11466u]) + -617f) / -1016f, Struct_1(1000f, ~u_input.b.x)), Struct_3(-27097i), !(!vec4<bool>(func_4(Struct_2(u_input.b.x, global3.b, vec2<bool>(true, true), global0[global1.x], Struct_1(global0[u_input.c], global2.x)), Struct_2(-36398i, global3.b, vec2<bool>(true, global3.a), global0[global1.x], Struct_1(-311f, global2.x)), Struct_3(global2.x), vec4<bool>(false, global3.a, global3.a, global3.a)).a, !true, false, any(vec3<bool>(global3.a, global3.a, global3.a)))));
    global0 = array<f32, 30>();
    var var_0 = 11306u;
    let var_1 = -floor(max((vec3<f32>(global0[21586u], -115f, global0[global1.x]) / vec3<f32>(1000f, 508f, -1000f)) / (vec3<f32>(global0[85684u], 419f, global0[4294967295u]) * vec3<f32>(-1000f, 592f, -1012f)), -vec3<f32>(933f, global0[global1.x], 1000f) - vec3<f32>(global0[0u], global0[global3.b], global0[4294967295u])));
    let var_2 = u_input.a & dot(abs(firstTrailingBit(~vec3<u32>(global3.b, global1.x, u_input.c))), abs(vec3<u32>(20459u, u_input.d, 0u) - vec3<u32>(30935u, global1.x, 75076u)) << (~vec3<u32>(94909u, 1u, u_input.c) + ~vec3<u32>(u_input.a, 0u, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<f32>(-610f, (-1000f - 1118f) * 1000f, (global0[4294967295u] - -1040f) + 2649f, -(-128f) / trunc(global0[global1.x])), u_input.b.x, 67400u, 4294967295u);
}

