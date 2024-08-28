struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec4<f32>(-658f, 1000f, -289f, -734f), 1001f), Struct_1(vec4<f32>(-440f, 527f, -135f, -1000f), 520f), Struct_1(vec4<f32>(-388f, 1000f, -178f, -1000f), -587f), -942f, vec3<f32>(-1145f, -1190f, 296f)), Struct_2(Struct_1(vec4<f32>(1000f, 961f, 790f, -908f), 2109f), Struct_1(vec4<f32>(1000f, -1000f, -477f, -825f), 587f), Struct_1(vec4<f32>(258f, 335f, -655f, -2492f), -2465f), -909f, vec3<f32>(369f, -167f, -1000f)), Struct_2(Struct_1(vec4<f32>(-618f, 330f, 2515f, -1417f), 529f), Struct_1(vec4<f32>(-883f, -1381f, -1098f, -1227f), 1425f), Struct_1(vec4<f32>(-602f, 1535f, 1000f, 993f), 969f), -831f, vec3<f32>(-1107f, -1326f, 346f)), Struct_2(Struct_1(vec4<f32>(-487f, 226f, 2570f, -799f), 1411f), Struct_1(vec4<f32>(-677f, 1983f, 962f, 212f), 1590f), Struct_1(vec4<f32>(-704f, 384f, 1000f, 1502f), -1188f), -159f, vec3<f32>(912f, 1000f, 107f)), Struct_2(Struct_1(vec4<f32>(913f, 1280f, 133f, 647f), -107f), Struct_1(vec4<f32>(-1071f, 400f, -904f, 1028f), 338f), Struct_1(vec4<f32>(-926f, 1003f, 614f, 630f), -3412f), -1000f, vec3<f32>(-1214f, 505f, 2116f)), Struct_2(Struct_1(vec4<f32>(-197f, -756f, -1000f, -826f), -1371f), Struct_1(vec4<f32>(-442f, 470f, -546f, -2493f), -1457f), Struct_1(vec4<f32>(-734f, 1714f, -869f, -1000f), 1000f), -524f, vec3<f32>(630f, 1986f, 1999f)), Struct_2(Struct_1(vec4<f32>(1000f, 1181f, -238f, 587f), -1774f), Struct_1(vec4<f32>(578f, 1081f, 1000f, -1366f), 1000f), Struct_1(vec4<f32>(159f, 283f, -1000f, -2386f), -715f), 1215f, vec3<f32>(176f, -121f, 1042f)), Struct_2(Struct_1(vec4<f32>(-1221f, 1465f, -2232f, 1163f), -813f), Struct_1(vec4<f32>(-1830f, -847f, -672f, -827f), 1741f), Struct_1(vec4<f32>(-731f, -291f, 560f, 1187f), 109f), -1922f, vec3<f32>(-394f, -204f, -2767f)), Struct_2(Struct_1(vec4<f32>(165f, 1000f, -1000f, 529f), -787f), Struct_1(vec4<f32>(330f, -1145f, -450f, 281f), -602f), Struct_1(vec4<f32>(-1000f, 688f, -1079f, 613f), -2335f), 811f, vec3<f32>(1428f, -1000f, -541f)), Struct_2(Struct_1(vec4<f32>(305f, -587f, -189f, -1000f), 970f), Struct_1(vec4<f32>(-1013f, -2326f, 771f, -2171f), 456f), Struct_1(vec4<f32>(254f, 561f, -1189f, -1892f), -1119f), -245f, vec3<f32>(-377f, -327f, 1418f)), Struct_2(Struct_1(vec4<f32>(2021f, -213f, -2219f, -105f), -250f), Struct_1(vec4<f32>(-1089f, 109f, -699f, 373f), 895f), Struct_1(vec4<f32>(-1117f, -357f, 1750f, 1403f), 1154f), -1153f, vec3<f32>(-587f, 1660f, 788f)), Struct_2(Struct_1(vec4<f32>(-346f, 1995f, -151f, 569f), 553f), Struct_1(vec4<f32>(1026f, 1778f, 1306f, -1566f), -1516f), Struct_1(vec4<f32>(1000f, 1025f, -465f, 1926f), 1000f), -1000f, vec3<f32>(112f, -1213f, -782f)), Struct_2(Struct_1(vec4<f32>(-1284f, 334f, -1000f, -1281f), -1000f), Struct_1(vec4<f32>(651f, -1561f, -383f, -478f), 621f), Struct_1(vec4<f32>(-637f, 1069f, 1699f, 1298f), -451f), -793f, vec3<f32>(120f, 751f, -798f)), Struct_2(Struct_1(vec4<f32>(-922f, -1159f, -635f, -473f), -695f), Struct_1(vec4<f32>(-1080f, -792f, 1698f, -161f), -803f), Struct_1(vec4<f32>(-1000f, 1383f, -395f, -206f), -470f), 450f, vec3<f32>(-1080f, -1238f, 404f)), Struct_2(Struct_1(vec4<f32>(1011f, -478f, 1344f, 114f), -700f), Struct_1(vec4<f32>(318f, 279f, 1518f, 323f), -1000f), Struct_1(vec4<f32>(-366f, -379f, -897f, 335f), 243f), 778f, vec3<f32>(-650f, -209f, -2116f)), Struct_2(Struct_1(vec4<f32>(-857f, 299f, -717f, 1362f), -562f), Struct_1(vec4<f32>(-151f, 389f, -923f, 1000f), -552f), Struct_1(vec4<f32>(1000f, -1720f, -828f, -476f), 1241f), -1000f, vec3<f32>(487f, -679f, 478f)), Struct_2(Struct_1(vec4<f32>(-546f, -769f, -1246f, 329f), 1231f), Struct_1(vec4<f32>(-314f, -802f, 488f, -1093f), 200f), Struct_1(vec4<f32>(-1414f, 149f, -1000f, 485f), -444f), 1253f, vec3<f32>(-761f, -1590f, -811f)), Struct_2(Struct_1(vec4<f32>(-1866f, 1179f, -637f, 791f), 692f), Struct_1(vec4<f32>(358f, 371f, -1000f, -413f), -1188f), Struct_1(vec4<f32>(-242f, -550f, -298f, 608f), -990f), -169f, vec3<f32>(-1868f, 423f, -848f)), Struct_2(Struct_1(vec4<f32>(1129f, -390f, 462f, -273f), 983f), Struct_1(vec4<f32>(-817f, 567f, -658f, -614f), 1021f), Struct_1(vec4<f32>(-948f, 1000f, 1845f, 259f), -430f), 506f, vec3<f32>(-399f, -493f, -340f)), Struct_2(Struct_1(vec4<f32>(-1000f, 1668f, 1228f, -332f), -449f), Struct_1(vec4<f32>(702f, -211f, -215f, 2244f), -310f), Struct_1(vec4<f32>(1789f, -1139f, -1007f, 1148f), 443f), -661f, vec3<f32>(-1251f, -961f, -169f)), Struct_2(Struct_1(vec4<f32>(-165f, 1000f, -627f, 442f), -2689f), Struct_1(vec4<f32>(-1076f, 533f, 1142f, 330f), 498f), Struct_1(vec4<f32>(-182f, -1000f, -341f, 1255f), -372f), 172f, vec3<f32>(1000f, 324f, -1000f)), Struct_2(Struct_1(vec4<f32>(-1709f, -1194f, 1772f, 175f), -791f), Struct_1(vec4<f32>(133f, 426f, -1425f, -638f), -162f), Struct_1(vec4<f32>(-622f, 1955f, 1764f, -103f), -574f), 505f, vec3<f32>(-244f, -732f, -440f)), Struct_2(Struct_1(vec4<f32>(-1353f, -471f, -114f, -563f), -284f), Struct_1(vec4<f32>(543f, -155f, 699f, 1021f), -913f), Struct_1(vec4<f32>(905f, 2127f, 409f, -721f), -1187f), -497f, vec3<f32>(379f, -1000f, 1000f)), Struct_2(Struct_1(vec4<f32>(-1131f, 1062f, -1094f, 949f), 1664f), Struct_1(vec4<f32>(997f, 1727f, 283f, -895f), -820f), Struct_1(vec4<f32>(-986f, 1000f, -523f, -1111f), 450f), -998f, vec3<f32>(-865f, 1242f, 226f)), Struct_2(Struct_1(vec4<f32>(-1000f, -638f, 608f, -356f), 765f), Struct_1(vec4<f32>(-569f, -609f, -1159f, -1000f), -249f), Struct_1(vec4<f32>(-978f, -1764f, -260f, -960f), 985f), 971f, vec3<f32>(1250f, -1013f, 814f)));

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: bool = true;

