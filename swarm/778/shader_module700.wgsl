struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(-518f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), -2357f));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(-483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f - 106f)))));
    let var_1 = var_0.b;
    global0 = array<vec2<bool>, 29>();
    var var_2 = _wgslsmith_f_op_f32(step(-1224f, _wgslsmith_f_op_f32(arg_1 - 313f)));
    var var_3 = arg_0;
    return func_2();
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<i32> {
    global0 = array<vec2<bool>, 29>();
    let var_0 = Struct_1(arg_1.a, -2005f);
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    return ~(vec4<i32>(firstLeadingBit(26026i), countOneBits(countOneBits(17708i)), 1i, 1i) >> (((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 13851u, 3517u, u_input.a.x), vec4<u32>(49968u, u_input.a.x, 0u, 0u)) | vec4<u32>(u_input.a.x, 23907u, u_input.a.x, u_input.a.x)) | u_input.a) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, 551f)), _wgslsmith_f_op_f32(sign(212f)));
    var var_1 = func_2();
    global0 = array<vec2<bool>, 29>();
    let var_2 = select(!select(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 39977u != arg_1.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, u_input.a.x, 12040u, arg_1.x)), u_input.a), 29u)], select(global0[_wgslsmith_index_u32(~u_input.a.x, 29u)], vec2<bool>(false, true), select(global0[_wgslsmith_index_u32(arg_1.x, 29u)], global0[_wgslsmith_index_u32(arg_1.x, 29u)], global0[_wgslsmith_index_u32(arg_1.x, 29u)]))), vec2<bool>((_wgslsmith_f_op_f32(sign(var_1.a)) >= _wgslsmith_f_op_f32(var_1.a * var_1.b)) && all(vec4<bool>(true, true, true, true)), true), true);
    var var_3 = vec3<i32>(-4912i ^ arg_0.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.x << (max(0u, 4294967295u) % 32u), arg_0.x), 1i), i32(-1i) * -46957i);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(2147483647i, arg_0.x), vec2<i32>(1i, arg_0.x)), var_3.zx) | ~(~vec2<i32>(8851i, -33475i)), max(vec2<i32>(-9676i, min(var_3.x, arg_0.x)), arg_0.yx)), ~arg_0.wz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-1615f + _wgslsmith_f_op_f32(min(1000f, 1107f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(667f)) * _wgslsmith_f_op_f32(f32(-1f) * -738f)) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(456f - -330f)))), -1473f);
    var var_1 = func_4(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, -348f)), func_1(-1i, -1000f), vec4<bool>(true, true, true, true)), firstLeadingBit(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, 57442u, u_input.a.x), 1u)));
    let var_2 = !select(select(vec4<bool>(false, true, any(vec2<bool>(true, false)), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), true)), vec4<bool>(true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true), select(!any(global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), _wgslsmith_f_op_f32(-var_0.a) == -415f, true));
    var var_3 = u_input.a.x;
    var_1 = func_4(vec4<i32>(-1i) * -(~vec4<i32>(30093i, -260i, 2147483647i, -2147483647i)), u_input.a.xyy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-107f, _wgslsmith_f_op_f32(var_0.a * -621f))), 237f, _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -1i)), func_3(vec2<f32>(var_0.b, -1000f), var_0, vec4<bool>(var_2.x, var_2.x, true, false)).x), ~max(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, 34456i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(0i, 1i, -1i)), -1i)), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -11718i, -1i, -13906i) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 51087u) % vec4<u32>(32u)), vec4<i32>(6007i, 0i, -35811i, 56872i)), i32(-1i) * -36574i));
}

