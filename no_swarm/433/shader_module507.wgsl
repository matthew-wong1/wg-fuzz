// {"0:0":[180,241,39,3,17,197,18,56,37,164,40,28,241,211,52,252,224,30,225,63,115,70,123,13]}
// Seed: 14346088274209994086

struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = -16119i % -16798i;
    var var_1 = 691f * -1236f;
    var var_2 = 232f;
    var var_3 = -vec3<i32>(1i, u_input.e.x, arg_0.x);
    var_1 = 111f;
    return ~(-arg_0);
}

fn func_3() -> u32 {
    var var_0 = vec3<u32>(dot(select(~(~vec3<u32>(u_input.b, u_input.d, 1565u)), abs(clamp(vec3<u32>(4294967295u, u_input.c, u_input.b), vec3<u32>(u_input.d, 23375u, u_input.b), vec3<u32>(u_input.b, 20298u, u_input.b))), select(!vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, false))), ~(vec3<u32>(56333u, u_input.d, u_input.b) - ~vec3<u32>(u_input.c, 4294967295u, 4294967295u))), 3502u, ~(98326u % ~(0u / 1u)));
    let var_1 = ~(~(~var_0.x));
    let var_2 = min(-u_input.e.x, -1i);
    let var_3 = Struct_2(Struct_1(((vec2<f32>(-1351f, -287f) + vec2<f32>(-781f, -105f)) - floor(vec2<f32>(-1258f, -347f))) - trunc(-vec2<f32>(675f, 956f)), 1i), Struct_1(floor(round(vec2<f32>(785f, -126f) - vec2<f32>(1469f, -445f))), max(u_input.a, countOneBits(i32(-2147483648))) / (0i | -1i)), -253f, firstTrailingBit((vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x)) ^ vec4<u32>(u_input.c, var_0.x, 30531u, 31224u)) - ~vec4<u32>(0u & var_1, 4294967295u % 1u, ~var_1, var_1), Struct_1(floor(-vec2<f32>(-205f, 708f)) - (-vec2<f32>(-1098f, -238f) * vec2<f32>(1139f, 603f)), abs(-1i % dot(vec4<i32>(u_input.a, var_2, -21607i, u_input.e.x), vec4<i32>(1i, i32(-2147483648), u_input.e.x, -28879i)))));
    global0 = array<vec2<i32>, 24>();
    return 0u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    let var_0 = vec2<i32>(-max(58969i, -(u_input.a << u_input.b)), dot(vec4<i32>(-(u_input.e.x * 2147483647i), ~(21570i << 72345u), u_input.a, dot(vec3<i32>(arg_1.e.b, u_input.e.x, 1i) + vec3<i32>(u_input.e.x, 2147483647i, arg_1.e.b), vec3<i32>(27367i, u_input.e.x, u_input.a))), clamp((vec4<i32>(arg_1.a.b, arg_1.e.b, u_input.a, 34094i) * vec4<i32>(2147483647i, u_input.a, 51233i, -22867i)) * (vec4<i32>(u_input.a, u_input.a, arg_1.e.b, -23787i) * vec4<i32>(arg_1.a.b, u_input.e.x, -1i, i32(-2147483648))), func_2(~vec4<i32>(54484i, -1i, arg_1.e.b, 5933i)), (vec4<i32>(arg_1.b.b, -48481i, u_input.a, u_input.e.x) ^ vec4<i32>(i32(-2147483648), arg_1.e.b, 1i, arg_1.e.b)) % min(vec4<i32>(arg_1.b.b, -65477i, -1i, arg_1.a.b), vec4<i32>(u_input.e.x, -2708i, -1i, arg_1.a.b)))));
    var var_1 = arg_1.a;
    let var_2 = ~((func_3() >> 23428u) ^ 4294967295u);
    var_1 = arg_1.b;
    let var_3 = -(u_input.e.x ^ ((var_0.x ^ var_1.b) / 1641i));
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    var var_0 = -1i;
    let var_1 = ~select(abs(vec2<i32>(arg_1.e.b, ~arg_1.b.b)), vec2<i32>(-u_input.a, arg_1.e.b), any(select(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), !vec4<bool>(true, arg_2.x, true, false), any(vec4<bool>(false, false, false, arg_2.x)))));
    var var_2 = !(reverseBits(1u) == dot(vec2<u32>(~4294967295u, arg_1.d.x & u_input.b), vec2<u32>(u_input.b | u_input.d, 1u)));
    let var_3 = Struct_4(~vec4<u32>(4294967295u, arg_1.d.x + (0u - 4294967295u), ~45724u, 3077u));
    var_0 = var_1.x;
    return var_3.a.x;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = clamp(~(~(vec4<u32>(u_input.c, 14107u, arg_0, 1u) % vec4<u32>(28068u, u_input.c, 1u, 1u))), ~(~(~vec4<u32>(arg_3.x, 26590u, 0u, u_input.b))), (vec4<u32>(4294967295u, arg_0, arg_0, arg_2) ^ select(vec4<u32>(1u, 0u, arg_0, arg_3.x), vec4<u32>(0u, 36639u, arg_3.x, arg_2), vec4<bool>(true, true, false, true))) - ~(~vec4<u32>(4294967295u, 1u, arg_2, 306u))) << (~(~vec4<u32>(u_input.c, 31612u, 40413u, arg_0)) - vec4<u32>(0u, 0u, ~clamp(0u, 35265u, 4294967295u), (arg_3.x - u_input.d) << 62474u));
    var_0 = clamp(firstLeadingBit(vec4<u32>(var_0.x, firstTrailingBit(arg_2), ~1u, 0u)), ~vec4<u32>(~(~var_0.x), arg_2, ~30734u, clamp(75090u, 4294967295u, u_input.b) ^ 34568u), ~reverseBits(select(~vec4<u32>(1u, 5336u, 59133u, 38309u), ~vec4<u32>(0u, arg_0, 42645u, 1u), false)));
    global0 = array<vec2<i32>, 24>();
    var var_1 = true;
    let var_2 = Struct_2(func_1(-abs(vec4<f32>(-338f, 1886f, 209f, -729f)), Struct_2(func_1(-vec4<f32>(-607f, -1290f, -421f, 899f), func_1(vec4<f32>(931f, 706f, 1000f, -157f), Struct_2(Struct_1(vec2<f32>(-432f, -1000f), 59710i), Struct_1(vec2<f32>(-902f, 112f), i32(-2147483648)), -2174f, vec4<u32>(arg_0, arg_2, 56283u, arg_3.x), Struct_1(vec2<f32>(-1304f, -124f), i32(-2147483648))), Struct_4(vec4<u32>(arg_0, 4294967295u, arg_2, arg_0))), Struct_4(vec4<u32>(4294967295u, 4294967295u, var_0.x, arg_0))).e, func_1(-vec4<f32>(262f, 344f, 1000f, 1327f), Struct_2(Struct_1(vec2<f32>(-1718f, -837f), u_input.e.x), Struct_1(vec2<f32>(562f, 112f), -33087i), 271f, vec4<u32>(arg_0, 0u, 4294967295u, arg_3.x), Struct_1(vec2<f32>(1144f, -738f), 1i)), Struct_4(vec4<u32>(u_input.d, 1u, var_0.x, u_input.c))).a, -1298f, abs(min(vec4<u32>(945u, arg_3.x, 1u, u_input.b), vec4<u32>(1u, arg_0, u_input.c, 4294967295u))), func_1(vec4<f32>(186f, 125f, 437f, 636f) + vec4<f32>(1815f, -658f, -1000f, -1577f), Struct_2(Struct_1(vec2<f32>(251f, -418f), 21867i), Struct_1(vec2<f32>(1516f, -1000f), 15176i), 1662f, vec4<u32>(arg_3.x, arg_2, arg_3.x, 1u), Struct_1(vec2<f32>(-577f, -1481f), -46005i)), Struct_4(vec4<u32>(u_input.b, 1u, arg_2, 24835u))).b), Struct_4(~vec4<u32>(1u, arg_3.x, arg_3.x, arg_3.x) - abs(vec4<u32>(arg_2, 1u, var_0.x, 0u)))).e, func_1(select(vec4<f32>(576f, 740f, 634f, 1185f), select(vec4<f32>(405f, 1285f, -952f, 1000f), vec4<f32>(-293f, 1000f, 499f, -1286f), true), vec4<bool>(true, true, false, false)) / (vec4<f32>(-285f, 1252f, -957f, 572f) / -vec4<f32>(1154f, -252f, 1130f, 1000f)), func_1(-(vec4<f32>(-317f, 143f, 1068f, -109f) + vec4<f32>(-703f, -351f, -791f, -426f)), Struct_2(func_1(vec4<f32>(199f, -234f, 253f, -111f), Struct_2(Struct_1(vec2<f32>(-1000f, -1450f), 2147483647i), Struct_1(vec2<f32>(-1115f, -1125f), arg_1), 477f, vec4<u32>(arg_0, 0u, arg_0, 70589u), Struct_1(vec2<f32>(556f, -1076f), -9716i)), Struct_4(vec4<u32>(1u, 9845u, 1u, 0u))).b, Struct_1(vec2<f32>(2233f, -446f), u_input.e.x), -504f, firstTrailingBit(vec4<u32>(u_input.c, arg_0, 4294967295u, 35242u)), Struct_1(vec2<f32>(-1075f, 389f), u_input.e.x)), Struct_4(vec4<u32>(arg_3.x, arg_0, arg_2, 4294967295u) / vec4<u32>(1u, 13973u, 21211u, var_0.x))), Struct_4(select(vec4<u32>(u_input.d, 1u, arg_2, 1u) & vec4<u32>(53331u, 27628u, var_0.x, var_0.x), vec4<u32>(0u, 0u, arg_2, u_input.b) & vec4<u32>(arg_2, 54578u, arg_2, arg_3.x), !true))).e, sign(929f + sign(-1055f / 1000f)), ~clamp(firstTrailingBit(~vec4<u32>(u_input.c, 0u, 1u, arg_0)), max(vec4<u32>(62193u, 1u, 14445u, 75230u), vec4<u32>(u_input.b, arg_3.x, arg_0, 1u)) + firstLeadingBit(vec4<u32>(35858u, arg_0, 57079u, arg_2)), abs(~vec4<u32>(u_input.b, 1u, arg_3.x, 71097u))), func_1(vec4<f32>(-(-(-1248f)), (-825f - -2077f) + (-1166f * -2183f), -2538f, -1378f), func_1(vec4<f32>(-613f, floor(-1000f), ceil(-900f), exp2(-131f)), Struct_2(Struct_1(vec2<f32>(673f, -268f), 1i), func_1(vec4<f32>(567f, -637f, 163f, 1000f), Struct_2(Struct_1(vec2<f32>(-118f, -761f), 0i), Struct_1(vec2<f32>(-1210f, 1000f), i32(-2147483648)), 1137f, vec4<u32>(var_0.x, u_input.b, 34706u, u_input.c), Struct_1(vec2<f32>(-485f, -1021f), 1i)), Struct_4(vec4<u32>(1u, 13765u, 0u, arg_2))).b, -(-1338f), vec4<u32>(23074u, arg_3.x, 0u, arg_2), func_1(vec4<f32>(-447f, 1723f, -134f, 141f), Struct_2(Struct_1(vec2<f32>(-183f, 568f), u_input.e.x), Struct_1(vec2<f32>(456f, -129f), u_input.a), 990f, vec4<u32>(u_input.d, 12076u, arg_3.x, arg_2), Struct_1(vec2<f32>(684f, 486f), u_input.a)), Struct_4(vec4<u32>(u_input.d, var_0.x, arg_2, arg_2))).a), Struct_4(~vec4<u32>(4294967295u, 4294967295u, 33088u, 1u))), Struct_4(vec4<u32>(dot(vec3<u32>(arg_2, arg_0, u_input.d), var_0.zxy), arg_2, 67799u, arg_0))).b);
    return Struct_3(vec2<f32>(floor(-1650f), var_2.a.a.x) * var_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 24>();
    let var_0 = func_5(reverseBits(func_4(select(vec2<f32>(-933f, 382f), vec2<f32>(2402f, -169f), false), func_1(vec4<f32>(1759f, 1965f, -115f, -1000f), Struct_2(Struct_1(vec2<f32>(-1513f, -160f), 29599i), Struct_1(vec2<f32>(-333f, -487f), u_input.a), -896f, vec4<u32>(4294967295u, 9110u, u_input.b, 767u), Struct_1(vec2<f32>(274f, 317f), u_input.a)), Struct_4(vec4<u32>(1u, u_input.c, u_input.b, u_input.b))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))) - 2003u, u_input.a, func_4(-func_1(exp2(vec4<f32>(1182f, 1475f, 1315f, 546f)), Struct_2(Struct_1(vec2<f32>(2213f, -1597f), u_input.e.x), Struct_1(vec2<f32>(-2201f, -1265f), 1i), 1000f, vec4<u32>(0u, u_input.b, u_input.b, u_input.c), Struct_1(vec2<f32>(1007f, 1000f), u_input.a)), Struct_4(vec4<u32>(u_input.d, u_input.b, u_input.b, 4294967295u))).a.a, Struct_2(func_1(-vec4<f32>(-776f, 1876f, 1097f, 334f), func_1(vec4<f32>(-451f, -817f, -199f, -572f), Struct_2(Struct_1(vec2<f32>(1000f, -976f), u_input.a), Struct_1(vec2<f32>(1377f, -319f), u_input.a), -521f, vec4<u32>(26687u, 4294967295u, 4294967295u, u_input.c), Struct_1(vec2<f32>(1442f, -687f), -2383i)), Struct_4(vec4<u32>(u_input.c, 4294967295u, u_input.d, u_input.d))), Struct_4(vec4<u32>(0u, 0u, u_input.c, u_input.c))).b, Struct_1(-vec2<f32>(-415f, -1711f), 1i), round(-381f), ~vec4<u32>(1u, u_input.b, u_input.c, u_input.d), func_1(vec4<f32>(-567f, 329f, 613f, 174f), Struct_2(Struct_1(vec2<f32>(-322f, 1097f), u_input.a), Struct_1(vec2<f32>(1095f, -661f), 0i), -1866f, vec4<u32>(u_input.c, 60079u, 24287u, u_input.b), Struct_1(vec2<f32>(-1000f, 867f), u_input.e.x)), Struct_4(vec4<u32>(u_input.b, u_input.c, 0u, u_input.d))).a), vec3<bool>(u_input.d != (44672u ^ u_input.c), !(-233f > -1108f), false)), ~((vec3<u32>(0u, u_input.d, u_input.b) >> (vec3<u32>(0u, u_input.d, 7423u) & vec3<u32>(u_input.c, u_input.d, 3997u))) % vec3<u32>(u_input.d, dot(vec2<u32>(0u, 1u), vec2<u32>(u_input.c, 32051u)), countOneBits(4294967295u))));
    global0 = array<vec2<i32>, 24>();
    var var_1 = func_1(-sign(vec4<f32>(var_0.a.x, var_0.a.x, -386f, -530f) / sign(vec4<f32>(-113f, var_0.a.x, var_0.a.x, var_0.a.x))), func_1(vec4<f32>(var_0.a.x, -(-723f) - (247f * -696f), var_0.a.x, 194f), func_1(vec4<f32>(abs(-550f), var_0.a.x / 228f, -var_0.a.x, -506f), Struct_2(func_1(vec4<f32>(var_0.a.x, 850f, -1104f, var_0.a.x), Struct_2(Struct_1(var_0.a, -1i), Struct_1(var_0.a, u_input.a), var_0.a.x, vec4<u32>(1u, 4294967295u, 94427u, u_input.d), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), u_input.a)), Struct_4(vec4<u32>(51025u, 1u, 4294967295u, u_input.b))).a, func_1(vec4<f32>(-1315f, var_0.a.x, -250f, 1139f), Struct_2(Struct_1(var_0.a, 2147483647i), Struct_1(vec2<f32>(626f, -142f), -35442i), var_0.a.x, vec4<u32>(u_input.b, 18650u, 0u, u_input.d), Struct_1(var_0.a, -66668i)), Struct_4(vec4<u32>(89009u, u_input.c, 4294967295u, 31363u))).b, max(-987f, var_0.a.x), min(vec4<u32>(u_input.b, u_input.c, 16135u, u_input.b), vec4<u32>(u_input.c, 4294967295u, 1u, 1u)), Struct_1(vec2<f32>(-1342f, -501f), u_input.a)), Struct_4(vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b) * vec4<u32>(4294967295u, u_input.c, u_input.d, u_input.c))), Struct_4(vec4<u32>(func_4(var_0.a, Struct_2(Struct_1(var_0.a, 0i), Struct_1(var_0.a, u_input.a), -450f, vec4<u32>(u_input.c, 20221u, 2656u, u_input.c), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), 0i)), vec3<bool>(false, false, true)), u_input.c << 78968u, u_input.d * u_input.d, 87779u))), Struct_4(vec4<u32>(u_input.b, u_input.c | (30094u % u_input.b), u_input.c, 1u)));
    var_1 = func_1(-(-((vec4<f32>(var_0.a.x, var_1.b.a.x, var_0.a.x, 1000f) / vec4<f32>(var_1.e.a.x, -752f, 269f, var_0.a.x)) * (vec4<f32>(var_0.a.x, 172f, var_0.a.x, -557f) + vec4<f32>(-514f, var_0.a.x, var_1.b.a.x, var_1.c)))), func_1(-vec4<f32>(var_0.a.x, var_1.b.a.x + -1136f, 499f - 192f, var_0.a.x), func_1(ceil(vec4<f32>(var_0.a.x, -912f, 1071f, -385f)), func_1(vec4<f32>(var_1.c, -173f, -586f, 180f) + vec4<f32>(var_0.a.x, -240f, 2170f, -2248f), func_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 2166f), Struct_2(Struct_1(vec2<f32>(var_1.b.a.x, 204f), var_1.e.b), Struct_1(var_1.e.a, var_1.b.b), var_0.a.x, vec4<u32>(var_1.d.x, u_input.d, u_input.b, u_input.c), Struct_1(var_1.e.a, var_1.e.b)), Struct_4(vec4<u32>(u_input.b, 7721u, u_input.c, var_1.d.x))), Struct_4(var_1.d)), Struct_4(var_1.d)), Struct_4(var_1.d)), Struct_4((vec4<u32>(48318u, 27028u, u_input.c, var_1.d.x) + var_1.d) + (vec4<u32>(113775u, 0u, u_input.d, u_input.b) ^ clamp(vec4<u32>(var_1.d.x, 4294967295u, var_1.d.x, u_input.c), var_1.d, vec4<u32>(4294967295u, 3271u, 3044u, var_1.d.x)))));
    global0 = array<vec2<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer((~vec3<u32>(var_1.d.x, u_input.d, var_1.d.x) & ((vec3<u32>(30020u, u_input.d, u_input.d) | var_1.d.zyz) & max(var_1.d.xyw, vec3<u32>(4294967295u, 0u, 26594u)))) + (vec3<u32>(4294967295u << 31348u, ~4294967295u, var_1.d.x) - var_1.d.zww), abs(-(i32(-2147483648)) << (~4294967295u | (63307u + u_input.b))), dot(vec2<u32>(37547u, 4294967295u) - ~vec2<u32>(var_1.d.x, var_1.d.x), ~var_1.d.xw) + (u_input.b - 24771u));
}

