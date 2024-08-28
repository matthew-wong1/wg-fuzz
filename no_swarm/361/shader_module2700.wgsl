// {"0:0":[93,191,91,113,237,55,72,187,176,79,254,192]}
// Seed: 9089447912691074141

struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(vec2<i32>(-21513i, -4223i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(true), Struct_1(true)), 0u, Struct_3(16011u, false, vec3<f32>(-774f, 786f, -1615f), true))), Struct_5(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(false), Struct_1(false)), 81327u, Struct_3(0u, true, vec3<f32>(605f, -1132f, 280f), false))), Struct_5(vec2<i32>(38371i, 40683i), Struct_1(false), Struct_4(Struct_2(true, Struct_1(false), Struct_1(false)), 0u, Struct_3(50524u, false, vec3<f32>(-1129f, 1087f, -105f), false))), Struct_5(vec2<i32>(-52777i, -25517i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(false), Struct_1(false)), 1u, Struct_3(1u, false, vec3<f32>(-561f, 260f, 301f), true))), Struct_5(vec2<i32>(-13655i, -1i), Struct_1(true), Struct_4(Struct_2(true, Struct_1(false), Struct_1(false)), 0u, Struct_3(4294967295u, true, vec3<f32>(1701f, 677f, 1000f), true))), Struct_5(vec2<i32>(36600i, 2147483647i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(false), Struct_1(true)), 0u, Struct_3(22147u, false, vec3<f32>(-1000f, 904f, -1000f), false))), Struct_5(vec2<i32>(-16208i, 2147483647i), Struct_1(true), Struct_4(Struct_2(false, Struct_1(false), Struct_1(false)), 1u, Struct_3(4294967295u, false, vec3<f32>(-1384f, 1451f, 1000f), false))), Struct_5(vec2<i32>(1i, -1i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(true), Struct_1(true)), 22698u, Struct_3(26392u, false, vec3<f32>(1486f, -798f, -169f), false))), Struct_5(vec2<i32>(-6490i, -14132i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(true), Struct_1(true)), 1u, Struct_3(1u, false, vec3<f32>(142f, -355f, 1487f), true))), Struct_5(vec2<i32>(2147483647i, 0i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(true), Struct_1(false)), 60997u, Struct_3(1u, false, vec3<f32>(277f, -524f, 380f), true))), Struct_5(vec2<i32>(1i, -49065i), Struct_1(false), Struct_4(Struct_2(true, Struct_1(true), Struct_1(false)), 0u, Struct_3(18427u, false, vec3<f32>(323f, 1051f, 436f), true))), Struct_5(vec2<i32>(2667i, -3142i), Struct_1(true), Struct_4(Struct_2(false, Struct_1(false), Struct_1(false)), 22330u, Struct_3(4294967295u, false, vec3<f32>(471f, -775f, 255f), true))), Struct_5(vec2<i32>(2147483647i, 2147483647i), Struct_1(false), Struct_4(Struct_2(false, Struct_1(false), Struct_1(true)), 29873u, Struct_3(0u, true, vec3<f32>(-152f, 550f, -1384f), true))), Struct_5(vec2<i32>(-32683i, 9111i), Struct_1(true), Struct_4(Struct_2(true, Struct_1(false), Struct_1(true)), 14701u, Struct_3(9476u, false, vec3<f32>(1000f, 531f, 708f), false))), Struct_5(vec2<i32>(i32(-2147483648), -43224i), Struct_1(true), Struct_4(Struct_2(false, Struct_1(false), Struct_1(false)), 7743u, Struct_3(0u, true, vec3<f32>(1482f, 2873f, 453f), true))));

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, true, false, false, false, false, false, true, true, false, false, false, false, true, false, true, false, true, true, true, true, true, true, false, true, true, false, false, true, true, true);

