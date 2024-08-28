// {"0:0":[226,67,184,136,228,21,108,12,252,162,103,181,114,227,212,227,50,174,166,169,122,240,86,24,180,216,243,22,59,141,128,34]}
// Seed: 2646993620338923898

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3() -> bool {
    let var_0 = Struct_1(-(2147483647i - u_input.a.x));
    let var_1 = vec2<bool>(any(vec4<bool>(true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), !false)), any(vec3<bool>(all(vec3<bool>(false, false, false)) | (true | false), !(!true), !any(vec4<bool>(true, true, true, true)))));
    var var_2 = !false;
    var_2 = !(~(0u ^ ~1u) <= u_input.c);
    let var_3 = -max((var_0.a >> ~u_input.c) + u_input.d, ~(var_0.a << firstTrailingBit(u_input.c)));
    return var_1.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = func_3();
    var_0 = !(!(!(!true)));
    var_0 = select(false, false, !(!false));
    var var_1 = 28206i;
    let var_2 = ~0u ^ u_input.c;
    return reverseBits(-1i) * -(~dot(vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x) - vec3<i32>(0i, u_input.d, -15629i), u_input.a.zxz));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = vec3<u32>(10294u, u_input.c, 4294967295u) | (countOneBits(min(vec3<u32>(u_input.c, u_input.c, 19383u) | vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 4294967295u, 0u))) >> ~clamp(vec3<u32>(u_input.c, u_input.c, 16425u), vec3<u32>(26761u, 7900u, 4294967295u), vec3<u32>(u_input.c, 4294967295u, u_input.c) - vec3<u32>(37995u, u_input.c, u_input.c)));
    let var_2 = select(ceil(arg_1.a.x), -2305f + select(-(-785f), 930f, arg_2.c), false) + 509f;
    var var_3 = 1u > ((~countOneBits(4294967295u) % (min(36066u, var_1.x) << (var_1.x / 4294967295u))) & 49362u);
    var var_4 = Struct_1(var_0.e % abs(~(26569i + u_input.d)));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = 524f;
    var var_1 = arg_0.a.x;
    let var_2 = Struct_2(arg_0.a, true, any(vec2<bool>((-1119f * -443f) > arg_0.a.x, any(vec2<bool>(arg_1.x, arg_1.x)))), Struct_1(34310i), ~0i);
    let var_3 = select(~(select(abs(vec3<u32>(74689u, 0u, 0u)), vec3<u32>(u_input.c, u_input.c, u_input.c), !vec3<bool>(false, arg_1.x, false)) << ~(~vec3<u32>(u_input.c, 4730u, u_input.c))), vec3<u32>(reverseBits(dot(countOneBits(vec3<u32>(1u, u_input.c, 0u)), ~vec3<u32>(56745u, u_input.c, 0u))), countOneBits(clamp(u_input.c, 4294967295u, 1u) - ~30893u), dot(~(~vec2<u32>(1u, u_input.c)), vec2<u32>(u_input.c, 1u) | firstTrailingBit(vec2<u32>(10638u, 98179u)))), select(vec3<bool>(arg_0.b, select(var_2.c, var_2.c, true), false), vec3<bool>(arg_0.b, true, all(!vec4<bool>(var_2.c, false, arg_0.b, false))), vec3<bool>(all(vec4<bool>(true, arg_1.x, var_2.c, true)), !var_2.c, all(arg_1) | all(vec3<bool>(var_2.c, arg_0.c, var_2.c)))));
    let var_4 = (((~var_3.x % ~1u) - ~(u_input.c + 4294967295u)) % var_3.x) <= dot(max(clamp(vec4<u32>(4294967295u, 4294967295u, var_3.x, 6071u), vec4<u32>(1252u, u_input.c, u_input.c, 15344u), vec4<u32>(u_input.c, var_3.x, 37568u, 1u)) | vec4<u32>(var_3.x, 1u, 4294967295u, 1u), ~vec4<u32>(var_3.x, u_input.c, u_input.c, 66814u) ^ reverseBits(vec4<u32>(u_input.c, u_input.c, 1u, 24002u))), ~vec4<u32>(0u, 21103u, u_input.c, 100518u) ^ vec4<u32>(abs(4294967295u), 4294967295u, ~var_3.x, 4294967295u));
    return arg_0.b;
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = !(!all(select(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, false, arg_0.x), true), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), false))));
    var var_1 = arg_1 ^ arg_2.x;
    var_1 = func_4(arg_1 | ((arg_1 << min(56205u, 4294967295u)) / arg_1), func_4(2147483647i, func_4(0i, func_4(-u_input.b.x, func_4(u_input.a.x, Struct_2(arg_3, var_0, arg_0.x, Struct_1(arg_1), 1i), Struct_2(vec2<f32>(1633f, -1740f), arg_0.x, arg_0.x, Struct_1(2147483647i), u_input.a.x), 682f), Struct_2(arg_3, false, arg_0.x, Struct_1(-1i), arg_1), 1374f), func_4(-9716i - arg_2.x, Struct_2(vec2<f32>(661f, arg_3.x), false, var_0, Struct_1(-1i), arg_1), Struct_2(arg_3, true, false, Struct_1(u_input.b.x), arg_1), -607f), 2640f), Struct_2(vec2<f32>(select(arg_3.x, arg_3.x, true), -(-117f)), all(vec2<bool>(var_0, arg_0.x)), var_0, func_4(arg_2.x & i32(-2147483648), func_4(-52968i, Struct_2(vec2<f32>(1939f, -938f), false, false, Struct_1(1i), 2147483647i), Struct_2(vec2<f32>(-973f, arg_3.x), true, false, Struct_1(arg_1), 1i), 1075f), Struct_2(arg_3, true, false, Struct_1(u_input.a.x), 1i), exp2(arg_3.x)).d, -31841i), 1000f), Struct_2(round(-vec2<f32>(arg_3.x, 1027f)), !(true && all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), true, Struct_1(-u_input.a.x / -1i), -28912i & 51345i), -(-789f)).e;
    let var_2 = func_4((-14096i % (arg_2.x >> 1527u)) - dot(clamp(arg_2 + arg_2, vec2<i32>(-36945i, -47735i), select(vec2<i32>(-4853i, u_input.a.x), vec2<i32>(arg_2.x, 11334i), arg_0)), clamp(u_input.a.zw, vec2<i32>(arg_1, 1i), u_input.a.yy) + reverseBits(vec2<i32>(2147483647i, 18393i))), func_4(~1i, func_4(func_4(u_input.a.x, Struct_2(vec2<f32>(arg_3.x, arg_3.x), true, arg_0.x, Struct_1(arg_1), 50033i), Struct_2(vec2<f32>(arg_3.x, arg_3.x), arg_0.x, true, Struct_1(1i), -1i), 528f).d.a & i32(-2147483648), Struct_2(select(vec2<f32>(arg_3.x, arg_3.x), arg_3, vec2<bool>(true, false)), !var_0, arg_0.x, func_4(-17616i, Struct_2(vec2<f32>(-1486f, arg_3.x), var_0, var_0, Struct_1(-1i), u_input.a.x), Struct_2(arg_3, arg_0.x, false, Struct_1(u_input.a.x), u_input.b.x), 1985f).d, max(-15402i, arg_1)), func_4(-1170i, Struct_2(arg_3, false, false, Struct_1(arg_1), -21525i), Struct_2(vec2<f32>(-1396f, -368f), true, false, Struct_1(1i), u_input.d), 1000f), func_4(u_input.b.x, func_4(-29588i, Struct_2(arg_3, arg_0.x, true, Struct_1(-79742i), arg_2.x), Struct_2(arg_3, false, false, Struct_1(1i), arg_1), arg_3.x), Struct_2(arg_3, var_0, true, Struct_1(19060i), u_input.d), arg_3.x).a.x), func_4(-(arg_1 + u_input.a.x), func_4(dot(u_input.a.xw, vec2<i32>(arg_1, u_input.d)), func_4(-1i, Struct_2(arg_3, true, var_0, Struct_1(37411i), arg_2.x), Struct_2(arg_3, arg_0.x, false, Struct_1(u_input.d), arg_2.x), arg_3.x), Struct_2(vec2<f32>(-825f, arg_3.x), false, var_0, Struct_1(-60696i), -24255i), -arg_3.x), func_4(5369i, Struct_2(vec2<f32>(arg_3.x, -1995f), var_0, false, Struct_1(arg_1), arg_1), Struct_2(vec2<f32>(arg_3.x, -1000f), var_0, arg_0.x, Struct_1(arg_2.x), -17591i), arg_3.x / arg_3.x), arg_3.x), trunc(ceil(-582f)) * (arg_3.x - (-1880f * 747f))), Struct_2(-(arg_3 * max(arg_3, vec2<f32>(448f, arg_3.x))), arg_0.x, false, func_4((arg_1 >> u_input.c) >> u_input.c, Struct_2(vec2<f32>(-859f, -399f) * arg_3, true, any(vec4<bool>(var_0, true, false, false)), Struct_1(arg_2.x), arg_1), func_4(2147483647i, Struct_2(vec2<f32>(-487f, arg_3.x), true, false, Struct_1(i32(-2147483648)), 45756i), Struct_2(vec2<f32>(arg_3.x, -139f), true, false, Struct_1(12980i), 76470i), arg_3.x), arg_3.x).d, u_input.d), 1514f).d;
    var_1 = arg_1;
    return func_4(arg_2.x, Struct_2((-vec2<f32>(arg_3.x, 347f) * arg_3) + arg_3, any(!(!vec4<bool>(arg_0.x, var_0, true, false))), var_0, func_4(~var_2.a, Struct_2(arg_3, var_0, !false, Struct_1(2147483647i), arg_2.x), Struct_2(vec2<f32>(957f, arg_3.x), !true, true, Struct_1(-1i), countOneBits(arg_1)), -1219f * -arg_3.x).d, firstTrailingBit(min(64467i, -16475i) << u_input.c)), Struct_2(trunc(vec2<f32>(-1349f, -arg_3.x)), true, !((u_input.a.x * -14881i) > -2147483647i), func_4(-abs(2147483647i), Struct_2(arg_3 - arg_3, !true, all(vec4<bool>(var_0, var_0, false, arg_0.x)), var_2, -arg_2.x), func_4(dot(vec2<i32>(1i, var_2.a), u_input.b), Struct_2(arg_3, arg_0.x, true, var_2, arg_1), func_4(arg_1, Struct_2(arg_3, arg_0.x, var_0, var_2, -1i), Struct_2(arg_3, false, true, var_2, u_input.a.x), 528f), -arg_3.x), -1636f * trunc(arg_3.x)).d, -arg_2.x), arg_3.x).d;
}

