// {"0:0":[91,64,165,82,221,123,173,109,80,123,62,176,177,208,246,21]}
// Seed: 2304694896507857411

struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: u32;

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(-(-731f) / arg_1.a, !vec2<bool>(select(2278f <= arg_2.a, !arg_0.x, select(arg_1.b.x, arg_0.x, arg_1.c)), any(arg_0)), !arg_0.x, ~(~max(-1i, arg_1.d - 0i)));
    global0 = array<u32, 24>();
    global1 = global0[50457u >> ~(~(~1u))];
    global0 = array<u32, 24>();
    var var_1 = min(~vec4<u32>(~global0[16275u], abs(global0[0u] << global0[global0[global0[global0[684u]]]]), global0[~(~4294967295u)], firstLeadingBit(countOneBits(global0[global0[global0[global0[global0[global0[global0[global0[global0[32748u]]]]]]]]]))), vec4<u32>(global0[1u], ~abs(global0[global0[global0[4294967295u]]]) << ~4294967295u, global0[1254u], 27850u));
    return vec2<bool>(all(vec4<bool>(!any(vec2<bool>(var_0.b.x, arg_0.x)), !all(arg_0), arg_2.b.x, arg_1.c)), !(!(!(!true))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = !any(select(!func_3(vec3<bool>(arg_1.b.x, true, arg_1.b.x), Struct_1(arg_0, vec2<bool>(false, false), arg_1.c, arg_1.d), Struct_1(arg_0, arg_1.b, false, -12843i)), arg_1.b, !(!vec2<bool>(false, true))));
    var_0 = ~dot(vec3<u32>(4294967295u % global0[4294967295u], ~global0[0u], 47016u & 4294967295u), vec3<u32>(1u, 1u - global0[global0[global0[global0[4294967295u]]]], min(global0[global0[global0[global0[4294967295u]]]], 4294967295u))) != global0[~global0[4294967295u]];
    global1 = ~(27361u + ~((52602u & 1u) & global0[global0[~1u]]));
    var var_1 = abs(clamp(vec3<u32>(max(38990u, global0[global0[global0[global0[0u]]]]) & global0[0u], global0[~(global0[global0[0u]] / 7316u)], 1u % (81917u << 28075u)), firstTrailingBit(vec3<u32>(4294967295u, global0[global0[global0[global0[41909u]]]], global0[13402u]) << vec3<u32>(global0[global0[global0[global0[global0[global0[global0[39750u]]]]]]], 0u, global0[57123u])) * firstLeadingBit(vec3<u32>(1u, 4294967295u, global0[global0[global0[global0[global0[4294967295u]]]]])), clamp(vec3<u32>(global0[global0[global0[1u]]], global0[global0[global0[4304u]]], global0[63467u]) / (vec3<u32>(global0[global0[global0[17399u]]], global0[global0[global0[global0[global0[47535u]]]]], 16678u) & vec3<u32>(global0[global0[7182u]], global0[global0[34619u]], 4294967295u)), vec3<u32>(~1u, global0[1u], ~global0[4294967295u]), (vec3<u32>(4294967295u, global0[1u], 0u) << vec3<u32>(global0[1u], global0[global0[15234u]], global0[4294967295u])) + ~vec3<u32>(56509u, global0[global0[global0[39055u]]], 1u))));
    var_1 = vec3<u32>(var_1.x, global0[4294967295u], ~(~firstLeadingBit(0u) >> 44940u));
    return var_1.x;
}

fn func_2() -> Struct_1 {
    global1 = clamp(global0[func_4(((532f * 1999f) * floor(1638f)) - sign(444f), Struct_1(535f, func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), Struct_1(1024f, vec2<bool>(false, false), false, 10528i), Struct_1(446f, vec2<bool>(true, true), true, -7809i)), false, u_input.a.x - 9422i))], ~global0[~21899u] & ~21589u, global0[42669u - ~global0[global0[global0[8855u]] << 4294967295u]] % ~(1u / global0[~71677u]));
    var var_0 = select(vec4<u32>(~(~select(global0[global0[4294967295u]], global0[39333u], true)), ~(~global0[1u]), ~(~global0[global0[global0[90024u]]]) >> 5843u, dot(abs(vec3<u32>(global0[global0[global0[global0[global0[1u]]]]], 1u, global0[global0[16814u]]) << vec3<u32>(global0[global0[1u]], global0[global0[2792u]], global0[global0[global0[global0[1u]]]])), vec3<u32>(1u, global0[1u], global0[4294967295u]) | reverseBits(vec3<u32>(75968u, global0[global0[global0[2009u]]], 4294967295u)))), vec4<u32>(global0[min(global0[global0[global0[global0[global0[1u]]]]], 33860u) & ~global0[global0[global0[29129u]]]] * (global0[4294967295u & global0[885u]] + (global0[global0[62999u]] * global0[9183u])), (abs(10674u) >> global0[4294967295u]) * 1u, max(~(1u + global0[4294967295u]), clamp(1u, global0[clamp(global0[global0[global0[global0[global0[global0[global0[21144u]]]]]]], 43840u, global0[global0[1u]])], 4294967295u)), global0[global0[dot(~(vec4<u32>(44118u, global0[1u], 4294967295u, global0[4294967295u]) & vec4<u32>(107193u, 9831u, global0[global0[62482u]], 0u)), countOneBits(~vec4<u32>(global0[global0[48953u]], 1u, global0[global0[global0[72104u]]], 4294967295u)))]]), !(!(26599i < (u_input.a.x | 2147483647i))));
    let var_1 = Struct_1(-1768f, vec2<bool>(u_input.a.x != ~dot(vec4<i32>(u_input.a.x, -1i, 33442i, 10083i), vec4<i32>(10259i, 1i, -32674i, u_input.a.x)), select(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true, false)), true, u_input.a.x);
    let var_2 = 0u;
    var var_3 = sign(max(-var_1.a, -627f));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    var var_0 = 226f;
    var_0 = -860f;
    global1 = 1u;
    let var_1 = 4294967295u;
    var var_2 = vec4<u32>(4294967295u, ~(~(global0[4294967295u] >> global0[var_1]) ^ firstLeadingBit(1u)), ~global0[0u], ~var_1);
    return arg_0.b;
}

