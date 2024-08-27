struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(2147483647i, vec4<f32>(972f, 319f, 529f, 126f), vec4<i32>(-41123i, -17387i, 2714i, 0i), true, vec2<i32>(-1i, 1i)), Struct_1(-37758i, vec4<f32>(-1183f, 407f, -2119f, -448f), vec4<i32>(0i, 2147483647i, i32(-2147483648), -83388i), true, vec2<i32>(-59102i, -17206i)), Struct_1(i32(-2147483648), vec4<f32>(965f, 465f, -2283f, -105f), vec4<i32>(1i, -39827i, 0i, -43945i), true, vec2<i32>(0i, -1i)), Struct_1(1i, vec4<f32>(1015f, 742f, 939f, 626f), vec4<i32>(-32709i, 24710i, -1516i, 6999i), true, vec2<i32>(-13480i, i32(-2147483648))), Struct_1(-67963i, vec4<f32>(2371f, 429f, 769f, 945f), vec4<i32>(-1i, 30496i, 2147483647i, 42204i), true, vec2<i32>(-1i, -18107i)), Struct_1(0i, vec4<f32>(-794f, -192f, 115f, -1342f), vec4<i32>(-240i, 17895i, 2147483647i, i32(-2147483648)), false, vec2<i32>(-41066i, -22419i)), Struct_1(67986i, vec4<f32>(-1610f, -737f, 224f, -1826f), vec4<i32>(31497i, -11455i, i32(-2147483648), -33323i), false, vec2<i32>(4716i, 2047i)), Struct_1(2147483647i, vec4<f32>(-1201f, -2439f, -897f, 2598f), vec4<i32>(-5294i, -39357i, -41810i, -1i), false, vec2<i32>(-1413i, 2147483647i)), Struct_1(1i, vec4<f32>(-963f, 460f, 1080f, -467f), vec4<i32>(9134i, 24890i, 1i, 1i), false, vec2<i32>(0i, 7617i)), Struct_1(43946i, vec4<f32>(-1000f, -1071f, -1000f, -1659f), vec4<i32>(42147i, -20929i, 2147483647i, -10232i), true, vec2<i32>(36669i, -58667i)), Struct_1(-2605i, vec4<f32>(-758f, 1407f, -1609f, -694f), vec4<i32>(1i, 5333i, -44820i, 44196i), true, vec2<i32>(2147483647i, 2147483647i)), Struct_1(-17773i, vec4<f32>(1257f, 1024f, 233f, -1712f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i), true, vec2<i32>(1i, -20425i)), Struct_1(-1i, vec4<f32>(152f, -1489f, -2324f, -1153f), vec4<i32>(-19543i, -20527i, -62044i, 2147483647i), false, vec2<i32>(1i, 45445i)), Struct_1(2147483647i, vec4<f32>(-154f, -775f, -857f, 509f), vec4<i32>(i32(-2147483648), -2117i, -1i, 0i), false, vec2<i32>(21440i, 2147483647i)), Struct_1(i32(-2147483648), vec4<f32>(438f, -1570f, 3494f, -2011f), vec4<i32>(-47900i, i32(-2147483648), 17402i, 1i), true, vec2<i32>(0i, -25654i)), Struct_1(0i, vec4<f32>(-650f, -395f, 1000f, -787f), vec4<i32>(i32(-2147483648), 33316i, i32(-2147483648), 6651i), false, vec2<i32>(34318i, 0i)), Struct_1(55994i, vec4<f32>(1370f, -989f, 1078f, 1257f), vec4<i32>(i32(-2147483648), i32(-2147483648), 3384i, 47335i), false, vec2<i32>(-37395i, -1i)), Struct_1(-54370i, vec4<f32>(1405f, -1309f, -154f, -1044f), vec4<i32>(0i, -1i, 0i, i32(-2147483648)), false, vec2<i32>(-16144i, 2147483647i)), Struct_1(37614i, vec4<f32>(-323f, 478f, -1563f, 107f), vec4<i32>(2147483647i, 37857i, -1i, 20830i), false, vec2<i32>(-1i, 54969i)), Struct_1(30658i, vec4<f32>(761f, 830f, 902f, 382f), vec4<i32>(-99i, 0i, i32(-2147483648), 8499i), true, vec2<i32>(0i, -13904i)), Struct_1(-1i, vec4<f32>(-374f, -1318f, -204f, 1206f), vec4<i32>(28034i, 1882i, 2147483647i, i32(-2147483648)), false, vec2<i32>(65740i, 2147483647i)), Struct_1(53421i, vec4<f32>(-1479f, -172f, 1148f, -581f), vec4<i32>(-10888i, 1i, 79870i, 19867i), true, vec2<i32>(2147483647i, 23811i)), Struct_1(21252i, vec4<f32>(1800f, 458f, 276f, -746f), vec4<i32>(i32(-2147483648), 0i, 10227i, 9515i), false, vec2<i32>(68297i, -5370i)), Struct_1(0i, vec4<f32>(-691f, 550f, -596f, 119f), vec4<i32>(2147483647i, -41312i, 1i, -1i), false, vec2<i32>(15443i, 0i)), Struct_1(0i, vec4<f32>(662f, -819f, 521f, -1000f), vec4<i32>(-26945i, 0i, -11623i, 50259i), true, vec2<i32>(43432i, 2147483647i)), Struct_1(4389i, vec4<f32>(1075f, -829f, 463f, -1760f), vec4<i32>(1i, 1i, -33724i, -10101i), true, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(0i, vec4<f32>(-1462f, -424f, -1074f, 809f), vec4<i32>(21490i, 0i, 1i, 0i), true, vec2<i32>(0i, 2147483647i)), Struct_1(i32(-2147483648), vec4<f32>(720f, -395f, 834f, -1172f), vec4<i32>(19741i, -14148i, -4715i, i32(-2147483648)), false, vec2<i32>(4333i, 12840i)), Struct_1(2147483647i, vec4<f32>(622f, -1076f, 211f, -1151f), vec4<i32>(2147483647i, 0i, 25944i, -35748i), true, vec2<i32>(1i, 0i)), Struct_1(63042i, vec4<f32>(-355f, 317f, 1000f, 1000f), vec4<i32>(53836i, i32(-2147483648), 1i, i32(-2147483648)), true, vec2<i32>(31783i, i32(-2147483648))));

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(0i, vec4<f32>(-301f, 1157f, 818f, -628f), vec4<i32>(1i, i32(-2147483648), -9564i, 0i), false, vec2<i32>(43885i, 72624i))), Struct_2(Struct_1(-25792i, vec4<f32>(-1299f, 636f, -897f, 1446f), vec4<i32>(13205i, 34213i, -1i, 6696i), false, vec2<i32>(-20223i, 1i))), Struct_2(Struct_1(1i, vec4<f32>(-1375f, 1348f, -226f, 437f), vec4<i32>(2147483647i, 1i, -11182i, -7998i), false, vec2<i32>(0i, 0i))), Struct_2(Struct_1(-27887i, vec4<f32>(-1866f, -616f, -1587f, 1549f), vec4<i32>(-50223i, i32(-2147483648), -16374i, -6915i), false, vec2<i32>(0i, 18510i))), Struct_2(Struct_1(6844i, vec4<f32>(-209f, -1177f, -1212f, -648f), vec4<i32>(-1130i, 47129i, -22992i, 2672i), false, vec2<i32>(1i, 63763i))), Struct_2(Struct_1(-70902i, vec4<f32>(-1613f, 1013f, 661f, -1530f), vec4<i32>(-1i, -1808i, 4163i, -14664i), true, vec2<i32>(i32(-2147483648), 67736i))), Struct_2(Struct_1(i32(-2147483648), vec4<f32>(-274f, 405f, -523f, 1131f), vec4<i32>(23507i, 1i, 0i, 0i), true, vec2<i32>(i32(-2147483648), 4362i))), Struct_2(Struct_1(-30522i, vec4<f32>(1216f, -696f, 530f, -961f), vec4<i32>(1i, 1i, 1i, -1i), false, vec2<i32>(i32(-2147483648), 45320i))), Struct_2(Struct_1(0i, vec4<f32>(-1946f, -937f, -1116f, 186f), vec4<i32>(36786i, -14918i, -50869i, -1i), false, vec2<i32>(-14686i, 1i))), Struct_2(Struct_1(1i, vec4<f32>(-755f, 196f, -1000f, 1044f), vec4<i32>(5660i, 2147483647i, -50206i, 34099i), false, vec2<i32>(14444i, i32(-2147483648)))), Struct_2(Struct_1(1i, vec4<f32>(-624f, 729f, 755f, -1009f), vec4<i32>(-20443i, i32(-2147483648), 63899i, 20i), true, vec2<i32>(8844i, -1485i))));

