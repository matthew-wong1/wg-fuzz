struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(Struct_1(28257u, vec2<f32>(-528f, -759f), 4294967295u, -1i), 87438i, Struct_1(17089u, vec2<f32>(373f, 419f), 4294967295u, -14508i), -89414i), Struct_2(Struct_1(1u, vec2<f32>(729f, 1839f), 46730u, 1i), -11842i, Struct_1(44260u, vec2<f32>(1317f, -427f), 1u, -14918i), -39830i), Struct_2(Struct_1(43215u, vec2<f32>(-1945f, -248f), 66836u, -43968i), 31083i, Struct_1(1u, vec2<f32>(-1387f, 549f), 37260u, 1i), -1i), true, false), Struct_3(Struct_2(Struct_1(4294967295u, vec2<f32>(-1000f, -189f), 67673u, i32(-2147483648)), -17348i, Struct_1(1u, vec2<f32>(-999f, 672f), 21963u, 0i), 3956i), Struct_2(Struct_1(0u, vec2<f32>(1018f, -107f), 0u, 31904i), 0i, Struct_1(0u, vec2<f32>(1338f, 921f), 0u, i32(-2147483648)), 13217i), Struct_2(Struct_1(8053u, vec2<f32>(660f, -329f), 4063u, -19467i), 2147483647i, Struct_1(4294967295u, vec2<f32>(2758f, 454f), 6782u, -1i), -12751i), true, false), Struct_3(Struct_2(Struct_1(34446u, vec2<f32>(461f, -1266f), 1u, 62318i), 1i, Struct_1(57655u, vec2<f32>(633f, 738f), 18991u, -56807i), -1i), Struct_2(Struct_1(0u, vec2<f32>(201f, -731f), 4294967295u, 0i), 49320i, Struct_1(34068u, vec2<f32>(622f, -349f), 1u, i32(-2147483648)), 3145i), Struct_2(Struct_1(0u, vec2<f32>(1178f, 140f), 0u, 2147483647i), i32(-2147483648), Struct_1(4294967295u, vec2<f32>(-159f, 103f), 4294967295u, -1i), 2147483647i), false, false), Struct_3(Struct_2(Struct_1(106820u, vec2<f32>(-1000f, -1641f), 4294967295u, i32(-2147483648)), -2919i, Struct_1(34447u, vec2<f32>(-1095f, 1059f), 47165u, 1i), i32(-2147483648)), Struct_2(Struct_1(0u, vec2<f32>(529f, 375f), 0u, 30827i), 1i, Struct_1(21100u, vec2<f32>(-2007f, -586f), 1u, 38117i), 0i), Struct_2(Struct_1(19669u, vec2<f32>(-2106f, 1229f), 4294967295u, -20721i), 26352i, Struct_1(0u, vec2<f32>(1441f, 832f), 6586u, 7790i), -7319i), true, false), Struct_3(Struct_2(Struct_1(52725u, vec2<f32>(-1772f, 1460f), 4294967295u, -20196i), 10181i, Struct_1(4294967295u, vec2<f32>(712f, -1812f), 1u, 63668i), 1i), Struct_2(Struct_1(26019u, vec2<f32>(509f, -1088f), 10783u, 29223i), 0i, Struct_1(0u, vec2<f32>(-601f, 1255f), 1u, 4664i), 0i), Struct_2(Struct_1(0u, vec2<f32>(2790f, 170f), 63255u, -31105i), -33577i, Struct_1(66610u, vec2<f32>(1796f, -1979f), 84920u, 4033i), -45709i), false, true), Struct_3(Struct_2(Struct_1(4208u, vec2<f32>(332f, 582f), 1u, -14108i), 2147483647i, Struct_1(12773u, vec2<f32>(255f, 566f), 76231u, i32(-2147483648)), 1i), Struct_2(Struct_1(12351u, vec2<f32>(-1113f, 1035f), 4294967295u, i32(-2147483648)), i32(-2147483648), Struct_1(34473u, vec2<f32>(-151f, 817f), 0u, -1i), 20444i), Struct_2(Struct_1(59765u, vec2<f32>(-117f, -1855f), 39257u, 37454i), 2147483647i, Struct_1(4294967295u, vec2<f32>(-641f, 1256f), 4294967295u, -1i), -48570i), false, true), Struct_3(Struct_2(Struct_1(8067u, vec2<f32>(951f, 491f), 0u, 1i), -1200i, Struct_1(16703u, vec2<f32>(143f, 602f), 1u, -54489i), 0i), Struct_2(Struct_1(0u, vec2<f32>(695f, -1288f), 913u, -20268i), 26601i, Struct_1(1u, vec2<f32>(130f, -1191f), 64467u, 37301i), i32(-2147483648)), Struct_2(Struct_1(22373u, vec2<f32>(-1962f, -639f), 60302u, 106592i), -20708i, Struct_1(63260u, vec2<f32>(301f, 376f), 51920u, -1i), 45931i), false, true), Struct_3(Struct_2(Struct_1(24451u, vec2<f32>(1139f, -562f), 4294967295u, 2147483647i), -1i, Struct_1(1u, vec2<f32>(771f, 297f), 10734u, 0i), 25114i), Struct_2(Struct_1(4294967295u, vec2<f32>(979f, -1184f), 0u, -43136i), -5136i, Struct_1(1u, vec2<f32>(-1460f, -1760f), 4294967295u, -54923i), 1i), Struct_2(Struct_1(1u, vec2<f32>(-1000f, 648f), 34529u, 2147483647i), -34886i, Struct_1(4294967295u, vec2<f32>(-1328f, 1508f), 11699u, -25045i), 35079i), true, false), Struct_3(Struct_2(Struct_1(12106u, vec2<f32>(1889f, -580f), 90464u, 0i), -1i, Struct_1(4294967295u, vec2<f32>(1099f, 880f), 0u, -1i), -5633i), Struct_2(Struct_1(0u, vec2<f32>(188f, -1156f), 0u, -3586i), -1i, Struct_1(0u, vec2<f32>(-377f, -1536f), 0u, -38120i), 2147483647i), Struct_2(Struct_1(4294967295u, vec2<f32>(-656f, -874f), 9258u, -41628i), 17233i, Struct_1(10764u, vec2<f32>(1098f, -2238f), 1u, 49472i), 0i), true, true), Struct_3(Struct_2(Struct_1(1u, vec2<f32>(843f, 1000f), 0u, -45632i), -34163i, Struct_1(1u, vec2<f32>(-945f, -692f), 20438u, 42404i), -1i), Struct_2(Struct_1(33544u, vec2<f32>(-1000f, 305f), 5744u, 1i), 9995i, Struct_1(4294967295u, vec2<f32>(1900f, 882f), 66020u, 30151i), 2147483647i), Struct_2(Struct_1(22864u, vec2<f32>(-145f, -558f), 4294967295u, -1i), -35749i, Struct_1(0u, vec2<f32>(927f, -776f), 4294967295u, -5719i), -6072i), true, false), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-650f, -1000f), 74588u, 0i), 11584i, Struct_1(8191u, vec2<f32>(177f, -654f), 1u, i32(-2147483648)), -4150i), Struct_2(Struct_1(10041u, vec2<f32>(546f, -1428f), 0u, 19530i), 1i, Struct_1(113364u, vec2<f32>(-807f, -519f), 13360u, 4684i), -1i), Struct_2(Struct_1(60206u, vec2<f32>(1218f, 430f), 0u, 1i), 101569i, Struct_1(4294967295u, vec2<f32>(345f, 1275f), 1u, 2147483647i), -9200i), true, false), Struct_3(Struct_2(Struct_1(46947u, vec2<f32>(702f, -2307f), 1u, 41539i), -73532i, Struct_1(0u, vec2<f32>(-261f, 1310f), 30885u, -11264i), -51794i), Struct_2(Struct_1(4294967295u, vec2<f32>(285f, -989f), 4294967295u, 0i), 1i, Struct_1(1u, vec2<f32>(1247f, -595f), 4294967295u, 16873i), -1i), Struct_2(Struct_1(1u, vec2<f32>(769f, -387f), 0u, 2147483647i), -16791i, Struct_1(1u, vec2<f32>(-363f, 1157f), 19765u, -1i), 1i), true, false), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-326f, 704f), 1u, -56360i), 46974i, Struct_1(78652u, vec2<f32>(-1759f, -871f), 49640u, -7550i), 18695i), Struct_2(Struct_1(1442u, vec2<f32>(-681f, -1302f), 5942u, -2196i), 2147483647i, Struct_1(1u, vec2<f32>(-1765f, -1570f), 1u, 1i), i32(-2147483648)), Struct_2(Struct_1(1u, vec2<f32>(403f, -1000f), 4701u, 6363i), 1i, Struct_1(4124u, vec2<f32>(1163f, -370f), 23213u, 17501i), -1i), true, false));

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(Struct_1(4294967295u, vec2<f32>(-1240f, -539f), 13925u, 1i), i32(-2147483648), Struct_1(106603u, vec2<f32>(-1000f, -2412f), 44767u, -15444i), i32(-2147483648)), Struct_2(Struct_1(4294967295u, vec2<f32>(-189f, -217f), 27964u, 1i), 1i, Struct_1(4294967295u, vec2<f32>(-549f, 426f), 31642u, 0i), 50884i), Struct_2(Struct_1(0u, vec2<f32>(-1857f, -1741f), 60110u, -1i), 10095i, Struct_1(24011u, vec2<f32>(1591f, 189f), 0u, 85878i), 16074i), true, false), Struct_3(Struct_2(Struct_1(2251u, vec2<f32>(-746f, 689f), 27606u, 2147483647i), 2147483647i, Struct_1(4294967295u, vec2<f32>(1000f, -589f), 0u, 2147483647i), -28663i), Struct_2(Struct_1(19111u, vec2<f32>(245f, -364f), 50057u, i32(-2147483648)), 1i, Struct_1(3702u, vec2<f32>(818f, -492f), 0u, -27273i), 2729i), Struct_2(Struct_1(1u, vec2<f32>(-1000f, -1330f), 14912u, -14407i), -1i, Struct_1(56483u, vec2<f32>(-728f, 118f), 4294967295u, 59892i), -1i), false, false), Struct_3(Struct_2(Struct_1(49u, vec2<f32>(-2384f, -230f), 1u, 0i), i32(-2147483648), Struct_1(0u, vec2<f32>(-1622f, -587f), 0u, 1i), 13758i), Struct_2(Struct_1(0u, vec2<f32>(399f, -670f), 12483u, 0i), -6736i, Struct_1(86926u, vec2<f32>(411f, -1177f), 0u, 2147483647i), 0i), Struct_2(Struct_1(103077u, vec2<f32>(505f, -176f), 12476u, 0i), 11818i, Struct_1(10440u, vec2<f32>(633f, 2598f), 1u, 47406i), 0i), false, false), Struct_3(Struct_2(Struct_1(66401u, vec2<f32>(-129f, 1000f), 0u, 21972i), 1i, Struct_1(1u, vec2<f32>(1472f, 196f), 34332u, -9188i), 0i), Struct_2(Struct_1(26797u, vec2<f32>(1113f, 222f), 4294967295u, -11511i), -13786i, Struct_1(0u, vec2<f32>(644f, -950f), 4294967295u, 1i), 2147483647i), Struct_2(Struct_1(20542u, vec2<f32>(-1427f, 151f), 1u, 37326i), 0i, Struct_1(5119u, vec2<f32>(124f, -1082f), 1u, 2147483647i), 0i), false, false), Struct_3(Struct_2(Struct_1(14385u, vec2<f32>(1292f, -1030f), 4294967295u, 51025i), 2147483647i, Struct_1(11162u, vec2<f32>(-651f, -455f), 57890u, 12729i), 0i), Struct_2(Struct_1(9648u, vec2<f32>(-1000f, -427f), 1u, 0i), -1i, Struct_1(4294967295u, vec2<f32>(-360f, -596f), 36134u, i32(-2147483648)), 0i), Struct_2(Struct_1(4294967295u, vec2<f32>(408f, -1883f), 1u, 1i), i32(-2147483648), Struct_1(1u, vec2<f32>(2230f, -626f), 1u, 1i), 86093i), true, true), Struct_3(Struct_2(Struct_1(79032u, vec2<f32>(485f, -565f), 1u, 43941i), 2147483647i, Struct_1(1u, vec2<f32>(-1114f, -243f), 0u, i32(-2147483648)), -7279i), Struct_2(Struct_1(57437u, vec2<f32>(-937f, 2222f), 0u, 10506i), -1i, Struct_1(4294967295u, vec2<f32>(441f, 1077f), 29340u, 2147483647i), 1i), Struct_2(Struct_1(1u, vec2<f32>(112f, -394f), 4294967295u, i32(-2147483648)), -6690i, Struct_1(1u, vec2<f32>(990f, 1495f), 0u, 1i), -1i), true, true), Struct_3(Struct_2(Struct_1(4294967295u, vec2<f32>(266f, 539f), 84169u, -7847i), 2147483647i, Struct_1(59355u, vec2<f32>(-106f, -694f), 7737u, 19569i), 0i), Struct_2(Struct_1(45120u, vec2<f32>(-1000f, 1000f), 1u, 2147483647i), -23316i, Struct_1(0u, vec2<f32>(877f, -848f), 0u, 0i), 34759i), Struct_2(Struct_1(1u, vec2<f32>(-1447f, -1000f), 1u, -11104i), 7503i, Struct_1(4294967295u, vec2<f32>(-387f, 1076f), 5879u, -4201i), -91102i), false, true), Struct_3(Struct_2(Struct_1(36499u, vec2<f32>(761f, 1639f), 1u, -23440i), 0i, Struct_1(49050u, vec2<f32>(262f, -934f), 65581u, 39680i), -8599i), Struct_2(Struct_1(1u, vec2<f32>(1155f, 226f), 32977u, i32(-2147483648)), -1i, Struct_1(66078u, vec2<f32>(1843f, -429f), 8901u, i32(-2147483648)), -34146i), Struct_2(Struct_1(70791u, vec2<f32>(-1537f, 175f), 19264u, 0i), 0i, Struct_1(55943u, vec2<f32>(-1460f, -899f), 0u, 49632i), i32(-2147483648)), true, false), Struct_3(Struct_2(Struct_1(52000u, vec2<f32>(1000f, -235f), 95032u, -9301i), -40231i, Struct_1(4294967295u, vec2<f32>(-330f, 823f), 1u, -52157i), i32(-2147483648)), Struct_2(Struct_1(10068u, vec2<f32>(683f, -972f), 12241u, -12529i), 0i, Struct_1(0u, vec2<f32>(-385f, 1072f), 0u, 2147483647i), 49272i), Struct_2(Struct_1(0u, vec2<f32>(703f, 732f), 46017u, 8583i), 32645i, Struct_1(17617u, vec2<f32>(233f, 1558f), 23376u, -1i), -27723i), false, true), Struct_3(Struct_2(Struct_1(11791u, vec2<f32>(-1115f, 1104f), 0u, -17097i), -16237i, Struct_1(37094u, vec2<f32>(-1133f, 737f), 7484u, 2147483647i), -48180i), Struct_2(Struct_1(78717u, vec2<f32>(396f, 507f), 27890u, -6100i), 2147483647i, Struct_1(1u, vec2<f32>(896f, 1109f), 52528u, -23637i), i32(-2147483648)), Struct_2(Struct_1(1u, vec2<f32>(-787f, -1172f), 0u, i32(-2147483648)), 1i, Struct_1(1u, vec2<f32>(-291f, -506f), 12888u, 10942i), -11617i), true, true), Struct_3(Struct_2(Struct_1(28792u, vec2<f32>(-761f, 630f), 1u, 11767i), -1i, Struct_1(4294967295u, vec2<f32>(-1347f, 917f), 50190u, -6850i), 1i), Struct_2(Struct_1(17135u, vec2<f32>(-924f, -1009f), 6324u, 2147483647i), 0i, Struct_1(1u, vec2<f32>(1000f, 554f), 4294967295u, 25188i), 2147483647i), Struct_2(Struct_1(47937u, vec2<f32>(1439f, -808f), 1u, 60617i), -41781i, Struct_1(22046u, vec2<f32>(419f, -901f), 19370u, 2147483647i), -1i), true, true), Struct_3(Struct_2(Struct_1(94097u, vec2<f32>(-938f, 1391f), 6588u, 2484i), 1i, Struct_1(58164u, vec2<f32>(1156f, -378f), 35961u, 80359i), i32(-2147483648)), Struct_2(Struct_1(27553u, vec2<f32>(950f, -400f), 1u, 0i), 4045i, Struct_1(4294967295u, vec2<f32>(2064f, 1313f), 1u, 0i), 2147483647i), Struct_2(Struct_1(0u, vec2<f32>(-201f, -1515f), 13659u, 3913i), -14066i, Struct_1(22279u, vec2<f32>(102f, 876f), 0u, i32(-2147483648)), 1i), false, true), Struct_3(Struct_2(Struct_1(43292u, vec2<f32>(551f, -843f), 4294967295u, i32(-2147483648)), -1i, Struct_1(4294967295u, vec2<f32>(519f, -614f), 0u, -11312i), 3781i), Struct_2(Struct_1(4294967295u, vec2<f32>(-645f, 1000f), 4294967295u, 1i), 2147483647i, Struct_1(31859u, vec2<f32>(-407f, 214f), 47112u, 8810i), 17750i), Struct_2(Struct_1(4294967295u, vec2<f32>(-2623f, 889f), 0u, 0i), 0i, Struct_1(1u, vec2<f32>(-392f, 989f), 4294967295u, -1i), -22425i), false, false), Struct_3(Struct_2(Struct_1(28026u, vec2<f32>(842f, 1059f), 17723u, -9046i), 23011i, Struct_1(4294967295u, vec2<f32>(1043f, -2078f), 1u, 0i), -42327i), Struct_2(Struct_1(1u, vec2<f32>(1131f, 405f), 4294967295u, 29490i), i32(-2147483648), Struct_1(5504u, vec2<f32>(-1126f, -122f), 4294967295u, -17659i), 49358i), Struct_2(Struct_1(37179u, vec2<f32>(390f, -754f), 4294967295u, 41209i), 4531i, Struct_1(57449u, vec2<f32>(-1000f, 346f), 0u, 2147483647i), 20853i), true, true), Struct_3(Struct_2(Struct_1(0u, vec2<f32>(263f, -1089f), 7393u, -78212i), 25764i, Struct_1(0u, vec2<f32>(508f, -176f), 9476u, 0i), 1i), Struct_2(Struct_1(0u, vec2<f32>(1483f, -1000f), 105127u, -1i), i32(-2147483648), Struct_1(56447u, vec2<f32>(835f, -1214f), 36145u, 2147483647i), -1i), Struct_2(Struct_1(0u, vec2<f32>(-594f, -289f), 1u, 27674i), i32(-2147483648), Struct_1(0u, vec2<f32>(557f, -482f), 0u, 1i), -92514i), false, true), Struct_3(Struct_2(Struct_1(1u, vec2<f32>(1293f, 1075f), 0u, 52086i), -17972i, Struct_1(92040u, vec2<f32>(1151f, -330f), 4294967295u, -227i), -37669i), Struct_2(Struct_1(39689u, vec2<f32>(839f, -1293f), 63662u, 57681i), 1i, Struct_1(1u, vec2<f32>(770f, -716f), 45466u, 27393i), 9126i), Struct_2(Struct_1(4294967295u, vec2<f32>(-495f, 820f), 1u, 1i), -1i, Struct_1(14191u, vec2<f32>(-1024f, -1470f), 31814u, 2147483647i), -54819i), false, false), Struct_3(Struct_2(Struct_1(30722u, vec2<f32>(-1077f, 607f), 41719u, 2147483647i), i32(-2147483648), Struct_1(65004u, vec2<f32>(-1000f, -340f), 52186u, 23022i), i32(-2147483648)), Struct_2(Struct_1(0u, vec2<f32>(532f, 479f), 6020u, 36116i), 0i, Struct_1(114093u, vec2<f32>(-2336f, 1000f), 13500u, 24391i), 2147483647i), Struct_2(Struct_1(4294967295u, vec2<f32>(-135f, 234f), 1u, -32149i), 36821i, Struct_1(21349u, vec2<f32>(147f, -402f), 20314u, 2147483647i), 2147483647i), true, true), Struct_3(Struct_2(Struct_1(14460u, vec2<f32>(1185f, 575f), 64250u, -32774i), 0i, Struct_1(34715u, vec2<f32>(972f, -918f), 0u, -1i), -39647i), Struct_2(Struct_1(17024u, vec2<f32>(1000f, 2499f), 22514u, 31998i), 0i, Struct_1(12395u, vec2<f32>(-149f, -1078f), 0u, -5928i), 0i), Struct_2(Struct_1(0u, vec2<f32>(-1000f, -690f), 0u, 2147483647i), 11327i, Struct_1(1u, vec2<f32>(394f, -966f), 1465u, 2147483647i), 1i), true, false), Struct_3(Struct_2(Struct_1(32855u, vec2<f32>(-201f, -484f), 0u, -5524i), i32(-2147483648), Struct_1(65360u, vec2<f32>(3024f, 1000f), 40021u, i32(-2147483648)), -863i), Struct_2(Struct_1(7976u, vec2<f32>(902f, -1972f), 91069u, -1i), 16899i, Struct_1(26019u, vec2<f32>(112f, -329f), 5242u, 25456i), 2147483647i), Struct_2(Struct_1(15964u, vec2<f32>(-305f, 1148f), 0u, -9875i), 2848i, Struct_1(35296u, vec2<f32>(697f, 915f), 46380u, -1i), -43968i), true, false), Struct_3(Struct_2(Struct_1(31545u, vec2<f32>(-428f, 277f), 15546u, -16143i), 20931i, Struct_1(4294967295u, vec2<f32>(-1327f, 1000f), 1u, -5257i), 2967i), Struct_2(Struct_1(1u, vec2<f32>(1000f, -1000f), 4294967295u, 2147483647i), i32(-2147483648), Struct_1(11152u, vec2<f32>(-219f, 614f), 0u, -36013i), i32(-2147483648)), Struct_2(Struct_1(14560u, vec2<f32>(-349f, 1000f), 0u, 69900i), 1i, Struct_1(0u, vec2<f32>(1520f, 1557f), 4294967295u, -1i), 0i), true, false), Struct_3(Struct_2(Struct_1(6030u, vec2<f32>(-153f, 430f), 4294967295u, 1i), 0i, Struct_1(1u, vec2<f32>(346f, 1000f), 30929u, 5836i), 0i), Struct_2(Struct_1(1u, vec2<f32>(-2116f, 270f), 4294967295u, 32566i), 0i, Struct_1(47690u, vec2<f32>(554f, -1339f), 47748u, 23181i), i32(-2147483648)), Struct_2(Struct_1(18767u, vec2<f32>(-394f, -374f), 4294967295u, -16334i), 0i, Struct_1(1626u, vec2<f32>(148f, 901f), 83137u, -10967i), i32(-2147483648)), false, true), Struct_3(Struct_2(Struct_1(33061u, vec2<f32>(1146f, 629f), 32598u, 0i), -1i, Struct_1(0u, vec2<f32>(-149f, 1208f), 28204u, i32(-2147483648)), -1i), Struct_2(Struct_1(60526u, vec2<f32>(-1195f, 102f), 67978u, 2147483647i), 0i, Struct_1(0u, vec2<f32>(-1363f, -151f), 4294967295u, 2147483647i), -58151i), Struct_2(Struct_1(24256u, vec2<f32>(205f, -1397f), 4294967295u, -38657i), -5559i, Struct_1(85233u, vec2<f32>(-547f, -1415f), 1u, 0i), 29647i), true, false));

