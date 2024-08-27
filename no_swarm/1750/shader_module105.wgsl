struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_2(Struct_1(vec3<i32>(-15366i, 75475i, 2147483647i), vec4<f32>(-235f, 537f, 1576f, 1040f), vec2<i32>(13995i, 33329i), 39428u), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 33746u), Struct_1(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec4<f32>(1700f, 250f, 191f, 1448f), vec2<i32>(1i, i32(-2147483648)), 49851u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(2147483647i, 14685i, 0i), vec4<f32>(516f, -223f, 270f, 671f), vec2<i32>(70715i, -25049i), 52377u), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec2<u32>(6018u, 39731u), Struct_1(vec3<i32>(1i, -6302i, -1i), vec4<f32>(-1000f, 1068f, 1000f, 664f), vec2<i32>(-1i, i32(-2147483648)), 11345u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 14766i), vec4<f32>(755f, 1166f, 996f, -1136f), vec2<i32>(1i, -16470i), 4294967295u), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec2<u32>(1u, 8768u), Struct_1(vec3<i32>(-15549i, 2147483647i, 2147483647i), vec4<f32>(1707f, -370f, -276f, 1000f), vec2<i32>(-61837i, -25749i), 34519u)), 8052u), Struct_4(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 10523i, 0i), vec4<f32>(-1004f, 565f, 309f, 417f), vec2<i32>(2147483647i, 32624i), 3382u), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec2<u32>(13030u, 1u), Struct_1(vec3<i32>(2147483647i, 3987i, -46040i), vec4<f32>(-183f, -227f, -456f, 1833f), vec2<i32>(2147483647i, -3478i), 33062u)), 44419u), Struct_4(Struct_2(Struct_1(vec3<i32>(-2627i, 0i, -1i), vec4<f32>(1008f, -1492f, 1224f, -1000f), vec2<i32>(i32(-2147483648), 1i), 63782u), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec2<u32>(64666u, 1u), Struct_1(vec3<i32>(i32(-2147483648), -5596i, -20834i), vec4<f32>(973f, 1673f, 817f, -617f), vec2<i32>(869i, i32(-2147483648)), 61553u)), 18905u), Struct_4(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec4<f32>(790f, 255f, -308f, 1830f), vec2<i32>(-1i, 1i), 21350u), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec2<u32>(111026u, 35189u), Struct_1(vec3<i32>(-29523i, 0i, 1i), vec4<f32>(495f, 172f, -751f, -1413f), vec2<i32>(59282i, 27778i), 50605u)), 0u), Struct_4(Struct_2(Struct_1(vec3<i32>(-2561i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-1036f, -1725f, -2106f, -172f), vec2<i32>(-1i, 2147483647i), 0u), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 0u), Struct_1(vec3<i32>(-8436i, 0i, -11638i), vec4<f32>(2427f, 585f, 1261f, 1028f), vec2<i32>(1i, 0i), 1540u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(1i, 35306i, 5331i), vec4<f32>(1366f, 1000f, 469f, 1238f), vec2<i32>(-19451i, -14241i), 17378u), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec2<u32>(15019u, 4294967295u), Struct_1(vec3<i32>(0i, i32(-2147483648), 39360i), vec4<f32>(834f, 620f, -1245f, -622f), vec2<i32>(-23392i, 33151i), 19781u)), 105313u), Struct_4(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, -16301i), vec4<f32>(1490f, 137f, 893f, -614f), vec2<i32>(i32(-2147483648), 19520i), 1u), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec2<u32>(16533u, 40120u), Struct_1(vec3<i32>(-8444i, 2147483647i, i32(-2147483648)), vec4<f32>(-262f, -1700f, -1214f, -206f), vec2<i32>(0i, 1i), 62346u)), 57251u), Struct_4(Struct_2(Struct_1(vec3<i32>(30482i, 11168i, 0i), vec4<f32>(-552f, -354f, 292f, -2206f), vec2<i32>(2147483647i, -39225i), 0u), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec2<u32>(0u, 1u), Struct_1(vec3<i32>(-32990i, 0i, 302i), vec4<f32>(-1000f, 1330f, -2032f, -1391f), vec2<i32>(30430i, 0i), 0u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(1i, 11141i, 1i), vec4<f32>(-321f, -1267f, -633f, -1000f), vec2<i32>(1i, 10510i), 0u), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec2<u32>(62318u, 0u), Struct_1(vec3<i32>(1i, i32(-2147483648), 13210i), vec4<f32>(445f, 1000f, 160f, 210f), vec2<i32>(-37547i, -1i), 0u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(0i, 0i, 17239i), vec4<f32>(327f, 1000f, -244f, -234f), vec2<i32>(-2591i, 2147483647i), 1u), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec2<u32>(18254u, 1u), Struct_1(vec3<i32>(-42314i, -38437i, i32(-2147483648)), vec4<f32>(165f, 1000f, -434f, 133f), vec2<i32>(i32(-2147483648), i32(-2147483648)), 1u)), 2892u), Struct_4(Struct_2(Struct_1(vec3<i32>(-25086i, i32(-2147483648), -1785i), vec4<f32>(1962f, 2196f, 900f, 1183f), vec2<i32>(28206i, 1i), 0u), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec2<u32>(58219u, 4294967295u), Struct_1(vec3<i32>(8451i, 29382i, -20585i), vec4<f32>(-325f, 204f, 496f, 188f), vec2<i32>(3484i, 2147483647i), 18133u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(0i, -2714i, 0i), vec4<f32>(372f, -1146f, -115f, 776f), vec2<i32>(331i, -2969i), 0u), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec2<u32>(0u, 1u), Struct_1(vec3<i32>(-1i, 2147483647i, 27562i), vec4<f32>(296f, 286f, -549f, 770f), vec2<i32>(-37690i, -20995i), 45041u)), 4294967295u), Struct_4(Struct_2(Struct_1(vec3<i32>(-33881i, 1i, 31292i), vec4<f32>(-2270f, 1524f, -774f, -1884f), vec2<i32>(-12705i, 1i), 0u), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec2<u32>(8234u, 4489u), Struct_1(vec3<i32>(i32(-2147483648), 0i, 17788i), vec4<f32>(704f, -426f, -111f, 135f), vec2<i32>(-44673i, 21584i), 0u)), 32807u), Struct_4(Struct_2(Struct_1(vec3<i32>(-1i, 22226i, 38908i), vec4<f32>(-659f, 1487f, -1120f, 1115f), vec2<i32>(-50395i, 2147483647i), 31535u), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec2<u32>(34290u, 4294967295u), Struct_1(vec3<i32>(25474i, -46951i, 15067i), vec4<f32>(176f, -1000f, -1098f, -3055f), vec2<i32>(16052i, 7837i), 40221u)), 35224u), Struct_4(Struct_2(Struct_1(vec3<i32>(-1i, -11584i, -6695i), vec4<f32>(-702f, 898f, -212f, 109f), vec2<i32>(-1i, 21902i), 23614u), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec2<u32>(12876u, 0u), Struct_1(vec3<i32>(-15798i, 1i, i32(-2147483648)), vec4<f32>(-822f, -1751f, 1165f, -1000f), vec2<i32>(i32(-2147483648), 8284i), 1u)), 0u), Struct_4(Struct_2(Struct_1(vec3<i32>(58247i, 1i, 47117i), vec4<f32>(1086f, -416f, -781f, 411f), vec2<i32>(2147483647i, -13261i), 27370u), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec2<u32>(56256u, 0u), Struct_1(vec3<i32>(2147483647i, 27398i, 45998i), vec4<f32>(198f, -123f, -1000f, 2411f), vec2<i32>(15327i, 4229i), 4294967295u)), 4294967295u), Struct_4(Struct_2(Struct_1(vec3<i32>(16206i, 25429i, 1i), vec4<f32>(927f, -1332f, 173f, 334f), vec2<i32>(-8338i, 8299i), 26688u), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec2<u32>(0u, 101463u), Struct_1(vec3<i32>(27742i, -1i, i32(-2147483648)), vec4<f32>(1660f, -158f, 2737f, 684f), vec2<i32>(-12984i, 0i), 2516u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(-34004i, 26581i, 2147483647i), vec4<f32>(931f, 1972f, -411f, 409f), vec2<i32>(-49996i, 54701i), 32292u), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec2<u32>(0u, 2071u), Struct_1(vec3<i32>(-1i, -62329i, -1i), vec4<f32>(877f, 124f, 1104f, -301f), vec2<i32>(1i, -2803i), 4294967295u)), 0u), Struct_4(Struct_2(Struct_1(vec3<i32>(-11950i, 2147483647i, 0i), vec4<f32>(-393f, 2563f, 1000f, -1000f), vec2<i32>(-48302i, 1i), 40300u), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec2<u32>(43475u, 3557u), Struct_1(vec3<i32>(1i, 2147483647i, 14858i), vec4<f32>(-223f, -577f, -585f, -547f), vec2<i32>(2147483647i, 2147483647i), 4294967295u)), 17284u), Struct_4(Struct_2(Struct_1(vec3<i32>(-6256i, 48771i, 9359i), vec4<f32>(-399f, 744f, 545f, 1293f), vec2<i32>(9320i, 0i), 0u), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec2<u32>(1u, 4294967295u), Struct_1(vec3<i32>(-21934i, 1i, 35108i), vec4<f32>(459f, -629f, -916f, 450f), vec2<i32>(i32(-2147483648), 18159i), 25785u)), 0u), Struct_4(Struct_2(Struct_1(vec3<i32>(-31768i, 1i, -1i), vec4<f32>(-1000f, 683f, 1000f, 175f), vec2<i32>(25641i, 1i), 4294967295u), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec2<u32>(26098u, 4294967295u), Struct_1(vec3<i32>(2147483647i, -61640i, 58376i), vec4<f32>(-112f, 104f, -647f, 1530f), vec2<i32>(0i, i32(-2147483648)), 4294967295u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(40126i, 1i, i32(-2147483648)), vec4<f32>(-166f, -976f, 628f, -1829f), vec2<i32>(-46209i, 0i), 40918u), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec2<u32>(0u, 1u), Struct_1(vec3<i32>(3597i, i32(-2147483648), -30650i), vec4<f32>(651f, 428f, -1000f, 1577f), vec2<i32>(22626i, 2511i), 4294967295u)), 3214u), Struct_4(Struct_2(Struct_1(vec3<i32>(32527i, -48879i, -1i), vec4<f32>(1023f, -1000f, -1279f, 397f), vec2<i32>(0i, 1i), 7806u), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec2<u32>(11666u, 1u), Struct_1(vec3<i32>(0i, -37464i, 26852i), vec4<f32>(742f, -1445f, -357f, -982f), vec2<i32>(-6893i, 1i), 1u)), 4294967295u), Struct_4(Struct_2(Struct_1(vec3<i32>(-1i, 8530i, i32(-2147483648)), vec4<f32>(834f, 1781f, 938f, -1000f), vec2<i32>(7332i, 1i), 50039u), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec2<u32>(19000u, 8878u), Struct_1(vec3<i32>(2147483647i, 0i, 12004i), vec4<f32>(537f, 328f, 341f, -1317f), vec2<i32>(-10623i, 0i), 29495u)), 4147u), Struct_4(Struct_2(Struct_1(vec3<i32>(-53543i, 0i, -14772i), vec4<f32>(-1118f, -499f, -956f, 1201f), vec2<i32>(-1i, 0i), 8650u), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec2<u32>(69196u, 29091u), Struct_1(vec3<i32>(61662i, 27198i, -12026i), vec4<f32>(-156f, 1458f, 286f, -489f), vec2<i32>(-53874i, 1i), 1u)), 1u), Struct_4(Struct_2(Struct_1(vec3<i32>(6212i, 4174i, 15816i), vec4<f32>(-1176f, -1000f, 494f, -1395f), vec2<i32>(-16893i, 1i), 0u), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec2<u32>(0u, 9925u), Struct_1(vec3<i32>(57557i, 22562i, 20831i), vec4<f32>(-1047f, -681f, -242f, 386f), vec2<i32>(-37987i, -1i), 28498u)), 2408u), Struct_4(Struct_2(Struct_1(vec3<i32>(-41026i, 26920i, 0i), vec4<f32>(-405f, 111f, 832f, 2590f), vec2<i32>(-3852i, i32(-2147483648)), 4294967295u), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 0u), Struct_1(vec3<i32>(2147483647i, -8354i, 3027i), vec4<f32>(618f, -1139f, -1000f, -227f), vec2<i32>(-32720i, 0i), 41734u)), 4294967295u), Struct_4(Struct_2(Struct_1(vec3<i32>(0i, 0i, 78255i), vec4<f32>(1123f, 1000f, -702f, 546f), vec2<i32>(13694i, 2147483647i), 2978u), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec2<u32>(10691u, 4294967295u), Struct_1(vec3<i32>(60267i, -68678i, -28743i), vec4<f32>(1047f, -336f, -224f, 1000f), vec2<i32>(1i, 56676i), 90179u)), 13609u), Struct_4(Struct_2(Struct_1(vec3<i32>(12854i, i32(-2147483648), 2147483647i), vec4<f32>(-2752f, 245f, 1459f, -2717f), vec2<i32>(-1i, 1i), 19194u), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i), vec4<f32>(1020f, -1783f, 183f, 639f), vec2<i32>(56045i, 36201i), 28168u)), 1u));

