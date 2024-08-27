struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_1(-2057f, -1i, vec4<f32>(920f, 1702f, 539f, 2485f)), vec4<bool>(false, true, true, false), Struct_3(Struct_2(Struct_1(1000f, 22303i, vec4<f32>(594f, 1037f, -492f, -853f)), Struct_1(1631f, 5928i, vec4<f32>(613f, -367f, 298f, -1333f)), -325f, vec2<u32>(83120u, 86881u)), Struct_2(Struct_1(-937f, 0i, vec4<f32>(1000f, -362f, 1906f, 171f)), Struct_1(632f, 37119i, vec4<f32>(-123f, 1000f, 851f, 1009f)), -2067f, vec2<u32>(1u, 4294967295u)), vec4<f32>(-177f, -597f, 1285f, -1925f)), true), Struct_4(Struct_1(303f, 28922i, vec4<f32>(341f, 1000f, -864f, 1448f)), vec4<bool>(false, false, true, false), Struct_3(Struct_2(Struct_1(-1268f, -38281i, vec4<f32>(-2041f, -1679f, 654f, -101f)), Struct_1(-154f, 36891i, vec4<f32>(187f, 186f, 169f, -457f)), 1000f, vec2<u32>(45752u, 0u)), Struct_2(Struct_1(1064f, -1i, vec4<f32>(1569f, -856f, 2199f, -1000f)), Struct_1(-962f, 2147483647i, vec4<f32>(-213f, 728f, 1900f, -1424f)), 489f, vec2<u32>(46330u, 87019u)), vec4<f32>(1339f, 1929f, 1218f, 610f)), false), Struct_4(Struct_1(-397f, 3636i, vec4<f32>(241f, 911f, -132f, 310f)), vec4<bool>(false, false, true, false), Struct_3(Struct_2(Struct_1(1437f, 0i, vec4<f32>(506f, 882f, 436f, 1065f)), Struct_1(-1000f, 2147483647i, vec4<f32>(1063f, -341f, -472f, -1166f)), 925f, vec2<u32>(14580u, 90905u)), Struct_2(Struct_1(2235f, 20872i, vec4<f32>(1780f, 341f, 188f, -580f)), Struct_1(727f, 0i, vec4<f32>(1097f, 530f, -1148f, -296f)), -178f, vec2<u32>(24341u, 4294967295u)), vec4<f32>(1000f, -979f, 1856f, -556f)), true), Struct_4(Struct_1(-2265f, 1i, vec4<f32>(156f, 418f, 2353f, 104f)), vec4<bool>(true, true, true, true), Struct_3(Struct_2(Struct_1(1000f, 38385i, vec4<f32>(1000f, -1497f, 466f, 1323f)), Struct_1(1000f, i32(-2147483648), vec4<f32>(-2328f, 1000f, 1694f, -764f)), -541f, vec2<u32>(1u, 32679u)), Struct_2(Struct_1(389f, -3728i, vec4<f32>(-408f, 328f, 2985f, -1216f)), Struct_1(1685f, -9551i, vec4<f32>(-812f, -291f, -1045f, 533f)), 1135f, vec2<u32>(1u, 12541u)), vec4<f32>(-427f, 289f, -1190f, -672f)), false), Struct_4(Struct_1(-520f, 2147483647i, vec4<f32>(-317f, -836f, -1570f, 131f)), vec4<bool>(false, false, true, false), Struct_3(Struct_2(Struct_1(422f, -23375i, vec4<f32>(-1845f, -737f, 346f, 560f)), Struct_1(-147f, -24260i, vec4<f32>(839f, 732f, 641f, 137f)), -1623f, vec2<u32>(79117u, 43853u)), Struct_2(Struct_1(531f, -32637i, vec4<f32>(996f, 1651f, -477f, 278f)), Struct_1(791f, 2147483647i, vec4<f32>(-1429f, -1699f, -978f, -580f)), -999f, vec2<u32>(1841u, 3801u)), vec4<f32>(576f, -428f, 1000f, 383f)), true), Struct_4(Struct_1(-1651f, -1i, vec4<f32>(148f, 845f, -465f, -1000f)), vec4<bool>(true, true, false, false), Struct_3(Struct_2(Struct_1(-1000f, 2147483647i, vec4<f32>(2675f, 628f, -1869f, 1035f)), Struct_1(1242f, 1i, vec4<f32>(-723f, -3065f, 1150f, 1000f)), -711f, vec2<u32>(14469u, 60904u)), Struct_2(Struct_1(-867f, i32(-2147483648), vec4<f32>(-1014f, 671f, -1764f, -2734f)), Struct_1(643f, 31573i, vec4<f32>(184f, -232f, 420f, -1026f)), 140f, vec2<u32>(47542u, 23895u)), vec4<f32>(-620f, 407f, -1185f, -2666f)), false), Struct_4(Struct_1(-954f, -916i, vec4<f32>(543f, 1000f, 1000f, 713f)), vec4<bool>(true, true, true, true), Struct_3(Struct_2(Struct_1(1683f, 1i, vec4<f32>(522f, 1894f, 680f, 557f)), Struct_1(151f, 1i, vec4<f32>(101f, -1000f, -1862f, -374f)), -277f, vec2<u32>(1u, 0u)), Struct_2(Struct_1(1473f, 2147483647i, vec4<f32>(1840f, 1237f, 1000f, 800f)), Struct_1(-398f, -35575i, vec4<f32>(-537f, -798f, -1309f, 277f)), -1000f, vec2<u32>(4294967295u, 0u)), vec4<f32>(-281f, 751f, -821f, 121f)), true), Struct_4(Struct_1(-251f, 32430i, vec4<f32>(245f, -695f, -155f, -241f)), vec4<bool>(false, true, false, false), Struct_3(Struct_2(Struct_1(-383f, -30519i, vec4<f32>(-651f, -198f, -1884f, 220f)), Struct_1(760f, 79848i, vec4<f32>(845f, 1619f, 355f, -1778f)), 1256f, vec2<u32>(0u, 39532u)), Struct_2(Struct_1(935f, 0i, vec4<f32>(-2555f, -264f, -219f, 455f)), Struct_1(1302f, 20456i, vec4<f32>(-796f, 1032f, -271f, -373f)), 630f, vec2<u32>(1u, 56820u)), vec4<f32>(1000f, 403f, -1734f, 565f)), true), Struct_4(Struct_1(-1448f, -1006i, vec4<f32>(-1997f, -460f, -657f, 1000f)), vec4<bool>(false, true, false, false), Struct_3(Struct_2(Struct_1(381f, 1i, vec4<f32>(-584f, -800f, 1002f, 1000f)), Struct_1(1543f, i32(-2147483648), vec4<f32>(1000f, -298f, 911f, -984f)), 1372f, vec2<u32>(1u, 4294967295u)), Struct_2(Struct_1(-205f, -14206i, vec4<f32>(1537f, 532f, -1000f, -276f)), Struct_1(-1000f, 1i, vec4<f32>(-658f, -1000f, 317f, -665f)), -469f, vec2<u32>(25969u, 4294967295u)), vec4<f32>(433f, -570f, -1638f, 1991f)), true), Struct_4(Struct_1(-1738f, 1i, vec4<f32>(1471f, 366f, 353f, -910f)), vec4<bool>(true, false, true, true), Struct_3(Struct_2(Struct_1(-811f, 2147483647i, vec4<f32>(-564f, 936f, 516f, 675f)), Struct_1(-935f, i32(-2147483648), vec4<f32>(136f, -1272f, 1062f, -1035f)), -1170f, vec2<u32>(73245u, 1u)), Struct_2(Struct_1(-104f, -29479i, vec4<f32>(812f, -1108f, -749f, 272f)), Struct_1(-876f, 12542i, vec4<f32>(213f, -598f, -1651f, 638f)), 815f, vec2<u32>(93037u, 14036u)), vec4<f32>(-514f, -929f, -753f, 1194f)), true), Struct_4(Struct_1(-611f, -1i, vec4<f32>(676f, -835f, 1280f, 1475f)), vec4<bool>(false, false, true, false), Struct_3(Struct_2(Struct_1(474f, 0i, vec4<f32>(-1326f, -501f, -1403f, 496f)), Struct_1(-493f, -14009i, vec4<f32>(881f, 1073f, 1311f, -1283f)), 683f, vec2<u32>(82424u, 1u)), Struct_2(Struct_1(-103f, 0i, vec4<f32>(1000f, 1000f, -1313f, 1655f)), Struct_1(-1000f, 13000i, vec4<f32>(802f, -429f, -914f, 1814f)), -1000f, vec2<u32>(48778u, 1u)), vec4<f32>(1626f, 293f, 1793f, 1549f)), true));

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<f32, 27> = array<f32, 27>(2314f, -879f, 902f, 191f, -206f, 1000f, 141f, -523f, 489f, -496f, 1046f, 2803f, 1126f, 177f, -735f, -1857f, -736f, -2127f, 774f, -1303f, 368f, -896f, 1000f, 1861f, -1349f, -506f, -819f);