var<private> global2: bool;

var<private> global3: bool;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(27466i, vec4<f32>(-684f, 892f, -882f, 1478f), vec4<i32>(2147483647i, -1i, 2013i, 4709i), true, vec2<i32>(21379i, -1i)), Struct_1(-64581i, vec4<f32>(1155f, -1370f, -265f, 2675f), vec4<i32>(-1i, 20232i, 2147483647i, i32(-2147483648)), true, vec2<i32>(0i, 0i)), Struct_1(40191i, vec4<f32>(-544f, 414f, -2674f, 227f), vec4<i32>(20301i, -8439i, 1i, 20601i), true, vec2<i32>(-974i, 2841i)), Struct_1(i32(-2147483648), vec4<f32>(-173f, -200f, -1211f, -608f), vec4<i32>(-18698i, -43633i, i32(-2147483648), -1231i), false, vec2<i32>(43438i, 39861i)), Struct_1(-1108i, vec4<f32>(1313f, 183f, -529f, 1231f), vec4<i32>(2147483647i, 0i, -15982i, i32(-2147483648)), false, vec2<i32>(986i, -1i)), Struct_1(1i, vec4<f32>(-1004f, 1684f, -363f, 1094f), vec4<i32>(3078i, 4035i, 0i, i32(-2147483648)), false, vec2<i32>(0i, -5000i)), Struct_1(2147483647i, vec4<f32>(484f, 183f, 1241f, 1000f), vec4<i32>(-18211i, 3805i, 1i, 32519i), true, vec2<i32>(-16773i, 2147483647i)), Struct_1(-17329i, vec4<f32>(1673f, 1249f, -282f, -460f), vec4<i32>(2147483647i, -1i, 2147483647i, 0i), false, vec2<i32>(0i, i32(-2147483648))), Struct_1(5032i, vec4<f32>(201f, -729f, 890f, -949f), vec4<i32>(-1i, 4425i, -22944i, 0i), true, vec2<i32>(20086i, -1i)), Struct_1(34428i, vec4<f32>(-440f, -945f, 1532f, -964f), vec4<i32>(1i, i32(-2147483648), 1i, 2147483647i), false, vec2<i32>(62816i, -4627i)), Struct_1(-122126i, vec4<f32>(225f, -652f, 716f, -1084f), vec4<i32>(-49417i, i32(-2147483648), 1i, 6469i), false, vec2<i32>(-1i, -25774i)), Struct_1(-25690i, vec4<f32>(502f, -630f, -1507f, -2426f), vec4<i32>(i32(-2147483648), 3605i, -28068i, -6989i), false, vec2<i32>(1i, 27548i)), Struct_1(-18902i, vec4<f32>(-1912f, 407f, -936f, -334f), vec4<i32>(36669i, -25534i, 4747i, -1i), true, vec2<i32>(-23085i, -28475i)), Struct_1(0i, vec4<f32>(208f, -176f, -1283f, -759f), vec4<i32>(1i, -31457i, -10299i, -13903i), true, vec2<i32>(19236i, 2147483647i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.b)) * _wgslsmith_f_op_vec4_f32(arg_0.a.b * _wgslsmith_f_op_vec4_f32(arg_3.a.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, 221f, -591f, 722f)) - arg_0.a.b))));
    var var_1 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(select(~81605u, 1u, arg_2), 30u)], arg_3.b, _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(arg_3.c, arg_3.c), abs(_wgslsmith_div_vec3_u32(vec3<u32>(63183u, arg_3.b, 71353u), arg_3.c))), arg_3.d));
    var var_2 = !select(!(!select(vec4<bool>(true, var_1.a.a.d, arg_0.a.d, false), vec4<bool>(var_1.a.a.d, arg_0.a.d, false, false), arg_0.a.d)), vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, var_1.a.a.d, false), var_1.a.a.d)), _wgslsmith_sub_u32(17741u, var_1.a.c.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(25588u, 14196u), var_1.a.c.xy), any(vec3<bool>(true, arg_0.a.d, arg_3.a.d)), any(!vec2<bool>(arg_0.a.d, false))), _wgslsmith_f_op_f32(trunc(132f)) <= arg_0.a.b.x);
    let var_3 = true;
    var var_4 = vec4<i32>(31741i, 2147483647i, 2147483647i, -1i);
    return -arg_3.a.e.x;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = -1879f;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1647f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.b.x))))));
    var var_2 = arg_1.a.c;
    let var_3 = Struct_4(Struct_3(Struct_1(func_3(Struct_2(Struct_1(0i, vec4<f32>(-644f, 385f, var_1, -799f), arg_1.a.c, arg_0, vec2<i32>(u_input.b.x, -43505i))), firstTrailingBit(var_2.yyx), false, Struct_3(global4[_wgslsmith_index_u32(u_input.d, 14u)], 17645u, vec3<u32>(u_input.c.x, 4294967295u, u_input.d), u_input.b.zy)), vec4<f32>(var_1, arg_1.a.b.x, var_1, var_1), arg_1.a.c, !all(vec3<bool>(arg_0, arg_1.a.d, arg_1.a.d)), arg_1.a.c.yw & vec2<i32>(40799i, -39072i)), select(41249u, reverseBits(u_input.d) >> (max(1u, u_input.c.x) % 32u), false), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 76702u), u_input.c), u_input.c.x, u_input.c.x), vec2<i32>(-29199i, select(-86079i >> (0u % 32u), ~1i, all(vec3<bool>(true, false, arg_0))))));
    return var_3.a;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(!func_2(arg_1.a.d || (884f <= arg_1.a.b.x), global1[_wgslsmith_index_u32(~(u_input.c.x | u_input.d), 11u)]).a.d, Struct_2(func_2(arg_1.a.b.x != -386f, global1[_wgslsmith_index_u32(arg_1.b, 11u)]).a)).a;
    let var_1 = true;
    let var_2 = func_2(true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)]);
    var var_3 = arg_1.a.d;
    global3 = var_2.a.d;
    return func_2((select(arg_2.x ^ arg_1.d.x, var_2.a.e.x, false) | 1i) >= ~(~firstTrailingBit(-19706i)), Struct_2(func_2(func_2(var_0.d, Struct_2(Struct_1(0i, vec4<f32>(-1852f, -1117f, -1000f, -2018f), arg_1.a.c, true, var_0.c.xw))).a.d & false, global1[_wgslsmith_index_u32(abs(arg_1.c.x) >> (max(0u, 1u) % 32u), 11u)]).a)).a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    var var_0 = vec2<bool>(!select(true, true, false), true);
    var var_1 = vec3<bool>(arg_0.a.a.d, true, arg_1.d);
    let var_2 = arg_3.a;
    let var_3 = -u_input.b;
    global4 = array<Struct_1, 14>();
    return Struct_4(arg_0.a);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    let var_0 = -vec4<i32>(~countOneBits(-1i), _wgslsmith_dot_vec2_i32(u_input.b.yx | arg_1.a.a.c.xy, countOneBits(u_input.b.xx)), -2947i, max(func_4(false, Struct_3(global4[_wgslsmith_index_u32(arg_1.a.c.x, 14u)], 1u, arg_1.a.c, vec2<i32>(u_input.b.x, 0i)), vec4<i32>(18782i, u_input.a, 2147483647i, arg_1.a.a.e.x)).c.x, -2147483647i));
    var var_1 = global4[_wgslsmith_index_u32(arg_1.a.c.x, 14u)];
    global2 = func_2(all(vec3<bool>(any(vec2<bool>(arg_1.a.a.d, true)) & !arg_0.a.a.d, false, true)), Struct_2(func_5(arg_0, Struct_1(-1i, _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(arg_1.a.a.b.x, 1077f, 1174f, -756f)), -vec4<i32>(-29777i, -14736i, 1i, 42667i), all(vec4<bool>(false, true, false, false)), func_2(arg_0.a.a.d, global1[_wgslsmith_index_u32(1u, 11u)]).d), any(!vec3<bool>(false, var_1.d, false)), Struct_3(Struct_1(-1i, vec4<f32>(arg_1.a.a.b.x, 174f, -109f, var_1.b.x), arg_1.a.a.c, arg_0.a.a.d, vec2<i32>(var_0.x, u_input.a)), arg_1.a.b, _wgslsmith_div_vec3_u32(arg_1.a.c, arg_0.a.c), _wgslsmith_sub_vec2_i32(vec2<i32>(28430i, -6145i), u_input.b.xz))).a.a)).a.d;
    let var_2 = !(!(!(!vec4<bool>(arg_0.a.a.d, arg_1.a.a.d, arg_0.a.a.d, false))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-629f, func_4(true, Struct_3(Struct_1(arg_0.a.a.c.x, vec4<f32>(arg_1.a.a.b.x, arg_1.a.a.b.x, -468f, -1921f), arg_1.a.a.c, arg_1.a.a.d, arg_0.a.a.c.wy), 4294967295u, vec3<u32>(4294967295u, 71279u, 1u), u_input.b.zx), vec4<i32>(0i, -28888i, arg_0.a.a.c.x, arg_1.a.d.x)).b.x, func_4(true, func_2(arg_0.a.a.d, Struct_2(Struct_1(55574i, vec4<f32>(1307f, arg_1.a.a.b.x, arg_0.a.a.b.x, var_1.b.x), var_1.c, var_1.d, vec2<i32>(-2147483647i, arg_1.a.a.c.x)))), arg_0.a.a.c | vec4<i32>(arg_0.a.d.x, arg_0.a.d.x, -45527i, 1i)).d)) + arg_1.a.a.b.x));
    return _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(ceil(arg_1.a.a.b.x))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(func_6(func_5(Struct_4(Struct_3(Struct_1(1i, vec4<f32>(-225f, -993f, arg_0, arg_0), vec4<i32>(29948i, u_input.b.x, u_input.a, u_input.b.x), false, vec2<i32>(u_input.a, u_input.b.x)), u_input.d, vec3<u32>(28729u, 34544u, 4294967295u), u_input.b.xy)), func_4(true, func_2(true, Struct_2(Struct_1(u_input.a, vec4<f32>(arg_0, arg_0, -1784f, arg_0), vec4<i32>(u_input.b.x, u_input.a, 2147483647i, -43293i), false, u_input.b.zx))), _wgslsmith_mod_vec4_i32(vec4<i32>(45610i, u_input.a, 1i, u_input.a), vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 1i))), select(true, false, all(vec4<bool>(false, false, true, false))), Struct_3(func_4(true, Struct_3(global4[_wgslsmith_index_u32(u_input.d, 14u)], 37306u, vec3<u32>(u_input.d, 1u, u_input.d), vec2<i32>(u_input.a, -2147483647i)), vec4<i32>(2147483647i, u_input.a, 1i, u_input.b.x)), 49658u >> (1u % 32u), max(vec3<u32>(u_input.d, u_input.d, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -59560i), vec2<i32>(u_input.a, u_input.b.x)))), Struct_4(func_2(true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)])))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 30u)];
    let var_2 = var_1.b.x;
    var var_3 = u_input.d;
    var var_4 = func_4(var_1.d, func_5(Struct_4(func_5(Struct_4(Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], u_input.c.x, vec3<u32>(u_input.d, 4294967295u, u_input.d), u_input.b.yz)), global0[_wgslsmith_index_u32(u_input.d, 30u)], var_1.d, Struct_3(global4[_wgslsmith_index_u32(27615u, 14u)], u_input.d, vec3<u32>(28880u, u_input.c.x, 0u), var_1.e)).a), global4[_wgslsmith_index_u32(u_input.d & ~u_input.c.x, 14u)], var_1.d || true, Struct_3(func_2(var_1.d, Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 30u)])).a, 1u, vec3<u32>(0u, 80339u, u_input.c.x) ^ vec3<u32>(u_input.d, 4294967295u, 31598u), reverseBits(var_1.c.wy))).a, _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(var_1.c, vec4<i32>(-8131i, -22800i, 27006i, -22935i)), ~_wgslsmith_mod_vec4_i32(var_1.c, vec4<i32>(1i, var_1.c.x, u_input.b.x, 1i)))).d && any(select(!select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, var_1.d), var_1.d), !vec2<bool>(var_1.d, var_1.d), false));
    return _wgslsmith_add_u32(max(1u, _wgslsmith_sub_u32(4294967295u, u_input.c.x)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(0u, 22834u) >> (max(u_input.d, u_input.c.x) % 32u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 0u), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.d), u_input.c.x), _wgslsmith_mod_u32(u_input.d, ~firstLeadingBit(u_input.c.x))));
    var var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1163f + -793f))))));
    var_1 = -457f;
    global3 = true;
    var_0 = vec2<u32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(521f, -952f) + _wgslsmith_div_f32(654f, -1048f)))), ~(~_wgslsmith_mod_u32(func_5(Struct_4(Struct_3(global4[_wgslsmith_index_u32(var_0.x, 14u)], u_input.d, vec3<u32>(1u, 82771u, var_0.x), vec2<i32>(2147483647i, -1i))), global0[_wgslsmith_index_u32(var_0.x, 30u)], false, Struct_3(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], 0u, vec3<u32>(var_0.x, u_input.d, u_input.d), u_input.b.xz)).a.b, max(var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_3(Struct_2(global0[_wgslsmith_index_u32(countOneBits(37045u), 30u)]), u_input.b, select(func_5(Struct_4(Struct_3(global0[_wgslsmith_index_u32(var_0.x, 30u)], 2476u, vec3<u32>(var_0.x, 79655u, 79048u), u_input.b.yy)), Struct_1(u_input.b.x, vec4<f32>(-1193f, -2566f, 549f, -544f), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), true, u_input.b.yz), false, Struct_3(global4[_wgslsmith_index_u32(38167u, 14u)], 1u, vec3<u32>(u_input.d, 35852u, u_input.c.x), u_input.b.xz)).a.a.d, true, true), func_5(Struct_4(Struct_3(Struct_1(-28062i, vec4<f32>(855f, 160f, -1382f, 1539f), vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 0i), true, u_input.b.xz), var_0.x, vec3<u32>(4294967295u, u_input.d, var_0.x), u_input.b.xz)), func_4(true, Struct_3(Struct_1(u_input.b.x, vec4<f32>(-2772f, 296f, -1106f, 739f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -37244i), true, u_input.b.yy), u_input.d, vec3<u32>(var_0.x, var_0.x, var_0.x), vec2<i32>(u_input.a, -2147483647i)), vec4<i32>(-4699i, -67293i, u_input.b.x, u_input.b.x)), true, func_5(Struct_4(Struct_3(Struct_1(u_input.a, vec4<f32>(-311f, -236f, 720f, -1000f), vec4<i32>(u_input.b.x, 32326i, u_input.b.x, u_input.a), true, u_input.b.zx), 19568u, vec3<u32>(1u, var_0.x, var_0.x), vec2<i32>(u_input.a, 7079i))), global0[_wgslsmith_index_u32(u_input.d, 30u)], false, Struct_3(Struct_1(1i, vec4<f32>(-1887f, 506f, -692f, -1136f), vec4<i32>(u_input.a, 1i, -94503i, -2147483647i), false, u_input.b.zz), 110726u, vec3<u32>(0u, u_input.d, 36178u), vec2<i32>(82850i, -13032i))).a).a)));
}

