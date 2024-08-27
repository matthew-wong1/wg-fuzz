struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(2147483647i), Struct_4(-1i), Struct_4(0i), Struct_4(2147483647i), Struct_4(2147483647i), Struct_4(-6896i), Struct_4(0i), Struct_4(i32(-2147483648)), Struct_4(63860i), Struct_4(11923i), Struct_4(1i), Struct_4(-39879i), Struct_4(i32(-2147483648)), Struct_4(1i), Struct_4(i32(-2147483648)), Struct_4(0i), Struct_4(-10441i), Struct_4(46197i), Struct_4(2147483647i), Struct_4(36213i), Struct_4(48701i), Struct_4(-46589i), Struct_4(i32(-2147483648)), Struct_4(-43387i), Struct_4(-23616i), Struct_4(17904i), Struct_4(-30968i));

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(1000f, vec2<i32>(1i, -15235i), vec3<u32>(4294967295u, 0u, 57011u), Struct_1(-432f, vec4<bool>(true, false, false, true), -1i, vec3<u32>(10698u, 13431u, 4294967295u), 1u)), Struct_3(947f, vec2<i32>(-6910i, -61038i), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(-563f, vec4<bool>(true, false, false, true), -1i, vec3<u32>(4294967295u, 4294967295u, 1u), 41618u)), Struct_3(1029f, vec2<i32>(-30461i, 0i), vec3<u32>(4294967295u, 15429u, 1u), Struct_1(141f, vec4<bool>(true, false, false, true), -1i, vec3<u32>(0u, 45003u, 4294967295u), 1u)), Struct_3(-327f, vec2<i32>(2147483647i, 11301i), vec3<u32>(19287u, 4294967295u, 14239u), Struct_1(-466f, vec4<bool>(true, true, false, false), 0i, vec3<u32>(78108u, 75911u, 4294967295u), 37664u)), Struct_3(1000f, vec2<i32>(-3646i, 16585i), vec3<u32>(27490u, 0u, 1419u), Struct_1(721f, vec4<bool>(false, true, true, false), 12643i, vec3<u32>(29750u, 0u, 0u), 98112u)), Struct_3(667f, vec2<i32>(2147483647i, 1i), vec3<u32>(2219u, 25943u, 80642u), Struct_1(1134f, vec4<bool>(false, false, true, false), 0i, vec3<u32>(4294967295u, 29235u, 74607u), 98038u)), Struct_3(1287f, vec2<i32>(1301i, 1i), vec3<u32>(0u, 3337u, 66921u), Struct_1(-1000f, vec4<bool>(true, true, false, true), -1i, vec3<u32>(0u, 4294967295u, 4294967295u), 1518u)), Struct_3(-167f, vec2<i32>(344i, -18574i), vec3<u32>(14711u, 0u, 62920u), Struct_1(167f, vec4<bool>(true, true, false, true), 0i, vec3<u32>(29181u, 43613u, 0u), 48248u)), Struct_3(-458f, vec2<i32>(i32(-2147483648), -1i), vec3<u32>(16068u, 1u, 9119u), Struct_1(-1592f, vec4<bool>(true, true, true, true), 1i, vec3<u32>(1u, 4294967295u, 4294967295u), 0u)), Struct_3(-722f, vec2<i32>(0i, -44939i), vec3<u32>(0u, 1u, 21535u), Struct_1(922f, vec4<bool>(false, true, false, false), 5415i, vec3<u32>(1u, 1u, 1u), 74390u)), Struct_3(1000f, vec2<i32>(49488i, 0i), vec3<u32>(24030u, 72400u, 20366u), Struct_1(1919f, vec4<bool>(false, true, false, true), 11521i, vec3<u32>(0u, 27593u, 4294967295u), 4294967295u)), Struct_3(-325f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<u32>(1u, 40842u, 0u), Struct_1(-559f, vec4<bool>(true, true, false, false), i32(-2147483648), vec3<u32>(29233u, 11585u, 14660u), 64634u)), Struct_3(563f, vec2<i32>(417i, -2074i), vec3<u32>(1u, 29562u, 564u), Struct_1(1124f, vec4<bool>(true, true, false, false), 15220i, vec3<u32>(1u, 0u, 59233u), 57340u)), Struct_3(1009f, vec2<i32>(0i, 1i), vec3<u32>(1u, 0u, 4294967295u), Struct_1(-1614f, vec4<bool>(true, false, false, false), 1i, vec3<u32>(4294967295u, 1u, 88932u), 4294967295u)), Struct_3(2551f, vec2<i32>(-1i, -1i), vec3<u32>(97180u, 0u, 84170u), Struct_1(682f, vec4<bool>(false, true, false, false), 24960i, vec3<u32>(4294967295u, 91082u, 4294967295u), 1u)), Struct_3(294f, vec2<i32>(2475i, 11675i), vec3<u32>(71490u, 1u, 49973u), Struct_1(-1486f, vec4<bool>(true, true, true, false), 1232i, vec3<u32>(52198u, 17429u, 4633u), 49371u)), Struct_3(367f, vec2<i32>(-26668i, 3303i), vec3<u32>(4294967295u, 1u, 0u), Struct_1(329f, vec4<bool>(false, true, false, false), 1i, vec3<u32>(84096u, 4294967295u, 61014u), 4294967295u)), Struct_3(1332f, vec2<i32>(1i, -1i), vec3<u32>(40591u, 46896u, 0u), Struct_1(171f, vec4<bool>(false, true, false, false), -1i, vec3<u32>(18949u, 5026u, 0u), 1u)), Struct_3(-1237f, vec2<i32>(-12482i, 57394i), vec3<u32>(0u, 4294967295u, 13737u), Struct_1(413f, vec4<bool>(true, false, false, true), 4571i, vec3<u32>(1u, 0u, 0u), 4294967295u)), Struct_3(-605f, vec2<i32>(i32(-2147483648), 1i), vec3<u32>(1u, 15864u, 1u), Struct_1(-1000f, vec4<bool>(true, true, false, true), -3364i, vec3<u32>(3459u, 40509u, 4294967295u), 25704u)), Struct_3(757f, vec2<i32>(0i, -17792i), vec3<u32>(1u, 1u, 4294967295u), Struct_1(175f, vec4<bool>(true, true, false, false), 62631i, vec3<u32>(33185u, 4498u, 0u), 0u)), Struct_3(-1298f, vec2<i32>(i32(-2147483648), 17729i), vec3<u32>(0u, 0u, 1968u), Struct_1(671f, vec4<bool>(false, true, true, false), 0i, vec3<u32>(1u, 54060u, 1u), 17539u)), Struct_3(1308f, vec2<i32>(-1i, -10551i), vec3<u32>(21042u, 1u, 1u), Struct_1(-1572f, vec4<bool>(false, true, true, false), 2147483647i, vec3<u32>(1u, 4294967295u, 28591u), 1u)), Struct_3(-144f, vec2<i32>(49654i, i32(-2147483648)), vec3<u32>(37761u, 53409u, 76641u), Struct_1(1161f, vec4<bool>(true, true, false, false), 23671i, vec3<u32>(11031u, 39311u, 0u), 1u)), Struct_3(174f, vec2<i32>(57742i, 12341i), vec3<u32>(44532u, 19425u, 1u), Struct_1(-933f, vec4<bool>(true, false, false, true), 0i, vec3<u32>(0u, 9546u, 63757u), 6916u)), Struct_3(985f, vec2<i32>(-53483i, 15397i), vec3<u32>(7225u, 1u, 1u), Struct_1(-1414f, vec4<bool>(false, true, true, false), 12695i, vec3<u32>(0u, 65381u, 8143u), 55160u)), Struct_3(-1928f, vec2<i32>(-574i, -2799i), vec3<u32>(19098u, 1u, 56617u), Struct_1(194f, vec4<bool>(true, false, true, true), -36160i, vec3<u32>(81703u, 6649u, 7260u), 147905u)), Struct_3(346f, vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(0u, 14714u, 36350u), Struct_1(553f, vec4<bool>(false, false, false, false), 28515i, vec3<u32>(4294967295u, 31266u, 42663u), 26252u)));

