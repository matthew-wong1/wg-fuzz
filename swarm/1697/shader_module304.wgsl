struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(false, vec4<f32>(-399f, 2185f, -1108f, 686f), Struct_1(vec4<i32>(1i, 13371i, -819i, 14741i), vec3<u32>(59602u, 1u, 4294967295u), -6841i, 1i, vec3<f32>(-1278f, 641f, -785f)), 4294967295u, Struct_1(vec4<i32>(0i, 0i, 0i, -31515i), vec3<u32>(19237u, 1u, 54198u), -2678i, 16671i, vec3<f32>(223f, -231f, -537f))), Struct_2(false, vec4<f32>(-830f, -1273f, 2465f, -366f), Struct_1(vec4<i32>(-7181i, -1i, -53411i, 1i), vec3<u32>(1u, 62491u, 62040u), 82868i, 2147483647i, vec3<f32>(-844f, -897f, 139f)), 8141u, Struct_1(vec4<i32>(1i, 25333i, -35625i, -4522i), vec3<u32>(50429u, 37582u, 0u), -1i, 0i, vec3<f32>(-1049f, -943f, 471f))), Struct_2(false, vec4<f32>(437f, -945f, -1195f, -236f), Struct_1(vec4<i32>(111726i, -1i, i32(-2147483648), 1i), vec3<u32>(59620u, 72248u, 10834u), -1i, i32(-2147483648), vec3<f32>(-100f, 412f, 944f)), 73913u, Struct_1(vec4<i32>(-220i, 1i, 7201i, 31363i), vec3<u32>(4294967295u, 4294967295u, 1u), -53976i, 2147483647i, vec3<f32>(2639f, -445f, -930f))), Struct_2(true, vec4<f32>(967f, 215f, -789f, 781f), Struct_1(vec4<i32>(21480i, 1i, 1i, 1i), vec3<u32>(1u, 25556u, 44647u), -9364i, 14561i, vec3<f32>(1035f, 1053f, 217f)), 2491u, Struct_1(vec4<i32>(-46725i, 22630i, 0i, 16967i), vec3<u32>(0u, 25837u, 0u), 1i, 1i, vec3<f32>(455f, 729f, 731f))), Struct_2(false, vec4<f32>(1423f, -386f, 1881f, -899f), Struct_1(vec4<i32>(-13949i, 26309i, 2147483647i, -13272i), vec3<u32>(43892u, 22210u, 4294967295u), 7307i, -1i, vec3<f32>(1012f, 923f, 987f)), 0u, Struct_1(vec4<i32>(-29058i, -4309i, -1i, i32(-2147483648)), vec3<u32>(0u, 52673u, 30586u), 0i, -24681i, vec3<f32>(-323f, -749f, -901f))), Struct_2(false, vec4<f32>(138f, -842f, -1000f, -426f), Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, -1i), vec3<u32>(4294967295u, 4294967295u, 28556u), -37135i, -36388i, vec3<f32>(466f, 825f, 1000f)), 30243u, Struct_1(vec4<i32>(2147483647i, 35784i, -51261i, -1i), vec3<u32>(15230u, 4294967295u, 49273u), -33752i, 26047i, vec3<f32>(1637f, 839f, 1000f))), Struct_2(false, vec4<f32>(610f, -734f, 573f, 1108f), Struct_1(vec4<i32>(15113i, 8255i, 2147483647i, -19187i), vec3<u32>(68389u, 0u, 1u), -1i, 22119i, vec3<f32>(408f, 905f, -447f)), 76166u, Struct_1(vec4<i32>(33658i, -2054i, -28824i, 1i), vec3<u32>(52498u, 4294967295u, 4294967295u), 1i, -1i, vec3<f32>(153f, -690f, -113f))), Struct_2(false, vec4<f32>(-290f, -727f, -146f, 1000f), Struct_1(vec4<i32>(-9665i, 8020i, 67263i, 10492i), vec3<u32>(20808u, 4294967295u, 1u), -1i, 2147483647i, vec3<f32>(-1006f, -585f, -864f)), 0u, Struct_1(vec4<i32>(38369i, -19048i, -1i, -1i), vec3<u32>(56618u, 8321u, 0u), -40357i, 43162i, vec3<f32>(432f, -289f, -3092f))), Struct_2(false, vec4<f32>(-618f, -290f, 197f, -1523f), Struct_1(vec4<i32>(1i, 40903i, -10192i, -1i), vec3<u32>(1u, 15952u, 24879u), i32(-2147483648), 8136i, vec3<f32>(-1086f, 1205f, 429f)), 36708u, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, i32(-2147483648)), vec3<u32>(0u, 8833u, 0u), 12127i, 2147483647i, vec3<f32>(-623f, -1675f, 1608f))), Struct_2(false, vec4<f32>(1625f, -505f, 884f, -175f), Struct_1(vec4<i32>(0i, 0i, 21720i, 0i), vec3<u32>(119761u, 36533u, 50005u), 15682i, i32(-2147483648), vec3<f32>(2355f, -1272f, -244f)), 6650u, Struct_1(vec4<i32>(0i, -57433i, 0i, 8482i), vec3<u32>(1u, 29856u, 25234u), 10334i, -1i, vec3<f32>(-255f, 1000f, -1485f))), Struct_2(true, vec4<f32>(-183f, -1000f, 1000f, 1209f), Struct_1(vec4<i32>(42140i, 0i, 1i, 10690i), vec3<u32>(28864u, 1u, 0u), -29474i, -43510i, vec3<f32>(191f, -188f, 507f)), 1u, Struct_1(vec4<i32>(1i, -46542i, -41469i, 2147483647i), vec3<u32>(4294967295u, 0u, 4294967295u), 38864i, 2147483647i, vec3<f32>(190f, -1976f, 1471f))), Struct_2(false, vec4<f32>(-762f, 431f, 1000f, 817f), Struct_1(vec4<i32>(20150i, -41262i, 20814i, 16892i), vec3<u32>(0u, 4294967295u, 4294967295u), 0i, -1i, vec3<f32>(-583f, 284f, -716f)), 4294967295u, Struct_1(vec4<i32>(35335i, 44152i, -32792i, 27307i), vec3<u32>(29944u, 25782u, 40167u), i32(-2147483648), -20339i, vec3<f32>(-230f, 1770f, -329f))), Struct_2(false, vec4<f32>(1078f, 324f, -214f, 1000f), Struct_1(vec4<i32>(-11778i, 4047i, 32951i, 11008i), vec3<u32>(4294967295u, 89952u, 4294967295u), -19626i, 16308i, vec3<f32>(137f, 1056f, 521f)), 1u, Struct_1(vec4<i32>(-20983i, 2147483647i, -4945i, 12854i), vec3<u32>(28288u, 9954u, 0u), 1i, 2147483647i, vec3<f32>(-1783f, 1305f, -341f))), Struct_2(false, vec4<f32>(836f, -906f, 1073f, -1621f), Struct_1(vec4<i32>(1i, -1i, 1i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 1u), -13423i, -41036i, vec3<f32>(-1469f, -311f, -810f)), 25260u, Struct_1(vec4<i32>(0i, -44460i, -26608i, -12677i), vec3<u32>(13054u, 4294967295u, 22804u), 0i, 1i, vec3<f32>(114f, -213f, 448f))));

