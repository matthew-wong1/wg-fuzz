struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = arg_1.a.x;
    let var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x))), -360f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.x, -689f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, var_1.a.x))))))));
    return 0i;
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1740f, -3421f) * _wgslsmith_f_op_f32(select(-995f, -2326f, all(vec3<bool>(false, false, true))))))));
    var var_1 = max(_wgslsmith_mult_vec2_i32(min(abs(vec2<i32>(1i, -1i)), vec2<i32>(-53187i, -1i)), vec2<i32>(1i, 1i)) ^ abs(vec2<i32>(func_3(-33324i, Struct_2(vec2<f32>(2220f, 1423f)), 389f, -28240i), -689i)), vec2<i32>(43027i, i32(-1i) * -4595i) ^ vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, -24327i), firstLeadingBit(-6200i)), _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), firstTrailingBit(-12274i), abs(-1i))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-330f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1770f, -839f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -748f)), 686f))));
    var var_2 = true;
    var_0 = 1f;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-949f, 520f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, 2151f) - vec2<f32>(-1000f, -1040f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(1822f)), _wgslsmith_f_op_f32(max(-469f, -985f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(245f * -1066f), -763f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 157f) * vec2<f32>(2016f, -747f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, -1000f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1894f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-151f * -1000f)))) + vec2<f32>(1f, 1f)), all(select(vec2<bool>(all(vec2<bool>(true, true)), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))))));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) - _wgslsmith_f_op_f32(894f * -990f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(525f, -301f), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))))));
    var var_1 = vec3<bool>(all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))), !select(!any(vec2<bool>(false, false)), true, false), true);
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = 24290i;
    let var_4 = Struct_1(min(~vec2<i32>(reverseBits(var_3), i32(-1i) * -2147483647i), vec2<i32>(0i, abs(2147483647i))));
    return _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f) - 121f) * 865f), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(~firstTrailingBit(vec2<i32>(33160i, -39929i)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_1()));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(max(-1367f, 677f))) * _wgslsmith_f_op_f32(abs(-1637f))), var_1.a.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2()));
    var_1 = var_2;
    var var_3 = -1i;
    var var_4 = Struct_1(var_0.a);
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * vec2<f32>(293f, var_2.a.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(634f, -186f)), var_1.a)) * var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(6410u, u_input.a.x, 4294967295u, 1u) & u_input.a, ~vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)) % 32u)), func_3(-2147483647i, var_2, var_2.a.x, _wgslsmith_mult_i32(~(-var_4.a.x), ~(-31115i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -412f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, -382f, var_1.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))));
}

