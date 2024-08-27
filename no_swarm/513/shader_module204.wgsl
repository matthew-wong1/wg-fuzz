struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(57669u, Struct_2(vec3<bool>(false, true, false), vec2<f32>(-1637f, -1510f), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(12058i, 0i, 0i, -35640i)), -19333i), Struct_2(vec3<bool>(true, true, true), vec2<f32>(497f, -798f), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-37153i, i32(-2147483648), -12215i, -1i)), 0i), vec2<u32>(1u, 0u), Struct_2(vec3<bool>(true, false, true), vec2<f32>(1862f, 325f), vec4<bool>(true, true, false, false), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(2147483647i, 2147483647i, 5921i, 8412i)), 25234i)), Struct_3(20773u, Struct_2(vec3<bool>(false, false, false), vec2<f32>(2767f, 713f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-9958i, -41406i, 2147483647i, 1i)), i32(-2147483648)), Struct_2(vec3<bool>(true, true, false), vec2<f32>(-1093f, 1161f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-6950i, 83767i, 23601i, -39630i)), -9254i), vec2<u32>(4294967295u, 13400u), Struct_2(vec3<bool>(true, false, true), vec2<f32>(717f, 461f), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(29213i, -16974i, -19737i, 34054i)), 1i)), Struct_3(0u, Struct_2(vec3<bool>(true, false, true), vec2<f32>(1668f, -230f), vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(i32(-2147483648), -21977i, 0i, 0i)), 68353i), Struct_2(vec3<bool>(true, false, true), vec2<f32>(148f, -433f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(6376i, 12093i, 47466i, -14789i)), -15302i), vec2<u32>(1186u, 51540u), Struct_2(vec3<bool>(false, false, false), vec2<f32>(165f, -725f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-29060i, i32(-2147483648), 1i, -35042i)), 1551i)), Struct_3(1u, Struct_2(vec3<bool>(false, false, false), vec2<f32>(318f, 1777f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(1i, 2147483647i, 1i, i32(-2147483648))), 44068i), Struct_2(vec3<bool>(true, true, true), vec2<f32>(794f, 1000f), vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(-27246i, -1i, 6439i, i32(-2147483648))), 72473i), vec2<u32>(5691u, 17848u), Struct_2(vec3<bool>(false, true, true), vec2<f32>(-1000f, -904f), vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-18434i, 0i, 47169i, 2881i)), -1i)), Struct_3(4294967295u, Struct_2(vec3<bool>(true, false, false), vec2<f32>(2943f, -1366f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(i32(-2147483648), 51283i, 1i, -8504i)), -14754i), Struct_2(vec3<bool>(true, true, false), vec2<f32>(494f, 253f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(74673i, -51141i, 0i, 6795i)), 18677i), vec2<u32>(58399u, 24144u), Struct_2(vec3<bool>(false, true, true), vec2<f32>(-565f, -751f), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, 16772i, 39293i, 0i)), -1i)), Struct_3(59585u, Struct_2(vec3<bool>(false, false, true), vec2<f32>(1162f, -187f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(41937i, 1i, 26610i, -5938i)), -102865i), Struct_2(vec3<bool>(true, false, false), vec2<f32>(199f, 409f), vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-29843i, 1i, 2147483647i, -721i)), 1i), vec2<u32>(0u, 3553u), Struct_2(vec3<bool>(false, false, false), vec2<f32>(584f, -1703f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(28252i, 2147483647i, 28289i, 37967i)), 0i)), Struct_3(47465u, Struct_2(vec3<bool>(true, false, true), vec2<f32>(1734f, 1000f), vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), 2147483647i, 51911i, 0i)), -23936i), Struct_2(vec3<bool>(true, false, true), vec2<f32>(-1896f, 1271f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(0i, i32(-2147483648), -1i, -28339i)), i32(-2147483648)), vec2<u32>(10932u, 31818u), Struct_2(vec3<bool>(true, false, false), vec2<f32>(-986f, 422f), vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(0i, -3300i, -1i, i32(-2147483648))), 41766i)), Struct_3(57646u, Struct_2(vec3<bool>(true, true, false), vec2<f32>(-2082f, -242f), vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 6694i, 9680i, -1i)), 16908i), Struct_2(vec3<bool>(false, true, true), vec2<f32>(551f, -809f), vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(0i, -1i, i32(-2147483648), 64157i)), 38095i), vec2<u32>(3636u, 45461u), Struct_2(vec3<bool>(true, false, true), vec2<f32>(363f, -662f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(49381i, 2147483647i, i32(-2147483648), 26721i)), 18867i)), Struct_3(10250u, Struct_2(vec3<bool>(true, false, false), vec2<f32>(655f, -1381f), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(59856i, -27693i, 18638i, 1i)), 0i), Struct_2(vec3<bool>(false, false, true), vec2<f32>(1560f, -166f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(0i, 1i, -35150i, 1i)), i32(-2147483648)), vec2<u32>(88047u, 24250u), Struct_2(vec3<bool>(false, true, false), vec2<f32>(1000f, 1619f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-14862i, -46062i, 45603i, 2147483647i)), -48309i)), Struct_3(0u, Struct_2(vec3<bool>(true, false, false), vec2<f32>(-1000f, -945f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-46819i, -77736i, -34271i, 37847i)), i32(-2147483648)), Struct_2(vec3<bool>(true, false, false), vec2<f32>(-220f, 616f), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(2593i, -72055i, -25557i, 93375i)), -20546i), vec2<u32>(1u, 21799u), Struct_2(vec3<bool>(true, true, true), vec2<f32>(820f, 322f), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-52229i, i32(-2147483648), -1i, i32(-2147483648))), -7920i)), Struct_3(5596u, Struct_2(vec3<bool>(false, true, true), vec2<f32>(-517f, -778f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(31987i, 1i, 1i, 0i)), 1i), Struct_2(vec3<bool>(false, true, true), vec2<f32>(-348f, 439f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(0i, 20579i, 25602i, 8113i)), i32(-2147483648)), vec2<u32>(4294967295u, 0u), Struct_2(vec3<bool>(true, true, false), vec2<f32>(1035f, -922f), vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-26446i, 0i, 49040i, 1i)), 2147483647i)), Struct_3(4294967295u, Struct_2(vec3<bool>(true, true, false), vec2<f32>(249f, -2018f), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(29229i, 1i, 794i, 41158i)), 1702i), Struct_2(vec3<bool>(false, true, true), vec2<f32>(-1000f, 1067f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(-1i, 1i, 29817i, -4011i)), 1i), vec2<u32>(0u, 0u), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-2013f, 1759f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-1i, 29703i, 0i, 9087i)), -16474i)), Struct_3(1u, Struct_2(vec3<bool>(false, false, true), vec2<f32>(-340f, -965f), vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(5593i, 71418i, 2147483647i, -8386i)), 2147483647i), Struct_2(vec3<bool>(false, false, true), vec2<f32>(-160f, -176f), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(22198i, 11570i, -47860i, i32(-2147483648))), i32(-2147483648)), vec2<u32>(0u, 14921u), Struct_2(vec3<bool>(true, true, true), vec2<f32>(-476f, -778f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(32543i, 3558i, 0i, 2147483647i)), -37546i)), Struct_3(37321u, Struct_2(vec3<bool>(true, true, true), vec2<f32>(1207f, -1657f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(3220i, -1i, 2147483647i, 0i)), -24261i), Struct_2(vec3<bool>(true, false, false), vec2<f32>(2206f, -524f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-1i, i32(-2147483648), -44839i, 55144i)), 1i), vec2<u32>(1u, 66111u), Struct_2(vec3<bool>(true, false, true), vec2<f32>(-1133f, 1057f), vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(0i, -34855i, 35507i, -36462i)), 0i)), Struct_3(1u, Struct_2(vec3<bool>(false, true, false), vec2<f32>(-841f, 1149f), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, 2147483647i, -11657i, 9122i)), i32(-2147483648)), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-289f, 1740f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-9939i, 1i, -1i, 1i)), -47877i), vec2<u32>(1u, 14639u), Struct_2(vec3<bool>(true, false, true), vec2<f32>(1414f, 444f), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(1i, 2147483647i, 0i, 2147483647i)), i32(-2147483648))), Struct_3(4294967295u, Struct_2(vec3<bool>(false, true, true), vec2<f32>(930f, 679f), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(0i, 0i, -1i, 18697i)), 0i), Struct_2(vec3<bool>(true, false, false), vec2<f32>(374f, 171f), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-53902i, 0i, 47775i, 0i)), -1i), vec2<u32>(0u, 1u), Struct_2(vec3<bool>(false, false, true), vec2<f32>(1182f, 549f), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, i32(-2147483648), 0i, 4065i)), 2147483647i)), Struct_3(0u, Struct_2(vec3<bool>(true, true, true), vec2<f32>(141f, 1017f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(-80782i, -1i, 0i, 1i)), 0i), Struct_2(vec3<bool>(true, false, false), vec2<f32>(-238f, 1000f), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-11511i, i32(-2147483648), 56693i, -1i)), -66803i), vec2<u32>(15453u, 49802u), Struct_2(vec3<bool>(true, true, false), vec2<f32>(906f, 530f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(1i, -15868i, 58580i, 1i)), 61292i)), Struct_3(5183u, Struct_2(vec3<bool>(true, false, false), vec2<f32>(-668f, 863f), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-1i, 2147483647i, -9730i, 24807i)), 0i), Struct_2(vec3<bool>(false, false, true), vec2<f32>(-1052f, 425f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(26014i, i32(-2147483648), 2147483647i, -19720i)), i32(-2147483648)), vec2<u32>(1u, 4294967295u), Struct_2(vec3<bool>(true, false, false), vec2<f32>(848f, 726f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(-1i, -2124i, -73619i, -1i)), 2147483647i)), Struct_3(64612u, Struct_2(vec3<bool>(false, false, true), vec2<f32>(650f, -1000f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(0i, 37491i, -1i, 0i)), 64852i), Struct_2(vec3<bool>(true, true, false), vec2<f32>(603f, 701f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(1513i, -3768i, 41716i, i32(-2147483648))), -1i), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec3<bool>(true, true, false), vec2<f32>(-1055f, -442f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, -1i, i32(-2147483648), 26272i)), 1i)), Struct_3(49034u, Struct_2(vec3<bool>(false, false, true), vec2<f32>(1362f, -293f), vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(0i, 69268i, -46378i, i32(-2147483648))), i32(-2147483648)), Struct_2(vec3<bool>(false, false, true), vec2<f32>(733f, -1255f), vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(29924i, 0i, 60618i, 2147483647i)), -1i), vec2<u32>(60958u, 17236u), Struct_2(vec3<bool>(false, false, true), vec2<f32>(-245f, 1000f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(37715i, -9326i, -3193i, i32(-2147483648))), -19616i)), Struct_3(68119u, Struct_2(vec3<bool>(false, true, true), vec2<f32>(-1344f, -1266f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-21817i, i32(-2147483648), 2147483647i, -17865i)), 1088i), Struct_2(vec3<bool>(false, false, true), vec2<f32>(2147f, -268f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-58941i, -1i, 36066i, 1i)), i32(-2147483648)), vec2<u32>(4294967295u, 8171u), Struct_2(vec3<bool>(true, false, false), vec2<f32>(633f, 441f), vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(0i, -1i, -4035i, 2147483647i)), 1i)), Struct_3(73001u, Struct_2(vec3<bool>(false, true, true), vec2<f32>(1344f, -1483f), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(22866i, -36157i, 12946i, 1i)), i32(-2147483648)), Struct_2(vec3<bool>(true, true, false), vec2<f32>(-414f, -576f), vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(7731i, i32(-2147483648), 1i, 2147483647i)), 0i), vec2<u32>(31787u, 4294967295u), Struct_2(vec3<bool>(false, false, true), vec2<f32>(-958f, -1137f), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(4525i, 2147483647i, i32(-2147483648), 1i)), i32(-2147483648))), Struct_3(3838u, Struct_2(vec3<bool>(false, true, true), vec2<f32>(393f, -1097f), vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-43600i, -68190i, -1i, -1i)), -1i), Struct_2(vec3<bool>(false, false, true), vec2<f32>(-172f, 1784f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(5824i, 1i, 13086i, -34487i)), -20178i), vec2<u32>(23621u, 38795u), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-523f, 657f), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-21134i, 2147483647i, i32(-2147483648), 1522i)), 2303i)), Struct_3(0u, Struct_2(vec3<bool>(false, true, false), vec2<f32>(1184f, -487f), vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(0i, 2147483647i, -53494i, -1i)), -25896i), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-1000f, -3002f), vec4<bool>(true, false, false, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-4133i, 1i, 45598i, -49296i)), 14105i), vec2<u32>(1u, 42359u), Struct_2(vec3<bool>(true, true, false), vec2<f32>(1000f, -2000f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, 1i, 2416i, 0i)), 2147483647i)), Struct_3(25860u, Struct_2(vec3<bool>(true, false, true), vec2<f32>(2232f, -472f), vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(i32(-2147483648), 71094i, 10154i, 27417i)), -6623i), Struct_2(vec3<bool>(true, false, true), vec2<f32>(1465f, 545f), vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-57806i, 2147483647i, 1i, -1i)), 2147483647i), vec2<u32>(4294967295u, 465u), Struct_2(vec3<bool>(false, true, true), vec2<f32>(547f, 1654f), vec4<bool>(true, true, false, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(1i, -46350i, -1977i, 7497i)), -34612i)), Struct_3(31138u, Struct_2(vec3<bool>(false, true, false), vec2<f32>(387f, -1714f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, 19636i, -47298i, 4582i)), 14644i), Struct_2(vec3<bool>(true, true, true), vec2<f32>(-1606f, -344f), vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(39069i, 1i, 0i, 7930i)), 0i), vec2<u32>(22937u, 6756u), Struct_2(vec3<bool>(true, false, false), vec2<f32>(-738f, 1046f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(0i, -2826i, i32(-2147483648), i32(-2147483648))), -35478i)), Struct_3(1u, Struct_2(vec3<bool>(false, false, true), vec2<f32>(-373f, -1838f), vec4<bool>(true, true, true, false), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-1i, -1i, 0i, 2147483647i)), 16942i), Struct_2(vec3<bool>(false, true, false), vec2<f32>(-1000f, 278f), vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, -25101i, 4626i, -14075i)), 0i), vec2<u32>(0u, 0u), Struct_2(vec3<bool>(false, false, false), vec2<f32>(-494f, -923f), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(4366i, 19725i, -29372i, 2147483647i)), 1i)));

