struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1023f, -902f, -3072f, 2077f);

var<private> global1: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(1015f, -450f), vec2<f32>(-1440f, 168f), vec2<f32>(-1904f, -1518f), vec2<f32>(255f, -1994f), vec2<f32>(778f, -307f), vec2<f32>(1232f, -401f), vec2<f32>(-1220f, 360f), vec2<f32>(1505f, -1738f), vec2<f32>(-1000f, 2120f), vec2<f32>(-122f, 161f), vec2<f32>(-1289f, 190f), vec2<f32>(-2170f, -745f), vec2<f32>(397f, 410f), vec2<f32>(339f, -1000f), vec2<f32>(-1123f, -736f), vec2<f32>(-250f, 241f), vec2<f32>(-1000f, -644f), vec2<f32>(474f, 755f), vec2<f32>(-303f, 2362f), vec2<f32>(-1000f, 176f), vec2<f32>(2131f, 1673f));

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(vec3<i32>(-7332i, 76278i, 68792i), vec3<i32>(-1i, 0i, -25691i), Struct_1(1i, vec2<u32>(31551u, 41632u), vec2<i32>(-4504i, -1i)), vec4<f32>(1483f, -777f, 446f, 1477f), vec4<bool>(true, false, false, false)), Struct_1(3735i, vec2<u32>(60954u, 4294967295u), vec2<i32>(-37217i, -51819i)), vec4<f32>(489f, 928f, -970f, 1000f)), Struct_3(Struct_2(vec3<i32>(2147483647i, 0i, 55394i), vec3<i32>(-7326i, 69176i, -32747i), Struct_1(-54489i, vec2<u32>(1u, 0u), vec2<i32>(1i, 37796i)), vec4<f32>(-429f, 399f, -787f, 859f), vec4<bool>(false, false, false, true)), Struct_1(1i, vec2<u32>(17639u, 42161u), vec2<i32>(1i, i32(-2147483648))), vec4<f32>(138f, -779f, 1000f, -607f)), Struct_3(Struct_2(vec3<i32>(1i, -19451i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, -22893i), Struct_1(1i, vec2<u32>(46811u, 1u), vec2<i32>(-40616i, -43247i)), vec4<f32>(1087f, 109f, 377f, 529f), vec4<bool>(false, true, true, true)), Struct_1(30335i, vec2<u32>(1u, 4294967295u), vec2<i32>(0i, -64067i)), vec4<f32>(605f, -1000f, 3094f, 1000f)), Struct_3(Struct_2(vec3<i32>(-1i, -1i, 0i), vec3<i32>(0i, -19329i, 14273i), Struct_1(2147483647i, vec2<u32>(56127u, 25023u), vec2<i32>(-24586i, -41149i)), vec4<f32>(534f, 764f, 228f, -936f), vec4<bool>(true, true, false, true)), Struct_1(1i, vec2<u32>(1u, 45359u), vec2<i32>(7648i, -70697i)), vec4<f32>(-950f, 455f, -1399f, -1728f)), Struct_3(Struct_2(vec3<i32>(1i, -19606i, 2147483647i), vec3<i32>(34857i, 0i, -1i), Struct_1(-45132i, vec2<u32>(36082u, 4294967295u), vec2<i32>(8990i, -48051i)), vec4<f32>(494f, 649f, -244f, -144f), vec4<bool>(false, false, true, false)), Struct_1(-22099i, vec2<u32>(0u, 0u), vec2<i32>(24704i, i32(-2147483648))), vec4<f32>(-1178f, 292f, 112f, -860f)), Struct_3(Struct_2(vec3<i32>(-1i, 0i, -738i), vec3<i32>(0i, 9327i, -35675i), Struct_1(14375i, vec2<u32>(16888u, 1u), vec2<i32>(3102i, 2147483647i)), vec4<f32>(109f, 1400f, 1715f, 615f), vec4<bool>(true, true, true, false)), Struct_1(0i, vec2<u32>(26516u, 6222u), vec2<i32>(-19479i, 40272i)), vec4<f32>(1141f, 898f, 393f, -1472f)), Struct_3(Struct_2(vec3<i32>(1i, -1i, 16010i), vec3<i32>(34071i, 0i, 1i), Struct_1(-17190i, vec2<u32>(1u, 4294967295u), vec2<i32>(2147483647i, 13391i)), vec4<f32>(1262f, 484f, -203f, -846f), vec4<bool>(true, false, true, true)), Struct_1(1i, vec2<u32>(0u, 25957u), vec2<i32>(7445i, 1i)), vec4<f32>(435f, -826f, -529f, 980f)), Struct_3(Struct_2(vec3<i32>(0i, 1i, 41626i), vec3<i32>(-24686i, 1i, 2147483647i), Struct_1(3734i, vec2<u32>(1u, 4294967295u), vec2<i32>(-18093i, 23612i)), vec4<f32>(766f, -252f, 242f, 292f), vec4<bool>(false, true, true, true)), Struct_1(-1499i, vec2<u32>(67947u, 73409u), vec2<i32>(i32(-2147483648), 17475i)), vec4<f32>(-828f, 401f, -470f, -441f)), Struct_3(Struct_2(vec3<i32>(1i, -37856i, 0i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), Struct_1(3566i, vec2<u32>(4294967295u, 0u), vec2<i32>(2147483647i, i32(-2147483648))), vec4<f32>(654f, 1068f, 906f, 233f), vec4<bool>(false, false, true, true)), Struct_1(9579i, vec2<u32>(0u, 0u), vec2<i32>(25756i, 0i)), vec4<f32>(-225f, 985f, 841f, 1000f)));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = any(select(vec4<bool>(true, false, true, any(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))) | !(!(!any(vec3<bool>(false, true, false))));
    var var_2 = Struct_5(any(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), global0.x, select(~global3.c, select(_wgslsmith_sub_vec2_i32(vec2<i32>(5394i, u_input.b) | global3.c, firstLeadingBit(global3.c)), vec2<i32>(global3.a | global3.c.x, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1221f) > global0.x), vec2<bool>(select(all(vec3<bool>(false, false, true)), true, true), true & all(vec2<bool>(false, false)))), max(~_wgslsmith_mod_vec2_u32(~vec2<u32>(38288u, 4294967295u), reverseBits(global3.b)), firstLeadingBit(global3.b)));
    let var_3 = -global3.a;
    let var_4 = var_2.c.x;
    return 1134f;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(576f)))), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1362f) - 1776f));
    global1 = array<vec2<f32>, 21>();
    global1 = array<vec2<f32>, 21>();
    global3 = Struct_1(max(-(2147483647i << ((54476u << (u_input.c.x % 32u)) % 32u)), _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(-2147483647i, u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, global3.a, -59107i), vec4<i32>(u_input.b, global3.c.x, -53544i, global3.a)), global3.c.x), 2147483647i)), u_input.c.zz, min(global3.c, global3.c));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x * -851f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), -340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f * -662f) - var_0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)), vec4<f32>(386f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-584f - global0.x)), true)));
    return Struct_1(1i, firstTrailingBit(global3.b >> (u_input.c.zz % vec2<u32>(32u))) >> (firstTrailingBit(vec2<u32>(4294967295u & u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(68427i, 7278i), -14877i) ^ abs(u_input.b), abs(-1i << (global3.b.x % 32u)) ^ global3.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 977f, -486f, -1000f)))) - vec4<f32>(_wgslsmith_div_f32(global0.x, -450f), global0.x, 142f, -1492f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, -2026f, 230f)) - vec4<f32>(1582f, -1000f, arg_0.d.x, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(-834f - global0.x), _wgslsmith_f_op_f32(max(-788f, global0.x)), global0.x, -627f)))) * _wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.d.x, arg_0.d.x, false)), _wgslsmith_f_op_f32(abs(-668f))), 1562f, arg_0.d.x)));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(-vec3<i32>(-1i, -1i, -11914i), vec3<i32>(1i, 49481i, -7320i) & -vec3<i32>(u_input.a, -18799i, global3.a), func_2(), vec4<f32>(_wgslsmith_f_op_f32(1806f * 197f), _wgslsmith_f_op_f32(min(global0.x, -175f)), _wgslsmith_f_op_f32(-235f + 1214f), -171f), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), u_input.a <= 16999i)), max(firstTrailingBit(vec4<i32>(-28343i, u_input.a, 1i, -12651i)), ~(-vec4<i32>(u_input.a, u_input.b, -2147483647i, -2147483647i))))));
    let var_2 = var_1.yw;
    global1 = array<vec2<f32>, 21>();
    var var_3 = Struct_5(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(1762f + _wgslsmith_f_op_f32(-var_2.x))))), ~(~(-countOneBits(vec2<i32>(global3.c.x, u_input.a)))), global3.b);
    return vec2<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, global3.b.x, 35100u), select(vec4<u32>(var_3.d.x, 83351u, var_3.d.x, 4294967295u), u_input.c, vec4<bool>(true, false, true, var_3.a))), ~(~0u)) | ~(~64518u & u_input.c.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> Struct_5 {
    let var_0 = arg_2.b.a.e.yw;
    var var_1 = arg_1;
    global0 = vec4<f32>(-158f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, arg_2.a.x)))), arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(404f, 157f) - 546f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(arg_2.b.a.d.x * _wgslsmith_f_op_f32(round(arg_2.b.c.x))))));
    global1 = array<vec2<f32>, 21>();
    let var_2 = any(vec4<bool>(var_0.x, true, var_0.x, true));
    return Struct_5(false, _wgslsmith_f_op_f32(575f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(round(global0.x)))), -((vec2<i32>(31186i, global3.c.x) ^ (vec2<i32>(u_input.a, -23584i) >> (arg_1.b % vec2<u32>(32u)))) ^ -global3.c), ~(select(func_1(), var_1.b | vec2<u32>(var_1.b.x, 1u), !arg_2.b.a.e.yx) << (abs(var_1.b) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, 1i, 0i), vec3<i32>(-1i) * -vec3<i32>(0i, 22784i, 2147483647i)), Struct_1(u_input.a, max(~u_input.c.xw, func_1()) ^ u_input.c.wz, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b) ^ vec2<i32>(-36918i, 1i), vec2<i32>(global3.a, global3.c.x)), ~_wgslsmith_sub_vec2_i32(global3.c, vec2<i32>(global3.c.x, global3.a)))), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.c.x, 21u)] + _wgslsmith_f_op_vec2_f32(round(global0.wx)))), Struct_3(Struct_2(~vec3<i32>(12983i, u_input.a, -1i), vec3<i32>(u_input.a, -1i, u_input.b), Struct_1(u_input.a, u_input.c.zy, global3.c), vec4<f32>(769f, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, false)), func_2(), vec4<f32>(global0.x, 1154f, _wgslsmith_f_op_f32(-global0.x), global0.x))), 4294967295u);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-431f)), _wgslsmith_f_op_f32(-func_5(~vec3<i32>(var_0.c.x, 45329i, -1i), func_2(), Struct_4(global0.yy, Struct_3(Struct_2(vec3<i32>(-1i, -33108i, var_0.c.x), vec3<i32>(var_0.c.x, u_input.b, u_input.a), Struct_1(-43583i, global3.b, global3.c), vec4<f32>(1000f, var_0.b, var_0.b, 208f), vec4<bool>(true, var_0.a, false, true)), Struct_1(4208i, vec2<u32>(global3.b.x, 7163u), vec2<i32>(var_0.c.x, var_0.c.x)), vec4<f32>(global0.x, global0.x, var_0.b, -690f))), select(0u, 0u, true)).b)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -430f)), 1030f, var_0.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-860f, 1043f)) - -1113f)));
    let var_3 = global0.x;
    var var_4 = select(i32(-1i) * -var_0.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.c.x, var_0.c.x << (var_0.d.x % 32u)), global3.c), var_0.a);
    global3 = Struct_1(u_input.b & _wgslsmith_add_i32(func_5(reverseBits(vec3<i32>(u_input.b, 31521i, u_input.a)), func_2(), Struct_4(var_1.yz, global2[_wgslsmith_index_u32(u_input.c.x, 9u)]), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)).c.x, -var_0.c.x), ~firstLeadingBit(vec2<u32>(u_input.c.x, var_0.d.x)), min(vec2<i32>(-3092i >> ((global3.b.x >> (0u % 32u)) % 32u), firstTrailingBit(u_input.b)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(global3.c, var_0.c, vec2<i32>(var_0.c.x, -13845i)), vec2<i32>(u_input.a, firstLeadingBit(var_0.c.x)))));
    global3 = Struct_1(-1i, ~vec2<u32>(23878u, reverseBits(1u)), global3.c);
    var var_5 = func_5(~min(vec3<i32>(u_input.b, global3.a, var_0.c.x) ^ vec3<i32>(-30796i, 2147483647i, 2604i), select(vec3<i32>(-2147483647i, 0i, global3.a), vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<bool>(var_0.a, true, false))) << (u_input.c.wxw % vec3<u32>(32u)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.c.x) >> (vec2<u32>(19339u, 63754u) % vec2<u32>(32u)), min(-var_0.c, global3.c)), min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.x, global3.b.x), var_0.d), 19440u), var_0.d), global3.c | ~func_2().c), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1370f, -173f) - vec2<f32>(1383f, var_1.x))), Struct_3(Struct_2(-vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(11718i, u_input.a, var_0.c.x), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1324f, -171f, var_1.x, 753f)), !vec4<bool>(var_0.a, var_0.a, var_0.a, true)), Struct_1(reverseBits(global3.c.x), global3.b, vec2<i32>(2147483647i, global3.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, 1361f, 736f, 2038f) - _wgslsmith_f_op_vec4_f32(var_1 + vec4<f32>(499f, var_0.b, var_0.b, var_0.b))))), _wgslsmith_mult_u32(firstTrailingBit(116861u) ^ ~62852u, _wgslsmith_clamp_u32(func_2().b.x, 5285u, _wgslsmith_mod_u32(u_input.c.x, 33458u))) << (global3.b.x % 32u));
    var_2 = _wgslsmith_f_op_f32(floor(-1752f));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-38036i, var_0.c.x, 2147483647i) & vec3<i32>(var_0.c.x, 1i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, 53371i, 11844i), vec3<i32>(0i, global3.a, 1i)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1495i, 11253i, u_input.a), abs(vec3<i32>(2147483647i, global3.c.x, -32900i))), vec3<i32>(~(-1i), var_5.c.x, 9464i), -vec3<i32>(-14602i, 47437i, 33494i)), var_0.a), var_1.yy, -_wgslsmith_sub_i32(reverseBits(var_5.c.x ^ u_input.a), var_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(745f - _wgslsmith_f_op_f32(-global0.x))), var_1.x), _wgslsmith_f_op_f32(ceil(-254f)));
}

