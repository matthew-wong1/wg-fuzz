struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(true, Struct_1(vec2<u32>(8679u, 35424u), vec2<i32>(-1i, i32(-2147483648)), 12294u, true, vec3<f32>(-418f, 351f, -396f)), 624f, Struct_1(vec2<u32>(47275u, 15141u), vec2<i32>(992i, -1i), 93032u, true, vec3<f32>(-1191f, -560f, -423f))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 29474u), vec2<i32>(i32(-2147483648), -1i), 4294967295u, true, vec3<f32>(-124f, 1000f, -1009f)), 2075f, Struct_1(vec2<u32>(4294967295u, 15955u), vec2<i32>(-1i, -45588i), 39006u, true, vec3<f32>(841f, 632f, 567f))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(-15144i, 0i), 63368u, false, vec3<f32>(-807f, -408f, 482f)), -437f, Struct_1(vec2<u32>(106873u, 26445u), vec2<i32>(2147483647i, 9553i), 26278u, false, vec3<f32>(917f, 378f, -318f))), vec4<i32>(0i, 17061i, 2147483647i, 1i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(-17219i, -48778i), 12115u, true, vec3<f32>(149f, -585f, 190f)), -978f, Struct_1(vec2<u32>(1u, 93813u), vec2<i32>(-40493i, -3491i), 1u, false, vec3<f32>(1119f, 1557f, -679f))), Struct_2(false, Struct_1(vec2<u32>(13929u, 4294967295u), vec2<i32>(-1i, 32899i), 1u, false, vec3<f32>(-215f, -366f, 2386f)), -441f, Struct_1(vec2<u32>(1u, 47706u), vec2<i32>(1i, 1i), 116917u, false, vec3<f32>(557f, 1548f, -756f))), Struct_2(true, Struct_1(vec2<u32>(22126u, 54725u), vec2<i32>(1i, 4695i), 0u, true, vec3<f32>(185f, 1085f, -1875f)), 1347f, Struct_1(vec2<u32>(35527u, 0u), vec2<i32>(6000i, 0i), 0u, true, vec3<f32>(-261f, 785f, -2134f))), vec4<i32>(2147483647i, 0i, 58745i, 26723i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(0u, 43763u), vec2<i32>(1i, 1i), 4294967295u, false, vec3<f32>(-679f, 2477f, 1691f)), 177f, Struct_1(vec2<u32>(5337u, 48642u), vec2<i32>(i32(-2147483648), -4634i), 0u, true, vec3<f32>(1094f, 217f, 555f))), Struct_2(true, Struct_1(vec2<u32>(0u, 21459u), vec2<i32>(1i, i32(-2147483648)), 1u, true, vec3<f32>(-290f, -1000f, -813f)), 188f, Struct_1(vec2<u32>(83052u, 1u), vec2<i32>(-4523i, 1593i), 48549u, true, vec3<f32>(197f, 1530f, -426f))), Struct_2(true, Struct_1(vec2<u32>(20661u, 4294967295u), vec2<i32>(21245i, 1i), 0u, false, vec3<f32>(-389f, -275f, -1481f)), 140f, Struct_1(vec2<u32>(0u, 1u), vec2<i32>(35317i, 5432i), 4294967295u, true, vec3<f32>(380f, 371f, 681f))), vec4<i32>(46418i, 6037i, 1i, 1i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(41967u, 0u), vec2<i32>(39249i, -1i), 1u, true, vec3<f32>(937f, 1461f, 1063f)), -392f, Struct_1(vec2<u32>(20162u, 19248u), vec2<i32>(62129i, -1i), 18430u, true, vec3<f32>(-179f, 1524f, -367f))), Struct_2(false, Struct_1(vec2<u32>(17703u, 4294967295u), vec2<i32>(-1i, 1990i), 0u, false, vec3<f32>(-103f, 776f, -896f)), -663f, Struct_1(vec2<u32>(11298u, 1u), vec2<i32>(30749i, -10726i), 1u, true, vec3<f32>(-1637f, 628f, 1000f))), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 34015u), vec2<i32>(34620i, -587i), 46486u, true, vec3<f32>(-1493f, 720f, 689f)), 836f, Struct_1(vec2<u32>(82011u, 0u), vec2<i32>(662i, -4948i), 15971u, false, vec3<f32>(114f, 402f, -599f))), vec4<i32>(68699i, 9648i, -35003i, 0i)), Struct_3(Struct_2(false, Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(0i, -39066i), 13994u, true, vec3<f32>(-1249f, -867f, -1000f)), 428f, Struct_1(vec2<u32>(10196u, 4294967295u), vec2<i32>(-48017i, i32(-2147483648)), 32335u, false, vec3<f32>(-972f, -932f, 431f))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 52310u), vec2<i32>(-55956i, 15196i), 22267u, true, vec3<f32>(424f, 711f, -1427f)), 1000f, Struct_1(vec2<u32>(0u, 19302u), vec2<i32>(51358i, 10614i), 1u, true, vec3<f32>(1000f, -114f, -345f))), Struct_2(false, Struct_1(vec2<u32>(59987u, 35853u), vec2<i32>(5690i, 9464i), 0u, true, vec3<f32>(2149f, 1479f, 278f)), 1104f, Struct_1(vec2<u32>(1u, 9865u), vec2<i32>(0i, -15897i), 6652u, true, vec3<f32>(-1044f, -493f, -675f))), vec4<i32>(-15543i, -1i, -1i, -4568i)), Struct_3(Struct_2(false, Struct_1(vec2<u32>(0u, 0u), vec2<i32>(-69405i, 0i), 3688u, false, vec3<f32>(-1000f, 668f, -2253f)), 563f, Struct_1(vec2<u32>(4294967295u, 31060u), vec2<i32>(1i, 17483i), 1u, false, vec3<f32>(1198f, 497f, -404f))), Struct_2(true, Struct_1(vec2<u32>(9101u, 57756u), vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u, true, vec3<f32>(1042f, -1915f, -431f)), 1165f, Struct_1(vec2<u32>(12864u, 9364u), vec2<i32>(i32(-2147483648), 15366i), 40210u, true, vec3<f32>(-341f, 817f, 874f))), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 6722u), vec2<i32>(11589i, 13720i), 61608u, false, vec3<f32>(-319f, 666f, 1370f)), 151f, Struct_1(vec2<u32>(24523u, 40146u), vec2<i32>(5250i, 19834i), 0u, true, vec3<f32>(-638f, -605f, 253f))), vec4<i32>(0i, 33939i, 1i, i32(-2147483648))), Struct_3(Struct_2(true, Struct_1(vec2<u32>(0u, 3235u), vec2<i32>(31977i, 1i), 4294967295u, true, vec3<f32>(-488f, -1331f, 801f)), 457f, Struct_1(vec2<u32>(34916u, 0u), vec2<i32>(-20263i, 15490i), 4294967295u, true, vec3<f32>(558f, -330f, -452f))), Struct_2(false, Struct_1(vec2<u32>(114151u, 4294967295u), vec2<i32>(-16596i, 91355i), 6400u, true, vec3<f32>(631f, 297f, 1734f)), -1000f, Struct_1(vec2<u32>(1773u, 1u), vec2<i32>(2147483647i, 1i), 17399u, true, vec3<f32>(893f, 1839f, -375f))), Struct_2(true, Struct_1(vec2<u32>(0u, 13369u), vec2<i32>(10838i, i32(-2147483648)), 0u, true, vec3<f32>(918f, -854f, -334f)), 295f, Struct_1(vec2<u32>(10617u, 0u), vec2<i32>(-19573i, 2147483647i), 0u, true, vec3<f32>(-777f, -659f, -894f))), vec4<i32>(44615i, 44444i, 0i, -48143i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(3726u, 44325u), vec2<i32>(i32(-2147483648), i32(-2147483648)), 84715u, false, vec3<f32>(-1303f, -200f, 1614f)), -213f, Struct_1(vec2<u32>(0u, 30436u), vec2<i32>(2147483647i, 60260i), 13404u, false, vec3<f32>(1619f, -271f, -755f))), Struct_2(true, Struct_1(vec2<u32>(0u, 18658u), vec2<i32>(9134i, i32(-2147483648)), 48591u, false, vec3<f32>(1210f, 781f, 745f)), 2397f, Struct_1(vec2<u32>(39231u, 4294967295u), vec2<i32>(1i, 17200i), 4294967295u, false, vec3<f32>(-127f, 1199f, 1689f))), Struct_2(false, Struct_1(vec2<u32>(1u, 62009u), vec2<i32>(-51656i, -35380i), 1u, true, vec3<f32>(449f, 274f, 300f)), 1270f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(16599i, 15870i), 4294967295u, false, vec3<f32>(1000f, 2606f, 1460f))), vec4<i32>(-14955i, 9175i, 20900i, -1i)), Struct_3(Struct_2(false, Struct_1(vec2<u32>(24688u, 47849u), vec2<i32>(-18626i, -47128i), 1u, false, vec3<f32>(132f, -458f, 234f)), -1000f, Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(i32(-2147483648), 1i), 4294967295u, true, vec3<f32>(-759f, 1000f, 1000f))), Struct_2(true, Struct_1(vec2<u32>(1u, 1u), vec2<i32>(i32(-2147483648), 0i), 24983u, true, vec3<f32>(-352f, -947f, 266f)), 155f, Struct_1(vec2<u32>(21193u, 36192u), vec2<i32>(-17874i, 4851i), 26024u, true, vec3<f32>(293f, 1612f, -716f))), Struct_2(true, Struct_1(vec2<u32>(1u, 43714u), vec2<i32>(-1i, -1i), 13373u, false, vec3<f32>(1000f, -510f, -534f)), -1044f, Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(-1i, 22232i), 4294967295u, false, vec3<f32>(-1893f, 827f, -1528f))), vec4<i32>(-1i, 0i, 0i, 2147483647i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(48852u, 1u), vec2<i32>(-13605i, i32(-2147483648)), 106722u, true, vec3<f32>(-1577f, -791f, 596f)), -923f, Struct_1(vec2<u32>(3399u, 56283u), vec2<i32>(0i, 2147483647i), 13567u, false, vec3<f32>(126f, -677f, -284f))), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u, true, vec3<f32>(-347f, 1356f, -657f)), -1630f, Struct_1(vec2<u32>(1u, 1u), vec2<i32>(-1i, 9305i), 34729u, true, vec3<f32>(-697f, -1307f, 617f))), Struct_2(true, Struct_1(vec2<u32>(45745u, 0u), vec2<i32>(-69890i, 6687i), 31176u, true, vec3<f32>(1005f, 386f, 548f)), -725f, Struct_1(vec2<u32>(36794u, 11405u), vec2<i32>(-36887i, 0i), 37256u, true, vec3<f32>(1000f, -2303f, 221f))), vec4<i32>(2147483647i, i32(-2147483648), 0i, 1i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(22869u, 13062u), vec2<i32>(37867i, 23573i), 83409u, true, vec3<f32>(922f, -214f, 325f)), -596f, Struct_1(vec2<u32>(67539u, 4294967295u), vec2<i32>(-31274i, 33945i), 1u, true, vec3<f32>(473f, 733f, 845f))), Struct_2(false, Struct_1(vec2<u32>(30164u, 3088u), vec2<i32>(-7964i, -3650i), 4077u, false, vec3<f32>(662f, 2110f, 323f)), -690f, Struct_1(vec2<u32>(30659u, 4294967295u), vec2<i32>(65394i, 1i), 4294967295u, false, vec3<f32>(-186f, 408f, -1100f))), Struct_2(false, Struct_1(vec2<u32>(23506u, 37127u), vec2<i32>(i32(-2147483648), -77751i), 4173u, true, vec3<f32>(-3409f, -747f, -1960f)), -1212f, Struct_1(vec2<u32>(0u, 0u), vec2<i32>(13560i, 1i), 118367u, false, vec3<f32>(-892f, 152f, 1074f))), vec4<i32>(-39853i, i32(-2147483648), i32(-2147483648), -1i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(64362u, 13898u), vec2<i32>(2147483647i, 17595i), 1u, true, vec3<f32>(-970f, -2119f, 671f)), -1362f, Struct_1(vec2<u32>(8334u, 4294967295u), vec2<i32>(-1i, 28326i), 4294967295u, false, vec3<f32>(1105f, -413f, -389f))), Struct_2(true, Struct_1(vec2<u32>(90631u, 1u), vec2<i32>(0i, -1i), 4294967295u, false, vec3<f32>(1521f, 1000f, -788f)), 1101f, Struct_1(vec2<u32>(1u, 1u), vec2<i32>(-1i, 58159i), 4294967295u, false, vec3<f32>(-653f, -2281f, -653f))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(-38062i, -14082i), 0u, false, vec3<f32>(-235f, -113f, 837f)), -770f, Struct_1(vec2<u32>(881u, 36180u), vec2<i32>(-21027i, 21010i), 0u, false, vec3<f32>(1000f, -797f, -1053f))), vec4<i32>(i32(-2147483648), -19743i, -1i, 1574i)), Struct_3(Struct_2(false, Struct_1(vec2<u32>(0u, 62543u), vec2<i32>(1i, i32(-2147483648)), 17957u, true, vec3<f32>(826f, -2339f, 101f)), -448f, Struct_1(vec2<u32>(26354u, 38756u), vec2<i32>(-8104i, -7435i), 4294967295u, false, vec3<f32>(-1245f, 2155f, 1261f))), Struct_2(true, Struct_1(vec2<u32>(1u, 39360u), vec2<i32>(1i, 2147483647i), 0u, true, vec3<f32>(311f, 1660f, 725f)), -370f, Struct_1(vec2<u32>(3272u, 1u), vec2<i32>(i32(-2147483648), -49135i), 43975u, false, vec3<f32>(-410f, 139f, -256f))), Struct_2(true, Struct_1(vec2<u32>(21264u, 43254u), vec2<i32>(27944i, -20960i), 4294967295u, true, vec3<f32>(1318f, 688f, 134f)), -623f, Struct_1(vec2<u32>(22835u, 80757u), vec2<i32>(-12443i, -5883i), 4294967295u, false, vec3<f32>(-1000f, -694f, -1000f))), vec4<i32>(17122i, 1i, i32(-2147483648), 14625i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(34679u, 4294967295u), vec2<i32>(61720i, 0i), 4294967295u, false, vec3<f32>(1408f, -1194f, -232f)), -770f, Struct_1(vec2<u32>(62547u, 4294967295u), vec2<i32>(20343i, 10365i), 47079u, false, vec3<f32>(-777f, -1000f, 235f))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 54273u), vec2<i32>(2632i, -1i), 1104u, false, vec3<f32>(1012f, 774f, -1767f)), 1000f, Struct_1(vec2<u32>(38740u, 82845u), vec2<i32>(30301i, -28811i), 19861u, false, vec3<f32>(2508f, -1108f, -360f))), Struct_2(true, Struct_1(vec2<u32>(25907u, 1u), vec2<i32>(-1i, 0i), 9246u, true, vec3<f32>(260f, 311f, 1788f)), 498f, Struct_1(vec2<u32>(36109u, 42097u), vec2<i32>(-47417i, 0i), 28396u, true, vec3<f32>(-879f, 793f, -1309f))), vec4<i32>(10030i, 42263i, 1286i, -6099i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(0u, 22331u), vec2<i32>(0i, 0i), 23996u, false, vec3<f32>(-515f, -1000f, 101f)), 289f, Struct_1(vec2<u32>(18530u, 0u), vec2<i32>(2147483647i, -1i), 31438u, false, vec3<f32>(-1988f, 1123f, 363f))), Struct_2(false, Struct_1(vec2<u32>(44139u, 1u), vec2<i32>(14842i, -32434i), 4294967295u, true, vec3<f32>(118f, -655f, 868f)), 921f, Struct_1(vec2<u32>(34561u, 0u), vec2<i32>(16695i, 0i), 11543u, false, vec3<f32>(915f, 576f, -609f))), Struct_2(true, Struct_1(vec2<u32>(81701u, 0u), vec2<i32>(-1i, -2062i), 0u, true, vec3<f32>(1000f, 823f, -1583f)), -666f, Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(19271i, 37106i), 97970u, false, vec3<f32>(-1699f, 938f, -1248f))), vec4<i32>(25966i, i32(-2147483648), 2710i, -4056i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(19188u, 0u), vec2<i32>(i32(-2147483648), 1582i), 0u, false, vec3<f32>(-1545f, 278f, -1351f)), -233f, Struct_1(vec2<u32>(1u, 18721u), vec2<i32>(i32(-2147483648), 2147483647i), 19734u, true, vec3<f32>(-936f, -1807f, 1407f))), Struct_2(false, Struct_1(vec2<u32>(1u, 62380u), vec2<i32>(i32(-2147483648), 18034i), 46315u, false, vec3<f32>(467f, -265f, -2291f)), 788f, Struct_1(vec2<u32>(0u, 46685u), vec2<i32>(0i, -16483i), 40342u, true, vec3<f32>(-824f, 291f, -1211f))), Struct_2(false, Struct_1(vec2<u32>(5882u, 1u), vec2<i32>(16364i, i32(-2147483648)), 1u, true, vec3<f32>(-409f, -160f, 599f)), 137f, Struct_1(vec2<u32>(1u, 1u), vec2<i32>(i32(-2147483648), 0i), 67330u, false, vec3<f32>(-815f, -2391f, 1610f))), vec4<i32>(0i, 21098i, 1i, 2147483647i)), Struct_3(Struct_2(false, Struct_1(vec2<u32>(66508u, 0u), vec2<i32>(-40957i, 2147483647i), 4294967295u, false, vec3<f32>(-1788f, 372f, -267f)), 1372f, Struct_1(vec2<u32>(82340u, 1u), vec2<i32>(24015i, -9952i), 11303u, true, vec3<f32>(-850f, 449f, 661f))), Struct_2(false, Struct_1(vec2<u32>(5633u, 18987u), vec2<i32>(i32(-2147483648), i32(-2147483648)), 91878u, true, vec3<f32>(-747f, -1255f, 866f)), -1769f, Struct_1(vec2<u32>(33507u, 0u), vec2<i32>(-41294i, 48963i), 4294967295u, false, vec3<f32>(-1107f, 292f, 922f))), Struct_2(false, Struct_1(vec2<u32>(75238u, 64217u), vec2<i32>(1i, i32(-2147483648)), 0u, false, vec3<f32>(1033f, 1600f, -729f)), -1523f, Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), -16526i), 9447u, true, vec3<f32>(1238f, 341f, -1915f))), vec4<i32>(1i, i32(-2147483648), -4182i, -24529i)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(51168u, 1u), vec2<i32>(41776i, i32(-2147483648)), 39895u, true, vec3<f32>(139f, -1247f, 1000f)), 1029f, Struct_1(vec2<u32>(0u, 56929u), vec2<i32>(-22447i, -53814i), 1u, false, vec3<f32>(-185f, -949f, 491f))), Struct_2(true, Struct_1(vec2<u32>(1u, 4189u), vec2<i32>(1i, -1i), 65446u, false, vec3<f32>(1000f, 760f, 552f)), 330f, Struct_1(vec2<u32>(0u, 11091u), vec2<i32>(43369i, i32(-2147483648)), 0u, false, vec3<f32>(-2534f, 1596f, -220f))), Struct_2(true, Struct_1(vec2<u32>(47869u, 38299u), vec2<i32>(-64711i, -9688i), 4294967295u, false, vec3<f32>(-336f, 1346f, -1097f)), 117f, Struct_1(vec2<u32>(43344u, 24716u), vec2<i32>(2147483647i, 17621i), 1u, false, vec3<f32>(-1430f, -1000f, -166f))), vec4<i32>(16590i, -89543i, 2147483647i, 63968i)), Struct_3(Struct_2(false, Struct_1(vec2<u32>(1u, 55625u), vec2<i32>(-14897i, i32(-2147483648)), 25621u, false, vec3<f32>(-1000f, 1354f, -1386f)), 2152f, Struct_1(vec2<u32>(68107u, 4294967295u), vec2<i32>(-18317i, 103250i), 1u, false, vec3<f32>(1075f, -671f, 683f))), Struct_2(true, Struct_1(vec2<u32>(1u, 1u), vec2<i32>(-6793i, i32(-2147483648)), 1u, false, vec3<f32>(744f, -1161f, -337f)), 2347f, Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(-46758i, 2147483647i), 29101u, true, vec3<f32>(938f, 582f, -1000f))), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 1u), vec2<i32>(29354i, 0i), 0u, false, vec3<f32>(-890f, 664f, -530f)), -592f, Struct_1(vec2<u32>(0u, 0u), vec2<i32>(0i, i32(-2147483648)), 1u, false, vec3<f32>(682f, -121f, 926f))), vec4<i32>(2147483647i, 1i, -25442i, i32(-2147483648))));