var<private> global1: array<u32, 6>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = arg_3;
    var var_1 = 0u;
    var var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_3.d.b.zy, u_input.a)), ~_wgslsmith_div_i32(u_input.b.x, -1i), firstLeadingBit(_wgslsmith_mod_i32(-3517i, 1i)), 1i), countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, var_0.e, arg_3.e, u_input.b.x) | var_0.d.b, vec4<i32>(2147483647i, -1i, 7877i, 56544i)), u_input.a.x, abs(arg_3.e), max(-2147483647i, 1i))));
    var var_3 = arg_3.d.b.ywz;
    var_2 = firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.e, arg_1.x, -1400i, u_input.a.x) | vec4<i32>(-45784i, u_input.b.x, var_0.e, -8991i), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(arg_3.d.b, arg_3.d.b), var_0.d.b))) | ~var_0.d.b;
    return vec4<f32>(670f, arg_3.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.b.x)) - _wgslsmith_f_op_f32(abs(-610f)))))), -2772f);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(vec4<bool>(arg_0 >= abs(_wgslsmith_add_u32(1u, arg_0)), all(!arg_3.c) || true, false, ~firstLeadingBit(1u) > _wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(64033u, global1[_wgslsmith_index_u32(20464u, 6u)]))), ~min(arg_3.d.b, vec4<i32>(29944i, min(33466i, arg_3.d.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -39223i), arg_3.d.b.yx), u_input.a.x)));
    return ~(~firstTrailingBit(4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = vec2<bool>(true, true);
    return arg_1.b.e;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global1 = array<u32, 6>();
    var var_0 = Struct_1(vec4<bool>(true, !all(vec4<bool>(true, true, true, true)), !any(vec3<bool>(false, false, false)), all(vec2<bool>(true, true))), vec4<i32>(u_input.b.x, func_5(Struct_1(vec4<bool>(false, false, true, true), ~vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)], 27u)], func_4(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)] ^ 2396u, _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, false), u_input.b, vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 0u), Struct_2(vec3<bool>(false, false, true), vec2<f32>(arg_0, 1339f), vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x))), all(vec4<bool>(false, true, true, true)), Struct_2(vec3<bool>(false, false, false), vec2<f32>(1028f, 1196f), vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, u_input.a.x, u_input.b.x, 15410i)), u_input.a.x))), reverseBits(-2147483647i), ~(-2147483647i)));
    var var_1 = Struct_1(vec4<bool>((reverseBits(-1i) <= var_0.b.x) & any(var_0.a.wx), !any(select(var_0.a, vec4<bool>(true, var_0.a.x, var_0.a.x, false), var_0.a)), all(vec2<bool>(true, true)), true), var_0.b);
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    return vec3<u32>(~global1[_wgslsmith_index_u32((4294967295u << ((global1[_wgslsmith_index_u32(1u, 6u)] << (global1[_wgslsmith_index_u32(12197u, 6u)] % 32u)) % 32u)) & ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41943u, 6u)], 6u)]), 6u)], 6u)], 6u)], 4294967295u, global1[_wgslsmith_index_u32(46222u, 6u)]);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<u32>(max(global1[_wgslsmith_index_u32(~4294967295u, 6u)], ~69279u) & ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(15429u, 6u)], 0u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6509u, 0u, global1[_wgslsmith_index_u32(64730u, 6u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38758u, 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], global1[_wgslsmith_index_u32(51643u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56036u, 6u)], 6u)], 6u)], 6u)], 6u)])) >> (select(56423u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30638u, 6u)], 6u)], 6u)], true) % 32u), 6u)], ~(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(1u, 6u)]), 6u)] ^ ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49662u, 6u)], 6u)], 6u)], 6u)], 6u)])) | ((_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 4294967295u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12169u, 6u)], 6u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)])), vec3<u32>(global1[_wgslsmith_index_u32(2771u, 6u)], 58537u, 0u) << (vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)]) % vec3<u32>(32u))) ^ ~vec3<u32>(34066u, 0u, global1[_wgslsmith_index_u32(7872u, 6u)])) | _wgslsmith_add_vec3_u32(~vec3<u32>(11252u, global1[_wgslsmith_index_u32(19815u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82536u, 6u)], 6u)]) >> (countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(22643u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], 15467u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2536u, 6u)], 6u)], 0u, 6508u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 115110u, global1[_wgslsmith_index_u32(3407u, 6u)])), func_2(-1496f))));
    let var_1 = Struct_2(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(840f, -581f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -1119f)) * _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, false), u_input.a, vec2<u32>(var_0.x, 1u), Struct_2(vec3<bool>(false, true, false), vec2<f32>(773f, 2696f), vec4<bool>(false, false, true, true), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(u_input.a.x, -87640i, -1i, 2147483647i)), 37291i))).xx)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1690f, 1274f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-220f, 226f), vec2<f32>(726f, 1000f)))))), select(select(vec4<bool>(all(vec4<bool>(false, true, false, true)), u_input.b.x <= 1i, false, u_input.a.x < u_input.a.x), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, false, false, true)), true, true, all(vec4<bool>(false, false, true, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), Struct_1(vec4<bool>(true, true, false, !(var_0.x != 36715u)), vec4<i32>(func_5(Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(0i, u_input.a.x, u_input.b.x, u_input.a.x)), global0[_wgslsmith_index_u32(var_0.x, 27u)], select(4294967295u, global1[_wgslsmith_index_u32(var_0.x, 6u)], true)), ~func_5(Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, 1i)), global0[_wgslsmith_index_u32(669u, 27u)], 48989u), -44573i, ~u_input.b.x ^ max(0i, u_input.a.x))), u_input.a.x);
    var var_2 = 1i;
    var_2 = u_input.b.x;
    global0 = array<Struct_3, 27>();
    return Struct_2(vec3<bool>(false, false, select(var_1.d.a.x, any(var_1.a.yx), all(select(var_1.d.a, var_1.d.a, var_1.c.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(797f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.b.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.b)), var_1.b))), var_1.d.a, Struct_1(select(!select(vec4<bool>(false, true, var_1.a.x, false), vec4<bool>(true, var_1.d.a.x, var_1.c.x, false), false), select(!vec4<bool>(false, false, false, var_1.d.a.x), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), vec4<bool>(var_1.d.a.x, var_1.a.x, false, true)), !vec4<bool>(false, false, var_1.c.x, false)), vec4<i32>(u_input.a.x ^ 1i, -1i, _wgslsmith_div_i32(var_1.e, u_input.a.x), 8402i)), var_1.d.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    let var_0 = ~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~3378u, 6u)] >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)] % 32u), 6u)], 6u)], 41854u) & global1[_wgslsmith_index_u32(4294967295u, 6u)];
    global1 = array<u32, 6>();
    var var_1 = global1[_wgslsmith_index_u32(var_0, 6u)];
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x), _wgslsmith_f_op_f32(720f - -1184f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f + -438f) + _wgslsmith_f_op_f32(round(943f)))), var_2.b.x, 1563f), -55346i);
}

