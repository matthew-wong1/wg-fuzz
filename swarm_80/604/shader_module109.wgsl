struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-398f, vec4<u32>(76534u, 34455u, 1u, 0u), 10318u, 275f, vec4<u32>(4294967295u, 1u, 19119u, 0u)), Struct_1(-238f, vec4<u32>(4294967295u, 0u, 56586u, 0u), 4294967295u, -527f, vec4<u32>(13250u, 1u, 1u, 55003u)), 606f, vec2<f32>(213f, 741f), Struct_1(757f, vec4<u32>(1u, 48930u, 26735u, 1u), 0u, 1512f, vec4<u32>(1u, 41771u, 4294967295u, 1u)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 34766u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(59842u, 15277u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1020u, 87636u), vec2<u32>(12133u, 1u), vec2<u32>(45150u, 0u), vec2<u32>(42139u, 4294967295u), vec2<u32>(1u, 25142u), vec2<u32>(25226u, 2970u), vec2<u32>(7407u, 44348u), vec2<u32>(3034u, 4294967295u));

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(-511f, vec4<u32>(4294967295u, 37881u, 0u, 1u), 4294967295u, 1070f, vec4<u32>(4294967295u, 0u, 14000u, 0u)), Struct_1(1288f, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 4294967295u, -1757f, vec4<u32>(48031u, 79905u, 38042u, 61718u)), 437f, vec2<f32>(1000f, 1262f), Struct_1(-411f, vec4<u32>(26692u, 1u, 42974u, 7216u), 4294967295u, -660f, vec4<u32>(4471u, 0u, 11479u, 1u))), Struct_2(Struct_1(-1329f, vec4<u32>(4294967295u, 1u, 0u, 70978u), 4294967295u, 370f, vec4<u32>(37327u, 1u, 4294967295u, 12139u)), Struct_1(967f, vec4<u32>(51357u, 41225u, 39237u, 36072u), 74492u, 447f, vec4<u32>(42043u, 1u, 1u, 104152u)), -1831f, vec2<f32>(-130f, 339f), Struct_1(373f, vec4<u32>(56897u, 92629u, 0u, 1u), 0u, -1180f, vec4<u32>(4294967295u, 0u, 4294967295u, 13120u))), Struct_2(Struct_1(476f, vec4<u32>(1u, 69483u, 22677u, 29707u), 169u, 644f, vec4<u32>(1u, 15767u, 1u, 4294967295u)), Struct_1(-1033f, vec4<u32>(0u, 1u, 4294967295u, 75000u), 54363u, 1219f, vec4<u32>(4294967295u, 1u, 90471u, 56824u)), -145f, vec2<f32>(364f, 1000f), Struct_1(-115f, vec4<u32>(4294967295u, 4233u, 1u, 38986u), 4294967295u, -106f, vec4<u32>(4294967295u, 48448u, 39442u, 19290u))), Struct_2(Struct_1(836f, vec4<u32>(30813u, 1131u, 1u, 0u), 4294967295u, 424f, vec4<u32>(17723u, 68007u, 0u, 328u)), Struct_1(756f, vec4<u32>(0u, 1u, 10992u, 4294967295u), 1u, 2001f, vec4<u32>(49852u, 44245u, 11781u, 1u)), -901f, vec2<f32>(340f, 912f), Struct_1(-959f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 74213u), 0u, 452f, vec4<u32>(4294967295u, 4294967295u, 11930u, 38493u))), Struct_2(Struct_1(-188f, vec4<u32>(0u, 0u, 12186u, 45506u), 0u, 1702f, vec4<u32>(24190u, 1u, 4294967295u, 0u)), Struct_1(-971f, vec4<u32>(19690u, 0u, 17300u, 32608u), 1u, 1000f, vec4<u32>(0u, 0u, 40995u, 4294967295u)), -1194f, vec2<f32>(-1382f, -208f), Struct_1(765f, vec4<u32>(0u, 4294967295u, 8255u, 1u), 9346u, -2323f, vec4<u32>(1u, 3777u, 1482u, 4294967295u))), Struct_2(Struct_1(-647f, vec4<u32>(28656u, 4294967295u, 73662u, 20269u), 0u, 1000f, vec4<u32>(36505u, 0u, 0u, 1u)), Struct_1(974f, vec4<u32>(24503u, 4294967295u, 20232u, 0u), 51129u, 339f, vec4<u32>(34155u, 4294967295u, 64639u, 1u)), -1297f, vec2<f32>(-1293f, 809f), Struct_1(-1425f, vec4<u32>(4294967295u, 0u, 1u, 48174u), 36878u, -2115f, vec4<u32>(50815u, 57573u, 27501u, 0u))), Struct_2(Struct_1(-1761f, vec4<u32>(15666u, 5823u, 4294967295u, 17238u), 1u, 902f, vec4<u32>(0u, 31674u, 14162u, 0u)), Struct_1(-459f, vec4<u32>(39060u, 15085u, 48457u, 1u), 12082u, 968f, vec4<u32>(4294967295u, 1u, 1u, 20682u)), 687f, vec2<f32>(1378f, -944f), Struct_1(-1774f, vec4<u32>(0u, 111420u, 0u, 19006u), 87839u, 1781f, vec4<u32>(4294967295u, 18265u, 0u, 4294967295u))), Struct_2(Struct_1(-282f, vec4<u32>(13314u, 122582u, 1u, 1u), 28473u, -1001f, vec4<u32>(0u, 33816u, 4350u, 33115u)), Struct_1(-308f, vec4<u32>(26712u, 1052u, 0u, 0u), 45345u, -467f, vec4<u32>(17601u, 6513u, 4294967295u, 1u)), 1496f, vec2<f32>(1291f, 318f), Struct_1(-661f, vec4<u32>(96829u, 23019u, 85179u, 32404u), 4294967295u, 440f, vec4<u32>(4294967295u, 0u, 0u, 0u))), Struct_2(Struct_1(-149f, vec4<u32>(44624u, 1u, 57348u, 20561u), 0u, -446f, vec4<u32>(61546u, 12309u, 4294967295u, 46428u)), Struct_1(-685f, vec4<u32>(48289u, 1u, 1u, 4294967295u), 1u, 1091f, vec4<u32>(4294967295u, 0u, 39221u, 11740u)), 1007f, vec2<f32>(-1296f, 1083f), Struct_1(383f, vec4<u32>(41306u, 1u, 68116u, 48121u), 7661u, -2107f, vec4<u32>(86604u, 13698u, 4294967295u, 1u))), Struct_2(Struct_1(-589f, vec4<u32>(4294967295u, 65999u, 14238u, 35836u), 12739u, 349f, vec4<u32>(0u, 1u, 1u, 77112u)), Struct_1(-877f, vec4<u32>(1u, 0u, 16710u, 10944u), 1u, -796f, vec4<u32>(4891u, 1u, 1u, 22339u)), -149f, vec2<f32>(-1000f, -2022f), Struct_1(724f, vec4<u32>(0u, 7457u, 1u, 34564u), 22700u, 341f, vec4<u32>(1u, 5351u, 4294967295u, 1u))), Struct_2(Struct_1(-598f, vec4<u32>(0u, 35527u, 4294967295u, 0u), 4294967295u, -309f, vec4<u32>(4294967295u, 4294967295u, 11700u, 1u)), Struct_1(-1469f, vec4<u32>(12194u, 50979u, 4294967295u, 4294967295u), 0u, 331f, vec4<u32>(4294967295u, 26165u, 0u, 50762u)), 247f, vec2<f32>(876f, 643f), Struct_1(-3688f, vec4<u32>(65805u, 4294967295u, 1u, 0u), 1u, 875f, vec4<u32>(34783u, 23582u, 4294967295u, 17830u))), Struct_2(Struct_1(-317f, vec4<u32>(42330u, 59293u, 509u, 4294967295u), 16339u, -1793f, vec4<u32>(30629u, 83463u, 45213u, 1u)), Struct_1(996f, vec4<u32>(4294967295u, 4294967295u, 13927u, 4294967295u), 1u, 1049f, vec4<u32>(41813u, 19339u, 7896u, 4294967295u)), -1117f, vec2<f32>(-928f, 654f), Struct_1(-541f, vec4<u32>(1u, 0u, 8320u, 4294967295u), 50017u, -1680f, vec4<u32>(1u, 13018u, 88256u, 1u))), Struct_2(Struct_1(119f, vec4<u32>(81801u, 4294967295u, 4294967295u, 1422u), 0u, 1022f, vec4<u32>(92714u, 90856u, 0u, 75475u)), Struct_1(1144f, vec4<u32>(29948u, 39085u, 29439u, 1u), 16640u, -1091f, vec4<u32>(0u, 9955u, 0u, 0u)), 856f, vec2<f32>(-953f, -897f), Struct_1(-436f, vec4<u32>(42907u, 0u, 0u, 4294967295u), 1u, 209f, vec4<u32>(4294967295u, 0u, 1u, 1u))), Struct_2(Struct_1(-1000f, vec4<u32>(5217u, 0u, 0u, 1u), 56238u, -191f, vec4<u32>(14395u, 1u, 16179u, 12430u)), Struct_1(196f, vec4<u32>(0u, 44593u, 4294967295u, 1045u), 4885u, 988f, vec4<u32>(1u, 56251u, 0u, 36343u)), 250f, vec2<f32>(-1407f, -1162f), Struct_1(2916f, vec4<u32>(1423u, 4294967295u, 1u, 39231u), 4294967295u, 191f, vec4<u32>(0u, 48771u, 4294967295u, 0u))), Struct_2(Struct_1(-613f, vec4<u32>(52670u, 74608u, 0u, 0u), 69407u, 1364f, vec4<u32>(4294967295u, 33910u, 58543u, 422u)), Struct_1(-321f, vec4<u32>(4294967295u, 1u, 16829u, 1u), 4294967295u, -513f, vec4<u32>(0u, 4294967295u, 0u, 92114u)), 931f, vec2<f32>(1247f, -1000f), Struct_1(702f, vec4<u32>(17636u, 4294967295u, 4294967295u, 34488u), 54457u, -370f, vec4<u32>(4294967295u, 1u, 1u, 1u))), Struct_2(Struct_1(-1082f, vec4<u32>(3860u, 4774u, 32920u, 15316u), 1u, 1276f, vec4<u32>(0u, 4294967295u, 1u, 0u)), Struct_1(1911f, vec4<u32>(25510u, 37909u, 38756u, 0u), 0u, 957f, vec4<u32>(42451u, 85511u, 1u, 1u)), -1122f, vec2<f32>(-1000f, 1000f), Struct_1(-383f, vec4<u32>(109309u, 1u, 0u, 4294967295u), 47225u, -1109f, vec4<u32>(0u, 1u, 59710u, 1u))), Struct_2(Struct_1(415f, vec4<u32>(4294967295u, 0u, 1u, 56029u), 4294967295u, -271f, vec4<u32>(4294967295u, 1u, 1u, 1u)), Struct_1(-935f, vec4<u32>(0u, 51468u, 4294967295u, 376u), 4294967295u, -377f, vec4<u32>(4294967295u, 18274u, 45112u, 1u)), 584f, vec2<f32>(1020f, -1628f), Struct_1(-720f, vec4<u32>(61310u, 4294967295u, 39962u, 10598u), 4294967295u, 217f, vec4<u32>(9717u, 4294967295u, 4294967295u, 1u))), Struct_2(Struct_1(1539f, vec4<u32>(10620u, 28739u, 4294967295u, 4294967295u), 43887u, -1827f, vec4<u32>(56u, 23341u, 1u, 54870u)), Struct_1(-2079f, vec4<u32>(4294967295u, 155u, 4294967295u, 1u), 10541u, 1010f, vec4<u32>(0u, 24444u, 52282u, 4294967295u)), -404f, vec2<f32>(-1126f, -504f), Struct_1(171f, vec4<u32>(0u, 51053u, 4294967295u, 97764u), 55191u, 979f, vec4<u32>(1u, 0u, 26731u, 1u))), Struct_2(Struct_1(-446f, vec4<u32>(8910u, 1u, 19640u, 82458u), 0u, -638f, vec4<u32>(0u, 4294967295u, 2300u, 4294967295u)), Struct_1(-1791f, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), 5124u, -442f, vec4<u32>(29538u, 31968u, 25077u, 62787u)), -858f, vec2<f32>(919f, 783f), Struct_1(200f, vec4<u32>(1u, 19262u, 52665u, 7121u), 74138u, 209f, vec4<u32>(12667u, 4294967295u, 1u, 25987u))), Struct_2(Struct_1(156f, vec4<u32>(6305u, 1u, 571u, 15434u), 67744u, -441f, vec4<u32>(0u, 1u, 13870u, 1u)), Struct_1(-2531f, vec4<u32>(0u, 23941u, 0u, 4294967295u), 4062u, 444f, vec4<u32>(4294967295u, 18261u, 14693u, 36179u)), -544f, vec2<f32>(-218f, 1000f), Struct_1(-166f, vec4<u32>(72076u, 9243u, 41631u, 1u), 65670u, 281f, vec4<u32>(1u, 1u, 0u, 61164u))), Struct_2(Struct_1(924f, vec4<u32>(8112u, 4294967295u, 0u, 29291u), 4294967295u, -1291f, vec4<u32>(17524u, 4294967295u, 0u, 0u)), Struct_1(-604f, vec4<u32>(192u, 40908u, 29161u, 22420u), 38678u, -261f, vec4<u32>(41171u, 43677u, 9671u, 0u)), 894f, vec2<f32>(1269f, -887f), Struct_1(412f, vec4<u32>(61333u, 83678u, 4294967295u, 4294967295u), 31604u, -1167f, vec4<u32>(0u, 67114u, 9621u, 1u))), Struct_2(Struct_1(-1000f, vec4<u32>(16634u, 4294967295u, 1u, 9732u), 0u, -696f, vec4<u32>(22231u, 4294967295u, 0u, 31704u)), Struct_1(2075f, vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), 21238u, -1652f, vec4<u32>(4294967295u, 37780u, 1u, 4294967295u)), -709f, vec2<f32>(1585f, -121f), Struct_1(712f, vec4<u32>(22137u, 1u, 1u, 0u), 0u, 1932f, vec4<u32>(81981u, 1u, 58647u, 4294967295u))), Struct_2(Struct_1(-1454f, vec4<u32>(17010u, 0u, 4294967295u, 1983u), 95708u, 1000f, vec4<u32>(74784u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(1200f, vec4<u32>(14249u, 1u, 4294967295u, 0u), 61767u, 1657f, vec4<u32>(0u, 121395u, 38707u, 4294967295u)), -459f, vec2<f32>(-1867f, 734f), Struct_1(275f, vec4<u32>(0u, 3871u, 27046u, 0u), 1u, -168f, vec4<u32>(19286u, 92344u, 1u, 1u))), Struct_2(Struct_1(528f, vec4<u32>(1u, 72429u, 46985u, 0u), 1u, 211f, vec4<u32>(46415u, 1u, 4294967295u, 4294967295u)), Struct_1(1000f, vec4<u32>(15869u, 26161u, 24240u, 4294967295u), 0u, 396f, vec4<u32>(5356u, 67437u, 1u, 4294967295u)), -1611f, vec2<f32>(-502f, -1713f), Struct_1(966f, vec4<u32>(1u, 19238u, 1u, 44609u), 1u, 1105f, vec4<u32>(0u, 12122u, 4294967295u, 10655u))), Struct_2(Struct_1(-1776f, vec4<u32>(1u, 4294967295u, 26515u, 23014u), 61193u, -487f, vec4<u32>(0u, 35954u, 0u, 0u)), Struct_1(-996f, vec4<u32>(4294967295u, 1u, 4324u, 60818u), 4294967295u, 204f, vec4<u32>(11295u, 16250u, 57589u, 110497u)), 1332f, vec2<f32>(-438f, -805f), Struct_1(-361f, vec4<u32>(4294967295u, 47805u, 32016u, 24192u), 4294967295u, 127f, vec4<u32>(87737u, 1u, 0u, 4294967295u))), Struct_2(Struct_1(-267f, vec4<u32>(109082u, 1u, 4294967295u, 6783u), 1u, -736f, vec4<u32>(1u, 17466u, 23517u, 1u)), Struct_1(-309f, vec4<u32>(4294967295u, 40407u, 1u, 25112u), 2332u, -440f, vec4<u32>(16699u, 4036u, 83117u, 0u)), 118f, vec2<f32>(-1000f, -601f), Struct_1(-316f, vec4<u32>(1u, 33418u, 21763u, 4294967295u), 88452u, -899f, vec4<u32>(1u, 1u, 31269u, 19198u))), Struct_2(Struct_1(1360f, vec4<u32>(1u, 25117u, 13580u, 20822u), 20117u, -422f, vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), Struct_1(-578f, vec4<u32>(7289u, 1u, 1223u, 0u), 4294967295u, 475f, vec4<u32>(4294967295u, 93073u, 15411u, 0u)), 989f, vec2<f32>(443f, -1740f), Struct_1(1153f, vec4<u32>(8267u, 1u, 4294967295u, 44439u), 4294967295u, 833f, vec4<u32>(70185u, 73186u, 6855u, 1u))), Struct_2(Struct_1(1208f, vec4<u32>(0u, 44759u, 27353u, 4294967295u), 16470u, 306f, vec4<u32>(79084u, 31026u, 246u, 9235u)), Struct_1(249f, vec4<u32>(12689u, 0u, 13236u, 37467u), 65494u, -1179f, vec4<u32>(1u, 84458u, 0u, 10539u)), -424f, vec2<f32>(155f, 357f), Struct_1(-1136f, vec4<u32>(47807u, 44035u, 37280u, 61597u), 1u, 860f, vec4<u32>(4577u, 3396u, 4294967295u, 23460u))), Struct_2(Struct_1(-1979f, vec4<u32>(0u, 0u, 8339u, 0u), 26839u, -1585f, vec4<u32>(0u, 16862u, 17601u, 0u)), Struct_1(657f, vec4<u32>(0u, 0u, 4294967295u, 0u), 4294967295u, -817f, vec4<u32>(18868u, 22648u, 9129u, 22936u)), 919f, vec2<f32>(-646f, -450f), Struct_1(-1217f, vec4<u32>(4294967295u, 1u, 51057u, 4838u), 1u, 1624f, vec4<u32>(47816u, 0u, 64855u, 1u))), Struct_2(Struct_1(1211f, vec4<u32>(1u, 54076u, 17485u, 1u), 4928u, 1560f, vec4<u32>(4294967295u, 4294967295u, 72667u, 6826u)), Struct_1(-2431f, vec4<u32>(4294967295u, 1u, 0u, 1u), 5387u, -1086f, vec4<u32>(4294967295u, 1u, 2579u, 4294967295u)), -812f, vec2<f32>(209f, -522f), Struct_1(1783f, vec4<u32>(1u, 4294967295u, 49058u, 1u), 4294967295u, -372f, vec4<u32>(0u, 45883u, 29275u, 4294967295u))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.a, ~u_input.a), global1.a.c), ~global1.b.c >> (global1.b.c % 32u), (1u << (u_input.a % 32u)) | u_input.a), 30u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-181f, -692f, global1.c), vec3<f32>(-1066f, -1760f, -2834f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2116f, -2593f, 1559f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 332f, -593f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1551f, 910f) + vec3<f32>(global1.a.a, global1.a.d, var_0.d.x))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(-1216f)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 37555u, var_0.b.b.x, 4294967295u), var_0.e.e) | global1.b.b), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(28727u, u_input.a) & global1.b.b.yx, ~global3[_wgslsmith_index_u32(15768u, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1928f, var_1.x), _wgslsmith_div_f32(1658f, 556f))) - _wgslsmith_f_op_f32(f32(-1f) * -357f))), vec4<u32>(u_input.a, ~0u, ~4294967295u, ~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 34796u))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global1.b.a)) + _wgslsmith_f_op_f32(select(var_0.a.a, _wgslsmith_f_op_f32(ceil(-1627f)), true))), _wgslsmith_div_vec4_u32(var_2.b, _wgslsmith_div_vec4_u32(var_0.a.e >> (global1.e.e % vec4<u32>(32u)), var_2.e)), 17534u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(408f, global1.b.d)))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, abs(var_2.c), u_input.a), vec4<u32>(27807u, global1.a.b.x, ~u_input.a, 1u))), Struct_1(var_2.a, var_0.e.e, _wgslsmith_sub_u32(global1.b.e.x, ~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f), global1.a.d)), vec4<u32>(~4328u, var_2.e.x, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.e.x, u_input.a, 22194u) >> (var_2.e.xzw % vec3<u32>(32u)), vec3<u32>(var_2.b.x, u_input.a, u_input.a)))), -898f, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.d)), var_0.e.d), Struct_1(_wgslsmith_f_op_f32(935f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_2.d)), ~(~vec4<u32>(var_0.b.e.x, 12800u, 28279u, 0u)), var_2.e.x, 1462f, global1.a.e));
    let var_3 = vec4<i32>(44624i, _wgslsmith_mod_i32(arg_0.x, _wgslsmith_div_i32(0i, ~min(887i, 0i))), countOneBits(-35109i) << (u_input.a % 32u), ~arg_1.x);
    return ~(~var_0.a.e.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.c), global1.b.a);
    var var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, -2147483647i), ~global0[_wgslsmith_index_u32(0u, 20u)]), -reverseBits(vec3<i32>(2147483647i, 41593i, -4683i))), u_input.a), 30u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.a * 279f)))), vec4<u32>(1u & global1.b.e.x, 1u, 0u, var_1.e.c), min(~36281u | var_1.e.b.x, max(firstTrailingBit(~u_input.a), global1.b.e.x)), -749f, ~global1.e.e);
    global3 = array<vec2<u32>, 13>();
    let var_3 = global2[_wgslsmith_index_u32(15685u, 29u)];
    return -468f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = global4[_wgslsmith_index_u32(u_input.a, 30u)];
    global2 = array<Struct_1, 29>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(516f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(arg_0, true), vec2<i32>(32592i, -2147483647i))))))), 1000f, global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global4 = array<Struct_2, 30>();
    global3 = array<vec2<u32>, 13>();
    return global4[_wgslsmith_index_u32(func_3(-global0[_wgslsmith_index_u32(global1.e.b.x | ~(u_input.a ^ global1.a.c), 20u)], vec3<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, 0i, 1i, -2147483647i) >> (vec4<u32>(u_input.a, 64068u, global1.b.c, 49444u) % vec4<u32>(32u))), ~vec4<i32>(-11011i, -25000i, 1i, 48424i)), 1i, reverseBits(abs(_wgslsmith_add_i32(2147483647i, -2147483647i))))), 30u)];
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1(!(!any(vec2<bool>(true, true)))).a;
    global1 = Struct_2(func_1(37932u < (39787u >> ((31873u ^ arg_0) % 32u))).e, arg_2.b, _wgslsmith_f_op_f32(-global1.c), global1.d, func_1(1i != select(~53838i, _wgslsmith_mult_i32(-1i, -1i), true)).a);
    let var_1 = vec2<bool>(select(true, false, false), true);
    return arg_2.e;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_1(((_wgslsmith_sub_u32(u_input.a, u_input.a) >> (abs(u_input.a) % 32u)) > global1.a.c) && (true || all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(func_4(~(~global1.e.c), func_1(true), func_1(true)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), 708f)), abs(abs(firstLeadingBit(global1.b.b))), global1.e.b.x, global1.c, _wgslsmith_div_vec4_u32(~vec4<u32>(countOneBits(1u), 0u, ~20885u, _wgslsmith_clamp_u32(global1.e.c, arg_0.a.e.x, global1.b.e.x)), vec4<u32>(~var_0.b.e.x, 0u, var_0.a.b.x, _wgslsmith_sub_u32(~0u, global1.b.e.x))));
    global0 = array<vec3<i32>, 20>();
    return Struct_1(-140f, ~min(arg_0.a.e, ~var_1.e), _wgslsmith_mult_u32(arg_0.e.b.x, var_0.a.e.x), -420f, vec4<u32>(var_0.a.e.x & global1.e.b.x, ~abs(_wgslsmith_clamp_u32(4294967295u, arg_0.e.b.x, global1.e.b.x)), min(arg_0.b.e.x, _wgslsmith_add_u32(countOneBits(global1.b.c), func_4(arg_0.e.b.x, arg_0, Struct_2(Struct_1(var_1.d, global1.e.e, arg_0.e.e.x, -369f, vec4<u32>(var_0.a.b.x, u_input.a, var_1.e.x, 4294967295u)), Struct_1(arg_0.a.d, var_0.e.e, 0u, 1000f, vec4<u32>(0u, var_0.a.c, 1u, 0u)), 405f, var_0.d, Struct_1(arg_0.e.a, var_1.e, 0u, 787f, vec4<u32>(var_1.e.x, 0u, arg_0.e.e.x, 18080u)))).b.x)), 1u));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(1u, 29u)];
    global3 = array<vec2<u32>, 13>();
    global0 = array<vec3<i32>, 20>();
    var var_1 = any(!vec4<bool>(arg_3.x, any(select(vec4<bool>(arg_3.x, false, arg_1, arg_3.x), vec4<bool>(arg_1, arg_1, false, arg_1), false)), !arg_1, true & arg_1));
    global3 = array<vec2<u32>, 13>();
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(185f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(483f, var_0.a)))), arg_0.d, 331f), vec4<u32>(_wgslsmith_mod_u32(~92907u, var_0.c), ~4294967295u, _wgslsmith_dot_vec2_u32(var_0.e.zw, ~abs(arg_0.b.zz)), 0u << (global1.a.c % 32u)), global1.e.a, vec4<u32>(1u, u_input.a, ~firstTrailingBit(arg_0.e.x ^ var_0.c), _wgslsmith_mod_u32(1u, 76140u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    global3 = array<vec2<u32>, 13>();
    let var_1 = 0i;
    let x = u_input.a;
    s_output = func_6(func_5(Struct_2(global2[_wgslsmith_index_u32(global1.e.c, 29u)], Struct_1(_wgslsmith_f_op_f32(-global1.b.a), global1.b.b, global1.a.b.x, 293f, global1.a.b & vec4<u32>(global1.b.b.x, 16126u, u_input.a, 65386u)), global1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.d, 1386f)) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.e.a, global1.a.a), vec2<f32>(global1.b.d, global1.c))), func_4(27668u, func_1(false), Struct_2(Struct_1(-664f, vec4<u32>(global1.e.b.x, global1.b.e.x, 4294967295u, 53917u), global1.b.c, 632f, global1.a.b), global2[_wgslsmith_index_u32(62683u, 29u)], global1.d.x, vec2<f32>(-355f, 263f), Struct_1(global1.a.d, vec4<u32>(global1.a.b.x, u_input.a, 22398u, u_input.a), 26410u, global1.c, vec4<u32>(12839u, global1.e.b.x, u_input.a, u_input.a)))))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.a) * 463f), select(vec2<bool>(true, true), vec2<bool>(true, true), !(!any(vec2<bool>(true, false)))));
}