var<private> global3: array<i32, 17> = array<i32, 17>(13450i, -4438i, i32(-2147483648), -1i, 19938i, 9397i, 8765i, -16714i, -55734i, -13522i, -1i, 2147483647i, -43537i, 2147483647i, i32(-2147483648), i32(-2147483648), -3706i);

var<private> global4: array<vec2<i32>, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~vec4<u32>(80884u, u_input.a, ~_wgslsmith_mult_u32(~0u, u_input.a), ~firstLeadingBit(u_input.a));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.x & u_input.a, 27u)], _wgslsmith_f_op_f32(579f - global2[_wgslsmith_index_u32(var_0.x, 27u)])), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a, 17u)] >> (var_0.x % 32u), 12509i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1668f, 134f, -1000f, 280f)))), Struct_1(_wgslsmith_f_op_f32(803f * -272f), global3[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(1u, 27u)], -432f, -846f, -1266f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(var_0.x, 27u)], -1466f)), vec4<bool>(true, false, true, false)))), -1273f, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 25252u), var_0.yy)), global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, -283f, global2[_wgslsmith_index_u32(0u, 27u)], 124f))))))));
    var var_2 = Struct_3(Struct_2(var_1.b.a, var_1.a.a, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(abs(0u), ~var_0.x)), 27u)], _wgslsmith_add_vec2_u32(~var_0.zx, vec2<u32>(var_0.x, var_1.b.d.x)) | vec2<u32>(u_input.a ^ var_1.b.d.x, var_0.x)), Struct_2(Struct_1(var_1.b.b.a, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_0.x), 17u)], _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.b.b, var_1.a.b.b, global3[_wgslsmith_index_u32(109045u, 17u)]), vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(u_input.a, 17u)], var_1.a.b.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], -1203f, -1368f, global2[_wgslsmith_index_u32(1u, 27u)]), vec4<f32>(-2641f, -853f, 330f, global2[_wgslsmith_index_u32(var_0.x, 27u)])) + vec4<f32>(-938f, -364f, 941f, -385f))), var_1.a.b, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(u_input.a), ~u_input.a) & (47779u >> (var_0.x % 32u)), 27u)], ~(var_1.b.d & _wgslsmith_sub_vec2_u32(var_1.a.d, var_1.b.d))), vec4<f32>(-2234f, global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(-119f - global2[_wgslsmith_index_u32(reverseBits(1u), 27u)]), _wgslsmith_f_op_f32(-var_1.a.a.a)));
    let var_3 = -firstLeadingBit(max(select(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b.a.b, var_1.b.a.b, 0i), vec3<i32>(-16565i, 1i, global3[_wgslsmith_index_u32(48736u, 17u)])), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 15226i, var_2.b.a.b), vec3<i32>(-12953i, var_2.b.b.b, global3[_wgslsmith_index_u32(var_1.a.d.x, 17u)])), true), select(-vec3<i32>(var_2.a.a.b, 2147483647i, var_1.b.b.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.b.b, var_2.a.b.b, 0i), vec3<i32>(var_1.a.a.b, -29353i, var_1.b.b.b), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 17u)], var_2.a.b.b, global3[_wgslsmith_index_u32(var_2.a.d.x, 17u)])), any(vec4<bool>(false, false, true, false)))));
    var var_4 = Struct_2(var_2.a.a, var_2.b.b, _wgslsmith_f_op_f32(336f - 1359f), vec2<u32>(var_1.a.d.x & select(_wgslsmith_mod_u32(var_1.b.d.x, 63429u), firstTrailingBit(var_2.a.d.x), true), u_input.a));
    return !select(select(vec4<bool>(true, select(false, true, false), true, false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, any(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true)), var_4.b.a < -516f)), vec4<bool>(false, true, !(var_1.c.x > -921f), all(vec3<bool>(false, false, false))), true);
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    var var_0 = ~reverseBits(-(abs(global4[_wgslsmith_index_u32(u_input.a, 26u)]) << (firstLeadingBit(vec2<u32>(4294967295u, 12994u)) % vec2<u32>(32u))));
    var var_1 = ~vec3<u32>(1u, u_input.a, _wgslsmith_div_u32(u_input.a >> (max(u_input.a, 4294967295u) % 32u), _wgslsmith_mod_u32(u_input.a, 5497u)));
    let var_2 = ~min(var_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 7566u, u_input.a), vec3<u32>(4294967295u, 68472u, 33005u)), ~vec3<u32>(var_1.x, u_input.a, var_1.x)) << (54635u % 32u));
    global4 = array<vec2<i32>, 26>();
    global0 = array<Struct_4, 11>();
    return reverseBits(~select(vec4<u32>(62541u, var_1.x, var_2, 0u) & ~vec4<u32>(0u, 0u, u_input.a, var_2), ~(~vec4<u32>(var_2, 1u, var_2, 1u)), !func_3()));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(arg_3.b, !vec4<bool>(!any(vec2<bool>(false, true)), _wgslsmith_add_u32(1u, arg_3.d.x) < u_input.a, true, !(u_input.a > 1200u)), Struct_3(Struct_2(arg_3.a, arg_3.b, 1108f, vec2<u32>(arg_3.d.x, 83538u)), Struct_2(Struct_1(-485f, arg_3.b.b, vec4<f32>(1005f, 1000f, arg_2, 1026f)), arg_3.b, 1187f, arg_3.d), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.c.x)), -518f, _wgslsmith_f_op_f32(-arg_2))), func_3().x);
    global1 = array<Struct_2, 13>();
    let var_1 = arg_1;
    global3 = array<i32, 17>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(692f, arg_0.x), 942f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-214f, -768f)) - _wgslsmith_f_op_f32(-arg_0.x))))));
    return arg_3.a;
}

