// {"0:0":[162,221,89,248,64,86,165,118,64,71,240,67,54,221,76,16,48,67,159,219,238,199,183,120,62,14,25,195,238,26,180,198,186,230,181,140,93,102,148,203,198,167,68,243,209,93,109,144,143,54,211,188,52,22,189,53,180,154,41,66,100,2,147,100]}
// Seed: 7034881233260923400

struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn func_2(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = arg_0.d;
    global0 = array<Struct_2, 21>();
    let var_1 = ~countOneBits(~1u - (select(arg_0.c, u_input.d.x, false) & u_input.a));
    let var_2 = false;
    global0 = array<Struct_2, 21>();
    return ~arg_0.a.b & ~clamp(~u_input.c * ~62759u, ~102954u, ~arg_0.b >> 17008u);
}

fn func_3() -> vec3<u32> {
    let var_0 = firstTrailingBit(~u_input.c) < 4294967295u;
    var var_1 = Struct_1(!false, 1u % (~firstLeadingBit(1u) / 0u), max(u_input.b.x, ~(~u_input.b.x) % -31290i), -(-(min(vec4<f32>(1191f, 2047f, -2233f, 1155f), vec4<f32>(-1437f, 2242f, -1000f, -1831f)) * (vec4<f32>(1533f, 307f, 373f, -301f) * vec4<f32>(-1504f, -2162f, 692f, -395f)))), -(-trunc(1365f)));
    var var_2 = Struct_3(Struct_1(var_1.a, func_2(Struct_3(Struct_1(false, 1u, 0i, vec4<f32>(-116f, -2883f, -1461f, 919f), 913f), ~u_input.a, var_1.b, false), !(!var_1.a)), firstLeadingBit(-(u_input.b.x + 1i)), var_1.d - -(vec4<f32>(-1793f, var_1.d.x, -421f, var_1.e) * var_1.d), -var_1.d.x), ~dot(reverseBits(~vec2<u32>(84552u, 1u)), u_input.d.wy), ~max(var_1.b, ~(~22510u)), !all(vec4<bool>(!false, 43284u > u_input.d.x, !true, true)));
    var var_3 = any(select(vec3<bool>(true, true, var_2.d), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(var_2.d, true, true)), select(!vec3<bool>(var_2.d, true, false), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_2.d, var_2.d, var_0), vec3<bool>(true, var_1.a, false)), true), select(select(vec3<bool>(false, var_2.a.a, var_0), vec3<bool>(true, var_0, false), true), select(vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, false), true), var_0)), vec3<bool>(!false, !var_1.a, var_2.d)));
    var var_4 = Struct_2(~u_input.d.yww, (-17693i ^ ~(-var_2.a.c)) >> var_2.c, 4294967295u + u_input.d.x, var_2.a, vec2<i32>(1i, u_input.b.x));
    return min(vec3<u32>(~(~firstTrailingBit(var_1.b)), 4294967295u | ~var_4.d.b, max(var_1.b, ~29112u ^ reverseBits(u_input.a))), abs(~vec3<u32>(23535u * var_2.c, ~1u, u_input.c + var_1.b)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32) -> bool {
    var var_0 = Struct_3(Struct_1(!(!true) || true, ~((arg_0.x * 50813u) - ~28288u), -firstTrailingBit(-47929i), max(-sign(vec4<f32>(1016f, -488f, -938f, 145f)), -(vec4<f32>(651f, -790f, 892f, 2207f) + vec4<f32>(-2224f, -541f, 320f, -127f))), 1436f), u_input.a, arg_0.x, any(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true))));
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = Struct_4(global0[dot(vec3<u32>(~101021u, ~arg_0.x, ~0u), abs(arg_0) * u_input.d.xyw) / arg_0.x], var_0.a, firstLeadingBit(abs(u_input.a)), Struct_3(var_0.a, var_0.c % dot(u_input.d, ~u_input.d), u_input.d.x, false), Struct_3(Struct_1(true, arg_0.x, u_input.b.x, vec4<f32>(2135f, 1000f - var_0.a.e, var_0.a.e, var_0.a.e), ceil(abs(var_0.a.d.x))), 0u + ~(1u & u_input.c), select(4635u, 0u, var_0.d), var_0.a.a));
    let var_2 = !vec4<bool>(all(!(!vec3<bool>(var_0.d, false, true))), false, !all(vec3<bool>(true, true, var_1.d.d)), !false);
    return var_1.d.d;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    var var_0 = select(func_2(Struct_3(arg_2.b, 4294967295u, 1u, false), ((-938f + -1115f) - -(-618f)) > arg_2.a.d.d.x), ~(~((arg_0.c * arg_0.a.x) / 28157u)), any(!select(select(vec2<bool>(true, arg_0.d.a), vec2<bool>(arg_2.d.a.a, arg_0.d.a), vec2<bool>(arg_0.d.a, arg_0.d.a)), select(vec2<bool>(true, false), vec2<bool>(arg_0.d.a, false), vec2<bool>(arg_3.a.a, arg_2.d.a.a)), !arg_0.d.a)));
    global0 = array<Struct_2, 21>();
    let var_1 = arg_1.b;
    let var_2 = arg_2.a.d.e;
    var var_3 = global0[u_input.c];
    return any(vec2<bool>(!all(!vec3<bool>(arg_1.e.d, var_3.d.a, true)), func_4(func_3(), arg_1.a.e, var_3.e.x ^ -57722i)));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 21>();
    var var_0 = arg_2.a;
    let var_1 = 4294967295u;
    var_0 = Struct_2(vec3<u32>(firstLeadingBit(arg_1.x), abs(arg_3.d.b), 7111u), arg_2.e.a.c, (~(60541u % arg_1.x) * func_2(arg_2.e, arg_2.b.a)) | reverseBits(~firstLeadingBit(arg_1.x)), arg_2.d.a, var_0.e);
    var var_2 = var_0.d;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(countOneBits(~(~u_input.d.xyz) << vec3<u32>(~u_input.d.x, u_input.d.x, ~0u)), u_input.b.x, 4294967295u * dot(~clamp(u_input.d.yx, vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.c, u_input.a)), select(~u_input.d.wx, u_input.d.xy | vec2<u32>(2004u, 30420u), !vec2<bool>(false, false))), func_5(select(!(!true), select(func_1(Struct_2(u_input.d.zxy, -31862i, u_input.a, Struct_1(false, 15859u, u_input.b.x, vec4<f32>(132f, 436f, -884f, -1013f), -712f), vec2<i32>(u_input.b.x, -46849i)), Struct_4(global0[u_input.d.x], Struct_1(false, u_input.d.x, u_input.b.x, vec4<f32>(-789f, -717f, -596f, 1000f), 765f), 4294967295u, Struct_3(Struct_1(false, u_input.c, 310i, vec4<f32>(-212f, 173f, -410f, 474f), -984f), 23367u, u_input.d.x, false), Struct_3(Struct_1(true, u_input.d.x, 1i, vec4<f32>(-1002f, -466f, -312f, -1421f), 528f), 0u, u_input.a, true)), Struct_4(global0[4294967295u], Struct_1(false, 39396u, -4332i, vec4<f32>(1032f, 1257f, -1422f, -743f), 264f), u_input.c, Struct_3(Struct_1(true, u_input.a, 1i, vec4<f32>(268f, -1071f, 1041f, 407f), 1356f), u_input.a, u_input.c, true), Struct_3(Struct_1(false, u_input.d.x, u_input.b.x, vec4<f32>(-1222f, -1443f, -177f, 822f), -434f), u_input.c, u_input.c, false)), Struct_3(Struct_1(true, u_input.a, 0i, vec4<f32>(1000f, 964f, -148f, 1000f), -1190f), u_input.c, 0u, false)), func_1(Struct_2(vec3<u32>(0u, u_input.a, u_input.c), u_input.b.x, 30993u, Struct_1(true, 0u, -1i, vec4<f32>(1250f, -427f, 183f, 282f), 1534f), u_input.b.ww), Struct_4(Struct_2(vec3<u32>(u_input.d.x, 0u, 4294967295u), 10828i, 31340u, Struct_1(true, 4294967295u, u_input.b.x, vec4<f32>(432f, 1145f, -297f, -479f), 214f), u_input.b.zz), Struct_1(false, u_input.d.x, u_input.b.x, vec4<f32>(-1000f, -232f, -334f, -350f), 371f), u_input.c, Struct_3(Struct_1(false, u_input.c, u_input.b.x, vec4<f32>(-683f, 915f, 735f, -1856f), -1266f), 81032u, u_input.c, true), Struct_3(Struct_1(false, u_input.d.x, u_input.b.x, vec4<f32>(462f, -1000f, -1000f, 585f), -171f), u_input.d.x, 4294967295u, false)), Struct_4(global0[u_input.d.x], Struct_1(false, 4294967295u, u_input.b.x, vec4<f32>(-1476f, 305f, 1247f, -981f), -150f), u_input.c, Struct_3(Struct_1(false, u_input.a, 2147483647i, vec4<f32>(511f, 328f, -1045f, -1574f), 1096f), 19776u, u_input.a, true), Struct_3(Struct_1(true, 1u, u_input.b.x, vec4<f32>(-904f, 2996f, -1382f, 484f), 1002f), u_input.a, u_input.c, true)), Struct_3(Struct_1(true, u_input.c, -19660i, vec4<f32>(443f, -162f, 273f, -296f), -917f), u_input.d.x, 124380u, false)), !false), (8691u - 1u) <= ~u_input.c), u_input.d.xxy, Struct_4(Struct_2(~u_input.d.xzx, -u_input.b.x, 24256u / u_input.d.x, Struct_1(true, 4294967295u, u_input.b.x, vec4<f32>(-212f, -1124f, 1000f, -446f), 2354f), select(u_input.b.xw, u_input.b.ww, vec2<bool>(false, true))), Struct_1(!false, ~u_input.d.x, firstLeadingBit(5110i), vec4<f32>(-2056f, -1015f, -1194f, 676f), min(-2343f, -252f)), 4294967295u, Struct_3(Struct_1(false, 51954u, 1i, vec4<f32>(-1000f, 678f, 165f, 468f), 2817f), u_input.c | u_input.d.x, u_input.c, true && true), Struct_3(Struct_1(false, 39513u, u_input.b.x, vec4<f32>(-1255f, 1135f, -454f, 1000f), -1242f), ~969u, 4294967295u & 1u, u_input.c >= 70770u)), Struct_2(vec3<u32>(u_input.d.x, 20298u + 4294967295u, ~u_input.c), abs(~(i32(-2147483648))), 3236u, Struct_1(!true, firstTrailingBit(u_input.c), countOneBits(u_input.b.x), ceil(vec4<f32>(-1000f, 423f, -358f, 553f)), -1529f - -147f), u_input.b.zz)), vec2<i32>(-1i, ~u_input.b.x));
    let var_1 = vec3<f32>(-361f, var_0.d.e - -310f, -(-var_0.d.e) / -floor(-721f * var_0.d.d.x));
    var_0 = Struct_2(u_input.d.yww ^ (reverseBits(vec3<u32>(247u, 1u, var_0.c)) << ~(~u_input.d.zyy)), clamp(var_0.b, (-u_input.b.x ^ u_input.b.x) | i32(-2147483648), var_0.b), var_0.a.x, Struct_1(var_0.d.a, ~dot(vec4<u32>(var_0.c, 33147u, 3156u, 4294967295u), u_input.d), -1i, exp2(vec4<f32>(-var_0.d.d.x, var_0.d.d.x - 728f, var_0.d.e, 2279f)), min(-(-var_1.x), 473f)), vec2<i32>(-1i, u_input.b.x));
    let var_2 = Struct_1(!(!false), ~(~(~4294967295u)) * ~func_5(var_0.d.a, ~u_input.d.yzz, Struct_4(global0[0u], Struct_1(var_0.d.a, var_0.c, u_input.b.x, var_0.d.d, var_0.d.d.x), var_0.c, Struct_3(var_0.d, 74597u, 12384u, var_0.d.a), Struct_3(Struct_1(var_0.d.a, u_input.a, 2147483647i, var_0.d.d, var_1.x), 4294967295u, var_0.d.b, true)), Struct_2(vec3<u32>(u_input.d.x, var_0.a.x, var_0.a.x), 1i, 4163u, var_0.d, u_input.b.yx)).b, var_0.d.c, var_0.d.d, -func_5(false, clamp(~vec3<u32>(var_0.a.x, 34156u, 36504u), ~vec3<u32>(var_0.d.b, var_0.a.x, u_input.a), var_0.a >> u_input.d.wwz), Struct_4(Struct_2(var_0.a, -19409i, 0u, var_0.d, var_0.e), var_0.d, reverseBits(76497u), Struct_3(Struct_1(false, var_0.a.x, u_input.b.x, var_0.d.d, var_0.d.d.x), 1u, 38587u, var_0.d.a), Struct_3(Struct_1(var_0.d.a, u_input.a, u_input.b.x, var_0.d.d, -381f), var_0.a.x, 42639u, true)), Struct_2(~vec3<u32>(15808u, 0u, u_input.a), ~(-56407i), 0u, func_5(false, var_0.a, Struct_4(global0[4294967295u], var_0.d, var_0.a.x, Struct_3(Struct_1(true, var_0.d.b, -66819i, var_0.d.d, var_0.d.d.x), 351u, 61721u, true), Struct_3(Struct_1(true, 0u, 2147483647i, var_0.d.d, var_0.d.e), var_0.d.b, u_input.c, var_0.d.a)), Struct_2(u_input.d.zwy, var_0.d.c, u_input.a, var_0.d, var_0.e)), ~var_0.e)).e);
    var var_3 = func_5(var_2.a, vec3<u32>(39252u, var_0.a.x, var_0.a.x), Struct_4(Struct_2(abs(var_0.a >> var_0.a), -17619i, u_input.a / dot(vec3<u32>(8479u, 0u, 11492u), vec3<u32>(1u, 12142u, 0u)), var_0.d, vec2<i32>(u_input.b.x, abs(24062i))), func_5(!func_1(global0[19982u], Struct_4(global0[u_input.a], Struct_1(var_2.a, u_input.c, var_0.e.x, vec4<f32>(var_1.x, -510f, var_2.e, var_1.x), -1023f), 4304u, Struct_3(var_2, 64361u, 64501u, var_2.a), Struct_3(Struct_1(var_2.a, 33872u, u_input.b.x, var_2.d, var_2.e), var_0.c, 26791u, false)), Struct_4(Struct_2(var_0.a, 1i, 42763u, var_0.d, var_0.e), var_2, 0u, Struct_3(var_0.d, var_2.b, u_input.d.x, var_2.a), Struct_3(Struct_1(false, var_0.d.b, var_2.c, var_2.d, -382f), 1u, 4294967295u, true)), Struct_3(var_2, u_input.d.x, var_2.b, true)), vec3<u32>(clamp(u_input.c, u_input.d.x, u_input.d.x), ~0u, var_0.a.x), Struct_4(global0[u_input.c & u_input.a], func_5(var_0.d.a, vec3<u32>(1u, 4612u, var_0.d.b), Struct_4(Struct_2(vec3<u32>(4294967295u, u_input.d.x, 24657u), u_input.b.x, 0u, var_0.d, vec2<i32>(var_2.c, u_input.b.x)), var_2, 22787u, Struct_3(Struct_1(false, 33850u, u_input.b.x, vec4<f32>(var_2.e, var_1.x, var_1.x, 618f), 343f), 77903u, u_input.a, var_2.a), Struct_3(Struct_1(false, var_0.d.b, -17554i, vec4<f32>(-194f, var_2.d.x, var_1.x, var_0.d.d.x), -799f), 27958u, var_0.d.b, false)), Struct_2(vec3<u32>(var_2.b, var_0.d.b, u_input.a), -24865i, u_input.c, Struct_1(true, var_2.b, -4245i, var_2.d, 1000f), vec2<i32>(var_2.c, var_2.c))), ~u_input.d.x, Struct_3(Struct_1(true, 6732u, -85963i, var_0.d.d, var_1.x), u_input.d.x, u_input.c, true), Struct_3(Struct_1(false, var_0.d.b, u_input.b.x, var_2.d, -1001f), var_0.d.b, 93320u, var_2.a)), Struct_2(u_input.d.zwx ^ vec3<u32>(u_input.a, u_input.a, var_0.c), var_0.b, 42590u, Struct_1(var_0.d.a, 4294967295u, -29061i, var_2.d, var_2.d.x), -vec2<i32>(var_2.c, u_input.b.x))), dot(~vec4<u32>(1u, 7870u, 1u, var_0.d.b), firstTrailingBit(u_input.d)) & ~5987u, Struct_3(func_5(var_2.a, u_input.d.wyy + var_0.a, Struct_4(Struct_2(u_input.d.xyy, u_input.b.x, var_0.a.x, Struct_1(var_2.a, 29533u, u_input.b.x, vec4<f32>(var_1.x, var_2.e, -496f, 457f), var_1.x), vec2<i32>(u_input.b.x, u_input.b.x)), var_0.d, u_input.a, Struct_3(var_2, 0u, 1u, false), Struct_3(var_2, var_0.d.b, 0u, true)), global0[var_2.b]), 0u & u_input.a, clamp(u_input.a ^ 55292u, ~0u, var_2.b), true), Struct_3(Struct_1(false, ~var_0.a.x, min(u_input.b.x, u_input.b.x), sign(var_0.d.d), -436f), (1u >> u_input.a) - 1u, 2937u, var_2.a)), Struct_2(~(~var_0.a), -dot(u_input.b, u_input.b), ~23704u, var_2, vec2<i32>(u_input.b.x, ~var_0.e.x & dot(u_input.b.yy, vec2<i32>(u_input.b.x, -1i)))));
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>((28499u >> u_input.c) >> ~var_0.d.b, ~(~4294967295u)), var_0.a.zz, !(!select(vec2<bool>(var_3.a, false), vec2<bool>(true, false), true))));
}

