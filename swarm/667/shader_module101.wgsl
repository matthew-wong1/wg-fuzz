struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(12991u, vec2<u32>(26851u, 17819u), i32(-2147483648), Struct_2(vec3<f32>(-840f, 197f, -1475f), vec3<u32>(98299u, 74018u, 28019u), Struct_1(2658i, 50538i, vec3<f32>(138f, 250f, 831f), vec4<u32>(48463u, 47584u, 17572u, 18013u), -22077i), vec4<i32>(2147483647i, 1i, 41650i, -12750i), Struct_1(3798i, 1i, vec3<f32>(1033f, -1064f, 308f), vec4<u32>(13718u, 1u, 68387u, 43629u), 1i))), Struct_3(4294967295u, vec2<u32>(11207u, 1u), 0i, Struct_2(vec3<f32>(1789f, 1007f, 1000f), vec3<u32>(0u, 4294967295u, 0u), Struct_1(i32(-2147483648), -26117i, vec3<f32>(-882f, -1000f, 135f), vec4<u32>(1u, 66164u, 4294967295u, 4294967295u), 1i), vec4<i32>(-21356i, 0i, 36835i, 6204i), Struct_1(-5882i, i32(-2147483648), vec3<f32>(-1124f, -1325f, 173f), vec4<u32>(90320u, 4288u, 0u, 97760u), 23644i))), Struct_3(4294967295u, vec2<u32>(1u, 4294967295u), 23899i, Struct_2(vec3<f32>(845f, 884f, -978f), vec3<u32>(1u, 40071u, 11384u), Struct_1(37546i, -928i, vec3<f32>(-916f, -870f, 2530f), vec4<u32>(1u, 4294967295u, 121411u, 0u), 2147483647i), vec4<i32>(-24721i, i32(-2147483648), 1i, -1i), Struct_1(14703i, -1i, vec3<f32>(-1473f, -422f, -208f), vec4<u32>(57416u, 0u, 0u, 1u), 15356i))), Struct_3(0u, vec2<u32>(65909u, 12577u), -10013i, Struct_2(vec3<f32>(176f, 488f, 339f), vec3<u32>(70028u, 1u, 4294967295u), Struct_1(0i, 0i, vec3<f32>(1008f, -559f, 264f), vec4<u32>(1u, 4294967295u, 0u, 51050u), 2147483647i), vec4<i32>(-29011i, 1i, i32(-2147483648), 32564i), Struct_1(i32(-2147483648), 0i, vec3<f32>(-1000f, 805f, 1000f), vec4<u32>(3395u, 0u, 0u, 0u), -29880i))), Struct_3(1u, vec2<u32>(1u, 0u), -20029i, Struct_2(vec3<f32>(-1004f, -841f, 728f), vec3<u32>(1u, 4202u, 4294967295u), Struct_1(-24i, -8260i, vec3<f32>(-986f, -585f, -435f), vec4<u32>(2734u, 68170u, 22389u, 0u), -1i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 31596i), Struct_1(-1i, -39582i, vec3<f32>(-500f, -746f, -191f), vec4<u32>(0u, 1u, 4294967295u, 0u), 55005i))), Struct_3(3440u, vec2<u32>(19364u, 4294967295u), 2147483647i, Struct_2(vec3<f32>(1130f, -1738f, -382f), vec3<u32>(16723u, 1u, 40400u), Struct_1(i32(-2147483648), 2147483647i, vec3<f32>(-1000f, 1534f, -1205f), vec4<u32>(6901u, 28483u, 4294967295u, 4294967295u), 19090i), vec4<i32>(i32(-2147483648), 0i, 15530i, -69058i), Struct_1(-32920i, 11473i, vec3<f32>(623f, 1173f, -3342f), vec4<u32>(55724u, 7342u, 21576u, 0u), i32(-2147483648)))), Struct_3(5929u, vec2<u32>(4294967295u, 4294967295u), -1i, Struct_2(vec3<f32>(-246f, 1405f, 1206f), vec3<u32>(2049u, 62440u, 1u), Struct_1(1i, 2147483647i, vec3<f32>(1779f, -1000f, -1675f), vec4<u32>(1u, 30934u, 4294967295u, 75152u), 19508i), vec4<i32>(2147483647i, 4383i, 25195i, 46747i), Struct_1(2147483647i, -10940i, vec3<f32>(708f, -124f, -305f), vec4<u32>(4294967295u, 20390u, 1u, 64178u), i32(-2147483648)))), Struct_3(1u, vec2<u32>(4294967295u, 1u), -20686i, Struct_2(vec3<f32>(1115f, 764f, 2277f), vec3<u32>(8556u, 4294967295u, 4294967295u), Struct_1(-31115i, -1669i, vec3<f32>(377f, -374f, 1863f), vec4<u32>(31853u, 116436u, 51657u, 1u), -1i), vec4<i32>(1i, 9034i, -1i, i32(-2147483648)), Struct_1(-46947i, -1i, vec3<f32>(-404f, -194f, 1686f), vec4<u32>(50282u, 40271u, 4294967295u, 1u), 0i))), Struct_3(4294967295u, vec2<u32>(82128u, 0u), -16722i, Struct_2(vec3<f32>(949f, -1358f, 781f), vec3<u32>(1u, 0u, 38101u), Struct_1(-14476i, -52604i, vec3<f32>(1060f, -1000f, 213f), vec4<u32>(13155u, 51921u, 22307u, 2637u), i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), 11240i, 9241i), Struct_1(i32(-2147483648), -1i, vec3<f32>(1133f, 669f, -968f), vec4<u32>(50313u, 5435u, 4294967295u, 0u), 0i))), Struct_3(5180u, vec2<u32>(4469u, 36116u), 51809i, Struct_2(vec3<f32>(1069f, 211f, -557f), vec3<u32>(1u, 48411u, 0u), Struct_1(1i, -68145i, vec3<f32>(607f, -1445f, -254f), vec4<u32>(45008u, 31097u, 47154u, 60881u), -3475i), vec4<i32>(-41503i, 54398i, -1i, i32(-2147483648)), Struct_1(1i, -1i, vec3<f32>(-913f, 1331f, 403f), vec4<u32>(36572u, 12072u, 4294967295u, 0u), 6234i))), Struct_3(0u, vec2<u32>(1u, 71643u), 1i, Struct_2(vec3<f32>(1000f, -2532f, -1568f), vec3<u32>(25490u, 1u, 1u), Struct_1(-1i, -36099i, vec3<f32>(-2798f, 1756f, -430f), vec4<u32>(24358u, 1u, 11366u, 26229u), 15528i), vec4<i32>(2834i, i32(-2147483648), i32(-2147483648), -48703i), Struct_1(1i, 2147483647i, vec3<f32>(157f, 1648f, 1000f), vec4<u32>(0u, 98014u, 4294967295u, 0u), -55019i))), Struct_3(23444u, vec2<u32>(0u, 16337u), -46260i, Struct_2(vec3<f32>(-619f, 1479f, 1315f), vec3<u32>(177u, 1u, 9252u), Struct_1(27156i, 11289i, vec3<f32>(1353f, -108f, 1558f), vec4<u32>(1u, 58185u, 76272u, 4294967295u), 36322i), vec4<i32>(-34617i, -1i, i32(-2147483648), 2147483647i), Struct_1(32133i, 70043i, vec3<f32>(1570f, -485f, 1316f), vec4<u32>(4294967295u, 1u, 1u, 0u), 2147483647i))), Struct_3(59545u, vec2<u32>(0u, 1u), -22932i, Struct_2(vec3<f32>(-802f, 1893f, -973f), vec3<u32>(0u, 0u, 42107u), Struct_1(10090i, -1i, vec3<f32>(1256f, 555f, -1492f), vec4<u32>(4294967295u, 11828u, 73366u, 53032u), -24974i), vec4<i32>(2147483647i, i32(-2147483648), 27927i, 36898i), Struct_1(i32(-2147483648), i32(-2147483648), vec3<f32>(-1000f, 310f, -1125f), vec4<u32>(1u, 41945u, 1u, 1u), 0i))), Struct_3(0u, vec2<u32>(1u, 0u), 11105i, Struct_2(vec3<f32>(-703f, 305f, -1060f), vec3<u32>(64386u, 25379u, 30045u), Struct_1(11231i, -66157i, vec3<f32>(741f, -2661f, 105f), vec4<u32>(4294967295u, 14083u, 0u, 18654u), -31942i), vec4<i32>(0i, -38502i, -1i, -842i), Struct_1(i32(-2147483648), -19554i, vec3<f32>(-434f, 1276f, 581f), vec4<u32>(1u, 17234u, 1u, 71669u), 0i))), Struct_3(7560u, vec2<u32>(34307u, 24322u), 2147483647i, Struct_2(vec3<f32>(1027f, 1277f, 552f), vec3<u32>(75992u, 4294967295u, 61896u), Struct_1(-1i, -6361i, vec3<f32>(343f, -662f, -749f), vec4<u32>(29733u, 1u, 34463u, 37250u), 80713i), vec4<i32>(0i, i32(-2147483648), -7759i, 1i), Struct_1(-1i, 1i, vec3<f32>(1088f, 384f, 1112f), vec4<u32>(63718u, 24699u, 31490u, 62678u), 30770i))), Struct_3(0u, vec2<u32>(1u, 8409u), -24972i, Struct_2(vec3<f32>(-757f, -149f, 826f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(51891i, i32(-2147483648), vec3<f32>(638f, -312f, 154f), vec4<u32>(33980u, 0u, 74522u, 20013u), 2147483647i), vec4<i32>(2236i, -11241i, -561i, 36325i), Struct_1(26411i, -8192i, vec3<f32>(-962f, 1154f, -837f), vec4<u32>(4294967295u, 4294967295u, 111968u, 0u), 33510i))), Struct_3(4294967295u, vec2<u32>(32417u, 1u), 37315i, Struct_2(vec3<f32>(-1732f, 482f, 172f), vec3<u32>(0u, 1u, 1u), Struct_1(2147483647i, -1i, vec3<f32>(475f, -1369f, 1000f), vec4<u32>(0u, 4294967295u, 1u, 41482u), 35098i), vec4<i32>(-14974i, 2147483647i, 14876i, 12561i), Struct_1(6871i, 2147483647i, vec3<f32>(607f, -1134f, -1000f), vec4<u32>(0u, 0u, 12481u, 23485u), 34277i))), Struct_3(1u, vec2<u32>(43759u, 27906u), 512i, Struct_2(vec3<f32>(-657f, -2025f, 822f), vec3<u32>(0u, 1u, 0u), Struct_1(0i, -32760i, vec3<f32>(827f, 423f, -427f), vec4<u32>(0u, 0u, 61188u, 4294967295u), -52414i), vec4<i32>(0i, 0i, 0i, -7730i), Struct_1(2147483647i, 8266i, vec3<f32>(-636f, 478f, 1509f), vec4<u32>(21999u, 0u, 20928u, 14249u), 2147483647i))), Struct_3(10445u, vec2<u32>(0u, 35424u), 1i, Struct_2(vec3<f32>(-525f, -231f, 121f), vec3<u32>(65627u, 24739u, 1u), Struct_1(1i, -16503i, vec3<f32>(-249f, -366f, -552f), vec4<u32>(1u, 2141u, 0u, 0u), 44870i), vec4<i32>(0i, 39513i, -35025i, -6173i), Struct_1(i32(-2147483648), 1i, vec3<f32>(2203f, 1525f, 196f), vec4<u32>(0u, 4294967295u, 18565u, 4294967295u), 14987i))), Struct_3(1u, vec2<u32>(32999u, 1u), 2147483647i, Struct_2(vec3<f32>(-852f, 1580f, 185f), vec3<u32>(0u, 29473u, 4294967295u), Struct_1(26670i, 0i, vec3<f32>(1000f, 1333f, 1384f), vec4<u32>(0u, 70820u, 29447u, 0u), 2147483647i), vec4<i32>(i32(-2147483648), -28751i, -1i, 2147483647i), Struct_1(33338i, -9289i, vec3<f32>(245f, -409f, -859f), vec4<u32>(4294967295u, 19793u, 2713u, 1u), -1i))), Struct_3(34625u, vec2<u32>(1u, 8273u), -1i, Struct_2(vec3<f32>(-1256f, -625f, -1000f), vec3<u32>(149u, 30440u, 50834u), Struct_1(i32(-2147483648), 15836i, vec3<f32>(852f, 1000f, 700f), vec4<u32>(4294967295u, 4294967295u, 0u, 8622u), -31175i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -1i), Struct_1(-58670i, 33725i, vec3<f32>(-818f, -519f, 1524f), vec4<u32>(0u, 1u, 1u, 1u), 22866i))), Struct_3(51123u, vec2<u32>(6775u, 59909u), 13028i, Struct_2(vec3<f32>(-313f, 832f, 431f), vec3<u32>(42811u, 72399u, 1u), Struct_1(-1i, i32(-2147483648), vec3<f32>(1737f, -564f, 474f), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), -1i), vec4<i32>(i32(-2147483648), -12412i, 0i, -56764i), Struct_1(i32(-2147483648), -1010i, vec3<f32>(974f, 203f, 228f), vec4<u32>(71496u, 21732u, 24615u, 4294967295u), i32(-2147483648)))), Struct_3(15139u, vec2<u32>(0u, 0u), -19604i, Struct_2(vec3<f32>(788f, -1279f, 483f), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(0i, 3825i, vec3<f32>(-1695f, 449f, 926f), vec4<u32>(67500u, 1u, 53285u, 28145u), 1i), vec4<i32>(-3623i, 10602i, -1i, 0i), Struct_1(30012i, -1i, vec3<f32>(-869f, -548f, -234f), vec4<u32>(1u, 40018u, 1u, 1u), 0i))), Struct_3(43273u, vec2<u32>(0u, 1u), 0i, Struct_2(vec3<f32>(2293f, 347f, 1404f), vec3<u32>(0u, 26647u, 1u), Struct_1(-12959i, -8652i, vec3<f32>(-283f, -1226f, -909f), vec4<u32>(1u, 31991u, 0u, 0u), 1i), vec4<i32>(39308i, -102813i, -20173i, 1i), Struct_1(2147483647i, -7120i, vec3<f32>(481f, -576f, -528f), vec4<u32>(0u, 4294967295u, 0u, 16443u), 0i))), Struct_3(4294967295u, vec2<u32>(42315u, 1u), 2147483647i, Struct_2(vec3<f32>(-331f, 992f, 1178f), vec3<u32>(54626u, 4294967295u, 4294967295u), Struct_1(-1i, 1i, vec3<f32>(-577f, -224f, -127f), vec4<u32>(4294967295u, 4294967295u, 43986u, 4294967295u), -1i), vec4<i32>(0i, i32(-2147483648), 73210i, -5452i), Struct_1(2147483647i, -36871i, vec3<f32>(271f, -574f, -139f), vec4<u32>(1u, 5453u, 2071u, 0u), -17119i))), Struct_3(1u, vec2<u32>(25353u, 4294967295u), 2147483647i, Struct_2(vec3<f32>(-654f, 164f, -258f), vec3<u32>(4294967295u, 1u, 4561u), Struct_1(1i, -19595i, vec3<f32>(476f, 356f, 1230f), vec4<u32>(0u, 0u, 4294967295u, 1u), 35993i), vec4<i32>(40404i, -15979i, -82796i, -1i), Struct_1(0i, -56620i, vec3<f32>(1000f, -484f, 1158f), vec4<u32>(33376u, 79711u, 1u, 0u), -52638i))), Struct_3(1u, vec2<u32>(13573u, 30193u), 2147483647i, Struct_2(vec3<f32>(-105f, -630f, -1082f), vec3<u32>(0u, 17184u, 3503u), Struct_1(-49261i, i32(-2147483648), vec3<f32>(-1423f, -1160f, 603f), vec4<u32>(1u, 53027u, 0u, 35807u), i32(-2147483648)), vec4<i32>(35132i, 27993i, -12849i, -1i), Struct_1(-27495i, 2147483647i, vec3<f32>(1000f, 593f, 627f), vec4<u32>(42038u, 54270u, 3684u, 4294967295u), 2147483647i))), Struct_3(0u, vec2<u32>(1u, 74004u), i32(-2147483648), Struct_2(vec3<f32>(-1102f, 441f, -1656f), vec3<u32>(1u, 0u, 0u), Struct_1(1i, -40838i, vec3<f32>(2059f, -328f, -448f), vec4<u32>(81512u, 23581u, 1u, 56588u), 36621i), vec4<i32>(-19683i, -3835i, 0i, 32111i), Struct_1(i32(-2147483648), 0i, vec3<f32>(-916f, -1000f, -1318f), vec4<u32>(36222u, 15886u, 18043u, 26366u), i32(-2147483648)))), Struct_3(36176u, vec2<u32>(14647u, 0u), -7953i, Struct_2(vec3<f32>(-611f, -612f, 216f), vec3<u32>(4294967295u, 1u, 15978u), Struct_1(18225i, i32(-2147483648), vec3<f32>(743f, 959f, 237f), vec4<u32>(1u, 0u, 37619u, 16701u), 0i), vec4<i32>(-5973i, 0i, -37804i, -16313i), Struct_1(2147483647i, 55722i, vec3<f32>(128f, 179f, 220f), vec4<u32>(1u, 1u, 28817u, 0u), 7722i))));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: vec4<u32> = vec4<u32>(1u, 14554u, 91624u, 4294967295u);

