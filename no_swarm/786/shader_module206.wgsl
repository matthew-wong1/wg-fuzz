struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(true, 1000f, 2147483647i, vec4<i32>(0i, 2147483647i, 1i, 48257i), vec3<u32>(24128u, 1u, 0u)), false, Struct_1(false, -522f, 0i, vec4<i32>(-36478i, -9892i, -25766i, 25416i), vec3<u32>(4294967295u, 8560u, 56126u))), Struct_2(Struct_1(false, 1019f, 2147483647i, vec4<i32>(-36427i, 41550i, -17862i, 13853i), vec3<u32>(0u, 49132u, 3976u)), true, Struct_1(false, 1000f, -1i, vec4<i32>(36865i, 20429i, -1i, 2529i), vec3<u32>(40389u, 76254u, 33961u))), Struct_2(Struct_1(false, -706f, i32(-2147483648), vec4<i32>(-15233i, 2315i, -1i, -25147i), vec3<u32>(36586u, 19430u, 92717u)), true, Struct_1(true, 1000f, -1i, vec4<i32>(-22632i, -7889i, 0i, i32(-2147483648)), vec3<u32>(3171u, 1u, 0u))), vec2<f32>(737f, -1902f), -1596f), Struct_3(Struct_2(Struct_1(false, 1195f, -45379i, vec4<i32>(0i, 1i, 22956i, 24714i), vec3<u32>(4294967295u, 56142u, 22187u)), true, Struct_1(false, -685f, 1i, vec4<i32>(2147483647i, 79357i, 2147483647i, -27762i), vec3<u32>(1u, 4294967295u, 14165u))), Struct_2(Struct_1(false, -337f, 1i, vec4<i32>(2147483647i, -61553i, 2147483647i, 0i), vec3<u32>(70052u, 1u, 33619u)), false, Struct_1(false, -319f, -1i, vec4<i32>(i32(-2147483648), 0i, -4429i, 17739i), vec3<u32>(4294967295u, 44822u, 4888u))), Struct_2(Struct_1(true, 1074f, 3339i, vec4<i32>(-9357i, 43199i, -52865i, -24874i), vec3<u32>(8704u, 98559u, 33558u)), true, Struct_1(true, 854f, 1i, vec4<i32>(2147483647i, -8824i, 0i, 2147483647i), vec3<u32>(6856u, 1u, 67796u))), vec2<f32>(143f, -728f), -1684f), Struct_3(Struct_2(Struct_1(true, -1000f, -12625i, vec4<i32>(11656i, -1i, -10520i, -43972i), vec3<u32>(31119u, 45421u, 22624u)), false, Struct_1(false, 957f, 1928i, vec4<i32>(-16850i, i32(-2147483648), -40626i, 59484i), vec3<u32>(85809u, 51510u, 4294967295u))), Struct_2(Struct_1(false, 194f, 2147483647i, vec4<i32>(30818i, -40926i, 1i, 48317i), vec3<u32>(0u, 19956u, 77u)), false, Struct_1(false, 116f, 2147483647i, vec4<i32>(34523i, 1i, -13330i, -1i), vec3<u32>(0u, 8341u, 0u))), Struct_2(Struct_1(true, 813f, 7515i, vec4<i32>(2147483647i, 22012i, i32(-2147483648), -27698i), vec3<u32>(14196u, 62623u, 82450u)), true, Struct_1(false, -469f, -1i, vec4<i32>(9655i, 1i, 2943i, -10490i), vec3<u32>(1u, 1u, 12968u))), vec2<f32>(611f, -1000f), 188f), Struct_3(Struct_2(Struct_1(true, 1014f, -1i, vec4<i32>(10866i, i32(-2147483648), 24320i, i32(-2147483648)), vec3<u32>(28871u, 1u, 0u)), false, Struct_1(true, -561f, 13481i, vec4<i32>(-1i, 2147483647i, 7449i, -13403i), vec3<u32>(78411u, 38714u, 0u))), Struct_2(Struct_1(true, -412f, -1i, vec4<i32>(-3344i, 0i, 0i, -1i), vec3<u32>(13421u, 0u, 3032u)), true, Struct_1(false, 372f, i32(-2147483648), vec4<i32>(-1i, 56280i, 8501i, 1i), vec3<u32>(1u, 1u, 36851u))), Struct_2(Struct_1(false, 1033f, 0i, vec4<i32>(i32(-2147483648), -677i, -75i, 11809i), vec3<u32>(4294967295u, 4294967295u, 1u)), true, Struct_1(false, -689f, 1i, vec4<i32>(-52967i, 22733i, -1i, 3589i), vec3<u32>(24070u, 75745u, 8179u))), vec2<f32>(182f, 1000f), -256f), Struct_3(Struct_2(Struct_1(true, 165f, -1077i, vec4<i32>(2147483647i, -1i, i32(-2147483648), 0i), vec3<u32>(1u, 4294967295u, 59653u)), true, Struct_1(true, 632f, -1i, vec4<i32>(-59845i, -1i, i32(-2147483648), 20462i), vec3<u32>(27530u, 4294967295u, 52766u))), Struct_2(Struct_1(true, 1142f, 0i, vec4<i32>(1i, -13556i, 63697i, 26205i), vec3<u32>(18226u, 4294967295u, 1u)), false, Struct_1(false, -722f, 5068i, vec4<i32>(-1i, -30618i, 12580i, 45747i), vec3<u32>(4294967295u, 43109u, 4294967295u))), Struct_2(Struct_1(false, 1629f, -1i, vec4<i32>(-1i, 27430i, 1i, -56223i), vec3<u32>(4294967295u, 29206u, 1u)), false, Struct_1(true, -110f, -1i, vec4<i32>(-13634i, i32(-2147483648), i32(-2147483648), 1i), vec3<u32>(0u, 240u, 86740u))), vec2<f32>(-1524f, -1080f), -192f), Struct_3(Struct_2(Struct_1(false, 198f, -51878i, vec4<i32>(2147483647i, -1i, -28073i, -1i), vec3<u32>(59519u, 1366u, 4294967295u)), true, Struct_1(false, -518f, i32(-2147483648), vec4<i32>(2147483647i, 2147483647i, -1i, 0i), vec3<u32>(5697u, 1u, 4294967295u))), Struct_2(Struct_1(true, 869f, -1i, vec4<i32>(i32(-2147483648), 13013i, -1i, 16582i), vec3<u32>(11384u, 0u, 69154u)), true, Struct_1(true, 576f, 60158i, vec4<i32>(i32(-2147483648), 10649i, -27857i, 2147483647i), vec3<u32>(27135u, 16210u, 4294967295u))), Struct_2(Struct_1(false, 612f, 2147483647i, vec4<i32>(25490i, -170i, 1i, 68123i), vec3<u32>(4294967295u, 4294967295u, 51234u)), false, Struct_1(true, -1488f, 34716i, vec4<i32>(0i, -1i, 2147483647i, 1i), vec3<u32>(1u, 0u, 4294967295u))), vec2<f32>(269f, 1000f), -1000f), Struct_3(Struct_2(Struct_1(true, 1031f, -1481i, vec4<i32>(10879i, -36122i, -2288i, 10853i), vec3<u32>(47146u, 4294967295u, 60092u)), true, Struct_1(false, -1956f, 54965i, vec4<i32>(44582i, 26781i, i32(-2147483648), 0i), vec3<u32>(17977u, 0u, 50211u))), Struct_2(Struct_1(false, 475f, i32(-2147483648), vec4<i32>(-4638i, 76794i, 0i, 2147483647i), vec3<u32>(4294967295u, 0u, 39498u)), false, Struct_1(true, -235f, i32(-2147483648), vec4<i32>(-8349i, -24635i, 33689i, 2156i), vec3<u32>(86406u, 36448u, 0u))), Struct_2(Struct_1(true, 137f, i32(-2147483648), vec4<i32>(-1i, 14028i, i32(-2147483648), 21383i), vec3<u32>(30454u, 72890u, 92802u)), true, Struct_1(false, 440f, -1i, vec4<i32>(-41152i, 2147483647i, -1i, 0i), vec3<u32>(0u, 4294967295u, 48129u))), vec2<f32>(-556f, 305f), 1644f), Struct_3(Struct_2(Struct_1(false, 909f, 1i, vec4<i32>(38971i, 1i, -1i, 1i), vec3<u32>(26240u, 0u, 4294967295u)), false, Struct_1(false, 553f, 34120i, vec4<i32>(19672i, 70459i, 1i, i32(-2147483648)), vec3<u32>(32080u, 0u, 4294967295u))), Struct_2(Struct_1(true, 461f, 1i, vec4<i32>(-14141i, -1i, -13584i, 1i), vec3<u32>(0u, 4294967295u, 1u)), false, Struct_1(true, -204f, 1i, vec4<i32>(-1i, 88430i, 1i, 46398i), vec3<u32>(4294967295u, 0u, 53509u))), Struct_2(Struct_1(false, -1516f, -6372i, vec4<i32>(-12918i, 11860i, 0i, -1i), vec3<u32>(21268u, 1u, 64027u)), true, Struct_1(true, 2091f, -9775i, vec4<i32>(2147483647i, 0i, 1i, 0i), vec3<u32>(12510u, 55264u, 0u))), vec2<f32>(192f, -1101f), 589f), Struct_3(Struct_2(Struct_1(true, 513f, 1i, vec4<i32>(-1i, 1i, 4217i, i32(-2147483648)), vec3<u32>(35120u, 62278u, 0u)), true, Struct_1(false, -174f, -1i, vec4<i32>(-41052i, 2147483647i, -1321i, -7726i), vec3<u32>(4294967295u, 29542u, 1u))), Struct_2(Struct_1(false, 1069f, 54151i, vec4<i32>(6315i, -1i, 1i, 62491i), vec3<u32>(18756u, 0u, 1u)), true, Struct_1(true, -1150f, i32(-2147483648), vec4<i32>(i32(-2147483648), 2147483647i, 14612i, -9336i), vec3<u32>(26498u, 0u, 19059u))), Struct_2(Struct_1(false, -2246f, -21722i, vec4<i32>(13227i, 2147483647i, 2147483647i, 18913i), vec3<u32>(15756u, 19946u, 0u)), false, Struct_1(false, -1701f, 0i, vec4<i32>(i32(-2147483648), 2147483647i, 1i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 0u))), vec2<f32>(-824f, 418f), -1169f), Struct_3(Struct_2(Struct_1(false, 1563f, 20228i, vec4<i32>(-26404i, 9316i, 37546i, -8109i), vec3<u32>(13033u, 1u, 0u)), false, Struct_1(true, 519f, 2147483647i, vec4<i32>(-24094i, 0i, -1i, i32(-2147483648)), vec3<u32>(20316u, 135731u, 4294967295u))), Struct_2(Struct_1(true, 431f, 1i, vec4<i32>(i32(-2147483648), 22787i, -1i, 3349i), vec3<u32>(1u, 10476u, 1u)), true, Struct_1(false, 161f, -9177i, vec4<i32>(-1i, i32(-2147483648), -13517i, 2147483647i), vec3<u32>(44106u, 4294967295u, 11540u))), Struct_2(Struct_1(true, -544f, 2559i, vec4<i32>(i32(-2147483648), 22903i, 4300i, 13204i), vec3<u32>(0u, 39072u, 1u)), false, Struct_1(true, 847f, 21871i, vec4<i32>(55072i, 6560i, 25915i, -1i), vec3<u32>(0u, 62275u, 57480u))), vec2<f32>(-1295f, -669f), -702f), Struct_3(Struct_2(Struct_1(false, -564f, -1542i, vec4<i32>(-32881i, i32(-2147483648), 1i, -39898i), vec3<u32>(0u, 0u, 0u)), true, Struct_1(true, 462f, 1i, vec4<i32>(1i, -1i, 2147483647i, 27435i), vec3<u32>(1u, 1u, 0u))), Struct_2(Struct_1(true, 1000f, 22927i, vec4<i32>(-14772i, 10681i, 0i, 0i), vec3<u32>(24145u, 4294967295u, 0u)), true, Struct_1(true, -2107f, i32(-2147483648), vec4<i32>(2147483647i, 49758i, 1i, 7601i), vec3<u32>(4294967295u, 12725u, 58426u))), Struct_2(Struct_1(true, -1792f, 0i, vec4<i32>(0i, 1i, -1i, -4581i), vec3<u32>(50645u, 15509u, 25499u)), true, Struct_1(true, -177f, -1i, vec4<i32>(-13110i, 2147483647i, -1i, -21666i), vec3<u32>(42373u, 54534u, 0u))), vec2<f32>(1522f, -406f), 1487f), Struct_3(Struct_2(Struct_1(false, -1000f, -1i, vec4<i32>(40627i, 4773i, i32(-2147483648), 5528i), vec3<u32>(4294967295u, 22123u, 125078u)), false, Struct_1(false, -605f, i32(-2147483648), vec4<i32>(32983i, 8938i, 2147483647i, 2147483647i), vec3<u32>(83692u, 41561u, 4294967295u))), Struct_2(Struct_1(false, -495f, -1i, vec4<i32>(-2515i, 46437i, 66769i, 30020i), vec3<u32>(1u, 0u, 1u)), false, Struct_1(true, 1000f, i32(-2147483648), vec4<i32>(26371i, 2147483647i, 2147483647i, -1i), vec3<u32>(16500u, 352u, 0u))), Struct_2(Struct_1(false, 288f, 1i, vec4<i32>(-22453i, 0i, 37237i, -3669i), vec3<u32>(1u, 23535u, 38981u)), true, Struct_1(true, 857f, 2147483647i, vec4<i32>(-1i, 0i, -1i, -9459i), vec3<u32>(2930u, 36807u, 1u))), vec2<f32>(215f, -935f), -100f), Struct_3(Struct_2(Struct_1(true, 129f, 2147483647i, vec4<i32>(0i, 2147483647i, 1i, 8596i), vec3<u32>(25079u, 25208u, 0u)), true, Struct_1(true, -1356f, 2147483647i, vec4<i32>(13081i, -1i, 2147483647i, 0i), vec3<u32>(38820u, 0u, 10224u))), Struct_2(Struct_1(true, 828f, -64130i, vec4<i32>(-1i, 21424i, 4854i, 75483i), vec3<u32>(29993u, 4294967295u, 72640u)), false, Struct_1(true, 1000f, 658i, vec4<i32>(27690i, -1i, -5501i, i32(-2147483648)), vec3<u32>(22157u, 11233u, 4294967295u))), Struct_2(Struct_1(false, 2871f, 20852i, vec4<i32>(17302i, -67334i, -43102i, -68345i), vec3<u32>(34360u, 4294967295u, 1u)), false, Struct_1(false, 605f, 8234i, vec4<i32>(0i, -1i, 1i, 1i), vec3<u32>(23332u, 4294967295u, 52818u))), vec2<f32>(-273f, -410f), 750f), Struct_3(Struct_2(Struct_1(true, -861f, 0i, vec4<i32>(-11107i, 2147483647i, -35634i, 0i), vec3<u32>(16466u, 4294967295u, 1u)), true, Struct_1(true, -562f, -45683i, vec4<i32>(-1i, i32(-2147483648), 14528i, 85943i), vec3<u32>(0u, 68177u, 4294967295u))), Struct_2(Struct_1(true, -220f, 24272i, vec4<i32>(-1i, 1i, 604i, 2147483647i), vec3<u32>(11363u, 4294967295u, 94770u)), false, Struct_1(false, -838f, 51233i, vec4<i32>(-1i, -13474i, 18389i, -31718i), vec3<u32>(48644u, 1u, 1u))), Struct_2(Struct_1(true, -319f, 4248i, vec4<i32>(-1i, -38466i, -1i, -27037i), vec3<u32>(1u, 4294967295u, 22666u)), true, Struct_1(true, 718f, -37347i, vec4<i32>(1i, i32(-2147483648), -1i, 9457i), vec3<u32>(4294967295u, 1u, 31466u))), vec2<f32>(-989f, -539f), -1777f), Struct_3(Struct_2(Struct_1(true, -952f, 3139i, vec4<i32>(381i, 2147483647i, 47827i, 16886i), vec3<u32>(37524u, 22032u, 91291u)), true, Struct_1(true, -184f, 48559i, vec4<i32>(2147483647i, 1i, 27323i, 1i), vec3<u32>(13714u, 32038u, 0u))), Struct_2(Struct_1(false, -1429f, 14716i, vec4<i32>(0i, 2995i, 41626i, -22579i), vec3<u32>(58227u, 11928u, 44909u)), false, Struct_1(true, -475f, -13610i, vec4<i32>(41914i, -37893i, i32(-2147483648), -9549i), vec3<u32>(0u, 0u, 77769u))), Struct_2(Struct_1(true, -586f, i32(-2147483648), vec4<i32>(1i, 22380i, -19770i, -1i), vec3<u32>(1u, 20406u, 41647u)), true, Struct_1(true, -1007f, 0i, vec4<i32>(0i, i32(-2147483648), -12378i, -30818i), vec3<u32>(4294967295u, 53480u, 1u))), vec2<f32>(-1009f, 1084f), 910f), Struct_3(Struct_2(Struct_1(false, 480f, 42224i, vec4<i32>(0i, 1i, -33968i, 4830i), vec3<u32>(15677u, 38724u, 1u)), true, Struct_1(false, -1105f, -51454i, vec4<i32>(1i, -9293i, 2147483647i, 50837i), vec3<u32>(4294967295u, 16534u, 60485u))), Struct_2(Struct_1(false, 335f, -25338i, vec4<i32>(2144i, 40626i, 16877i, 1i), vec3<u32>(49128u, 1u, 1u)), false, Struct_1(false, 137f, 2913i, vec4<i32>(1i, -1i, 1i, -72042i), vec3<u32>(58456u, 75648u, 1u))), Struct_2(Struct_1(true, 595f, 49462i, vec4<i32>(-18092i, -24085i, 0i, i32(-2147483648)), vec3<u32>(918u, 45120u, 0u)), true, Struct_1(true, -2573f, 0i, vec4<i32>(-17030i, 2147483647i, -25963i, 31542i), vec3<u32>(4294967295u, 11160u, 4294967295u))), vec2<f32>(2290f, 1299f), -309f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(56474u, 16u)];
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.e));
    var_0 = Struct_3(var_0.b, Struct_2(var_0.c.c, firstLeadingBit(-19952i >> (1u % 32u)) < _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(arg_0.x, 1i)), Struct_1(var_1 > -1389f, _wgslsmith_f_op_f32(-var_1), u_input.b.x, firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -40228i, u_input.c, u_input.b.x), vec4<i32>(u_input.c, 0i, -25058i, 0i))), u_input.a.xzz)), Struct_2(Struct_1(arg_0.x < var_0.b.c.d.x, _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(-var_1))), firstTrailingBit(-47876i), ~(~var_0.a.c.d), ~(~vec3<u32>(var_0.a.c.e.x, var_0.b.a.e.x, u_input.a.x))), false, var_0.b.c), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(var_0.d * _wgslsmith_f_op_vec2_f32(-var_0.d))))), var_1);
    var var_2 = select(vec2<bool>(var_0.c.c.a, false), vec2<bool>(true, true), (23274u >> ((8610u ^ u_input.a.x) % 32u)) >= u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)))), var_0.c.a.b) * 1f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), -1505f, false));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_i32(-24105i, abs(u_input.c ^ u_input.b.x)) <= (-u_input.b.x << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_3(-(vec2<i32>(0i, u_input.b.x) & u_input.b)))), abs(-1i), _wgslsmith_mod_vec4_i32(max((vec4<i32>(1i, u_input.b.x, -1i, u_input.c) >> (u_input.a % vec4<u32>(32u))) | ~vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x), vec4<i32>(1i, u_input.c, _wgslsmith_mod_i32(1i, u_input.b.x), u_input.c >> (u_input.a.x % 32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, 52800i, u_input.c, -2147483647i), ~vec4<i32>(-1i, 0i, -12878i, u_input.b.x)), ~(~vec4<i32>(12349i, 1i, 65077i, 34341i)))), abs(_wgslsmith_mod_vec3_u32(~u_input.a.yyz, _wgslsmith_sub_vec3_u32(u_input.a.yww, vec3<u32>(u_input.a.x, u_input.a.x, 30226u)))) << (min(u_input.a.ywz >> (select(u_input.a.yww, vec3<u32>(u_input.a.x, u_input.a.x, 16056u), vec3<bool>(true, true, true)) % vec3<u32>(32u)), u_input.a.zzw) % vec3<u32>(32u)));
    var_0 = Struct_1(var_0.a, -1684f, 25558i, var_0.d & -var_0.d, _wgslsmith_mod_vec3_u32(var_0.e, u_input.a.zzw));
    global0 = array<Struct_3, 16>();
    var var_1 = Struct_1(reverseBits(~1i) <= _wgslsmith_clamp_i32(u_input.b.x, firstTrailingBit(abs(var_0.c)), ~u_input.b.x), var_0.b, ~_wgslsmith_mult_i32(u_input.b.x, 2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.d.zw, vec2<i32>(u_input.c, 38848i)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, 1i), u_input.b)), max(~46718i | -var_0.c, -1i), reverseBits(~var_0.c), u_input.c), vec3<u32>(~abs(var_0.e.x), var_0.e.x, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(83338u, var_0.e.x), _wgslsmith_add_u32(var_0.e.x, 4294967295u))));
    let var_2 = vec4<i32>(~(-1i), max(-1050i, 20622i), firstTrailingBit(u_input.c), u_input.c) | vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(~u_input.c, -2147483647i & var_0.d.x), u_input.c), min(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.c, var_0.c), 0i >> (u_input.a.x % 32u)), u_input.b.x), ~u_input.b.x, var_1.d.x);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = false;
    var var_1 = firstTrailingBit(countOneBits(vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.b.a.e.x), vec2<u32>(u_input.a.x, 15562u))), 4294967295u, min(~23131u, arg_1.a.a.e.x), firstLeadingBit(1u))));
    let var_2 = vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), arg_0)), false, arg_0, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + -328f), _wgslsmith_f_op_f32(exp2(arg_1.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.b.c.b, arg_1.d.x)), -493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.a.b, 1055f, arg_2.e, arg_2.a.a.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(549f, 113f, 2666f, 1000f), vec4<f32>(arg_1.c.c.b, arg_2.a.c.b, arg_1.c.a.b, 618f)))))));
    let var_4 = ~arg_2.b.a.d;
    return arg_1.b.c;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    var var_0 = Struct_2(Struct_1(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))) && false, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1146f)), _wgslsmith_f_op_f32(-1000f + -469f)), -555f, true)), 0i, vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, ~(~u_input.c)), u_input.a.wzx), true, Struct_1(all(vec3<bool>(true, all(vec2<bool>(true, false)), false)), 291f, _wgslsmith_add_i32(select(-1i, _wgslsmith_mod_i32(11694i, u_input.b.x), all(vec4<bool>(false, true, false, false))), (u_input.c << (u_input.a.x % 32u)) >> (0u % 32u)), select(vec4<i32>(~u_input.b.x, 5796i, countOneBits(u_input.b.x), -4003i), ~(~vec4<i32>(-44222i, u_input.c, 1i, u_input.c)), true), u_input.a.wyw));
    var_0 = Struct_2(func_4(func_2(), Struct_3(Struct_2(var_0.a, u_input.c <= -27005i, Struct_1(true, var_0.c.b, -1i, vec4<i32>(1i, var_0.a.d.x, var_0.c.d.x, -2147483647i), vec3<u32>(60802u, u_input.a.x, u_input.a.x))), Struct_2(Struct_1(true, var_0.c.b, var_0.c.c, vec4<i32>(-1i, var_0.a.c, 0i, 16215i), vec3<u32>(70359u, 1u, u_input.a.x)), false, var_0.c), Struct_2(var_0.c, true, Struct_1(var_0.a.a, 1170f, 1i, vec4<i32>(-35177i, -40498i, -22645i, u_input.b.x), vec3<u32>(4294967295u, var_0.c.e.x, var_0.a.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(794f, -222f))), var_0.a.b), Struct_3(Struct_2(Struct_1(var_0.c.a, -272f, var_0.a.c, var_0.c.d, vec3<u32>(var_0.c.e.x, 9893u, 1u)), all(vec4<bool>(var_0.b, false, true, false)), Struct_1(var_0.a.a, var_0.a.b, u_input.b.x, var_0.a.d, var_0.a.e)), Struct_2(Struct_1(false, 1000f, var_0.a.c, var_0.c.d, u_input.a.wxx), false != var_0.b, Struct_1(true, 1614f, var_0.c.c, vec4<i32>(-1i, 2147483647i, 0i, var_0.c.c), u_input.a.wwz)), Struct_2(Struct_1(true, var_0.a.b, -1i, var_0.a.d, vec3<u32>(57426u, 20437u, var_0.c.e.x)), any(vec3<bool>(var_0.c.a, var_0.b, var_0.c.a)), var_0.a), vec2<f32>(-969f, _wgslsmith_f_op_f32(-var_0.a.b)), 1f), any(select(vec4<bool>(true, var_0.c.a, var_0.a.a, false), !vec4<bool>(false, var_0.c.a, var_0.b, var_0.b), !var_0.b))), true, func_4(var_0.b, Struct_3(Struct_2(Struct_1(var_0.b, var_0.a.b, -2147483647i, vec4<i32>(u_input.c, -1i, 0i, 35965i), var_0.c.e), var_0.c.e.x != var_0.a.e.x, var_0.a), Struct_2(Struct_1(true, var_0.a.b, 1i, var_0.a.d, vec3<u32>(76151u, var_0.a.e.x, 4294967295u)), 843f != var_0.a.b, Struct_1(var_0.c.a, -1736f, var_0.c.c, var_0.a.d, u_input.a.xxz)), Struct_2(Struct_1(var_0.a.a, -546f, -344i, var_0.c.d, u_input.a.wxx), true, func_4(true, global0[_wgslsmith_index_u32(41555u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], var_0.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b, 102f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b, var_0.a.b))), 1775f), global1[_wgslsmith_index_u32(1u, 16u)], any(select(vec4<bool>(var_0.c.a, false, true, var_0.c.a), !vec4<bool>(false, false, var_0.a.a, var_0.b), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b, true, true, true), false)))));
    global1 = array<Struct_3, 16>();
    return global0[_wgslsmith_index_u32(firstTrailingBit(~(~var_0.a.e.x | _wgslsmith_dot_vec2_u32(vec2<u32>(34675u, u_input.a.x), vec2<u32>(5390u, 4294967295u))) >> (4294967295u % 32u)), 16u)];
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> StorageBuffer {
    global1 = array<Struct_3, 16>();
    var var_0 = abs(4294967295u);
    var var_1 = select(vec4<bool>(!any(vec3<bool>(arg_0.a.b, false, arg_0.c.c.a)), func_4(false, global0[_wgslsmith_index_u32(1u, 16u)], func_1(), select(true, !arg_0.a.a.a, true)).a, func_2(), false), !(!vec4<bool>(arg_0.b.c.a, true, true, arg_0.a.b)), select(select(vec4<bool>(func_2(), arg_0.e <= arg_0.c.c.b, true == arg_0.a.b, false), !(!vec4<bool>(false, arg_0.a.c.a, arg_0.b.c.a, arg_0.c.a.a)), select(vec4<bool>(arg_0.c.a.a, true, arg_0.c.b, arg_0.a.a.a), select(vec4<bool>(true, true, arg_0.c.b, true), vec4<bool>(arg_0.c.c.a, true, arg_0.c.b, arg_0.c.c.a), true), false)), select(!(!vec4<bool>(arg_0.b.c.a, true, false, false)), vec4<bool>(func_4(true, Struct_3(Struct_2(Struct_1(arg_0.a.b, -828f, 2147483647i, arg_0.a.a.d, vec3<u32>(u_input.a.x, 40938u, 5768u)), arg_0.c.b, Struct_1(false, arg_0.c.a.b, 2147483647i, vec4<i32>(u_input.b.x, arg_0.a.c.d.x, u_input.b.x, arg_0.a.a.d.x), arg_0.b.a.e)), Struct_2(arg_0.a.a, false, Struct_1(arg_0.a.b, arg_0.c.c.b, 30615i, arg_0.b.a.d, vec3<u32>(arg_1, arg_1, 43917u))), Struct_2(Struct_1(arg_0.b.a.a, arg_0.c.a.b, u_input.c, vec4<i32>(arg_0.b.a.c, 46506i, arg_0.a.c.c, 0i), arg_0.b.c.e), arg_0.b.a.a, Struct_1(true, -594f, -1i, arg_0.b.c.d, vec3<u32>(arg_0.c.c.e.x, 1u, 1u))), vec2<f32>(-906f, arg_0.a.c.b), arg_0.d.x), arg_0, arg_0.a.c.a).a, true, false && arg_0.b.c.a, true && arg_0.c.a.a), _wgslsmith_f_op_f32(step(-609f, arg_0.e)) > _wgslsmith_f_op_f32(arg_0.a.a.b - 338f)), true));
    let var_2 = Struct_3(func_1().a, Struct_2(arg_0.b.c, all(vec4<bool>(any(vec2<bool>(true, arg_0.a.c.a)), arg_0.c.a.a, var_1.x, true)), Struct_1(true | (-1i <= u_input.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-646f)))), 1i, (vec4<i32>(arg_0.a.c.d.x, u_input.c, 22038i, 0i) << (vec4<u32>(u_input.a.x, 38776u, arg_0.b.a.e.x, arg_0.c.c.e.x) % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)), vec3<u32>(1u, 1u, _wgslsmith_div_u32(arg_1, u_input.a.x)))), func_1().b, arg_0.d, _wgslsmith_f_op_f32(arg_0.d.x - -1712f));
    var_1 = vec4<bool>(true && var_1.x, var_1.x, (var_1.x || true) | false, arg_0.c.a.a);
    return StorageBuffer(2147483647i, ~14426i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.e)), 1128f) * _wgslsmith_f_op_vec2_f32(var_2.d - var_2.d)), vec2<f32>(629f, func_4(var_2.b.b, var_2, global0[_wgslsmith_index_u32(arg_0.c.c.e.x, 16u)], var_2.b.c.a).b)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(75135u, arg_1), var_2.c.a.e.yx), func_4(true, Struct_3(Struct_2(var_2.c.a, true, Struct_1(false, 1000f, -11471i, vec4<i32>(u_input.c, var_2.a.a.c, -25058i, 7711i), vec3<u32>(0u, arg_1, 49265u))), var_2.a, Struct_2(arg_0.a.a, var_2.b.a.a, var_2.a.c), vec2<f32>(var_2.e, -979f), var_2.a.c.b), Struct_3(arg_0.a, arg_0.a, arg_0.c, arg_0.d, var_2.b.a.b), var_1.x).e.xy), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yzx;
    let x = u_input.a;
    s_output = func_5(func_1(), var_0.x);
}

