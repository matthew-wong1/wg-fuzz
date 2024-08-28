// {"0:0":[103,71,146,241,145,212,91,156,114,53,132,96,52,156,24,214]}
// Seed: 450526123026523125

struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(0u, true, true, vec4<f32>(1542f, -851f, 2522f, 557f)), vec3<i32>(i32(-2147483648), 0i, 0i), 2798f, Struct_1(4294967295u, false, true, vec4<f32>(596f, 889f, -774f, -1925f))), Struct_2(Struct_1(4294967295u, true, false, vec4<f32>(1235f, -853f, 577f, 922f)), vec3<i32>(2147483647i, 1i, -13736i), 534f, Struct_1(1u, true, false, vec4<f32>(1250f, 1235f, -1696f, -204f))), Struct_2(Struct_1(68671u, false, false, vec4<f32>(948f, -540f, 307f, -1190f)), vec3<i32>(-28404i, 864i, -32233i), 665f, Struct_1(36537u, false, false, vec4<f32>(-195f, -196f, -216f, -554f))), Struct_2(Struct_1(10150u, false, true, vec4<f32>(-733f, 1288f, 655f, 285f)), vec3<i32>(1i, 16390i, -1i), -1511f, Struct_1(8416u, true, true, vec4<f32>(337f, -1918f, -1697f, 1600f))), Struct_2(Struct_1(0u, false, true, vec4<f32>(-1020f, -520f, -160f, 816f)), vec3<i32>(-13156i, -17597i, -1i), -586f, Struct_1(4294967295u, true, false, vec4<f32>(531f, 945f, -294f, 413f))), Struct_2(Struct_1(14702u, false, true, vec4<f32>(-321f, 140f, 1087f, 311f)), vec3<i32>(-1i, 17829i, 45189i), 138f, Struct_1(10982u, true, true, vec4<f32>(-195f, -1672f, -280f, -208f))), Struct_2(Struct_1(29935u, false, true, vec4<f32>(-141f, -1125f, -794f, 1783f)), vec3<i32>(i32(-2147483648), -21676i, i32(-2147483648)), 146f, Struct_1(660u, true, true, vec4<f32>(-1000f, -1071f, -737f, -767f))), Struct_2(Struct_1(1u, true, true, vec4<f32>(-1208f, -989f, -1600f, 368f)), vec3<i32>(-29144i, -11045i, -1i), -2137f, Struct_1(1u, true, false, vec4<f32>(-637f, 1319f, 642f, -1000f))), Struct_2(Struct_1(0u, false, false, vec4<f32>(-1766f, -1000f, 458f, 859f)), vec3<i32>(i32(-2147483648), 2147483647i, 31885i), -1684f, Struct_1(27379u, false, false, vec4<f32>(999f, 538f, 1213f, -121f))), Struct_2(Struct_1(69953u, false, false, vec4<f32>(-1250f, 1000f, -585f, -1092f)), vec3<i32>(0i, -1i, 0i), 491f, Struct_1(26393u, true, true, vec4<f32>(417f, -976f, -1083f, 1440f))), Struct_2(Struct_1(1u, true, true, vec4<f32>(1116f, 1585f, -772f, 795f)), vec3<i32>(i32(-2147483648), 12307i, -1i), 1358f, Struct_1(4294967295u, true, true, vec4<f32>(513f, 425f, 251f, 312f))), Struct_2(Struct_1(1u, true, true, vec4<f32>(211f, -1835f, -554f, -1501f)), vec3<i32>(-40144i, -22905i, i32(-2147483648)), -146f, Struct_1(1u, true, true, vec4<f32>(-540f, 501f, -241f, 1622f))), Struct_2(Struct_1(4294967295u, true, true, vec4<f32>(136f, 433f, 390f, 516f)), vec3<i32>(-1215i, i32(-2147483648), 6252i), 536f, Struct_1(0u, false, false, vec4<f32>(1063f, -1032f, 156f, 672f))), Struct_2(Struct_1(34504u, false, true, vec4<f32>(-1079f, -401f, 587f, -1091f)), vec3<i32>(-1i, -1i, 1i), 704f, Struct_1(4294967295u, true, false, vec4<f32>(-1000f, -2431f, -1357f, 1301f))), Struct_2(Struct_1(398u, false, true, vec4<f32>(229f, 341f, -1016f, -144f)), vec3<i32>(53337i, 1i, -20596i), 108f, Struct_1(0u, false, true, vec4<f32>(-1558f, 344f, -1000f, -1000f))), Struct_2(Struct_1(1u, false, true, vec4<f32>(-437f, -911f, 421f, 1654f)), vec3<i32>(i32(-2147483648), 17051i, 23798i), -347f, Struct_1(21778u, false, false, vec4<f32>(805f, 185f, 297f, -832f))), Struct_2(Struct_1(3656u, false, false, vec4<f32>(-470f, -1154f, -397f, 888f)), vec3<i32>(2147483647i, 10760i, 1i), -1000f, Struct_1(30552u, false, false, vec4<f32>(793f, -283f, -962f, -1000f))));

