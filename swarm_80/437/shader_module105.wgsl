struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(11445u, i32(-2147483648), vec3<i32>(27526i, -1i, 0i), vec4<f32>(389f, -241f, -325f, -1677f), vec4<i32>(6025i, 23757i, 0i, -21277i)), vec4<bool>(false, true, true, true), Struct_1(48948u, 1i, vec3<i32>(-1i, -64098i, 2147483647i), vec4<f32>(-239f, -272f, 307f, 1000f), vec4<i32>(-10851i, 15505i, -6628i, 3988i)), vec3<i32>(1872i, -31446i, -25883i)), Struct_2(Struct_1(29877u, 2147483647i, vec3<i32>(15845i, 55108i, 6293i), vec4<f32>(578f, -1489f, -300f, -1188f), vec4<i32>(-50677i, 22624i, -36191i, 29823i)), vec4<bool>(false, false, true, false), Struct_1(1u, 2147483647i, vec3<i32>(38253i, -3363i, 14065i), vec4<f32>(1507f, -182f, 104f, 403f), vec4<i32>(-33634i, 1i, 1i, 302i)), vec3<i32>(2147483647i, i32(-2147483648), -8883i)), Struct_2(Struct_1(4294967295u, 10670i, vec3<i32>(-1i, 2147483647i, 0i), vec4<f32>(973f, 768f, -218f, 2554f), vec4<i32>(73744i, i32(-2147483648), -1i, 29830i)), vec4<bool>(false, true, false, true), Struct_1(1u, -9149i, vec3<i32>(27158i, -31902i, -11806i), vec4<f32>(198f, -112f, 172f, 588f), vec4<i32>(66599i, 53535i, 4317i, 0i)), vec3<i32>(14317i, -49363i, 1i)), Struct_2(Struct_1(4294967295u, -6372i, vec3<i32>(-26883i, 11589i, 2147483647i), vec4<f32>(-430f, 1629f, -744f, -771f), vec4<i32>(-17917i, -34957i, i32(-2147483648), i32(-2147483648))), vec4<bool>(true, false, true, true), Struct_1(11193u, 0i, vec3<i32>(i32(-2147483648), 21403i, 1i), vec4<f32>(-2515f, 2191f, 362f, 681f), vec4<i32>(-45943i, 0i, 2147483647i, 38093i)), vec3<i32>(12298i, i32(-2147483648), 1i)), Struct_2(Struct_1(16499u, 23732i, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-1522f, -747f, 1068f, 1000f), vec4<i32>(-47822i, 2147483647i, 21502i, 0i)), vec4<bool>(true, false, true, true), Struct_1(0u, 1i, vec3<i32>(7825i, i32(-2147483648), i32(-2147483648)), vec4<f32>(131f, -147f, 818f, 1182f), vec4<i32>(0i, 0i, 2147483647i, -50680i)), vec3<i32>(-23999i, i32(-2147483648), -1i)), Struct_2(Struct_1(1u, -1i, vec3<i32>(35896i, 2147483647i, 35331i), vec4<f32>(-745f, 1093f, 190f, -1000f), vec4<i32>(-1i, 5277i, -37115i, 1i)), vec4<bool>(false, true, true, true), Struct_1(1u, -1i, vec3<i32>(2147483647i, -163i, -2823i), vec4<f32>(-1032f, -470f, 957f, 696f), vec4<i32>(2147483647i, 2147483647i, -20614i, -13522i)), vec3<i32>(1i, -1i, 0i)), Struct_2(Struct_1(93394u, 0i, vec3<i32>(0i, -4357i, 1i), vec4<f32>(-351f, -797f, 390f, 915f), vec4<i32>(2147483647i, -1i, 0i, 0i)), vec4<bool>(true, true, false, true), Struct_1(13122u, 45118i, vec3<i32>(0i, i32(-2147483648), 0i), vec4<f32>(-1076f, 235f, 391f, -1000f), vec4<i32>(11524i, 1i, -36973i, 69444i)), vec3<i32>(-22807i, -22182i, 2147483647i)), Struct_2(Struct_1(75735u, i32(-2147483648), vec3<i32>(76844i, 15553i, -39911i), vec4<f32>(-198f, -230f, 1524f, -1187f), vec4<i32>(-21595i, i32(-2147483648), -56996i, -1i)), vec4<bool>(false, false, true, false), Struct_1(25979u, 10848i, vec3<i32>(-6206i, -3132i, i32(-2147483648)), vec4<f32>(1000f, -530f, -1000f, 730f), vec4<i32>(-1i, -11164i, 2147483647i, 1i)), vec3<i32>(i32(-2147483648), 28175i, 26071i)), Struct_2(Struct_1(4294967295u, 0i, vec3<i32>(-17568i, -17714i, 1i), vec4<f32>(568f, -1738f, -1608f, -477f), vec4<i32>(i32(-2147483648), 38815i, 2147483647i, 1i)), vec4<bool>(true, true, false, true), Struct_1(9264u, 1i, vec3<i32>(-1i, i32(-2147483648), 1i), vec4<f32>(-1880f, 1277f, 768f, -2236f), vec4<i32>(i32(-2147483648), 45801i, -44127i, 2147483647i)), vec3<i32>(-44006i, -1i, -4857i)), Struct_2(Struct_1(1u, i32(-2147483648), vec3<i32>(2147483647i, 39097i, -29441i), vec4<f32>(481f, -455f, -694f, -145f), vec4<i32>(i32(-2147483648), 48623i, 11242i, 2147483647i)), vec4<bool>(false, true, true, false), Struct_1(41533u, 0i, vec3<i32>(71391i, 1i, -1i), vec4<f32>(338f, -923f, 299f, 700f), vec4<i32>(2147483647i, i32(-2147483648), -1i, -1i)), vec3<i32>(-1i, -8394i, 35352i)), Struct_2(Struct_1(28761u, -36273i, vec3<i32>(3753i, -1i, -23317i), vec4<f32>(-128f, -1950f, 785f, -693f), vec4<i32>(0i, 9109i, 1i, -1i)), vec4<bool>(false, false, false, false), Struct_1(676u, 0i, vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<f32>(1311f, 1120f, -2428f, -506f), vec4<i32>(2147483647i, 0i, 1i, -17835i)), vec3<i32>(0i, 1i, i32(-2147483648))), Struct_2(Struct_1(48033u, 66223i, vec3<i32>(1i, 38713i, 0i), vec4<f32>(771f, 1000f, -292f, 1007f), vec4<i32>(i32(-2147483648), i32(-2147483648), 20673i, i32(-2147483648))), vec4<bool>(true, false, true, true), Struct_1(0u, 0i, vec3<i32>(1i, -1i, -49688i), vec4<f32>(524f, 1239f, 156f, -2137f), vec4<i32>(-26215i, -54367i, i32(-2147483648), 0i)), vec3<i32>(-32208i, -17272i, 1i)), Struct_2(Struct_1(0u, i32(-2147483648), vec3<i32>(i32(-2147483648), 1026i, 2147483647i), vec4<f32>(1563f, 131f, -1179f, -1003f), vec4<i32>(1i, 2147483647i, 0i, -1i)), vec4<bool>(true, false, false, true), Struct_1(0u, i32(-2147483648), vec3<i32>(-1i, 23619i, 2301i), vec4<f32>(540f, -692f, 356f, 1972f), vec4<i32>(1i, -1i, 0i, -1974i)), vec3<i32>(-20588i, -28053i, 37327i)), Struct_2(Struct_1(0u, 25158i, vec3<i32>(6i, 465i, 23262i), vec4<f32>(430f, -609f, -598f, -148f), vec4<i32>(1i, 49028i, i32(-2147483648), 25215i)), vec4<bool>(false, false, false, false), Struct_1(1u, 43561i, vec3<i32>(3752i, i32(-2147483648), -20739i), vec4<f32>(-1000f, -2070f, -902f, -502f), vec4<i32>(19149i, -54490i, 42877i, 2147483647i)), vec3<i32>(1927i, 6371i, 48709i)), Struct_2(Struct_1(4294967295u, 29701i, vec3<i32>(2147483647i, i32(-2147483648), 22251i), vec4<f32>(-418f, 1150f, -800f, -384f), vec4<i32>(-8501i, i32(-2147483648), 0i, 1i)), vec4<bool>(true, false, true, false), Struct_1(75853u, -13522i, vec3<i32>(71645i, 13266i, -8295i), vec4<f32>(-732f, -1561f, -1615f, -2028f), vec4<i32>(45296i, -28014i, 2147483647i, -19822i)), vec3<i32>(2147483647i, 28709i, 25714i)), Struct_2(Struct_1(32757u, -1i, vec3<i32>(-9177i, i32(-2147483648), -10284i), vec4<f32>(1185f, -530f, -283f, -1114f), vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648))), vec4<bool>(false, true, true, true), Struct_1(37964u, i32(-2147483648), vec3<i32>(1i, -1i, 39737i), vec4<f32>(224f, -1423f, 929f, 696f), vec4<i32>(-49270i, -50543i, -2339i, -5631i)), vec3<i32>(22336i, 0i, 46954i)), Struct_2(Struct_1(3508u, 2147483647i, vec3<i32>(7330i, i32(-2147483648), 34068i), vec4<f32>(623f, -1149f, -386f, 772f), vec4<i32>(0i, 0i, 20924i, 0i)), vec4<bool>(false, true, false, true), Struct_1(0u, 44270i, vec3<i32>(-10501i, 0i, -14322i), vec4<f32>(1000f, -1289f, 1859f, -3244f), vec4<i32>(0i, 17010i, i32(-2147483648), 2147483647i)), vec3<i32>(i32(-2147483648), 1i, 37333i)), Struct_2(Struct_1(4294967295u, 2147483647i, vec3<i32>(1i, -1i, 51574i), vec4<f32>(455f, 1155f, 1309f, -1216f), vec4<i32>(58512i, -878i, -18344i, i32(-2147483648))), vec4<bool>(false, false, false, true), Struct_1(0u, 7334i, vec3<i32>(0i, 4424i, i32(-2147483648)), vec4<f32>(-1396f, -614f, -1702f, -404f), vec4<i32>(-6092i, -20940i, -50453i, -39679i)), vec3<i32>(21971i, 0i, 10331i)), Struct_2(Struct_1(1u, -1i, vec3<i32>(-16951i, -1i, 8305i), vec4<f32>(-746f, 903f, -701f, -830f), vec4<i32>(i32(-2147483648), -57493i, 6967i, 2147483647i)), vec4<bool>(true, true, true, true), Struct_1(32378u, 2147483647i, vec3<i32>(-16733i, 2147483647i, 23286i), vec4<f32>(-300f, -1091f, -1183f, -573f), vec4<i32>(0i, -1i, 14537i, 18480i)), vec3<i32>(-41761i, 1i, 15219i)), Struct_2(Struct_1(11332u, -1i, vec3<i32>(-32893i, -1i, i32(-2147483648)), vec4<f32>(380f, 637f, -176f, 928f), vec4<i32>(-1i, -71687i, -30263i, -17822i)), vec4<bool>(false, false, true, true), Struct_1(4294967295u, 1i, vec3<i32>(i32(-2147483648), 12630i, -7945i), vec4<f32>(562f, 2058f, -2746f, 528f), vec4<i32>(i32(-2147483648), 13005i, -17391i, 32852i)), vec3<i32>(13272i, i32(-2147483648), 0i)), Struct_2(Struct_1(1u, 43583i, vec3<i32>(-13996i, i32(-2147483648), 0i), vec4<f32>(-1036f, -1101f, 264f, 1000f), vec4<i32>(-14898i, 0i, -1i, -80421i)), vec4<bool>(true, true, true, false), Struct_1(82558u, 2147483647i, vec3<i32>(-2850i, 34170i, 20484i), vec4<f32>(1177f, 237f, 2101f, 281f), vec4<i32>(2147483647i, -16173i, i32(-2147483648), 0i)), vec3<i32>(-27333i, -1i, -19249i)), Struct_2(Struct_1(4294967295u, i32(-2147483648), vec3<i32>(-1180i, 42482i, i32(-2147483648)), vec4<f32>(-531f, -1480f, 1359f, -432f), vec4<i32>(2147483647i, i32(-2147483648), 0i, -1i)), vec4<bool>(true, false, true, false), Struct_1(4294967295u, 14745i, vec3<i32>(0i, i32(-2147483648), 42806i), vec4<f32>(-928f, -1098f, 340f, 597f), vec4<i32>(i32(-2147483648), 11896i, 1i, 42544i)), vec3<i32>(1i, 28705i, -28907i)));

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<i32>, 18>;

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(7489u, 1u), vec2<u32>(38963u, 4294967295u), vec2<u32>(1u, 18469u), vec2<u32>(35966u, 24079u), vec2<u32>(29887u, 29544u), vec2<u32>(10253u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(107534u, 0u), vec2<u32>(6860u, 1u), vec2<u32>(4331u, 10521u), vec2<u32>(40486u, 21292u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(60459u, 0u), vec2<u32>(0u, 1u), vec2<u32>(34107u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_mod_u32(u_input.b, u_input.e);
    var var_1 = -27310i;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.a.x, u_input.d, -11675i), vec4<i32>(u_input.c, u_input.d, 1i, -6716i) & vec4<i32>(-9919i, u_input.c, 32465i, -1i))), _wgslsmith_mod_i32(-u_input.a.x, ~(~u_input.c)), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-18035i, -2147483647i), abs(-24830i), u_input.d), ~(-4411i)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.d, -7578i, -35784i, -2147483647i), -reverseBits(vec4<i32>(-1i, u_input.a.x, u_input.c, 0i))), vec4<i32>(reverseBits(1i), u_input.d, u_input.a.x, -56430i)));
    global2 = array<vec2<i32>, 18>();
    global2 = array<vec2<i32>, 18>();
    return !(min(-2147483647i, u_input.d) != ~(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.c, u_input.d, 4554i)) << (_wgslsmith_mod_u32(1u, u_input.b) % 32u)));
}

