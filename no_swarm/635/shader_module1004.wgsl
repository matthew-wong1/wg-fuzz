// {"0:0":[2,5,5,213,226,34,118,110,37,130,66,107,212,202,249,236]}
// Seed: 17073654138144717413

struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_3(vec4<i32>(27142i, i32(-2147483648), 0i, 2147483647i), true), vec4<f32>(-110f, 1692f, -1000f, -310f), Struct_1(24500u, vec3<i32>(18729i, 1i, 8444i), vec4<u32>(4294967295u, 0u, 1u, 45700u), 0i, vec4<f32>(2237f, -781f, -1000f, -1454f)), 0u, -1094f), Struct_4(Struct_3(vec4<i32>(-22344i, i32(-2147483648), 1i, 1i), false), vec4<f32>(1000f, 1000f, 1056f, -372f), Struct_1(4294967295u, vec3<i32>(-30743i, 0i, 0i), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), 40829i, vec4<f32>(439f, -1144f, 527f, -1834f)), 0u, 108f), Struct_4(Struct_3(vec4<i32>(-2659i, 1i, 0i, 8646i), false), vec4<f32>(-557f, 1464f, 873f, 445f), Struct_1(4294967295u, vec3<i32>(2147483647i, -1i, 54500i), vec4<u32>(13807u, 1u, 1469u, 1u), 38563i, vec4<f32>(-875f, 1040f, 1657f, -1182f)), 4294967295u, 218f), Struct_4(Struct_3(vec4<i32>(0i, 19054i, -6626i, -4378i), false), vec4<f32>(-219f, 198f, -2931f, -708f), Struct_1(72317u, vec3<i32>(i32(-2147483648), -3763i, -1i), vec4<u32>(71204u, 4294967295u, 21623u, 1u), 68431i, vec4<f32>(-147f, -195f, -224f, 995f)), 496u, 720f), Struct_4(Struct_3(vec4<i32>(2147483647i, 1i, 0i, 2400i), true), vec4<f32>(-1010f, -2020f, 856f, 195f), Struct_1(0u, vec3<i32>(-27590i, -37923i, 2147483647i), vec4<u32>(5892u, 1u, 4294967295u, 0u), -31967i, vec4<f32>(672f, -116f, 771f, 844f)), 4119u, 1639f), Struct_4(Struct_3(vec4<i32>(0i, 38312i, 43556i, 11410i), true), vec4<f32>(-223f, -1000f, -540f, -1269f), Struct_1(48042u, vec3<i32>(1i, 13281i, 1i), vec4<u32>(51561u, 31838u, 74110u, 1u), i32(-2147483648), vec4<f32>(522f, -999f, -1265f, -151f)), 0u, -445f), Struct_4(Struct_3(vec4<i32>(-27041i, 1i, -8786i, -10310i), false), vec4<f32>(224f, -339f, -1358f, -1322f), Struct_1(22760u, vec3<i32>(-1i, 2147483647i, 0i), vec4<u32>(26845u, 51157u, 1u, 4959u), -46518i, vec4<f32>(-1715f, 1028f, 174f, -1000f)), 0u, 878f), Struct_4(Struct_3(vec4<i32>(-1349i, 24187i, 31416i, 1i), true), vec4<f32>(-1278f, -284f, -594f, -1000f), Struct_1(97586u, vec3<i32>(-17441i, -1i, i32(-2147483648)), vec4<u32>(19079u, 65052u, 19738u, 1998u), 5655i, vec4<f32>(-1667f, -437f, 815f, 547f)), 57578u, -280f), Struct_4(Struct_3(vec4<i32>(-1i, -1247i, 17041i, -18258i), false), vec4<f32>(1710f, 655f, -2054f, 2426f), Struct_1(7046u, vec3<i32>(-46117i, 124745i, 2147483647i), vec4<u32>(4294967295u, 49668u, 34321u, 53739u), 31122i, vec4<f32>(-1140f, -1415f, -138f, -136f)), 18149u, -1485f), Struct_4(Struct_3(vec4<i32>(-10119i, -11554i, -1i, i32(-2147483648)), true), vec4<f32>(-222f, 1000f, -921f, -809f), Struct_1(35689u, vec3<i32>(47745i, 13091i, -94989i), vec4<u32>(31736u, 34032u, 37770u, 10123u), -27959i, vec4<f32>(-1000f, -1585f, -318f, 884f)), 12392u, -524f), Struct_4(Struct_3(vec4<i32>(2147483647i, -2070i, 1i, i32(-2147483648)), true), vec4<f32>(2116f, -221f, 460f, 1804f), Struct_1(4294967295u, vec3<i32>(32356i, i32(-2147483648), -4170i), vec4<u32>(1u, 1u, 4294967295u, 3244u), 23515i, vec4<f32>(902f, 1912f, -202f, 830f)), 6988u, -328f), Struct_4(Struct_3(vec4<i32>(15168i, -1i, i32(-2147483648), -1i), false), vec4<f32>(1000f, -152f, -473f, -2021f), Struct_1(1u, vec3<i32>(-22732i, -31i, 31839i), vec4<u32>(1314u, 4294967295u, 39445u, 4294967295u), 1i, vec4<f32>(-522f, 659f, -1533f, 870f)), 4294967295u, 2037f), Struct_4(Struct_3(vec4<i32>(4489i, 1i, -1i, -28395i), true), vec4<f32>(-1000f, -545f, -2001f, -849f), Struct_1(0u, vec3<i32>(-1i, -46425i, i32(-2147483648)), vec4<u32>(7517u, 0u, 49624u, 24620u), -33544i, vec4<f32>(243f, 1066f, 2734f, 997f)), 13997u, -285f), Struct_4(Struct_3(vec4<i32>(-53138i, -6064i, -43080i, 17769i), false), vec4<f32>(-258f, 1000f, -1134f, -832f), Struct_1(1u, vec3<i32>(5682i, 29270i, 14125i), vec4<u32>(66534u, 49511u, 52610u, 89821u), -12979i, vec4<f32>(2866f, 273f, 275f, 1563f)), 0u, -1748f), Struct_4(Struct_3(vec4<i32>(-1i, -15964i, 1i, -36106i), false), vec4<f32>(-824f, 376f, -141f, -1840f), Struct_1(46839u, vec3<i32>(-54069i, 1001i, -54617i), vec4<u32>(2787u, 836u, 4294967295u, 761u), 16246i, vec4<f32>(761f, 1400f, -134f, 253f)), 38448u, -1000f), Struct_4(Struct_3(vec4<i32>(0i, -23749i, -28692i, 2344i), false), vec4<f32>(671f, -1498f, 258f, -294f), Struct_1(134u, vec3<i32>(-11751i, 16815i, -1i), vec4<u32>(14685u, 1u, 1u, 0u), 0i, vec4<f32>(-740f, 919f, 368f, 204f)), 1u, -189f), Struct_4(Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 9402i, 1i), false), vec4<f32>(-553f, -1590f, 1623f, 546f), Struct_1(0u, vec3<i32>(i32(-2147483648), 1i, -13697i), vec4<u32>(1u, 4294967295u, 0u, 39577u), 1i, vec4<f32>(609f, -193f, 128f, 446f)), 1u, -1093f));

