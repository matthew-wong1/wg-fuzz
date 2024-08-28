struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(true, Struct_2(vec4<i32>(12252i, 2174i, 43537i, i32(-2147483648)), vec4<f32>(248f, -770f, -587f, 297f), 0u, Struct_1(-38024i), 0i), vec3<f32>(-1447f, -742f, 865f), vec4<u32>(0u, 6853u, 0u, 1u), Struct_2(vec4<i32>(0i, 2147483647i, -15351i, i32(-2147483648)), vec4<f32>(-606f, 105f, -569f, 1984f), 0u, Struct_1(1i), 4857i)), Struct_3(false, Struct_2(vec4<i32>(-243i, -41685i, 46705i, -17401i), vec4<f32>(-336f, -1865f, -1006f, -174f), 2268u, Struct_1(-88449i), 27018i), vec3<f32>(2056f, -654f, 1000f), vec4<u32>(1u, 0u, 1u, 0u), Struct_2(vec4<i32>(-7726i, -1i, -46733i, -42016i), vec4<f32>(1761f, 1757f, -1395f, -841f), 15831u, Struct_1(-1i), -57840i)), Struct_3(true, Struct_2(vec4<i32>(-79759i, -1i, 9035i, -1i), vec4<f32>(-1386f, 163f, -1114f, 298f), 34307u, Struct_1(2147483647i), 0i), vec3<f32>(-636f, 1073f, 467f), vec4<u32>(22748u, 4294967295u, 7881u, 4294967295u), Struct_2(vec4<i32>(21862i, -1i, 50447i, 29772i), vec4<f32>(780f, 1496f, -1248f, 692f), 1u, Struct_1(13587i), 74282i)), Struct_3(false, Struct_2(vec4<i32>(23992i, 2147483647i, 1i, 13382i), vec4<f32>(-210f, 2592f, -1000f, 2511f), 22923u, Struct_1(-1i), 68045i), vec3<f32>(233f, -1578f, -635f), vec4<u32>(0u, 8708u, 0u, 14660u), Struct_2(vec4<i32>(-36490i, 0i, 1i, -1i), vec4<f32>(1494f, 879f, 531f, 1470f), 0u, Struct_1(-40794i), -1i)), Struct_3(false, Struct_2(vec4<i32>(29001i, 2147483647i, 1i, -22070i), vec4<f32>(647f, -403f, 215f, 238f), 0u, Struct_1(-1i), i32(-2147483648)), vec3<f32>(2397f, 148f, -1878f), vec4<u32>(49784u, 26732u, 1u, 44284u), Struct_2(vec4<i32>(46943i, 15180i, -1i, 43475i), vec4<f32>(434f, -769f, -589f, -321f), 4294967295u, Struct_1(i32(-2147483648)), 2147483647i)), Struct_3(false, Struct_2(vec4<i32>(2147483647i, i32(-2147483648), -1i, 51253i), vec4<f32>(-1111f, 1000f, 1000f, -775f), 9140u, Struct_1(-17669i), -69316i), vec3<f32>(-477f, 568f, -2638f), vec4<u32>(25607u, 45596u, 0u, 4294967295u), Struct_2(vec4<i32>(1i, 14731i, -34565i, 0i), vec4<f32>(-1000f, -1023f, -1156f, 786f), 70031u, Struct_1(i32(-2147483648)), 28974i)), Struct_3(false, Struct_2(vec4<i32>(i32(-2147483648), -29400i, -1i, i32(-2147483648)), vec4<f32>(606f, -353f, 1442f, -2503f), 54111u, Struct_1(-1i), 2147483647i), vec3<f32>(822f, 1181f, 1109f), vec4<u32>(4294967295u, 0u, 19795u, 26245u), Struct_2(vec4<i32>(59525i, i32(-2147483648), 5678i, 2147483647i), vec4<f32>(797f, -1335f, -421f, -206f), 1u, Struct_1(-22681i), -15681i)), Struct_3(false, Struct_2(vec4<i32>(5694i, 3821i, 2147483647i, -7830i), vec4<f32>(456f, -414f, 2056f, 1419f), 56693u, Struct_1(26913i), -1i), vec3<f32>(-749f, -234f, -332f), vec4<u32>(48176u, 0u, 16116u, 1u), Struct_2(vec4<i32>(-6244i, 18518i, -1i, 2147483647i), vec4<f32>(1255f, -1000f, 391f, -838f), 0u, Struct_1(-1i), 33719i)), Struct_3(true, Struct_2(vec4<i32>(-25133i, 28735i, 0i, 40888i), vec4<f32>(-1231f, 981f, 960f, 1257f), 0u, Struct_1(39694i), 10698i), vec3<f32>(409f, -1393f, -143f), vec4<u32>(1u, 0u, 102719u, 1u), Struct_2(vec4<i32>(-1i, i32(-2147483648), 13393i, -27166i), vec4<f32>(211f, 603f, 543f, -1443f), 74311u, Struct_1(-4030i), 18439i)), Struct_3(false, Struct_2(vec4<i32>(-10975i, 1i, 34094i, -29389i), vec4<f32>(1250f, 1226f, -602f, 1058f), 1u, Struct_1(-22890i), -21118i), vec3<f32>(-1314f, 2556f, 801f), vec4<u32>(0u, 34307u, 47908u, 0u), Struct_2(vec4<i32>(0i, -1i, -23853i, 26615i), vec4<f32>(-616f, 829f, -731f, 688f), 0u, Struct_1(1i), 7156i)), Struct_3(true, Struct_2(vec4<i32>(-26596i, i32(-2147483648), 77111i, 20568i), vec4<f32>(-399f, 1000f, -763f, -1006f), 5123u, Struct_1(0i), 2147483647i), vec3<f32>(1683f, -1565f, -375f), vec4<u32>(3098u, 78219u, 4294967295u, 41876u), Struct_2(vec4<i32>(0i, 2147483647i, -60792i, 17777i), vec4<f32>(260f, 831f, -1469f, -773f), 0u, Struct_1(2147483647i), 1i)), Struct_3(false, Struct_2(vec4<i32>(1i, 31023i, 2147483647i, i32(-2147483648)), vec4<f32>(-508f, 975f, 247f, 428f), 1u, Struct_1(i32(-2147483648)), 1i), vec3<f32>(-1591f, 1244f, -283f), vec4<u32>(0u, 4294967295u, 4294967295u, 12258u), Struct_2(vec4<i32>(17239i, 1i, 0i, 2147483647i), vec4<f32>(137f, -930f, -884f, 1085f), 33988u, Struct_1(14428i), -27897i)), Struct_3(true, Struct_2(vec4<i32>(1i, 0i, 2147483647i, -29421i), vec4<f32>(-397f, 1409f, -1000f, 352f), 61799u, Struct_1(i32(-2147483648)), i32(-2147483648)), vec3<f32>(481f, 967f, -1501f), vec4<u32>(16515u, 5354u, 16194u, 0u), Struct_2(vec4<i32>(-523i, 1i, -48420i, 1i), vec4<f32>(-1000f, -1023f, 550f, -448f), 4294967295u, Struct_1(-10131i), -6306i)), Struct_3(false, Struct_2(vec4<i32>(1i, -46938i, 1i, 0i), vec4<f32>(-361f, -1000f, 201f, -1299f), 4491u, Struct_1(0i), i32(-2147483648)), vec3<f32>(864f, 1472f, -395f), vec4<u32>(18297u, 31303u, 0u, 1u), Struct_2(vec4<i32>(-1i, 0i, -56583i, 15598i), vec4<f32>(765f, -974f, 1512f, -1000f), 20373u, Struct_1(29313i), -43596i)), Struct_3(false, Struct_2(vec4<i32>(-40314i, -22050i, 0i, 56538i), vec4<f32>(1000f, -2057f, -483f, 374f), 19325u, Struct_1(1i), 49387i), vec3<f32>(1929f, -907f, -210f), vec4<u32>(48341u, 52513u, 0u, 11567u), Struct_2(vec4<i32>(i32(-2147483648), -1i, -1i, 0i), vec4<f32>(-544f, -106f, -1000f, 381f), 4294967295u, Struct_1(-1i), -39211i)), Struct_3(true, Struct_2(vec4<i32>(30311i, i32(-2147483648), -17840i, -25214i), vec4<f32>(-591f, -1773f, -1610f, 116f), 136813u, Struct_1(-1i), 1i), vec3<f32>(-998f, 371f, 1224f), vec4<u32>(4294967295u, 54741u, 1u, 0u), Struct_2(vec4<i32>(37131i, -36892i, i32(-2147483648), -1i), vec4<f32>(-915f, 721f, 1635f, 1144f), 25272u, Struct_1(1i), -18767i)), Struct_3(true, Struct_2(vec4<i32>(15594i, 1i, 1i, -44170i), vec4<f32>(-553f, -553f, -968f, 344f), 4294967295u, Struct_1(1i), 2147483647i), vec3<f32>(297f, 705f, 457f), vec4<u32>(92992u, 70159u, 1u, 80903u), Struct_2(vec4<i32>(i32(-2147483648), -8884i, 2147483647i, 14852i), vec4<f32>(-1000f, 266f, 3180f, 1182f), 4294967295u, Struct_1(18550i), -1i)), Struct_3(false, Struct_2(vec4<i32>(24972i, 15571i, 0i, -1i), vec4<f32>(464f, -1000f, -396f, -1484f), 62549u, Struct_1(32296i), i32(-2147483648)), vec3<f32>(-1000f, 320f, -1226f), vec4<u32>(0u, 5414u, 1u, 1u), Struct_2(vec4<i32>(-45222i, -1i, i32(-2147483648), -1i), vec4<f32>(644f, -586f, 429f, -948f), 13846u, Struct_1(-21674i), -439i)), Struct_3(false, Struct_2(vec4<i32>(0i, 0i, -35651i, 0i), vec4<f32>(325f, -1106f, 1667f, 1373f), 16554u, Struct_1(9682i), -1i), vec3<f32>(-108f, -1317f, 1432f), vec4<u32>(0u, 57349u, 20852u, 84164u), Struct_2(vec4<i32>(2147483647i, 2750i, -379i, 2147483647i), vec4<f32>(-1199f, 261f, 517f, 527f), 49749u, Struct_1(-913i), 45884i)), Struct_3(false, Struct_2(vec4<i32>(0i, 15510i, -47291i, 2147483647i), vec4<f32>(294f, -1000f, 1000f, 2351f), 0u, Struct_1(2147483647i), -19973i), vec3<f32>(944f, 430f, -786f), vec4<u32>(1515u, 62790u, 0u, 7731u), Struct_2(vec4<i32>(i32(-2147483648), -11877i, -9704i, 1i), vec4<f32>(1036f, 1840f, 144f, 344f), 1u, Struct_1(-1i), 0i)), Struct_3(false, Struct_2(vec4<i32>(-25158i, 1i, 1i, -68542i), vec4<f32>(-798f, -308f, -121f, 1147f), 1u, Struct_1(0i), 577i), vec3<f32>(-201f, 720f, 688f), vec4<u32>(40778u, 44325u, 1u, 12714u), Struct_2(vec4<i32>(i32(-2147483648), 26125i, -44933i, 2147483647i), vec4<f32>(481f, 750f, -165f, -1063f), 0u, Struct_1(27161i), 2147483647i)), Struct_3(false, Struct_2(vec4<i32>(-25559i, -1i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-854f, -118f, -1000f, 104f), 4294967295u, Struct_1(-1098i), -7131i), vec3<f32>(201f, -102f, -1481f), vec4<u32>(18883u, 11904u, 34026u, 4294967295u), Struct_2(vec4<i32>(-11903i, -1i, -3348i, 1i), vec4<f32>(-1466f, -1246f, 2005f, 323f), 0u, Struct_1(0i), -940i)), Struct_3(true, Struct_2(vec4<i32>(-73100i, 0i, -1i, 1i), vec4<f32>(419f, 796f, -1692f, 2755f), 0u, Struct_1(2147483647i), -32709i), vec3<f32>(-317f, 1000f, -237f), vec4<u32>(21288u, 16698u, 29184u, 68292u), Struct_2(vec4<i32>(-26988i, 2147483647i, 109805i, 1i), vec4<f32>(-717f, -370f, -1248f, 386f), 18516u, Struct_1(10985i), -29669i)), Struct_3(true, Struct_2(vec4<i32>(-66764i, -46870i, 0i, -1i), vec4<f32>(-1000f, -330f, -1129f, 800f), 0u, Struct_1(0i), 1i), vec3<f32>(1064f, -244f, -522f), vec4<u32>(8867u, 106921u, 31663u, 4294967295u), Struct_2(vec4<i32>(-22260i, -23247i, 0i, 37622i), vec4<f32>(-1247f, 2183f, 159f, -1204f), 0u, Struct_1(25826i), -1i)), Struct_3(false, Struct_2(vec4<i32>(-31733i, 492i, -13518i, 2147483647i), vec4<f32>(651f, 430f, 1183f, -489f), 24160u, Struct_1(3342i), -2735i), vec3<f32>(1287f, -240f, 881f), vec4<u32>(72814u, 4294967295u, 12141u, 0u), Struct_2(vec4<i32>(37086i, -1i, -1i, 21256i), vec4<f32>(-679f, 1000f, 1000f, -105f), 0u, Struct_1(0i), 1i)), Struct_3(true, Struct_2(vec4<i32>(-1i, i32(-2147483648), 41820i, -26474i), vec4<f32>(1380f, 794f, 1549f, 119f), 1u, Struct_1(-29956i), 1i), vec3<f32>(-580f, -1000f, -1780f), vec4<u32>(1u, 57398u, 1u, 43981u), Struct_2(vec4<i32>(-14528i, -7302i, 0i, 0i), vec4<f32>(-217f, 911f, 2346f, 676f), 1u, Struct_1(11232i), i32(-2147483648))), Struct_3(false, Struct_2(vec4<i32>(32277i, i32(-2147483648), 2147483647i, -1i), vec4<f32>(-958f, -575f, 496f, -1000f), 1u, Struct_1(-1i), 2147483647i), vec3<f32>(1274f, -287f, 438f), vec4<u32>(22423u, 18076u, 1u, 1u), Struct_2(vec4<i32>(-24014i, 0i, 1i, -7468i), vec4<f32>(-822f, 1587f, -1626f, -539f), 0u, Struct_1(-44000i), -1i)), Struct_3(false, Struct_2(vec4<i32>(i32(-2147483648), 13164i, -55046i, i32(-2147483648)), vec4<f32>(-1042f, -201f, -776f, 1000f), 4294967295u, Struct_1(-1i), 2147483647i), vec3<f32>(1000f, 347f, -1102f), vec4<u32>(0u, 0u, 1u, 28707u), Struct_2(vec4<i32>(1i, 3608i, 15133i, 2147483647i), vec4<f32>(-282f, 912f, 648f, 1915f), 113558u, Struct_1(-1i), -16489i)), Struct_3(false, Struct_2(vec4<i32>(i32(-2147483648), 12805i, 0i, -60i), vec4<f32>(131f, -274f, -746f, -1249f), 8025u, Struct_1(0i), 0i), vec3<f32>(1210f, 339f, -141f), vec4<u32>(4294967295u, 1u, 16515u, 12243u), Struct_2(vec4<i32>(-18122i, -49570i, 2147483647i, 2147483647i), vec4<f32>(1000f, -365f, -590f, 346f), 54260u, Struct_1(2147483647i), -33504i)), Struct_3(false, Struct_2(vec4<i32>(77991i, i32(-2147483648), i32(-2147483648), -1i), vec4<f32>(1696f, 1228f, 784f, -1247f), 29754u, Struct_1(-25595i), 37890i), vec3<f32>(-258f, -1569f, -503f), vec4<u32>(1u, 59725u, 1u, 4294967295u), Struct_2(vec4<i32>(-33879i, -25586i, 1i, 36679i), vec4<f32>(-490f, 2185f, -545f, -687f), 4294967295u, Struct_1(-11590i), -87146i)));