var<private> global1: array<f32, 19> = array<f32, 19>(1760f, 654f, 1211f, 611f, 263f, 717f, 811f, 892f, -260f, 1000f, 541f, 1000f, 779f, -194f, -1718f, -1322f, -101f, 1790f, -319f);

var<private> global2: vec4<u32> = vec4<u32>(34219u, 82471u, 0u, 58208u);

var<private> global3: Struct_3;

var<private> global4: vec3<f32> = vec3<f32>(-1000f, -107f, 174f);

fn func_3() -> vec4<u32> {
    global4 = max((-(vec3<f32>(global4.x, global4.x, global1[global3.b.x]) + vec3<f32>(406f, 469f, -1295f)) - (vec3<f32>(544f, global4.x, 583f) * min(vec3<f32>(-435f, global4.x, global4.x), vec3<f32>(global4.x, 1000f, global1[global3.b.x])))) * min(select(vec3<f32>(889f, global4.x, -153f), vec3<f32>(global1[1920u], global1[u_input.d], -1901f), true) - vec3<f32>(global1[4294967295u], -681f, global4.x), vec3<f32>(574f + -1000f, global1[u_input.b], select(global4.x, -1342f, false))), -(-vec3<f32>(-806f, -1000f, global1[5127u]) / vec3<f32>(-(-1662f), max(global1[6470u], global1[global2.x]), -global1[u_input.d])));
    let var_0 = -(-(~((vec3<i32>(u_input.a, u_input.a, 47857i) * vec3<i32>(u_input.a, -1i, u_input.a)) / abs(vec3<i32>(u_input.a, 11310i, u_input.a)))));
    let var_1 = firstTrailingBit(firstLeadingBit(~vec4<i32>(-71324i, -1i, 11232i, 47378i)));
    var var_2 = select(~(countOneBits(var_1.wy) << global3.b), vec2<i32>(~0i * 0i, -(~u_input.a)), !select(vec2<bool>(false, false), !vec2<bool>(true, true), !vec2<bool>(false, true))) + vec2<i32>(~dot(-var_0.xz, var_0.yz), abs(var_1.x));
    global3 = Struct_3(~global2.x, vec2<u32>(firstTrailingBit(62811u), 1u | 4294967295u) + ~global2.wy);
    return min(firstTrailingBit(~clamp(vec4<u32>(40012u, global2.x, 117139u, u_input.b), vec4<u32>(u_input.d, u_input.b, global2.x, u_input.d), vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.d)) % ((vec4<u32>(0u, 4294967295u, global3.a, 1u) & vec4<u32>(51913u, 9403u, 37386u, 44154u)) << firstTrailingBit(vec4<u32>(4663u, global2.x, global3.a, u_input.d)))), firstLeadingBit(vec4<u32>(~reverseBits(30480u), dot(~vec4<u32>(4294967295u, global3.b.x, global3.b.x, global2.x), vec4<u32>(global3.a, 1u, global3.b.x, global2.x) * vec4<u32>(global3.a, global3.b.x, u_input.d, 41437u)), min(global2.x >> u_input.b, 33012u), reverseBits(global2.x) | 4294967295u)));
}

