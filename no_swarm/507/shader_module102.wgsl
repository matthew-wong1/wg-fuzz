// {"0:0":[198,29,45,155,123,207,103,16]}
// Seed: 14494333298880602951

struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, true, false, false, true, false, true, false, false, false, true, true, false, false, false, true, false, true, false, false, true);

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> Struct_3 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = -arg_2;
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    return Struct_3(vec3<bool>(true, !arg_1.c.b.c.x, global0[~(arg_0.a / ~arg_0.a)]), arg_1.b.b, (-(-arg_1.b.b.d) % -(-arg_1.b.b.b.x)) % max(max(u_input.a.x, -(-8497i)), arg_0.e.x));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: f32) -> Struct_3 {
    let var_0 = -(-(-vec4<f32>(select(215f, arg_2, arg_0.b.a.x), 2221f - 155f, floor(-1159f), arg_2)));
    global0 = array<bool, 23>();
    return arg_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> Struct_5 {
    let var_0 = func_3(Struct_5(func_3(Struct_5(arg_0.b.a ^ vec3<i32>(i32(-2147483648), arg_1.d.c, 0i), func_2(Struct_4(20185u, arg_1.d.b.a, true, global0[15417u], arg_0.b.b), Struct_5(vec3<i32>(arg_0.c, -9150i, arg_0.b.b.x), arg_1.b, arg_1.b, arg_1.c), 625f), Struct_3(arg_1.d.b.c.wxy, Struct_1(vec3<i32>(u_input.a.x, arg_0.c, 1i), u_input.a, vec4<bool>(global0[31594u], false, false, global0[1u]), u_input.a.x), arg_0.b.d), Struct_3(arg_0.b.c.xwz, Struct_1(vec3<i32>(arg_0.c, 2147483647i, arg_0.b.a.x), arg_0.b.b, vec4<bool>(false, true, global0[1u], global0[0u]), u_input.a.x), i32(-2147483648))), 0u, -(-188f / 444f)).b.a, func_3(Struct_5(~arg_0.b.a, arg_1.c, func_3(arg_1, 1u, -1441f), Struct_3(vec3<bool>(arg_1.c.b.c.x, true, arg_1.d.a.x), arg_0.b, arg_1.c.c)), ~9426u, -min(-435f, 3252f)), func_2(Struct_4(4294967295u | 22113u, vec3<i32>(1i, arg_1.b.c, u_input.a.x), !arg_1.d.b.c.x, func_3(Struct_5(arg_1.c.b.a, arg_1.d, arg_0, Struct_3(vec3<bool>(arg_1.b.a.x, global0[2315u], arg_1.b.b.c.x), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), arg_0.b.a.x), vec2<i32>(0i, arg_0.b.d), vec4<bool>(global0[43495u], false, true, arg_1.d.a.x), u_input.a.x), u_input.a.x)), 1u, -354f).b.c.x, vec2<i32>(-47214i, arg_1.b.b.a.x) ^ u_input.a), arg_1, 419f), Struct_3(vec3<bool>(!false, !arg_1.c.a.x, all(arg_0.b.c.xx)), arg_1.c.b, ~1i)), 0u, exp2(1000f) + 1233f);
    let var_1 = vec3<i32>(2147483647i, ~(countOneBits(reverseBits(u_input.a.x)) + countOneBits(-(-49957i))), i32(-2147483648));
    global0 = array<bool, 23>();
    let var_2 = Struct_3(!select(!vec3<bool>(false, true, global0[87800u]), arg_0.b.c.wwy, global0[select(~50660u, 30689u - 26235u, 4294967295u > 24694u)]), arg_1.b.b, reverseBits(-(~(~0i))));
    global0 = array<bool, 23>();
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_5 {
    let var_0 = reverseBits(select(clamp(~vec2<u32>(30951u, 1u), vec2<u32>(38429u, 0u), vec2<u32>(1u, 0u)), ~vec2<u32>(32126u, 4294967295u), vec2<bool>(!arg_1, arg_1)) ^ (~firstLeadingBit(vec2<u32>(4956u, 4294967295u)) / vec2<u32>(~35922u, 1u & 87865u)));
    let var_1 = -abs(sign(-443f)) + 529f;
    var var_2 = Struct_2(~(~7951u));
    var_2 = Struct_2(var_2.a);
    var var_3 = func_2(Struct_4(var_2.a, ~firstTrailingBit(vec3<i32>(-11162i, u_input.a.x, -1i)), var_0.x == (0u / ~var_2.a), arg_0.b.b.c.x, clamp(vec2<i32>(arg_0.a.x, arg_0.b.b.d) - vec2<i32>(68985i, 2147483647i), vec2<i32>(u_input.a.x, 2147483647i) & vec2<i32>(23902i, -41690i), vec2<i32>(arg_0.d.b.b.x, 2147483647i)) << var_0), arg_0, max(-1396f, -(-733f / -539f)) - var_1);
    return Struct_5(countOneBits(vec3<i32>(0i, -(-arg_0.a.x), clamp(0i, var_3.c, func_4(arg_0.d, arg_0).c.b.b.x))), Struct_3(arg_0.d.a, arg_0.d.b, arg_0.a.x), arg_0.d, Struct_3(var_3.b.c.ywx, func_4(Struct_3(!vec3<bool>(arg_0.d.a.x, false, true), arg_0.d.b, var_3.c), arg_0).d.b, 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = ((abs(vec2<u32>(0u, 52269u) - vec2<u32>(4294967295u, 19817u)) << ~(~vec2<u32>(70460u, 1u))) ^ vec2<u32>(countOneBits(4294967295u) * ~4294967295u, ~clamp(33633u, 4294967295u, 22744u))) >> reverseBits(firstTrailingBit(vec2<u32>(35980u, 4294967295u)) + ~vec2<u32>(1u, 0u));
    var var_1 = func_5(func_4(func_3(Struct_5(-arg_0.a, func_2(Struct_4(var_0.x, vec3<i32>(93395i, u_input.a.x, arg_0.d), arg_0.c.x, true, vec2<i32>(arg_0.b.x, 6004i)), Struct_5(vec3<i32>(-44027i, u_input.a.x, 0i), Struct_3(arg_0.c.zxw, arg_0, -1i), Struct_3(vec3<bool>(arg_0.c.x, global0[var_0.x], true), arg_0, i32(-2147483648)), Struct_3(arg_1.wzw, Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.a.x), u_input.a, arg_1, i32(-2147483648)), arg_0.a.x)), 273f), func_2(Struct_4(var_0.x, vec3<i32>(-3064i, u_input.a.x, i32(-2147483648)), true, arg_1.x, vec2<i32>(arg_0.b.x, 16067i)), Struct_5(vec3<i32>(-53129i, 28015i, 19770i), Struct_3(arg_0.c.xzy, Struct_1(vec3<i32>(arg_0.d, arg_0.a.x, -1i), vec2<i32>(arg_0.a.x, u_input.a.x), vec4<bool>(true, true, arg_1.x, false), u_input.a.x), arg_0.b.x), Struct_3(arg_1.wwx, Struct_1(vec3<i32>(-40699i, 11564i, -55352i), vec2<i32>(-55257i, u_input.a.x), arg_0.c, u_input.a.x), arg_0.d), Struct_3(arg_0.c.xyx, arg_0, arg_0.d)), -1384f), func_2(Struct_4(var_0.x, vec3<i32>(u_input.a.x, 0i, 2147483647i), false, true, arg_0.a.zz), Struct_5(vec3<i32>(arg_0.d, -1i, -39607i), Struct_3(arg_1.wzz, Struct_1(vec3<i32>(u_input.a.x, arg_0.b.x, -108i), arg_0.b, arg_1, 2147483647i), arg_0.d), Struct_3(arg_1.zww, arg_0, 1i), Struct_3(arg_1.xzy, arg_0, 9391i)), -529f)), firstLeadingBit(1u) / var_0.x, -207f), Struct_5(vec3<i32>(19107i, 1i, -12896i) | (vec3<i32>(2147483647i, arg_0.b.x, arg_0.b.x) / vec3<i32>(1i, arg_0.b.x, u_input.a.x)), func_2(Struct_4(0u, vec3<i32>(i32(-2147483648), -47682i, arg_0.a.x), true, arg_0.c.x, u_input.a), Struct_5(arg_0.a, Struct_3(vec3<bool>(global0[var_0.x], arg_1.x, true), Struct_1(arg_0.a, arg_0.a.xx, arg_1, arg_0.a.x), -26974i), Struct_3(arg_1.yxw, Struct_1(arg_0.a, arg_0.b, arg_0.c, 24137i), -1i), Struct_3(vec3<bool>(false, false, arg_0.c.x), arg_0, u_input.a.x)), 1000f - -842f), func_2(Struct_4(1u, vec3<i32>(1i, -1i, u_input.a.x), false, false, vec2<i32>(u_input.a.x, u_input.a.x)), Struct_5(arg_0.a, Struct_3(arg_0.c.xxw, Struct_1(vec3<i32>(0i, 1i, arg_0.d), u_input.a, vec4<bool>(true, arg_0.c.x, true, false), u_input.a.x), arg_0.a.x), Struct_3(arg_0.c.wzy, Struct_1(vec3<i32>(-1i, arg_0.b.x, 1i), u_input.a, vec4<bool>(arg_0.c.x, arg_1.x, false, global0[var_0.x]), u_input.a.x), arg_0.d), Struct_3(vec3<bool>(true, arg_0.c.x, false), Struct_1(arg_0.a, vec2<i32>(u_input.a.x, u_input.a.x), arg_0.c, arg_0.b.x), arg_0.d)), -1608f), Struct_3(!arg_1.wxx, func_3(Struct_5(vec3<i32>(arg_0.b.x, arg_0.b.x, -13884i), Struct_3(vec3<bool>(global0[var_0.x], true, true), Struct_1(arg_0.a, arg_0.a.yx, arg_0.c, arg_0.a.x), -1i), Struct_3(vec3<bool>(arg_0.c.x, arg_0.c.x, global0[74127u]), Struct_1(arg_0.a, arg_0.a.yz, arg_0.c, -1i), arg_0.b.x), Struct_3(arg_1.xyy, arg_0, arg_0.b.x)), 36544u, -288f).b, u_input.a.x))), false);
    global0 = array<bool, 23>();
    var_0 = ~vec2<u32>(1u, var_0.x ^ (var_0.x * 16454u));
    var var_2 = vec2<i32>(min(46988i, ~(u_input.a.x / -29422i) | func_5(func_5(Struct_5(vec3<i32>(u_input.a.x, arg_0.d, 0i), var_1.b, var_1.c, Struct_3(arg_1.yxw, arg_0, 61600i)), true), true || false).d.c), abs(27517i / arg_0.a.x) >> (39329u + var_0.x));
    return Struct_2(countOneBits(22047u % var_0.x));
}

