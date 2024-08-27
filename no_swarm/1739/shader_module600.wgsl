struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_2(Struct_1(1u, vec4<bool>(true, true, true, false), 974u, vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<f32>(717f, 433f, 957f)), vec4<i32>(0i, -1i, -47355i, 12151i)), vec4<u32>(4294967295u, 62896u, 25288u, 1u), Struct_1(0u, vec4<bool>(false, true, true, true), 25682u, vec3<i32>(-1730i, -6062i, i32(-2147483648)), vec3<f32>(1000f, 165f, 242f)), vec3<f32>(-1368f, -1240f, 1222f), vec2<f32>(1135f, -647f)), Struct_3(Struct_2(Struct_1(76802u, vec4<bool>(true, false, true, true), 1u, vec3<i32>(1i, -64580i, 24387i), vec3<f32>(-567f, 759f, -526f)), vec4<i32>(-16005i, -1941i, 0i, 54463i)), vec4<u32>(593u, 18311u, 52672u, 0u), Struct_1(48106u, vec4<bool>(false, false, true, true), 6125u, vec3<i32>(0i, -15721i, -39759i), vec3<f32>(826f, -631f, 1000f)), vec3<f32>(504f, 163f, 1843f), vec2<f32>(1759f, 402f)), Struct_3(Struct_2(Struct_1(104586u, vec4<bool>(false, true, false, true), 10698u, vec3<i32>(-48937i, 51235i, -11461i), vec3<f32>(-894f, 937f, 382f)), vec4<i32>(1i, -1i, -32071i, 2147483647i)), vec4<u32>(0u, 4294967295u, 66244u, 11280u), Struct_1(0u, vec4<bool>(true, true, true, false), 1u, vec3<i32>(-39830i, -26668i, 17920i), vec3<f32>(1790f, 1591f, -1080f)), vec3<f32>(-1000f, 1879f, 760f), vec2<f32>(191f, 359f)), Struct_3(Struct_2(Struct_1(32340u, vec4<bool>(true, false, true, false), 51808u, vec3<i32>(1i, -10732i, -32837i), vec3<f32>(1000f, -1982f, -248f)), vec4<i32>(-5502i, -1i, 6013i, -1i)), vec4<u32>(18176u, 15041u, 4294967295u, 957u), Struct_1(0u, vec4<bool>(false, false, false, false), 26691u, vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<f32>(293f, -472f, -1719f)), vec3<f32>(-1809f, -786f, 1385f), vec2<f32>(-323f, 700f)), Struct_3(Struct_2(Struct_1(27953u, vec4<bool>(false, true, false, true), 49230u, vec3<i32>(-16411i, -25650i, 2147483647i), vec3<f32>(730f, 583f, 1736f)), vec4<i32>(-52925i, 7688i, -13926i, 32862i)), vec4<u32>(48060u, 9531u, 4294967295u, 0u), Struct_1(1u, vec4<bool>(true, true, false, false), 1u, vec3<i32>(i32(-2147483648), 2147483647i, 5946i), vec3<f32>(1813f, 1944f, 501f)), vec3<f32>(178f, -240f, -1876f), vec2<f32>(-1505f, -1044f)), Struct_3(Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, false, false), 4294967295u, vec3<i32>(345i, i32(-2147483648), 19979i), vec3<f32>(282f, 1000f, -2901f)), vec4<i32>(-29300i, -1i, -19432i, 36250i)), vec4<u32>(0u, 14927u, 34239u, 17654u), Struct_1(4294967295u, vec4<bool>(false, false, true, true), 2450u, vec3<i32>(54921i, 21752i, -9520i), vec3<f32>(1000f, -144f, 1093f)), vec3<f32>(-2177f, -206f, -2196f), vec2<f32>(-1300f, -730f)), Struct_3(Struct_2(Struct_1(0u, vec4<bool>(true, false, true, true), 2326u, vec3<i32>(-46926i, 0i, -45987i), vec3<f32>(-673f, 116f, 525f)), vec4<i32>(0i, 2147483647i, 1i, 1i)), vec4<u32>(0u, 17342u, 100840u, 46949u), Struct_1(1u, vec4<bool>(true, true, false, true), 0u, vec3<i32>(-6019i, -1i, 6732i), vec3<f32>(1204f, 1191f, 527f)), vec3<f32>(-143f, 1551f, 2158f), vec2<f32>(901f, -1083f)), Struct_3(Struct_2(Struct_1(1u, vec4<bool>(true, true, true, true), 34824u, vec3<i32>(6156i, -48340i, -2197i), vec3<f32>(670f, 766f, -241f)), vec4<i32>(-34343i, 61017i, 1i, 35945i)), vec4<u32>(12053u, 19581u, 4294967295u, 25428u), Struct_1(4294967295u, vec4<bool>(false, true, false, false), 37019u, vec3<i32>(31854i, 10546i, 2147483647i), vec3<f32>(1658f, 147f, 195f)), vec3<f32>(-1248f, -483f, 1432f), vec2<f32>(-857f, -102f)), Struct_3(Struct_2(Struct_1(28249u, vec4<bool>(false, false, true, false), 4294967295u, vec3<i32>(i32(-2147483648), -27789i, 1i), vec3<f32>(-262f, -103f, 152f)), vec4<i32>(1i, -18499i, -41200i, -1i)), vec4<u32>(4294967295u, 17309u, 1u, 4294967295u), Struct_1(24306u, vec4<bool>(false, false, false, false), 1u, vec3<i32>(0i, 2147483647i, 1i), vec3<f32>(771f, 1685f, -542f)), vec3<f32>(-1254f, -1081f, -670f), vec2<f32>(-1021f, 1000f)), Struct_3(Struct_2(Struct_1(32679u, vec4<bool>(true, false, true, true), 23180u, vec3<i32>(-7343i, -18349i, -6608i), vec3<f32>(1732f, 1600f, 1002f)), vec4<i32>(33113i, 34960i, -25245i, -11284i)), vec4<u32>(24053u, 81909u, 67889u, 1u), Struct_1(1u, vec4<bool>(false, true, false, true), 40654u, vec3<i32>(40484i, -14008i, 2147483647i), vec3<f32>(-716f, -389f, -676f)), vec3<f32>(-173f, -167f, -634f), vec2<f32>(-183f, 977f)), Struct_3(Struct_2(Struct_1(31139u, vec4<bool>(false, true, true, false), 18042u, vec3<i32>(0i, 2147483647i, 35929i), vec3<f32>(376f, 104f, 638f)), vec4<i32>(-18475i, 56138i, -59168i, -1i)), vec4<u32>(29465u, 9425u, 31487u, 1u), Struct_1(4294967295u, vec4<bool>(true, true, false, true), 92736u, vec3<i32>(i32(-2147483648), -9100i, 0i), vec3<f32>(528f, 1646f, -500f)), vec3<f32>(-1035f, -1503f, 1390f), vec2<f32>(1025f, 834f)), Struct_3(Struct_2(Struct_1(8210u, vec4<bool>(true, false, false, true), 4294967295u, vec3<i32>(-9296i, -46594i, 1i), vec3<f32>(206f, -775f, 1351f)), vec4<i32>(-10303i, -36086i, 48668i, 26105i)), vec4<u32>(0u, 20065u, 27343u, 4294967295u), Struct_1(1u, vec4<bool>(false, false, false, false), 4294967295u, vec3<i32>(-674i, -1i, -1i), vec3<f32>(-274f, -328f, 145f)), vec3<f32>(-1253f, 341f, -808f), vec2<f32>(571f, 185f)), Struct_3(Struct_2(Struct_1(89870u, vec4<bool>(true, true, true, true), 38282u, vec3<i32>(-15998i, -77492i, 1i), vec3<f32>(-201f, 491f, -564f)), vec4<i32>(-46266i, -35028i, 2147483647i, 4637i)), vec4<u32>(0u, 0u, 44435u, 54410u), Struct_1(27130u, vec4<bool>(false, true, true, false), 25402u, vec3<i32>(17907i, 0i, 2147483647i), vec3<f32>(272f, 179f, -887f)), vec3<f32>(-647f, -1960f, 1896f), vec2<f32>(-584f, -2277f)), Struct_3(Struct_2(Struct_1(4294967295u, vec4<bool>(false, false, false, true), 0u, vec3<i32>(52098i, 2800i, 2147483647i), vec3<f32>(-405f, -437f, -798f)), vec4<i32>(-34491i, 1i, 22867i, 4303i)), vec4<u32>(1u, 64665u, 30590u, 4294967295u), Struct_1(33724u, vec4<bool>(true, true, true, false), 47446u, vec3<i32>(1i, 7473i, 0i), vec3<f32>(568f, 647f, -2045f)), vec3<f32>(-431f, -2406f, -1568f), vec2<f32>(-2399f, 756f)), Struct_3(Struct_2(Struct_1(64689u, vec4<bool>(false, false, true, false), 11245u, vec3<i32>(i32(-2147483648), 41752i, 0i), vec3<f32>(-1000f, 819f, 2042f)), vec4<i32>(-38076i, -17068i, 4846i, 14286i)), vec4<u32>(1u, 13137u, 1u, 64161u), Struct_1(75356u, vec4<bool>(false, false, false, false), 24517u, vec3<i32>(2147483647i, -34170i, i32(-2147483648)), vec3<f32>(244f, -320f, -574f)), vec3<f32>(-546f, 355f, -182f), vec2<f32>(-587f, -256f)), Struct_3(Struct_2(Struct_1(3725u, vec4<bool>(false, true, false, false), 13432u, vec3<i32>(34140i, -12584i, 31663i), vec3<f32>(968f, 349f, -818f)), vec4<i32>(1i, 2147483647i, -44940i, 44484i)), vec4<u32>(4294967295u, 5151u, 1u, 45514u), Struct_1(0u, vec4<bool>(true, true, true, true), 1u, vec3<i32>(0i, -8780i, 2147483647i), vec3<f32>(-423f, -313f, 987f)), vec3<f32>(-952f, 280f, -366f), vec2<f32>(-801f, 192f)), Struct_3(Struct_2(Struct_1(10754u, vec4<bool>(true, true, false, true), 23367u, vec3<i32>(0i, -20734i, 0i), vec3<f32>(1216f, 739f, 579f)), vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648))), vec4<u32>(18093u, 4294967295u, 0u, 22954u), Struct_1(4294967295u, vec4<bool>(false, true, false, false), 4294967295u, vec3<i32>(0i, 0i, -1i), vec3<f32>(-1327f, 639f, 1281f)), vec3<f32>(1828f, 357f, -116f), vec2<f32>(192f, -1442f)), Struct_3(Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, true, true), 71456u, vec3<i32>(-14185i, -1i, -20197i), vec3<f32>(-357f, -798f, -814f)), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -7335i)), vec4<u32>(16601u, 1u, 0u, 1u), Struct_1(1u, vec4<bool>(true, false, true, true), 83024u, vec3<i32>(3824i, 30261i, 4598i), vec3<f32>(854f, -548f, -1000f)), vec3<f32>(1073f, -618f, 1639f), vec2<f32>(1357f, -660f)), Struct_3(Struct_2(Struct_1(1u, vec4<bool>(false, false, false, true), 10238u, vec3<i32>(-20210i, 0i, -1i), vec3<f32>(1221f, -2174f, 139f)), vec4<i32>(7549i, -1i, -50211i, 0i)), vec4<u32>(1u, 48552u, 1u, 1u), Struct_1(0u, vec4<bool>(false, false, true, false), 53600u, vec3<i32>(67053i, -2651i, i32(-2147483648)), vec3<f32>(-1166f, 2211f, 772f)), vec3<f32>(-477f, 581f, -764f), vec2<f32>(-1232f, 365f)), Struct_3(Struct_2(Struct_1(75845u, vec4<bool>(false, true, false, false), 1u, vec3<i32>(-36060i, 0i, i32(-2147483648)), vec3<f32>(-2455f, 383f, 761f)), vec4<i32>(1i, 1i, -1i, 0i)), vec4<u32>(6133u, 0u, 3147u, 1u), Struct_1(0u, vec4<bool>(true, true, false, true), 4294967295u, vec3<i32>(1i, 81949i, 1i), vec3<f32>(461f, -1038f, -376f)), vec3<f32>(732f, -813f, -516f), vec2<f32>(-1000f, 153f)), Struct_3(Struct_2(Struct_1(1u, vec4<bool>(false, false, false, true), 71570u, vec3<i32>(-35428i, 12847i, 17095i), vec3<f32>(-1628f, -735f, -105f)), vec4<i32>(6649i, -5705i, 51609i, 2147483647i)), vec4<u32>(1u, 25747u, 44778u, 19500u), Struct_1(38684u, vec4<bool>(false, true, true, true), 4294967295u, vec3<i32>(0i, -8792i, -59376i), vec3<f32>(-1000f, -331f, 945f)), vec3<f32>(1052f, -809f, 1416f), vec2<f32>(810f, 1302f)), Struct_3(Struct_2(Struct_1(1u, vec4<bool>(true, false, true, true), 0u, vec3<i32>(-50411i, 46486i, -22586i), vec3<f32>(-299f, 488f, -407f)), vec4<i32>(-6046i, -1474i, 1i, 2147483647i)), vec4<u32>(119280u, 27842u, 1u, 0u), Struct_1(0u, vec4<bool>(false, false, false, false), 22802u, vec3<i32>(5787i, 11987i, -1i), vec3<f32>(-377f, -405f, 1316f)), vec3<f32>(-352f, 220f, -1243f), vec2<f32>(-951f, -1447f)), Struct_3(Struct_2(Struct_1(82004u, vec4<bool>(true, true, false, false), 0u, vec3<i32>(0i, 81378i, 1i), vec3<f32>(1000f, 471f, -786f)), vec4<i32>(8924i, -25738i, -25815i, 1i)), vec4<u32>(1u, 47986u, 276u, 0u), Struct_1(19088u, vec4<bool>(false, true, true, false), 5192u, vec3<i32>(2106i, 17856i, -1i), vec3<f32>(917f, 475f, -821f)), vec3<f32>(743f, -443f, -703f), vec2<f32>(1000f, 141f)), Struct_3(Struct_2(Struct_1(1u, vec4<bool>(true, true, false, false), 30907u, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<f32>(670f, 589f, 512f)), vec4<i32>(-1i, -20348i, -7504i, i32(-2147483648))), vec4<u32>(24384u, 0u, 17056u, 0u), Struct_1(4294967295u, vec4<bool>(false, true, true, false), 65246u, vec3<i32>(-7600i, 2799i, -22519i), vec3<f32>(370f, 1000f, -232f)), vec3<f32>(130f, -212f, -844f), vec2<f32>(-1026f, 164f)), Struct_3(Struct_2(Struct_1(4294967295u, vec4<bool>(false, true, false, false), 4294967295u, vec3<i32>(-22652i, 48889i, 1i), vec3<f32>(1325f, 380f, -1647f)), vec4<i32>(2147483647i, 20063i, 2147483647i, 0i)), vec4<u32>(0u, 1u, 47383u, 76927u), Struct_1(1u, vec4<bool>(true, true, true, false), 4294967295u, vec3<i32>(i32(-2147483648), 34006i, 0i), vec3<f32>(537f, 646f, -1904f)), vec3<f32>(-1251f, 1187f, -1000f), vec2<f32>(279f, 1761f)), Struct_3(Struct_2(Struct_1(4294967295u, vec4<bool>(true, true, false, true), 86605u, vec3<i32>(13803i, -1i, -1i), vec3<f32>(323f, -1000f, -532f)), vec4<i32>(-4812i, 20179i, -28165i, -1i)), vec4<u32>(30029u, 4294967295u, 25083u, 0u), Struct_1(13370u, vec4<bool>(false, true, false, false), 0u, vec3<i32>(1i, i32(-2147483648), -1i), vec3<f32>(196f, 209f, -834f)), vec3<f32>(-363f, 1221f, 2441f), vec2<f32>(1952f, -777f)), Struct_3(Struct_2(Struct_1(33790u, vec4<bool>(false, false, false, false), 52391u, vec3<i32>(15680i, 2147483647i, -1i), vec3<f32>(353f, 217f, 113f)), vec4<i32>(5383i, 31096i, 1i, -1i)), vec4<u32>(13055u, 46137u, 0u, 0u), Struct_1(0u, vec4<bool>(false, false, true, false), 43829u, vec3<i32>(-70050i, 0i, 12185i), vec3<f32>(598f, 1000f, 1282f)), vec3<f32>(275f, 144f, -129f), vec2<f32>(249f, 1089f)), Struct_3(Struct_2(Struct_1(55715u, vec4<bool>(true, true, false, true), 0u, vec3<i32>(-1i, 44409i, -57941i), vec3<f32>(-401f, 241f, 367f)), vec4<i32>(0i, 2147483647i, 7887i, -1i)), vec4<u32>(0u, 55884u, 0u, 4294967295u), Struct_1(1u, vec4<bool>(false, false, true, false), 1u, vec3<i32>(10854i, 2147483647i, 7935i), vec3<f32>(-1186f, -169f, 415f)), vec3<f32>(-2359f, 1117f, -1428f), vec2<f32>(-210f, 265f)), Struct_3(Struct_2(Struct_1(54618u, vec4<bool>(true, true, true, true), 1u, vec3<i32>(50786i, 4586i, 58939i), vec3<f32>(1038f, -792f, -1042f)), vec4<i32>(14253i, 5404i, 2147483647i, -1i)), vec4<u32>(3975u, 4294967295u, 0u, 26684u), Struct_1(4294967295u, vec4<bool>(true, false, false, false), 20827u, vec3<i32>(2147483647i, -53904i, -11857i), vec3<f32>(-219f, -552f, -1100f)), vec3<f32>(-159f, 329f, 1977f), vec2<f32>(258f, 985f)), Struct_3(Struct_2(Struct_1(0u, vec4<bool>(true, true, true, false), 114035u, vec3<i32>(-28181i, 3895i, 5618i), vec3<f32>(-385f, -2363f, -2050f)), vec4<i32>(0i, -3398i, 21676i, 0i)), vec4<u32>(0u, 0u, 41840u, 36893u), Struct_1(4294967295u, vec4<bool>(false, true, false, false), 0u, vec3<i32>(2882i, -56406i, 0i), vec3<f32>(1246f, 763f, -906f)), vec3<f32>(1000f, 434f, 417f), vec2<f32>(331f, -1327f)));

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(21368u, vec4<bool>(true, false, true, false), 78150u, vec3<i32>(i32(-2147483648), -171i, i32(-2147483648)), vec3<f32>(-769f, -1214f, -325f)), vec4<i32>(i32(-2147483648), -24831i, -1i, 16867i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    global2 = array<Struct_2, 1>();
    let var_0 = Struct_1((~0u >> ((u_input.a << (firstTrailingBit(arg_2) % 32u)) % 32u)) & ~(~_wgslsmith_sub_u32(arg_2, 0u)), vec4<bool>(false, select(true || (1u < global0[_wgslsmith_index_u32(0u, 26u)]), arg_1.b.x, arg_1.b.x), true, true), ~(arg_1.a & abs(1u)), arg_3.d, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_3.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_3.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.e))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(517f, arg_1.e.x, -527f) + arg_1.e)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~select(min(u_input.a, 67368u), abs(global0[_wgslsmith_index_u32(4294967295u, 26u)]), true)), ~arg_1.a), 30u)];
    global0 = array<u32, 26>();
    global2 = array<Struct_2, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = (true || ((1u < (58658u | arg_0.x)) && false)) & true;
    let var_1 = arg_1.x;
    let var_2 = u_input.d;
    var var_3 = arg_1.x;
    var var_4 = ~1u;
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global1 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(338f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1000f))))), false)), _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec2_u32(u_input.c.yz | select(u_input.c.zy, vec2<u32>(u_input.c.x, 36047u), arg_0), _wgslsmith_clamp_vec2_u32(u_input.c.zx, u_input.c.xy, vec2<u32>(41280u, u_input.b)) & vec2<u32>(25665u, 90256u), ~(~u_input.c.xy)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(arg_0, arg_0), Struct_1(u_input.b, vec4<bool>(false, arg_0, true, false), global0[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i), vec3<f32>(672f, 1000f, 216f)), 4294967295u, Struct_1(global0[_wgslsmith_index_u32(0u, 26u)], vec4<bool>(arg_0, arg_0, arg_0, arg_0), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], vec3<i32>(1i, u_input.e.x, u_input.e.x), vec3<f32>(-466f, 242f, 914f))))), -868f, _wgslsmith_f_op_f32(f32(-1f) * -2294f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(209f, 980f)))))));
    var var_1 = global2[_wgslsmith_index_u32(max((~u_input.b >> (~1u % 32u)) & firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 26u)]), firstLeadingBit(u_input.b)), 1u)];
    let var_2 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 1u)];
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, max(104691u, 13554u)), 30u)];
    return vec4<bool>(true, true, var_3.c.d.x > ((2340i >> (var_2.a.a % 32u)) ^ (_wgslsmith_dot_vec2_i32(var_2.a.d.zz, vec2<i32>(u_input.e.x, 0i)) & 47931i)), !arg_0);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(530f, 561f, -1071f), vec3<f32>(675f, 524f, 675f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, 1351f, 520f) + vec3<f32>(213f, -393f, 186f)))))));
    var var_1 = select(!func_2(true), func_2(_wgslsmith_f_op_f32(round(-193f)) <= var_0.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-475f - var_0.x))), var_0.x), _wgslsmith_f_op_f32(-960f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(229f, 117f)) - _wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-615f, _wgslsmith_f_op_f32(1339f * -1398f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -655f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1807f, -965f, 1184f), vec4<f32>(-345f, var_2.x, var_0.x, 147f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 431f, 443f, -2672f) * vec4<f32>(var_2.x, var_0.x, -208f, var_2.x)))))));
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~9618u, _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(33837u, 26u)]), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yy), 26u)])), 1u)], abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 26u)]), vec2<u32>(63679u, 0u)), 13950u >> (1u % 32u), abs(1u)), ~vec4<u32>(4294967295u, 7429u, global0[_wgslsmith_index_u32(26908u, 26u)], 0u))), Struct_1(4294967295u, !vec4<bool>(true, false, u_input.d >= u_input.d, var_1.x), global0[_wgslsmith_index_u32(24946u, 26u)], _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(-2147483647i), -4683i, 1i), select(countOneBits(vec3<i32>(-2147483647i, 2147483647i, u_input.e.x)), u_input.e, var_1.zxw)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(789f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, -1228f), _wgslsmith_f_op_vec3_f32(var_2.zyy - var_2.yyx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1546f, var_0.x, -1302f) * var_2.zzy) + vec3<f32>(_wgslsmith_f_op_f32(-524f * 2114f), _wgslsmith_f_op_f32(step(685f, var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(-var_0.x)));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 30>();
    var var_0 = u_input.c;
    var var_1 = Struct_3(func_1(), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(80675u, 0u, u_input.b), vec3<u32>(var_0.x, 35798u, u_input.b)), select(var_0.x << (var_0.x % 32u), 0u ^ u_input.a, false), global0[_wgslsmith_index_u32(35226u, 26u)], ~(~62783u)), abs(select(vec4<u32>(30287u, u_input.a, var_0.x, var_0.x) | vec4<u32>(u_input.b, u_input.c.x, 1u, 0u), vec4<u32>(var_0.x, var_0.x, 14888u, var_0.x), true))), func_1().a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-413f, 587f, -453f), vec3<f32>(1045f, -153f, -1346f))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(908f, -552f, -1328f)) * vec3<f32>(-432f, -305f, -1814f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(605f, -954f, 1024f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(225f, -189f)), -707f, _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, -741f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(820f, 2286f), vec2<f32>(691f, -272f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.d.x);
}

