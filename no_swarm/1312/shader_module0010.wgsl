struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_2(Struct_1(vec4<u32>(100u, 8276u, 5926u, 61467u), vec3<u32>(10330u, 4294967295u, 29214u), true), Struct_1(vec4<u32>(4294967295u, 84264u, 4294967295u, 2157u), vec3<u32>(96568u, 32914u, 0u), true)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(42334u, 51676u, 4294967295u, 47817u), vec3<u32>(4294967295u, 1u, 4294967295u), false), Struct_1(vec4<u32>(4294967295u, 1u, 7494u, 8052u), vec3<u32>(1u, 19682u, 55212u), true)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 28681u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 2906u, 63107u), vec3<u32>(1u, 0u, 4424u), true), Struct_1(vec4<u32>(4294967295u, 61616u, 4294967295u, 4294967295u), vec3<u32>(1u, 20748u, 367u), true)), vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<u32>(4294967295u, 28713u, 1u, 0u), vec3<u32>(1u, 13552u, 45721u), false), Struct_1(vec4<u32>(25218u, 4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), false)), Struct_1(vec4<u32>(2503u, 1u, 1u, 1u), vec3<u32>(63061u, 6763u, 52105u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(41543u, 10016u, 4294967295u, 0u), vec3<u32>(42485u, 4294967295u, 6144u), false), Struct_1(vec4<u32>(20726u, 0u, 0u, 62801u), vec3<u32>(13410u, 4294967295u, 17871u), false)), vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<u32>(1u, 26126u, 1u, 13401u), vec3<u32>(0u, 28495u, 14335u), false), Struct_1(vec4<u32>(30304u, 0u, 7492u, 24808u), vec3<u32>(0u, 1u, 65142u), false)), Struct_1(vec4<u32>(1u, 32215u, 1u, 25010u), vec3<u32>(506u, 0u, 78689u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(5040u, 9275u, 67351u, 0u), vec3<u32>(4294967295u, 18074u, 4294967295u), true), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 6713u), vec3<u32>(4294967295u, 0u, 0u), true)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(96338u, 35723u, 0u, 1u), vec3<u32>(1u, 22592u, 1u), true), Struct_1(vec4<u32>(112809u, 4294967295u, 33678u, 24864u), vec3<u32>(21013u, 47021u, 23902u), false)), Struct_1(vec4<u32>(29361u, 23438u, 0u, 10880u), vec3<u32>(1u, 47487u, 116542u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(78757u, 4294967295u, 30209u, 1u), vec3<u32>(1u, 1u, 75491u), false), Struct_1(vec4<u32>(4294967295u, 18805u, 68063u, 24792u), vec3<u32>(0u, 52622u, 64584u), true)), vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 45245u, 74228u), vec3<u32>(19579u, 2771u, 19560u), false), Struct_1(vec4<u32>(4294967295u, 0u, 47121u, 1u), vec3<u32>(1u, 1u, 1u), false)), Struct_1(vec4<u32>(4620u, 4294967295u, 4294967295u, 0u), vec3<u32>(189955u, 61598u, 0u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 93927u, 0u), vec3<u32>(885u, 4294967295u, 567u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 27438u, 3800u), vec3<u32>(26040u, 0u, 0u), true)), vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<u32>(48307u, 45088u, 1u, 0u), vec3<u32>(26344u, 0u, 0u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec3<u32>(0u, 41141u, 1u), true)), Struct_1(vec4<u32>(0u, 24336u, 0u, 0u), vec3<u32>(94040u, 43487u, 0u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(84761u, 1u, 16795u, 6203u), vec3<u32>(34437u, 4294967295u, 34116u), false), Struct_1(vec4<u32>(1u, 15804u, 0u, 8043u), vec3<u32>(92323u, 12625u, 0u), false)), vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<u32>(1u, 16692u, 15734u, 37178u), vec3<u32>(32347u, 30174u, 4294967295u), false), Struct_1(vec4<u32>(1u, 4294967295u, 46891u, 0u), vec3<u32>(4294967295u, 42568u, 4294967295u), false)), Struct_1(vec4<u32>(59680u, 3061u, 0u, 1u), vec3<u32>(9584u, 4294967295u, 11754u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(74849u, 1u, 4294967295u, 19326u), vec3<u32>(35067u, 75407u, 9180u), false), Struct_1(vec4<u32>(0u, 2547u, 4294967295u, 44746u), vec3<u32>(8012u, 0u, 30408u), false)), vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 67852u), vec3<u32>(4294967295u, 1u, 4294967295u), true), Struct_1(vec4<u32>(7343u, 51642u, 8799u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 56581u), true)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 7965u), vec3<u32>(4294967295u, 76731u, 0u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 1u, 0u, 33702u), vec3<u32>(1u, 4294967295u, 50089u), true), Struct_1(vec4<u32>(1u, 4294967295u, 35206u, 0u), vec3<u32>(1u, 0u, 81619u), false)), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(58280u, 31078u, 52582u, 1u), vec3<u32>(0u, 1u, 1u), false), Struct_1(vec4<u32>(20406u, 0u, 4294967295u, 60626u), vec3<u32>(9706u, 1u, 0u), false)), Struct_1(vec4<u32>(36407u, 0u, 1u, 1u), vec3<u32>(0u, 0u, 12761u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(421u, 20213u, 23578u, 63731u), vec3<u32>(4294967295u, 4294967295u, 1u), false), Struct_1(vec4<u32>(1u, 63058u, 1u, 111186u), vec3<u32>(54475u, 17716u, 62972u), true)), vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<u32>(1u, 0u, 0u, 53963u), vec3<u32>(1u, 1u, 71512u), true), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), vec3<u32>(24984u, 27648u, 4294967295u), true)), Struct_1(vec4<u32>(4294967295u, 0u, 70671u, 0u), vec3<u32>(4294967295u, 106243u, 27931u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 32337u, 1781u, 1u), vec3<u32>(1u, 11128u, 6395u), false), Struct_1(vec4<u32>(24392u, 4294967295u, 25509u, 1u), vec3<u32>(1u, 42421u, 0u), false)), vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<u32>(55237u, 1u, 43363u, 19397u), vec3<u32>(37598u, 15859u, 4294967295u), false), Struct_1(vec4<u32>(23171u, 49127u, 1u, 23223u), vec3<u32>(1u, 0u, 4294967295u), true)), Struct_1(vec4<u32>(28530u, 1u, 15748u, 1u), vec3<u32>(26702u, 0u, 1u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(12205u, 4294967295u, 8626u, 39357u), vec3<u32>(584u, 4294967295u, 0u), true), Struct_1(vec4<u32>(1u, 15087u, 95u, 4294967295u), vec3<u32>(4294967295u, 0u, 7977u), true)), vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<u32>(57028u, 93054u, 100541u, 72429u), vec3<u32>(1u, 0u, 4294967295u), true), Struct_1(vec4<u32>(14881u, 8361u, 4294967295u, 0u), vec3<u32>(10732u, 54683u, 4294967295u), false)), Struct_1(vec4<u32>(33872u, 79991u, 1u, 43309u), vec3<u32>(11850u, 0u, 14203u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(4993u, 1u, 12647u, 17837u), vec3<u32>(0u, 28658u, 107057u), true), Struct_1(vec4<u32>(0u, 49592u, 0u, 36068u), vec3<u32>(1u, 1u, 24821u), true)), vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<u32>(4294967295u, 33851u, 98056u, 1u), vec3<u32>(82887u, 33701u, 0u), false), Struct_1(vec4<u32>(62406u, 4294967295u, 0u, 1u), vec3<u32>(4294967295u, 23805u, 24623u), false)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 32277u), vec3<u32>(1u, 1u, 1u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(12452u, 15187u, 22730u, 1u), vec3<u32>(4294967295u, 27277u, 4294967295u), false), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 18671u), vec3<u32>(14808u, 93355u, 52293u), false)), vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 2606u, 16254u), vec3<u32>(1u, 20472u, 1u), false), Struct_1(vec4<u32>(1u, 33740u, 0u, 4294967295u), vec3<u32>(3540u, 0u, 4294967295u), true)), Struct_1(vec4<u32>(16726u, 0u, 4294967295u, 47745u), vec3<u32>(0u, 0u, 7343u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(25409u, 1u, 65840u, 40867u), vec3<u32>(0u, 1u, 4294967295u), true), Struct_1(vec4<u32>(0u, 2806u, 1u, 4294967295u), vec3<u32>(21376u, 78503u, 10327u), false)), vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec3<u32>(19030u, 4294967295u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 1246u, 3587u, 0u), vec3<u32>(0u, 40279u, 0u), true)), Struct_1(vec4<u32>(33599u, 0u, 44856u, 14628u), vec3<u32>(1u, 20921u, 13664u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 0u, 31668u, 18714u), vec3<u32>(25626u, 50712u, 1u), true), Struct_1(vec4<u32>(26534u, 29308u, 17408u, 4294967295u), vec3<u32>(1u, 0u, 32426u), true)), vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 37743u), vec3<u32>(0u, 38446u, 1u), false), Struct_1(vec4<u32>(25939u, 6269u, 18759u, 41436u), vec3<u32>(0u, 48754u, 1u), true)), Struct_1(vec4<u32>(0u, 0u, 3109u, 28315u), vec3<u32>(4294967295u, 43512u, 0u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 26864u, 72404u, 4294967295u), vec3<u32>(0u, 2615u, 0u), false), Struct_1(vec4<u32>(1u, 0u, 2325u, 57959u), vec3<u32>(4294967295u, 1u, 17914u), true)), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(0u, 11805u, 4294967295u, 4294967295u), vec3<u32>(75943u, 57082u, 4294967295u), true), Struct_1(vec4<u32>(76401u, 3698u, 23618u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), true)), Struct_1(vec4<u32>(18902u, 41172u, 0u, 0u), vec3<u32>(1u, 58508u, 84426u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(42150u, 85387u, 1u, 25255u), vec3<u32>(1u, 1u, 55243u), false), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 72401u), vec3<u32>(1u, 33722u, 79051u), true)), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(43524u, 4816u, 0u, 40084u), vec3<u32>(38421u, 20093u, 19119u), true), Struct_1(vec4<u32>(1956u, 63251u, 4294967295u, 6348u), vec3<u32>(4294967295u, 4294967295u, 91023u), true)), Struct_1(vec4<u32>(36761u, 4294967295u, 1u, 244u), vec3<u32>(12603u, 0u, 43165u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 0u, 20257u, 55519u), vec3<u32>(1u, 28024u, 4294967295u), true), Struct_1(vec4<u32>(10917u, 4294967295u, 57923u, 2075u), vec3<u32>(49871u, 4294967295u, 6809u), true)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), vec3<u32>(7802u, 4294967295u, 38363u), false), Struct_1(vec4<u32>(0u, 48678u, 0u, 30124u), vec3<u32>(49789u, 1u, 1u), false)), Struct_1(vec4<u32>(1u, 0u, 7192u, 1u), vec3<u32>(25669u, 1u, 4294967295u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 42347u, 1u, 4294967295u), vec3<u32>(1u, 11862u, 63490u), true), Struct_1(vec4<u32>(45615u, 46617u, 0u, 1u), vec3<u32>(1u, 0u, 1u), false)), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(1u, 46904u, 55328u, 62874u), vec3<u32>(54483u, 5827u, 35366u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 50106u, 1u), vec3<u32>(4294967295u, 20215u, 0u), true)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 0u), vec3<u32>(1u, 0u, 4294967295u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(57492u, 4294967295u, 4294967295u, 52246u), vec3<u32>(19038u, 0u, 1u), true), Struct_1(vec4<u32>(91746u, 1u, 1u, 45061u), vec3<u32>(0u, 39683u, 68447u), true)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 11505u, 15126u), true), Struct_1(vec4<u32>(20379u, 4294967295u, 1u, 1u), vec3<u32>(2831u, 1u, 40410u), true)), Struct_1(vec4<u32>(2490u, 32176u, 57334u, 1u), vec3<u32>(23319u, 1u, 4294967295u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(23662u, 5117u, 63126u, 4294967295u), vec3<u32>(59555u, 9289u, 33514u), false), Struct_1(vec4<u32>(4294967295u, 27765u, 20430u, 24401u), vec3<u32>(33386u, 52262u, 67043u), true)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 40377u, 7873u), vec3<u32>(1u, 45396u, 1u), true), Struct_1(vec4<u32>(2925u, 29183u, 83543u, 4294967295u), vec3<u32>(39481u, 13252u, 2025u), true)), Struct_1(vec4<u32>(18227u, 4294967295u, 0u, 41348u), vec3<u32>(59460u, 17010u, 1u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 6880u, 1u, 0u), vec3<u32>(73556u, 1u, 4294967295u), false), Struct_1(vec4<u32>(19479u, 4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 44855u, 1u), false)), vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<u32>(29002u, 0u, 42388u, 60553u), vec3<u32>(0u, 21793u, 31639u), false), Struct_1(vec4<u32>(0u, 0u, 1u, 5231u), vec3<u32>(4476u, 1u, 4294967295u), true)), Struct_1(vec4<u32>(9635u, 27896u, 1u, 11251u), vec3<u32>(1u, 0u, 4294967295u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(23043u, 50777u, 8627u, 4294967295u), vec3<u32>(0u, 4294967295u, 12247u), false), Struct_1(vec4<u32>(75099u, 0u, 4294967295u, 0u), vec3<u32>(4294967295u, 6829u, 61840u), false)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(5836u, 1u, 6382u, 14359u), vec3<u32>(14954u, 64967u, 0u), false), Struct_1(vec4<u32>(20124u, 23833u, 0u, 1u), vec3<u32>(4294967295u, 12080u, 28840u), true)), Struct_1(vec4<u32>(0u, 45518u, 0u, 491u), vec3<u32>(12711u, 4294967295u, 7310u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), vec3<u32>(996u, 0u, 25949u), true), Struct_1(vec4<u32>(5332u, 0u, 21678u, 24566u), vec3<u32>(0u, 20625u, 54335u), false)), vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<u32>(93987u, 107473u, 28283u, 55097u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 27187u, 19194u, 4294967295u), vec3<u32>(9433u, 3937u, 4294967295u), false)), Struct_1(vec4<u32>(62158u, 7320u, 1u, 0u), vec3<u32>(26914u, 12291u, 4294967295u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 19250u, 1u, 4294967295u), vec3<u32>(0u, 23209u, 30591u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 29890u), vec3<u32>(68506u, 70982u, 23494u), true)), vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<u32>(4294967295u, 19546u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 24071u), false), Struct_1(vec4<u32>(41285u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 57193u, 0u), true)), Struct_1(vec4<u32>(4294967295u, 90064u, 4294967295u, 4294967295u), vec3<u32>(36127u, 94533u, 26423u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(78243u, 0u, 1u, 65353u), vec3<u32>(4294967295u, 59673u, 21002u), false), Struct_1(vec4<u32>(0u, 1u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 70103u), false)), vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<u32>(21524u, 1u, 4294967295u, 4033u), vec3<u32>(4294967295u, 1u, 1u), false), Struct_1(vec4<u32>(44250u, 33669u, 4294967295u, 572u), vec3<u32>(893u, 1u, 4384u), false)), Struct_1(vec4<u32>(4294967295u, 42457u, 57528u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 28985u, 12105u, 127714u), vec3<u32>(0u, 63471u, 30937u), false), Struct_1(vec4<u32>(36525u, 43462u, 1u, 82957u), vec3<u32>(1u, 4294967295u, 65798u), true)), vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<u32>(4294967295u, 62672u, 42565u, 5773u), vec3<u32>(25150u, 0u, 1u), true), Struct_1(vec4<u32>(12456u, 4734u, 0u, 1u), vec3<u32>(22781u, 46798u, 27268u), false)), Struct_1(vec4<u32>(4294967295u, 1135u, 0u, 33936u), vec3<u32>(23709u, 4294967295u, 0u), false)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 37519u, 0u, 27286u), vec3<u32>(1u, 0u, 45042u), false), Struct_1(vec4<u32>(1u, 0u, 7906u, 93019u), vec3<u32>(84953u, 17759u, 53992u), true)), vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<u32>(37570u, 4294967295u, 4294967295u, 11977u), vec3<u32>(24379u, 4294967295u, 21760u), false), Struct_1(vec4<u32>(4294967295u, 8511u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 1u), true)), Struct_1(vec4<u32>(1507u, 1u, 165572u, 4294967295u), vec3<u32>(1u, 0u, 42484u), true)), Struct_3(Struct_2(Struct_1(vec4<u32>(16898u, 62126u, 29178u, 2837u), vec3<u32>(4294967295u, 30986u, 25003u), false), Struct_1(vec4<u32>(15657u, 99200u, 32726u, 4294967295u), vec3<u32>(1u, 1u, 1u), false)), vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 22936u), vec3<u32>(1u, 0u, 18988u), false), Struct_1(vec4<u32>(1u, 13608u, 4294967295u, 47638u), vec3<u32>(78698u, 0u, 0u), true)), Struct_1(vec4<u32>(54290u, 0u, 28078u, 0u), vec3<u32>(9570u, 4294967295u, 4294967295u), true)));