var<private> global2: bool;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<f32>(278f, 509f, -175f, 286f), Struct_1(1034f, vec4<bool>(false, true, false, false), 29971i, vec3<u32>(0u, 1u, 4294967295u), 72609u), vec3<i32>(1i, -16890i, 1i), -833f), Struct_2(vec4<f32>(-413f, -1705f, -306f, -1344f), Struct_1(-139f, vec4<bool>(true, true, false, true), 35911i, vec3<u32>(1216u, 1u, 18449u), 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 451f), Struct_2(vec4<f32>(-127f, 115f, -238f, -2406f), Struct_1(818f, vec4<bool>(true, true, false, true), -11421i, vec3<u32>(4294967295u, 61360u, 0u), 1u), vec3<i32>(-1i, 0i, 1i), 185f), Struct_2(vec4<f32>(-2676f, -1818f, 1020f, -1777f), Struct_1(202f, vec4<bool>(false, false, false, false), 2147483647i, vec3<u32>(49442u, 1u, 21200u), 0u), vec3<i32>(-9539i, 0i, -1i), 382f), Struct_2(vec4<f32>(-995f, -1256f, -672f, -101f), Struct_1(-318f, vec4<bool>(false, true, false, false), -12007i, vec3<u32>(4294967295u, 92717u, 1u), 93506u), vec3<i32>(-1i, -18805i, 0i), -349f), Struct_2(vec4<f32>(920f, -443f, -1245f, 362f), Struct_1(-422f, vec4<bool>(true, true, true, true), 2147483647i, vec3<u32>(4294967295u, 0u, 55930u), 0u), vec3<i32>(2147483647i, -1i, -6415i), -790f), Struct_2(vec4<f32>(-1820f, 563f, 784f, -628f), Struct_1(123f, vec4<bool>(true, true, true, false), 2147483647i, vec3<u32>(45461u, 208u, 50632u), 0u), vec3<i32>(-46391i, -15341i, 1i), -557f), Struct_2(vec4<f32>(-1403f, -1951f, -1078f, -841f), Struct_1(163f, vec4<bool>(false, true, false, false), 2147483647i, vec3<u32>(28464u, 1u, 54778u), 95637u), vec3<i32>(i32(-2147483648), -1568i, 31663i), -759f), Struct_2(vec4<f32>(-1124f, -1130f, -747f, 957f), Struct_1(1000f, vec4<bool>(true, false, false, false), -6221i, vec3<u32>(1u, 4294967295u, 83410u), 1u), vec3<i32>(3100i, 34994i, 16834i), -926f), Struct_2(vec4<f32>(504f, 244f, -892f, 675f), Struct_1(-1000f, vec4<bool>(true, true, false, false), -3663i, vec3<u32>(0u, 0u, 1u), 4294967295u), vec3<i32>(-1i, -23458i, -17756i), -426f), Struct_2(vec4<f32>(169f, -781f, 1000f, 759f), Struct_1(304f, vec4<bool>(true, true, true, false), -1i, vec3<u32>(1u, 4294967295u, 0u), 19933u), vec3<i32>(-51360i, 16860i, 15924i), 831f), Struct_2(vec4<f32>(226f, -1755f, -1701f, 269f), Struct_1(1349f, vec4<bool>(true, false, true, false), -1i, vec3<u32>(24908u, 63587u, 16849u), 4294967295u), vec3<i32>(-4105i, 34803i, -8158i), -338f), Struct_2(vec4<f32>(-281f, -408f, -345f, -564f), Struct_1(-184f, vec4<bool>(false, true, false, true), -22486i, vec3<u32>(98113u, 0u, 74486u), 1u), vec3<i32>(2147483647i, 1i, -1i), 1000f), Struct_2(vec4<f32>(132f, -992f, -134f, 1214f), Struct_1(293f, vec4<bool>(false, true, true, true), 1i, vec3<u32>(4294967295u, 86145u, 1u), 0u), vec3<i32>(0i, -33316i, 1i), -1000f), Struct_2(vec4<f32>(927f, -575f, 628f, -1369f), Struct_1(-496f, vec4<bool>(true, false, false, true), 33363i, vec3<u32>(29750u, 1u, 19863u), 19383u), vec3<i32>(31185i, -1i, -2149i), 779f), Struct_2(vec4<f32>(-307f, -1356f, -1270f, 2292f), Struct_1(-552f, vec4<bool>(false, false, true, false), -14864i, vec3<u32>(60047u, 4691u, 1u), 0u), vec3<i32>(27288i, 18815i, i32(-2147483648)), 1069f), Struct_2(vec4<f32>(690f, -1000f, -1383f, 1306f), Struct_1(1342f, vec4<bool>(true, true, false, false), -32566i, vec3<u32>(10292u, 0u, 63092u), 7488u), vec3<i32>(9401i, i32(-2147483648), i32(-2147483648)), 1570f), Struct_2(vec4<f32>(-555f, 331f, 1287f, -594f), Struct_1(125f, vec4<bool>(false, true, true, true), 31486i, vec3<u32>(0u, 57557u, 38232u), 4294967295u), vec3<i32>(-54605i, 1i, 2147483647i), 513f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_i32(-14036i, _wgslsmith_mod_i32(-2147483647i, 17113i >> (~u_input.b.x % 32u)) << ((~u_input.a << (1u % 32u)) % 32u));
    global1 = array<Struct_3, 28>();
    global0 = array<Struct_4, 27>();
    global1 = array<Struct_3, 28>();
    var var_1 = true;
    return !vec3<bool>(true, false, any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    global1 = array<Struct_3, 28>();
    let var_0 = -vec2<i32>(abs(1i ^ arg_2.x), 1i);
    let var_1 = u_input.b.x;
    global2 = any(select(vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), true, !(arg_2.x >= -2828i)), select(vec3<bool>(true, true, true), !func_3(14624i), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return 1343f;
}

fn func_1() -> i32 {
    var var_0 = all(vec4<bool>(select(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false)), true), true, 544f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(711f - 826f))), false));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1351f * _wgslsmith_f_op_f32(f32(-1f) * -617f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b.x, 9679u, u_input.a), 581f, vec3<i32>(-27936i, -1i, 1i))), _wgslsmith_f_op_f32(-1861f - 786f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-319f, -763f, true)))), true)), func_3(firstLeadingBit(min(1908i, -1i))).x)), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), any(vec2<bool>(false, true))), _wgslsmith_dot_vec2_i32(~(~_wgslsmith_add_vec2_i32(vec2<i32>(6464i, 537i), vec2<i32>(-5555i, 37372i))), vec2<i32>(-(~20703i), 0i)), select(vec3<u32>(u_input.a, u_input.b.x, u_input.a), max(vec3<u32>(reverseBits(u_input.b.x), ~u_input.b.x, firstTrailingBit(1u)), reverseBits(vec3<u32>(u_input.b.x, 62909u, 42246u)) | countOneBits(vec3<u32>(u_input.a, u_input.a, 1u))), func_3(~(-29940i)).x || true), _wgslsmith_mult_u32(12310u, 4268u));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 51469u), u_input.b.x)), min(u_input.b.x, firstLeadingBit(var_1.d.x) ^ ~u_input.a), abs(~abs(var_1.e)), _wgslsmith_div_u32(1u, ~(~u_input.b.x))), vec4<u32>(_wgslsmith_clamp_u32(~reverseBits(4294967295u), select(~15963u, ~1u, true), var_1.e), u_input.a, var_1.e, _wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_div_u32(0u, 1u)) << (_wgslsmith_add_u32(~79579u, u_input.a ^ 0u) % 32u)));
    var var_3 = 67691u;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(sign(1000f)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, var_1.c), -vec2<i32>(var_1.c, var_1.c)) & _wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1.c, var_1.c), vec2<i32>(var_1.c, -19196i), vec2<i32>(58451i, 49642i))), var_1.d, var_1);
    return var_4.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-29130i, _wgslsmith_div_i32(i32(-1i) * -52364i, 1i), _wgslsmith_add_i32(-func_1(), 17249i), -3641i);
    let var_1 = Struct_4(_wgslsmith_add_i32(-var_0.x, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(-2147483647i, var_0.x)), abs(var_0.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1058f, -1000f, 714f, 1330f), vec4<f32>(-939f, -556f, -1873f, -388f), true))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1877f, -1594f, 2065f, -118f), vec4<f32>(-934f, 558f, 572f, 913f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-602f, 854f, -1696f, 680f)))))))), Struct_1(-1579f, !vec4<bool>(4294967295u != u_input.a, true, any(vec4<bool>(true, true, true, true)), false), i32(-1i) * -1i, ~_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(46139u, 0u, u_input.a)), vec3<u32>(0u, u_input.a, 97897u)), ~_wgslsmith_clamp_u32(u_input.b.x, select(u_input.a, 0u, false), ~22679u)), _wgslsmith_sub_vec3_i32(var_0.xwy, (vec3<i32>(var_0.x, 0i, var_0.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.a, 17380i), var_0.wxx)) ^ vec3<i32>(abs(var_1.a), 2147483647i, -449i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-187f)) + _wgslsmith_f_op_f32(trunc(-536f)))));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_2.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - var_2.a.x))), var_2.b.b.x)) - 1479f)));
    let var_4 = abs(vec2<i32>(-var_2.c.x, var_0.x));
    var_2 = Struct_2(var_2.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1189f), var_2.b.b, var_0.x, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, var_2.b.d.x) >> (vec3<u32>(u_input.a, 4294967295u, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x | u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.e, 1u, 0u, u_input.a), vec4<u32>(27490u, 15006u, u_input.a, 0u)), _wgslsmith_sub_u32(u_input.a, 3344u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, 1u), var_2.b.e) | ~62942u), (_wgslsmith_mod_vec3_i32(vec3<i32>(24900i, var_1.a, 0i), vec3<i32>(var_2.b.c, var_1.a, -12037i)) << (vec3<u32>(55351u, var_2.b.e << (var_2.b.d.x % 32u), 0u) % vec3<u32>(32u))) << ((vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 4294967295u)), countOneBits(43470u), 1u) & ~_wgslsmith_clamp_vec3_u32(var_2.b.d, var_2.b.d, var_2.b.d)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-495f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1562f * _wgslsmith_div_f32(var_2.b.a, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1534f) * _wgslsmith_f_op_f32(-var_3)))));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_4.x), vec2<i32>(1i, var_1.a)), ~vec2<i32>(~2147483647i, var_4.x & var_4.x)), vec3<u32>(_wgslsmith_clamp_u32(0u & var_2.b.e, u_input.a, 66401u) >> (firstLeadingBit(u_input.a) % 32u), ~u_input.a, ~u_input.a), var_2.b);
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_2.a), var_2.b, vec3<i32>(~(-1i), var_0.x, -var_2.c.x), _wgslsmith_div_f32(var_5.d.a, -901f));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.d.x);
}

