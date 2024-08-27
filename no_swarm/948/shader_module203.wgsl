struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(474f - global0.x), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-717f))), arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-205f, 354f, _wgslsmith_f_op_f32(floor(-1163f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2038f, arg_0.a, arg_0.a)))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.a * -322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -1202f)) - global0.x), global0.x))));
    global0 = vec3<f32>(global0.x, -721f, -848f);
    var var_0 = 0u >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(38966u, ~4294967295u), vec2<u32>(1u, 1u)) % 32u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(max(881f, _wgslsmith_f_op_f32(global0.x - arg_0.a)))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(123f, -719f))))), _wgslsmith_f_op_f32(-755f - _wgslsmith_f_op_f32(-arg_0.a)));
    var var_2 = vec2<bool>(true, !any(vec3<bool>(true, false, any(vec3<bool>(false, true, true)))));
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = vec4<i32>(arg_1, _wgslsmith_sub_i32(arg_2, 2506i ^ arg_1), max(~arg_1, arg_2), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(403f, arg_0.a, true)));
    var var_2 = -(firstTrailingBit(arg_2) | ~arg_1);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_0, u_input.a)));
    let var_4 = Struct_1(arg_0.a);
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(570f, _wgslsmith_f_op_f32(-func_2(Struct_1(1693f), u_input.a, u_input.a, 42711u).a), arg_3.a)) - arg_1.xxz);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 305f) + global0.x)));
    var var_1 = func_2(var_0, abs(-1i), firstTrailingBit(0i), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~4294967295u, min(0u, 20722u)), vec3<u32>(1u, ~19095u, 21835u)) & _wgslsmith_clamp_u32(firstTrailingBit(~104293u), 1u, _wgslsmith_div_u32(~4294967295u, 1u)));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))), var_1.a)), global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1550f, var_1.a)) + global0.yy))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_2, arg_1.zy))))));
    let var_3 = func_2(Struct_1(-1834f), u_input.b, _wgslsmith_mod_i32(u_input.b, -13807i), abs(143220u << (_wgslsmith_dot_vec4_u32(vec4<u32>(27076u, 1u, 21669u, 0u), vec4<u32>(35851u, 1u, 0u, 4294967295u)) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) - -2423f);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(152f, _wgslsmith_f_op_f32(func_4(vec3<bool>(arg_2.x, true, arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(366f, global0.x, global0.x, arg_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, arg_1.a)), func_2(Struct_1(arg_1.a), 0i, -1i, arg_0.x))))) + 1648f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), 891f);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_3.a)))))), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-911f - global0.x))));
    global0 = vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f + _wgslsmith_f_op_f32(-230f * arg_3.a)) * global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(109f, -382f, global0.x) * vec3<f32>(arg_1.a, arg_3.a, -175f)), vec3<f32>(arg_1.a, arg_1.a, 240f))))));
    var var_0 = func_2(Struct_1(-1224f), u_input.b, u_input.b << (reverseBits(4294967295u) % 32u), arg_0.x);
    return _wgslsmith_f_op_f32(-1762f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1224f, _wgslsmith_f_op_f32(func_3(arg_3, _wgslsmith_sub_i32(-2147483647i, 0i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(997f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(1u, 0u, 1u), Struct_1(-227f), vec4<bool>(false, true, false, true), Struct_1(global0.x))))), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))))));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-global0.x)), u_input.b, u_input.b, 9326u);
    let var_2 = true;
    var var_3 = var_1;
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-336f, 1000f, var_3.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_3.a, global0.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_3.a), vec3<f32>(1391f, var_1.a, 428f))) + vec3<f32>(-397f, _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(exp2(var_3.a)))))));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.yy, ~vec3<u32>(~1u, 1u, ~0u), 4294967295u);
}

