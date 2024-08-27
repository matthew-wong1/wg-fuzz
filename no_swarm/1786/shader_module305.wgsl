struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(Struct_2(vec3<u32>(55621u, 0u, 1u), Struct_1(vec4<f32>(-167f, -413f, -118f, 261f), vec2<f32>(-791f, 1000f), 1u, false, vec4<bool>(true, false, true, true))), Struct_3(2147483647i, vec4<i32>(0i, 1i, 2147483647i, -40827i)), Struct_3(-40501i, vec4<i32>(2147483647i, 1i, -54322i, 1i)), vec3<f32>(-270f, 1097f, -1000f), 0u), Struct_5(Struct_2(vec3<u32>(4294967295u, 9764u, 0u), Struct_1(vec4<f32>(-707f, -1266f, -477f, -687f), vec2<f32>(-740f, 869f), 26224u, true, vec4<bool>(false, false, true, true))), Struct_3(-1i, vec4<i32>(0i, -14985i, 18228i, 1i)), Struct_3(-1i, vec4<i32>(1i, -31469i, -52334i, 2147483647i)), vec3<f32>(-437f, -1000f, -300f), 43623u), Struct_5(Struct_2(vec3<u32>(39825u, 118220u, 4294967295u), Struct_1(vec4<f32>(699f, -1000f, 2078f, 1099f), vec2<f32>(-530f, -212f), 4294967295u, false, vec4<bool>(true, false, false, true))), Struct_3(2147483647i, vec4<i32>(2147483647i, -19139i, 0i, 1i)), Struct_3(-19121i, vec4<i32>(-1i, 12803i, 2147483647i, 36449i)), vec3<f32>(837f, -761f, 840f), 69716u), Struct_5(Struct_2(vec3<u32>(1u, 13439u, 13274u), Struct_1(vec4<f32>(-1000f, -1213f, 821f, -576f), vec2<f32>(-2413f, 1928f), 13117u, true, vec4<bool>(false, true, true, true))), Struct_3(35926i, vec4<i32>(-1i, 0i, 8110i, 0i)), Struct_3(2147483647i, vec4<i32>(-11961i, -17655i, i32(-2147483648), 0i)), vec3<f32>(-1796f, 384f, 557f), 2311u), Struct_5(Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec4<f32>(206f, -489f, 345f, 191f), vec2<f32>(282f, -545f), 79018u, true, vec4<bool>(true, false, false, true))), Struct_3(16084i, vec4<i32>(1i, -17479i, -1i, i32(-2147483648))), Struct_3(0i, vec4<i32>(-1i, -28773i, 58228i, 26918i)), vec3<f32>(1474f, 613f, -914f), 1u), Struct_5(Struct_2(vec3<u32>(59180u, 14876u, 0u), Struct_1(vec4<f32>(1431f, 149f, 1408f, -1000f), vec2<f32>(-400f, -2880f), 9112u, true, vec4<bool>(true, true, true, false))), Struct_3(2147483647i, vec4<i32>(2147483647i, 1i, 70929i, 1i)), Struct_3(2147483647i, vec4<i32>(47029i, -19424i, 2147483647i, -7839i)), vec3<f32>(2246f, -578f, 314f), 1u), Struct_5(Struct_2(vec3<u32>(1u, 94813u, 4294967295u), Struct_1(vec4<f32>(-261f, -488f, -183f, 1409f), vec2<f32>(224f, -543f), 0u, true, vec4<bool>(true, true, false, false))), Struct_3(49513i, vec4<i32>(0i, 20985i, -1i, 2147483647i)), Struct_3(1i, vec4<i32>(36621i, i32(-2147483648), 20147i, 53714i)), vec3<f32>(1389f, 188f, -970f), 4294967295u), Struct_5(Struct_2(vec3<u32>(67376u, 1u, 4294967295u), Struct_1(vec4<f32>(1587f, -855f, 177f, -265f), vec2<f32>(-228f, 1000f), 43880u, true, vec4<bool>(false, true, true, false))), Struct_3(i32(-2147483648), vec4<i32>(1i, -1i, -66573i, -1i)), Struct_3(-1i, vec4<i32>(-22348i, 2147483647i, 21075i, 1i)), vec3<f32>(-1484f, 2404f, 808f), 0u), Struct_5(Struct_2(vec3<u32>(39624u, 1u, 0u), Struct_1(vec4<f32>(-1670f, 805f, -217f, 910f), vec2<f32>(238f, 530f), 0u, false, vec4<bool>(true, false, true, true))), Struct_3(-1i, vec4<i32>(i32(-2147483648), i32(-2147483648), -14912i, 0i)), Struct_3(i32(-2147483648), vec4<i32>(0i, 0i, -38261i, 0i)), vec3<f32>(197f, -1440f, -699f), 1u), Struct_5(Struct_2(vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec4<f32>(-1717f, -892f, 181f, -779f), vec2<f32>(-468f, -306f), 1u, false, vec4<bool>(false, false, true, true))), Struct_3(39475i, vec4<i32>(-20227i, -1i, 2147483647i, 2147483647i)), Struct_3(2147483647i, vec4<i32>(-1i, 1i, i32(-2147483648), 33400i)), vec3<f32>(-1565f, 1000f, -374f), 1u), Struct_5(Struct_2(vec3<u32>(4294967295u, 20259u, 4294967295u), Struct_1(vec4<f32>(489f, -958f, 1653f, 1068f), vec2<f32>(207f, -1434f), 70438u, false, vec4<bool>(false, true, true, true))), Struct_3(0i, vec4<i32>(-1i, -20261i, -1i, 0i)), Struct_3(-9700i, vec4<i32>(1i, -1i, 0i, -12077i)), vec3<f32>(-935f, 657f, -309f), 1u), Struct_5(Struct_2(vec3<u32>(67876u, 90066u, 15452u), Struct_1(vec4<f32>(-1965f, -1297f, 1243f, -1145f), vec2<f32>(1086f, 314f), 4294967295u, false, vec4<bool>(true, true, false, true))), Struct_3(0i, vec4<i32>(i32(-2147483648), -53569i, i32(-2147483648), -42968i)), Struct_3(i32(-2147483648), vec4<i32>(-41820i, 1i, 2147483647i, 9813i)), vec3<f32>(1600f, 1000f, -868f), 4294967295u), Struct_5(Struct_2(vec3<u32>(4294967295u, 1u, 63330u), Struct_1(vec4<f32>(-908f, -1000f, -2024f, -258f), vec2<f32>(1023f, -1449f), 4294967295u, true, vec4<bool>(true, true, true, false))), Struct_3(2147483647i, vec4<i32>(i32(-2147483648), -3864i, 0i, -8018i)), Struct_3(20592i, vec4<i32>(i32(-2147483648), 2147483647i, -7541i, 0i)), vec3<f32>(1069f, -1878f, -202f), 64349u), Struct_5(Struct_2(vec3<u32>(4294967295u, 1u, 54099u), Struct_1(vec4<f32>(-792f, -275f, 485f, 1000f), vec2<f32>(474f, 498f), 0u, false, vec4<bool>(false, false, true, false))), Struct_3(0i, vec4<i32>(-52425i, 16376i, -8624i, -1i)), Struct_3(29753i, vec4<i32>(1i, -1i, 30297i, 34589i)), vec3<f32>(1617f, 648f, 1726f), 29372u));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(-889f, -215f, -1000f, -809f), vec2<f32>(536f, -187f), 0u, false, vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(-111f, -548f, 798f, -1527f), vec2<f32>(638f, 531f), 4294967295u, false, vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(525f, -1465f, 1525f, -1431f), vec2<f32>(-1000f, 1431f), 10349u, true, vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(-737f, 1084f, 268f, 286f), vec2<f32>(-654f, -1193f), 2382u, false, vec4<bool>(true, false, true, false)), Struct_1(vec4<f32>(-532f, 245f, 219f, 829f), vec2<f32>(780f, -104f), 1u, true, vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(647f, 1202f, 1000f, -428f), vec2<f32>(-824f, 1640f), 4294967295u, true, vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(1083f, 667f, -140f, -1386f), vec2<f32>(1893f, 382f), 4294967295u, true, vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(-425f, -623f, -1123f, -108f), vec2<f32>(542f, 1000f), 6149u, false, vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(-310f, -912f, -1174f, -476f), vec2<f32>(2483f, 1399f), 29147u, true, vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(341f, 624f, -200f, 443f), vec2<f32>(364f, -124f), 49807u, false, vec4<bool>(true, false, false, false)), Struct_1(vec4<f32>(-547f, 771f, 1533f, -1741f), vec2<f32>(-976f, 1651f), 4294967295u, true, vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(1285f, 1320f, 1412f, 526f), vec2<f32>(287f, 622f), 108927u, true, vec4<bool>(true, true, false, true)), Struct_1(vec4<f32>(342f, -353f, 187f, 102f), vec2<f32>(-756f, -1000f), 35462u, false, vec4<bool>(true, false, true, false)), Struct_1(vec4<f32>(1191f, 930f, 319f, -760f), vec2<f32>(642f, 2388f), 39367u, true, vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(-1013f, 1856f, -1000f, 1429f), vec2<f32>(597f, 430f), 17878u, false, vec4<bool>(true, true, true, false)), Struct_1(vec4<f32>(367f, 158f, 1517f, -702f), vec2<f32>(649f, 599f), 46547u, false, vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(-306f, -433f, -1464f, 1000f), vec2<f32>(-1425f, -1000f), 4294967295u, false, vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(424f, 113f, -765f, -381f), vec2<f32>(-627f, -221f), 0u, true, vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(1000f, -506f, -1042f, -1140f), vec2<f32>(-2075f, 184f), 95314u, false, vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(1000f, 1000f, -444f, 432f), vec2<f32>(279f, 640f), 1u, true, vec4<bool>(true, true, false, false)), Struct_1(vec4<f32>(853f, 746f, 562f, 315f), vec2<f32>(922f, -368f), 89800u, true, vec4<bool>(false, false, false, true)), Struct_1(vec4<f32>(-818f, -432f, -447f, 819f), vec2<f32>(381f, -2279f), 35729u, true, vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(591f, -573f, 1023f, 314f), vec2<f32>(611f, -583f), 28807u, true, vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(-270f, -807f, 286f, -1000f), vec2<f32>(-1000f, 1023f), 1u, false, vec4<bool>(false, false, true, false)), Struct_1(vec4<f32>(-909f, -388f, -1000f, -1040f), vec2<f32>(417f, -1115f), 1668u, true, vec4<bool>(true, false, false, false)), Struct_1(vec4<f32>(-925f, -279f, -105f, 634f), vec2<f32>(-1319f, 290f), 0u, true, vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(1816f, -474f, 1152f, 2697f), vec2<f32>(-1616f, -563f), 1u, false, vec4<bool>(false, true, false, false)), Struct_1(vec4<f32>(-940f, 1000f, -1060f, -740f), vec2<f32>(-1000f, -1215f), 30230u, false, vec4<bool>(false, false, true, false)));

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<f32, 12>;

