// {"0:0":[3,178,80,125,48,213,15,108,53,55,237,8,240,69,137,122]}
// Seed: 14455912480110667153

struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 18088u;

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> vec2<u32> {
    let var_0 = abs(step((select(vec4<f32>(1590f, 524f, 363f, 1954f), vec4<f32>(-689f, 389f, -1000f, -1008f), arg_0.x) / -vec4<f32>(2224f, -1440f, -2277f, -1426f)) - vec4<f32>(-544f - -1188f, 629f, 2255f, -(-985f)), vec4<f32>(-trunc(-701f), 640f + (1455f * 1398f), step(-300f / -396f, -797f / -656f), -step(-1000f, 252f))));
    var var_1 = (~(-1i | firstTrailingBit(1i)) - -firstLeadingBit(u_input.a.x ^ u_input.a.x)) ^ u_input.a.x;
    var var_2 = ~abs(~dot(abs(vec4<i32>(-1i, 0i, i32(-2147483648), u_input.a.x)), vec4<i32>(i32(-2147483648), i32(-2147483648), u_input.a.x, 42706i)));
    var_1 = min(firstTrailingBit(-(0i)), -u_input.a.x);
    let var_3 = !(!(!(!select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true)))));
    return vec2<u32>(~4294967295u, 55107u);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> vec4<i32> {
    global0 = dot(func_3(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), abs(4263u), ~(~arg_2) << 4294967295u), vec2<u32>(~func_3(!vec2<bool>(false, true), ~1u, ~arg_2).x, ~0u | u_input.b));
    global0 = dot(max(vec2<u32>(abs(4294967295u), arg_2), ~vec2<u32>(arg_2, arg_2)) / ~(vec2<u32>(u_input.b, u_input.b) % func_3(vec2<bool>(true, false), arg_2, u_input.b)), ~(~clamp(~vec2<u32>(11028u, arg_2), vec2<u32>(arg_2, 28243u) & vec2<u32>(u_input.b, 1u), ~vec2<u32>(arg_2, arg_2))));
    global0 = abs(~(u_input.b ^ ~(~4294967295u)));
    var var_0 = -(-489f);
    var_0 = -(step((-1056f - -434f) + 1080f, min(-112f, -868f)) + max(step(-431f, 325f) / (-368f / -1572f), -(1098f / 1430f)));
    return ~(~vec4<i32>(-1i ^ 3420i, 0i << 60848u, -2731i, u_input.a.x)) & (~(vec4<i32>(-92081i, u_input.a.x, u_input.a.x, arg_1) * -vec4<i32>(arg_1, -908i, arg_1, u_input.a.x)) >> clamp(max(vec4<u32>(u_input.b, u_input.b, 7780u, u_input.b) & vec4<u32>(u_input.b, 14612u, 1u, 35993u), vec4<u32>(55634u, u_input.b, u_input.b, u_input.b) & vec4<u32>(0u, 12233u, 15262u, arg_2)), vec4<u32>(~u_input.b, abs(arg_2), u_input.b, ~u_input.b), vec4<u32>(dot(vec4<u32>(u_input.b, 35517u, arg_2, u_input.b), vec4<u32>(869u, u_input.b, arg_2, 29474u)), arg_2 | 63282u, firstTrailingBit(50003u), 0u)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> vec2<u32> {
    let var_0 = -401f;
    var var_1 = !select(!(!(!vec4<bool>(true, true, arg_2, arg_2))), select(!select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(true, arg_2, arg_2, true)), !vec4<bool>(true, false, true, arg_2), !all(vec3<bool>(true, true, true))), !false);
    var_1 = vec4<bool>(!(!all(!vec4<bool>(false, true, false, var_1.x))), true, !(countOneBits(u_input.a.x) >= -17439i), 16390u <= ~(~arg_0 * dot(vec4<u32>(u_input.b, 0u, 44931u, 0u), vec4<u32>(u_input.b, 58334u, arg_0, arg_0))));
    var_1 = vec4<bool>(false, all(vec4<bool>(!false || (false & false), !any(var_1.zzz), any(!vec4<bool>(true, false, arg_2, true)), false)), true, true);
    let var_2 = Struct_2(Struct_1((exp2(var_0) * (var_0 + var_0)) + var_0, vec4<bool>(true, !(!true), false && (u_input.a.x == arg_1.x), any(!var_1.zy)), arg_1, ~arg_1.zyz), ~u_input.b, u_input.b);
    return vec2<u32>(0u >> ~abs(var_2.c), ~(34404u % (arg_0 << u_input.b))) & ~(~vec2<u32>(~4294967295u, arg_0));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_2 {
    global0 = u_input.b;
    let var_0 = Struct_1(-2016f, !vec4<bool>(true, !all(vec3<bool>(true, true, arg_2.a.a.a)), max(u_input.a.x, u_input.a.x) < (-16235i % u_input.a.x), false), select(arg_2.a.b.a.c, -countOneBits(countOneBits(vec4<i32>(arg_2.a.b.a.d.x, arg_2.a.b.a.c.x, 1i, 2147483647i))), arg_2.a.b.a.b), vec3<i32>(17142i >> (arg_1.x >> 1u), u_input.a.x, 0i) * vec3<i32>(-19218i, min(-39483i, u_input.a.x), 2147483647i));
    var var_1 = firstLeadingBit(~(~(vec4<u32>(u_input.b, arg_1.x, arg_1.x, 11242u) - vec4<u32>(682u, 57008u, 17408u, u_input.b))) * vec4<u32>(22489u, ~(arg_2.a.b.c + 31941u), (u_input.b | u_input.b) % 1u, 24217u + u_input.b));
    var var_2 = Struct_3(false);
    var var_3 = ~var_0.d;
    return Struct_2(var_0, 0u, 1u | 2801u);
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = func_5(-min(-(-arg_0), arg_0), ~func_4(u_input.b, vec4<i32>(-1i, -43074i, u_input.a.x, 39352i) + func_2(u_input.a.x, 25371i, 0u), false), Struct_5(Struct_4(Struct_3(any(vec4<bool>(false, false, true, true))), Struct_2(Struct_1(arg_0, vec4<bool>(false, false, true, false), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 1i), vec3<i32>(5869i, u_input.a.x, u_input.a.x)), u_input.b ^ 0u, u_input.b)), vec3<f32>(-(-597f), exp2(arg_0), (arg_0 * -977f) / step(arg_0, arg_0))));
    let var_1 = -(-max(sign(vec2<f32>(-952f, arg_0)), -vec2<f32>(var_0.a.a, 919f))) / (round(vec2<f32>(var_0.a.a, arg_0)) + ((-vec2<f32>(-945f, -516f) + (vec2<f32>(1085f, var_0.a.a) / vec2<f32>(-989f, arg_0))) - -vec2<f32>(var_0.a.a, 227f)));
    global0 = abs(var_0.b);
    var var_2 = select(var_0.a.b.ww, var_0.a.b.xw, !vec2<bool>(any(func_5(2137f, vec2<u32>(1u, u_input.b), Struct_5(Struct_4(Struct_3(false), Struct_2(var_0.a, 41985u, var_0.c)), vec3<f32>(-1037f, arg_0, 942f))).a.b.wwy), select(u_input.b != 31285u, !var_0.a.b.x, !true)));
    global0 = ~18594u + ~min((30788u & 17163u) - 46994u, dot(vec3<u32>(6802u, 54963u, var_0.b), vec3<u32>(u_input.b, var_0.c, 45199u)) << select(0u, var_0.b, var_2.x));
    return func_5(select(select(-(-var_1.x), abs(var_0.a.a), !(var_0.a.c.x <= -67928i)), arg_0, !var_2.x), select(vec2<u32>((u_input.b / 0u) % (0u + var_0.c), ~var_0.c & u_input.b), vec2<u32>(clamp(reverseBits(81979u), var_0.c, var_0.b), u_input.b ^ var_0.b), var_0.c < ~select(44383u, 1u, false)), Struct_5(Struct_4(Struct_3(false & false), Struct_2(func_5(1000f, vec2<u32>(0u, 20027u), Struct_5(Struct_4(Struct_3(var_2.x), Struct_2(Struct_1(var_0.a.a, vec4<bool>(true, var_0.a.b.x, var_2.x, var_0.a.b.x), vec4<i32>(var_0.a.c.x, 28918i, 0i, u_input.a.x), var_0.a.d), 1u, u_input.b)), vec3<f32>(var_0.a.a, var_0.a.a, -1713f))).a, abs(u_input.b), ~3973u)), vec3<f32>(-var_1.x, -(373f - arg_0), -396f))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!func_1(step(-832f, -1266f)), func_5((463f + 1163f) / (-459f + 1205f), max(vec2<u32>(43848u, u_input.b), vec2<u32>(17566u, u_input.b)), Struct_5(Struct_4(Struct_3(false), Struct_2(Struct_1(-490f, vec4<bool>(false, true, true, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 26254i), vec3<i32>(0i, u_input.a.x, i32(-2147483648))), 4294967295u, u_input.b)), vec3<f32>(-691f, 1436f, 1843f) / vec3<f32>(699f, -458f, 788f))).a.b, any(!func_5(-287f, vec2<u32>(u_input.b, u_input.b), Struct_5(Struct_4(Struct_3(false), Struct_2(Struct_1(106f, vec4<bool>(true, true, false, true), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, i32(-2147483648)), vec3<i32>(-4363i, 1i, u_input.a.x)), 1u, 1u)), vec3<f32>(257f, 1000f, -1000f))).a.b.xy));
    let var_1 = u_input.a.x;
    global0 = ~func_5(ceil((-1344f + -890f) + 1919f), func_4(u_input.b, countOneBits(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -35844i, i32(-2147483648), 40354i))), -315f == -(-1000f)), Struct_5(Struct_4(Struct_3(var_0.x), Struct_2(Struct_1(-724f, vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i), vec3<i32>(var_1, i32(-2147483648), var_1)), 81686u, 0u)), vec3<f32>(-(-2920f), -(-387f), -1345f))).c;
    global0 = 50199u & (u_input.b % firstTrailingBit((41517u << 8859u) / u_input.b));
    global0 = u_input.b;
    var var_2 = Struct_2(func_5(-157f, vec2<u32>(u_input.b | 50183u, select(~41888u, ~u_input.b, !true)), Struct_5(Struct_4(Struct_3(true), func_5(584f, vec2<u32>(u_input.b, u_input.b), Struct_5(Struct_4(Struct_3(false), Struct_2(Struct_1(-161f, var_0, vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(36399i, u_input.a.x, -14923i)), u_input.b, u_input.b)), vec3<f32>(-854f, -1011f, 1000f)))), (vec3<f32>(710f, -254f, 203f) - vec3<f32>(-1385f, 541f, -1000f)) / -vec3<f32>(962f, -2118f, 563f))).a, dot(~vec4<u32>(1u, 11354u, u_input.b, 1u), abs(~vec4<u32>(1u, u_input.b, u_input.b, u_input.b))) ^ (clamp(1u, u_input.b % 1u, reverseBits(u_input.b)) * ~max(63518u, u_input.b)), countOneBits(~(~0u)));
    let var_3 = -func_2(-46516i, abs(-2147483647i) >> (0u & var_2.b), u_input.b).x;
    global0 = func_4(u_input.b, firstLeadingBit(vec4<i32>(max(-1i, 0i), func_2(-50059i, i32(-2147483648), var_2.b).x, var_2.a.d.x, var_1 << var_2.b)) - vec4<i32>(var_1, -1i, 2573i, reverseBits(dot(vec3<i32>(0i, var_3, 1i), var_2.a.d))), func_1(var_2.a.a).x).x;
    global0 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(-(-(-vec4<i32>(47903i, var_1, 25069i, var_2.a.d.x)) - countOneBits(~var_2.a.c)), vec3<i32>(func_5(var_2.a.a, vec2<u32>(var_2.c, var_2.c) & vec2<u32>(u_input.b, var_2.b), Struct_5(Struct_4(Struct_3(true), Struct_2(var_2.a, u_input.b, var_2.b)), vec3<f32>(var_2.a.a, -2154f, 1646f))).a.c.x, 0i, min(u_input.a.x, var_3) % -u_input.a.x) << (vec3<u32>(~1u, 4294967295u, ~88936u) ^ (vec3<u32>(var_2.c, u_input.b, 27312u) + select(vec3<u32>(var_2.c, 1u, var_2.c), vec3<u32>(u_input.b, 30836u, 4294967295u), vec3<bool>(false, var_0.x, var_0.x)))), ~dot(vec3<u32>(var_2.b, 0u - var_2.c, 31975u ^ 42357u), vec3<u32>(~var_2.b, u_input.b, 0u & 1u)), vec4<i32>(func_5(exp2(var_2.a.a), ~clamp(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, var_2.b), vec2<u32>(u_input.b, 0u)), Struct_5(Struct_4(Struct_3(var_2.a.b.x), Struct_2(var_2.a, 1u, 0u)), vec3<f32>(-356f, -1074f, var_2.a.a) + vec3<f32>(236f, 1119f, var_2.a.a))).a.d.x, 40607i, reverseBits(~min(-14962i, var_1)), ~(~u_input.a.x)), u_input.b);
}

