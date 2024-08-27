struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(Struct_1(vec3<f32>(146f, 1235f, 1144f), vec2<i32>(i32(-2147483648), 13886i), vec2<bool>(true, false)), 2147483647i, 4294967295u, vec3<i32>(i32(-2147483648), -1i, -10921i)), true, Struct_3(vec4<i32>(2147483647i, 1i, 8468i, 1i), vec2<f32>(-942f, -229f), Struct_2(Struct_1(vec3<f32>(337f, 557f, 1000f), vec2<i32>(2147483647i, 1i), vec2<bool>(true, false)), 0i, 18468u, vec3<i32>(0i, i32(-2147483648), -30171i)), 57952i), Struct_1(vec3<f32>(1182f, -2206f, -1646f), vec2<i32>(0i, -24961i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(-485f, 324f, -938f), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, true)), -28731i, 4294967295u, vec3<i32>(-6947i, i32(-2147483648), 1i)), false, Struct_3(vec4<i32>(-11948i, 55779i, 14800i, 0i), vec2<f32>(2127f, -2293f), Struct_2(Struct_1(vec3<f32>(-2335f, 362f, 663f), vec2<i32>(-34966i, 2147483647i), vec2<bool>(true, false)), i32(-2147483648), 68751u, vec3<i32>(-1i, 3331i, -1i)), 26157i), Struct_1(vec3<f32>(1009f, 1575f, -1295f), vec2<i32>(0i, -10721i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(-592f, -695f, -1950f), vec2<i32>(1i, 35373i), vec2<bool>(true, false)), 2147483647i, 101975u, vec3<i32>(1i, 34892i, i32(-2147483648))), false, Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -13779i), vec2<f32>(1064f, 290f), Struct_2(Struct_1(vec3<f32>(564f, -1176f, 160f), vec2<i32>(-15368i, 2147483647i), vec2<bool>(false, true)), 0i, 55931u, vec3<i32>(1i, -24383i, 0i)), 0i), Struct_1(vec3<f32>(-522f, 437f, -473f), vec2<i32>(-17311i, i32(-2147483648)), vec2<bool>(true, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-1281f, -1000f, -192f), vec2<i32>(1i, 0i), vec2<bool>(true, true)), 1i, 61247u, vec3<i32>(1i, -41277i, 72786i)), false, Struct_3(vec4<i32>(-1i, -15537i, 2147483647i, 7821i), vec2<f32>(-802f, -1585f), Struct_2(Struct_1(vec3<f32>(-2211f, 411f, -603f), vec2<i32>(2147483647i, 33956i), vec2<bool>(true, true)), i32(-2147483648), 59636u, vec3<i32>(-82936i, 2147483647i, -13781i)), 1i), Struct_1(vec3<f32>(-1401f, -548f, -815f), vec2<i32>(44526i, i32(-2147483648)), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-621f, -1000f, 635f), vec2<i32>(44825i, -1i), vec2<bool>(false, true)), -37461i, 62547u, vec3<i32>(i32(-2147483648), 54948i, i32(-2147483648))), false, Struct_3(vec4<i32>(1i, -28348i, -15150i, -13632i), vec2<f32>(722f, 183f), Struct_2(Struct_1(vec3<f32>(-104f, 179f, -546f), vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(true, true)), -5221i, 0u, vec3<i32>(2147483647i, 2147483647i, -17176i)), 20690i), Struct_1(vec3<f32>(-1024f, -1809f, 1516f), vec2<i32>(3464i, -71357i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(1000f, -320f, 405f), vec2<i32>(-87817i, i32(-2147483648)), vec2<bool>(true, true)), -43553i, 4294967295u, vec3<i32>(-7887i, 2147483647i, 1i)), true, Struct_3(vec4<i32>(7998i, 8208i, i32(-2147483648), i32(-2147483648)), vec2<f32>(1594f, 849f), Struct_2(Struct_1(vec3<f32>(-428f, -280f, 641f), vec2<i32>(1i, 40409i), vec2<bool>(true, false)), 2147483647i, 1u, vec3<i32>(-60964i, 2147483647i, -31187i)), -17880i), Struct_1(vec3<f32>(-1461f, -1000f, -789f), vec2<i32>(15772i, -60710i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(-1031f, 2691f, 1000f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false)), 2147483647i, 0u, vec3<i32>(-1i, 23890i, -26303i)), true, Struct_3(vec4<i32>(36882i, 25483i, 2147483647i, 82909i), vec2<f32>(365f, 1000f), Struct_2(Struct_1(vec3<f32>(1234f, 918f, -2220f), vec2<i32>(-1792i, 6161i), vec2<bool>(true, false)), 2147483647i, 56023u, vec3<i32>(i32(-2147483648), 8361i, 2147483647i)), 0i), Struct_1(vec3<f32>(633f, -843f, 1279f), vec2<i32>(5204i, -43750i), vec2<bool>(true, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-1292f, 1000f, -520f), vec2<i32>(10287i, 2147483647i), vec2<bool>(true, false)), 2147483647i, 42930u, vec3<i32>(0i, 25826i, -4184i)), true, Struct_3(vec4<i32>(-30187i, -1i, -1i, -23526i), vec2<f32>(191f, -471f), Struct_2(Struct_1(vec3<f32>(1000f, -729f, 551f), vec2<i32>(20996i, 13316i), vec2<bool>(true, true)), 2147483647i, 4294967295u, vec3<i32>(-1845i, 0i, -49223i)), 25408i), Struct_1(vec3<f32>(353f, 961f, 374f), vec2<i32>(1i, -17166i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-1176f, 1860f, 199f), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false)), -1i, 1u, vec3<i32>(1i, i32(-2147483648), 35241i)), false, Struct_3(vec4<i32>(16861i, -11181i, 2147483647i, 43353i), vec2<f32>(-2983f, -1654f), Struct_2(Struct_1(vec3<f32>(154f, -145f, -1000f), vec2<i32>(12742i, -1i), vec2<bool>(true, false)), -1i, 0u, vec3<i32>(3110i, 2147483647i, -21745i)), 0i), Struct_1(vec3<f32>(404f, 205f, -447f), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-369f, -1000f, -902f), vec2<i32>(32658i, 1i), vec2<bool>(true, false)), -1i, 4294967295u, vec3<i32>(0i, -21334i, -24494i)), false, Struct_3(vec4<i32>(2147483647i, i32(-2147483648), -36917i, 0i), vec2<f32>(576f, 241f), Struct_2(Struct_1(vec3<f32>(198f, -521f, 618f), vec2<i32>(-1692i, 26247i), vec2<bool>(false, false)), i32(-2147483648), 4294967295u, vec3<i32>(5054i, -729i, 12558i)), -1i), Struct_1(vec3<f32>(-346f, 1696f, -1637f), vec2<i32>(-27856i, -1i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(750f, 943f, 1000f), vec2<i32>(-29679i, 2147483647i), vec2<bool>(true, false)), 2147483647i, 1u, vec3<i32>(7800i, 2147483647i, 0i)), false, Struct_3(vec4<i32>(2147483647i, 26933i, -2002i, 33539i), vec2<f32>(601f, 239f), Struct_2(Struct_1(vec3<f32>(-328f, -529f, -475f), vec2<i32>(0i, 1i), vec2<bool>(false, true)), 1i, 61457u, vec3<i32>(0i, 2147483647i, -3467i)), 24346i), Struct_1(vec3<f32>(858f, 395f, -650f), vec2<i32>(6401i, -11209i), vec2<bool>(true, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(262f, -1000f, -1000f), vec2<i32>(1i, 2147483647i), vec2<bool>(true, true)), 23044i, 50330u, vec3<i32>(i32(-2147483648), i32(-2147483648), -15420i)), true, Struct_3(vec4<i32>(41239i, 20203i, 1i, i32(-2147483648)), vec2<f32>(1176f, 402f), Struct_2(Struct_1(vec3<f32>(301f, 1339f, 258f), vec2<i32>(-4740i, 41773i), vec2<bool>(false, true)), 7972i, 4294967295u, vec3<i32>(0i, 19277i, -1i)), 2147483647i), Struct_1(vec3<f32>(-1000f, -1104f, 580f), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(1100f, -1398f, 1430f), vec2<i32>(-53349i, i32(-2147483648)), vec2<bool>(true, false)), 47367i, 4294967295u, vec3<i32>(90156i, 2147483647i, 21236i)), false, Struct_3(vec4<i32>(-1i, 34962i, i32(-2147483648), -1i), vec2<f32>(562f, -520f), Struct_2(Struct_1(vec3<f32>(-1000f, -410f, -1000f), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(true, false)), 2147483647i, 55635u, vec3<i32>(24318i, 1i, 40505i)), 2147483647i), Struct_1(vec3<f32>(-1239f, -2065f, 665f), vec2<i32>(-17588i, 1i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(131f, 1459f, 303f), vec2<i32>(6695i, -20949i), vec2<bool>(true, true)), 38585i, 0u, vec3<i32>(0i, 8122i, 16525i)), true, Struct_3(vec4<i32>(1i, -246i, 1i, 2147483647i), vec2<f32>(901f, -2226f), Struct_2(Struct_1(vec3<f32>(116f, 1162f, -1305f), vec2<i32>(-25466i, 67450i), vec2<bool>(true, false)), i32(-2147483648), 0u, vec3<i32>(-1i, 0i, 1i)), -1i), Struct_1(vec3<f32>(-1048f, 522f, 596f), vec2<i32>(324i, -1244i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-110f, 1634f, -569f), vec2<i32>(-30409i, -1i), vec2<bool>(false, true)), 1i, 4294967295u, vec3<i32>(-29843i, 2147483647i, -1i)), true, Struct_3(vec4<i32>(1883i, 19184i, 43183i, i32(-2147483648)), vec2<f32>(-1258f, -854f), Struct_2(Struct_1(vec3<f32>(706f, -567f, -192f), vec2<i32>(21930i, 0i), vec2<bool>(false, true)), 4688i, 4294967295u, vec3<i32>(i32(-2147483648), 0i, -1i)), 1i), Struct_1(vec3<f32>(2193f, -460f, 1369f), vec2<i32>(i32(-2147483648), 1i), vec2<bool>(true, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(236f, -708f, 190f), vec2<i32>(0i, -1i), vec2<bool>(false, true)), 36337i, 0u, vec3<i32>(i32(-2147483648), 22389i, i32(-2147483648))), true, Struct_3(vec4<i32>(-79067i, 22965i, -25462i, -708i), vec2<f32>(409f, -518f), Struct_2(Struct_1(vec3<f32>(1413f, -750f, 1540f), vec2<i32>(-1i, 0i), vec2<bool>(false, true)), 1275i, 4294967295u, vec3<i32>(891i, 0i, 3636i)), 58749i), Struct_1(vec3<f32>(-1208f, 1506f, -1293f), vec2<i32>(-40768i, 2147483647i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(1000f, -169f, 119f), vec2<i32>(-1i, 10726i), vec2<bool>(false, false)), 1645i, 4294967295u, vec3<i32>(-61368i, i32(-2147483648), -10557i)), false, Struct_3(vec4<i32>(i32(-2147483648), 4047i, -1233i, -19225i), vec2<f32>(130f, -577f), Struct_2(Struct_1(vec3<f32>(-992f, -1048f, -261f), vec2<i32>(20083i, 26873i), vec2<bool>(true, true)), -29049i, 42598u, vec3<i32>(38192i, 2147483647i, 45932i)), -51423i), Struct_1(vec3<f32>(-698f, -951f, 119f), vec2<i32>(i32(-2147483648), -30713i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(-783f, 178f, 806f), vec2<i32>(-47165i, 0i), vec2<bool>(false, true)), -32658i, 1u, vec3<i32>(63829i, 1i, 1i)), false, Struct_3(vec4<i32>(2147483647i, -2224i, i32(-2147483648), 1i), vec2<f32>(-212f, 1000f), Struct_2(Struct_1(vec3<f32>(1000f, -1562f, -478f), vec2<i32>(i32(-2147483648), 4036i), vec2<bool>(false, true)), 2147483647i, 1u, vec3<i32>(-26440i, 0i, 19485i)), 0i), Struct_1(vec3<f32>(323f, -1644f, -444f), vec2<i32>(2147483647i, 1i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(331f, 400f, 1000f), vec2<i32>(29764i, 9511i), vec2<bool>(true, true)), 0i, 35652u, vec3<i32>(22964i, 2147483647i, 2147483647i)), true, Struct_3(vec4<i32>(2147483647i, i32(-2147483648), -15103i, i32(-2147483648)), vec2<f32>(458f, -890f), Struct_2(Struct_1(vec3<f32>(2489f, -113f, -993f), vec2<i32>(-26504i, 6883i), vec2<bool>(true, true)), 21222i, 103446u, vec3<i32>(i32(-2147483648), 2769i, 0i)), 32683i), Struct_1(vec3<f32>(-328f, 497f, 1270f), vec2<i32>(-10356i, -1i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(254f, 1508f, 780f), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, true)), -1i, 36556u, vec3<i32>(-20528i, -9212i, 16482i)), false, Struct_3(vec4<i32>(-35836i, -13262i, 31945i, -26407i), vec2<f32>(-739f, 1551f), Struct_2(Struct_1(vec3<f32>(647f, 970f, 1156f), vec2<i32>(-4133i, 13838i), vec2<bool>(false, false)), -42626i, 4294967295u, vec3<i32>(2147483647i, -32160i, 25533i)), 0i), Struct_1(vec3<f32>(-1254f, -1828f, 486f), vec2<i32>(-1i, 27382i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-441f, -1809f, -426f), vec2<i32>(9088i, i32(-2147483648)), vec2<bool>(false, true)), 42500i, 4294967295u, vec3<i32>(2147483647i, 19809i, 1i)), false, Struct_3(vec4<i32>(-1i, i32(-2147483648), 22270i, 50742i), vec2<f32>(-872f, 860f), Struct_2(Struct_1(vec3<f32>(679f, -2310f, -435f), vec2<i32>(1i, 1i), vec2<bool>(true, true)), 0i, 0u, vec3<i32>(-21584i, 52465i, 2147483647i)), 2147483647i), Struct_1(vec3<f32>(858f, -1000f, -164f), vec2<i32>(-33076i, -21614i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(-794f, 646f, 1121f), vec2<i32>(-8616i, 81482i), vec2<bool>(false, true)), 60216i, 4294967295u, vec3<i32>(2147483647i, -1i, 4035i)), true, Struct_3(vec4<i32>(1i, i32(-2147483648), 2147483647i, -36311i), vec2<f32>(944f, 1359f), Struct_2(Struct_1(vec3<f32>(558f, -1172f, 581f), vec2<i32>(18017i, 183i), vec2<bool>(false, true)), 0i, 4294967295u, vec3<i32>(-39657i, i32(-2147483648), -31313i)), -17529i), Struct_1(vec3<f32>(1000f, -191f, -1352f), vec2<i32>(0i, -27058i), vec2<bool>(false, false))), Struct_4(Struct_2(Struct_1(vec3<f32>(954f, 641f, 398f), vec2<i32>(-54043i, -30207i), vec2<bool>(false, true)), i32(-2147483648), 59529u, vec3<i32>(-477i, 18821i, -78724i)), true, Struct_3(vec4<i32>(1i, 44228i, 2147483647i, -58161i), vec2<f32>(847f, -1654f), Struct_2(Struct_1(vec3<f32>(-975f, 569f, 635f), vec2<i32>(-34055i, i32(-2147483648)), vec2<bool>(false, true)), -25335i, 76898u, vec3<i32>(22824i, 2966i, 0i)), 2147483647i), Struct_1(vec3<f32>(128f, 170f, 1392f), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(-1004f, -1161f, -1516f), vec2<i32>(29511i, i32(-2147483648)), vec2<bool>(false, false)), i32(-2147483648), 1u, vec3<i32>(2147483647i, 0i, -1i)), false, Struct_3(vec4<i32>(2147483647i, 1i, 1i, 2939i), vec2<f32>(651f, 249f), Struct_2(Struct_1(vec3<f32>(118f, 1127f, -1000f), vec2<i32>(-30025i, 16126i), vec2<bool>(false, false)), -1i, 1u, vec3<i32>(-24772i, i32(-2147483648), -69213i)), i32(-2147483648)), Struct_1(vec3<f32>(-976f, 916f, -356f), vec2<i32>(0i, -56902i), vec2<bool>(true, true))), Struct_4(Struct_2(Struct_1(vec3<f32>(-916f, -752f, 260f), vec2<i32>(2147483647i, 22984i), vec2<bool>(true, true)), i32(-2147483648), 1u, vec3<i32>(34039i, -1i, 1i)), false, Struct_3(vec4<i32>(0i, 2147483647i, i32(-2147483648), 3377i), vec2<f32>(273f, -200f), Struct_2(Struct_1(vec3<f32>(-1055f, 1536f, -418f), vec2<i32>(15478i, 0i), vec2<bool>(false, true)), 1i, 0u, vec3<i32>(0i, 2147483647i, -5426i)), 6635i), Struct_1(vec3<f32>(-900f, -203f, 491f), vec2<i32>(31409i, 13566i), vec2<bool>(false, true))));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec2<bool> {
    global2 = array<Struct_4, 25>();
    global2 = array<Struct_4, 25>();
    var var_0 = Struct_5(arg_0, arg_0, vec3<i32>(2147483647i, _wgslsmith_div_i32(-(~u_input.c.x), 1i), u_input.b), u_input.d.wy);
    let var_1 = vec2<bool>(all(vec3<bool>(var_0.b.a.c.x, u_input.d.x >= u_input.e.x, global0.a.c.x)), true);
    let var_2 = select(select(vec3<bool>(var_0.a.a.c.x, true, !(var_0.a.a.c.x || false)), vec3<bool>(arg_0.a.c.x, select(global0.a.c.x, arg_0.a.c.x, false) | all(vec3<bool>(arg_0.a.c.x, var_0.b.a.c.x, false)), true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, true, true), vec3<bool>(true, global0.a.c.x, true)), vec3<bool>(true, false, false), vec3<bool>(arg_0.a.c.x, true, global0.a.c.x)))), vec3<bool>(var_0.a.a.c.x, all(vec4<bool>(any(vec4<bool>(global0.a.c.x, true, true, false)), false, var_0.c.x > -18476i, false)), any(vec2<bool>(var_1.x, true))), any(!(!vec4<bool>(var_0.a.a.c.x, true, false, true))));
    return var_1;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_3(~(-(~vec4<i32>(global0.b, -2147483647i, global0.b, u_input.c.x))), _wgslsmith_f_op_vec2_f32(arg_0.xy + global0.a.a.yx), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0), select(vec2<i32>(2079i, u_input.a), -vec2<i32>(global0.b, u_input.a), !global0.a.c), func_3(Struct_2(global0.a, u_input.c.x, 67041u, vec3<i32>(4671i, 52589i, -2814i)), firstLeadingBit(global0.c), global0.b)), u_input.c.x, 36311u, ~(~select(vec3<i32>(global0.d.x, u_input.b, global0.a.b.x), global0.d, vec3<bool>(global0.a.c.x, global0.a.c.x, global0.a.c.x)))), u_input.a >> (0u % 32u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global0.a.a.x)), -1482f, _wgslsmith_f_op_f32(1000f - arg_0.x))), -vec2<i32>(-1947i, var_0.d) | global0.a.b, select(global0.a.c, select(vec2<bool>(false, true), vec2<bool>(false, false), global0.a.c.x), true)), _wgslsmith_sub_i32(u_input.a, var_0.a.x), _wgslsmith_clamp_u32(var_0.c.c, _wgslsmith_mod_u32(~abs(global0.c), ~57182u), countOneBits(85576u)), countOneBits(global0.d));
    var var_2 = var_0.c.a.c.x;
    var var_3 = Struct_3(~abs(min(var_0.a, var_0.a) | _wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.x, global0.a.b.x, -1i, 0i), vec4<i32>(-2147483647i, 16792i, global0.b, var_1.a.b.x))), var_0.c.a.a.xz, Struct_2(var_1.a, -_wgslsmith_add_i32(reverseBits(0i), -12466i), ~select(min(1u, 56622u), ~81775u, var_1.a.c.x), firstLeadingBit(firstLeadingBit(select(vec3<i32>(-9950i, global0.d.x, -34518i), vec3<i32>(var_1.b, 1i, -1i), vec3<bool>(global0.a.c.x, true, var_0.c.a.c.x))))), firstLeadingBit(2147483647i));
    let var_4 = global2[_wgslsmith_index_u32((~26052u & var_3.c.c) | (_wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_1.c), ~var_1.c), countOneBits(vec2<u32>(var_0.c.c, 18355u))) | countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(28556u, 5280u), ~67834u))), 25u)];
    return Struct_2(var_0.c.a, var_4.d.b.x, var_1.c, ~min(~global0.d, ~vec3<i32>(u_input.c.x, var_1.a.b.x, -30628i)) << (u_input.d.yzw % vec3<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> vec2<i32> {
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - -298f), 1573f, -835f));
    var var_0 = Struct_3(min(select(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -9672i, -21245i, 0i), vec4<i32>(2147483647i, 1i, -11649i, arg_0)), vec4<i32>(-47781i, 6938i, 34457i, 0i), global0.a.c.x), vec4<i32>(u_input.a, global0.a.b.x & u_input.b, global0.b, -arg_0), all(global0.a.c)), -vec4<i32>(-2147483647i, arg_0 | -17184i, 22884i, -7023i)), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(select(global0.a.a.x, _wgslsmith_f_op_f32(-arg_1.x), global0.a.c.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, arg_1.x, -1000f) - global0.a.a)), abs(~global0.d.yz), !func_3(Struct_2(global0.a, 27528i, 30398u, global0.d), 1u, u_input.a)), -arg_0, (global0.c << (4294967295u % 32u)) ^ (abs(84565u) | ~u_input.e.x), ~global0.d), u_input.c.x);
    return (func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-391f, global0.a.a.x, -1417f), _wgslsmith_f_op_vec3_f32(step(var_0.c.a.a, global0.a.a)), !vec3<bool>(var_0.c.a.c.x, global0.a.c.x, global0.a.c.x)))).a.b | ~vec2<i32>(u_input.b, countOneBits(-24819i))) & (var_0.c.d.xx << (countOneBits(vec2<u32>(countOneBits(u_input.d.x), 90745u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(global0.a.a.zz, global0.a.a.zz, !select(!global0.a.c, select(vec2<bool>(true, global0.a.c.x), global0.a.c, !global0.a.c.x), !global0.a.c)));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xx, u_input.e), u_input.e);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(global0.a.a, vec3<f32>(global0.a.a.x, var_0.x, global0.a.a.x))))) * global0.a.a), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(func_1(-2147483647i, global0.a.a.zx), global0.d.xy, u_input.c), vec2<i32>(max(-47846i, u_input.b), abs(18806i))), vec2<bool>(!global0.a.c.x, global0.a.c.x)), ~(firstLeadingBit(~u_input.a) & global0.d.x), abs(abs(firstTrailingBit(4952u))), _wgslsmith_mult_vec3_i32(global0.d, vec3<i32>(37535i, global0.b, global0.b << (_wgslsmith_div_u32(u_input.e.x, global0.c) % 32u))));
    global1 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, _wgslsmith_f_op_f32(-var_0.x), -371f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global0.a.a.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a.x, 825f) + vec2<f32>(var_0.x, -328f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global0.a.a.zy, vec2<f32>(962f, var_0.x), global0.a.c))))))), -715f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, -396f, var_0.x, -688f))))))));
}

