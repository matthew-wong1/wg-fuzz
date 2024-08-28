// {"0:0":[32,145,203,221,73,108,143,71,175,0,63,159,63,104,178,198,240,232,65,133,17,210,147,108,254,146,30,19,228,219,59,123,198,162,211,195,76,123,243,90,245,190,8,187,27,42,141,157]}
// Seed: 1056470557046950329

struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: i32;

var<private> global2: vec4<i32> = vec4<i32>(58151i, i32(-2147483648), 1i, 1i);

var<private> global3: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_3(Struct_2(Struct_1(-478f, 1u, 2147483647i, 1u), 39469i, vec4<f32>(-772f, -524f, 868f, -399f)), Struct_1(-350f, 0u, -1i, 19331u), Struct_1(1607f, 36289u, 2147483647i, 1u), Struct_1(398f, 19112u, -1i, 4294967295u), false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), 2147483647i, vec3<bool>(false, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(-1000f, 114537u, 1578i, 0u), 26864i, vec4<f32>(1129f, 486f, 1000f, 562f)), Struct_1(322f, 59449u, 2147483647i, 4294967295u), Struct_1(968f, 45684u, 2147483647i, 0u), Struct_1(-1382f, 4294967295u, -43012i, 0u), true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), -13373i, vec3<bool>(true, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(-1095f, 4294967295u, i32(-2147483648), 0u), 14166i, vec4<f32>(-656f, 602f, 217f, -1000f)), Struct_1(1000f, 4294967295u, -17768i, 59257u), Struct_1(-693f, 11985u, 0i, 0u), Struct_1(563f, 1u, 0i, 1u), true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), -42758i, vec3<bool>(false, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(-674f, 1u, 679i, 4294967295u), 1i, vec4<f32>(153f, 1000f, -884f, -287f)), Struct_1(645f, 5463u, 2147483647i, 51277u), Struct_1(1000f, 31086u, 33264i, 70660u), Struct_1(-598f, 1u, 1i, 91253u), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), 66524i, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(279f, 14887u, i32(-2147483648), 4294967295u), 2147483647i, vec4<f32>(-353f, -1578f, -688f, -822f)), Struct_1(-1987f, 57695u, 1i, 4294967295u), Struct_1(1420f, 0u, 0i, 132281u), Struct_1(-1202f, 1u, 0i, 1u), false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), 18960i, vec3<bool>(false, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(-523f, 61758u, 0i, 23298u), 2147483647i, vec4<f32>(-182f, 806f, 586f, -1162f)), Struct_1(-1376f, 26098u, 13019i, 1u), Struct_1(766f, 89982u, 0i, 96032u), Struct_1(-516f, 1u, 1i, 1u), false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), -18943i, vec3<bool>(false, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(-794f, 40516u, 0i, 149u), 74812i, vec4<f32>(-1048f, -1000f, 369f, -321f)), Struct_1(-1420f, 57989u, 16312i, 0u), Struct_1(-454f, 4294967295u, -41684i, 88687u), Struct_1(980f, 66704u, 57260i, 1u), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), -29858i, vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(130f, 0u, 2147483647i, 1u), -1i, vec4<f32>(-1109f, -116f, -210f, -169f)), Struct_1(-473f, 14452u, -1i, 1u), Struct_1(1258f, 0u, i32(-2147483648), 4294967295u), Struct_1(821f, 4294967295u, 1i, 4294967295u), false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), 0i, vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(626f, 28199u, 2147483647i, 121020u), -57065i, vec4<f32>(-2257f, 2095f, 664f, 1000f)), Struct_1(-623f, 0u, 35481i, 3691u), Struct_1(-717f, 4294967295u, -1i, 28874u), Struct_1(1000f, 3474u, -36187i, 12093u), false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), 10232i, vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(811f, 41741u, -7768i, 0u), 1i, vec4<f32>(1766f, 675f, 327f, 1319f)), Struct_1(-839f, 0u, 12687i, 30117u), Struct_1(-591f, 107072u, 4659i, 4334u), Struct_1(-1000f, 0u, 1i, 93347u), true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), -17292i, vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(-1222f, 37462u, -1i, 1u), 1i, vec4<f32>(787f, -1188f, 1302f, -902f)), Struct_1(446f, 1u, 2147483647i, 0u), Struct_1(160f, 4946u, -1i, 0u), Struct_1(-1219f, 12833u, 34423i, 4294967295u), false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), 2147483647i, vec3<bool>(true, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(-1375f, 35953u, 1544i, 0u), 1i, vec4<f32>(135f, -446f, 1095f, -232f)), Struct_1(957f, 4294967295u, -17940i, 4294967295u), Struct_1(-499f, 1u, -32983i, 1u), Struct_1(-580f, 0u, -1i, 1u), false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), 11380i, vec3<bool>(true, true, false)));

