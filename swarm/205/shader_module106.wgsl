struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(Struct_3(vec3<i32>(-19742i, 21995i, -8791i), i32(-2147483648), 4294967295u, vec2<u32>(64040u, 23833u), vec4<f32>(-162f, 1314f, -162f, 1000f)), vec4<u32>(0u, 13409u, 69379u, 19786u), -1999f, vec2<f32>(129f, 736f), Struct_2(true, vec3<u32>(0u, 4567u, 29554u), Struct_1(vec2<f32>(617f, -790f), 1u, vec2<u32>(0u, 12419u)), Struct_1(vec2<f32>(268f, 1000f), 104044u, vec2<u32>(0u, 0u)), vec3<f32>(-1494f, -691f, 2011f))), Struct_5(Struct_3(vec3<i32>(2147483647i, -1i, 1i), 19096i, 0u, vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-1331f, 1000f, 1805f, -1000f)), vec4<u32>(1u, 4294967295u, 1u, 0u), 332f, vec2<f32>(-587f, -378f), Struct_2(false, vec3<u32>(1u, 42355u, 47734u), Struct_1(vec2<f32>(-197f, -1000f), 4294967295u, vec2<u32>(7306u, 23152u)), Struct_1(vec2<f32>(440f, -204f), 4294967295u, vec2<u32>(47801u, 4294967295u)), vec3<f32>(1169f, -1000f, -324f))), Struct_5(Struct_3(vec3<i32>(0i, 343i, -31717i), 0i, 4294967295u, vec2<u32>(0u, 38393u), vec4<f32>(-1965f, -1221f, -1980f, 600f)), vec4<u32>(0u, 4294967295u, 1u, 1u), -413f, vec2<f32>(127f, -1234f), Struct_2(false, vec3<u32>(4294967295u, 30336u, 46592u), Struct_1(vec2<f32>(-860f, 1383f), 0u, vec2<u32>(44691u, 4294967295u)), Struct_1(vec2<f32>(1000f, -765f), 4294967295u, vec2<u32>(4294967295u, 0u)), vec3<f32>(581f, 431f, -265f))), Struct_5(Struct_3(vec3<i32>(0i, -26930i, 35416i), 2147483647i, 1u, vec2<u32>(0u, 0u), vec4<f32>(435f, 391f, -1596f, -1310f)), vec4<u32>(32661u, 0u, 25229u, 11015u), -1034f, vec2<f32>(1375f, 667f), Struct_2(true, vec3<u32>(1u, 83u, 4294967295u), Struct_1(vec2<f32>(445f, 241f), 0u, vec2<u32>(129647u, 1u)), Struct_1(vec2<f32>(-1000f, 1738f), 0u, vec2<u32>(38383u, 4294967295u)), vec3<f32>(233f, -881f, -632f))), Struct_5(Struct_3(vec3<i32>(-13876i, 2147483647i, 1i), 11746i, 1u, vec2<u32>(6061u, 1u), vec4<f32>(663f, 1274f, -648f, -548f)), vec4<u32>(0u, 15982u, 1618u, 82722u), -1283f, vec2<f32>(358f, 242f), Struct_2(true, vec3<u32>(12941u, 39705u, 35967u), Struct_1(vec2<f32>(166f, -931f), 1501u, vec2<u32>(29244u, 4294967295u)), Struct_1(vec2<f32>(944f, 2172f), 0u, vec2<u32>(4294967295u, 0u)), vec3<f32>(-1074f, 1682f, 1246f))), Struct_5(Struct_3(vec3<i32>(-34288i, 1i, -5567i), -77337i, 245u, vec2<u32>(46001u, 1u), vec4<f32>(448f, 431f, 619f, -623f)), vec4<u32>(30406u, 1u, 0u, 26601u), -998f, vec2<f32>(-1395f, 1435f), Struct_2(false, vec3<u32>(4294967295u, 0u, 35124u), Struct_1(vec2<f32>(354f, -264f), 4294967295u, vec2<u32>(4294967295u, 116523u)), Struct_1(vec2<f32>(1000f, 276f), 64202u, vec2<u32>(4294967295u, 71582u)), vec3<f32>(1080f, -365f, -821f))), Struct_5(Struct_3(vec3<i32>(1i, 2147483647i, 0i), 0i, 8249u, vec2<u32>(4294967295u, 0u), vec4<f32>(584f, 537f, -644f, 1000f)), vec4<u32>(4294967295u, 9334u, 1u, 0u), -580f, vec2<f32>(549f, -235f), Struct_2(false, vec3<u32>(71414u, 39496u, 4294967295u), Struct_1(vec2<f32>(-629f, 1826f), 4294967295u, vec2<u32>(4294967295u, 50235u)), Struct_1(vec2<f32>(-2342f, -233f), 1689u, vec2<u32>(41316u, 4294967295u)), vec3<f32>(1132f, 902f, 365f))), Struct_5(Struct_3(vec3<i32>(54799i, 33416i, -27031i), 64713i, 4294967295u, vec2<u32>(37884u, 4294967295u), vec4<f32>(664f, 787f, 443f, 700f)), vec4<u32>(82237u, 0u, 7049u, 20575u), -395f, vec2<f32>(-1272f, -196f), Struct_2(true, vec3<u32>(57438u, 13862u, 4294967295u), Struct_1(vec2<f32>(-1167f, 1000f), 100599u, vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(-1511f, -491f), 1u, vec2<u32>(43497u, 74317u)), vec3<f32>(-961f, -1325f, 826f))), Struct_5(Struct_3(vec3<i32>(-685i, 13661i, 1i), -1i, 93999u, vec2<u32>(93401u, 4294967295u), vec4<f32>(-1000f, -604f, 258f, 414f)), vec4<u32>(41076u, 8438u, 15559u, 0u), 1518f, vec2<f32>(1915f, 928f), Struct_2(false, vec3<u32>(0u, 0u, 6056u), Struct_1(vec2<f32>(1000f, -1056f), 0u, vec2<u32>(0u, 16138u)), Struct_1(vec2<f32>(-573f, 856f), 1u, vec2<u32>(48050u, 25172u)), vec3<f32>(-703f, -853f, -417f))), Struct_5(Struct_3(vec3<i32>(21873i, 2147483647i, 38550i), 0i, 64942u, vec2<u32>(1u, 4294967295u), vec4<f32>(810f, 283f, -580f, 2203f)), vec4<u32>(31690u, 4294967295u, 4294967295u, 40056u), -795f, vec2<f32>(144f, 1000f), Struct_2(false, vec3<u32>(44353u, 0u, 70051u), Struct_1(vec2<f32>(-2070f, 535f), 4294967295u, vec2<u32>(1u, 33086u)), Struct_1(vec2<f32>(244f, 373f), 880u, vec2<u32>(1u, 18463u)), vec3<f32>(748f, -806f, -184f))), Struct_5(Struct_3(vec3<i32>(1i, 24591i, -28690i), -1i, 4294967295u, vec2<u32>(42991u, 42234u), vec4<f32>(1000f, 320f, -1000f, 1064f)), vec4<u32>(1u, 18964u, 10057u, 42575u), 407f, vec2<f32>(538f, 698f), Struct_2(false, vec3<u32>(56327u, 1u, 1u), Struct_1(vec2<f32>(753f, -1363f), 1864u, vec2<u32>(47768u, 4294967295u)), Struct_1(vec2<f32>(448f, 805f), 67892u, vec2<u32>(28728u, 4294967295u)), vec3<f32>(1152f, 1027f, 981f))), Struct_5(Struct_3(vec3<i32>(-37281i, -48763i, 23412i), 25779i, 22867u, vec2<u32>(59550u, 1u), vec4<f32>(430f, -843f, -1432f, -787f)), vec4<u32>(0u, 1u, 30429u, 54958u), 1135f, vec2<f32>(182f, 800f), Struct_2(true, vec3<u32>(21957u, 14618u, 4294967295u), Struct_1(vec2<f32>(830f, 1000f), 1u, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<f32>(-997f, -196f), 1u, vec2<u32>(55739u, 38072u)), vec3<f32>(-401f, -2341f, -544f))), Struct_5(Struct_3(vec3<i32>(23055i, -27346i, i32(-2147483648)), 1i, 1u, vec2<u32>(4002u, 32562u), vec4<f32>(334f, 773f, -1484f, -2277f)), vec4<u32>(29699u, 4294967295u, 36354u, 8570u), 232f, vec2<f32>(-196f, 1195f), Struct_2(true, vec3<u32>(4294967295u, 9620u, 0u), Struct_1(vec2<f32>(344f, 1296f), 4294967295u, vec2<u32>(11491u, 1u)), Struct_1(vec2<f32>(562f, -1082f), 26869u, vec2<u32>(22097u, 1u)), vec3<f32>(1000f, -1158f, 984f))), Struct_5(Struct_3(vec3<i32>(2147483647i, 1i, 2147483647i), 5838i, 1u, vec2<u32>(41410u, 1u), vec4<f32>(-509f, 522f, -943f, 137f)), vec4<u32>(16103u, 54126u, 31849u, 0u), -419f, vec2<f32>(-714f, 337f), Struct_2(false, vec3<u32>(1u, 0u, 0u), Struct_1(vec2<f32>(-1031f, -565f), 0u, vec2<u32>(45119u, 36207u)), Struct_1(vec2<f32>(785f, -1000f), 0u, vec2<u32>(33142u, 0u)), vec3<f32>(-1000f, 1765f, -1000f))), Struct_5(Struct_3(vec3<i32>(20344i, 8330i, -99469i), -34648i, 4294967295u, vec2<u32>(27659u, 67344u), vec4<f32>(-1080f, 643f, 270f, 1531f)), vec4<u32>(4294967295u, 35406u, 4294967295u, 51337u), 1665f, vec2<f32>(-1000f, 504f), Struct_2(true, vec3<u32>(0u, 1u, 0u), Struct_1(vec2<f32>(-392f, -260f), 68938u, vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(-1508f, 1038f), 9996u, vec2<u32>(4294967295u, 0u)), vec3<f32>(-165f, 1668f, 1000f))), Struct_5(Struct_3(vec3<i32>(-24945i, -36009i, i32(-2147483648)), 2147483647i, 32305u, vec2<u32>(0u, 0u), vec4<f32>(-564f, -1363f, -2011f, -254f)), vec4<u32>(6833u, 27366u, 31535u, 1u), 226f, vec2<f32>(-265f, 688f), Struct_2(false, vec3<u32>(21637u, 22909u, 48890u), Struct_1(vec2<f32>(731f, 296f), 3727u, vec2<u32>(0u, 0u)), Struct_1(vec2<f32>(1016f, -1679f), 18719u, vec2<u32>(4294967295u, 33094u)), vec3<f32>(-1242f, 1905f, 976f))), Struct_5(Struct_3(vec3<i32>(1i, 3200i, 1653i), 2147483647i, 1u, vec2<u32>(10379u, 526u), vec4<f32>(1337f, 1000f, -459f, -286f)), vec4<u32>(0u, 16862u, 38562u, 1u), 577f, vec2<f32>(545f, -1000f), Struct_2(false, vec3<u32>(22236u, 1u, 26180u), Struct_1(vec2<f32>(418f, -1143f), 39572u, vec2<u32>(63068u, 4294967295u)), Struct_1(vec2<f32>(-1057f, -1000f), 0u, vec2<u32>(4294967295u, 10845u)), vec3<f32>(1666f, 375f, 1342f))), Struct_5(Struct_3(vec3<i32>(-1i, 0i, 38407i), -38956i, 0u, vec2<u32>(74066u, 4294967295u), vec4<f32>(1642f, 362f, 924f, -234f)), vec4<u32>(51236u, 30712u, 82916u, 20000u), -401f, vec2<f32>(303f, 1494f), Struct_2(true, vec3<u32>(0u, 1u, 0u), Struct_1(vec2<f32>(1849f, -1000f), 4294967295u, vec2<u32>(28122u, 0u)), Struct_1(vec2<f32>(1193f, -731f), 105186u, vec2<u32>(1u, 4294967295u)), vec3<f32>(409f, -915f, -1242f))), Struct_5(Struct_3(vec3<i32>(-3913i, -11359i, 0i), -10107i, 38303u, vec2<u32>(0u, 1u), vec4<f32>(648f, 171f, 1440f, -1011f)), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), -2058f, vec2<f32>(-397f, -571f), Struct_2(true, vec3<u32>(17769u, 4988u, 46727u), Struct_1(vec2<f32>(574f, -853f), 0u, vec2<u32>(0u, 10151u)), Struct_1(vec2<f32>(712f, 325f), 4294967295u, vec2<u32>(1u, 109610u)), vec3<f32>(-2217f, 320f, -100f))), Struct_5(Struct_3(vec3<i32>(0i, -32073i, 0i), i32(-2147483648), 1u, vec2<u32>(1u, 27768u), vec4<f32>(817f, -315f, 1573f, 677f)), vec4<u32>(4294967295u, 1u, 0u, 0u), -1791f, vec2<f32>(732f, 1000f), Struct_2(true, vec3<u32>(32079u, 33491u, 1u), Struct_1(vec2<f32>(175f, 1388f), 0u, vec2<u32>(1u, 16524u)), Struct_1(vec2<f32>(759f, 704f), 4294967295u, vec2<u32>(1u, 92523u)), vec3<f32>(-1365f, -1390f, 1102f))), Struct_5(Struct_3(vec3<i32>(1i, -33705i, -26027i), -29505i, 38618u, vec2<u32>(31057u, 6845u), vec4<f32>(-1889f, -1207f, -280f, -350f)), vec4<u32>(1u, 4294967295u, 1u, 17537u), 608f, vec2<f32>(400f, 976f), Struct_2(false, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec2<f32>(-199f, -159f), 1u, vec2<u32>(0u, 25662u)), Struct_1(vec2<f32>(1000f, 390f), 0u, vec2<u32>(4294967295u, 37237u)), vec3<f32>(-1226f, 619f, -1000f))), Struct_5(Struct_3(vec3<i32>(-60575i, 29333i, -1i), 1i, 35226u, vec2<u32>(64354u, 0u), vec4<f32>(-1159f, -762f, -1322f, 896f)), vec4<u32>(0u, 15385u, 41247u, 26981u), 359f, vec2<f32>(256f, -2119f), Struct_2(true, vec3<u32>(39980u, 4294967295u, 52499u), Struct_1(vec2<f32>(-162f, -174f), 1u, vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(1235f, 809f), 117971u, vec2<u32>(4294967295u, 22932u)), vec3<f32>(1017f, 1165f, -857f))), Struct_5(Struct_3(vec3<i32>(-1i, 2147483647i, 51402i), -1i, 26909u, vec2<u32>(0u, 71511u), vec4<f32>(-732f, -1574f, -1724f, -1383f)), vec4<u32>(0u, 0u, 22982u, 115701u), -579f, vec2<f32>(-265f, 543f), Struct_2(true, vec3<u32>(42751u, 1u, 25067u), Struct_1(vec2<f32>(842f, -1000f), 1u, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<f32>(812f, -243f), 1u, vec2<u32>(0u, 6128u)), vec3<f32>(-206f, 194f, 916f))), Struct_5(Struct_3(vec3<i32>(-1i, 19337i, 24520i), 51254i, 1u, vec2<u32>(27306u, 17908u), vec4<f32>(-979f, 177f, -1000f, 288f)), vec4<u32>(5005u, 43507u, 10595u, 4294967295u), 111f, vec2<f32>(-1135f, -386f), Struct_2(false, vec3<u32>(182u, 32357u, 23666u), Struct_1(vec2<f32>(515f, -683f), 1u, vec2<u32>(0u, 0u)), Struct_1(vec2<f32>(-932f, -1000f), 59722u, vec2<u32>(49748u, 0u)), vec3<f32>(-1153f, 1226f, 918f))), Struct_5(Struct_3(vec3<i32>(-52362i, i32(-2147483648), 11935i), -11089i, 67389u, vec2<u32>(76048u, 14470u), vec4<f32>(401f, -1259f, -257f, 1247f)), vec4<u32>(0u, 3797u, 51068u, 112810u), -1376f, vec2<f32>(-338f, -869f), Struct_2(true, vec3<u32>(22702u, 32616u, 4294967295u), Struct_1(vec2<f32>(416f, -620f), 1u, vec2<u32>(20033u, 32872u)), Struct_1(vec2<f32>(376f, -384f), 1771u, vec2<u32>(0u, 60285u)), vec3<f32>(935f, -175f, -1569f))), Struct_5(Struct_3(vec3<i32>(i32(-2147483648), 25891i, -1i), 0i, 0u, vec2<u32>(64685u, 52342u), vec4<f32>(299f, -1371f, 425f, 1025f)), vec4<u32>(4246u, 17786u, 4294967295u, 115u), -152f, vec2<f32>(-545f, 300f), Struct_2(false, vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec2<f32>(2243f, -226f), 44693u, vec2<u32>(61625u, 0u)), Struct_1(vec2<f32>(704f, 412f), 4294967295u, vec2<u32>(4294967295u, 29884u)), vec3<f32>(-136f, 1096f, 1425f))), Struct_5(Struct_3(vec3<i32>(-20460i, 58232i, -24807i), 1i, 32202u, vec2<u32>(13338u, 11590u), vec4<f32>(-425f, -273f, -500f, 1000f)), vec4<u32>(23603u, 4294967295u, 1u, 4294967295u), -3008f, vec2<f32>(1000f, -808f), Struct_2(false, vec3<u32>(10758u, 4294967295u, 0u), Struct_1(vec2<f32>(-383f, -185f), 18125u, vec2<u32>(94975u, 0u)), Struct_1(vec2<f32>(585f, -1251f), 1u, vec2<u32>(60102u, 68931u)), vec3<f32>(-1026f, 384f, 912f))), Struct_5(Struct_3(vec3<i32>(21179i, 2147483647i, i32(-2147483648)), -36630i, 1u, vec2<u32>(0u, 39084u), vec4<f32>(1080f, 754f, 135f, -534f)), vec4<u32>(20083u, 0u, 1u, 71236u), -1117f, vec2<f32>(-1000f, -1522f), Struct_2(true, vec3<u32>(25671u, 1u, 4294967295u), Struct_1(vec2<f32>(718f, -1000f), 71495u, vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(1447f, 1605f), 1u, vec2<u32>(76884u, 1u)), vec3<f32>(-134f, 2306f, 275f))), Struct_5(Struct_3(vec3<i32>(-1i, 4030i, -19484i), 1i, 4294967295u, vec2<u32>(4294967295u, 40554u), vec4<f32>(2062f, -252f, -1380f, -498f)), vec4<u32>(69767u, 4294967295u, 0u, 5081u), 812f, vec2<f32>(1326f, -1044f), Struct_2(true, vec3<u32>(32144u, 4294967295u, 0u), Struct_1(vec2<f32>(-463f, -1265f), 4294967295u, vec2<u32>(39847u, 18578u)), Struct_1(vec2<f32>(464f, -1007f), 4168u, vec2<u32>(1u, 12420u)), vec3<f32>(192f, -923f, -992f))), Struct_5(Struct_3(vec3<i32>(-21081i, 2147483647i, 40524i), i32(-2147483648), 0u, vec2<u32>(55154u, 23268u), vec4<f32>(212f, 1000f, -214f, -1000f)), vec4<u32>(0u, 26386u, 4294967295u, 6091u), -761f, vec2<f32>(-456f, 1606f), Struct_2(true, vec3<u32>(0u, 11105u, 40680u), Struct_1(vec2<f32>(-1139f, 1322f), 0u, vec2<u32>(8455u, 1u)), Struct_1(vec2<f32>(-1000f, -696f), 1u, vec2<u32>(1u, 10462u)), vec3<f32>(156f, -892f, 1000f))));

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<i32>(0i, -1i, 54560i), -30470i, 4294967295u, vec2<u32>(53847u, 25559u), vec4<f32>(890f, -980f, 1158f, -396f)), Struct_3(vec3<i32>(16515i, -51907i, 38876i), -29829i, 12086u, vec2<u32>(4294967295u, 4294967295u), vec4<f32>(229f, -632f, 874f, 1000f)), Struct_3(vec3<i32>(19068i, 2147483647i, 6330i), 0i, 1u, vec2<u32>(1u, 742u), vec4<f32>(356f, 1423f, -468f, 535f)), Struct_3(vec3<i32>(0i, 11876i, 0i), 20647i, 4294967295u, vec2<u32>(1u, 0u), vec4<f32>(405f, -1116f, -975f, 865f)), Struct_3(vec3<i32>(2147483647i, 2147483647i, 2147483647i), i32(-2147483648), 4294967295u, vec2<u32>(20777u, 4294967295u), vec4<f32>(1743f, 804f, -443f, -1072f)), Struct_3(vec3<i32>(37788i, i32(-2147483648), 2147483647i), -37312i, 96832u, vec2<u32>(32721u, 52797u), vec4<f32>(835f, 1597f, -696f, 517f)), Struct_3(vec3<i32>(-23597i, i32(-2147483648), 2147483647i), 18063i, 0u, vec2<u32>(39689u, 35186u), vec4<f32>(1466f, 1847f, -145f, 208f)), Struct_3(vec3<i32>(i32(-2147483648), 1i, -4469i), -12539i, 0u, vec2<u32>(21668u, 123482u), vec4<f32>(871f, 960f, -1999f, -494f)), Struct_3(vec3<i32>(27169i, 0i, -1i), 1i, 1u, vec2<u32>(33271u, 0u), vec4<f32>(-1307f, 950f, 149f, 640f)), Struct_3(vec3<i32>(-3905i, 16876i, 2147483647i), 52221i, 96926u, vec2<u32>(4294967295u, 1u), vec4<f32>(317f, 1213f, 451f, 1288f)), Struct_3(vec3<i32>(2147483647i, 1i, 2147483647i), 1i, 25440u, vec2<u32>(0u, 47648u), vec4<f32>(357f, -1013f, 208f, -689f)), Struct_3(vec3<i32>(-1i, -75734i, 0i), 867i, 7679u, vec2<u32>(0u, 21291u), vec4<f32>(-719f, -543f, 842f, -911f)), Struct_3(vec3<i32>(24832i, 2147483647i, -1i), -16711i, 27928u, vec2<u32>(50684u, 23691u), vec4<f32>(1682f, 995f, -494f, -1000f)), Struct_3(vec3<i32>(i32(-2147483648), -37197i, 16738i), -45432i, 28553u, vec2<u32>(0u, 0u), vec4<f32>(691f, -1000f, 1138f, -1314f)), Struct_3(vec3<i32>(1i, i32(-2147483648), -4139i), 3090i, 22750u, vec2<u32>(24746u, 4294967295u), vec4<f32>(2652f, -371f, -2444f, -509f)), Struct_3(vec3<i32>(i32(-2147483648), -63932i, 2147483647i), i32(-2147483648), 10575u, vec2<u32>(24866u, 1u), vec4<f32>(-818f, -294f, 766f, -1000f)), Struct_3(vec3<i32>(i32(-2147483648), 0i, 10150i), -26129i, 1453u, vec2<u32>(44234u, 11480u), vec4<f32>(987f, 1324f, -709f, -809f)), Struct_3(vec3<i32>(47719i, 0i, -28755i), 7241i, 1u, vec2<u32>(4294967295u, 74751u), vec4<f32>(541f, -1579f, 284f, -1520f)), Struct_3(vec3<i32>(43115i, i32(-2147483648), -31415i), 27182i, 13099u, vec2<u32>(33751u, 85368u), vec4<f32>(-409f, -145f, 1165f, -399f)), Struct_3(vec3<i32>(-1i, 1i, 1i), 17330i, 0u, vec2<u32>(1u, 1u), vec4<f32>(103f, -1978f, 1306f, 325f)), Struct_3(vec3<i32>(-14643i, 42342i, 56622i), -1i, 0u, vec2<u32>(1u, 0u), vec4<f32>(-2230f, -593f, 353f, -542f)), Struct_3(vec3<i32>(24327i, 0i, 8124i), 1i, 4294967295u, vec2<u32>(31329u, 4294967295u), vec4<f32>(-1000f, -352f, -1113f, 386f)), Struct_3(vec3<i32>(-95213i, 1i, -43182i), 2147483647i, 48571u, vec2<u32>(0u, 1u), vec4<f32>(-209f, 810f, -1231f, 1748f)), Struct_3(vec3<i32>(789i, 0i, 1i), 1i, 4294967295u, vec2<u32>(4294967295u, 1u), vec4<f32>(259f, 753f, -502f, 595f)), Struct_3(vec3<i32>(-1i, 2147483647i, -17227i), -22471i, 0u, vec2<u32>(4294967295u, 1u), vec4<f32>(-1136f, 119f, -483f, 596f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(arg_1, ~arg_2.c.x) << (1u % 32u));
    global0 = array<Struct_4, 9>();
    let var_1 = Struct_3(vec3<i32>(15920i, 41463i, _wgslsmith_mod_i32(reverseBits(u_input.c) << (81027u % 32u), u_input.c)), i32(-1i) * -27595i, ~u_input.b.x ^ u_input.a.x, vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 29984u) >> (vec3<u32>(4294967295u, 44340u, var_0.x) % vec3<u32>(32u)), ~vec3<u32>(var_0.x, 0u, 53790u))), _wgslsmith_mod_u32(var_0.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1844f, 487f, -1378f, arg_2.a.x))))))));
    let var_2 = countOneBits(min(9037u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 55364u, 4294967295u, arg_1) & vec4<u32>(arg_1, 29367u, 4294967295u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 34674u, 56529u, 56059u), vec4<u32>(arg_2.b, arg_2.b, var_1.c, var_1.d.x))), ~56938u));
    let var_3 = select(vec4<bool>(var_1.e.x < var_1.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.a.x, -1856f)), _wgslsmith_f_op_f32(abs(-899f))) < _wgslsmith_f_op_f32(-608f - _wgslsmith_f_op_f32(-164f - 860f)), true, !(arg_0 & true)), !select(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, false, false, true), any(vec2<bool>(true, arg_0))), !select(vec4<bool>(false, false, false, arg_0), vec4<bool>(false, false, false, arg_0), vec4<bool>(true, false, arg_0, true)), true), !select(vec4<bool>(any(vec3<bool>(true, arg_0, arg_0)), false, !arg_0, true), select(vec4<bool>(arg_0, arg_0, false, false), !vec4<bool>(false, arg_0, arg_0, arg_0), any(vec3<bool>(arg_0, true, true))), !(!vec4<bool>(false, arg_0, arg_0, arg_0))));
    return -1000f;
}

