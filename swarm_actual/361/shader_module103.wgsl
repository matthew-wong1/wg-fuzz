struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(true, Struct_1(true, vec4<f32>(121f, 2026f, 685f, -1000f), vec4<i32>(0i, 66829i, -12275i, -38406i)), vec2<bool>(false, false), Struct_1(true, vec4<f32>(755f, -939f, 599f, 1000f), vec4<i32>(35573i, 4408i, 0i, i32(-2147483648))), Struct_1(true, vec4<f32>(598f, -264f, -1432f, -1000f), vec4<i32>(36682i, -6347i, 0i, 0i))), Struct_3(false, Struct_1(true, vec4<f32>(-154f, -142f, 650f, 379f), vec4<i32>(-34230i, 62771i, 13755i, 6778i)), vec2<bool>(false, true), Struct_1(false, vec4<f32>(-2362f, 369f, 367f, 123f), vec4<i32>(i32(-2147483648), 1i, 1i, 43668i)), Struct_1(true, vec4<f32>(-1000f, 1383f, -1000f, -691f), vec4<i32>(-1i, 0i, -22108i, -5796i))), Struct_3(true, Struct_1(true, vec4<f32>(-1356f, -1432f, -1630f, -305f), vec4<i32>(i32(-2147483648), -3815i, -1i, i32(-2147483648))), vec2<bool>(true, true), Struct_1(true, vec4<f32>(2105f, -1909f, -1000f, -108f), vec4<i32>(-13358i, -2353i, 36293i, 1i)), Struct_1(false, vec4<f32>(-1000f, 1000f, 738f, -437f), vec4<i32>(0i, 20699i, i32(-2147483648), 0i))), Struct_3(true, Struct_1(true, vec4<f32>(963f, -1292f, 104f, -1374f), vec4<i32>(-21994i, -18452i, 39667i, -6915i)), vec2<bool>(true, true), Struct_1(false, vec4<f32>(-2348f, -305f, 260f, 1142f), vec4<i32>(-29605i, 0i, 0i, -4512i)), Struct_1(true, vec4<f32>(1818f, -1627f, 945f, 264f), vec4<i32>(-2032i, i32(-2147483648), 1i, i32(-2147483648)))), Struct_3(true, Struct_1(false, vec4<f32>(-218f, 1000f, -314f, 258f), vec4<i32>(-1i, 7820i, -2027i, -1i)), vec2<bool>(false, false), Struct_1(false, vec4<f32>(407f, 2022f, -1622f, -1000f), vec4<i32>(-34359i, -41509i, -7135i, 2147483647i)), Struct_1(true, vec4<f32>(675f, 2384f, -1722f, -1000f), vec4<i32>(i32(-2147483648), 0i, 0i, 10113i))), Struct_3(false, Struct_1(false, vec4<f32>(1620f, -1451f, 918f, -338f), vec4<i32>(0i, 2147483647i, 95375i, 0i)), vec2<bool>(true, false), Struct_1(false, vec4<f32>(252f, 668f, 1028f, 1000f), vec4<i32>(-11322i, -44782i, 1i, 0i)), Struct_1(false, vec4<f32>(-905f, -1276f, -111f, 750f), vec4<i32>(i32(-2147483648), -34033i, 20576i, 1i))), Struct_3(false, Struct_1(true, vec4<f32>(-366f, 940f, -267f, 218f), vec4<i32>(29413i, 74808i, -1i, 30194i)), vec2<bool>(false, false), Struct_1(true, vec4<f32>(610f, 728f, 1822f, -1732f), vec4<i32>(5947i, 0i, -1i, i32(-2147483648))), Struct_1(true, vec4<f32>(-326f, 1224f, -1490f, -127f), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 15013i))), Struct_3(false, Struct_1(true, vec4<f32>(-955f, 578f, -218f, -1264f), vec4<i32>(-696i, -8850i, i32(-2147483648), 2161i)), vec2<bool>(false, false), Struct_1(false, vec4<f32>(1659f, 197f, 656f, -380f), vec4<i32>(-62670i, 2147483647i, 2147483647i, 1i)), Struct_1(true, vec4<f32>(-1407f, -1671f, 2010f, -104f), vec4<i32>(-55732i, 0i, 2147483647i, 2147483647i))), Struct_3(true, Struct_1(true, vec4<f32>(223f, 157f, -879f, 1469f), vec4<i32>(10141i, -12349i, i32(-2147483648), 0i)), vec2<bool>(false, true), Struct_1(false, vec4<f32>(-603f, -693f, 1197f, -501f), vec4<i32>(-64604i, 1i, -1i, 5314i)), Struct_1(false, vec4<f32>(-366f, -364f, -712f, 2168f), vec4<i32>(4461i, 0i, 0i, 2147483647i))), Struct_3(false, Struct_1(false, vec4<f32>(1219f, -1000f, -1055f, 400f), vec4<i32>(i32(-2147483648), 21389i, 0i, -70497i)), vec2<bool>(false, true), Struct_1(false, vec4<f32>(446f, 128f, 678f, -653f), vec4<i32>(14438i, -1i, 1199i, 15272i)), Struct_1(false, vec4<f32>(-2030f, 1786f, 882f, 1284f), vec4<i32>(i32(-2147483648), 18684i, 0i, -14768i))), Struct_3(true, Struct_1(false, vec4<f32>(-1642f, 863f, 1000f, -804f), vec4<i32>(-1i, 510i, -53477i, 51922i)), vec2<bool>(false, false), Struct_1(false, vec4<f32>(-279f, -1728f, -361f, 1000f), vec4<i32>(56311i, 10996i, -27075i, 0i)), Struct_1(false, vec4<f32>(-2178f, 1000f, 590f, 1173f), vec4<i32>(-1i, 0i, -1i, 1i))), Struct_3(true, Struct_1(true, vec4<f32>(950f, -594f, -539f, -823f), vec4<i32>(-1i, 23331i, 14844i, 33585i)), vec2<bool>(true, true), Struct_1(false, vec4<f32>(-643f, 391f, -536f, 1254f), vec4<i32>(1i, -1817i, i32(-2147483648), 42364i)), Struct_1(true, vec4<f32>(-965f, -382f, 1005f, 317f), vec4<i32>(2147483647i, 1i, 24363i, 41489i))), Struct_3(true, Struct_1(true, vec4<f32>(-376f, 489f, 1000f, -511f), vec4<i32>(16720i, 2147483647i, 2147483647i, 6660i)), vec2<bool>(true, true), Struct_1(true, vec4<f32>(1171f, -493f, -145f, 205f), vec4<i32>(13027i, 1i, 50899i, 51092i)), Struct_1(false, vec4<f32>(896f, -579f, 1451f, 1017f), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -91431i))), Struct_3(false, Struct_1(true, vec4<f32>(1376f, -1232f, -425f, -463f), vec4<i32>(2147483647i, 37403i, -67555i, i32(-2147483648))), vec2<bool>(true, true), Struct_1(false, vec4<f32>(3025f, -800f, 1000f, 129f), vec4<i32>(-24914i, i32(-2147483648), -38718i, 2147483647i)), Struct_1(true, vec4<f32>(-951f, -959f, -1000f, -717f), vec4<i32>(-74762i, -18760i, -4902i, 2775i))), Struct_3(false, Struct_1(false, vec4<f32>(649f, 884f, -469f, -1190f), vec4<i32>(-20107i, 57019i, 0i, 0i)), vec2<bool>(true, false), Struct_1(true, vec4<f32>(203f, -1000f, 240f, -2178f), vec4<i32>(812i, 1i, 39527i, 39338i)), Struct_1(true, vec4<f32>(-546f, -518f, 409f, 1039f), vec4<i32>(-1i, i32(-2147483648), -1i, 0i))), Struct_3(false, Struct_1(true, vec4<f32>(-253f, -238f, -1265f, 1502f), vec4<i32>(-17221i, 2147483647i, 2147483647i, -6819i)), vec2<bool>(true, false), Struct_1(true, vec4<f32>(-885f, 1100f, -1384f, 1693f), vec4<i32>(1i, 32877i, i32(-2147483648), i32(-2147483648))), Struct_1(true, vec4<f32>(335f, -1000f, -1628f, -1465f), vec4<i32>(2147483647i, -11857i, 20001i, 1i))), Struct_3(true, Struct_1(true, vec4<f32>(-1031f, 959f, -1123f, 1468f), vec4<i32>(-39025i, 2147483647i, 2147483647i, i32(-2147483648))), vec2<bool>(false, true), Struct_1(false, vec4<f32>(-658f, 912f, 673f, -2458f), vec4<i32>(-1i, 1i, -63074i, i32(-2147483648))), Struct_1(false, vec4<f32>(-432f, -1032f, -439f, 1405f), vec4<i32>(-1i, i32(-2147483648), 1i, 37209i))), Struct_3(false, Struct_1(false, vec4<f32>(1365f, 1276f, -314f, 1000f), vec4<i32>(21415i, 1071i, 56382i, 914i)), vec2<bool>(false, false), Struct_1(false, vec4<f32>(1146f, 525f, -232f, 796f), vec4<i32>(1i, 24663i, 35417i, 31001i)), Struct_1(false, vec4<f32>(-734f, 557f, 1000f, -493f), vec4<i32>(1i, -28330i, -5567i, 10216i))), Struct_3(true, Struct_1(false, vec4<f32>(642f, 473f, -610f, -129f), vec4<i32>(12751i, -29786i, 23374i, 54108i)), vec2<bool>(true, true), Struct_1(false, vec4<f32>(-484f, -1012f, -1931f, 2164f), vec4<i32>(-1i, -33690i, 3528i, 0i)), Struct_1(false, vec4<f32>(-1000f, -780f, 1053f, -682f), vec4<i32>(27611i, i32(-2147483648), -17098i, -8076i))), Struct_3(false, Struct_1(true, vec4<f32>(488f, 413f, -1386f, 518f), vec4<i32>(1i, -49775i, -17080i, 2147483647i)), vec2<bool>(false, true), Struct_1(true, vec4<f32>(-174f, -334f, -470f, -603f), vec4<i32>(-1i, i32(-2147483648), -14755i, 1i)), Struct_1(false, vec4<f32>(-637f, -584f, 1657f, -1355f), vec4<i32>(-1i, 27650i, 14166i, -40405i))), Struct_3(true, Struct_1(false, vec4<f32>(-1028f, -667f, -1117f, -1478f), vec4<i32>(0i, 2147483647i, -1i, -1i)), vec2<bool>(true, true), Struct_1(false, vec4<f32>(188f, 717f, -219f, -1000f), vec4<i32>(1i, 1i, 11177i, 36085i)), Struct_1(true, vec4<f32>(-1000f, 739f, -189f, -256f), vec4<i32>(83557i, -10118i, 2147483647i, 21610i))), Struct_3(false, Struct_1(false, vec4<f32>(-1156f, -693f, 365f, 1000f), vec4<i32>(-29315i, -19187i, 13269i, 0i)), vec2<bool>(false, false), Struct_1(true, vec4<f32>(1313f, 123f, -617f, -633f), vec4<i32>(-12027i, 2147483647i, 0i, 1i)), Struct_1(true, vec4<f32>(554f, -901f, 690f, 123f), vec4<i32>(-1i, -96443i, 47075i, i32(-2147483648)))), Struct_3(false, Struct_1(true, vec4<f32>(348f, -632f, 1626f, -374f), vec4<i32>(1i, 2147483647i, -1i, -42882i)), vec2<bool>(true, true), Struct_1(true, vec4<f32>(308f, 505f, 1000f, 867f), vec4<i32>(1i, i32(-2147483648), 1i, 3549i)), Struct_1(false, vec4<f32>(608f, 444f, -578f, -927f), vec4<i32>(0i, 35333i, -41672i, 21423i))), Struct_3(true, Struct_1(false, vec4<f32>(352f, -904f, -616f, -347f), vec4<i32>(0i, 1i, 10890i, 9000i)), vec2<bool>(false, true), Struct_1(true, vec4<f32>(-2020f, -1165f, -1730f, -1988f), vec4<i32>(i32(-2147483648), -47633i, 1i, -32231i)), Struct_1(true, vec4<f32>(-446f, -138f, -1298f, 1195f), vec4<i32>(-45180i, 47343i, -4298i, 0i))), Struct_3(false, Struct_1(true, vec4<f32>(-210f, 1551f, 800f, 823f), vec4<i32>(21922i, -4753i, -1968i, -1i)), vec2<bool>(true, false), Struct_1(true, vec4<f32>(-797f, 1617f, 1018f, 140f), vec4<i32>(0i, 21400i, 26047i, -913i)), Struct_1(true, vec4<f32>(-1191f, 127f, -985f, -229f), vec4<i32>(-10635i, i32(-2147483648), -13346i, 2991i))), Struct_3(false, Struct_1(true, vec4<f32>(-394f, -157f, 645f, 415f), vec4<i32>(36306i, 25505i, 29005i, 12290i)), vec2<bool>(false, true), Struct_1(false, vec4<f32>(378f, 2151f, -211f, 681f), vec4<i32>(1i, 1i, -13950i, -9348i)), Struct_1(false, vec4<f32>(729f, 368f, -479f, -791f), vec4<i32>(0i, 5896i, 30409i, -14591i))), Struct_3(false, Struct_1(true, vec4<f32>(763f, 407f, -109f, -1218f), vec4<i32>(1i, 2147483647i, i32(-2147483648), 47794i)), vec2<bool>(true, false), Struct_1(false, vec4<f32>(522f, 371f, -1705f, 164f), vec4<i32>(i32(-2147483648), -6319i, 1i, -1i)), Struct_1(false, vec4<f32>(-420f, -205f, 165f, -500f), vec4<i32>(114602i, 21108i, i32(-2147483648), 0i))), Struct_3(false, Struct_1(false, vec4<f32>(460f, -1031f, 327f, 1000f), vec4<i32>(0i, -1i, -45401i, 0i)), vec2<bool>(false, false), Struct_1(true, vec4<f32>(534f, 1026f, 1184f, 482f), vec4<i32>(2147483647i, i32(-2147483648), -14230i, -1i)), Struct_1(false, vec4<f32>(-994f, -1000f, -517f, -1304f), vec4<i32>(-84239i, -18468i, -1i, 2147483647i))), Struct_3(true, Struct_1(false, vec4<f32>(-1000f, -609f, -382f, 757f), vec4<i32>(-29899i, 1i, -1i, -36706i)), vec2<bool>(true, false), Struct_1(true, vec4<f32>(1664f, 809f, -1223f, -1000f), vec4<i32>(i32(-2147483648), -1i, -23114i, 2147483647i)), Struct_1(false, vec4<f32>(732f, -700f, 466f, -269f), vec4<i32>(1i, 1i, 38687i, 0i))), Struct_3(true, Struct_1(true, vec4<f32>(1119f, -1972f, -206f, -845f), vec4<i32>(2147483647i, 0i, i32(-2147483648), 13239i)), vec2<bool>(true, false), Struct_1(true, vec4<f32>(-884f, -675f, -1201f, -1270f), vec4<i32>(7370i, 32199i, -5393i, 1921i)), Struct_1(true, vec4<f32>(-509f, 116f, -1000f, -1000f), vec4<i32>(42985i, -43236i, 1i, i32(-2147483648)))), Struct_3(true, Struct_1(true, vec4<f32>(-1000f, 692f, -595f, -1981f), vec4<i32>(-1i, 3689i, 10637i, -36320i)), vec2<bool>(false, true), Struct_1(true, vec4<f32>(1234f, -584f, 654f, -992f), vec4<i32>(-6481i, i32(-2147483648), 0i, 22799i)), Struct_1(true, vec4<f32>(-426f, -1245f, 1069f, 719f), vec4<i32>(25764i, 1i, 2147483647i, 16541i))), Struct_3(true, Struct_1(true, vec4<f32>(616f, 1310f, 328f, 983f), vec4<i32>(0i, -71335i, 2147483647i, 2147483647i)), vec2<bool>(true, false), Struct_1(true, vec4<f32>(-172f, -1167f, -352f, -1000f), vec4<i32>(35790i, 1i, i32(-2147483648), i32(-2147483648))), Struct_1(true, vec4<f32>(-1151f, 1995f, 266f, 449f), vec4<i32>(1i, -13902i, 38682i, -20393i))));

