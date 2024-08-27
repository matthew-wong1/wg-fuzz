struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-46086i, vec3<f32>(-1000f, -1120f, 2113f), -542f, vec4<f32>(-1178f, 469f, -1000f, 1751f)), Struct_1(-8306i, vec3<f32>(-722f, -123f, 171f), 265f, vec4<f32>(-390f, -1275f, 1611f, 345f)), Struct_1(55484i, vec3<f32>(796f, 1460f, 131f), -664f, vec4<f32>(-1081f, -2084f, -209f, 288f)), Struct_1(-16034i, vec3<f32>(464f, -128f, -124f), 303f, vec4<f32>(-1322f, 250f, 1000f, 457f)), Struct_1(-24937i, vec3<f32>(1298f, -774f, 1795f), 1294f, vec4<f32>(-983f, 148f, -1078f, 1934f)), Struct_1(34284i, vec3<f32>(721f, -2645f, -457f), 2304f, vec4<f32>(166f, 1000f, 1000f, -946f)), Struct_1(-3242i, vec3<f32>(-2471f, 1117f, -602f), -801f, vec4<f32>(-163f, 548f, -1292f, -1289f)), Struct_1(-16525i, vec3<f32>(-1585f, 1459f, 146f), 732f, vec4<f32>(1000f, -652f, -895f, 1574f)), Struct_1(-29237i, vec3<f32>(-1010f, 1232f, -876f), -605f, vec4<f32>(1000f, -991f, -1000f, -1124f)), Struct_1(-1i, vec3<f32>(-371f, -326f, 1194f), -918f, vec4<f32>(-1923f, 394f, -1817f, 1059f)), Struct_1(i32(-2147483648), vec3<f32>(1201f, 1458f, 265f), 3089f, vec4<f32>(1000f, 956f, -278f, 418f)), Struct_1(2147483647i, vec3<f32>(-113f, 821f, -1788f), 1080f, vec4<f32>(861f, -1000f, -2946f, 523f)), Struct_1(-17777i, vec3<f32>(452f, -564f, -1000f), -198f, vec4<f32>(406f, -674f, -1051f, 1911f)), Struct_1(0i, vec3<f32>(1460f, 324f, 573f), -1000f, vec4<f32>(-2217f, 587f, -1044f, 744f)), Struct_1(10984i, vec3<f32>(800f, 834f, -640f), -1101f, vec4<f32>(531f, -1269f, -952f, 776f)), Struct_1(33663i, vec3<f32>(-1020f, -2795f, -163f), 1489f, vec4<f32>(-471f, 1173f, 1002f, -681f)), Struct_1(-19818i, vec3<f32>(-1390f, 1253f, 331f), 1267f, vec4<f32>(351f, 1522f, 1724f, -750f)), Struct_1(39996i, vec3<f32>(1972f, -1288f, -777f), 134f, vec4<f32>(865f, -727f, 1159f, -645f)), Struct_1(12404i, vec3<f32>(-417f, -389f, -182f), -540f, vec4<f32>(-1201f, -527f, 466f, 579f)), Struct_1(-1i, vec3<f32>(674f, -617f, 949f), -1000f, vec4<f32>(-598f, -187f, -241f, 1307f)), Struct_1(-7307i, vec3<f32>(-1127f, 343f, -286f), 2188f, vec4<f32>(-354f, -158f, -245f, -1254f)), Struct_1(0i, vec3<f32>(1692f, -491f, 1000f), -1074f, vec4<f32>(-874f, 1175f, -946f, -1701f)), Struct_1(2147483647i, vec3<f32>(585f, -1056f, -333f), -1000f, vec4<f32>(170f, 2685f, -203f, 134f)), Struct_1(65086i, vec3<f32>(653f, 846f, 2007f), 542f, vec4<f32>(913f, 1000f, 328f, 1000f)), Struct_1(2147483647i, vec3<f32>(586f, 1252f, 1265f), -207f, vec4<f32>(554f, 1000f, 374f, -347f)), Struct_1(2147483647i, vec3<f32>(529f, -1116f, -424f), 478f, vec4<f32>(1829f, -133f, -367f, 1496f)));

