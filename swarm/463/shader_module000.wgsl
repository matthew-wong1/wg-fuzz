struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: u32,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 56026u, 42050u, 1655u), 4294967295u), vec4<f32>(-143f, 638f, 605f, 905f)), 1u, vec3<f32>(475f, 121f, 854f), vec2<i32>(21256i, i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(0u, 16213u, 48638u, 0u), 1u), vec4<f32>(-665f, -825f, -1100f, -923f))), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 23925u, 4294967295u, 0u), 35959u), vec4<f32>(-307f, 1819f, -2993f, -596f)), 1u, vec3<f32>(257f, 835f, -1547f), vec2<i32>(i32(-2147483648), 1i), Struct_2(Struct_1(vec4<u32>(34257u, 4294967295u, 1u, 1496u), 12620u), vec4<f32>(532f, 549f, -1388f, 574f))), Struct_3(Struct_2(Struct_1(vec4<u32>(9885u, 10875u, 0u, 43050u), 76482u), vec4<f32>(189f, 115f, -957f, 690f)), 42053u, vec3<f32>(-115f, 537f, 281f), vec2<i32>(4737i, -21560i), Struct_2(Struct_1(vec4<u32>(41459u, 1u, 0u, 10405u), 129495u), vec4<f32>(1313f, -405f, -1534f, -130f))), Struct_3(Struct_2(Struct_1(vec4<u32>(10307u, 14792u, 28259u, 6575u), 21043u), vec4<f32>(-723f, -954f, -2700f, -177f)), 4294967295u, vec3<f32>(-688f, -1000f, -126f), vec2<i32>(0i, i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 67774u, 0u), 58552u), vec4<f32>(263f, -2104f, -181f, 296f))), Struct_3(Struct_2(Struct_1(vec4<u32>(47149u, 0u, 0u, 0u), 1u), vec4<f32>(683f, -1333f, 1210f, -123f)), 9241u, vec3<f32>(115f, -463f, -1000f), vec2<i32>(0i, 109i), Struct_2(Struct_1(vec4<u32>(6904u, 1u, 11521u, 65749u), 0u), vec4<f32>(1724f, 872f, 1625f, 370f))), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 29742u), 70515u), vec4<f32>(135f, -2227f, 1152f, -195f)), 0u, vec3<f32>(1124f, 765f, -151f), vec2<i32>(1i, 14623i), Struct_2(Struct_1(vec4<u32>(34545u, 1u, 74247u, 26118u), 26849u), vec4<f32>(430f, 622f, -417f, -823f))), Struct_3(Struct_2(Struct_1(vec4<u32>(101342u, 0u, 52738u, 20356u), 3720u), vec4<f32>(918f, 667f, 1446f, 893f)), 1u, vec3<f32>(693f, -921f, -1082f), vec2<i32>(-1i, 29857i), Struct_2(Struct_1(vec4<u32>(1u, 1u, 0u, 126750u), 4294967295u), vec4<f32>(1797f, -1030f, -1048f, -220f))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 9132u, 0u, 1u), 8396u), vec4<f32>(263f, -1757f, 493f, -1025f)), 55357u, vec3<f32>(-1937f, -2137f, -861f), vec2<i32>(1i, 87555i), Struct_2(Struct_1(vec4<u32>(54905u, 4294967295u, 87496u, 1u), 58605u), vec4<f32>(-350f, 1613f, 638f, 1664f))), Struct_3(Struct_2(Struct_1(vec4<u32>(30976u, 1u, 1u, 37305u), 38457u), vec4<f32>(897f, 395f, -1000f, -469f)), 41327u, vec3<f32>(-1607f, 289f, 1000f), vec2<i32>(62502i, 80i), Struct_2(Struct_1(vec4<u32>(21870u, 5204u, 30947u, 4294967295u), 4294967295u), vec4<f32>(1810f, 194f, 2243f, 1377f))), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u), 26595u), vec4<f32>(276f, 1619f, -538f, 408f)), 0u, vec3<f32>(1123f, 674f, -810f), vec2<i32>(-40947i, 2147483647i), Struct_2(Struct_1(vec4<u32>(17143u, 0u, 4294967295u, 1u), 4294967295u), vec4<f32>(1332f, -2051f, 1860f, -124f))), Struct_3(Struct_2(Struct_1(vec4<u32>(43785u, 29185u, 1u, 34121u), 44460u), vec4<f32>(932f, 865f, 713f, -725f)), 4294967295u, vec3<f32>(964f, 992f, 177f), vec2<i32>(2147483647i, 2147483647i), Struct_2(Struct_1(vec4<u32>(4294967295u, 28437u, 1u, 4294967295u), 0u), vec4<f32>(-2057f, -1506f, -462f, 476f))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 5957u, 1u), 4294967295u), vec4<f32>(-2453f, -196f, -784f, 428f)), 29913u, vec3<f32>(-276f, 275f, -236f), vec2<i32>(18571i, -30510i), Struct_2(Struct_1(vec4<u32>(22621u, 0u, 36760u, 1u), 0u), vec4<f32>(-189f, 419f, -493f, -471f))), Struct_3(Struct_2(Struct_1(vec4<u32>(104304u, 29349u, 0u, 13035u), 1u), vec4<f32>(611f, 687f, -909f, 1075f)), 0u, vec3<f32>(-321f, -2432f, -785f), vec2<i32>(-39089i, 2147483647i), Struct_2(Struct_1(vec4<u32>(1u, 39423u, 0u, 1u), 1u), vec4<f32>(1482f, 761f, 2275f, 746f))), Struct_3(Struct_2(Struct_1(vec4<u32>(1474u, 2465u, 6427u, 32477u), 4294967295u), vec4<f32>(-375f, 1000f, -1807f, -1239f)), 1u, vec3<f32>(1447f, -789f, 437f), vec2<i32>(1959i, 33595i), Struct_2(Struct_1(vec4<u32>(2236u, 116968u, 4294967295u, 4294967295u), 30986u), vec4<f32>(-534f, -1470f, -1553f, 809f))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 43982u), vec4<f32>(1000f, -909f, -119f, 336f)), 114124u, vec3<f32>(1035f, 634f, 891f), vec2<i32>(-14582i, 33131i), Struct_2(Struct_1(vec4<u32>(33511u, 1u, 45175u, 49581u), 1u), vec4<f32>(302f, -977f, 652f, -804f))), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 74049u, 1u, 11734u), 41244u), vec4<f32>(-171f, 1000f, -691f, -183f)), 903u, vec3<f32>(-267f, 1818f, 381f), vec2<i32>(-1i, -1i), Struct_2(Struct_1(vec4<u32>(4294967295u, 61618u, 0u, 32470u), 0u), vec4<f32>(1844f, 325f, 447f, 310f))));