var<private> global2: f32 = -275f;

var<private> global3: array<Struct_2, 13>;

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a, 2147483647i, Struct_1(~_wgslsmith_div_u32(select(arg_2.c, 27952u, arg_1), ~22470u), arg_0.a.b, abs(max(_wgslsmith_mult_u32(4294967295u, u_input.b), arg_0.c.c)), 2147483647i), ~(~arg_0.a.d));
    let var_1 = global4[_wgslsmith_index_u32(2774u, 14u)];
    global3 = array<Struct_2, 13>();
    global0 = array<Struct_3, 13>();
    let var_2 = Struct_2(var_1.b.c, 1i, arg_2, 1i);
    return arg_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    var var_0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.a.c, 1u, u_input.b), vec4<u32>(arg_2.a.c, 4294967295u, u_input.b, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.c.c, arg_2.a.c), vec3<u32>(33968u, u_input.b, 1u)), 21927u), vec3<u32>(4294967295u, 18118u, 8603u));
    global3 = array<Struct_2, 13>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.b.x) + _wgslsmith_f_op_f32(min(-866f, _wgslsmith_f_op_f32(min(1559f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f - arg_2.c.b.x)))))));
    return !select(select(vec4<bool>(true, arg_1, false, any(vec4<bool>(arg_1, true, arg_1, arg_1))), !vec4<bool>(false, true, true, arg_1), vec4<bool>(false, true, all(vec3<bool>(arg_1, arg_1, true)), any(vec4<bool>(arg_1, false, false, arg_1)))), vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1)), arg_1, 2098f > arg_2.a.b.x, false), false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = arg_1.a;
    let var_1 = global0[_wgslsmith_index_u32(~28681u, 13u)];
    let var_2 = _wgslsmith_f_op_f32(-arg_0.a.c.b.x);
    global1 = array<Struct_3, 22>();
    let var_3 = 418f;
    return (-vec4<i32>(func_2(var_1.b, false, Struct_1(4294967295u, vec2<f32>(var_1.b.a.b.x, 726f), 1u, var_0.d)).d, -36007i, _wgslsmith_add_i32(u_input.a, -15475i), max(-1i, -13366i)) << (~vec4<u32>(73404u << (var_1.c.a.c % 32u), 1u, var_1.b.c.c & 3922u, ~4294967295u) % vec4<u32>(32u))) & (-(select(vec4<i32>(arg_1.b, -1i, u_input.a, var_1.c.d), vec4<i32>(-1i, u_input.a, -3124i, u_input.a), false) >> (countOneBits(vec4<u32>(var_1.a.c.a, arg_1.a.c, 1u, var_0.c)) % vec4<u32>(32u))) ^ vec4<i32>(var_1.a.b, i32(-1i) * -11194i, -12327i, (i32(-1i) * -8737i) >> (arg_0.a.c.c % 32u)));
}

