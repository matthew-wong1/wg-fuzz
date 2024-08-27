struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, false, true, false, false, true, true, false, true, true, true, true, false, true, false, true, true, true, true, false, true, true);

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec4<u32>(54765u, 23237u, 66165u, 26254u), vec3<i32>(1i, 3324i, -21176i), Struct_2(vec4<u32>(10400u, 2951u, 0u, 4294967295u), vec4<f32>(948f, -2019f, 438f, 1151f), Struct_1(vec3<f32>(-617f, 255f, 389f), 0u, -460f))), Struct_3(vec4<u32>(63489u, 66390u, 36020u, 60651u), vec3<i32>(i32(-2147483648), 48387i, -898i), Struct_2(vec4<u32>(4294967295u, 23656u, 59627u, 39418u), vec4<f32>(1227f, 1184f, -1027f, -242f), Struct_1(vec3<f32>(1418f, -1548f, -1000f), 4294967295u, -901f))), Struct_3(vec4<u32>(65122u, 4294967295u, 0u, 36195u), vec3<i32>(-1i, 1i, 1i), Struct_2(vec4<u32>(1u, 20268u, 457u, 0u), vec4<f32>(1142f, 1524f, 485f, -859f), Struct_1(vec3<f32>(1588f, -941f, -412f), 1u, 1000f))), Struct_3(vec4<u32>(4294967295u, 39263u, 59981u, 4088u), vec3<i32>(0i, -47258i, i32(-2147483648)), Struct_2(vec4<u32>(10362u, 41308u, 26422u, 0u), vec4<f32>(-323f, -1186f, 490f, -635f), Struct_1(vec3<f32>(478f, -1731f, 371f), 12795u, -661f))), Struct_3(vec4<u32>(10173u, 1u, 0u, 0u), vec3<i32>(-33402i, 30487i, 2147483647i), Struct_2(vec4<u32>(0u, 1u, 9350u, 12403u), vec4<f32>(1118f, 139f, -1378f, -1204f), Struct_1(vec3<f32>(471f, -861f, -470f), 0u, 321f))), Struct_3(vec4<u32>(4294967295u, 3027u, 0u, 42198u), vec3<i32>(2147483647i, 0i, 0i), Struct_2(vec4<u32>(4294967295u, 13271u, 4294967295u, 1u), vec4<f32>(1169f, -615f, -1517f, -308f), Struct_1(vec3<f32>(350f, 276f, -818f), 118227u, 1499f))), Struct_3(vec4<u32>(4294967295u, 0u, 0u, 16669u), vec3<i32>(1i, -40237i, 31080i), Struct_2(vec4<u32>(34400u, 1u, 4294967295u, 78553u), vec4<f32>(402f, 1000f, 514f, 1353f), Struct_1(vec3<f32>(2632f, 332f, -1531f), 3469u, 436f))), Struct_3(vec4<u32>(59541u, 1u, 6506u, 4294967295u), vec3<i32>(7510i, -12284i, 1i), Struct_2(vec4<u32>(4294967295u, 9018u, 9348u, 16348u), vec4<f32>(-660f, -145f, 460f, -1000f), Struct_1(vec3<f32>(-1145f, -586f, 1891f), 1u, 1436f))), Struct_3(vec4<u32>(3630u, 1u, 35401u, 4294967295u), vec3<i32>(20059i, 26066i, 18569i), Struct_2(vec4<u32>(1u, 4090u, 39358u, 4294967295u), vec4<f32>(-567f, 649f, 837f, 1398f), Struct_1(vec3<f32>(-1000f, 1443f, -1001f), 10006u, 730f))), Struct_3(vec4<u32>(20546u, 16905u, 40432u, 92231u), vec3<i32>(1i, -16991i, 33747i), Struct_2(vec4<u32>(10021u, 23443u, 0u, 4294967295u), vec4<f32>(-183f, -240f, 765f, 1000f), Struct_1(vec3<f32>(814f, 1745f, 2178f), 0u, 716f))), Struct_3(vec4<u32>(46892u, 0u, 4294967295u, 7881u), vec3<i32>(-5221i, -1i, -1i), Struct_2(vec4<u32>(0u, 12869u, 25076u, 41429u), vec4<f32>(-1515f, -593f, 628f, -666f), Struct_1(vec3<f32>(1604f, -787f, 995f), 13076u, -295f))), Struct_3(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec3<i32>(-1i, -16136i, 2147483647i), Struct_2(vec4<u32>(54673u, 0u, 0u, 1u), vec4<f32>(-953f, -368f, -958f, 767f), Struct_1(vec3<f32>(275f, -1000f, -761f), 28399u, -1122f))), Struct_3(vec4<u32>(4294967295u, 295u, 1u, 6889u), vec3<i32>(2147483647i, i32(-2147483648), 55734i), Struct_2(vec4<u32>(1u, 4294967295u, 22176u, 26039u), vec4<f32>(-782f, 607f, 1723f, 1506f), Struct_1(vec3<f32>(-1320f, 402f, -416f), 1u, 752f))), Struct_3(vec4<u32>(4294967295u, 27424u, 38019u, 1u), vec3<i32>(-16857i, -16213i, i32(-2147483648)), Struct_2(vec4<u32>(71806u, 0u, 67070u, 4294967295u), vec4<f32>(160f, -1319f, -378f, -1426f), Struct_1(vec3<f32>(-293f, -357f, -1000f), 68830u, 1349f))), Struct_3(vec4<u32>(66037u, 5979u, 9565u, 0u), vec3<i32>(-1i, -39179i, 0i), Struct_2(vec4<u32>(50155u, 48037u, 31721u, 44606u), vec4<f32>(1000f, 276f, -1371f, -975f), Struct_1(vec3<f32>(1004f, 1186f, 145f), 1u, -1000f))), Struct_3(vec4<u32>(4294967295u, 103213u, 56350u, 67262u), vec3<i32>(-1i, 0i, -42952i), Struct_2(vec4<u32>(37863u, 18142u, 76236u, 13126u), vec4<f32>(985f, 343f, 1000f, 472f), Struct_1(vec3<f32>(-620f, -400f, 166f), 33650u, 1327f))), Struct_3(vec4<u32>(4294967295u, 1u, 119074u, 0u), vec3<i32>(-35038i, 45157i, 29352i), Struct_2(vec4<u32>(4294967295u, 1u, 28101u, 0u), vec4<f32>(-213f, 450f, -1971f, 1497f), Struct_1(vec3<f32>(-544f, -429f, -824f), 4294967295u, 662f))), Struct_3(vec4<u32>(98145u, 1u, 2073u, 4294967295u), vec3<i32>(-5933i, -5326i, 35906i), Struct_2(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<f32>(-166f, 885f, -873f, -1736f), Struct_1(vec3<f32>(650f, -629f, -977f), 0u, 1419f))), Struct_3(vec4<u32>(157209u, 87918u, 1u, 3582u), vec3<i32>(2147483647i, -6604i, 0i), Struct_2(vec4<u32>(1u, 0u, 78832u, 31985u), vec4<f32>(178f, -1046f, -2160f, 1877f), Struct_1(vec3<f32>(-858f, 1058f, -279f), 6440u, -1516f))), Struct_3(vec4<u32>(4294967295u, 4294967295u, 9312u, 113834u), vec3<i32>(39074i, -25944i, 0i), Struct_2(vec4<u32>(0u, 18111u, 1u, 1u), vec4<f32>(741f, -462f, -1586f, 159f), Struct_1(vec3<f32>(140f, -476f, 571f), 2711u, 1086f))), Struct_3(vec4<u32>(44420u, 0u, 1u, 3787u), vec3<i32>(40066i, -38321i, 0i), Struct_2(vec4<u32>(33208u, 4294967295u, 83480u, 82571u), vec4<f32>(-208f, 610f, 1459f, 897f), Struct_1(vec3<f32>(1749f, -307f, -681f), 26236u, 1266f))), Struct_3(vec4<u32>(1u, 4294967295u, 0u, 14190u), vec3<i32>(1i, 2147483647i, 14016i), Struct_2(vec4<u32>(1u, 29899u, 11396u, 45059u), vec4<f32>(-2024f, 119f, -240f, 405f), Struct_1(vec3<f32>(-1173f, -1000f, 199f), 4294967295u, -184f))), Struct_3(vec4<u32>(0u, 1u, 38539u, 43958u), vec3<i32>(12079i, 0i, 11040i), Struct_2(vec4<u32>(35468u, 141287u, 1u, 43626u), vec4<f32>(-1775f, -460f, -824f, 509f), Struct_1(vec3<f32>(1194f, -1014f, -225f), 0u, 1000f))), Struct_3(vec4<u32>(1u, 28837u, 7536u, 1u), vec3<i32>(-6060i, -38558i, -16404i), Struct_2(vec4<u32>(0u, 21202u, 0u, 14884u), vec4<f32>(-1356f, -1099f, -1129f, 253f), Struct_1(vec3<f32>(549f, 1526f, 358f), 37108u, -635f))), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec3<i32>(34584i, 38201i, -30464i), Struct_2(vec4<u32>(4294967295u, 1679u, 11230u, 22724u), vec4<f32>(369f, -1000f, 1062f, 1552f), Struct_1(vec3<f32>(794f, 326f, -460f), 0u, -249f))));

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(1i, -1i, 0i), vec3<i32>(7073i, -1i, 1i), vec3<i32>(32185i, -29448i, 19345i), vec3<i32>(-58036i, -22535i, -1058i), vec3<i32>(1i, 0i, 1i), vec3<i32>(-58989i, -1i, 0i), vec3<i32>(-21951i, 1i, 9542i), vec3<i32>(3784i, 2147483647i, 28121i), vec3<i32>(20299i, 17453i, 0i), vec3<i32>(0i, -44718i, -1i), vec3<i32>(-22208i, -1i, 1i), vec3<i32>(-16328i, -1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, -17155i), vec3<i32>(17049i, -44369i, 25231i), vec3<i32>(1i, -1i, -1i), vec3<i32>(24239i, 0i, 20561i), vec3<i32>(0i, 8404i, i32(-2147483648)), vec3<i32>(-1i, -22150i, 2285i), vec3<i32>(58634i, 45941i, 0i), vec3<i32>(0i, i32(-2147483648), 0i), vec3<i32>(37582i, 0i, 1023i), vec3<i32>(10960i, 2147483647i, 40448i), vec3<i32>(3756i, 8988i, -20731i), vec3<i32>(0i, 19266i, 7634i), vec3<i32>(1i, i32(-2147483648), -21060i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(1i, 23471i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = !(!all(!(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 22u)], false))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(reverseBits(17311u), ~u_input.a)), 27u)];
    let var_2 = -2147483647i;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(358f)))), -351f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1304f))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(29452u, 4294967295u), vec2<u32>(0u, u_input.a)) ^ _wgslsmith_mult_u32(~countOneBits(1u), ~(u_input.a << (1u % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)))));
    let var_4 = all(!select(vec4<bool>(var_0, any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 22u)], var_0, false)), true, var_1.x <= 2147483647i), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_3.b, 22u)], var_0, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 22u)], false, true, false)), global0[_wgslsmith_index_u32(countOneBits(~u_input.a), 22u)]));
    return arg_0;
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f + 223f)) - 1305f), _wgslsmith_f_op_f32(f32(-1f) * -647f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(885f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(241f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1851f, -761f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-436f)))));
    return 9653u;
}

fn func_1() -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f * -683f));
    return !global0[_wgslsmith_index_u32(func_2(), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(false, func_1(), !global0[_wgslsmith_index_u32(49320u, 22u)])));
    global2 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer((6449u >> (~_wgslsmith_clamp_u32(59323u, u_input.a, 49199u) % 32u)) | 1u);
}

