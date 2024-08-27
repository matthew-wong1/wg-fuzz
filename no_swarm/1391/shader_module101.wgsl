struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: array<vec3<f32>, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<vec3<f32>, 25>();
    var var_0 = 7783u;
    global0 = array<vec3<f32>, 25>();
    var_0 = ~u_input.b;
    let var_1 = vec3<i32>(arg_0.a, _wgslsmith_dot_vec3_i32(max(min(u_input.c.zzw, -u_input.c.yxz), select(vec3<i32>(-2147483647i, arg_0.c, arg_0.c), vec3<i32>(-1i, arg_3.c, u_input.c.x), true)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(arg_3.c, -37964i)) | _wgslsmith_mult_i32(arg_2.a, arg_3.a), i32(-1i) * -19534i, 59728i)), -reverseBits(-2147483647i));
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_3.a, min(_wgslsmith_add_i32(1i, -30719i), u_input.c.x)), arg_3.a), u_input.d);
}

fn func_2() -> Struct_2 {
    var var_0 = -(vec2<i32>(~_wgslsmith_mod_i32(u_input.d, 60293i), max(u_input.c.x >> (4294967295u % 32u), _wgslsmith_mult_i32(2271i, u_input.d))) ^ ~(~(~vec2<i32>(2147483647i, u_input.d))));
    var var_1 = abs(62310u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-493f)), -612f, _wgslsmith_f_op_f32(min(1417f, -1869f))) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(1u, u_input.b, 20926u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 11125u, 1u), vec3<u32>(1u, 20816u, u_input.a))), 25u)])), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, -483f, -216f, 1136f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(424f, 474f, -834f, -150f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1161f, 1674f, 233f, -932f), vec4<f32>(-1472f, -357f, 1000f, -741f), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-866f * -268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-261f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(273f)) - _wgslsmith_f_op_f32(-1851f * -543f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(935f, -1126f))))), -45064i, Struct_1(func_3(Struct_1(var_0.x, -1297f, u_input.c.x, 1192f, vec2<f32>(-1333f, -700f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 38749u, u_input.a, 63692u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b, 1u), vec4<u32>(u_input.a, 72328u, 5846u, 25071u))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 0i), u_input.c.yx), _wgslsmith_f_op_f32(678f - 422f), _wgslsmith_clamp_i32(-2147483647i, 18599i, 1i), _wgslsmith_f_op_f32(step(767f, -546f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-520f, 329f) - vec2<f32>(266f, -2985f))), Struct_1(-1i & var_0.x, _wgslsmith_f_op_f32(min(-1504f, 132f)), _wgslsmith_div_i32(var_0.x, u_input.c.x), _wgslsmith_f_op_f32(-569f - 502f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(227f, 666f))))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 15636i, var_0.x, var_0.x), u_input.c)) | u_input.c.x, 395f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(913f))), _wgslsmith_f_op_f32(ceil(-1515f)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = func_2();
    let var_1 = vec2<i32>(26957i, u_input.d);
    let var_2 = 0i;
    let var_3 = var_0.e;
    global0 = array<vec3<f32>, 25>();
    return -1660f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(4294967295u, 35940u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, vec4<f32>(1000f, 1429f, -862f, -163f), u_input.d, Struct_1(u_input.d, -247f, -45473i, -460f, vec2<f32>(2168f, -1113f))), vec3<i32>(0i, 2652i, 29027i), u_input.a, Struct_2(vec3<f32>(-301f, 2126f, -253f), true, vec4<f32>(-398f, 634f, -973f, -125f), u_input.c.x, Struct_1(2147483647i, 2033f, -20049i, 109f, vec2<f32>(541f, 1000f))))) + _wgslsmith_f_op_f32(f32(-1f) * -832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2299f))), -1497f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-767f, -1000f, -651f), vec3<f32>(852f, 352f, -1000f)) * _wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(var_0.x, 25u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-476f, -1424f, 716f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-992f, -1443f, 1047f))))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1226f, -1013f, 820f, -175f) * vec4<f32>(-1173f, -1000f, 833f, -763f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1951f, -381f, -502f, 648f)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-508f + 1000f), -326f, _wgslsmith_f_op_f32(trunc(942f)), 1150f))), firstLeadingBit(1i), Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)) * _wgslsmith_f_op_f32(floor(-237f))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, i32(-1i) * -2147483647i), reverseBits(_wgslsmith_mult_vec3_i32(u_input.c.www, u_input.c.wyw))), -1874f, vec2<f32>(_wgslsmith_f_op_f32(func_1(func_2(), abs(u_input.c.wwz), _wgslsmith_mod_u32(118813u, var_0.x), Struct_2(global0[_wgslsmith_index_u32(var_0.x, 25u)], true, vec4<f32>(2642f, 141f, 574f, 916f), 403i, Struct_1(u_input.c.x, 231f, -1i, 916f, vec2<f32>(2192f, 2175f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(307f))))));
    global0 = array<vec3<f32>, 25>();
    var_0 = _wgslsmith_mult_vec2_u32(~(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(var_0.x, var_0.x)))), reverseBits(vec2<u32>(~1u, 1u) | select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u)), abs(vec2<u32>(1u, var_0.x)), false)));
    let var_2 = vec2<u32>(4294967295u, _wgslsmith_mod_u32(~(var_0.x << (4294967295u % 32u)), u_input.a)) ^ ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 12062u), vec2<u32>(u_input.a, var_0.x)) | ~vec2<u32>(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32((vec4<u32>(var_0.x, 11904u, var_2.x, 1u) << (vec4<u32>(var_0.x, 4294967295u, 11968u, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(1u, var_2.x, var_2.x, 3144u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, var_2.x, 38u) ^ reverseBits(vec4<u32>(3677u, 125585u, 60732u, 10094u)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_0.x, var_0.x, 1u), vec4<u32>(u_input.b, 46168u, 71382u, 37790u)))));
}