var<private> global2: array<vec4<u32>, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-272f)), _wgslsmith_f_op_f32(f32(-1f) * -1155f))) + 222f)));
    let var_1 = Struct_3(any(!select(vec4<bool>(true, true, true, arg_1.d.a), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, arg_1.d.a, arg_1.d.a), vec4<bool>(arg_1.d.a, false, true, false)), -51967i >= u_input.d.x)), Struct_2(-firstLeadingBit(arg_1.d.b.a) >> (reverseBits(arg_1.d.d) % vec4<u32>(32u)), arg_1.d.b.b, arg_1.a, Struct_1((arg_0.a ^ arg_1.d.b.d.a) >> (arg_1.d.b.c % 32u)), firstLeadingBit(_wgslsmith_sub_i32(0i, firstLeadingBit(arg_0.a)))), _wgslsmith_f_op_vec3_f32(floor(arg_1.d.c)), vec4<u32>(arg_1.a, arg_1.d.e.c, 1u, _wgslsmith_mod_u32(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(24974u, u_input.c, arg_1.a), arg_1.d.d.xwz))), arg_1.d.b);
    var var_2 = arg_0;
    var_2 = arg_1.d.b.d;
    global0 = array<Struct_3, 15>();
    return 629f;
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(2824f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.d.x), Struct_4(4294967295u, 982f, vec3<f32>(-109f, 1327f, 1532f), Struct_3(false, Struct_2(vec4<i32>(-2147483647i, arg_0.x, 15583i, 19381i), vec4<f32>(942f, 1000f, 882f, -332f), 0u, Struct_1(18500i), 59521i), vec3<f32>(-118f, -176f, 653f), vec4<u32>(4294967295u, 1u, 65160u, u_input.c), Struct_2(vec4<i32>(u_input.d.x, u_input.a.x, arg_0.x, u_input.b), vec4<f32>(1347f, -878f, 346f, -1000f), 0u, Struct_1(u_input.a.x), 2147483647i)))))), _wgslsmith_f_op_f32(f32(-1f) * -100f)))));
    global1 = array<Struct_3, 30>();
    global2 = array<vec4<u32>, 6>();
    var var_1 = Struct_2(~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.d.x, arg_0.x), u_input.b), ~firstTrailingBit(arg_0.x), select(_wgslsmith_sub_i32(u_input.b, -55525i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), arg_0.zyz), true), -u_input.d.x), vec4<f32>(1f, 1f, 1f, 1f), u_input.c, Struct_1(_wgslsmith_dot_vec4_i32(~arg_0, vec4<i32>(~13310i, firstLeadingBit(-13670i), 1i, ~(-1i)))), arg_0.x);
    var_1 = Struct_2(_wgslsmith_add_vec4_i32(reverseBits(arg_0) >> (global2[_wgslsmith_index_u32(var_1.c, 6u)] % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(var_1.d.a), u_input.b, firstTrailingBit(u_input.b) >> (60981u % 32u), 1i)), var_1.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.c, firstLeadingBit(1220u)), _wgslsmith_clamp_u32(~(~u_input.c), ~var_1.c, u_input.c)), Struct_1(var_1.d.a), var_1.d.a);
    return !(!(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32) -> i32 {
    global2 = array<vec4<u32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(step(1685f, _wgslsmith_f_op_f32(ceil(226f))));
    var var_1 = select(vec3<bool>(false, !(arg_1 & (var_0 < var_0)), (arg_2 & u_input.b) > 2147483647i), vec3<bool>(any(vec3<bool>(all(vec3<bool>(arg_1, false, arg_1)), any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), false)), true, arg_1), select(select(!select(vec3<bool>(arg_1, true, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, false, true)), vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(false, false, arg_1), !vec3<bool>(false, false, arg_1), arg_1)), func_2(vec4<i32>(~arg_2, i32(-1i) * -1i, _wgslsmith_sub_i32(arg_2, -2286i), -12708i)), arg_1 | !arg_1));
    var var_2 = min(~_wgslsmith_div_u32(_wgslsmith_mult_u32(select(arg_0, 0u, arg_1), max(1u, arg_0)), u_input.c), 2891u);
    var var_3 = var_1.x;
    return min(_wgslsmith_dot_vec3_i32(u_input.d, u_input.a), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(~func_1(~u_input.c, true, -50033i), 0i, 2147483647i, u_input.d.x ^ _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d.x, u_input.a.x), u_input.b)), -_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(51075u, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u))), reverseBits(abs(vec4<i32>(1i, u_input.b, -10824i, u_input.d.x)))), vec4<bool>(true, !(!any(vec2<bool>(false, true))), true, !(!any(vec2<bool>(false, false)))));
    var_0 = ~vec4<i32>(-(~0i), -39702i, -u_input.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(16136i, 0i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(15006i, 33254i), vec2<i32>(u_input.d.x, 1i), u_input.a.yy)));
    var var_1 = global0[_wgslsmith_index_u32(~(~15427u), 15u)];
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(24272i, var_0.x, 1i, -14028i), vec4<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.d.a, -20535i), var_1.e.a.zw)), _wgslsmith_sub_i32(firstLeadingBit(-u_input.d.x), firstLeadingBit(-2147483647i)), _wgslsmith_dot_vec4_i32(reverseBits(var_1.b.a << (global2[_wgslsmith_index_u32(1u, 6u)] % vec4<u32>(32u))), select(abs(vec4<i32>(var_1.b.d.a, -4546i, -57577i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_1.e.d.a, 23145i, -1i), var_1.e.a), select(vec4<bool>(false, true, var_1.a, true), vec4<bool>(var_1.a, true, var_1.a, true), true))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b, -1i), vec3<i32>(-1i, 0i, var_1.e.e)) << (1u % 32u)));
    global1 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec2<i32>(-(~u_input.a.x), -2147483647i), 1u, var_1.c.x, u_input.c);
}