var<private> global1: array<i32, 15>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(0i, vec3<f32>(1000f, 367f, 895f), -1953f, vec4<f32>(1090f, 1354f, -2038f, -1075f)), Struct_1(i32(-2147483648), vec3<f32>(-626f, -1007f, 2177f), 248f, vec4<f32>(-664f, -858f, 849f, 870f)), Struct_1(1i, vec3<f32>(248f, -149f, -1222f), -421f, vec4<f32>(-643f, 906f, -242f, 1346f)), Struct_1(-1i, vec3<f32>(-326f, 225f, -1488f), 517f, vec4<f32>(854f, -1000f, -298f, 487f)), Struct_1(-23011i, vec3<f32>(-472f, -1000f, -1120f), -584f, vec4<f32>(1386f, -212f, 845f, 1000f)), Struct_1(-49038i, vec3<f32>(1464f, 472f, 169f), 1379f, vec4<f32>(-974f, 395f, 1000f, -1284f)), Struct_1(-42398i, vec3<f32>(-465f, -971f, -1206f), -146f, vec4<f32>(-1000f, -343f, -923f, -167f)), Struct_1(2147483647i, vec3<f32>(-578f, -1924f, -1876f), 811f, vec4<f32>(673f, 1991f, -911f, -524f)), Struct_1(-1i, vec3<f32>(915f, -503f, 557f), 316f, vec4<f32>(-1034f, -1000f, -209f, 1237f)), Struct_1(27683i, vec3<f32>(1000f, 1810f, 1231f), -1000f, vec4<f32>(-1000f, 267f, 287f, -682f)), Struct_1(i32(-2147483648), vec3<f32>(-891f, -548f, -322f), 349f, vec4<f32>(628f, -1636f, -1000f, -1000f)), Struct_1(5960i, vec3<f32>(215f, 405f, -1014f), -561f, vec4<f32>(1121f, -983f, -1450f, 674f)), Struct_1(2147483647i, vec3<f32>(-497f, 101f, 1279f), 1262f, vec4<f32>(346f, -266f, 1000f, 631f)), Struct_1(-3014i, vec3<f32>(1709f, -255f, 155f), -1089f, vec4<f32>(252f, -1692f, 1223f, 1064f)), Struct_1(0i, vec3<f32>(-1181f, -366f, -1004f), 1000f, vec4<f32>(1667f, 593f, -848f, 702f)), Struct_1(-1i, vec3<f32>(-1633f, -1000f, 527f), -1848f, vec4<f32>(-421f, 719f, 339f, 1171f)), Struct_1(22228i, vec3<f32>(-301f, -374f, 613f), 1940f, vec4<f32>(-1132f, -210f, -106f, -1921f)), Struct_1(0i, vec3<f32>(348f, -1339f, 978f), -833f, vec4<f32>(755f, 1215f, -1560f, -236f)), Struct_1(-98348i, vec3<f32>(267f, -706f, -477f), -1218f, vec4<f32>(-1366f, -909f, 1056f, 649f)), Struct_1(i32(-2147483648), vec3<f32>(-402f, -283f, -1000f), -719f, vec4<f32>(667f, 556f, -1000f, 1387f)), Struct_1(-23521i, vec3<f32>(982f, 1091f, -243f), -1667f, vec4<f32>(-149f, 1000f, -198f, -190f)), Struct_1(-26400i, vec3<f32>(829f, 666f, 1000f), 558f, vec4<f32>(124f, -1338f, -1085f, -503f)));

