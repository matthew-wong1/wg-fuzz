struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(-416f, vec4<f32>(-2275f, 1000f, 546f, 1000f)), Struct_1(114f, vec4<f32>(-2411f, -1056f, 3019f, 929f)), vec3<f32>(1810f, -1000f, -1000f)), Struct_2(Struct_1(-1459f, vec4<f32>(2281f, -1043f, -1205f, 499f)), Struct_1(-1000f, vec4<f32>(-1994f, 2324f, 1870f, -113f)), vec3<f32>(658f, -917f, 1000f)), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(-1000f, vec4<f32>(-2056f, 943f, -1896f, 1355f)), Struct_1(648f, vec4<f32>(1077f, -1000f, -923f, -2114f)), vec3<f32>(1003f, 343f, 1642f)), Struct_2(Struct_1(-327f, vec4<f32>(632f, 765f, -1940f, -882f)), Struct_1(-618f, vec4<f32>(867f, 882f, -488f, -288f)), vec3<f32>(114f, 196f, -1367f)), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(-664f, vec4<f32>(837f, -1478f, 208f, -116f)), Struct_1(-568f, vec4<f32>(-347f, -522f, 1402f, -705f)), vec3<f32>(819f, -1340f, -1000f)), Struct_2(Struct_1(654f, vec4<f32>(-345f, -838f, 1259f, -1944f)), Struct_1(2265f, vec4<f32>(-1854f, 511f, -1300f, -180f)), vec3<f32>(-1000f, 782f, 1999f)), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(891f, vec4<f32>(-544f, 1388f, -1924f, 1076f)), Struct_1(-270f, vec4<f32>(1380f, 1900f, -679f, 118f)), vec3<f32>(-1192f, -432f, 111f)), Struct_2(Struct_1(-687f, vec4<f32>(-1145f, 1111f, -230f, -646f)), Struct_1(-1291f, vec4<f32>(1243f, 779f, 819f, -265f)), vec3<f32>(-1556f, -1505f, -351f)), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, true), Struct_2(Struct_1(-1028f, vec4<f32>(-929f, 937f, -1103f, -1636f)), Struct_1(-575f, vec4<f32>(-2223f, 1000f, 846f, -529f)), vec3<f32>(1356f, 284f, -622f)), Struct_2(Struct_1(455f, vec4<f32>(960f, 950f, 943f, 384f)), Struct_1(-1000f, vec4<f32>(2196f, 655f, -767f, -381f)), vec3<f32>(-988f, 1933f, -523f)), vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(820f, vec4<f32>(-350f, 1000f, -113f, 301f)), Struct_1(1616f, vec4<f32>(615f, 1319f, -371f, -1000f)), vec3<f32>(661f, -166f, -381f)), Struct_2(Struct_1(1535f, vec4<f32>(-1509f, -317f, -180f, 685f)), Struct_1(-358f, vec4<f32>(-290f, -1668f, 391f, -300f)), vec3<f32>(-314f, 1090f, -491f)), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(1187f, vec4<f32>(-1681f, -459f, 271f, -133f)), Struct_1(1790f, vec4<f32>(-644f, 1048f, 291f, -232f)), vec3<f32>(-711f, 555f, 720f)), Struct_2(Struct_1(-950f, vec4<f32>(436f, -2124f, -1084f, -1448f)), Struct_1(541f, vec4<f32>(-1001f, -1000f, -104f, 1098f)), vec3<f32>(455f, -584f, 1770f)), vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, true, true), Struct_2(Struct_1(-1585f, vec4<f32>(253f, -388f, -470f, -1349f)), Struct_1(368f, vec4<f32>(715f, -2191f, 1000f, 1341f)), vec3<f32>(-1187f, -1241f, -1919f)), Struct_2(Struct_1(-1281f, vec4<f32>(985f, 461f, -636f, 525f)), Struct_1(1829f, vec4<f32>(-983f, 1157f, 624f, 650f)), vec3<f32>(701f, -303f, -275f)), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(322f, vec4<f32>(189f, -1566f, 1653f, -1050f)), Struct_1(-905f, vec4<f32>(-334f, 149f, 2287f, -2199f)), vec3<f32>(-265f, -869f, 648f)), Struct_2(Struct_1(-178f, vec4<f32>(1000f, 613f, -1196f, -1010f)), Struct_1(946f, vec4<f32>(239f, -1656f, 1423f, 1000f)), vec3<f32>(229f, -382f, 855f)), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(1303f, vec4<f32>(-406f, 1270f, 1174f, -973f)), Struct_1(1401f, vec4<f32>(-1283f, -750f, -487f, -201f)), vec3<f32>(-743f, 416f, -2575f)), Struct_2(Struct_1(2445f, vec4<f32>(306f, 823f, -806f, -2034f)), Struct_1(1269f, vec4<f32>(-943f, 172f, 1013f, -2019f)), vec3<f32>(111f, 432f, 1611f)), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(111f, vec4<f32>(-1000f, 1000f, -483f, -438f)), Struct_1(546f, vec4<f32>(-731f, 785f, -757f, 1735f)), vec3<f32>(-592f, 530f, 1635f)), Struct_2(Struct_1(1994f, vec4<f32>(-1000f, 180f, 1582f, 1458f)), Struct_1(2005f, vec4<f32>(971f, 387f, 746f, 461f)), vec3<f32>(582f, -744f, -226f)), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(-467f, vec4<f32>(1353f, -159f, -1381f, 959f)), Struct_1(-345f, vec4<f32>(1122f, 124f, 241f, 1701f)), vec3<f32>(-611f, -252f, -1000f)), Struct_2(Struct_1(1000f, vec4<f32>(-388f, -352f, -1088f, 1432f)), Struct_1(1010f, vec4<f32>(-821f, -754f, -1182f, 1657f)), vec3<f32>(-582f, -818f, -2082f)), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(-291f, vec4<f32>(-1595f, -1590f, -963f, -881f)), Struct_1(1543f, vec4<f32>(529f, -850f, -975f, -1000f)), vec3<f32>(450f, -510f, -310f)), Struct_2(Struct_1(671f, vec4<f32>(721f, 378f, 439f, 210f)), Struct_1(891f, vec4<f32>(-162f, 511f, -943f, 1000f)), vec3<f32>(-927f, -740f, -126f)), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(-115f, vec4<f32>(-485f, -714f, -614f, 806f)), Struct_1(-994f, vec4<f32>(445f, 481f, 2341f, -540f)), vec3<f32>(-1179f, -1608f, 1139f)), Struct_2(Struct_1(1092f, vec4<f32>(-1908f, 1168f, 498f, -1354f)), Struct_1(418f, vec4<f32>(-357f, 1478f, 708f, 1796f)), vec3<f32>(-1777f, -661f, 371f)), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(734f, vec4<f32>(-532f, 276f, 733f, -504f)), Struct_1(208f, vec4<f32>(1183f, 402f, -700f, 1207f)), vec3<f32>(-1143f, -143f, -802f)), Struct_2(Struct_1(-526f, vec4<f32>(-1000f, 1605f, 246f, -368f)), Struct_1(1116f, vec4<f32>(-1860f, -760f, 375f, 368f)), vec3<f32>(-156f, 2064f, 1856f)), vec3<bool>(false, false, true)), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(-520f, vec4<f32>(-709f, 1000f, -506f, -357f)), Struct_1(-343f, vec4<f32>(-538f, -743f, 2016f, -1141f)), vec3<f32>(262f, 269f, 272f)), Struct_2(Struct_1(-682f, vec4<f32>(-1448f, -1254f, 146f, 1506f)), Struct_1(518f, vec4<f32>(489f, -1716f, -1846f, 818f)), vec3<f32>(1000f, 441f, 375f)), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(-524f, vec4<f32>(1479f, 628f, 1071f, -418f)), Struct_1(-761f, vec4<f32>(-366f, -1773f, 1000f, 2327f)), vec3<f32>(-316f, 136f, 1000f)), Struct_2(Struct_1(342f, vec4<f32>(-137f, 578f, -242f, 326f)), Struct_1(1000f, vec4<f32>(1918f, -158f, -955f, -242f)), vec3<f32>(1349f, -811f, 1389f)), vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(1611f, vec4<f32>(-337f, 1765f, -281f, -116f)), Struct_1(-1000f, vec4<f32>(1327f, 152f, -1020f, 246f)), vec3<f32>(2797f, -916f, 1060f)), Struct_2(Struct_1(1000f, vec4<f32>(-829f, -249f, 2433f, 1660f)), Struct_1(-677f, vec4<f32>(-880f, 853f, 534f, 2161f)), vec3<f32>(827f, 172f, -1061f)), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(-1044f, vec4<f32>(1107f, -2917f, 1370f, -1063f)), Struct_1(2071f, vec4<f32>(399f, -1486f, -1170f, 2083f)), vec3<f32>(-837f, 983f, 1050f)), Struct_2(Struct_1(1389f, vec4<f32>(-1000f, 342f, 275f, 1000f)), Struct_1(-566f, vec4<f32>(-1000f, -1516f, -1317f, -1048f)), vec3<f32>(-747f, -1000f, -1672f)), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(-842f, vec4<f32>(-1873f, -229f, -437f, -371f)), Struct_1(-978f, vec4<f32>(-142f, 1000f, 714f, 771f)), vec3<f32>(660f, -1000f, 643f)), Struct_2(Struct_1(-620f, vec4<f32>(474f, 1000f, 1000f, -461f)), Struct_1(1038f, vec4<f32>(856f, 609f, -1000f, -179f)), vec3<f32>(360f, -1245f, -1870f)), vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(-479f, vec4<f32>(-812f, -1000f, -1006f, -433f)), Struct_1(1569f, vec4<f32>(728f, -1177f, -173f, 135f)), vec3<f32>(-459f, -812f, 1882f)), Struct_2(Struct_1(-424f, vec4<f32>(-507f, 1694f, -1169f, 1890f)), Struct_1(-1000f, vec4<f32>(-769f, -419f, 447f, -1000f)), vec3<f32>(1000f, -307f, -945f)), vec3<bool>(false, true, true)));

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -21740i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, -465f, -874f)) + vec3<f32>(1000f, -176f, -1235f)) * vec3<f32>(-192f, 1004f, _wgslsmith_f_op_f32(1265f + -389f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(720f))), _wgslsmith_f_op_f32(floor(-275f)), -219f)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(311f, var_0.x, -1475f) - vec3<f32>(var_0.x, -993f, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-181f, -830f, 2044f) - vec3<f32>(308f, -975f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2352f, -1345f, 236f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x + 2102f), _wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = Struct_4(Struct_2(Struct_1(var_0.x, vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(var_0.x, 1330f), _wgslsmith_f_op_f32(1669f + 1000f), var_0.x)), Struct_1(var_0.x, vec4<f32>(_wgslsmith_div_f32(var_0.x, -878f), 1f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(618f, var_0.x, 472f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(940f, 660f, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1000f, var_0.x), vec3<f32>(1079f, -2209f, var_0.x))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))), vec4<bool>(true, !((global3.x >= 2147483647i) && any(vec4<bool>(false, true, true, false))), var_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1560f) * -1496f), !all(vec3<bool>(true, true, true))), abs(-reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 604i, 1i), vec3<i32>(18894i, global3.x, -1i)))), var_0.x);
    let var_2 = var_1.a.b;
    var var_3 = var_1.a;
    return vec4<f32>(499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(var_3.a.a + var_0.x))) * -574f), -224f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1920f - -211f)))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(280f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, -941f, -557f, -1268f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(320f, -257f, -1084f, 2366f)), true)))));
    global3 = u_input.c;
    let var_1 = 0i;
    let var_2 = ~var_1;
    global0 = all(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true)), true));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(1000f - var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(_wgslsmith_f_op_f32(sign(-838f)), -616f, _wgslsmith_f_op_f32(trunc(-900f)), _wgslsmith_f_op_f32(sign(-1055f))))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(-var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, -1312f))), _wgslsmith_f_op_f32(min(var_0.b.x, 357f)))), _wgslsmith_f_op_vec3_f32(-var_0.b.ywx));
}

