struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(4294967295u, 12160u), true, Struct_2(Struct_1(-1i, 38938u, vec4<f32>(-1323f, -718f, -967f, -1284f), vec4<u32>(9648u, 43937u, 0u, 0u)), vec2<bool>(true, true), Struct_1(2147483647i, 14102u, vec4<f32>(-1262f, -191f, -968f, -740f), vec4<u32>(28760u, 81949u, 14869u, 0u)), 27959u), 781f);

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(1i, 28013u, vec4<f32>(-1385f, 1000f, 1227f, -421f), vec4<u32>(70819u, 3925u, 4294967295u, 25465u)), Struct_2(Struct_1(-93502i, 26597u, vec4<f32>(-589f, -1000f, 1168f, 1015f), vec4<u32>(0u, 4294967295u, 1u, 31841u)), vec2<bool>(false, true), Struct_1(15423i, 36548u, vec4<f32>(1007f, 999f, -495f, 1000f), vec4<u32>(0u, 40147u, 441u, 48983u)), 19428u), vec3<f32>(1210f, 1047f, -288f)), Struct_3(Struct_1(1i, 67074u, vec4<f32>(-337f, 1000f, 140f, 212f), vec4<u32>(11993u, 0u, 30895u, 57663u)), Struct_2(Struct_1(1i, 14856u, vec4<f32>(260f, 451f, -695f, -242f), vec4<u32>(1u, 385u, 66363u, 1u)), vec2<bool>(true, false), Struct_1(i32(-2147483648), 71980u, vec4<f32>(180f, -1000f, -308f, 144f), vec4<u32>(40471u, 1u, 1u, 1u)), 44458u), vec3<f32>(-1009f, 1884f, -964f)), Struct_3(Struct_1(0i, 47514u, vec4<f32>(1000f, 1133f, -612f, 829f), vec4<u32>(0u, 4294967295u, 13931u, 93799u)), Struct_2(Struct_1(-50551i, 1u, vec4<f32>(-1391f, -1039f, -514f, 803f), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), vec2<bool>(false, true), Struct_1(-5505i, 1u, vec4<f32>(-1107f, -311f, -114f, -795f), vec4<u32>(10982u, 4294967295u, 0u, 53620u)), 0u), vec3<f32>(422f, -262f, 1000f)), Struct_3(Struct_1(2147483647i, 65990u, vec4<f32>(-675f, 145f, 536f, 111f), vec4<u32>(1u, 48284u, 1u, 27192u)), Struct_2(Struct_1(-55265i, 4294967295u, vec4<f32>(766f, 863f, -459f, -268f), vec4<u32>(17840u, 1u, 100763u, 4294967295u)), vec2<bool>(false, true), Struct_1(-89796i, 13562u, vec4<f32>(-451f, 908f, -426f, 2556f), vec4<u32>(60373u, 1u, 0u, 0u)), 0u), vec3<f32>(-297f, -767f, 122f)), Struct_3(Struct_1(-5567i, 21432u, vec4<f32>(414f, 711f, 1247f, 1000f), vec4<u32>(4294967295u, 1987u, 1u, 0u)), Struct_2(Struct_1(-1i, 39631u, vec4<f32>(-2525f, 694f, -1209f, -560f), vec4<u32>(0u, 0u, 0u, 38756u)), vec2<bool>(false, false), Struct_1(8727i, 49911u, vec4<f32>(1203f, 259f, -1070f, 1738f), vec4<u32>(0u, 1637u, 1u, 4294967295u)), 1u), vec3<f32>(-223f, -448f, -432f)), Struct_3(Struct_1(1i, 70026u, vec4<f32>(630f, -1194f, 1488f, -1187f), vec4<u32>(83454u, 70245u, 1u, 4294967295u)), Struct_2(Struct_1(0i, 48063u, vec4<f32>(-675f, -405f, -217f, 128f), vec4<u32>(0u, 1u, 1u, 0u)), vec2<bool>(true, true), Struct_1(13584i, 38560u, vec4<f32>(142f, -900f, -646f, 375f), vec4<u32>(64555u, 1u, 45762u, 32131u)), 32910u), vec3<f32>(-575f, 1069f, 1466f)), Struct_3(Struct_1(-33012i, 40834u, vec4<f32>(2158f, -247f, 349f, -1266f), vec4<u32>(48149u, 0u, 46401u, 1u)), Struct_2(Struct_1(i32(-2147483648), 110446u, vec4<f32>(-400f, -404f, -1164f, -937f), vec4<u32>(42186u, 1u, 1u, 1u)), vec2<bool>(false, false), Struct_1(34604i, 0u, vec4<f32>(-1214f, -1727f, 447f, 1056f), vec4<u32>(5183u, 15204u, 0u, 38088u)), 34246u), vec3<f32>(1000f, -349f, 264f)), Struct_3(Struct_1(i32(-2147483648), 4294967295u, vec4<f32>(-296f, 624f, 170f, -140f), vec4<u32>(0u, 1u, 18657u, 80024u)), Struct_2(Struct_1(35054i, 8954u, vec4<f32>(1210f, 1262f, -1485f, 288f), vec4<u32>(0u, 4294967295u, 0u, 52466u)), vec2<bool>(true, false), Struct_1(33312i, 27131u, vec4<f32>(411f, 652f, -1226f, -803f), vec4<u32>(0u, 0u, 4294967295u, 1u)), 26872u), vec3<f32>(-416f, -860f, 396f)), Struct_3(Struct_1(-38055i, 0u, vec4<f32>(-284f, -474f, -1157f, -355f), vec4<u32>(22114u, 55742u, 1u, 24381u)), Struct_2(Struct_1(1066i, 4294967295u, vec4<f32>(1172f, 1953f, 1465f, 1543f), vec4<u32>(1u, 2236u, 100303u, 43154u)), vec2<bool>(true, true), Struct_1(-1i, 22369u, vec4<f32>(-986f, 490f, -397f, -1068f), vec4<u32>(1u, 1u, 50771u, 78292u)), 15348u), vec3<f32>(194f, 1185f, 240f)), Struct_3(Struct_1(-6089i, 4294967295u, vec4<f32>(422f, -572f, -864f, -789f), vec4<u32>(9216u, 56452u, 0u, 4294967295u)), Struct_2(Struct_1(-78227i, 4294967295u, vec4<f32>(-973f, -1000f, -733f, -1000f), vec4<u32>(0u, 1u, 0u, 4294967295u)), vec2<bool>(true, true), Struct_1(2147483647i, 4294967295u, vec4<f32>(633f, -933f, -1000f, -106f), vec4<u32>(3258u, 4294967295u, 0u, 4294967295u)), 30592u), vec3<f32>(977f, 117f, -2314f)), Struct_3(Struct_1(i32(-2147483648), 1u, vec4<f32>(244f, 1015f, -145f, 1000f), vec4<u32>(41408u, 56105u, 1u, 70620u)), Struct_2(Struct_1(-7766i, 1545u, vec4<f32>(1082f, -383f, -928f, 231f), vec4<u32>(4294967295u, 0u, 74516u, 17729u)), vec2<bool>(false, false), Struct_1(i32(-2147483648), 4294967295u, vec4<f32>(1076f, -1160f, -169f, -904f), vec4<u32>(1u, 22137u, 47821u, 119568u)), 1u), vec3<f32>(-502f, 1000f, -640f)), Struct_3(Struct_1(-1737i, 0u, vec4<f32>(930f, 315f, 1148f, 1000f), vec4<u32>(4294967295u, 1u, 0u, 100525u)), Struct_2(Struct_1(16909i, 67723u, vec4<f32>(1901f, -143f, 1083f, -849f), vec4<u32>(0u, 38609u, 81794u, 49662u)), vec2<bool>(false, true), Struct_1(1i, 43969u, vec4<f32>(-562f, 1000f, -237f, 235f), vec4<u32>(27835u, 22747u, 18120u, 18061u)), 0u), vec3<f32>(-267f, 168f, 260f)), Struct_3(Struct_1(-67496i, 58803u, vec4<f32>(105f, -1639f, -1367f, -642f), vec4<u32>(16310u, 64289u, 14128u, 0u)), Struct_2(Struct_1(2147483647i, 17067u, vec4<f32>(439f, 778f, 1753f, -998f), vec4<u32>(4294967295u, 83525u, 34058u, 1u)), vec2<bool>(true, false), Struct_1(2147483647i, 7779u, vec4<f32>(901f, -1044f, -185f, -916f), vec4<u32>(4294967295u, 4294967295u, 39737u, 4294967295u)), 0u), vec3<f32>(438f, -774f, 695f)), Struct_3(Struct_1(-1i, 102241u, vec4<f32>(398f, -958f, 2435f, 2925f), vec4<u32>(4294967295u, 0u, 71015u, 1u)), Struct_2(Struct_1(i32(-2147483648), 32728u, vec4<f32>(-207f, 684f, 167f, -1063f), vec4<u32>(13076u, 0u, 4294967295u, 11940u)), vec2<bool>(false, true), Struct_1(-1i, 54846u, vec4<f32>(-783f, 329f, 290f, -489f), vec4<u32>(121757u, 1u, 1u, 44144u)), 1u), vec3<f32>(-1525f, 427f, 763f)), Struct_3(Struct_1(-54519i, 16062u, vec4<f32>(-433f, 1030f, -1994f, -452f), vec4<u32>(14967u, 0u, 4294967295u, 55482u)), Struct_2(Struct_1(-16199i, 6270u, vec4<f32>(837f, -554f, -1537f, 1038f), vec4<u32>(0u, 15908u, 4294967295u, 61712u)), vec2<bool>(true, false), Struct_1(21295i, 0u, vec4<f32>(417f, 321f, 828f, -1000f), vec4<u32>(81u, 24350u, 51156u, 0u)), 19358u), vec3<f32>(167f, -1100f, -384f)), Struct_3(Struct_1(-14350i, 91191u, vec4<f32>(-1000f, -1000f, -902f, -1680f), vec4<u32>(4294967295u, 0u, 0u, 1u)), Struct_2(Struct_1(-42727i, 1u, vec4<f32>(-1637f, 1000f, -2257f, 136f), vec4<u32>(1u, 25974u, 1810u, 7051u)), vec2<bool>(false, false), Struct_1(3514i, 1u, vec4<f32>(2021f, 1690f, 952f, -2116f), vec4<u32>(4294967295u, 0u, 1u, 0u)), 4294967295u), vec3<f32>(1761f, 1626f, -1399f)), Struct_3(Struct_1(-23991i, 1u, vec4<f32>(2542f, 338f, 2195f, 1000f), vec4<u32>(73944u, 8482u, 0u, 1u)), Struct_2(Struct_1(-30151i, 38920u, vec4<f32>(1141f, -498f, 1601f, -659f), vec4<u32>(7690u, 0u, 74715u, 4294967295u)), vec2<bool>(false, false), Struct_1(i32(-2147483648), 0u, vec4<f32>(189f, -225f, 1730f, 524f), vec4<u32>(42724u, 67539u, 42588u, 4478u)), 4294967295u), vec3<f32>(555f, 557f, -376f)), Struct_3(Struct_1(i32(-2147483648), 1u, vec4<f32>(1111f, 709f, -611f, -1394f), vec4<u32>(0u, 4294967295u, 56775u, 22306u)), Struct_2(Struct_1(1i, 0u, vec4<f32>(245f, 1384f, 1171f, -1106f), vec4<u32>(0u, 1u, 1u, 29223u)), vec2<bool>(false, false), Struct_1(2318i, 30318u, vec4<f32>(-1514f, 841f, -513f, 475f), vec4<u32>(52741u, 0u, 71740u, 4294967295u)), 43491u), vec3<f32>(-517f, -174f, -250f)), Struct_3(Struct_1(i32(-2147483648), 1u, vec4<f32>(192f, -1102f, -1866f, 535f), vec4<u32>(53355u, 5493u, 14067u, 1u)), Struct_2(Struct_1(-1i, 47517u, vec4<f32>(-1334f, -584f, 564f, -2090f), vec4<u32>(1u, 27864u, 17278u, 1u)), vec2<bool>(true, true), Struct_1(37353i, 36985u, vec4<f32>(-1663f, -1215f, -654f, 693f), vec4<u32>(69291u, 33976u, 0u, 37522u)), 4294967295u), vec3<f32>(1980f, 1045f, -1427f)), Struct_3(Struct_1(0i, 4294967295u, vec4<f32>(-1948f, -706f, -784f, 994f), vec4<u32>(0u, 1u, 0u, 51210u)), Struct_2(Struct_1(-60530i, 4294967295u, vec4<f32>(-1000f, 1267f, 283f, -968f), vec4<u32>(25349u, 11106u, 5143u, 4294967295u)), vec2<bool>(false, true), Struct_1(1i, 29506u, vec4<f32>(-287f, 470f, -1000f, -242f), vec4<u32>(0u, 4877u, 5345u, 4294967295u)), 54784u), vec3<f32>(-440f, 142f, 621f)), Struct_3(Struct_1(-1i, 47206u, vec4<f32>(-1797f, 765f, -3021f, 434f), vec4<u32>(17253u, 50882u, 54506u, 12136u)), Struct_2(Struct_1(-17652i, 81871u, vec4<f32>(294f, -1000f, -504f, 489f), vec4<u32>(4294967295u, 21637u, 71636u, 2821u)), vec2<bool>(true, false), Struct_1(-8294i, 0u, vec4<f32>(263f, 1059f, -121f, -836f), vec4<u32>(1u, 48842u, 67571u, 7412u)), 4294967295u), vec3<f32>(311f, 209f, 2279f)), Struct_3(Struct_1(-10364i, 1u, vec4<f32>(740f, -568f, -578f, 188f), vec4<u32>(1u, 0u, 1u, 0u)), Struct_2(Struct_1(0i, 0u, vec4<f32>(-1808f, 212f, 1207f, -880f), vec4<u32>(22135u, 1u, 4294967295u, 4294967295u)), vec2<bool>(false, true), Struct_1(1i, 1u, vec4<f32>(-611f, 649f, -166f, 692f), vec4<u32>(0u, 1u, 0u, 40001u)), 0u), vec3<f32>(179f, -683f, -305f)), Struct_3(Struct_1(0i, 0u, vec4<f32>(493f, -647f, 985f, 1049f), vec4<u32>(101367u, 1u, 1u, 22286u)), Struct_2(Struct_1(2147483647i, 537u, vec4<f32>(-825f, 1113f, -1000f, 1891f), vec4<u32>(1u, 67551u, 5261u, 48970u)), vec2<bool>(false, true), Struct_1(-4398i, 68504u, vec4<f32>(-1684f, -1175f, 1203f, 983f), vec4<u32>(51375u, 1u, 1u, 1u)), 0u), vec3<f32>(-348f, -991f, -673f)), Struct_3(Struct_1(14660i, 1u, vec4<f32>(289f, -2368f, 528f, -397f), vec4<u32>(4294967295u, 4294967295u, 32498u, 4294967295u)), Struct_2(Struct_1(i32(-2147483648), 134712u, vec4<f32>(-467f, 843f, -518f, -1025f), vec4<u32>(25652u, 4294967295u, 1u, 0u)), vec2<bool>(true, false), Struct_1(2029i, 37259u, vec4<f32>(-346f, -167f, 1535f, -152f), vec4<u32>(4566u, 1u, 22629u, 0u)), 89769u), vec3<f32>(-391f, 2496f, 679f)), Struct_3(Struct_1(-2776i, 32287u, vec4<f32>(-531f, 695f, -150f, -1034f), vec4<u32>(48159u, 0u, 0u, 19177u)), Struct_2(Struct_1(-4754i, 51810u, vec4<f32>(-1464f, 748f, -700f, -533f), vec4<u32>(0u, 1u, 4294967295u, 1u)), vec2<bool>(false, true), Struct_1(2147483647i, 4294967295u, vec4<f32>(495f, 1000f, -458f, -1034f), vec4<u32>(38568u, 4324u, 1u, 4294967295u)), 4294967295u), vec3<f32>(-206f, -983f, 1077f)), Struct_3(Struct_1(-50178i, 6432u, vec4<f32>(687f, -404f, -949f, 1000f), vec4<u32>(4294967295u, 44612u, 4294967295u, 4294967295u)), Struct_2(Struct_1(1591i, 3733u, vec4<f32>(107f, -208f, -1556f, -1199f), vec4<u32>(1u, 20596u, 0u, 4294967295u)), vec2<bool>(true, false), Struct_1(-34302i, 4294967295u, vec4<f32>(-604f, 1147f, 891f, -761f), vec4<u32>(10542u, 4294967295u, 26493u, 92791u)), 1u), vec3<f32>(396f, -607f, -368f)), Struct_3(Struct_1(i32(-2147483648), 4294967295u, vec4<f32>(1000f, -917f, -606f, 141f), vec4<u32>(4294967295u, 3904u, 62975u, 28341u)), Struct_2(Struct_1(-21256i, 34193u, vec4<f32>(-115f, 476f, -406f, -368f), vec4<u32>(0u, 17340u, 1u, 1u)), vec2<bool>(true, true), Struct_1(2147483647i, 11324u, vec4<f32>(-1048f, -1131f, 1000f, -1395f), vec4<u32>(4294967295u, 35751u, 1u, 4294967295u)), 1u), vec3<f32>(563f, -170f, 1781f)), Struct_3(Struct_1(0i, 43533u, vec4<f32>(-493f, -1626f, 681f, 519f), vec4<u32>(0u, 62918u, 6154u, 0u)), Struct_2(Struct_1(-21747i, 0u, vec4<f32>(-989f, -624f, -916f, -233f), vec4<u32>(4294967295u, 4294967295u, 89656u, 1u)), vec2<bool>(true, true), Struct_1(i32(-2147483648), 0u, vec4<f32>(286f, 661f, 551f, -1189f), vec4<u32>(43936u, 4294967295u, 4294967295u, 4294967295u)), 62248u), vec3<f32>(100f, 1311f, 593f)), Struct_3(Struct_1(0i, 71164u, vec4<f32>(190f, -438f, -534f, -310f), vec4<u32>(19406u, 0u, 54586u, 4294967295u)), Struct_2(Struct_1(2147483647i, 1279u, vec4<f32>(935f, -426f, -493f, -1931f), vec4<u32>(4294967295u, 0u, 0u, 62596u)), vec2<bool>(true, false), Struct_1(35064i, 24156u, vec4<f32>(-1426f, 390f, -665f, 1000f), vec4<u32>(8337u, 0u, 4294967295u, 4294967295u)), 1u), vec3<f32>(-992f, -741f, 247f)), Struct_3(Struct_1(-11879i, 0u, vec4<f32>(1000f, -626f, 1000f, -1121f), vec4<u32>(34265u, 0u, 46787u, 38854u)), Struct_2(Struct_1(24773i, 347u, vec4<f32>(-605f, -419f, -755f, 1000f), vec4<u32>(4294967295u, 34657u, 0u, 1159u)), vec2<bool>(true, true), Struct_1(-11438i, 35318u, vec4<f32>(1779f, 2445f, 1072f, -217f), vec4<u32>(1u, 66501u, 116335u, 92690u)), 0u), vec3<f32>(-531f, 1883f, 1809f)));

