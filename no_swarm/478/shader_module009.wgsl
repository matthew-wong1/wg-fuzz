struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 76921u), vec2<u32>(14888u, 1u), vec2<u32>(3891u, 1u), vec2<u32>(0u, 20789u), vec2<u32>(87526u, 12117u), vec2<u32>(23439u, 7422u), vec2<u32>(68752u, 1u), vec2<u32>(4294967295u, 7020u), vec2<u32>(5001u, 1291u), vec2<u32>(4294967295u, 1u), vec2<u32>(61301u, 1u), vec2<u32>(17172u, 67930u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global1: array<Struct_1, 30>;

var<private> global2: f32 = -1000f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec2<f32> {
    let var_0 = !select(vec2<bool>(any(arg_0.yz), arg_0.x == false), vec2<bool>(any(arg_0.yz) | true, arg_0.x), arg_0.x);
    global2 = 408f;
    global1 = array<Struct_1, 30>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 14u)] >> (~_wgslsmith_div_vec2_u32(vec2<u32>(37023u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(717u, 88071u, u_input.a))), _wgslsmith_mod_vec2_u32(~global0[_wgslsmith_index_u32(15377u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)])) % vec2<u32>(32u));
    global0 = array<vec2<u32>, 14>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-396f, -1031f) * vec2<f32>(1107f, 971f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1349f)), -1361f), false)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(360f, 345f, arg_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 544f, arg_0), vec3<f32>(arg_0, arg_0, 1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-401f, 546f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1896f, -279f) * vec3<f32>(arg_0, arg_0, 726f)), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -361f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(-1047f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, -103f)), _wgslsmith_f_op_f32(arg_0 * 150f), _wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(439f, -798f, -507f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, arg_0, -1469f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-530f, 1370f, var_0.x) - vec3<f32>(-854f, 374f, -1000f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-861f, _wgslsmith_f_op_f32(round(682f)), !arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_1.x)))), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-arg_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 - _wgslsmith_f_op_vec3_f32(-var_1)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0, -233f)))))));
    let var_2 = 1704f;
    return -_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(abs(0i), 1i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(45506i, 2147483647i)), vec2<i32>(3803i, 0i))), abs(-7241i), countOneBits(1i) | (countOneBits(-1i) >> (~u_input.a % 32u)));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a, 14u)];
    return max(~_wgslsmith_div_i32(func_3(-1157f, global1[_wgslsmith_index_u32(12785u, 30u)]), _wgslsmith_mod_i32(abs(2147483647i), 14268i)), -22097i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(-1555f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(275f)))))))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(var_1.x, all(!select(var_1, vec2<bool>(false, var_1.x), false)), abs(u_input.a) == _wgslsmith_add_u32(12601u & u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a))), false));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -954f) + -155f);
    let var_4 = !(!select(vec4<bool>(true, false, any(vec2<bool>(var_1.x, var_1.x)), true), vec4<bool>(!var_1.x, !var_1.x, all(vec2<bool>(false, var_1.x)), false), !(!vec4<bool>(var_1.x, false, true, var_1.x))));
    let var_5 = global1[_wgslsmith_index_u32(~countOneBits(u_input.a), 30u)];
    var var_6 = vec4<i32>(-75344i, 1i, min(-1i, ~select(6764i, _wgslsmith_div_i32(0i, 1i), false)), _wgslsmith_sub_i32(-18469i, ~(func_2() << (~u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~62878u, ~(min(firstLeadingBit(vec3<u32>(6847u, var_5.b, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, var_5.b), vec3<u32>(var_5.b, 0u, 0u))) | abs(~vec3<u32>(var_5.b, 41966u, 34875u))), countOneBits(vec3<i32>(var_6.x >> (4294967295u % 32u), _wgslsmith_mult_i32(-2147483647i, 1i), var_6.x)) ^ (var_6.zwx & firstLeadingBit(vec3<i32>(-38024i, var_6.x, 28178i) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)))));
}