fn func_1() -> Struct_2 {
    global3 = u_input.b;
    let var_0 = Struct_4(func_2(), func_2().a.b.x, vec4<bool>(true, any(vec4<bool>(u_input.e < u_input.e, true, true, select(true, false, true))), true, true), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, 53721i), global3.x << (u_input.e % 32u), u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(35427i, 49927i, -40647i) ^ vec3<i32>(2147483647i, global3.x, 2147483647i))), global3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -1i, 0i), vec4<i32>(-1i, global3.x, u_input.d, u_input.d)), vec4<i32>(global3.x, global3.x, u_input.b.x, -36820i) ^ vec4<i32>(-1i, global3.x, u_input.c.x, u_input.b.x)) ^ -31894i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    let var_1 = var_0.d;
    global1 = array<Struct_3, 5>();
    global1 = array<Struct_3, 5>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = false;
    global3 = u_input.c;
    global2 = array<Struct_3, 21>();
    var var_1 = Struct_3(vec3<bool>(true, select(any(vec2<bool>(true, true)), true, 878f < var_0.a.a), select(true, true | (global3.x == 2147483647i), false)), var_0, var_0, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), true, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c.b.b.wyz, var_1.c.b.b.www), vec3<f32>(var_0.c.x, 129f, -486f)))), vec3<f32>(-1040f, var_0.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.b.x, var_0.a.b.x)), var_1.b.a.a))));
}