fn func_2(arg_0: u32) -> i32 {
    global2 = func_3();
    var var_0 = u_input.a << 33866u;
    global2 = vec4<u32>(dot(~(~vec4<u32>(121287u, u_input.b, 4294967295u, 2054u)) | ~(vec4<u32>(u_input.b, global2.x, u_input.d, 1u) * vec4<u32>(u_input.b, arg_0, arg_0, 55370u)), reverseBits(~(vec4<u32>(arg_0, global3.b.x, 17458u, global3.a) % vec4<u32>(4294967295u, global3.b.x, u_input.b, 17205u)))), abs(min(abs(u_input.b), ~8643u) >> ~(~0u)), ~(~global2.x), dot(vec2<u32>(firstTrailingBit(global2.x), 37305u), vec2<u32>(~arg_0, (arg_0 + u_input.b) >> ~arg_0)));
    var var_1 = global0[~(~(~global2.x))];
    var var_2 = select(select(vec4<bool>(!var_1.a.c, !true, false || !false, var_1.a.b), !(!select(vec4<bool>(var_1.a.c, var_1.d.c, false, true), vec4<bool>(false, var_1.a.b, var_1.a.c, true), vec4<bool>(false, var_1.d.b, true, var_1.d.c))), select(!(!vec4<bool>(false, var_1.a.c, var_1.d.c, true)), !select(vec4<bool>(false, true, var_1.a.c, false), vec4<bool>(var_1.d.b, false, false, var_1.a.c), vec4<bool>(var_1.a.b, false, var_1.a.b, false)), vec4<bool>(all(vec2<bool>(var_1.a.c, false)), true, var_1.d.b, var_1.a.c))), select(select(vec4<bool>(true, any(vec2<bool>(var_1.a.c, false)), var_1.a.b, select(var_1.d.b, var_1.d.c, var_1.a.c)), vec4<bool>(!var_1.a.b, true, var_1.d.a != 29965u, !var_1.a.b), !select(vec4<bool>(var_1.a.b, false, false, var_1.d.c), vec4<bool>(true, true, var_1.a.c, false), vec4<bool>(false, false, var_1.a.b, var_1.a.b))), select(select(!vec4<bool>(true, var_1.d.c, var_1.a.b, true), select(vec4<bool>(var_1.d.c, var_1.d.c, false, true), vec4<bool>(var_1.d.b, true, true, var_1.a.c), vec4<bool>(var_1.a.b, var_1.d.c, var_1.d.c, true)), vec4<bool>(true, false, true, false)), vec4<bool>(true, u_input.a != 2147483647i, var_1.a.b, var_1.d.c), true), -430f < -1000f), select(select(!vec4<bool>(var_1.d.c, true, var_1.a.c, var_1.d.b), select(select(vec4<bool>(false, var_1.d.b, var_1.a.b, true), vec4<bool>(var_1.d.b, false, var_1.d.b, true), vec4<bool>(false, var_1.d.c, true, false)), select(vec4<bool>(var_1.d.b, var_1.a.b, false, var_1.a.c), vec4<bool>(var_1.d.b, false, var_1.a.c, true), vec4<bool>(true, false, true, false)), !vec4<bool>(var_1.a.b, var_1.a.c, var_1.a.b, var_1.d.b)), !(!var_1.d.c)), select(select(select(vec4<bool>(true, true, false, var_1.a.b), vec4<bool>(var_1.d.b, var_1.d.b, var_1.a.b, var_1.a.c), vec4<bool>(false, true, var_1.d.c, var_1.d.b)), vec4<bool>(false, true, false, false), vec4<bool>(var_1.a.c, var_1.d.c, true, true)), vec4<bool>(true, var_1.d.b, var_1.a.c, !true), vec4<bool>(false, var_1.d.b, all(vec4<bool>(false, var_1.a.c, var_1.a.c, var_1.d.b)), false)), false));
    return -var_1.b.x * firstLeadingBit(31398i);
}