var<private> global4: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec2<i32>(1i, 2147483647i), 0i, Struct_3(27488i, vec4<i32>(10232i, 2147483647i, 48802i, 0i)), Struct_1(vec4<f32>(161f, 319f, -129f, -1274f), vec2<f32>(-1443f, -1799f), 857u, true, vec4<bool>(true, true, true, true))), Struct_4(vec2<i32>(12443i, -1492i), -1i, Struct_3(-12520i, vec4<i32>(i32(-2147483648), -14752i, -11731i, -5624i)), Struct_1(vec4<f32>(1190f, 758f, 194f, -414f), vec2<f32>(-1027f, 740f), 4294967295u, true, vec4<bool>(true, true, false, false))), Struct_4(vec2<i32>(i32(-2147483648), 29611i), 2147483647i, Struct_3(-69317i, vec4<i32>(i32(-2147483648), -22623i, 39677i, 0i)), Struct_1(vec4<f32>(-803f, -826f, 618f, 1000f), vec2<f32>(-128f, -1000f), 66824u, true, vec4<bool>(false, true, true, true))), Struct_4(vec2<i32>(-1i, 0i), 31635i, Struct_3(i32(-2147483648), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -69367i)), Struct_1(vec4<f32>(-1177f, -425f, -1080f, 1000f), vec2<f32>(1922f, 245f), 4294967295u, false, vec4<bool>(true, true, true, false))), Struct_4(vec2<i32>(9426i, -1i), 38225i, Struct_3(-25041i, vec4<i32>(-15991i, -1i, 1i, 1i)), Struct_1(vec4<f32>(840f, -481f, -1396f, -900f), vec2<f32>(-1072f, -1028f), 23679u, false, vec4<bool>(true, false, true, false))), Struct_4(vec2<i32>(14061i, -3555i), -25788i, Struct_3(2147483647i, vec4<i32>(15175i, 1i, 12251i, -1i)), Struct_1(vec4<f32>(-1116f, 185f, 195f, 247f), vec2<f32>(-1762f, 584f), 15105u, false, vec4<bool>(false, false, true, true))), Struct_4(vec2<i32>(2147483647i, 0i), 17426i, Struct_3(26407i, vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i)), Struct_1(vec4<f32>(740f, 1000f, 2346f, -2426f), vec2<f32>(743f, 316f), 4294967295u, false, vec4<bool>(true, false, true, false))), Struct_4(vec2<i32>(-10048i, -55927i), 44619i, Struct_3(i32(-2147483648), vec4<i32>(-1i, i32(-2147483648), 1456i, -1i)), Struct_1(vec4<f32>(2159f, 2149f, -1655f, 1000f), vec2<f32>(619f, 1000f), 28185u, true, vec4<bool>(true, false, true, false))), Struct_4(vec2<i32>(1i, 2147483647i), 0i, Struct_3(2147483647i, vec4<i32>(1i, 1i, -1i, 31615i)), Struct_1(vec4<f32>(-463f, 1000f, -986f, 1261f), vec2<f32>(1353f, 1000f), 9382u, false, vec4<bool>(true, false, true, true))), Struct_4(vec2<i32>(24607i, -8184i), -12347i, Struct_3(-17242i, vec4<i32>(0i, 2147483647i, 2147483647i, -22660i)), Struct_1(vec4<f32>(647f, -959f, 619f, 703f), vec2<f32>(-164f, 1871f), 4294967295u, false, vec4<bool>(false, false, true, false))), Struct_4(vec2<i32>(-17941i, -1i), 17181i, Struct_3(1i, vec4<i32>(0i, 5783i, -1i, 1i)), Struct_1(vec4<f32>(855f, -722f, -418f, 492f), vec2<f32>(-2164f, 785f), 8628u, true, vec4<bool>(true, true, true, true))), Struct_4(vec2<i32>(23995i, -1i), 37898i, Struct_3(2147483647i, vec4<i32>(i32(-2147483648), -1i, -41318i, 2147483647i)), Struct_1(vec4<f32>(347f, -1000f, 2691f, -289f), vec2<f32>(1663f, 115f), 108283u, false, vec4<bool>(true, true, false, true))), Struct_4(vec2<i32>(46572i, -37465i), 2147483647i, Struct_3(i32(-2147483648), vec4<i32>(-1i, 1i, 26872i, 49924i)), Struct_1(vec4<f32>(-821f, -1011f, 673f, 1345f), vec2<f32>(-947f, 561f), 35591u, true, vec4<bool>(true, true, false, true))), Struct_4(vec2<i32>(21138i, 2147483647i), 32593i, Struct_3(35871i, vec4<i32>(1i, -24150i, 2147483647i, 66919i)), Struct_1(vec4<f32>(1413f, 1000f, -145f, 332f), vec2<f32>(-1151f, 885f), 19991u, false, vec4<bool>(false, true, false, true))), Struct_4(vec2<i32>(-1i, 0i), -1i, Struct_3(1i, vec4<i32>(-1i, i32(-2147483648), 33594i, -30551i)), Struct_1(vec4<f32>(1519f, 454f, 127f, -427f), vec2<f32>(303f, -465f), 1u, true, vec4<bool>(false, true, false, true))), Struct_4(vec2<i32>(-24146i, 1i), 0i, Struct_3(-1i, vec4<i32>(1i, 25740i, -934i, 37361i)), Struct_1(vec4<f32>(-196f, -1153f, -372f, 3170f), vec2<f32>(-1316f, 321f), 17413u, true, vec4<bool>(false, false, false, false))), Struct_4(vec2<i32>(1i, -1i), 30687i, Struct_3(-295i, vec4<i32>(2147483647i, -52645i, -18715i, 2147483647i)), Struct_1(vec4<f32>(-966f, 207f, -466f, -1070f), vec2<f32>(232f, 1536f), 56568u, true, vec4<bool>(true, false, false, false))), Struct_4(vec2<i32>(19044i, -62259i), 28543i, Struct_3(0i, vec4<i32>(-1728i, 10206i, i32(-2147483648), -44861i)), Struct_1(vec4<f32>(2048f, 151f, 1506f, 728f), vec2<f32>(-634f, -1152f), 60481u, false, vec4<bool>(false, false, false, false))), Struct_4(vec2<i32>(0i, 29710i), -26563i, Struct_3(-6098i, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 1i)), Struct_1(vec4<f32>(759f, -655f, -1476f, -899f), vec2<f32>(1000f, 575f), 70505u, false, vec4<bool>(false, true, false, true))), Struct_4(vec2<i32>(i32(-2147483648), 41368i), 7877i, Struct_3(i32(-2147483648), vec4<i32>(-47014i, 2147483647i, 5226i, -21604i)), Struct_1(vec4<f32>(-645f, -332f, 192f, 3302f), vec2<f32>(-235f, 523f), 42812u, false, vec4<bool>(true, true, true, false))), Struct_4(vec2<i32>(-18754i, -304i), 28458i, Struct_3(23215i, vec4<i32>(-48424i, -4729i, 20146i, 2147483647i)), Struct_1(vec4<f32>(1000f, -1404f, -451f, 1971f), vec2<f32>(382f, 1204f), 0u, true, vec4<bool>(false, true, false, false))), Struct_4(vec2<i32>(-10465i, 1i), -47443i, Struct_3(2147483647i, vec4<i32>(3199i, 2147483647i, 0i, 1i)), Struct_1(vec4<f32>(266f, 266f, 434f, 507f), vec2<f32>(-1767f, 949f), 1u, false, vec4<bool>(false, false, true, false))), Struct_4(vec2<i32>(-11439i, -1i), 18379i, Struct_3(-52804i, vec4<i32>(4501i, 1i, 33173i, 9599i)), Struct_1(vec4<f32>(-1410f, 144f, -1446f, 415f), vec2<f32>(114f, 1138f), 73196u, true, vec4<bool>(true, false, false, true))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(0u, 12u)];
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1485f, -1210f, 1054f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 12u)], -369f, -1000f)))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 12u)], 757f, global3[_wgslsmith_index_u32(0u, 12u)])))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(33582u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(53645u, 12u)])))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 12u)], 689f, 1068f)))))), !vec3<bool>(false, 4294967295u < arg_1, any(vec2<bool>(true, global2.x))))));
    global3 = array<f32, 12>();
    var var_2 = arg_0;
    let var_3 = all(vec4<bool>(global2.x, false, true, global2.x));
    return var_2.x ^ firstLeadingBit(min(u_input.a, -8887i));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = 18415i >= select(-(_wgslsmith_mod_i32(arg_0, arg_1.x) ^ ~arg_1.x), _wgslsmith_clamp_i32(firstLeadingBit(func_3(vec3<i32>(arg_0, -14793i, u_input.a), arg_2)), max(-9556i, arg_0) << (countOneBits(99943u) % 32u), _wgslsmith_add_i32(~1i, arg_1.x | 0i)), true);
    global0 = array<Struct_5, 14>();
    let var_1 = global1[_wgslsmith_index_u32(arg_2, 28u)];
    global1 = array<Struct_1, 28>();
    global0 = array<Struct_5, 14>();
    return global1[_wgslsmith_index_u32(var_1.c, 28u)];
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_5 {
    let var_0 = _wgslsmith_sub_i32(-(abs(_wgslsmith_mod_i32(16652i, arg_0.b.b.x)) | -1i), countOneBits((_wgslsmith_sub_i32(arg_0.c.b.x, 1762i) | ~47282i) >> (~arg_0.e % 32u)));
    let var_1 = firstTrailingBit(~(-512i));
    var var_2 = arg_0.a.b;
    var var_3 = reverseBits(~(-(select(var_1, var_0, false) | firstLeadingBit(-1i))));
    let var_4 = arg_0.a.b.e.x;
    return Struct_5(Struct_2(_wgslsmith_mod_vec3_u32(~reverseBits(arg_0.a.a), ~(~arg_0.a.a)), Struct_1(arg_0.a.b.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -973f), var_2.a.wy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(19586u, 12u)], 1000f))), arg_0.e, !(var_1 > 24603i), func_2(-1i, vec2<i32>(var_1, -1i), reverseBits(1u)).e)), Struct_3(1i, abs(_wgslsmith_sub_vec4_i32(~arg_0.c.b, ~vec4<i32>(var_1, var_1, var_1, var_0)))), Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, arg_0.c.b.x), vec2<i32>(~var_0, firstTrailingBit(var_0))), firstLeadingBit(select(arg_0.b.b, vec4<i32>(1i, 1i, 38559i, var_0), func_2(var_1, vec2<i32>(arg_0.c.b.x, u_input.a), 4294967295u).e.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2916f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.e, 12u)] * global3[_wgslsmith_index_u32(var_2.c, 12u)])), _wgslsmith_f_op_f32(-508f - _wgslsmith_f_op_f32(var_2.b.x + 520f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(var_2.c), 12u)])))), _wgslsmith_mod_u32(var_2.c, 1u));
}

