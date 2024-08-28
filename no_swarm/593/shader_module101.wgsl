struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> f32 {
    var var_0 = u_input.a.yx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-387f + -560f), arg_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-326f * arg_1.x)))))), ~var_0.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * -1000f), arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1333f)), ~(~u_input.b), select(!select(select(global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(90715u, 24u)], false), select(global2[_wgslsmith_index_u32(0u, 24u)], vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.b, 24u)]), vec2<bool>(true, false)), vec2<bool>(true, true), global2[_wgslsmith_index_u32(select(~u_input.b, _wgslsmith_div_u32(7302u, u_input.b), false) | ~firstTrailingBit(u_input.b), 24u)]));
    var var_2 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, u_input.b, ~u_input.b), ~vec3<u32>(65295u, 1u, u_input.b), vec3<u32>(7915u, ~4294967295u, 15221u))), vec3<u32>(min(u_input.b, _wgslsmith_add_u32(var_1.d, var_1.d | 0u)), ~var_1.d, ~(~(u_input.b & 4294967295u))));
    var_1 = Struct_1(arg_1, var_0.x, arg_1.wy, var_1.d ^ abs(~24204u), var_1.e);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(956f, 875f, var_1.a.x, -1972f) - vec4<f32>(var_1.a.x, 565f, 432f, arg_1.x)))))), u_input.a.x, var_1.a.wz, _wgslsmith_add_u32(33208u, select(countOneBits(3049u), abs(4294967295u), var_1.e.x)) & var_1.d, vec2<bool>(var_1.e.x, any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(993f - var_3.c.x);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = i32(-1i) * -1i;
    let var_1 = arg_0.x;
    var var_2 = -1170f;
    var_0 = var_1;
    var_0 = 0i;
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-695f * 703f), 1f), _wgslsmith_f_op_f32(sign(-631f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -888f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1362f - 1173f) * -434f)) + vec4<f32>(_wgslsmith_f_op_f32(574f + 109f), -280f, 212f, _wgslsmith_f_op_f32(sign(-1782f)))), -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(545f, _wgslsmith_f_op_f32(func_3(u_input.a.x, vec4<f32>(1000f, -1438f, 1692f, -284f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(624f, -572f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-683f, 250f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1077f, 1111f) - vec2<f32>(-321f, -955f)) + vec2<f32>(1032f, 953f)))), u_input.b, !select(vec2<bool>(true, true), select(global2[_wgslsmith_index_u32(1u, 24u)], select(vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.b, 24u)], vec2<bool>(true, true)), u_input.b != u_input.b), (var_1 << (u_input.b % 32u)) == -34004i));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = all(global2[_wgslsmith_index_u32(18444u, 24u)]);
    global2 = array<vec2<bool>, 24>();
    var var_1 = true;
    global0 = array<vec3<bool>, 14>();
    let var_2 = false;
    return func_2(-(vec2<i32>(-1i) * -(~u_input.a.yw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_1(true, _wgslsmith_mod_i32(51825i, u_input.a.x) ^ u_input.a.x);
    var_0 = _wgslsmith_add_i32(countOneBits(_wgslsmith_mult_i32(-2147483647i, 0i)), (58106i & u_input.a.x) << (_wgslsmith_mod_u32(var_1.d ^ 1u, _wgslsmith_mod_u32(0u, var_1.d) | func_2(u_input.a.yz).d) % 32u));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1568f + _wgslsmith_f_op_f32(max(1569f, -840f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))), _wgslsmith_f_op_f32(floor(798f)), true)) + var_1.c.x));
    var var_2 = var_1.a.xyw;
    let var_3 = 103699u;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, ~abs(select(vec2<u32>(var_4.d, u_input.b), vec2<u32>(u_input.b, var_4.d), select(vec2<bool>(false, true), vec2<bool>(var_4.e.x, var_1.e.x), var_4.e.x))), ~(var_3 & firstLeadingBit(var_3)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~(vec4<u32>(var_3, u_input.b, var_4.d, 8130u) ^ vec4<u32>(var_3, 0u, var_4.d, 0u)), ~vec4<u32>(var_3, var_3, 4682u, 45092u)), ~vec4<u32>(4294967295u, 0u, var_3, 88812u) << (select(abs(vec4<u32>(4294967295u, var_1.d, 4294967295u, 0u)), vec4<u32>(1u, 4294967295u, var_1.d, var_1.d), true) % vec4<u32>(32u))));
}

