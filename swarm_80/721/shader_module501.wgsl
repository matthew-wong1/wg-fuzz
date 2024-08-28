struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(true, vec4<u32>(28396u, 63550u, 0u, 2868u), Struct_2(vec2<bool>(false, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), 576f, Struct_1(vec4<u32>(45138u, 0u, 1u, 4294967295u)), vec4<f32>(-630f, -341f, -1291f, 1000f)), Struct_3(vec2<f32>(621f, -516f), vec3<u32>(61165u, 36311u, 56708u), Struct_2(vec2<bool>(false, false), vec4<u32>(0u, 10853u, 18713u, 54644u), -1000f, Struct_1(vec4<u32>(1u, 1u, 110069u, 10912u)), vec4<f32>(143f, 372f, -1668f, 1792f)), vec4<i32>(-38974i, 44747i, 7019i, i32(-2147483648)))), Struct_5(false, vec4<u32>(0u, 107124u, 50621u, 1u), Struct_2(vec2<bool>(true, false), vec4<u32>(37207u, 4294967295u, 4294967295u, 4294967295u), 818f, Struct_1(vec4<u32>(40806u, 0u, 55959u, 48699u)), vec4<f32>(-534f, 1564f, 855f, 1054f)), Struct_3(vec2<f32>(-406f, 135f), vec3<u32>(29761u, 18608u, 13104u), Struct_2(vec2<bool>(false, true), vec4<u32>(0u, 26608u, 78091u, 0u), 398f, Struct_1(vec4<u32>(89163u, 1u, 1u, 84425u)), vec4<f32>(966f, 885f, 243f, 606f)), vec4<i32>(-21150i, 13469i, 1i, -20608i))), Struct_5(true, vec4<u32>(70750u, 1u, 32884u, 18004u), Struct_2(vec2<bool>(true, true), vec4<u32>(3392u, 13064u, 2063u, 2858u), -1356f, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 0u)), vec4<f32>(823f, 822f, -260f, -1891f)), Struct_3(vec2<f32>(396f, -871f), vec3<u32>(37657u, 58740u, 77738u), Struct_2(vec2<bool>(false, false), vec4<u32>(0u, 24821u, 6509u, 2109u), -914f, Struct_1(vec4<u32>(1u, 39398u, 97782u, 3587u)), vec4<f32>(1000f, 1093f, -540f, -193f)), vec4<i32>(-18564i, -1i, 2947i, 45293i))), Struct_5(true, vec4<u32>(0u, 1039u, 1u, 43587u), Struct_2(vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 4294967295u, 25163u), -1626f, Struct_1(vec4<u32>(18191u, 4294967295u, 0u, 0u)), vec4<f32>(581f, -373f, -1565f, 1439f)), Struct_3(vec2<f32>(-642f, 231f), vec3<u32>(126630u, 4294967295u, 1u), Struct_2(vec2<bool>(false, true), vec4<u32>(1u, 1u, 37400u, 44661u), -1000f, Struct_1(vec4<u32>(4294967295u, 58772u, 4294967295u, 0u)), vec4<f32>(-616f, 221f, 940f, 429f)), vec4<i32>(i32(-2147483648), -1i, 89284i, 1169i))), Struct_5(true, vec4<u32>(102750u, 0u, 4294967295u, 18680u), Struct_2(vec2<bool>(false, true), vec4<u32>(19111u, 7334u, 11128u, 63876u), -1605f, Struct_1(vec4<u32>(4294967295u, 35527u, 0u, 141641u)), vec4<f32>(162f, 1221f, -860f, 186f)), Struct_3(vec2<f32>(-1301f, 926f), vec3<u32>(57823u, 4863u, 58438u), Struct_2(vec2<bool>(false, false), vec4<u32>(12037u, 5699u, 1u, 72014u), 1496f, Struct_1(vec4<u32>(80828u, 55829u, 28648u, 31790u)), vec4<f32>(-523f, -210f, 249f, 900f)), vec4<i32>(-27887i, -7292i, 4134i, 0i))), Struct_5(false, vec4<u32>(4294967295u, 0u, 7274u, 10701u), Struct_2(vec2<bool>(false, false), vec4<u32>(70614u, 1u, 4294967295u, 65655u), 651f, Struct_1(vec4<u32>(32674u, 0u, 26526u, 1u)), vec4<f32>(453f, -694f, 1217f, -480f)), Struct_3(vec2<f32>(799f, -423f), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_2(vec2<bool>(true, true), vec4<u32>(4294967295u, 18790u, 18818u, 1u), 1405f, Struct_1(vec4<u32>(67881u, 45750u, 43654u, 35673u)), vec4<f32>(1457f, 2054f, -924f, -745f)), vec4<i32>(14455i, 29262i, 49050i, 1i))), Struct_5(false, vec4<u32>(0u, 20622u, 33759u, 10203u), Struct_2(vec2<bool>(true, true), vec4<u32>(4435u, 10878u, 44718u, 0u), 598f, Struct_1(vec4<u32>(4294967295u, 4294967295u, 13236u, 4294967295u)), vec4<f32>(750f, 1670f, -515f, 639f)), Struct_3(vec2<f32>(-918f, 674f), vec3<u32>(128878u, 2901u, 4294967295u), Struct_2(vec2<bool>(true, true), vec4<u32>(25698u, 3834u, 53059u, 42925u), 110f, Struct_1(vec4<u32>(0u, 73632u, 0u, 15619u)), vec4<f32>(-993f, -1157f, 393f, 993f)), vec4<i32>(28810i, 0i, i32(-2147483648), -12441i))), Struct_5(false, vec4<u32>(31918u, 1u, 1u, 5419u), Struct_2(vec2<bool>(false, false), vec4<u32>(42785u, 6711u, 4294967295u, 0u), -1061f, Struct_1(vec4<u32>(0u, 66229u, 0u, 113530u)), vec4<f32>(1000f, 536f, 1008f, -177f)), Struct_3(vec2<f32>(1215f, 453f), vec3<u32>(1u, 32046u, 4294967295u), Struct_2(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 40146u, 2313u), -1000f, Struct_1(vec4<u32>(26771u, 21704u, 4993u, 64614u)), vec4<f32>(1000f, 807f, 1000f, 755f)), vec4<i32>(46945i, -87451i, 17578i, 1i))), Struct_5(true, vec4<u32>(4294967295u, 0u, 0u, 64697u), Struct_2(vec2<bool>(false, true), vec4<u32>(88176u, 116065u, 4294967295u, 17578u), 2335f, Struct_1(vec4<u32>(0u, 42076u, 0u, 1u)), vec4<f32>(2583f, -783f, 2249f, 446f)), Struct_3(vec2<f32>(-991f, 1154f), vec3<u32>(10986u, 4294967295u, 2123u), Struct_2(vec2<bool>(true, true), vec4<u32>(43660u, 18186u, 1u, 117695u), -854f, Struct_1(vec4<u32>(4294967295u, 28785u, 75885u, 0u)), vec4<f32>(571f, -817f, 120f, -2201f)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 6312i))), Struct_5(true, vec4<u32>(47997u, 0u, 49637u, 24216u), Struct_2(vec2<bool>(false, true), vec4<u32>(4294967295u, 94625u, 24611u, 4600u), -1002f, Struct_1(vec4<u32>(27655u, 1u, 4294967295u, 22557u)), vec4<f32>(-871f, 1000f, 155f, -1252f)), Struct_3(vec2<f32>(1000f, 734f), vec3<u32>(126076u, 33528u, 60038u), Struct_2(vec2<bool>(false, true), vec4<u32>(76297u, 86088u, 41239u, 12603u), 254f, Struct_1(vec4<u32>(20519u, 4294967295u, 2064u, 0u)), vec4<f32>(1482f, -1483f, -1000f, 141f)), vec4<i32>(-1i, i32(-2147483648), 2147483647i, -1i))), Struct_5(false, vec4<u32>(10443u, 34947u, 9110u, 4294967295u), Struct_2(vec2<bool>(false, true), vec4<u32>(4294967295u, 15066u, 53658u, 9076u), 731f, Struct_1(vec4<u32>(1019u, 0u, 41870u, 1u)), vec4<f32>(3784f, 998f, -1557f, -1054f)), Struct_3(vec2<f32>(-2361f, -1213f), vec3<u32>(4294967295u, 4294967295u, 51382u), Struct_2(vec2<bool>(true, false), vec4<u32>(1u, 1u, 65944u, 40357u), 1000f, Struct_1(vec4<u32>(49888u, 6366u, 0u, 4294967295u)), vec4<f32>(935f, -2640f, 931f, 1008f)), vec4<i32>(2147483647i, -27946i, -24271i, i32(-2147483648)))), Struct_5(false, vec4<u32>(0u, 47514u, 7709u, 1u), Struct_2(vec2<bool>(true, true), vec4<u32>(23182u, 1u, 0u, 96407u), -1000f, Struct_1(vec4<u32>(1u, 4294967295u, 7129u, 42072u)), vec4<f32>(427f, 669f, 1886f, 1171f)), Struct_3(vec2<f32>(-1000f, 332f), vec3<u32>(22865u, 64115u, 0u), Struct_2(vec2<bool>(true, false), vec4<u32>(4294967295u, 3787u, 0u, 0u), 212f, Struct_1(vec4<u32>(4294967295u, 102546u, 4294967295u, 1u)), vec4<f32>(805f, -198f, 401f, -145f)), vec4<i32>(72865i, 1i, -1i, 22681i))), Struct_5(true, vec4<u32>(0u, 34265u, 4294967295u, 74968u), Struct_2(vec2<bool>(true, false), vec4<u32>(1u, 1u, 0u, 0u), -882f, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), vec4<f32>(281f, -230f, 1162f, 486f)), Struct_3(vec2<f32>(374f, -1234f), vec3<u32>(1u, 63596u, 0u), Struct_2(vec2<bool>(false, true), vec4<u32>(46068u, 51345u, 1428u, 1u), 1110f, Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), vec4<f32>(755f, 513f, 947f, -2564f)), vec4<i32>(-13822i, -19322i, -35124i, 12254i))), Struct_5(true, vec4<u32>(47424u, 0u, 1u, 14006u), Struct_2(vec2<bool>(true, true), vec4<u32>(59268u, 1u, 66604u, 4294967295u), 714f, Struct_1(vec4<u32>(4294967295u, 25070u, 21555u, 48691u)), vec4<f32>(-1466f, -251f, 975f, 127f)), Struct_3(vec2<f32>(1224f, 2899f), vec3<u32>(48045u, 78505u, 15203u), Struct_2(vec2<bool>(true, false), vec4<u32>(0u, 8872u, 0u, 1892u), 303f, Struct_1(vec4<u32>(89031u, 4294967295u, 0u, 35868u)), vec4<f32>(1572f, -2596f, 746f, -987f)), vec4<i32>(-16357i, 11546i, 14833i, -47324i))), Struct_5(false, vec4<u32>(1u, 4294967295u, 4294967295u, 20583u), Struct_2(vec2<bool>(false, true), vec4<u32>(0u, 1u, 1u, 0u), -1874f, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u)), vec4<f32>(1127f, -750f, 1940f, 211f)), Struct_3(vec2<f32>(141f, -711f), vec3<u32>(26975u, 14438u, 4234u), Struct_2(vec2<bool>(true, false), vec4<u32>(1u, 119157u, 14260u, 4294967295u), 134f, Struct_1(vec4<u32>(7391u, 1u, 0u, 4294967295u)), vec4<f32>(667f, -756f, -118f, 1000f)), vec4<i32>(0i, 0i, -60489i, -36595i))), Struct_5(false, vec4<u32>(43553u, 4294967295u, 4294967295u, 1u), Struct_2(vec2<bool>(false, false), vec4<u32>(33043u, 0u, 1u, 25042u), -394f, Struct_1(vec4<u32>(1u, 27029u, 44307u, 75050u)), vec4<f32>(-115f, -107f, 620f, 370f)), Struct_3(vec2<f32>(-152f, 390f), vec3<u32>(1u, 38270u, 1u), Struct_2(vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 0u, 39925u), -285f, Struct_1(vec4<u32>(1u, 60538u, 1u, 41359u)), vec4<f32>(632f, -394f, 851f, -989f)), vec4<i32>(-1i, 58731i, -1i, -11391i))), Struct_5(false, vec4<u32>(100866u, 4294967295u, 1u, 0u), Struct_2(vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 0u, 1u), -501f, Struct_1(vec4<u32>(52741u, 0u, 1u, 85633u)), vec4<f32>(591f, 707f, 195f, -675f)), Struct_3(vec2<f32>(753f, 455f), vec3<u32>(0u, 4294967295u, 29592u), Struct_2(vec2<bool>(false, false), vec4<u32>(1u, 55933u, 1u, 65357u), -351f, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 90991u)), vec4<f32>(729f, 111f, 1290f, 528f)), vec4<i32>(-1i, 1i, i32(-2147483648), 290i))), Struct_5(true, vec4<u32>(1u, 1u, 0u, 4294967295u), Struct_2(vec2<bool>(false, true), vec4<u32>(4294967295u, 4294967295u, 67533u, 0u), -465f, Struct_1(vec4<u32>(3128u, 26565u, 78067u, 0u)), vec4<f32>(503f, -533f, -885f, 1238f)), Struct_3(vec2<f32>(499f, -1081f), vec3<u32>(36330u, 29281u, 5870u), Struct_2(vec2<bool>(true, false), vec4<u32>(0u, 0u, 4294967295u, 62068u), 1702f, Struct_1(vec4<u32>(2216u, 1u, 20910u, 5485u)), vec4<f32>(731f, 633f, -356f, 1000f)), vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i))), Struct_5(true, vec4<u32>(0u, 51138u, 77444u, 15739u), Struct_2(vec2<bool>(false, true), vec4<u32>(85266u, 1u, 16830u, 1u), 360f, Struct_1(vec4<u32>(56006u, 0u, 1u, 0u)), vec4<f32>(440f, 617f, -1265f, -638f)), Struct_3(vec2<f32>(-243f, -1034f), vec3<u32>(26353u, 8024u, 1u), Struct_2(vec2<bool>(true, true), vec4<u32>(0u, 20660u, 0u, 4294967295u), 1000f, Struct_1(vec4<u32>(53927u, 1u, 0u, 4294967295u)), vec4<f32>(122f, 1476f, -2827f, -1252f)), vec4<i32>(0i, 2147483647i, -1i, -68904i))), Struct_5(false, vec4<u32>(1u, 0u, 0u, 1u), Struct_2(vec2<bool>(false, false), vec4<u32>(20320u, 4294967295u, 0u, 87894u), -581f, Struct_1(vec4<u32>(1u, 0u, 1u, 39652u)), vec4<f32>(1263f, -640f, -465f, -211f)), Struct_3(vec2<f32>(-301f, -394f), vec3<u32>(1u, 0u, 0u), Struct_2(vec2<bool>(false, true), vec4<u32>(4294967295u, 10416u, 46542u, 1u), 703f, Struct_1(vec4<u32>(0u, 32874u, 44074u, 4294967295u)), vec4<f32>(-1113f, -1000f, 699f, 548f)), vec4<i32>(-35489i, -10235i, 2147483647i, 2147483647i))), Struct_5(false, vec4<u32>(72069u, 49183u, 4294967295u, 18364u), Struct_2(vec2<bool>(true, true), vec4<u32>(14092u, 4294967295u, 1u, 4294967295u), -354f, Struct_1(vec4<u32>(1u, 4294967295u, 1u, 21868u)), vec4<f32>(397f, -481f, -1838f, 577f)), Struct_3(vec2<f32>(-1005f, 1000f), vec3<u32>(25220u, 32738u, 12125u), Struct_2(vec2<bool>(false, false), vec4<u32>(21661u, 6942u, 32958u, 0u), 258f, Struct_1(vec4<u32>(34981u, 1u, 6704u, 1u)), vec4<f32>(273f, -380f, -940f, -232f)), vec4<i32>(51665i, 31842i, 44812i, 2147483647i))), Struct_5(false, vec4<u32>(1u, 66281u, 34100u, 47535u), Struct_2(vec2<bool>(true, true), vec4<u32>(1u, 18065u, 0u, 0u), 1014f, Struct_1(vec4<u32>(17171u, 4294967295u, 94738u, 1u)), vec4<f32>(1628f, -777f, 253f, -289f)), Struct_3(vec2<f32>(133f, 745f), vec3<u32>(1u, 1u, 8164u), Struct_2(vec2<bool>(false, false), vec4<u32>(1u, 38504u, 415u, 1u), -1000f, Struct_1(vec4<u32>(0u, 17546u, 4294967295u, 4294967295u)), vec4<f32>(1000f, -1526f, -692f, -553f)), vec4<i32>(-1i, 2147483647i, -1i, 0i))), Struct_5(true, vec4<u32>(11664u, 49814u, 69082u, 1u), Struct_2(vec2<bool>(false, false), vec4<u32>(45074u, 44127u, 1u, 21696u), -346f, Struct_1(vec4<u32>(0u, 57812u, 4294967295u, 37596u)), vec4<f32>(-1000f, 269f, 2180f, 953f)), Struct_3(vec2<f32>(156f, -581f), vec3<u32>(4294967295u, 6585u, 1u), Struct_2(vec2<bool>(true, true), vec4<u32>(4294967295u, 33818u, 35938u, 4294967295u), -719f, Struct_1(vec4<u32>(4294967295u, 34917u, 1u, 4294967295u)), vec4<f32>(1572f, 345f, 944f, 476f)), vec4<i32>(6148i, 0i, -1i, 10210i))), Struct_5(false, vec4<u32>(19107u, 32646u, 0u, 4294967295u), Struct_2(vec2<bool>(false, true), vec4<u32>(13851u, 9107u, 70065u, 1u), -501f, Struct_1(vec4<u32>(0u, 81879u, 7226u, 4294967295u)), vec4<f32>(2189f, 651f, -517f, -763f)), Struct_3(vec2<f32>(240f, 1690f), vec3<u32>(84719u, 0u, 0u), Struct_2(vec2<bool>(true, true), vec4<u32>(33884u, 65724u, 88314u, 15291u), -226f, Struct_1(vec4<u32>(0u, 0u, 54340u, 31039u)), vec4<f32>(-626f, 1872f, -116f, 289f)), vec4<i32>(-1i, 1i, 13859i, 0i))), Struct_5(false, vec4<u32>(3434u, 13150u, 4294967295u, 4294967295u), Struct_2(vec2<bool>(false, true), vec4<u32>(1u, 23335u, 17011u, 0u), -114f, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u)), vec4<f32>(618f, 1000f, -1317f, 1015f)), Struct_3(vec2<f32>(392f, -1679f), vec3<u32>(67347u, 71824u, 19585u), Struct_2(vec2<bool>(false, true), vec4<u32>(3256u, 27120u, 4294967295u, 0u), 476f, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 7355u)), vec4<f32>(232f, -781f, 216f, 801f)), vec4<i32>(-1944i, -78741i, -13584i, -1i))), Struct_5(false, vec4<u32>(4294967295u, 1u, 66406u, 28474u), Struct_2(vec2<bool>(true, false), vec4<u32>(4294967295u, 91513u, 46563u, 1u), -1294f, Struct_1(vec4<u32>(1u, 0u, 0u, 15990u)), vec4<f32>(-375f, -1285f, -462f, 2132f)), Struct_3(vec2<f32>(-890f, 446f), vec3<u32>(4294967295u, 0u, 0u), Struct_2(vec2<bool>(false, false), vec4<u32>(15666u, 0u, 67965u, 4294967295u), 148f, Struct_1(vec4<u32>(1270u, 1u, 37781u, 60547u)), vec4<f32>(-303f, 292f, 502f, -605f)), vec4<i32>(-18484i, 47034i, -21947i, 1i))), Struct_5(true, vec4<u32>(4294967295u, 8530u, 4294967295u, 4294967295u), Struct_2(vec2<bool>(false, true), vec4<u32>(2542u, 33974u, 0u, 3107u), -869f, Struct_1(vec4<u32>(0u, 4294967295u, 5629u, 1u)), vec4<f32>(132f, -349f, 2047f, 3501f)), Struct_3(vec2<f32>(-1244f, 332f), vec3<u32>(11233u, 0u, 1u), Struct_2(vec2<bool>(true, true), vec4<u32>(0u, 30333u, 0u, 4294967295u), 679f, Struct_1(vec4<u32>(4294967295u, 7403u, 0u, 16518u)), vec4<f32>(-1507f, -376f, 1259f, 841f)), vec4<i32>(42824i, 15919i, 1i, 65272i))), Struct_5(true, vec4<u32>(56939u, 3223u, 10480u, 0u), Struct_2(vec2<bool>(false, false), vec4<u32>(4294967295u, 39792u, 1u, 4294967295u), -700f, Struct_1(vec4<u32>(15632u, 50512u, 1438u, 48258u)), vec4<f32>(-1000f, 407f, 1446f, -1130f)), Struct_3(vec2<f32>(1886f, -752f), vec3<u32>(0u, 15479u, 20193u), Struct_2(vec2<bool>(true, true), vec4<u32>(44011u, 22246u, 5651u, 52365u), -511f, Struct_1(vec4<u32>(11116u, 90161u, 17230u, 1u)), vec4<f32>(2881f, 346f, 676f, 1547f)), vec4<i32>(1i, -1i, -28657i, 2643i))), Struct_5(true, vec4<u32>(46007u, 4294967295u, 6470u, 51738u), Struct_2(vec2<bool>(true, false), vec4<u32>(1u, 1u, 63930u, 0u), 182f, Struct_1(vec4<u32>(4294967295u, 0u, 57259u, 68166u)), vec4<f32>(256f, -1000f, 345f, 487f)), Struct_3(vec2<f32>(275f, 153f), vec3<u32>(49827u, 38074u, 1u), Struct_2(vec2<bool>(false, false), vec4<u32>(4294967295u, 6050u, 4294967295u, 1u), -858f, Struct_1(vec4<u32>(1u, 0u, 0u, 6026u)), vec4<f32>(161f, 1431f, -1217f, 662f)), vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i))), Struct_5(false, vec4<u32>(1u, 1u, 40104u, 44893u), Struct_2(vec2<bool>(true, true), vec4<u32>(1845u, 27052u, 4294967295u, 612u), 112f, Struct_1(vec4<u32>(1u, 111164u, 56716u, 1u)), vec4<f32>(1000f, -873f, -522f, 998f)), Struct_3(vec2<f32>(-128f, 670f), vec3<u32>(30027u, 0u, 8254u), Struct_2(vec2<bool>(false, true), vec4<u32>(21722u, 42780u, 0u, 71448u), 1810f, Struct_1(vec4<u32>(85096u, 0u, 27122u, 4294967295u)), vec4<f32>(1952f, -320f, 794f, 221f)), vec4<i32>(0i, 2147483647i, i32(-2147483648), -19051i))), Struct_5(false, vec4<u32>(19440u, 50645u, 88657u, 22665u), Struct_2(vec2<bool>(true, false), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), -677f, Struct_1(vec4<u32>(9035u, 26503u, 5913u, 10951u)), vec4<f32>(-1351f, 1206f, 252f, 325f)), Struct_3(vec2<f32>(518f, 1057f), vec3<u32>(11316u, 1u, 26942u), Struct_2(vec2<bool>(false, false), vec4<u32>(1u, 16713u, 24457u, 1u), -238f, Struct_1(vec4<u32>(67477u, 32179u, 4294967295u, 56199u)), vec4<f32>(-1329f, 931f, 183f, -602f)), vec4<i32>(22959i, 4616i, 27425i, i32(-2147483648)))), Struct_5(true, vec4<u32>(1u, 1u, 6358u, 0u), Struct_2(vec2<bool>(true, false), vec4<u32>(1u, 1u, 1u, 60112u), -1079f, Struct_1(vec4<u32>(103849u, 0u, 93228u, 98717u)), vec4<f32>(1492f, -2301f, 538f, -220f)), Struct_3(vec2<f32>(-816f, -1762f), vec3<u32>(1u, 44882u, 0u), Struct_2(vec2<bool>(false, true), vec4<u32>(1u, 1u, 1u, 58758u), -462f, Struct_1(vec4<u32>(51158u, 0u, 31633u, 4294967295u)), vec4<f32>(344f, 415f, -2470f, -976f)), vec4<i32>(-1993i, -1i, i32(-2147483648), 20432i))));

