struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -23078i, 4643i), vec4<i32>(-1i, 2147483647i, 1i, 1i), vec4<f32>(1365f, -416f, 1107f, -106f)), Struct_1(vec3<i32>(1i, -1i, -1i), vec4<i32>(43430i, 0i, -1i, 2147483647i), vec4<f32>(1602f, 438f, 1020f, 1660f)), Struct_1(vec3<i32>(1i, 12928i, -1i), vec4<i32>(29538i, -4091i, 0i, -13189i), vec4<f32>(-1000f, 108f, 283f, -361f)), Struct_1(vec3<i32>(-1i, 49946i, 29776i), vec4<i32>(52426i, 1i, 18091i, 37602i), vec4<f32>(518f, 187f, -1671f, 164f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(-1i, 17588i, -1934i), vec4<i32>(1i, -25344i, -5941i, 19569i), vec4<f32>(1000f, 281f, 1273f, 687f)), Struct_1(vec3<i32>(0i, 70994i, 29702i), vec4<i32>(2147483647i, -24030i, 1i, 0i), vec4<f32>(165f, 201f, 214f, 770f)), Struct_1(vec3<i32>(0i, -10143i, 1i), vec4<i32>(-31684i, 1i, 37475i, -65066i), vec4<f32>(673f, 1128f, -924f, -608f)), Struct_1(vec3<i32>(-1i, 8422i, 1i), vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), vec4<f32>(-1000f, 1336f, -1598f, -928f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(-48710i, 26391i, 0i), vec4<i32>(55018i, 4671i, 2147483647i, i32(-2147483648)), vec4<f32>(1308f, -1421f, -802f, 727f)), Struct_1(vec3<i32>(6870i, 5408i, -55441i), vec4<i32>(i32(-2147483648), 1673i, i32(-2147483648), -1i), vec4<f32>(1237f, 657f, -926f, -1000f)), Struct_1(vec3<i32>(i32(-2147483648), -56366i, 0i), vec4<i32>(3356i, 16074i, -41071i, -20861i), vec4<f32>(1000f, -477f, -1286f, -347f)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec4<i32>(0i, 1i, 35810i, i32(-2147483648)), vec4<f32>(-734f, -1305f, -384f, -1105f)), 1u), Struct_2(Struct_1(vec3<i32>(36422i, i32(-2147483648), -42515i), vec4<i32>(-1i, 2147483647i, 9432i, 28014i), vec4<f32>(529f, 1577f, 1002f, 1035f)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-43891i, 0i, 0i, -19583i), vec4<f32>(1368f, -800f, 971f, -1280f)), Struct_1(vec3<i32>(0i, -7897i, 0i), vec4<i32>(71690i, -15943i, i32(-2147483648), -33314i), vec4<f32>(-1296f, 1192f, -1039f, -1000f)), Struct_1(vec3<i32>(0i, 2147483647i, -31148i), vec4<i32>(1i, -4650i, -63165i, 0i), vec4<f32>(-1937f, -1912f, 171f, -1245f)), 1u), Struct_2(Struct_1(vec3<i32>(0i, 5630i, -10010i), vec4<i32>(0i, 0i, -14682i, -1i), vec4<f32>(-468f, -726f, 2022f, -1198f)), Struct_1(vec3<i32>(2147483647i, 11438i, -13658i), vec4<i32>(-37888i, 14493i, 17515i, 1i), vec4<f32>(-2614f, -415f, 169f, 2395f)), Struct_1(vec3<i32>(2445i, 2147483647i, -50917i), vec4<i32>(i32(-2147483648), 33087i, 5025i, 2147483647i), vec4<f32>(1000f, 344f, -1000f, 1373f)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i), vec4<i32>(-44663i, 12958i, 2147483647i, 49451i), vec4<f32>(-128f, -1000f, -1000f, 672f)), 49315u), Struct_2(Struct_1(vec3<i32>(2147483647i, -20243i, -1i), vec4<i32>(3027i, 64640i, -1i, 1i), vec4<f32>(2018f, 1510f, 564f, -638f)), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), vec4<i32>(1i, -171i, 13447i, -56674i), vec4<f32>(1144f, -553f, 1441f, -285f)), Struct_1(vec3<i32>(-28196i, -86659i, 18687i), vec4<i32>(i32(-2147483648), i32(-2147483648), 15963i, i32(-2147483648)), vec4<f32>(1245f, 635f, 1213f, -805f)), Struct_1(vec3<i32>(2147483647i, -7382i, 10687i), vec4<i32>(13378i, -1i, 2147483647i, i32(-2147483648)), vec4<f32>(1000f, 411f, -1341f, -474f)), 1u), Struct_2(Struct_1(vec3<i32>(0i, -80297i, 0i), vec4<i32>(693i, 0i, 2147483647i, -23253i), vec4<f32>(-1215f, 1078f, -143f, -521f)), Struct_1(vec3<i32>(70617i, -89655i, 1i), vec4<i32>(1129i, -34703i, 2147483647i, 8455i), vec4<f32>(-678f, 540f, 249f, -516f)), Struct_1(vec3<i32>(-23416i, 47734i, 1i), vec4<i32>(-17110i, 0i, i32(-2147483648), 1i), vec4<f32>(-458f, -1182f, -1463f, -345f)), Struct_1(vec3<i32>(33292i, 0i, -9925i), vec4<i32>(-1i, -59264i, 11769i, 15725i), vec4<f32>(588f, 905f, 472f, -737f)), 27638u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -34987i, 24537i), vec4<i32>(4449i, 50300i, -32307i, 32695i), vec4<f32>(-960f, 1379f, 1000f, 849f)), Struct_1(vec3<i32>(-41639i, -5249i, -3473i), vec4<i32>(54697i, -4923i, -1i, 43989i), vec4<f32>(309f, 296f, 601f, -591f)), Struct_1(vec3<i32>(19922i, -3140i, -13038i), vec4<i32>(2147483647i, -1i, 1i, -10514i), vec4<f32>(295f, 1000f, 115f, -1239f)), Struct_1(vec3<i32>(-24076i, -2423i, 2337i), vec4<i32>(38391i, -37610i, -1i, 0i), vec4<f32>(1000f, 377f, -453f, -1827f)), 5680u), Struct_2(Struct_1(vec3<i32>(12645i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-10982i, i32(-2147483648), 0i, -55939i), vec4<f32>(-165f, 807f, 1000f, -1000f)), Struct_1(vec3<i32>(2147483647i, 22269i, i32(-2147483648)), vec4<i32>(-2270i, -26696i, -22707i, 2147483647i), vec4<f32>(-1000f, -430f, 551f, -461f)), Struct_1(vec3<i32>(-23343i, 5322i, -16834i), vec4<i32>(2147483647i, 9363i, 72385i, 1i), vec4<f32>(1025f, -371f, 1000f, -337f)), Struct_1(vec3<i32>(29167i, -1i, 1276i), vec4<i32>(i32(-2147483648), -1i, -1i, -1i), vec4<f32>(627f, 809f, -621f, 1039f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 3102i, -35755i), vec4<i32>(4708i, 2147483647i, -1i, -1i), vec4<f32>(-443f, 192f, 434f, -1220f)), Struct_1(vec3<i32>(0i, -10186i, 80319i), vec4<i32>(4872i, 16977i, 0i, 2147483647i), vec4<f32>(494f, 380f, -1000f, 249f)), Struct_1(vec3<i32>(0i, -27030i, -12777i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<f32>(979f, -622f, 667f, -899f)), Struct_1(vec3<i32>(-5913i, 27388i, -2334i), vec4<i32>(0i, 9597i, 1i, -1932i), vec4<f32>(488f, 687f, 1033f, -136f)), 22410u), Struct_2(Struct_1(vec3<i32>(2147483647i, -8193i, 2147483647i), vec4<i32>(0i, 17266i, i32(-2147483648), -2002i), vec4<f32>(-209f, 1360f, -1000f, -390f)), Struct_1(vec3<i32>(46331i, -1i, -15509i), vec4<i32>(-20142i, 2147483647i, 47736i, 0i), vec4<f32>(679f, 1353f, 1000f, 1699f)), Struct_1(vec3<i32>(36200i, 2147483647i, 3149i), vec4<i32>(-9124i, -6548i, i32(-2147483648), -52588i), vec4<f32>(-757f, 2788f, -2262f, 1775f)), Struct_1(vec3<i32>(-7066i, 1i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 26260i, 0i), vec4<f32>(-1542f, 749f, -1427f, 456f)), 0u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, 1i), vec4<i32>(-14101i, 0i, 2147483647i, -51665i), vec4<f32>(857f, -1459f, 2015f, 279f)), Struct_1(vec3<i32>(62372i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -1i, -1i, 1i), vec4<f32>(1529f, -666f, 1077f, 1116f)), Struct_1(vec3<i32>(0i, 2147483647i, 1i), vec4<i32>(56313i, -21547i, -28203i, -1i), vec4<f32>(1000f, -736f, 1420f, 419f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -62515i), vec4<i32>(i32(-2147483648), 6723i, -1i, i32(-2147483648)), vec4<f32>(1520f, -1000f, 151f, 216f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(18182i, -32212i, 0i), vec4<i32>(1i, -21017i, -1i, -1i), vec4<f32>(1023f, 289f, 566f, 130f)), Struct_1(vec3<i32>(1i, 0i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), -15359i, -1i), vec4<f32>(1000f, 1118f, 536f, 290f)), Struct_1(vec3<i32>(-2060i, 16919i, 1i), vec4<i32>(40766i, -24833i, -1i, -20493i), vec4<f32>(2669f, 473f, -259f, 881f)), Struct_1(vec3<i32>(-24833i, 0i, 22554i), vec4<i32>(-35542i, -47135i, 1i, 15890i), vec4<f32>(131f, -2869f, -1423f, -491f)), 3345u), Struct_2(Struct_1(vec3<i32>(11392i, 1i, 0i), vec4<i32>(1i, -1i, 11996i, -1i), vec4<f32>(-798f, 134f, -1288f, -1168f)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), vec4<i32>(-1i, 1i, 45521i, 28113i), vec4<f32>(697f, 1067f, 2272f, 257f)), Struct_1(vec3<i32>(2076i, -31231i, -15311i), vec4<i32>(-26266i, -1i, -1i, -24301i), vec4<f32>(968f, 1000f, 640f, -1235f)), Struct_1(vec3<i32>(36863i, 1i, 0i), vec4<i32>(-3133i, i32(-2147483648), -8435i, 35222i), vec4<f32>(495f, -1000f, -769f, -194f)), 0u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -5850i, -1i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 31533i), vec4<f32>(973f, 2753f, -384f, 378f)), Struct_1(vec3<i32>(9671i, 2511i, 1i), vec4<i32>(7380i, 1i, 10201i, 1i), vec4<f32>(874f, -1049f, 417f, -1335f)), Struct_1(vec3<i32>(53370i, i32(-2147483648), 3224i), vec4<i32>(18821i, i32(-2147483648), 0i, 0i), vec4<f32>(373f, -1657f, 738f, -316f)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -82976i), vec4<i32>(-13647i, i32(-2147483648), -1i, 18281i), vec4<f32>(-186f, 1064f, 114f, -150f)), 11102u), Struct_2(Struct_1(vec3<i32>(10847i, 0i, -18675i), vec4<i32>(-11393i, -58365i, 4311i, -2878i), vec4<f32>(1218f, -960f, -1523f, -526f)), Struct_1(vec3<i32>(-27379i, 34386i, 1i), vec4<i32>(-1i, -1020i, 8045i, i32(-2147483648)), vec4<f32>(-492f, 363f, 1012f, 419f)), Struct_1(vec3<i32>(0i, 1i, 32873i), vec4<i32>(33860i, 1i, 2147483647i, 6981i), vec4<f32>(-719f, -335f, -1675f, 2001f)), Struct_1(vec3<i32>(-11591i, 7198i, 1i), vec4<i32>(-67660i, 31828i, 23697i, 7762i), vec4<f32>(909f, -273f, 248f, -782f)), 92308u), Struct_2(Struct_1(vec3<i32>(30324i, i32(-2147483648), -26497i), vec4<i32>(24609i, 37339i, 2147483647i, 15589i), vec4<f32>(-1524f, 739f, 544f, -395f)), Struct_1(vec3<i32>(27217i, -13346i, -3241i), vec4<i32>(1i, 1i, 2147483647i, 8537i), vec4<f32>(-862f, -1116f, 1839f, 603f)), Struct_1(vec3<i32>(-60825i, 0i, 12018i), vec4<i32>(-15707i, 0i, 2582i, -1i), vec4<f32>(782f, -2249f, -551f, 1496f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -46793i), vec4<i32>(69822i, -30124i, -1i, -87198i), vec4<f32>(1000f, -1000f, -1001f, 341f)), 66040u), Struct_2(Struct_1(vec3<i32>(1i, -1i, 17140i), vec4<i32>(0i, -2256i, 23696i, i32(-2147483648)), vec4<f32>(2019f, 500f, 548f, 525f)), Struct_1(vec3<i32>(i32(-2147483648), -5456i, i32(-2147483648)), vec4<i32>(28898i, i32(-2147483648), i32(-2147483648), 57031i), vec4<f32>(2013f, 798f, 810f, 382f)), Struct_1(vec3<i32>(2147483647i, 1i, 1i), vec4<i32>(69037i, -22316i, i32(-2147483648), -1i), vec4<f32>(-667f, 1680f, 1289f, 607f)), Struct_1(vec3<i32>(-1i, 28733i, i32(-2147483648)), vec4<i32>(4787i, 13571i, i32(-2147483648), i32(-2147483648)), vec4<f32>(1347f, -1097f, 848f, -1000f)), 1u), Struct_2(Struct_1(vec3<i32>(0i, -23226i, 63200i), vec4<i32>(-75333i, -14399i, 1i, 1i), vec4<f32>(-1000f, 1407f, -455f, 1635f)), Struct_1(vec3<i32>(2147483647i, 24878i, 11034i), vec4<i32>(-42546i, 0i, i32(-2147483648), -53862i), vec4<f32>(712f, -855f, 144f, 537f)), Struct_1(vec3<i32>(-21351i, 72311i, 18049i), vec4<i32>(0i, -12616i, 21045i, 1i), vec4<f32>(-412f, 981f, 1000f, -261f)), Struct_1(vec3<i32>(-1759i, 0i, -1i), vec4<i32>(41878i, -7090i, -1i, -1i), vec4<f32>(-1580f, -1000f, 1349f, 728f)), 0u), Struct_2(Struct_1(vec3<i32>(-7226i, -33427i, -30469i), vec4<i32>(76342i, 2147483647i, 2147483647i, 1i), vec4<f32>(847f, 750f, -381f, 119f)), Struct_1(vec3<i32>(3622i, -1i, 1i), vec4<i32>(-1141i, -41584i, 37379i, 42106i), vec4<f32>(-558f, 1052f, 1398f, -322f)), Struct_1(vec3<i32>(89i, -41002i, 0i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), vec4<f32>(754f, 1322f, -1076f, -301f)), Struct_1(vec3<i32>(-35007i, 0i, 1i), vec4<i32>(-30566i, 0i, -33373i, 1i), vec4<f32>(-482f, -1000f, -219f, 240f)), 34349u));

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec3<i32>(0i, -1i, i32(-2147483648)), vec4<i32>(-15637i, 1i, 38973i, i32(-2147483648)), vec4<f32>(-459f, 383f, -348f, 2116f)), Struct_1(vec3<i32>(-1i, 4217i, -24641i), vec4<i32>(-35696i, 39120i, i32(-2147483648), -67929i), vec4<f32>(689f, 146f, -806f, -1102f)), Struct_1(vec3<i32>(-66695i, 1i, -1i), vec4<i32>(14968i, -12027i, 32034i, 550i), vec4<f32>(-969f, -551f, -210f, 478f)), Struct_1(vec3<i32>(i32(-2147483648), 33673i, -72778i), vec4<i32>(-28031i, 1i, 19911i, -2457i), vec4<f32>(1412f, -1200f, -1129f, 1233f)), 18408u), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, 0i), vec4<i32>(i32(-2147483648), -10404i, 2147483647i, 1i), vec4<f32>(1176f, -585f, 1597f, 1015f)), Struct_1(vec3<i32>(i32(-2147483648), -43135i, -23238i), vec4<i32>(30631i, -1i, 0i, -1i), vec4<f32>(478f, 544f, 379f, -1209f)), Struct_1(vec3<i32>(29364i, 24476i, 13553i), vec4<i32>(2147483647i, 2147483647i, -1957i, 1i), vec4<f32>(790f, -398f, 1220f, -283f)), Struct_1(vec3<i32>(-9628i, i32(-2147483648), -1i), vec4<i32>(3697i, 66362i, 2147483647i, 0i), vec4<f32>(-923f, 490f, -279f, -1148f)), 1u), Struct_2(Struct_1(vec3<i32>(-1i, 0i, 0i), vec4<i32>(-1i, 33291i, i32(-2147483648), -13956i), vec4<f32>(-320f, 1000f, -304f, -1088f)), Struct_1(vec3<i32>(53606i, 43584i, -1i), vec4<i32>(33098i, -1888i, 9019i, -15088i), vec4<f32>(-1888f, -1000f, -1716f, -1201f)), Struct_1(vec3<i32>(0i, 13480i, 33501i), vec4<i32>(-30952i, 0i, 2147483647i, 0i), vec4<f32>(-1107f, 1228f, -295f, -1280f)), Struct_1(vec3<i32>(39817i, 51647i, -1603i), vec4<i32>(-13646i, -1i, 47697i, 1i), vec4<f32>(1798f, -1106f, -1219f, -862f)), 10714u), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), vec4<i32>(-77652i, -24457i, 2147483647i, -1i), vec4<f32>(444f, -269f, -1225f, 1225f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 69506i), vec4<i32>(2147483647i, 1i, -46218i, -1i), vec4<f32>(-471f, 721f, 866f, 340f)), Struct_1(vec3<i32>(0i, 30323i, 7732i), vec4<i32>(-48477i, 1i, -1i, -24962i), vec4<f32>(-199f, -1230f, 301f, 1000f)), Struct_1(vec3<i32>(-19150i, -19135i, 2147483647i), vec4<i32>(14324i, 1i, 24237i, -1i), vec4<f32>(-1618f, 508f, -533f, -1000f)), 79310u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(0i, 15595i, 1i, -39296i), vec4<f32>(707f, 1023f, -368f, 1000f)), Struct_1(vec3<i32>(-1i, 38583i, 0i), vec4<i32>(0i, 35947i, 17115i, 2147483647i), vec4<f32>(178f, -1388f, 240f, -462f)), Struct_1(vec3<i32>(1i, -27611i, i32(-2147483648)), vec4<i32>(1i, -15976i, 2147483647i, 21790i), vec4<f32>(908f, 131f, -508f, 515f)), Struct_1(vec3<i32>(4083i, -11650i, -2304i), vec4<i32>(-1i, 2147483647i, -1i, 1i), vec4<f32>(204f, -131f, -1516f, -245f)), 30911u), Struct_2(Struct_1(vec3<i32>(2147483647i, 21193i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, 1i, 1i), vec4<f32>(-891f, -366f, 1489f, 1000f)), Struct_1(vec3<i32>(4731i, 2147483647i, 50280i), vec4<i32>(2147483647i, i32(-2147483648), -36478i, 34360i), vec4<f32>(433f, -1125f, -299f, 1172f)), Struct_1(vec3<i32>(27329i, i32(-2147483648), 28814i), vec4<i32>(8160i, -9799i, -1i, 0i), vec4<f32>(1494f, 626f, 238f, -1000f)), Struct_1(vec3<i32>(2147483647i, -69225i, 4904i), vec4<i32>(1i, -15469i, 0i, -60i), vec4<f32>(1488f, -1062f, -1046f, -1000f)), 114526u), Struct_2(Struct_1(vec3<i32>(0i, 75635i, -1i), vec4<i32>(0i, 641i, -4823i, 24639i), vec4<f32>(1860f, -672f, 1000f, 1014f)), Struct_1(vec3<i32>(1i, 0i, 2147483647i), vec4<i32>(23751i, 0i, 1i, 38006i), vec4<f32>(-479f, -423f, -1201f, 1000f)), Struct_1(vec3<i32>(1i, 2147483647i, 60519i), vec4<i32>(30824i, -1i, 1i, 2147483647i), vec4<f32>(467f, 964f, 306f, -303f)), Struct_1(vec3<i32>(-10580i, -13230i, 47882i), vec4<i32>(2147483647i, -13198i, -1i, 1i), vec4<f32>(-1223f, -1112f, 282f, -687f)), 80556u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -20361i), vec4<i32>(1i, 8172i, -1i, 2147483647i), vec4<f32>(446f, 1097f, -1222f, 890f)), Struct_1(vec3<i32>(9394i, 32011i, 7676i), vec4<i32>(60110i, 18876i, 217i, -31324i), vec4<f32>(1362f, 2131f, -1000f, 222f)), Struct_1(vec3<i32>(72944i, -1i, 21410i), vec4<i32>(1i, -12214i, -1i, 46432i), vec4<f32>(2431f, -1941f, 1151f, -156f)), Struct_1(vec3<i32>(9352i, 0i, 18493i), vec4<i32>(0i, i32(-2147483648), 11673i, 27256i), vec4<f32>(-711f, 1128f, -1379f, 1239f)), 1u), Struct_2(Struct_1(vec3<i32>(1i, -4552i, -23889i), vec4<i32>(2147483647i, -34080i, 65641i, -81169i), vec4<f32>(364f, -193f, -634f, -1609f)), Struct_1(vec3<i32>(62388i, -5852i, 16354i), vec4<i32>(-4413i, 47320i, 1i, 26017i), vec4<f32>(725f, -1000f, 1259f, -211f)), Struct_1(vec3<i32>(2147483647i, 3915i, 1i), vec4<i32>(-2594i, 2147483647i, i32(-2147483648), -60520i), vec4<f32>(-1654f, 1021f, 936f, -604f)), Struct_1(vec3<i32>(-27968i, 4278i, 1i), vec4<i32>(17985i, -1i, 44423i, 2147483647i), vec4<f32>(-213f, -2451f, 599f, 728f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(7764i, 0i, 8027i), vec4<i32>(i32(-2147483648), -1i, 0i, -17792i), vec4<f32>(-353f, -371f, -402f, 925f)), Struct_1(vec3<i32>(-11469i, -17673i, 1i), vec4<i32>(0i, -12505i, 39555i, 23239i), vec4<f32>(-431f, 1000f, 1290f, -1142f)), Struct_1(vec3<i32>(0i, -52049i, 22039i), vec4<i32>(-1i, i32(-2147483648), -1i, -76986i), vec4<f32>(1279f, 786f, -1186f, -701f)), Struct_1(vec3<i32>(2147483647i, -1i, 1i), vec4<i32>(-9502i, 35853i, 12605i, 28499i), vec4<f32>(266f, -237f, -385f, -104f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(-2370i, -1i, 87777i), vec4<i32>(11773i, -1i, 2147483647i, 2147483647i), vec4<f32>(-138f, 1318f, -165f, 273f)), Struct_1(vec3<i32>(-1i, 71094i, 30145i), vec4<i32>(-57203i, 25355i, 21330i, i32(-2147483648)), vec4<f32>(253f, -196f, 293f, 2724f)), Struct_1(vec3<i32>(-28481i, 0i, 1i), vec4<i32>(-1i, -75881i, 2235i, -28192i), vec4<f32>(122f, 1131f, -1152f, 309f)), Struct_1(vec3<i32>(-1i, 0i, 1i), vec4<i32>(i32(-2147483648), -24988i, -43420i, i32(-2147483648)), vec4<f32>(-244f, 386f, -464f, -1000f)), 2096u), Struct_2(Struct_1(vec3<i32>(0i, 1i, 18512i), vec4<i32>(-1i, -59008i, -310i, 788i), vec4<f32>(299f, 814f, -1814f, 1542f)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -55517i), vec4<i32>(1i, 2147483647i, 63761i, -5118i), vec4<f32>(812f, 627f, -106f, 204f)), Struct_1(vec3<i32>(-20408i, i32(-2147483648), 26646i), vec4<i32>(-1i, 26356i, 0i, -1i), vec4<f32>(193f, 1270f, -350f, -624f)), Struct_1(vec3<i32>(-44380i, 0i, -1073i), vec4<i32>(29202i, 2147483647i, 18717i, 1i), vec4<f32>(-338f, 607f, -457f, -1091f)), 18271u), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(86067i, 8341i, -21645i, 1i), vec4<f32>(758f, -411f, -1583f, -1963f)), Struct_1(vec3<i32>(-18803i, -1i, -19454i), vec4<i32>(i32(-2147483648), 0i, 1i, -1i), vec4<f32>(236f, -1546f, 1983f, 674f)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 12779i), vec4<i32>(1i, 28797i, -29254i, i32(-2147483648)), vec4<f32>(-455f, 2351f, 319f, -137f)), Struct_1(vec3<i32>(-33221i, 31090i, -1i), vec4<i32>(-35595i, 1i, 2479i, -32589i), vec4<f32>(-1000f, 2191f, 586f, 161f)), 0u), Struct_2(Struct_1(vec3<i32>(-3125i, 0i, -12690i), vec4<i32>(i32(-2147483648), i32(-2147483648), 17280i, 1i), vec4<f32>(-1153f, 686f, -195f, -254f)), Struct_1(vec3<i32>(i32(-2147483648), 21866i, 0i), vec4<i32>(-1i, 37959i, -61155i, 2147483647i), vec4<f32>(-689f, -1853f, 1170f, -835f)), Struct_1(vec3<i32>(1i, -18134i, 0i), vec4<i32>(-1i, -30121i, 0i, 54567i), vec4<f32>(-986f, 138f, 2067f, -187f)), Struct_1(vec3<i32>(23926i, 0i, 1i), vec4<i32>(1i, 11630i, i32(-2147483648), 20617i), vec4<f32>(-994f, 533f, -1295f, 1323f)), 25378u), Struct_2(Struct_1(vec3<i32>(41910i, 22502i, 0i), vec4<i32>(38053i, 2147483647i, -4007i, 2147483647i), vec4<f32>(-976f, 1093f, -1497f, -947f)), Struct_1(vec3<i32>(23661i, -8131i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 5738i), vec4<f32>(-417f, 103f, -1647f, 420f)), Struct_1(vec3<i32>(20743i, 1i, 19511i), vec4<i32>(0i, 1i, -1i, 1i), vec4<f32>(298f, 1023f, 968f, 477f)), Struct_1(vec3<i32>(-17629i, 2147483647i, i32(-2147483648)), vec4<i32>(2734i, -26424i, -1i, 0i), vec4<f32>(120f, -1114f, -323f, 158f)), 4294967295u), Struct_2(Struct_1(vec3<i32>(-57233i, -11684i, -1i), vec4<i32>(63555i, -1796i, 1i, -1i), vec4<f32>(1390f, -421f, -1000f, 391f)), Struct_1(vec3<i32>(-3340i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i), vec4<f32>(1643f, 1873f, -2221f, -1000f)), Struct_1(vec3<i32>(24324i, 1i, 50683i), vec4<i32>(-29792i, 10072i, -7484i, 1i), vec4<f32>(-668f, 316f, -111f, -621f)), Struct_1(vec3<i32>(13564i, -5442i, -74797i), vec4<i32>(-1i, 53501i, -24247i, -1i), vec4<f32>(128f, 838f, -778f, 349f)), 45627u), Struct_2(Struct_1(vec3<i32>(67850i, 24651i, -22977i), vec4<i32>(1i, -6998i, 30613i, -1i), vec4<f32>(-1654f, 336f, -771f, -459f)), Struct_1(vec3<i32>(-11438i, -1i, 37130i), vec4<i32>(8794i, 65892i, 71166i, -27632i), vec4<f32>(268f, 632f, -1000f, -287f)), Struct_1(vec3<i32>(20468i, 2147483647i, 59704i), vec4<i32>(i32(-2147483648), -41477i, 48594i, 1975i), vec4<f32>(-2231f, 801f, 1000f, 153f)), Struct_1(vec3<i32>(2112i, 2147483647i, 25127i), vec4<i32>(47317i, i32(-2147483648), 0i, 1i), vec4<f32>(903f, -366f, -622f, -1000f)), 0u), Struct_2(Struct_1(vec3<i32>(-10703i, -18504i, 6095i), vec4<i32>(45643i, i32(-2147483648), -26668i, 71371i), vec4<f32>(865f, 1427f, 1300f, -776f)), Struct_1(vec3<i32>(i32(-2147483648), -15668i, 0i), vec4<i32>(1i, 29698i, i32(-2147483648), 1i), vec4<f32>(-137f, -430f, -428f, 1334f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -13871i), vec4<i32>(8830i, -1i, 2147483647i, -1i), vec4<f32>(-1170f, 605f, -518f, -2164f)), Struct_1(vec3<i32>(1i, 1i, -21798i), vec4<i32>(2147483647i, 15527i, 6201i, 75004i), vec4<f32>(345f, -1695f, 101f, -985f)), 4294967295u));

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global2 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b, 1u, global2.x, 0u) << (vec4<u32>(33876u, 0u, 1u, u_input.b) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), vec4<u32>(58433u, u_input.b, 26855u, 40255u)), _wgslsmith_mult_vec4_u32(vec4<u32>(44398u, u_input.a, 33530u, 1u), vec4<u32>(global2.x, global2.x, 12993u, 1u))), any(vec3<bool>(false, true, true))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global2.x, 27411u, 24235u), vec4<u32>(1u, 4294967295u, 44829u, u_input.b))) >> (~(~select(vec4<u32>(global2.x, 1u, 15635u, 20906u) << (vec4<u32>(u_input.b, 42630u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u), u_input.a != u_input.b)) % vec4<u32>(32u));
    let var_0 = !vec2<bool>(any(vec2<bool>(true, all(vec4<bool>(true, true, false, true)))), arg_0 == -128f);
    global1 = array<Struct_2, 18>();
    var var_1 = true;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), u_input.d);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.d.b.x ^ -1i);
    let var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(!any(vec2<bool>(false, false)), true, false), !vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, true)))), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, 0u >= arg_1.e), vec3<bool>(true, true, true)), vec3<bool>(true, !(var_0.b <= -1i), !all(vec2<bool>(false, false))), true));
    global1 = array<Struct_2, 18>();
    return arg_1.c;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = ~firstLeadingBit(arg_1.b.x);
    let var_1 = ~(~(~vec4<u32>(reverseBits(global2.x), 25021u, ~4680u, 1u)));
    let var_2 = Struct_3(arg_1.c.x, -37519i);
    var var_3 = !(!vec4<bool>(arg_0.x, arg_0.x, true && arg_0.x, true));
    var_3 = !(!(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, var_3.x), vec4<bool>(arg_0.x, true, true, arg_0.x), false), true)));
    return _wgslsmith_f_op_f32(step(401f, 1069f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(353f + _wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1583f - 278f)))));
    var var_1 = ~vec3<i32>(var_0.b, _wgslsmith_mult_i32(7817i, _wgslsmith_sub_i32(1i, 1i)), u_input.c);
    var var_2 = vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(func_3(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), false), func_2(select(vec3<i32>(-11029i, -1i, var_1.x), vec3<i32>(var_0.b, 0i, 2147483647i), vec3<bool>(true, true, false)), global1[_wgslsmith_index_u32(31084u, 18u)])))));
    var var_3 = func_1(1998f);
    global2 = ~((vec4<u32>(0u, u_input.b, ~0u, u_input.b) & ~(vec4<u32>(global2.x, global2.x, global2.x, 10771u) >> (vec4<u32>(4294967295u, 1u, u_input.a, 37121u) % vec4<u32>(32u)))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(5026u, 1u), _wgslsmith_mod_u32(global2.x, 0u), max(u_input.b, global2.x), ~0u), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 28685u, 63225u), vec4<u32>(global2.x, u_input.a, u_input.b, u_input.b)), ~vec4<u32>(u_input.a, 1u, 0u, global2.x)), vec4<u32>(global2.x, max(u_input.b, global2.x), u_input.a, 0u)) % vec4<u32>(32u)));
    var var_4 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(-var_0.a)).a), var_2.x));
    var_4 = func_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(205f, 133f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a - var_2.x), _wgslsmith_f_op_f32(1000f + var_2.x))))));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a)))).a - var_0.a), -(~var_0.b >> (~36735u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wz, select(~countOneBits(vec2<u32>(global2.x, u_input.b)) & vec2<u32>(reverseBits(3254u), 16654u | u_input.b), ~vec2<u32>(select(30969u, u_input.b, false), 36760u), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(true, true), ~u_input.b >= ~12205u)), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(1u, 1u, u_input.b, global2.x))), _wgslsmith_add_vec4_u32(vec4<u32>(~51335u, u_input.a >> (u_input.b % 32u), countOneBits(0u), _wgslsmith_div_u32(24366u, global2.x)), vec4<u32>(firstLeadingBit(global2.x), ~u_input.a, u_input.a, u_input.a))));
}