fn func_2(arg_0: vec4<bool>) -> Struct_5 {
    let var_0 = ~u_input.b.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(379f, 1636f))))), -961f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-510f, -502f, false)))), -1006f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1052f)), -1050f)))));
    var var_2 = Struct_4(Struct_2(true, _wgslsmith_add_vec3_u32((vec3<u32>(u_input.b.x, var_0, u_input.a.x) >> (vec3<u32>(4294967295u, var_0, 0u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a.x, 0u, 5886u) % vec3<u32>(32u)), abs(vec3<u32>(var_0, 1u, var_0)) & vec3<u32>(1u, 1u, 35117u)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.yx))), abs(~0u), abs(~vec2<u32>(58363u, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wx)), var_0, _wgslsmith_clamp_vec2_u32(select(u_input.b, u_input.b, false), select(vec2<u32>(var_0, 1u), u_input.a, true), u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(func_3(true, countOneBits(4294967295u), Struct_1(vec2<f32>(383f, var_1.x), u_input.b.x, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), var_1.x)), Struct_2(!(!arg_0.x), vec3<u32>(abs(4294967295u), var_0, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(27681u, 47271u))), Struct_1(var_1.zx, u_input.a.x, firstTrailingBit(vec2<u32>(0u, u_input.a.x))), Struct_1(var_1.zy, 60623u, ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-682f, 1000f, -1374f)) * vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x, var_1.x))), Struct_2(arg_0.x, vec3<u32>(~var_0, 133138u, ~28499u), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.wz, var_1.yw)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, var_1.x))), _wgslsmith_div_u32(max(55393u, 50732u), 72287u), vec2<u32>(var_0 | u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) + var_1.zx), ~_wgslsmith_add_u32(0u, var_0), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, var_0), min(var_0, 52009u))), vec3<f32>(1037f, 1556f, 219f)), firstTrailingBit(u_input.c) >> (var_0 % 32u));
    let var_3 = u_input.c <= _wgslsmith_div_i32(~u_input.c, ~(-var_2.d) & u_input.c);
    global1 = array<Struct_5, 30>();
    return global1[_wgslsmith_index_u32(var_2.c.c.b, 30u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_5, arg_3: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.d.x);
    let var_1 = Struct_4(Struct_2(any(!select(vec4<bool>(true, arg_2.e.a, false, false), vec4<bool>(true, arg_2.e.a, arg_2.e.a, arg_2.e.a), arg_0.x)), vec3<u32>(_wgslsmith_div_u32(0u, 14958u) ^ ~u_input.b.x, select(4294967295u, arg_2.a.d.x, true) & 0u, u_input.a.x), func_2(!vec4<bool>(true, false, arg_0.x, arg_0.x)).e.d, arg_2.e.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(767f, 596f, -202f)))))), Struct_2(false, ~(~_wgslsmith_mult_vec3_u32(arg_2.b.yyw, arg_2.e.b)), func_2(vec4<bool>(all(vec4<bool>(arg_0.x, arg_2.e.a, true, true)), !arg_0.x, true, all(vec3<bool>(false, arg_2.e.a, false)))).e.c, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), arg_2.e.e.yz, true)), u_input.b.x, arg_2.a.d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.c, var_0, arg_1))), vec3<f32>(arg_2.a.e.x, -1206f, 1477f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0, 1143f))))), arg_2.e, 0i);
    var var_2 = !(!all(vec4<bool>(var_1.b.a, true, var_1.c.a | arg_2.e.a, all(vec2<bool>(false, true)))));
    let var_3 = arg_0;
    var var_4 = arg_2.b;
    return firstLeadingBit(vec2<i32>(max(-(arg_3 | 1i), firstTrailingBit(1i)), var_1.d));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(arg_0, -1000f)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 246u) >> (~vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~(~abs(vec3<u32>(u_input.a.x, 20939u, 4294967295u)))), ~firstTrailingBit(vec3<u32>(select(u_input.b.x, 4976u, false), 4644u, ~u_input.a.x))), 30u)];
    var var_2 = var_1.e.b;
    var var_3 = _wgslsmith_add_vec2_i32(var_1.a.a.zx, _wgslsmith_mult_vec2_i32(~func_4(select(vec3<bool>(false, true, var_1.e.a), vec3<bool>(false, false, true), var_1.e.a), _wgslsmith_f_op_f32(abs(1000f)), func_2(vec4<bool>(true, false, false, var_1.e.a)), _wgslsmith_div_i32(var_1.a.a.x, -1i)), vec2<i32>(-1i, firstLeadingBit(var_1.a.a.x)) | abs(vec2<i32>(-2147483647i, u_input.c))));
    var_3 = -max(_wgslsmith_div_vec2_i32(var_1.a.a.yy | max(vec2<i32>(24948i, var_3.x), var_1.a.a.xx), var_1.a.a.zx), var_1.a.a.zx);
    return Struct_4(func_2(vec4<bool>(func_2(vec4<bool>(false, var_1.e.a, false, true)).e.a & var_1.e.a, var_1.e.a, 1i <= var_1.a.b, !(!var_1.e.a))).e, Struct_2(var_1.e.a, abs(vec3<u32>(countOneBits(var_1.e.c.b), 1u, u_input.b.x)), func_2(vec4<bool>(true, all(vec4<bool>(false, var_1.e.a, false, var_1.e.a)), true, u_input.a.x > var_2.x)).e.c, func_2(vec4<bool>(var_1.a.a.x != var_1.a.b, true, var_1.e.a, var_1.e.a)).e.d, _wgslsmith_f_op_vec3_f32(ceil(var_1.e.e))), func_2(select(vec4<bool>(var_1.e.a, false, var_1.a.a.x > -1259i, true), select(!vec4<bool>(var_1.e.a, false, var_1.e.a, var_1.e.a), select(vec4<bool>(var_1.e.a, false, true, var_1.e.a), vec4<bool>(true, var_1.e.a, false, false), vec4<bool>(true, var_1.e.a, var_1.e.a, false)), all(vec4<bool>(var_1.e.a, var_1.e.a, var_1.e.a, var_1.e.a))), true)).e, i32(-1i) * -1i);
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = arg_0.b.d;
    return func_1(-1236f);
}

