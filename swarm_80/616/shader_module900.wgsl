struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_1(-2269f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2038f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(-1889f * 113f)))), -1490f), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 32020u), vec3<u32>(1u, 1u, 1u)), ~0u), vec3<f32>(-212f, 901f, _wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(243f))))), vec3<bool>(true, true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.d.x - var_0.b.x), _wgslsmith_f_op_vec2_f32(-var_0.b), reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(5938u, 1u))), _wgslsmith_div_u32(1u >> (1u % 32u), 92860u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -224f)) - var_0.d) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(var_0.d))))), vec3<bool>(_wgslsmith_div_u32(~var_0.c, 54761u) == var_0.c, any(!select(vec4<bool>(false, arg_0.x, var_0.e.x, true), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, arg_0.x, true, arg_0.x))), all(vec4<bool>(any(var_0.e.xy), var_0.e.x, !var_0.e.x, true))));
    global0 = !(!all(vec4<bool>(var_0.e.x, false, true, false))) && ((_wgslsmith_sub_i32(1i, u_input.a ^ u_input.a) >> (var_1.c % 32u)) < countOneBits(abs(u_input.a) | -u_input.a));
    var_1 = Struct_1(201f, var_0.b, 52840u, var_1.d, var_0.e);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-930f + 1222f))), 1000f)), var_0.b, ~reverseBits(~(~90986u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(284f - var_1.d.x), -592f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, -446f, -934f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.d, vec3<f32>(var_0.d.x, var_1.a, 258f))))), var_1.e);
    return arg_0;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = ~arg_2.x;
    global0 = !all(vec3<bool>(true, true, true)) && (1i > u_input.a);
    global0 = !(!(!select(false, false, true))) || true;
    var var_1 = !func_3(vec2<bool>(true, true));
    let var_2 = -max(arg_0.x, -arg_0.x);
    return 4294967295u;
}

fn func_1() -> bool {
    global0 = select(all(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, false);
    let var_0 = 334f;
    let var_1 = vec4<u32>(~(~4294967295u), ~countOneBits(func_2(max(vec3<i32>(2147483647i, u_input.a, -2147483647i), vec3<i32>(-2147483647i, u_input.a, u_input.a)), vec3<f32>(-1535f, var_0, -1832f), abs(vec3<u32>(8679u, 1u, 8684u)))), min(1u, _wgslsmith_div_u32(1u, min(55116u, 47942u))) >> (_wgslsmith_div_u32(0u, ~func_2(vec3<i32>(u_input.a, -29568i, u_input.a), vec3<f32>(var_0, var_0, var_0), vec3<u32>(1u, 1u, 0u))) % 32u), func_2(_wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(2147483647i, u_input.a, 46832i), vec3<i32>(43551i, -31174i, -12677i), true)), ~min(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-15441i, u_input.a, u_input.a))), vec3<f32>(615f, -1393f, 1000f), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), max(vec2<u32>(4294967295u, 17148u), vec2<u32>(104751u, 15720u))), _wgslsmith_mod_u32(1u, ~1u))));
    let var_2 = !(true || (firstTrailingBit(u_input.a) < -1i));
    var var_3 = Struct_1(var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2718f, var_0)))) - vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), -1000f)), vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1487f)))), !(!var_2))), ~_wgslsmith_div_u32(var_1.x, reverseBits(70538u)) | 29577u, vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 473f))), 2712f), !(!vec3<bool>(any(vec3<bool>(false, var_2, var_2)), false, var_2 & var_2)));
    return !var_2 != !var_3.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -770f;
    var var_1 = !select(vec3<bool>(all(vec2<bool>(true, true)), u_input.a == u_input.a, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(abs(-1018f)) >= _wgslsmith_f_op_f32(sign(557f)), any(vec2<bool>(true, true))));
    var var_2 = 0u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, 719f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(983f, 636f))) - _wgslsmith_div_vec2_f32(vec2<f32>(749f, 1000f), vec2<f32>(-1789f, 1000f))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1433f * _wgslsmith_f_op_f32(230f - 650f)) - _wgslsmith_f_op_f32(-var_3.x)), -315f), ~_wgslsmith_dot_vec3_u32(vec3<u32>(15187u, min(23599u, 11180u), ~4294967295u), ~vec3<u32>(4294967295u, 1u, 51447u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, -1218f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, var_3.x, -1000f))), vec3<f32>(524f, var_3.x, var_3.x))))), !vec3<bool>(var_1.x, false, _wgslsmith_f_op_f32(var_3.x * 858f) == _wgslsmith_f_op_f32(min(-886f, var_3.x))));
    let var_5 = !(!select(vec4<bool>(func_1(), func_3(var_1.yy).x, !var_4.e.x, all(var_4.e)), vec4<bool>(false, true, func_3(var_1.xx).x, true), false & var_4.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2027f, -400f)) * _wgslsmith_f_op_f32(1535f * 1000f)))), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(var_4.c, var_4.c, 52183u) >> (var_4.c % 32u), 10887u), ~(~firstTrailingBit(~vec3<u32>(var_4.c, var_4.c, 8159u))), vec2<i32>(~u_input.a, u_input.a));
}