fn func_6(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1((sign(-(-1134f)) - -select(-452f, -914f, arg_0.x)) - -135f, arg_0, any(select(select(select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), !vec4<bool>(true, false, false, true)), !select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x)), !(!vec4<bool>(arg_0.x, true, true, arg_0.x)))), ~(-((2147483647i << arg_1) >> (70702u & 4294967295u))));
    let var_1 = var_0.a;
    var var_2 = Struct_1(var_0.a, var_0.b, all(arg_0), 0i);
    var var_3 = func_2();
    var_2 = func_2();
    return func_2();
}

fn func_1() -> vec2<bool> {
    global0 = array<u32, 24>();
    let var_0 = func_6(select(select(vec2<bool>(!false, false && false), func_5(func_2(), func_2(), -2305i >> global0[45246u]), true != any(vec2<bool>(true, true))), !vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, 26381i <= (1i ^ u_input.a.x))), ~1u);
    var var_1 = Struct_1(var_0.a, !(!func_6(var_0.b, 0u ^ global0[global0[0u]]).b), true, u_input.a.x);
    var var_2 = Struct_1(-1000f, vec2<bool>(!all(select(vec4<bool>(var_0.c, var_0.c, false, true), vec4<bool>(true, false, var_0.b.x, var_1.b.x), false)), firstTrailingBit(~61566u) >= (~global0[global0[global0[37265u]]] >> ~global0[0u])), global0[~11805u % ~(15569u + 0u)] < 52718u, 2147483647i ^ select(firstTrailingBit(firstTrailingBit(2147483647i)), var_1.d, !false));
    var var_3 = ~(~countOneBits(vec3<u32>(global0[global0[4294967295u]], 6665u, global0[1u])) / abs(vec3<u32>(global0[global0[1u]], global0[1u], global0[global0[global0[global0[1u]]]]) ^ vec3<u32>(global0[global0[global0[global0[4294967295u]]]], global0[global0[23060u]], global0[23617u]))) % vec3<u32>(1u, ~firstTrailingBit(37555u), ~(~(global0[global0[26301u]] + global0[39465u])));
    return !vec2<bool>(select(var_1.c || var_0.b.x, !false, var_1.b.x) & all(vec3<bool>(false, true, var_0.c)), true);
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = select(~global0[(dot(vec4<u32>(global0[62332u], global0[4294967295u], 17559u, 4294967295u), vec4<u32>(64660u, global0[global0[48478u]], global0[global0[global0[13536u]]], 4294967295u)) & (1u + 1u)) * ~(~global0[global0[0u]])], ((global0[1u] + abs(global0[1u])) / 1u) << (countOneBits(global0[4294967295u]) * ~func_4(648f, Struct_1(1112f, arg_1.b, arg_1.b.x, u_input.a.x))), 1137i >= ~2147483647i);
    global1 = 23189u;
    var var_0 = (arg_1.a / -max(-(-305f), 662f)) - 296f;
    let var_1 = (((~vec2<u32>(global0[34066u], 4294967295u) & ~vec2<u32>(0u, 5880u)) | vec2<u32>(select(global0[global0[global0[2384u]]], 123922u, arg_1.c), 4294967295u)) ^ vec2<u32>(~max(0u, 4294967295u), (global0[global0[global0[global0[50505u]]]] >> global0[0u]) + ~0u)) * ~abs(~(vec2<u32>(global0[global0[global0[27977u]]], 47601u) | vec2<u32>(global0[global0[4294967295u]], 0u)));
    global0 = array<u32, 24>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = clamp(dot(vec2<i32>(u_input.a.x >> 35322u, ~u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x) * u_input.a.ww), -10183i, u_input.a.x / (u_input.a.x ^ abs(u_input.a.x))) >= ~firstLeadingBit(2147483647i);
    let var_1 = dot(~(vec2<i32>(firstTrailingBit(u_input.a.x), i32(-2147483648)) + ~vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(dot(u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)) ^ 41061i, ~(~u_input.a.x) | i32(-2147483648)));
    let var_2 = -var_1 * 2147483647i;
    var var_3 = ~abs(-1i);
    let var_4 = func_7(~(-(10865i & var_2) - u_input.a.x), Struct_1(-361f, !(!func_1()), !(!any(vec2<bool>(false, false))), ~u_input.a.x));
    var_3 = ~(-5228i);
    var var_5 = vec3<bool>(func_3(vec3<bool>(false, var_4.b.x, all(vec4<bool>(var_4.b.x, false, true, var_4.b.x))), var_4, func_7(var_4.d * -var_1, func_2())).x, var_4.c, false && any(!(!vec3<bool>(var_4.b.x, var_4.b.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<f32>(-(-1285f), exp2(471f), 1238f));
}

