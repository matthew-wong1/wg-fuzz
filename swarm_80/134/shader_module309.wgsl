struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(Struct_2(vec4<f32>(1466f, -1000f, 268f, -1220f), Struct_1(vec3<f32>(847f, 190f, -678f), vec2<i32>(-1i, -1i), true, false), Struct_1(vec3<f32>(-594f, 1000f, -987f), vec2<i32>(0i, -1i), false, false)), -1000f, 21699i, Struct_2(vec4<f32>(-1190f, -469f, 739f, -1122f), Struct_1(vec3<f32>(2156f, -588f, 502f), vec2<i32>(0i, 10125i), false, false), Struct_1(vec3<f32>(1000f, -616f, 728f), vec2<i32>(30027i, -15960i), false, true))), Struct_5(Struct_2(vec4<f32>(2160f, 2335f, -1335f, -493f), Struct_1(vec3<f32>(1297f, -340f, -470f), vec2<i32>(i32(-2147483648), 31543i), true, false), Struct_1(vec3<f32>(370f, -459f, 920f), vec2<i32>(i32(-2147483648), -1i), false, false)), -370f, 2988i, Struct_2(vec4<f32>(2183f, -1215f, -2439f, -253f), Struct_1(vec3<f32>(-569f, -791f, 1905f), vec2<i32>(-43i, 23269i), true, false), Struct_1(vec3<f32>(525f, -2064f, 1000f), vec2<i32>(i32(-2147483648), -27894i), true, true))), Struct_5(Struct_2(vec4<f32>(291f, 582f, 688f, 132f), Struct_1(vec3<f32>(505f, -143f, 2398f), vec2<i32>(-4262i, -73988i), false, false), Struct_1(vec3<f32>(-1145f, -262f, 769f), vec2<i32>(1i, i32(-2147483648)), true, true)), -150f, -1i, Struct_2(vec4<f32>(-1350f, 558f, 1003f, 395f), Struct_1(vec3<f32>(477f, 1616f, 267f), vec2<i32>(-51561i, 21127i), false, true), Struct_1(vec3<f32>(-1000f, 532f, 815f), vec2<i32>(-5583i, 1i), true, true))), Struct_5(Struct_2(vec4<f32>(1946f, 547f, -1701f, -823f), Struct_1(vec3<f32>(344f, -1266f, 514f), vec2<i32>(-1i, 20772i), false, true), Struct_1(vec3<f32>(-759f, -623f, 645f), vec2<i32>(-1i, 1i), false, true)), 2194f, -21887i, Struct_2(vec4<f32>(768f, 620f, -985f, -534f), Struct_1(vec3<f32>(-1000f, -342f, 649f), vec2<i32>(73540i, 2147483647i), false, false), Struct_1(vec3<f32>(-619f, -848f, 945f), vec2<i32>(60460i, -5733i), true, false))), Struct_5(Struct_2(vec4<f32>(-1656f, 2207f, 917f, 3219f), Struct_1(vec3<f32>(607f, -266f, -356f), vec2<i32>(2147483647i, 0i), false, false), Struct_1(vec3<f32>(-200f, 2324f, -896f), vec2<i32>(19501i, 0i), true, true)), -2304f, 51979i, Struct_2(vec4<f32>(-1000f, -357f, 527f, -420f), Struct_1(vec3<f32>(-864f, 1378f, -855f), vec2<i32>(i32(-2147483648), 42491i), true, true), Struct_1(vec3<f32>(1256f, 798f, 222f), vec2<i32>(2147483647i, 87122i), false, false))), Struct_5(Struct_2(vec4<f32>(134f, 1181f, -1005f, -1000f), Struct_1(vec3<f32>(854f, -1238f, -1138f), vec2<i32>(-10026i, 2147483647i), true, true), Struct_1(vec3<f32>(954f, 841f, 1191f), vec2<i32>(1i, 1i), false, false)), 2223f, 18566i, Struct_2(vec4<f32>(-197f, 698f, -629f, 1150f), Struct_1(vec3<f32>(666f, -1068f, 633f), vec2<i32>(1i, -83920i), true, false), Struct_1(vec3<f32>(-1232f, 439f, 1948f), vec2<i32>(1i, -17919i), true, false))), Struct_5(Struct_2(vec4<f32>(677f, 551f, -125f, -1508f), Struct_1(vec3<f32>(-1069f, 939f, 156f), vec2<i32>(-1i, -1i), true, false), Struct_1(vec3<f32>(1144f, -768f, -1308f), vec2<i32>(0i, 54214i), false, false)), 835f, i32(-2147483648), Struct_2(vec4<f32>(-186f, -1182f, 2654f, 1322f), Struct_1(vec3<f32>(849f, 406f, -614f), vec2<i32>(-26831i, 2147483647i), false, true), Struct_1(vec3<f32>(508f, 622f, -667f), vec2<i32>(-15609i, 1i), true, false))), Struct_5(Struct_2(vec4<f32>(-1651f, 1308f, 1747f, -1598f), Struct_1(vec3<f32>(356f, 517f, 334f), vec2<i32>(i32(-2147483648), -966i), true, true), Struct_1(vec3<f32>(199f, -1000f, 539f), vec2<i32>(-53410i, 2147483647i), false, true)), 747f, 14846i, Struct_2(vec4<f32>(1212f, 625f, -563f, 1000f), Struct_1(vec3<f32>(-1000f, -641f, 362f), vec2<i32>(2147483647i, 7459i), true, true), Struct_1(vec3<f32>(1207f, 628f, -322f), vec2<i32>(12048i, -23350i), true, true))), Struct_5(Struct_2(vec4<f32>(960f, 666f, -1650f, -1089f), Struct_1(vec3<f32>(-288f, -130f, -229f), vec2<i32>(-1i, i32(-2147483648)), true, true), Struct_1(vec3<f32>(622f, 1015f, -648f), vec2<i32>(-1i, i32(-2147483648)), false, false)), 927f, -44907i, Struct_2(vec4<f32>(-1759f, 1743f, 1020f, 728f), Struct_1(vec3<f32>(-147f, -426f, -903f), vec2<i32>(-10732i, 1i), false, false), Struct_1(vec3<f32>(-422f, -208f, 854f), vec2<i32>(0i, 3004i), true, false))), Struct_5(Struct_2(vec4<f32>(-341f, -812f, 633f, 2082f), Struct_1(vec3<f32>(-1727f, -392f, -456f), vec2<i32>(8954i, 29858i), true, false), Struct_1(vec3<f32>(-1000f, 549f, -664f), vec2<i32>(-22575i, -33019i), true, true)), -1199f, 0i, Struct_2(vec4<f32>(-1513f, 801f, -1249f, 248f), Struct_1(vec3<f32>(-144f, -521f, 146f), vec2<i32>(-53475i, -19934i), true, true), Struct_1(vec3<f32>(-466f, 305f, -101f), vec2<i32>(2147483647i, 2147483647i), false, true))), Struct_5(Struct_2(vec4<f32>(1502f, 1717f, -446f, 1335f), Struct_1(vec3<f32>(-300f, 1000f, 513f), vec2<i32>(2147483647i, -14326i), false, false), Struct_1(vec3<f32>(-148f, 1910f, -202f), vec2<i32>(0i, 1i), false, true)), 823f, -24228i, Struct_2(vec4<f32>(-767f, -281f, 411f, 364f), Struct_1(vec3<f32>(1227f, 1951f, -521f), vec2<i32>(1121i, -41804i), false, false), Struct_1(vec3<f32>(149f, -1000f, 650f), vec2<i32>(-1i, 17721i), true, true))), Struct_5(Struct_2(vec4<f32>(-1209f, 822f, 500f, -1336f), Struct_1(vec3<f32>(-488f, 752f, -546f), vec2<i32>(8004i, 24285i), true, false), Struct_1(vec3<f32>(-1689f, -1798f, -2104f), vec2<i32>(-1i, -4217i), false, true)), 468f, 1i, Struct_2(vec4<f32>(-322f, -203f, -1577f, -1468f), Struct_1(vec3<f32>(-244f, 1981f, 602f), vec2<i32>(2147483647i, 1i), false, false), Struct_1(vec3<f32>(-297f, 614f, 547f), vec2<i32>(0i, 0i), false, true))), Struct_5(Struct_2(vec4<f32>(639f, -1607f, -1444f, -190f), Struct_1(vec3<f32>(516f, -1086f, 197f), vec2<i32>(23114i, 39805i), false, false), Struct_1(vec3<f32>(874f, 1389f, 113f), vec2<i32>(0i, i32(-2147483648)), true, true)), -569f, i32(-2147483648), Struct_2(vec4<f32>(1254f, -1000f, -403f, -712f), Struct_1(vec3<f32>(1754f, -274f, 2501f), vec2<i32>(2147483647i, -5794i), false, true), Struct_1(vec3<f32>(1613f, -1557f, -509f), vec2<i32>(-10692i, 2616i), true, false))), Struct_5(Struct_2(vec4<f32>(-1215f, -1000f, -683f, -1269f), Struct_1(vec3<f32>(537f, 451f, 322f), vec2<i32>(i32(-2147483648), 19239i), true, false), Struct_1(vec3<f32>(-872f, -111f, -1264f), vec2<i32>(i32(-2147483648), 63774i), false, false)), -681f, -1i, Struct_2(vec4<f32>(292f, -972f, 418f, -228f), Struct_1(vec3<f32>(1000f, -1678f, 2591f), vec2<i32>(0i, 1i), true, false), Struct_1(vec3<f32>(637f, 1000f, 784f), vec2<i32>(2147483647i, i32(-2147483648)), false, true))), Struct_5(Struct_2(vec4<f32>(-1000f, 267f, 630f, 889f), Struct_1(vec3<f32>(-745f, -928f, -819f), vec2<i32>(-10717i, -59664i), false, false), Struct_1(vec3<f32>(-740f, 547f, -939f), vec2<i32>(-55729i, 19898i), true, false)), 234f, 25403i, Struct_2(vec4<f32>(1130f, -1552f, -287f, 932f), Struct_1(vec3<f32>(-224f, -1140f, 1945f), vec2<i32>(-64209i, 65020i), true, false), Struct_1(vec3<f32>(-744f, -449f, -525f), vec2<i32>(-1i, 1i), false, false))), Struct_5(Struct_2(vec4<f32>(-264f, -174f, -1035f, 335f), Struct_1(vec3<f32>(-1878f, -119f, -718f), vec2<i32>(0i, 0i), true, false), Struct_1(vec3<f32>(-509f, -232f, 1760f), vec2<i32>(-7687i, i32(-2147483648)), false, false)), 383f, 0i, Struct_2(vec4<f32>(-707f, -729f, -1000f, 897f), Struct_1(vec3<f32>(1671f, 117f, -1456f), vec2<i32>(-60916i, -1i), false, true), Struct_1(vec3<f32>(545f, -483f, 153f), vec2<i32>(1599i, -31878i), true, true))), Struct_5(Struct_2(vec4<f32>(1000f, 493f, -1000f, -834f), Struct_1(vec3<f32>(1247f, 357f, 383f), vec2<i32>(-20668i, -1i), false, true), Struct_1(vec3<f32>(550f, -364f, -562f), vec2<i32>(0i, i32(-2147483648)), false, true)), 339f, 35641i, Struct_2(vec4<f32>(1293f, 431f, -779f, 1746f), Struct_1(vec3<f32>(537f, 543f, 850f), vec2<i32>(-1i, -27665i), false, false), Struct_1(vec3<f32>(-925f, -906f, 735f), vec2<i32>(-34799i, 1i), true, false))), Struct_5(Struct_2(vec4<f32>(-545f, -454f, 1314f, 1000f), Struct_1(vec3<f32>(1332f, 245f, 711f), vec2<i32>(0i, 2147483647i), true, true), Struct_1(vec3<f32>(1000f, 765f, 1000f), vec2<i32>(0i, 2147483647i), true, false)), 581f, -36594i, Struct_2(vec4<f32>(-1000f, -1059f, 216f, 692f), Struct_1(vec3<f32>(-314f, 1710f, 1312f), vec2<i32>(-1i, 1i), false, false), Struct_1(vec3<f32>(-1114f, 119f, -440f), vec2<i32>(-4155i, -14914i), true, true))), Struct_5(Struct_2(vec4<f32>(-437f, -1000f, 399f, -1000f), Struct_1(vec3<f32>(1548f, -744f, 1000f), vec2<i32>(28127i, 78703i), true, false), Struct_1(vec3<f32>(854f, -1912f, 443f), vec2<i32>(-43440i, i32(-2147483648)), true, false)), -1644f, -43703i, Struct_2(vec4<f32>(-1438f, -1522f, 173f, -1070f), Struct_1(vec3<f32>(1198f, 812f, 680f), vec2<i32>(-1i, -14022i), false, false), Struct_1(vec3<f32>(-736f, 1087f, 1000f), vec2<i32>(-14267i, 22789i), true, true))), Struct_5(Struct_2(vec4<f32>(-2547f, 142f, -2094f, 482f), Struct_1(vec3<f32>(2648f, -1165f, -1000f), vec2<i32>(1i, 25455i), true, true), Struct_1(vec3<f32>(-898f, -443f, 2320f), vec2<i32>(1i, -11788i), false, true)), -325f, 25131i, Struct_2(vec4<f32>(-538f, -263f, 1000f, -609f), Struct_1(vec3<f32>(-123f, 690f, 414f), vec2<i32>(-98080i, -1i), true, false), Struct_1(vec3<f32>(-1000f, 341f, 2491f), vec2<i32>(i32(-2147483648), 3428i), true, true))), Struct_5(Struct_2(vec4<f32>(939f, -166f, -405f, -453f), Struct_1(vec3<f32>(-2449f, -522f, 1627f), vec2<i32>(-1i, 30387i), false, true), Struct_1(vec3<f32>(-566f, -249f, 997f), vec2<i32>(-12791i, 0i), true, false)), -690f, i32(-2147483648), Struct_2(vec4<f32>(-372f, 665f, 2425f, 1153f), Struct_1(vec3<f32>(1000f, -949f, -499f), vec2<i32>(62000i, 2147483647i), true, true), Struct_1(vec3<f32>(673f, 1466f, 661f), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, true))), Struct_5(Struct_2(vec4<f32>(-249f, -341f, 191f, -463f), Struct_1(vec3<f32>(-240f, -771f, 1013f), vec2<i32>(2147483647i, 1i), false, false), Struct_1(vec3<f32>(-306f, -461f, 352f), vec2<i32>(i32(-2147483648), 54658i), true, false)), -1078f, 1i, Struct_2(vec4<f32>(180f, 295f, 843f, 352f), Struct_1(vec3<f32>(604f, 481f, -1206f), vec2<i32>(1i, 15320i), true, true), Struct_1(vec3<f32>(1000f, -542f, 1000f), vec2<i32>(2147483647i, 34245i), false, false))), Struct_5(Struct_2(vec4<f32>(943f, -1080f, -447f, -853f), Struct_1(vec3<f32>(-601f, -1317f, -196f), vec2<i32>(-1i, -1i), false, true), Struct_1(vec3<f32>(638f, -2257f, -871f), vec2<i32>(-17664i, 14241i), true, true)), 161f, 98i, Struct_2(vec4<f32>(1000f, 336f, 1085f, 724f), Struct_1(vec3<f32>(-1000f, -413f, -205f), vec2<i32>(10574i, -819i), true, false), Struct_1(vec3<f32>(-685f, -651f, 1231f), vec2<i32>(-1i, 2147483647i), false, true))));

