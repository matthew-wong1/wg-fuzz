// {"0:0":[246,46,191,178]}
// Seed: 13843197981595388862

struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 3> = array<f32, 3>(-489f, -2238f, -119f);

var<private> global2: f32;

var<private> global3: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(4294967295u, 64743u, 1u), 0u, 748i), 30144u, Struct_2(Struct_1(vec3<u32>(28796u, 1152u, 12009u), 4294967295u, 0i), vec2<f32>(-1170f, -1046f), Struct_1(vec3<u32>(0u, 0u, 1u), 62762u, i32(-2147483648)), Struct_1(vec3<u32>(7410u, 9225u, 0u), 3948u, 2147483647i)))), -149f, Struct_2(Struct_1(vec3<u32>(0u, 3637u, 1u), 55085u, 67271i), vec2<f32>(-1075f, 604f), Struct_1(vec3<u32>(0u, 1u, 1u), 80695u, 33056i), Struct_1(vec3<u32>(5883u, 17914u, 30629u), 1u, 1i)), -295f), Struct_5(Struct_4(Struct_3(-1i, Struct_1(vec3<u32>(52699u, 16378u, 1u), 4294967295u, 27521i), 59213u, Struct_2(Struct_1(vec3<u32>(4294967295u, 12915u, 1u), 4294967295u, 1i), vec2<f32>(-2340f, -1377f), Struct_1(vec3<u32>(0u, 13576u, 22028u), 42293u, -1i), Struct_1(vec3<u32>(41564u, 0u, 0u), 0u, -1171i)))), -2862f, Struct_2(Struct_1(vec3<u32>(64569u, 1u, 38689u), 29804u, -29694i), vec2<f32>(1828f, 327f), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 1u, -6768i), Struct_1(vec3<u32>(4294967295u, 29073u, 1u), 47665u, 0i)), -151f), Struct_5(Struct_4(Struct_3(5090i, Struct_1(vec3<u32>(4294967295u, 22958u, 4294967295u), 31555u, 20508i), 4294967295u, Struct_2(Struct_1(vec3<u32>(38090u, 3276u, 0u), 4294967295u, -1i), vec2<f32>(-103f, -1112f), Struct_1(vec3<u32>(110046u, 1u, 54069u), 50819u, 1i), Struct_1(vec3<u32>(1u, 12913u, 118391u), 0u, -14427i)))), -1410f, Struct_2(Struct_1(vec3<u32>(0u, 53777u, 4294967295u), 1u, 2147483647i), vec2<f32>(277f, -866f), Struct_1(vec3<u32>(1u, 43267u, 28848u), 4294967295u, 17047i), Struct_1(vec3<u32>(1u, 1u, 39137u), 4294967295u, 1065i)), 318f), Struct_5(Struct_4(Struct_3(-39067i, Struct_1(vec3<u32>(54061u, 117283u, 0u), 0u, -50718i), 28775u, Struct_2(Struct_1(vec3<u32>(27971u, 1u, 0u), 4174u, 0i), vec2<f32>(-1039f, -1781f), Struct_1(vec3<u32>(17123u, 0u, 2406u), 1u, 16614i), Struct_1(vec3<u32>(0u, 4294967295u, 97150u), 38378u, -21989i)))), 694f, Struct_2(Struct_1(vec3<u32>(1u, 0u, 5589u), 4294967295u, 0i), vec2<f32>(-709f, -588f), Struct_1(vec3<u32>(13277u, 0u, 43127u), 145u, 60319i), Struct_1(vec3<u32>(1u, 13408u, 32419u), 4294967295u, 1i)), -831f), Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(68680u, 0u, 4294967295u), 77703u, 0i), 1u, Struct_2(Struct_1(vec3<u32>(6567u, 0u, 0u), 60090u, 1i), vec2<f32>(273f, 971f), Struct_1(vec3<u32>(1u, 64140u, 6232u), 78236u, -23788i), Struct_1(vec3<u32>(8588u, 16576u, 64630u), 4294967295u, -34894i)))), -151f, Struct_2(Struct_1(vec3<u32>(0u, 78406u, 0u), 50909u, -11779i), vec2<f32>(-338f, -833f), Struct_1(vec3<u32>(4294967295u, 78217u, 31207u), 86u, 2147483647i), Struct_1(vec3<u32>(35884u, 40940u, 0u), 1u, -31596i)), 575f), Struct_5(Struct_4(Struct_3(i32(-2147483648), Struct_1(vec3<u32>(7276u, 4294967295u, 0u), 11388u, -34973i), 57969u, Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 25153u), 4294967295u, i32(-2147483648)), vec2<f32>(505f, -466f), Struct_1(vec3<u32>(39176u, 44671u, 24034u), 37453u, 15164i), Struct_1(vec3<u32>(1u, 6633u, 33352u), 4294967295u, -6385i)))), 431f, Struct_2(Struct_1(vec3<u32>(39911u, 25547u, 3081u), 1u, -54945i), vec2<f32>(716f, -345f), Struct_1(vec3<u32>(10204u, 7569u, 1u), 4294967295u, 1i), Struct_1(vec3<u32>(40206u, 0u, 4294967295u), 0u, -1i)), -238f), Struct_5(Struct_4(Struct_3(0i, Struct_1(vec3<u32>(0u, 0u, 1u), 51268u, 0i), 0u, Struct_2(Struct_1(vec3<u32>(1u, 30947u, 1u), 4294967295u, 2147483647i), vec2<f32>(-519f, -618f), Struct_1(vec3<u32>(9392u, 1u, 1u), 0u, 0i), Struct_1(vec3<u32>(1u, 4294967295u, 29008u), 4294967295u, -1i)))), 1252f, Struct_2(Struct_1(vec3<u32>(62747u, 80979u, 117598u), 1u, -29768i), vec2<f32>(-1000f, 128f), Struct_1(vec3<u32>(4294967295u, 56592u, 73771u), 8022u, 2147483647i), Struct_1(vec3<u32>(0u, 66454u, 4294967295u), 64553u, 1i)), 993f), Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(37223u, 29032u, 0u), 1u, -50839i), 1u, Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 13900u, 59080i), vec2<f32>(-617f, -698f), Struct_1(vec3<u32>(45794u, 0u, 43818u), 4294967295u, i32(-2147483648)), Struct_1(vec3<u32>(1u, 0u, 41700u), 4294967295u, 59542i)))), 1404f, Struct_2(Struct_1(vec3<u32>(0u, 7194u, 0u), 9059u, -16310i), vec2<f32>(219f, 753f), Struct_1(vec3<u32>(4294967295u, 7804u, 1u), 14952u, -1i), Struct_1(vec3<u32>(56235u, 8768u, 1u), 32356u, -1i)), -681f), Struct_5(Struct_4(Struct_3(-1i, Struct_1(vec3<u32>(76063u, 67990u, 4294967295u), 30834u, 55126i), 0u, Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 29460u), 56854u, 68505i), vec2<f32>(-1482f, 549f), Struct_1(vec3<u32>(4294967295u, 39147u, 53944u), 89122u, 15984i), Struct_1(vec3<u32>(0u, 4294967295u, 81034u), 1u, 2147483647i)))), -570f, Struct_2(Struct_1(vec3<u32>(34272u, 0u, 25075u), 39241u, i32(-2147483648)), vec2<f32>(-244f, -358f), Struct_1(vec3<u32>(83626u, 60951u, 0u), 66052u, -9963i), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 56843u, 0i)), -197f), Struct_5(Struct_4(Struct_3(0i, Struct_1(vec3<u32>(1u, 22194u, 64133u), 4294967295u, i32(-2147483648)), 56308u, Struct_2(Struct_1(vec3<u32>(0u, 80158u, 42497u), 61107u, -1i), vec2<f32>(1352f, 496f), Struct_1(vec3<u32>(4368u, 1u, 75904u), 18490u, 1i), Struct_1(vec3<u32>(0u, 34373u, 10712u), 4294967295u, 0i)))), 773f, Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 111029u), 28250u, 2147483647i), vec2<f32>(1690f, 918f), Struct_1(vec3<u32>(1u, 1u, 4294967295u), 0u, -17989i), Struct_1(vec3<u32>(1542u, 1u, 4294967295u), 661u, -1i)), 713f), Struct_5(Struct_4(Struct_3(38501i, Struct_1(vec3<u32>(1u, 51401u, 21606u), 0u, -1i), 67004u, Struct_2(Struct_1(vec3<u32>(2255u, 8776u, 0u), 51424u, 2147483647i), vec2<f32>(2235f, 781f), Struct_1(vec3<u32>(34545u, 35917u, 0u), 32471u, 6820i), Struct_1(vec3<u32>(48711u, 4294967295u, 78549u), 1u, 0i)))), -194f, Struct_2(Struct_1(vec3<u32>(0u, 1u, 23449u), 35042u, 1i), vec2<f32>(-294f, -534f), Struct_1(vec3<u32>(2576u, 45862u, 1u), 4294967295u, -1i), Struct_1(vec3<u32>(5127u, 1u, 1u), 51168u, 2147483647i)), -734f), Struct_5(Struct_4(Struct_3(18207i, Struct_1(vec3<u32>(40770u, 8997u, 0u), 4294967295u, 14088i), 4294967295u, Struct_2(Struct_1(vec3<u32>(4294967295u, 9507u, 4294967295u), 40816u, -78292i), vec2<f32>(1356f, 215f), Struct_1(vec3<u32>(78453u, 0u, 4294967295u), 13896u, -39522i), Struct_1(vec3<u32>(1u, 1u, 7302u), 52895u, -16969i)))), 2796f, Struct_2(Struct_1(vec3<u32>(72154u, 1u, 1u), 17269u, -33162i), vec2<f32>(1243f, 901f), Struct_1(vec3<u32>(4294967295u, 46081u, 74776u), 1u, 242i), Struct_1(vec3<u32>(1u, 38742u, 11519u), 0u, 0i)), -1635f), Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(40600u, 1u, 31884u), 128746u, -14902i), 59812u, Struct_2(Struct_1(vec3<u32>(50068u, 1u, 1u), 0u, 112i), vec2<f32>(1000f, 513f), Struct_1(vec3<u32>(86315u, 43859u, 562u), 0u, 24621i), Struct_1(vec3<u32>(18640u, 1u, 4294967295u), 0u, i32(-2147483648))))), -315f, Struct_2(Struct_1(vec3<u32>(18640u, 43446u, 4294967295u), 37931u, -57328i), vec2<f32>(-426f, -205f), Struct_1(vec3<u32>(4294967295u, 74784u, 9472u), 64183u, 0i), Struct_1(vec3<u32>(26311u, 4294967295u, 8523u), 1u, 29439i)), -273f), Struct_5(Struct_4(Struct_3(12764i, Struct_1(vec3<u32>(52256u, 38615u, 23351u), 4294967295u, 0i), 1u, Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 32755u, 2147483647i), vec2<f32>(-1554f, 312f), Struct_1(vec3<u32>(32030u, 4294967295u, 53003u), 46007u, 46599i), Struct_1(vec3<u32>(827u, 11310u, 4294967295u), 727u, i32(-2147483648))))), 1232f, Struct_2(Struct_1(vec3<u32>(1u, 0u, 19306u), 1u, -8664i), vec2<f32>(602f, 294f), Struct_1(vec3<u32>(4294967295u, 1u, 71891u), 14342u, 17249i), Struct_1(vec3<u32>(90016u, 4294967295u, 1u), 17249u, -18129i)), 1000f), Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(4294967295u, 29098u, 1u), 0u, 1i), 4294967295u, Struct_2(Struct_1(vec3<u32>(4118u, 1u, 0u), 4294967295u, 30359i), vec2<f32>(912f, -1345f), Struct_1(vec3<u32>(23231u, 8422u, 28347u), 4393u, 5033i), Struct_1(vec3<u32>(1u, 1u, 30035u), 0u, 2147483647i)))), -307f, Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 24511u), 4005u, 29729i), vec2<f32>(-629f, -159f), Struct_1(vec3<u32>(1u, 13483u, 41645u), 4294967295u, 6988i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 92342u), 0u, -1i)), -674f), Struct_5(Struct_4(Struct_3(-1i, Struct_1(vec3<u32>(1u, 60096u, 75349u), 11492u, 25980i), 88979u, Struct_2(Struct_1(vec3<u32>(8120u, 0u, 16940u), 69562u, 2147483647i), vec2<f32>(1558f, -1118f), Struct_1(vec3<u32>(6569u, 40867u, 4294967295u), 31033u, -22737i), Struct_1(vec3<u32>(242u, 1u, 1u), 0u, 16215i)))), -357f, Struct_2(Struct_1(vec3<u32>(46344u, 23089u, 80722u), 0u, 1i), vec2<f32>(2492f, 1860f), Struct_1(vec3<u32>(4294967295u, 0u, 10012u), 6131u, -1393i), Struct_1(vec3<u32>(24831u, 3829u, 29981u), 2230u, i32(-2147483648))), -730f), Struct_5(Struct_4(Struct_3(0i, Struct_1(vec3<u32>(4294967295u, 69995u, 4294967295u), 4294967295u, -16620i), 4294967295u, Struct_2(Struct_1(vec3<u32>(17300u, 4294967295u, 4294967295u), 48375u, i32(-2147483648)), vec2<f32>(-739f, 273f), Struct_1(vec3<u32>(53975u, 41194u, 3472u), 0u, 29202i), Struct_1(vec3<u32>(99908u, 1u, 4294967295u), 4294967295u, 42662i)))), -512f, Struct_2(Struct_1(vec3<u32>(0u, 0u, 49419u), 0u, 1i), vec2<f32>(-805f, 1651f), Struct_1(vec3<u32>(7820u, 49272u, 21120u), 34707u, 1566i), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 4294967295u, i32(-2147483648))), 548f), Struct_5(Struct_4(Struct_3(28296i, Struct_1(vec3<u32>(35985u, 0u, 0u), 25750u, 0i), 1u, Struct_2(Struct_1(vec3<u32>(5341u, 1u, 18491u), 4294967295u, i32(-2147483648)), vec2<f32>(862f, -1000f), Struct_1(vec3<u32>(0u, 65770u, 4294967295u), 74642u, 0i), Struct_1(vec3<u32>(0u, 0u, 4925u), 32449u, 78431i)))), -216f, Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 48277u), 96342u, -23220i), vec2<f32>(-519f, -486f), Struct_1(vec3<u32>(19275u, 4294967295u, 54499u), 0u, 1929i), Struct_1(vec3<u32>(57184u, 1u, 51028u), 26725u, i32(-2147483648))), -1065f), Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(4773u, 0u, 64330u), 0u, -59759i), 4294967295u, Struct_2(Struct_1(vec3<u32>(0u, 60589u, 0u), 58878u, 22816i), vec2<f32>(2522f, 181f), Struct_1(vec3<u32>(0u, 31636u, 1u), 4294967295u, 0i), Struct_1(vec3<u32>(79870u, 0u, 0u), 1u, -1i)))), 1755f, Struct_2(Struct_1(vec3<u32>(0u, 45602u, 30320u), 1u, i32(-2147483648)), vec2<f32>(-153f, 1464f), Struct_1(vec3<u32>(15114u, 0u, 11715u), 4294967295u, -13585i), Struct_1(vec3<u32>(58000u, 1u, 4294967295u), 7931u, -1i)), 358f), Struct_5(Struct_4(Struct_3(2147483647i, Struct_1(vec3<u32>(56957u, 0u, 0u), 52451u, -84962i), 0u, Struct_2(Struct_1(vec3<u32>(1u, 0u, 102565u), 90674u, 8871i), vec2<f32>(550f, -1106f), Struct_1(vec3<u32>(1u, 4294967295u, 7156u), 26279u, -37306i), Struct_1(vec3<u32>(4294967295u, 35605u, 11295u), 1u, i32(-2147483648))))), -1420f, Struct_2(Struct_1(vec3<u32>(86870u, 3443u, 4294967295u), 0u, 2147483647i), vec2<f32>(-476f, -1000f), Struct_1(vec3<u32>(42055u, 0u, 1u), 1u, 18322i), Struct_1(vec3<u32>(23120u, 31954u, 3047u), 66743u, 2147483647i)), 1221f), Struct_5(Struct_4(Struct_3(64459i, Struct_1(vec3<u32>(67946u, 27859u, 4294967295u), 19694u, -1i), 4294967295u, Struct_2(Struct_1(vec3<u32>(86843u, 29965u, 4294967295u), 1u, 1i), vec2<f32>(1000f, -1024f), Struct_1(vec3<u32>(20418u, 0u, 0u), 71373u, -18847i), Struct_1(vec3<u32>(277u, 1u, 4294967295u), 0u, -26125i)))), 1643f, Struct_2(Struct_1(vec3<u32>(4294967295u, 40797u, 3797u), 46438u, 15225i), vec2<f32>(-1000f, -1000f), Struct_1(vec3<u32>(22815u, 4294967295u, 1u), 41491u, 2147483647i), Struct_1(vec3<u32>(8457u, 63402u, 4294967295u), 0u, -7047i)), 200f), Struct_5(Struct_4(Struct_3(1i, Struct_1(vec3<u32>(49442u, 41499u, 59309u), 1u, -1i), 1u, Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 33934u), 1u, 13164i), vec2<f32>(267f, -326f), Struct_1(vec3<u32>(25467u, 94324u, 93759u), 58947u, -1i), Struct_1(vec3<u32>(1u, 107255u, 0u), 1u, 2147483647i)))), 693f, Struct_2(Struct_1(vec3<u32>(0u, 0u, 66307u), 1u, 0i), vec2<f32>(-438f, -174f), Struct_1(vec3<u32>(23951u, 0u, 75051u), 4013u, 3626i), Struct_1(vec3<u32>(0u, 4294967295u, 99603u), 29415u, 1i)), 802f), Struct_5(Struct_4(Struct_3(2147483647i, Struct_1(vec3<u32>(40019u, 1u, 1u), 14811u, 0i), 0u, Struct_2(Struct_1(vec3<u32>(10673u, 4294967295u, 14210u), 33159u, -1i), vec2<f32>(531f, 1000f), Struct_1(vec3<u32>(16379u, 19195u, 25450u), 0u, 61001i), Struct_1(vec3<u32>(17686u, 1u, 4294967295u), 1u, -22397i)))), -1023f, Struct_2(Struct_1(vec3<u32>(4294967295u, 76252u, 1u), 4294967295u, 23824i), vec2<f32>(227f, -1466f), Struct_1(vec3<u32>(119671u, 33501u, 15577u), 0u, 48161i), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 28028u, i32(-2147483648))), -1537f), Struct_5(Struct_4(Struct_3(0i, Struct_1(vec3<u32>(48581u, 4294967295u, 1u), 1u, 25052i), 30015u, Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 92625u), 0u, -46226i), vec2<f32>(570f, -366f), Struct_1(vec3<u32>(26599u, 1u, 1u), 59972u, 1i), Struct_1(vec3<u32>(7962u, 43551u, 4294967295u), 25581u, 2147483647i)))), -830f, Struct_2(Struct_1(vec3<u32>(1u, 6188u, 0u), 65632u, 14984i), vec2<f32>(-1028f, -1431f), Struct_1(vec3<u32>(26928u, 86993u, 2061u), 28284u, 1i), Struct_1(vec3<u32>(9489u, 0u, 107207u), 41822u, 17310i)), -682f));

