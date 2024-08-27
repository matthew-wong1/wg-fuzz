struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = -145f;
    var var_0 = all(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec3<bool>(true, false, false)))));
    var_0 = all(!vec3<bool>(false, all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)))) != any(vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-461f * _wgslsmith_f_op_f32(round(1311f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(193f, 449f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(538f)), -195f) - _wgslsmith_f_op_f32(ceil(903f)))), 580f);
    let var_2 = vec4<i32>(countOneBits(2147483647i), ~_wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(firstLeadingBit(2436i), abs(-34526i))), reverseBits(_wgslsmith_div_i32(arg_0.a, _wgslsmith_mod_i32(42447i, ~1299i))), max(2147483647i, ~(~arg_0.a)));
    return -695f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f * -1000f))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(49181i, 0u))))), true)))));
    let var_0 = vec3<f32>(_wgslsmith_div_f32(512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1145f, -1000f)))), 616f, -785f);
    var var_1 = Struct_1(0i, ~(~94821u));
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(-23279i, _wgslsmith_clamp_i32(var_1.a, u_input.a, var_1.a) & u_input.a);
    global0 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
    return _wgslsmith_mod_u32(48610u, 12210u);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(max(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -34886i), vec2<i32>(-1i, u_input.a))) & (-1i << (0u % 32u))), ~4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(arg_0));
    global0 = arg_0.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 171f)), _wgslsmith_f_op_f32(round(arg_0.x)))))) + var_1.x);
    var var_2 = Struct_1(_wgslsmith_mult_i32(var_0.a, countOneBits(countOneBits(0i))), _wgslsmith_div_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b, arg_2.x), max(4294967295u, 0u)), min(arg_2.x, (arg_2.x << (var_0.b % 32u)) ^ var_0.b)));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(650f + -953f)))) * _wgslsmith_div_f32(-1744f, _wgslsmith_f_op_f32(f32(-1f) * -240f)));
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, -1981f, 1193f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-120f, -1000f, -296f), vec3<f32>(-168f, -382f, -137f), vec3<bool>(true, arg_2.x, arg_0)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(598f, -809f, 469f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, -145f, 188f) * vec3<f32>(698f, 761f, -162f))))), !arg_2, vec2<u32>(1u >> (~func_2(vec4<i32>(39991i, arg_1.a, 0i, -2147483647i), vec2<bool>(true, arg_2.x)) % 32u), min(_wgslsmith_div_u32(arg_1.b, ~21300u), abs(_wgslsmith_clamp_u32(70946u, 1u, arg_1.b)))));
    var var_1 = 57701u;
    let var_2 = func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1055f - _wgslsmith_f_op_f32(-330f - 715f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-321f)), _wgslsmith_f_op_f32(1757f * 405f))), _wgslsmith_f_op_f32(f32(-1f) * -473f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 190f, 1001f))), vec3<f32>(2352f, -101f, -1140f)))))), vec2<bool>(arg_0 & false, true), vec2<u32>(var_0.b, arg_1.b));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-809f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1794f))))));
    return func_4(vec3<f32>(-624f, -808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1097f)))))), select(!(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_2.x), vec2<bool>(arg_0, true))), select(vec2<bool>(arg_2.x, true), select(arg_2, vec2<bool>(arg_2.x, false), !arg_2), select(vec2<bool>(false, arg_0), !vec2<bool>(arg_0, true), vec2<bool>(true, true))), !arg_2), ~(~(~(vec2<u32>(var_2.b, var_2.b) << (vec2<u32>(var_2.b, 4294967295u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1000f;
    let var_0 = func_1(!any(vec4<bool>(all(vec4<bool>(false, true, true, true)), false, true, false)), Struct_1(-1i, 4294967295u), !vec2<bool>(true, all(vec2<bool>(false, false))));
    let var_1 = vec3<u32>(var_0.b, 4294967295u, ~firstLeadingBit(max(var_0.b, func_1(true, var_0, vec2<bool>(false, false)).b)));
    let var_2 = !(true || all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    let var_3 = select(!vec3<bool>(!var_2, false, false), select(select(!select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, true, var_2), vec3<bool>(true, var_2, false)), !select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, false, false), vec3<bool>(var_2, true, var_2)), true), vec3<bool>(var_2 & true, var_2, false), false), any(select(!vec4<bool>(false, true, true, var_2), select(select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(false, true, var_2, false), vec4<bool>(var_2, false, var_2, true)), select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(true, false, true, var_2), var_2), !vec4<bool>(var_2, false, true, false)), vec4<bool>(var_2 || var_2, var_2, false, all(vec4<bool>(false, false, false, var_2))))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(func_1(func_4(vec3<f32>(-845f, -486f, -427f), var_3.yx, vec2<u32>(var_0.b, 1u)).b < firstTrailingBit(0u), Struct_1(var_0.a, var_0.b), var_3.xx))), _wgslsmith_f_op_f32(select(1f, 1f, var_3.x)), !var_3.x));
    var var_5 = -(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-3411i, -44412i), vec2<i32>(var_0.a, u_input.a))) & ~abs(max(vec2<i32>(u_input.a, var_0.a), vec2<i32>(1i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, u_input.a, -1i), vec3<i32>(var_5.x, -25745i, var_5.x)), -16622i, ~var_5.x & _wgslsmith_div_i32(var_0.a, u_input.a)), -1i, -var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)) + var_4), var_5.x, _wgslsmith_dot_vec3_u32(var_1, var_1), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_4 - -536f), _wgslsmith_f_op_f32(743f - 285f), _wgslsmith_f_op_f32(abs(-1000f))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(-1i, 4294967295u))), _wgslsmith_f_op_f32(1f - var_4), _wgslsmith_f_op_f32(var_4 + 1f)), any(vec2<bool>(var_2, false)) && all(var_3.xz))));
}