var<private> global1: array<i32, 31> = array<i32, 31>(-1i, 1i, 0i, 0i, 14396i, -68535i, 29969i, -46061i, -1i, 0i, -16777i, 36224i, 31337i, 55495i, 41017i, i32(-2147483648), -23685i, 28221i, -22906i, 25521i, 20709i, -26021i, 1i, -1i, -78136i, -15512i, 8678i, -6626i, 1960i, i32(-2147483648), -25438i);

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(-1231f, -966f, 1767f), vec2<i32>(-13562i, 2147483647i), false, true), Struct_2(vec4<f32>(2094f, -351f, 701f, 445f), Struct_1(vec3<f32>(459f, 192f, 829f), vec2<i32>(-43989i, 2147483647i), false, true), Struct_1(vec3<f32>(-938f, -127f, 820f), vec2<i32>(2147483647i, i32(-2147483648)), false, false)), vec3<u32>(4294967295u, 89978u, 44140u)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(495f, -1624f, -1064f), vec2<i32>(1i, i32(-2147483648)), false, false), Struct_2(vec4<f32>(-1290f, 608f, 1267f, -378f), Struct_1(vec3<f32>(-3440f, 1104f, 848f), vec2<i32>(2147483647i, 12657i), true, true), Struct_1(vec3<f32>(567f, -132f, -1000f), vec2<i32>(1i, 24262i), false, true)), vec3<u32>(0u, 25246u, 7705u)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(1614f, 330f, 1000f), vec2<i32>(-5513i, 2147483647i), true, true), Struct_2(vec4<f32>(1948f, 1000f, 1332f, 1000f), Struct_1(vec3<f32>(1370f, -2270f, -1153f), vec2<i32>(-22989i, 47614i), false, false), Struct_1(vec3<f32>(-695f, -1000f, 154f), vec2<i32>(i32(-2147483648), 2147483647i), false, true)), vec3<u32>(68239u, 30153u, 4294967295u)), Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(587f, -1088f, -1000f), vec2<i32>(4579i, 2147483647i), true, false), Struct_2(vec4<f32>(-2171f, 1065f, -326f, -132f), Struct_1(vec3<f32>(-660f, 337f, 1151f), vec2<i32>(32456i, 0i), false, false), Struct_1(vec3<f32>(-1000f, 580f, 1224f), vec2<i32>(2147483647i, 44595i), false, true)), vec3<u32>(0u, 1u, 0u)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(-1000f, 443f, 460f), vec2<i32>(57100i, 0i), true, true), Struct_2(vec4<f32>(833f, 1069f, 535f, -1000f), Struct_1(vec3<f32>(527f, 946f, 1941f), vec2<i32>(0i, -21959i), false, true), Struct_1(vec3<f32>(1094f, 1037f, -821f), vec2<i32>(1i, 80395i), false, false)), vec3<u32>(0u, 0u, 29045u)), Struct_3(vec4<bool>(false, false, false, false), Struct_1(vec3<f32>(-260f, -1000f, -1459f), vec2<i32>(52712i, 3628i), false, true), Struct_2(vec4<f32>(-406f, -1256f, 918f, -1000f), Struct_1(vec3<f32>(279f, 178f, 657f), vec2<i32>(20167i, i32(-2147483648)), true, true), Struct_1(vec3<f32>(1437f, 1000f, 228f), vec2<i32>(-1i, 8416i), false, true)), vec3<u32>(20331u, 0u, 4294967295u)), Struct_3(vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(1000f, 665f, 1000f), vec2<i32>(i32(-2147483648), 2147483647i), true, false), Struct_2(vec4<f32>(1479f, -681f, 281f, -1000f), Struct_1(vec3<f32>(-524f, -943f, -795f), vec2<i32>(-36369i, 47783i), false, true), Struct_1(vec3<f32>(804f, 447f, 670f), vec2<i32>(-9662i, 31723i), true, true)), vec3<u32>(4294967295u, 0u, 18483u)), Struct_3(vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(213f, 892f, -172f), vec2<i32>(0i, -43710i), true, true), Struct_2(vec4<f32>(-462f, 588f, -1119f, 292f), Struct_1(vec3<f32>(856f, 370f, -349f), vec2<i32>(2147483647i, -3640i), true, false), Struct_1(vec3<f32>(727f, 417f, -906f), vec2<i32>(76277i, -47275i), false, true)), vec3<u32>(4294967295u, 0u, 41884u)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(-840f, 1632f, 1817f), vec2<i32>(1i, 33761i), true, false), Struct_2(vec4<f32>(-1492f, 178f, -143f, -429f), Struct_1(vec3<f32>(1000f, -730f, 638f), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, true), Struct_1(vec3<f32>(-1569f, -215f, 610f), vec2<i32>(-17148i, 0i), true, true)), vec3<u32>(4294967295u, 129621u, 31949u)), Struct_3(vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(-192f, -1596f, -1042f), vec2<i32>(2147483647i, 49914i), true, false), Struct_2(vec4<f32>(-1219f, 669f, 1722f, 1099f), Struct_1(vec3<f32>(-507f, -605f, 521f), vec2<i32>(31314i, -15113i), true, false), Struct_1(vec3<f32>(-662f, -1387f, 547f), vec2<i32>(0i, -1i), false, true)), vec3<u32>(3893u, 10375u, 4294967295u)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(-290f, -501f, -896f), vec2<i32>(-40633i, 62i), true, false), Struct_2(vec4<f32>(720f, -465f, 1137f, -630f), Struct_1(vec3<f32>(-152f, 330f, -2876f), vec2<i32>(-1i, 47733i), true, false), Struct_1(vec3<f32>(-1243f, -1428f, -1900f), vec2<i32>(23267i, -1i), false, false)), vec3<u32>(6279u, 51871u, 14597u)), Struct_3(vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(-684f, -1007f, -802f), vec2<i32>(2147483647i, 27673i), false, false), Struct_2(vec4<f32>(-1131f, 926f, -827f, -846f), Struct_1(vec3<f32>(2020f, -734f, -1000f), vec2<i32>(7588i, -6299i), true, false), Struct_1(vec3<f32>(-1934f, -1070f, -648f), vec2<i32>(-22771i, i32(-2147483648)), true, true)), vec3<u32>(24296u, 24924u, 4294967295u)), Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-2192f, -1728f, 1472f), vec2<i32>(16567i, -20530i), false, false), Struct_2(vec4<f32>(-182f, -1351f, 841f, 421f), Struct_1(vec3<f32>(719f, -532f, 832f), vec2<i32>(1i, 1i), true, true), Struct_1(vec3<f32>(1964f, -1482f, -642f), vec2<i32>(-19434i, 9646i), true, false)), vec3<u32>(0u, 5u, 31699u)), Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(1000f, 230f, -308f), vec2<i32>(47954i, -1i), true, true), Struct_2(vec4<f32>(756f, -1568f, 1339f, -519f), Struct_1(vec3<f32>(-1540f, 1498f, 160f), vec2<i32>(21813i, -17255i), false, true), Struct_1(vec3<f32>(-2192f, 833f, -1131f), vec2<i32>(-1i, 2147483647i), true, false)), vec3<u32>(4294967295u, 51983u, 4294967295u)), Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(-293f, -462f, 1587f), vec2<i32>(0i, 3436i), false, false), Struct_2(vec4<f32>(1066f, 480f, 1869f, -832f), Struct_1(vec3<f32>(-809f, -1426f, 918f), vec2<i32>(1i, 54721i), true, true), Struct_1(vec3<f32>(-2258f, 296f, 260f), vec2<i32>(-36367i, 25421i), false, false)), vec3<u32>(67675u, 50927u, 0u)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-1440f, 289f, -1201f), vec2<i32>(0i, 2147483647i), false, true), Struct_2(vec4<f32>(164f, 1196f, -1000f, -477f), Struct_1(vec3<f32>(776f, 484f, 1435f), vec2<i32>(1i, 47396i), true, false), Struct_1(vec3<f32>(506f, 297f, 1892f), vec2<i32>(23078i, i32(-2147483648)), true, true)), vec3<u32>(4294967295u, 26710u, 42622u)), Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(817f, -1000f, 319f), vec2<i32>(-31431i, 30319i), true, true), Struct_2(vec4<f32>(1751f, 755f, 222f, 100f), Struct_1(vec3<f32>(824f, -177f, 1534f), vec2<i32>(-4994i, -40022i), false, true), Struct_1(vec3<f32>(-1110f, -1734f, 2100f), vec2<i32>(1i, 1i), false, false)), vec3<u32>(25262u, 31369u, 4294967295u)), Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-1608f, -150f, -126f), vec2<i32>(-36021i, 0i), true, true), Struct_2(vec4<f32>(-247f, -1172f, -345f, -155f), Struct_1(vec3<f32>(-723f, -754f, 1048f), vec2<i32>(27957i, -1i), true, false), Struct_1(vec3<f32>(-2146f, 976f, -783f), vec2<i32>(i32(-2147483648), -962i), true, false)), vec3<u32>(1u, 4294967295u, 10561u)), Struct_3(vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(612f, 1114f, 1127f), vec2<i32>(-60568i, 0i), true, true), Struct_2(vec4<f32>(1791f, -558f, -1000f, -1000f), Struct_1(vec3<f32>(1108f, -542f, 191f), vec2<i32>(i32(-2147483648), 1i), false, true), Struct_1(vec3<f32>(343f, 1456f, 130f), vec2<i32>(-1i, i32(-2147483648)), false, true)), vec3<u32>(5832u, 1u, 13009u)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(-769f, -137f, 1498f), vec2<i32>(17005i, i32(-2147483648)), true, false), Struct_2(vec4<f32>(-748f, 1000f, -1315f, 1416f), Struct_1(vec3<f32>(-418f, 338f, 1229f), vec2<i32>(0i, -6876i), false, true), Struct_1(vec3<f32>(-623f, -1000f, -1506f), vec2<i32>(1i, 1i), true, false)), vec3<u32>(68866u, 0u, 41479u)), Struct_3(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(340f, 352f, 483f), vec2<i32>(2147483647i, 2897i), true, true), Struct_2(vec4<f32>(-465f, -810f, -219f, 1000f), Struct_1(vec3<f32>(678f, -1880f, -682f), vec2<i32>(23386i, -22234i), false, false), Struct_1(vec3<f32>(347f, -280f, -2400f), vec2<i32>(-1i, 0i), true, false)), vec3<u32>(27009u, 11919u, 0u)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(vec3<f32>(605f, -1070f, -121f), vec2<i32>(21337i, 2202i), true, false), Struct_2(vec4<f32>(1245f, -165f, 1214f, 995f), Struct_1(vec3<f32>(-290f, 884f, -475f), vec2<i32>(-1i, i32(-2147483648)), false, true), Struct_1(vec3<f32>(-1003f, -1000f, -1629f), vec2<i32>(-31034i, 1i), true, false)), vec3<u32>(20979u, 106129u, 0u)), Struct_3(vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(-843f, -1393f, -661f), vec2<i32>(-30501i, 8535i), true, true), Struct_2(vec4<f32>(-397f, -646f, -1333f, 209f), Struct_1(vec3<f32>(-527f, -523f, 479f), vec2<i32>(11797i, 0i), false, false), Struct_1(vec3<f32>(834f, -463f, -803f), vec2<i32>(551i, i32(-2147483648)), false, false)), vec3<u32>(29029u, 0u, 1u)), Struct_3(vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(-1250f, 183f, -588f), vec2<i32>(1i, 2147483647i), false, true), Struct_2(vec4<f32>(-749f, -234f, 1231f, 629f), Struct_1(vec3<f32>(-1000f, -713f, 1000f), vec2<i32>(43428i, 3525i), false, true), Struct_1(vec3<f32>(-135f, -1117f, -1514f), vec2<i32>(i32(-2147483648), 1i), true, true)), vec3<u32>(36310u, 1u, 1u)), Struct_3(vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(-463f, -1420f, -1138f), vec2<i32>(-6374i, -5571i), true, true), Struct_2(vec4<f32>(-1838f, 943f, 301f, 995f), Struct_1(vec3<f32>(1000f, -961f, 914f), vec2<i32>(2147483647i, 1i), true, false), Struct_1(vec3<f32>(-316f, 999f, 2502f), vec2<i32>(35606i, -18531i), true, false)), vec3<u32>(43731u, 90873u, 1u)));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-690f, -1000f, -711f), vec2<i32>(52269i, 1i), false, true);

