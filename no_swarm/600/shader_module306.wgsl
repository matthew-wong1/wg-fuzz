struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<f32>(813f, 1708f, 1131f, -287f), vec3<u32>(22180u, 1u, 67436u), 39333u, vec2<i32>(1i, 41228i), 559f), vec4<u32>(959u, 0u, 28985u, 4294967295u), Struct_1(vec4<f32>(1692f, -1269f, -1014f, -726f), vec3<u32>(33648u, 5510u, 19001u), 32609u, vec2<i32>(0i, 35401i), -1212f), vec2<i32>(2147483647i, -22506i), Struct_1(vec4<f32>(588f, 396f, -975f, -1051f), vec3<u32>(0u, 4294967295u, 33689u), 0u, vec2<i32>(1i, 22174i), -2136f)), Struct_2(Struct_1(vec4<f32>(-1785f, -202f, -410f, 1000f), vec3<u32>(4294967295u, 23120u, 1u), 2897u, vec2<i32>(-1i, -4373i), -1047f), vec4<u32>(100388u, 1u, 41610u, 4294967295u), Struct_1(vec4<f32>(1067f, -828f, -1591f, -1269f), vec3<u32>(0u, 4294967295u, 1u), 4294967295u, vec2<i32>(-797i, -2659i), 121f), vec2<i32>(-12402i, 0i), Struct_1(vec4<f32>(753f, -678f, -642f, 602f), vec3<u32>(12228u, 0u, 59353u), 2107u, vec2<i32>(19606i, 11476i), -1957f)), Struct_2(Struct_1(vec4<f32>(574f, -285f, -225f, 717f), vec3<u32>(4294967295u, 1u, 26156u), 55884u, vec2<i32>(-1i, -9338i), -228f), vec4<u32>(4294967295u, 39956u, 32004u, 4294967295u), Struct_1(vec4<f32>(2378f, 2043f, -437f, 651f), vec3<u32>(1u, 1u, 88321u), 0u, vec2<i32>(6966i, -1i), 1648f), vec2<i32>(-1i, -27649i), Struct_1(vec4<f32>(-1056f, -1000f, 856f, -434f), vec3<u32>(23240u, 36226u, 13562u), 4294967295u, vec2<i32>(1i, -26512i), -1324f)), Struct_2(Struct_1(vec4<f32>(-700f, -848f, 585f, -625f), vec3<u32>(0u, 11106u, 1u), 49391u, vec2<i32>(36415i, 24914i), -1491f), vec4<u32>(4294967295u, 1u, 52u, 71264u), Struct_1(vec4<f32>(-777f, -1435f, 566f, -306f), vec3<u32>(17755u, 0u, 1u), 64791u, vec2<i32>(-14185i, 0i), 2289f), vec2<i32>(23605i, 0i), Struct_1(vec4<f32>(-1629f, -543f, 1000f, -651f), vec3<u32>(70305u, 38342u, 2152u), 78635u, vec2<i32>(2147483647i, 21078i), -138f)), Struct_2(Struct_1(vec4<f32>(1191f, -1384f, -812f, -729f), vec3<u32>(1u, 0u, 0u), 4294967295u, vec2<i32>(i32(-2147483648), 53783i), -310f), vec4<u32>(12736u, 94021u, 80u, 0u), Struct_1(vec4<f32>(2037f, -427f, -197f, -1000f), vec3<u32>(1u, 60350u, 4294967295u), 0u, vec2<i32>(3310i, 54782i), -278f), vec2<i32>(2147483647i, -33745i), Struct_1(vec4<f32>(538f, -267f, 501f, -2146f), vec3<u32>(4009u, 20969u, 22463u), 93305u, vec2<i32>(1i, 2147483647i), -2963f)), Struct_2(Struct_1(vec4<f32>(-1723f, -866f, -621f, 793f), vec3<u32>(4294967295u, 1u, 0u), 66938u, vec2<i32>(-28109i, -19189i), -215f), vec4<u32>(0u, 20852u, 2538u, 4294967295u), Struct_1(vec4<f32>(-284f, 535f, -1178f, -707f), vec3<u32>(4294967295u, 44455u, 4294967295u), 43713u, vec2<i32>(i32(-2147483648), 2147483647i), 1631f), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<f32>(979f, 693f, 760f, -593f), vec3<u32>(28985u, 1u, 27221u), 1u, vec2<i32>(-60371i, -5066i), -467f)), Struct_2(Struct_1(vec4<f32>(-743f, 426f, 1956f, -1411f), vec3<u32>(17676u, 1u, 4294967295u), 27051u, vec2<i32>(1i, i32(-2147483648)), 377f), vec4<u32>(4294967295u, 83701u, 20954u, 32072u), Struct_1(vec4<f32>(-164f, -1404f, -455f, -1346f), vec3<u32>(68601u, 18479u, 4294967295u), 12526u, vec2<i32>(-54310i, 2147483647i), 411f), vec2<i32>(16475i, -5212i), Struct_1(vec4<f32>(-515f, 193f, 1000f, -388f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 4294967295u, vec2<i32>(-13385i, 9117i), 1000f)), Struct_2(Struct_1(vec4<f32>(174f, -1080f, -822f, -620f), vec3<u32>(0u, 0u, 1u), 4294967295u, vec2<i32>(1i, 18603i), 1484f), vec4<u32>(1u, 58074u, 1u, 4294967295u), Struct_1(vec4<f32>(-411f, 124f, -445f, 1000f), vec3<u32>(25619u, 4294967295u, 50778u), 40633u, vec2<i32>(i32(-2147483648), -72950i), -600f), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<f32>(1126f, -1000f, 627f, -116f), vec3<u32>(4294967295u, 17586u, 1u), 82475u, vec2<i32>(-3378i, 1i), -1000f)), Struct_2(Struct_1(vec4<f32>(1131f, 184f, -1000f, -516f), vec3<u32>(16336u, 1u, 68253u), 61664u, vec2<i32>(34509i, 2147483647i), -1000f), vec4<u32>(1u, 20871u, 65334u, 1u), Struct_1(vec4<f32>(-959f, -1915f, -399f, -885f), vec3<u32>(14450u, 4294967295u, 4294967295u), 1u, vec2<i32>(0i, 0i), -155f), vec2<i32>(1i, i32(-2147483648)), Struct_1(vec4<f32>(1029f, -774f, 890f, -1344f), vec3<u32>(88916u, 1u, 74497u), 1u, vec2<i32>(-20917i, -1i), 546f)), Struct_2(Struct_1(vec4<f32>(2157f, -1567f, 362f, -1013f), vec3<u32>(13274u, 4294967295u, 0u), 1u, vec2<i32>(-1i, 1i), -1547f), vec4<u32>(87516u, 82736u, 16401u, 4294967295u), Struct_1(vec4<f32>(-1329f, -524f, 981f, -453f), vec3<u32>(0u, 34930u, 19037u), 1u, vec2<i32>(0i, 38370i), -1604f), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<f32>(592f, 2010f, -213f, -715f), vec3<u32>(0u, 0u, 4294967295u), 0u, vec2<i32>(-43958i, -29627i), -499f)), Struct_2(Struct_1(vec4<f32>(-751f, -1000f, -1021f, 274f), vec3<u32>(1u, 4294967295u, 1171u), 0u, vec2<i32>(-1i, i32(-2147483648)), 624f), vec4<u32>(85969u, 20913u, 1u, 37261u), Struct_1(vec4<f32>(-507f, 1228f, 506f, 454f), vec3<u32>(4294967295u, 23631u, 6182u), 28603u, vec2<i32>(-11968i, -1i), 1494f), vec2<i32>(2147483647i, -34432i), Struct_1(vec4<f32>(1441f, -510f, -1081f, 306f), vec3<u32>(76985u, 52512u, 1u), 36434u, vec2<i32>(8894i, 2147483647i), -628f)), Struct_2(Struct_1(vec4<f32>(-597f, 484f, 980f, 1061f), vec3<u32>(16897u, 75913u, 0u), 1u, vec2<i32>(-49682i, i32(-2147483648)), 363f), vec4<u32>(28303u, 36865u, 80368u, 41110u), Struct_1(vec4<f32>(-950f, 258f, -150f, -388f), vec3<u32>(4294967295u, 0u, 11195u), 31882u, vec2<i32>(i32(-2147483648), 0i), -617f), vec2<i32>(-16473i, i32(-2147483648)), Struct_1(vec4<f32>(2412f, -258f, 2337f, 347f), vec3<u32>(9803u, 21829u, 4294967295u), 497u, vec2<i32>(37340i, 2147483647i), -1609f)), Struct_2(Struct_1(vec4<f32>(732f, -684f, -1400f, 958f), vec3<u32>(4294967295u, 1u, 227u), 0u, vec2<i32>(14821i, -32932i), -424f), vec4<u32>(35940u, 5921u, 39355u, 1u), Struct_1(vec4<f32>(-467f, 1328f, 265f, -537f), vec3<u32>(12315u, 24662u, 18313u), 23350u, vec2<i32>(22850i, -81398i), 461f), vec2<i32>(53836i, 11472i), Struct_1(vec4<f32>(1821f, -1000f, 1000f, -353f), vec3<u32>(1u, 10819u, 63145u), 4294967295u, vec2<i32>(-28782i, -18739i), 412f)), Struct_2(Struct_1(vec4<f32>(147f, 392f, -621f, 968f), vec3<u32>(4294967295u, 7151u, 43689u), 10410u, vec2<i32>(10414i, -1i), -612f), vec4<u32>(83444u, 4294967295u, 4294967295u, 1u), Struct_1(vec4<f32>(-2366f, 592f, -734f, 2162f), vec3<u32>(0u, 1u, 54768u), 24603u, vec2<i32>(1i, 36704i), -2066f), vec2<i32>(24213i, 24851i), Struct_1(vec4<f32>(-976f, 587f, 1227f, -490f), vec3<u32>(11971u, 1u, 32863u), 1u, vec2<i32>(i32(-2147483648), -1i), -1000f)), Struct_2(Struct_1(vec4<f32>(1384f, -512f, 591f, -339f), vec3<u32>(4294967295u, 1u, 1u), 4294967295u, vec2<i32>(-1i, 0i), -1000f), vec4<u32>(72820u, 1u, 1u, 0u), Struct_1(vec4<f32>(-1246f, -311f, -912f, 684f), vec3<u32>(38357u, 55635u, 1u), 1u, vec2<i32>(-52222i, -8302i), -548f), vec2<i32>(-363i, 1i), Struct_1(vec4<f32>(563f, -591f, -1000f, -338f), vec3<u32>(4294967295u, 1u, 4294967295u), 0u, vec2<i32>(-18679i, 25294i), 914f)), Struct_2(Struct_1(vec4<f32>(-2503f, -673f, 830f, 934f), vec3<u32>(15008u, 0u, 4294967295u), 35282u, vec2<i32>(-1i, 39499i), 412f), vec4<u32>(0u, 4294967295u, 61543u, 0u), Struct_1(vec4<f32>(-953f, 217f, 471f, -353f), vec3<u32>(1u, 4294967295u, 36935u), 1u, vec2<i32>(1i, -56208i), -1305f), vec2<i32>(0i, -39703i), Struct_1(vec4<f32>(761f, 631f, -615f, -1181f), vec3<u32>(36555u, 14012u, 275u), 4294967295u, vec2<i32>(-1i, 1i), 837f)), Struct_2(Struct_1(vec4<f32>(893f, 1149f, -1296f, -1000f), vec3<u32>(26709u, 4294967295u, 7135u), 20067u, vec2<i32>(-1i, -1313i), 1000f), vec4<u32>(4294967295u, 147214u, 1u, 8440u), Struct_1(vec4<f32>(-257f, -952f, 258f, -2732f), vec3<u32>(49062u, 0u, 4294967295u), 38897u, vec2<i32>(48644i, i32(-2147483648)), 484f), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<f32>(827f, -1096f, 679f, 726f), vec3<u32>(0u, 1u, 1u), 30565u, vec2<i32>(49642i, -40663i), 260f)), Struct_2(Struct_1(vec4<f32>(959f, 567f, 1000f, -1000f), vec3<u32>(18171u, 11538u, 53638u), 19812u, vec2<i32>(-33365i, 0i), -1158f), vec4<u32>(0u, 1u, 1980u, 0u), Struct_1(vec4<f32>(1338f, 133f, 1711f, -1548f), vec3<u32>(4294967295u, 75250u, 1u), 0u, vec2<i32>(64344i, 1i), -368f), vec2<i32>(-1i, 0i), Struct_1(vec4<f32>(422f, -1309f, -297f, 919f), vec3<u32>(25841u, 1u, 1u), 12453u, vec2<i32>(-4230i, -1i), -218f)), Struct_2(Struct_1(vec4<f32>(595f, 878f, 1109f, 105f), vec3<u32>(32435u, 4294967295u, 27017u), 4294967295u, vec2<i32>(17876i, -25213i), -1260f), vec4<u32>(94688u, 45841u, 52576u, 0u), Struct_1(vec4<f32>(-1189f, 1000f, -1149f, -695f), vec3<u32>(4294967295u, 4294967295u, 0u), 24141u, vec2<i32>(1i, -1i), 1420f), vec2<i32>(0i, 49643i), Struct_1(vec4<f32>(-773f, -761f, -1000f, -1741f), vec3<u32>(22159u, 27732u, 85028u), 4294967295u, vec2<i32>(1i, -16457i), 1189f)), Struct_2(Struct_1(vec4<f32>(-1272f, -390f, 992f, -831f), vec3<u32>(36260u, 12044u, 22350u), 15627u, vec2<i32>(-1i, 20344i), -460f), vec4<u32>(33943u, 1u, 30499u, 4294967295u), Struct_1(vec4<f32>(137f, 496f, -1747f, -545f), vec3<u32>(0u, 1548u, 1u), 1u, vec2<i32>(-1i, -13793i), -655f), vec2<i32>(1i, 20306i), Struct_1(vec4<f32>(-160f, 932f, -1120f, -1362f), vec3<u32>(26217u, 4294967295u, 4294967295u), 0u, vec2<i32>(-24427i, 1i), 458f)), Struct_2(Struct_1(vec4<f32>(-1928f, 494f, 1375f, 154f), vec3<u32>(4294967295u, 0u, 34344u), 1u, vec2<i32>(-29680i, -1i), -752f), vec4<u32>(52631u, 40764u, 4294967295u, 0u), Struct_1(vec4<f32>(1261f, 122f, 456f, -1010f), vec3<u32>(4294967295u, 4294967295u, 21688u), 4294967295u, vec2<i32>(1i, 0i), -985f), vec2<i32>(2147483647i, -17639i), Struct_1(vec4<f32>(498f, -277f, 423f, -874f), vec3<u32>(69340u, 55356u, 4294967295u), 4294967295u, vec2<i32>(28382i, -687i), -1000f)), Struct_2(Struct_1(vec4<f32>(-735f, 878f, -531f, -367f), vec3<u32>(22800u, 1u, 0u), 0u, vec2<i32>(-34621i, -2756i), -1081f), vec4<u32>(0u, 56874u, 0u, 6833u), Struct_1(vec4<f32>(-681f, -635f, 840f, 154f), vec3<u32>(18879u, 18407u, 15479u), 4294967295u, vec2<i32>(2147483647i, -62583i), -1184f), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec4<f32>(1218f, -1484f, 1000f, -879f), vec3<u32>(1u, 63048u, 17018u), 135u, vec2<i32>(-1i, 27702i), 1554f)), Struct_2(Struct_1(vec4<f32>(723f, -1863f, 1073f, 1298f), vec3<u32>(4294967295u, 1u, 4294967295u), 23095u, vec2<i32>(1i, 26127i), 154f), vec4<u32>(1u, 14114u, 20266u, 0u), Struct_1(vec4<f32>(-412f, 1384f, 1541f, -178f), vec3<u32>(4294967295u, 64466u, 44382u), 44006u, vec2<i32>(i32(-2147483648), 0i), 566f), vec2<i32>(-58433i, 33291i), Struct_1(vec4<f32>(247f, -403f, 447f, 757f), vec3<u32>(36497u, 12235u, 32706u), 17326u, vec2<i32>(-1i, 1i), -578f)), Struct_2(Struct_1(vec4<f32>(1431f, 110f, 1832f, -220f), vec3<u32>(1u, 50055u, 4294967295u), 1u, vec2<i32>(i32(-2147483648), -1i), -230f), vec4<u32>(67572u, 0u, 54466u, 86654u), Struct_1(vec4<f32>(454f, -137f, -270f, 326f), vec3<u32>(1u, 31700u, 1u), 4294967295u, vec2<i32>(-13871i, 37986i), -769f), vec2<i32>(0i, 1i), Struct_1(vec4<f32>(1000f, 1370f, -1049f, 766f), vec3<u32>(8360u, 28610u, 51265u), 759u, vec2<i32>(-1i, 0i), 1711f)), Struct_2(Struct_1(vec4<f32>(-1372f, -197f, 1000f, -1263f), vec3<u32>(0u, 2104u, 4294967295u), 8186u, vec2<i32>(1i, -6656i), -886f), vec4<u32>(4294967295u, 0u, 77125u, 9834u), Struct_1(vec4<f32>(1481f, -1620f, 888f, 240f), vec3<u32>(104790u, 62210u, 12137u), 1u, vec2<i32>(6026i, -21182i), -261f), vec2<i32>(18147i, 668i), Struct_1(vec4<f32>(-2361f, -1001f, -1282f, -822f), vec3<u32>(1u, 69104u, 1u), 1u, vec2<i32>(0i, 45643i), 1000f)));