fn func_6(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = func_5(func_4(Struct_3(func_5(func_5(Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(vec3<bool>(global0[arg_0.a], true, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -23609i), u_input.a, vec4<bool>(global0[2291u], global0[arg_0.a], true, global0[24143u]), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -74792i), u_input.a, vec4<bool>(global0[0u], false, false, global0[0u]), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(false, global0[arg_0.a], true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[arg_0.a], false, true, global0[4294967295u]), 0i), u_input.a.x)), global0[22835u]), func_5(Struct_5(vec3<i32>(-10335i, 2147483647i, 31145i), Struct_3(vec3<bool>(global0[arg_0.a], global0[arg_0.a], global0[arg_0.a]), Struct_1(vec3<i32>(u_input.a.x, 31971i, 23137i), vec2<i32>(u_input.a.x, -28437i), vec4<bool>(true, global0[1u], true, true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(global0[4294967295u], global0[0u], true), Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.a.x), u_input.a, vec4<bool>(global0[26328u], true, global0[arg_0.a], global0[10724u]), 0i), 7752i), Struct_3(vec3<bool>(global0[arg_0.a], true, false), Struct_1(vec3<i32>(-12016i, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(true, global0[46781u], global0[46091u], false), -43232i), u_input.a.x)), true).c.a.x).b.a, func_5(func_4(Struct_3(vec3<bool>(global0[1u], false, global0[arg_0.a]), Struct_1(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[5463u], global0[arg_0.a], global0[arg_0.a], global0[1u]), u_input.a.x), 20035i), Struct_5(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), Struct_3(vec3<bool>(true, true, false), Struct_1(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -25710i), vec4<bool>(global0[arg_0.a], false, false, false), u_input.a.x), -1i), Struct_3(vec3<bool>(global0[arg_0.a], true, global0[arg_0.a]), Struct_1(vec3<i32>(2147483647i, -858i, u_input.a.x), vec2<i32>(-1i, -29008i), vec4<bool>(global0[arg_0.a], global0[arg_0.a], global0[0u], false), -1i), u_input.a.x), Struct_3(vec3<bool>(global0[0u], global0[38071u], false), Struct_1(vec3<i32>(u_input.a.x, i32(-2147483648), -39741i), u_input.a, vec4<bool>(global0[4294967295u], global0[4294967295u], true, true), u_input.a.x), -9782i))), u_input.a.x != 0i).c.b, (-19084i * -1i) >> ~arg_0.a), func_5(Struct_5(vec3<i32>(u_input.a.x, 1536i, u_input.a.x), Struct_3(vec3<bool>(global0[0u], global0[arg_0.a], global0[arg_0.a]), Struct_1(vec3<i32>(82951i, u_input.a.x, u_input.a.x), vec2<i32>(-1i, u_input.a.x), vec4<bool>(global0[arg_0.a], global0[9544u], true, false), u_input.a.x), u_input.a.x), func_2(Struct_4(arg_0.a, vec3<i32>(0i, u_input.a.x, u_input.a.x), false, false, u_input.a), Struct_5(vec3<i32>(-1i, u_input.a.x, u_input.a.x), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(true, global0[arg_0.a], global0[arg_0.a], global0[15026u]), u_input.a.x), 8899i), Struct_3(vec3<bool>(global0[arg_0.a], global0[arg_0.a], false), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 1i), vec4<bool>(true, false, true, global0[arg_0.a]), -1i), -1i), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(11682i, 0i, 52327i), vec2<i32>(83544i, -1i), vec4<bool>(global0[25593u], global0[arg_0.a], false, global0[arg_0.a]), -30285i), u_input.a.x)), -862f), Struct_3(vec3<bool>(global0[56690u], true, false), Struct_1(vec3<i32>(-13532i, u_input.a.x, 21607i), u_input.a, vec4<bool>(false, false, false, false), u_input.a.x), u_input.a.x)), global0[countOneBits(52279u - 0u)])), !global0[6379u]);
    global0 = array<bool, 23>();
    var var_1 = (min(u_input.a.x - (var_0.b.b.b.x / 0i), 26561i ^ -44196i) / -(4010i / clamp(0i, u_input.a.x, var_0.d.c))) >> 29884u;
    return select(step(abs(vec3<f32>(216f / 642f, -1520f, 650f - 296f)), select((vec3<f32>(1496f, -285f, 541f) - vec3<f32>(948f, 1000f, 1074f)) - (vec3<f32>(1469f, -1695f, 1108f) / vec3<f32>(-482f, 816f, 675f)), sign(vec3<f32>(-611f, -1000f, -488f)) - (vec3<f32>(-592f, 930f, 171f) * vec3<f32>(-595f, 493f, 792f)), 1u <= dot(vec2<u32>(1u, arg_0.a), vec2<u32>(56265u, 39801u)))), sign(vec3<f32>(sign(-553f), 580f, -1445f - 1310f) + select(vec3<f32>(394f, 510f, -166f) / vec3<f32>(-1252f, -107f, 1000f), vec3<f32>(-1900f, 365f, 500f), vec3<bool>(var_0.c.a.x, false, false))), !(select(-755f, 491f, any(var_0.b.a)) >= ((626f * 806f) - -1456f)));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = func_4(arg_1.d, func_5(arg_1, true)).d;
    let var_1 = !vec3<bool>(!(!false | true), 2147483647i != abs(countOneBits(-10598i)), !((39276u >= 4294967295u) | global0[1742u]));
    let var_2 = -136f;
    global0 = array<bool, 23>();
    var var_3 = 1u;
    return func_4(func_3(arg_1, firstLeadingBit(54742u), ceil(-1944f)), Struct_5(~arg_1.d.b.a, arg_1.d, Struct_3(arg_1.b.a, func_5(Struct_5(vec3<i32>(arg_1.c.b.b.x, -44635i, 2159i), Struct_3(arg_1.d.b.c.xwy, var_0.b, -47969i), var_0, Struct_3(arg_1.c.b.c.yzz, arg_1.d.b, u_input.a.x)), global0[~4294967295u]).c.b, reverseBits(reverseBits(-18928i))), Struct_3(vec3<bool>(arg_1.d.b.c.x, false, arg_1.b.b.c.x & global0[11142u]), func_2(Struct_4(17702u, var_0.b.a, false, var_1.x, vec2<i32>(u_input.a.x, u_input.a.x)), func_4(Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, var_0.c, u_input.a.x), var_0.b.b, vec4<bool>(var_0.a.x, arg_1.c.b.c.x, true, false), -1i), arg_1.c.b.a.x), Struct_5(vec3<i32>(2147483647i, arg_1.b.c, var_0.b.b.x), arg_1.d, Struct_3(vec3<bool>(var_0.a.x, true, true), arg_1.d.b, u_input.a.x), arg_1.d)), 1531f).b, firstTrailingBit(2118i) + max(6734i, arg_1.b.c)))).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(sign(round(-vec3<f32>(-1004f, -1000f, 889f))) / max(-(-vec3<f32>(508f, -154f, 355f)), func_6(func_1(Struct_1(vec3<i32>(59261i, 0i, u_input.a.x), vec2<i32>(u_input.a.x, 70800i), vec4<bool>(global0[0u], global0[29719u], true, false), u_input.a.x), vec4<bool>(true, global0[31963u], false, global0[17209u])))), func_4(func_4(Struct_3(func_2(Struct_4(4294967295u, vec3<i32>(-1688i, u_input.a.x, u_input.a.x), true, false, vec2<i32>(26518i, -1i)), Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_3(vec3<bool>(false, true, false), Struct_1(vec3<i32>(u_input.a.x, i32(-2147483648), 28580i), u_input.a, vec4<bool>(false, global0[1u], global0[0u], false), 4368i), u_input.a.x), Struct_3(vec3<bool>(true, false, global0[0u]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x), vec4<bool>(global0[17918u], true, true, global0[30540u]), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 10360i), vec4<bool>(false, true, global0[4359u], false), u_input.a.x), -5159i)), 1298f).b.c.xwz, func_5(Struct_5(vec3<i32>(34184i, 7341i, 45158i), Struct_3(vec3<bool>(global0[25544u], global0[4294967295u], true), Struct_1(vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x), u_input.a, vec4<bool>(false, false, false, true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(global0[46540u], global0[1u], true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -26685i), u_input.a, vec4<bool>(true, false, global0[27807u], global0[72096u]), i32(-2147483648)), -1i), Struct_3(vec3<bool>(true, global0[1u], global0[1u]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[1u], false, false, true), u_input.a.x), 0i)), false).b.b, u_input.a.x / 3094i), Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, 0i), func_5(Struct_5(vec3<i32>(u_input.a.x, 0i, 55930i), Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 12493i), u_input.a, vec4<bool>(false, true, true, true), u_input.a.x), 0i), Struct_3(vec3<bool>(true, false, global0[32819u]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[0u], global0[65674u], global0[0u], global0[59439u]), -9568i), -1i), Struct_3(vec3<bool>(false, true, true), Struct_1(vec3<i32>(u_input.a.x, 24575i, u_input.a.x), u_input.a, vec4<bool>(false, false, false, global0[33237u]), u_input.a.x), 2147483647i)), true).b, func_4(Struct_3(vec3<bool>(false, global0[0u], global0[32635u]), Struct_1(vec3<i32>(u_input.a.x, -56845i, u_input.a.x), u_input.a, vec4<bool>(global0[18871u], global0[0u], global0[4294967295u], true), 58582i), 2147483647i), Struct_5(vec3<i32>(-33615i, u_input.a.x, 0i), Struct_3(vec3<bool>(global0[5526u], true, global0[1u]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[4294967295u], global0[1800u], true, false), 2147483647i), 0i), Struct_3(vec3<bool>(global0[0u], true, global0[81311u]), Struct_1(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec2<i32>(u_input.a.x, 5725i), vec4<bool>(global0[1u], global0[43836u], global0[0u], true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(false, true, global0[4294967295u]), Struct_1(vec3<i32>(0i, 1i, 1i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[0u], global0[1u], false, global0[1u]), i32(-2147483648)), u_input.a.x))).b, Struct_3(vec3<bool>(true, false, global0[7947u]), Struct_1(vec3<i32>(u_input.a.x, 6174i, 2147483647i), u_input.a, vec4<bool>(false, true, global0[0u], global0[25418u]), u_input.a.x), 14170i))).c, func_4(Struct_3(func_4(Struct_3(vec3<bool>(global0[0u], global0[0u], global0[3570u]), Struct_1(vec3<i32>(u_input.a.x, i32(-2147483648), 0i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(false, global0[0u], false, global0[0u]), u_input.a.x), u_input.a.x), Struct_5(vec3<i32>(5685i, -12311i, u_input.a.x), Struct_3(vec3<bool>(true, global0[1u], global0[0u]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<i32>(-39557i, 0i), vec4<bool>(false, false, global0[4294967295u], global0[4294967295u]), 19009i), u_input.a.x), Struct_3(vec3<bool>(false, global0[37574u], true), Struct_1(vec3<i32>(17527i, u_input.a.x, 48780i), u_input.a, vec4<bool>(false, true, true, global0[1u]), -1i), -19328i), Struct_3(vec3<bool>(global0[63061u], false, false), Struct_1(vec3<i32>(18546i, 37733i, -29087i), u_input.a, vec4<bool>(global0[0u], true, false, true), -43483i), u_input.a.x))).c.b.c.yzz, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, i32(-2147483648)), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(true, true, global0[1u], true), 2147483647i), 35847i), Struct_5(~vec3<i32>(2147483647i, -26262i, 12201i), func_2(Struct_4(40595u, vec3<i32>(0i, u_input.a.x, 1i), global0[1u], global0[0u], vec2<i32>(0i, u_input.a.x)), Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_3(vec3<bool>(global0[4294967295u], true, global0[37951u]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -5955i), u_input.a, vec4<bool>(global0[39058u], true, false, true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(true, false, false), Struct_1(vec3<i32>(-28561i, 15043i, 1i), vec2<i32>(18339i, u_input.a.x), vec4<bool>(false, true, global0[1u], true), 1i), i32(-2147483648)), Struct_3(vec3<bool>(false, global0[1u], global0[0u]), Struct_1(vec3<i32>(2147483647i, 1i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[51766u], false, global0[0u], global0[4294967295u]), u_input.a.x), -14050i)), -547f), Struct_3(vec3<bool>(global0[13349u], global0[21051u], global0[32445u]), Struct_1(vec3<i32>(-2568i, u_input.a.x, -1i), u_input.a, vec4<bool>(false, true, true, global0[19365u]), u_input.a.x), u_input.a.x), func_4(Struct_3(vec3<bool>(global0[54560u], global0[4294967295u], global0[1u]), Struct_1(vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x), u_input.a, vec4<bool>(global0[649u], global0[11012u], global0[17202u], global0[49640u]), u_input.a.x), u_input.a.x), Struct_5(vec3<i32>(-30662i, 17970i, u_input.a.x), Struct_3(vec3<bool>(false, false, global0[0u]), Struct_1(vec3<i32>(-26093i, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[38656u], true, global0[0u], global0[20963u]), u_input.a.x), 72259i), Struct_3(vec3<bool>(true, false, false), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -29492i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[8406u], global0[4294967295u], true, global0[7744u]), i32(-2147483648)), u_input.a.x), Struct_3(vec3<bool>(true, global0[46796u], true), Struct_1(vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x), vec2<i32>(-14621i, u_input.a.x), vec4<bool>(global0[0u], global0[1u], true, true), u_input.a.x), u_input.a.x))).b))));
    let var_1 = abs(clamp(~(~(vec3<u32>(0u, 4529u, 40934u) & vec3<u32>(4294967295u, 402u, 4294967295u))), firstLeadingBit(vec3<u32>(13928u, 44097u << 4294967295u, min(24806u, 3202u))), max(select(vec3<u32>(0u, 26485u, 0u) % vec3<u32>(39723u, 11335u, 37447u), ~vec3<u32>(0u, 38724u, 26815u), 16885u > 34566u), (vec3<u32>(66932u, 0u, 2983u) + vec3<u32>(1u, 1u, 7469u)) ^ ~vec3<u32>(31010u, 21970u, 0u))));
    let var_2 = !func_3(func_4(func_3(Struct_5(var_0.a, Struct_3(vec3<bool>(global0[15174u], global0[var_1.x], var_0.c.x), var_0, 2147483647i), Struct_3(var_0.c.wxz, Struct_1(vec3<i32>(var_0.d, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -1i), vec4<bool>(global0[var_1.x], global0[4294967295u], global0[64468u], global0[var_1.x]), 82361i), -1i), Struct_3(var_0.c.yyw, Struct_1(var_0.a, var_0.a.xz, vec4<bool>(false, var_0.c.x, true, global0[var_1.x]), u_input.a.x), -5836i)), dot(vec4<u32>(0u, 4294967295u, var_1.x, var_1.x), vec4<u32>(var_1.x, 1723u, 4294967295u, var_1.x)), trunc(519f)), Struct_5(-vec3<i32>(var_0.d, 2741i, -32386i), Struct_3(var_0.c.zyz, Struct_1(var_0.a, var_0.b, vec4<bool>(true, global0[var_1.x], var_0.c.x, true), var_0.b.x), -16614i), Struct_3(vec3<bool>(var_0.c.x, var_0.c.x, true), var_0, var_0.d), func_4(Struct_3(vec3<bool>(global0[11328u], false, true), Struct_1(vec3<i32>(-25472i, var_0.d, 0i), u_input.a, vec4<bool>(true, var_0.c.x, false, global0[var_1.x]), u_input.a.x), 44423i), Struct_5(vec3<i32>(i32(-2147483648), var_0.d, u_input.a.x), Struct_3(var_0.c.wzx, var_0, u_input.a.x), Struct_3(var_0.c.wyy, Struct_1(vec3<i32>(var_0.a.x, 1i, -1i), vec2<i32>(-15169i, i32(-2147483648)), vec4<bool>(false, var_0.c.x, false, true), u_input.a.x), var_0.d), Struct_3(var_0.c.yww, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -7224i), vec2<i32>(var_0.d, u_input.a.x), var_0.c, var_0.d), u_input.a.x))).b)), (dot(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 41952u, var_1.x, var_1.x)) >> (4294967295u << 0u)) & ~dot(var_1, vec3<u32>(27688u, var_1.x, 4453u)), 1024f).b.c;
    var var_3 = vec2<u32>(~var_1.x, abs(34856u));
    let var_4 = Struct_3(vec3<bool>(true, var_2.x, true), func_3(Struct_5((vec3<i32>(-1i, 18893i, u_input.a.x) + vec3<i32>(var_0.d, -7774i, -1i)) - firstLeadingBit(var_0.a), func_3(Struct_5(vec3<i32>(var_0.b.x, var_0.d, u_input.a.x), Struct_3(vec3<bool>(true, false, var_0.c.x), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 23565i), vec2<i32>(-7551i, u_input.a.x), var_2, var_0.d), 2147483647i), Struct_3(vec3<bool>(false, true, var_0.c.x), Struct_1(var_0.a, vec2<i32>(-1i, var_0.b.x), var_2, 12204i), var_0.b.x), Struct_3(var_0.c.yxx, var_0, u_input.a.x)), var_1.x, -1058f / -1056f), func_2(Struct_4(4294967295u, vec3<i32>(var_0.b.x, u_input.a.x, 2147483647i), var_2.x, false, vec2<i32>(var_0.d, 1i)), func_4(Struct_3(var_2.xyx, var_0, u_input.a.x), Struct_5(var_0.a, Struct_3(var_2.xzy, Struct_1(vec3<i32>(var_0.a.x, u_input.a.x, u_input.a.x), var_0.a.zz, vec4<bool>(var_0.c.x, false, var_2.x, true), var_0.d), u_input.a.x), Struct_3(var_0.c.zzw, var_0, 2147483647i), Struct_3(var_0.c.xyz, Struct_1(vec3<i32>(var_0.d, i32(-2147483648), u_input.a.x), u_input.a, var_0.c, -1i), var_0.a.x))), 418f), Struct_3(!vec3<bool>(var_2.x, true, var_2.x), func_7(vec3<f32>(737f, 1460f, -1123f), Struct_5(var_0.a, Struct_3(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0, var_0.d), Struct_3(var_0.c.zwz, var_0, -1i), Struct_3(var_0.c.xxw, var_0, 24129i))), 0i)), ~var_3.x, -921f).b, u_input.a.x - ((u_input.a.x | (-18210i << var_3.x)) * func_2(Struct_4(var_1.x, var_0.a, var_0.c.x, false, vec2<i32>(0i, u_input.a.x)), Struct_5(var_0.a, Struct_3(var_2.zwz, var_0, var_0.a.x), Struct_3(vec3<bool>(var_2.x, var_2.x, global0[0u]), Struct_1(vec3<i32>(-1i, u_input.a.x, var_0.a.x), var_0.a.xz, var_0.c, 32510i), u_input.a.x), Struct_3(vec3<bool>(global0[var_1.x], var_0.c.x, true), Struct_1(vec3<i32>(10977i, var_0.a.x, 0i), vec2<i32>(u_input.a.x, 5513i), vec4<bool>(var_2.x, var_0.c.x, false, false), 5054i), u_input.a.x)), step(-217f, 1000f)).b.a.x));
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec4<u32>(var_1.x, var_3.x, var_3.x, 28703u))), vec4<u32>(clamp(4294967295u, var_3.x, var_3.x) >> (27771u * var_1.x), ~(18949u ^ var_1.x), var_3.x, 16629u), vec4<bool>(!false, true, !false != (var_2.x != false), var_4.b.c.x)), var_1.x, -(-594f), reverseBits(1u), ~var_1.x);
}

