struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_3(false, Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 20957i, -27297i, -1i), vec3<u32>(0u, 0u, 0u)), Struct_1(vec2<bool>(false, true), vec4<i32>(135i, 4846i, -22488i, 1i), vec3<u32>(0u, 1u, 0u)), vec2<f32>(-537f, -537f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(13766i, 1i, i32(-2147483648), 1474i), vec3<u32>(0u, 7999u, 31055u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(30005i, i32(-2147483648), 53707i, -1014i), vec3<u32>(1u, 1u, 15527u))), vec2<f32>(699f, 508f), 1000f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 2147483647i, 2147483647i, 3252i), vec3<u32>(4294967295u, 71872u, 1u)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 0i, 0i, -14142i), vec3<u32>(23567u, 10618u, 14166u)), vec2<f32>(1609f, -1198f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 8380i, -14750i, -30835i), vec3<u32>(50034u, 0u, 0u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(39348i, -25925i, 1084i, -1i), vec3<u32>(0u, 11975u, 0u))), vec2<f32>(-1506f, 1990f), 1055f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), vec4<i32>(52383i, 0i, 51154i, -23775i), vec3<u32>(23398u, 13846u, 0u)), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, -12989i, 1i, -7708i), vec3<u32>(4294967295u, 23206u, 50725u)), vec2<f32>(101f, 699f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(6486i, -1i, -1i, -21637i), vec3<u32>(13206u, 23005u, 0u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(781i, -9109i, -26628i, 1i), vec3<u32>(4516u, 67643u, 0u))), vec2<f32>(-1000f, -972f), -179f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 51482i, 33589i), vec3<u32>(35558u, 18828u, 0u)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 5423i, 0i, 0i), vec3<u32>(3206u, 4294967295u, 1u)), vec2<f32>(-316f, -854f), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 29291i, i32(-2147483648), 2147483647i), vec3<u32>(1u, 86557u, 15379u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(21456i, 1i, 0i, 72058i), vec3<u32>(61547u, 4294967295u, 71u))), vec2<f32>(-572f, 3604f), 633f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 40134i, -1i, 0i), vec3<u32>(36265u, 0u, 0u)), Struct_1(vec2<bool>(true, true), vec4<i32>(-5082i, 0i, 0i, 2147483647i), vec3<u32>(26192u, 1u, 95772u)), vec2<f32>(1488f, 567f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-39103i, 2147483647i, 1i, 2147483647i), vec3<u32>(4294967295u, 1u, 0u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(16073i, -25041i, 31003i, -30688i), vec3<u32>(1u, 0u, 4294967295u))), vec2<f32>(1000f, 623f), 176f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 1i, 3435i), vec3<u32>(5826u, 59680u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 20020i, -1i, -1i), vec3<u32>(0u, 1u, 3304u)), vec2<f32>(925f, 376f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 357i, i32(-2147483648), -1i), vec3<u32>(60857u, 0u, 12146u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 0i, 8267i, -1i), vec3<u32>(4294967295u, 0u, 4294967295u))), vec2<f32>(-1325f, 718f), -1394f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, false), vec4<i32>(5190i, 38482i, 0i, 23963i), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -18525i, i32(-2147483648), i32(-2147483648)), vec3<u32>(26470u, 4294967295u, 0u)), vec2<f32>(370f, 1999f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(46039i, 77i, -1i, i32(-2147483648)), vec3<u32>(0u, 54147u, 4294967295u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-11824i, 46138i, 26838i, -10525i), vec3<u32>(4294967295u, 31080u, 0u))), vec2<f32>(275f, 879f), -240f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(false, true), vec4<i32>(0i, -24989i, 14657i, 14030i), vec3<u32>(17423u, 1u, 66514u)), Struct_1(vec2<bool>(false, false), vec4<i32>(-36640i, i32(-2147483648), 1i, -67670i), vec3<u32>(10006u, 0u, 0u)), vec2<f32>(-595f, 1000f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, 0i, i32(-2147483648), -56680i), vec3<u32>(4294967295u, 41699u, 11084u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 0i, -25703i, 0i), vec3<u32>(4294967295u, 51546u, 0u))), vec2<f32>(362f, 2026f), -1295f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(false, true), vec4<i32>(1i, -12279i, 73890i, 0i), vec3<u32>(0u, 20457u, 34883u)), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, -8826i, 17040i), vec3<u32>(41685u, 68600u, 1u)), vec2<f32>(-729f, -1288f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 14665i, 2147483647i, i32(-2147483648)), vec3<u32>(4294967295u, 55261u, 0u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(14618i, 2147483647i, -10214i, 1i), vec3<u32>(1649u, 0u, 1757u))), vec2<f32>(238f, -1032f), -1566f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, -1i, -1i, 0i), vec3<u32>(10767u, 1u, 27886u)), Struct_1(vec2<bool>(false, false), vec4<i32>(-7422i, 6851i, 19407i, 0i), vec3<u32>(72277u, 12962u, 23955u)), vec2<f32>(-407f, 152f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(43101i, 0i, -27133i, 0i), vec3<u32>(46918u, 1u, 1u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 5089i, -1i, 36107i), vec3<u32>(57532u, 0u, 112044u))), vec2<f32>(1690f, 1304f), 288f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 1i, -19029i, 1i), vec3<u32>(69317u, 4294967295u, 22300u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, -1i, -1i, 20156i), vec3<u32>(4294967295u, 4294967295u, 0u)), vec2<f32>(-1101f, 1763f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(1254i, 0i, i32(-2147483648), i32(-2147483648)), vec3<u32>(4294967295u, 73434u, 62926u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, -1i, 1i, 1i), vec3<u32>(16769u, 0u, 5177u))), vec2<f32>(752f, 258f), -1124f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 0i, -52998i, 13775i), vec3<u32>(1u, 40042u, 1u)), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 2147483647i, 9058i, 1i), vec3<u32>(17143u, 1u, 1u)), vec2<f32>(-1378f, -547f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, 31811i, 2147483647i, 6815i), vec3<u32>(1u, 30106u, 60156u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-32957i, -35056i, 2147483647i, i32(-2147483648)), vec3<u32>(51499u, 21563u, 26136u))), vec2<f32>(1598f, -1802f), 1140f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, i32(-2147483648), 24300i, 1i), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<i32>(13150i, -34606i, 1i, 2147483647i), vec3<u32>(16582u, 1u, 32905u)), vec2<f32>(127f, 367f), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(50872i, 33341i, -1601i, i32(-2147483648)), vec3<u32>(13168u, 55206u, 1884u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-13988i, -1i, -7986i, 9778i), vec3<u32>(8706u, 0u, 1u))), vec2<f32>(-1165f, -543f), -1451f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), vec4<i32>(-25465i, 1387i, i32(-2147483648), -39123i), vec3<u32>(0u, 16203u, 1u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-26998i, -1i, -10116i, i32(-2147483648)), vec3<u32>(49937u, 95409u, 56473u)), vec2<f32>(476f, -619f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-104i, -5933i, -14727i, 0i), vec3<u32>(14280u, 0u, 4553u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -12506i, -27112i, 1i), vec3<u32>(36160u, 4294967295u, 4294967295u))), vec2<f32>(-589f, -297f), -1000f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, true), vec4<i32>(-482i, 1i, 2147483647i, -42541i), vec3<u32>(34171u, 0u, 0u)), Struct_1(vec2<bool>(true, true), vec4<i32>(-22583i, 3003i, 19741i, 825i), vec3<u32>(0u, 66621u, 1u)), vec2<f32>(494f, -689f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 1i, 2147483647i, i32(-2147483648)), vec3<u32>(9059u, 21636u, 0u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-41722i, 2147483647i, 2862i, 0i), vec3<u32>(0u, 22165u, 0u))), vec2<f32>(2263f, 194f), 506f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 1i, 0i, -32210i), vec3<u32>(27005u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, true), vec4<i32>(14741i, -868i, i32(-2147483648), 1i), vec3<u32>(4294967295u, 28417u, 58703u)), vec2<f32>(-196f, -387f), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(-68851i, 1i, 55879i, 1i), vec3<u32>(1u, 61744u, 4294967295u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(39104i, 16670i, 60411i, -1i), vec3<u32>(55494u, 26606u, 0u))), vec2<f32>(-1373f, -1471f), -717f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, true), vec4<i32>(-52459i, 2147483647i, 2147483647i, 1i), vec3<u32>(1u, 13988u, 29355u)), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 1i, -3047i, -31051i), vec3<u32>(54251u, 36651u, 0u)), vec2<f32>(-661f, -484f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 1957i, -6294i, 18859i), vec3<u32>(4294967295u, 4294967295u, 67303u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 2147483647i, 59373i, -16734i), vec3<u32>(0u, 4294967295u, 1u))), vec2<f32>(-319f, -203f), 1000f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, i32(-2147483648), 22270i, -96563i), vec3<u32>(4294967295u, 34802u, 1u)), Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -35406i, i32(-2147483648), i32(-2147483648)), vec3<u32>(4470u, 1u, 4294967295u)), vec2<f32>(-1445f, 616f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 0i, 11678i, -33812i), vec3<u32>(18323u, 8788u, 102048u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), vec3<u32>(0u, 1u, 2330u))), vec2<f32>(1553f, -107f), -793f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, false), vec4<i32>(28263i, -6516i, -45013i, 7793i), vec3<u32>(33697u, 0u, 0u)), Struct_1(vec2<bool>(true, false), vec4<i32>(38500i, 2147483647i, -12245i, 0i), vec3<u32>(1u, 1u, 1u)), vec2<f32>(1197f, 1422f), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(-50365i, 663i, 1i, -71152i), vec3<u32>(4294967295u, 45209u, 4294967295u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 872i, -14484i, -33246i), vec3<u32>(3882u, 1u, 38514u))), vec2<f32>(-294f, -938f), 875f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, true), vec4<i32>(-4571i, -16857i, i32(-2147483648), 0i), vec3<u32>(953u, 4294967295u, 27923u)), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 2147483647i, -11418i, 1i), vec3<u32>(1u, 17904u, 3038u)), vec2<f32>(1000f, -953f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 2147483647i, 12734i, -78810i), vec3<u32>(80761u, 13469u, 1u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-68853i, -1i, 2147483647i, 24258i), vec3<u32>(49898u, 18786u, 1u))), vec2<f32>(1095f, 441f), 147f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(false, true), vec4<i32>(10882i, 1i, 34096i, -1i), vec3<u32>(44336u, 0u, 31112u)), Struct_1(vec2<bool>(false, false), vec4<i32>(1831i, -30894i, 62258i, 0i), vec3<u32>(4294967295u, 26989u, 33289u)), vec2<f32>(1133f, 1000f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, i32(-2147483648), -4922i, 37084i), vec3<u32>(4294967295u, 0u, 10824u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, 40196i, -5442i, -1i), vec3<u32>(4294967295u, 4294967295u, 1u))), vec2<f32>(938f, 121f), 962f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -1i), vec3<u32>(31168u, 0u, 1u)), Struct_1(vec2<bool>(false, false), vec4<i32>(-1984i, -14147i, 5926i, 1i), vec3<u32>(1u, 52705u, 94415u)), vec2<f32>(-365f, -155f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -45700i), vec3<u32>(1u, 4294967295u, 7216u)))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -24352i, 0i, -26796i), vec3<u32>(0u, 12606u, 89977u))), vec2<f32>(-652f, 152f), -1903f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(false, true), vec4<i32>(-7518i, 0i, -6602i, -9248i), vec3<u32>(68955u, 13670u, 47195u)), Struct_1(vec2<bool>(false, true), vec4<i32>(-5762i, i32(-2147483648), 0i, -1i), vec3<u32>(1u, 128873u, 6982u)), vec2<f32>(464f, 754f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-11744i, i32(-2147483648), 1i, -1i), vec3<u32>(57092u, 4294967295u, 0u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 33923i, 74424i, i32(-2147483648)), vec3<u32>(10878u, 0u, 4358u))), vec2<f32>(153f, 327f), -1157f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(false, true), vec4<i32>(39576i, -32750i, 0i, -1i), vec3<u32>(4294967295u, 6939u, 1u)), Struct_1(vec2<bool>(false, false), vec4<i32>(23191i, 10891i, 2147483647i, 2147483647i), vec3<u32>(4294967295u, 1u, 17956u)), vec2<f32>(-1805f, -152f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, -29751i, i32(-2147483648), 15958i), vec3<u32>(0u, 1u, 6613u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 2147483647i, 36358i, 2147483647i), vec3<u32>(47879u, 1u, 67895u))), vec2<f32>(539f, 621f), -972f), Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 32505i, 9013i, 2147483647i), vec3<u32>(8116u, 30587u, 1u)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, -26527i, -49581i, -33103i), vec3<u32>(10195u, 1u, 4294967295u)), vec2<f32>(-1000f, 1585f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -1i, 1i, 1i), vec3<u32>(4294967295u, 0u, 0u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), vec3<u32>(25890u, 16762u, 8740u))), vec2<f32>(-434f, 379f), -189f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(false, false), vec4<i32>(9885i, 2147483647i, -27427i, 1i), vec3<u32>(0u, 0u, 1u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-26291i, 2147483647i, 3736i, 0i), vec3<u32>(33486u, 113322u, 0u)), vec2<f32>(794f, 1000f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(920i, 0i, -36076i, 0i), vec3<u32>(69051u, 26181u, 94158u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, -54375i, 32447i, 48925i), vec3<u32>(60201u, 1u, 11429u))), vec2<f32>(-519f, -499f), -1000f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, 10019i, -26253i, -30083i), vec3<u32>(4336u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -11287i, i32(-2147483648), -30562i), vec3<u32>(0u, 53759u, 0u)), vec2<f32>(-936f, 781f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(14133i, 12417i, 2147483647i, 1i), vec3<u32>(31297u, 21937u, 36617u)))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-18552i, 0i, 35806i, -12044i), vec3<u32>(0u, 0u, 0u))), vec2<f32>(1307f, 1112f), 1116f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, true), vec4<i32>(4889i, 29566i, i32(-2147483648), 15555i), vec3<u32>(0u, 74280u, 1u)), Struct_1(vec2<bool>(true, false), vec4<i32>(-8996i, 1i, 54229i, 0i), vec3<u32>(9819u, 1u, 26818u)), vec2<f32>(-1995f, -1354f), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 15737i, 0i, 0i), vec3<u32>(12868u, 15236u, 18019u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 1i, 35000i, -2475i), vec3<u32>(9872u, 1u, 51735u))), vec2<f32>(1000f, -271f), -1494f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, false), vec4<i32>(8489i, 8920i, 0i, -1i), vec3<u32>(35176u, 1u, 0u)), Struct_1(vec2<bool>(true, true), vec4<i32>(38113i, -25217i, 2147483647i, -1i), vec3<u32>(1u, 101618u, 1u)), vec2<f32>(976f, 582f), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-5181i, -66277i, 2147483647i, -12295i), vec3<u32>(83600u, 1u, 1u)))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-15777i, -52426i, -6589i, -41845i), vec3<u32>(4294967295u, 0u, 1u))), vec2<f32>(-516f, -353f), 2179f), Struct_5(Struct_3(false, Struct_1(vec2<bool>(true, true), vec4<i32>(19430i, -33113i, 28773i, i32(-2147483648)), vec3<u32>(24u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, true), vec4<i32>(15311i, 0i, -66277i, i32(-2147483648)), vec3<u32>(139626u, 4294967295u, 62270u)), vec2<f32>(-136f, -1000f), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(1i, -3013i, -1i, i32(-2147483648)), vec3<u32>(4294967295u, 37995u, 4294967295u)))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -23958i, 38116i, 0i), vec3<u32>(1u, 1u, 4294967295u))), vec2<f32>(581f, 985f), -1596f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> bool {
    global0 = array<Struct_5, 30>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-353f, -931f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-772f)) + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -875f)))), true));
    var var_1 = Struct_5(Struct_3(true, Struct_1(vec2<bool>(true, true), u_input.a, ~abs(vec3<u32>(76685u, 36277u, 4294967295u))), Struct_1(vec2<bool>(true, any(vec2<bool>(true, false))), u_input.a, vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1385f + -548f), -1573f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(287f, -232f) * vec2<f32>(1566f, -670f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -278f)))), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.a.x, 38574i, 32052i, 0i) << (vec4<u32>(0u, 41717u, 26710u, 4294967295u) % vec4<u32>(32u)), vec3<u32>(1u, 1u, 1u)))), Struct_2(Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 16529u, 70374u), _wgslsmith_mod_vec3_u32(vec3<u32>(49788u, 4294967295u, 103567u), vec3<u32>(4294967295u, 14569u, 4294967295u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(332f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1123f, -1395f), vec2<f32>(-578f, 1754f))) + vec2<f32>(-644f, -753f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))) + vec2<f32>(-1956f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1673f))))), _wgslsmith_f_op_f32(round(-123f)));
    var var_2 = var_1.a;
    let var_3 = ~var_1.a.c.c.x;
    return any(vec4<bool>(false, var_2.a, all(var_1.b.a.a), any(var_1.b.a.a)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = ~(~(-1i));
    var_0 = 1i;
    var_0 = 62067i;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1105f, 133f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(758f, 572f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(arg_1 - -1999f)), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_2 = arg_0.a;
    return vec4<bool>(func_2() || !arg_0.a.a.x, var_2.a.x, arg_0.a.a.x, var_2.a.x);
}

fn func_3() -> vec2<bool> {
    var var_0 = any(vec2<bool>(!all(func_1(Struct_2(Struct_1(vec2<bool>(false, true), u_input.a, vec3<u32>(99963u, 0u, 0u))), -1000f, vec3<i32>(56182i, -628i, u_input.a.x)).xw), !(true | func_2())));
    var var_1 = Struct_5(Struct_3(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)), Struct_1(vec2<bool>(all(vec3<bool>(false, false, false)), true), -(u_input.a | vec4<i32>(-8711i, 37637i, 1i, 2147483647i)), vec3<u32>(1u, 1u, 1u)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), _wgslsmith_div_vec4_i32(u_input.a, min(vec4<i32>(26875i, u_input.a.x, u_input.a.x, 31380i), u_input.a)), countOneBits(vec3<u32>(1u, 7929u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, 795f)))) + vec2<f32>(1222f, _wgslsmith_f_op_f32(636f * 1046f))), Struct_2(Struct_1(vec2<bool>(false, true), min(u_input.a, u_input.a), vec3<u32>(8866u, 42848u, 1805u)))), Struct_2(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_2()), ~u_input.a, countOneBits(countOneBits(vec3<u32>(4294967295u, 26486u, 17446u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1214f, 625f) * vec2<f32>(1000f, -1949f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, -1758f) - vec2<f32>(1087f, 617f))) * vec2<f32>(1f, 1f))), -1017f);
    let var_2 = ~var_1.a.c.c.x;
    var_0 = any(vec3<bool>(any(var_1.b.a.a), any(var_1.a.b.a), any(!var_1.b.a.a)));
    let var_3 = !vec4<bool>(var_1.b.a.a.x, var_1.b.a.a.x, !var_1.b.a.a.x, all(!vec3<bool>(var_1.a.e.a.a.x, true, true)) && !func_2());
    return !var_3.ww;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = -1336f;
    let var_1 = Struct_2(arg_0.b);
    let var_2 = arg_0.e;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(select(var_0, var_0, select(1u, 82622u, true) != 68627u)), _wgslsmith_f_op_f32(max(var_0, -669f)), var_2.a.b.zz, 2147483647i);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x), _wgslsmith_div_f32(-535f, -318f), _wgslsmith_f_op_f32(ceil(1529f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(277f, var_0, arg_0.d.x)))))) - vec3<f32>(var_3.a, _wgslsmith_f_op_f32(exp2(var_3.b)), -1193f));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 30>();
    let var_0 = func_4(Struct_3(all(select(func_1(Struct_2(Struct_1(vec2<bool>(false, true), u_input.a, vec3<u32>(48603u, 4294967295u, 66532u))), -1879f, u_input.a.xxz), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), Struct_1(vec2<bool>(true, true), -u_input.a | vec4<i32>(u_input.a.x, -1i, 1i, 71361i), reverseBits(~vec3<u32>(4294967295u, 18068u, 0u))), Struct_1(func_3(), -u_input.a, vec3<u32>(abs(4294967295u), 1u, select(31429u, 140548u, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2021f, -242f), vec2<f32>(604f, 279f), vec2<bool>(false, true))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(887f)), -694f)), Struct_2(Struct_1(vec2<bool>(false, false), ~vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i), select(vec3<u32>(0u, 29860u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<bool>(true, true, true))))), vec4<bool>(all(vec3<bool>(false, true, true)), all(!func_3()), true, func_3().x), firstLeadingBit(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(30351u, 0u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(0u, 1u, 29208u, 4294967295u)))) & vec4<u32>(4294967295u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(31964u, 43110u), vec2<u32>(0u, 112084u)), ~0u), firstTrailingBit(~2667u), 1u));
    var var_1 = vec2<i32>(-_wgslsmith_dot_vec4_i32(var_0.b, var_0.b ^ var_0.b) >> (firstTrailingBit(~var_0.c.x) % 32u), ~2147483647i);
    var_1 = ~u_input.a.yx;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(970f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-176f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f * 557f))), !func_3().x || func_1(Struct_2(var_0), _wgslsmith_f_op_f32(floor(733f)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, 1i, 17444i), vec3<i32>(var_0.b.x, -1i, -38491i))).x))));
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(var_0.c.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.x, var_0.c.x), ~var_0.c.yz), max(var_0.c.x, _wgslsmith_clamp_u32(~1u, 112747u, var_0.c.x))), var_0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, var_0.c.x, var_0.c.x), var_0.c.x, var_0.c.x, var_0.c.x), max(~vec4<u32>(1u, 95525u, var_0.c.x, var_0.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.c.x, var_0.c.x, 1u), vec4<u32>(var_0.c.x, var_0.c.x, 92604u, var_0.c.x)))) | 11357u, ~var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.zwz, var_0.b.zwz & _wgslsmith_clamp_vec3_i32(var_0.b.yww, vec3<i32>(var_0.b.x, 1i, var_0.b.x), vec3<i32>(var_0.b.x, u_input.a.x, 2147483647i))), 4294967295u, var_3.xx, _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 42781i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -37044i, var_0.b.x), var_0.b.zzx)), ~1i));
}

