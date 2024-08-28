// {"0:0":[232,40,161,19,230,34,119,17,244,25,13,144,55,81,246,161,89,229,230,83,28,243,249,79,68,141,213,43,83,146,176,4,155,196,185,114,219,167,54,71,42,168,109,107,66,179,1,229]}
// Seed: 3583469860942221280

struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32 = 49504u;

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = ~(~u_input.c);
    let var_0 = -arg_0.c.b.x;
    global0 = u_input.a;
    global0 = ~(~u_input.c);
    var var_1 = 1u;
    return Struct_1(!vec4<bool>(true, arg_1, !select(arg_0.d, false, false), !true == (arg_0.c.c.x && arg_1)), vec4<f32>(min(var_0, (1022f + arg_0.c.b.x) * arg_2.b.x), -1104f, arg_0.c.b.x, 2057f), !vec3<bool>(any(arg_0.c.c.yz) || (34371i == i32(-2147483648)), arg_0.d | arg_2.a.x, all(!vec2<bool>(arg_0.d, arg_1))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = !((-36016i + ~(arg_1.a.x << u_input.b.x)) <= -17552i);
    var_0 = true;
    global0 = reverseBits(~arg_0.x) << ~select(dot(vec4<u32>(arg_0.x, 13086u, u_input.b.x, 22538u), u_input.b), ~4294967295u, any(arg_1.c.a.ww));
    var var_1 = Struct_2(vec3<bool>(false, any(!arg_1.b.a.wx) & ((u_input.b.x == 0u) || !true), arg_1.d), arg_0.zw, true);
    let var_2 = !vec2<bool>(all(!func_1(arg_1, var_1.a.x, arg_1.c).a), func_1(arg_1, !any(vec3<bool>(false, arg_1.d, var_1.a.x)), func_1(Struct_3(arg_1.e, arg_1.b, Struct_1(arg_1.c.a, arg_1.c.b, vec3<bool>(false, false, arg_1.c.a.x)), var_1.c, vec3<i32>(2147483647i, arg_1.a.x, -1i)), var_1.c, func_1(arg_1, var_1.a.x, arg_1.c))).c.x);
    return vec3<bool>((arg_1.b.b.x + -1447f) != -ceil(-186f), false, var_2.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    global1 = 1908u;
    global0 = max(1u, arg_1.b.x);
    let var_0 = arg_1;
    var var_1 = 0u < firstLeadingBit(~firstTrailingBit(0u));
    let var_2 = vec4<f32>(sign(-(-315f)), (max(1492f, sign(-1000f)) / (-151f + -565f)) - abs(min(2124f + 1182f, -1000f)), (((610f * 824f) / 1034f) + 212f) + -trunc(-1443f), -898f);
    return -var_2.zww;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(func_2(u_input.b, Struct_3(vec3<i32>(arg_0.e.x, arg_0.a.x, -(i32(-2147483648))), func_1(Struct_3(arg_0.a, arg_0.c, arg_0.b, true, arg_0.a), !false, arg_2), func_1(arg_0, true | false, func_1(arg_0, arg_0.c.a.x, arg_2)), !true == !arg_0.c.c.x, vec3<i32>(arg_0.a.x + 0i, arg_0.e.x, abs(arg_0.e.x)))), abs(vec2<u32>(~(~arg_1.x), ~16899u ^ ~1u)), arg_0.d);
    let var_1 = arg_0.e.x;
    let var_2 = ~(1i + ((var_1 / (2147483647i + var_1)) * 24317i));
    global1 = u_input.c;
    var_0 = Struct_2(vec3<bool>(select(-1190f * -292f, -1283f, all(vec3<bool>(arg_2.a.x, arg_0.c.c.x, arg_0.d))) < -(-2052f - arg_2.b.x), 2147483647i <= reverseBits(-arg_0.e.x), !(!true)), clamp(vec2<u32>(arg_1.x, ~4294967295u), ~(arg_1.zy + vec2<u32>(20574u, 1u)), firstLeadingBit(var_0.b * arg_1.zx)) << firstTrailingBit(~vec2<u32>(15076u, u_input.c)), false);
    return Struct_2(arg_2.c, ~(~vec2<u32>(u_input.c, 4294967295u) << reverseBits(u_input.b.yx)), func_1(arg_0, ~arg_1.x < dot(reverseBits(vec2<u32>(4294967295u, arg_1.x)), ~u_input.b.xw), arg_2).a.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    let var_0 = arg_1.b.a;
    let var_1 = Struct_1(select(select(func_1(arg_1, any(arg_1.c.a), func_1(arg_1, true, Struct_1(vec4<bool>(true, var_0.x, arg_1.b.a.x, arg_0.c), vec4<f32>(-905f, 908f, -676f, arg_1.c.b.x), var_0.xxy))).a, var_0, vec4<bool>(arg_1.d | arg_0.a.x, 15929u <= u_input.a, !false, arg_1.a.x > arg_3)), select(var_0, vec4<bool>(var_0.x, func_4(arg_1, vec3<u32>(51038u, arg_2.x, 1766u), Struct_1(vec4<bool>(false, true, true, false), arg_1.b.b, arg_0.a), vec3<f32>(-1792f, 2013f, arg_1.b.b.x)).c, false, arg_1.c.b.x != arg_1.b.b.x), arg_1.c.c.x), !(!(true || var_0.x))), -(-trunc(vec4<f32>(-121f, 1060f, -1498f, 1000f))), var_0.zyy);
    var var_2 = Struct_3(firstTrailingBit(firstLeadingBit(vec3<i32>(i32(-2147483648), -1i, firstLeadingBit(2147483647i)))), arg_1.b, var_1, false, -vec3<i32>(reverseBits(2147483647i) >> 44316u, arg_3, -44931i));
    var var_3 = vec3<u32>(arg_2.x, arg_0.b.x, dot(u_input.b | ~u_input.b, vec4<u32>(u_input.b.x, abs(~arg_0.b.x), 15960u, 4294967295u)));
    return 99913u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(func_5(func_4(Struct_3(abs(vec3<i32>(11632i, -1i, 50076i)), func_1(Struct_3(vec3<i32>(41461i, -21174i, -67401i), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(824f, -180f, 399f, -243f), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(-1211f, -938f, 350f, -380f), vec3<bool>(true, false, true)), false, vec3<i32>(45065i, -1402i, 1279i)), true, Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(132f, 112f, -367f, 1000f), vec3<bool>(false, true, false))), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-447f, 1795f, -1445f, -1302f), vec3<bool>(false, true, false)), !false, vec3<i32>(-48563i, i32(-2147483648), 1i)), u_input.b.zwx, Struct_1(!vec4<bool>(false, true, true, true), vec4<f32>(-330f, 470f, 916f, -1385f), func_2(u_input.b, Struct_3(vec3<i32>(-1i, -45705i, 0i), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(236f, -779f, 1039f, -1335f), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-370f, 446f, 626f, -500f), vec3<bool>(true, false, false)), true, vec3<i32>(16188i, -1i, -1i)))), func_3(vec4<bool>(true, false, false, false), Struct_2(vec3<bool>(true, false, false), u_input.b.xw, false), u_input.a, Struct_2(vec3<bool>(false, true, false), vec2<u32>(u_input.b.x, 71664u), true))), Struct_3(-vec3<i32>(0i, -8660i, -8180i) | max(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 42890i)), func_1(Struct_3(vec3<i32>(2147483647i, 0i, 1i), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-252f, -217f, -460f, 659f), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(809f, 518f, 540f, 1087f), vec3<bool>(false, true, true)), false, vec3<i32>(-34656i, 23440i, 0i)), i32(-2147483648) > 4200i, Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(1951f, -1000f, 187f, -463f), vec3<bool>(false, false, true))), func_1(Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 1i), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-299f, -1115f, -1146f, 1613f), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-371f, 209f, -1116f, -1646f), vec3<bool>(true, false, false)), true, vec3<i32>(-28182i, 12609i, 1i)), true & true, Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(265f, 2730f, -1000f, 103f), vec3<bool>(false, false, true))), !(!false), ~(vec3<i32>(-45301i, -36950i, 11495i) - vec3<i32>(-1i, 0i, 1i))), ~u_input.b.wy, 1i));
    let var_0 = Struct_2(vec3<bool>(true | true, all(func_1(Struct_3(vec3<i32>(-1i, -13095i, -51274i), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-870f, 926f, -408f, 369f), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-346f, 967f, -255f, -1617f), vec3<bool>(false, true, false)), true, vec3<i32>(6603i, -12543i, -9021i)), all(vec4<bool>(false, false, true, true)), func_1(Struct_3(vec3<i32>(37782i, -12723i, -1i), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-1580f, -804f, -1775f, 1431f), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-1667f, 1576f, -781f, 1726f), vec3<bool>(true, false, true)), true, vec3<i32>(-8400i, 61476i, 51406i)), true, Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(482f, -262f, 1203f, -486f), vec3<bool>(false, false, true)))).a), select(0i <= (-1i + 48377i), select(!true, 626f >= -781f, true & false), !(!true))), select(vec2<u32>(u_input.b.x ^ clamp(u_input.b.x, u_input.c, 67807u), ~func_5(Struct_2(vec3<bool>(true, false, false), vec2<u32>(u_input.a, 71073u), true), Struct_3(vec3<i32>(-19061i, 1i, -9533i), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(205f, -920f, 1000f, -521f), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-683f, 311f, -1545f, -1885f), vec3<bool>(false, false, false)), true, vec3<i32>(0i, -77565i, 46308i)), u_input.b.yw, -42984i)), ~((vec2<u32>(1u, u_input.a) + u_input.b.ww) * ~vec2<u32>(0u, u_input.b.x)), !vec2<bool>(true, 1u > u_input.a)), -(~(-323i % 2147483647i)) == dot(~vec4<i32>(-14742i, i32(-2147483648), i32(-2147483648), 11554i), abs(vec4<i32>(-1i, -1i, 28672i, 1i)) % ~vec4<i32>(0i, 0i, -1i, -1i)));
    var var_1 = select(select(!(!select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.c), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), true)), !vec4<bool>(false, !false, func_2(u_input.b, Struct_3(vec3<i32>(2147483647i, 15242i, 2147483647i), Struct_1(vec4<bool>(var_0.c, var_0.a.x, var_0.a.x, var_0.c), vec4<f32>(-444f, 162f, -674f, -322f), vec3<bool>(var_0.a.x, var_0.a.x, true)), Struct_1(vec4<bool>(true, false, var_0.a.x, true), vec4<f32>(1722f, 950f, 249f, 1049f), var_0.a), var_0.a.x, vec3<i32>(-11757i, -2832i, i32(-2147483648)))).x, 0i >= 2147483647i), vec4<bool>(false, all(func_2(u_input.b, Struct_3(vec3<i32>(-40620i, 1i, -1i), Struct_1(vec4<bool>(var_0.a.x, var_0.c, var_0.c, var_0.c), vec4<f32>(2119f, 836f, -962f, 1943f), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(false, true, var_0.a.x, true), vec4<f32>(-127f, -1633f, -1000f, 1772f), vec3<bool>(var_0.c, true, var_0.a.x)), false, vec3<i32>(-1i, -21693i, i32(-2147483648)))).xy), any(!vec4<bool>(var_0.c, var_0.c, true, var_0.a.x)), !false)), vec4<bool>(1087f <= exp2(trunc(-141f)), (u_input.b.x >> 4294967295u) <= 0u, var_0.c, true), select(!(!vec4<bool>(var_0.a.x, false, var_0.c, true)), !(!select(vec4<bool>(true, var_0.a.x, false, false), vec4<bool>(false, true, var_0.a.x, var_0.a.x), var_0.c)), select(select(vec4<bool>(true, var_0.c, var_0.a.x, var_0.a.x), !vec4<bool>(false, var_0.a.x, var_0.c, true), false | var_0.c), func_1(Struct_3(vec3<i32>(11844i, -13653i, 0i), Struct_1(vec4<bool>(false, var_0.c, var_0.c, var_0.a.x), vec4<f32>(-463f, -962f, 1000f, 2110f), var_0.a), Struct_1(vec4<bool>(var_0.a.x, true, false, true), vec4<f32>(-1067f, -1000f, 1159f, -833f), vec3<bool>(false, false, var_0.a.x)), var_0.a.x, vec3<i32>(-55736i, 10495i, -31307i)), !false, Struct_1(vec4<bool>(false, var_0.a.x, false, false), vec4<f32>(1000f, 371f, 1278f, -2406f), vec3<bool>(var_0.c, true, var_0.c))).a, select(vec4<bool>(var_0.a.x, var_0.c, var_0.c, true), select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.c, false, var_0.c, false), vec4<bool>(var_0.c, var_0.a.x, var_0.a.x, true)), !vec4<bool>(false, true, false, var_0.c)))));
    var var_2 = Struct_3(abs(-(~vec3<i32>(i32(-2147483648), 31193i, 34530i)) * clamp(vec3<i32>(0i, 1i, 20581i), -vec3<i32>(i32(-2147483648), 7570i, -73741i), countOneBits(vec3<i32>(67561i, 2147483647i, 1i)))), func_1(Struct_3(~vec3<i32>(24912i, 708i, -1i) / abs(vec3<i32>(2147483647i, 57311i, 2147483647i)), Struct_1(!vec4<bool>(true, true, var_0.a.x, true), exp2(vec4<f32>(2106f, 776f, -846f, -899f)), select(var_1.zzx, var_1.xxx, var_0.a.x)), func_1(Struct_3(vec3<i32>(0i, 48439i, -28849i), Struct_1(vec4<bool>(false, var_0.c, var_1.x, false), vec4<f32>(1475f, 821f, 212f, 1000f), vec3<bool>(true, var_0.a.x, false)), Struct_1(vec4<bool>(var_0.c, var_1.x, true, true), vec4<f32>(860f, 483f, 367f, -853f), vec3<bool>(var_1.x, var_0.a.x, true)), true, vec3<i32>(1i, 1i, 1i)), var_0.c | var_0.c, Struct_1(vec4<bool>(true, true, false, var_0.a.x), vec4<f32>(-1030f, 712f, -1340f, 189f), var_0.a)), !(true | var_0.c), vec3<i32>(-30000i, -(i32(-2147483648)), -2147483647i)), true, func_1(Struct_3(clamp(vec3<i32>(67322i, -21334i, 68299i), vec3<i32>(-1i, 2147483647i, -21878i), vec3<i32>(1i, -1i, 0i)), Struct_1(vec4<bool>(true, var_1.x, true, var_0.a.x), vec4<f32>(-1244f, 733f, -1227f, -1131f), var_1.zxx), Struct_1(vec4<bool>(true, var_0.a.x, true, var_1.x), vec4<f32>(-1267f, 669f, -688f, -254f), vec3<bool>(true, var_1.x, var_0.a.x)), !true, -vec3<i32>(0i, -17872i, 15116i)), any(var_0.a) & !var_1.x, Struct_1(vec4<bool>(true, true, var_1.x, true), vec4<f32>(1491f, -452f, 658f, -608f), !var_1.wxw))), Struct_1(vec4<bool>(select(var_1.x, any(vec4<bool>(var_0.c, false, var_0.c, true)), func_2(vec4<u32>(66946u, 4294967295u, 0u, 11399u), Struct_3(vec3<i32>(42792i, 1i, -529i), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.c, true), vec4<f32>(-1000f, 1260f, -378f, 557f), var_0.a), Struct_1(vec4<bool>(var_0.c, false, var_0.a.x, false), vec4<f32>(557f, 1130f, -1103f, -435f), var_1.xxw), var_0.a.x, vec3<i32>(i32(-2147483648), -66335i, -59714i))).x), any(vec4<bool>(var_0.c, false, var_0.c, var_1.x)), !true != !false, true || var_0.a.x), -abs(vec4<f32>(329f, -1477f, -933f, 2361f)), var_0.a), !(firstLeadingBit(~18128u) == 26105u), ~(~abs(vec3<i32>(1i, i32(-2147483648), 1i)) << ~u_input.b.wxw));
    var var_3 = Struct_2(vec3<bool>(func_1(Struct_3(max(vec3<i32>(-29280i, 1005i, 2147483647i), var_2.e), Struct_1(vec4<bool>(var_1.x, false, true, var_0.a.x), vec4<f32>(-1275f, var_2.c.b.x, var_2.c.b.x, var_2.b.b.x), vec3<bool>(true, false, var_1.x)), Struct_1(var_2.b.a, var_2.c.b, vec3<bool>(true, true, var_0.c)), !false, var_2.e), false, Struct_1(func_1(Struct_3(vec3<i32>(var_2.a.x, var_2.e.x, 0i), Struct_1(var_2.c.a, vec4<f32>(1000f, var_2.b.b.x, var_2.c.b.x, 2026f), vec3<bool>(var_1.x, false, false)), var_2.c, var_1.x, var_2.e), true, Struct_1(var_2.c.a, var_2.b.b, var_0.a)).a, -var_2.b.b, select(vec3<bool>(var_0.a.x, true, var_0.c), vec3<bool>(false, false, var_2.c.c.x), var_0.c))).c.x, true & ((true | var_1.x) && any(vec3<bool>(false, true, true))), !(!var_0.a.x) || var_2.d), u_input.b.xw, true);
    let var_4 = -1042f;
    var var_5 = 1207f;
    var_1 = !var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_4, var_2.c.b.x, var_2.b.b.x), vec2<u32>(var_0.b.x, dot(firstTrailingBit(var_0.b), abs(var_3.b))) << (min(var_0.b, ~u_input.b.yw) % (vec2<u32>(var_0.b.x, var_0.b.x) % ~var_3.b)));
}