var<private> global1: f32 = 627f;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), true), Struct_1(vec4<u32>(47629u, 0u, 0u, 4294967295u), vec3<u32>(48301u, 1u, 4294967295u), true));

var<private> global3: array<u32, 24> = array<u32, 24>(2362u, 9544u, 10006u, 0u, 61092u, 0u, 9444u, 1u, 0u, 16221u, 25331u, 16522u, 22498u, 10968u, 0u, 0u, 38297u, 25816u, 5253u, 1u, 4294967295u, 28714u, 43771u, 5840u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<Struct_3, 30>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(377f, arg_0, false)), _wgslsmith_f_op_f32(max(1210f, arg_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(974f, 605f) - vec2<f32>(arg_0, 1212f)))))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-502f - 1f)));
    let var_1 = _wgslsmith_mod_u32(46930u, 8131u) >> (global3[_wgslsmith_index_u32(abs(u_input.a.x), 24u)] % 32u);
    return Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(select(max(4294967295u, u_input.a.x), 2885u, all(vec4<bool>(true, false, true, true))), 21527u), 2u)], Struct_1(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(46886u, var_1, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), ~vec4<u32>(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(var_1, 24u)], 9915u, u_input.a.x), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true)), vec4<u32>(_wgslsmith_mult_u32(var_1, 22924u), _wgslsmith_add_u32(u_input.a.x, 2218u), u_input.a.x, ~0u), ~reverseBits(vec4<u32>(0u, u_input.a.x, global3[_wgslsmith_index_u32(1u, 24u)], u_input.a.x))), select(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 24u)], u_input.a.x, 10414u), ~vec3<u32>(64468u, 0u, u_input.a.x), _wgslsmith_div_u32(0u, global3[_wgslsmith_index_u32(var_1, 24u)]) == ~1u), true));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1446f, _wgslsmith_f_op_f32(floor(-1540f)))) - _wgslsmith_f_op_f32(max(1228f, _wgslsmith_f_op_f32(min(830f, -643f))))) - -1133f)).a;
    var var_1 = var_0.b;
    var_1 = var_0.b;
    let var_2 = vec3<f32>(-474f, -1169f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -162f))), 1f)));
    var_0 = global2[_wgslsmith_index_u32(38022u, 2u)];
    return _wgslsmith_dot_vec4_u32(var_0.a, var_0.a);
}

