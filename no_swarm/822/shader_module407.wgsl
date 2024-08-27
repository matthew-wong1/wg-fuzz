struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = select(select(select(select(!vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, false, true), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, arg_0))), select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_0, arg_0), u_input.a.x < -1i), vec3<bool>(true, all(vec4<bool>(arg_0, arg_0, true, arg_0)), arg_0)), vec3<bool>(arg_0 == !arg_0, arg_0, all(vec2<bool>(true, false))), all(!vec2<bool>(arg_0, true))), !select(select(!vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), false), select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, false), arg_0), vec3<bool>(all(vec4<bool>(arg_0, true, true, arg_0)), !arg_0, any(vec3<bool>(true, arg_0, arg_0)))), select(vec3<bool>(false, arg_0, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) > _wgslsmith_mult_i32(u_input.a.x, 24544i)), select(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, true)), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, false, true), true), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_0)), !vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, (arg_0 && false) || false, !arg_0)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-648f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(516f, -149f)))), 627f);
    let var_2 = true;
    let var_3 = all(var_0.xy);
    var var_4 = select(1u, ~firstTrailingBit(abs(2381u)), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(var_1 - -1000f)), var_1);
}

fn func_2() -> vec3<f32> {
    global0 = 325f;
    let var_0 = -760f;
    var var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(func_3(356f <= var_0)) >= 1261f, var_0 < var_0, false), select(vec4<bool>(true | select(true, false, false), all(vec3<bool>(true, true, true)), select(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -7308i), vec3<i32>(-8827i, u_input.a.x, u_input.a.x) & vec3<i32>(-1i, u_input.a.x, u_input.a.x)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 60345i), -vec3<i32>(-27520i, 822i, -47345i))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)), u_input.a.x <= (i32(-1i) * -3121i), all(vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true), vec4<bool>(true, all(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    var var_2 = Struct_2(var_0, select(select(!(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)), vec4<bool>(true, u_input.a.x == u_input.a.x, any(var_1.zw), var_1.x), select(!vec4<bool>(true, true, var_1.x, false), !vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, false, true, var_1.x))), !(!(!vec4<bool>(true, true, var_1.x, var_1.x))), select(select(!vec4<bool>(true, true, true, var_1.x), !vec4<bool>(var_1.x, true, true, var_1.x), true), vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, select(false, var_1.x, false), all(vec2<bool>(false, true)), true))));
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-567f, -818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-438f)) * _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1503f, var_0) - vec3<f32>(_wgslsmith_f_op_f32(-1709f * var_2.a), _wgslsmith_div_f32(1324f, 372f), _wgslsmith_f_op_f32(abs(var_0)))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> bool {
    global0 = _wgslsmith_f_op_f32(-1494f + _wgslsmith_f_op_f32(abs(194f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f - 461f)) - -294f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1329f, var_0, var_0)))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1005f, -742f, 1142f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(800f, _wgslsmith_f_op_f32(trunc(var_0)))), var_0, var_0) + vec3<f32>(var_1.x, var_0, _wgslsmith_f_op_f32(-var_1.x)));
    return any(select(!vec2<bool>(true, any(vec4<bool>(false, false, true, false))), vec2<bool>(true && all(vec3<bool>(false, false, false)), false), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!vec4<bool>(func_1(u_input.a.x, 28074i), true, 43564i >= u_input.a.x, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, true, false)), -1617i <= abs(u_input.a.x), countOneBits(u_input.a.x) < min(27118i, u_input.a.x), true)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(963f + -1245f)) - _wgslsmith_f_op_f32(round(1645f))), -403f, _wgslsmith_f_op_f32(func_3(false)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f), -2760f))), 1105f);
    var var_1 = vec3<bool>(true, !all(!(!vec3<bool>(var_0, true, var_0))), ~(1u << (_wgslsmith_clamp_u32(1u, 0u, 4294967295u) % 32u)) > 37824u);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(893f * 959f)))), !(!vec4<bool>(true, var_0, true, true)));
    var_2 = Struct_2(var_2.a, vec4<bool>(999f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x * -1033f), !(abs(0i) != countOneBits(u_input.a.x)), u_input.a.x > u_input.a.x, true));
    let var_3 = reverseBits(~vec4<u32>(~5794u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 45270u, 4294967295u, 31350u), vec4<u32>(0u, 1u, 1u, 4294967295u)), 29072u)) | select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~(~4305u), ~1u, ~(29221u >> (1u % 32u)), 1u), var_2.b);
    let var_4 = _wgslsmith_clamp_u32(38935u, ~max(~1u, ~2341u), max(~firstLeadingBit(_wgslsmith_dot_vec3_u32(var_3.xzw, vec3<u32>(47636u, 27441u, var_3.x))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16769u, 28398u), vec3<u32>(7728u, 1u, 2873u))));
    let var_5 = var_3.zw;
    let var_6 = vec3<u32>(_wgslsmith_sub_u32(4294967295u, 64292u), _wgslsmith_mod_u32(~var_4, ~(~44104u) >> (max(1u, var_3.x) % 32u)), firstLeadingBit(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u)), var_2.a);
}

