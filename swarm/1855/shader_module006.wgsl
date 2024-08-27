struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<u32>(25141u, 1u, 64638u, 0u), Struct_1(vec4<u32>(1u, 4294967295u, 80444u, 30662u), vec4<f32>(868f, 318f, 515f, 1512f), 4294967295u, i32(-2147483648), false), vec4<f32>(427f, -1000f, 1011f, -177f), vec3<bool>(false, false, true), 1099f), Struct_2(vec4<u32>(4294967295u, 1u, 71475u, 0u), Struct_1(vec4<u32>(0u, 1u, 0u, 39058u), vec4<f32>(-473f, -1201f, 612f, -237f), 13287u, 1i, true), vec4<f32>(235f, -1114f, 148f, -696f), vec3<bool>(true, false, false), -1480f), Struct_2(vec4<u32>(1u, 45850u, 1u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 0u, 12501u, 0u), vec4<f32>(-693f, 1568f, 337f, 114f), 4294967295u, 1i, false), vec4<f32>(1359f, 1768f, 187f, -890f), vec3<bool>(false, false, false), -343f), Struct_2(vec4<u32>(30615u, 4294967295u, 28343u, 1u), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 12447u), vec4<f32>(854f, -255f, -412f, 1334f), 0u, 12072i, false), vec4<f32>(-1348f, -987f, 258f, -682f), vec3<bool>(false, false, false), 1621f), Struct_2(vec4<u32>(0u, 0u, 5885u, 1u), Struct_1(vec4<u32>(46780u, 14142u, 0u, 14876u), vec4<f32>(-953f, -755f, 1000f, 817f), 0u, 1i, false), vec4<f32>(884f, 898f, 628f, -283f), vec3<bool>(false, false, false), 198f), Struct_2(vec4<u32>(51523u, 4294967295u, 112228u, 6649u), Struct_1(vec4<u32>(13858u, 73108u, 162u, 4294967295u), vec4<f32>(-763f, -661f, -780f, 921f), 74218u, -1i, true), vec4<f32>(-626f, -987f, -673f, -301f), vec3<bool>(true, true, true), -541f), Struct_2(vec4<u32>(50646u, 4294967295u, 4294967295u, 8176u), Struct_1(vec4<u32>(0u, 74959u, 1u, 34062u), vec4<f32>(144f, -896f, 333f, 1667f), 0u, -1i, false), vec4<f32>(-1358f, -1510f, -359f, 782f), vec3<bool>(true, false, true), 1502f), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 7869u), Struct_1(vec4<u32>(30977u, 28238u, 0u, 0u), vec4<f32>(-1000f, 108f, -1175f, 741f), 40040u, 16442i, false), vec4<f32>(1885f, -513f, 1108f, -926f), vec3<bool>(false, false, true), -300f), Struct_2(vec4<u32>(4294967295u, 60824u, 75651u, 3224u), Struct_1(vec4<u32>(0u, 0u, 22881u, 1u), vec4<f32>(-235f, 869f, 440f, 1128f), 4294967295u, 39575i, false), vec4<f32>(-1312f, 856f, -932f, -1000f), vec3<bool>(false, true, false), -801f), Struct_2(vec4<u32>(11434u, 1u, 0u, 1u), Struct_1(vec4<u32>(35618u, 11375u, 31663u, 8442u), vec4<f32>(-1013f, 719f, 1233f, -1180f), 22849u, 1i, true), vec4<f32>(676f, 1550f, 462f, 1425f), vec3<bool>(false, false, true), 1056f), Struct_2(vec4<u32>(69539u, 34265u, 0u, 22954u), Struct_1(vec4<u32>(1u, 1u, 0u, 22300u), vec4<f32>(2624f, 976f, 676f, -1019f), 13931u, 2147483647i, false), vec4<f32>(452f, 2777f, 1000f, -1179f), vec3<bool>(true, true, false), 317f), Struct_2(vec4<u32>(2098u, 1u, 48344u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 23393u, 4294967295u, 29095u), vec4<f32>(-1337f, 1037f, -1000f, 531f), 25634u, 25254i, false), vec4<f32>(1082f, 475f, -617f, 1131f), vec3<bool>(true, true, true), -740f), Struct_2(vec4<u32>(1u, 16875u, 4294967295u, 77814u), Struct_1(vec4<u32>(27907u, 53509u, 0u, 1u), vec4<f32>(1038f, -936f, -804f, -541f), 1u, 48068i, true), vec4<f32>(-933f, 2639f, -671f, -1050f), vec3<bool>(false, true, true), 1258f), Struct_2(vec4<u32>(6374u, 0u, 20210u, 0u), Struct_1(vec4<u32>(62599u, 20161u, 14073u, 4294967295u), vec4<f32>(428f, 420f, -364f, -531f), 61594u, i32(-2147483648), true), vec4<f32>(767f, 2257f, 752f, -870f), vec3<bool>(false, false, false), -1891f), Struct_2(vec4<u32>(0u, 5278u, 70408u, 63685u), Struct_1(vec4<u32>(80117u, 4294967295u, 4294967295u, 1u), vec4<f32>(450f, -792f, 1000f, 465f), 0u, 44369i, true), vec4<f32>(2026f, -1000f, 1618f, -640f), vec3<bool>(true, false, true), -302f), Struct_2(vec4<u32>(1u, 4294967295u, 1u, 24840u), Struct_1(vec4<u32>(18261u, 31777u, 1u, 0u), vec4<f32>(1000f, -475f, -1000f, -344f), 4665u, -43925i, true), vec4<f32>(-2124f, 1420f, 1000f, -480f), vec3<bool>(false, true, false), 1809f), Struct_2(vec4<u32>(66837u, 18139u, 30510u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 13824u, 37163u, 4294967295u), vec4<f32>(-513f, 1000f, 2110f, 1000f), 97087u, 0i, false), vec4<f32>(-2652f, -1426f, 778f, -2488f), vec3<bool>(false, true, true), -716f), Struct_2(vec4<u32>(0u, 66699u, 4294967295u, 0u), Struct_1(vec4<u32>(42009u, 55546u, 1u, 0u), vec4<f32>(-2051f, -498f, -497f, -1868f), 0u, -1i, false), vec4<f32>(101f, -1070f, -769f, -505f), vec3<bool>(true, false, false), -1000f), Struct_2(vec4<u32>(379u, 0u, 19203u, 4294967295u), Struct_1(vec4<u32>(1281u, 20868u, 12072u, 0u), vec4<f32>(282f, -482f, -1503f, -236f), 4294967295u, 0i, true), vec4<f32>(691f, 1000f, 1000f, -1575f), vec3<bool>(false, false, true), -554f), Struct_2(vec4<u32>(4167u, 44028u, 5019u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 25223u, 1u, 44273u), vec4<f32>(1351f, -1900f, -1567f, 148f), 4294967295u, -52385i, false), vec4<f32>(775f, -1171f, 242f, 1000f), vec3<bool>(false, false, true), 629f), Struct_2(vec4<u32>(0u, 1u, 1u, 4294967295u), Struct_1(vec4<u32>(14973u, 1u, 55640u, 4294967295u), vec4<f32>(-930f, -604f, -461f, 792f), 48899u, -1i, false), vec4<f32>(-689f, 195f, 577f, 1203f), vec3<bool>(true, false, true), 322f), Struct_2(vec4<u32>(1u, 1u, 27536u, 69919u), Struct_1(vec4<u32>(4294967295u, 19081u, 45715u, 0u), vec4<f32>(-985f, -2041f, -903f, -1699f), 28116u, -1i, true), vec4<f32>(885f, -120f, -1654f, -1096f), vec3<bool>(true, false, false), -2003f), Struct_2(vec4<u32>(0u, 55611u, 12511u, 4294967295u), Struct_1(vec4<u32>(13028u, 0u, 5148u, 1u), vec4<f32>(966f, -1657f, -405f, 457f), 1u, 28798i, true), vec4<f32>(898f, -676f, -813f, 302f), vec3<bool>(false, true, false), -290f), Struct_2(vec4<u32>(0u, 64757u, 4294967295u, 4634u), Struct_1(vec4<u32>(30942u, 13300u, 92827u, 1u), vec4<f32>(-1566f, -1126f, -529f, 458f), 4294967295u, i32(-2147483648), false), vec4<f32>(-1244f, 619f, 2122f, 135f), vec3<bool>(true, true, true), -1149f), Struct_2(vec4<u32>(1u, 68026u, 19688u, 8759u), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 2045u), vec4<f32>(1656f, -1000f, 105f, 422f), 32930u, -1i, true), vec4<f32>(-325f, 436f, 1190f, -1325f), vec3<bool>(false, false, false), -1491f), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 63137u), Struct_1(vec4<u32>(1u, 0u, 99386u, 85364u), vec4<f32>(1000f, 833f, 384f, -1443f), 28227u, -18395i, true), vec4<f32>(-711f, -866f, -107f, -184f), vec3<bool>(false, false, true), -666f), Struct_2(vec4<u32>(3858u, 36601u, 1u, 0u), Struct_1(vec4<u32>(19018u, 4294967295u, 1u, 6092u), vec4<f32>(479f, -208f, 395f, 104f), 30740u, -3809i, false), vec4<f32>(365f, -346f, -272f, 153f), vec3<bool>(true, false, false), 743f), Struct_2(vec4<u32>(4294967295u, 77312u, 67286u, 18919u), Struct_1(vec4<u32>(53241u, 1u, 32472u, 29961u), vec4<f32>(1000f, -307f, -1153f, 1000f), 74398u, i32(-2147483648), false), vec4<f32>(-1000f, -659f, 1549f, 226f), vec3<bool>(true, true, true), 121f), Struct_2(vec4<u32>(4034u, 30243u, 0u, 0u), Struct_1(vec4<u32>(4294967295u, 81733u, 1u, 815u), vec4<f32>(1000f, 1166f, -505f, -1241f), 101736u, -2553i, false), vec4<f32>(1365f, -827f, -582f, -312f), vec3<bool>(false, false, true), -777f), Struct_2(vec4<u32>(48173u, 4294967295u, 22885u, 0u), Struct_1(vec4<u32>(39370u, 1u, 11662u, 67048u), vec4<f32>(-296f, 1090f, -996f, -952f), 4294967295u, 2147483647i, true), vec4<f32>(-1508f, -1068f, 1542f, -1000f), vec3<bool>(true, true, false), 919f));

