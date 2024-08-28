struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 42919u), vec3<u32>(28365u, 119328u, 1u), vec4<i32>(25087i, 2483i, -1i, -3836i), vec3<u32>(39337u, 32414u, 1u)), vec2<bool>(false, true), 1i, vec3<f32>(-1748f, 478f, 885f), Struct_1(vec2<u32>(146051u, 0u), vec3<u32>(20713u, 5773u, 10817u), vec4<i32>(-16094i, 0i, 0i, 30821i), vec3<u32>(54911u, 31878u, 28380u)));

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: vec2<i32> = vec2<i32>(23678i, 10900i);

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(Struct_1(vec2<u32>(45366u, 4294967295u), vec3<u32>(4294967295u, 0u, 26029u), vec4<i32>(2147483647i, 10548i, -7495i, i32(-2147483648)), vec3<u32>(4294967295u, 99460u, 37602u)), vec2<bool>(true, false), 20242i, vec3<f32>(322f, 945f, 794f), Struct_1(vec2<u32>(29829u, 27079u), vec3<u32>(26614u, 0u, 5577u), vec4<i32>(14577i, 12172i, 45091i, 18597i), vec3<u32>(1u, 21786u, 15679u))), 1u, Struct_1(vec2<u32>(24800u, 31193u), vec3<u32>(299u, 0u, 20727u), vec4<i32>(1i, 61071i, 0i, -21209i), vec3<u32>(1u, 0u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec3<u32>(30738u, 12681u, 1u), vec4<i32>(17775i, 1i, 2147483647i, 110190i), vec3<u32>(86683u, 29302u, 11193u)), vec2<bool>(true, true), i32(-2147483648), vec3<f32>(174f, 525f, 1000f), Struct_1(vec2<u32>(1u, 1u), vec3<u32>(1u, 1u, 0u), vec4<i32>(2147483647i, 0i, -19591i, 1i), vec3<u32>(74073u, 1u, 41375u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(27628u, 48441u), vec3<u32>(39780u, 13786u, 0u), vec4<i32>(-16436i, -8684i, -11308i, 0i), vec3<u32>(32484u, 1u, 44156u)), vec2<bool>(true, true), -1i, vec3<f32>(1085f, -586f, 1101f), Struct_1(vec2<u32>(1u, 24950u), vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(8539i, -1i, 1i, -2390i), vec3<u32>(4294967295u, 1u, 8299u))), 14909u, Struct_1(vec2<u32>(32026u, 1u), vec3<u32>(0u, 19829u, 19324u), vec4<i32>(-23246i, -1i, 1390i, 17155i), vec3<u32>(0u, 4294967295u, 0u)), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<u32>(0u, 102386u, 0u), vec4<i32>(-1i, 53813i, 5931i, 2147483647i), vec3<u32>(20361u, 4294967295u, 15549u)), vec2<bool>(true, false), -21912i, vec3<f32>(1385f, 985f, 1421f), Struct_1(vec2<u32>(16574u, 23222u), vec3<u32>(38734u, 0u, 1u), vec4<i32>(3236i, 1i, 2147483647i, 2147483647i), vec3<u32>(57938u, 35542u, 47885u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 25567u), vec3<u32>(4294967295u, 18013u, 1u), vec4<i32>(i32(-2147483648), 46992i, 1i, i32(-2147483648)), vec3<u32>(0u, 0u, 1u)), vec2<bool>(false, true), i32(-2147483648), vec3<f32>(738f, -1000f, -156f), Struct_1(vec2<u32>(1u, 37084u), vec3<u32>(20673u, 4294967295u, 0u), vec4<i32>(9028i, 13463i, 1i, 0i), vec3<u32>(396u, 0u, 105528u))), 4294967295u, Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(33294u, 30562u, 4294967295u), vec4<i32>(63836i, -4166i, 41760i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(Struct_1(vec2<u32>(68038u, 4294967295u), vec3<u32>(24135u, 0u, 37729u), vec4<i32>(-1i, -37246i, i32(-2147483648), i32(-2147483648)), vec3<u32>(1u, 50188u, 1u)), vec2<bool>(false, true), -5527i, vec3<f32>(-1041f, 201f, -1000f), Struct_1(vec2<u32>(78013u, 10290u), vec3<u32>(0u, 4294967295u, 79013u), vec4<i32>(2147483647i, -37854i, -2723i, 0i), vec3<u32>(1u, 33145u, 4294967295u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(14223u, 26604u), vec3<u32>(69181u, 0u, 1u), vec4<i32>(19511i, i32(-2147483648), 1i, -17967i), vec3<u32>(0u, 41946u, 1u)), vec2<bool>(false, false), 2147483647i, vec3<f32>(1995f, 1121f, -710f), Struct_1(vec2<u32>(7597u, 4294967295u), vec3<u32>(27716u, 7751u, 20427u), vec4<i32>(22856i, -8734i, 33566i, -3740i), vec3<u32>(37225u, 1u, 1503u))), 1u, Struct_1(vec2<u32>(0u, 48150u), vec3<u32>(1u, 44723u, 0u), vec4<i32>(27386i, 1i, -1i, 1i), vec3<u32>(4294967295u, 53542u, 5821u)), Struct_2(Struct_1(vec2<u32>(30618u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(1i, -1i, 2147483647i, -641i), vec3<u32>(0u, 4294967295u, 4294967295u)), vec2<bool>(false, false), -1i, vec3<f32>(1119f, -593f, 392f), Struct_1(vec2<u32>(3223u, 22211u), vec3<u32>(1u, 0u, 90272u), vec4<i32>(-1i, 1574i, -38971i, 31845i), vec3<u32>(1u, 4294967295u, 1u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 31387u), vec3<u32>(29245u, 0u, 51025u), vec4<i32>(2147483647i, 4473i, 2147483647i, 0i), vec3<u32>(26294u, 4294967295u, 1u)), vec2<bool>(false, false), -67746i, vec3<f32>(857f, -2080f, 329f), Struct_1(vec2<u32>(41372u, 23568u), vec3<u32>(4294967295u, 0u, 1309u), vec4<i32>(-26145i, 23873i, -1i, -26126i), vec3<u32>(1173u, 4294967295u, 0u))), 0u, Struct_1(vec2<u32>(30325u, 37237u), vec3<u32>(4294967295u, 72451u, 9831u), vec4<i32>(-1i, 33648i, 18589i, 0i), vec3<u32>(0u, 1u, 7109u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec3<u32>(0u, 1u, 8309u), vec4<i32>(8891i, -21782i, -2414i, -1i), vec3<u32>(21067u, 2455u, 47916u)), vec2<bool>(true, false), 4773i, vec3<f32>(-399f, 1358f, 1692f), Struct_1(vec2<u32>(4294967295u, 13801u), vec3<u32>(88209u, 58386u, 4294967295u), vec4<i32>(1i, 25241i, -35080i, -2521i), vec3<u32>(5082u, 18858u, 29784u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(76429u, 4294967295u), vec3<u32>(4294967295u, 0u, 72945u), vec4<i32>(65787i, -1i, 0i, -1i), vec3<u32>(61472u, 4294967295u, 1u)), vec2<bool>(true, false), 0i, vec3<f32>(1517f, 538f, -512f), Struct_1(vec2<u32>(0u, 84020u), vec3<u32>(4294967295u, 64050u, 0u), vec4<i32>(0i, -29631i, 0i, 3832i), vec3<u32>(1u, 4294967295u, 0u))), 53945u, Struct_1(vec2<u32>(0u, 34138u), vec3<u32>(60921u, 9498u, 544u), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec3<u32>(4294967295u, 5229u, 1u)), Struct_2(Struct_1(vec2<u32>(1u, 8577u), vec3<u32>(4294967295u, 4294967295u, 76113u), vec4<i32>(-46613i, i32(-2147483648), 0i, 0i), vec3<u32>(1u, 0u, 13221u)), vec2<bool>(false, true), -1i, vec3<f32>(1218f, -1000f, 344f), Struct_1(vec2<u32>(4294967295u, 39902u), vec3<u32>(1u, 64689u, 4294967295u), vec4<i32>(i32(-2147483648), 8928i, 1i, 26274i), vec3<u32>(4129u, 1u, 23535u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 51352u, 73216u), vec4<i32>(0i, 1i, 2147483647i, 0i), vec3<u32>(0u, 4294967295u, 1u)), vec2<bool>(false, true), -1i, vec3<f32>(-1030f, -477f, 135f), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(43272u, 4294967295u, 1u), vec4<i32>(-1i, -11432i, 6330i, -35472i), vec3<u32>(0u, 0u, 44927u))), 74480u, Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(12715u, 1u, 16792u), vec4<i32>(0i, 15442i, 2393i, -4471i), vec3<u32>(35212u, 0u, 63317u)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(4294967295u, 52200u, 1u), vec4<i32>(-12459i, 1i, -31589i, 41473i), vec3<u32>(0u, 24300u, 1u)), vec2<bool>(true, false), -1984i, vec3<f32>(-1597f, 1077f, 369f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(44174u, 22746u, 4294967295u), vec4<i32>(44711i, -5814i, 22172i, 42351i), vec3<u32>(4294967295u, 4294967295u, 19646u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(29205u, 0u), vec3<u32>(45389u, 39415u, 0u), vec4<i32>(2147483647i, -7365i, -1i, -52702i), vec3<u32>(1871u, 4294967295u, 22741u)), vec2<bool>(true, true), 0i, vec3<f32>(3332f, 1000f, -1522f), Struct_1(vec2<u32>(0u, 0u), vec3<u32>(25303u, 1u, 0u), vec4<i32>(-13644i, 2147483647i, 1i, 0i), vec3<u32>(10497u, 0u, 4294967295u))), 0u, Struct_1(vec2<u32>(32183u, 34474u), vec3<u32>(4294967295u, 1u, 1u), vec4<i32>(1i, 17738i, 2147483647i, -1i), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(36371u, 14825u, 49416u), vec4<i32>(-1i, 1i, 19341i, -1i), vec3<u32>(4294967295u, 1u, 4294967295u)), vec2<bool>(true, false), 0i, vec3<f32>(-537f, 1413f, -359f), Struct_1(vec2<u32>(5319u, 18256u), vec3<u32>(0u, 4294967295u, 1u), vec4<i32>(-9422i, -172i, i32(-2147483648), 0i), vec3<u32>(83960u, 12923u, 1u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 37958u), vec3<u32>(4294967295u, 37209u, 1u), vec4<i32>(-70009i, -34775i, 21942i, 2147483647i), vec3<u32>(0u, 48621u, 11294u)), vec2<bool>(false, false), 0i, vec3<f32>(1026f, -202f, 1000f), Struct_1(vec2<u32>(4294967295u, 49220u), vec3<u32>(4294967295u, 1u, 15591u), vec4<i32>(-22164i, -6056i, 29763i, -29186i), vec3<u32>(1u, 17255u, 0u))), 1u, Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(5149u, 1u, 13020u), vec4<i32>(i32(-2147483648), -29132i, -1i, -15541i), vec3<u32>(14926u, 537u, 5622u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 42912u), vec3<u32>(1u, 53075u, 16389u), vec4<i32>(-1409i, 0i, i32(-2147483648), i32(-2147483648)), vec3<u32>(4294967295u, 1u, 30507u)), vec2<bool>(false, true), 19159i, vec3<f32>(-955f, 888f, -823f), Struct_1(vec2<u32>(40347u, 46857u), vec3<u32>(1u, 2294u, 0u), vec4<i32>(-1i, -41189i, 46087i, 2147483647i), vec3<u32>(34533u, 0u, 0u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(102312u, 23386u), vec3<u32>(1u, 48013u, 74276u), vec4<i32>(i32(-2147483648), -16865i, -20917i, 48998i), vec3<u32>(20269u, 4294967295u, 0u)), vec2<bool>(false, false), 14986i, vec3<f32>(232f, -1505f, 644f), Struct_1(vec2<u32>(1u, 44862u), vec3<u32>(2728u, 43721u, 22911u), vec4<i32>(1i, 28744i, -47531i, -25671i), vec3<u32>(31758u, 4294967295u, 1605u))), 1u, Struct_1(vec2<u32>(22712u, 69537u), vec3<u32>(13158u, 38881u, 0u), vec4<i32>(-1i, 5193i, 1i, 0i), vec3<u32>(4294967295u, 68153u, 49410u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 29624u), vec3<u32>(25341u, 13134u, 0u), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -1i), vec3<u32>(52218u, 0u, 72627u)), vec2<bool>(false, false), 0i, vec3<f32>(588f, 378f, 1000f), Struct_1(vec2<u32>(0u, 34349u), vec3<u32>(1u, 72520u, 4294967295u), vec4<i32>(-8412i, 24574i, 30669i, 1i), vec3<u32>(22827u, 1u, 4294967295u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 5056u), vec3<u32>(4951u, 1u, 1u), vec4<i32>(2147483647i, -257i, 11326i, 2147483647i), vec3<u32>(34418u, 50738u, 0u)), vec2<bool>(false, true), 11520i, vec3<f32>(-762f, 1003f, 277f), Struct_1(vec2<u32>(4313u, 1u), vec3<u32>(0u, 26505u, 52709u), vec4<i32>(2147483647i, -1i, 1i, i32(-2147483648)), vec3<u32>(0u, 1u, 21278u))), 39707u, Struct_1(vec2<u32>(356u, 41560u), vec3<u32>(1u, 4294967295u, 50218u), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -2529i), vec3<u32>(44590u, 15539u, 36081u)), Struct_2(Struct_1(vec2<u32>(25433u, 33119u), vec3<u32>(14384u, 10390u, 34019u), vec4<i32>(8806i, 1i, 1i, 44420i), vec3<u32>(63864u, 33235u, 4962u)), vec2<bool>(false, false), 2147483647i, vec3<f32>(821f, -413f, -1000f), Struct_1(vec2<u32>(22086u, 34770u), vec3<u32>(44897u, 8357u, 69404u), vec4<i32>(56923i, -29661i, 2147483647i, -1i), vec3<u32>(48469u, 18780u, 6137u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<u32>(71380u, 0u, 4294967295u), vec4<i32>(-1i, 0i, -1i, -38371i), vec3<u32>(59605u, 0u, 55358u)), vec2<bool>(true, true), 23946i, vec3<f32>(617f, 387f, 258f), Struct_1(vec2<u32>(4294967295u, 32980u), vec3<u32>(1u, 13723u, 9682u), vec4<i32>(-59723i, i32(-2147483648), -12973i, 37320i), vec3<u32>(0u, 74439u, 4294967295u))), 1u, Struct_1(vec2<u32>(24329u, 4915u), vec3<u32>(21762u, 4294967295u, 1u), vec4<i32>(i32(-2147483648), 0i, -62445i, 2147483647i), vec3<u32>(32855u, 1u, 0u)), Struct_2(Struct_1(vec2<u32>(1u, 92949u), vec3<u32>(47476u, 101127u, 1u), vec4<i32>(-50443i, -7734i, i32(-2147483648), -4486i), vec3<u32>(4294967295u, 1u, 23022u)), vec2<bool>(true, false), 52461i, vec3<f32>(436f, 664f, -1000f), Struct_1(vec2<u32>(69644u, 4294967295u), vec3<u32>(77300u, 67390u, 87340u), vec4<i32>(43522i, 2147483647i, i32(-2147483648), 0i), vec3<u32>(4294967295u, 4294967295u, 89610u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 60839u), vec3<u32>(0u, 4294967295u, 0u), vec4<i32>(-37419i, 2147483647i, 1i, i32(-2147483648)), vec3<u32>(29045u, 4294967295u, 31980u)), vec2<bool>(true, false), 36981i, vec3<f32>(-1019f, 1220f, 1630f), Struct_1(vec2<u32>(96236u, 1u), vec3<u32>(20690u, 0u, 0u), vec4<i32>(16600i, 29729i, i32(-2147483648), 2981i), vec3<u32>(0u, 0u, 0u))), 6243u, Struct_1(vec2<u32>(46474u, 1u), vec3<u32>(21020u, 4294967295u, 4294967295u), vec4<i32>(47225i, -1i, -8912i, 64695i), vec3<u32>(33231u, 48218u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(1u, 10005u), vec3<u32>(0u, 123734u, 24600u), vec4<i32>(-18843i, i32(-2147483648), 48024i, 49932i), vec3<u32>(1u, 10850u, 28165u)), vec2<bool>(false, false), -1i, vec3<f32>(-3567f, -637f, 1304f), Struct_1(vec2<u32>(0u, 48956u), vec3<u32>(29518u, 4294967295u, 0u), vec4<i32>(11697i, 15298i, -28973i, 26117i), vec3<u32>(1u, 4294967295u, 20843u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(84738u, 1u), vec3<u32>(4294967295u, 7933u, 13410u), vec4<i32>(-1i, 2147483647i, 2147483647i, -10808i), vec3<u32>(1u, 3355u, 0u)), vec2<bool>(false, true), -26822i, vec3<f32>(1724f, -926f, -354f), Struct_1(vec2<u32>(4294967295u, 68274u), vec3<u32>(19863u, 51146u, 6600u), vec4<i32>(6376i, 0i, -28446i, 12313i), vec3<u32>(37423u, 36533u, 92647u))), 4294967295u, Struct_1(vec2<u32>(89489u, 4294967295u), vec3<u32>(50166u, 20214u, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648)), vec3<u32>(0u, 0u, 0u)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 1u, 84232u), vec4<i32>(0i, -9234i, -23430i, 0i), vec3<u32>(0u, 4294967295u, 40463u)), vec2<bool>(false, false), -28836i, vec3<f32>(-2271f, -1000f, -926f), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 14488u, 93657u), vec4<i32>(-1i, i32(-2147483648), -1i, 2147483647i), vec3<u32>(4294967295u, 43021u, 20633u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<u32>(42465u, 4693u, 66779u), vec4<i32>(-27276i, 1i, -23343i, 15167i), vec3<u32>(53768u, 32315u, 1u)), vec2<bool>(false, true), 1i, vec3<f32>(-786f, -411f, 1261f), Struct_1(vec2<u32>(0u, 0u), vec3<u32>(0u, 68803u, 1u), vec4<i32>(3034i, -55247i, 6094i, 0i), vec3<u32>(51655u, 4294967295u, 4294967295u))), 53400u, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(67656u, 1u, 51424u), vec4<i32>(2147483647i, -1i, i32(-2147483648), -14834i), vec3<u32>(1u, 32913u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(69135u, 40504u), vec3<u32>(0u, 62419u, 57175u), vec4<i32>(0i, -1i, 1i, -20996i), vec3<u32>(52216u, 56904u, 55927u)), vec2<bool>(false, true), -1i, vec3<f32>(-749f, 1448f, 1142f), Struct_1(vec2<u32>(33736u, 75881u), vec3<u32>(44808u, 26646u, 68190u), vec4<i32>(12922i, -6565i, -12341i, 0i), vec3<u32>(8522u, 1u, 34021u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 18580u, 1u), vec4<i32>(-37866i, -57029i, 15663i, -1184i), vec3<u32>(0u, 4294967295u, 588u)), vec2<bool>(true, true), -1i, vec3<f32>(618f, 387f, 949f), Struct_1(vec2<u32>(14088u, 39755u), vec3<u32>(22743u, 0u, 4294967295u), vec4<i32>(20232i, 25783i, -5807i, -1i), vec3<u32>(4294967295u, 23433u, 4294967295u))), 3713u, Struct_1(vec2<u32>(4294967295u, 24843u), vec3<u32>(1u, 0u, 1u), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 18671i), vec3<u32>(56791u, 0u, 30532u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 14004u), vec3<u32>(0u, 4812u, 1u), vec4<i32>(1i, -8214i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 1u, 5816u)), vec2<bool>(false, false), i32(-2147483648), vec3<f32>(1593f, 1014f, -1000f), Struct_1(vec2<u32>(47205u, 9656u), vec3<u32>(35910u, 510u, 9078u), vec4<i32>(i32(-2147483648), -1i, -52052i, -6626i), vec3<u32>(4294967295u, 4294967295u, 8731u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(11908u, 35726u), vec3<u32>(0u, 24120u, 21512u), vec4<i32>(0i, 25996i, 2147483647i, 0i), vec3<u32>(12169u, 697u, 37776u)), vec2<bool>(false, true), 9966i, vec3<f32>(1037f, 1000f, 950f), Struct_1(vec2<u32>(1u, 39961u), vec3<u32>(1u, 4294967295u, 48539u), vec4<i32>(0i, i32(-2147483648), 1i, 0i), vec3<u32>(1u, 0u, 3911u))), 1u, Struct_1(vec2<u32>(1u, 10137u), vec3<u32>(56561u, 0u, 0u), vec4<i32>(1i, 32434i, -1i, 0i), vec3<u32>(3850u, 35837u, 33934u)), Struct_2(Struct_1(vec2<u32>(1u, 57370u), vec3<u32>(10582u, 1u, 16611u), vec4<i32>(29252i, i32(-2147483648), 0i, 2147483647i), vec3<u32>(27119u, 116855u, 4294967295u)), vec2<bool>(true, true), -1i, vec3<f32>(-575f, -476f, -841f), Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 86779u, 44067u), vec4<i32>(25825i, 1i, 51834i, -38107i), vec3<u32>(17155u, 26959u, 0u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(2378u, 61519u), vec3<u32>(38388u, 39268u, 29154u), vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648)), vec3<u32>(9107u, 67313u, 1u)), vec2<bool>(false, false), 2147483647i, vec3<f32>(-1952f, 1493f, -635f), Struct_1(vec2<u32>(2883u, 1u), vec3<u32>(5179u, 0u, 32541u), vec4<i32>(-1i, -50257i, -15864i, 0i), vec3<u32>(62327u, 1u, 0u))), 4294967295u, Struct_1(vec2<u32>(93013u, 4294967295u), vec3<u32>(33232u, 0u, 1u), vec4<i32>(i32(-2147483648), 1i, -15287i, -1i), vec3<u32>(0u, 4294967295u, 13396u)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec3<u32>(1u, 0u, 15254u), vec4<i32>(-15802i, -26932i, 2147483647i, 0i), vec3<u32>(0u, 15757u, 1u)), vec2<bool>(true, true), 17713i, vec3<f32>(-1265f, -1382f, -177f), Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(65106u, 16843u, 15785u), vec4<i32>(2147483647i, -1i, -110i, 2147483647i), vec3<u32>(96517u, 0u, 9424u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(53813u, 39861u), vec3<u32>(14300u, 90924u, 62453u), vec4<i32>(0i, 0i, 55866i, 3464i), vec3<u32>(1u, 32754u, 0u)), vec2<bool>(false, false), -1i, vec3<f32>(-590f, 185f, -410f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(8143u, 1u, 4294967295u), vec4<i32>(391i, 13543i, -44309i, 0i), vec3<u32>(48143u, 0u, 4294967295u))), 4294967295u, Struct_1(vec2<u32>(4294967295u, 3954u), vec3<u32>(4294967295u, 1u, 0u), vec4<i32>(28468i, -1i, 27811i, 29580i), vec3<u32>(4294967295u, 28381u, 57902u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(0u, 1u, 31114u), vec4<i32>(-1i, 1i, -56960i, 1i), vec3<u32>(1u, 19535u, 1u)), vec2<bool>(true, true), 9471i, vec3<f32>(1000f, -340f, 900f), Struct_1(vec2<u32>(0u, 8791u), vec3<u32>(4294967295u, 7914u, 23626u), vec4<i32>(-1590i, 19534i, 11473i, 27967i), vec3<u32>(52181u, 8458u, 85186u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(28947u, 22325u), vec3<u32>(6896u, 4294967295u, 0u), vec4<i32>(-1i, 2147483647i, 4877i, -26334i), vec3<u32>(0u, 31164u, 4294967295u)), vec2<bool>(true, false), 1i, vec3<f32>(937f, 619f, 755f), Struct_1(vec2<u32>(10639u, 41270u), vec3<u32>(59235u, 4294967295u, 4294967295u), vec4<i32>(-16245i, 0i, -1i, 2147483647i), vec3<u32>(38319u, 25624u, 0u))), 47154u, Struct_1(vec2<u32>(1u, 22772u), vec3<u32>(0u, 33101u, 1u), vec4<i32>(2994i, -11330i, 0i, 12879i), vec3<u32>(0u, 45640u, 1u)), Struct_2(Struct_1(vec2<u32>(15694u, 453u), vec3<u32>(1u, 0u, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1191i, -1i), vec3<u32>(1u, 37767u, 0u)), vec2<bool>(true, false), 4774i, vec3<f32>(-258f, -1624f, -743f), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(8034u, 1u, 16944u), vec4<i32>(-1i, 1i, -32636i, 0i), vec3<u32>(4294967295u, 44522u, 30009u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<u32>(0u, 5600u, 55939u), vec4<i32>(3125i, 1i, -25323i, 26392i), vec3<u32>(1u, 27922u, 1996u)), vec2<bool>(false, true), -25133i, vec3<f32>(1000f, 1405f, -1557f), Struct_1(vec2<u32>(22609u, 13257u), vec3<u32>(4294967295u, 16763u, 1u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -4827i), vec3<u32>(136094u, 40858u, 0u))), 14804u, Struct_1(vec2<u32>(9216u, 24157u), vec3<u32>(19202u, 4294967295u, 3063u), vec4<i32>(2147483647i, 0i, 0i, 0i), vec3<u32>(80856u, 20454u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(22575u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<i32>(1i, 2147483647i, -7991i, i32(-2147483648)), vec3<u32>(58009u, 4294967295u, 0u)), vec2<bool>(true, true), -62840i, vec3<f32>(-727f, 561f, -841f), Struct_1(vec2<u32>(55221u, 5618u), vec3<u32>(25174u, 1u, 17796u), vec4<i32>(-6949i, -18714i, -19976i, 1i), vec3<u32>(1u, 73813u, 4294967295u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 1u), vec3<u32>(12749u, 54892u, 0u), vec4<i32>(-8413i, -52016i, 0i, 33912i), vec3<u32>(4294967295u, 1u, 20024u)), vec2<bool>(false, true), 20759i, vec3<f32>(311f, -2487f, -837f), Struct_1(vec2<u32>(13126u, 63951u), vec3<u32>(4294967295u, 74041u, 20684u), vec4<i32>(1i, -1i, i32(-2147483648), -21212i), vec3<u32>(4294967295u, 32248u, 0u))), 29204u, Struct_1(vec2<u32>(1u, 0u), vec3<u32>(28704u, 59234u, 11619u), vec4<i32>(-56933i, i32(-2147483648), -8259i, -1i), vec3<u32>(4294967295u, 69586u, 18394u)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec4<i32>(2147483647i, -1i, -47870i, 36295i), vec3<u32>(0u, 2079u, 1u)), vec2<bool>(false, true), i32(-2147483648), vec3<f32>(1114f, 286f, -1004f), Struct_1(vec2<u32>(85224u, 1u), vec3<u32>(23976u, 44081u, 16247u), vec4<i32>(3902i, -69426i, 0i, -4478i), vec3<u32>(1u, 23300u, 51190u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 32374u), vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(-1i, 2147483647i, 14875i, 0i), vec3<u32>(16187u, 0u, 608u)), vec2<bool>(false, false), -18108i, vec3<f32>(-679f, -142f, 406f), Struct_1(vec2<u32>(58493u, 54891u), vec3<u32>(4294967295u, 8225u, 4294967295u), vec4<i32>(i32(-2147483648), -30390i, 1i, 18310i), vec3<u32>(11943u, 0u, 4294967295u))), 56446u, Struct_1(vec2<u32>(13933u, 0u), vec3<u32>(87013u, 16133u, 40113u), vec4<i32>(-42895i, 27853i, -42938i, 1i), vec3<u32>(4294967295u, 1u, 1u)), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<u32>(88067u, 8548u, 26264u), vec4<i32>(-1i, 3315i, -24467i, 0i), vec3<u32>(49554u, 4294967295u, 0u)), vec2<bool>(true, true), -18446i, vec3<f32>(-1284f, -2024f, 219f), Struct_1(vec2<u32>(0u, 12499u), vec3<u32>(1u, 0u, 81728u), vec4<i32>(-28363i, -1i, i32(-2147483648), 26082i), vec3<u32>(1u, 55571u, 10027u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(22092u, 4294967295u), vec3<u32>(1u, 100791u, 60438u), vec4<i32>(19951i, -1i, i32(-2147483648), -25081i), vec3<u32>(73625u, 104339u, 17588u)), vec2<bool>(true, true), i32(-2147483648), vec3<f32>(-1071f, -178f, 2166f), Struct_1(vec2<u32>(0u, 0u), vec3<u32>(4294967295u, 1600u, 0u), vec4<i32>(1i, 0i, 30212i, 1i), vec3<u32>(58332u, 4294967295u, 0u))), 1u, Struct_1(vec2<u32>(68585u, 35948u), vec3<u32>(4345u, 30398u, 1u), vec4<i32>(0i, -61653i, 11295i, 0i), vec3<u32>(55148u, 91167u, 0u)), Struct_2(Struct_1(vec2<u32>(20939u, 27412u), vec3<u32>(0u, 4843u, 52844u), vec4<i32>(26611i, 1i, 1i, 1i), vec3<u32>(1u, 1u, 1u)), vec2<bool>(true, true), 2147483647i, vec3<f32>(509f, 301f, 138f), Struct_1(vec2<u32>(28677u, 46480u), vec3<u32>(0u, 7975u, 21136u), vec4<i32>(-8808i, -32937i, -68755i, 13105i), vec3<u32>(53610u, 1u, 7567u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(33105u, 0u), vec3<u32>(58976u, 0u, 1u), vec4<i32>(1i, 0i, 19504i, 34113i), vec3<u32>(4294967295u, 4294967295u, 15792u)), vec2<bool>(true, false), 2147483647i, vec3<f32>(1036f, 1082f, 274f), Struct_1(vec2<u32>(6532u, 1u), vec3<u32>(0u, 0u, 51524u), vec4<i32>(0i, -1i, -28727i, -4624i), vec3<u32>(4294967295u, 0u, 1u))), 39759u, Struct_1(vec2<u32>(6353u, 4294967295u), vec3<u32>(59947u, 8028u, 4294967295u), vec4<i32>(2147483647i, 43534i, 2147483647i, -3663i), vec3<u32>(8543u, 105582u, 13542u)), Struct_2(Struct_1(vec2<u32>(11648u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec4<i32>(2147483647i, 0i, 3921i, 1i), vec3<u32>(71199u, 11677u, 71434u)), vec2<bool>(false, false), -23760i, vec3<f32>(-830f, 1000f, 847f), Struct_1(vec2<u32>(4294967295u, 43153u), vec3<u32>(1u, 0u, 1344u), vec4<i32>(-62220i, -7594i, 1i, 4550i), vec3<u32>(0u, 4294967295u, 87186u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(24859u, 3080u), vec3<u32>(18291u, 91261u, 25849u), vec4<i32>(2147483647i, 1i, 0i, -36041i), vec3<u32>(50198u, 1u, 55366u)), vec2<bool>(false, true), 2147483647i, vec3<f32>(-223f, 737f, 676f), Struct_1(vec2<u32>(37154u, 1u), vec3<u32>(0u, 30880u, 1u), vec4<i32>(-1i, -18210i, 2559i, i32(-2147483648)), vec3<u32>(1u, 8783u, 1u))), 4294967295u, Struct_1(vec2<u32>(48296u, 0u), vec3<u32>(50731u, 0u, 124913u), vec4<i32>(15237i, 25576i, -20383i, 2147483647i), vec3<u32>(20825u, 4760u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(46736u, 0u), vec3<u32>(0u, 20014u, 17194u), vec4<i32>(10053i, 11244i, 0i, 0i), vec3<u32>(0u, 10261u, 23268u)), vec2<bool>(true, true), -16064i, vec3<f32>(-1000f, -1000f, -1000f), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 56670u, 1u), vec4<i32>(64519i, -14783i, 0i, -20543i), vec3<u32>(14943u, 4294967295u, 4294967295u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(30936u, 18649u), vec3<u32>(49756u, 33630u, 1u), vec4<i32>(i32(-2147483648), 119i, 0i, 0i), vec3<u32>(4294967295u, 4294967295u, 128389u)), vec2<bool>(false, true), 2147483647i, vec3<f32>(-1094f, -715f, 1576f), Struct_1(vec2<u32>(40965u, 0u), vec3<u32>(1u, 1u, 104050u), vec4<i32>(0i, -36573i, -1i, 10473i), vec3<u32>(4294967295u, 0u, 63799u))), 1360u, Struct_1(vec2<u32>(25559u, 4294967295u), vec3<u32>(44820u, 1u, 42951u), vec4<i32>(3637i, 0i, 0i, -16422i), vec3<u32>(55639u, 38453u, 4294967295u)), Struct_2(Struct_1(vec2<u32>(16867u, 97128u), vec3<u32>(6031u, 3280u, 4294967295u), vec4<i32>(-1i, -1i, -8628i, 10909i), vec3<u32>(1u, 4294967295u, 4294967295u)), vec2<bool>(true, true), -1i, vec3<f32>(-1000f, -1000f, -1503f), Struct_1(vec2<u32>(105207u, 44938u), vec3<u32>(4294967295u, 1u, 17030u), vec4<i32>(55121i, 52721i, 2147483647i, 0i), vec3<u32>(2816u, 30097u, 18385u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(34909u, 1u), vec3<u32>(58296u, 0u, 1u), vec4<i32>(i32(-2147483648), -1i, 92155i, -1i), vec3<u32>(0u, 1u, 26993u)), vec2<bool>(false, false), i32(-2147483648), vec3<f32>(-154f, 805f, 489f), Struct_1(vec2<u32>(31223u, 34191u), vec3<u32>(4294967295u, 4294967295u, 0u), vec4<i32>(-1i, i32(-2147483648), 11720i, 2147483647i), vec3<u32>(0u, 25920u, 67766u))), 45703u, Struct_1(vec2<u32>(1u, 62818u), vec3<u32>(0u, 1u, 4294967295u), vec4<i32>(-7249i, 41472i, -1i, i32(-2147483648)), vec3<u32>(27112u, 4826u, 28477u)), Struct_2(Struct_1(vec2<u32>(42058u, 4294967295u), vec3<u32>(32685u, 64767u, 7312u), vec4<i32>(35439i, 2147483647i, -23792i, -1i), vec3<u32>(0u, 2212u, 0u)), vec2<bool>(true, false), 1i, vec3<f32>(-263f, -1000f, 348f), Struct_1(vec2<u32>(4012u, 0u), vec3<u32>(0u, 29440u, 0u), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i), vec3<u32>(4294967295u, 1u, 95238u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(12374u, 16960u), vec3<u32>(48499u, 9367u, 1u), vec4<i32>(1i, -1i, 25233i, -19598i), vec3<u32>(1u, 4294967295u, 50014u)), vec2<bool>(true, false), i32(-2147483648), vec3<f32>(-202f, -1474f, -2599f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(1u, 4369u, 28955u), vec4<i32>(2147483647i, -10251i, 1i, -1i), vec3<u32>(54723u, 1u, 0u))), 47356u, Struct_1(vec2<u32>(1u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<i32>(-1i, -46354i, i32(-2147483648), -8250i), vec3<u32>(71250u, 1u, 1089u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 36375u), vec3<u32>(4294967295u, 45495u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, -14753i, 46975i), vec3<u32>(0u, 1u, 4294967295u)), vec2<bool>(false, false), -16972i, vec3<f32>(-844f, 526f, -235f), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(23621u, 1u, 0u), vec4<i32>(32235i, -198i, -8351i, -3112i), vec3<u32>(26683u, 8856u, 30698u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(11946u, 58599u, 0u), vec4<i32>(i32(-2147483648), 16327i, -3123i, 28092i), vec3<u32>(22671u, 0u, 1u)), vec2<bool>(false, true), -49404i, vec3<f32>(-176f, 1000f, 1442f), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(82i, -57225i, -1i, 0i), vec3<u32>(9517u, 7678u, 4294967295u))), 4294967295u, Struct_1(vec2<u32>(4294967295u, 11349u), vec3<u32>(1u, 1u, 53117u), vec4<i32>(-1i, -28329i, 42070i, -1i), vec3<u32>(8967u, 22198u, 12889u)), Struct_2(Struct_1(vec2<u32>(1u, 72538u), vec3<u32>(3639u, 4609u, 4294967295u), vec4<i32>(-526i, 36101i, -27582i, 0i), vec3<u32>(29997u, 1u, 4294967295u)), vec2<bool>(true, true), -1i, vec3<f32>(-773f, -1000f, 1852f), Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(23141u, 1u, 0u), vec4<i32>(2147483647i, 0i, 58916i, 43574i), vec3<u32>(60577u, 4294967295u, 0u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(22481u, 54706u, 35508u), vec4<i32>(0i, -1i, 38766i, 17068i), vec3<u32>(4294967295u, 0u, 7716u)), vec2<bool>(true, true), -32876i, vec3<f32>(1372f, -1810f, 2019f), Struct_1(vec2<u32>(13893u, 1u), vec3<u32>(4294967295u, 16489u, 1u), vec4<i32>(19879i, -9928i, i32(-2147483648), -37779i), vec3<u32>(0u, 11158u, 4617u))), 62960u, Struct_1(vec2<u32>(103477u, 20336u), vec3<u32>(739u, 66796u, 34367u), vec4<i32>(-1i, i32(-2147483648), -11590i, -23326i), vec3<u32>(0u, 28884u, 14212u)), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec3<u32>(4294967295u, 22991u, 4294967295u), vec4<i32>(1i, i32(-2147483648), 2147483647i, -1i), vec3<u32>(61237u, 4294967295u, 1u)), vec2<bool>(true, false), -59895i, vec3<f32>(-402f, -993f, 946f), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(0u, 1u, 79628u), vec4<i32>(1i, -21315i, 2147483647i, 73425i), vec3<u32>(4294967295u, 37349u, 14939u)))), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<u32>(116250u, 0u, 4294967295u), vec4<i32>(2147483647i, 1i, 25063i, 24086i), vec3<u32>(1u, 0u, 91960u)), vec2<bool>(true, false), -1i, vec3<f32>(-128f, -483f, -116f), Struct_1(vec2<u32>(1u, 20107u), vec3<u32>(1u, 59264u, 40452u), vec4<i32>(-13562i, i32(-2147483648), 0i, 28326i), vec3<u32>(17024u, 1u, 20012u))), 0u, Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(4294967295u, 0u, 19002u), vec4<i32>(36937i, i32(-2147483648), i32(-2147483648), 1i), vec3<u32>(50527u, 13600u, 27943u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(33813u, 15866u, 13366u), vec4<i32>(6179i, i32(-2147483648), -1i, -39284i), vec3<u32>(44077u, 0u, 2177u)), vec2<bool>(true, true), 1i, vec3<f32>(1538f, 1000f, -197f), Struct_1(vec2<u32>(110409u, 0u), vec3<u32>(14478u, 0u, 1u), vec4<i32>(0i, 2147483647i, -41631i, 30315i), vec3<u32>(54337u, 50780u, 47787u)))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    global4 = array<Struct_3, 32>();
    var var_0 = global1.e;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f - 565f)), _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-global1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1080f)), _wgslsmith_f_op_f32(global1.d.x + global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-335f * global1.d.x))))), vec3<f32>(-474f, global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d.x))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1696f, var_1.x, any(vec4<bool>(true, false, global1.b.x, arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-828f - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_1.x + -1000f)))) + -443f));
    global4 = array<Struct_3, 32>();
    return global1.a.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    global2 = !select(select(!vec3<bool>(global2.x, arg_1.b.x, false), vec3<bool>(global0.a.c.x > global3.x, arg_1.e.b.x != arg_0, select(arg_1.b.x, global2.x, arg_1.b.x)), any(vec2<bool>(true, global1.b.x)) & true), vec3<bool>(~global0.a.a.x <= 76619u, all(!vec3<bool>(false, true, arg_1.b.x)), false), !select(!vec3<bool>(global2.x, true, arg_1.b.x), select(vec3<bool>(global1.b.x, global2.x, true), vec3<bool>(arg_1.b.x, global1.b.x, global2.x), vec3<bool>(false, arg_1.b.x, global1.b.x)), true));
    global0 = Struct_5(global0.a);
    global3 = -_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global1.a.c.yy, vec2<i32>(firstLeadingBit(25772i), 0i)), arg_1.a.c.yy);
    global4 = array<Struct_3, 32>();
    global0 = Struct_5(Struct_1(_wgslsmith_div_vec2_u32(global0.a.b.yy, abs(vec2<u32>(arg_1.e.b.x, 1u)) | ~vec2<u32>(u_input.a.x, 4294967295u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.e.a.x, arg_1.e.b.x, 0u), u_input.a), -vec4<i32>(min(global1.e.c.x, 26416i), 1i, -2147483647i, i32(-1i) * -19209i), ~vec3<u32>(_wgslsmith_div_u32(global1.e.d.x, u_input.a.x), _wgslsmith_div_u32(41702u, global0.a.d.x), u_input.a.x)));
    return vec3<u32>(arg_0, global1.a.b.x, 0u) & _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(41263u, arg_1.a.a.x), u_input.a.x, _wgslsmith_clamp_u32(61304u, arg_0, global1.a.d.x)), global1.a.b);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(Struct_1(~(~global0.a.d.zz & (global1.e.d.zy & vec2<u32>(4294967295u, 43989u))), func_4(_wgslsmith_mult_u32(min(u_input.a.x, u_input.a.x), func_3(Struct_1(vec2<u32>(4294967295u, u_input.a.x), global1.a.d, global1.e.c, vec3<u32>(9490u, 1u, 1u)), global1.b.x, vec2<u32>(1u, 0u))), Struct_2(Struct_1(u_input.a.zx, global1.a.d, global1.e.c, vec3<u32>(0u, 0u, global1.e.b.x)), select(global1.b, vec2<bool>(global1.b.x, false), global1.b.x), _wgslsmith_sub_i32(global0.a.c.x, global0.a.c.x), global1.d, global0.a)), global1.e.c, u_input.a));
    var var_1 = !vec4<bool>(true, global2.x, false, any(global2.zy));
    let var_2 = Struct_5(global0.a);
    var_1 = !(!vec4<bool>(global2.x, !(false | var_1.x), any(var_1.xxx), all(vec4<bool>(var_1.x, global1.b.x, true, var_1.x))));
    let var_3 = vec2<i32>((_wgslsmith_sub_i32(1i, global0.a.c.x >> (global0.a.b.x % 32u)) >> (0u % 32u)) >> (func_3(var_0.a, true, _wgslsmith_sub_vec2_u32(var_0.a.d.yy | vec2<u32>(0u, 12972u), firstLeadingBit(vec2<u32>(9788u, global1.e.b.x)))) % 32u), ~global1.a.c.x);
    return var_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = func_2();
    let var_0 = arg_1;
    var var_1 = arg_2.b.x;
    let var_2 = arg_2.e.c.x;
    var var_3 = Struct_3(Struct_2(func_2().a, global1.b, _wgslsmith_add_i32(i32(-1i) * -var_2, var_2), arg_0, global0.a), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mult_u32(arg_2.e.a.x, global1.e.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, arg_2.e.d.x, global0.a.d.x, 4294967295u), vec4<u32>(23455u, 39627u, 1u, u_input.a.x) << (vec4<u32>(arg_2.e.b.x, arg_2.e.d.x, global0.a.b.x, 2343u) % vec4<u32>(32u))), firstTrailingBit(min(vec4<u32>(global0.a.d.x, arg_2.e.b.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u))))), Struct_1(vec2<u32>(_wgslsmith_add_u32(31595u, 37939u | u_input.a.x), global1.a.d.x), vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(86940u, 47752u)), abs(~5704u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global1.e.b.x, 0u), vec4<u32>(u_input.a.x, arg_2.a.b.x, 23151u, global1.a.a.x)), func_4(1u, Struct_2(Struct_1(u_input.a.yy, vec3<u32>(global1.e.b.x, arg_2.e.a.x, 73194u), vec4<i32>(0i, global1.c, -2147483647i, global0.a.c.x), vec3<u32>(14217u, u_input.a.x, global1.e.d.x)), arg_2.b, 27222i, vec3<f32>(-816f, arg_1, 1442f), global0.a)).x)), min(arg_2.e.c, vec4<i32>(i32(-1i) * -12751i, _wgslsmith_mult_i32(arg_2.a.c.x, global0.a.c.x), -82324i << (0u % 32u), ~68921i)), global1.a.b), arg_2);
    return all(select(vec2<bool>(false, _wgslsmith_div_f32(613f, arg_0.x) > _wgslsmith_f_op_f32(trunc(192f))), vec2<bool>(var_3.a.b.x, true), vec2<bool>((global1.b.x && false) && arg_2.b.x, false)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_3 {
    var var_0 = true;
    var var_1 = global0.a;
    global2 = !arg_3.d.wxx;
    let var_2 = Struct_2(func_2().a, select(!(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2.d.x), false)), select(vec2<bool>(true, true), global2.zx, true), !arg_2.d.x), arg_0.e | arg_0.e, _wgslsmith_f_op_vec3_f32(global1.d + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -310f, _wgslsmith_f_op_f32(452f - -1086f)) * global1.d)), Struct_1(vec2<u32>(reverseBits(38973u), countOneBits(_wgslsmith_mod_u32(82286u, 9099u))), vec3<u32>(~(~global0.a.a.x), arg_2.a.a.x, global0.a.b.x), _wgslsmith_mod_vec4_i32(countOneBits(arg_0.a.c), arg_2.a.c), u_input.a ^ ~(~arg_3.a.d)));
    let var_3 = arg_0.b;
    return global4[_wgslsmith_index_u32(global0.a.a.x, 32u)];
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = -17592i;
    var var_1 = arg_1.d.e;
    var var_2 = vec3<u32>(~_wgslsmith_add_u32(global0.a.b.x, 1u), global0.a.a.x, ~(~countOneBits(34339u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-399f, _wgslsmith_f_op_f32(min(-1173f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - 159f), 802f)))));
    var var_4 = Struct_3(func_5(Struct_4(arg_1.d.e, 12348i >> ((arg_2.x >> (0u % 32u)) % 32u), any(arg_1.a.b), vec4<bool>(-2147483647i >= var_1.c.x, true, false, select(arg_1.a.b.x, global1.b.x, false)), 39696i), arg_1.a.b, Struct_4(Struct_1(~vec2<u32>(4294967295u, 21614u), abs(vec3<u32>(global0.a.a.x, arg_1.d.e.a.x, 9375u)), select(vec4<i32>(var_0, -13724i, global1.a.c.x, var_0), vec4<i32>(global1.a.c.x, global0.a.c.x, global3.x, -5478i), vec4<bool>(arg_1.d.b.x, true, global1.b.x, global2.x)), ~var_1.d), reverseBits(-global0.a.c.x), all(select(vec3<bool>(true, true, arg_1.a.b.x), vec3<bool>(arg_1.a.b.x, global2.x, true), vec3<bool>(true, global1.b.x, true))), vec4<bool>(global2.x, global2.x, !global2.x, select(false, false, global2.x)), max(firstLeadingBit(var_0), global1.a.c.x)), Struct_4(Struct_1(vec2<u32>(arg_1.b, 34371u), abs(arg_1.c.b), func_5(Struct_4(arg_1.d.e, global0.a.c.x, global2.x, vec4<bool>(true, false, false, global1.b.x), global1.c), global2.xz, Struct_4(arg_1.a.e, var_1.c.x, global1.b.x, vec4<bool>(false, true, global1.b.x, true), var_0), Struct_4(Struct_1(vec2<u32>(59931u, u_input.a.x), vec3<u32>(4294967295u, 82204u, arg_2.x), vec4<i32>(var_0, global1.c, global3.x, -1i), vec3<u32>(4294967295u, arg_1.c.d.x, 4294967295u)), var_0, false, vec4<bool>(true, false, global1.b.x, true), 1i)).d.a.c, vec3<u32>(global1.a.d.x, arg_1.d.e.a.x, var_1.d.x)), arg_1.c.c.x, true, vec4<bool>(!arg_1.a.b.x, global1.b.x, true, false), 19363i | _wgslsmith_dot_vec3_i32(var_1.c.xyx, vec3<i32>(var_0, 0i, global0.a.c.x)))).a, 0u, Struct_1(u_input.a.xx, vec3<u32>(38060u, 29460u, ~var_2.x) | countOneBits(global0.a.d), -global1.a.c, ~var_1.b), arg_1.d);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(false | global2.x), abs(global0.a.a.x >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)) == 1u);
    let var_1 = func_6(global1.d, func_5(Struct_4(Struct_1(vec2<u32>(global0.a.d.x, u_input.a.x), vec3<u32>(28227u, u_input.a.x, 19956u), abs(global1.e.c), global0.a.d), 0i, _wgslsmith_add_i32(global0.a.c.x, global1.a.c.x) < -global1.a.c.x, !vec4<bool>(true, true, false, global1.b.x), -2147483647i), global1.b, Struct_4(global0.a, _wgslsmith_mult_i32(global0.a.c.x, global1.e.c.x), true, !select(vec4<bool>(global2.x, false, false, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, global2.x, false, false)), global3.x ^ -2147483647i), Struct_4(global0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.e.c.yy, global1.a.c.wz, global0.a.c.xw), -global1.a.c.xz), _wgslsmith_f_op_f32(ceil(global1.d.x)) <= global1.d.x, vec4<bool>(true, false & global1.b.x, true, func_1(global1.d, global1.d.x, Struct_2(Struct_1(global1.e.d.yx, global1.e.b, vec4<i32>(-2147483647i, global0.a.c.x, global3.x, -29440i), vec3<u32>(global0.a.a.x, global0.a.b.x, global1.e.b.x)), vec2<bool>(var_0.x, true), 2147483647i, vec3<f32>(672f, 1000f, global1.d.x), global0.a))), 34516i)), reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.a.b.x), u_input.a.xz)));
    let var_2 = vec3<i32>(2147483647i, 43421i, global3.x);
    global1 = Struct_2(global0.a, global1.b, global3.x, global1.d, global1.e);
    var var_3 = global4[_wgslsmith_index_u32(12801u, 32u)];
    let var_4 = global1.d.zy;
    let var_5 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a.c.yw, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(38368u, 36035u, 40867u), ~vec3<u32>(44780u, 4294967295u, global0.a.a.x), vec3<u32>(global1.e.b.x, 28013u, 15150u)) & global0.a.d, vec3<u32>(min(0u, ~var_1.d.x), ~var_3.c.a.x, var_3.d.a.b.x)), _wgslsmith_f_op_f32(abs(var_4.x)), _wgslsmith_f_op_f32(abs(-488f)));
}

