struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    var var_0 = select(!select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), any(vec3<bool>(arg_1, true, arg_1))), vec3<bool>(u_input.b >= 1i, select(arg_1, arg_1, true), !arg_1), !(!vec3<bool>(arg_1, true, true))), select(vec3<bool>(true & all(vec3<bool>(true, true, arg_1)), arg_1, false), select(!vec3<bool>(arg_1, true, arg_1), select(!vec3<bool>(true, false, arg_1), select(vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, true)), arg_1), arg_1), !arg_1), !vec3<bool>(arg_1, ~4294967295u < u_input.a, any(select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, true, false, arg_1)))));
    let var_1 = select(!select(select(vec4<bool>(true, arg_1, true, var_0.x), !vec4<bool>(false, var_0.x, true, var_0.x), true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(!vec4<bool>(arg_1, false, arg_1, var_0.x), select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, true, true, false)), vec4<bool>(var_0.x, false, true, arg_1))), !select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, arg_1, true), vec4<bool>(var_0.x, false, arg_1, false), false), false), select(vec4<bool>(var_0.x, arg_1, arg_1, arg_1), vec4<bool>(arg_1, var_0.x, arg_1, false), var_0.x), !select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(arg_1, true, var_0.x, arg_1), vec4<bool>(var_0.x, arg_1, var_0.x, var_0.x))), vec4<bool>(var_0.x, true, true, arg_1));
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2516f)) * _wgslsmith_f_op_f32(1662f - 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1259f, _wgslsmith_f_op_f32(max(-1174f, 1196f))))), !(!(true | var_0.x)))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1751f))))) >= _wgslsmith_f_op_f32(788f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, 66239u, u_input.a)), arg_0, firstLeadingBit(vec4<u32>(1u, 5739u, u_input.a, 25256u))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1280f)), 1f)) * _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a, u_input.a << (u_input.a % 32u), u_input.a), false, firstLeadingBit(vec4<u32>(1u, 52891u, u_input.a, u_input.a))))));
    let var_2 = min(firstLeadingBit(select(~vec2<i32>(-2147483647i, -2122i) & ~vec2<i32>(u_input.b, u_input.b), min(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(-15743i, u_input.b) ^ vec2<i32>(u_input.b, -2147483647i)), vec2<bool>(4294967295u < u_input.a, true))), vec2<i32>(u_input.b, 1i));
    let var_3 = vec3<f32>(110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(23403u, 59667u, u_input.a)), all(vec3<bool>(arg_0, arg_0, arg_0)), (vec4<u32>(2536u, u_input.a, 35821u, 0u) | vec4<u32>(1u, 2298u, u_input.a, u_input.a)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 50249u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))))));
    let var_4 = ~_wgslsmith_mult_u32(select(~21931u, _wgslsmith_dot_vec4_u32(~vec4<u32>(5590u, 57106u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(66260u, 21010u, 79439u, u_input.a))), (true == arg_0) && false), firstTrailingBit(14551u));
    return -352f;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-805f + -1355f))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 1u, 0u)), true, ~vec4<u32>(u_input.a, 0u, 9259u, u_input.a)))))));
    var var_1 = false;
    var_1 = all(!(!vec4<bool>(true, var_0 > 1639f, true, false)));
    let var_2 = firstTrailingBit(select(_wgslsmith_sub_i32(abs(-13674i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b)))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.b, u_input.b) | vec4<i32>(2147483647i, 0i, -31822i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -3481i, -1i), vec4<i32>(-2147483647i, 5240i, u_input.b, u_input.b))), !(u_input.a == u_input.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1000f, -612f) + vec3<f32>(var_0, -309f, 773f)), vec3<f32>(-1177f, -1146f, -317f))))), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), select(false, false, true)), !any(vec3<bool>(false, true, true))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, var_0 != var_0), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))), any(vec2<bool>(true, any(vec4<bool>(false, false, true, true))))), ~(~u_input.b) == _wgslsmith_mod_i32(1i, 1881i));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-(-(~u_input.b) ^ u_input.b), 40359i, u_input.b, u_input.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-111f - 1358f))), _wgslsmith_f_op_f32(floor(894f)), -1000f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-487f)) + _wgslsmith_f_op_f32(round(-405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1700f)), _wgslsmith_f_op_f32(-1f))), vec4<bool>(func_1() && true, true, !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec4<bool>(true, true, true, true))), !all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false))));
    var var_2 = 26069u;
    var var_3 = true;
    let var_4 = ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), ~vec3<u32>(27768u, u_input.a, 25596u)) << (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 33204u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u))));
    let var_5 = firstTrailingBit(var_0.x);
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, var_1.a.x, -469f, 446f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(275f, 1870f, var_1.a.x, var_1.a.x) * vec4<f32>(-716f, -1409f, var_1.a.x, 589f)))))));
    var var_7 = -var_0.x;
    var_7 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~var_0.wxz, ~(-vec3<i32>(0i, 2147483647i, u_input.b) >> (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(max(~0i, firstLeadingBit(-86690i)), var_0.x, ~var_5 & ~var_5)));
}

