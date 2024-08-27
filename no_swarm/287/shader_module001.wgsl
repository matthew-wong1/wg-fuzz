struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(vec4<i32>(-1i, 0i, -17955i, 0i), true, Struct_1(vec2<f32>(155f, -805f), 603f, -22456i, vec4<i32>(-1i, 1i, 18591i, 1i), vec3<u32>(3938u, 4294967295u, 1u)), Struct_3(-784f, Struct_1(vec2<f32>(-3107f, -1030f), -1572f, 0i, vec4<i32>(10764i, 15626i, i32(-2147483648), -1i), vec3<u32>(34552u, 1u, 0u)), Struct_2(Struct_1(vec2<f32>(-1734f, 774f), -342f, -10143i, vec4<i32>(41511i, 3838i, 2147483647i, i32(-2147483648)), vec3<u32>(38559u, 1u, 23270u))))), Struct_4(vec4<i32>(2147483647i, 2147483647i, 1i, -3221i), true, Struct_1(vec2<f32>(-238f, 1472f), 906f, 0i, vec4<i32>(-10565i, -1i, 36578i, 8845i), vec3<u32>(53424u, 29567u, 13871u)), Struct_3(1393f, Struct_1(vec2<f32>(-741f, 1852f), 707f, i32(-2147483648), vec4<i32>(77200i, 63681i, 0i, i32(-2147483648)), vec3<u32>(4294967295u, 715u, 1u)), Struct_2(Struct_1(vec2<f32>(-441f, -526f), -1026f, 0i, vec4<i32>(1i, -1i, 6994i, 1449i), vec3<u32>(19748u, 36333u, 1u))))), Struct_4(vec4<i32>(-12101i, 1i, i32(-2147483648), 1i), true, Struct_1(vec2<f32>(1312f, 331f), -318f, 6947i, vec4<i32>(0i, i32(-2147483648), 20464i, 2147483647i), vec3<u32>(0u, 4294967295u, 22542u)), Struct_3(-279f, Struct_1(vec2<f32>(-228f, 257f), 482f, 22118i, vec4<i32>(-8440i, -6353i, 1i, i32(-2147483648)), vec3<u32>(4294967295u, 0u, 0u)), Struct_2(Struct_1(vec2<f32>(-554f, 676f), -662f, -15113i, vec4<i32>(8770i, i32(-2147483648), 1i, -4211i), vec3<u32>(63634u, 5299u, 15274u))))), Struct_4(vec4<i32>(19217i, 38231i, i32(-2147483648), -25376i), false, Struct_1(vec2<f32>(-1894f, 1283f), -643f, i32(-2147483648), vec4<i32>(-3419i, i32(-2147483648), -9217i, -19701i), vec3<u32>(23652u, 17030u, 29152u)), Struct_3(-502f, Struct_1(vec2<f32>(-563f, -696f), 2114f, 6352i, vec4<i32>(i32(-2147483648), 1i, 1i, 2147483647i), vec3<u32>(24476u, 9855u, 79918u)), Struct_2(Struct_1(vec2<f32>(-542f, 928f), 1129f, -66281i, vec4<i32>(-39941i, 2147483647i, 43093i, -15864i), vec3<u32>(4294967295u, 41399u, 78258u))))), Struct_4(vec4<i32>(-1i, -19953i, -41134i, 1i), true, Struct_1(vec2<f32>(616f, -119f), 1781f, 1i, vec4<i32>(38975i, 5869i, 0i, 1i), vec3<u32>(23404u, 1u, 38234u)), Struct_3(1025f, Struct_1(vec2<f32>(879f, -1862f), -1131f, 1i, vec4<i32>(i32(-2147483648), -5390i, 1i, -24995i), vec3<u32>(109180u, 6231u, 31865u)), Struct_2(Struct_1(vec2<f32>(837f, 1285f), -992f, 40875i, vec4<i32>(-1i, -861i, 0i, i32(-2147483648)), vec3<u32>(28291u, 3303u, 4294967295u))))), Struct_4(vec4<i32>(-1i, 2147483647i, 41320i, -16676i), true, Struct_1(vec2<f32>(133f, 798f), -593f, -22844i, vec4<i32>(i32(-2147483648), -31838i, i32(-2147483648), -40128i), vec3<u32>(66949u, 0u, 1u)), Struct_3(-1390f, Struct_1(vec2<f32>(-804f, -1000f), 1000f, 24051i, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), vec3<u32>(48312u, 52358u, 1u)), Struct_2(Struct_1(vec2<f32>(-561f, -599f), 239f, 1i, vec4<i32>(38134i, -2346i, i32(-2147483648), -40392i), vec3<u32>(67850u, 1u, 22201u))))), Struct_4(vec4<i32>(0i, -8230i, 25631i, 1497i), false, Struct_1(vec2<f32>(1409f, -219f), -458f, 36563i, vec4<i32>(12518i, -35979i, 1i, 0i), vec3<u32>(0u, 33571u, 98444u)), Struct_3(254f, Struct_1(vec2<f32>(1175f, -728f), -1035f, i32(-2147483648), vec4<i32>(1i, 5733i, 0i, 1i), vec3<u32>(20878u, 4294967295u, 23887u)), Struct_2(Struct_1(vec2<f32>(1109f, -1383f), 592f, -1i, vec4<i32>(-30137i, -8332i, -57656i, i32(-2147483648)), vec3<u32>(48836u, 0u, 4294967295u))))), Struct_4(vec4<i32>(1i, -1i, -30580i, -1i), false, Struct_1(vec2<f32>(-1000f, 1006f), 191f, 2147483647i, vec4<i32>(14848i, -52283i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 27004u, 1u)), Struct_3(2033f, Struct_1(vec2<f32>(-422f, 1953f), 1206f, 1799i, vec4<i32>(2147483647i, i32(-2147483648), 16417i, -1i), vec3<u32>(3431u, 54167u, 7550u)), Struct_2(Struct_1(vec2<f32>(-382f, 1000f), 686f, i32(-2147483648), vec4<i32>(2147483647i, 66178i, -64781i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 2823u))))), Struct_4(vec4<i32>(4791i, 5394i, i32(-2147483648), -1i), false, Struct_1(vec2<f32>(-1000f, -1496f), 1324f, -1i, vec4<i32>(19214i, -1i, 2147483647i, -103193i), vec3<u32>(25583u, 12588u, 18919u)), Struct_3(1000f, Struct_1(vec2<f32>(-532f, -1823f), -530f, 2147483647i, vec4<i32>(58350i, 2147483647i, 2147483647i, 1i), vec3<u32>(596u, 67426u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-981f, 725f), -713f, -13382i, vec4<i32>(-1i, 30940i, 14770i, -67816i), vec3<u32>(55022u, 64968u, 0u))))), Struct_4(vec4<i32>(-48847i, 38904i, 2147483647i, 4114i), true, Struct_1(vec2<f32>(659f, -536f), -299f, 2147483647i, vec4<i32>(-15315i, -1i, 1i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 11497u)), Struct_3(487f, Struct_1(vec2<f32>(-350f, -471f), -703f, 0i, vec4<i32>(-4993i, -19924i, 18981i, 2147483647i), vec3<u32>(1u, 38184u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-1009f, 1628f), 800f, 1i, vec4<i32>(33543i, -1i, 0i, 1591i), vec3<u32>(22617u, 52882u, 0u))))), Struct_4(vec4<i32>(-23052i, -17403i, -1i, 1i), true, Struct_1(vec2<f32>(733f, -242f), 1483f, i32(-2147483648), vec4<i32>(1i, -7828i, 17241i, 1i), vec3<u32>(0u, 29323u, 18690u)), Struct_3(442f, Struct_1(vec2<f32>(1358f, 739f), 119f, -26477i, vec4<i32>(0i, 19656i, -69709i, 2147483647i), vec3<u32>(97754u, 0u, 5414u)), Struct_2(Struct_1(vec2<f32>(-1000f, 1927f), 173f, 39189i, vec4<i32>(11384i, 52640i, 2147483647i, 64793i), vec3<u32>(4294967295u, 2169u, 4294967295u))))), Struct_4(vec4<i32>(11301i, -2861i, 4731i, 26102i), true, Struct_1(vec2<f32>(-433f, -300f), -436f, -21828i, vec4<i32>(-43214i, -36867i, -1i, i32(-2147483648)), vec3<u32>(4294967295u, 26800u, 4294967295u)), Struct_3(-619f, Struct_1(vec2<f32>(249f, 840f), -357f, 19362i, vec4<i32>(22213i, 12676i, -1i, 2147483647i), vec3<u32>(1u, 2628u, 57316u)), Struct_2(Struct_1(vec2<f32>(-1000f, 1909f), 540f, 14470i, vec4<i32>(-1i, -34873i, 1i, 2147483647i), vec3<u32>(0u, 4294967295u, 29960u))))), Struct_4(vec4<i32>(-5743i, 4258i, -2357i, 12170i), false, Struct_1(vec2<f32>(237f, -216f), -325f, -4459i, vec4<i32>(33218i, 0i, -26309i, 87349i), vec3<u32>(4294967295u, 4294967295u, 1932u)), Struct_3(1000f, Struct_1(vec2<f32>(-264f, 3293f), -571f, 17162i, vec4<i32>(18357i, 1i, -16667i, 20465i), vec3<u32>(0u, 4294967295u, 66284u)), Struct_2(Struct_1(vec2<f32>(531f, 1254f), 240f, 3297i, vec4<i32>(-9676i, -1i, i32(-2147483648), -11439i), vec3<u32>(1u, 1u, 22396u))))), Struct_4(vec4<i32>(2147483647i, 39284i, 0i, 1i), true, Struct_1(vec2<f32>(1434f, 638f), -324f, 1i, vec4<i32>(-31176i, i32(-2147483648), -16671i, 1i), vec3<u32>(44604u, 15821u, 1857u)), Struct_3(893f, Struct_1(vec2<f32>(104f, -1393f), 397f, 37165i, vec4<i32>(-1i, 0i, 0i, 1i), vec3<u32>(4294967295u, 85626u, 10256u)), Struct_2(Struct_1(vec2<f32>(1000f, 159f), -2374f, i32(-2147483648), vec4<i32>(-18258i, 23169i, -11875i, 2147483647i), vec3<u32>(23488u, 15714u, 4078u))))), Struct_4(vec4<i32>(1i, 6546i, 2147483647i, 2147483647i), true, Struct_1(vec2<f32>(-1323f, 521f), 358f, i32(-2147483648), vec4<i32>(2147483647i, -43924i, 18102i, -7346i), vec3<u32>(1u, 21877u, 26446u)), Struct_3(-293f, Struct_1(vec2<f32>(807f, 416f), 549f, 21408i, vec4<i32>(0i, 11947i, 2147483647i, -44779i), vec3<u32>(36881u, 28832u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-731f, -1201f), -319f, -31980i, vec4<i32>(2147483647i, 4266i, -1i, 24663i), vec3<u32>(38160u, 138u, 0u))))), Struct_4(vec4<i32>(-1i, i32(-2147483648), -9206i, 2147483647i), false, Struct_1(vec2<f32>(-370f, 1000f), -1000f, i32(-2147483648), vec4<i32>(0i, -1165i, 0i, 0i), vec3<u32>(1132u, 61259u, 11370u)), Struct_3(-378f, Struct_1(vec2<f32>(-1129f, 538f), 618f, 1i, vec4<i32>(-15181i, i32(-2147483648), -25897i, -1i), vec3<u32>(10302u, 1u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-281f, -209f), -614f, 53762i, vec4<i32>(-1i, -1i, 1i, -1938i), vec3<u32>(4294967295u, 4300u, 4294967295u))))), Struct_4(vec4<i32>(2147483647i, 2147483647i, -23108i, 1i), true, Struct_1(vec2<f32>(2266f, 444f), -563f, 2147483647i, vec4<i32>(-1i, -36636i, 0i, 34049i), vec3<u32>(2042u, 4294967295u, 315u)), Struct_3(372f, Struct_1(vec2<f32>(687f, -1000f), 1036f, 1i, vec4<i32>(18638i, 2147483647i, 8084i, 1i), vec3<u32>(7994u, 1u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(1588f, -701f), 1210f, -24649i, vec4<i32>(-11712i, -1i, -11226i, 14963i), vec3<u32>(33888u, 55246u, 12052u))))), Struct_4(vec4<i32>(1i, i32(-2147483648), -24770i, 1i), true, Struct_1(vec2<f32>(175f, 997f), 490f, 0i, vec4<i32>(34046i, 1i, 1389i, 0i), vec3<u32>(72549u, 4294967295u, 1u)), Struct_3(-1031f, Struct_1(vec2<f32>(-371f, 308f), 596f, i32(-2147483648), vec4<i32>(36749i, -31153i, -16324i, -28203i), vec3<u32>(32595u, 3078u, 16470u)), Struct_2(Struct_1(vec2<f32>(1730f, -1461f), 345f, 1i, vec4<i32>(14611i, 45525i, 2147483647i, 1i), vec3<u32>(1u, 5716u, 4294967295u))))), Struct_4(vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), true, Struct_1(vec2<f32>(-482f, 616f), -741f, 23572i, vec4<i32>(-1i, 5125i, 13408i, i32(-2147483648)), vec3<u32>(4294967295u, 18971u, 4294967295u)), Struct_3(2051f, Struct_1(vec2<f32>(-364f, -599f), -314f, -33592i, vec4<i32>(-1i, 17595i, -1i, 10657i), vec3<u32>(1u, 4294967295u, 49100u)), Struct_2(Struct_1(vec2<f32>(468f, 665f), 1429f, 11347i, vec4<i32>(63618i, -1i, 1i, 109138i), vec3<u32>(4294967295u, 5004u, 96079u))))), Struct_4(vec4<i32>(2147483647i, 66283i, 0i, i32(-2147483648)), true, Struct_1(vec2<f32>(-947f, -2626f), -1101f, 1i, vec4<i32>(i32(-2147483648), 0i, -50720i, -1i), vec3<u32>(669u, 2042u, 1u)), Struct_3(-299f, Struct_1(vec2<f32>(897f, -1641f), 911f, 1i, vec4<i32>(0i, -48512i, 0i, 2147483647i), vec3<u32>(4294967295u, 0u, 0u)), Struct_2(Struct_1(vec2<f32>(-314f, -518f), 462f, 1i, vec4<i32>(2147483647i, i32(-2147483648), 1i, 59973i), vec3<u32>(75919u, 56290u, 1u))))), Struct_4(vec4<i32>(0i, 7064i, 25885i, i32(-2147483648)), false, Struct_1(vec2<f32>(1064f, -665f), 451f, -23595i, vec4<i32>(-1i, -1i, -45796i, 0i), vec3<u32>(0u, 1u, 0u)), Struct_3(-1596f, Struct_1(vec2<f32>(553f, -495f), -2117f, -6227i, vec4<i32>(5211i, 6690i, i32(-2147483648), 7363i), vec3<u32>(1u, 73978u, 11115u)), Struct_2(Struct_1(vec2<f32>(2112f, 993f), 239f, 31818i, vec4<i32>(i32(-2147483648), -45981i, -1i, -1i), vec3<u32>(0u, 0u, 31555u))))), Struct_4(vec4<i32>(-28416i, 15301i, 1i, 1i), false, Struct_1(vec2<f32>(-145f, 425f), 443f, -23192i, vec4<i32>(-1i, -30049i, 1i, 2147483647i), vec3<u32>(1u, 4294967295u, 82786u)), Struct_3(848f, Struct_1(vec2<f32>(-378f, 1908f), -1606f, 1i, vec4<i32>(-2293i, 41809i, 1i, -1i), vec3<u32>(5375u, 4703u, 29539u)), Struct_2(Struct_1(vec2<f32>(776f, 133f), 193f, 11915i, vec4<i32>(1i, 0i, 16073i, 32991i), vec3<u32>(42026u, 4570u, 2832u))))), Struct_4(vec4<i32>(i32(-2147483648), 1i, 5515i, -13905i), false, Struct_1(vec2<f32>(-313f, -1031f), 545f, -40732i, vec4<i32>(-47840i, 38522i, 15295i, 2147483647i), vec3<u32>(49897u, 49788u, 64124u)), Struct_3(-379f, Struct_1(vec2<f32>(1043f, 958f), 435f, -73399i, vec4<i32>(1i, i32(-2147483648), 2147483647i, 4471i), vec3<u32>(73324u, 63557u, 1u)), Struct_2(Struct_1(vec2<f32>(-1000f, -418f), 370f, 2147483647i, vec4<i32>(2147483647i, -1i, 1705i, 11354i), vec3<u32>(35643u, 1u, 4294967295u))))), Struct_4(vec4<i32>(-1i, 2147483647i, 3811i, 20439i), false, Struct_1(vec2<f32>(243f, -571f), 886f, 28520i, vec4<i32>(1i, -33643i, -75449i, 2147483647i), vec3<u32>(85886u, 1u, 16156u)), Struct_3(599f, Struct_1(vec2<f32>(1150f, -599f), -134f, -1i, vec4<i32>(2147483647i, 0i, 2147483647i, 28553i), vec3<u32>(1u, 35777u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(888f, 968f), -601f, -6177i, vec4<i32>(-40403i, 0i, i32(-2147483648), 2635i), vec3<u32>(4294967295u, 1u, 36061u))))), Struct_4(vec4<i32>(0i, i32(-2147483648), 2147483647i, 42163i), false, Struct_1(vec2<f32>(-427f, 1000f), -572f, 6702i, vec4<i32>(-59289i, 40139i, 56878i, 43448i), vec3<u32>(0u, 40104u, 0u)), Struct_3(645f, Struct_1(vec2<f32>(137f, -189f), 2083f, 2147483647i, vec4<i32>(68381i, -1i, 38065i, 15022i), vec3<u32>(19016u, 55895u, 17126u)), Struct_2(Struct_1(vec2<f32>(-929f, 826f), 1082f, 1i, vec4<i32>(13822i, -1i, -4443i, 0i), vec3<u32>(13700u, 4294967295u, 0u))))), Struct_4(vec4<i32>(i32(-2147483648), -13819i, 1i, i32(-2147483648)), false, Struct_1(vec2<f32>(-1498f, 563f), 476f, -4923i, vec4<i32>(-33946i, 43467i, 28386i, i32(-2147483648)), vec3<u32>(4294967295u, 88146u, 64084u)), Struct_3(1573f, Struct_1(vec2<f32>(1000f, 1290f), -1486f, 2147483647i, vec4<i32>(i32(-2147483648), -36090i, 2147483647i, -1i), vec3<u32>(4294967295u, 36105u, 54396u)), Struct_2(Struct_1(vec2<f32>(2184f, -129f), 118f, 1i, vec4<i32>(10096i, 1i, 6361i, 48896i), vec3<u32>(5771u, 10767u, 32673u))))), Struct_4(vec4<i32>(-76058i, -30267i, -27072i, -23801i), false, Struct_1(vec2<f32>(-983f, 782f), 1413f, 1i, vec4<i32>(1i, 41601i, -6900i, -6022i), vec3<u32>(32390u, 19851u, 4294967295u)), Struct_3(448f, Struct_1(vec2<f32>(-1000f, 1362f), -1539f, 0i, vec4<i32>(0i, 23214i, 0i, 2147483647i), vec3<u32>(40463u, 32928u, 36847u)), Struct_2(Struct_1(vec2<f32>(2309f, 484f), -1377f, -7641i, vec4<i32>(30920i, 0i, 1i, 1i), vec3<u32>(0u, 52594u, 10801u))))), Struct_4(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 7088i), false, Struct_1(vec2<f32>(-705f, 878f), 904f, -26812i, vec4<i32>(2147483647i, 1i, 0i, -1i), vec3<u32>(1u, 0u, 35451u)), Struct_3(-1083f, Struct_1(vec2<f32>(-1131f, 1000f), -505f, i32(-2147483648), vec4<i32>(1i, -37202i, -1i, 2147483647i), vec3<u32>(3580u, 0u, 1u)), Struct_2(Struct_1(vec2<f32>(-1126f, -1077f), -2333f, 0i, vec4<i32>(1i, -14975i, -1i, -1i), vec3<u32>(0u, 32602u, 28671u))))));

