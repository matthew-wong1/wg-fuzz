struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10431u;

var<private> global1: array<f32, 27>;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<f32>(404f, -247f, 190f), vec3<i32>(-3449i, 60056i, -31983i), Struct_1(vec3<f32>(-1830f, -1061f, 753f)), 33604u), Struct_2(vec3<f32>(-142f, 1489f, 1107f), vec3<i32>(2147483647i, 2147483647i, 47481i), Struct_1(vec3<f32>(1000f, -599f, -177f)), 25232u), Struct_2(vec3<f32>(784f, 1435f, -487f), vec3<i32>(36561i, 2147483647i, 2147483647i), Struct_1(vec3<f32>(-537f, -855f, -802f)), 73071u), Struct_2(vec3<f32>(-207f, 1498f, 167f), vec3<i32>(0i, 0i, 22782i), Struct_1(vec3<f32>(-143f, -593f, -1000f)), 46849u), Struct_2(vec3<f32>(-1363f, -627f, -812f), vec3<i32>(2147483647i, -50087i, -1i), Struct_1(vec3<f32>(519f, 545f, -833f)), 4294967295u), Struct_2(vec3<f32>(1410f, 916f, 1560f), vec3<i32>(11879i, 2147483647i, 2147483647i), Struct_1(vec3<f32>(868f, -230f, 465f)), 85493u), Struct_2(vec3<f32>(-1000f, 1279f, 249f), vec3<i32>(15512i, i32(-2147483648), 1i), Struct_1(vec3<f32>(-1678f, 1985f, 942f)), 4294967295u), Struct_2(vec3<f32>(-551f, 368f, -2023f), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), Struct_1(vec3<f32>(-1891f, -1445f, -228f)), 0u), Struct_2(vec3<f32>(-450f, -1310f, 697f), vec3<i32>(310i, 0i, -4165i), Struct_1(vec3<f32>(553f, 313f, -315f)), 4122u), Struct_2(vec3<f32>(1108f, -532f, -1000f), vec3<i32>(-67342i, -15979i, 1i), Struct_1(vec3<f32>(-245f, 661f, -592f)), 1u), Struct_2(vec3<f32>(-1461f, 477f, -336f), vec3<i32>(-6116i, -36915i, 2147483647i), Struct_1(vec3<f32>(184f, 1029f, 1627f)), 1u), Struct_2(vec3<f32>(-710f, 1879f, -784f), vec3<i32>(1i, i32(-2147483648), -39540i), Struct_1(vec3<f32>(-1988f, -3448f, -1060f)), 52394u), Struct_2(vec3<f32>(1089f, -220f, 1685f), vec3<i32>(-62620i, -3432i, 2147483647i), Struct_1(vec3<f32>(293f, -176f, 341f)), 4294967295u), Struct_2(vec3<f32>(-1000f, 2236f, 253f), vec3<i32>(32395i, 12600i, 1i), Struct_1(vec3<f32>(-256f, 544f, -718f)), 0u), Struct_2(vec3<f32>(-403f, -549f, -284f), vec3<i32>(0i, 36117i, 1i), Struct_1(vec3<f32>(-199f, 1524f, 119f)), 25951u), Struct_2(vec3<f32>(640f, 303f, -428f), vec3<i32>(i32(-2147483648), -43341i, 26909i), Struct_1(vec3<f32>(854f, 1074f, -977f)), 4294967295u), Struct_2(vec3<f32>(235f, 1801f, -1000f), vec3<i32>(-1i, 23388i, 1i), Struct_1(vec3<f32>(914f, -841f, 123f)), 0u), Struct_2(vec3<f32>(1031f, -1000f, -1550f), vec3<i32>(0i, 28261i, 0i), Struct_1(vec3<f32>(-595f, 828f, -1000f)), 0u), Struct_2(vec3<f32>(106f, 614f, 147f), vec3<i32>(2147483647i, -45634i, -49017i), Struct_1(vec3<f32>(-1620f, 1467f, -131f)), 4900u), Struct_2(vec3<f32>(-1000f, -1286f, 766f), vec3<i32>(19180i, 2147483647i, -1i), Struct_1(vec3<f32>(-882f, 614f, 870f)), 1u), Struct_2(vec3<f32>(389f, -954f, 1341f), vec3<i32>(-56567i, 48387i, 1i), Struct_1(vec3<f32>(-363f, 531f, -1282f)), 4294967295u), Struct_2(vec3<f32>(907f, 1633f, 1000f), vec3<i32>(-1i, 1721i, -51565i), Struct_1(vec3<f32>(-323f, 965f, 179f)), 1u), Struct_2(vec3<f32>(1038f, -825f, -1000f), vec3<i32>(32291i, -23610i, -17282i), Struct_1(vec3<f32>(-664f, 324f, 1000f)), 4294967295u), Struct_2(vec3<f32>(557f, 179f, 684f), vec3<i32>(1i, -1i, 34868i), Struct_1(vec3<f32>(-1770f, -229f, -1000f)), 36988u), Struct_2(vec3<f32>(669f, -388f, 477f), vec3<i32>(1i, 2147483647i, 82197i), Struct_1(vec3<f32>(-1961f, 703f, -1718f)), 1u), Struct_2(vec3<f32>(109f, -1540f, -1023f), vec3<i32>(-27636i, 20188i, -11221i), Struct_1(vec3<f32>(-437f, 2386f, 194f)), 1u), Struct_2(vec3<f32>(-1313f, -2072f, 1149f), vec3<i32>(-4373i, 31997i, i32(-2147483648)), Struct_1(vec3<f32>(493f, 1361f, 1800f)), 42006u), Struct_2(vec3<f32>(543f, 214f, 1000f), vec3<i32>(i32(-2147483648), 0i, 0i), Struct_1(vec3<f32>(272f, 374f, -120f)), 0u), Struct_2(vec3<f32>(-606f, -1000f, 211f), vec3<i32>(2147483647i, 2147483647i, 536i), Struct_1(vec3<f32>(-102f, 255f, -1353f)), 0u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<bool> {
    global2 = array<Struct_2, 29>();
    let var_0 = arg_0.c;
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false) || true, true, false, any(vec3<bool>(true, true, true))), false);
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global0 = ~u_input.a;
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], -543f, global1[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], -658f, 1722f), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 136f, -729f) + vec3<f32>(557f, global1[_wgslsmith_index_u32(4294967295u, 27u)], -116f)))), vec3<bool>(true, false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))))), -abs(-_wgslsmith_div_vec3_i32(vec3<i32>(-51864i, arg_0.x, 17003i), vec3<i32>(-1i, 50631i, 40993i))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(98199u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], 326f))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(808f, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<f32>(global1[_wgslsmith_index_u32(32016u, 27u)], -1883f, 373f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -1562f, 1176f), vec3<f32>(-533f, -2133f, global1[_wgslsmith_index_u32(4294967295u, 27u)]))))), 15820u);
    var var_1 = var_0.c;
    let var_2 = var_0.c.a.xz;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(967f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-615f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(25685u, 27u)] - var_2.x), all(vec2<bool>(true, true)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3 - var_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + _wgslsmith_div_f32(-1976f, var_0.a.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f))), _wgslsmith_f_op_f32(f32(-1f) * -372f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(896f, -236f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, global1[_wgslsmith_index_u32(arg_0.d.x, 27u)])))))) - arg_0.c.a.a.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.c.c.d, 27u)] * -1200f)))) * _wgslsmith_f_op_f32(max(-631f, global1[_wgslsmith_index_u32(1u, 27u)]))), arg_1, abs(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.c.d, u_input.a, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(37756u, u_input.a, 15192u, 54890u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.d, arg_1.c.d, arg_1.c.d, 1u), vec4<u32>(0u, 46605u, 4294967295u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 2823u, 12062u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u))))));
    let var_1 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false))));
    var var_2 = var_1.yz;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.c.b.x ^ arg_0.c.c.b.x, 0i, arg_0.c.c.b.x), max(min(abs(-vec3<i32>(arg_0.c.c.b.x, var_0.c.c.b.x, arg_0.c.c.b.x)), -vec3<i32>(arg_1.c.b.x, -30505i, 40331i)), -min(_wgslsmith_mod_vec3_i32(arg_0.c.c.b, var_0.c.c.b), vec3<i32>(1153i, arg_1.c.b.x, arg_1.c.b.x))));
    var var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a.a.x + -296f))), _wgslsmith_f_op_f32(-var_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(func_3(-select(vec2<i32>(-1i, -30042i), var_0.c.c.b.yz, vec2<bool>(var_2.x, false)))), global1[_wgslsmith_index_u32(arg_1.c.d, 27u)])));
    return vec4<bool>(false, true, arg_1.c.b.x >= (-2147483647i & _wgslsmith_div_i32(-arg_0.c.c.b.x, 41491i)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 27>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) + -143f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 9103u, u_input.a, u_input.a), vec4<u32>(52657u, 91355u, u_input.a, 24143u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 122u))), 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(25504u, 27u)] + -830f))))));
    let var_1 = vec3<u32>(~u_input.a, u_input.a, 1u);
    let var_2 = -1275f;
    global0 = _wgslsmith_mod_u32(~(~u_input.a), _wgslsmith_add_u32(0u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1, var_1), ~u_input.a)));
    global0 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19693u, 0u, 4294967295u, 94077u), vec4<u32>(u_input.a, var_1.x, u_input.a, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 66388u, 22507u, 6303u), vec4<u32>(var_1.x, 0u, u_input.a, 5474u))), ~firstTrailingBit(vec4<u32>(var_1.x, 70436u, u_input.a, 1u))) & _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, var_1.x, u_input.a, u_input.a) | vec4<u32>(u_input.a, 16289u, 0u, u_input.a)), abs(reverseBits(vec4<u32>(77110u, u_input.a, 4294967295u, u_input.a)))));
    global2 = array<Struct_2, 29>();
    var var_3 = select(!(!vec4<bool>(true, 466f >= global1[_wgslsmith_index_u32(var_1.x, 27u)], select(false, true, false), any(vec3<bool>(true, true, true)))), !(!select(vec4<bool>(true, false, true, false), func_1(Struct_2(vec3<f32>(930f, global1[_wgslsmith_index_u32(u_input.a, 27u)], -741f), vec3<i32>(1i, -30459i, -29962i), var_0, u_input.a), vec3<i32>(-2147483647i, -1i, 66895i)), any(vec4<bool>(true, false, true, false)))), select(!(!func_2(Struct_4(var_0.a.yy, var_2, Struct_3(Struct_1(vec3<f32>(var_2, var_2, global1[_wgslsmith_index_u32(16597u, 27u)])), var_0, global2[_wgslsmith_index_u32(0u, 29u)], var_0), vec4<u32>(1u, var_1.x, var_1.x, var_1.x)), Struct_3(Struct_1(vec3<f32>(-524f, -1293f, -791f)), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], -1699f, global1[_wgslsmith_index_u32(u_input.a, 27u)])), global2[_wgslsmith_index_u32(1u, 29u)], Struct_1(var_0.a)))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), !(1u < var_1.x), select(true, false, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, -7099i, vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 71097i, -1i, 0i)), vec4<i32>(0i, 3434i, -42995i, 2147483647i)), _wgslsmith_mod_i32(abs(37682i), 1i), -(i32(-1i) * -40607i), -11054i) & _wgslsmith_add_vec4_i32(-vec4<i32>(0i, 1i, -9606i, 1i), _wgslsmith_add_vec4_i32(select(vec4<i32>(7697i, -2147483647i, 64095i, 25618i), vec4<i32>(-1i, 16938i, -1i, 25898i), vec4<bool>(var_3.x, var_3.x, var_3.x, false)), _wgslsmith_div_vec4_i32(vec4<i32>(5080i, -1397i, 1i, -15532i), vec4<i32>(2147483647i, 1i, -1972i, -37267i)))), firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(~0u, var_1.x), u_input.a)));
}

