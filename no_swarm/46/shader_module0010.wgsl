struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec3<u32>(55402u, 24307u, 1u), vec4<u32>(24931u, 0u, 4294967295u, 46537u), vec4<f32>(-433f, -208f, -1000f, 1350f), vec2<u32>(37774u, 142160u)), Struct_1(vec3<u32>(0u, 0u, 1u), vec4<u32>(31656u, 52888u, 56901u, 91442u), vec4<f32>(-120f, 811f, 1016f, 137f), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(97540u, 4294967295u, 15103u), vec4<u32>(4294967295u, 29963u, 0u, 0u), vec4<f32>(1795f, 1362f, -1000f, 343f), vec2<u32>(50516u, 28552u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec4<u32>(78196u, 4294967295u, 4294967295u, 84713u), vec4<f32>(1665f, -3266f, -221f, -838f), vec2<u32>(3679u, 14380u)), Struct_1(vec3<u32>(0u, 4294967295u, 51794u), vec4<u32>(1u, 21792u, 1u, 1u), vec4<f32>(2029f, 844f, -1257f, 2404f), vec2<u32>(24667u, 40759u))), Struct_2(Struct_1(vec3<u32>(47753u, 4294967295u, 9232u), vec4<u32>(17983u, 6094u, 0u, 38870u), vec4<f32>(1092f, -455f, -806f, -1269f), vec2<u32>(4294967295u, 46597u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 14725u), vec4<u32>(4294967295u, 0u, 26171u, 1u), vec4<f32>(499f, -252f, -139f, -407f), vec2<u32>(51397u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 1u), vec4<u32>(27640u, 93133u, 1u, 41237u), vec4<f32>(1000f, 551f, 1000f, 1180f), vec2<u32>(9736u, 0u)), Struct_1(vec3<u32>(46703u, 57212u, 33170u), vec4<u32>(1u, 0u, 0u, 32582u), vec4<f32>(-482f, 240f, -1072f, -802f), vec2<u32>(22244u, 896u)), Struct_1(vec3<u32>(0u, 25930u, 54083u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<f32>(-106f, 1830f, 169f, 713f), vec2<u32>(1u, 28321u))), Struct_2(Struct_1(vec3<u32>(120001u, 4294967295u, 4294967295u), vec4<u32>(69227u, 0u, 0u, 93673u), vec4<f32>(333f, -2365f, 153f, 1528f), vec2<u32>(0u, 5598u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 62084u), vec4<u32>(0u, 0u, 3263u, 41827u), vec4<f32>(1168f, 273f, 1156f, -250f), vec2<u32>(4294967295u, 9120u)), Struct_1(vec3<u32>(4294967295u, 3126u, 0u), vec4<u32>(57262u, 1u, 98971u, 4294967295u), vec4<f32>(-1000f, -414f, 1540f, -443f), vec2<u32>(36824u, 24080u)), Struct_1(vec3<u32>(84530u, 3691u, 1131u), vec4<u32>(48156u, 4294967295u, 59192u, 1u), vec4<f32>(-1449f, -550f, 732f, 278f), vec2<u32>(1u, 6782u)), Struct_1(vec3<u32>(2655u, 1u, 1u), vec4<u32>(1u, 4294967295u, 26320u, 1u), vec4<f32>(-1877f, 1454f, 420f, 1000f), vec2<u32>(23521u, 7372u))), Struct_2(Struct_1(vec3<u32>(24223u, 1u, 4294967295u), vec4<u32>(14626u, 4294967295u, 4294967295u, 43133u), vec4<f32>(1492f, -1133f, -2299f, 1509f), vec2<u32>(1250u, 40829u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<u32>(1u, 0u, 25874u, 4294967295u), vec4<f32>(-1257f, 1000f, -1736f, -474f), vec2<u32>(4294967295u, 28986u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(44696u, 1u, 37834u, 18849u), vec4<f32>(1000f, 139f, -1824f, 721f), vec2<u32>(97u, 0u)), Struct_1(vec3<u32>(0u, 27431u, 12313u), vec4<u32>(23061u, 14568u, 81032u, 34314u), vec4<f32>(363f, -117f, -2498f, 510f), vec2<u32>(1u, 104201u)), Struct_1(vec3<u32>(9356u, 4294967295u, 1u), vec4<u32>(1023u, 4294967295u, 4294967295u, 0u), vec4<f32>(582f, 158f, 830f, 845f), vec2<u32>(0u, 0u))), Struct_2(Struct_1(vec3<u32>(19374u, 0u, 100607u), vec4<u32>(6252u, 1u, 108282u, 4294967295u), vec4<f32>(550f, -1030f, 476f, -431f), vec2<u32>(8464u, 735u)), Struct_1(vec3<u32>(41442u, 4294967295u, 4294967295u), vec4<u32>(0u, 31768u, 47050u, 0u), vec4<f32>(220f, -1000f, -1688f, -195f), vec2<u32>(81982u, 8109u)), Struct_1(vec3<u32>(70382u, 0u, 1u), vec4<u32>(1u, 1u, 0u, 1u), vec4<f32>(2059f, -301f, 454f, -896f), vec2<u32>(0u, 28058u)), Struct_1(vec3<u32>(4294967295u, 33614u, 1u), vec4<u32>(1u, 0u, 0u, 0u), vec4<f32>(-2324f, 408f, -750f, -121f), vec2<u32>(29275u, 6309u)), Struct_1(vec3<u32>(4294967295u, 29582u, 0u), vec4<u32>(1u, 633u, 37593u, 19137u), vec4<f32>(-1675f, -1000f, 513f, 405f), vec2<u32>(29044u, 23108u))), Struct_2(Struct_1(vec3<u32>(37789u, 4294967295u, 22844u), vec4<u32>(4294967295u, 54723u, 27047u, 39040u), vec4<f32>(-990f, 883f, 154f, 698f), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(65608u, 4294967295u, 4294967295u), vec4<u32>(37018u, 63289u, 4294967295u, 1u), vec4<f32>(871f, 1519f, -1801f, 507f), vec2<u32>(47062u, 59002u)), Struct_1(vec3<u32>(40866u, 35826u, 0u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<f32>(354f, -1428f, -1115f, 472f), vec2<u32>(10058u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 5842u, 1049u), vec4<f32>(1781f, 680f, -1264f, -495f), vec2<u32>(27816u, 1u)), Struct_1(vec3<u32>(1u, 54346u, 0u), vec4<u32>(7465u, 81604u, 87584u, 41876u), vec4<f32>(-451f, -297f, -780f, -1804f), vec2<u32>(59626u, 70434u))), Struct_2(Struct_1(vec3<u32>(13392u, 0u, 0u), vec4<u32>(0u, 0u, 18713u, 5832u), vec4<f32>(-676f, 266f, -588f, -1951f), vec2<u32>(4294967295u, 23683u)), Struct_1(vec3<u32>(25280u, 9855u, 2641u), vec4<u32>(4294967295u, 4294967295u, 5374u, 4294967295u), vec4<f32>(143f, 1142f, 681f, 1897f), vec2<u32>(1732u, 8937u)), Struct_1(vec3<u32>(39101u, 3361u, 5502u), vec4<u32>(1u, 30520u, 45989u, 4294967295u), vec4<f32>(-291f, -2689f, 239f, 338f), vec2<u32>(4294967295u, 17501u)), Struct_1(vec3<u32>(0u, 25701u, 4294967295u), vec4<u32>(49356u, 8619u, 1u, 27123u), vec4<f32>(-691f, -483f, 661f, -838f), vec2<u32>(1u, 0u)), Struct_1(vec3<u32>(0u, 4294967295u, 17606u), vec4<u32>(0u, 53439u, 1u, 67289u), vec4<f32>(764f, 148f, 1030f, 257f), vec2<u32>(3221u, 82472u))), Struct_2(Struct_1(vec3<u32>(1u, 19601u, 55224u), vec4<u32>(4294967295u, 11178u, 44048u, 39715u), vec4<f32>(-3303f, 933f, 1404f, 842f), vec2<u32>(66621u, 4294967295u)), Struct_1(vec3<u32>(79669u, 287u, 0u), vec4<u32>(0u, 6818u, 4294967295u, 4294967295u), vec4<f32>(551f, -302f, 188f, -525f), vec2<u32>(57020u, 27406u)), Struct_1(vec3<u32>(32959u, 27394u, 4294967295u), vec4<u32>(1u, 1u, 38795u, 4294967295u), vec4<f32>(-1000f, -726f, 117f, -1020f), vec2<u32>(12539u, 1u)), Struct_1(vec3<u32>(56204u, 916u, 4294967295u), vec4<u32>(57090u, 50521u, 4294967295u, 1u), vec4<f32>(1722f, -1170f, 788f, 1000f), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 32286u, 8010u), vec4<f32>(-1404f, -719f, -312f, 117f), vec2<u32>(37997u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(12666u, 4294967295u, 108105u), vec4<u32>(1u, 4294967295u, 43769u, 52693u), vec4<f32>(219f, 1181f, 794f, 592f), vec2<u32>(0u, 27857u)), Struct_1(vec3<u32>(114333u, 80505u, 26695u), vec4<u32>(4294967295u, 22114u, 13470u, 12185u), vec4<f32>(-644f, -1436f, -342f, -751f), vec2<u32>(58911u, 1u)), Struct_1(vec3<u32>(9360u, 0u, 1u), vec4<u32>(0u, 44014u, 3806u, 85459u), vec4<f32>(1338f, 565f, 1617f, 1682f), vec2<u32>(37002u, 1u)), Struct_1(vec3<u32>(1607u, 20264u, 8546u), vec4<u32>(79157u, 4294967295u, 4294967295u, 27687u), vec4<f32>(1676f, -801f, 755f, -631f), vec2<u32>(0u, 30750u)), Struct_1(vec3<u32>(37050u, 5100u, 29420u), vec4<u32>(11045u, 11341u, 0u, 14796u), vec4<f32>(-1759f, -188f, -1107f, 502f), vec2<u32>(0u, 29911u))), Struct_2(Struct_1(vec3<u32>(0u, 96056u, 4294967295u), vec4<u32>(4294967295u, 41609u, 0u, 3696u), vec4<f32>(859f, 951f, 936f, 1148f), vec2<u32>(18257u, 4294967295u)), Struct_1(vec3<u32>(1u, 13887u, 54115u), vec4<u32>(0u, 4294967295u, 4294967295u, 66288u), vec4<f32>(-219f, -465f, -109f, 1000f), vec2<u32>(0u, 114656u)), Struct_1(vec3<u32>(6237u, 4294967295u, 0u), vec4<u32>(31209u, 0u, 4294967295u, 49865u), vec4<f32>(-1719f, 1410f, 770f, -191f), vec2<u32>(83000u, 6087u)), Struct_1(vec3<u32>(0u, 0u, 14681u), vec4<u32>(41421u, 1u, 1170u, 1u), vec4<f32>(220f, 156f, -871f, 958f), vec2<u32>(12779u, 0u)), Struct_1(vec3<u32>(54642u, 4294967295u, 0u), vec4<u32>(0u, 8840u, 1u, 14828u), vec4<f32>(1500f, 498f, 1206f, -1845f), vec2<u32>(64890u, 1u))));

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(Struct_1(vec3<u32>(28085u, 0u, 1u), vec4<u32>(1u, 2960u, 1u, 106381u), vec4<f32>(-789f, -507f, 771f, 574f), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(1u, 33563u, 29681u), vec4<u32>(4294967295u, 1u, 1u, 40545u), vec4<f32>(-1000f, 553f, 331f, 1102f), vec2<u32>(103u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec4<u32>(0u, 4294967295u, 10857u, 48015u), vec4<f32>(-351f, 1555f, 692f, -298f), vec2<u32>(14901u, 1u)), Struct_1(vec3<u32>(0u, 0u, 0u), vec4<u32>(129918u, 83354u, 4294967295u, 73091u), vec4<f32>(-1578f, 1011f, -615f, 867f), vec2<u32>(42704u, 35397u)), Struct_1(vec3<u32>(0u, 55098u, 1u), vec4<u32>(1u, 0u, 56408u, 85376u), vec4<f32>(-550f, 132f, -720f, 532f), vec2<u32>(32056u, 63063u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 5074u), vec4<u32>(0u, 1u, 51395u, 16713u), vec4<f32>(-298f, -1805f, -137f, -1293f), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(8549u, 52878u, 1u), vec4<u32>(36587u, 38486u, 4294967295u, 0u), vec4<f32>(-1867f, 663f, -1744f, 449f), vec2<u32>(1u, 40162u)), Struct_1(vec3<u32>(17707u, 34946u, 58873u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<f32>(-288f, -1225f, -545f, 1489f), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(0u, 1u, 31931u), vec4<u32>(17568u, 7693u, 21162u, 38167u), vec4<f32>(3443f, 1295f, 1308f, 736f), vec2<u32>(79830u, 0u)), Struct_1(vec3<u32>(13890u, 4294967295u, 1u), vec4<u32>(111185u, 1u, 81992u, 27562u), vec4<f32>(-965f, -732f, 1331f, 1319f), vec2<u32>(4294967295u, 30161u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(37983u, 102275u, 28695u), vec4<u32>(6793u, 4294967295u, 1950u, 1u), vec4<f32>(1139f, -910f, 465f, -200f), vec2<u32>(37875u, 4294967295u)), Struct_1(vec3<u32>(18195u, 1u, 1u), vec4<u32>(24231u, 1u, 1u, 846u), vec4<f32>(2039f, 364f, -856f, -402f), vec2<u32>(129664u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 8798u, 1u), vec4<u32>(67089u, 1u, 35641u, 1u), vec4<f32>(-1040f, 748f, -214f, 244f), vec2<u32>(29383u, 1u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4995u, 0u), vec4<f32>(250f, 569f, 1000f, 752f), vec2<u32>(0u, 63944u)), Struct_1(vec3<u32>(18181u, 0u, 16727u), vec4<u32>(0u, 35549u, 8769u, 21328u), vec4<f32>(-825f, 361f, 3000f, -339f), vec2<u32>(15592u, 1u))), Struct_2(Struct_1(vec3<u32>(80605u, 0u, 35891u), vec4<u32>(4294967295u, 0u, 3317u, 0u), vec4<f32>(-1000f, -276f, -220f, -822f), vec2<u32>(1u, 47420u)), Struct_1(vec3<u32>(10572u, 4294967295u, 54689u), vec4<u32>(4294967295u, 13417u, 10510u, 10488u), vec4<f32>(1144f, -907f, -916f, -475f), vec2<u32>(0u, 1328u)), Struct_1(vec3<u32>(4294967295u, 30188u, 18768u), vec4<u32>(1u, 38102u, 56273u, 0u), vec4<f32>(364f, -235f, -2000f, 490f), vec2<u32>(27185u, 0u)), Struct_1(vec3<u32>(1u, 145735u, 37900u), vec4<u32>(0u, 4294967295u, 22672u, 49814u), vec4<f32>(1000f, -1281f, 118f, 1036f), vec2<u32>(6620u, 0u)), Struct_1(vec3<u32>(0u, 4294967295u, 26962u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<f32>(243f, -483f, -1469f, 1665f), vec2<u32>(4294967295u, 52221u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(41655u, 32639u, 1u), vec4<u32>(44900u, 26547u, 0u, 13305u), vec4<f32>(-336f, 2164f, 2545f, -709f), vec2<u32>(0u, 52025u)), Struct_1(vec3<u32>(32174u, 40538u, 4294967295u), vec4<u32>(1u, 32240u, 1u, 31284u), vec4<f32>(-166f, 1000f, -1677f, 517f), vec2<u32>(1u, 51088u)), Struct_1(vec3<u32>(76214u, 7159u, 1u), vec4<u32>(2768u, 73294u, 1u, 0u), vec4<f32>(308f, 876f, 2183f, -1089f), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<u32>(17375u, 4997u, 24780u), vec4<u32>(1u, 30017u, 4294967295u, 1u), vec4<f32>(-546f, 403f, 923f, 1125f), vec2<u32>(0u, 41873u)), Struct_1(vec3<u32>(17882u, 5027u, 53544u), vec4<u32>(9579u, 0u, 1u, 2051u), vec4<f32>(298f, -367f, -1407f, 1104f), vec2<u32>(58664u, 24341u))), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<u32>(4294967295u, 45250u, 0u, 16968u), vec4<f32>(-395f, -812f, 324f, -1047f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(1u, 65674u, 1u), vec4<u32>(41703u, 59486u, 4294967295u, 42781u), vec4<f32>(712f, 1000f, -1735f, 1386f), vec2<u32>(44008u, 17173u)), Struct_1(vec3<u32>(15498u, 4294967295u, 4294967295u), vec4<u32>(51228u, 0u, 0u, 4294967295u), vec4<f32>(-2105f, 352f, 1667f, 860f), vec2<u32>(41399u, 0u)), Struct_1(vec3<u32>(19147u, 11019u, 1u), vec4<u32>(1u, 9737u, 90940u, 1u), vec4<f32>(-1616f, -178f, -853f, 106f), vec2<u32>(4294967295u, 31803u)), Struct_1(vec3<u32>(1u, 31916u, 54991u), vec4<u32>(14148u, 4294967295u, 1u, 0u), vec4<f32>(1249f, 228f, -859f, -117f), vec2<u32>(0u, 66356u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(112411u, 20197u, 4294967295u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<f32>(1106f, -1997f, 1177f, -376f), vec2<u32>(0u, 0u)), Struct_1(vec3<u32>(4294967295u, 7534u, 22354u), vec4<u32>(47420u, 26686u, 13265u, 4294967295u), vec4<f32>(149f, 1760f, 1000f, 1027f), vec2<u32>(4294967295u, 6086u)), Struct_1(vec3<u32>(4294967295u, 16537u, 78994u), vec4<u32>(1u, 9525u, 4294967295u, 8189u), vec4<f32>(468f, 400f, 186f, 490f), vec2<u32>(21173u, 0u)), Struct_1(vec3<u32>(7661u, 3675u, 1u), vec4<u32>(20473u, 0u, 26899u, 4294967295u), vec4<f32>(-339f, -866f, -1000f, 1000f), vec2<u32>(86161u, 46548u)), Struct_1(vec3<u32>(4294967295u, 15453u, 43229u), vec4<u32>(7247u, 58619u, 29452u, 4294967295u), vec4<f32>(-983f, -677f, -800f, -201f), vec2<u32>(54507u, 27409u))), Struct_2(Struct_1(vec3<u32>(29925u, 4294967295u, 86943u), vec4<u32>(1u, 0u, 0u, 1141u), vec4<f32>(942f, 298f, -712f, -657f), vec2<u32>(1u, 16605u)), Struct_1(vec3<u32>(28686u, 31624u, 6030u), vec4<u32>(60262u, 76824u, 4294967295u, 4294967295u), vec4<f32>(1000f, -1000f, 915f, -934f), vec2<u32>(8352u, 1u)), Struct_1(vec3<u32>(0u, 59973u, 0u), vec4<u32>(75186u, 4294967295u, 2559u, 1u), vec4<f32>(1017f, -1000f, -268f, 389f), vec2<u32>(0u, 49395u)), Struct_1(vec3<u32>(4294967295u, 39472u, 87050u), vec4<u32>(96966u, 0u, 34779u, 0u), vec4<f32>(-2384f, 1482f, -1854f, 805f), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 12451u, 4294967295u), vec4<f32>(-1975f, -2098f, -3123f, -922f), vec2<u32>(4294967295u, 0u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(32753u, 0u, 49140u), vec4<u32>(1u, 12706u, 48656u, 10090u), vec4<f32>(-1000f, 532f, 1383f, 824f), vec2<u32>(17328u, 7726u)), Struct_1(vec3<u32>(4614u, 0u, 61829u), vec4<u32>(13351u, 16030u, 18157u, 27650u), vec4<f32>(149f, -1509f, -881f, 1000f), vec2<u32>(25111u, 1u)), Struct_1(vec3<u32>(0u, 1u, 7708u), vec4<u32>(0u, 29509u, 1807u, 955u), vec4<f32>(-131f, 488f, -510f, -1147f), vec2<u32>(1u, 38839u)), Struct_1(vec3<u32>(1u, 1u, 24795u), vec4<u32>(4294967295u, 21747u, 59594u, 11360u), vec4<f32>(-1461f, -1446f, -1000f, 667f), vec2<u32>(1u, 14684u)), Struct_1(vec3<u32>(17234u, 97734u, 30463u), vec4<u32>(30679u, 4294967295u, 4294967295u, 5615u), vec4<f32>(1000f, 509f, -261f, -978f), vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(8686u, 1u, 37009u), vec4<u32>(1u, 1u, 1u, 0u), vec4<f32>(1000f, -1000f, 967f, -931f), vec2<u32>(17261u, 82264u)), Struct_1(vec3<u32>(6372u, 16446u, 98093u), vec4<u32>(1u, 36605u, 16113u, 0u), vec4<f32>(665f, -260f, 541f, -1184f), vec2<u32>(1u, 56058u)), Struct_1(vec3<u32>(42124u, 73795u, 11891u), vec4<u32>(0u, 1957u, 4294967295u, 1u), vec4<f32>(258f, -870f, 2601f, -571f), vec2<u32>(28092u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 11308u, 4294967295u), vec4<u32>(29387u, 1u, 18932u, 4294967295u), vec4<f32>(-610f, 1000f, -184f, -1000f), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<u32>(5536u, 4294967295u, 50551u, 62721u), vec4<f32>(-232f, 799f, 2005f, 1066f), vec2<u32>(25708u, 88033u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 1u, 36259u), vec4<u32>(28848u, 4294967295u, 1u, 61767u), vec4<f32>(246f, -291f, 456f, -278f), vec2<u32>(19068u, 31753u)), Struct_1(vec3<u32>(37610u, 13789u, 14977u), vec4<u32>(48072u, 1u, 0u, 1178u), vec4<f32>(366f, -1513f, -193f, -284f), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(21183u, 38336u, 0u), vec4<u32>(0u, 4294967295u, 7188u, 39446u), vec4<f32>(-140f, 237f, -196f, -2142f), vec2<u32>(72378u, 0u)), Struct_1(vec3<u32>(63777u, 0u, 4294967295u), vec4<u32>(5420u, 1u, 4294967295u, 0u), vec4<f32>(-1000f, 665f, 903f, -1000f), vec2<u32>(4294967295u, 58738u)), Struct_1(vec3<u32>(55538u, 28437u, 18120u), vec4<u32>(1u, 0u, 1u, 1u), vec4<f32>(-1168f, 1018f, 302f, 1129f), vec2<u32>(68337u, 0u))), Struct_2(Struct_1(vec3<u32>(72801u, 6608u, 1u), vec4<u32>(0u, 4294967295u, 72337u, 0u), vec4<f32>(851f, 439f, 3275f, 795f), vec2<u32>(21687u, 1u)), Struct_1(vec3<u32>(0u, 0u, 76877u), vec4<u32>(1u, 58502u, 78815u, 3268u), vec4<f32>(1584f, 1140f, 512f, 550f), vec2<u32>(0u, 0u)), Struct_1(vec3<u32>(0u, 48503u, 1u), vec4<u32>(122633u, 1u, 44353u, 4294967295u), vec4<f32>(-486f, -700f, -1641f, 1417f), vec2<u32>(42130u, 31829u)), Struct_1(vec3<u32>(2895u, 1720u, 41566u), vec4<u32>(1u, 1u, 137u, 465u), vec4<f32>(-171f, -673f, 486f, 314f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(62025u, 0u, 23131u), vec4<u32>(74322u, 47337u, 1u, 21669u), vec4<f32>(-931f, 1361f, 1316f, -1000f), vec2<u32>(1u, 72146u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(72808u, 19065u, 8412u), vec4<u32>(15691u, 21086u, 18441u, 0u), vec4<f32>(1227f, 406f, 920f, -2956f), vec2<u32>(5608u, 37562u)), Struct_1(vec3<u32>(4294967295u, 0u, 4932u), vec4<u32>(79566u, 0u, 0u, 13557u), vec4<f32>(-200f, -204f, 357f, 561f), vec2<u32>(0u, 6769u)), Struct_1(vec3<u32>(4294967295u, 10229u, 26875u), vec4<u32>(12567u, 4294967295u, 45091u, 24074u), vec4<f32>(-1180f, 2043f, -405f, 1000f), vec2<u32>(5056u, 82431u)), Struct_1(vec3<u32>(47218u, 0u, 83356u), vec4<u32>(4294967295u, 53864u, 4294967295u, 0u), vec4<f32>(757f, -324f, 1000f, 784f), vec2<u32>(45723u, 103079u)), Struct_1(vec3<u32>(24621u, 0u, 34296u), vec4<u32>(4294967295u, 5282u, 45169u, 1u), vec4<f32>(-276f, 1087f, -483f, 519f), vec2<u32>(36966u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(14787u, 63566u, 4121u), vec4<u32>(3604u, 72447u, 88216u, 49255u), vec4<f32>(154f, -1000f, -847f, 1091f), vec2<u32>(64964u, 44583u)), Struct_1(vec3<u32>(4294967295u, 40969u, 130415u), vec4<u32>(0u, 1u, 47215u, 4294967295u), vec4<f32>(658f, -428f, 199f, 620f), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 56771u, 40096u), vec4<u32>(51272u, 1u, 4294967295u, 8796u), vec4<f32>(-262f, -759f, -1258f, -1023f), vec2<u32>(46052u, 1u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<f32>(1132f, 513f, 1424f, 391f), vec2<u32>(0u, 28210u)), Struct_1(vec3<u32>(20513u, 9095u, 4294967295u), vec4<u32>(27074u, 0u, 1u, 4294967295u), vec4<f32>(-1764f, 650f, -380f, -464f), vec2<u32>(79460u, 52135u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(14975u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 3783u), vec4<f32>(1034f, -404f, 1823f, 194f), vec2<u32>(50719u, 1u)), Struct_1(vec3<u32>(4294967295u, 29782u, 53296u), vec4<u32>(9100u, 4294967295u, 0u, 34927u), vec4<f32>(-1385f, -560f, -426f, 1622f), vec2<u32>(4294967295u, 22808u)), Struct_1(vec3<u32>(1u, 46203u, 28934u), vec4<u32>(48515u, 69355u, 0u, 2739u), vec4<f32>(-1588f, 1344f, -577f, 584f), vec2<u32>(45310u, 4294967295u)), Struct_1(vec3<u32>(51159u, 29513u, 0u), vec4<u32>(42325u, 4294967295u, 68659u, 2789u), vec4<f32>(-365f, 1437f, 494f, -1102f), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(82017u, 4294967295u, 31876u), vec4<u32>(35556u, 8497u, 4294967295u, 1u), vec4<f32>(664f, 563f, 806f, -251f), vec2<u32>(0u, 14011u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 6524u, 4294967295u), vec4<u32>(1u, 1u, 2096u, 58615u), vec4<f32>(317f, -445f, -1000f, 1985f), vec2<u32>(39773u, 21470u)), Struct_1(vec3<u32>(3386u, 4294967295u, 6058u), vec4<u32>(32852u, 1u, 4294967295u, 59224u), vec4<f32>(287f, 976f, -583f, -1205f), vec2<u32>(63045u, 87278u)), Struct_1(vec3<u32>(36245u, 29823u, 0u), vec4<u32>(60254u, 1u, 4294967295u, 4294967295u), vec4<f32>(-960f, -588f, -1444f, -1313f), vec2<u32>(68361u, 0u)), Struct_1(vec3<u32>(6720u, 1u, 61205u), vec4<u32>(80093u, 18244u, 18444u, 6692u), vec4<f32>(886f, 1219f, -604f, -1868f), vec2<u32>(53826u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 21016u), vec4<u32>(87837u, 1u, 54542u, 0u), vec4<f32>(450f, 1785f, -544f, -716f), vec2<u32>(0u, 1006u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 52983u, 17134u), vec4<u32>(16055u, 9493u, 96848u, 0u), vec4<f32>(-293f, -227f, 1447f, 1000f), vec2<u32>(4294967295u, 3081u)), Struct_1(vec3<u32>(19436u, 17854u, 20483u), vec4<u32>(119952u, 18633u, 34453u, 1u), vec4<f32>(812f, 826f, -908f, -629f), vec2<u32>(0u, 18683u)), Struct_1(vec3<u32>(1u, 17717u, 93197u), vec4<u32>(0u, 0u, 0u, 0u), vec4<f32>(-342f, 1000f, 1889f, 530f), vec2<u32>(44479u, 74358u)), Struct_1(vec3<u32>(1u, 42855u, 56138u), vec4<u32>(0u, 97527u, 4912u, 35623u), vec4<f32>(-2216f, -1129f, -829f, 1079f), vec2<u32>(36698u, 22615u)), Struct_1(vec3<u32>(7169u, 32926u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<f32>(-610f, -1000f, 243f, 167f), vec2<u32>(10003u, 0u))), Struct_2(Struct_1(vec3<u32>(25324u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<f32>(583f, 1000f, 1082f, -821f), vec2<u32>(5140u, 6514u)), Struct_1(vec3<u32>(0u, 7312u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<f32>(-239f, 104f, -2189f, 2943f), vec2<u32>(41969u, 2486u)), Struct_1(vec3<u32>(1u, 1817u, 45223u), vec4<u32>(78998u, 4294967295u, 0u, 4294967295u), vec4<f32>(-805f, -390f, 1000f, -1885f), vec2<u32>(39412u, 4294967295u)), Struct_1(vec3<u32>(1u, 84242u, 0u), vec4<u32>(0u, 3277u, 4294967295u, 1u), vec4<f32>(838f, -266f, -444f, -1180f), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec4<u32>(0u, 0u, 58235u, 1u), vec4<f32>(-881f, -604f, 914f, -1260f), vec2<u32>(29704u, 4294967295u)))), Struct_4(Struct_2(Struct_1(vec3<u32>(52616u, 4294967295u, 1u), vec4<u32>(1u, 0u, 0u, 1u), vec4<f32>(-603f, 580f, 200f, -582f), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<u32>(62526u, 4294967295u, 0u), vec4<u32>(4294967295u, 8315u, 0u, 59009u), vec4<f32>(-636f, -2430f, 690f, 1958f), vec2<u32>(0u, 0u)), Struct_1(vec3<u32>(4294967295u, 16468u, 39116u), vec4<u32>(4294967295u, 15747u, 56588u, 70603u), vec4<f32>(-1000f, 608f, -608f, 370f), vec2<u32>(0u, 32256u)), Struct_1(vec3<u32>(1u, 0u, 1u), vec4<u32>(9605u, 49865u, 1u, 13570u), vec4<f32>(392f, -1322f, 475f, 656f), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(33307u, 11526u, 42739u), vec4<u32>(52369u, 8454u, 4294967295u, 1u), vec4<f32>(142f, 123f, 1000f, 922f), vec2<u32>(65996u, 12938u))), Struct_2(Struct_1(vec3<u32>(18459u, 31250u, 48866u), vec4<u32>(39805u, 0u, 91837u, 28225u), vec4<f32>(480f, -625f, 779f, 493f), vec2<u32>(34939u, 93388u)), Struct_1(vec3<u32>(35511u, 0u, 4294967295u), vec4<u32>(38386u, 0u, 21908u, 4294967295u), vec4<f32>(1034f, 1000f, -280f, -1249f), vec2<u32>(4294967295u, 64672u)), Struct_1(vec3<u32>(10385u, 1u, 21465u), vec4<u32>(0u, 1u, 1u, 13094u), vec4<f32>(288f, -410f, 344f, 411f), vec2<u32>(37702u, 101999u)), Struct_1(vec3<u32>(1u, 1u, 51059u), vec4<u32>(65650u, 65200u, 21917u, 1u), vec4<f32>(117f, 1000f, -171f, -1000f), vec2<u32>(95883u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 22470u), vec4<f32>(621f, 933f, 2615f, -1674f), vec2<u32>(9524u, 1u)))));

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 19488u);

var<private> global3: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(19424u, 1u), vec2<u32>(0u, 35457u), vec2<u32>(1u, 76260u), vec2<u32>(12925u, 10320u), vec2<u32>(20375u, 0u), vec2<u32>(61983u, 0u), vec2<u32>(1u, 897u), vec2<u32>(11342u, 0u), vec2<u32>(0u, 32878u), vec2<u32>(14888u, 1u), vec2<u32>(9598u, 0u), vec2<u32>(33783u, 4779u), vec2<u32>(26730u, 74501u), vec2<u32>(25745u, 0u));

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global2 = select(_wgslsmith_clamp_vec2_u32(~u_input.a.ww, vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.a.x), u_input.a.x), _wgslsmith_clamp_vec2_u32(min(u_input.a.zz, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), u_input.a.ww, vec2<u32>(0u, u_input.a.x))), vec2<u32>(~(~69396u), 1u), any(vec2<bool>(true, false))) & vec2<u32>(global2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 84151u), u_input.a.yw, u_input.a.xw), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), ~u_input.a.zz)));
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(abs(global2.x), 10u)], Struct_2(Struct_1(vec3<u32>(1676u, global2.x & 1u, 42607u ^ global2.x), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 38859u), 23328u, 51263u, 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-128f, 277f, 1931f, -772f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(211f, -972f, 1000f, -619f))), any(vec2<bool>(false, true)))), abs(countOneBits(global3[_wgslsmith_index_u32(global2.x, 14u)]))), Struct_1(u_input.a.zwy, u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(449f, -994f, -224f, -975f))))), _wgslsmith_add_vec2_u32(u_input.a.yx, _wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(71339u, 14u)], vec2<u32>(u_input.b, global2.x)))), Struct_1(vec3<u32>(15826u, global2.x, reverseBits(global2.x)), vec4<u32>(firstLeadingBit(global2.x), 4294967295u, 0u, global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-839f, -878f, 530f, -2737f), vec4<f32>(1085f, -831f, -1596f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, 1658f, -897f, 618f))), ~abs(global3[_wgslsmith_index_u32(global2.x, 14u)])), Struct_1(u_input.a.xwx << (vec3<u32>(1u, 9811u, global2.x) % vec3<u32>(32u)), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(846f, 717f, 301f, 752f), vec4<f32>(190f, 833f, -1000f, 304f))), u_input.a.xx), Struct_1(~firstTrailingBit(u_input.a.zyy), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 0u, u_input.b), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(global2.x, global2.x, 43399u, 72009u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, -1000f, 516f, 2030f))), ~min(u_input.a.xw, u_input.a.yw))));
    global2 = u_input.a.wx;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(165f, -553f)), _wgslsmith_f_op_f32(-var_0.a.a.c.x), true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.a.c.c.x)), -190f)), 962f));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<Struct_2, 10>();
    let var_0 = Struct_3(u_input.a.yzx, _wgslsmith_div_u32(_wgslsmith_sub_u32(~min(global2.x, 33173u), global2.x), u_input.a.x), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xwx, u_input.a.yww), u_input.a.xxx), vec4<u32>(1u, _wgslsmith_add_u32(u_input.a.x << (global2.x % 32u), u_input.b >> (34938u % 32u)), _wgslsmith_mult_u32(~20463u, u_input.b), ~42438u >> ((global2.x << (4809u % 32u)) % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1048f, arg_0, _wgslsmith_div_f32(arg_0, -586f), _wgslsmith_f_op_f32(f32(-1f) * -786f)) * vec4<f32>(_wgslsmith_div_f32(arg_0, -1316f), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1329f - arg_0))), select(~(~vec2<u32>(global2.x, 0u)), ~vec2<u32>(0u, u_input.a.x), vec2<bool>(select(false, true, true), false))));
    let var_1 = u_input.a;
    var var_2 = 4288u;
    let var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1425f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1726f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1631f);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = vec3<f32>(-703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c.x)))))), arg_0.c.x);
    var var_1 = Struct_3(reverseBits(vec3<u32>(global2.x, ~20619u, ~u_input.b)) | vec3<u32>(_wgslsmith_mult_u32(~0u, arg_0.a.x), global2.x, abs(~arg_0.a.x)), max(_wgslsmith_sub_u32(firstLeadingBit(~global2.x), ~6942u), ~(19562u | global2.x)), arg_0);
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_0.a, arg_0.a), select(~arg_0.a, var_1.a, vec3<bool>(true, true, true)), u_input.a.xzw), ~u_input.a, vec4<f32>(_wgslsmith_f_op_f32(func_2(-1090f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f), 682f), _wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_sub_vec2_u32(~(~var_1.a.yx), ~arg_0.a.zy)), Struct_1(_wgslsmith_add_vec3_u32(~var_1.c.a, firstLeadingBit(vec3<u32>(var_1.a.x, arg_0.b.x, var_1.b)) & firstTrailingBit(vec3<u32>(global2.x, 1u, 45069u))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.c * var_1.c.c))), var_1.c.b.zw), arg_0, arg_0, arg_0);
    global2 = vec2<u32>(u_input.a.x, countOneBits(~(~45346u << (global2.x % 32u))));
    return var_1.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    let var_0 = u_input.a.x;
    let var_1 = vec3<bool>(false | all(vec2<bool>(true, any(vec2<bool>(false, false)))), 447f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1182f, 1871f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(179f, -731f)))), false);
    global1 = array<Struct_4, 10>();
    let var_2 = global0[_wgslsmith_index_u32(~global2.x, 10u)];
    global0 = array<Struct_2, 10>();
    let var_3 = Struct_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u ^ u_input.a.x, countOneBits(6351u), 25000u), vec3<u32>(1u, 29160u, u_input.b))), ~(reverseBits(~var_2.a.b) | vec4<u32>(~var_0, global2.x, select(var_0, var_2.c.d.x, false), _wgslsmith_add_u32(var_2.c.d.x, 0u))), vec4<f32>(var_2.a.c.x, 590f, _wgslsmith_f_op_f32(select(var_2.a.c.x, _wgslsmith_f_op_f32(func_1(var_2.b, u_input.c)), false)), var_2.b.c.x), max(var_2.c.a.zx, _wgslsmith_sub_vec2_u32(u_input.a.wx, ~vec2<u32>(global2.x, var_0))) ^ (_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, u_input.b) & vec2<u32>(1u, 2334u), var_2.a.d, u_input.a.yz) >> (vec2<u32>(100213u, _wgslsmith_mod_u32(global2.x, var_2.b.a.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.d.x);
}