var<private> global1: Struct_2 = Struct_2(false, vec4<f32>(-273f, 1000f, 503f, 1049f), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 3481i, 1i), vec3<u32>(1u, 61064u, 0u), -14488i, 2147483647i, vec3<f32>(706f, -542f, 1358f)), 4294967295u, Struct_1(vec4<i32>(12791i, -4487i, -1i, 0i), vec3<u32>(21790u, 0u, 1u), -1i, 56841i, vec3<f32>(408f, -1000f, -808f)));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(false, vec4<f32>(520f, -974f, 536f, -2244f), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 2147483647i), vec3<u32>(0u, 32817u, 0u), 22575i, 2147483647i, vec3<f32>(-1000f, 2134f, 1111f)), 55101u, Struct_1(vec4<i32>(-1i, 1i, 0i, 0i), vec3<u32>(0u, 4294967295u, 100490u), 0i, 2147483647i, vec3<f32>(-215f, 1618f, -779f))), Struct_2(false, vec4<f32>(1658f, 1484f, 1018f, 638f), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), 2147483647i), vec3<u32>(15276u, 4294967295u, 4294967295u), 1i, 1i, vec3<f32>(132f, 352f, -338f)), 1u, Struct_1(vec4<i32>(13986i, 0i, 1i, 4957i), vec3<u32>(1u, 20527u, 0u), -80692i, 2147483647i, vec3<f32>(-653f, 2646f, -1000f))), Struct_2(true, vec4<f32>(-524f, -1872f, -1527f, -137f), Struct_1(vec4<i32>(2147483647i, -1i, 37384i, -12075i), vec3<u32>(0u, 0u, 4294967295u), 0i, 0i, vec3<f32>(563f, 243f, -637f)), 78282u, Struct_1(vec4<i32>(i32(-2147483648), 27887i, 2147483647i, -1i), vec3<u32>(1u, 6414u, 4294967295u), 0i, 4803i, vec3<f32>(441f, 1321f, -239f))), Struct_2(false, vec4<f32>(1640f, -124f, -256f, 1055f), Struct_1(vec4<i32>(i32(-2147483648), -456i, 9433i, 61791i), vec3<u32>(35119u, 1u, 4294967295u), 1i, 1i, vec3<f32>(-1191f, 2132f, -1578f)), 4294967295u, Struct_1(vec4<i32>(-7134i, 2147483647i, 2147483647i, 40435i), vec3<u32>(23360u, 11924u, 0u), 6477i, i32(-2147483648), vec3<f32>(1228f, -684f, 287f))), Struct_2(true, vec4<f32>(-254f, -434f, -1074f, 608f), Struct_1(vec4<i32>(-24786i, 1i, -74925i, 1i), vec3<u32>(41484u, 0u, 52236u), i32(-2147483648), i32(-2147483648), vec3<f32>(-1300f, -441f, -1076f)), 12791u, Struct_1(vec4<i32>(-46323i, i32(-2147483648), -10661i, -19076i), vec3<u32>(4294967295u, 0u, 7541u), 0i, 1i, vec3<f32>(-555f, -1389f, -1402f))), Struct_2(false, vec4<f32>(1033f, 1258f, -851f, 351f), Struct_1(vec4<i32>(61063i, 31079i, 2147483647i, 1i), vec3<u32>(0u, 89835u, 26940u), 11528i, 15796i, vec3<f32>(202f, -798f, 873f)), 0u, Struct_1(vec4<i32>(49698i, 58390i, 2147483647i, 723i), vec3<u32>(0u, 0u, 1u), -42335i, i32(-2147483648), vec3<f32>(-456f, -632f, 1195f))), Struct_2(false, vec4<f32>(-993f, 1602f, 305f, 1036f), Struct_1(vec4<i32>(31428i, 0i, 16609i, 2147483647i), vec3<u32>(4294967295u, 1960u, 0u), 2147483647i, 2147483647i, vec3<f32>(282f, -334f, -1000f)), 1u, Struct_1(vec4<i32>(-1i, 19485i, 0i, 2147483647i), vec3<u32>(61083u, 1u, 6563u), -25202i, 42420i, vec3<f32>(218f, -778f, -1177f))), Struct_2(false, vec4<f32>(242f, 112f, -463f, 643f), Struct_1(vec4<i32>(1i, 47228i, -24339i, -311i), vec3<u32>(74459u, 1u, 4294967295u), -13550i, 45390i, vec3<f32>(1424f, 1000f, 1653f)), 6129u, Struct_1(vec4<i32>(-67110i, 35992i, 2147483647i, 66500i), vec3<u32>(22138u, 39480u, 1u), 0i, i32(-2147483648), vec3<f32>(-398f, -752f, 465f))), Struct_2(true, vec4<f32>(747f, -1218f, -1000f, -351f), Struct_1(vec4<i32>(40684i, -36454i, 0i, -1i), vec3<u32>(4294967295u, 4294967295u, 3758u), -39514i, -1i, vec3<f32>(-1802f, -387f, 1347f)), 3749u, Struct_1(vec4<i32>(12224i, -59571i, 1i, 37298i), vec3<u32>(66555u, 47495u, 173u), -15453i, -1i, vec3<f32>(1000f, -1208f, -852f))), Struct_2(false, vec4<f32>(2953f, -922f, 1000f, 341f), Struct_1(vec4<i32>(28114i, 23420i, i32(-2147483648), 1i), vec3<u32>(4353u, 78256u, 2453u), -1i, 1i, vec3<f32>(268f, -216f, -2246f)), 4294967295u, Struct_1(vec4<i32>(2147483647i, -1i, 57578i, -17664i), vec3<u32>(4294967295u, 1u, 40819u), 1i, -27879i, vec3<f32>(157f, -106f, 369f))), Struct_2(true, vec4<f32>(-649f, 147f, -1021f, 810f), Struct_1(vec4<i32>(i32(-2147483648), 26253i, 5138i, -43643i), vec3<u32>(1u, 0u, 86355u), 1i, -1i, vec3<f32>(-997f, 118f, -326f)), 1u, Struct_1(vec4<i32>(-1i, 6510i, -1i, -11493i), vec3<u32>(78007u, 22819u, 45810u), -1i, -1i, vec3<f32>(-231f, -573f, 1109f))), Struct_2(true, vec4<f32>(265f, -165f, 1256f, 185f), Struct_1(vec4<i32>(1i, 13802i, 1i, 7905i), vec3<u32>(68696u, 33540u, 24016u), i32(-2147483648), i32(-2147483648), vec3<f32>(-669f, 564f, 417f)), 1u, Struct_1(vec4<i32>(-1i, 13377i, 1i, -15580i), vec3<u32>(4294967295u, 1u, 7265u), i32(-2147483648), -1i, vec3<f32>(-1363f, 1627f, 2427f))), Struct_2(false, vec4<f32>(-1000f, 1000f, 262f, -923f), Struct_1(vec4<i32>(1i, -1i, -33493i, 1i), vec3<u32>(49837u, 0u, 1u), i32(-2147483648), -19221i, vec3<f32>(-1264f, -1836f, 1819f)), 1u, Struct_1(vec4<i32>(5777i, -7989i, 1i, -1i), vec3<u32>(29870u, 56251u, 16067u), 1i, 5213i, vec3<f32>(-925f, 279f, -239f))), Struct_2(false, vec4<f32>(887f, -1121f, 1288f, 267f), Struct_1(vec4<i32>(1i, -38436i, i32(-2147483648), i32(-2147483648)), vec3<u32>(70182u, 1u, 4802u), 4141i, -1i, vec3<f32>(3300f, -665f, -1486f)), 30427u, Struct_1(vec4<i32>(-45840i, -1i, -12413i, -41586i), vec3<u32>(29257u, 67760u, 4294967295u), 108290i, -29644i, vec3<f32>(-170f, 1299f, -1232f))), Struct_2(false, vec4<f32>(-246f, 465f, -1488f, -1419f), Struct_1(vec4<i32>(1i, -38654i, -6848i, -52073i), vec3<u32>(4294967295u, 43404u, 49579u), -42714i, 2147483647i, vec3<f32>(704f, -2253f, 613f)), 20852u, Struct_1(vec4<i32>(1i, -41230i, 21242i, i32(-2147483648)), vec3<u32>(0u, 933u, 39540u), -46541i, -1i, vec3<f32>(-1000f, 683f, -611f))), Struct_2(false, vec4<f32>(1195f, 568f, 884f, -204f), Struct_1(vec4<i32>(3643i, 0i, 0i, 1890i), vec3<u32>(23259u, 30182u, 1u), i32(-2147483648), -16655i, vec3<f32>(207f, 1010f, -384f)), 8921u, Struct_1(vec4<i32>(33324i, i32(-2147483648), -93829i, 18693i), vec3<u32>(0u, 0u, 0u), 1i, 17903i, vec3<f32>(-937f, -1546f, -738f))), Struct_2(false, vec4<f32>(1107f, -1000f, 931f, -794f), Struct_1(vec4<i32>(1i, -28794i, 20374i, -17521i), vec3<u32>(9778u, 21923u, 55133u), 68301i, -38780i, vec3<f32>(-1097f, 394f, -437f)), 1u, Struct_1(vec4<i32>(98424i, 1i, -1i, i32(-2147483648)), vec3<u32>(53584u, 32476u, 4294967295u), -31222i, 28355i, vec3<f32>(-1562f, 477f, -1000f))), Struct_2(true, vec4<f32>(1000f, -215f, -607f, -1013f), Struct_1(vec4<i32>(-25921i, 1i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 19297u), i32(-2147483648), 2147483647i, vec3<f32>(-465f, 1061f, -1122f)), 4294967295u, Struct_1(vec4<i32>(36564i, i32(-2147483648), 2147483647i, -32919i), vec3<u32>(0u, 18702u, 4294967295u), -25308i, -1i, vec3<f32>(506f, -1754f, 661f))), Struct_2(false, vec4<f32>(-100f, 310f, 1410f, -405f), Struct_1(vec4<i32>(10728i, -6577i, 0i, -1i), vec3<u32>(4294967295u, 1u, 24090u), 2147483647i, 5861i, vec3<f32>(1235f, 818f, 733f)), 4294967295u, Struct_1(vec4<i32>(-1217i, 7756i, i32(-2147483648), 16066i), vec3<u32>(28744u, 22062u, 1u), -4239i, i32(-2147483648), vec3<f32>(380f, -143f, 1207f))));