fn func_1() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(max(u_input.a, 4294967295u)), 27u)];
    var var_1 = false;
    var var_2 = ~abs(_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~4294967295u)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 27u)]), -(~global3[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, global2[_wgslsmith_index_u32(22604u, 27u)], global2[_wgslsmith_index_u32(16116u, 27u)], global2[_wgslsmith_index_u32(16237u, 27u)]) + vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], 450f, global2[_wgslsmith_index_u32(28826u, 27u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-883f, global2[_wgslsmith_index_u32(114951u, 27u)], global2[_wgslsmith_index_u32(34426u, 27u)], -315f) + vec4<f32>(290f, global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)])))))), func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-819f, -3383f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)])), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, abs(5377u), abs(28845u)), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -815f)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u << (u_input.a % 32u), 4294967295u), 27u)]), ~func_2(vec4<i32>(global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)], 0i, -1i)) ^ ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 31770u), global2[_wgslsmith_index_u32(65590u, 27u)], global1[_wgslsmith_index_u32(max(~u_input.a, u_input.a >> (u_input.a % 32u)) >> (_wgslsmith_div_u32(~1u, _wgslsmith_div_u32(u_input.a, 10166u)) % 32u), 13u)]), global2[_wgslsmith_index_u32((((u_input.a >> (u_input.a % 32u)) << ((1u >> (u_input.a % 32u)) % 32u)) ^ _wgslsmith_mod_u32(9936u >> (u_input.a % 32u), func_2(vec4<i32>(global3[_wgslsmith_index_u32(64373u, 17u)], -2147483647i, global3[_wgslsmith_index_u32(u_input.a, 17u)], 1i)).x)) >> (_wgslsmith_dot_vec2_u32(max(vec2<u32>(45269u, 25402u), ~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(21443u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(2869u, u_input.a), vec2<u32>(4294967295u, u_input.a)))) % 32u), 27u)], _wgslsmith_mod_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 89393u), vec2<u32>(u_input.a, u_input.a))), ~abs(vec2<u32>(27480u, u_input.a) << (vec2<u32>(1u, 39048u) % vec2<u32>(32u)))));
    let var_4 = global1[_wgslsmith_index_u32(var_3.d.x, 13u)];
    return func_2(-vec4<i32>(max(-1i, var_3.b.b), firstLeadingBit(var_4.b.b), var_4.b.b & 32923i, _wgslsmith_sub_i32(-19699i, var_3.a.b))).x >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))));
    let var_1 = global0[_wgslsmith_index_u32(abs(30169u), 11u)];
    global3 = array<i32, 17>();
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(func_1(), 105714u, firstLeadingBit(42742u), ~u_input.a), func_2(vec4<i32>(global3[_wgslsmith_index_u32(25152u, 17u)], -24222i, global3[_wgslsmith_index_u32(5432u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)])) & abs(vec4<u32>(u_input.a, 4294967295u, 4553u, u_input.a))), max(~(~vec4<u32>(u_input.a, 37471u, 12309u, var_1.c.a.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec4<u32>(76891u, u_input.a, 13022u, u_input.a))));
    var var_3 = _wgslsmith_f_op_f32(404f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)));
    var var_4 = 24678i;
    var var_5 = Struct_3(Struct_2(Struct_1(var_1.a.a, -max(15913i, var_1.c.b.b.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(155f, global2[_wgslsmith_index_u32(u_input.a, 27u)]))), global3[_wgslsmith_index_u32(reverseBits(var_1.c.a.d.x), 17u)], vec4<f32>(468f, global2[_wgslsmith_index_u32(var_2.x, 27u)], _wgslsmith_div_f32(-1608f, -169f), var_1.a.a)), _wgslsmith_f_op_f32(floor(var_1.c.a.b.a)), vec2<u32>(79327u, abs(~var_2.x))), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-265f, global2[_wgslsmith_index_u32(var_2.x, 27u)], 618f, global2[_wgslsmith_index_u32(var_2.x, 27u)]), vec4<f32>(-153f, global2[_wgslsmith_index_u32(4294967295u, 27u)], var_1.c.b.c, global2[_wgslsmith_index_u32(4294967295u, 27u)]), true)))), vec4<u32>(7617u, ~23603u, reverseBits(88102u), func_2(vec4<i32>(-36944i, global3[_wgslsmith_index_u32(0u, 17u)], var_1.a.b, global3[_wgslsmith_index_u32(u_input.a, 17u)])).x), var_1.a.a, global1[_wgslsmith_index_u32(41789u, 13u)]), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(17728u, 27u)], 343f, 113f, global2[_wgslsmith_index_u32(0u, 27u)]) + var_1.c.c)), (vec4<u32>(1u, var_2.x, 1u, 8539u) >> (vec4<u32>(0u, var_1.c.b.d.x, var_1.c.a.d.x, 9980u) % vec4<u32>(32u))) & vec4<u32>(u_input.a, 92372u, u_input.a, var_1.c.b.d.x), -1373f, var_1.c.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(var_2.x, 27u)], 1255f))))), ~(var_2.ww ^ var_2.xw)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.a.c), _wgslsmith_f_op_f32(-322f + var_1.a.a), _wgslsmith_f_op_f32(var_1.c.a.b.a + 1635f), _wgslsmith_f_op_f32(trunc(1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.c, var_5.a.a.a, var_5.b.b.a, 1227f)), vec4<u32>(u_input.a, var_2.x, 102752u, u_input.a) | vec4<u32>(u_input.a, 49298u, 0u, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -577f), Struct_2(Struct_1(var_5.c.x, var_5.a.b.b, vec4<f32>(-1305f, global2[_wgslsmith_index_u32(1u, 27u)], -1235f, 3376f)), var_1.c.b.a, -402f, vec2<u32>(0u, 0u))).c.zw - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.a.b.c.yx) + vec2<f32>(var_1.a.a, 163f)))), 443f, var_5.b.b.b);
}