var<private> global1: f32;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<u32>(57403u, 0u, 26365u, 42087u), Struct_1(vec4<u32>(16622u, 11856u, 1u, 4112u), vec4<f32>(-265f, -1000f, -1813f, 1253f), 4294967295u, -31679i, true), vec4<f32>(-1727f, -1255f, 552f, -1000f), vec3<bool>(true, false, true), 837f), Struct_2(vec4<u32>(42760u, 4294967295u, 4294967295u, 1u), Struct_1(vec4<u32>(0u, 1u, 27599u, 1u), vec4<f32>(-1166f, 450f, 1568f, 1060f), 4294967295u, 12914i, false), vec4<f32>(-1797f, 523f, -530f, 204f), vec3<bool>(false, false, false), -171f), Struct_2(vec4<u32>(4294967295u, 1u, 25686u, 10530u), Struct_1(vec4<u32>(1u, 4294967295u, 42736u, 4294967295u), vec4<f32>(749f, 1000f, 426f, -410f), 52816u, i32(-2147483648), false), vec4<f32>(876f, -1314f, -430f, 2188f), vec3<bool>(true, true, false), -826f), Struct_2(vec4<u32>(1u, 84017u, 0u, 1u), Struct_1(vec4<u32>(29708u, 0u, 0u, 1u), vec4<f32>(-1522f, -383f, -810f, -1601f), 22023u, 2147483647i, false), vec4<f32>(1422f, 272f, -1521f, 1655f), vec3<bool>(false, false, true), 2430f), Struct_2(vec4<u32>(32594u, 0u, 0u, 5809u), Struct_1(vec4<u32>(1u, 4294967295u, 31863u, 4294967295u), vec4<f32>(1119f, -1000f, -683f, 677f), 4294967295u, -16808i, false), vec4<f32>(-897f, -1000f, -554f, 1826f), vec3<bool>(false, true, true), -962f), Struct_2(vec4<u32>(45757u, 94807u, 50374u, 18385u), Struct_1(vec4<u32>(15037u, 23444u, 79972u, 1u), vec4<f32>(-1532f, 131f, 1478f, -138f), 28352u, -51577i, true), vec4<f32>(-283f, -113f, -171f, 299f), vec3<bool>(true, true, false), -750f), Struct_2(vec4<u32>(15587u, 138899u, 0u, 2449u), Struct_1(vec4<u32>(10688u, 42776u, 1u, 38829u), vec4<f32>(919f, -1000f, -638f, 628f), 34999u, 17395i, true), vec4<f32>(-285f, -247f, -222f, -1000f), vec3<bool>(true, true, true), -144f), Struct_2(vec4<u32>(0u, 23476u, 1u, 1u), Struct_1(vec4<u32>(53277u, 7726u, 24316u, 0u), vec4<f32>(-1539f, 311f, 1062f, 1664f), 4294967295u, -10281i, false), vec4<f32>(-538f, -887f, 1333f, -1133f), vec3<bool>(true, false, true), 1302f), Struct_2(vec4<u32>(53475u, 4294967295u, 0u, 54963u), Struct_1(vec4<u32>(0u, 8135u, 38401u, 1u), vec4<f32>(-1486f, -384f, -1717f, 1468f), 4294967295u, -6278i, false), vec4<f32>(-587f, -946f, 1455f, -1105f), vec3<bool>(false, true, false), 413f), Struct_2(vec4<u32>(11835u, 4294967295u, 3146u, 43007u), Struct_1(vec4<u32>(0u, 1u, 21433u, 39425u), vec4<f32>(1076f, 1132f, -739f, -752f), 0u, 0i, false), vec4<f32>(-1017f, 126f, -796f, 1159f), vec3<bool>(true, false, false), -1810f), Struct_2(vec4<u32>(52874u, 57775u, 1u, 1u), Struct_1(vec4<u32>(1u, 0u, 5678u, 47522u), vec4<f32>(-265f, -671f, -1644f, -1000f), 46044u, 1i, true), vec4<f32>(200f, -344f, -1000f, 396f), vec3<bool>(true, false, true), 219f), Struct_2(vec4<u32>(120340u, 1u, 1u, 9377u), Struct_1(vec4<u32>(0u, 45336u, 36972u, 79652u), vec4<f32>(699f, 295f, 921f, 1174f), 28592u, 2147483647i, false), vec4<f32>(1329f, -1000f, 358f, 1989f), vec3<bool>(false, false, true), -295f), Struct_2(vec4<u32>(14795u, 170645u, 39780u, 20886u), Struct_1(vec4<u32>(43720u, 19356u, 0u, 4294967295u), vec4<f32>(-338f, -469f, -1948f, 895f), 65125u, 7836i, true), vec4<f32>(803f, -325f, 625f, -1367f), vec3<bool>(false, true, true), -661f), Struct_2(vec4<u32>(57525u, 1u, 80674u, 0u), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 13252u), vec4<f32>(1979f, 2179f, -3002f, 926f), 1u, i32(-2147483648), false), vec4<f32>(341f, -159f, 117f, 955f), vec3<bool>(true, false, false), 922f), Struct_2(vec4<u32>(11618u, 100752u, 0u, 6666u), Struct_1(vec4<u32>(44719u, 45556u, 0u, 24980u), vec4<f32>(2052f, 623f, -1263f, 1342f), 0u, -53926i, false), vec4<f32>(805f, 287f, -1166f, -789f), vec3<bool>(false, true, false), -853f), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 7077u), Struct_1(vec4<u32>(12811u, 26361u, 1u, 39626u), vec4<f32>(-2138f, -648f, -682f, 380f), 45151u, i32(-2147483648), false), vec4<f32>(1767f, 1078f, 1274f, -1000f), vec3<bool>(true, true, true), -1334f), Struct_2(vec4<u32>(44934u, 55275u, 56109u, 32707u), Struct_1(vec4<u32>(0u, 1u, 15677u, 1u), vec4<f32>(-1112f, 362f, -792f, 462f), 0u, i32(-2147483648), true), vec4<f32>(-828f, -288f, 623f, -138f), vec3<bool>(false, true, true), -307f), Struct_2(vec4<u32>(28733u, 1u, 1u, 3866u), Struct_1(vec4<u32>(0u, 114346u, 4294967295u, 35744u), vec4<f32>(1447f, 305f, -613f, -299f), 31087u, 2147483647i, false), vec4<f32>(-823f, -238f, -412f, -456f), vec3<bool>(true, false, false), -1599f), Struct_2(vec4<u32>(44165u, 0u, 4294967295u, 24554u), Struct_1(vec4<u32>(1u, 1u, 11857u, 4689u), vec4<f32>(-477f, 1329f, 1103f, 712f), 8042u, 4615i, true), vec4<f32>(-870f, -133f, -1104f, -1298f), vec3<bool>(false, false, false), 769f), Struct_2(vec4<u32>(23133u, 34592u, 45285u, 0u), Struct_1(vec4<u32>(59276u, 4294967295u, 33477u, 4294967295u), vec4<f32>(-1096f, 1179f, -160f, 693f), 0u, 1093i, false), vec4<f32>(849f, 707f, 1007f, -1000f), vec3<bool>(true, false, true), -583f), Struct_2(vec4<u32>(25805u, 20426u, 4294967295u, 39337u), Struct_1(vec4<u32>(1u, 12591u, 0u, 4294967295u), vec4<f32>(366f, 1000f, 376f, 1056f), 1u, -3011i, true), vec4<f32>(1588f, -719f, 1514f, 733f), vec3<bool>(true, false, false), 1639f), Struct_2(vec4<u32>(0u, 35425u, 0u, 4294967295u), Struct_1(vec4<u32>(18938u, 59112u, 0u, 31565u), vec4<f32>(595f, -498f, -849f, -1163f), 1u, -1i, true), vec4<f32>(166f, 463f, -731f, 207f), vec3<bool>(false, false, false), 498f), Struct_2(vec4<u32>(18625u, 39899u, 26015u, 0u), Struct_1(vec4<u32>(33605u, 15880u, 58580u, 36635u), vec4<f32>(-265f, 1273f, 1321f, -150f), 16686u, 0i, false), vec4<f32>(828f, -285f, -958f, -239f), vec3<bool>(false, false, true), 217f), Struct_2(vec4<u32>(102762u, 1u, 0u, 4294967295u), Struct_1(vec4<u32>(0u, 1u, 17028u, 4294967295u), vec4<f32>(2202f, -470f, -607f, -1399f), 4294967295u, -31952i, true), vec4<f32>(274f, 2141f, 1427f, 330f), vec3<bool>(false, false, true), -319f), Struct_2(vec4<u32>(58796u, 45925u, 56617u, 67427u), Struct_1(vec4<u32>(0u, 10350u, 1u, 43304u), vec4<f32>(767f, 1111f, 1323f, 1110f), 62312u, -80220i, false), vec4<f32>(220f, -1000f, -1000f, 1999f), vec3<bool>(false, false, false), -545f), Struct_2(vec4<u32>(18008u, 24786u, 8289u, 47776u), Struct_1(vec4<u32>(4113u, 1u, 24417u, 0u), vec4<f32>(1000f, -469f, -258f, 1365f), 0u, i32(-2147483648), true), vec4<f32>(-820f, 2031f, -145f, 1452f), vec3<bool>(true, false, false), 933f), Struct_2(vec4<u32>(1u, 0u, 0u, 0u), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 12872u), vec4<f32>(703f, 338f, -621f, 1112f), 34049u, i32(-2147483648), false), vec4<f32>(-331f, -1000f, 374f, 1830f), vec3<bool>(true, true, false), 1217f), Struct_2(vec4<u32>(1u, 0u, 0u, 22490u), Struct_1(vec4<u32>(4294967295u, 49291u, 40089u, 4294967295u), vec4<f32>(841f, -923f, 379f, -641f), 948u, 85665i, false), vec4<f32>(175f, 2577f, -1791f, 350f), vec3<bool>(false, false, false), -697f), Struct_2(vec4<u32>(1u, 0u, 1u, 8819u), Struct_1(vec4<u32>(5483u, 1u, 1u, 1u), vec4<f32>(-247f, -234f, -696f, -130f), 0u, -26501i, false), vec4<f32>(-180f, -677f, -1528f, -780f), vec3<bool>(false, true, false), 177f), Struct_2(vec4<u32>(86643u, 24158u, 36906u, 0u), Struct_1(vec4<u32>(61404u, 4294967295u, 46261u, 1648u), vec4<f32>(949f, -1000f, -2000f, -1045f), 1u, 67675i, true), vec4<f32>(-1390f, -515f, -1267f, -1339f), vec3<bool>(true, true, false), 1042f));

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    var var_1 = 4294967295u;
    let var_2 = Struct_5(u_input.c.x, Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.b + var_0.b.b))), select(select(vec3<bool>(true, var_0.b.e, false), var_0.d, -1509f != var_0.b.b.x), select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(false, var_0.b.e, var_0.b.e), var_0.b.e), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f + var_0.b.b.x))), global0[_wgslsmith_index_u32(abs(global3.x), 30u)], Struct_2(vec4<u32>(63007u, var_0.b.c, ~abs(var_0.a.x), u_input.b), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.b.x, 592f, var_0.e, var_0.b.b.x))), 4294967295u, firstTrailingBit(u_input.c.x ^ 2147483647i), true & var_0.b.e), var_0.c, vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(min(var_0.c.x, var_0.b.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1457f)), var_0.b.a.wzy);
    var var_3 = _wgslsmith_sub_i32(var_0.b.d, min(_wgslsmith_add_i32(~1i, -1i), i32(-1i) * -24395i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e));
    return u_input.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = Struct_4(Struct_3(abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 7007u)), _wgslsmith_mod_vec2_u32(arg_1.a.zy, vec2<u32>(u_input.b, 0u)))), -_wgslsmith_mod_i32(~u_input.a, -35785i), arg_1, Struct_1(min(arg_1.b.a, vec4<u32>(global3.x, 1u, arg_1.b.a.x, 4294967295u)) ^ ~arg_1.a, arg_1.c, abs(~arg_1.b.a.x), _wgslsmith_add_i32(~arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-2147483647i, -30654i, 5313i, arg_0.x))), !any(vec4<bool>(true, arg_1.b.e, true, false)))), !(!((arg_1.b.e | true) | (arg_1.e >= arg_1.b.b.x))), Struct_2(firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_1.b.a, vec4<u32>(1u, arg_1.a.x, global3.x, 0u))), Struct_1(vec4<u32>(arg_1.b.a.x, max(global3.x, 1u), 1u, 99583u), _wgslsmith_f_op_vec4_f32(arg_1.b.b + arg_1.c), ~(~global3.x), -firstLeadingBit(-1i), arg_1.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b.x, arg_1.c.x, arg_1.b.b.x, arg_1.b.b.x))))), arg_1.d, 1000f), arg_1.a.x, reverseBits(arg_1.b.a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(f32(-1f) * -108f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.c.x, -180f), _wgslsmith_f_op_f32(min(-622f, arg_1.b.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1000f)))))) + arg_1.b.b.x));
    global2 = array<Struct_2, 30>();
    var var_2 = var_0.a.a;
    let var_3 = _wgslsmith_f_op_f32(230f - 245f);
    return vec4<u32>(_wgslsmith_mult_u32(global3.x, u_input.b), _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(~countOneBits(arg_1.b.a.x), arg_1.a.x)), u_input.d, var_0.c.a.x);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_5 {
    return Struct_5(-(-firstTrailingBit(-58011i) >> (u_input.b % 32u)), global2[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mod_u32(global3.x, 8009u) % 32u), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, ~18859u), ~reverseBits(vec2<u32>(global3.x, 0u)) | (vec2<u32>(global3.x, global3.x) << (firstTrailingBit(vec2<u32>(309u, global3.x)) % vec2<u32>(32u)))), 30u)], Struct_2(func_4(max(vec4<i32>(arg_0, 42156i, arg_1.x, -2147483647i), func_3()), global2[_wgslsmith_index_u32(0u, 30u)]), Struct_1(vec4<u32>(~global3.x, global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(8199u, 0u, 71116u, global3.x), vec4<u32>(u_input.e, 4294967295u, 25236u, global3.x)), ~global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, 1709f, -1000f, 1000f)), u_input.e, arg_0, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(947f, -959f, 1346f, 731f) * vec4<f32>(655f, 494f, 1000f, -1000f)) - vec4<f32>(-1328f, 1000f, -1000f, -1856f)))), vec3<bool>(true, true, true), -2188f), vec3<u32>(~1u, 0u, ~(u_input.e >> (u_input.d % 32u))));
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_2, 30>();
    let var_0 = func_2(36851i, ~(-(~select(vec4<i32>(2147483647i, -2147483647i, 20535i, 2147483647i), u_input.c, false))));
    var var_1 = Struct_3(var_0.d.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(52578i >> (var_0.e.x % 32u), -29400i) << (vec2<u32>(global3.x & 4294967295u, global3.x) % vec2<u32>(32u)), vec2<i32>(-9374i, var_0.a)), Struct_2(reverseBits(reverseBits(var_0.c.a ^ var_0.d.a)), Struct_1(countOneBits(vec4<u32>(0u, u_input.e, 4294967295u, 43546u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.e, var_0.d.c.x, 643f, var_0.c.b.b.x), vec4<f32>(var_0.b.b.b.x, 1000f, 1304f, 529f)) + var_0.c.c), firstLeadingBit(_wgslsmith_clamp_u32(u_input.b, global3.x, 1u)), ~(-11761i >> (global3.x % 32u)), max(22780u, global3.x) >= _wgslsmith_sub_u32(u_input.d, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1165f, var_0.b.b.b.x, _wgslsmith_f_op_f32(var_0.b.b.b.x * -1714f), _wgslsmith_f_op_f32(-759f * -466f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(803f, -623f, var_0.b.c.x, var_0.c.e) * _wgslsmith_f_op_vec4_f32(max(var_0.d.b.b, var_0.c.c)))), var_0.d.d, -1086f), func_2(45082i, firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(-19044i, u_input.a), var_0.a, var_0.b.b.d, var_0.b.b.d))).d.b);
    var var_2 = vec3<i32>(-32281i, _wgslsmith_sub_i32(var_1.c.b.d, _wgslsmith_dot_vec2_i32(vec2<i32>(50526i, var_1.b) >> (vec2<u32>(139795u, var_1.d.c) % vec2<u32>(32u)), -u_input.c.zx) | min(1i, ~var_1.c.b.d)), ~_wgslsmith_dot_vec2_i32(~u_input.c.ww, _wgslsmith_div_vec2_i32(vec2<i32>(-57647i, u_input.c.x), u_input.c.yy) >> (~var_1.d.a.yz % vec2<u32>(32u))));
    global2 = array<Struct_2, 30>();
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !vec2<bool>(false, var_0.e);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-370f + -1436f))));
    global0 = array<Struct_2, 30>();
    var var_2 = _wgslsmith_add_i32(-36144i >> (max(global3.x ^ u_input.b, 54074u) % 32u), func_2((0i << (u_input.d % 32u)) & -57729i, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -10563i, -18391i), max(vec4<i32>(var_0.d, u_input.c.x, u_input.a, var_0.d), u_input.c))).b.b.d) != u_input.c.x;
    var_2 = all(select(vec4<bool>(var_0.e, all(select(var_1, var_1, var_1.x)), false, var_0.e), vec4<bool>(var_0.e, _wgslsmith_dot_vec2_i32(vec2<i32>(13083i, 36631i), u_input.c.zx) != func_3().x, func_1().e & (false || var_1.x), any(!vec2<bool>(var_1.x, true))), true || var_0.e));
    var var_3 = var_0.a.wx;
    let var_4 = vec3<i32>(func_1().d, 2147483647i, -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(var_0.b.yzy)));
}