var<private> global1: Struct_3 = Struct_3(false, Struct_1(true, vec4<f32>(-326f, 104f, -1241f, -280f), vec4<i32>(2147483647i, 943i, -1i, -37282i)), vec2<bool>(false, true), Struct_1(false, vec4<f32>(-419f, 605f, 1004f, -1000f), vec4<i32>(-19242i, 1i, 46333i, 1i)), Struct_1(false, vec4<f32>(-730f, 1336f, -1000f, 187f), vec4<i32>(i32(-2147483648), -1i, 3482i, 12571i)));

var<private> global2: Struct_2 = Struct_2(vec3<i32>(2147483647i, 1i, -1i));

var<private> global3: vec3<i32>;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> u32 {
    var var_0 = !global1.e.a;
    let var_1 = u_input.d;
    var var_2 = Struct_5(vec3<bool>(global1.c.x, u_input.a >= 21629u, true), Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(min(u_input.c, vec3<i32>(-2147483647i, 3101i, global2.a.x)), vec3<i32>(global1.b.c.x, -1i, 23981i)), max(vec3<i32>(-1i, -2147483647i, global1.b.c.x) | vec3<i32>(0i, 2147483647i, var_1), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.a.x, 1i, 37280i), global2.a, vec3<i32>(global3.x, global2.a.x, global2.a.x))))));
    var var_3 = Struct_3(var_2.a.x, global1.d, vec2<bool>(true, any(vec2<bool>(var_2.a.x, var_2.a.x))), Struct_1(global1.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, _wgslsmith_div_f32(global1.d.b.x, -2414f), _wgslsmith_f_op_f32(f32(-1f) * -1536f), 205f)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, -2147483647i), vec2<i32>(var_1, global2.a.x)), -45797i, 1i, u_input.c.x), _wgslsmith_clamp_vec4_i32(global1.e.c, vec4<i32>(global3.x, u_input.c.x, u_input.c.x, -1i), global1.b.c) ^ global1.b.c)), Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.d.b.x, 516f, -357f))), vec4<i32>(firstTrailingBit(max(var_2.b.a.x, -46988i)), _wgslsmith_div_i32(reverseBits(global3.x), ~65951i), 52042i, ~(-1i))));
    var var_4 = var_3.b.b.xwy;
    return min(~u_input.a, ~0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> Struct_2 {
    var var_0 = ~15627u;
    global3 = abs(vec3<i32>(-14363i, ~(-global1.b.c.x), 0i)) << (vec3<u32>(27167u, 1u, 0u) % vec3<u32>(32u));
    var var_1 = vec4<u32>(u_input.b, u_input.a << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), u_input.b, u_input.b & ~25165u);
    let var_2 = select(_wgslsmith_sub_vec3_u32(~(~max(vec3<u32>(25508u, var_1.x, 7436u), var_1.wzy)), vec3<u32>(~func_2(), var_1.x, func_2())), var_1.xzx, !arg_1.a);
    let var_3 = -67421i;
    return Struct_2(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(-3218i, -88017i), max(arg_1.b.a.x, 2147483647i))), vec3<i32>(-2147483647i, firstTrailingBit(reverseBits(-33816i)), -2147483647i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.b, ~(~u_input.b)), min(abs(~2061u), u_input.b) & _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.a, 40581u))), vec2<u32>(u_input.a, ~u_input.a)), u_input.a, ~_wgslsmith_sub_u32(1u, (19130u << (u_input.a % 32u)) | 52922u));
    let var_1 = global1.e;
    return Struct_2(_wgslsmith_sub_vec3_i32(max(vec3<i32>(_wgslsmith_div_i32(global2.a.x, 31458i), 46509i | var_1.c.x, ~18253i), ~_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(-6675i, arg_0.x, 20527i))), max(vec3<i32>(global1.e.c.x, ~global1.d.c.x, global3.x), ~var_1.c.xyw)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_5(!select(arg_0.a, !(!arg_0.a), arg_0.a), Struct_2(arg_0.b.a));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b.x)), _wgslsmith_f_op_f32(arg_1.b.b.x + 1092f));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.b.x)));
    let var_2 = vec3<i32>(arg_2.a.x, 1i, -1173i);
    let var_3 = vec4<f32>(arg_1.e.b.x, 1f, 897f, -1000f);
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(!vec3<bool>(global1.d.a, all(global1.c), global1.b.a & true), func_3(u_input.c.zx, func_1(global0[_wgslsmith_index_u32(abs(12436u), 32u)], Struct_5(vec3<bool>(global1.e.a, false, global1.c.x), Struct_2(u_input.c)), global1.b.b.x))), global0[_wgslsmith_index_u32(u_input.a, 32u)], Struct_2(reverseBits(-u_input.c) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 3427u, u_input.b), vec3<u32>(118405u, u_input.a, 0u) ^ vec3<u32>(23652u, u_input.b, u_input.a)) % vec3<u32>(32u))), global1.d.a);
    global2 = func_1(Struct_3(var_0.a, func_4(Struct_5(vec3<bool>(global1.a, global1.d.a, global1.a), func_1(global0[_wgslsmith_index_u32(22755u, 32u)], Struct_5(vec3<bool>(true, true, global1.d.a), Struct_2(u_input.c)), global1.d.b.x)), Struct_3(var_0.a, func_4(Struct_5(vec3<bool>(var_0.a, global1.d.a, true), Struct_2(vec3<i32>(global2.a.x, -59773i, -1i))), Struct_3(var_0.a, var_0, vec2<bool>(true, false), global1.b, var_0), Struct_2(u_input.c), true), !global1.c, var_0, global1.e), Struct_2(vec3<i32>(23591i, 10357i, 1i)), var_0.a), !(!(!global1.c)), Struct_1(global1.d.b.x >= _wgslsmith_f_op_f32(785f - 218f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global1.b.b, vec4<f32>(var_0.b.x, 1682f, -676f, -1000f))))), vec4<i32>(_wgslsmith_dot_vec2_i32(global2.a.xx, global3.yx), 22495i, -1i, var_0.c.x & -1i)), func_4(Struct_5(!vec3<bool>(false, var_0.a, true), func_3(vec2<i32>(global3.x, u_input.d), Struct_2(vec3<i32>(42841i, global2.a.x, -1i)))), Struct_3(global1.c.x, func_4(Struct_5(vec3<bool>(global1.c.x, true, false), Struct_2(vec3<i32>(global2.a.x, 23458i, global2.a.x))), Struct_3(false, global1.e, global1.c, global1.d, global1.d), Struct_2(vec3<i32>(global3.x, 8909i, -2147483647i)), false), global1.c, func_4(Struct_5(vec3<bool>(var_0.a, true, false), Struct_2(var_0.c.zyz)), Struct_3(global1.e.a, global1.d, global1.c, var_0, Struct_1(true, global1.e.b, var_0.c)), Struct_2(vec3<i32>(-7910i, u_input.d, u_input.c.x)), false), var_0), func_3(global2.a.zx, func_1(Struct_3(false, var_0, global1.c, Struct_1(global1.a, vec4<f32>(-467f, -989f, 1190f, var_0.b.x), vec4<i32>(-3393i, -29866i, global3.x, -1i)), global1.d), Struct_5(vec3<bool>(false, global1.c.x, false), Struct_2(u_input.c)), -196f)), true)), Struct_5(select(vec3<bool>(true, all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), select(false, var_0.a, true)), select(!vec3<bool>(var_0.a, false, var_0.a), select(vec3<bool>(global1.c.x, true, var_0.a), vec3<bool>(var_0.a, global1.d.a, false), global1.e.a), vec3<bool>(true, true, true)), true), Struct_2(min(vec3<i32>(0i, 34801i, -16312i), vec3<i32>(0i, var_0.c.x, 29859i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, 46468u), vec3<u32>(u_input.b, u_input.a, u_input.b)) % vec3<u32>(32u)))), _wgslsmith_div_f32(1178f, _wgslsmith_f_op_f32(floor(global1.b.b.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, var_0.b.x, _wgslsmith_f_op_f32(sign(389f)))));
    var var_2 = Struct_1(!(!any(global1.c)), vec4<f32>(_wgslsmith_f_op_f32(-func_4(Struct_5(vec3<bool>(false, false, false), Struct_2(global1.e.c.xwx)), Struct_3(var_0.a, Struct_1(var_0.a, var_0.b, vec4<i32>(var_0.c.x, u_input.d, var_0.c.x, 0i)), vec2<bool>(true, global1.b.a), Struct_1(global1.c.x, global1.e.b, vec4<i32>(52067i, 24400i, -37156i, global2.a.x)), var_0), Struct_2(vec3<i32>(global2.a.x, var_0.c.x, global2.a.x)), global1.b.a).b.x), func_4(Struct_5(select(vec3<bool>(false, global1.a, false), vec3<bool>(false, var_0.a, global1.a), vec3<bool>(true, false, global1.d.a)), Struct_2(u_input.c)), Struct_3(all(vec2<bool>(false, false)), var_0, global1.c, var_0, func_4(Struct_5(vec3<bool>(global1.e.a, true, true), Struct_2(vec3<i32>(14947i, var_0.c.x, -53047i))), Struct_3(global1.c.x, var_0, global1.c, global1.e, var_0), Struct_2(vec3<i32>(13480i, -1i, var_0.c.x)), var_0.a)), func_1(global0[_wgslsmith_index_u32(u_input.b, 32u)], Struct_5(vec3<bool>(false, global1.d.a, global1.a), Struct_2(vec3<i32>(u_input.d, global2.a.x, global1.e.c.x))), _wgslsmith_div_f32(1087f, var_1.x)), global1.b.a).b.x, func_4(Struct_5(vec3<bool>(true, var_0.a, var_0.a), func_1(global0[_wgslsmith_index_u32(99402u, 32u)], Struct_5(vec3<bool>(global1.b.a, global1.b.a, false), Struct_2(u_input.c)), global1.d.b.x)), global0[_wgslsmith_index_u32(select(37301u | u_input.a, u_input.b, any(vec2<bool>(true, true))), 32u)], func_3(_wgslsmith_div_vec2_i32(global3.zx, vec2<i32>(global3.x, -62949i)), func_1(Struct_3(true, var_0, global1.c, global1.e, global1.d), Struct_5(vec3<bool>(true, global1.c.x, false), Struct_2(var_0.c.ywy)), global1.e.b.x)), global1.a).b.x, _wgslsmith_f_op_f32(step(-1518f, var_0.b.x))), vec4<i32>(-global2.a.x, u_input.d, ~abs(1i), u_input.c.x));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(~global3.zx, -_wgslsmith_sub_vec2_i32(var_2.c.wz, _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c.x, 37318i), firstLeadingBit(vec2<i32>(0i, -2147483647i)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), true)), global1.d.b.x), 1415f);
}

