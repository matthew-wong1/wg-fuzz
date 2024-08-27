struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: vec4<f32>;

var<private> global3: array<i32, 21> = array<i32, 21>(-33017i, 0i, 2147483647i, -658i, -1i, -1i, 935i, i32(-2147483648), i32(-2147483648), 1i, 1i, -18244i, -6428i, 2147483647i, 1i, -1i, -1i, 1i, 19613i, 2147483647i, -5637i);

var<private> global4: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(4294967295u, -1i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-814f, 988f, -300f)), 1960u, true, 532f, vec3<u32>(1u, 0u, 0u)), vec2<f32>(-742f, 1239f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(927f, -1340f, -747f)), 18973u, true, 740f, vec3<u32>(0u, 5860u, 0u)), vec3<u32>(32643u, 4294967295u, 1u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1859f, -701f, 966f))), vec4<f32>(1048f, 888f, -156f, -1806f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-378f, -852f, -2001f)), 33342u, true, 1443f, vec3<u32>(1u, 1u, 4294967295u)), vec2<f32>(-1679f, -1419f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1112f, 550f, 724f)), 6632u, false, 1000f, vec3<u32>(0u, 0u, 26378u)), vec3<u32>(85150u, 55809u, 4294967295u), Struct_1(vec3<bool>(true, true, false), vec3<f32>(459f, -343f, -2647f)))), Struct_4(0u, -42199i, Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(988f, 1000f, 266f)), 1u, false, 187f, vec3<u32>(70486u, 40552u, 0u)), vec2<f32>(698f, 256f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(382f, 806f, 3284f)), 1u, false, 1232f, vec3<u32>(7037u, 26308u, 81402u)), vec3<u32>(42968u, 30278u, 4294967295u), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-518f, 658f, -553f))), vec4<f32>(1049f, 184f, -2019f, -317f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-287f, 1055f, -191f)), 4294967295u, false, -117f, vec3<u32>(0u, 0u, 11413u)), vec2<f32>(1239f, 2023f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1000f, -156f, -1476f)), 78314u, true, 2350f, vec3<u32>(36615u, 3512u, 69413u)), vec3<u32>(1u, 15409u, 49100u), Struct_1(vec3<bool>(false, false, true), vec3<f32>(330f, 1200f, -776f)))), Struct_4(0u, -22475i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1000f, -1170f, 484f)), 895u, true, -348f, vec3<u32>(25097u, 28213u, 4294967295u)), vec2<f32>(-1052f, 589f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1097f, 534f, 1000f)), 1u, false, 343f, vec3<u32>(41246u, 61017u, 0u)), vec3<u32>(2124u, 18018u, 0u), Struct_1(vec3<bool>(false, true, true), vec3<f32>(720f, -1000f, -1005f))), vec4<f32>(-935f, 629f, 236f, -141f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-794f, 1359f, 1688f)), 1u, true, 295f, vec3<u32>(22468u, 20062u, 47241u)), vec2<f32>(770f, 270f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(583f, -861f, -722f)), 1u, true, 413f, vec3<u32>(4294967295u, 2426u, 96252u)), vec3<u32>(1u, 4819u, 39917u), Struct_1(vec3<bool>(true, true, false), vec3<f32>(1000f, -1000f, 1000f)))), Struct_4(4294967295u, 8901i, Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1174f, 610f, -375f)), 4294967295u, true, 900f, vec3<u32>(17224u, 38858u, 1u)), vec2<f32>(309f, -590f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1000f, -1272f, 187f)), 31592u, false, 536f, vec3<u32>(4294967295u, 62004u, 9130u)), vec3<u32>(0u, 4294967295u, 31470u), Struct_1(vec3<bool>(true, true, true), vec3<f32>(600f, 608f, -167f))), vec4<f32>(-773f, -839f, 709f, 200f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1264f, 317f, -1230f)), 0u, true, 433f, vec3<u32>(28651u, 0u, 34143u)), vec2<f32>(-1000f, -1659f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-443f, -868f, 607f)), 4294967295u, false, -810f, vec3<u32>(1u, 4294967295u, 82041u)), vec3<u32>(61743u, 0u, 4294967295u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-217f, -655f, 359f)))), Struct_4(56224u, -50966i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1000f, 430f, 315f)), 71486u, true, -1155f, vec3<u32>(87710u, 4294967295u, 90046u)), vec2<f32>(-1230f, 848f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(211f, 633f, -1000f)), 0u, false, 705f, vec3<u32>(72674u, 0u, 1u)), vec3<u32>(1u, 14714u, 42893u), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1660f, 1009f, 1378f))), vec4<f32>(1074f, 1250f, 915f, 1913f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-117f, 234f, -864f)), 4294967295u, false, 1068f, vec3<u32>(50589u, 1u, 26260u)), vec2<f32>(413f, -198f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1647f, -413f, -458f)), 7418u, false, -2197f, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<u32>(2282u, 0u, 21446u), Struct_1(vec3<bool>(false, true, true), vec3<f32>(1001f, -198f, -1000f)))), Struct_4(4294967295u, i32(-2147483648), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(200f, -855f, -1430f)), 1672u, true, -137f, vec3<u32>(3411u, 1u, 87026u)), vec2<f32>(1676f, 334f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-924f, 788f, 1103f)), 1u, true, 1504f, vec3<u32>(69182u, 42000u, 19068u)), vec3<u32>(0u, 8507u, 91268u), Struct_1(vec3<bool>(false, true, true), vec3<f32>(766f, 292f, -105f))), vec4<f32>(-1817f, 1568f, 819f, 873f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(692f, 1855f, -1426f)), 1u, true, 1075f, vec3<u32>(0u, 0u, 30727u)), vec2<f32>(-1000f, 1124f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(1251f, 1039f, -238f)), 0u, true, -1099f, vec3<u32>(49044u, 4294967295u, 93263u)), vec3<u32>(18538u, 0u, 80368u), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-341f, -1000f, -1708f)))), Struct_4(0u, 13082i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(309f, 1014f, -168f)), 1u, true, 1000f, vec3<u32>(0u, 4294967295u, 4294967295u)), vec2<f32>(259f, 481f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-192f, -480f, -1000f)), 14888u, true, -106f, vec3<u32>(1u, 4294967295u, 38531u)), vec3<u32>(1u, 1u, 1u), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-556f, 1743f, 2057f))), vec4<f32>(1058f, -245f, 832f, -1198f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-2418f, 351f, 317f)), 0u, false, 2017f, vec3<u32>(0u, 21351u, 21031u)), vec2<f32>(-1713f, 787f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-403f, -1356f, -465f)), 4294967295u, false, -1063f, vec3<u32>(32351u, 26010u, 0u)), vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-619f, 1000f, -155f)))), Struct_4(48018u, 53369i, Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(2281f, 839f, 1000f)), 1u, true, 213f, vec3<u32>(74415u, 1u, 71484u)), vec2<f32>(-858f, -1000f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-122f, -2919f, 587f)), 4294967295u, true, -274f, vec3<u32>(62639u, 0u, 1u)), vec3<u32>(0u, 1u, 0u), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1000f, 152f, 532f))), vec4<f32>(580f, -2094f, 737f, 757f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1380f, 1513f, 139f)), 1u, false, 768f, vec3<u32>(4294967295u, 40036u, 37687u)), vec2<f32>(-2436f, 1966f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-397f, 1931f, -987f)), 16043u, false, -385f, vec3<u32>(0u, 26887u, 32147u)), vec3<u32>(4294967295u, 58252u, 4294967295u), Struct_1(vec3<bool>(true, true, true), vec3<f32>(693f, 2276f, -1488f)))), Struct_4(77464u, -23677i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1000f, 2373f, -636f)), 4294967295u, true, 989f, vec3<u32>(1u, 1u, 4294967295u)), vec2<f32>(985f, 1293f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(1358f, -626f, 1647f)), 2762u, false, -575f, vec3<u32>(73910u, 26607u, 62438u)), vec3<u32>(494u, 6623u, 4294967295u), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-592f, -175f, -415f))), vec4<f32>(-828f, -285f, -1062f, 392f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(195f, -678f, -533f)), 36230u, true, -825f, vec3<u32>(1u, 4294967295u, 32777u)), vec2<f32>(1147f, -685f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-940f, -1168f, 1000f)), 14343u, true, -1523f, vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(10661u, 12216u, 22831u), Struct_1(vec3<bool>(true, true, true), vec3<f32>(763f, -911f, 1419f)))), Struct_4(1u, -1i, Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1835f, -233f, 1364f)), 46534u, false, 2209f, vec3<u32>(1u, 31697u, 0u)), vec2<f32>(576f, -234f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-470f, -345f, -929f)), 0u, true, -1740f, vec3<u32>(4294967295u, 54277u, 16129u)), vec3<u32>(24742u, 4294967295u, 0u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1016f, -100f, -1000f))), vec4<f32>(1073f, 191f, -290f, -721f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1851f, 183f, 441f)), 14372u, true, 285f, vec3<u32>(1u, 70688u, 48510u)), vec2<f32>(536f, 1281f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1651f, -1702f, -340f)), 15542u, false, 1000f, vec3<u32>(100582u, 4294967295u, 43138u)), vec3<u32>(10907u, 2650u, 0u), Struct_1(vec3<bool>(true, false, true), vec3<f32>(335f, -1235f, 794f)))), Struct_4(67565u, 2147483647i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-993f, -587f, 605f)), 45937u, true, 527f, vec3<u32>(0u, 9379u, 10873u)), vec2<f32>(506f, -404f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(1504f, -133f, -1071f)), 4294967295u, true, 1889f, vec3<u32>(4294967295u, 1u, 68683u)), vec3<u32>(46129u, 3239u, 0u), Struct_1(vec3<bool>(true, true, false), vec3<f32>(618f, -948f, -1486f))), vec4<f32>(-1686f, -369f, -653f, 1198f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(294f, -1648f, 106f)), 29212u, true, 1594f, vec3<u32>(5593u, 1u, 0u)), vec2<f32>(-1295f, -961f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-439f, 547f, 296f)), 3607u, true, -265f, vec3<u32>(25342u, 12060u, 22413u)), vec3<u32>(22296u, 36720u, 47319u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1913f, -1339f, -1217f)))), Struct_4(4294967295u, 2147483647i, Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(283f, -798f, -437f)), 4294967295u, true, 175f, vec3<u32>(82993u, 4294967295u, 4294967295u)), vec2<f32>(480f, -269f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-552f, 717f, -1000f)), 0u, false, 282f, vec3<u32>(36763u, 4294967295u, 1745u)), vec3<u32>(4294967295u, 23046u, 18458u), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1000f, -1476f, -755f))), vec4<f32>(-642f, -183f, 491f, -1268f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1386f, -292f, -1471f)), 0u, true, 1623f, vec3<u32>(6460u, 4294967295u, 0u)), vec2<f32>(-1000f, 548f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-2113f, -505f, -1000f)), 38291u, false, -544f, vec3<u32>(17231u, 14258u, 1u)), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-727f, 498f, -1702f)))), Struct_4(4294967295u, -13735i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(731f, -551f, 1008f)), 17489u, false, 411f, vec3<u32>(4294967295u, 69148u, 0u)), vec2<f32>(-704f, -383f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(1000f, -743f, -518f)), 3277u, false, 1081f, vec3<u32>(53938u, 30611u, 1u)), vec3<u32>(115672u, 76742u, 37541u), Struct_1(vec3<bool>(false, true, false), vec3<f32>(1000f, -720f, 2036f))), vec4<f32>(-787f, 2825f, 251f, 193f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1000f, -1383f, 1897f)), 1u, false, 765f, vec3<u32>(4294967295u, 28047u, 70408u)), vec2<f32>(721f, -377f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-113f, 174f, 324f)), 0u, true, -458f, vec3<u32>(0u, 1u, 0u)), vec3<u32>(30235u, 0u, 1u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(918f, 1210f, -1065f)))), Struct_4(75121u, i32(-2147483648), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(1000f, -1472f, 1000f)), 60770u, false, -1550f, vec3<u32>(33416u, 0u, 17518u)), vec2<f32>(-101f, 753f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-205f, -341f, -1076f)), 37823u, false, -656f, vec3<u32>(44881u, 41436u, 0u)), vec3<u32>(92516u, 0u, 61697u), Struct_1(vec3<bool>(true, true, true), vec3<f32>(1000f, 706f, -200f))), vec4<f32>(-637f, -723f, 464f, 664f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(333f, 182f, -507f)), 1u, true, -372f, vec3<u32>(9288u, 4294967295u, 4294967295u)), vec2<f32>(-1029f, 553f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-531f, -1000f, 215f)), 18822u, false, -513f, vec3<u32>(1u, 16242u, 1u)), vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec3<bool>(false, true, true), vec3<f32>(859f, -1304f, 730f)))), Struct_4(50359u, -1i, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(323f, 498f, -1854f)), 1u, false, -895f, vec3<u32>(1u, 45969u, 1u)), vec2<f32>(517f, -866f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(901f, -1636f, -284f)), 16719u, true, -257f, vec3<u32>(112481u, 0u, 72377u)), vec3<u32>(49641u, 1u, 31929u), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1000f, -707f, -1223f))), vec4<f32>(-1000f, -614f, -1000f, -1307f), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1392f, -223f, -1045f)), 25542u, true, 809f, vec3<u32>(53073u, 0u, 0u)), vec2<f32>(-1639f, 1000f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-226f, 142f, -1003f)), 1u, true, 1904f, vec3<u32>(19910u, 4294967295u, 62355u)), vec3<u32>(61041u, 55607u, 26027u), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1000f, 613f, -1152f)))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<bool>(true, all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), (global2.x > 862f) | true), vec3<f32>(2355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) - -903f), _wgslsmith_f_op_f32(-global2.x)));
    let var_1 = Struct_2(Struct_1(select(!(!vec3<bool>(false, var_0.a.x, var_0.a.x)), vec3<bool>(var_0.a.x & false, var_0.a.x, false), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-var_0.b)), u_input.b.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-806f + 319f)))) - _wgslsmith_f_op_f32(global2.x + -220f)), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 35745u, u_input.a), vec3<u32>(u_input.a, u_input.b.x, u_input.b.x))), ~vec3<u32>(abs(u_input.b.x), u_input.a, 18455u | u_input.b.x), vec3<u32>(u_input.a | 1u, ~u_input.b.x, ~(u_input.b.x | u_input.a))));
    var var_2 = var_1.a.a.x | !var_0.a.x;
    global0 = any(vec4<bool>(any(select(select(vec3<bool>(var_0.a.x, true, var_1.a.a.x), vec3<bool>(var_1.a.a.x, var_0.a.x, false), true), select(var_1.a.a, var_1.a.a, var_0.a.x), true)), !var_1.a.a.x, var_0.a.x, var_1.c));
    var_2 = true && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -318f), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1652f, 1000f))))) < -1000f);
    return ~(~(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = Struct_1(vec3<bool>(true, !(true && (u_input.b.x != 71781u)), 492f > _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global2.x * global2.x))), _wgslsmith_f_op_vec3_f32(-global2.xyy));
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, u_input.a, select(arg_1, 80441u, false)) << (~vec3<u32>(8283u, arg_1, 67046u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(11456u, 5795u, arg_1), countOneBits(vec3<u32>(2247u, 1u, u_input.a)) & ~vec3<u32>(4294967295u, arg_1, u_input.a))), _wgslsmith_mult_vec3_u32(vec3<u32>(12134u, ~arg_1, func_3()), _wgslsmith_div_vec3_u32(~(~vec3<u32>(51439u, u_input.b.x, arg_1)), ~vec3<u32>(u_input.b.x, 22945u, u_input.b.x))), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(u_input.b.x, 70304u, arg_1)))));
    var var_2 = var_0;
    let var_3 = Struct_1(var_2.a, vec3<f32>(498f, _wgslsmith_f_op_f32(max(383f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))) + _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(1480f - global2.x)))));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.b.x))) - 533f), !(var_0.a.x && (-301f > var_0.b.x))))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    global3 = array<i32, 21>();
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-313f, 262f, 1039f, arg_2.b.x) + vec4<f32>(203f, 503f, arg_2.a.d, arg_2.e.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, arg_2.a.d, global2.x, arg_2.e.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, 586f, arg_2.c.d, 1408f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1554f, 487f, 500f, arg_2.e.b.x)))))));
    var var_0 = arg_2.c;
    var var_1 = global2.x;
    let var_2 = abs(-select(vec4<i32>(global3[_wgslsmith_index_u32(arg_2.a.e.x, 21u)], 1i, ~(-2147483647i), -global3[_wgslsmith_index_u32(u_input.a, 21u)]), ~(~u_input.c), select(vec4<bool>(arg_1, false, false, arg_1), !vec4<bool>(var_0.c, false, arg_2.e.a.x, true), select(vec4<bool>(false, false, arg_2.e.a.x, arg_3), vec4<bool>(true, arg_3, true, arg_0.x), vec4<bool>(arg_1, arg_2.c.c, false, var_0.a.a.x)))));
    return arg_2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(~(~arg_1.e.x << (arg_1.b % 32u)), 1i, Struct_3(func_4(arg_1.a.a.zz, func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 11176i, global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<i32>(u_input.c.x, 1i, u_input.c.x), u_input.c.yxw), _wgslsmith_add_u32(12514u, u_input.b.x)), Struct_3(Struct_2(Struct_1(arg_1.a.a, vec3<f32>(-2709f, 1000f, global2.x)), 23465u, arg_1.a.a.x, 1000f, arg_1.e), _wgslsmith_div_vec2_f32(vec2<f32>(882f, arg_0.x), vec2<f32>(arg_0.x, -181f)), Struct_2(arg_1.a, arg_1.e.x, true, -1271f, arg_1.e), arg_1.e | arg_1.e, arg_1.a), all(vec3<bool>(true, arg_1.a.a.x, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yy)), arg_1, vec3<u32>(~4294967295u, countOneBits(func_3()), ~countOneBits(1u)), func_4(select(select(arg_1.a.a.yy, arg_1.a.a.zx, arg_1.a.a.x), vec2<bool>(true, false), vec2<bool>(arg_1.c, arg_1.c)), global2.x >= _wgslsmith_f_op_f32(min(-320f, global2.x)), Struct_3(Struct_2(arg_1.a, 4294967295u, arg_1.a.a.x, arg_1.d, arg_1.e), _wgslsmith_f_op_vec2_f32(exp2(arg_0)), func_4(arg_1.a.a.zx, false, Struct_3(Struct_2(arg_1.a, arg_1.b, arg_1.c, global2.x, vec3<u32>(arg_1.b, u_input.a, arg_1.b)), global2.yw, Struct_2(arg_1.a, arg_1.b, arg_1.a.a.x, -317f, vec3<u32>(arg_1.e.x, arg_1.b, arg_1.b)), arg_1.e, arg_1.a), arg_1.a.a.x), vec3<u32>(arg_1.e.x, arg_1.b, 7359u) ^ vec3<u32>(arg_1.b, 55673u, 19932u), Struct_1(arg_1.a.a, global2.zwy)), true).a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - 199f)), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -132f, -401f, 947f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, global2.x, -508f, arg_0.x)))))), Struct_3(Struct_2(arg_1.a, ~0u, func_4(func_4(vec2<bool>(arg_1.c, arg_1.c), arg_1.c, Struct_3(Struct_2(arg_1.a, u_input.b.x, true, 508f, vec3<u32>(16985u, 0u, u_input.b.x)), vec2<f32>(global2.x, 1081f), Struct_2(arg_1.a, arg_1.e.x, true, global2.x, vec3<u32>(arg_1.b, u_input.a, arg_1.e.x)), arg_1.e, arg_1.a), false).a.a.yx, !arg_1.c, Struct_3(arg_1, global2.zy, Struct_2(Struct_1(vec3<bool>(false, arg_1.c, true), arg_1.a.b), u_input.a, arg_1.c, 1161f, arg_1.e), vec3<u32>(7131u, 8413u, u_input.a), Struct_1(vec3<bool>(false, arg_1.c, arg_1.a.a.x), global2.zww)), arg_1.a.a.x | true).c, arg_1.a.b.x, ~(~arg_1.e)), _wgslsmith_f_op_vec2_f32(step(arg_0, arg_1.a.b.xz)), arg_1, firstTrailingBit(~vec3<u32>(u_input.a, 29204u, 27798u) << (vec3<u32>(53845u, 4294967295u, arg_1.b) % vec3<u32>(32u))), Struct_1(select(vec3<bool>(arg_1.c, true, false), vec3<bool>(arg_1.a.a.x, false, arg_1.a.a.x), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wyw)))));
    global0 = any(func_4(vec2<bool>(false, func_4(var_0.e.a.a.a.zy, arg_1.a.a.x, Struct_3(Struct_2(var_0.e.c.a, arg_1.b, arg_1.a.a.x, global2.x, arg_1.e), vec2<f32>(1109f, -1747f), arg_1, var_0.e.a.e, var_0.e.c.a), true).c), var_0.c.e.a.x, Struct_3(func_4(!arg_1.a.a.zy, arg_1.c | var_0.c.c.a.a.x, var_0.e, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yy), var_0.c.a.a.b.zx), func_4(!arg_1.a.a.zx, false, var_0.e, true), _wgslsmith_clamp_vec3_u32(var_0.e.c.e << (var_0.c.a.e % vec3<u32>(32u)), vec3<u32>(0u, var_0.c.c.b, 82841u), min(vec3<u32>(var_0.e.a.b, u_input.b.x, u_input.b.x), arg_1.e)), Struct_1(var_0.e.e.a, global2.zzz)), true).a.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_0.e.c.a.b.x + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))) - arg_0);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.d))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(arg_0.x, 1322f, -891f, 1000f))), var_0.d) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.d), false)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b.x, 571f, var_0.c.b.x, 100f)), _wgslsmith_f_op_vec4_f32(var_0.d + var_0.d), select(vec4<bool>(false, var_0.c.c.a.a.x, true, var_0.c.a.a.a.x), vec4<bool>(var_0.e.a.a.a.x, true, var_0.c.a.a.a.x, true), true))), _wgslsmith_div_vec4_f32(var_0.d, _wgslsmith_f_op_vec4_f32(abs(var_0.d)))))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.b.x, 15u)];
    return Struct_3(var_0.e.c, var_0.c.b, Struct_2(func_4(vec2<bool>(var_2.e.c.c | true, var_0.c.d.x <= var_2.e.c.b), (arg_1.c | false) || true, var_0.e, var_0.c.a.c).a, ~countOneBits(_wgslsmith_add_u32(var_0.e.a.e.x, 25813u)), !var_2.e.c.c, 1f, arg_1.e), arg_1.e, Struct_1(!select(arg_1.a.a, arg_1.a.a, !var_2.c.c.a.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -394f, false)), arg_0.x, arg_0.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> i32 {
    let var_0 = arg_2;
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.d, arg_0.b.x, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-497f, -682f, -386f, global2.x), vec4<f32>(107f, global2.x, var_0.e.b.x, arg_0.b.x)))))))));
    global1 = firstTrailingBit(u_input.c.x) > -_wgslsmith_mult_i32(29905i, ~arg_1 ^ u_input.c.x);
    var var_1 = Struct_2(var_0.c.a, arg_2.c.e.x, any(!vec2<bool>(arg_0.a.x, !var_0.a.a.a.x)), 846f, ~vec3<u32>(_wgslsmith_mult_u32(var_0.d.x, 0u), max(~var_0.a.b, 4294967295u), 77797u));
    var var_2 = select(vec4<u32>(abs(var_1.b), u_input.b.x, 45437u, ~min(arg_3.x, 1u)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_2.d.x, 65592u, arg_3.x, var_1.e.x), vec4<u32>(u_input.a, 0u, var_0.c.b, arg_2.c.b)), vec4<u32>(var_0.c.b, var_0.d.x, 1u, 32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a, var_1.b, arg_2.d.x), max(vec4<u32>(50840u, var_0.d.x, var_0.c.b, 20992u), vec4<u32>(arg_2.c.b, 46120u, 1u, 4294967295u)), ~vec4<u32>(arg_3.x, 1u, arg_3.x, 1u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, countOneBits(20678u), ~(~4294967295u), ~arg_2.d.x), vec4<u32>(u_input.a, select(~14743u, 4294967295u, false), _wgslsmith_clamp_u32(arg_2.c.b, arg_2.c.e.x, 0u), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, 1236f)), Struct_2(Struct_1(vec3<bool>(false, arg_0.a.x, var_0.e.a.x), var_1.a.b), 0u, var_1.c, -725f, vec3<u32>(4418u, 27136u, var_0.d.x))).c.e.x)), arg_0.a.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(global2.x + global2.x)), global2.x, _wgslsmith_f_op_f32(-global2.x))));
    global1 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_u32(u_input.b.x ^ ~u_input.b.x, abs(u_input.a), 19285u)), u_input.c.x, -(func_5(Struct_1(vec3<bool>(var_0.a.x, true, false), vec3<f32>(global2.x, global2.x, 742f)), u_input.c.x, func_1(vec2<f32>(-173f, var_0.b.x), Struct_2(Struct_1(var_0.a, global2.yzz), u_input.a, var_0.a.x, var_0.b.x, vec3<u32>(u_input.b.x, 44326u, 0u))), ~vec2<u32>(34076u, 32494u)) >> (u_input.b.x % 32u)), u_input.c, u_input.a);
}