fn func_1() -> vec4<bool> {
    var var_0 = max(u_input.a, -u_input.c);
    var var_1 = global3.b.x;
    var var_2 = ~vec2<i32>(func_2(reverseBits(u_input.d)), -(-(10992i - 8875i)));
    global3 = Struct_3(~func_3().x, global2.zw);
    let var_3 = vec4<bool>(all(select(vec4<bool>(var_2.x > u_input.a, true, true, all(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), false), !(!vec4<bool>(false, false, true, false)))), !select(global4.x >= -(-999f), ~global2.x >= dot(global2.wzx, vec3<u32>(4294967295u, 0u, 5153u)), false), !(global3.b.x <= 7143u) & all(vec3<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), false)), all(select(select(!vec3<bool>(true, false, false), !vec3<bool>(false, true, true), !true), vec3<bool>(global4.x != global1[global2.x], !false, !false), true)));
    return select(var_3, vec4<bool>(!true, u_input.b > max(4294967295u ^ 27832u, global2.x), true, var_3.x), !true);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = arg_3.a.zww;
    var var_1 = vec4<u32>(1u, 4294967295u, 1u, ~(~global3.b.x));
    var var_2 = !arg_1.yxx;
    global4 = vec3<f32>(((step(global1[11198u], -1030f) / -111f) + -(-1416f)) + abs(ceil(1000f)), -1649f, var_0.x);
    var var_3 = any(!select(arg_1, !vec4<bool>(arg_1.x, true, arg_1.x, false), !false));
    return -(~(~(vec2<i32>(0i, arg_3.b) % select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_3.d.d.b.x, arg_3.d.d.b.x), var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = func_4(Struct_3(23944u, vec2<u32>(~u_input.d, ~(0u * 22247u))), !select(!func_1(), !(!vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), !vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false))), any(vec4<bool>(false, false, true, true)), Struct_5(exp2(vec4<f32>(1344f, global4.x, global1[global3.a], global4.x) / vec4<f32>(809f, 279f, global1[global3.a], 1048f)) - (-vec4<f32>(global1[global3.b.x], global4.x, global1[42355u], global1[51923u]) + vec4<f32>(global1[0u], global1[global2.x], 2069f, global4.x)), abs(clamp(u_input.c % i32(-2147483648), 24316i | i32(-2147483648), -10003i)), -global4.xy, Struct_4(Struct_1(global3.a, all(vec4<bool>(true, true, false, false)), true, vec4<f32>(global1[0u], -2617f, -1706f, -1758f) - vec4<f32>(global4.x, -1073f, -1000f, -1411f)), Struct_3(53758u, func_3().xz), Struct_1(52497u, global3.a != 17084u, !false, vec4<f32>(global4.x, 453f, -245f, 1000f) * vec4<f32>(379f, global4.x, 1000f, global1[global3.b.x])), global0[~(~73825u)])));
    let var_2 = Struct_4(Struct_1(~u_input.b, true && any(vec2<bool>(true, true)), true, -select(vec4<f32>(global1[global3.a], -107f, -724f, 1214f), vec4<f32>(global1[global3.a], 1000f, -1236f, global4.x), vec4<bool>(false, false, true, false)) + sign(vec4<f32>(341f, 1000f, 939f, global1[u_input.d]))), Struct_3(firstLeadingBit(4294967295u * global3.b.x) | (select(4294967295u, 4294967295u, false) >> u_input.b), ~vec2<u32>(clamp(0u, global2.x, 0u), global2.x % 9469u)), Struct_1(~global2.x << ~reverseBits(4294967295u), true, !true, -min(abs(vec4<f32>(global4.x, global1[0u], global1[5376u], -396f)), round(vec4<f32>(-393f, global1[1u], 609f, 857f)))), global0[~global2.x ^ ~(u_input.b << ~1u)]);
    global0 = array<Struct_2, 17>();
    global1 = array<f32, 19>();
    var var_3 = vec3<f32>(max(472f, var_2.d.d.d.x) - -1359f, -139f, var_2.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, vec2<f32>(-(-232f), -global4.x) - -select(vec2<f32>(global4.x, global1[global2.x]), var_3.xy, false));
}