var<private> global4: vec3<i32> = vec3<i32>(97i, 0i, -15437i);

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> i32 {
    global3 = array<Struct_5, 12>();
    global3 = array<Struct_5, 12>();
    let var_0 = (vec4<f32>(-(273f / arg_1.a), select(arg_1.a, exp2(724f), false), -449f, exp2(arg_1.a)) * -(vec4<f32>(626f, -2021f, arg_1.a, -1689f) * trunc(vec4<f32>(arg_1.a, -476f, -413f, 945f)))) / trunc(abs(vec4<f32>(-1672f, -arg_1.a, -arg_1.a, -arg_1.a)));
    let var_1 = abs(arg_0.x);
    let var_2 = Struct_5(Struct_3(Struct_2(arg_1, arg_1.c, floor(vec4<f32>(-178f, arg_1.a, var_0.x, 340f) * vec4<f32>(var_0.x, arg_1.a, -1425f, arg_1.a))), Struct_1(var_0.x, ~(~1u), reverseBits(-global2.x), arg_1.d), Struct_1(258f, ~arg_2.x, arg_0.x, u_input.c.x), arg_1, !true), select(vec3<bool>(any(!vec3<bool>(arg_3, arg_3, arg_3)), arg_3, any(vec2<bool>(arg_3, arg_3))), vec3<bool>(any(vec4<bool>(false, arg_3, true, arg_3)), -590f != (arg_1.a + -1000f), true), arg_3), select(select(!vec3<bool>(arg_3, false, false), select(!vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(false, true, arg_3), arg_3 | arg_3), select(!vec3<bool>(false, arg_3, arg_3), select(vec3<bool>(false, arg_3, arg_3), vec3<bool>(true, true, arg_3), arg_3), !true)), vec3<bool>(any(!vec2<bool>(arg_3, true)), !arg_3, (2147483647i | i32(-2147483648)) < -1i), vec3<bool>(true & true, ~global2.x > dot(global2.xyx, arg_0), arg_3)), global4.x, vec3<bool>(true, !(arg_1.a < 1462f), arg_3));
    return -1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    let var_0 = Struct_5(Struct_3(Struct_2(Struct_1(-320f, u_input.b.x >> u_input.c.x, ~1i, dot(u_input.c, u_input.b)), global2.x, vec4<f32>(round(-1286f), -178f - -1259f, -337f, 1000f)), Struct_1(ceil(-509f - -1032f), u_input.c.x, -global2.x, ~(u_input.b.x >> u_input.b.x)), Struct_1(-2412f, 39833u, global2.x >> u_input.b.x, clamp(u_input.c.x / 8212u, u_input.b.x, abs(1u))), Struct_1(924f, 0u, arg_1 + (-1i ^ 22366i), 20473u), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))) == !(true & false)), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(all(vec4<bool>(true, false, true, false)), true, select(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), vec3<bool>(!(!true), true, true), false == select(any(vec4<bool>(false, true, true, true)), true, !false)), select(!select(!vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false)), vec3<bool>(!all(vec3<bool>(true, false, true)), all(!vec3<bool>(true, false, true)), -191f <= -1455f), !select(vec3<bool>(true, false, false), !vec3<bool>(true, true, true), !vec3<bool>(false, false, true))), min(u_input.a.x, arg_1), !select(vec3<bool>(any(vec2<bool>(false, true)), false, true), select(!vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(any(vec2<bool>(false, false)), !true, all(vec2<bool>(true, true)))));
    var var_1 = trunc(-var_0.a.a.c.x);
    let var_2 = var_0.e.x;
    var var_3 = max(-(var_0.a.a.a.a * var_0.a.a.a.a), -(-1000f));
    global3 = array<Struct_5, 12>();
    return ~(~1146u / (6553u >> ~select(4294967295u, u_input.b.x, false)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<u32>(arg_1 ^ u_input.c.x, clamp(~0u, 35319u, ~func_4(global0[countOneBits(arg_1)], func_3(vec3<i32>(u_input.a.x, global2.x, 1i), Struct_1(arg_2.x, 0u, u_input.a.x, 5031u), vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x), arg_0))));
    var var_1 = clamp(min(dot(-(~vec2<i32>(45011i, global4.x)), ~global2.wx >> var_0), 0i), u_input.a.x, global4.x);
    var_1 = 1i;
    var_1 = -(~clamp(1i, firstTrailingBit(-8901i), u_input.a.x)) | -1i;
    global2 = vec4<i32>(-2147483647i, -27818i, dot(vec3<i32>(reverseBits(u_input.a.x), firstTrailingBit(u_input.a.x), u_input.a.x & -15535i), max(abs(vec3<i32>(1i, global4.x, 2147483647i)), -vec3<i32>(u_input.a.x, global2.x, global4.x))), -clamp(select(global2.x, -54692i, arg_0), -global4.x, 2147483647i >> var_0.x)) % (~(~(-global0[arg_1])) + global0[4294967295u & firstLeadingBit(abs(55460u))]);
    return Struct_1(1000f, firstLeadingBit(var_0.x), global2.x, firstLeadingBit(~4294967295u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -10087i << arg_0.a.b;
    var var_1 = Struct_3(Struct_2(func_2(any(vec4<bool>(false, false, false, true)), max(u_input.c.x, arg_1.d) * 118u, vec2<f32>(1106f, arg_1.a) + select(arg_0.c.wx, arg_0.c.wz, vec2<bool>(false, true))), dot(vec3<i32>(max(u_input.a.x, 1i), -32204i, dot(vec3<i32>(arg_1.c, 2147483647i, 1i), vec3<i32>(arg_0.b, -2888i, -58456i))), abs(vec3<i32>(global2.x, i32(-2147483648), global2.x)) + abs(u_input.a)), arg_0.c), Struct_1(min(-345f, arg_0.a.a), dot(vec3<u32>(reverseBits(arg_1.b), 324u, 0u & arg_0.a.d), vec3<u32>(4294967295u, 4294967295u, u_input.c.x)), func_2(true != (606f == -801f), u_input.c.x, -arg_0.c.yw).c, 31970u), Struct_1(-1763f, countOneBits(arg_0.a.d), dot(countOneBits(u_input.a / vec3<i32>(-70748i, -50502i, global4.x)), ~(-vec3<i32>(u_input.a.x, arg_0.b, i32(-2147483648)))), 25829u), Struct_1(abs(-(-arg_0.c.x)), func_2(arg_0.a.a > -arg_1.a, min(37424u, arg_0.a.b), -arg_0.c.yx * -vec2<f32>(1070f, 1454f)).d, global2.x, ~4294967295u), ~global4.x < -(dot(vec4<i32>(0i, 2147483647i, arg_0.a.c, arg_0.b), global0[29282u]) % -global4.x));
    var var_2 = Struct_2(func_2(all(select(vec4<bool>(false, true, false, var_1.e), select(vec4<bool>(true, true, true, var_1.e), vec4<bool>(var_1.e, var_1.e, false, true), var_1.e), !var_1.e)), 61756u ^ ~0u, arg_0.c.yw), -(func_3(firstLeadingBit(u_input.a), func_2(false, u_input.c.x, vec2<f32>(-411f, -259f)), ~u_input.c.yxy, false) - ~min(2147483647i, arg_0.b)), -(-select(vec4<f32>(arg_0.a.a, -384f, -1000f, arg_0.c.x), vec4<f32>(var_1.a.a.a, arg_0.a.a, var_1.c.a, -1337f), vec4<bool>(var_1.e, true, var_1.e, true)) * round(vec4<f32>(-2813f, 2106f, 1244f, -1269f))));
    let var_3 = ~u_input.b;
    var_1 = Struct_3(var_1.a, arg_1, Struct_1(-sign(func_2(false, var_3.x, var_2.c.zw).a), select(~(arg_1.b ^ 77452u), 12984u, false), ~(~2574i | 15553i), clamp(6713u, firstLeadingBit(0u), var_2.a.b) & 1u), func_2(!var_1.e, var_2.a.b + clamp(abs(var_2.a.b), 31635u, 1u), -var_2.c.zx), -1i <= (-min(19561i, -39500i) - -global4.x));
    return arg_1;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_2(func_5(Struct_2(func_2(!false, 19508u + u_input.b.x, vec2<f32>(-712f, 2227f) * vec2<f32>(2165f, -2586f)), ~global4.x * (i32(-2147483648) / u_input.a.x), -select(vec4<f32>(-114f, 283f, -1385f, -1517f), vec4<f32>(-905f, -269f, -386f, -1045f), true)), Struct_1(1572f, min(65461u % 62082u, countOneBits(75278u)), u_input.a.x * u_input.a.x, 4294967295u + (4294967295u | u_input.c.x))), global4.x, -exp2(round(vec4<f32>(-725f, 1000f, -364f, -1196f))));
    let var_1 = trunc(ceil(var_0.c.ywz));
    global0 = array<vec4<i32>, 10>();
    var var_2 = 4294967295u;
    let var_3 = abs(~u_input.c) % vec4<u32>(4294967295u, u_input.c.x + u_input.b.x, 81096u >> 0u, u_input.c.x);
    return global3[~var_3.x | (clamp(dot(u_input.b, vec4<u32>(4294967295u, 10963u, var_3.x, 4532u)), 53770u, 4294967295u) ^ u_input.c.x)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = (vec4<f32>(-625f * (669f + -1604f), -func_1().a.c.a, -649f, -func_2(var_0.b.x, var_0.a.c.b, var_0.a.a.c.zw).a) - func_1().a.a.c) - var_0.a.a.c;
    let var_2 = select(~vec4<u32>(var_0.a.b.b | u_input.b.x, 1u / u_input.b.x, var_0.a.a.a.d + 24878u, ~var_0.a.b.b), vec4<u32>(firstTrailingBit(15874u), ~(~0u), u_input.c.x, func_4(vec4<i32>(global4.x, var_0.d, i32(-2147483648), u_input.a.x), 1i) >> func_5(var_0.a.a, Struct_1(var_1.x, 23107u, 2147483647i, u_input.c.x)).b), !(!select(vec4<bool>(false, var_0.b.x, var_0.b.x, true), vec4<bool>(true, var_0.b.x, var_0.c.x, var_0.c.x), var_0.e.x))) ^ countOneBits(countOneBits(u_input.b));
    var var_3 = var_0.a.e && !all(vec2<bool>(all(vec4<bool>(true, false, false, var_0.e.x)), all(vec4<bool>(false, true, true, var_0.c.x))));
    let var_4 = round(trunc(-525f));
    let x = u_input.a;
    s_output = StorageBuffer(floor(-(-740f) - 609f), u_input.b.x, 2147483647i, max(vec2<u32>(firstTrailingBit(var_2.x % var_0.a.b.d), 839u), select(vec2<u32>(121247u, u_input.b.x) | vec2<u32>(32601u, 22838u), ~vec2<u32>(4294967295u, 27715u), var_0.b.x) << vec2<u32>(u_input.b.x % var_0.a.a.a.d, 1u >> u_input.c.x)));
}