fn func_3(arg_0: i32) -> bool {
    global2 = -global1[select(13656u / abs(~u_input.a), ~(1u & (u_input.a | u_input.a)), !(!all(vec2<bool>(true, true))))];
    var var_0 = Struct_3(abs(abs(-20739i)) + (-1i | arg_0), Struct_1(~(~(vec3<u32>(1u, u_input.a, 30350u) - vec3<u32>(34007u, u_input.a, u_input.a))), ~(1u >> u_input.a) / u_input.a, arg_0), 0u, Struct_2(Struct_1(~vec3<u32>(u_input.a, 0u, u_input.a) / vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a, i32(-2147483648) % arg_0), vec2<f32>(round(max(global1[u_input.a], global1[u_input.a])), -global1[abs(u_input.a)]), Struct_1(vec3<u32>(~u_input.a, u_input.a, max(40956u, 4294967295u)), ~(u_input.a % 1u), -(-arg_0)), Struct_1(vec3<u32>(clamp(u_input.a, 0u, u_input.a), ~65473u, 0u - u_input.a), u_input.a, 2147483647i)));
    let var_1 = ~(-vec2<i32>(i32(-2147483648), var_0.b.c / var_0.b.c)) / vec2<i32>(min(~arg_0, -30947i & ~1i), i32(-2147483648));
    global2 = min(trunc(var_0.d.b.x), 1000f);
    global1 = array<f32, 3>();
    return all(!(!select(vec3<bool>(true, false, true), !vec3<bool>(false, false, false), var_1.x >= -36594i)));
}