var<private> global2: array<u32, 23>;

fn func_3() -> vec3<f32> {
    let var_0 = Struct_4(Struct_3(firstTrailingBit(-vec4<i32>(u_input.a.x, 31400i, 1i, -1i) & -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), !any(!vec4<bool>(true, false, true, true))), vec4<f32>(-(-ceil(1210f)), -((1263f - 1366f) + -603f), max((-853f + -1989f) / sign(1584f), -trunc(199f)), -min(-767f + -963f, 2126f)), Struct_1(~20663u, ~vec3<i32>(~(i32(-2147483648)), 2147483647i, firstTrailingBit(u_input.a.x)), global0[4294967295u], u_input.a.x + u_input.a.x, floor(floor(vec4<f32>(1195f, -523f, 1000f, -1000f)) + sign(vec4<f32>(-1255f, 669f, 718f, -991f)))), ~u_input.b, -round(-(-(-394f))));
    let var_1 = 18392i >> var_0.d;
    let var_2 = var_0;
    let var_3 = Struct_4(var_0.a, ceil(ceil(vec4<f32>(min(var_0.c.e.x, 384f), -360f, var_2.c.e.x, var_0.b.x + var_0.b.x))), Struct_1(var_2.c.c.x, vec3<i32>(0i + var_0.c.b.x, u_input.a.x, u_input.a.x) % vec3<i32>(var_0.c.b.x, 5572i, min(i32(-2147483648), var_0.a.a.x)), ~var_2.c.c, -(-33787i << 95174u), var_2.b), u_input.b | var_0.d, var_0.c.e.x);
    let var_4 = Struct_3(abs(vec4<i32>(var_2.a.a.x * var_0.c.d, var_1, abs(0i), var_3.a.a.x) + -var_0.a.a), var_0.a.b);
    return var_2.c.e.wyx;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = -(-(~countOneBits(u_input.a.x)));
    var var_1 = vec3<f32>(arg_1.b.e.x, 167f, arg_1.b.e.x);
    global1 = array<Struct_4, 17>();
    let var_2 = arg_1.b.c.yy;
    var_1 = func_3() - (vec3<f32>(1285f, -var_1.x, -260f) / vec3<f32>(-arg_0, -arg_0, 384f));
    return arg_1;
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2(2464f, Struct_2(u_input.a.x, Struct_1(u_input.b, (vec3<i32>(45139i, 6075i, u_input.a.x) >> vec3<u32>(4294967295u, 1u, 23451u)) % countOneBits(vec3<i32>(0i, 0i, -25433i)), global0[9072u << 18700u], u_input.a.x, (vec4<f32>(-271f, 1097f, -2069f, 902f) * vec4<f32>(-1067f, -586f, -652f, 1000f)) * vec4<f32>(-240f, 1302f, 390f, -131f)), vec4<i32>(-34058i, max(u_input.a.x % 36430i, -22496i), dot(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -29648i), ~vec4<i32>(-2379i, u_input.a.x, u_input.a.x, i32(-2147483648))), 1i)));
    let var_1 = var_0.b.a;
    let var_2 = false;
    global0 = array<vec4<u32>, 9>();
    global2 = array<u32, 23>();
    return select(select(!vec4<bool>(var_2, select(var_2, var_2, var_2), any(vec2<bool>(false, false)), true), vec4<bool>(var_2, var_2, any(!vec2<bool>(var_2, false)), !true), any(select(select(vec3<bool>(var_2, true, false), vec3<bool>(true, false, var_2), vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(true, false, var_2), vec3<bool>(false, var_2, var_2)))), !select(!(!vec4<bool>(true, var_2, var_2, var_2)), select(!vec4<bool>(true, var_2, var_2, true), vec4<bool>(true, false, var_2, var_2), select(vec4<bool>(var_2, true, true, false), vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(true, true, false, false))), !(!var_2)), !select(select(!vec4<bool>(var_2, var_2, var_2, var_2), !vec4<bool>(false, true, var_2, var_2), true && true), vec4<bool>(!false, all(vec4<bool>(true, var_2, var_2, var_2)), all(vec4<bool>(true, false, var_2, var_2)), var_2), !(!false)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_4(arg_0, vec4<f32>(-(-arg_1.e.x) / -arg_1.e.x, exp2(exp2(exp2(654f))), -1371f, -453f), Struct_1(~select(arg_1.a, u_input.b / 13462u, arg_0.b), ~vec3<i32>(1i % arg_0.a.x, 1i, u_input.a.x - i32(-2147483648)), ~vec4<u32>(~2230u, 41472u % u_input.b, u_input.b, ~global2[arg_1.a]), -(-56245i), arg_1.e), dot(~select(vec2<u32>(61870u, 42297u) >> arg_1.c.yy, arg_1.c.wz, !vec2<bool>(true, true)), (clamp(vec2<u32>(0u, u_input.b), arg_1.c.xw, vec2<u32>(35979u, u_input.b)) ^ ~arg_1.c.zx) ^ vec2<u32>(~global2[3298u], global2[u_input.b >> arg_1.c.x])), min(269f, step(step(trunc(arg_1.e.x), arg_1.e.x), -arg_1.e.x)));
    global2 = array<u32, 23>();
    var var_1 = dot(max(var_0.c.c.yzz, arg_1.c.wyz), vec3<u32>(global2[~dot(abs(vec2<u32>(var_0.d, 19480u)), countOneBits(arg_1.c.zz))], 26205u, ~4294967295u));
    var var_2 = var_0.c.c;
    var var_3 = func_2(max(-644f, -662f), Struct_2(abs(-45407i), var_0.c, ~vec4<i32>(-1i, var_0.a.a.x, arg_0.a.x, arg_1.b.x) ^ ((vec4<i32>(arg_0.a.x, -51i, arg_1.b.x, u_input.a.x) % vec4<i32>(var_0.a.a.x, 2147483647i, arg_1.b.x, u_input.a.x)) ^ (var_0.a.a | var_0.a.a))));
    return var_2.wz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 17>();
    var var_0 = dot(func_4(Struct_3(max(vec4<i32>(u_input.a.x, 1i, 33127i, u_input.a.x) & vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, -718i, 21688i, 46222i))), any(vec2<bool>(true, true))), Struct_1(global2[82423u << global2[0u]] | (0u / 11970u), select(vec3<i32>(u_input.a.x, 29772i, 1i), vec3<i32>(i32(-2147483648), u_input.a.x, -1i), select(true, false, true)), global0[79235u], u_input.a.x, select(vec4<f32>(-608f, -1222f, 1566f, 212f) + vec4<f32>(1468f, -267f, 1015f, -456f), round(vec4<f32>(242f, -1067f, 904f, 546f)), func_1()))), vec2<u32>(u_input.b, u_input.b));
    global2 = array<u32, 23>();
    let var_1 = vec2<bool>(false, true || false);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<f32>(539f * 981f, -112f + -633f, -927f, -(-1664f)) - -(vec4<f32>(-1456f, 1000f, 923f, 504f) - vec4<f32>(1000f, 397f, -1000f, -2740f))));
}