fn func_1() -> bool {
    global3 = array<f32, 12>();
    let var_0 = func_4(Struct_5(Struct_2(~(~vec3<u32>(60508u, 0u, 99534u)), func_2(i32(-1i) * -42064i, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(33388i, u_input.a)), _wgslsmith_div_u32(16890u, 29851u))), Struct_3(9373i, select(select(vec4<i32>(-10465i, -2147483647i, u_input.a, 28819i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, global2.x, true, false)), ~vec4<i32>(u_input.a, -23152i, -2147483647i, u_input.a), select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(true, global2.x, false, true), global2.x))), Struct_3(u_input.a | ~1i, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 50842i, -20863i), ~vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(524f, global3[_wgslsmith_index_u32(8099u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)])))), vec3<f32>(_wgslsmith_f_op_f32(round(-931f)), _wgslsmith_f_op_f32(f32(-1f) * -248f), 974f)), ~_wgslsmith_sub_u32(~37349u, firstLeadingBit(26327u))), global3[_wgslsmith_index_u32(~(~1u >> ((_wgslsmith_clamp_u32(0u, 62062u, 0u) << (0u % 32u)) % 32u)), 12u)]);
    global0 = array<Struct_5, 14>();
    let var_1 = select(func_4(func_4(Struct_5(Struct_2(vec3<u32>(4294967295u, 0u, var_0.e), var_0.a.b), Struct_3(u_input.a, var_0.b.b), var_0.b, vec3<f32>(522f, global3[_wgslsmith_index_u32(18458u, 12u)], var_0.d.x), var_0.e), _wgslsmith_f_op_f32(-var_0.d.x)), var_0.a.b.b.x).b.b.wz, vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)) & vec2<i32>(u_input.a, -47083i);
    var var_2 = var_0.b.b.wy;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(vec3<u32>(~1u, ~(~1u), 1u), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(15851u, 14399u, 38658u), vec3<u32>(1u, 1u, 1u))), !select(!vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, true, global2.x), true)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, 1u) | ~_wgslsmith_add_u32(0u << (1u % 32u), 4294967295u), 28u)]);
    let var_1 = select(select(vec3<bool>(true, var_0.b.d, var_0.b.d), vec3<bool>(true, !var_0.b.d, (1909f > var_0.b.a.x) || (u_input.a < 2147483647i)), func_1()), var_0.b.e.xzx, var_0.b.c >= 28960u);
    var var_2 = reverseBits(var_0.a.zz);
    let var_3 = !(!func_4(global0[_wgslsmith_index_u32(~var_2.x, 14u)], _wgslsmith_f_op_f32(round(216f))).a.b.e);
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~50061u, max(vec3<u32>(10068u >> (0u % 32u), ~1u | _wgslsmith_add_u32(var_4, 4294967295u), func_2(49178i, select(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, 14934i), var_1.yx), reverseBits(28813u)).c), vec3<u32>(var_4, firstTrailingBit(firstTrailingBit(0u)), 0u)), _wgslsmith_dot_vec3_u32(~var_0.a, var_0.a), select(var_2.x, _wgslsmith_div_u32(reverseBits(func_4(Struct_5(var_0, Struct_3(24156i, vec4<i32>(u_input.a, -1i, -57589i, u_input.a)), Struct_3(u_input.a, vec4<i32>(u_input.a, 45416i, 61272i, u_input.a)), vec3<f32>(1006f, global3[_wgslsmith_index_u32(var_0.b.c, 12u)], 1213f), 46463u), global3[_wgslsmith_index_u32(var_4, 12u)]).a.b.c), ~var_0.a.x), func_2(21903i, vec2<i32>(-2147483647i, u_input.a), 26575u).e.x));
}

