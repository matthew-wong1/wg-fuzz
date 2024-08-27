struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(-1i, 20784i), vec2<i32>(38694i, 33139i), 120f, vec3<f32>(522f, -1000f, -1279f), 1752f), Struct_1(vec2<i32>(0i, -22775i), vec2<i32>(0i, 15965i), -1794f, vec3<f32>(324f, 537f, 2223f), -230f), Struct_1(vec2<i32>(-75586i, 2147483647i), vec2<i32>(-24694i, 73148i), 514f, vec3<f32>(-810f, -300f, -1021f), 2183f), Struct_1(vec2<i32>(16749i, 53372i), vec2<i32>(i32(-2147483648), 2147483647i), -412f, vec3<f32>(-524f, -197f, -1307f), -382f), Struct_1(vec2<i32>(7754i, -31887i), vec2<i32>(44014i, 49671i), -1563f, vec3<f32>(-722f, 2264f, -662f), -259f), Struct_1(vec2<i32>(-32394i, -39238i), vec2<i32>(14708i, -5149i), -335f, vec3<f32>(-1450f, 1111f, 696f), -1309f), Struct_1(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -1i), -389f, vec3<f32>(-1290f, 556f, -912f), -401f), Struct_1(vec2<i32>(1i, 32799i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 2182f, vec3<f32>(473f, -2584f, 1451f), -754f), Struct_1(vec2<i32>(-44181i, 11699i), vec2<i32>(1i, 2147483647i), -1218f, vec3<f32>(-327f, 902f, 1000f), 1180f), Struct_1(vec2<i32>(1i, -7398i), vec2<i32>(-35671i, 0i), 2220f, vec3<f32>(1114f, -569f, 202f), -1227f), Struct_1(vec2<i32>(-40774i, -30309i), vec2<i32>(0i, 36973i), -1750f, vec3<f32>(417f, -150f, 1890f), 1425f), Struct_1(vec2<i32>(-14676i, 33380i), vec2<i32>(-1i, -1i), -1379f, vec3<f32>(245f, -383f, -1153f), 165f), Struct_1(vec2<i32>(33706i, 4697i), vec2<i32>(-32274i, 1i), 212f, vec3<f32>(-662f, 1000f, 777f), -652f), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<i32>(-29409i, i32(-2147483648)), -200f, vec3<f32>(675f, 221f, 583f), 730f), Struct_1(vec2<i32>(-6415i, 19i), vec2<i32>(-1i, -51795i), -2901f, vec3<f32>(-599f, -1748f, -889f), -906f), Struct_1(vec2<i32>(12894i, 2147483647i), vec2<i32>(-40608i, 0i), 844f, vec3<f32>(849f, -592f, -663f), -817f), Struct_1(vec2<i32>(35425i, i32(-2147483648)), vec2<i32>(19830i, 1i), 964f, vec3<f32>(1285f, -198f, -328f), -495f), Struct_1(vec2<i32>(-14574i, 1i), vec2<i32>(i32(-2147483648), 0i), 345f, vec3<f32>(-1173f, -1012f, -561f), -783f), Struct_1(vec2<i32>(-1i, 22098i), vec2<i32>(-2027i, -27011i), -1000f, vec3<f32>(316f, -1336f, 1494f), 238f), Struct_1(vec2<i32>(-13153i, -1i), vec2<i32>(6598i, 0i), -1515f, vec3<f32>(-1000f, 1653f, -2170f), 1919f), Struct_1(vec2<i32>(1i, -1i), vec2<i32>(26998i, 7368i), -1000f, vec3<f32>(705f, -537f, -1093f), -1334f), Struct_1(vec2<i32>(-1i, 23855i), vec2<i32>(1i, 5128i), -506f, vec3<f32>(365f, 1565f, -584f), 880f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), -24166i), -592f, vec3<f32>(1000f, -839f, -1000f), 1661f), Struct_1(vec2<i32>(66418i, -20999i), vec2<i32>(1i, 2147483647i), 1187f, vec3<f32>(2054f, 634f, -1608f), -413f), Struct_1(vec2<i32>(16319i, -2459i), vec2<i32>(0i, -13515i), 209f, vec3<f32>(-172f, -967f, 136f), -1349f));

