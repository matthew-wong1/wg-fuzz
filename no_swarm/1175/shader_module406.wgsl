struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(-377f, Struct_2(Struct_1(16119i, vec3<u32>(27578u, 43829u, 35780u), vec4<u32>(1u, 25885u, 0u, 0u), vec4<f32>(1213f, 766f, 412f, -192f), vec4<bool>(false, false, false, true)), Struct_1(-36603i, vec3<u32>(4897u, 4294967295u, 0u), vec4<u32>(1u, 68704u, 4294967295u, 29640u), vec4<f32>(970f, -930f, 1029f, -293f), vec4<bool>(false, true, true, false)), 2147483647i, vec4<f32>(506f, -651f, 1000f, -908f)), false), Struct_5(-163f, Struct_2(Struct_1(28213i, vec3<u32>(0u, 0u, 101700u), vec4<u32>(20624u, 73178u, 4294967295u, 10379u), vec4<f32>(-170f, 1472f, -467f, 1000f), vec4<bool>(true, true, false, false)), Struct_1(28975i, vec3<u32>(4294967295u, 0u, 37035u), vec4<u32>(15489u, 4294967295u, 0u, 4294967295u), vec4<f32>(2207f, -941f, 1658f, -330f), vec4<bool>(true, true, true, true)), 2147483647i, vec4<f32>(-1205f, -542f, 693f, -1000f)), true), Struct_5(-2065f, Struct_2(Struct_1(95503i, vec3<u32>(49177u, 14822u, 1u), vec4<u32>(4294967295u, 41439u, 1u, 12616u), vec4<f32>(958f, -817f, -631f, -729f), vec4<bool>(false, true, false, true)), Struct_1(-12880i, vec3<u32>(21921u, 44478u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<f32>(-2157f, 132f, 154f, 212f), vec4<bool>(true, true, true, true)), 37790i, vec4<f32>(720f, 690f, -488f, 721f)), false), Struct_5(-156f, Struct_2(Struct_1(-1i, vec3<u32>(74079u, 23317u, 15784u), vec4<u32>(44409u, 3358u, 1u, 0u), vec4<f32>(664f, -722f, -1154f, -842f), vec4<bool>(false, true, true, false)), Struct_1(-17484i, vec3<u32>(51208u, 59555u, 1u), vec4<u32>(27482u, 0u, 4182u, 34230u), vec4<f32>(-463f, -1000f, -839f, 749f), vec4<bool>(true, false, false, false)), -1i, vec4<f32>(-2008f, 1213f, 527f, -452f)), true), Struct_5(1530f, Struct_2(Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 1u, 1u), vec4<u32>(4294967295u, 60774u, 59971u, 1u), vec4<f32>(2167f, 665f, -464f, -1721f), vec4<bool>(true, false, true, false)), Struct_1(2147483647i, vec3<u32>(4294967295u, 26262u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<f32>(157f, 397f, 1309f, 1098f), vec4<bool>(true, false, false, true)), 0i, vec4<f32>(-1923f, 512f, -1000f, -181f)), true), Struct_5(-1200f, Struct_2(Struct_1(1350i, vec3<u32>(19423u, 24476u, 1u), vec4<u32>(53879u, 30008u, 22000u, 4294967295u), vec4<f32>(317f, 2069f, -1485f, 1000f), vec4<bool>(false, false, false, true)), Struct_1(-42005i, vec3<u32>(0u, 16490u, 4294967295u), vec4<u32>(5880u, 990u, 4294967295u, 26765u), vec4<f32>(-1718f, -2568f, 625f, 280f), vec4<bool>(false, false, false, false)), -11975i, vec4<f32>(-397f, -262f, -1323f, 383f)), true), Struct_5(-1121f, Struct_2(Struct_1(i32(-2147483648), vec3<u32>(13107u, 1102u, 51581u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<f32>(135f, -1268f, -742f, -193f), vec4<bool>(false, false, true, false)), Struct_1(6680i, vec3<u32>(66059u, 51959u, 70049u), vec4<u32>(1u, 0u, 76941u, 4294967295u), vec4<f32>(499f, -379f, 309f, -619f), vec4<bool>(false, true, false, true)), 1332i, vec4<f32>(-501f, -370f, 1043f, -1000f)), false), Struct_5(-829f, Struct_2(Struct_1(-36151i, vec3<u32>(42694u, 2955u, 10381u), vec4<u32>(0u, 36104u, 52475u, 4294967295u), vec4<f32>(-914f, -1047f, -1249f, 1865f), vec4<bool>(false, true, false, true)), Struct_1(-7695i, vec3<u32>(30933u, 22488u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<f32>(-133f, -835f, 391f, -2896f), vec4<bool>(true, false, true, true)), 3502i, vec4<f32>(-1696f, -986f, 234f, 1232f)), true), Struct_5(628f, Struct_2(Struct_1(2147483647i, vec3<u32>(3341u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 47481u, 1u), vec4<f32>(1797f, -1150f, 903f, -1000f), vec4<bool>(false, true, true, true)), Struct_1(-27055i, vec3<u32>(54996u, 33663u, 4294967295u), vec4<u32>(14801u, 1u, 0u, 4294967295u), vec4<f32>(256f, -1176f, -835f, -1287f), vec4<bool>(true, false, true, false)), 0i, vec4<f32>(-241f, 1363f, -1000f, 2018f)), true), Struct_5(655f, Struct_2(Struct_1(2147483647i, vec3<u32>(1u, 0u, 55816u), vec4<u32>(4294967295u, 24305u, 14492u, 87403u), vec4<f32>(-1000f, 1317f, -721f, -679f), vec4<bool>(false, false, true, true)), Struct_1(-63327i, vec3<u32>(4294967295u, 1u, 41867u), vec4<u32>(0u, 23046u, 0u, 32715u), vec4<f32>(-790f, -322f, -828f, -265f), vec4<bool>(false, false, true, false)), 2147483647i, vec4<f32>(-1764f, -782f, 467f, 1000f)), true), Struct_5(251f, Struct_2(Struct_1(-19498i, vec3<u32>(4294967295u, 1u, 0u), vec4<u32>(64242u, 4294967295u, 27915u, 67424u), vec4<f32>(-1065f, 596f, -837f, 134f), vec4<bool>(false, true, false, false)), Struct_1(-12128i, vec3<u32>(10694u, 1u, 3540u), vec4<u32>(6639u, 45021u, 62308u, 30630u), vec4<f32>(-795f, -529f, 942f, 1157f), vec4<bool>(false, true, true, false)), i32(-2147483648), vec4<f32>(1080f, 281f, -868f, -1251f)), false), Struct_5(335f, Struct_2(Struct_1(-4448i, vec3<u32>(1u, 28377u, 4294967295u), vec4<u32>(0u, 40961u, 1u, 0u), vec4<f32>(-475f, 1000f, -849f, 820f), vec4<bool>(true, true, true, false)), Struct_1(1i, vec3<u32>(59095u, 4294967295u, 0u), vec4<u32>(0u, 1337u, 4294967295u, 29738u), vec4<f32>(-797f, 747f, -1263f, 1000f), vec4<bool>(false, false, false, true)), -33857i, vec4<f32>(-1531f, -727f, 670f, -561f)), false), Struct_5(-1000f, Struct_2(Struct_1(2147483647i, vec3<u32>(6651u, 0u, 0u), vec4<u32>(8422u, 4294967295u, 4294967295u, 35241u), vec4<f32>(176f, 2098f, 678f, -311f), vec4<bool>(false, true, false, true)), Struct_1(-27970i, vec3<u32>(1u, 4294967295u, 0u), vec4<u32>(4680u, 85330u, 71518u, 38636u), vec4<f32>(1000f, 325f, 756f, 736f), vec4<bool>(true, true, false, false)), 28396i, vec4<f32>(-313f, 760f, -983f, 490f)), false), Struct_5(-681f, Struct_2(Struct_1(-2182i, vec3<u32>(4294967295u, 1u, 4294967295u), vec4<u32>(39975u, 0u, 1u, 1061u), vec4<f32>(-1399f, -431f, -504f, -1000f), vec4<bool>(true, false, true, true)), Struct_1(121i, vec3<u32>(1u, 27001u, 32629u), vec4<u32>(4294967295u, 932u, 4294967295u, 59920u), vec4<f32>(1137f, 260f, -565f, 691f), vec4<bool>(false, false, true, false)), 24964i, vec4<f32>(107f, -634f, 387f, -839f)), true), Struct_5(1190f, Struct_2(Struct_1(-24168i, vec3<u32>(1u, 4294967295u, 1u), vec4<u32>(1u, 0u, 0u, 6580u), vec4<f32>(925f, -480f, -175f, -215f), vec4<bool>(true, true, true, false)), Struct_1(30376i, vec3<u32>(0u, 1u, 1u), vec4<u32>(42724u, 64550u, 16033u, 0u), vec4<f32>(-542f, -193f, -630f, 476f), vec4<bool>(false, false, false, false)), -1i, vec4<f32>(-635f, 407f, -1516f, -1143f)), true), Struct_5(-423f, Struct_2(Struct_1(-1i, vec3<u32>(26126u, 14392u, 945u), vec4<u32>(1u, 0u, 41859u, 65063u), vec4<f32>(1394f, -741f, 323f, -181f), vec4<bool>(false, true, true, true)), Struct_1(13460i, vec3<u32>(0u, 0u, 86638u), vec4<u32>(1u, 31580u, 4294967295u, 0u), vec4<f32>(762f, -1022f, -1133f, 1707f), vec4<bool>(true, true, false, false)), 0i, vec4<f32>(-700f, 475f, 922f, -383f)), false), Struct_5(-1000f, Struct_2(Struct_1(2147483647i, vec3<u32>(4294967295u, 18969u, 22536u), vec4<u32>(44528u, 1u, 4294967295u, 0u), vec4<f32>(-1880f, -763f, 1000f, -1000f), vec4<bool>(false, true, false, true)), Struct_1(1i, vec3<u32>(12574u, 1u, 4294967295u), vec4<u32>(0u, 59095u, 4294967295u, 22487u), vec4<f32>(-1560f, -589f, 1000f, -1150f), vec4<bool>(false, true, false, true)), 2147483647i, vec4<f32>(-364f, -128f, -193f, -307f)), true), Struct_5(699f, Struct_2(Struct_1(0i, vec3<u32>(0u, 4294967295u, 2688u), vec4<u32>(4294967295u, 40520u, 66440u, 4294967295u), vec4<f32>(101f, -387f, -498f, -467f), vec4<bool>(false, true, false, true)), Struct_1(-1i, vec3<u32>(15010u, 4294967295u, 1u), vec4<u32>(25937u, 0u, 78261u, 105498u), vec4<f32>(2538f, 1097f, 1781f, 1270f), vec4<bool>(false, false, true, true)), -1i, vec4<f32>(-1270f, -1066f, -848f, 584f)), true), Struct_5(470f, Struct_2(Struct_1(-7903i, vec3<u32>(1u, 48102u, 43750u), vec4<u32>(11468u, 22504u, 19233u, 35634u), vec4<f32>(581f, -199f, 604f, 475f), vec4<bool>(false, false, false, true)), Struct_1(-1i, vec3<u32>(13191u, 1u, 1u), vec4<u32>(17925u, 4294967295u, 4294967295u, 1u), vec4<f32>(433f, 517f, -1960f, -404f), vec4<bool>(true, true, true, true)), 38420i, vec4<f32>(180f, 377f, 389f, -1150f)), false), Struct_5(-631f, Struct_2(Struct_1(-40487i, vec3<u32>(53555u, 24589u, 17500u), vec4<u32>(90345u, 4294967295u, 0u, 1u), vec4<f32>(-1910f, 1544f, -591f, 1002f), vec4<bool>(false, false, false, false)), Struct_1(-9053i, vec3<u32>(20519u, 8956u, 42635u), vec4<u32>(30853u, 70630u, 37282u, 96288u), vec4<f32>(189f, -1100f, 425f, 1081f), vec4<bool>(true, true, false, false)), 10757i, vec4<f32>(-642f, -1829f, 997f, 264f)), true), Struct_5(452f, Struct_2(Struct_1(744i, vec3<u32>(57901u, 36291u, 78141u), vec4<u32>(4294967295u, 10660u, 4294967295u, 4294967295u), vec4<f32>(-486f, -1553f, 280f, -830f), vec4<bool>(false, false, false, false)), Struct_1(50459i, vec3<u32>(1u, 27668u, 0u), vec4<u32>(78743u, 18923u, 15310u, 0u), vec4<f32>(-453f, -773f, 941f, -1000f), vec4<bool>(true, true, true, false)), 16416i, vec4<f32>(643f, -301f, -1977f, 533f)), false), Struct_5(-1092f, Struct_2(Struct_1(-68337i, vec3<u32>(4294967295u, 62593u, 4294967295u), vec4<u32>(37792u, 1u, 68149u, 0u), vec4<f32>(-273f, -837f, -427f, -402f), vec4<bool>(false, false, true, true)), Struct_1(0i, vec3<u32>(5965u, 0u, 62588u), vec4<u32>(55276u, 15300u, 0u, 12053u), vec4<f32>(483f, 618f, -1113f, 101f), vec4<bool>(true, true, false, false)), -3705i, vec4<f32>(538f, 1079f, 862f, -197f)), false), Struct_5(-694f, Struct_2(Struct_1(-1i, vec3<u32>(60868u, 28636u, 1u), vec4<u32>(4294967295u, 41246u, 0u, 51230u), vec4<f32>(-286f, -1106f, -715f, 311f), vec4<bool>(true, true, true, false)), Struct_1(17445i, vec3<u32>(4294967295u, 1u, 0u), vec4<u32>(1u, 20856u, 1u, 42071u), vec4<f32>(1301f, -404f, -491f, 539f), vec4<bool>(true, true, false, false)), -1558i, vec4<f32>(-282f, -612f, -1000f, 1909f)), true), Struct_5(-420f, Struct_2(Struct_1(i32(-2147483648), vec3<u32>(153980u, 0u, 10373u), vec4<u32>(750u, 1u, 1u, 1u), vec4<f32>(-226f, 470f, 648f, 323f), vec4<bool>(false, false, false, false)), Struct_1(-1i, vec3<u32>(4294967295u, 1u, 61375u), vec4<u32>(66966u, 43454u, 60176u, 1u), vec4<f32>(-853f, 832f, -197f, -562f), vec4<bool>(true, false, false, true)), -95537i, vec4<f32>(1450f, 110f, 230f, 1890f)), true), Struct_5(534f, Struct_2(Struct_1(-1i, vec3<u32>(3826u, 45186u, 4294967295u), vec4<u32>(19371u, 1u, 105108u, 7947u), vec4<f32>(897f, 263f, -634f, 1000f), vec4<bool>(true, true, false, true)), Struct_1(2147483647i, vec3<u32>(4294967295u, 38018u, 4294967295u), vec4<u32>(3542u, 2023u, 81109u, 18300u), vec4<f32>(731f, 326f, -212f, 125f), vec4<bool>(false, true, false, true)), 2147483647i, vec4<f32>(-420f, 1430f, 836f, -1322f)), true), Struct_5(727f, Struct_2(Struct_1(-1i, vec3<u32>(29976u, 13928u, 6746u), vec4<u32>(0u, 65569u, 21957u, 0u), vec4<f32>(1000f, -1033f, 723f, 710f), vec4<bool>(true, false, true, false)), Struct_1(-33393i, vec3<u32>(1u, 58150u, 43714u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<f32>(917f, 744f, -370f, -633f), vec4<bool>(false, true, true, true)), 0i, vec4<f32>(2350f, -456f, 157f, -921f)), true), Struct_5(-963f, Struct_2(Struct_1(i32(-2147483648), vec3<u32>(0u, 1u, 1u), vec4<u32>(0u, 0u, 40659u, 92071u), vec4<f32>(696f, -540f, 824f, 516f), vec4<bool>(true, true, true, true)), Struct_1(16606i, vec3<u32>(84864u, 15823u, 45621u), vec4<u32>(1u, 11720u, 0u, 36814u), vec4<f32>(-136f, -140f, -282f, 539f), vec4<bool>(true, false, true, true)), -11891i, vec4<f32>(-333f, -1621f, -890f, 1012f)), true), Struct_5(382f, Struct_2(Struct_1(28839i, vec3<u32>(32834u, 94258u, 6895u), vec4<u32>(4294967295u, 4294967295u, 0u, 3138u), vec4<f32>(-593f, -1769f, 2275f, -2130f), vec4<bool>(true, true, true, true)), Struct_1(-1i, vec3<u32>(4294967295u, 20131u, 50955u), vec4<u32>(2467u, 24253u, 132507u, 0u), vec4<f32>(-640f, 294f, 425f, 826f), vec4<bool>(false, true, true, true)), 14379i, vec4<f32>(1000f, 937f, -2404f, -599f)), true), Struct_5(-380f, Struct_2(Struct_1(-42023i, vec3<u32>(1u, 4167u, 2251u), vec4<u32>(19947u, 0u, 1u, 4294967295u), vec4<f32>(1446f, 402f, 630f, 446f), vec4<bool>(true, true, true, true)), Struct_1(i32(-2147483648), vec3<u32>(0u, 4294967295u, 73500u), vec4<u32>(28360u, 54u, 4294967295u, 83652u), vec4<f32>(-1601f, -1600f, -1399f, -553f), vec4<bool>(true, true, true, false)), -1i, vec4<f32>(-1380f, 2060f, -1467f, 324f)), true), Struct_5(231f, Struct_2(Struct_1(0i, vec3<u32>(34392u, 1u, 8505u), vec4<u32>(4294967295u, 0u, 1958u, 1u), vec4<f32>(1101f, -689f, -282f, -150f), vec4<bool>(false, false, true, true)), Struct_1(12275i, vec3<u32>(4294967295u, 33505u, 64037u), vec4<u32>(5055u, 5523u, 4294967295u, 1u), vec4<f32>(-180f, -228f, -278f, 467f), vec4<bool>(true, false, true, true)), -32472i, vec4<f32>(1767f, -1222f, 1442f, 673f)), true), Struct_5(278f, Struct_2(Struct_1(0i, vec3<u32>(674u, 4294967295u, 27739u), vec4<u32>(1u, 40119u, 66624u, 43934u), vec4<f32>(304f, 1423f, -652f, -2206f), vec4<bool>(false, false, false, true)), Struct_1(2147483647i, vec3<u32>(0u, 16987u, 1u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<f32>(723f, 290f, -487f, 481f), vec4<bool>(true, true, true, true)), 4932i, vec4<f32>(185f, -2643f, 788f, -669f)), false), Struct_5(860f, Struct_2(Struct_1(8452i, vec3<u32>(0u, 8448u, 56558u), vec4<u32>(19403u, 7448u, 69987u, 1u), vec4<f32>(600f, 1120f, -1000f, -853f), vec4<bool>(true, true, false, true)), Struct_1(2147483647i, vec3<u32>(12988u, 1693u, 18726u), vec4<u32>(59325u, 40643u, 4294967295u, 4294967295u), vec4<f32>(-268f, 262f, 662f, -1000f), vec4<bool>(false, true, false, true)), 19115i, vec4<f32>(621f, -985f, -1004f, -526f)), true));

var<private> global1: vec2<f32> = vec2<f32>(-1443f, 1430f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(f32(-1f) * -563f)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-489f, 327f, false)) * 463f))));
}

