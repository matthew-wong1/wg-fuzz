struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 27>;

var<private> global2: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_3(-1000f, vec3<bool>(false, true, false), vec4<u32>(40081u, 0u, 24560u, 26866u)), vec4<f32>(307f, -793f, 607f, 684f), Struct_1(1i, vec3<u32>(46486u, 1u, 0u), -1i, 1941f), Struct_2(Struct_1(22588i, vec3<u32>(1u, 89781u, 45141u), 18526i, -176f), vec3<f32>(1217f, -195f, 1201f))), Struct_5(Struct_3(-702f, vec3<bool>(false, false, true), vec4<u32>(8176u, 1u, 4294967295u, 57101u)), vec4<f32>(-444f, 589f, 854f, -107f), Struct_1(2147483647i, vec3<u32>(1u, 47193u, 37072u), 1i, 822f), Struct_2(Struct_1(1472i, vec3<u32>(28117u, 26651u, 88897u), 28773i, 1809f), vec3<f32>(-451f, 1000f, -1428f))), Struct_5(Struct_3(613f, vec3<bool>(false, true, false), vec4<u32>(0u, 4294967295u, 50126u, 53329u)), vec4<f32>(-545f, 499f, -255f, -193f), Struct_1(i32(-2147483648), vec3<u32>(0u, 1u, 48354u), i32(-2147483648), 482f), Struct_2(Struct_1(-25548i, vec3<u32>(36605u, 6592u, 1u), 1i, -1069f), vec3<f32>(-1278f, -242f, 250f))), Struct_5(Struct_3(-668f, vec3<bool>(false, true, true), vec4<u32>(4294967295u, 4294967295u, 48069u, 1u)), vec4<f32>(-976f, 1340f, -1079f, 1000f), Struct_1(0i, vec3<u32>(106537u, 1u, 1u), 0i, 449f), Struct_2(Struct_1(-76296i, vec3<u32>(0u, 0u, 1u), 1i, 1000f), vec3<f32>(906f, 164f, 537f))), Struct_5(Struct_3(1000f, vec3<bool>(true, false, true), vec4<u32>(0u, 87949u, 12715u, 62287u)), vec4<f32>(-1000f, -344f, 890f, 975f), Struct_1(i32(-2147483648), vec3<u32>(19139u, 3840u, 92502u), -43735i, 528f), Struct_2(Struct_1(8160i, vec3<u32>(41991u, 1u, 0u), 1i, 1788f), vec3<f32>(589f, -2503f, 1293f))), Struct_5(Struct_3(-611f, vec3<bool>(false, false, false), vec4<u32>(1u, 34519u, 11374u, 21485u)), vec4<f32>(-596f, 362f, 1000f, 1000f), Struct_1(-34078i, vec3<u32>(43003u, 1u, 1u), i32(-2147483648), -1000f), Struct_2(Struct_1(0i, vec3<u32>(31775u, 1u, 59561u), -1i, -541f), vec3<f32>(-2264f, 255f, 1000f))), Struct_5(Struct_3(1258f, vec3<bool>(true, false, true), vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), vec4<f32>(721f, -781f, 1575f, -760f), Struct_1(-1i, vec3<u32>(2284u, 9515u, 89109u), 0i, -190f), Struct_2(Struct_1(105582i, vec3<u32>(48137u, 12703u, 46632u), 47327i, 1000f), vec3<f32>(-1101f, 557f, -1905f))), Struct_5(Struct_3(428f, vec3<bool>(false, false, true), vec4<u32>(21216u, 26371u, 2202u, 61296u)), vec4<f32>(-289f, -2307f, -328f, -1191f), Struct_1(21920i, vec3<u32>(4294967295u, 22210u, 4294967295u), 1i, -1000f), Struct_2(Struct_1(-6594i, vec3<u32>(27345u, 540u, 22645u), 2147483647i, -1078f), vec3<f32>(320f, -467f, -1464f))), Struct_5(Struct_3(266f, vec3<bool>(true, true, false), vec4<u32>(26263u, 0u, 35159u, 71269u)), vec4<f32>(-143f, 2983f, 1099f, 852f), Struct_1(-1208i, vec3<u32>(69238u, 15589u, 0u), -27872i, 1134f), Struct_2(Struct_1(0i, vec3<u32>(0u, 0u, 0u), 1i, 1305f), vec3<f32>(-487f, -1208f, 288f))), Struct_5(Struct_3(186f, vec3<bool>(false, true, false), vec4<u32>(4294967295u, 50299u, 937u, 19766u)), vec4<f32>(-1053f, 1709f, -2256f, 318f), Struct_1(-34350i, vec3<u32>(0u, 0u, 29296u), 2147483647i, -861f), Struct_2(Struct_1(0i, vec3<u32>(45160u, 0u, 0u), 0i, -244f), vec3<f32>(-139f, 1000f, -745f))), Struct_5(Struct_3(-400f, vec3<bool>(true, true, true), vec4<u32>(1u, 55555u, 1u, 1u)), vec4<f32>(574f, 571f, 746f, 104f), Struct_1(-13633i, vec3<u32>(0u, 0u, 13109u), -53216i, -111f), Struct_2(Struct_1(56164i, vec3<u32>(0u, 53961u, 21242u), -5385i, 546f), vec3<f32>(777f, 182f, -471f))), Struct_5(Struct_3(-1000f, vec3<bool>(true, false, false), vec4<u32>(4294967295u, 0u, 1u, 14797u)), vec4<f32>(230f, 221f, 848f, -168f), Struct_1(-1i, vec3<u32>(4294967295u, 27489u, 7752u), 0i, 564f), Struct_2(Struct_1(2147483647i, vec3<u32>(51065u, 1u, 4294967295u), 45499i, 263f), vec3<f32>(1663f, 158f, 1898f))), Struct_5(Struct_3(254f, vec3<bool>(true, true, true), vec4<u32>(1u, 82677u, 64332u, 90982u)), vec4<f32>(1000f, 1000f, -771f, -614f), Struct_1(-65862i, vec3<u32>(1u, 51817u, 9104u), -16164i, -662f), Struct_2(Struct_1(-1i, vec3<u32>(33612u, 5478u, 78778u), 4107i, -1000f), vec3<f32>(1000f, -189f, 672f))), Struct_5(Struct_3(1483f, vec3<bool>(true, true, true), vec4<u32>(13433u, 4294967295u, 4294967295u, 8000u)), vec4<f32>(-311f, -803f, 1080f, -906f), Struct_1(-1i, vec3<u32>(58351u, 4294967295u, 1u), -20486i, 1382f), Struct_2(Struct_1(1i, vec3<u32>(0u, 57467u, 33792u), 10016i, -848f), vec3<f32>(-1247f, -1091f, 350f))), Struct_5(Struct_3(-456f, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 75000u, 4294967295u, 26836u)), vec4<f32>(601f, 1287f, 1635f, 784f), Struct_1(-19468i, vec3<u32>(62690u, 0u, 1u), 2147483647i, 280f), Struct_2(Struct_1(595i, vec3<u32>(0u, 0u, 8053u), -39995i, 1636f), vec3<f32>(1541f, -1000f, 1328f))), Struct_5(Struct_3(925f, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), vec4<f32>(-2118f, 1000f, -876f, 1083f), Struct_1(42828i, vec3<u32>(37198u, 29043u, 0u), -16627i, 207f), Struct_2(Struct_1(14194i, vec3<u32>(10249u, 52276u, 3900u), -1i, 907f), vec3<f32>(1542f, -741f, 963f))), Struct_5(Struct_3(-965f, vec3<bool>(false, false, false), vec4<u32>(0u, 0u, 87419u, 94639u)), vec4<f32>(1446f, -182f, 1000f, -1186f), Struct_1(27504i, vec3<u32>(4470u, 13645u, 0u), -29289i, -592f), Struct_2(Struct_1(25319i, vec3<u32>(4294967295u, 24534u, 4521u), i32(-2147483648), 206f), vec3<f32>(356f, -1428f, 817f))), Struct_5(Struct_3(-305f, vec3<bool>(false, true, false), vec4<u32>(0u, 4294967295u, 0u, 18223u)), vec4<f32>(1159f, 185f, -618f, 1543f), Struct_1(-5690i, vec3<u32>(34007u, 4294967295u, 1u), i32(-2147483648), -1254f), Struct_2(Struct_1(16437i, vec3<u32>(29182u, 1u, 4294967295u), 4749i, 925f), vec3<f32>(690f, -105f, -1174f))), Struct_5(Struct_3(-1824f, vec3<bool>(true, false, false), vec4<u32>(0u, 0u, 4294967295u, 10300u)), vec4<f32>(-799f, 1051f, 840f, 158f), Struct_1(-18607i, vec3<u32>(1u, 10849u, 30416u), -1i, 400f), Struct_2(Struct_1(5593i, vec3<u32>(115591u, 31774u, 39164u), i32(-2147483648), -1000f), vec3<f32>(-1260f, -1079f, 1026f))), Struct_5(Struct_3(310f, vec3<bool>(false, true, true), vec4<u32>(17169u, 100890u, 0u, 2300u)), vec4<f32>(-787f, 859f, 484f, 841f), Struct_1(1613i, vec3<u32>(15245u, 0u, 4294967295u), 31630i, 560f), Struct_2(Struct_1(15001i, vec3<u32>(4294967295u, 21957u, 9822u), 2147483647i, 491f), vec3<f32>(106f, -1433f, -447f))), Struct_5(Struct_3(-879f, vec3<bool>(false, false, true), vec4<u32>(2917u, 16981u, 10584u, 4294967295u)), vec4<f32>(1389f, -583f, 173f, -953f), Struct_1(0i, vec3<u32>(34386u, 44777u, 0u), 2147483647i, -1535f), Struct_2(Struct_1(i32(-2147483648), vec3<u32>(102991u, 79640u, 3641u), 50061i, -108f), vec3<f32>(-1321f, -465f, -2319f))), Struct_5(Struct_3(-139f, vec3<bool>(false, true, true), vec4<u32>(39461u, 21463u, 0u, 4383u)), vec4<f32>(2233f, -2787f, -3023f, 2800f), Struct_1(-46519i, vec3<u32>(4294967295u, 44595u, 77189u), i32(-2147483648), 803f), Struct_2(Struct_1(1i, vec3<u32>(53870u, 12609u, 0u), -1i, -1193f), vec3<f32>(-477f, -1257f, -1606f))), Struct_5(Struct_3(1599f, vec3<bool>(true, true, false), vec4<u32>(38207u, 82432u, 1u, 0u)), vec4<f32>(1673f, -643f, -1237f, 202f), Struct_1(39753i, vec3<u32>(4294967295u, 48076u, 36208u), -1i, 379f), Struct_2(Struct_1(-15666i, vec3<u32>(23391u, 0u, 59562u), i32(-2147483648), -888f), vec3<f32>(730f, -2094f, -889f))), Struct_5(Struct_3(-684f, vec3<bool>(true, true, true), vec4<u32>(31214u, 1u, 10385u, 4294967295u)), vec4<f32>(-345f, -1277f, 1000f, 391f), Struct_1(-25794i, vec3<u32>(56576u, 1u, 34951u), -34043i, 641f), Struct_2(Struct_1(6560i, vec3<u32>(24359u, 1u, 10947u), -20857i, 1000f), vec3<f32>(519f, -1297f, -393f))), Struct_5(Struct_3(-902f, vec3<bool>(false, false, false), vec4<u32>(40572u, 16583u, 4294967295u, 71736u)), vec4<f32>(1771f, -930f, 654f, 1277f), Struct_1(-40582i, vec3<u32>(35503u, 4294967295u, 47145u), 1i, -155f), Struct_2(Struct_1(0i, vec3<u32>(16553u, 35535u, 1u), -41110i, 2062f), vec3<f32>(371f, 397f, -328f))), Struct_5(Struct_3(339f, vec3<bool>(false, true, false), vec4<u32>(40133u, 1u, 13879u, 4294967295u)), vec4<f32>(-722f, -350f, -422f, 617f), Struct_1(1i, vec3<u32>(17746u, 36707u, 4294967295u), 2147483647i, 609f), Struct_2(Struct_1(i32(-2147483648), vec3<u32>(0u, 87104u, 1u), 1i, 333f), vec3<f32>(-541f, -1499f, 1473f))), Struct_5(Struct_3(-1000f, vec3<bool>(true, true, false), vec4<u32>(19866u, 20011u, 3531u, 1u)), vec4<f32>(-337f, -737f, 1000f, 633f), Struct_1(-20695i, vec3<u32>(28769u, 1u, 4294967295u), -41073i, 743f), Struct_2(Struct_1(-14487i, vec3<u32>(71077u, 0u, 94182u), -12276i, 1257f), vec3<f32>(1774f, -1000f, -397f))), Struct_5(Struct_3(905f, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 4294967295u, 49486u, 20852u)), vec4<f32>(-756f, 243f, 849f, 170f), Struct_1(88013i, vec3<u32>(55509u, 4294967295u, 1u), 0i, 293f), Struct_2(Struct_1(0i, vec3<u32>(4294967295u, 4294967295u, 1u), 18080i, -729f), vec3<f32>(186f, 1000f, 1000f))), Struct_5(Struct_3(937f, vec3<bool>(false, true, false), vec4<u32>(1u, 29509u, 4294967295u, 1u)), vec4<f32>(-888f, 545f, 658f, 334f), Struct_1(i32(-2147483648), vec3<u32>(20231u, 4294967295u, 4294967295u), -1i, -2001f), Struct_2(Struct_1(-44173i, vec3<u32>(27303u, 4294967295u, 34235u), -1988i, 351f), vec3<f32>(443f, 1179f, 1746f))), Struct_5(Struct_3(-1307f, vec3<bool>(true, true, true), vec4<u32>(103227u, 39054u, 42564u, 4294967295u)), vec4<f32>(414f, -1659f, -1000f, -289f), Struct_1(-9932i, vec3<u32>(4294967295u, 4044u, 77024u), 0i, 274f), Struct_2(Struct_1(-1i, vec3<u32>(3773u, 7374u, 5795u), -25173i, -568f), vec3<f32>(-579f, 321f, 236f))), Struct_5(Struct_3(-1199f, vec3<bool>(false, true, false), vec4<u32>(20822u, 35316u, 0u, 64395u)), vec4<f32>(207f, 299f, 515f, 515f), Struct_1(37223i, vec3<u32>(0u, 0u, 1u), 11472i, 1873f), Struct_2(Struct_1(-1i, vec3<u32>(46243u, 51114u, 110737u), i32(-2147483648), 1881f), vec3<f32>(1934f, 440f, 524f))), Struct_5(Struct_3(611f, vec3<bool>(true, false, false), vec4<u32>(1u, 74163u, 0u, 1u)), vec4<f32>(-1491f, 1710f, -329f, 902f), Struct_1(-1i, vec3<u32>(0u, 12253u, 1u), 0i, -1114f), Struct_2(Struct_1(-1i, vec3<u32>(79860u, 25523u, 58751u), 10438i, -765f), vec3<f32>(576f, -953f, -1075f))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.a.x, 15808u, 110439u, 28501u), u_input.a) << (~vec4<u32>(1u, 75902u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 405u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), abs(111454u))), (reverseBits(vec4<u32>(u_input.a.x, 60831u, u_input.a.x, 43751u)) << ((vec4<u32>(3660u, 0u, 4294967295u, u_input.a.x) | u_input.a) % vec4<u32>(32u))) >> (((u_input.a & vec4<u32>(u_input.a.x, 0u, 22976u, 4294967295u)) & ~u_input.a) % vec4<u32>(32u)))), 27u)];
    global1 = array<i32, 27>();
    var_0 = abs(firstTrailingBit(reverseBits(u_input.b))) & _wgslsmith_sub_i32(10000i, arg_1);
    global2 = array<Struct_5, 32>();
    var var_1 = Struct_1(-20599i, ~_wgslsmith_mult_vec3_u32(reverseBits(u_input.a.yyw), min(_wgslsmith_div_vec3_u32(u_input.a.xyz, vec3<u32>(0u, u_input.a.x, 73597u)), vec3<u32>(u_input.a.x, 10187u, 1u))), -abs(-6853i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2199f))))));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(abs(~vec4<i32>(0i, -27727i, -1i, 4392i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -32335i, 1i, -2147483647i), vec4<i32>(u_input.b, -2147483647i, arg_1, 0i)), vec4<i32>(u_input.b, 19094i, u_input.b, -2147483647i) | vec4<i32>(64323i, 37247i, -29273i, var_1.c))), ~(-24947i), 23319i, 0i);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> f32 {
    global2 = array<Struct_5, 32>();
    var var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(func_3(1000f, arg_1.c, vec2<bool>(true, true)), vec4<i32>(1i, arg_0, abs(28172i), 2147483647i), -_wgslsmith_sub_vec4_i32(vec4<i32>(12649i, u_input.b, -1i, 8694i), vec4<i32>(arg_0, arg_0, global1[_wgslsmith_index_u32(1u, 27u)], -1i)))), _wgslsmith_sub_vec4_i32(firstTrailingBit(-countOneBits(vec4<i32>(0i, u_input.b, 0i, arg_0))), _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], -18071i, arg_0, global1[_wgslsmith_index_u32(1u, 27u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_1.c, arg_1.a)), -_wgslsmith_mod_vec4_i32(vec4<i32>(31040i, -49893i, -7627i, arg_1.c), vec4<i32>(u_input.b, arg_0, u_input.b, 1i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 - -834f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 - 1403f), arg_2, true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, 685f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1464f, 671f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, arg_2))))) - vec2<f32>(1f, _wgslsmith_f_op_f32(floor(arg_2))))), (_wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(arg_1.d, arg_1.d)) == _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(select(168f, arg_1.d, false)))) & true));
    global1 = array<i32, 27>();
    var var_2 = _wgslsmith_mult_vec3_i32(select(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_1.c, -2147483647i)), -select(vec3<i32>(31381i, arg_1.c, 2147483647i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(48425u, 27u)], u_input.b), vec3<bool>(false, true, true)), true) >> (~u_input.a.xzx % vec3<u32>(32u)), -(-vec3<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -1i) | vec3<i32>(~(-35894i), 0i, _wgslsmith_clamp_i32(48238i, -1i, 11867i))));
    return var_1.x;
}