var<private> global1: vec2<f32> = vec2<f32>(-459f, 2055f);

var<private> global2: array<Struct_3, 17>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(513f)), _wgslsmith_f_op_f32(arg_0 + arg_0))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(673f)) + 1779f), _wgslsmith_f_op_f32(trunc(-634f)))), vec3<u32>(u_input.d, _wgslsmith_clamp_u32(~1u, 1u, _wgslsmith_add_u32(u_input.c.x, u_input.d)), ~57792u), Struct_2(arg_1.zz, arg_2, global1.x, Struct_1((vec4<u32>(4294967295u, 85589u, 1u, arg_2.x) | vec4<u32>(u_input.e, arg_2.x, arg_2.x, u_input.d)) & vec4<u32>(u_input.c.x, 18368u, 9577u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, global1.x, arg_0, -1233f), vec4<f32>(834f, arg_0, -652f, -126f)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-250f + arg_0), -1000f))), vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(25683i, u_input.a.x, -31913i), ~12955i, u_input.a.x));
    let var_1 = global2[_wgslsmith_index_u32(0u, 17u)];
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) * _wgslsmith_f_op_f32(step(223f, _wgslsmith_f_op_f32(f32(-1f) * -121f))))));
    let var_3 = -1196f;
    let var_4 = true;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.c.e.zwy)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 1000f), var_0.c.e.x, var_0.c.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.c.e.ywx * vec3<f32>(var_0.a.x, -257f, 309f)))) - var_0.c.e.yyw)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5) -> vec4<i32> {
    global0 = array<Struct_5, 32>();
    global2 = array<Struct_3, 17>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), 509f)))), ~arg_1.d.b, u_input.a.xy, select(select(vec4<bool>(!arg_1.a, arg_1.d.c.a.x, any(arg_1.d.c.a), arg_1.c.a.x), vec4<bool>(arg_0.x > 908f, arg_1.d.c.a.x, -28534i > u_input.a.x, !arg_1.d.c.a.x), true), vec4<bool>(true, !arg_1.a, true, -53613i == u_input.a.x), !vec4<bool>(true, all(vec4<bool>(arg_1.d.c.a.x, arg_1.d.c.a.x, true, arg_1.d.c.a.x)), true, true)), global2[_wgslsmith_index_u32(select(firstTrailingBit(0u), (countOneBits(87746u) & _wgslsmith_add_u32(arg_1.b.x, 32199u)) ^ 0u, any(vec4<bool>(59914u >= arg_1.b.x, true, all(vec3<bool>(false, true, false)), false))), 17u)]);
    global0 = array<Struct_5, 32>();
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-abs(_wgslsmith_sub_i32(-2147483647i, var_0.c.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.a.x, var_0.c.x), arg_1.d.d.wzy), _wgslsmith_div_i32(countOneBits(arg_1.d.d.x), -13767i))), u_input.a.x);
    return var_0.e.d;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1886f);
    var_0 = _wgslsmith_div_f32(global1.x, global1.x);
    global0 = array<Struct_5, 32>();
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, countOneBits(37040i), abs(-30301i), firstLeadingBit(u_input.a.x)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 1f, -1426f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global1.x, vec4<bool>(true, true, false, true), u_input.b)) * vec3<f32>(1326f, -333f, 797f))), global0[_wgslsmith_index_u32(~u_input.d, 32u)]));
    return Struct_2(select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, true))) == 169f), u_input.b, -575f, Struct_1(~u_input.b ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(30841u, 1u, u_input.b.x), u_input.c), ~u_input.d, ~0u, ~18323u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1826f), _wgslsmith_f_op_f32(-global1.x), global1.x))));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.c.e.ww + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.c.e.xx) * arg_0.d.c.e.yz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.d.a, vec2<f32>(-296f, arg_0.d.c.c))) * vec2<f32>(_wgslsmith_f_op_f32(-969f * -845f), arg_0.d.c.c))), reverseBits(max(u_input.c, abs(arg_0.d.c.d.a.zzz))) ^ _wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(arg_0.b.xyw, vec3<u32>(u_input.d, 1u, u_input.d))), ~(arg_0.b.xww << (u_input.c % vec3<u32>(32u)))), Struct_2(vec2<bool>(false, all(arg_1)), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.d.c.d.a, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1097u)), ~arg_0.d.c.b), arg_0.c.c, arg_0.d.c.d, arg_0.c.e), u_input.a);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(arg_0.d.a.x, 314f)), _wgslsmith_div_vec3_u32(select(~_wgslsmith_add_vec3_u32(u_input.b.xwy, vec3<u32>(u_input.e, 47815u, 59823u)), firstLeadingBit(arg_0.b.zwx), true && !var_0.c.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(~1u, ~4294967295u, var_0.b.x), var_0.c.b.wwy)), -u_input.a.ww, vec4<bool>(false, true, !(_wgslsmith_mod_u32(var_0.b.x, u_input.d) <= u_input.d), true), global2[_wgslsmith_index_u32(0u, 17u)]);
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -304f)) + _wgslsmith_f_op_f32(f32(-1f) * -314f));
    return ~vec3<i32>(~_wgslsmith_mult_i32(select(u_input.a.x, var_0.d.x, true), 1i), ~(-17735i), -_wgslsmith_sub_i32(1867i, _wgslsmith_sub_i32(arg_0.d.d.x, 2147483647i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = func_5(Struct_5(!arg_3.e.c.a.x, ~abs(arg_2.c.b), func_2(), arg_2.d), arg_3.d.yww);
    var var_1 = Struct_3(vec2<f32>(712f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(555f)))))), vec3<u32>(51252u, _wgslsmith_clamp_u32(arg_2.d.b.x, _wgslsmith_clamp_u32(~78314u, ~arg_2.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.b.x, u_input.c.x, u_input.b.x), vec3<u32>(22323u, 4294967295u, 0u))), arg_3.e.c.b.x << (~6394u % 32u)), _wgslsmith_add_u32(~u_input.e, 4294967295u)), func_2(), vec4<i32>(-1i) * -abs(u_input.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-620f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-300f, 840f)) + _wgslsmith_f_op_f32(-arg_3.e.c.c))) + _wgslsmith_f_op_f32(floor(-928f)));
    var var_3 = vec3<i32>(u_input.a.x >> (61546u % 32u), arg_0.x, _wgslsmith_add_i32(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_2.c.e.xxz))), arg_2).x, ~(-(~0i))));
    let var_4 = var_1.c;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(420f + var_4.c))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1026f))) - _wgslsmith_f_op_f32(global1.x + 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1721f, 1000f, global1.x)), vec3<f32>(global1.x, -873f, global1.x))))));
    var var_1 = Struct_2(!vec2<bool>(!all(vec3<bool>(false, true, false)), false), ~u_input.b, 699f, Struct_1(~(u_input.b ^ _wgslsmith_add_vec4_u32(u_input.b, u_input.b))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1118f, var_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(max(var_0.x, -754f))), -800f)), 1918f));
    var_0 = var_1.e.yyw;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(u_input.a.zy, vec2<i32>(u_input.a.x, 1i), Struct_5(var_1.a.x, u_input.b, Struct_2(var_1.a, var_1.b, 593f, var_1.d, var_1.e), Struct_3(vec2<f32>(1293f, global1.x), vec3<u32>(40150u, var_1.b.x, 4294967295u), Struct_2(vec2<bool>(var_1.a.x, var_1.a.x), var_1.b, 353f, Struct_1(vec4<u32>(var_1.d.a.x, u_input.d, var_1.b.x, var_1.b.x)), vec4<f32>(-907f, -168f, var_1.c, -1800f)), u_input.a)), Struct_4(var_0.x, u_input.c, u_input.a.zz, vec4<bool>(true, true, false, false), Struct_3(vec2<f32>(var_0.x, 1386f), vec3<u32>(u_input.b.x, var_1.d.a.x, 101010u), Struct_2(var_1.a, vec4<u32>(0u, u_input.e, 4294967295u, 1u), -1000f, Struct_1(vec4<u32>(69610u, 50383u, 0u, 418u)), var_1.e), vec4<i32>(2147483647i, 1i, -68457i, u_input.a.x))))), _wgslsmith_f_op_vec4_f32(-var_1.e), !vec4<bool>(true, false, var_1.a.x, true)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.e)));
    var var_3 = Struct_4(var_1.e.x, ~vec3<u32>(~100880u, u_input.d, ~116645u) ^ vec3<u32>(0u, _wgslsmith_sub_u32(u_input.d, u_input.b.x), var_1.d.a.x), -min(u_input.a.ww, _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, -11331i)))), !select(!select(vec4<bool>(false, var_1.a.x, true, false), vec4<bool>(false, false, true, false), var_1.a.x), !vec4<bool>(true, var_1.a.x, false, false), var_1.a.x), global2[_wgslsmith_index_u32(u_input.e, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -172f), var_1.b.zzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.e.yzy + vec3<f32>(-249f, var_3.e.a.x, var_1.e.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 648f, -230f))) - _wgslsmith_f_op_vec3_f32(-var_1.e.xyz)))));
}

