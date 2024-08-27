struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(vec3<u32>(0u, 34114u, 42071u), vec3<f32>(-1686f, -248f, 476f), vec3<bool>(true, false, false), vec4<f32>(1000f, -402f, -647f, -836f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 49747u), vec3<f32>(-265f, -166f, -965f), vec3<bool>(false, true, false), vec4<f32>(-1035f, 1054f, 1000f, -1000f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 21042u), vec3<f32>(1000f, -437f, -1490f), vec3<bool>(false, true, true), vec4<f32>(809f, 1000f, 180f, 487f)), Struct_1(vec3<u32>(4765u, 13652u, 0u), vec3<f32>(-551f, 361f, 953f), vec3<bool>(false, true, false), vec4<f32>(-356f, 750f, -454f, -568f))), Struct_3(Struct_1(vec3<u32>(0u, 1u, 4228u), vec3<f32>(-483f, 380f, -1166f), vec3<bool>(false, false, false), vec4<f32>(-201f, 772f, -376f, -1715f)), Struct_1(vec3<u32>(1u, 1u, 1u), vec3<f32>(152f, 1226f, -510f), vec3<bool>(true, true, false), vec4<f32>(-745f, -125f, -646f, -862f))), Struct_3(Struct_1(vec3<u32>(27581u, 0u, 0u), vec3<f32>(135f, -873f, -501f), vec3<bool>(true, true, false), vec4<f32>(614f, 2041f, 215f, 1480f)), Struct_1(vec3<u32>(4294967295u, 36304u, 48479u), vec3<f32>(1123f, -1550f, 485f), vec3<bool>(false, false, false), vec4<f32>(-407f, 878f, -852f, -1411f))), Struct_3(Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<f32>(695f, 784f, -601f), vec3<bool>(false, false, false), vec4<f32>(-1797f, 550f, -980f, 501f)), Struct_1(vec3<u32>(1u, 21381u, 0u), vec3<f32>(-1132f, 1066f, 1000f), vec3<bool>(false, true, true), vec4<f32>(-1254f, -1383f, 1227f, 357f))), Struct_3(Struct_1(vec3<u32>(948u, 0u, 0u), vec3<f32>(291f, 256f, 890f), vec3<bool>(true, true, true), vec4<f32>(971f, 945f, 996f, 613f)), Struct_1(vec3<u32>(4294967295u, 60941u, 0u), vec3<f32>(1000f, -1066f, 1000f), vec3<bool>(true, true, true), vec4<f32>(886f, 176f, -1232f, 218f))), Struct_3(Struct_1(vec3<u32>(1385u, 0u, 28643u), vec3<f32>(-579f, 1336f, -630f), vec3<bool>(true, false, true), vec4<f32>(123f, -1000f, 887f, 330f)), Struct_1(vec3<u32>(14725u, 16553u, 4294967295u), vec3<f32>(-1120f, -1846f, -1475f), vec3<bool>(false, false, true), vec4<f32>(-1844f, 1099f, -638f, -1489f))), Struct_3(Struct_1(vec3<u32>(16075u, 4294967295u, 21071u), vec3<f32>(130f, -2567f, -278f), vec3<bool>(false, false, false), vec4<f32>(-1101f, -2091f, 1249f, 938f)), Struct_1(vec3<u32>(62087u, 1u, 1u), vec3<f32>(1230f, -238f, -844f), vec3<bool>(false, true, false), vec4<f32>(-731f, -452f, 597f, 1535f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-1515f, 145f, 848f), vec3<bool>(true, false, false), vec4<f32>(370f, 367f, -978f, 100f)), Struct_1(vec3<u32>(25069u, 12730u, 59799u), vec3<f32>(661f, -1973f, -907f), vec3<bool>(true, true, true), vec4<f32>(-786f, -730f, 922f, -473f))), Struct_3(Struct_1(vec3<u32>(12193u, 70309u, 18088u), vec3<f32>(-1483f, 408f, -1000f), vec3<bool>(false, false, false), vec4<f32>(1724f, 1689f, -480f, -548f)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(1000f, 607f, -642f), vec3<bool>(false, false, true), vec4<f32>(597f, -442f, -936f, 1744f))), Struct_3(Struct_1(vec3<u32>(0u, 5127u, 4294967295u), vec3<f32>(-804f, 242f, -1153f), vec3<bool>(false, false, false), vec4<f32>(-1222f, 201f, -2291f, -444f)), Struct_1(vec3<u32>(1u, 4294967295u, 26419u), vec3<f32>(-1825f, -1005f, 1000f), vec3<bool>(true, false, false), vec4<f32>(292f, 1989f, -325f, 1000f))), Struct_3(Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<f32>(1092f, -552f, -1883f), vec3<bool>(true, true, true), vec4<f32>(806f, -1010f, 813f, 264f)), Struct_1(vec3<u32>(6743u, 38957u, 20974u), vec3<f32>(-1333f, 812f, -2664f), vec3<bool>(false, true, true), vec4<f32>(-621f, -706f, 1058f, 375f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4983u, 43706u), vec3<f32>(-234f, 1282f, -1212f), vec3<bool>(true, true, true), vec4<f32>(912f, -1000f, 1294f, -251f)), Struct_1(vec3<u32>(4294967295u, 0u, 3869u), vec3<f32>(-1000f, -1843f, -108f), vec3<bool>(true, false, false), vec4<f32>(-982f, 263f, 489f, 946f))), Struct_3(Struct_1(vec3<u32>(1u, 1u, 39415u), vec3<f32>(1174f, 435f, 459f), vec3<bool>(false, false, false), vec4<f32>(1441f, 381f, -2021f, -1538f)), Struct_1(vec3<u32>(52079u, 4294967295u, 34124u), vec3<f32>(1000f, 1913f, -627f), vec3<bool>(false, true, true), vec4<f32>(-467f, 633f, 1300f, -842f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 2659u), vec3<f32>(1013f, -553f, -144f), vec3<bool>(true, false, true), vec4<f32>(710f, 392f, -1090f, 654f)), Struct_1(vec3<u32>(49128u, 1u, 4294967295u), vec3<f32>(-342f, -426f, -607f), vec3<bool>(true, false, false), vec4<f32>(1000f, -1172f, 1063f, -1000f))), Struct_3(Struct_1(vec3<u32>(14712u, 17868u, 11000u), vec3<f32>(1371f, 420f, -1237f), vec3<bool>(false, false, true), vec4<f32>(-1088f, -1648f, 219f, -524f)), Struct_1(vec3<u32>(7136u, 0u, 32916u), vec3<f32>(-177f, -1182f, 210f), vec3<bool>(true, true, true), vec4<f32>(1144f, 133f, -277f, 354f))), Struct_3(Struct_1(vec3<u32>(41062u, 4294967295u, 15805u), vec3<f32>(834f, -782f, 668f), vec3<bool>(false, false, false), vec4<f32>(1623f, -1454f, -901f, -356f)), Struct_1(vec3<u32>(41423u, 57600u, 1u), vec3<f32>(667f, -1000f, -1000f), vec3<bool>(false, false, false), vec4<f32>(-1085f, 1119f, 1220f, -206f))), Struct_3(Struct_1(vec3<u32>(26598u, 15132u, 99541u), vec3<f32>(-215f, 912f, -588f), vec3<bool>(true, true, true), vec4<f32>(-2036f, 152f, -1313f, 949f)), Struct_1(vec3<u32>(29364u, 5029u, 0u), vec3<f32>(793f, -2034f, 669f), vec3<bool>(true, true, true), vec4<f32>(1381f, -154f, 1000f, -200f))), Struct_3(Struct_1(vec3<u32>(41564u, 65831u, 15651u), vec3<f32>(-553f, -1000f, -1286f), vec3<bool>(false, true, true), vec4<f32>(565f, 973f, -179f, 115f)), Struct_1(vec3<u32>(53512u, 59863u, 3238u), vec3<f32>(1129f, -340f, 1886f), vec3<bool>(true, false, true), vec4<f32>(-1000f, -1937f, 617f, -1000f))), Struct_3(Struct_1(vec3<u32>(20285u, 62094u, 1u), vec3<f32>(-388f, -872f, 1698f), vec3<bool>(true, false, true), vec4<f32>(697f, 604f, 348f, -335f)), Struct_1(vec3<u32>(43246u, 1u, 13240u), vec3<f32>(803f, 1000f, 1562f), vec3<bool>(false, false, true), vec4<f32>(-652f, 1738f, 457f, 535f))), Struct_3(Struct_1(vec3<u32>(64941u, 54086u, 4294967295u), vec3<f32>(688f, 240f, -836f), vec3<bool>(true, false, true), vec4<f32>(269f, 903f, -1000f, 1407f)), Struct_1(vec3<u32>(52429u, 4294967295u, 1u), vec3<f32>(413f, -964f, -616f), vec3<bool>(true, true, true), vec4<f32>(-1382f, -899f, -2155f, -516f))), Struct_3(Struct_1(vec3<u32>(0u, 1u, 56450u), vec3<f32>(445f, -1586f, -688f), vec3<bool>(true, false, true), vec4<f32>(419f, -1415f, -1241f, -1149f)), Struct_1(vec3<u32>(1u, 4294967295u, 98306u), vec3<f32>(306f, 269f, -1691f), vec3<bool>(true, true, true), vec4<f32>(-1334f, 127f, 224f, -1146f))), Struct_3(Struct_1(vec3<u32>(0u, 35039u, 8158u), vec3<f32>(1210f, 1063f, -337f), vec3<bool>(false, true, true), vec4<f32>(1121f, 1367f, -1002f, 1180f)), Struct_1(vec3<u32>(0u, 29302u, 39604u), vec3<f32>(890f, -387f, -322f), vec3<bool>(true, true, true), vec4<f32>(1820f, 993f, 482f, -1192f))), Struct_3(Struct_1(vec3<u32>(67731u, 0u, 70660u), vec3<f32>(1000f, -131f, 1184f), vec3<bool>(false, true, false), vec4<f32>(-402f, -2054f, 369f, -708f)), Struct_1(vec3<u32>(25946u, 82810u, 4294967295u), vec3<f32>(-159f, 279f, -144f), vec3<bool>(false, true, false), vec4<f32>(1000f, 1000f, -202f, -590f))), Struct_3(Struct_1(vec3<u32>(14051u, 11505u, 1u), vec3<f32>(1553f, -213f, 1917f), vec3<bool>(false, false, false), vec4<f32>(-510f, -1492f, 111f, 252f)), Struct_1(vec3<u32>(1u, 53669u, 28440u), vec3<f32>(-841f, -431f, 1000f), vec3<bool>(true, false, false), vec4<f32>(1811f, 166f, -602f, -121f))), Struct_3(Struct_1(vec3<u32>(0u, 20672u, 4294967295u), vec3<f32>(-1546f, -594f, -1311f), vec3<bool>(false, true, true), vec4<f32>(1000f, -1000f, -723f, -2242f)), Struct_1(vec3<u32>(33245u, 29358u, 0u), vec3<f32>(-813f, 1013f, -1000f), vec3<bool>(true, true, false), vec4<f32>(-241f, 156f, -1365f, 531f))), Struct_3(Struct_1(vec3<u32>(1u, 43000u, 9954u), vec3<f32>(468f, 2350f, 494f), vec3<bool>(true, true, true), vec4<f32>(1033f, -515f, -652f, -1025f)), Struct_1(vec3<u32>(4294967295u, 1u, 29393u), vec3<f32>(1036f, 431f, -115f), vec3<bool>(true, true, false), vec4<f32>(1407f, -464f, 860f, 228f))));