var<private> global2: f32 = 1312f;

var<private> global3: array<vec4<i32>, 16>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_4 {
    global2 = 1112f;
    let var_0 = Struct_1(-1i, u_input.a.x >> (_wgslsmith_add_u32(arg_1.d.x, 38910u) % 32u), arg_1.c, vec4<u32>(countOneBits(select(max(1u, 82357u), arg_2, global0.c.b.x)), 1u, ~_wgslsmith_sub_u32(arg_1.b, max(4294967295u, arg_2)), 47867u));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1.c.x));
    let var_2 = global1[_wgslsmith_index_u32(arg_1.b, 30u)];
    var var_3 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(var_2.b.c.a, u_input.b.x, arg_0), !vec3<bool>(true, var_2.b.b.x, false)), u_input.b));
    return Struct_4(var_0.d.yw, true, Struct_2(Struct_1(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(var_0.a, -44868i)), arg_2, vec4<f32>(global0.c.a.c.x, _wgslsmith_f_op_f32(step(-1297f, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-758f - var_1)), var_0.d), !(!(!arg_3)), Struct_1(u_input.b.x, u_input.a.x | abs(arg_2), arg_1.c, var_2.b.a.d), _wgslsmith_dot_vec3_u32(~var_2.a.d.xyz, _wgslsmith_clamp_vec3_u32(select(u_input.a, global0.c.a.d.zyw, vec3<bool>(false, var_2.b.b.x, false)), vec3<u32>(1u, 45645u, 1u), var_2.a.d.wxy))), _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(max(-977f, var_2.c.x)))), false)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    var var_1 = !all(vec3<bool>(true, true, true));
    var_1 = (reverseBits(min(firstLeadingBit(arg_3.c.a.a), var_0.b.c.a)) >= func_2(abs(global0.c.a.a), Struct_1(select(global0.c.a.a, -1i, global0.c.b.x), u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, global0.c.a.c.x, arg_3.d, -673f)), arg_0.a.d), min(var_0.b.d, abs(u_input.a.x)), vec2<bool>(arg_3.b, 26124i < arg_3.c.a.a)).c.c.a) || true;
    global2 = arg_3.d;
    var var_2 = func_2(~(u_input.b.x << (u_input.a.x % 32u)), func_2(firstTrailingBit(-7228i) >> (1u % 32u), Struct_1(u_input.b.x, arg_0.a.b, vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), arg_3.d, -422f, _wgslsmith_f_op_f32(round(-1633f))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, arg_3.a.x, 0u), vec4<u32>(0u, 34893u, 3713u, 0u) & arg_0.c.d)), 4294967295u, vec2<bool>(true, false)).c.c, ~1u, select(var_0.b.b, select(vec2<bool>(global0.b, !arg_0.b.x), vec2<bool>(all(vec4<bool>(arg_2, arg_0.b.x, false, arg_0.b.x)), global0.b), !arg_3.c.b), true));
    return select(!vec4<bool>(false, true, !any(vec3<bool>(var_2.b, var_2.b, arg_0.b.x)), !(1842f == arg_3.c.c.c.x)), select(vec4<bool>(true, true, true, select(func_2(u_input.b.x, Struct_1(6839i, arg_1.x, var_0.b.a.c, vec4<u32>(arg_1.x, 4294967295u, 49308u, 4645u)), 4309u, vec2<bool>(false, true)).b, arg_2, var_2.b)), select(vec4<bool>(select(global0.b, true, true), 464f >= var_2.d, any(vec3<bool>(arg_2, true, var_0.b.b.x)), true), !vec4<bool>(true, arg_3.c.b.x, var_0.b.b.x, true), var_0.b.b.x), !arg_2), ~(~_wgslsmith_mod_u32(17304u, arg_3.c.c.b)) == ~(~global0.a.x));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(32117u, 30u)];
    let var_1 = vec2<i32>(global0.c.c.a, var_0.a.a) << (~(~(~u_input.a.yz)) % vec2<u32>(32u));
    let var_2 = !select(func_3(var_0.b, global0.c.c.d, 0u != ~arg_1.x, func_2(var_0.b.c.a, Struct_1(4972i, u_input.a.x, vec4<f32>(-124f, -215f, 219f, -1723f), var_0.a.d), 1u, !vec2<bool>(global0.c.b.x, global0.c.b.x))), !func_3(Struct_2(Struct_1(u_input.b.x, 36223u, vec4<f32>(-1904f, var_0.c.x, -1000f, 829f), global0.c.c.d), var_0.b.b, Struct_1(-4360i, 3977u, vec4<f32>(1892f, global0.c.c.c.x, var_0.b.a.c.x, -1000f), global0.c.c.d), var_0.a.d.x), ~var_0.b.a.d, false, Struct_4(arg_1, true, Struct_2(global0.c.a, global0.c.b, var_0.b.a, var_0.b.c.d.x), var_0.a.c.x)), true);
    global0 = Struct_4(var_0.a.d.yx, var_0.b.b.x && !select(select(true, true, var_2.x), any(vec2<bool>(true, true)), any(var_2)), func_2(select(-(~1i), var_1.x, !global0.b), var_0.b.a, 4294967295u, select(!(!vec2<bool>(var_2.x, var_0.b.b.x)), select(func_3(Struct_2(global0.c.c, vec2<bool>(false, global0.b), Struct_1(global0.c.c.a, 6467u, var_0.a.c, vec4<u32>(4294967295u, 1u, 70165u, 4294967295u)), 82323u), var_0.b.a.d, var_2.x, Struct_4(global0.a, true, Struct_2(global0.c.c, vec2<bool>(false, var_0.b.b.x), Struct_1(u_input.b.x, 0u, vec4<f32>(-966f, global0.d, -736f, var_0.b.a.c.x), vec4<u32>(0u, 31921u, 77066u, var_0.a.b)), 4294967295u), global0.d)).yz, vec2<bool>(false, var_2.x), global0.c.b.x == true), global0.c.b)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f)));
    var var_3 = func_2(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.b.zx, max(u_input.b.zz, u_input.b.zz)), _wgslsmith_div_vec2_i32(~vec2<i32>(1165i, 14850i) & var_1, firstLeadingBit(vec2<i32>(-1i, global0.c.c.a) | u_input.b.yz))), func_2(var_0.a.a, Struct_1(0i ^ _wgslsmith_sub_i32(arg_0, -2147483647i), ~var_0.b.c.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, -190f, 1584f, var_0.a.c.x))), var_0.b.a.d), _wgslsmith_sub_u32(var_0.a.d.x, _wgslsmith_div_u32(global0.c.c.b, min(global0.a.x, 20358u))), var_2.zz).c.c, ~4294967295u, !var_2.zx).c;
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(max(1133f, -2010f));
    global0 = Struct_4(~u_input.a.yx, all(vec3<bool>(!(!global0.b), false, global0.b)), Struct_2(func_1(-u_input.b.x | -23286i, vec2<u32>(abs(75409u), reverseBits(global0.c.c.b))), global0.c.b, Struct_1(max(~u_input.b.x, func_2(0i, global0.c.c, global0.a.x, global0.c.b).c.a.a), global0.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.c.x, -286f, global0.d, global0.c.c.c.x) + vec4<f32>(global0.d, global0.c.a.c.x, global0.d, global0.c.a.c.x)), vec4<f32>(global0.d, global0.d, global0.c.c.c.x, -443f), vec4<bool>(false, global0.c.b.x, true, global0.c.b.x))), _wgslsmith_mod_vec4_u32(global0.c.a.d, vec4<u32>(4294967295u, global0.a.x, u_input.a.x, 27661u) & global0.c.a.d)), 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d), global0.c.a.c.x, any(!select(vec4<bool>(global0.c.b.x, global0.b, true, global0.c.b.x), vec4<bool>(global0.c.b.x, global0.b, global0.c.b.x, false), vec4<bool>(global0.c.b.x, global0.b, global0.c.b.x, true))))));
    global2 = -1115f;
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(global0.c.c.c.xz));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.a.c.x), -1608f, _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(-1i, -2147483647i), func_2(-2147483647i, global0.c.c, 5216u, global0.c.b).c.a, ~4294967295u, select(global0.c.b, vec2<bool>(true, true), false)).c.c.c.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1014f - var_0.x))))) - global0.c.c.c.xzz);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_0.x)), _wgslsmith_f_op_f32(-1767f - 350f), -462f)))));
    var var_2 = _wgslsmith_sub_vec3_i32(u_input.b, -u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-vec4<i32>(abs(var_2.x), _wgslsmith_add_i32(-83334i, 34853i), global0.c.a.a, _wgslsmith_mod_i32(global0.c.a.a, u_input.b.x)), -(~global3[_wgslsmith_index_u32(u_input.a.x, 16u)])), var_2.x, _wgslsmith_mod_i32(firstLeadingBit(abs(global0.c.c.a) ^ ~(-3398i)), ~1615i), ~global0.c.c.a, -min(_wgslsmith_add_vec3_i32(u_input.b, u_input.b), ~u_input.b));
}