var<private> global2: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(62921u, 46818u, 46602u, 24854u), vec4<u32>(1u, 27817u, 48979u, 99187u), vec4<u32>(0u, 85634u, 1u, 24358u), vec4<u32>(4294967295u, 15269u, 38256u, 4294967295u), vec4<u32>(1u, 16144u, 4294967295u, 1621u), vec4<u32>(5301u, 4294967295u, 27218u, 4294967295u), vec4<u32>(1u, 43768u, 1u, 34432u), vec4<u32>(59486u, 6947u, 4294967295u, 2105u), vec4<u32>(72233u, 0u, 1u, 1u), vec4<u32>(1u, 34984u, 12775u, 4294967295u), vec4<u32>(38393u, 9980u, 1u, 1u), vec4<u32>(1u, 4294967295u, 46871u, 0u), vec4<u32>(1u, 4294967295u, 46792u, 0u), vec4<u32>(0u, 4294967295u, 24035u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 23713u, 27037u, 31472u), vec4<u32>(39447u, 1u, 69879u, 40995u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(1u, 115852u, 0u, 1u), vec4<u32>(5025u, 1u, 1u, 24584u), vec4<u32>(47599u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 4807u, 4294967295u, 1u), vec4<u32>(52704u, 0u, 0u, 75442u), vec4<u32>(37157u, 4347u, 22941u, 71082u), vec4<u32>(0u, 24984u, 4947u, 4294967295u), vec4<u32>(49714u, 29196u, 4294967295u, 1u), vec4<u32>(75038u, 31446u, 0u, 4294967295u));