fn func_2() -> u32 {
    let var_0 = !select(!vec3<bool>(u_input.d <= u_input.c, func_3(), false), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), all(vec3<bool>(true, true, true)));
    global0 = array<Struct_2, 22>();
    var var_1 = true;
    global2 = array<vec2<i32>, 18>();
    global3 = array<vec2<u32>, 19>();
    return _wgslsmith_mod_u32(countOneBits(abs(48172u)), 21995u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    var var_0 = select(vec4<bool>(arg_0.a, true, global1.x <= _wgslsmith_f_op_f32(f32(-1f) * -1033f), all(vec2<bool>(true, true))), !(!select(arg_1.b, select(arg_1.b, arg_1.b, arg_1.b), vec4<bool>(true, true, true, arg_0.a))), arg_0.a);
    var var_1 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, abs(~u_input.b), u_input.b, arg_0.c.a), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 60050u, arg_1.c.a, 1u), vec4<u32>(1u, arg_1.a.a, 38737u, 1u)), ~vec4<u32>(arg_1.a.a, arg_1.a.a, u_input.b, 1u))));
    let var_2 = ~arg_1.c.a;
    let var_3 = _wgslsmith_sub_i32(1i, -(abs(~(-32351i)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_1.x, u_input.b, 65792u), _wgslsmith_div_vec4_u32(vec4<u32>(13173u, 1u, 52549u, 1u), vec4<u32>(var_1.x, 1u, 0u, var_2))) % 32u)));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.c.d.zxz))) + _wgslsmith_f_op_vec3_f32(arg_1.a.d.zwz - arg_0.c.d.zwz)), vec3<f32>(103f, _wgslsmith_f_op_f32(-arg_0.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x)))), var_0.wzw));
    return Struct_4(all(!arg_1.b.wzx), _wgslsmith_mult_vec2_i32(select(firstTrailingBit(vec2<i32>(arg_1.a.b, arg_0.c.b)), ~select(global2[_wgslsmith_index_u32(12402u, 18u)], u_input.a.yx, vec2<bool>(arg_0.a, true)), true), global2[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 18u)]), Struct_1(arg_0.c.a, 813i, ~(-u_input.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.d.x, global1.x, -585f, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, 1106f, -1722f, -726f) - vec4<f32>(1232f, arg_0.c.d.x, arg_0.c.d.x, arg_1.a.d.x))))), reverseBits(firstLeadingBit(vec4<i32>(arg_0.b.x, -15589i, arg_0.c.e.x, 9000i)))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = func_4(Struct_4(true, abs(global2[_wgslsmith_index_u32(func_2(), 18u)]), Struct_1(~select(4294967295u, u_input.b, arg_0.a.x), u_input.a.x, ~(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) >> (vec3<u32>(0u, u_input.e, u_input.e) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 225f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, u_input.d), vec4<i32>(2147483647i, u_input.a.x, u_input.c, u_input.d)), vec4<i32>(u_input.c, 1i, 1i, u_input.d)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~61939u, u_input.e), 22u)]);
    var var_1 = Struct_4(arg_0.a.x, vec2<i32>(var_0.b.x, 0i), Struct_1(reverseBits(u_input.b), _wgslsmith_add_i32(countOneBits(var_0.c.b), _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.d, -2147483647i))) >> (u_input.e % 32u), vec3<i32>(~_wgslsmith_add_i32(1179i, var_0.c.e.x), -var_0.b.x, -(i32(-1i) * -16599i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.c.d - vec4<f32>(-1000f, -1424f, 1989f, global1.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.d.x, 898f, var_0.c.d.x, -922f), _wgslsmith_f_op_vec4_f32(var_0.c.d + vec4<f32>(global1.x, 977f, -109f, var_0.c.d.x)))), max(_wgslsmith_mod_vec4_i32(var_0.c.e, vec4<i32>(var_0.c.c.x, 1i, var_0.c.c.x, u_input.c)) | var_0.c.e, -(~var_0.c.e))));
    var var_2 = var_0.b.x;
    global3 = array<vec2<u32>, 19>();
    let var_3 = func_4(Struct_4(var_0.c.a >= ~select(0u, var_0.c.a, true), u_input.a.xy, var_0.c), global0[_wgslsmith_index_u32(~((_wgslsmith_mod_u32(30431u, u_input.e) | countOneBits(var_0.c.a)) << (_wgslsmith_add_u32(var_0.c.a, 0u) % 32u)), 22u)]);
    return firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(countOneBits(func_1(Struct_3(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true))))), 1u);
    global3 = array<vec2<u32>, 19>();
    let var_1 = _wgslsmith_mod_vec3_i32((vec3<i32>(-1i) * -reverseBits(vec3<i32>(21265i, u_input.d, u_input.c))) << (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 84536u), vec2<u32>(4294967295u, 4294967295u)), 1u >> (1u % 32u), _wgslsmith_add_u32(0u, u_input.b)), ~4294967295u, u_input.b) % vec3<u32>(32u)), -u_input.a);
    var var_2 = func_4(Struct_4(true, ~max(vec2<i32>(var_1.x, -25673i), -vec2<i32>(10192i, 42029i)), func_4(Struct_4(false, -vec2<i32>(-13035i, -9129i), Struct_1(u_input.e, var_1.x, u_input.a, vec4<f32>(-370f, -833f, -1012f, global1.x), vec4<i32>(1i, var_1.x, 0i, u_input.d))), global0[_wgslsmith_index_u32(u_input.e, 22u)]).c), Struct_2(func_4(Struct_4(true, ~u_input.a.xy, func_4(Struct_4(true, vec2<i32>(-1i, var_1.x), Struct_1(u_input.b, 24750i, vec3<i32>(u_input.d, u_input.a.x, -2147483647i), vec4<f32>(global1.x, -359f, global1.x, global1.x), vec4<i32>(var_1.x, u_input.d, u_input.c, u_input.d))), global0[_wgslsmith_index_u32(u_input.e, 22u)]).c), Struct_2(func_4(Struct_4(true, vec2<i32>(32192i, var_1.x), Struct_1(4294967295u, 0i, vec3<i32>(u_input.a.x, -28170i, -33974i), vec4<f32>(global1.x, -1565f, global1.x, -296f), vec4<i32>(0i, 1i, var_1.x, -2147483647i))), Struct_2(Struct_1(4294967295u, var_1.x, var_1, vec4<f32>(-297f, 282f, global1.x, global1.x), vec4<i32>(u_input.a.x, 28057i, u_input.a.x, 12583i)), vec4<bool>(true, false, false, true), Struct_1(4294967295u, u_input.c, var_1, vec4<f32>(global1.x, 2094f, global1.x, -275f), vec4<i32>(1i, -53521i, -68317i, 40441i)), u_input.a)).c, vec4<bool>(true, true, true, true), func_4(Struct_4(false, var_1.zz, Struct_1(u_input.e, var_1.x, var_1, vec4<f32>(488f, global1.x, 175f, global1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i))), Struct_2(Struct_1(u_input.e, u_input.c, vec3<i32>(45736i, u_input.a.x, -20407i), vec4<f32>(-672f, -732f, global1.x, -1146f), vec4<i32>(u_input.d, 8755i, -2147483647i, u_input.c)), vec4<bool>(true, false, true, true), Struct_1(4294967295u, u_input.c, vec3<i32>(u_input.d, -56635i, -14752i), vec4<f32>(global1.x, global1.x, global1.x, 1019f), vec4<i32>(0i, var_1.x, -7304i, u_input.d)), vec3<i32>(u_input.d, -2147483647i, u_input.c))).c, vec3<i32>(2147483647i, -1i, var_1.x))).c, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), Struct_1(4294967295u, -var_1.x, var_1, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 159f, global1.x, global1.x))))), func_4(func_4(Struct_4(false, vec2<i32>(0i, -23642i), Struct_1(u_input.e, -45260i, vec3<i32>(var_1.x, 20001i, var_1.x), vec4<f32>(global1.x, 741f, global1.x, global1.x), vec4<i32>(-1i, 1i, 0i, -20953i))), Struct_2(Struct_1(19477u, 0i, vec3<i32>(u_input.a.x, u_input.a.x, 21805i), vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.a.x)), vec4<bool>(false, false, false, true), Struct_1(27042u, u_input.c, vec3<i32>(-2476i, 1i, 0i), vec4<f32>(global1.x, global1.x, 449f, global1.x), vec4<i32>(var_1.x, 24487i, 15088i, 707i)), vec3<i32>(var_1.x, u_input.d, u_input.c))), Struct_2(Struct_1(0u, 0i, u_input.a, vec4<f32>(288f, global1.x, global1.x, global1.x), vec4<i32>(-12396i, u_input.c, 1i, u_input.d)), vec4<bool>(false, true, false, false), Struct_1(u_input.e, var_1.x, vec3<i32>(-50828i, 1i, -8750i), vec4<f32>(1000f, -1594f, 234f, 1000f), vec4<i32>(u_input.a.x, 2147483647i, u_input.d, var_1.x)), vec3<i32>(1i, u_input.c, var_1.x))).c.e), func_4(func_4(func_4(Struct_4(false, var_1.zx, Struct_1(u_input.e, 1i, var_1, vec4<f32>(global1.x, global1.x, 257f, global1.x), vec4<i32>(u_input.d, var_1.x, -10122i, -1i))), Struct_2(Struct_1(u_input.b, 1i, var_1, vec4<f32>(global1.x, global1.x, -1754f, -1000f), vec4<i32>(var_1.x, 1i, u_input.d, var_1.x)), vec4<bool>(true, true, true, false), Struct_1(u_input.b, 0i, vec3<i32>(2147483647i, u_input.c, 15363i), vec4<f32>(688f, -324f, global1.x, global1.x), vec4<i32>(u_input.c, var_1.x, -34643i, -1i)), var_1)), global0[_wgslsmith_index_u32(0u, 22u)]), Struct_2(func_4(Struct_4(false, vec2<i32>(2147483647i, var_1.x), Struct_1(u_input.b, u_input.c, var_1, vec4<f32>(408f, global1.x, 170f, -933f), vec4<i32>(-39995i, var_1.x, var_1.x, u_input.d))), global0[_wgslsmith_index_u32(u_input.b, 22u)]).c, vec4<bool>(true, true, true, true), Struct_1(51199u, u_input.d, vec3<i32>(2147483647i, u_input.d, var_1.x), vec4<f32>(-1210f, -1869f, global1.x, global1.x), vec4<i32>(var_1.x, -1i, 33053i, 1i)), vec3<i32>(u_input.a.x, -5723i, 30849i))).c.e.zww));
    global1 = var_2.c.d.xxw;
    global1 = _wgslsmith_f_op_vec3_f32(-var_2.c.d.wwx);
    var_2 = Struct_4(var_2.a, -select(_wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(u_input.e, 18u)] ^ var_1.yy, -vec2<i32>(u_input.a.x, 1i)), ~firstTrailingBit(global2[_wgslsmith_index_u32(var_2.c.a, 18u)]), select(vec2<bool>(false, var_2.a), vec2<bool>(true, var_2.a), var_2.a)), Struct_1(~(~1u), reverseBits(~(-51214i) & select(var_2.b.x, var_2.b.x, false)), func_4(func_4(Struct_4(var_2.a, vec2<i32>(0i, -27402i), var_2.c), Struct_2(Struct_1(var_2.c.a, 3076i, vec3<i32>(u_input.c, u_input.d, 13655i), var_2.c.d, var_2.c.e), vec4<bool>(var_2.a, true, true, var_2.a), Struct_1(0u, var_2.c.c.x, vec3<i32>(var_2.b.x, u_input.a.x, var_2.c.c.x), var_2.c.d, var_2.c.e), u_input.a)), global0[_wgslsmith_index_u32(var_2.c.a, 22u)]).c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c.d), _wgslsmith_f_op_vec4_f32(var_2.c.d + vec4<f32>(var_2.c.d.x, 453f, global1.x, var_2.c.d.x)))), var_2.c.e));
    let x = u_input.a;
    s_output = StorageBuffer(195f, 4294967295u, -2612f, 1000f);
}

