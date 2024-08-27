struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_i32(abs(-20174i & (arg_0.x & ~1i)), abs(~arg_0.x));
    var var_1 = -1i;
    var var_2 = vec3<u32>(~(~(~_wgslsmith_mod_u32(59373u, 1u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.c, u_input.b.x), 1u), (min(0u, u_input.c) ^ ~1u) << (countOneBits(~4294967295u) % 32u)), 45800u);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-254f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1545f - 796f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(171f, 2518f)) * 797f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-587f, -350f, false)), 442f))) * -1041f));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1031f, var_3, var_3))), vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-var_3), var_3))))), 1i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_4.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1596f, var_4.a.x, var_4.a.x))), vec3<f32>(310f, var_4.a.x, var_4.a.x))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_3)))), _wgslsmith_div_f32(var_3, var_4.a.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -887f) + _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(-2147483647i, 1i))))))), 6703i);
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_sub_u32(u_input.c, firstLeadingBit(max(u_input.b.x, u_input.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(~vec2<i32>(-31421i, 0i))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1336f - arg_1)), 1897f, 1401f)), 1170f);
    let var_2 = vec4<f32>(arg_1, -3383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_1.c) - _wgslsmith_f_op_f32(340f + arg_1))))), var_0.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1573f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f * var_0.a.x) - var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-242f, 168f) * _wgslsmith_f_op_f32(var_1.b.x - var_1.c)))));
    global0 = array<vec3<bool>, 25>();
    return arg_0 < var_0.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    var var_0 = func_2();
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    return Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(133f, arg_1.x, 1765f), var_0.a), abs(-(var_0.b & -1i)) >> (_wgslsmith_div_u32(u_input.b.x, firstTrailingBit(4294967295u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    var var_0 = func_4(vec4<i32>(max(i32(-1i) * -81197i, -(90398i >> (u_input.a % 32u))), 2147483647i, 28058i, ~(countOneBits(-33055i) | select(30388i, -1i, false))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1283f, _wgslsmith_f_op_f32(1553f * 2277f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(176f, -627f))))))), any(vec2<bool>(func_1(reverseBits(-2147483647i), _wgslsmith_f_op_f32(-969f * 443f)), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + 1026f), var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -1264f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = countOneBits(_wgslsmith_clamp_u32(~u_input.a, u_input.a, u_input.c & u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