var<private> global1: array<u32, 17> = array<u32, 17>(1142u, 0u, 4294967295u, 1u, 92930u, 4294967295u, 27840u, 53361u, 93624u, 5797u, 0u, 43685u, 0u, 0u, 0u, 0u, 3230u);

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(vec4<i32>(-1i, -65656i, -9242i, 14723i), vec4<u32>(1u, 17456u, 1u, 4294967295u), 42750u, 37115i), Struct_5(vec4<i32>(-90832i, 0i, 32976i, 0i), vec4<u32>(45536u, 739u, 911u, 34296u), 117916u, 1i), Struct_5(vec4<i32>(i32(-2147483648), -10284i, 6661i, -28915i), vec4<u32>(43054u, 0u, 1u, 4294967295u), 58884u, -21715i), Struct_5(vec4<i32>(1848i, 3826i, i32(-2147483648), 38714i), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), 31688u, 64231i), Struct_5(vec4<i32>(-32092i, 13086i, -1i, i32(-2147483648)), vec4<u32>(0u, 9338u, 22740u, 4294967295u), 37638u, 2147483647i), Struct_5(vec4<i32>(-9938i, 8326i, -3189i, 18060i), vec4<u32>(0u, 19228u, 1u, 4294967295u), 26872u, i32(-2147483648)), Struct_5(vec4<i32>(-28155i, -21073i, -12450i, -12589i), vec4<u32>(5679u, 0u, 0u, 23017u), 1u, 2147483647i), Struct_5(vec4<i32>(0i, -5531i, 1i, i32(-2147483648)), vec4<u32>(15232u, 0u, 0u, 37058u), 4294967295u, 19699i), Struct_5(vec4<i32>(2147483647i, 13140i, -79992i, -23499i), vec4<u32>(21005u, 6852u, 75475u, 34970u), 1u, -18359i), Struct_5(vec4<i32>(2147483647i, -7805i, 33135i, -22700i), vec4<u32>(4294967295u, 1u, 46406u, 0u), 22719u, 2147483647i), Struct_5(vec4<i32>(1i, 49809i, -1i, i32(-2147483648)), vec4<u32>(4294967295u, 44238u, 5515u, 0u), 1u, 21542i), Struct_5(vec4<i32>(-40493i, 2147483647i, 2147483647i, 1i), vec4<u32>(4294967295u, 0u, 104326u, 12445u), 74912u, i32(-2147483648)), Struct_5(vec4<i32>(-87709i, 0i, i32(-2147483648), 26369i), vec4<u32>(4294967295u, 1u, 21037u, 38547u), 45852u, -35775i), Struct_5(vec4<i32>(-80487i, -1i, -2095i, -36474i), vec4<u32>(27244u, 48976u, 45340u, 1672u), 10183u, 0i), Struct_5(vec4<i32>(-14615i, 44440i, 14040i, 0i), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 1u, 0i), Struct_5(vec4<i32>(-32184i, -63185i, 9391i, -98372i), vec4<u32>(0u, 54366u, 1u, 0u), 20737u, i32(-2147483648)), Struct_5(vec4<i32>(-1i, -1i, -3147i, 3861i), vec4<u32>(38619u, 0u, 52986u, 1u), 1198u, 14797i), Struct_5(vec4<i32>(1i, 0i, 11269i, 2147483647i), vec4<u32>(53478u, 13269u, 1u, 4294967295u), 4294967295u, 0i), Struct_5(vec4<i32>(-1i, 32670i, -1685i, 2147483647i), vec4<u32>(42677u, 1u, 38278u, 22903u), 18939u, 30956i), Struct_5(vec4<i32>(-1i, i32(-2147483648), 21067i, 8951i), vec4<u32>(4294967295u, 1u, 5358u, 52248u), 10614u, 6139i), Struct_5(vec4<i32>(32061i, 0i, 1i, -20806i), vec4<u32>(52690u, 1u, 0u, 1u), 1u, 20916i), Struct_5(vec4<i32>(i32(-2147483648), 1i, 65831i, 1i), vec4<u32>(24859u, 53675u, 4294967295u, 1u), 4294967295u, 1i), Struct_5(vec4<i32>(2147483647i, -20883i, i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 4294967295u, 1u, 25052u), 12761u, 2147483647i), Struct_5(vec4<i32>(-1i, -20746i, 6351i, -33132i), vec4<u32>(4294967295u, 7076u, 29431u, 0u), 4294967295u, -23269i), Struct_5(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -18214i), vec4<u32>(6782u, 4294967295u, 1u, 1u), 67885u, 0i), Struct_5(vec4<i32>(50115i, -12564i, 7721i, -4762i), vec4<u32>(55833u, 47363u, 31743u, 1u), 15167u, 2147483647i), Struct_5(vec4<i32>(0i, 9035i, -1i, i32(-2147483648)), vec4<u32>(2555u, 1u, 55215u, 48841u), 42254u, 0i), Struct_5(vec4<i32>(i32(-2147483648), 78379i, 0i, -1388i), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 14844u, i32(-2147483648)), Struct_5(vec4<i32>(1i, 0i, i32(-2147483648), 0i), vec4<u32>(4294967295u, 0u, 44478u, 52294u), 96044u, 0i));

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_1(vec3<u32>(1u, 3075u, 40075u), vec3<f32>(952f, -609f, 449f), vec3<bool>(true, false, true), vec4<f32>(257f, -1000f, -352f, -197f)), Struct_1(vec3<u32>(4812u, 20227u, 38713u), vec3<f32>(-692f, 1308f, -1285f), vec3<bool>(false, true, true), vec4<f32>(133f, -160f, 497f, 1897f))), Struct_3(Struct_1(vec3<u32>(44949u, 30998u, 37467u), vec3<f32>(376f, 1607f, -997f), vec3<bool>(false, true, false), vec4<f32>(-3098f, 470f, 2301f, -1202f)), Struct_1(vec3<u32>(45859u, 41617u, 4294967295u), vec3<f32>(-1433f, 309f, -1742f), vec3<bool>(true, true, false), vec4<f32>(-439f, -476f, -324f, 1012f))), Struct_3(Struct_1(vec3<u32>(35476u, 31608u, 0u), vec3<f32>(689f, 801f, -130f), vec3<bool>(true, true, true), vec4<f32>(1000f, -553f, -1160f, -1488f)), Struct_1(vec3<u32>(14539u, 36788u, 4294967295u), vec3<f32>(744f, 1185f, 110f), vec3<bool>(true, false, false), vec4<f32>(-275f, -653f, -554f, 316f))), Struct_3(Struct_1(vec3<u32>(33045u, 19757u, 1u), vec3<f32>(-757f, 3203f, -1000f), vec3<bool>(false, false, false), vec4<f32>(814f, -279f, 351f, -974f)), Struct_1(vec3<u32>(0u, 0u, 24337u), vec3<f32>(-1411f, -377f, -315f), vec3<bool>(true, true, true), vec4<f32>(1000f, -1174f, 2048f, -1429f))), Struct_3(Struct_1(vec3<u32>(54385u, 75155u, 4294967295u), vec3<f32>(-1057f, -613f, 1288f), vec3<bool>(false, true, false), vec4<f32>(768f, 1000f, 1834f, 447f)), Struct_1(vec3<u32>(0u, 22522u, 755u), vec3<f32>(-896f, -488f, -1112f), vec3<bool>(true, true, false), vec4<f32>(306f, -319f, -1422f, 381f))), Struct_3(Struct_1(vec3<u32>(0u, 64790u, 37048u), vec3<f32>(1767f, 127f, -258f), vec3<bool>(true, true, false), vec4<f32>(-211f, 1077f, 1197f, -214f)), Struct_1(vec3<u32>(50420u, 77930u, 86724u), vec3<f32>(1044f, -1546f, 1223f), vec3<bool>(true, false, false), vec4<f32>(1000f, -723f, -782f, 1000f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 77696u, 4294967295u), vec3<f32>(1000f, 161f, -849f), vec3<bool>(false, false, true), vec4<f32>(-444f, -230f, -822f, -166f)), Struct_1(vec3<u32>(30633u, 1u, 7440u), vec3<f32>(785f, -433f, -117f), vec3<bool>(true, true, true), vec4<f32>(756f, -468f, -1038f, -1010f))), Struct_3(Struct_1(vec3<u32>(0u, 1u, 3751u), vec3<f32>(589f, 516f, -1208f), vec3<bool>(true, true, false), vec4<f32>(1234f, -612f, -470f, 637f)), Struct_1(vec3<u32>(794u, 4294967295u, 17497u), vec3<f32>(224f, -1675f, 1000f), vec3<bool>(false, true, true), vec4<f32>(-1086f, 468f, -784f, -395f))), Struct_3(Struct_1(vec3<u32>(3733u, 0u, 8751u), vec3<f32>(-506f, 1000f, -1000f), vec3<bool>(true, false, false), vec4<f32>(-1203f, 1249f, -589f, -1980f)), Struct_1(vec3<u32>(4294967295u, 6772u, 4294967295u), vec3<f32>(869f, -665f, 1929f), vec3<bool>(true, true, true), vec4<f32>(417f, 266f, 140f, 222f))), Struct_3(Struct_1(vec3<u32>(60255u, 25390u, 4294967295u), vec3<f32>(-964f, -892f, 977f), vec3<bool>(true, true, false), vec4<f32>(-372f, -1000f, -410f, 1000f)), Struct_1(vec3<u32>(0u, 102000u, 0u), vec3<f32>(-1165f, -1000f, -1000f), vec3<bool>(false, true, true), vec4<f32>(-1355f, -1166f, -1063f, -559f))), Struct_3(Struct_1(vec3<u32>(42599u, 4294967295u, 53452u), vec3<f32>(1716f, 1053f, 457f), vec3<bool>(true, true, true), vec4<f32>(221f, -1000f, -1147f, 699f)), Struct_1(vec3<u32>(1u, 0u, 55605u), vec3<f32>(-797f, 2473f, 1223f), vec3<bool>(false, false, true), vec4<f32>(129f, 981f, 357f, 541f))), Struct_3(Struct_1(vec3<u32>(55506u, 0u, 50589u), vec3<f32>(-347f, 1309f, -1178f), vec3<bool>(false, false, false), vec4<f32>(-454f, -164f, -1439f, 718f)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<f32>(-126f, -229f, -269f), vec3<bool>(false, true, true), vec4<f32>(773f, -1364f, -1000f, -821f))), Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 35478u), vec3<f32>(978f, -608f, 975f), vec3<bool>(true, false, true), vec4<f32>(-1746f, 104f, 1000f, 638f)), Struct_1(vec3<u32>(57628u, 5023u, 4294967295u), vec3<f32>(203f, -1329f, 260f), vec3<bool>(false, false, false), vec4<f32>(1224f, -609f, 488f, -1300f))), Struct_3(Struct_1(vec3<u32>(79693u, 1u, 15485u), vec3<f32>(-407f, -201f, -1796f), vec3<bool>(true, false, false), vec4<f32>(720f, -546f, 1854f, 633f)), Struct_1(vec3<u32>(74718u, 1u, 39492u), vec3<f32>(-674f, -2004f, -857f), vec3<bool>(true, true, true), vec4<f32>(302f, 1075f, 600f, 1000f))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global1 = array<u32, 17>();
    var var_0 = ~(~global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_div_u32(arg_1.x, global1[_wgslsmith_index_u32(1u, 17u)])), 17u)]);
    global1 = array<u32, 17>();
    var var_1 = Struct_4(any(vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), true)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(~(~arg_1 >> (~vec4<u32>(4294967295u, u_input.c, u_input.b, 92124u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.x, 17u)], 17u)]), ~vec4<u32>(84947u, u_input.c, u_input.c, 10285u))), Struct_2(Struct_1(~(arg_1.zzz >> (arg_1.www % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(622f, 583f, arg_0), vec3<f32>(arg_0, -1962f, 1151f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, arg_0, -1350f))), vec3<bool>(any(vec2<bool>(false, true)), false, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1604f, arg_0)))), vec4<bool>(any(vec3<bool>(true, true, true)), ~(-2147483647i) < _wgslsmith_mod_i32(u_input.a.x, 14041i), true, !any(vec2<bool>(false, false))), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-30548i, u_input.a.x, u_input.a.x), vec3<i32>(-35189i, -3676i, 1i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, u_input.a.x), u_input.a.yx, vec2<bool>(false, true)), vec2<i32>(u_input.a.x, 1i) >> (vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], arg_1.x) % vec2<u32>(32u)))), i32(-1i) * -u_input.a.x, vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 11131i), ~u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 35044i) << ((arg_1.x ^ 1u) % 32u))));
    var var_2 = ~(reverseBits(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -2147483647i), vec3<i32>(1i, u_input.a.x, u_input.a.x)))) << (_wgslsmith_mult_u32(arg_1.x, ~select(1u, 4294967295u, false)) % 32u));
    return reverseBits(u_input.c);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = ~((arg_0.a.a.x << ((~u_input.b >> (func_3(547f, vec4<u32>(arg_0.a.a.x, 0u, arg_1, 3467u)) % 32u)) % 32u)) | reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(15285u, 0u), arg_0.a.a.zz)));
    global1 = array<u32, 17>();
    global0 = array<Struct_3, 27>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, max(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1, _wgslsmith_dot_vec2_u32(arg_0.b.a.zz, vec2<u32>(59727u, 89181u)), 1u, _wgslsmith_mult_u32(arg_0.b.a.x, global1[_wgslsmith_index_u32(arg_1, 17u)])), ~vec4<u32>(arg_0.a.a.x, global1[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, arg_1) & _wgslsmith_clamp_vec4_u32(vec4<u32>(24336u, arg_1, 1u, u_input.c), vec4<u32>(1u, arg_1, arg_0.b.a.x, 4294967295u), vec4<u32>(arg_0.a.a.x, u_input.b, 87471u, 0u))), arg_0.b.a.x), ~arg_1 >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(min(arg_0.a.a, arg_0.a.a)), countOneBits(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(27507u, 17u)], 4294967295u))), 17u)], 17u)] % 32u)), 27u)];
    global0 = array<Struct_3, 27>();
    return true;
}