fn func_4(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(~(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(0u, u_input.a, u_input.a) & vec3<u32>(4295u, 0u, 4294967295u))), reverseBits(~u_input.a), i32(-2147483648)), -(-(-(-vec2<f32>(global1[u_input.a], global1[u_input.a])))), Struct_1(vec3<u32>(u_input.a, reverseBits(u_input.a), u_input.a) >> vec3<u32>(u_input.a >> u_input.a, 642u, min(43104u, u_input.a)), u_input.a, ~(-(~57705i))), Struct_1(~vec3<u32>(u_input.a, u_input.a, clamp(u_input.a, 55300u, 0u)), u_input.a, 2147483647i));
    let var_1 = select(vec4<bool>(arg_0 | arg_0, arg_0, arg_0, true), select(!vec4<bool>(arg_0, var_0.d.a.x < var_0.a.a.x, func_3(1i), arg_0), vec4<bool>(true, !arg_0 || all(vec3<bool>(arg_0, true, arg_0)), !(2147483647i < var_0.c.c), true || select(arg_0, arg_0, true)), vec4<bool>(!any(vec3<bool>(arg_0, true, false)), true, arg_0, !false)), !vec4<bool>(true, 5592i > reverseBits(var_0.d.c), all(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))), any(vec2<bool>(false, arg_0))));
    global1 = array<f32, 3>();
    var_0 = Struct_2(var_0.a, -(-(-vec2<f32>(global1[u_input.a], var_0.b.x))), var_0.a, Struct_1(min(vec3<u32>(~0u, 4294967295u, 17147u), var_0.d.a), 120855u, var_0.d.c));
    let var_2 = Struct_3(-abs(~var_0.a.c / (var_0.d.c - var_0.c.c)), Struct_1(vec3<u32>((u_input.a - var_0.a.a.x) + (u_input.a | u_input.a), firstLeadingBit(~21002u), u_input.a), ~(~50766u), ~(~(-4240i))), dot(var_0.d.a.yy, vec2<u32>(dot(vec4<u32>(88761u, u_input.a, var_0.a.b, var_0.a.a.x), vec4<u32>(0u, 11216u, var_0.a.a.x, 51701u)), var_0.d.b)) - 47330u, Struct_2(Struct_1(firstTrailingBit(vec3<u32>(var_0.c.a.x, u_input.a, var_0.a.b)), 1u, countOneBits(var_0.d.c & -7818i)), round(-(var_0.b + var_0.b)), var_0.a, var_0.c));
    return vec4<f32>(var_0.b.x, global1[2856u], trunc(1661f), trunc(max(var_0.b.x, var_2.d.b.x)) - (abs(var_2.d.b.x) + (var_0.b.x * var_0.b.x))) * (vec4<f32>(-global1[var_0.c.b >> 4294967295u], -1409f - global1[u_input.a], var_2.d.b.x, var_2.d.b.x) + (vec4<f32>(var_2.d.b.x, max(var_2.d.b.x, -352f), var_2.d.b.x, -247f / var_0.b.x) * ((vec4<f32>(var_0.b.x, var_0.b.x, global1[29641u], var_0.b.x) - vec4<f32>(var_0.b.x, 1453f, 1215f, var_0.b.x)) / vec4<f32>(global1[0u], var_2.d.b.x, 255f, var_0.b.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_4(Struct_3(2147483647i, Struct_1(vec3<u32>(u_input.a, ~arg_0, 1u), 4294967295u / ~arg_0, max(dot(vec4<i32>(2147483647i, -1i, -8070i, 4292i), vec4<i32>(0i, -1i, -1i, 0i)), 4712i >> 33819u)), arg_0, Struct_2(Struct_1(vec3<u32>(4294967295u, 35814u, arg_0) ^ vec3<u32>(arg_0, arg_0, u_input.a), ~2198u, ~(-23149i)), -vec2<f32>(-417f, -1278f), Struct_1(~vec3<u32>(u_input.a, u_input.a, 1u), ~22446u, max(1i, -7771i)), Struct_1(~vec3<u32>(84208u, u_input.a, u_input.a), arg_0, 29471i * i32(-2147483648)))));
    let var_1 = -func_4(func_3(-var_0.a.d.c.c)) / -sign((vec4<f32>(global1[1u], var_0.a.d.b.x, arg_2.x, -274f) / vec4<f32>(1478f, global1[15304u], 1042f, -1721f)) * trunc(vec4<f32>(-573f, global1[0u], -1770f, arg_2.x)));
    global1 = array<f32, 3>();
    let var_2 = Struct_1(~firstTrailingBit(~(vec3<u32>(4294967295u, 1u, var_0.a.b.b) / var_0.a.b.a)), 37006u, 1i);
    var var_3 = vec4<i32>(clamp(firstTrailingBit(var_0.a.d.d.c), (var_0.a.b.c ^ var_2.c) | var_2.c, firstLeadingBit(var_0.a.d.c.c + i32(-2147483648))) & var_0.a.b.c, reverseBits(~(-1i)), -var_2.c, dot(abs(abs(~vec4<i32>(9175i, var_0.a.a, -30821i, var_2.c))), ~(~select(vec4<i32>(34950i, -58154i, var_0.a.d.a.c, 2207i), vec4<i32>(var_2.c, var_2.c, 5026i, 1i), vec4<bool>(true, arg_1.x, false, false)))));
    return trunc(-arg_2.x);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = func_2(~14771u, vec2<bool>(!(true & (-593f == 2314f)), (any(vec3<bool>(true, true, false)) || true) || any(!vec2<bool>(true, true))), -step(-vec2<f32>(1409f, global1[1u]), abs(-vec2<f32>(arg_0, -793f))));
    let var_1 = Struct_1(reverseBits(~vec3<u32>(1u, 44798u, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, u_input.a)) + vec3<u32>(min(1u, u_input.a & 159644u), u_input.a * u_input.a, 0u + 26838u), 10952u, abs(dot(-select(vec3<i32>(0i, 1i, 15267i), vec3<i32>(26900i, 9754i, 14606i), vec3<bool>(true, true, true)), abs(vec3<i32>(-67852i, 59253i, -1i)))));
    let var_2 = ~(~firstTrailingBit(vec4<u32>(55106u, 52295u, u_input.a, var_1.b * 78414u)));
    var var_3 = global3[~(~(~dot(var_1.a.zx, var_1.a.yz)))];
    var var_4 = floor(-vec4<f32>(-max(251f, -2423f), -round(-1622f), arg_0, -(var_3.b - global1[var_1.a.x])));
    return -func_4(any(!vec4<bool>(false, true, false, true))).x;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    let var_0 = dot(~arg_1.a.b.a, vec3<u32>(u_input.a, u_input.a, reverseBits(arg_1.a.d.a.a.x) / firstTrailingBit(19487u)));
    let var_1 = ((arg_1.a.b.a.yz % ~arg_1.a.d.a.a.yx) / ~(~(arg_1.a.d.d.a.xy - vec2<u32>(31196u, 1u)))) % ~(((arg_1.a.d.d.a.yy / arg_1.a.b.a.zx) >> select(arg_1.a.b.a.xy, arg_1.a.b.a.xx, vec2<bool>(false, true))) / ~arg_1.a.b.a.xx);
    let var_2 = ~vec3<u32>(var_0, u_input.a, clamp(1u, ~firstLeadingBit(11868u), ~(~var_1.x)));
    var var_3 = vec4<u32>(dot(vec2<u32>(var_1.x, 1u), arg_1.a.b.a.xz), ~(~min(64152u, var_2.x) + 6733u), ~abs(~36749u & abs(var_1.x)), u_input.a);
    let var_4 = vec3<u32>(~(~(~(~var_1.x))), arg_1.a.b.b, 0u);
    return Struct_2(Struct_1(vec3<u32>(1u, reverseBits(131315u), arg_1.a.b.a.x | var_3.x), ~((40809u + 39452u) ^ min(var_0, 1u)), -countOneBits(arg_1.a.a)), arg_1.a.d.b, arg_1.a.d.c, Struct_1(var_2, ~0u, min(~firstTrailingBit(-32286i), ~arg_1.a.d.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((global1[~u_input.a] + ((global1[26090u] + 721f) / global1[u_input.a * u_input.a])) / (1226f / func_1(1073f - -383f)), Struct_4(Struct_3(2147483647i, Struct_1(reverseBits(vec3<u32>(u_input.a, 39543u, 46428u)), u_input.a, dot(vec2<i32>(-14657i, 22786i), vec2<i32>(-1i, 0i))), dot(firstLeadingBit(vec4<u32>(108892u, 39895u, u_input.a, 93980u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, 55236u)), Struct_2(Struct_1(vec3<u32>(0u, 0u, u_input.a), 0u, -24130i), -vec2<f32>(global1[0u], global1[38550u]), Struct_1(vec3<u32>(u_input.a, 3483u, u_input.a), 0u, i32(-2147483648)), Struct_1(vec3<u32>(7838u, u_input.a, u_input.a), u_input.a, -13191i)))), 1000f / (global1[~u_input.a] / -(-global1[u_input.a])));
    var var_1 = Struct_4(Struct_3(select(-(-9747i), i32(-2147483648), true), var_0.a, 65295u, Struct_2(Struct_1(clamp(var_0.c.a, vec3<u32>(u_input.a, u_input.a, 31889u), var_0.d.a), clamp(u_input.a, var_0.d.b, 16011u), var_0.a.c), var_0.b, func_5(-483f + -407f, Struct_4(Struct_3(var_0.a.c, var_0.d, var_0.c.a.x, Struct_2(var_0.a, vec2<f32>(1676f, global1[0u]), var_0.c, Struct_1(vec3<u32>(1u, 1u, u_input.a), var_0.d.b, var_0.a.c)))), global1[0u]).a, func_5(var_0.b.x + global1[u_input.a], Struct_4(Struct_3(var_0.c.c, var_0.c, var_0.c.b, Struct_2(Struct_1(var_0.d.a, var_0.d.a.x, 2147483647i), var_0.b, Struct_1(var_0.d.a, u_input.a, 31230i), Struct_1(vec3<u32>(u_input.a, 5991u, 16692u), 4294967295u, -1865i)))), -1000f).a)));
    var_0 = var_1.a.d;
    var var_2 = Struct_3(dot((vec3<i32>(650i, -37220i, -19703i) - firstTrailingBit(vec3<i32>(var_1.a.a, -14854i, -1i))) % vec3<i32>(dot(vec3<i32>(-1i, -1i, var_1.a.b.c), vec3<i32>(-15604i, var_0.c.c, 1i)), abs(-23670i), -var_1.a.b.c), ~firstLeadingBit(vec3<i32>(var_1.a.b.c, 0i, 25092i)) + vec3<i32>(~var_0.c.c, i32(-2147483648), min(0i, -49623i))), func_5(max(abs(845f) / -global1[64487u], -global1[70254u] * 319f), Struct_4(var_1.a), -global1[firstTrailingBit(52131u)]).a, ~(((45394u % u_input.a) | abs(0u)) | ~min(u_input.a, 0u)), func_5(exp2(-1097f), Struct_4(Struct_3(var_0.a.c, var_0.a, ~var_0.a.b, Struct_2(Struct_1(var_0.d.a, var_0.a.b, -1i), vec2<f32>(-684f, 110f), var_1.a.b, var_1.a.d.c))), func_5(global1[u_input.a] * -1063f, Struct_4(var_1.a), -475f).b.x * -round(global1[78074u])));
    var_1 = Struct_4(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.a, -514f, vec2<f32>(-(-1395f / -136f) * var_1.a.d.b.x, var_0.b.x), -(var_0.b / (var_2.d.b + -vec2<f32>(var_1.a.d.b.x, -378f))), -vec2<i32>(min(-1i, var_1.a.d.a.c), 16940i));
}