fn func_1() -> Struct_1 {
    let var_0 = -(-358f);
    return func_6(vec2<bool>(false, func_5(func_4(func_2(Struct_1(u_input.b.x)), Struct_2(vec2<f32>(-399f, 1650f), false, true, Struct_1(1i), -50233i), Struct_2(vec2<f32>(var_0, var_0), true, false, Struct_1(u_input.d), u_input.a.x), floor(-1240f)), vec2<bool>(!true, all(vec3<bool>(false, false, false))))), u_input.a.x % (-(~(-1i)) / firstTrailingBit(39764i & 11104i)), ~(-u_input.b), vec2<f32>(var_0, var_0));
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = round(step(-558f - floor(-1591f), 1025f));
    var var_1 = func_4(u_input.a.x * -(~32176i), func_4(-2182i, func_4(arg_1.a << 12050u, func_4(u_input.b.x, Struct_2(vec2<f32>(-347f, -312f), arg_0.x, arg_0.x, arg_1, arg_1.a), func_4(-3522i, Struct_2(vec2<f32>(-362f, -352f), true, true, arg_1, 2147483647i), Struct_2(vec2<f32>(-393f, 1584f), false, true, arg_1, 2147483647i), -230f), -156f), func_4(-16119i, Struct_2(vec2<f32>(-548f, 174f), arg_0.x, false, arg_1, u_input.d), Struct_2(vec2<f32>(240f, -330f), arg_0.x, arg_0.x, Struct_1(11749i), u_input.b.x), 574f * 1591f), 614f - -906f), Struct_2(-(-vec2<f32>(-685f, 487f)), arg_0.x | any(arg_0.wx), !false, Struct_1(u_input.b.x), u_input.a.x), trunc(-406f) + step(min(365f, -1411f), -1102f)), Struct_2(ceil(floor(-vec2<f32>(-724f, 408f))), false, arg_0.x, arg_1, 66182i), -(-1126f));
    var_0 = ceil(644f + (-var_1.a.x * 918f));
    var var_2 = u_input.a.xw * abs(-(-(~vec2<i32>(-1i, -1i))));
    var var_3 = var_1.a;
    return Struct_1(-(~(~18443i) - u_input.b.x));
}