var<private> global1: array<vec4<i32>, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(803f)) * _wgslsmith_f_op_f32(-584f - -1473f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1645f) + -663f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1310f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-227f)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -340f), -1000f)));
    let var_1 = _wgslsmith_f_op_f32(round(-1216f));
    global0 = array<Struct_3, 19>();
    var var_2 = _wgslsmith_div_i32(arg_3.x, u_input.b);
    return Struct_2(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)) & (true | all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false))), Struct_1(~select(select(vec2<u32>(arg_2.x, 50853u), vec2<u32>(4294967295u, arg_2.x), true), abs(arg_2), vec2<bool>(true, true)), firstTrailingBit(vec2<i32>(~u_input.b, -2147483647i)), u_input.e.x, true, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 + var_1))), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(var_1 - 1010f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -624f) - _wgslsmith_f_op_f32(step(var_1, var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * 499f), _wgslsmith_f_op_f32(step(var_1, var_1))), true))), Struct_1(vec2<u32>(max(4294967295u, 77424u) >> (firstLeadingBit(u_input.e.x) % 32u), u_input.a.x), reverseBits(arg_3.yy), u_input.a.x, !(_wgslsmith_f_op_f32(floor(-1329f)) != -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, var_1, -1570f), vec3<f32>(var_1, 2643f, var_1))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(117f, var_1, -170f)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    global0 = array<Struct_3, 19>();
    var var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(1590f * -1741f), _wgslsmith_f_op_f32(-arg_1.e.x)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.e.x, arg_1.e.x, _wgslsmith_f_op_f32(arg_1.e.x + arg_1.e.x)))))));
    global1 = array<vec4<i32>, 17>();
    let var_2 = arg_1.e;
    return func_2(~0i, arg_1.b, ~_wgslsmith_mult_vec2_u32(~select(vec2<u32>(4294967295u, 31079u), u_input.c.xz, vec2<bool>(arg_0.x, true)), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.x, u_input.e.x), arg_1.a)), ~(vec3<i32>(-1i) * -(~arg_2)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_5) -> Struct_1 {
    var var_0 = func_2(u_input.b, ~(_wgslsmith_sub_vec2_i32(arg_2.b.b ^ vec2<i32>(5591i, 2147483647i), reverseBits(vec2<i32>(arg_2.d.b.x, 32874i))) << (min(~vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.yz) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(1u, 15913u), u_input.d & 0u), ~vec2<u32>(4294967295u, arg_3.c.x)), _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.d.b.x, -10644i, -1i), ~vec3<i32>(50781i, u_input.b, arg_2.b.b.x)), vec3<i32>(~_wgslsmith_dot_vec2_i32(arg_2.b.b, vec2<i32>(-2147483647i, arg_2.b.b.x)), ~(u_input.b >> (arg_2.d.a.x % 32u)), _wgslsmith_div_i32(-1i, -1517i)))).d;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_div_f32(var_0.e.x, -1096f), _wgslsmith_f_op_f32(arg_1 - arg_2.d.e.x), _wgslsmith_f_op_f32(step(arg_0.x, -847f)))))), !(!(!(var_0.d || false))));
    return func_2(arg_2.d.b.x, arg_2.b.b, ~countOneBits(abs(_wgslsmith_mod_vec2_u32(u_input.c.yz, vec2<u32>(17158u, 1u)))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2694i, 57375i, 0i) & _wgslsmith_sub_vec3_i32(vec3<i32>(-64331i, 1i, u_input.b), vec3<i32>(arg_2.d.b.x, arg_2.b.b.x, var_0.b.x)), vec3<i32>(~u_input.b, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-5057i, -1i, -49565i, 1i), vec4<i32>(58620i, -51223i, -2147483647i, 0i)))))).b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_5 {
    global0 = array<Struct_3, 19>();
    var var_0 = ~vec2<u32>(4294967295u, _wgslsmith_add_u32(arg_1.a.x, _wgslsmith_sub_u32(arg_1.c, func_1(vec2<bool>(true, false), Struct_1(vec2<u32>(0u, 1u), arg_1.b, 4294967295u, arg_1.d, vec3<f32>(-1194f, arg_0, 425f)), vec3<i32>(0i, 2147483647i, -13357i), u_input.a.x).d.c)));
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(reverseBits(vec4<u32>(6072u, var_0.x, arg_1.c, u_input.a.x)), vec4<u32>(~4294967295u, reverseBits(10309u), ~arg_1.c, u_input.a.x), vec4<bool>(arg_1.d, false && arg_1.d, true && arg_1.d, func_2(arg_1.b.x, vec2<i32>(u_input.b, 24430i), vec2<u32>(u_input.e.x, u_input.c.x), vec3<i32>(1i, 4096i, arg_1.b.x)).a)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x << (var_0.x % 32u), var_0.x, 5450u, ~u_input.d), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 0u, 0u, 0u), ~vec4<u32>(arg_1.a.x, u_input.e.x, var_0.x, u_input.c.x)))), vec4<u32>(14246u, ~52290u, 1u, u_input.d) << (~vec4<u32>(var_0.x, arg_1.c, 799u, ~4294967295u) % vec4<u32>(32u)));
    var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(min(firstTrailingBit(min(vec4<u32>(var_0.x, arg_1.c, var_0.x, 5683u), vec4<u32>(var_1.x, var_0.x, 4294967295u, arg_1.c))), select(vec4<u32>(51954u, 1u, 4294967295u, 12442u), ~vec4<u32>(26716u, var_0.x, var_1.x, arg_1.c), vec4<bool>(arg_1.d, arg_1.d, arg_1.d, arg_1.d))), vec4<u32>(var_1.x, u_input.c.x, 15555u, _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_add_u32(41650u, u_input.d))), vec4<u32>(~(4211u >> (1u % 32u)), var_0.x, ~(arg_1.a.x & 61764u), var_1.x)), firstTrailingBit(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(62681u, 0u, 50940u, var_0.x)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(28077u, 3201u, arg_1.c, 1u), vec4<u32>(arg_1.c, 4294967295u, 0u, var_1.x)), select(vec4<u32>(84438u, arg_1.a.x, arg_1.a.x, 4294967295u), vec4<u32>(0u, 16891u, u_input.c.x, 4294967295u), false), arg_1.b.x > arg_1.b.x))));
    var var_2 = Struct_2(true && !arg_1.d, Struct_1(u_input.e.xz | (~vec2<u32>(arg_1.a.x, 65233u) ^ _wgslsmith_add_vec2_u32(var_1.yx, var_1.xz)), firstTrailingBit(-(~vec2<i32>(u_input.b, -45497i))), func_3(arg_1.e.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1482f))), func_2(_wgslsmith_mod_i32(u_input.b, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 0i)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.e.x, var_0.x)), -vec3<i32>(u_input.b, 37373i, arg_1.b.x)), Struct_5(true, var_0.x, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, 0u), u_input.e))).a.x, arg_1.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0, _wgslsmith_f_op_f32(arg_1.e.x * arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, 1000f, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-702f, arg_2.x, 163f))), select(vec3<bool>(true, arg_1.d, arg_1.d), select(vec3<bool>(arg_1.d, arg_1.d, true), vec3<bool>(false, false, true), vec3<bool>(false, arg_1.d, true)), select(vec3<bool>(arg_1.d, arg_1.d, arg_1.d), vec3<bool>(arg_1.d, false, false), vec3<bool>(arg_1.d, arg_1.d, true)))))), -286f, arg_1);
    return Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(-arg_1.e.x)), func_2(select(0i, u_input.b, arg_1.d), var_2.d.b, func_2(-2147483647i, var_2.d.b, arg_1.a, vec3<i32>(1i, 6653i, arg_1.b.x)).d.a, vec3<i32>(arg_1.b.x, u_input.b, 2147483647i)).b.e.x)) == arg_2.x, select(~_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(1u, 366u, arg_1.a.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(select(57659u, var_0.x, var_2.b.d), ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 36094u), _wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(var_1.x, var_2.b.a.x)))), false), vec3<u32>(arg_1.a.x, 34196u, _wgslsmith_div_u32(4294967295u, arg_1.a.x)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: bool) -> i32 {
    global0 = array<Struct_3, 19>();
    global1 = array<vec4<i32>, 17>();
    var var_0 = max(2147483647i, 2027i);
    var_0 = u_input.b;
    var var_1 = Struct_2(arg_1.a, func_2(u_input.b | ~1i, vec2<i32>(~(-u_input.b), u_input.b), reverseBits(arg_0), vec3<i32>(_wgslsmith_add_i32(func_3(vec2<f32>(204f, -2249f), -596f, Struct_2(false, Struct_1(vec2<u32>(100u, 88878u), vec2<i32>(16850i, u_input.b), 1u, true, vec3<f32>(1000f, 394f, 117f)), -382f, Struct_1(vec2<u32>(arg_1.b, arg_1.b), vec2<i32>(2147483647i, 0i), 7229u, arg_2, vec3<f32>(-242f, -475f, -308f))), arg_1).b.x, u_input.b | u_input.b), _wgslsmith_add_i32(~2147483647i, _wgslsmith_mult_i32(-10796i, u_input.b)), u_input.b)).d, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(vec2<bool>(arg_2, arg_1.a), Struct_1(u_input.c.xx, vec2<i32>(u_input.b, u_input.b), 41991u, true, vec3<f32>(-286f, 1432f, 1000f)), vec3<i32>(u_input.b, u_input.b, u_input.b), 63097u).b.e.x), _wgslsmith_div_f32(-592f, -920f)))), func_3(vec2<f32>(_wgslsmith_f_op_f32(-1754f + _wgslsmith_div_f32(215f, -943f)), _wgslsmith_f_op_f32(f32(-1f) * -1975f)), _wgslsmith_f_op_f32(step(-251f, -2344f)), Struct_2(0u <= (50004u << (u_input.e.x % 32u)), func_1(select(vec2<bool>(true, true), vec2<bool>(true, arg_2), arg_1.a), Struct_1(u_input.c.xz, vec2<i32>(u_input.b, u_input.b), arg_1.c.x, true, vec3<f32>(-1624f, 149f, -2112f)), ~vec3<i32>(6031i, 8203i, -1i), u_input.e.x).d, -272f, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(arg_0.x, arg_1.c.x)), func_2(u_input.b, vec2<i32>(-23623i, u_input.b), vec2<u32>(arg_0.x, 0u), vec3<i32>(u_input.b, u_input.b, 1i)).b.b, 1u, !arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1757f, -931f, -1000f)))), func_4(_wgslsmith_f_op_f32(func_3(vec2<f32>(1000f, -342f), -475f, Struct_2(false, Struct_1(u_input.c.zz, vec2<i32>(-17161i, 0i), arg_0.x, true, vec3<f32>(-1278f, -304f, -313f)), -103f, Struct_1(vec2<u32>(1u, arg_1.b), vec2<i32>(u_input.b, u_input.b), u_input.a.x, true, vec3<f32>(-358f, -491f, 573f))), Struct_5(true, 16644u, arg_1.c)).e.x - _wgslsmith_f_op_f32(1000f - -1000f)), func_3(vec2<f32>(1388f, -1097f), -1322f, Struct_2(false, Struct_1(arg_0, vec2<i32>(63943i, u_input.b), 6192u, false, vec3<f32>(155f, -942f, -875f)), 204f, Struct_1(vec2<u32>(u_input.c.x, 1u), vec2<i32>(62097i, u_input.b), arg_0.x, arg_2, vec3<f32>(-1171f, -429f, 1276f))), func_4(-183f, Struct_1(arg_0, vec2<i32>(u_input.b, 0i), arg_0.x, false, vec3<f32>(-857f, -1312f, -423f)), vec2<f32>(480f, -1336f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(242f, -637f) - vec2<f32>(-498f, -1278f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(865f, 1023f) - vec2<f32>(771f, 1197f)))))));
    return _wgslsmith_div_i32(1i, ~((i32(-1i) * -1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-12443i, 1i, 6088i), vec3<i32>(1i, 0i, var_1.d.b.x)), max(vec3<i32>(u_input.b, 2147483647i, var_1.b.b.x), vec3<i32>(2147483647i, 31510i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 17>();
    global1 = array<vec4<i32>, 17>();
    let var_0 = -func_5(vec2<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(0u, u_input.c.x)), u_input.e.x)), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1279f + -435f), _wgslsmith_f_op_f32(-457f - -636f), all(vec3<bool>(true, false, true)))), func_3(vec2<f32>(186f, 1000f), -878f, func_1(vec2<bool>(false, true), Struct_1(vec2<u32>(38780u, 40945u), vec2<i32>(23895i, u_input.b), 4294967295u, true, vec3<f32>(1490f, -813f, 379f)), vec3<i32>(u_input.b, u_input.b, u_input.b), 1u), Struct_5(false, 1u, vec3<u32>(4294967295u, u_input.a.x, 33323u))), _wgslsmith_f_op_vec2_f32(-func_3(vec2<f32>(-1000f, 1935f), -1306f, Struct_2(true, Struct_1(u_input.c.yz, vec2<i32>(28269i, u_input.b), 0u, true, vec3<f32>(-1028f, 671f, -564f)), -241f, Struct_1(vec2<u32>(u_input.d, u_input.d), vec2<i32>(u_input.b, u_input.b), u_input.c.x, false, vec3<f32>(358f, -776f, -1710f))), Struct_5(true, u_input.c.x, u_input.c)).e.yx)), true);
    global1 = array<vec4<i32>, 17>();
    global1 = array<vec4<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(-(~(-2147483647i)), ~func_1(vec2<bool>(true, true), func_2(-11109i, vec2<i32>(var_0, u_input.b), u_input.a, vec3<i32>(u_input.b, -16116i, -2147483647i)).d, vec3<i32>(u_input.b, var_0, u_input.b) << (u_input.c % vec3<u32>(32u)), ~u_input.c.x).d.b, vec2<u32>(u_input.d, u_input.e.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(6106i, u_input.b, -61517i) & vec3<i32>(14327i, 94651i, var_0), select(vec3<i32>(var_0, u_input.b, u_input.b), vec3<i32>(u_input.b, var_0, var_0), true))).c, vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(func_2(-1i, vec2<i32>(var_0, 1i), u_input.c.xx, vec3<i32>(-17076i, var_0, 8171i)).b.a, vec2<u32>(u_input.d, 4294967295u) | u_input.e.xy), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 32098u) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), u_input.e.yz | vec2<u32>(u_input.a.x, 0u))), 74512u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, -2215f))));
}