fn func_1() -> bool {
    global2 = array<Struct_5, 29>();
    let var_0 = Struct_4(true | all(vec3<bool>(func_2(global3[_wgslsmith_index_u32(1u, 14u)], u_input.c, false), true, true)), select(min(_wgslsmith_add_vec4_i32(select(vec4<i32>(0i, 28128i, 2147483647i, 2147483647i), vec4<i32>(u_input.a.x, -65429i, u_input.a.x, 2147483647i), vec4<bool>(true, false, false, true)), max(vec4<i32>(5109i, 15401i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.a.x))), ~(~vec4<i32>(u_input.a.x, 9121i, u_input.a.x, -1808i))), vec4<i32>(u_input.a.x, ~(-1i) << ((4294967295u >> (u_input.c % 32u)) % 32u), firstLeadingBit(select(16809i, u_input.a.x, true)), u_input.a.x), true), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 6134u << (u_input.b % 32u), ~global1[_wgslsmith_index_u32(4294967295u, 17u)], u_input.b & u_input.c), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(22281u, u_input.b, global1[_wgslsmith_index_u32(16370u, 17u)], 1u)), vec4<u32>(19130u, 14650u, u_input.b, 4294967295u)))), Struct_2(Struct_1(firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, 1u)) | ~vec3<u32>(1u, global1[_wgslsmith_index_u32(23736u, 17u)], u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1595f, -1000f), vec3<f32>(338f, 1433f, -1814f)) - vec3<f32>(-335f, 1000f, 229f)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(u_input.c, 17u)] == 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), 1381f, _wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(f32(-1f) * -725f))), vec4<bool>(any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(select(0u, global1[_wgslsmith_index_u32(u_input.b, 17u)], false), 17u)] >= reverseBits(1u), select(false, all(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, false, true, true))), false), ~countOneBits(vec3<i32>(u_input.a.x, 20579i, u_input.a.x) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 17u)], 23422u, global1[_wgslsmith_index_u32(80223u, 17u)]) % vec3<u32>(32u))), (firstTrailingBit(u_input.a.x) >> (14502u % 32u)) >> (min(max(13065u, 4294967295u), max(48698u, global1[_wgslsmith_index_u32(32492u, 17u)])) % 32u), vec4<i32>(max(-1709i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -32269i), u_input.a.xz)), u_input.a.x, ~782i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -21473i, u_input.a.x, u_input.a.x) & vec4<i32>(74797i, -28224i, 2147483647i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -1i)))));
    let var_1 = var_0.d.a;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2314f, 281f))), func_1())));
    global3 = array<Struct_3, 14>();
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(reverseBits(4294967295u)), max(abs(u_input.c), u_input.b)) & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 22915u), vec3<u32>(~4294967295u, global1[_wgslsmith_index_u32(78817u, 17u)] << (89108u % 32u), _wgslsmith_mod_u32(u_input.c, global1[_wgslsmith_index_u32(1u, 17u)]))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 17u)], 4105u, 22336u), vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], 41440u)), 1u) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(13199u, 17u)]), vec2<u32>(u_input.b, 0u)), u_input.b, ~u_input.b)), 14u)];
    var var_3 = true;
    global0 = array<Struct_3, 27>();
    let var_4 = var_2.b.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(682f)), _wgslsmith_f_op_f32(var_1 * var_2.a.d.x), _wgslsmith_div_f32(1340f, 601f))), var_2.b.d.yww)), vec4<f32>(var_2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f - var_2.a.b.x))), var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + -1712f), 1f)), var_1))));
}

