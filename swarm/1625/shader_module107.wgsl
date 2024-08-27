struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = select(!vec4<bool>(select(arg_1.a.a.x || arg_1.a.a.x, true, arg_0.x >= -10249i), true, arg_1.a.a.x, arg_1.a.a.x), select(!(!vec4<bool>(true, arg_1.a.a.x, false, arg_1.a.a.x)), !vec4<bool>(select(false, arg_1.a.a.x, arg_1.a.a.x), true, arg_1.a.a.x, 1i < arg_0.x), !(!vec4<bool>(false, false, arg_1.a.a.x, true))), !(arg_1.a.a.x & true));
    var_0 = select(vec4<bool>(false, false, true, var_0.x), !(!vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, !var_0.x)), select(!(!vec4<bool>(var_0.x, arg_1.a.a.x, false, arg_1.a.a.x)), vec4<bool>(any(!var_0.yzz), true, true, arg_1.a.a.x), select(!var_0.x, false, var_0.x && (var_0.x && false))));
    let var_1 = arg_1;
    let var_2 = var_1.a;
    var_0 = !vec4<bool>(false, !(!(!var_2.a.x)), true, !any(select(var_2.a, vec2<bool>(var_2.a.x, true), var_0.xy)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f * -542f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f)), -1510f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(651f, -2472f, -1567f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-758f, -1765f, 1527f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -719f, 1599f) + vec3<f32>(-419f, 405f, -474f)))))), vec3<bool>(all(select(vec4<bool>(var_0.x, false, arg_1.a.a.x, var_1.a.a.x), vec4<bool>(false, true, var_0.x, true), arg_1.a.a.x)), var_0.x, all(vec3<bool>(true, false, var_0.x))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    var var_0 = arg_1.yy;
    var var_1 = arg_3.c.a.a.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_0);
    let var_3 = arg_2;
    var_2 = arg_3.a;
    return arg_3.d;
}

fn func_2() -> vec2<f32> {
    var var_0 = 1i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-1780f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-860f * 100f), _wgslsmith_f_op_f32(2009f * 1106f))))), ~u_input.a, Struct_2(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true))), _wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1611f))), _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(1i, 1i, 1i, 1i), Struct_2(Struct_1(vec2<bool>(false, true))))), true, Struct_3(_wgslsmith_f_op_f32(-868f + -828f), u_input.a, Struct_2(Struct_1(vec2<bool>(true, true))), u_input.a)), ~(~(~4294967295u))));
    let var_2 = i32(-1i) * -10741i;
    var_0 = var_2;
    let var_3 = Struct_2(var_1.c.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1126f))), var_1.a)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = -130f;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(var_0))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(828f - -637f), var_0)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(366f, 173f))), _wgslsmith_div_vec2_f32(vec2<f32>(307f, -306f), vec2<f32>(882f, var_0)), !vec2<bool>(false, arg_1.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1366f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0) - vec2<f32>(var_0, -1309f))), _wgslsmith_f_op_vec2_f32(func_2()))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x))))));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(countOneBits(vec4<i32>(arg_0, arg_0, 2147483647i, -7718i)), Struct_2(Struct_1(arg_1.wy)))).x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1589f, var_1.x)) + var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -739f)), countOneBits(reverseBits(~(~u_input.a))), Struct_2(Struct_1(select(!arg_1.xz, vec2<bool>(true, false), arg_1.x))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(21436u, 4294967295u))) | u_input.a);
    var var_3 = var_2;
    return vec3<i32>(countOneBits(max(arg_0, min(_wgslsmith_add_i32(arg_0, 0i), -arg_0))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, arg_0 & arg_0), min(-1i, _wgslsmith_add_i32(arg_0, arg_0))), arg_0 >> (var_2.b % 32u)), _wgslsmith_add_i32(-_wgslsmith_mod_i32(-13989i, ~arg_0), 9286i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(-6242i, 1i, 0i)), max(vec3<i32>(27058i, 0i, -33109i), vec3<i32>(15563i, 1i, 30266i)), true), countOneBits(func_1(-2147483647i, vec4<bool>(true, true, false, true)))) | ~func_1(abs(-28620i), vec4<bool>(true, true, true, true)).x, vec4<f32>(768f, -706f, 227f, _wgslsmith_f_op_f32(-2669f - 1f)), ~select(~(vec3<u32>(u_input.a, 1u, 1u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), select(vec3<u32>(13188u, u_input.a, 49492u), vec3<u32>(37566u, u_input.a, 1u), true) ^ ~vec3<u32>(52865u, 4294967295u, 25493u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_f32(trunc(-577f)));
}