fn func_1() -> vec3<i32> {
    global0 = -8325i;
    let var_0 = countOneBits(vec3<i32>(-24638i, _wgslsmith_div_i32(-(global1[_wgslsmith_index_u32(u_input.a.x, 27u)] | global1[_wgslsmith_index_u32(76465u, 27u)]), ~_wgslsmith_div_i32(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), u_input.b));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(-2147483647i, Struct_1(global1[_wgslsmith_index_u32(0u, 27u)], u_input.a.wxw, 1i, -261f), -116f)))))), select(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true, 1265f <= _wgslsmith_f_op_f32(trunc(-887f))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, u_input.b > -1i), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, select(false, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), ~_wgslsmith_mod_vec4_u32(~u_input.a, ~select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 10880u), vec4<u32>(u_input.a.x, 82527u, u_input.a.x, 1u), false)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -495f), 1440f);
    global2 = array<Struct_5, 32>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec3<bool>(1u > ~_wgslsmith_mult_u32(u_input.a.x, 49582u), true == any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(select(false, true, false), any(vec3<bool>(false, true, true)), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)))), !select(true, false, any(vec3<bool>(true, true, true))));
    global1 = array<i32, 27>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f - _wgslsmith_f_op_f32(f32(-1f) * -685f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-775f, 625f)))) - _wgslsmith_f_op_f32(-1019f + _wgslsmith_f_op_f32(-1f))));
    global0 = 17637i;
    let var_3 = reverseBits(_wgslsmith_add_u32(u_input.a.x, 4294967295u) & (55064u | u_input.a.x));
    let var_4 = vec2<u32>(_wgslsmith_mult_u32(var_3, ~var_3), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.a.x, 19204u), _wgslsmith_f_op_f32(f32(-1f) * -218f), countOneBits(_wgslsmith_mult_vec2_i32(func_1().xx, -abs(vec2<i32>(33024i, -22640i)))));
}