var<private> global1: array<Struct_2, 27>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(-21104i, 70467i, 2147483647i), vec4<f32>(1543f, 153f, 1323f, -699f), vec2<i32>(0i, i32(-2147483648)), 1u), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec2<u32>(70524u, 18876u), Struct_1(vec3<i32>(-7122i, 298i, -27738i), vec4<f32>(-1607f, -1000f, 140f, 500f), vec2<i32>(60558i, -43256i), 26481u));

var<private> global3: array<vec4<i32>, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>) -> f32 {
    let var_0 = arg_0.e;
    let var_1 = vec4<i32>(u_input.a.x ^ 1i, ~(var_0.c.x << (~50731u % 32u)), var_0.c.x, u_input.a.x) ^ (vec4<i32>(-1i) * -select(~global3[_wgslsmith_index_u32(1u, 21u)], ~vec4<i32>(-2441i, 1i, var_0.a.x, global2.a.c.x), select(vec4<bool>(arg_0.c.x, true, arg_0.b.x, true), vec4<bool>(true, arg_0.c.x, arg_0.b.x, false), arg_0.c.x)));
    let var_2 = abs(-global2.a.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - arg_1.c.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.a.b.x, -713f, global2.b.x))))))) + _wgslsmith_f_op_vec2_f32(-arg_2.zx));
    global1 = array<Struct_2, 27>();
    return -191f;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_4) -> bool {
    var var_0 = Struct_2(Struct_1(global2.e.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2339f), _wgslsmith_f_op_f32(-arg_3.a.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1254f, arg_3.a.a.b.x)), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~4294967295u, 27u)], Struct_3(arg_3.a.e.c.x, arg_3.a.a.b.x, Struct_1(global2.a.a, global2.a.b, vec2<i32>(arg_0.x, -1i), arg_3.a.e.d)), _wgslsmith_f_op_vec4_f32(global2.e.b + vec4<f32>(global2.e.b.x, global2.e.b.x, -582f, global2.e.b.x))))), global2.e.a.zx, reverseBits(~_wgslsmith_sub_u32(21943u, global2.e.d))), !(!select(select(global2.c, arg_3.a.b, vec3<bool>(arg_3.a.c.x, false, arg_3.a.c.x)), !vec3<bool>(global2.c.x, global2.c.x, global2.c.x), vec3<bool>(global2.c.x, false, global2.c.x))), !select(global2.b, select(select(vec3<bool>(arg_3.a.c.x, arg_3.a.c.x, arg_3.a.c.x), vec3<bool>(arg_3.a.c.x, true, global2.b.x), true), vec3<bool>(false, global2.c.x, global2.c.x), !arg_3.a.c), false), ~vec2<u32>(arg_2.x, 0u), Struct_1(vec3<i32>(-1i, -(~global2.e.a.x), (arg_0.x << (arg_2.x % 32u)) << (arg_3.a.e.d % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, 439f, arg_3.a.e.b.x, arg_3.a.e.b.x) - vec4<f32>(arg_3.a.e.b.x, -334f, 1185f, 749f)))), countOneBits(global2.a.c >> (arg_2 % vec2<u32>(32u))), 1u << (firstLeadingBit(_wgslsmith_add_u32(global2.e.d, arg_3.a.a.d)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.b.x, -2052f, -1280f)) + arg_3.a.e.b.xyy)) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.a.e.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a.b.x)) + _wgslsmith_f_op_f32(646f + 750f)), global2.a.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.b.x)), arg_3.a.a.b.x, 254f)));
    global2 = global1[_wgslsmith_index_u32(~max(var_0.a.d | arg_3.a.a.d, var_0.e.d), 27u)];
    global1 = array<Struct_2, 27>();
    let var_2 = Struct_1(vec3<i32>(select(-(var_0.a.c.x & arg_1), -(~(-114334i)), true && all(arg_3.a.b)), -(i32(-1i) * -2147483647i), -(arg_0.x & -var_0.e.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2.e.a, vec4<f32>(-1208f, 1958f, -1009f, 305f), u_input.a.yz, 61768u), arg_3.a.c, var_0.b, vec2<u32>(4294967295u, 1u), Struct_1(vec3<i32>(arg_0.x, var_0.e.c.x, u_input.a.x), global2.e.b, vec2<i32>(17168i, global2.a.c.x), arg_2.x)), Struct_3(global2.e.c.x, -505f, var_0.a), arg_3.a.e.b)), global2.e.b.x, 1303f, -1934f)), vec2<i32>(reverseBits(_wgslsmith_add_i32(1i, 0i)), i32(-1i) * -5689i) >> (vec2<u32>(~max(58848u, var_0.e.d), global2.d.x) % vec2<u32>(32u)), max(_wgslsmith_add_u32(~_wgslsmith_mod_u32(global2.d.x, 19591u), 5631u), ~(~_wgslsmith_clamp_u32(var_0.e.d, 8793u, arg_3.a.a.d))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_f_op_f32(round(967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1241f, var_1.x)))))) < 676f;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_5 {
    let var_0 = 0u;
    var var_1 = vec3<u32>(21201u, 43580u, var_0);
    global1 = array<Struct_2, 27>();
    global0 = array<Struct_4, 31>();
    var var_2 = _wgslsmith_mult_vec3_u32(~((vec3<u32>(global2.e.d, var_0, global2.e.d) | _wgslsmith_sub_vec3_u32(vec3<u32>(global2.d.x, var_1.x, 10407u), vec3<u32>(23643u, 41295u, arg_3.c.d))) | firstLeadingBit(vec3<u32>(7357u, 44207u, var_1.x))), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(4294967295u, var_1.x, var_1.x), firstLeadingBit(vec3<u32>(37592u, var_0, 4294967295u)), !vec3<bool>(true, false, arg_0.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(51176u, var_0, 6052u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.c.d, 31887u, 55371u), vec3<u32>(global2.d.x, arg_3.c.d, var_0)))) << (_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(global2.e.d, 29889u, var_1.x)), countOneBits(min(vec3<u32>(arg_3.c.d, 4294967295u, arg_3.c.d), vec3<u32>(17853u, arg_3.c.d, 26167u)))) % vec3<u32>(32u)));
    return Struct_5(_wgslsmith_div_f32(arg_3.b, arg_3.c.b.x), global1[_wgslsmith_index_u32(4294967295u, 27u)], max(-(~global3[_wgslsmith_index_u32(55465u, 21u)] ^ vec4<i32>(0i, -20518i, global2.a.a.x, arg_1)), vec4<i32>(u_input.a.x, 2147483647i, -max(2147483647i, arg_3.a), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b, global2.e.a.xx)))), -vec4<i32>(i32(-1i) * -11575i, -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.c.c.x, arg_1), vec2<i32>(global2.a.a.x, global2.e.a.x)), firstLeadingBit(arg_3.a)), -countOneBits(-956i)), !(global2.b.x != global2.c.x));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    global0 = array<Struct_4, 31>();
    let var_0 = global2.e;
    var var_1 = func_4(select(!global2.b, !global2.b, any(vec4<bool>(any(vec4<bool>(global2.c.x, false, global2.c.x, global2.b.x)), func_2(vec2<i32>(arg_2, u_input.a.x), u_input.b.x, vec2<u32>(var_0.d, 4294967295u), Struct_4(global1[_wgslsmith_index_u32(4294967295u, 27u)], 35739u)), true, true))), -2147483647i, arg_1.x <= 1000f, Struct_3(global2.a.a.x | 12988i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a.b.x - arg_0), _wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(min(var_0.b.x, 1009f))))), Struct_1(_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.a), -arg_3), arg_1, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 17962i), abs(arg_3.yx), min(var_0.c, vec2<i32>(arg_2, arg_3.x))), var_0.d)));
    let var_2 = _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(global2.a.a.xx & u_input.a.zz, vec2<i32>(2147483647i, u_input.a.x)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_2, arg_2), _wgslsmith_div_vec2_i32(arg_3.zz, arg_3.yx))), func_4(vec3<bool>(global2.c.x | global2.b.x, global2.b.x, global2.c.x), min(abs(arg_2), ~(-24133i)), any(select(vec2<bool>(global2.c.x, false), vec2<bool>(false, var_1.e), global2.c.x)), Struct_3(2147483647i, -1259f, global2.a)).d.xy << (_wgslsmith_clamp_vec2_u32(min(vec2<u32>(0u, var_1.b.a.d), vec2<u32>(9697u, global2.a.d)) ^ ~global2.d, firstTrailingBit(vec2<u32>(0u, global2.d.x)) ^ ~vec2<u32>(global2.e.d, 5769u), vec2<u32>(func_4(var_1.b.b, arg_3.x, global2.b.x, Struct_3(arg_3.x, global2.a.b.x, Struct_1(vec3<i32>(arg_3.x, var_0.c.x, global2.e.a.x), vec4<f32>(1000f, arg_1.x, global2.e.b.x, arg_1.x), arg_3.zy, 1u))).b.e.d, ~global2.a.d)) % vec2<u32>(32u)));
    let var_3 = true;
    return _wgslsmith_sub_i32(u_input.b.x, select(_wgslsmith_add_i32(var_0.c.x, -_wgslsmith_div_i32(-2147483647i, var_2.x)), global2.a.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 31>();
    var var_0 = Struct_3(func_1(global2.a.b.x, global2.a.b, 0i, vec3<i32>(~u_input.b.x ^ -global2.a.c.x, ~min(18100i, -1i), u_input.b.x)), 799f, func_4(vec3<bool>(!global2.c.x || (u_input.a.x != u_input.a.x), true, true), global2.e.a.x, false, Struct_3(abs(firstTrailingBit(global2.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-241f)) + _wgslsmith_f_op_f32(min(global2.e.b.x, -582f))), global2.a)).b.e);
    let var_1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.d, var_0.c.d, 4294967295u, var_0.c.d) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2.e.d, global2.e.d, var_0.c.d), vec4<u32>(var_0.c.d, 61141u, var_0.c.d, global2.d.x)) % vec4<u32>(32u)), ~vec4<u32>(var_0.c.d, global2.a.d, var_0.c.d, 0u)), ~vec4<u32>(1u, 38492u, 122601u, firstTrailingBit(global2.a.d)) | ~select(~vec4<u32>(26302u, 18335u, global2.a.d, global2.d.x), vec4<u32>(0u, 11932u, 4294967295u, var_0.c.d), global2.c.x), select(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.d, var_0.c.d, 42166u, 13954u), vec4<u32>(var_0.c.d, 29316u, global2.d.x, global2.e.d))), ~vec4<u32>(global2.a.d, 1u >> (0u % 32u), var_0.c.d, 1u), true));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.d.x, 1u) ^ (_wgslsmith_mod_u32(global2.e.d ^ countOneBits(var_0.c.d), _wgslsmith_add_u32(0u >> (global2.e.d % 32u), var_1.x ^ 30736u)) << (1u % 32u)), 27u)];
    let var_2 = Struct_5(705f, global1[_wgslsmith_index_u32(27866u, 27u)], firstTrailingBit(vec4<i32>((global2.e.a.x ^ 1i) & func_1(global2.e.b.x, vec4<f32>(1223f, 1665f, var_0.c.b.x, -1000f), var_0.a, vec3<i32>(var_0.a, 1i, global2.e.c.x)), global2.e.c.x, ~(-2965i) | (-2147483647i >> (var_0.c.d % 32u)), 2147483647i ^ _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(func_4(func_4(vec3<bool>(global2.c.x, false, false), u_input.b.x, global2.b.x, Struct_3(0i, 1062f, Struct_1(vec3<i32>(2147483647i, -2147483647i, u_input.b.x), global2.e.b, var_0.c.a.xz, var_1.x))).b.c, var_0.c.c.x, true, Struct_3(-2147483647i, 833f, Struct_1(u_input.a, vec4<f32>(var_0.b, global2.e.b.x, var_0.b, global2.e.b.x), vec2<i32>(0i, -29400i), 107293u))).b.a.c.x, ~(global2.a.c.x << (var_0.c.d % 32u)), _wgslsmith_div_i32(-33112i, _wgslsmith_mult_i32(var_0.a, -31159i)), u_input.a.x), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(-50776i), 0i), _wgslsmith_div_i32(reverseBits(var_0.a), -2147483647i), 52825i, global2.a.c.x)), true);
    var_0 = Struct_3(abs(_wgslsmith_div_i32(countOneBits(0i), u_input.b.x)), global2.a.b.x, func_4(select(global2.c, global2.b, false), ~u_input.b.x, all(vec4<bool>(var_1.x < var_1.x, func_2(var_2.c.yw, -1i, global2.d, Struct_4(Struct_2(global2.a, var_2.b.c, vec3<bool>(true, global2.b.x, var_2.e), global2.d, Struct_1(vec3<i32>(u_input.b.x, 61152i, u_input.b.x), vec4<f32>(var_2.b.e.b.x, global2.a.b.x, -1229f, 969f), global2.e.a.yy, 7987u)), 1u)), false || global2.b.x, var_2.e)), Struct_3(_wgslsmith_sub_i32(global2.e.c.x, 41585i), _wgslsmith_f_op_f32(-var_0.c.b.x), func_4(var_2.b.c, -55423i, true, Struct_3(34032i, 969f, Struct_1(var_0.c.a, global2.a.b, var_0.c.c, 0u))).b.e)).b.a);
    let var_3 = global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global2.d.x, 0u), vec3<u32>(var_1.x, 11189u, var_2.b.d.x)), ~var_0.c.d, global2.a.d & 1u), _wgslsmith_div_u32(global2.e.d, global2.a.d)), abs(~func_4(!var_2.b.b, _wgslsmith_mult_i32(-1i, 6492i), true, Struct_3(global2.e.a.x, 588f, Struct_1(global2.e.a, var_2.b.a.b, var_0.c.a.zy, 1u))).b.a.d), any(vec4<bool>(global2.b.x, any(var_2.b.c), any(vec3<bool>(true, false, false)), global2.b.x))), 31u)];
    var var_4 = var_1;
    var var_5 = abs(vec3<i32>(countOneBits(i32(-1i) * -44235i), 15144i, ~0i));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(40049u, 21u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b.x) * _wgslsmith_f_op_f32(-global2.a.b.x))), var_2.a)), _wgslsmith_sub_u32(1u, max(global2.e.d, _wgslsmith_div_u32(var_0.c.d, var_3.b) ^ ~var_2.b.a.d)), abs(27679u));
}

