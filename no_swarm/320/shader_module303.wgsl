struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<u32, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_2, 26>();
    let var_0 = Struct_1(vec2<bool>(any(vec2<bool>(true, true)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), u_input.b.x >= 17402u))), -vec4<i32>(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 1i, _wgslsmith_sub_i32(max(2147483647i, u_input.a.x), ~22057i), ~abs(u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1544f, -1090f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2046f, -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(709f, -930f), vec2<f32>(-150f, -146f))))));
    global0 = array<Struct_2, 26>();
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 700f, var_0.c.x) - vec3<f32>(812f, -3059f, -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(select(-757f, var_0.c.x, true)), var_0.c.x, _wgslsmith_f_op_f32(max(var_0.c.x, 1161f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -200f, var_0.c.x))))), select(select(!vec3<bool>(var_0.a.x, true, true), vec3<bool>(false, var_0.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), !(!vec3<bool>(var_0.a.x, true, var_0.a.x)), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1440f, var_0.c.x, var_0.c.x), vec3<f32>(-481f, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, 422f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1603f, var_0.c.x, var_0.c.x), vec3<f32>(492f, -708f, 1270f)))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 248f, -429f, -875f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.x, 1307f, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_2.x, var_0.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1906f + var_2.x)), 1074f, _wgslsmith_f_op_f32(-635f - _wgslsmith_f_op_f32(var_2.x - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f * var_2.x) - _wgslsmith_f_op_f32(abs(var_0.c.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_0.c.x, -1216f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(431f, var_0.c.x, 1270f, 778f), vec4<f32>(var_0.c.x, var_0.c.x, 1114f, -977f), false))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = u_input.a.zy;
    let var_1 = true;
    global0 = array<Struct_2, 26>();
    let var_2 = false;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(154f, -1202f, 673f, arg_2) + vec4<f32>(-1049f, 702f, 1791f, -390f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, 3045f, arg_2, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 583f, _wgslsmith_div_f32(arg_2, -148f), 1146f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, -570f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-699f, arg_2, -422f, arg_2) - vec4<f32>(-1928f, arg_2, arg_2, arg_2)) - _wgslsmith_f_op_vec4_f32(func_3())))), _wgslsmith_div_f32(1528f, _wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_mod_i32(-8927i, var_0.x), Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(~arg_3.x, var_0.x, u_input.a.x, _wgslsmith_add_i32(-14707i, 20388i)), ~(u_input.a & u_input.a)), Struct_1(select(select(vec2<bool>(arg_1, false), vec2<bool>(false, var_1), false), vec2<bool>(arg_1, arg_1), !vec2<bool>(false, var_2)), -vec4<i32>(arg_3.x, u_input.a.x, 1i, 2147483647i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1000f) + vec2<f32>(arg_2, -2511f)))))));
    return ~arg_3;
}

fn func_1(arg_0: f32) -> Struct_4 {
    global1 = array<u32, 25>();
    var var_0 = func_2(61626u, any(vec3<bool>(true, true, true)), arg_0, vec3<i32>(-1i) * -u_input.a.wwz);
    let var_1 = vec4<bool>(!(!any(vec3<bool>(true, true, true))), true, any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 21678u, 0u, 68258u), vec4<u32>(global1[_wgslsmith_index_u32(74401u, 25u)], 4145u, 27073u, u_input.b.x))) < countOneBits(20260u));
    global0 = array<Struct_2, 26>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f + arg_0)), _wgslsmith_f_op_f32(898f + _wgslsmith_f_op_f32(f32(-1f) * -3319f)))) + -418f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1328f)), 417f)));
    return Struct_4(var_2, var_0.zy, ~(~(~vec2<u32>(global1[_wgslsmith_index_u32(0u, 25u)], 610u))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    var var_0 = func_1(-1668f);
    var var_1 = false;
    var var_2 = Struct_2(~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.d, 1i), _wgslsmith_clamp_i32(76729i, u_input.a.x, 0i)), -_wgslsmith_dot_vec3_i32(u_input.a.zzx, u_input.a.yxz), ~(-var_0.b.x), 68071i), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, false), -785f <= var_0.a), u_input.a | vec4<i32>(max(u_input.a.x, -1i), u_input.a.x, _wgslsmith_add_i32(var_0.d, var_0.d), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, 108f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, var_0.a)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1442f))))), _wgslsmith_f_op_f32(max(var_0.a, var_2.b.c.x)), var_2.b.a.x || (-11705i > (u_input.a.x & var_0.b.x)))));
    global0 = array<Struct_2, 26>();
    var var_4 = var_2.a;
    let var_5 = Struct_2(vec4<i32>(~1i & _wgslsmith_add_i32(var_4.x, var_2.b.b.x), min(1i, 1i), ~(-var_4.x), 50636i) & vec4<i32>(var_2.b.b.x, -1020i, -_wgslsmith_add_i32(var_4.x, -2147483647i), firstLeadingBit(var_4.x)), Struct_1(select(vec2<bool>(var_2.b.a.x, all(vec3<bool>(false, true, var_2.b.a.x))), select(vec2<bool>(false, false), var_2.b.a, var_2.b.a), all(var_2.b.a)), u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.c), _wgslsmith_f_op_vec2_f32(var_2.b.c + vec2<f32>(133f, 256f))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a * -274f), _wgslsmith_f_op_f32(sign(458f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2801f, 1472f, var_2.b.c.x, -571f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, 1595f)), _wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(var_5.b.c.x - var_0.a), func_1(1500f).a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.c.x, -576f, -159f, var_0.a)))), select(select(select(vec4<bool>(true, var_2.b.a.x, false, false), vec4<bool>(var_5.b.a.x, var_2.b.a.x, true, var_2.b.a.x), vec4<bool>(var_2.b.a.x, var_5.b.a.x, var_2.b.a.x, true)), vec4<bool>(false, var_5.b.a.x, var_5.b.a.x, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, all(vec4<bool>(var_2.b.a.x, var_2.b.a.x, true, var_2.b.a.x)), var_0.a <= var_0.a, var_5.b.a.x), var_5.b.a.x))));
}

