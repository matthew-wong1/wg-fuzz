struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 65065u;

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = true;
    let var_1 = vec4<i32>(-1i, firstLeadingBit(_wgslsmith_mod_i32(-18042i, _wgslsmith_add_i32(0i, 2147483647i))), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, i32(-1i) * -36855i, ~(-3301i)), vec4<i32>(u_input.a.x, ~(-arg_2), _wgslsmith_sub_i32(-62707i, u_input.a.x) << (1u % 32u), ~abs(arg_2))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_1)), vec4<f32>(1357f, arg_0.b.x, arg_1, -660f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * -456f), -109f, arg_0.b.x, 1070f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, -884f, arg_1), vec4<f32>(arg_0.b.x, -1032f, arg_0.b.x, arg_1)) + vec4<f32>(arg_0.b.x, arg_1, arg_0.b.x, -335f)))), select(vec4<bool>(true, false, arg_2 < -1i, var_0), vec4<bool>(any(vec4<bool>(false, false, var_0, false)), true, true, all(vec3<bool>(true, false, var_0))), !select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, false, false), vec4<bool>(true, var_0, var_0, var_0))))));
    var var_4 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, arg_0.b.x, 883f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, arg_0.b.x, 126f)))) + vec3<f32>(1873f, var_3.x, _wgslsmith_f_op_f32(round(arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(trunc(arg_0.b))), true, var_0 && false, var_0);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec4<bool> {
    let var_0 = select(true, true, 29144u >= _wgslsmith_div_u32(firstTrailingBit(17881u >> (0u % 32u)), 1u));
    global1 = true;
    let var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, -118f, _wgslsmith_f_op_f32(-1633f - arg_0.b.x))), !(var_0 || var_0), func_3(Struct_1(_wgslsmith_sub_i32(-arg_0.a, min(arg_0.a, -5276i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.x, -645f, -1000f), arg_0.b)))), -370f, -(~arg_1)), var_0);
    var var_3 = arg_0;
    return vec4<bool>((!(var_2.b != false) && true) && false, true, true, all(vec3<bool>(all(vec2<bool>(true, var_2.c)), !any(vec4<bool>(var_2.b, var_2.c, var_0, var_0)), var_0)));
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    let var_0 = 67932u;
    global1 = true;
    var var_1 = 1000f;
    var_1 = 112f;
    var var_2 = -24965i;
    return func_2(Struct_1(~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_0.x, 29161i)), vec2<i32>(u_input.b.x, u_input.a.x) & vec2<i32>(24024i, -76687i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, -915f, -1565f) - vec3<f32>(1247f, -331f, 415f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, 1634f, 1228f))))), -2458i, _wgslsmith_f_op_f32(sign(-113f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~1u, ~_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(8420u, 4294967295u, 9053u, 68683u), vec4<u32>(4294967295u, 3166u, 51432u, 49827u), vec4<bool>(false, false, false, false))), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 970f);
    var var_2 = select(func_1(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, 44085i), vec4<i32>(33334i, u_input.a.x, -2147483647i, 2147483647i)), countOneBits(vec4<i32>(-2147483647i, 0i, u_input.b.x, 63332i)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x <= 68930u, true, true, false), vec4<bool>(true, true, func_1(vec4<i32>(53421i, u_input.b.x, 1i, 53265i)).x, true)), (i32(-1i) * -2147483647i) >= (_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -44159i), vec2<i32>(u_input.a.x, u_input.b.x)), u_input.a) | u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(step(-821f, -1451f))), var_1.x))), var_1.x));
    var var_4 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(435f * 433f), _wgslsmith_div_f32(801f, var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(vec4<u32>(53908u, var_0.x, var_0.x, 0u)), vec4<u32>(20068u, 1u, 1u, var_0.x) << (vec4<u32>(29028u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))) ^ ~vec4<u32>(_wgslsmith_div_u32(var_0.x, 87412u), abs(63297u), 26413u, min(31710u, 9635u)), -1i, 2147483647i);
}

