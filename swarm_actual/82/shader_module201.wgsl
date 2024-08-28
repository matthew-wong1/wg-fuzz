// {"0:0":[47,0,169,45,141,123,67,190,113,197,22,84,53,138,44,77]}
// Seed: 9092245105539333268

struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(0i, -12974i, -50443i, -30067i, i32(-2147483648), 2147483647i, -1099i, 9329i, 17104i, 2147483647i, i32(-2147483648), -33294i, 4566i, 0i, 1i, 5388i, 48647i, 15390i, i32(-2147483648), 20308i, -1i, 0i, -29588i, 37796i);

var<private> global1: bool;

var<private> global2: vec4<u32> = vec4<u32>(1u, 4294967295u, 76281u, 41528u);

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    global2 = ~vec4<u32>(4294967295u, 22965u, 0u | u_input.c, 88376u);
    let var_0 = Struct_3(Struct_1((exp2(vec4<f32>(2206f, 630f, arg_0.b.a.x, arg_0.a)) / select(vec4<f32>(arg_0.a, arg_0.a, arg_0.b.a.x, arg_0.c.a.x), arg_0.e.a.a, true)) * arg_0.e.d.a), 1155f, arg_0.d.c, Struct_2(arg_0.c, vec2<i32>(u_input.b, countOneBits(8235i ^ global0[1u])), sign(-(-vec4<f32>(-635f, 756f, -761f, -1000f))), Struct_1(max(select(vec4<f32>(arg_0.d.a.a.x, -340f, -771f, 2808f), arg_0.d.c.d.a, false), trunc(vec4<f32>(arg_0.a, 194f, -990f, arg_0.c.a.x))))));
    global2 = ~vec4<u32>(u_input.c, reverseBits(clamp(~0u, ~u_input.c, clamp(u_input.c, 12497u, 4294967295u))), abs(4294967295u), global2.x);
    var var_1 = -vec3<f32>(1464f, abs(var_0.c.a.a.x), -(-640f));
    let var_2 = arg_0.e;
    return abs(exp2(arg_0.d.a.a.x + sign(round(1652f))));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = countOneBits(-firstTrailingBit(-vec4<i32>(u_input.a.x, 32403i, global0[u_input.c], arg_0)));
    var var_1 = step(select(vec3<f32>(-func_3(Struct_4(225f, Struct_1(vec4<f32>(-432f, 670f, -294f, 383f)), Struct_1(vec4<f32>(-1764f, 1000f, 1000f, -1085f)), Struct_3(Struct_1(vec4<f32>(2594f, 711f, -1780f, 161f)), -998f, Struct_2(Struct_1(vec4<f32>(-497f, 2056f, -545f, 310f)), vec2<i32>(var_0.x, 31243i), vec4<f32>(406f, -2575f, -1684f, -1021f), Struct_1(vec4<f32>(156f, -1489f, -1000f, 394f))), Struct_2(Struct_1(vec4<f32>(1000f, 777f, 1361f, 641f)), vec2<i32>(-1i, u_input.a.x), vec4<f32>(-212f, -1267f, 1157f, -291f), Struct_1(vec4<f32>(130f, -1139f, 599f, 1153f)))), Struct_2(Struct_1(vec4<f32>(-1000f, -176f, -137f, 172f)), vec2<i32>(-3882i, u_input.a.x), vec4<f32>(-833f, 1299f, 887f, -898f), Struct_1(vec4<f32>(1537f, -521f, -2008f, 738f)))), 72577i), floor(-531f), -round(-874f)), vec3<f32>(-(-401f), (498f * -478f) + abs(434f), round(997f)), vec3<bool>(false, !false, true)), vec3<f32>(sign(469f), exp2(-(-(-2614f))), round(-970f)));
    var var_2 = vec4<u32>(0u, global2.x, ~countOneBits(~global2.x), 55181u);
    global1 = true;
    var_2 = ~vec4<u32>(117955u, firstLeadingBit(u_input.c), dot(vec3<u32>(global2.x, global2.x, 61421u), vec3<u32>(u_input.c, u_input.c, 59004u)), 32850u) - max(reverseBits(vec4<u32>(1u, u_input.c, var_2.x - 90235u, countOneBits(0u))), ~(~vec4<u32>(u_input.c, var_2.x, var_2.x, 0u)));
    return abs(29723u);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = func_2(global0[(0u & (reverseBits(0u) % global2.x)) - u_input.c]);
    let var_1 = Struct_3(arg_1.d, func_3(Struct_4(968f, arg_1.d, Struct_1(-vec4<f32>(arg_1.c.x, -1000f, arg_1.d.a.x, -1000f)), Struct_3(arg_1.d, arg_1.a.a.x, arg_1, arg_1), arg_1), 20862i ^ dot(abs(vec3<i32>(arg_1.b.x, 2147483647i, arg_1.b.x)), firstLeadingBit(vec3<i32>(global0[60887u], arg_1.b.x, 16528i)))), arg_1, Struct_2(arg_1.d, ~select(~arg_1.b, arg_0, true), arg_1.d.a * -(arg_1.c / vec4<f32>(-1000f, arg_1.a.a.x, -235f, arg_1.d.a.x)), arg_1.a));
    global1 = true;
    global1 = any(!select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), var_1.d.d.a.x < arg_1.c.x), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), !false), vec3<bool>(false, all(vec3<bool>(true, false, false)), !false)));
    let var_2 = abs(~(-(arg_1.b * var_1.d.b)) >> (~vec2<u32>(27550u, 15657u) | vec2<u32>(498u, u_input.c)));
    return (-vec4<f32>(var_1.a.a.x, arg_1.c.x * arg_1.c.x, -1297f, round(942f)) + -arg_1.d.a) - (vec4<f32>(var_1.b, -var_1.d.c.x, min(-1487f / var_1.d.d.a.x, -var_1.a.a.x), max(arg_1.c.x, 819f)) * (abs(vec4<f32>(395f, -438f, 680f, arg_1.a.a.x) - vec4<f32>(var_1.d.c.x, arg_1.a.a.x, var_1.a.a.x, arg_1.d.a.x)) * var_1.c.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    var var_0 = select(vec2<bool>(!(!true | !false), all(select(vec2<bool>(false, true), !vec2<bool>(false, false), select(false, true, true)))), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(!(-5163i <= 0i), !(21074u <= 4294967295u)), !(!(!false))), !(!(!vec2<bool>(true, true))));
    global2 = ~(~(firstLeadingBit(vec4<u32>(u_input.c, 4294967295u, u_input.c, global2.x) << vec4<u32>(global2.x, 17388u, u_input.c, 4294967295u)) * clamp(vec4<u32>(23315u, u_input.c, 81098u, 0u), abs(vec4<u32>(0u, u_input.c, 6698u, 6390u)), vec4<u32>(0u, global2.x, global2.x, 0u))));
    global0 = array<i32, 24>();
    let var_1 = arg_1.a;
    let var_2 = any(select(select(vec3<bool>(var_0.x & var_0.x, var_0.x, var_0.x), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_0.x), vec3<bool>(true, false, true)), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), vec3<bool>(!select(var_0.x, false, var_0.x), var_0.x, any(select(vec2<bool>(false, true), vec2<bool>(true, false), var_0.x))), vec3<bool>(true, !(!false), true)));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(step(-393f, ceil(-1046f) * step(-1696f, 463f)), Struct_1(step(-vec4<f32>(-2062f, 321f, 253f, 1461f), vec4<f32>(-540f, -736f, -125f, -759f))), Struct_1(func_1(u_input.a, Struct_2(Struct_1(vec4<f32>(880f, 854f, -407f, 395f)), u_input.a, vec4<f32>(592f, 511f, 716f, 1032f), Struct_1(vec4<f32>(642f, 1303f, -259f, -1165f))))), Struct_3(Struct_1(-vec4<f32>(-759f, -1315f, 2187f, 412f)), -153f, Struct_2(Struct_1(vec4<f32>(-420f, -736f, 259f, -1525f)), u_input.a % u_input.a, select(vec4<f32>(-484f, -255f, -1000f, 2523f), vec4<f32>(-1808f, -1000f, 1000f, -706f), vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(1664f, 977f, 432f, 482f))), Struct_2(Struct_1(vec4<f32>(-498f, 1090f, 1224f, -251f)), u_input.a, -vec4<f32>(648f, 778f, 907f, -922f), Struct_1(vec4<f32>(-736f, -586f, 1695f, 2388f)))), Struct_2(Struct_1(-vec4<f32>(-1154f, -369f, -1308f, 1107f)), vec2<i32>(~u_input.a.x, -11938i % global0[48190u]), vec4<f32>(253f + 252f, -(-2691f), -426f, 142f), Struct_1(floor(vec4<f32>(646f, -634f, 534f, -759f))))), Struct_1(-min(vec4<f32>(-857f, -221f, -1034f, 1000f) / vec4<f32>(1000f, 1281f, 895f, 2002f), step(vec4<f32>(-745f, 501f, -343f, 515f), vec4<f32>(238f, -383f, -313f, -1276f)))));
    var var_1 = Struct_4(-3009f * func_3(Struct_4(-1436f, func_4(Struct_4(var_0.c.c.x, var_0.a, var_0.c.a, Struct_3(var_0.c.d, 312f, var_0.d, Struct_2(var_0.a, var_0.d.b, vec4<f32>(var_0.d.c.x, var_0.d.a.a.x, 210f, 794f), var_0.d.a)), Struct_2(var_0.c.d, var_0.d.b, var_0.d.c, Struct_1(vec4<f32>(229f, 723f, var_0.a.a.x, -1320f)))), var_0.a).c.d, func_4(Struct_4(var_0.c.a.a.x, var_0.a, var_0.d.a, var_0, var_0.c), Struct_1(var_0.d.d.a)).c.a, var_0, func_4(Struct_4(var_0.b, var_0.d.d, Struct_1(vec4<f32>(530f, var_0.c.d.a.x, var_0.c.d.a.x, var_0.b)), var_0, var_0.d), Struct_1(vec4<f32>(-498f, var_0.d.a.a.x, var_0.a.a.x, var_0.b))).d), -var_0.d.b.x), func_4(Struct_4(-536f, Struct_1(sign(vec4<f32>(var_0.a.a.x, -162f, 456f, var_0.b))), func_4(Struct_4(var_0.b, var_0.d.d, Struct_1(vec4<f32>(var_0.a.a.x, 412f, -234f, 509f)), Struct_3(Struct_1(vec4<f32>(-188f, var_0.d.a.a.x, 483f, var_0.c.c.x)), var_0.d.c.x, Struct_2(var_0.a, var_0.c.b, vec4<f32>(var_0.c.a.a.x, var_0.b, var_0.c.c.x, -112f), Struct_1(var_0.a.a)), Struct_2(Struct_1(var_0.a.a), vec2<i32>(1i, -29676i), vec4<f32>(1234f, var_0.b, var_0.d.a.a.x, -997f), Struct_1(var_0.d.d.a))), var_0.c), var_0.a).a, Struct_3(var_0.d.a, -385f, func_4(Struct_4(-598f, Struct_1(var_0.a.a), var_0.a, Struct_3(var_0.a, 1737f, var_0.c, var_0.c), var_0.d), var_0.c.d).c, Struct_2(var_0.a, vec2<i32>(u_input.b, u_input.b), vec4<f32>(var_0.a.a.x, var_0.c.a.a.x, var_0.c.c.x, var_0.d.a.a.x), var_0.c.d)), Struct_2(Struct_1(vec4<f32>(var_0.a.a.x, 240f, var_0.a.a.x, var_0.b)), select(u_input.a, vec2<i32>(u_input.b, global0[u_input.c]), true), trunc(vec4<f32>(858f, 663f, var_0.a.a.x, var_0.d.c.x)), Struct_1(vec4<f32>(var_0.c.c.x, var_0.b, 1121f, -466f)))), Struct_1(-var_0.d.d.a * var_0.c.d.a)).a, func_4(Struct_4(-(-var_0.c.a.a.x), var_0.d.d, func_4(Struct_4(-307f, Struct_1(var_0.d.d.a), var_0.a, var_0, Struct_2(var_0.d.d, vec2<i32>(-27288i, global0[4294967295u]), vec4<f32>(-1224f, -146f, var_0.a.a.x, 1985f), Struct_1(var_0.a.a))), Struct_1(var_0.c.a.a)).a, func_4(Struct_4(var_0.c.a.a.x, var_0.d.a, Struct_1(vec4<f32>(-1000f, var_0.c.c.x, var_0.b, var_0.b)), var_0, Struct_2(var_0.a, vec2<i32>(42569i, global0[1u]), var_0.c.c, var_0.d.d)), func_4(Struct_4(-1124f, Struct_1(vec4<f32>(var_0.b, 793f, var_0.c.d.a.x, -852f)), var_0.c.d, var_0, Struct_2(Struct_1(var_0.a.a), vec2<i32>(-20494i, 44759i), vec4<f32>(566f, var_0.d.d.a.x, -1144f, var_0.a.a.x), var_0.d.d)), var_0.a).c.a), func_4(Struct_4(var_0.d.c.x, Struct_1(var_0.a.a), var_0.d.a, Struct_3(var_0.c.d, var_0.b, var_0.d, var_0.c), var_0.c), Struct_1(var_0.c.d.a)).c), var_0.d.a).a, var_0, func_4(Struct_4(max(min(var_0.b, var_0.d.c.x), 1319f + -640f), Struct_1(var_0.d.d.a + vec4<f32>(var_0.c.c.x, var_0.d.d.a.x, var_0.b, -1301f)), Struct_1(-var_0.c.d.a), func_4(Struct_4(var_0.a.a.x, var_0.a, var_0.d.d, var_0, Struct_2(Struct_1(var_0.d.d.a), u_input.a, var_0.c.c, var_0.c.d)), var_0.c.a), Struct_2(func_4(Struct_4(1154f, Struct_1(var_0.d.c), var_0.c.a, var_0, Struct_2(var_0.d.d, u_input.a, var_0.c.c, var_0.d.d)), Struct_1(var_0.c.c)).c.d, vec2<i32>(u_input.b, u_input.b), var_0.d.d.a, func_4(Struct_4(-962f, var_0.a, Struct_1(var_0.d.a.a), var_0, Struct_2(var_0.a, var_0.c.b, vec4<f32>(133f, var_0.c.a.a.x, -136f, var_0.a.a.x), var_0.a)), var_0.a).a)), func_4(Struct_4(183f * var_0.d.d.a.x, func_4(Struct_4(var_0.a.a.x, Struct_1(vec4<f32>(var_0.b, -616f, var_0.a.a.x, var_0.a.a.x)), var_0.c.a, var_0, var_0.d), Struct_1(vec4<f32>(var_0.d.c.x, var_0.c.a.a.x, var_0.b, var_0.a.a.x))).a, func_4(Struct_4(-2174f, Struct_1(vec4<f32>(var_0.c.c.x, var_0.d.c.x, var_0.a.a.x, -697f)), Struct_1(var_0.a.a), Struct_3(Struct_1(var_0.a.a), var_0.a.a.x, Struct_2(var_0.d.d, u_input.a, var_0.a.a, Struct_1(var_0.a.a)), var_0.d), var_0.c), var_0.c.d).c.a, func_4(Struct_4(var_0.b, var_0.d.d, var_0.d.a, Struct_3(var_0.c.d, -1734f, var_0.c, var_0.c), var_0.d), var_0.a), var_0.d), func_4(Struct_4(1070f, var_0.c.d, Struct_1(vec4<f32>(var_0.d.c.x, -137f, var_0.d.d.a.x, var_0.a.a.x)), var_0, Struct_2(var_0.d.a, vec2<i32>(i32(-2147483648), var_0.c.b.x), vec4<f32>(var_0.b, -1000f, 125f, var_0.d.c.x), var_0.a)), var_0.a).a).d.a).c);
    let var_2 = Struct_4(var_0.b, var_1.d.c.d, func_4(Struct_4(1501f, func_4(Struct_4(1419f, Struct_1(var_1.d.a.a), var_0.a, var_0, var_1.e), func_4(Struct_4(-1000f, Struct_1(var_1.d.d.d.a), var_1.d.d.a, var_0, var_0.c), var_0.a).a).c.a, func_4(Struct_4(259f, var_1.c, Struct_1(var_1.e.a.a), Struct_3(Struct_1(var_1.e.c), var_1.b.a.x, var_1.d.d, var_0.c), Struct_2(Struct_1(vec4<f32>(-1166f, var_1.e.c.x, 1395f, var_1.a)), var_0.d.b, var_0.c.c, var_1.e.d)), Struct_1(var_0.d.d.a)).d.a, func_4(Struct_4(1309f, var_0.a, var_1.b, var_0, Struct_2(Struct_1(vec4<f32>(-1000f, -115f, var_0.a.a.x, var_0.d.a.a.x)), vec2<i32>(var_0.c.b.x, 2147483647i), vec4<f32>(993f, -1444f, var_0.d.c.x, 1431f), var_1.b)), Struct_1(var_1.b.a)), var_0.c), func_4(Struct_4(func_4(Struct_4(var_0.a.a.x, var_0.c.a, Struct_1(vec4<f32>(var_1.b.a.x, var_1.c.a.x, var_0.d.c.x, var_1.d.a.a.x)), var_1.d, var_1.d.c), var_0.a).a.a.x, Struct_1(var_1.d.a.a), func_4(Struct_4(var_0.d.d.a.x, Struct_1(var_1.e.a.a), Struct_1(vec4<f32>(-1000f, 1355f, var_1.d.a.a.x, 550f)), Struct_3(var_1.e.d, 985f, Struct_2(Struct_1(var_1.e.c), var_0.d.b, vec4<f32>(var_0.a.a.x, 368f, var_1.e.a.a.x, -496f), Struct_1(var_1.b.a)), var_0.c), Struct_2(var_1.c, vec2<i32>(0i, -58235i), vec4<f32>(-576f, var_0.b, var_1.b.a.x, 992f), var_1.e.d)), Struct_1(vec4<f32>(var_1.d.c.d.a.x, 1000f, 555f, var_0.b))).c.a, Struct_3(var_0.c.a, 1752f, var_1.e, var_0.c), var_1.d.d), Struct_1(vec4<f32>(271f, var_1.c.a.x, var_0.a.a.x, var_0.b))).c.a).d.d, Struct_3(Struct_1(vec4<f32>(var_1.c.a.x, var_1.b.a.x, exp2(var_0.c.d.a.x), min(-569f, var_0.c.d.a.x))), max(-1117f, -(-var_0.d.c.x)), Struct_2(Struct_1(round(var_1.c.a)), ~u_input.a, -(-vec4<f32>(var_1.e.a.a.x, 570f, var_1.c.a.x, var_1.a)), Struct_1(var_1.d.c.c)), var_0.c), Struct_2(var_1.d.a, vec2<i32>(func_4(Struct_4(-1552f, var_0.a, Struct_1(var_0.d.c), Struct_3(Struct_1(var_0.c.c), var_1.a, Struct_2(Struct_1(var_1.d.a.a), vec2<i32>(u_input.a.x, var_1.d.d.b.x), vec4<f32>(-1000f, var_0.b, var_1.e.a.a.x, -1750f), Struct_1(var_0.a.a)), var_1.e), Struct_2(Struct_1(var_1.b.a), vec2<i32>(var_1.e.b.x, u_input.a.x), var_0.a.a, var_1.e.a)), var_1.d.a).d.b.x, ~u_input.a.x), var_0.d.c, Struct_1(sign(var_1.b.a))));
    let var_3 = all(vec4<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false, all(vec4<bool>(!true, all(vec2<bool>(true, true)), any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false)))), !(1000f < 963f) || any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false))));
    global0 = array<i32, 24>();
    let var_4 = Struct_4(-(-(-(-222f))), Struct_1(-vec4<f32>(-200f, var_1.c.a.x - -631f, 866f, var_2.d.b)), func_4(Struct_4(-(-496f), var_2.c, func_4(Struct_4(var_1.c.a.x, Struct_1(vec4<f32>(-439f, 350f, var_1.e.c.x, 1128f)), Struct_1(var_1.c.a), Struct_3(var_0.a, -1001f, Struct_2(Struct_1(var_1.e.c), vec2<i32>(var_1.e.b.x, u_input.a.x), var_0.d.c, Struct_1(var_0.c.c)), Struct_2(Struct_1(vec4<f32>(var_2.b.a.x, var_0.d.a.a.x, 910f, var_2.d.a.a.x)), var_2.e.b, var_0.c.a.a, Struct_1(vec4<f32>(var_1.c.a.x, 266f, 496f, 180f)))), var_1.e), func_4(Struct_4(1872f, var_0.a, var_0.d.d, var_2.d, var_1.e), var_2.b).d.a).d.d, var_1.d, Struct_2(var_0.a, var_1.d.c.b, func_1(var_0.c.b, var_0.d), Struct_1(var_1.b.a))), func_4(var_2, var_0.a).c.a).a, var_0, func_4(var_2, Struct_1(-(var_0.c.a.a / var_2.b.a))).c);
    let x = u_input.a;
    s_output = StorageBuffer(floor((step(113f, 1141f) - -var_1.d.b) * (ceil(var_0.b) * -710f)), var_2.d.c.c.yzx, -(-(-var_2.e.c.x)) - round(var_2.e.a.a.x));
}