var<private> global3: vec4<i32> = vec4<i32>(-13101i, 1i, 2147483647i, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = ~(vec2<u32>(96665u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 22240u), 1u, 1u)) | vec2<u32>(max(~4294967295u, u_input.a), 2625u));
    global2 = true;
    var var_1 = arg_1.c.a.yw;
    global3 = -vec4<i32>(_wgslsmith_add_i32(-3275i, -1i), i32(-1i) * -2147483647i, -2147483647i, -80769i);
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f))) + 1000f)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(107f)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1090f), -720f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-318f, arg_0, arg_0, -845f) - vec4<f32>(arg_0, -739f, 875f, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(509f, -1308f, arg_0, arg_0), vec4<f32>(261f, 1000f, arg_0, 1132f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(global3.x, -1i), Struct_2(Struct_1(vec4<f32>(-674f, arg_0, arg_0, 393f), 1319f), Struct_1(vec4<f32>(arg_0, -327f, arg_0, 1889f), arg_0), Struct_1(vec4<f32>(-392f, arg_0, arg_0, -1655f), arg_0), arg_0, vec3<f32>(arg_0, arg_0, arg_0)), u_input.a != 0u, 6289i)), arg_0))));
    global0 = array<Struct_2, 25>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-2147483647i, Struct_2(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, arg_0, 450f), arg_0), Struct_1(vec4<f32>(-331f, 1000f, -1000f, 1675f), 1150f), Struct_1(vec4<f32>(-797f, 953f, var_0.a.x, var_0.a.x), var_0.b), var_0.a.x, vec3<f32>(346f, -111f, 1159f)), true, min(global3.x, 0i))), _wgslsmith_f_op_f32(step(-405f, _wgslsmith_f_op_f32(arg_0 - var_0.a.x))))), Struct_1(var_0.a, arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.b))), var_0.b), _wgslsmith_f_op_f32(select(var_0.b, arg_0, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1567f, arg_0, -792f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, -1174f, var_0.a.x)))))));
    global3 = firstLeadingBit(vec4<i32>(-2147483647i, reverseBits(global3.x), -_wgslsmith_clamp_i32(global3.x, global3.x, -39059i), 11676i) << (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(15352u, 0u, arg_1.x, arg_1.x), ~vec4<u32>(u_input.a, u_input.a, 0u, arg_1.x))) % vec4<u32>(32u)));
    global1 = array<vec2<bool>, 19>();
    return ~19288u;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-505f, -142f, 1174f, -1305f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, 1513f, 1494f, 112f)))))), 1081f);
    var var_1 = true;
    let var_2 = var_0;
    var var_3 = global3.ywz;
    var var_4 = _wgslsmith_f_op_f32(var_0.b - var_0.b);
    return global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(~u_input.a << (~u_input.a % 32u), ~34345u), reverseBits(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 46565u))))) & func_2(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a, 1u, 17076u) ^ vec3<u32>(31709u, 1u, 1u), ~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(arg_0, true, arg_0)), vec3<u32>(_wgslsmith_mod_u32(44621u, u_input.a), 10595u, 1u))), 25u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<bool> {
    global2 = arg_0.x;
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c.a + vec4<f32>(-404f, arg_2.b.a.x, arg_2.d, -1603f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, arg_2.c.b, -279f, arg_2.a.a.x) * vec4<f32>(arg_2.b.a.x, arg_2.d, arg_2.a.a.x, arg_2.b.b))), _wgslsmith_f_op_f32(-arg_2.e.x)), vec3<bool>(any(!(!vec2<bool>(arg_0.x, false))), true, true));
    global3 = vec4<i32>(global3.x, global3.x, ~19496i, -1i);
    return !vec3<bool>(false | (true && !var_0.b.x), false, var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2297f, 682f, 335f, -1326f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-280f)), _wgslsmith_f_op_f32(580f + -795f), _wgslsmith_div_f32(750f, -441f), -1225f)), -471f), vec3<bool>(select(!any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(ceil(-276f)) >= 1198f, true), _wgslsmith_mod_u32(_wgslsmith_mod_u32(68124u, u_input.a), 1u) < ~(~21837u), true));
    let var_1 = func_4(!var_0.b.yx, ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 75341u, 94316u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 54092u)))), func_1(any(vec2<bool>(true, var_0.b.x))));
    global2 = !(all(vec4<bool>(true, all(var_0.b), var_1.x, true)) && false);
    global1 = array<vec2<bool>, 19>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.a.a.wz, vec2<f32>(2173f, -1103f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-672f, var_0.a.b), var_0.a.a.wz)))))) + _wgslsmith_f_op_vec2_f32(exp2(func_1(var_1.x).a.a.wz)));
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(var_3.a.wy, _wgslsmith_f_op_vec2_f32(var_3.a.xw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))), _wgslsmith_f_op_f32(-585f * _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -864f))))), countOneBits(vec2<u32>(4294967295u, reverseBits(240u))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, global3.x), global3.zwx), select(global3.yxx << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), vec3<i32>(global3.x, global3.x, global3.x), false)) >> ((~(vec3<u32>(u_input.a, u_input.a, 4294967295u) | vec3<u32>(48288u, 0u, 60386u)) << (~max(vec3<u32>(4294967295u, 99u, 0u), vec3<u32>(1u, 13674u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