var<private> global4: Struct_2 = Struct_2(vec4<f32>(-1141f, 1095f, 292f, 1265f), Struct_1(vec3<f32>(535f, -339f, 305f), vec2<i32>(1i, -1i), false, true), Struct_1(vec3<f32>(-416f, 752f, 891f), vec2<i32>(-55728i, 1i), false, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = vec4<u32>(u_input.b, _wgslsmith_div_u32(countOneBits(0u), _wgslsmith_mult_u32(4294967295u, u_input.e)), u_input.b, u_input.e);
    var var_1 = global4.b.a.x;
    let var_2 = true;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global3.a.x))));
    global3 = global4.c;
    return vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.c, global1[_wgslsmith_index_u32(0u, 31u)]), -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, global4.b.b.x), vec2<i32>(global1[_wgslsmith_index_u32(25726u, 31u)], global3.b.x)) >> (vec2<u32>(1u, u_input.e) % vec2<u32>(32u))) ^ -2147483647i);
}

fn func_3() -> vec3<bool> {
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    global2 = array<Struct_3, 25>();
    global1 = array<i32, 31>();
    let var_0 = !(!select(!vec3<bool>(global3.c, false, global4.b.c), select(vec3<bool>(false, false, global4.c.d), select(vec3<bool>(true, global3.c, false), vec3<bool>(false, global3.c, false), vec3<bool>(global4.b.c, false, false)), !vec3<bool>(global4.b.d, false, global4.b.d)), select(!vec3<bool>(global4.b.d, global4.c.c, false), vec3<bool>(global4.c.d, true, false), !global4.c.d)));
    return vec3<bool>(global3.b.x <= global1[_wgslsmith_index_u32(4294967295u, 31u)], any(!(!select(vec2<bool>(true, true), var_0.xz, global3.c))), false & (~(~u_input.e) < countOneBits(~4294967295u)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    global3 = arg_0.a.c;
    global2 = array<Struct_3, 25>();
    let var_0 = arg_0.d.b;
    var var_1 = func_3();
    global4 = Struct_2(arg_2.c.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a.x, 633f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(848f, 1114f)) * _wgslsmith_f_op_f32(max(var_0.a.x, global4.b.a.x))), global3.a.x), countOneBits(countOneBits(vec2<i32>(arg_2.c.c.b.x, 1i))) >> (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), !arg_2.c.b.d, true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, 305f, 457f) + arg_3.a))), var_0.b ^ max(func_1(true), arg_0.a.b.b), var_0.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, 1504f, true))), any(arg_2.a)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(global4.c.d);
    var var_1 = ~abs(~vec2<u32>(u_input.b, u_input.b));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.d.yy);
    global4 = Struct_2(global4.a, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, 507f, var_2.c.b.a.x)), vec3<f32>(_wgslsmith_div_f32(var_2.b.a.x, -1326f), _wgslsmith_f_op_f32(var_2.c.c.a.x * 150f), 1000f)), min(max(vec2<i32>(global1[_wgslsmith_index_u32(var_2.d.x, 31u)], var_2.b.b.x) ^ vec2<i32>(30643i, 56843i), global3.b), vec2<i32>(firstLeadingBit(-2147483647i), global4.c.b.x)), !any(var_2.a.yww), global4.c.d), global4.b);
    var var_4 = var_2.d.yz;
    var var_5 = ~(-(u_input.d >> (var_2.d % vec3<u32>(32u))) | u_input.d);
    global0 = array<Struct_5, 23>();
    var var_6 = Struct_1(global4.b.a, _wgslsmith_add_vec2_i32(vec2<i32>(var_5.x, _wgslsmith_sub_i32(i32(-1i) * -1i, i32(-1i) * -4986i)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_2.c.b.b, var_2.c.c.b), ~vec2<i32>(-27864i, -7169i)), -(~global3.b))), global4.b.c, false);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(~(-var_6.b.x), (var_2.b.b.x & u_input.c) << (func_2(global0[_wgslsmith_index_u32(var_2.d.x, 23u)], vec2<f32>(global3.a.x, global3.a.x), global2[_wgslsmith_index_u32(61190u, 25u)], Struct_1(var_2.b.a, global4.c.b, true, true)) % 32u), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_5.zy), vec2<i32>(25137i, -56495i) >> (vec2<u32>(u_input.e, 84119u) % vec2<u32>(32u))), 2147483647i)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1101f, var_2.b.a.x))));
}