var<private> global1: array<Struct_4, 18>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(-1676f, -1532f), 785f, i32(-2147483648), vec4<i32>(-19732i, 1i, 1i, 1i), vec3<u32>(51597u, 21480u, 4294967295u)), Struct_1(vec2<f32>(-257f, -1100f), 1685f, 0i, vec4<i32>(-40183i, -15857i, -9316i, 0i), vec3<u32>(1u, 4294967295u, 21963u)), Struct_1(vec2<f32>(-1000f, -488f), -2780f, -17916i, vec4<i32>(5537i, -43114i, 51193i, -1i), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec2<f32>(860f, 1307f), 546f, -1i, vec4<i32>(0i, 6094i, 0i, i32(-2147483648)), vec3<u32>(32209u, 30220u, 0u)), Struct_1(vec2<f32>(923f, -457f), 1118f, -1i, vec4<i32>(1i, i32(-2147483648), 2147483647i, 0i), vec3<u32>(0u, 1u, 0u)), Struct_1(vec2<f32>(-651f, -579f), 305f, -1i, vec4<i32>(-69565i, -1i, -24346i, 0i), vec3<u32>(69536u, 0u, 76896u)), Struct_1(vec2<f32>(-1567f, -520f), -1144f, 1i, vec4<i32>(i32(-2147483648), 22719i, 1i, i32(-2147483648)), vec3<u32>(1u, 0u, 12252u)), Struct_1(vec2<f32>(1481f, -370f), 531f, -51495i, vec4<i32>(-87060i, -6593i, -65173i, 14138i), vec3<u32>(4294967295u, 2134u, 52811u)), Struct_1(vec2<f32>(-769f, -767f), -1809f, 16046i, vec4<i32>(1i, 30618i, 13186i, -1i), vec3<u32>(47438u, 1u, 28238u)), Struct_1(vec2<f32>(1247f, -790f), -1814f, 0i, vec4<i32>(-18156i, -6123i, -60446i, -37674i), vec3<u32>(1u, 22370u, 9561u)), Struct_1(vec2<f32>(432f, 140f), 1993f, 0i, vec4<i32>(0i, 20639i, 22507i, 25603i), vec3<u32>(0u, 5277u, 1u)), Struct_1(vec2<f32>(1000f, 206f), -991f, 1i, vec4<i32>(0i, -29375i, -18895i, 2274i), vec3<u32>(4294967295u, 0u, 93620u)), Struct_1(vec2<f32>(-379f, -1000f), 1401f, 326i, vec4<i32>(i32(-2147483648), -3479i, 56539i, 2147483647i), vec3<u32>(16389u, 43795u, 1u)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: i32) -> f32 {
    global2 = array<Struct_1, 13>();
    global2 = array<Struct_1, 13>();
    global1 = array<Struct_4, 18>();
    let var_0 = vec4<i32>(firstLeadingBit(u_input.a.x), abs(_wgslsmith_sub_i32(countOneBits(_wgslsmith_add_i32(37100i, arg_3)), 50957i)), arg_0.x, max(u_input.a.x, u_input.a.x) >> (abs(~1u) % 32u));
    global2 = array<Struct_1, 13>();
    return -1955f;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_4) -> vec4<i32> {
    global0 = array<Struct_4, 28>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 18u)];
    global0 = array<Struct_4, 28>();
    var var_1 = ~1u;
    var var_2 = Struct_1(vec2<f32>(arg_3.c.a.x, arg_1.a.b), 564f, arg_3.c.c, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, firstLeadingBit(arg_2.a.x), ~2147483647i), arg_0.c.a.d) | arg_3.c.d, reverseBits(~(~(arg_2.d.b.e << (arg_2.d.b.e % vec3<u32>(32u))))));
    return vec4<i32>(var_2.c, arg_2.c.d.x, u_input.a.x, 1i);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> StorageBuffer {
    global2 = array<Struct_1, 13>();
    let var_0 = -1i;
    global1 = array<Struct_4, 18>();
    global1 = array<Struct_4, 18>();
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1630u, 1u, 14923u), ~min(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(7444u, u_input.b.x, u_input.b.x)))), u_input.b.x, u_input.b.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), ~vec3<u32>(0u, u_input.b.x, u_input.b.x)), ~abs(vec3<u32>(u_input.b.x, u_input.b.x, 26527u))));
    return StorageBuffer(_wgslsmith_f_op_f32(func_2(vec3<i32>(var_0, 28072i, arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(round(133f)))), true, ~arg_0)), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x | 52412u, ~1u, ~u_input.b.x), var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(~var_0, _wgslsmith_add_i32(~2147483647i, u_input.a.x), min(61782i, -653i), var_0 >> (var_1.x % 32u)), abs(vec4<i32>(4364i, -31401i, _wgslsmith_clamp_i32(5344i, var_0, var_0), _wgslsmith_mult_i32(2147483647i, arg_1.x))), func_3(Struct_3(_wgslsmith_div_f32(-279f, 1128f), Struct_1(vec2<f32>(589f, 283f), -317f, u_input.a.x, vec4<i32>(u_input.a.x, arg_0, -19951i, arg_0), vec3<u32>(u_input.b.x, 4294967295u, 0u)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 13u)])), Struct_2(Struct_1(vec2<f32>(-484f, 1000f), -876f, -5395i, vec4<i32>(u_input.a.x, arg_0, u_input.a.x, 2147483647i), var_1.zww)), Struct_4(-vec4<i32>(5248i, arg_0, 7941i, arg_1.x), true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, u_input.b.x), 13u)], Struct_3(1126f, Struct_1(vec2<f32>(1285f, 152f), 2432f, -1i, vec4<i32>(-32099i, arg_0, var_0, 0i), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_2(Struct_1(vec2<f32>(462f, 502f), 1186f, arg_1.x, vec4<i32>(arg_0, arg_0, 22905i, 33614i), vec3<u32>(87864u, u_input.b.x, 0u))))), Struct_4(~vec4<i32>(var_0, -44535i, arg_1.x, u_input.a.x), true, Struct_1(vec2<f32>(1365f, -875f), 625f, u_input.a.x, vec4<i32>(-10157i, u_input.a.x, u_input.a.x, arg_0), var_1.zxw), Struct_3(-892f, global2[_wgslsmith_index_u32(1u, 13u)], Struct_2(global2[_wgslsmith_index_u32(17002u, 13u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, true, true));
    global1 = array<Struct_4, 18>();
    global2 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = func_1(min(u_input.a.x, ~(i32(-1i) * -1i)), -u_input.a.zx ^ vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) ^ ~58228i, _wgslsmith_dot_vec3_i32(vec3<i32>(155i, 20608i, 8710i), u_input.a >> (vec3<u32>(u_input.b.x, u_input.b.x, 8699u) % vec3<u32>(32u)))));
}