fn func_6(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4) -> StorageBuffer {
    global1 = array<Struct_5, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(1501f).a.e * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-607f * arg_2.a.c.a.x)))), _wgslsmith_f_op_f32(select(arg_2.b.d.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1897f))), !any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(631f, 804f)))))));
    let var_1 = arg_2.c.b;
    var var_2 = func_2(vec4<bool>(select(arg_2.c.a, arg_2.b.a, var_0.x > _wgslsmith_f_op_f32(func_3(false, arg_2.c.d.b, arg_2.a.c))), false | !(!arg_2.c.a), true, true)).a;
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(func_4(!(!vec3<bool>(arg_2.b.a, false, arg_2.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1034f), Struct_5(func_2(vec4<bool>(true, arg_2.c.a, arg_2.a.a, true)).a, arg_1, arg_2.c.c.a.x, func_5(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]).c.c.a, arg_2.c), -(~var_2.a.x)).x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -59718i, 1i, arg_0), vec4<i32>(-1i, u_input.c, arg_0, u_input.c)), -vec4<i32>(arg_0, var_2.b, -10994i, -7789i)), _wgslsmith_sub_i32(-5383i, ~2147483647i) << ((firstLeadingBit(arg_1.x) ^ _wgslsmith_mod_u32(0u, 1u)) % 32u), -func_4(select(vec3<bool>(arg_2.c.a, arg_2.b.a, true), vec3<bool>(true, false, false), vec3<bool>(true, arg_2.c.a, true)), _wgslsmith_f_op_f32(f32(-1f) * -402f), Struct_5(global2[_wgslsmith_index_u32(67432u, 25u)], arg_1, 1915f, vec2<f32>(var_0.x, 1139f), arg_2.b), _wgslsmith_dot_vec2_i32(var_2.a.zy, var_2.a.xy)).x), -(~(vec4<i32>(arg_0, 11257i, 2147483647i, -12405i) ^ vec4<i32>(arg_2.d, -58732i, arg_0, var_2.b))) << (~(vec4<u32>(var_2.d.x, arg_2.a.c.c.x, u_input.a.x, 26700u) ^ vec4<u32>(78385u, 36453u, 8286u, 47267u)) % vec4<u32>(32u)));
    return StorageBuffer(vec4<i32>(~1i, -1i, var_2.b, var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.e, vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.a.c.a.x)), _wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x)), _wgslsmith_div_f32(arg_2.a.d.a.x, var_0.x), _wgslsmith_f_op_f32(var_0.x + arg_2.b.c.a.x)))), abs(vec4<i32>(~var_3.x, -1i, arg_2.d, ~(-31796i))) >> (arg_1 % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(-1785f, var_0.x)), _wgslsmith_f_op_f32(floor(arg_2.a.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(287f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.d.a.x * 1000f), func_1(406f).a.d.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.e.x * -1000f), -898f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = global2[_wgslsmith_index_u32(var_0, 25u)];
    global2 = array<Struct_3, 25>();
    let var_2 = !any(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, false, true)), true)));
    global0 = array<Struct_4, 9>();
    var var_3 = vec3<i32>(-1i) * -countOneBits(var_1.a);
    global0 = array<Struct_4, 9>();
    let x = u_input.a;
    s_output = func_6(firstTrailingBit(-12291i), ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(55909u, 10914u, 4294967295u, 0u), reverseBits(vec4<u32>(var_1.d.x, 0u, 0u, var_0)))), func_5(func_1(var_1.e.x)));
}

