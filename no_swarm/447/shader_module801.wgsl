// {"0:0":[230,15,185,28,247,79,22,84,240,246,37,216,216,59,245,61,169,81,13,62,38,195,94,103,76,198,126,139,141,133,194,38,254,125,147,61,255,245,139,108,88,208,86,151,87,133,24,199]}
// Seed: 16563882809669628481

struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: u32 = 0u;

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_0.b;
    var var_1 = select(arg_0.e.xwy, ~(clamp(arg_0.e.yzx / vec3<u32>(48496u, 1u, 24967u), abs(arg_0.e.wzy), firstLeadingBit(vec3<u32>(1u, arg_1, arg_1))) & vec3<u32>(21853u, global0[~global0[1u]], firstLeadingBit(arg_1))), all(var_0.b.b.zz));
    let var_2 = Struct_5(~(19650i | ~firstTrailingBit(arg_0.b.b.e)), any(!vec4<bool>(any(var_0.b.b), var_0.b.b.x & var_0.b.b.x, any(var_0.b.b), var_0.b.b.x)), arg_0, abs(arg_2), 47211u);
    global1 = 19247u;
    global0 = array<u32, 2>();
    return vec4<bool>(!((var_0.b.b.x == false) || any(!vec3<bool>(false, var_2.b, false))), arg_0.b.b.b.x, any(!(!select(arg_0.b.b.b.xz, vec2<bool>(var_0.b.b.x, arg_0.b.b.b.x), var_2.c.b.b.b.zz))), !(all(vec2<bool>(var_0.b.b.x, false)) & any(!vec4<bool>(false, arg_0.b.b.b.x, false, false))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = false;
    var var_1 = arg_3.b.b.b.x;
    let var_2 = Struct_5(33137i, !all(select(func_3(Struct_3(arg_3.a, arg_3.b, u_input.a.x, arg_3.d, vec4<u32>(1u, 0u, arg_1, arg_3.c)), arg_0.x, -1135f), select(vec4<bool>(false, true, arg_3.b.b.b.x, arg_3.b.b.b.x), vec4<bool>(arg_3.b.b.b.x, false, arg_3.b.b.b.x, arg_3.b.b.b.x), false), !vec4<bool>(arg_3.b.b.b.x, false, true, arg_3.b.b.b.x))), arg_3, arg_3.d.x, 25944u);
    var_1 = true | var_2.c.b.b.b.x;
    let var_3 = min(-vec4<f32>(1985f, abs(var_2.d), 1363f, -576f + ceil(arg_3.b.b.d.x)), select(-sign(vec4<f32>(var_2.d, -1041f, -586f, -548f)), max(vec4<f32>(-399f, 135f, arg_3.b.b.d.x, var_2.c.d.x), vec4<f32>(-1000f, arg_3.a, arg_3.a, arg_3.d.x) * vec4<f32>(1837f, 949f, arg_3.a, arg_3.b.b.d.x)), !vec4<bool>(var_2.b, var_2.b, true, arg_3.b.b.b.x)) / abs(trunc(vec4<f32>(arg_3.b.b.d.x, arg_3.a, arg_3.d.x, arg_3.b.b.d.x)) + trunc(vec4<f32>(var_2.d, var_2.c.a, -305f, var_2.c.d.x))));
    return Struct_2(-abs(select(arg_3.b.a, vec2<i32>(0i, arg_3.b.a.x) % vec2<i32>(0i, var_2.c.b.a.x), false)), Struct_1(~(~arg_1), vec3<bool>(!true, false, select(2099f > 112f, arg_3.b.b.b.x, -630f <= var_2.c.a)), ~min(0u, arg_1) % clamp(~78217u, 43296u, var_2.c.c << u_input.a.x), -var_3.xww, 13404i));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_0 * -(-(-232f));
    global0 = array<u32, 2>();
    var var_1 = u_input.c.xzz;
    var_0 = arg_0;
    var var_2 = var_1.x;
    return Struct_3(-662f + -(-min(arg_3.b.d.x, arg_3.b.d.x)), Struct_2((abs(vec2<i32>(u_input.b.x, -1i)) * vec2<i32>(85i, arg_1.x)) | select(var_1.yy, u_input.c.xx >> vec2<u32>(arg_2.x, global0[arg_2.x]), select(true, true, false)), Struct_1(~(0u * 1u), select(arg_3.b.b, arg_3.b.b, arg_3.b.b.x), reverseBits(arg_3.b.a << global0[u_input.a.x]), arg_3.b.d, var_1.x)), 1u, arg_3.b.d.xy * vec2<f32>(arg_0, ceil(arg_0)), ~(~vec4<u32>(21336u, global0[arg_3.b.a] << u_input.a.x, global0[66723u], 9695u)));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = arg_1;
    let var_1 = u_input.c;
    let var_2 = Struct_5(abs(34756i | u_input.b.x), arg_0.b.b.b.x, Struct_3(-(-arg_0.d.x) * -243f, func_4(arg_0.d.x, clamp(vec2<i32>(-3921i, 2147483647i) ^ var_1.wx, vec2<i32>(u_input.b.x, u_input.b.x) & u_input.c.yz, vec2<i32>(var_1.x, arg_1)), arg_0.e.zxw, func_4(arg_0.a, vec2<i32>(arg_0.b.a.x, arg_1), ~vec3<u32>(global0[arg_0.e.x], arg_0.e.x, arg_0.c), func_4(-801f, vec2<i32>(arg_0.b.b.e, -6033i), vec3<u32>(arg_0.b.b.c, 4294967295u, 0u), Struct_2(vec2<i32>(-1i, u_input.c.x), Struct_1(arg_0.b.b.a, vec3<bool>(arg_0.b.b.b.x, true, false), 41414u, arg_0.b.b.d, 25607i))).b).b).b, u_input.a.x, max(vec2<f32>(-1985f, -346f), -vec2<f32>(arg_0.a, arg_0.b.b.d.x) * -arg_0.b.b.d.yz), arg_0.e - ~func_4(arg_0.a, vec2<i32>(arg_0.b.a.x, 2147483647i), u_input.a, arg_0.b).e), arg_0.a, 5590u);
    let var_3 = Struct_4(71513i, arg_0.b.b.a, vec4<bool>(-14741i <= -17382i, false, false, !func_4(arg_0.d.x, var_1.zx + vec2<i32>(arg_1, 64162i), arg_0.e.xxy, func_2(vec4<u32>(4294967295u, 26860u, 52414u, var_2.e), 30399u, var_2.c.b.a.x, var_2.c)).b.b.b.x));
    var var_4 = var_2.c.b.b.b;
    return sign(-145f) + min(var_2.c.b.b.d.x, -(var_2.d + (arg_0.a * 700f)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = -step(func_5(func_4(-970f, -vec2<i32>(i32(-2147483648), 0i), vec3<u32>(17378u, arg_2.e.x, u_input.a.x), func_2(vec4<u32>(u_input.a.x, 42441u, global0[4294967295u], 4547u), global0[99225u], u_input.b.x, Struct_3(930f, arg_2.b, 1u, arg_2.b.b.d.xy, vec4<u32>(15555u, 33128u, u_input.a.x, 1u)))), u_input.c.x), arg_2.b.b.d.x);
    global1 = 1158u;
    global1 = abs(u_input.a.x);
    var var_1 = !vec4<bool>(all(!select(arg_2.b.b.b, arg_2.b.b.b, arg_0)), all(select(vec4<bool>(false, arg_2.b.b.b.x, arg_2.b.b.b.x, arg_0), !vec4<bool>(arg_0, true, false, arg_2.b.b.b.x), select(vec4<bool>(arg_2.b.b.b.x, true, true, arg_0), vec4<bool>(false, arg_0, false, true), arg_1))), all(func_4(exp2(-500f), -vec2<i32>(95591i, -2833i), vec3<u32>(global0[arg_2.c], 4294967295u, 59631u), arg_2.b).b.b.b.xy), !arg_1);
    let var_2 = Struct_4(select(clamp(22977i, ~u_input.c.x / u_input.c.x, 2147483647i), ~arg_2.b.b.e << ~(~global0[33051u]), true), abs(arg_2.b.b.a) ^ global0[arg_2.c], func_3(Struct_3(-arg_2.a, Struct_2(vec2<i32>(1i, -10432i), arg_2.b.b), (53397u / global0[global0[arg_2.b.b.a]]) * reverseBits(arg_2.e.x), vec2<f32>(-1252f, arg_2.b.b.d.x), ~(~vec4<u32>(arg_2.c, 67753u, global0[4294967295u], 4294967295u))), ((arg_2.b.b.a - global0[37185u]) ^ dot(arg_2.e, arg_2.e)) >> (dot(vec2<u32>(9073u, u_input.a.x), vec2<u32>(1u, 8000u)) | ~arg_2.c), -(314f + arg_2.d.x) + arg_2.d.x));
    return arg_2.b.b;
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    var var_0 = vec4<u32>(max(16095u, dot(~vec4<u32>(global0[global0[76284u]], 30915u, arg_2.a, 0u), firstTrailingBit(vec4<u32>(arg_3, 32294u, u_input.a.x, arg_0.b))) / min(~4294967295u, 99582u)), arg_3, 32723u, arg_0.b);
    let var_1 = floor(-(-(-1207f)) + arg_1.x) - -1553f;
    let var_2 = select(u_input.c.yx, -func_2(vec4<u32>(arg_2.a, 20121u, 65324u, var_0.x) & vec4<u32>(arg_3, 4294967295u, 34502u, 22386u), global0[4294967295u], max(-27250i, arg_0.a), func_4(arg_1.x, u_input.b.xy, vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), Struct_2(vec2<i32>(-1i, u_input.b.x), Struct_1(4294967295u, arg_0.c.xyz, var_0.x, arg_2.d, arg_2.e)))).a, select(!func_2(vec4<u32>(arg_0.b, global0[arg_0.b], arg_3, u_input.a.x), arg_3, 1i, Struct_3(var_1, Struct_2(vec2<i32>(u_input.c.x, arg_0.a), Struct_1(global0[30191u], vec3<bool>(arg_2.b.x, arg_0.c.x, false), 29419u, arg_2.d, 0i)), var_0.x, arg_2.d.zx, vec4<u32>(var_0.x, arg_2.a, 1u, 0u))).b.b.yy, arg_2.b.yy, !(!true))) << ~var_0.xy;
    global1 = ~arg_0.b;
    global1 = clamp(~reverseBits(~arg_0.b), u_input.a.x, 4243u) / arg_2.a;
    return vec2<f32>(func_4(select(-(-arg_2.d.x), var_1, any(!vec3<bool>(false, arg_2.b.x, false))), ~(vec2<i32>(-31634i, 0i) + vec2<i32>(i32(-2147483648), u_input.b.x)) + ~(~var_2), var_0.yyw, Struct_2(reverseBits(var_2), func_4(-568f, var_2, u_input.a, func_2(vec4<u32>(22235u, 58981u, 8445u, 66976u), arg_2.c, var_2.x, Struct_3(var_1, Struct_2(u_input.c.zw, Struct_1(1u, vec3<bool>(arg_2.b.x, true, arg_0.c.x), var_0.x, vec3<f32>(1147f, 1520f, arg_1.x), arg_0.a)), global0[4294967295u], vec2<f32>(arg_1.x, 287f), vec4<u32>(var_0.x, 13574u, 0u, arg_0.b)))).b.b)).d.x, func_1(arg_2.b.x, arg_0.c.x, Struct_3(max(func_1(false, true, Struct_3(260f, Struct_2(var_2, Struct_1(0u, arg_2.b, u_input.a.x, vec3<f32>(-774f, arg_2.d.x, var_1), arg_2.e)), u_input.a.x, arg_2.d.zy, vec4<u32>(u_input.a.x, var_0.x, arg_2.a, u_input.a.x))).d.x, 561f), Struct_2(vec2<i32>(-1i, arg_2.e) & u_input.b.xy, arg_2), ~33665u / var_0.x, arg_1, select(~vec4<u32>(u_input.a.x, 1u, var_0.x, global0[arg_0.b]), vec4<u32>(arg_3, 1u, arg_2.c, 4294967295u), arg_0.c))).d.x);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_5(u_input.c.x, !true, Struct_3(-(-1989f), Struct_2(u_input.b.xz, arg_1), ~u_input.a.x, min(arg_1.d.yx * vec2<f32>(arg_1.d.x, arg_1.d.x), vec2<f32>(484f, arg_0.x)) + vec2<f32>(arg_0.x, -1059f), ~(~(vec4<u32>(4294967295u, 1u, u_input.a.x, 44762u) % vec4<u32>(arg_1.c, 9301u, 80690u, 4294967295u)))), arg_0.x, select(global0[35094u], ~(~global0[arg_1.c]) + (global0[func_1(arg_1.b.x, false, Struct_3(arg_1.d.x, Struct_2(u_input.c.zx, Struct_1(1u, arg_1.b, 0u, arg_1.d, u_input.b.x)), 0u, vec2<f32>(698f, -709f), vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u))).a] & dot(u_input.a, vec3<u32>(global0[arg_1.a], global0[global0[24971u]], global0[1u]))), arg_1.b.x));
    let var_1 = var_0.c.e.yzz;
    global1 = ~global0[~(~var_1.x)];
    var var_2 = var_0.c.b.b.d;
    let var_3 = var_0.c;
    return Struct_4(clamp(-func_4(var_3.b.b.d.x, var_3.b.a, vec3<u32>(1u, 0u, 0u), var_0.c.b).b.b.e, reverseBits(dot(vec3<i32>(arg_1.e, 2147483647i, var_0.a), vec3<i32>(20709i, -1i, u_input.b.x))), var_0.a) % 31654i, var_0.e & var_1.x, !(!func_3(Struct_3(1011f, var_3.b, 0u, vec2<f32>(var_0.c.a, 180f), var_3.e), global0[var_3.b.b.a] | arg_1.a, var_3.a)));
}

fn func_8(arg_0: i32, arg_1: Struct_4) -> StorageBuffer {
    var var_0 = arg_1.c.x;
    let var_1 = arg_1.a;
    global0 = array<u32, 2>();
    let var_2 = -floor(-239f - func_1(any(vec2<bool>(false, arg_1.c.x)), any(arg_1.c.zy), func_4(-890f, vec2<i32>(arg_0, 0i), vec3<u32>(33859u, 0u, arg_1.b), Struct_2(u_input.b.xx, Struct_1(4294967295u, vec3<bool>(false, false, false), 24980u, vec3<f32>(-1283f, 273f, 1011f), 1i)))).d.x);
    let var_3 = -var_2 - var_2;
    return StorageBuffer(-1367f, vec4<f32>(func_5(func_4(-1807f, u_input.c.yy, ~u_input.a, Struct_2(vec2<i32>(5391i, u_input.b.x), Struct_1(4294967295u, vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.b, vec3<f32>(var_2, var_3, var_2), u_input.c.x))), dot(~vec3<i32>(arg_0, 2147483647i, arg_0), ~vec3<i32>(var_1, arg_0, var_1))), var_2 + func_6(arg_1, select(vec2<f32>(var_3, 389f), vec2<f32>(-1000f, var_2), true), func_4(var_3, u_input.c.yw, u_input.a, Struct_2(u_input.c.xx, Struct_1(84482u, vec3<bool>(true, true, true), 1u, vec3<f32>(var_3, 1894f, var_3), -1i))).b.b, global0[reverseBits(u_input.a.x)]).x, min(-var_3 - var_3, 909f * -var_3), -(-1569f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 2>();
    let x = u_input.a;
    s_output = func_8(-u_input.b.x, func_7(sign(func_6(Struct_4(28237i, u_input.a.x, vec4<bool>(true, true, false, false)), vec2<f32>(-1359f, -833f), func_1(false, true, Struct_3(1423f, Struct_2(u_input.c.xz, Struct_1(9425u, vec3<bool>(false, true, true), u_input.a.x, vec3<f32>(-218f, 1259f, -201f), -952i)), global0[u_input.a.x], vec2<f32>(-1000f, 672f), vec4<u32>(u_input.a.x, 30763u, 0u, u_input.a.x))), global0[dot(vec4<u32>(4294967295u, global0[u_input.a.x], 0u, 1u), vec4<u32>(64492u, 65666u, 0u, 4294967295u))])), func_2(firstTrailingBit(vec4<u32>(0u, 56269u, u_input.a.x, 0u) % vec4<u32>(0u, global0[u_input.a.x], u_input.a.x, 58054u)), 1u ^ (31605u / u_input.a.x), 15761i, func_4(586f - 481f, ~vec2<i32>(u_input.c.x, -31129i), u_input.a ^ vec3<u32>(0u, 39883u, global0[global0[global0[0u]]]), Struct_2(vec2<i32>(i32(-2147483648), u_input.b.x), Struct_1(global0[0u], vec3<bool>(false, true, true), 11821u, vec3<f32>(1761f, 710f, 474f), 24879i)))).b));
}