var<private> global3: u32 = 2477u;

var<private> global4: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = -415f;
    var var_1 = 16819i;
    return _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.b, firstTrailingBit(0u)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global3 = func_3(arg_0);
    var var_0 = arg_0.a.x;
    let var_1 = arg_0;
    let var_2 = 32227i;
    var var_3 = select(-(arg_0.a.yx << (vec2<u32>(u_input.c, global1.d) % vec2<u32>(32u))) | vec2<i32>(i32(-1i) * -1i, -2147483647i), global1.c.a.zx, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, abs(u_input.c)), 5u)]) >> (select(vec2<u32>(_wgslsmith_dot_vec2_u32(~global1.c.b.yy, arg_0.b.xx), ~0u), ~(~reverseBits(vec2<u32>(1u, 4294967295u))), !global4[_wgslsmith_index_u32(93017u, 5u)]) % vec2<u32>(32u));
    return global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1.d & u_input.c, firstLeadingBit(~1u), ~reverseBits(arg_0.b.x)) << (4294967295u % 32u), 14u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = global1.c.b;
    global2 = array<Struct_2, 19>();
    global3 = ~(~abs(arg_1.b.x));
    var var_1 = arg_2.b.x;
    global3 = 1u;
    return vec3<u32>(43127u, 24653u, firstTrailingBit(~arg_2.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = -1138f;
    var var_2 = _wgslsmith_f_op_f32(-arg_3.e.x);
    global1 = Struct_2(any(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_3.b.zx | _wgslsmith_mult_vec2_u32(vec2<u32>(35186u, 87u), var_0.b.zx), var_0.b.yx), 5u)]), global1.b, Struct_1(arg_3.a, func_4(func_2(global1.e), Struct_1(arg_0.a, vec3<u32>(1u, var_0.b.x, arg_0.b.x), global1.c.c, -2147483647i, var_0.e), func_2(global1.c).e, Struct_2(false, vec4<f32>(1942f, -946f, arg_3.e.x, -277f), arg_3, arg_0.b.x, Struct_1(arg_0.a, global1.c.b, -2147483647i, arg_0.a.x, global1.b.wyy))) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 0u, 1u), vec3<u32>(arg_3.b.x, u_input.c, u_input.c)), -19356i, 15304i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.e.x, arg_3.e.x, arg_3.e.x))))), 124330u, arg_0);
    var var_3 = arg_0.a & var_0.a;
    return func_2(global1.c).e;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = !select(vec3<bool>(_wgslsmith_f_op_f32(-214f - global1.b.x) < _wgslsmith_f_op_f32(max(-502f, 162f)), !(arg_0.b.x != u_input.c), global1.a || true), !(!select(vec3<bool>(true, true, false), vec3<bool>(global1.a, true, false), global1.a)), !(!select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, global1.a, global1.a), vec3<bool>(global1.a, global1.a, true))));
    global4 = array<vec2<bool>, 5>();
    let var_1 = func_2(func_2(func_1(func_2(Struct_1(arg_0.a, vec3<u32>(0u, 4294967295u, global1.e.b.x), arg_0.a.x, -6347i, arg_0.e)).c, u_input.c, _wgslsmith_mod_u32(arg_1.b.x, global1.d), func_2(func_2(Struct_1(vec4<i32>(-2147483647i, u_input.a, -9914i, global1.c.d), arg_0.b, 29619i, 20347i, arg_2)).c).c)).c);
    global4 = array<vec2<bool>, 5>();
    let var_2 = Struct_1(abs(global1.c.a), func_4(func_2(var_1.c), Struct_1(-vec4<i32>(29288i, -37907i, -1i, var_1.e.c), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.b.x, 0u) >> (vec3<u32>(var_1.e.b.x, global1.d, 0u) % vec3<u32>(32u)), select(vec3<u32>(var_1.c.b.x, 1u, u_input.c), vec3<u32>(32084u, 33905u, 4294967295u), true)), firstTrailingBit(-u_input.a), -_wgslsmith_dot_vec3_i32(global1.e.a.xyw, vec3<i32>(global1.e.a.x, arg_1.c, var_1.c.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1338f, -388f, -410f), arg_1.e, var_0.x)))), func_1(Struct_1(vec4<i32>(-1i, global1.e.a.x, 2147483647i, arg_0.a.x), vec3<u32>(var_1.e.b.x, global1.d, u_input.b), -19296i, reverseBits(1083i), arg_1.e), 7369u, ~4294967295u, global1.c), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b.x, func_2(func_1(arg_1, 1u, var_1.e.b.x, arg_1)).d), 14u)]), var_1.c.d, -15262i, _wgslsmith_f_op_vec3_f32(min(func_2(Struct_1(global1.c.a, ~arg_0.b, 31121i, _wgslsmith_dot_vec3_i32(arg_0.a.yyy, vec3<i32>(0i, var_1.e.a.x, var_1.c.c)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-757f, 935f, 480f))))).c.e, arg_0.e)));
    return !vec4<bool>(var_1.a, true, var_0.x, (_wgslsmith_sub_i32(global1.c.a.x, -2147483647i) > arg_1.a.x) && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.xwy;
    global4 = array<vec2<bool>, 5>();
    var var_1 = -_wgslsmith_mult_vec2_i32(-vec2<i32>(reverseBits(global1.c.a.x), -global1.e.d), global1.c.a.yw);
    var var_2 = select(!(!func_5(func_1(global1.c, 24077u, 0u, global1.c), Struct_1(vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x), global1.c.b, var_1.x, 14037i, vec3<f32>(global1.e.e.x, -2703f, global1.c.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, -1156f, -128f)))), select(!(!vec4<bool>(global1.a, true, true, global1.a)), select(!(!vec4<bool>(true, true, global1.a, global1.a)), vec4<bool>(global1.a, all(vec3<bool>(true, global1.a, global1.a)), func_2(Struct_1(global1.e.a, vec3<u32>(30185u, 18890u, u_input.b), global1.c.d, var_1.x, global1.e.e)).a, !global1.a), -1000f > func_2(Struct_1(vec4<i32>(27592i, var_1.x, global1.e.c, global1.e.a.x), global1.c.b, global1.c.d, u_input.a, vec3<f32>(-240f, var_0.x, -171f))).c.e.x), !(!global1.a)), select(!(!(!vec4<bool>(true, true, true, global1.a))), vec4<bool>(global1.a, ~global1.d <= min(4294967295u, 87809u), all(!global4[_wgslsmith_index_u32(29446u, 5u)]), true), select(vec4<bool>(global1.a, false, all(vec2<bool>(false, true)), global1.a), !(!vec4<bool>(global1.a, true, global1.a, true)), !select(global1.a, global1.a, false))));
    var_1 = select(~(reverseBits(global1.e.a.zw) | -global1.c.a.xx), _wgslsmith_mod_vec2_i32(global1.c.a.xw, select(global1.e.a.wy, global1.c.a.zz, var_2.x)), var_2.x);
    global1 = func_2(global1.e);
    let var_3 = select(vec3<bool>(true, var_2.x, false), select(select(vec3<bool>(global1.a || global1.a, true, all(vec2<bool>(true, true))), !var_2.zzw, !(!var_2.xwy)), !vec3<bool>(!global1.a, true, false), global1.a && false), true);
    var var_4 = var_0.zx;
    var_4 = var_0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(global1.e.a, vec2<u32>(0u, 1u));
}