var<private> global3: array<f32, 7> = array<f32, 7>(908f, -276f, 200f, -879f, -842f, 223f, -241f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<u32> {
    global3 = array<f32, 7>();
    var var_0 = true;
    var var_1 = all(select(vec2<bool>(false, true), vec2<bool>(global1.x, arg_1.x), arg_1.xy));
    global0 = array<Struct_3, 29>();
    var var_2 = -2712i;
    return countOneBits(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(17602u, u_input.d.x, 0u, global2.x)), ~(~vec4<u32>(u_input.c.x, 23238u, global2.x, 0u))));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(~(-reverseBits(abs(41981i))), ~u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1443f, -744f, global3[_wgslsmith_index_u32(8354u, 7u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 281f, -1794f))) + vec3<f32>(arg_0, -1230f, global3[_wgslsmith_index_u32(global2.x, 7u)])))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(u_input.b, global1.yzz), ~vec4<u32>(129582u, u_input.d.x, global2.x, 4294967295u)), vec4<u32>(7806u, _wgslsmith_mod_u32(28368u, u_input.d.x), 1u, countOneBits(u_input.d.x))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(abs(global2.x), ~global2.x, ~u_input.d.x, _wgslsmith_clamp_u32(u_input.c.x, global2.x, 1u)), ~(~vec4<u32>(global2.x, global2.x, global2.x, 2904u))) % vec4<u32>(32u)), -2147483647i);
    global0 = array<Struct_3, 29>();
    var var_1 = 80758u;
    return func_3(u_input.b, global1.xww).x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<u32> {
    return arg_1.d.zy ^ u_input.c.yx;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var var_1 = firstLeadingBit(vec2<u32>(1u, u_input.d.x) << (func_4(_wgslsmith_mult_u32(var_0.c.d.x, 18213u) <= func_2(global3[_wgslsmith_index_u32(68924u, 7u)]), Struct_1(~arg_0.d.x, u_input.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.c.x, var_0.c.c.x, 521f), arg_0.e.c)), var_0.e.d, var_0.e.e)) % vec2<u32>(32u)));
    let var_2 = vec3<bool>(global1.x, global1.x, false);
    return _wgslsmith_f_op_f32(f32(-1f) * -357f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec3<f32>(-1170f, -565f, global3[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec3<u32>(0u, 46837u, 0u), Struct_1(22887i, u_input.a, vec3<f32>(-1519f, global3[_wgslsmith_index_u32(global2.x, 7u)], global3[_wgslsmith_index_u32(19118u, 7u)]), vec4<u32>(global2.x, global2.x, 40588u, global2.x), 13011i), vec4<i32>(55836i, u_input.a, u_input.b, u_input.b), Struct_1(u_input.b, u_input.a, vec3<f32>(697f, global3[_wgslsmith_index_u32(1u, 7u)], -1450f), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 4805u), 1i)))) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 7u)])), -1567f, 670f)))));
    global2 = _wgslsmith_clamp_vec4_u32(~reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 27250u, 12521u), vec4<u32>(global2.x, 4294967295u, u_input.d.x, u_input.d.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(abs(u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c.x, 996u), vec4<u32>(u_input.c.x, global2.x, u_input.d.x, global2.x)), _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(18770u, 1u)), global2.x), ~vec4<u32>(0u << (global2.x % 32u), abs(global2.x), 25506u, ~11800u)), abs(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global2.x, 0u, global2.x, 1u), vec4<u32>(12449u, global2.x, u_input.c.x, 31222u), vec4<bool>(false, false, global1.x, global1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, 1u, global2.x), vec4<u32>(global2.x, global2.x, 4294967295u, 1u)), ~vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 0u))));
    let var_1 = Struct_1(8733i, -(~u_input.b), vec3<f32>(546f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(581f, 1415f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x))))), max(vec4<u32>(0u, 1u, 1u, ~_wgslsmith_mod_u32(global2.x, 10707u)), ~vec4<u32>(max(u_input.d.x, 1u), global2.x, firstLeadingBit(1u), ~u_input.d.x)), reverseBits(35042i));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(41334u, 7u)])), -775f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4660u, 7u)]))))));
    let var_3 = Struct_3(83004u, func_3(0i, !(!(!vec3<bool>(global1.x, global1.x, true)))).wz, firstTrailingBit(1i), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c), var_2)), ~vec3<u32>(1u, 0u, 0u), var_1, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(3373i, -2147483647i), firstLeadingBit(vec2<i32>(1i, -31637i))), -u_input.a, firstTrailingBit(-var_1.e), u_input.b), Struct_1(firstTrailingBit(u_input.a), select(~u_input.a, var_1.a, any(vec3<bool>(global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 7u)], -196f, var_2.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_0.x, var_0.x) + vec3<f32>(-1000f, var_0.x, global3[_wgslsmith_index_u32(23153u, 7u)]))), vec4<u32>(37568u, 1u, func_2(-288f), ~6812u), _wgslsmith_div_i32(u_input.a, var_1.b) << (_wgslsmith_dot_vec3_u32(global2.xxz, u_input.c) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~(-u_input.a), 50167i, select(var_1.b, firstTrailingBit(-13679i), !global1.x), var_1.e));
}