fn func_2() -> Struct_2 {
    let var_0 = -u_input.e.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1334f, global1.x) + vec2<f32>(371f, global1.x))), vec2<f32>(113f, _wgslsmith_f_op_f32(767f + 2646f)), select(vec2<bool>(true, false), vec2<bool>(true, true), true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(abs(global1.x)), 1971f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(func_3(global1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 450f, 1000f) + vec3<f32>(global1.x, global1.x, -1255f)))), vec3<bool>(true, true, true))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_clamp_i32(~reverseBits(var_0), -24462i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 12863i), i32(-1i) * -930i)), ~u_input.a.xyz, ~abs(min(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(227f, -1935f, -1595f, global1.x) - vec4<f32>(2023f, -2164f, var_1.x, global1.x)))), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(u_input.e.x, ~select(vec3<u32>(6816u, u_input.d, u_input.a.x), u_input.a.wxx, vec3<bool>(true, false, false)), ~max(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), var_1.x, 250f, -477f), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(var_0, min(vec3<u32>(u_input.d, 1u, 1u), select(vec3<u32>(u_input.a.x, u_input.c.x, 1u), u_input.a.xzx, vec3<bool>(false, true, true))), ~(~u_input.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-888f, var_1.x, global1.x, global1.x))))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -448f, -442f, -548f)))) + vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(var_1.x)).x, _wgslsmith_f_op_f32(sign(-392f)), _wgslsmith_f_op_vec3_f32(func_3(-990f)).x, var_1.x))), u_input.c, Struct_1(14859i & -u_input.e.x, u_input.a.wzz, ~(~vec4<u32>(u_input.d, 11144u, u_input.a.x, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(round(592f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(1096f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), any(vec4<bool>(false, true, true, true)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.b.b.d, var_2.b.d)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.d))));
    return Struct_2(Struct_1(u_input.e.x, var_2.a.b, _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b, var_2.d.b.x, ~770u, _wgslsmith_div_u32(u_input.a.x, u_input.d)), vec4<u32>(var_2.b.a.c.x, 37317u, u_input.d, 70449u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(308f, -1092f)), _wgslsmith_f_op_f32(exp2(var_1.x)), -756f, _wgslsmith_f_op_f32(ceil(478f))), vec4<bool>(var_2.b.a.e.x || var_2.d.e.x, _wgslsmith_f_op_f32(global1.x + var_1.x) >= _wgslsmith_div_f32(216f, var_3.x), !all(var_2.b.a.e), true)), Struct_1(select(-2147483647i, u_input.e.x >> (u_input.b % 32u), true) & var_2.a.a, ~(~vec3<u32>(70124u, u_input.b, var_2.a.c.x)), vec4<u32>(0u, select(var_2.c.x, select(u_input.c.x, u_input.a.x, var_2.d.e.x), all(var_2.b.a.e.yzz)), u_input.b, var_2.d.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_3.x, -886f)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(max(-199f, var_2.a.d.x)))), select(vec4<bool>(!var_2.b.a.e.x, var_2.a.e.x & var_2.b.b.e.x, true, true), var_2.d.e, false)), -(~(-2147483647i)), _wgslsmith_f_op_vec4_f32(trunc(var_3)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-arg_0.b.d.x), arg_0, all(arg_0.b.e));
    let var_1 = var_0.b.a.a;
    return func_2().a;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a.d.x, -269f))) * var_0.b.d.x))), _wgslsmith_div_f32(472f, 1500f));
    var var_1 = vec4<u32>(abs(reverseBits(~_wgslsmith_dot_vec3_u32(u_input.a.wwy, u_input.a.zyy))), u_input.a.x, 50378u, u_input.b);
    var_0 = func_2();
    var var_2 = Struct_1(var_0.b.a, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 62766u, ~_wgslsmith_mult_u32(0u, 46988u)), arg_0.b.c.zwz), arg_0.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d.x, global1.x, var_0.d.x, -424f) * arg_0.a.d) - _wgslsmith_f_op_vec4_f32(arg_0.d - vec4<f32>(644f, arg_0.b.d.x, -669f, global1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, -278f, arg_0.a.d.x, 1000f)) * var_0.d))), func_2().a.e);
    return Struct_1(reverseBits(33445i ^ arg_0.a.a), abs(~var_1.zyw), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.b.c.x, 29294u, 50795u), _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, var_0.b.b.x, 4294967295u, u_input.c.x)), u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(arg_0).d.x, _wgslsmith_f_op_f32(round(-313f)), _wgslsmith_f_op_f32(step(var_0.d.x, arg_0.d.x)), _wgslsmith_f_op_f32(round(1654f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-256f - 1565f) * 684f), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(abs(-207f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x + var_0.a.d.x)), -1725f)), var_2.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_4 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(arg_0.x))), all(vec3<bool>(false, true, false)) && (arg_1.x <= 4294967295u))) - _wgslsmith_f_op_f32(713f + _wgslsmith_f_op_f32(-574f - _wgslsmith_f_op_f32(-1168f - -1000f)))), -1176f);
    let var_0 = Struct_4(func_5(Struct_2(func_4(func_2()), Struct_1(u_input.e.x, u_input.a.wxx, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, global1.x, global1.x, -1840f)), vec4<bool>(true, true, true, true)), ~(u_input.e.x >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 431f, global1.x)) * vec4<f32>(-825f, arg_0.x, arg_0.x, 685f)))), -170f, !func_4(func_2()).e, !(!func_2().b.e));
    var var_1 = var_0.a.a ^ 1580i;
    var var_2 = var_0.a.a | abs(var_0.a.a);
    let var_3 = Struct_4(func_4(func_2()), -970f, vec4<bool>(func_5(Struct_2(Struct_1(-2147483647i, arg_1, vec4<u32>(4294967295u, var_0.a.b.x, var_0.a.c.x, var_0.a.b.x), var_0.a.d, var_0.d), Struct_1(10547i, arg_1, vec4<u32>(0u, arg_1.x, 4294967295u, u_input.d), var_0.a.d, var_0.c), func_4(Struct_2(Struct_1(u_input.e.x, var_0.a.b, vec4<u32>(17727u, 4294967295u, arg_1.x, arg_1.x), vec4<f32>(-723f, 189f, -707f, 1000f), vec4<bool>(true, false, var_0.c.x, var_0.d.x)), var_0.a, 13509i, vec4<f32>(var_0.a.d.x, -890f, var_0.a.d.x, global1.x))).a, var_0.a.d)).e.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c), ~vec2<u32>(1u, var_0.a.c.x)) != var_0.a.c.x, !(_wgslsmith_div_f32(-500f, var_0.b) < _wgslsmith_f_op_f32(f32(-1f) * -384f)), var_0.c.x), vec4<bool>(true, true, all(select(!var_0.a.e.zzy, vec3<bool>(var_0.d.x, var_0.c.x, true), var_0.a.e.wyy)), !var_0.c.x));
    return Struct_4(Struct_1(reverseBits(1i), ~var_3.a.c.wwy, min(~func_4(Struct_2(Struct_1(u_input.e.x, arg_1, vec4<u32>(var_0.a.c.x, u_input.c.x, var_3.a.b.x, var_3.a.b.x), vec4<f32>(arg_0.x, global1.x, global1.x, -173f), var_0.d), var_3.a, 1445i, vec4<f32>(var_0.b, -503f, var_0.a.d.x, var_0.a.d.x))).c, u_input.a), _wgslsmith_f_op_vec4_f32(floor(var_3.a.d)), !var_3.a.e), _wgslsmith_f_op_f32(round(-1253f)), !var_3.d, vec4<bool>(false, true, select(var_3.d.x, false, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<f32>(1887f, global1.x), u_input.a.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