fn func_1(arg_0: u32, arg_1: i32) -> u32 {
    var var_0 = true;
    let var_1 = func_2(-348f);
    let var_2 = ~vec3<u32>(~global3[_wgslsmith_index_u32(reverseBits(0u), 24u)], firstLeadingBit(1u), 1u);
    let var_3 = var_1;
    global3 = array<u32, 24>();
    return func_3(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 31940i, arg_1 | arg_1), -53110i, ~u_input.b, arg_1), -max(~vec4<i32>(0i, 12486i, u_input.b, arg_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -28297i, u_input.b), vec4<i32>(arg_1, u_input.b, 10057i, 36073i), vec4<i32>(-25108i, 47010i, arg_1, u_input.b))), ~(~u_input.a.x >> (22397u % 32u))) << (~8417u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    var var_0 = -101f;
    global0 = array<Struct_3, 30>();
    var var_1 = vec2<u32>(u_input.a.x, func_1(~(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 59229u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), 24u)] ^ u_input.a.x), _wgslsmith_sub_i32(u_input.b, u_input.b) >> (4294967295u % 32u)));
    var_1 = _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(77522u, var_1.x) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global3[_wgslsmith_index_u32(1u, 24u)])), ~u_input.a), _wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(var_1.x, var_1.x)), u_input.a, false), firstLeadingBit(vec2<u32>(global3[_wgslsmith_index_u32(57443u, 24u)], global3[_wgslsmith_index_u32(64849u, 24u)])))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-346f)))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-521f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(-504f, 1000f, false))))), !vec4<bool>(true, any(vec3<bool>(true, true, true)), func_2(-529f).a.c, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, 109f, -1172f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -2345f, -3227f), vec3<f32>(827f, -978f, -253f), true))))));
    var var_3 = global0[_wgslsmith_index_u32(39616u, 30u)];
    var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) * _wgslsmith_f_op_f32(trunc(-1000f))), Struct_2(global2[_wgslsmith_index_u32(var_1.x, 2u)], func_2(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(-var_2.d.x))).a), var_2.c, _wgslsmith_f_op_vec3_f32(var_2.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_2.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_2.d.yy)), -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, u_input.b) << (vec3<u32>(u_input.a.x, 4294967295u, var_2.b.a.b.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, u_input.b, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b, -5666i), vec3<i32>(u_input.b, -8529i, 2147483647i), vec3<i32>(u_input.b, u_input.b, -1i)))));
}

