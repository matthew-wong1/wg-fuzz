struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17>;

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec2<u32>, 17>();
    global1 = array<Struct_1, 30>();
    let var_0 = Struct_1(arg_0);
    let var_1 = vec3<bool>(true, true, true);
    global0 = array<vec2<u32>, 17>();
    return 1000f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2680f, arg_3.x, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), vec3<f32>(-682f, 346f, arg_1.x), true)))) - _wgslsmith_div_vec3_f32(vec3<f32>(862f, 268f, arg_1.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.x, 1000f, arg_1.x)))))))));
    let var_1 = _wgslsmith_f_op_f32(func_3(u_input.a));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(abs(669f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f * var_0.x)), _wgslsmith_f_op_f32(-1085f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.x)))), 867f)), -1000f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-747f * arg_3.x), arg_1.x, var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 753f, var_1))))));
    let var_4 = Struct_1(~abs(~(-1i)));
    return 0i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = vec2<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(func_2(vec4<u32>(0u, u_input.b, 0u, u_input.b), vec2<f32>(-2026f, -728f), 4294967295u, vec2<f32>(606f, 894f)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_1.x), vec2<i32>(7456i, arg_2))), _wgslsmith_sub_i32(arg_3.a, arg_2)), select(~arg_3.a, ~arg_3.a, select(u_input.d >= u_input.d, false, false))));
    global0 = array<vec2<u32>, 17>();
    var var_2 = arg_3;
    var_0 = arg_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(u_input.b == _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 40351u), ~u_input.d), 3341u >> (0u % 32u)), (~(~u_input.b) << (~(~32607u) % 32u)) < 1u);
    let var_1 = u_input.e.x << (134779u % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-969f))) + _wgslsmith_f_op_f32(ceil(-679f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(var_0.x, true, true, false), vec4<i32>(u_input.e.x, -56610i, 2147483647i, -1i), var_1, Struct_1(-1i))) + -464f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1817f + 209f))))));
    var var_3 = var_0.x;
    let var_4 = Struct_1(-71070i);
    var var_5 = max(global0[_wgslsmith_index_u32(~reverseBits(u_input.b), 17u)], firstTrailingBit(~vec2<u32>(u_input.d, _wgslsmith_add_u32(4294967295u, u_input.b))));
    var var_6 = Struct_1(-var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1015f, 1000f) * vec2<f32>(var_2, var_2)), vec2<f32>(var_2, -780f)))), vec2<f32>(1173f, var_2)), _wgslsmith_mod_vec2_i32(u_input.e, select(vec2<i32>(~18587i, var_1), u_input.e, vec2<bool>(var_5.x != u_input.b, true))), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 93468u, 54778u, var_5.x), select(vec4<u32>(19599u, var_5.x, 67051u, var_5.x), vec4<u32>(var_5.x, u_input.d, 1u, 30294u), vec4<bool>(true, var_0.x, true, var_0.x)))) ^ vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41690u, 19574u, u_input.d), vec3<u32>(54485u, u_input.d, u_input.d)), 0u | u_input.b), _wgslsmith_clamp_u32(var_5.x ^ u_input.b, ~0u, var_5.x), ~(~4952u), ~u_input.b));
}

