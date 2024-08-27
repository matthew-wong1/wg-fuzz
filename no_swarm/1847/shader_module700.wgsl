struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 1u, 9871u);

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<i32>(-86020i, 0i, 11592i), vec2<bool>(true, true), vec2<f32>(851f, -609f), vec4<f32>(210f, -239f, 1025f, -145f), -1054f), Struct_3(vec3<i32>(0i, 65503i, 0i), vec2<bool>(false, false), vec2<f32>(929f, -515f), vec4<f32>(-1000f, 1129f, 418f, 1714f), -852f), Struct_3(vec3<i32>(-1i, 1i, -43278i), vec2<bool>(true, true), vec2<f32>(-282f, -389f), vec4<f32>(-1071f, -1147f, 1197f, -876f), -717f), Struct_3(vec3<i32>(-9316i, 0i, 2147483647i), vec2<bool>(false, true), vec2<f32>(374f, 1923f), vec4<f32>(323f, 1000f, -1342f, -594f), -650f), Struct_3(vec3<i32>(1i, -1i, 0i), vec2<bool>(true, false), vec2<f32>(-880f, -267f), vec4<f32>(623f, -239f, 468f, -426f), -2472f), Struct_3(vec3<i32>(0i, 1i, -22551i), vec2<bool>(true, false), vec2<f32>(511f, 194f), vec4<f32>(-874f, 1000f, -1192f, -2631f), 920f), Struct_3(vec3<i32>(-1i, 2147483647i, -11656i), vec2<bool>(true, true), vec2<f32>(1436f, 316f), vec4<f32>(-1835f, 701f, 782f, -101f), 674f), Struct_3(vec3<i32>(1i, 2147483647i, -2672i), vec2<bool>(true, true), vec2<f32>(2835f, 324f), vec4<f32>(1000f, -822f, 136f, -1699f), 583f), Struct_3(vec3<i32>(0i, -56860i, -10657i), vec2<bool>(false, true), vec2<f32>(-1000f, 1293f), vec4<f32>(-822f, 1000f, 658f, -1000f), 515f), Struct_3(vec3<i32>(-1i, 2147483647i, -5612i), vec2<bool>(false, true), vec2<f32>(-1000f, 293f), vec4<f32>(1000f, -1312f, 240f, 872f), 1745f), Struct_3(vec3<i32>(1i, 0i, 0i), vec2<bool>(true, true), vec2<f32>(-1435f, 407f), vec4<f32>(2036f, -272f, 1613f, 699f), 654f), Struct_3(vec3<i32>(-53446i, -46291i, -1i), vec2<bool>(false, true), vec2<f32>(-234f, 1697f), vec4<f32>(1169f, 174f, 1514f, 2012f), -413f), Struct_3(vec3<i32>(4863i, i32(-2147483648), 46018i), vec2<bool>(true, true), vec2<f32>(-685f, 739f), vec4<f32>(130f, -1292f, 1972f, 394f), 182f), Struct_3(vec3<i32>(-1i, -12612i, 1i), vec2<bool>(true, false), vec2<f32>(168f, 786f), vec4<f32>(292f, -1000f, 297f, 829f), 1467f), Struct_3(vec3<i32>(-1i, -1i, 22103i), vec2<bool>(false, true), vec2<f32>(-1786f, 699f), vec4<f32>(2282f, 1656f, -569f, 914f), -717f), Struct_3(vec3<i32>(2147483647i, 1i, 40497i), vec2<bool>(true, false), vec2<f32>(374f, 379f), vec4<f32>(2379f, 1062f, -1627f, 2193f), -508f), Struct_3(vec3<i32>(7226i, -93290i, i32(-2147483648)), vec2<bool>(false, false), vec2<f32>(-2049f, -1432f), vec4<f32>(1122f, 803f, 770f, 2326f), -685f), Struct_3(vec3<i32>(-7134i, -1i, 0i), vec2<bool>(true, true), vec2<f32>(417f, -1471f), vec4<f32>(-1448f, -462f, -360f, -1000f), -659f), Struct_3(vec3<i32>(5189i, 17757i, 1i), vec2<bool>(true, false), vec2<f32>(139f, 1000f), vec4<f32>(-951f, 931f, 781f, 2169f), 408f), Struct_3(vec3<i32>(42231i, 0i, 0i), vec2<bool>(false, false), vec2<f32>(386f, -1294f), vec4<f32>(723f, 136f, 1034f, -1403f), -1855f), Struct_3(vec3<i32>(0i, i32(-2147483648), 38740i), vec2<bool>(true, false), vec2<f32>(1000f, 158f), vec4<f32>(-982f, 408f, -1184f, -1273f), -1543f), Struct_3(vec3<i32>(i32(-2147483648), 63436i, 1i), vec2<bool>(false, false), vec2<f32>(-627f, -2145f), vec4<f32>(387f, -255f, 177f, -2403f), -229f), Struct_3(vec3<i32>(30512i, -2852i, 50702i), vec2<bool>(false, false), vec2<f32>(1000f, 873f), vec4<f32>(-1328f, -1041f, 1350f, 1092f), 1137f), Struct_3(vec3<i32>(-12641i, i32(-2147483648), 0i), vec2<bool>(false, false), vec2<f32>(-293f, 1316f), vec4<f32>(-2126f, 573f, 633f, -2675f), -494f), Struct_3(vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec2<bool>(true, true), vec2<f32>(-1787f, -260f), vec4<f32>(307f, 797f, -295f, -448f), 194f), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -1i), vec2<bool>(false, true), vec2<f32>(962f, -2811f), vec4<f32>(1000f, 1285f, 1741f, 757f), -466f), Struct_3(vec3<i32>(-15487i, 24838i, 1i), vec2<bool>(true, false), vec2<f32>(-931f, 1000f), vec4<f32>(-1514f, -1378f, 1018f, -1000f), 1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    var var_0 = Struct_1(~_wgslsmith_mult_u32(firstTrailingBit(1305u), ~countOneBits(0u)));
    global1 = array<Struct_3, 27>();
    return !vec2<bool>(!(true || all(vec4<bool>(true, false, false, true))), true);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> bool {
    global1 = array<Struct_3, 27>();
    let var_0 = Struct_1(u_input.a);
    var var_1 = !select(vec2<bool>(arg_0 != 2147483647i, false), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_3(_wgslsmith_sub_u32(var_0.a, 4294967295u))), func_3(60762u));
    global0 = vec4<u32>(~abs(u_input.c.x), ~(~global0.x), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.d, 79345u, 49455u), firstLeadingBit(vec4<u32>(1u, u_input.b, var_0.a, 22046u))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.x, 1u, u_input.c.x, 4294967295u), vec4<u32>(u_input.a, 55499u, 0u, u_input.a)))), _wgslsmith_mult_u32(max(_wgslsmith_mod_u32(~1u, u_input.d), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a, 4294967295u), ~42233u, u_input.b)), global0.x));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 16708i, max(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 16968i), vec4<i32>(-30794i, -2147483647i, arg_0, arg_0))) | -1i), vec4<i32>(0i, -1i, 1i, arg_0 ^ ~arg_0));
    return true;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global0.x) & vec4<u32>(4294967295u, 62119u, 4294967295u, 1u), abs(vec4<u32>(1u, 1u, u_input.d, u_input.d))), abs(global0.x)), global0.x);
    var var_1 = any(select(vec3<bool>(false, true, func_2(11172i, vec4<f32>(-590f, 930f, -880f, -464f), Struct_2(vec3<u32>(global0.x, 0u, 34305u)), -1379f) && true), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 1u, global0.x), vec4<u32>(global0.x, 1u, 4294967295u, 1u)) >= global0.x), true));
    let var_2 = Struct_2(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1452u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(global0.x, 31613u, 0u), global0.zyz)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0.x, global0.x, 4294967295u)), select(u_input.c, global0.yww, vec3<bool>(true, false, false))), ~firstLeadingBit(21227u)));
    global1 = array<Struct_3, 27>();
    var_0 = var_2.a.x;
    return any(vec3<bool>(true, true, true)) || true;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    global0 = ~vec4<u32>(0u, ~max(arg_1.a, u_input.a) >> (u_input.b % 32u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), 8022u, _wgslsmith_dot_vec4_u32(vec4<u32>(4909u, 60737u, 54372u, arg_1.a), vec4<u32>(global0.x, u_input.d, 23856u, 26966u))) ^ ~4294967295u, 7175u);
    var var_0 = arg_1;
    let var_1 = u_input.d;
    global0 = vec4<u32>(0u, ~var_1, min(1u, firstTrailingBit(abs(~u_input.c.x))), abs(firstTrailingBit(abs(abs(4294967295u)))));
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(~(-41399i), _wgslsmith_div_i32(arg_0.x, arg_0.x)), ~(-_wgslsmith_mult_i32(arg_0.x, 2147483647i)), _wgslsmith_clamp_i32(abs(arg_0.x) >> (arg_1.a % 32u), _wgslsmith_add_i32(~arg_0.x, -45600i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -34611i, 0i), vec3<i32>(2147483647i, arg_0.x, arg_0.x))), arg_0.x), ~(-reverseBits(vec4<i32>(-2147483647i, 19858i, 0i, arg_0.x)) >> (vec4<u32>(4294967295u, 40019u, ~var_1, ~arg_1.a) % vec4<u32>(32u))), vec4<i32>(0i, max(~(-2147483647i), _wgslsmith_sub_i32(77751i, arg_0.x)) | arg_0.x, arg_0.x, arg_0.x));
    return ~max(_wgslsmith_add_u32(global0.x, global0.x), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = select(vec4<u32>(func_4(vec2<i32>(min(2147483647i, -17855i), ~(-55204i)), Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xx)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), func_1())), global0.x, ~global0.x, ~global0.x), vec4<u32>(u_input.a, _wgslsmith_div_u32(abs(global0.x), select(global0.x, _wgslsmith_sub_u32(3083u, 0u), true)), _wgslsmith_sub_u32(~4294967295u, min(global0.x, u_input.b)) & ~global0.x, 85654u), vec4<bool>(func_3(_wgslsmith_sub_u32(u_input.a, 63930u)).x, true, (true && all(vec4<bool>(true, true, false, true))) || (select(false, false, true) | any(vec2<bool>(true, true))), true && all(vec3<bool>(true, true, true))));
    var var_1 = -25722i;
    var var_2 = Struct_3(vec3<i32>(min(-firstTrailingBit(-1812i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(12175i, -23632i, 0i), vec3<i32>(-1i, 41139i, -23373i))), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 2147483647i), select(-1i, 40492i, false)), _wgslsmith_sub_i32(~1i, 1i)), select(select(func_3(u_input.d), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(993f, -260f), vec2<f32>(-412f, 165f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1241f) - vec2<f32>(1587f, 576f)), vec2<f32>(2079f, -1000f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(abs(1876f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1187f)), _wgslsmith_f_op_f32(-1652f * -1315f))), 128f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1628f, 1058f), _wgslsmith_f_op_f32(f32(-1f) * -962f), true)), -2065f) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(300f, -496f))), _wgslsmith_f_op_f32(select(-362f, _wgslsmith_f_op_f32(f32(-1f) * -1656f), true)), 1f)), 1f);
    let var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}