var<private> global1: Struct_2 = Struct_2(false, 13008u, false, vec3<u32>(4294967295u, 4294967295u, 1u));

var<private> global2: Struct_4 = Struct_4(Struct_1(vec2<i32>(1i, 0i), vec2<i32>(1i, 0i), 1142f, vec3<f32>(-1595f, 1644f, -927f), -757f), -1016f, Struct_2(true, 1u, false, vec3<u32>(5723u, 4294967295u, 11577u)));

var<private> global3: array<i32, 9> = array<i32, 9>(27581i, i32(-2147483648), -1i, i32(-2147483648), 31980i, 23107i, i32(-2147483648), 2147483647i, -3626i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_3(!((_wgslsmith_f_op_f32(-global2.a.d.x) < _wgslsmith_f_op_f32(select(1000f, 928f, false))) | arg_0.c));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(27265u | (_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(global2.c.d, vec3<u32>(global2.c.d.x, 84145u, 45882u)), global2.c.b >> (20852u % 32u)) ^ (firstTrailingBit(21703u) ^ max(arg_0.b, global2.c.b))), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.a.e)), _wgslsmith_f_op_f32(floor(-1885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-680f, 828f))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-645f + _wgslsmith_div_f32(global2.b, -530f))))), global2.c);
    var var_2 = Struct_3(arg_0.a);
    let var_3 = Struct_3(global1.c);
    var_2 = var_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_3 {
    var var_0 = vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~global1.d.x) ^ ~(~0u), 9u)] ^ -1i, 19773i, -(i32(-1i) * -1987i), -2147483647i);
    let var_1 = Struct_3(select(global2.c.a, _wgslsmith_div_u32(4294967295u, ~91793u) == global2.c.b, global2.c.a));
    var var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(global1.b, 25u)];
    var_3 = Struct_1(vec2<i32>(2147483647i, arg_0.x), ~var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c) + 2200f), global2.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1473f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2.c)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-490f, 914f) - _wgslsmith_f_op_f32(676f + 108f)))));
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = -1i;
    var_0 = 1i;
    let var_1 = abs(~(_wgslsmith_dot_vec3_u32(arg_0.c.d, global2.c.d) << ((~global2.c.d.x >> (abs(global1.d.x) % 32u)) % 32u)));
    let var_2 = Struct_4(global2.a, -1035f, global2.c);
    var var_3 = ~(~_wgslsmith_div_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(1u, arg_0.c.b, var_1, 0u))), vec4<u32>(var_1, reverseBits(84595u), global2.c.d.x, firstTrailingBit(global1.b))));
    return vec3<u32>(u_input.a.x, global2.c.d.x, abs(firstLeadingBit(arg_0.c.d.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_f32(251f, _wgslsmith_f_op_f32(floor(422f)));
    var var_1 = ~vec3<u32>(abs(20751u), 1u << (global2.c.b % 32u), 34975u);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global2.c.d & min(global2.c.d, global2.c.d), func_4(Struct_4(arg_1, -1442f, global2.c), func_2(vec3<i32>(global3[_wgslsmith_index_u32(global2.c.b, 9u)], global2.a.a.x, arg_2.a.x), global1.d.x, arg_1.a.x, true), select(vec3<bool>(true, true, false), vec3<bool>(true, global1.c, global1.c), vec3<bool>(true, global1.a, global1.a))) << ((~global2.c.d >> (abs(global1.d) % vec3<u32>(32u))) % vec3<u32>(32u))), global2.c.d & vec3<u32>(~0u, 0u, global1.d.x));
    var var_3 = _wgslsmith_dot_vec3_u32(global1.d, ~(~vec3<u32>(_wgslsmith_mult_u32(var_1.x, 0u), firstTrailingBit(global1.b), _wgslsmith_mult_u32(u_input.a.x, 12670u))));
    let var_4 = ~abs(abs(vec4<u32>(max(var_1.x, u_input.a.x), firstLeadingBit(var_1.x), 77331u, 40163u)));
    return arg_2.a.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    global1 = global2.c;
    global3 = array<i32, 9>();
    var var_0 = -select(~arg_0.yzz, ~arg_0.zzz, vec3<bool>(global2.c.a, global2.c.a, global2.a.d.x > _wgslsmith_div_f32(arg_1.x, global2.b)));
    global3 = array<i32, 9>();
    let var_1 = func_2(_wgslsmith_div_vec3_i32(max(~arg_0.zxy, min(arg_0.zxz, vec3<i32>(arg_0.x, u_input.b, 27422i) >> (global1.d % vec3<u32>(32u)))), vec3<i32>(-15238i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global1.b, 9u)], arg_0.x, u_input.b), vec3<i32>(var_0.x, arg_0.x, -1i))), -1i)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 37746u), vec2<u32>(3131u, global2.c.d.x)) | (global1.d.x & _wgslsmith_mult_u32(u_input.a.x, 30347u))), global2.a.a.x, any(select(vec3<bool>(true, arg_2, arg_2), !vec3<bool>(global2.c.c, false, true), false)) || !all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    return Struct_2(false, 1u, func_2(_wgslsmith_add_vec3_i32(-(vec3<i32>(0i, 1i, 1657i) << (global2.c.d % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(56991u, 9u)], -847i, var_0.x), arg_0.zzy)), 0u, 2147483647i, any(!vec3<bool>(false, false, global1.c))).a, global2.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b), vec3<i32>(-2147483647i, global2.a.b.x, u_input.b)), global2.a.b.x) ^ vec2<i32>(~_wgslsmith_clamp_i32(u_input.b, global2.a.b.x, ~2147483647i), -u_input.b);
    global2 = Struct_4(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), func_5(vec4<i32>(_wgslsmith_mult_i32(2147483647i, global2.a.a.x), 2147483647i, func_1(global2.a, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_1(global2.a.a, vec2<i32>(0i, -1i), global2.b, global2.a.d, 101f)), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.a.x, 2147483647i), vec2<i32>(1i, -1i))) >> (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global1.d.x, 4294967295u, 0u, 41344u)), vec4<u32>(u_input.a.x, global2.c.d.x, u_input.a.x, global1.b) | vec4<u32>(u_input.a.x, global2.c.b, 28376u, 0u)) % vec4<u32>(32u)), global2.a.d.zx, global1.c));
    global2 = Struct_4(Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a.b, global2.a.b) | global2.a.a, var_0, -_wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], -26491i), global2.a.a)), vec2<i32>(~(-33625i), -9143i), -1000f, _wgslsmith_f_op_vec3_f32(trunc(global2.a.d)), global2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b * 1479f), 1220f, global1.b < u_input.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(493f)))), -1031f), global2.c);
    let var_1 = Struct_4(Struct_1(vec2<i32>(~(~423i), _wgslsmith_div_i32(var_0.x, 78228i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(u_input.b), u_input.b ^ -1055i), firstLeadingBit(abs(global2.a.a)), firstTrailingBit(var_0)), 1953f, _wgslsmith_div_vec3_f32(global2.a.d, global2.a.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.c))))), Struct_2(global1.a, u_input.a.x, false, _wgslsmith_mult_vec3_u32(~(global2.c.d | global1.d), global1.d)));
    let var_2 = !(!(!select(select(vec3<bool>(global2.c.c, true, false), vec3<bool>(true, global1.a, false), vec3<bool>(global1.a, global1.a, true)), select(vec3<bool>(global2.c.c, false, true), vec3<bool>(var_1.c.c, false, global1.a), vec3<bool>(true, global2.c.a, var_1.c.a)), vec3<bool>(false, global2.c.a, true))));
    global1 = var_1.c;
    global1 = global2.c;
    global3 = array<i32, 9>();
    global3 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(global2.c.b, 10774u, 1u, global1.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global2.c.d.x, var_1.c.b, u_input.a.x, var_1.c.d.x), vec4<u32>(58230u, var_1.c.d.x, global2.c.b, 36005u)) % vec4<u32>(32u))));
}