var<private> global3: vec2<u32> = vec2<u32>(11909u, 55762u);

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: bool, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_0.c.c.c.zz;
    var var_1 = vec3<i32>(~(arg_1 | -u_input.c), -7596i, clamp(u_input.c, max(-14657i, 0i) | 2147483647i, u_input.c)) * vec3<i32>(arg_3 ^ firstLeadingBit(u_input.c), i32(-2147483648), -5870i ^ -16015i);
    var var_2 = arg_0.b;
    var var_3 = 1u;
    var var_4 = -(-380f);
    return vec2<bool>(true, var_2.a);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_5) -> u32 {
    global2 = array<vec4<u32>, 27>();
    var var_0 = !(!select(!select(vec3<bool>(arg_2.b.a, false, false), vec3<bool>(global1[0u], global1[1u], global1[1u]), vec3<bool>(false, global1[32136u], false)), select(!vec3<bool>(true, global1[u_input.b], true), !vec3<bool>(global1[arg_2.c.c.a], global1[global3.x], arg_2.c.a.c.a), global1[firstTrailingBit(global3.x)]), all(func_3(Struct_5(arg_2.a, arg_2.c.a.b, arg_2.c), arg_1, global1[4294967295u], arg_2.a.x))));
    let var_1 = arg_2.c.a;
    let var_2 = vec3<bool>(any(!(!select(vec4<bool>(false, var_0.x, true, arg_2.c.a.c.a), vec4<bool>(global1[arg_2.c.c.a], global1[u_input.b], global1[1u], arg_2.c.c.b), var_0.x))), !(!false), global1[~(~(arg_2.c.c.a / (67591u >> arg_0.x)))]);
    var_0 = var_2;
    return 26766u;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = 1u;
    var var_1 = dot(clamp(vec4<u32>(dot(vec3<u32>(u_input.b, 1u, global3.x), vec3<u32>(u_input.a, global3.x, 15284u)), 30218u >> var_0, 4294967295u, 32208u) * global2[func_2(abs(vec2<u32>(u_input.b, 49567u)), 0i, Struct_5(vec2<i32>(1i, 14861i), Struct_1(arg_1), Struct_4(Struct_2(true, Struct_1(global1[28762u]), Struct_1(false)), global3.x, Struct_3(u_input.b, global1[u_input.b], vec3<f32>(arg_2, -2643f, -942f), global1[2139u]))))], reverseBits(global2[0u] ^ ~vec4<u32>(global3.x, 70574u, 0u, var_0)), ~vec4<u32>(global3.x + 1u, 1u >> var_0, global3.x % global3.x, ~116303u)), vec4<u32>(0u, 0u, ~(~4294967295u), u_input.a));
    let var_2 = ~vec2<i32>(firstTrailingBit(max(u_input.c, abs(i32(-2147483648)))), abs(select(reverseBits(u_input.c), dot(vec3<i32>(-1i, u_input.c, -1897i), vec3<i32>(-27427i, 1i, u_input.c)), 0u <= u_input.b)));
    var var_3 = Struct_2(!global1[4294967295u], Struct_1(all(select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, global1[global3.x], false, false), true), vec4<bool>(true, global1[global3.x], true, true), func_3(Struct_5(var_2, Struct_1(global1[u_input.b]), Struct_4(Struct_2(true, Struct_1(false), Struct_1(false)), 32270u, Struct_3(var_0, false, vec3<f32>(-702f, -1000f, -187f), arg_1))), var_2.x, true, i32(-2147483648)).x))), Struct_1(!all(!vec4<bool>(arg_1, global1[var_0], false, true))));
    let var_4 = -vec3<f32>(-sign(select(1145f, -703f, false)), floor((arg_0.x * arg_0.x) + -(-1000f)), -265f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(!select(!global1[global3.x], false, func_1(vec2<f32>(184f, -416f), false, -1497f)), any(vec4<bool>(!global1[12329u], false, any(vec2<bool>(global1[4294967295u], global1[4294967295u])), !false)), ~u_input.c == u_input.c), select(!select(vec3<bool>(false, global1[0u], false), !vec3<bool>(true, global1[global3.x], false), !vec3<bool>(global1[0u], global1[1u], false)), select(vec3<bool>(func_3(global0[global3.x], -64124i, true, 1i).x, 1u <= u_input.a, 1190f == 554f), !vec3<bool>(global1[u_input.b], false, true), vec3<bool>(false & false, global1[u_input.b - global3.x], func_3(Struct_5(vec2<i32>(-1i, u_input.c), Struct_1(true), Struct_4(Struct_2(global1[u_input.b], Struct_1(global1[1u]), Struct_1(true)), 28057u, Struct_3(1u, false, vec3<f32>(1474f, -167f, -520f), global1[18222u]))), -1i, true, 17891i).x)), vec3<bool>(false, false | global1[global3.x >> 116222u], true)), round((-1060f / 844f) + -785f) <= 1405f);
    var var_1 = max(14361i, i32(-2147483648));
    var var_2 = Struct_2(!any(!vec4<bool>(true, var_0.x, true, false)) != func_3(global0[u_input.a], 25345i, dot(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.c, 44852i)) > firstTrailingBit(u_input.c), -u_input.c).x, Struct_1(!var_0.x), Struct_1(!false));
    var var_3 = -floor(vec3<f32>(-1000f / 757f, -(-267f), -2139f) - vec3<f32>(-432f, 978f - -1000f, -166f));
    global3 = ~(vec2<u32>(u_input.b % (1u >> 4294967295u), global3.x) + ~(vec2<u32>(0u, u_input.a) >> ~vec2<u32>(global3.x, 12262u)));
    let var_4 = abs(0u);
    var var_5 = firstTrailingBit(~global2[0u]);
    var var_6 = vec2<i32>(15100i, firstTrailingBit(u_input.c) % u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, firstLeadingBit(~var_6.x) ^ -abs(-13498i), select(~firstTrailingBit(~var_5.xyw), reverseBits(~max(vec3<u32>(u_input.a, 4294967295u, var_4), var_5.zyz)), func_1(max(vec2<f32>(1000f, 2133f), vec2<f32>(var_3.x, var_3.x)), var_0.x, -942f + 1000f) & all(vec2<bool>(true, true))), 0u, vec4<i32>(var_6.x % 13068i, 0i, -1i, min(~min(-27715i, 38638i), var_6.x)));
}