var<private> global1: array<Struct_1, 12>;

var<private> global2: Struct_2;

var<private> global3: array<f32, 28> = array<f32, 28>(847f, 2257f, -334f, -1185f, 837f, -310f, -1050f, -1037f, -1000f, 185f, -871f, -1000f, 621f, 1548f, 1885f, -999f, -1825f, -464f, -1105f, 523f, -502f, -144f, 1482f, 960f, 1093f, 466f, -1650f, 1455f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 25>();
    var var_0 = ~_wgslsmith_mult_i32(_wgslsmith_div_i32(firstLeadingBit(global2.e.d.x), global2.a.d.x), u_input.a.x);
    var var_1 = -1257f;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-570f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.c.a.x))), 1022f), -581f));
    var var_3 = (false && ((false != all(vec4<bool>(false, true, false, true))) & true)) & true;
    return u_input.b;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    return global0[_wgslsmith_index_u32(1u, 25u)];
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32) -> vec2<bool> {
    global0 = array<Struct_2, 25>();
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(~29725u), _wgslsmith_mult_u32(8847u, ~global2.c.c)) ^ global2.a.b.x, 25u)];
    let var_1 = 1u;
    let var_2 = vec3<bool>(true, !select((38069i & var_0.c.d.x) < _wgslsmith_mod_i32(35482i, -25883i), false, all(vec4<bool>(true, true, true, true))), !(!(!any(vec2<bool>(false, false)))));
    global2 = func_3(var_2.yy, var_2.xx, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(global2.a.a, _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(62158u, 28u)], 297f, 1515f, -501f), var_0.a.a))))), firstLeadingBit(global2.e.b), func_2(), _wgslsmith_add_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, var_0.e.d.x), vec2<i32>(1i, u_input.a.x)), countOneBits(var_0.d), u_input.a.x <= -1i), u_input.a.zy), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~(~54044u), 28u)], _wgslsmith_div_f32(var_0.a.e, arg_2))), -arg_1);
    return var_2.xy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a.x, 356f, global2.a.a.x, global3[_wgslsmith_index_u32(global2.a.b.x, 28u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.c.a, vec4<f32>(global3[_wgslsmith_index_u32(global2.a.b.x, 28u)], global3[_wgslsmith_index_u32(31069u, 28u)], global3[_wgslsmith_index_u32(42995u, 28u)], 1497f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.c.e, 183f), -992f), _wgslsmith_f_op_f32(1000f + -389f), 505f, _wgslsmith_div_f32(global2.e.e, -887f))), firstTrailingBit(vec3<u32>(global2.e.c, ~abs(24367u), ~u_input.b & u_input.b)), 9804u, max(-min(vec2<i32>(-20958i, -6053i) & u_input.a.xx, -vec2<i32>(-1659i, 28998i)), u_input.a.zy), 1283f);
    global3 = array<f32, 28>();
    let var_1 = func_3(!select(!arg_0, vec2<bool>(all(vec2<bool>(false, false)), !arg_0.x), !arg_0.x), select(select(select(!vec2<bool>(arg_0.x, arg_0.x), arg_0, true), select(!vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), true), arg_0.x), vec2<bool>(true, true), arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.e.a), _wgslsmith_f_op_vec4_f32(-var_0.a)), vec4<f32>(-410f, _wgslsmith_f_op_f32(round(-303f)), 192f, _wgslsmith_f_op_f32(var_0.a.x * 707f)))), vec3<u32>(13574u, ~(~1u), 29273u), ~var_0.b.x, vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a.x, arg_1.x), vec4<i32>(var_0.d.x, arg_1.x, u_input.a.x, var_0.d.x))), _wgslsmith_mult_i32(-28307i, -var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e))))), 26032i >> (var_0.c % 32u));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = func_3(arg_1.zy, arg_1.yx, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1832f, -475f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-950f + -331f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1824f), reverseBits(~_wgslsmith_sub_vec3_u32(arg_0.c.b, vec3<u32>(global2.a.c, 4294967295u, u_input.b))), 1u, firstTrailingBit(-vec2<i32>(71793i, 0i)) << (min(vec2<u32>(0u, u_input.b), vec2<u32>(0u, arg_0.c.c)) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(global2.e.a.x, global3[_wgslsmith_index_u32(global2.a.b.x, 28u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -487f)))), i32(-1i) * -29313i);
    var var_1 = vec4<u32>(~u_input.b ^ abs(~max(global2.c.b.x, 5367u)), 3927u, 1u, func_2());
    let var_2 = func_3(func_1(_wgslsmith_f_op_f32(647f + -276f), u_input.a.x, -426f), !arg_1.zx, global1[_wgslsmith_index_u32(countOneBits(~global2.b.x), 12u)], min(-(~(u_input.a.x | global2.d.x)), 2147483647i)).a;
    var var_3 = true;
    global1 = array<Struct_1, 12>();
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(global2.c.b.xy);
    let var_1 = firstLeadingBit(abs(~vec3<u32>(var_0.x, ~45008u, max(global2.c.b.x, 0u))));
    global1 = array<Struct_1, 12>();
    var var_2 = true;
    var var_3 = func_5(func_4(func_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 11473u), firstLeadingBit(global2.b.yyy)), 28u)], 1i, -401f), max(-vec4<i32>(2147483647i, u_input.a.x, global2.c.d.x, u_input.a.x), firstTrailingBit(countOneBits(vec4<i32>(global2.e.d.x, 2147483647i, global2.a.d.x, global2.a.d.x))))), vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, firstTrailingBit(~_wgslsmith_sub_u32(1u, min(4294967295u, u_input.b))));
}

