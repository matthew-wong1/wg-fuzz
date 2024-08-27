struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_3(vec4<f32>(-242f, 570f, -670f, 322f), Struct_2(vec3<u32>(0u, 20569u, 1u), Struct_1(vec4<u32>(3237u, 0u, 6303u, 95194u), 1075f), vec3<bool>(false, false, true), 755u, 1i), true, Struct_1(vec4<u32>(4294967295u, 7482u, 6695u, 1u), 1238f)), Struct_3(vec4<f32>(1180f, 483f, -783f, 230f), Struct_2(vec3<u32>(40696u, 4294967295u, 1u), Struct_1(vec4<u32>(4294967295u, 38338u, 0u, 17089u), -908f), vec3<bool>(true, true, true), 14855u, 3292i), false, Struct_1(vec4<u32>(21422u, 63790u, 4294967295u, 0u), -858f)), Struct_3(vec4<f32>(1484f, -1291f, -1000f, -345f), Struct_2(vec3<u32>(4294967295u, 15418u, 4294967295u), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -491f), vec3<bool>(false, false, true), 0u, -1i), false, Struct_1(vec4<u32>(22395u, 1u, 0u, 1u), 127f))), Struct_4(Struct_3(vec4<f32>(1000f, 722f, -1526f, 2085f), Struct_2(vec3<u32>(89607u, 18635u, 4294967295u), Struct_1(vec4<u32>(1u, 18780u, 4294967295u, 1u), -1949f), vec3<bool>(true, false, false), 17700u, 4068i), false, Struct_1(vec4<u32>(4294967295u, 35629u, 0u, 1u), 771f)), Struct_3(vec4<f32>(248f, 735f, 1364f, -230f), Struct_2(vec3<u32>(0u, 10772u, 4294967295u), Struct_1(vec4<u32>(38068u, 1u, 13420u, 35419u), -1975f), vec3<bool>(true, false, true), 0u, -5418i), true, Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u), 568f)), Struct_3(vec4<f32>(-1207f, 241f, 221f, 380f), Struct_2(vec3<u32>(9207u, 1u, 0u), Struct_1(vec4<u32>(31436u, 0u, 4294967295u, 0u), 685f), vec3<bool>(true, false, true), 10514u, 18441i), true, Struct_1(vec4<u32>(2599u, 11623u, 13370u, 0u), -1907f))), Struct_4(Struct_3(vec4<f32>(-539f, 454f, -896f, 1879f), Struct_2(vec3<u32>(66022u, 21792u, 44673u), Struct_1(vec4<u32>(18678u, 1u, 0u, 0u), 1014f), vec3<bool>(true, false, true), 1u, 1i), true, Struct_1(vec4<u32>(4294967295u, 43954u, 58422u, 0u), 1245f)), Struct_3(vec4<f32>(1000f, -222f, -1000f, 496f), Struct_2(vec3<u32>(0u, 59344u, 35757u), Struct_1(vec4<u32>(1u, 63517u, 1u, 1u), -648f), vec3<bool>(true, false, true), 4059u, i32(-2147483648)), false, Struct_1(vec4<u32>(16931u, 31605u, 20187u, 0u), -215f)), Struct_3(vec4<f32>(-1695f, 1000f, -331f, -697f), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec4<u32>(40600u, 81561u, 4294967295u, 4294967295u), 835f), vec3<bool>(false, false, false), 52813u, 2147483647i), false, Struct_1(vec4<u32>(34580u, 4294967295u, 93751u, 29444u), -156f))), Struct_4(Struct_3(vec4<f32>(115f, -1042f, -599f, -508f), Struct_2(vec3<u32>(6361u, 1u, 0u), Struct_1(vec4<u32>(18207u, 1u, 0u, 1u), 320f), vec3<bool>(false, true, true), 0u, 0i), true, Struct_1(vec4<u32>(0u, 48602u, 123507u, 2221u), -871f)), Struct_3(vec4<f32>(-196f, 1274f, -243f, 179f), Struct_2(vec3<u32>(4294967295u, 10499u, 50349u), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 39090u), 1000f), vec3<bool>(true, true, true), 75288u, 1i), false, Struct_1(vec4<u32>(4294967295u, 20167u, 0u, 1u), 842f)), Struct_3(vec4<f32>(-169f, -1491f, -1969f, 483f), Struct_2(vec3<u32>(65905u, 12873u, 4294967295u), Struct_1(vec4<u32>(63603u, 4294967295u, 24059u, 36014u), -2219f), vec3<bool>(false, true, true), 51117u, 0i), false, Struct_1(vec4<u32>(4294967295u, 42761u, 90588u, 14338u), 1360f))), Struct_4(Struct_3(vec4<f32>(-689f, 1467f, -1791f, -1888f), Struct_2(vec3<u32>(4294967295u, 5376u, 1u), Struct_1(vec4<u32>(50604u, 0u, 17365u, 0u), 1000f), vec3<bool>(true, true, false), 0u, i32(-2147483648)), true, Struct_1(vec4<u32>(64627u, 1u, 48802u, 17114u), -1883f)), Struct_3(vec4<f32>(-530f, 567f, 1102f, -277f), Struct_2(vec3<u32>(0u, 65076u, 6965u), Struct_1(vec4<u32>(4294967295u, 19807u, 0u, 40690u), -361f), vec3<bool>(true, false, false), 0u, -34847i), false, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u), -710f)), Struct_3(vec4<f32>(271f, -585f, 239f, -874f), Struct_2(vec3<u32>(30497u, 22835u, 18440u), Struct_1(vec4<u32>(4294967295u, 30312u, 4294967295u, 72165u), -1011f), vec3<bool>(true, false, true), 1u, -872i), false, Struct_1(vec4<u32>(94156u, 0u, 88249u, 0u), 995f))), Struct_4(Struct_3(vec4<f32>(-1296f, 2533f, 1762f, 905f), Struct_2(vec3<u32>(55278u, 9482u, 0u), Struct_1(vec4<u32>(101072u, 56175u, 16381u, 4294967295u), -2112f), vec3<bool>(true, false, true), 42580u, -8918i), false, Struct_1(vec4<u32>(0u, 1807u, 71453u, 4294967295u), 251f)), Struct_3(vec4<f32>(2510f, -1995f, 834f, 535f), Struct_2(vec3<u32>(22044u, 1u, 238u), Struct_1(vec4<u32>(1u, 0u, 23218u, 1u), -850f), vec3<bool>(true, false, true), 4294967295u, 0i), true, Struct_1(vec4<u32>(4294967295u, 0u, 27484u, 4294967295u), -196f)), Struct_3(vec4<f32>(-1794f, 506f, -440f, 204f), Struct_2(vec3<u32>(1u, 1u, 17963u), Struct_1(vec4<u32>(1320u, 0u, 0u, 4294967295u), 387f), vec3<bool>(true, false, true), 16797u, 42691i), false, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), 781f))), Struct_4(Struct_3(vec4<f32>(910f, -1000f, 1000f, -2573f), Struct_2(vec3<u32>(9050u, 47810u, 1u), Struct_1(vec4<u32>(0u, 1u, 23998u, 34721u), -577f), vec3<bool>(false, false, false), 1u, -21569i), true, Struct_1(vec4<u32>(30448u, 91665u, 0u, 0u), -1497f)), Struct_3(vec4<f32>(990f, 1588f, -794f, 2158f), Struct_2(vec3<u32>(20260u, 1u, 1u), Struct_1(vec4<u32>(35160u, 51110u, 47493u, 111761u), 560f), vec3<bool>(false, true, false), 21119u, 0i), true, Struct_1(vec4<u32>(0u, 35941u, 4294967295u, 576u), -200f)), Struct_3(vec4<f32>(-1000f, -1290f, 310f, 1000f), Struct_2(vec3<u32>(7379u, 60638u, 0u), Struct_1(vec4<u32>(0u, 34792u, 100252u, 81881u), -942f), vec3<bool>(true, true, true), 15886u, -43232i), true, Struct_1(vec4<u32>(1u, 0u, 4294967295u, 91348u), 265f))), Struct_4(Struct_3(vec4<f32>(1581f, -957f, -238f, 898f), Struct_2(vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec4<u32>(26791u, 4294967295u, 10333u, 54959u), -1077f), vec3<bool>(true, false, false), 13470u, -30562i), false, Struct_1(vec4<u32>(33249u, 0u, 0u, 14608u), 471f)), Struct_3(vec4<f32>(-158f, -1000f, 1133f, 1019f), Struct_2(vec3<u32>(151796u, 17442u, 1728u), Struct_1(vec4<u32>(1u, 1u, 45439u, 4294967295u), -1000f), vec3<bool>(false, false, true), 147u, 1i), true, Struct_1(vec4<u32>(27106u, 1u, 15095u, 1u), 1179f)), Struct_3(vec4<f32>(-223f, 1917f, 945f, 305f), Struct_2(vec3<u32>(1u, 0u, 1u), Struct_1(vec4<u32>(8954u, 12381u, 0u, 1u), -246f), vec3<bool>(false, false, false), 4294967295u, 36539i), true, Struct_1(vec4<u32>(4180u, 18457u, 0u, 1u), -1171f))), Struct_4(Struct_3(vec4<f32>(765f, 1024f, 731f, 1887f), Struct_2(vec3<u32>(1u, 9938u, 0u), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), -1000f), vec3<bool>(true, true, true), 6178u, -18075i), true, Struct_1(vec4<u32>(26642u, 0u, 35904u, 12690u), -1319f)), Struct_3(vec4<f32>(1574f, 587f, 881f, -796f), Struct_2(vec3<u32>(59905u, 7708u, 1814u), Struct_1(vec4<u32>(80808u, 1u, 60049u, 4294967295u), 2178f), vec3<bool>(true, true, true), 0u, -29547i), true, Struct_1(vec4<u32>(24523u, 51345u, 15650u, 54845u), 2029f)), Struct_3(vec4<f32>(1464f, -1646f, -598f, 977f), Struct_2(vec3<u32>(4294967295u, 67755u, 4294967295u), Struct_1(vec4<u32>(32559u, 40735u, 1u, 55891u), 484f), vec3<bool>(false, true, false), 0u, 1i), false, Struct_1(vec4<u32>(1u, 51353u, 0u, 4294967295u), -708f))), Struct_4(Struct_3(vec4<f32>(-117f, 626f, 1054f, 843f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec4<u32>(4294967295u, 75021u, 0u, 72134u), 337f), vec3<bool>(true, false, true), 1u, 51455i), false, Struct_1(vec4<u32>(3341u, 0u, 9598u, 4294967295u), 207f)), Struct_3(vec4<f32>(751f, 1000f, -388f, -779f), Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<u32>(14365u, 22370u, 4294967295u, 0u), 1401f), vec3<bool>(false, false, false), 1u, -33113i), true, Struct_1(vec4<u32>(0u, 1u, 0u, 4986u), -285f)), Struct_3(vec4<f32>(-546f, 370f, -2176f, -499f), Struct_2(vec3<u32>(24827u, 1u, 10648u), Struct_1(vec4<u32>(47998u, 46048u, 20245u, 4294967295u), -809f), vec3<bool>(true, false, true), 0u, -12120i), true, Struct_1(vec4<u32>(1u, 27884u, 28024u, 40144u), -1625f))), Struct_4(Struct_3(vec4<f32>(-1000f, 384f, -475f, -1000f), Struct_2(vec3<u32>(0u, 1u, 16799u), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 20731u), 1000f), vec3<bool>(true, false, true), 67852u, -30860i), true, Struct_1(vec4<u32>(1u, 0u, 46477u, 1u), -711f)), Struct_3(vec4<f32>(-996f, -2036f, 270f, 1000f), Struct_2(vec3<u32>(78747u, 22389u, 23568u), Struct_1(vec4<u32>(81120u, 104507u, 0u, 1u), 690f), vec3<bool>(false, false, false), 0u, 2147483647i), false, Struct_1(vec4<u32>(79667u, 1u, 4294967295u, 1u), -1348f)), Struct_3(vec4<f32>(-408f, 1157f, 284f, -348f), Struct_2(vec3<u32>(0u, 37724u, 0u), Struct_1(vec4<u32>(0u, 4294967295u, 28913u, 4294967295u), 127f), vec3<bool>(false, false, false), 304u, -15574i), true, Struct_1(vec4<u32>(5499u, 4294967295u, 21053u, 4294967295u), 287f))), Struct_4(Struct_3(vec4<f32>(594f, -884f, 1349f, 283f), Struct_2(vec3<u32>(41839u, 1u, 2587u), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), 307f), vec3<bool>(false, false, false), 35569u, -28411i), false, Struct_1(vec4<u32>(24013u, 0u, 24057u, 1u), -974f)), Struct_3(vec4<f32>(769f, 1165f, -200f, 149f), Struct_2(vec3<u32>(17136u, 4294967295u, 11025u), Struct_1(vec4<u32>(34090u, 1u, 1u, 1u), -305f), vec3<bool>(false, false, false), 38311u, -49655i), true, Struct_1(vec4<u32>(11918u, 10801u, 4294967295u, 22843u), -881f)), Struct_3(vec4<f32>(469f, 1000f, -357f, 334f), Struct_2(vec3<u32>(1u, 3824u, 37342u), Struct_1(vec4<u32>(17435u, 4294967295u, 37393u, 1u), 2131f), vec3<bool>(true, true, true), 24200u, 1i), false, Struct_1(vec4<u32>(26761u, 4294967295u, 12544u, 4294967295u), 1187f))), Struct_4(Struct_3(vec4<f32>(1261f, -1635f, 686f, 727f), Struct_2(vec3<u32>(46780u, 1365u, 6048u), Struct_1(vec4<u32>(0u, 4294967295u, 6016u, 1u), 2678f), vec3<bool>(false, true, true), 1u, 2147483647i), true, Struct_1(vec4<u32>(4294967295u, 4294967295u, 32492u, 0u), 964f)), Struct_3(vec4<f32>(1432f, -408f, 861f, 1382f), Struct_2(vec3<u32>(0u, 10754u, 330u), Struct_1(vec4<u32>(4480u, 0u, 6192u, 4294967295u), -167f), vec3<bool>(false, false, true), 38625u, -31814i), true, Struct_1(vec4<u32>(1u, 9668u, 60406u, 54453u), -308f)), Struct_3(vec4<f32>(-360f, -177f, 246f, -680f), Struct_2(vec3<u32>(1u, 14184u, 0u), Struct_1(vec4<u32>(0u, 1u, 33677u, 32054u), 1199f), vec3<bool>(false, false, true), 1u, 1499i), true, Struct_1(vec4<u32>(24345u, 1u, 1u, 46952u), 1071f))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = select(vec2<bool>(false, any(select(select(vec3<bool>(arg_0.b.c.x, arg_0.b.c.x, false), vec3<bool>(arg_0.b.c.x, false, true), arg_0.b.c), vec3<bool>(true, true, true), !vec3<bool>(arg_0.c, arg_0.b.c.x, false)))), select(arg_0.b.c.xy, !vec2<bool>(all(vec4<bool>(arg_0.b.c.x, true, arg_0.c, true)), select(false, true, arg_0.c)), select(!arg_0.b.c.xy, !arg_0.b.c.zy, true)), select(true, arg_0.c, arg_0.b.c.x));
    var var_1 = arg_0.b.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a)))));
    let var_3 = arg_0.d;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(arg_0.b.b.b, 199f), arg_0.a.x, 211f, var_3.b))), Struct_2(~(~firstTrailingBit(vec3<u32>(var_1.a.x, var_3.a.x, u_input.c))), var_3, arg_0.b.c, ~arg_0.d.a.x, _wgslsmith_add_i32(u_input.b, 0i)), arg_0.c & !(var_3.a.x <= 70749u), Struct_1(~arg_0.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(select(var_3.b, 405f, var_0.x))) - var_3.b)));
    return var_4.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    global0 = array<Struct_4, 13>();
    return select(select(!vec4<bool>(!arg_1.b.c.x, true, true, arg_0.c), !select(select(vec4<bool>(arg_0.b.c.x, false, false, true), vec4<bool>(true, arg_1.c, false, false), false), vec4<bool>(false, arg_0.b.c.x, false, arg_0.b.c.x), !vec4<bool>(arg_1.c, arg_1.c, true, arg_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-379f, arg_1.d.b, false))) > _wgslsmith_f_op_f32(-arg_1.a.x)), select(select(vec4<bool>(true, any(vec4<bool>(true, arg_0.c, true, arg_1.c)), true, arg_0.c), !vec4<bool>(arg_1.c, arg_0.c, arg_1.b.c.x, false), true), !select(!vec4<bool>(false, arg_1.b.c.x, arg_1.c, arg_0.b.c.x), select(vec4<bool>(arg_0.b.c.x, true, arg_1.c, true), vec4<bool>(false, arg_0.b.c.x, true, arg_1.b.c.x), arg_1.b.c.x), false & arg_1.b.c.x), !vec4<bool>(true, arg_1.c, arg_1.c == arg_0.c, arg_0.b.c.x)), !(!arg_0.b.c.x));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    let var_0 = 6043i;
    var var_1 = any(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec4<f32>(-150f, -434f, 1822f, -296f), Struct_2(vec3<u32>(u_input.a.x, u_input.c, u_input.c), Struct_1(vec4<u32>(u_input.c, 26642u, 31991u, u_input.a.x), -1056f), vec3<bool>(false, false, false), 4294967295u, 2147483647i), true, Struct_1(u_input.a, 871f)))), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 11226u), u_input.a.zxw), Struct_1(vec4<u32>(14748u, 4294967295u, 0u, u_input.c), -238f), vec3<bool>(true, true, false), firstTrailingBit(u_input.c), 23386i), true, Struct_1(u_input.a ^ u_input.a, _wgslsmith_f_op_f32(-605f * 614f))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_div_f32(271f, -720f), _wgslsmith_f_op_f32(498f + -112f), -1125f), Struct_2(u_input.a.zyw, Struct_1(u_input.a, -219f), vec3<bool>(false, false, true), _wgslsmith_div_u32(u_input.a.x, 63604u), var_0), true, Struct_1(u_input.a, -118f))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1000f, 509f)), -255f) * vec2<f32>(_wgslsmith_f_op_f32(min(698f, 786f)), -279f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(-362f - -644f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -321f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1926f, 1393f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1435f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(544f, 275f))))));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), 160f, -312f, -803f), Struct_2(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15021u, 1u, 31240u), u_input.a.yzx), _wgslsmith_div_u32(u_input.a.x, 4294967295u)), ~37628u, ~14562u), Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.c, u_input.a.x), min(u_input.c, 86687u), u_input.a.x, u_input.c), var_2.x), vec3<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !(u_input.b > 1i)), u_input.c, -4547i >> (~_wgslsmith_sub_u32(u_input.a.x, 4294967295u) % 32u)), !all(select(func_4(Struct_3(vec4<f32>(var_2.x, -348f, var_2.x, var_2.x), Struct_2(u_input.a.xxz, Struct_1(u_input.a, var_2.x), vec3<bool>(true, false, false), 2421u, 18548i), false, Struct_1(vec4<u32>(u_input.a.x, 1u, 759u, u_input.a.x), var_2.x)), Struct_3(vec4<f32>(var_2.x, var_2.x, var_2.x, 1101f), Struct_2(u_input.a.wxz, Struct_1(vec4<u32>(u_input.c, 1u, u_input.c, 0u), 294f), vec3<bool>(true, true, true), 39406u, -8655i), false, Struct_1(vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x), 1000f))), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, true, false))), Struct_1(u_input.a << (~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 3891u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(997f, 1000f)), var_2.x) * _wgslsmith_f_op_f32(trunc(-278f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    global0 = array<Struct_4, 13>();
    var var_0 = func_2();
    let var_1 = func_2().b;
    var_0 = Struct_3(var_0.a, Struct_2(var_1.b.a.xxx, Struct_1(abs(var_0.d.a), var_1.b.b), vec3<bool>(true, true, true), _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.c, 33233u)), select(vec2<u32>(var_1.d, var_1.d), vec2<u32>(u_input.c, 30010u), true)), abs(abs(0i))), true, func_2().d);
    let var_2 = u_input.a.zyx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(749f + var_0.b.b.b) * 551f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-287f)))), _wgslsmith_f_op_f32(565f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(1822f, -665f, -545f), vec4<bool>(false, true, false, true)))))));
    var var_1 = select(select(vec2<bool>(true, true), select(func_4(Struct_3(vec4<f32>(var_0.x, var_0.x, 1241f, -1000f), Struct_2(u_input.a.xzz, Struct_1(u_input.a, var_0.x), vec3<bool>(true, false, false), u_input.a.x, u_input.d), false, Struct_1(vec4<u32>(4294967295u, 8299u, u_input.c, u_input.a.x), -366f)), func_2()).zx, func_2().b.c.zx, true), select(func_2().b.c.zy, vec2<bool>(true, true), all(vec2<bool>(false, false)))), !vec2<bool>((u_input.a.x > u_input.a.x) | any(vec4<bool>(true, true, false, false)), true), func_2().b.c.x);
    var var_2 = ~countOneBits(vec4<u32>(~u_input.c, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzy, u_input.a.wxx), abs(u_input.a.x)), _wgslsmith_mult_u32(15003u, u_input.a.x), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x));
}