var<private> global1: vec2<i32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(10500u, 69408u, 50061u, 68725u), 15462u), vec4<f32>(1087f, 128f, 1000f, -1000f));

var<private> global3: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec2<i32>(2147483647i, -28762i), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 32502u, 47390u), 0u), vec4<f32>(-882f, -631f, -1272f, 825f)), 42656u, vec3<f32>(-259f, -241f, 1000f), vec2<i32>(2147483647i, 2147483647i), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 11217u), 1u), vec4<f32>(1014f, 515f, 1207f, -426f))), 4294967295u, Struct_2(Struct_1(vec4<u32>(58442u, 3871u, 0u, 66824u), 19370u), vec4<f32>(-154f, 898f, 504f, -218f)), Struct_3(Struct_2(Struct_1(vec4<u32>(23241u, 31094u, 4294967295u, 353u), 98960u), vec4<f32>(-720f, -609f, -1000f, -1197f)), 1u, vec3<f32>(853f, 552f, -197f), vec2<i32>(6586i, -61813i), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 9347u), 1u), vec4<f32>(-1543f, -761f, -1000f, 932f)))), Struct_4(vec2<i32>(2147483647i, 14287i), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), 1u), vec4<f32>(-481f, -294f, 156f, 1735f)), 4294967295u, vec3<f32>(-123f, -440f, -218f), vec2<i32>(12497i, 2147483647i), Struct_2(Struct_1(vec4<u32>(8646u, 26227u, 0u, 43081u), 9704u), vec4<f32>(-2126f, 393f, -790f, 161f))), 1u, Struct_2(Struct_1(vec4<u32>(54224u, 4294967295u, 21844u, 31222u), 1u), vec4<f32>(-1960f, -702f, 715f, -512f)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 76158u, 1u, 0u), 32080u), vec4<f32>(-671f, -1287f, -1145f, 1345f)), 4294967295u, vec3<f32>(1444f, -449f, 608f), vec2<i32>(19485i, 21621i), Struct_2(Struct_1(vec4<u32>(1u, 41420u, 24449u, 15522u), 98257u), vec4<f32>(162f, -296f, 718f, 466f)))), Struct_4(vec2<i32>(10139i, 20490i), Struct_3(Struct_2(Struct_1(vec4<u32>(9522u, 4294967295u, 32708u, 4294967295u), 4294967295u), vec4<f32>(-104f, -185f, 1466f, -725f)), 65850u, vec3<f32>(-360f, 1548f, 835f), vec2<i32>(15484i, 2147483647i), Struct_2(Struct_1(vec4<u32>(0u, 59034u, 19125u, 31952u), 7140u), vec4<f32>(-1431f, 675f, 848f, -305f))), 0u, Struct_2(Struct_1(vec4<u32>(53343u, 4294967295u, 16762u, 4294967295u), 0u), vec4<f32>(522f, 918f, 760f, -726f)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 0u, 29856u, 1u), 1u), vec4<f32>(-1000f, -411f, 1126f, -851f)), 11539u, vec3<f32>(-293f, 1718f, -215f), vec2<i32>(-1i, 33080i), Struct_2(Struct_1(vec4<u32>(29513u, 0u, 1u, 4294967295u), 1u), vec4<f32>(1189f, -830f, 1281f, -743f)))), Struct_4(vec2<i32>(-1i, -13139i), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 74463u, 0u), 4294967295u), vec4<f32>(-1000f, 1041f, -261f, 819f)), 4294967295u, vec3<f32>(260f, -590f, -1062f), vec2<i32>(1i, -30334i), Struct_2(Struct_1(vec4<u32>(1u, 16053u, 11568u, 90164u), 1u), vec4<f32>(761f, -340f, -922f, 1760f))), 43522u, Struct_2(Struct_1(vec4<u32>(1u, 0u, 37926u, 4294967295u), 23677u), vec4<f32>(-1476f, 1078f, -364f, -198f)), Struct_3(Struct_2(Struct_1(vec4<u32>(624u, 32214u, 4294967295u, 4294967295u), 0u), vec4<f32>(-899f, 452f, -290f, -1446f)), 4294967295u, vec3<f32>(1356f, 744f, 455f), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(1u, 37644u, 4294967295u, 18708u), 4294967295u), vec4<f32>(338f, -418f, -3235f, 525f)))), Struct_4(vec2<i32>(1i, 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(38841u, 4294967295u, 54434u, 0u), 0u), vec4<f32>(332f, -345f, -816f, 392f)), 4294967295u, vec3<f32>(135f, -1384f, 735f), vec2<i32>(-86932i, 10999i), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 22635u, 14321u), 0u), vec4<f32>(-1000f, -1000f, -928f, -1412f))), 57561u, Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 57460u), 0u), vec4<f32>(2068f, 422f, -1796f, -417f)), Struct_3(Struct_2(Struct_1(vec4<u32>(11547u, 66578u, 1u, 4294967295u), 100307u), vec4<f32>(-355f, -625f, -1282f, -527f)), 21087u, vec3<f32>(121f, -668f, -2051f), vec2<i32>(2147483647i, 24825i), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 34990u), 1u), vec4<f32>(-917f, -1335f, 530f, 551f)))), Struct_4(vec2<i32>(-1i, 6075i), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 32792u, 18324u), 35231u), vec4<f32>(-1248f, 1000f, -269f, -1426f)), 4294967295u, vec3<f32>(787f, -1532f, -446f), vec2<i32>(0i, -1618i), Struct_2(Struct_1(vec4<u32>(1u, 0u, 74435u, 4294967295u), 4294967295u), vec4<f32>(867f, 162f, 921f, 457f))), 1u, Struct_2(Struct_1(vec4<u32>(70885u, 0u, 4294967295u, 1u), 46616u), vec4<f32>(-395f, -2291f, -2260f, -845f)), Struct_3(Struct_2(Struct_1(vec4<u32>(32178u, 1u, 20138u, 4294967295u), 38455u), vec4<f32>(147f, -1851f, -882f, -553f)), 20303u, vec3<f32>(1051f, 122f, 1493f), vec2<i32>(-1i, -10512i), Struct_2(Struct_1(vec4<u32>(2103u, 0u, 27018u, 35785u), 48630u), vec4<f32>(796f, -879f, -512f, 621f)))), Struct_4(vec2<i32>(34781i, 1i), Struct_3(Struct_2(Struct_1(vec4<u32>(21348u, 37984u, 4294967295u, 73307u), 1u), vec4<f32>(-315f, 1538f, 2145f, -949f)), 40280u, vec3<f32>(262f, 728f, -1000f), vec2<i32>(65343i, -6795i), Struct_2(Struct_1(vec4<u32>(52112u, 29056u, 26619u, 1u), 4294967295u), vec4<f32>(554f, 903f, -1000f, -546f))), 1u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 21904u, 29874u), 0u), vec4<f32>(-384f, -1779f, -821f, -1735f)), Struct_3(Struct_2(Struct_1(vec4<u32>(49092u, 32033u, 0u, 38913u), 89633u), vec4<f32>(-832f, -1059f, -541f, 157f)), 8841u, vec3<f32>(-506f, 727f, 1000f), vec2<i32>(0i, -1i), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 43777u, 63155u), 1u), vec4<f32>(781f, 1590f, 929f, 1196f)))), Struct_4(vec2<i32>(24785i, 8524i), Struct_3(Struct_2(Struct_1(vec4<u32>(57407u, 78571u, 23549u, 1u), 0u), vec4<f32>(646f, -755f, -1993f, 754f)), 64137u, vec3<f32>(-1000f, -1194f, -1915f), vec2<i32>(17469i, -4072i), Struct_2(Struct_1(vec4<u32>(49423u, 1u, 33379u, 1u), 0u), vec4<f32>(1206f, -136f, -695f, 1581f))), 67004u, Struct_2(Struct_1(vec4<u32>(19945u, 0u, 22898u, 4294967295u), 4294967295u), vec4<f32>(-491f, 649f, -1111f, -1508f)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 36284u, 24630u), 57896u), vec4<f32>(-604f, 341f, 265f, -1188f)), 4294967295u, vec3<f32>(908f, -716f, 195f), vec2<i32>(-1i, 15010i), Struct_2(Struct_1(vec4<u32>(0u, 1u, 26671u, 1u), 29717u), vec4<f32>(-2497f, -1041f, -730f, -289f)))), Struct_4(vec2<i32>(0i, 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 40155u, 4294967295u, 4294967295u), 0u), vec4<f32>(-1000f, -164f, 1139f, -274f)), 1u, vec3<f32>(-1908f, 516f, -953f), vec2<i32>(0i, 0i), Struct_2(Struct_1(vec4<u32>(36930u, 12580u, 4294967295u, 58531u), 0u), vec4<f32>(-1130f, -955f, 803f, -538f))), 1u, Struct_2(Struct_1(vec4<u32>(34200u, 1593u, 0u, 0u), 27232u), vec4<f32>(1013f, 1000f, -671f, -1019f)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 1u, 0u, 13662u), 8815u), vec4<f32>(-1360f, 1000f, 460f, 1269f)), 74896u, vec3<f32>(842f, -362f, 595f), vec2<i32>(-48774i, 1i), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), 4590u), vec4<f32>(-1249f, -1153f, 713f, 677f)))), Struct_4(vec2<i32>(-48258i, 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 66112u, 0u, 4294967295u), 100965u), vec4<f32>(-499f, -498f, 827f, 1000f)), 4294967295u, vec3<f32>(-1652f, -668f, -170f), vec2<i32>(15041i, 19101i), Struct_2(Struct_1(vec4<u32>(29295u, 78157u, 57290u, 1u), 1u), vec4<f32>(-482f, -776f, 304f, 1747f))), 1u, Struct_2(Struct_1(vec4<u32>(0u, 46748u, 41343u, 10031u), 23253u), vec4<f32>(344f, -534f, 2750f, -242f)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 66093u), 48821u), vec4<f32>(-1097f, 366f, -1691f, 1000f)), 0u, vec3<f32>(-137f, 342f, 1614f), vec2<i32>(52097i, 33382i), Struct_2(Struct_1(vec4<u32>(2250u, 0u, 0u, 0u), 55377u), vec4<f32>(-1483f, 1204f, -832f, -443f)))), Struct_4(vec2<i32>(1i, 2147483647i), Struct_3(Struct_2(Struct_1(vec4<u32>(64792u, 35926u, 1u, 36868u), 0u), vec4<f32>(-1865f, 622f, 883f, 996f)), 58981u, vec3<f32>(-1091f, 978f, -211f), vec2<i32>(-1i, i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1393u), 1u), vec4<f32>(2344f, -769f, 1805f, -1192f))), 51583u, Struct_2(Struct_1(vec4<u32>(2643u, 33987u, 68210u, 0u), 0u), vec4<f32>(1221f, 2193f, -1343f, -603f)), Struct_3(Struct_2(Struct_1(vec4<u32>(49843u, 0u, 17013u, 24049u), 0u), vec4<f32>(795f, 1987f, 174f, -1253f)), 53307u, vec3<f32>(337f, -1288f, -1132f), vec2<i32>(-1i, 43243i), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 21508u, 50447u), 1u), vec4<f32>(-293f, -538f, -1124f, 297f)))), Struct_4(vec2<i32>(i32(-2147483648), 21545i), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 41513u), vec4<f32>(-334f, -654f, 1492f, -1000f)), 1u, vec3<f32>(-1265f, -168f, 538f), vec2<i32>(18507i, 2147483647i), Struct_2(Struct_1(vec4<u32>(16616u, 4294967295u, 6596u, 38672u), 94502u), vec4<f32>(-162f, 202f, 1239f, 736f))), 4294967295u, Struct_2(Struct_1(vec4<u32>(47202u, 1u, 1u, 1u), 50217u), vec4<f32>(321f, -1397f, 259f, -828f)), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 17619u, 4294967295u), 0u), vec4<f32>(229f, 608f, 884f, -1000f)), 0u, vec3<f32>(-808f, 815f, -246f), vec2<i32>(-17852i, -1i), Struct_2(Struct_1(vec4<u32>(0u, 42304u, 53408u, 4294967295u), 63127u), vec4<f32>(-356f, 1228f, 144f, 1136f)))), Struct_4(vec2<i32>(178i, 0i), Struct_3(Struct_2(Struct_1(vec4<u32>(21115u, 0u, 16784u, 31268u), 30819u), vec4<f32>(1691f, -866f, 865f, -1313f)), 56816u, vec3<f32>(-226f, -682f, -1022f), vec2<i32>(-27448i, -20629i), Struct_2(Struct_1(vec4<u32>(561u, 44104u, 31585u, 0u), 364u), vec4<f32>(2285f, -1000f, 1164f, 1152f))), 0u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 103010u, 0u), 1u), vec4<f32>(381f, -1000f, -1036f, 666f)), Struct_3(Struct_2(Struct_1(vec4<u32>(25502u, 0u, 14246u, 4294967295u), 0u), vec4<f32>(-1541f, -332f, -809f, -854f)), 52185u, vec3<f32>(-364f, 751f, -1587f), vec2<i32>(0i, i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(76437u, 14718u, 11340u, 36426u), 1u), vec4<f32>(664f, -1557f, 499f, -840f)))), Struct_4(vec2<i32>(0i, 8216i), Struct_3(Struct_2(Struct_1(vec4<u32>(16622u, 1u, 64193u, 4294967295u), 4294967295u), vec4<f32>(319f, 355f, -1364f, 829f)), 4294967295u, vec3<f32>(870f, -519f, -1417f), vec2<i32>(-1i, 2147483647i), Struct_2(Struct_1(vec4<u32>(77084u, 63077u, 81375u, 70213u), 1u), vec4<f32>(926f, -448f, 592f, 584f))), 69817u, Struct_2(Struct_1(vec4<u32>(4294967295u, 43697u, 25089u, 1u), 9325u), vec4<f32>(-1000f, -238f, 745f, 2287f)), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 0u, 93471u, 37433u), 1u), vec4<f32>(749f, 1827f, 700f, 2163f)), 0u, vec3<f32>(385f, 552f, -1767f), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec4<u32>(0u, 6709u, 4294967295u, 1u), 55184u), vec4<f32>(110f, -421f, -636f, 751f)))), Struct_4(vec2<i32>(4357i, i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec4<u32>(38696u, 67603u, 121095u, 4294967295u), 4294967295u), vec4<f32>(-422f, 722f, -422f, -321f)), 4513u, vec3<f32>(-813f, -286f, -745f), vec2<i32>(16795i, 1i), Struct_2(Struct_1(vec4<u32>(0u, 43418u, 42295u, 1u), 1u), vec4<f32>(-1402f, -978f, -953f, -1058f))), 0u, Struct_2(Struct_1(vec4<u32>(1430u, 1u, 15748u, 1u), 1u), vec4<f32>(906f, 1000f, 130f, 1029f)), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 3396u, 23841u, 0u), 1u), vec4<f32>(-919f, -818f, -1000f, 1921f)), 0u, vec3<f32>(-2157f, 1000f, 1261f), vec2<i32>(-12883i, 2147483647i), Struct_2(Struct_1(vec4<u32>(24834u, 1u, 0u, 14668u), 0u), vec4<f32>(1000f, -1919f, -1045f, 135f)))), Struct_4(vec2<i32>(16916i, 9581i), Struct_3(Struct_2(Struct_1(vec4<u32>(17585u, 1u, 1u, 10876u), 0u), vec4<f32>(-1506f, -701f, 110f, -2084f)), 4294967295u, vec3<f32>(-893f, 1000f, -1370f), vec2<i32>(i32(-2147483648), 688i), Struct_2(Struct_1(vec4<u32>(0u, 5194u, 0u, 0u), 15034u), vec4<f32>(-1000f, 135f, -252f, 791f))), 23380u, Struct_2(Struct_1(vec4<u32>(1u, 16239u, 0u, 76788u), 46563u), vec4<f32>(1053f, 1054f, 969f, -1612f)), Struct_3(Struct_2(Struct_1(vec4<u32>(37802u, 101813u, 20299u, 27276u), 59405u), vec4<f32>(-1241f, -415f, -459f, 556f)), 0u, vec3<f32>(-622f, -549f, -180f), vec2<i32>(0i, -21761i), Struct_2(Struct_1(vec4<u32>(35503u, 1u, 0u, 4294967295u), 1u), vec4<f32>(1507f, -327f, -742f, 1000f)))));

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    return global1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 942f)), global2.b.yx)) - vec2<f32>(-1294f, _wgslsmith_f_op_f32(-arg_0.x))));
    global0 = array<Struct_3, 16>();
    global3 = array<Struct_4, 16>();
    let var_1 = arg_0.zx;
    global1 = vec2<i32>(func_3(), global1.x);
    return Struct_5(_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(784f, var_1.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-288f))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(global2.b.x, _wgslsmith_f_op_f32(trunc(global2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_div_f32(-435f, global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-624f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1246f))))), u_input.b);
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(~15367i, ~(-2147483647i)), select((_wgslsmith_div_vec2_i32(vec2<i32>(global1.x, -1i), vec2<i32>(20423i, global1.x)) << (max(vec2<u32>(0u, global2.a.a.x), vec2<u32>(global2.a.b, global2.a.a.x)) % vec2<u32>(32u))) & select(~vec2<i32>(global1.x, global1.x), countOneBits(vec2<i32>(u_input.a, 31883i)), vec2<bool>(false, false)), reverseBits(vec2<i32>(abs(1i), firstLeadingBit(52821i))), select(true, u_input.a <= firstTrailingBit(u_input.a), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1566f, 486f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(f32(-1f) * -159f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-486f)))), -1157f, global2.b.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2.b, global2.b, true))))));
    let var_3 = 0u < countOneBits(global2.a.a.x);
    return StorageBuffer(56658u, ~global2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 16>();
    let var_0 = -8300i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-global2.b);
    let var_2 = Struct_2(global2.a, var_1);
    global3 = array<Struct_4, 16>();
    let x = u_input.a;
    s_output = func_1();
}