fn func_8(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.wy;
    var var_1 = reverseBits((var_0.x + (u_input.c * arg_1.x)) >> min(min(2350u, 79004u), u_input.c % 26147u)) ^ var_0.x;
    var var_2 = arg_0.a.x;
    var_2 = -abs(-988f);
    let var_3 = arg_2;
    return func_7(!select(!vec4<bool>(false, var_3.b, var_3.c, true), vec4<bool>(func_4(29684i, Struct_2(arg_0.a, var_3.b, arg_0.b, Struct_1(2147483647i), 23702i), Struct_2(arg_2.a, false, var_3.c, Struct_1(var_3.d.a), 0i), -1000f).c, -33596i <= arg_0.e, !true, arg_0.b), !(!arg_0.c)), Struct_1(dot(-vec2<i32>(0i, var_3.e) + u_input.a.zz, max(reverseBits(vec2<i32>(u_input.d, -1i)), -u_input.a.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-737f * ((-(-1323f) / 1678f) / round(-1088f + -873f))) * 815f;
    let var_1 = func_8(Struct_2((-vec2<f32>(987f, -880f) * vec2<f32>(2710f, -1089f)) * vec2<f32>(1252f, max(518f, 298f)), all(vec2<bool>(true || false, true == false)), (~1752i - (u_input.b.x & -10657i)) <= u_input.d, func_7(vec4<bool>(1u <= u_input.c, false != false, !true, false), func_1()), func_7(!vec4<bool>(true, true, true, false), Struct_1(u_input.b.x)).a / dot(vec2<i32>(u_input.d, u_input.a.x), -vec2<i32>(2147483647i, u_input.b.x))), vec4<u32>(0u, u_input.c, dot(~reverseBits(vec3<u32>(u_input.c, 22068u, u_input.c)), ~vec3<u32>(4294967295u, u_input.c, 7929u) | reverseBits(vec3<u32>(u_input.c, 11949u, u_input.c))), ~abs(u_input.c) * (9592u / ~20785u)), Struct_2(-step(vec2<f32>(-1084f, 956f), vec2<f32>(850f, -561f)) - vec2<f32>(-(-619f), -211f), !all(vec2<bool>(false, false)), all(select(vec4<bool>(false, false, true, false), !vec4<bool>(false, false, true, true), -624f != -2464f)), Struct_1(dot(u_input.b, vec2<i32>(-1i, u_input.a.x)) * min(33581i, u_input.d)), clamp((0i >> u_input.c) - -(-1i), -func_7(vec4<bool>(false, false, false, true), Struct_1(i32(-2147483648))).a, 10700i)));
    var var_2 = u_input.b;
    var_0 = min(643f * sign(-530f), -117f) - ceil(-145f);
    var var_3 = u_input.c;
    var_0 = -(sign(785f) * (round(-176f) * sign(557f))) - -((sign(-535f) / select(-910f, -599f, false)) / 241f);
    var_0 = (select(-trunc(413f), -848f / (1353f - -1477f), false) + min(-(-158f), -(-576f / 249f))) / (min(-(1649f / 149f), 1968f) / -1736f);
    var var_4 = -vec3<i32>(firstLeadingBit(var_1.a), ~var_1.a, func_4(u_input.a.x, func_4(-15724i, Struct_2(vec2<f32>(-498f, 126f), false, true, var_1, 1i), Struct_2(vec2<f32>(-267f, -559f), true, false, var_1, 78530i), 1000f), func_4(var_2.x, Struct_2(vec2<f32>(820f, 1273f), false, false, Struct_1(var_2.x), 17107i), Struct_2(vec2<f32>(1421f, -203f), true, false, Struct_1(47164i), -34391i), 371f), step(-1000f, -1629f)).d.a) + u_input.a.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, trunc(-((-488f / 635f) * (-941f / -830f))), ~u_input.c, 1000f, func_4(165i, func_4(u_input.a.x, Struct_2(-vec2<f32>(-1556f, -634f), !true, !true, var_1, -(i32(-2147483648))), Struct_2(vec2<f32>(-1236f, 156f), !false, false, func_8(Struct_2(vec2<f32>(-386f, 388f), true, true, var_1, 1i), vec4<u32>(0u, u_input.c, 0u, 57421u), Struct_2(vec2<f32>(555f, 335f), true, false, var_1, var_1.a)), u_input.d / 0i), -436f * -(-534f)), func_4(func_6(vec2<bool>(false, true), var_2.x, var_4.zx, step(vec2<f32>(-1030f, -2267f), vec2<f32>(-1000f, 116f))).a, func_4(var_4.x | var_4.x, func_4(i32(-2147483648), Struct_2(vec2<f32>(-1088f, 768f), false, true, var_1, u_input.b.x), Struct_2(vec2<f32>(-610f, 844f), false, true, Struct_1(var_2.x), 59663i), 196f), Struct_2(vec2<f32>(-477f, 627f), true, false, var_1, var_2.x), -626f * 1365f), func_4(-(-5204i), func_4(u_input.b.x, Struct_2(vec2<f32>(-606f, 1701f), false, false, Struct_1(var_4.x), var_4.x), Struct_2(vec2<f32>(-189f, 174f), false, false, Struct_1(2147483647i), var_2.x), 1355f), func_4(var_1.a, Struct_2(vec2<f32>(-1341f, -661f), false, true, var_1, 0i), Struct_2(vec2<f32>(-180f, -339f), true, false, Struct_1(var_2.x), var_2.x), -1790f), 1628f / 164f), min(421f, -212f / 1996f)), -1295f).a.x);
}

