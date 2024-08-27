struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec3<f32>(663f, 266f, 1111f), 7694i, 0u, 12081i, Struct_2(vec2<i32>(i32(-2147483648), 20362i), vec2<i32>(2147483647i, 16844i), -843f, vec4<i32>(2147483647i, 1i, i32(-2147483648), -40913i), Struct_1(-538f, true, 31208u, vec4<u32>(23032u, 37185u, 0u, 52120u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(-399f, -319f, 1295f), -1i, 56040u, -1i, Struct_2(vec2<i32>(-3405i, -24602i), vec2<i32>(1i, 2147483647i), 402f, vec4<i32>(33577i, 2147483647i, 41953i, 0i), Struct_1(2185f, false, 4294967295u, vec4<u32>(13164u, 4294967295u, 97991u, 39466u), vec3<bool>(true, true, true)))), Struct_4(vec3<f32>(-521f, -461f, 1518f), -1i, 1u, 30002i, Struct_2(vec2<i32>(1i, 0i), vec2<i32>(26945i, 2147483647i), -2464f, vec4<i32>(2147483647i, 31705i, 0i, -8742i), Struct_1(-331f, false, 69911u, vec4<u32>(0u, 3077u, 7257u, 4294967295u), vec3<bool>(true, true, false)))), Struct_4(vec3<f32>(-1000f, -862f, 537f), 1i, 1u, 18002i, Struct_2(vec2<i32>(1i, -42549i), vec2<i32>(1i, 25077i), 456f, vec4<i32>(53574i, 2147483647i, -1i, 0i), Struct_1(2016f, true, 0u, vec4<u32>(0u, 26441u, 0u, 35262u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-1000f, 248f, -102f), 1i, 1u, 40060i, Struct_2(vec2<i32>(41779i, 0i), vec2<i32>(-5391i, -10464i), 1750f, vec4<i32>(1474i, 16067i, -33029i, 1i), Struct_1(985f, false, 4294967295u, vec4<u32>(50280u, 32954u, 0u, 4294967295u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(193f, -1000f, 407f), 12302i, 0u, 1i, Struct_2(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 114261i), 200f, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648)), Struct_1(-722f, false, 1u, vec4<u32>(13460u, 35426u, 5733u, 69359u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(932f, -1511f, -1000f), -1i, 4294967295u, -29588i, Struct_2(vec2<i32>(1i, -36589i), vec2<i32>(74967i, 2147483647i), -1211f, vec4<i32>(0i, -21130i, -1582i, i32(-2147483648)), Struct_1(100f, true, 0u, vec4<u32>(0u, 0u, 84514u, 4294967295u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-559f, 511f, -768f), 36072i, 22371u, 23912i, Struct_2(vec2<i32>(15062i, 19131i), vec2<i32>(-1691i, -13932i), -840f, vec4<i32>(1i, -17620i, i32(-2147483648), -20994i), Struct_1(-1189f, false, 0u, vec4<u32>(0u, 34214u, 0u, 41483u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(-611f, 849f, -217f), -18923i, 3361u, -16729i, Struct_2(vec2<i32>(-12403i, -52726i), vec2<i32>(15552i, 1i), 762f, vec4<i32>(-74874i, -22009i, 37502i, 52689i), Struct_1(1116f, true, 121121u, vec4<u32>(36602u, 0u, 51182u, 833u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(797f, -842f, -2114f), 22587i, 4294967295u, 2147483647i, Struct_2(vec2<i32>(2147483647i, -63264i), vec2<i32>(-49286i, 8337i), -702f, vec4<i32>(-1i, 2147483647i, 1i, -10011i), Struct_1(-1178f, false, 4294967295u, vec4<u32>(35316u, 4294967295u, 4294967295u, 1u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(2271f, -681f, 725f), 0i, 4294967295u, 2147483647i, Struct_2(vec2<i32>(1i, 2147483647i), vec2<i32>(-14750i, 45683i), -641f, vec4<i32>(1i, 0i, 2147483647i, -49312i), Struct_1(636f, false, 57656u, vec4<u32>(28691u, 4294967295u, 9186u, 16235u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(467f, 1181f, -464f), 5756i, 51336u, -49765i, Struct_2(vec2<i32>(0i, -4534i), vec2<i32>(28117i, -1i), -1465f, vec4<i32>(75455i, 3914i, 37438i, i32(-2147483648)), Struct_1(1178f, false, 0u, vec4<u32>(34420u, 4294967295u, 117483u, 80294u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(1000f, 493f, 133f), 0i, 9716u, 9200i, Struct_2(vec2<i32>(-21081i, 0i), vec2<i32>(-60759i, -13004i), -822f, vec4<i32>(0i, 2147483647i, -8579i, 28707i), Struct_1(-594f, true, 4294967295u, vec4<u32>(22442u, 1u, 5494u, 68150u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-673f, 384f, -857f), -9822i, 1u, -2328i, Struct_2(vec2<i32>(16456i, 0i), vec2<i32>(-25480i, 26420i), -149f, vec4<i32>(-54738i, 1i, -948i, 9840i), Struct_1(-271f, false, 4294967295u, vec4<u32>(85500u, 4294967295u, 19054u, 1u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-623f, -132f, 1000f), 37884i, 4294967295u, i32(-2147483648), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -8894i), 848f, vec4<i32>(0i, 0i, 844i, 27131i), Struct_1(-607f, true, 10072u, vec4<u32>(78795u, 4294967295u, 0u, 0u), vec3<bool>(true, true, true)))), Struct_4(vec3<f32>(1000f, -773f, -679f), 1i, 26036u, 17101i, Struct_2(vec2<i32>(69532i, 2147483647i), vec2<i32>(48439i, -1i), 804f, vec4<i32>(2147483647i, 24558i, i32(-2147483648), 2147483647i), Struct_1(-1407f, false, 10765u, vec4<u32>(4120u, 4294967295u, 4294967295u, 0u), vec3<bool>(true, true, false)))), Struct_4(vec3<f32>(-1000f, -228f, -294f), i32(-2147483648), 37067u, -1i, Struct_2(vec2<i32>(-1i, -24584i), vec2<i32>(-18783i, 0i), -636f, vec4<i32>(-1568i, -1i, 52554i, i32(-2147483648)), Struct_1(655f, false, 0u, vec4<u32>(0u, 0u, 63159u, 77772u), vec3<bool>(false, false, false)))));

var<private> global2: u32 = 11577u;

var<private> global3: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(-370f, 361f, -901f), 20207i, 60672u, 0i, Struct_2(vec2<i32>(5115i, 2147483647i), vec2<i32>(31835i, 34026i), -121f, vec4<i32>(-8158i, -30806i, i32(-2147483648), 2147483647i), Struct_1(379f, true, 34184u, vec4<u32>(51714u, 1u, 24553u, 0u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(133f, 2978f, 1086f), 1i, 4294967295u, -9865i, Struct_2(vec2<i32>(-1014i, -1i), vec2<i32>(-1i, i32(-2147483648)), -843f, vec4<i32>(-1i, 2147483647i, 2147483647i, 13361i), Struct_1(-1027f, false, 18064u, vec4<u32>(1u, 17222u, 26209u, 3220u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(1561f, -951f, -756f), -23585i, 45763u, i32(-2147483648), Struct_2(vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 1i), 986f, vec4<i32>(1i, i32(-2147483648), -18465i, 1i), Struct_1(201f, false, 57526u, vec4<u32>(21927u, 1963u, 4696u, 40351u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(545f, 821f, 1000f), 62680i, 1u, 4217i, Struct_2(vec2<i32>(25111i, -35741i), vec2<i32>(41046i, 2147483647i), 320f, vec4<i32>(6357i, 1211i, 1i, 0i), Struct_1(-884f, false, 39837u, vec4<u32>(70774u, 0u, 30093u, 84096u), vec3<bool>(true, true, false)))), Struct_4(vec3<f32>(-1099f, 754f, -177f), 3490i, 0u, -1i, Struct_2(vec2<i32>(1i, -1i), vec2<i32>(-35550i, 0i), 1000f, vec4<i32>(2147483647i, -1i, 35718i, -33251i), Struct_1(-1000f, true, 68035u, vec4<u32>(4294967295u, 4294967295u, 19894u, 1u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(-506f, 826f, -376f), 1i, 0u, 2147483647i, Struct_2(vec2<i32>(1i, 2147483647i), vec2<i32>(25374i, 2147483647i), -1863f, vec4<i32>(-17201i, -19333i, 0i, 2147483647i), Struct_1(-528f, true, 10333u, vec4<u32>(4286u, 22907u, 161212u, 861u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(949f, 3069f, 1038f), 1i, 4294967295u, 17602i, Struct_2(vec2<i32>(-25540i, -1i), vec2<i32>(-19023i, i32(-2147483648)), -122f, vec4<i32>(-14903i, -43601i, i32(-2147483648), -19266i), Struct_1(-291f, false, 4294967295u, vec4<u32>(17815u, 4294967295u, 62153u, 4613u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-1113f, 936f, -2278f), -41079i, 0u, i32(-2147483648), Struct_2(vec2<i32>(-2500i, i32(-2147483648)), vec2<i32>(0i, -1i), -106f, vec4<i32>(0i, i32(-2147483648), 2147483647i, 0i), Struct_1(-246f, true, 39601u, vec4<u32>(0u, 0u, 4294967295u, 37677u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(345f, 1411f, 1368f), 28997i, 30109u, 1i, Struct_2(vec2<i32>(-42713i, i32(-2147483648)), vec2<i32>(44914i, i32(-2147483648)), -1032f, vec4<i32>(2147483647i, i32(-2147483648), -4592i, 0i), Struct_1(-316f, true, 59921u, vec4<u32>(4294967295u, 13653u, 50454u, 4294967295u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(1000f, -1183f, -1297f), -17299i, 73951u, 10931i, Struct_2(vec2<i32>(61800i, -20816i), vec2<i32>(-4642i, 1i), 101f, vec4<i32>(2147483647i, 1i, 2147483647i, 45256i), Struct_1(-1586f, true, 0u, vec4<u32>(1295u, 84420u, 1u, 1u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(296f, 1874f, 802f), 1i, 70539u, -1i, Struct_2(vec2<i32>(34178i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), -1734f, vec4<i32>(-9146i, -86431i, 25121i, i32(-2147483648)), Struct_1(1091f, true, 37962u, vec4<u32>(1u, 24757u, 42653u, 0u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(107f, -819f, 1686f), 2147483647i, 2720u, -46337i, Struct_2(vec2<i32>(66403i, 0i), vec2<i32>(-20995i, -1i), -2425f, vec4<i32>(1i, 1i, -32387i, i32(-2147483648)), Struct_1(1132f, true, 4294967295u, vec4<u32>(0u, 0u, 1398u, 1414u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-354f, 601f, 1201f), -1i, 67223u, 8378i, Struct_2(vec2<i32>(1i, 1i), vec2<i32>(-53022i, i32(-2147483648)), -552f, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 0i), Struct_1(-613f, false, 4294967295u, vec4<u32>(15167u, 30540u, 0u, 0u), vec3<bool>(true, true, false)))), Struct_4(vec3<f32>(321f, 234f, -1258f), 14980i, 0u, 1245i, Struct_2(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), -159f, vec4<i32>(398i, 12220i, 1i, -27545i), Struct_1(-1000f, false, 82088u, vec4<u32>(0u, 4294967295u, 36352u, 45713u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(-1182f, 1501f, 1161f), -21999i, 40882u, 35550i, Struct_2(vec2<i32>(9870i, 6868i), vec2<i32>(-5439i, 1i), -1406f, vec4<i32>(54296i, -20667i, -22470i, -6861i), Struct_1(648f, false, 1u, vec4<u32>(19u, 1u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(704f, -424f, -519f), 2147483647i, 35449u, 34839i, Struct_2(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 15514i), 160f, vec4<i32>(2147483647i, 2449i, -6820i, 48761i), Struct_1(130f, false, 1u, vec4<u32>(55016u, 26876u, 23384u, 28348u), vec3<bool>(true, true, true)))), Struct_4(vec3<f32>(-776f, 638f, -1000f), 2147483647i, 6711u, 41325i, Struct_2(vec2<i32>(9599i, 2147483647i), vec2<i32>(-12802i, 46963i), 2684f, vec4<i32>(-31980i, i32(-2147483648), 0i, 34093i), Struct_1(-657f, false, 102522u, vec4<u32>(4294967295u, 92055u, 29947u, 0u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(-1000f, -3443f, 752f), 0i, 24066u, -33606i, Struct_2(vec2<i32>(-1i, 25635i), vec2<i32>(-1i, 23285i), 1952f, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 48342i), Struct_1(428f, false, 47662u, vec4<u32>(23736u, 37921u, 10415u, 106236u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(-187f, -571f, -214f), 0i, 11253u, 2147483647i, Struct_2(vec2<i32>(2147483647i, 36024i), vec2<i32>(-1152i, i32(-2147483648)), 309f, vec4<i32>(-27137i, i32(-2147483648), 13109i, 2147483647i), Struct_1(1798f, false, 1544u, vec4<u32>(9231u, 0u, 0u, 1u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-477f, 941f, -257f), -1i, 20891u, 43773i, Struct_2(vec2<i32>(10747i, -1i), vec2<i32>(1i, i32(-2147483648)), -1655f, vec4<i32>(2147483647i, 0i, 5561i, -13653i), Struct_1(-483f, true, 6546u, vec4<u32>(28815u, 0u, 10421u, 1u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(-302f, 1000f, -1650f), 0i, 1u, -29408i, Struct_2(vec2<i32>(2147483647i, -19809i), vec2<i32>(49384i, -36155i), 910f, vec4<i32>(1i, -45854i, 1i, i32(-2147483648)), Struct_1(-1000f, true, 0u, vec4<u32>(1u, 85736u, 30328u, 34958u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-357f, -1279f, -428f), 0i, 1u, -1i, Struct_2(vec2<i32>(0i, -19216i), vec2<i32>(51184i, 23688i), 1964f, vec4<i32>(-1i, 1i, 17809i, 3951i), Struct_1(-799f, false, 4221u, vec4<u32>(1u, 22918u, 4294967295u, 32131u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-801f, -528f, -174f), 22375i, 2638u, 32761i, Struct_2(vec2<i32>(21559i, 44769i), vec2<i32>(36757i, 1i), -169f, vec4<i32>(i32(-2147483648), 1i, 2147483647i, -22174i), Struct_1(-1082f, true, 4294967295u, vec4<u32>(1u, 4294967295u, 4294967295u, 54161u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-1069f, 600f, 470f), 2820i, 38478u, 1i, Struct_2(vec2<i32>(15117i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 127f, vec4<i32>(48889i, 0i, i32(-2147483648), 2147483647i), Struct_1(-121f, false, 0u, vec4<u32>(34670u, 0u, 8652u, 39582u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-152f, -458f, -1000f), 4049i, 88426u, i32(-2147483648), Struct_2(vec2<i32>(-1i, -40421i), vec2<i32>(-1i, 32161i), 572f, vec4<i32>(-27283i, 0i, 2147483647i, 2147483647i), Struct_1(1604f, false, 104206u, vec4<u32>(69898u, 0u, 1u, 108988u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-2075f, -1640f, 405f), -30522i, 18508u, 0i, Struct_2(vec2<i32>(-1i, 28231i), vec2<i32>(1i, -7549i), 1115f, vec4<i32>(1i, -47936i, 52328i, 21586i), Struct_1(-530f, false, 8650u, vec4<u32>(91323u, 46168u, 21806u, 0u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(583f, -1190f, 1069f), 4787i, 8585u, 2147483647i, Struct_2(vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), -1454f, vec4<i32>(1i, -19098i, 53704i, 441i), Struct_1(826f, true, 1u, vec4<u32>(0u, 0u, 1u, 9432u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-1112f, -537f, 530f), 0i, 33894u, i32(-2147483648), Struct_2(vec2<i32>(i32(-2147483648), 20911i), vec2<i32>(45210i, -1i), -1070f, vec4<i32>(1i, 30564i, -14746i, -23526i), Struct_1(-406f, false, 0u, vec4<u32>(11928u, 4294967295u, 4038u, 117785u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(1265f, -753f, -1295f), 23277i, 0u, -13425i, Struct_2(vec2<i32>(0i, i32(-2147483648)), vec2<i32>(77212i, i32(-2147483648)), -1546f, vec4<i32>(1i, 0i, 1i, 0i), Struct_1(572f, false, 21473u, vec4<u32>(47248u, 25282u, 34917u, 26289u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(-1574f, 660f, 256f), -60775i, 945u, 2147483647i, Struct_2(vec2<i32>(46052i, -14985i), vec2<i32>(23653i, -884i), -1771f, vec4<i32>(1i, -14597i, -927i, 38127i), Struct_1(900f, false, 0u, vec4<u32>(36972u, 44109u, 3463u, 41643u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-739f, -810f, -526f), 0i, 57412u, 2147483647i, Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-21564i, 5433i), -256f, vec4<i32>(29965i, -55298i, 3808i, -41480i), Struct_1(-246f, true, 59330u, vec4<u32>(4294967295u, 1u, 53241u, 48930u), vec3<bool>(true, true, true)))), Struct_4(vec3<f32>(527f, -1245f, 2308f), 1i, 4294967295u, -35517i, Struct_2(vec2<i32>(-1i, -39517i), vec2<i32>(14201i, -56533i), 754f, vec4<i32>(-39720i, -45288i, i32(-2147483648), -1i), Struct_1(-324f, false, 20206u, vec4<u32>(61367u, 64945u, 25939u, 4294967295u), vec3<bool>(false, false, true)))));

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = reverseBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(firstLeadingBit(u_input.a), firstTrailingBit(u_input.b.x)), reverseBits(~(~vec2<i32>(1i, 2147483647i)))));
    let var_1 = global4.x;
    var var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(973f, 1099f))))))));
    global4 = !select(vec3<bool>(global4.x, true, true | !global4.x), vec3<bool>(false, global4.x, !global4.x), !vec3<bool>(global4.x && false, false, true));
    return vec3<i32>(select(-(u_input.c.x >> (arg_0.x % 32u)), -1i, global4.x), u_input.c.x, ~_wgslsmith_sub_i32(~global0.x, global0.x) | -firstTrailingBit(u_input.c.x));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = vec4<u32>(31842u, 1u, 123359u, 1u);
    global3 = array<Struct_4, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049f, _wgslsmith_f_op_f32(exp2(arg_0))));
    return vec3<i32>(-22200i, u_input.b.x, 2147483647i) ^ _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(func_3(vec2<u32>(arg_3.x, 1u)), _wgslsmith_add_vec3_i32(vec3<i32>(8458i, global0.x, -1i), vec3<i32>(26811i, global0.x, global0.x)), !vec3<bool>(global4.x, true, arg_2)), ~vec3<i32>(-2771i, global0.x, -1i) | vec3<i32>(global0.x, 62597i, 2147483647i)), vec3<i32>(~min(u_input.c.x, -7352i), u_input.b.x, 0i | global0.x));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_5(Struct_2(-(select(u_input.b, u_input.b, false) ^ (vec2<i32>(u_input.b.x, 1i) >> (vec2<u32>(51855u, 88870u) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(-27121i, -14471i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 2147483647i), u_input.c)), 667f, countOneBits(vec4<i32>(u_input.a, global0.x, global0.x, -2147483647i)) ^ vec4<i32>(-u_input.c.x, reverseBits(-13559i), global0.x, -2147483647i), Struct_1(-718f, arg_0.x, 68559u, vec4<u32>(_wgslsmith_mult_u32(83040u, 27659u), 4294967295u, 0u, _wgslsmith_mod_u32(62625u, 3816u)), select(!vec3<bool>(global4.x, true, arg_0.x), !vec3<bool>(false, true, global4.x), 0i <= global0.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)) + _wgslsmith_f_op_f32(trunc(-432f))), _wgslsmith_mult_u32(87681u, ~4294967295u) > ~select(51891u, 111222u, arg_0.x), 45897u, abs(vec4<u32>(abs(4294967295u), 1u, ~53004u, firstLeadingBit(59514u))), !vec3<bool>(any(vec3<bool>(arg_0.x, true, global4.x)), !global4.x, true)), -799f);
    let var_1 = var_0.c;
    global0 = vec2<i32>(-_wgslsmith_dot_vec3_i32(var_0.a.d.xww, func_2(var_1, 70813u, global4.x, vec2<u32>(16877u, var_0.b.d.x)) & (vec3<i32>(-2147483647i, var_0.a.b.x, u_input.b.x) | var_0.a.d.wwy)), -1i);
    global0 = select(_wgslsmith_add_vec2_i32(-(vec2<i32>(global0.x, var_0.a.a.x) >> (~var_0.b.d.yx % vec2<u32>(32u))), ~vec2<i32>(-48292i, -41687i) ^ vec2<i32>(_wgslsmith_add_i32(47333i, 9676i), _wgslsmith_mod_i32(38841i, var_0.a.b.x))), var_0.a.a, global4.x);
    var var_2 = var_0.a.e.d.x;
    return abs(var_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-15393i, ~global0.x ^ abs(u_input.a), 22309i & -func_1(vec2<bool>(global4.x, true)));
    global2 = ~1u;
    var var_1 = true;
    let var_2 = global4.x;
    var_1 = abs(~3589u) >= select(4294967295u, 1u, !global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(413f * _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1270f + _wgslsmith_f_op_f32(sign(374f))))), -vec2<i32>(-1i, func_2(_wgslsmith_f_op_f32(114f + 1355f), ~5819u, true, ~vec2<u32>(4294967295u, 37683u)).x), ~_wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(17404u, 0u, 4294967295u, 35257u), vec4<u32>(0u, 1u, 29772u, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(96868u, 0u, 0u, 13960u), vec4<u32>(1u, 1u, 1u, 1u))));
}