fn func_1() -> vec3<bool> {
    global3 = array<Struct_2, 13>();
    var var_0 = -func_4(Struct_3(global3[_wgslsmith_index_u32(u_input.b, 13u)], Struct_2(Struct_1(u_input.b, vec2<f32>(-1164f, 497f), 1u, u_input.a), i32(-1i) * -26724i, func_2(global3[_wgslsmith_index_u32(0u, 13u)], false, Struct_1(4294967295u, vec2<f32>(-969f, 359f), u_input.b, -15330i)), abs(u_input.a)), Struct_2(func_2(Struct_2(Struct_1(5959u, vec2<f32>(-1487f, -925f), u_input.b, 2147483647i), -2147483647i, Struct_1(1u, vec2<f32>(-1199f, 176f), u_input.b, -1i), u_input.a), true, Struct_1(0u, vec2<f32>(1112f, -2433f), 1u, 0i)), func_2(Struct_2(Struct_1(0u, vec2<f32>(1580f, 677f), u_input.b, -2147483647i), u_input.a, Struct_1(0u, vec2<f32>(497f, -471f), 0u, u_input.a), u_input.a), true, Struct_1(32128u, vec2<f32>(1416f, -890f), 2472u, u_input.a)).d, func_2(global3[_wgslsmith_index_u32(4440u, 13u)], false, Struct_1(u_input.b, vec2<f32>(-374f, -1402f), u_input.b, u_input.a)), 1i), false, any(func_3(vec4<i32>(u_input.a, u_input.a, -677i, 48100i), false, Struct_2(Struct_1(45678u, vec2<f32>(-1000f, 281f), 0u, u_input.a), 0i, Struct_1(0u, vec2<f32>(386f, -1051f), 8566u, 26731i), u_input.a), 340f))), Struct_2(func_2(global3[_wgslsmith_index_u32(1u, 13u)], select(false, true, true), Struct_1(u_input.b, vec2<f32>(2211f, -993f), 8553u, u_input.a)), 2147483647i, func_2(global3[_wgslsmith_index_u32(select(u_input.b, u_input.b, true), 13u)], false, Struct_1(u_input.b, vec2<f32>(-1751f, 1827f), u_input.b, -2147483647i)), -u_input.a));
    var var_1 = false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))) >= -422f);
    var var_2 = ~select(var_0.yyw, vec3<i32>(_wgslsmith_mod_i32(var_0.x, -28673i), -42878i, firstLeadingBit(u_input.a)) ^ (abs(var_0.ywx) & (var_0.zyw | var_0.zww)), select(func_3(abs(vec4<i32>(-16747i, var_0.x, 25659i, u_input.a)), u_input.a > u_input.a, global3[_wgslsmith_index_u32(1u << (u_input.b % 32u), 13u)], -590f).yxw, vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))));
    var_1 = true;
    return vec3<bool>(u_input.b < (u_input.b >> (~u_input.b % 32u)), true, (_wgslsmith_f_op_f32(abs(1f)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1568f, 593f)), func_2(Struct_2(Struct_1(19192u, vec2<f32>(-1000f, -1717f), 3559u, u_input.a), u_input.a, Struct_1(u_input.b, vec2<f32>(-1000f, -327f), 1u, 1i), var_0.x), false, Struct_1(u_input.b, vec2<f32>(284f, -388f), u_input.b, u_input.a)).b.x))) | true);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_2 {
    global4 = array<Struct_3, 14>();
    let var_0 = ~(~(~(vec4<u32>(u_input.b, 4294967295u, 19690u, 28721u) & vec4<u32>(5310u, arg_2.a.c.c.a, 4294967295u, arg_2.a.a.c.a)))) << (~(vec4<u32>(_wgslsmith_add_u32(u_input.b, arg_2.c.b.c.a), u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.b, arg_2.a.a.c.c)) ^ vec4<u32>(~u_input.b, ~36390u, ~12099u, ~arg_2.c.b.a.a)) % vec4<u32>(32u));
    global3 = array<Struct_2, 13>();
    var var_1 = Struct_2(func_2(global3[_wgslsmith_index_u32(1u, 13u)], func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(4928i, arg_2.c.b.c.d, 2147483647i, 2147483647i) & vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(20592i, 15908i, 29652i, 1i)), true, global3[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.b.a.b.x, 452f, arg_2.c.e)) * _wgslsmith_f_op_f32(sign(arg_1.x)))).x, arg_2.c.a.c), _wgslsmith_mult_i32(-1i, arg_2.a.b.b), arg_2.c.c.c, _wgslsmith_mult_i32(abs(abs(max(-1i, -1i))), -5278i));
    global0 = array<Struct_3, 13>();
    return arg_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, 872f, -1000f) + vec3<f32>(-1012f, -2519f, -1100f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(465f, 220f, -1547f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(292f, -1096f, -1603f) - vec3<f32>(-1186f, -1000f, 1000f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1549f)), -1904f, _wgslsmith_f_op_f32(-552f - -271f)), vec3<f32>(-604f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-593f, 950f))))))));
    let var_1 = func_5(!func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1886f, _wgslsmith_f_op_f32(max(var_0.x, -179f)), _wgslsmith_f_op_f32(f32(-1f) * -1551f), _wgslsmith_f_op_f32(3005f * var_0.x))))), Struct_4(Struct_3(Struct_2(Struct_1(u_input.b, vec2<f32>(var_0.x, var_0.x), u_input.b, u_input.a), max(u_input.a, 25417i), func_2(Struct_2(Struct_1(0u, vec2<f32>(var_0.x, var_0.x), u_input.b, 1i), u_input.a, Struct_1(0u, vec2<f32>(var_0.x, var_0.x), u_input.b, -9990i), 1i), false, Struct_1(13298u, var_0.zz, u_input.b, -35345i)), u_input.a << (u_input.b % 32u)), global3[_wgslsmith_index_u32(~4294967295u, 13u)], global3[_wgslsmith_index_u32(~func_2(global3[_wgslsmith_index_u32(u_input.b, 13u)], true, Struct_1(48878u, vec2<f32>(-309f, var_0.x), u_input.b, u_input.a)).c, 13u)], !func_3(vec4<i32>(67397i, u_input.a, u_input.a, 26380i), true, Struct_2(Struct_1(u_input.b, var_0.xy, u_input.b, 2147483647i), -35990i, Struct_1(u_input.b, vec2<f32>(118f, -941f), u_input.b, u_input.a), -2147483647i), var_0.x).x, false), any(vec2<bool>(true, true)), Struct_3(global3[_wgslsmith_index_u32(u_input.b, 13u)], Struct_2(Struct_1(23813u, vec2<f32>(var_0.x, -214f), u_input.b, -1i), ~u_input.a, func_2(Struct_2(Struct_1(89269u, vec2<f32>(-1192f, var_0.x), 49993u, u_input.a), -27535i, Struct_1(u_input.b, var_0.xx, u_input.b, u_input.a), -2147483647i), false, Struct_1(89816u, var_0.zz, u_input.b, 0i)), _wgslsmith_mod_i32(u_input.a, u_input.a)), global3[_wgslsmith_index_u32(61909u, 13u)], _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) <= 36881u, 0i >= firstTrailingBit(u_input.a))));
    let var_2 = func_5(func_1(), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_5(vec3<bool>(true, true, false), vec4<f32>(522f, var_0.x, 122f, -688f), Struct_4(Struct_3(var_1, var_1, Struct_2(Struct_1(u_input.b, vec2<f32>(var_0.x, 1980f), u_input.b, -51i), var_1.a.d, Struct_1(var_1.c.c, var_1.a.b, 0u, -1i), var_1.a.d), false, true), true, global4[_wgslsmith_index_u32(4294967295u, 14u)])).c.b.x, var_0.x) * _wgslsmith_f_op_f32(1465f - 1f)), func_5(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, var_0.x, var_1.a.b.x, 1793f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, -191f, var_0.x, -619f))), Struct_4(Struct_3(Struct_2(var_1.a, 79980i, var_1.c, 2147483647i), var_1, Struct_2(var_1.a, 0i, Struct_1(u_input.b, var_1.a.b, 4294967295u, 1i), u_input.a), true, true), true, global1[_wgslsmith_index_u32(u_input.b, 22u)])).c.b.x), Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.c.c, 81025u) & _wgslsmith_div_u32(4294967295u, 1u & var_1.a.c), 22u)], true, Struct_3(Struct_2(Struct_1(0u, vec2<f32>(-244f, -371f), 5366u, u_input.a), -1i, Struct_1(43807u, var_1.c.b, 1u, -6827i), func_4(global4[_wgslsmith_index_u32(var_1.a.a, 14u)], Struct_2(var_1.c, 19221i, var_1.c, -57813i)).x), Struct_2(Struct_1(6260u, var_0.xz, 23496u, 2147483647i), 6163i, var_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(var_1.b, u_input.a))), Struct_2(func_5(vec3<bool>(true, false, true), vec4<f32>(var_0.x, var_0.x, -1259f, var_1.a.b.x), Struct_4(Struct_3(var_1, global3[_wgslsmith_index_u32(var_1.a.c, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)], false, false), false, Struct_3(Struct_2(Struct_1(var_1.c.a, vec2<f32>(170f, var_0.x), u_input.b, var_1.b), u_input.a, var_1.a, 1i), var_1, Struct_2(var_1.a, -28510i, Struct_1(u_input.b, vec2<f32>(1000f, var_0.x), u_input.b, u_input.a), 0i), true, true))).a, var_1.d, Struct_1(4294967295u, var_0.yx, 44752u, u_input.a), abs(u_input.a)), any(vec2<bool>(true, false)), false)));
    let var_3 = false;
    global0 = array<Struct_3, 13>();
    global4 = array<Struct_3, 14>();
    let var_4 = vec4<i32>(-2147483647i & var_1.d, func_4(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 13963u), 14u)], var_2).x, 12067i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_4.yzy, firstTrailingBit(var_4.wwx)), ~vec3<i32>(u_input.a, u_input.a, 18921i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-184f * var_2.a.b.x), _wgslsmith_f_op_f32(round(-2060f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.b.x, var_1.c.b.x), _wgslsmith_f_op_vec2_f32(var_0.zz + var_1.c.b), select(vec2<bool>(true, var_3), vec2<bool>(var_3, false), vec2<bool>(false, var_3)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a.b)) - vec2<f32>(var_0.x, var_1.c.b.x)), false)), true || var_3)));
}

