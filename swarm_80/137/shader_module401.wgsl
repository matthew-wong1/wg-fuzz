struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x));
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1821f, -309f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-453f - 992f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(417f, -1172f)), arg_2.b.x)) - -1088f);
    global0 = array<Struct_4, 7>();
    var var_2 = _wgslsmith_f_op_f32(min(1395f, var_1));
    return ~(~4294967295u);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = -reverseBits(vec2<i32>(~(-2147483647i), select(0i, firstLeadingBit(-2147483647i), select(true, false, true))));
    let var_1 = Struct_4(Struct_2(abs(countOneBits(abs(arg_3.a))), _wgslsmith_dot_vec3_u32(arg_3.a.zww, ~vec3<u32>(1u, arg_3.a.x, 25058u) >> (arg_3.a.xxw % vec3<u32>(32u)))));
    global0 = array<Struct_4, 7>();
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(~(~1u), 5507u, ~0u), ~min(~_wgslsmith_dot_vec3_u32(var_1.a.a.zzy, arg_3.a.zxw), ~(~arg_0)), abs(arg_3.b), 1u);
    global0 = array<Struct_4, 7>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-742f)), 903f))))));
}

fn func_2() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(reverseBits(u_input.a.x)), 7u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_4(var_0.a.a.x, vec4<u32>(0u, ~17705u, func_3(Struct_3(vec3<bool>(false, false, true)), u_input.a.x, Struct_1(vec2<i32>(13992i, -20096i), vec4<bool>(true, true, false, false), vec4<u32>(0u, var_0.a.b, 0u, 2703u))), _wgslsmith_div_u32(37969u, countOneBits(var_0.a.b))), vec4<u32>(_wgslsmith_add_u32(1u, var_0.a.b | 25921u), 19306u, _wgslsmith_mult_u32(~u_input.a.x, 30989u), var_0.a.b), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(1u, vec4<u32>(55283u, u_input.a.x, 13612u, 11365u), vec4<u32>(var_0.a.a.x, 61443u, 37898u, 1u), var_0.a))))), 548f, 1f);
    var var_2 = abs(~var_0.a.a);
    let var_3 = vec3<i32>(~(-42509i), i32(-1i) * -1i, -1i);
    let var_4 = reverseBits(-2147483647i) != _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2012i, 1277i, -1i), vec4<i32>(-2147483647i, var_3.x, var_3.x, var_3.x))), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, -2241i, var_3.x, 41866i), vec4<i32>(17083i, var_3.x, -55196i, var_3.x))), ~vec4<i32>(~var_3.x, _wgslsmith_dot_vec3_i32(var_3, vec3<i32>(var_3.x, 2147483647i, -35725i)), min(-19066i, var_3.x), _wgslsmith_div_i32(var_3.x, var_3.x)));
    return ~((_wgslsmith_add_i32(var_3.x, countOneBits(var_3.x)) | var_3.x) ^ _wgslsmith_dot_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(21806i, var_3.x, var_3.x, var_3.x), vec4<i32>(var_3.x, -12997i, var_3.x, var_3.x), vec4<i32>(-89844i, 2147483647i, 26664i, -47968i)), ~vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, 1i, 1i, var_3.x), reverseBits(vec4<i32>(17464i, var_3.x, 10413i, -13419i)))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = max(_wgslsmith_sub_i32(_wgslsmith_add_i32(-50091i, -18337i), min(func_2(), 2147483647i)), 2147483647i);
    var var_1 = (firstTrailingBit(48555u) | countOneBits(53255u)) | max(_wgslsmith_mod_u32(func_3(Struct_3(vec3<bool>(false, true, arg_0)), ~10517u, Struct_1(vec2<i32>(var_0, 0i), vec4<bool>(true, false, true, arg_0), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), min(u_input.a.x, reverseBits(u_input.a.x))), u_input.a.x);
    var var_2 = 840f != _wgslsmith_f_op_f32(trunc(-1000f));
    let var_3 = _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(abs(countOneBits(38521u)), 9326u));
    var var_4 = reverseBits(min(abs(firstLeadingBit(vec4<u32>(u_input.a.x, var_3, var_3, 1u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1273u, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)))) | abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(84857u, 1u, 38667u, u_input.a.x), select(vec4<u32>(4294967295u, 12586u, var_3, var_3), max(vec4<u32>(1u, 10237u, 26067u, 1u), vec4<u32>(var_3, var_3, 63598u, u_input.a.x)), arg_0)));
    return all(select(vec4<bool>(!arg_0, false, firstTrailingBit(var_3) > var_3, true), select(!(!vec4<bool>(true, true, arg_0, true)), !vec4<bool>(arg_0, arg_0, arg_0, true), true && select(arg_0, false, true)), select(select(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(true, false, false, false), vec4<bool>(arg_0, false, arg_0, arg_0)), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0), vec4<bool>(var_0 != var_0, any(vec2<bool>(true, arg_0)), false & arg_0, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, func_1(select(true, any(vec3<bool>(false, true, true)), true)), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f - _wgslsmith_f_op_f32(step(502f, 1000f)))), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -454f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f - -2923f) * _wgslsmith_f_op_f32(f32(-1f) * -617f)), -1782f)));
    var var_2 = Struct_4(Struct_2(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10531u, u_input.a.x), u_input.a), u_input.a.x, ~u_input.a.x, u_input.a.x | u_input.a.x), u_input.a.x));
    var var_3 = var_2.a;
    global1 = !(var_0.x != true);
    let var_4 = 298f;
    let x = u_input.a;
    s_output = StorageBuffer(select(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_2.a.a, var_3.a) | ~7283u, 1u), var_0.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4, _wgslsmith_f_op_f32(-var_4), var_1.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1413f, 1435f, 1981f) + vec3<f32>(var_1.x, var_4, var_4)))), vec3<bool>(true, var_0.x, true))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1070f + 878f))))), _wgslsmith_div_f32(var_4, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + var_4)))), 278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) + -511f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_4)))))));
}

