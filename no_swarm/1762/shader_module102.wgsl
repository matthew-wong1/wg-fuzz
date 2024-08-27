struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1741f, -564f, 435f), vec3<f32>(164f, -251f, 1381f), vec3<f32>(-969f, 556f, 148f), vec3<f32>(730f, -1089f, 919f), vec3<f32>(1050f, -122f, 698f), vec3<f32>(480f, -372f, -597f), vec3<f32>(-157f, -104f, 2205f), vec3<f32>(-414f, 427f, -198f), vec3<f32>(-337f, 1191f, 1247f), vec3<f32>(-932f, -188f, 1000f), vec3<f32>(2034f, -1000f, -1191f), vec3<f32>(-1000f, -1198f, 800f), vec3<f32>(980f, 921f, 434f), vec3<f32>(-395f, -1598f, -730f), vec3<f32>(-376f, -1444f, -277f), vec3<f32>(1687f, -1461f, -657f), vec3<f32>(-584f, 673f, 1688f), vec3<f32>(-732f, 704f, -792f), vec3<f32>(278f, 1000f, 1059f), vec3<f32>(-101f, 1334f, 1000f), vec3<f32>(-1000f, -1000f, -102f), vec3<f32>(510f, -1274f, -298f));

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(true, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), vec3<f32>(1482f, -1000f, 1280f), vec4<f32>(-405f, -1501f, 1215f, -2178f), i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), vec3<f32>(-209f, 521f, 633f), vec4<f32>(225f, -267f, -388f, 1753f), 26214i)), Struct_2(false, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, false), vec3<f32>(-515f, 1365f, -1000f), vec4<f32>(1015f, -205f, 220f, -1070f), 2147483647i), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec3<f32>(-2657f, -479f, 396f), vec4<f32>(1218f, 519f, -133f, -1070f), 10642i)), Struct_2(false, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), vec3<f32>(-486f, 691f, -354f), vec4<f32>(-1578f, 875f, -527f, 1615f), -1238i), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec3<f32>(1021f, -520f, 905f), vec4<f32>(1855f, -419f, 894f, -528f), 0i)), Struct_2(false, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), vec3<f32>(1000f, -2211f, -377f), vec4<f32>(-632f, -803f, -317f, -280f), -1i), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec3<f32>(277f, -1258f, -310f), vec4<f32>(-894f, 399f, 530f, 1422f), 0i)), Struct_2(false, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec3<f32>(-860f, -1000f, 730f), vec4<f32>(1030f, -1365f, -1155f, 166f), 2147483647i), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec3<f32>(1000f, -462f, -977f), vec4<f32>(-335f, -1000f, -1082f, 1500f), 2147483647i)), Struct_2(false, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), vec3<f32>(786f, -226f, -768f), vec4<f32>(-1660f, -1417f, 1973f, -1368f), -1i), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), vec3<f32>(1271f, -536f, -688f), vec4<f32>(-618f, 799f, 1114f, -1000f), 1i)), Struct_2(false, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), vec3<f32>(-141f, -997f, -1123f), vec4<f32>(1863f, 902f, 928f, -1541f), 1i), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, true, false), vec3<f32>(155f, -158f, 682f), vec4<f32>(-2119f, -579f, 1115f, 394f), 11118i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = vec2<i32>(arg_1.b.x, 0i);
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    return select(vec4<bool>(true, all(vec3<bool>(true, true, true)), false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), true))), !vec4<bool>(true, var_0.x > -5761i, -u_input.a > 0i, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, false, any(vec3<bool>(true, false, true))), select(vec4<bool>(true, select(true, false, true), true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, false))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_1.d.x), vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(-arg_1.d.x)), -1886f), -748f);
    var var_1 = select(vec2<i32>(1i, u_input.a), vec2<i32>(_wgslsmith_div_i32(-1i, -48619i), firstLeadingBit(-2147483647i) >> ((u_input.b.x | 4294967295u) % 32u)) & reverseBits(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, arg_1.e)), ~vec2<i32>(arg_1.e, -1i))), true);
    let var_2 = Struct_2(true, Struct_1(!select(vec4<bool>(arg_1.a.x, false, false, true), !vec4<bool>(arg_1.b.x, false, true, arg_0.x), true), vec3<bool>(arg_0.x, !select(arg_1.b.x, arg_0.x, false), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 22u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.d))))), -(~(-70124i))), arg_1);
    return select(vec2<i32>(select(var_1.x, -u_input.a, arg_1.b.x), -23993i), -(~(vec2<i32>(-19852i, 1i) >> (u_input.b % vec2<u32>(32u)))), var_2.c.b.zz) ^ vec2<i32>(8770i ^ max(firstLeadingBit(0i), var_1.x), ~var_1.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_3 {
    global1 = array<Struct_2, 7>();
    var var_0 = ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(min(u_input.b.x, u_input.b.x), abs(0u), ~u_input.b.x, ~7251u), ~(vec4<u32>(0u, 60032u, 56142u, 0u) << (vec4<u32>(30310u, 1u, u_input.b.x, 4294967295u) % vec4<u32>(32u)))), reverseBits(vec4<u32>(u_input.b.x, 47001u, 0u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (vec4<u32>(4294967295u, u_input.b.x, ~u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<bool>(arg_1.x, false, select(arg_0.b.x <= u_input.a, arg_1.x, true), false));
    var var_1 = vec3<bool>(false, true, true);
    var var_2 = any(!vec3<bool>(_wgslsmith_f_op_f32(-arg_0.a) > arg_0.a, true, true));
    global1 = array<Struct_2, 7>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 1433f)))), func_4(!select(var_1.zx, select(vec2<bool>(true, arg_1.x), var_1.zx, var_1.x), arg_1.x), Struct_1(!func_3(arg_0.c.x, arg_0, vec4<u32>(1u, u_input.b.x, 4294967295u, var_0.x), var_0.xyx), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, var_1.x, false), true), vec3<f32>(_wgslsmith_f_op_f32(-516f * -1012f), arg_0.c.x, -521f), vec4<f32>(-174f, _wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(floor(arg_0.a))), 1i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(1828f - 374f), _wgslsmith_f_op_f32(-arg_0.c.x))))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> u32 {
    let var_0 = func_2(arg_1, !(!(!vec2<bool>(true, arg_0))));
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 761u, 1u)), select(vec4<u32>(4294967295u, 74572u, 34299u, 100803u), vec4<u32>(79580u, u_input.b.x, 5181u, 1u), vec4<bool>(arg_0, arg_0, true, arg_0))), u_input.b.x)), vec2<u32>(~_wgslsmith_mod_u32(u_input.b.x << (u_input.b.x % 32u), ~u_input.b.x), 10745u), _wgslsmith_add_vec2_u32(u_input.b, ~vec2<u32>(firstTrailingBit(1u), ~1u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c));
    global1 = array<Struct_2, 7>();
    return ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, ~13699u, ~1u), select(select(vec3<u32>(37168u, u_input.b.x, 4206u), vec3<u32>(9468u, 1u, u_input.b.x), true), vec3<u32>(u_input.b.x, 54237u, u_input.b.x) ^ vec3<u32>(u_input.b.x, 47250u, 0u), !vec3<bool>(arg_0, arg_0, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1888f, _wgslsmith_div_f32(-1030f, _wgslsmith_f_op_f32(f32(-1f) * -175f)), ~(~9713u) > func_1(true, Struct_3(-774f, vec2<i32>(u_input.a, u_input.a), vec3<f32>(-601f, 206f, -341f))))) + 454f);
    var var_1 = Struct_1(!func_3(826f, func_2(Struct_3(-1120f, vec2<i32>(-2147483647i, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 22u)]), func_3(-1401f, Struct_3(1113f, vec2<i32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec4<u32>(26899u, u_input.b.x, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 48814u, u_input.b.x)).zz), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(63600u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), 9117u, 4294967295u & u_input.b.x, 0u), ~(vec3<u32>(32821u, 60277u, 51154u) | vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))), !vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), all(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), 22u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2427f, 777f, 261f)))), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~u_input.b.x | ~0u, 22u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1306f, 1091f, 1223f, 111f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, -2189f, 645f, 297f))))), -_wgslsmith_sub_i32(-4184i >> (abs(u_input.b.x) % 32u), ~u_input.a));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(sign(-2312f)), var_1.d.wy, _wgslsmith_f_op_f32(461f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f * _wgslsmith_f_op_f32(f32(-1f) * -1592f)) - var_1.c.x)));
    var_2 = Struct_4(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.c.yz * _wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, -238f) - var_2.b)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a, var_2.c))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.c, _wgslsmith_f_op_f32(min(var_1.c.x, -345f))), vec2<f32>(1f, 1f))), all(var_1.a.wzz))), 653f);
    var_2 = Struct_4(_wgslsmith_f_op_f32(590f + 1136f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.b, var_2.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.x, var_1.c.x))), var_1.b.x || select(var_1.b.x, false, var_1.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, 365f, var_1.b.x)) - _wgslsmith_f_op_f32(ceil(var_2.b.x)))), var_1.c.x));
    var var_3 = (countOneBits(u_input.a) & 0i) >> (~u_input.b.x % 32u);
    var var_4 = var_1.d.yyz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstTrailingBit(1873i), var_1.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.wyy) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1316f, var_4.x, var_2.c) * _wgslsmith_f_op_vec3_f32(var_1.d.xyw - vec3<f32>(var_4.x, var_2.b.x, var_2.b.x))))), _wgslsmith_div_i32(abs(i32(-1i) * -2147483647i), -_wgslsmith_mod_i32(i32(-1i) * -44138i, _wgslsmith_mult_i32(2147483647i, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - var_4.x)), u_input.a);
}