var<private> global3: f32;

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), -20687i, 0i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_3 {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global2 = array<Struct_1, 22>();
    global3 = _wgslsmith_f_op_f32(-891f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -371f)));
    global0 = array<Struct_1, 26>();
    return Struct_3(min(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.a, ~10163u, ~1u, 4294967295u), ~(~u_input.a)), countOneBits(u_input.b.x)), u_input.c.wzw);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, u_input.c.x, u_input.c.x, reverseBits(~1u))), ~(~_wgslsmith_mult_vec3_u32(u_input.a.xyy, select(arg_3.b, u_input.c.yxx, arg_2.xxw))));
    var var_1 = arg_2.zwx;
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-885f, _wgslsmith_f_op_f32(max(903f, 457f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(996f, _wgslsmith_f_op_f32(min(-622f, -390f))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(287f + -1413f) * -1327f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f + -136f))));
    return 15551u;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec3<i32> {
    var var_0 = func_1(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, -37378i), vec3<i32>(-66119i, 81258i, u_input.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-13539i, global4.x, 12559i), vec3<i32>(31621i, u_input.d, global1[_wgslsmith_index_u32(arg_0.x, 15u)]), vec3<i32>(0i, -1i, 0i))), abs(vec3<i32>(-13026i, u_input.d, 2147483647i)) ^ vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 15u)], global1[_wgslsmith_index_u32(arg_0.x, 15u)], -18586i), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.x, u_input.d, 20672i), vec3<i32>(1i, global4.x, u_input.d)), reverseBits(vec3<i32>(global4.x, -2147483647i, u_input.d)))), -min(vec3<i32>(global4.x, global4.x, global4.x) >> (vec3<u32>(4294967295u, 4294967295u, 148u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(global4.x, global1[_wgslsmith_index_u32(arg_0.x, 15u)], -15377i)))), func_1(~vec3<i32>(u_input.d, ~global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global4.x), func_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(0u, 15u)], 43503i, u_input.d), reverseBits(vec3<i32>(45798i, -1i, 0i))), func_1(min(vec3<i32>(global4.x, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(arg_0.x, 15u)]), vec3<i32>(-2147483647i, global4.x, global1[_wgslsmith_index_u32(1182u, 15u)])), Struct_3(1u, vec3<u32>(9204u, u_input.a.x, u_input.c.x))))));
    global4 = vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global4.x, -71348i) & -6608i, -1i), ~(global4.x & firstLeadingBit(global4.x << (1u % 32u))));
    let var_1 = vec2<i32>(_wgslsmith_div_i32(u_input.d, ~max(1i, global1[_wgslsmith_index_u32(countOneBits(4294967295u), 15u)])), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(_wgslsmith_div_vec2_i32(global4.yz, vec2<i32>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(arg_0.x, 15u)])), global4.yy, true), global4.zx), select(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 15u)], global4.x), vec2<i32>(u_input.d, -76771i)), select(vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(var_0.b.x, 15u)]), abs(vec2<i32>(global4.x, -19520i)), any(vec3<bool>(true, false, false))), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false)))));
    global0 = array<Struct_1, 26>();
    return ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global4.x, 1i) & vec3<i32>(-2147483647i, -1i, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(10284i, -2147483647i, global1[_wgslsmith_index_u32(arg_1, 15u)]), vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 15u)], u_input.d, global4.x))) & countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -61055i, -11612i), vec3<i32>(8398i, global1[_wgslsmith_index_u32(var_0.a, 15u)], global1[_wgslsmith_index_u32(arg_0.x, 15u)]), vec3<i32>(u_input.d, 2147483647i, 2147483647i))), -vec3<i32>(2147483647i, 1i, u_input.d) << (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(8760u, 5344u, 4294967295u), u_input.c.xzw), vec3<u32>(21553u, arg_0.x, 92247u)) % vec3<u32>(32u)), (vec3<i32>(-1i) * -vec3<i32>(20230i, u_input.d, global4.x)) << (vec3<u32>(countOneBits(var_0.b.x), select(u_input.c.x, 1u, false), ~arg_1) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = Struct_4(vec4<f32>(1755f, -253f, arg_3.d.x, -1989f));
    global0 = array<Struct_1, 26>();
    let var_1 = var_0;
    global4 = select(select((vec3<i32>(43903i, u_input.d, -44863i) ^ vec3<i32>(32758i, 1i, global1[_wgslsmith_index_u32(4294967295u, 15u)])) | vec3<i32>(global1[_wgslsmith_index_u32(arg_0.a, 15u)], u_input.d, -8993i), abs(vec3<i32>(arg_3.a, -1i, 5030i)), arg_1), select(vec3<i32>(_wgslsmith_div_i32(2763i, -34293i), ~arg_3.a, 48504i), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(-32411i, 0i, 26808i), select(u_input.d, global1[_wgslsmith_index_u32(0u, 15u)], false)), vec3<bool>(arg_1, arg_1, arg_1)), select(vec3<bool>(arg_1, true, arg_1), !select(vec3<bool>(false, true, true), vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, arg_1, false)), true)) >> (_wgslsmith_div_vec3_u32(u_input.c.xyw << (vec3<u32>(arg_0.b.x, arg_0.a | u_input.c.x, select(2032u, 1u, arg_1)) % vec3<u32>(32u)), ~arg_2.b) % vec3<u32>(32u));
    var var_2 = 1u;
    return _wgslsmith_mod_vec2_u32(arg_0.b.yx, vec2<u32>(firstTrailingBit(arg_2.a), arg_2.b.x >> (arg_0.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-847f, -2298f, 287f, -696f), vec4<f32>(696f, 364f, -813f, -471f)))))));
    let var_1 = vec4<u32>(firstLeadingBit(1u ^ func_2(u_input.c.x >> (u_input.b.x % 32u), ~u_input.b.x, vec4<bool>(true, true, true, true), func_1(vec3<i32>(u_input.d, global4.x, -20800i), Struct_3(43939u, vec3<u32>(0u, 21685u, 3838u))))), ~_wgslsmith_add_u32(reverseBits(~u_input.b.x), max(0u, 1u)), _wgslsmith_div_u32(37661u, ~u_input.b.x & countOneBits(u_input.b.x)) >> (u_input.c.x % 32u), u_input.b.x);
    let var_2 = var_0;
    global0 = array<Struct_1, 26>();
    global3 = _wgslsmith_f_op_f32(-var_2.a.x);
    let var_3 = func_4(func_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-53454i, -24893i, -1i), min(vec3<i32>(-2147483647i, u_input.d, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec3<i32>(-25375i, 27269i, u_input.d))), func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(32072u, 0u, u_input.b.x), vec3<u32>(var_1.x, u_input.c.x, u_input.a.x), vec3<u32>(0u, 19889u, u_input.b.x)), func_2(36443u, 30626u, vec4<bool>(true, false, true, true), Struct_3(36330u, vec3<u32>(u_input.c.x, u_input.a.x, 1u)))), -_wgslsmith_div_vec3_i32(vec3<i32>(global4.x, 2147483647i, global1[_wgslsmith_index_u32(0u, 15u)]), vec3<i32>(0i, 694i, global4.x))), Struct_3(~(~var_1.x), u_input.a.zzx)), any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(all(vec2<bool>(false, true)), false, true))), Struct_3(firstLeadingBit(u_input.b.x) >> (_wgslsmith_clamp_u32(~var_1.x, 20998u, _wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, 102412u)) % 32u), u_input.a.xyx), Struct_1(-(global1[_wgslsmith_index_u32(~u_input.b.x, 15u)] << (~var_1.x % 32u)), _wgslsmith_f_op_vec3_f32(step(var_0.a.yyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(450f, var_2.a.x, 797f), vec3<f32>(var_2.a.x, -1542f, 919f)) - vec3<f32>(var_2.a.x, var_2.a.x, 1544f)))), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - -295f)), vec4<f32>(611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(166f, -1147f, false))), 1f, 391f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.wzx)))))), ~(abs(reverseBits(1u)) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a.zxw, u_input.a.wwy)) % 32u)));
}

