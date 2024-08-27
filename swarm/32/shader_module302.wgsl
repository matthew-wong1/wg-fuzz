struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 130f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> bool {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -117f);
    var var_0 = _wgslsmith_f_op_f32(abs(1000f));
    var var_1 = _wgslsmith_div_i32(18868i, ~(~(firstTrailingBit(26074i) | (arg_2.x >> (39931u % 32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -902f), -105f), _wgslsmith_f_op_vec2_f32(vec2<f32>(227f, _wgslsmith_f_op_f32(sign(-243f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), -372f)), !arg_1));
    var_0 = _wgslsmith_div_f32(-420f, 611f);
    return any(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<i32>) -> bool {
    var var_0 = vec2<u32>(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 14016u), vec2<u32>(1u, 34118u)))), 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(533f, 247f))))));
    let var_2 = Struct_1(vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(arg_2, ~vec3<i32>(-1i, -16718i, arg_2.x))), u_input.a.x | _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 2147483647i), vec4<i32>(7506i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, -1i, arg_2.x)), vec4<i32>(0i, 1i, -43526i, u_input.a.x) >> (vec4<u32>(var_0.x, 1u, 38261u, var_0.x) % vec4<u32>(32u)))));
    var var_3 = Struct_1(countOneBits(reverseBits(arg_2.zx)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-340f, var_1, arg_0.x, var_1), vec4<f32>(682f, var_1, var_1, 698f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1000f, 294f, 1392f))))))));
    return !all(!select(!vec4<bool>(arg_1, arg_1, arg_1, true), !vec4<bool>(arg_1, true, arg_1, true), !vec4<bool>(arg_1, arg_1, true, arg_1)));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_1(vec2<i32>(~(-2006i), 10516i));
    var var_1 = true;
    var_1 = !select(func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-238f, -113f))), vec2<f32>(3634f, -1000f), vec2<bool>(true, true))), !func_2(var_0, true, vec4<i32>(-2147483647i, var_0.a.x, u_input.a.x, 0i), arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(-8057i, u_input.a.x, var_0.a.x), countOneBits(vec3<i32>(-21655i, 1i, 2147483647i)))), (arg_0 == _wgslsmith_dot_vec3_u32(vec3<u32>(41918u, 0u, arg_0), vec3<u32>(arg_0, 4294967295u, 72961u))) || true, all(vec4<bool>(true, true, true, true)) || true);
    var var_2 = var_0;
    let var_3 = select(select(vec2<bool>(true, true), vec2<bool>(true | (-2147483647i > var_2.a.x), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)))), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true))), vec2<bool>(true, true), vec2<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), false));
    return !vec2<bool>(any(vec2<bool>(true, true)), !(!all(vec2<bool>(true, var_3.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> f32 {
    global0 = arg_2;
    global0 = -729f;
    global0 = -1553f;
    let var_0 = Struct_1(-vec2<i32>(_wgslsmith_mult_i32(reverseBits(u_input.a.x), _wgslsmith_div_i32(0i, u_input.a.x)), -2147483647i));
    let var_1 = Struct_1(-(-u_input.a ^ vec2<i32>(reverseBits(var_0.a.x), u_input.a.x)));
    return -569f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(-(~(~vec3<i32>(0i, u_input.a.x, u_input.a.x)))), ~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) & vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), select(vec3<i32>(24650i, u_input.a.x, u_input.a.x), vec3<i32>(34797i, -10727i, u_input.a.x), false)), vec3<i32>(countOneBits(0i), max(37538i, 9766i), -2147483647i ^ u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (~vec3<u32>(46980u, 72037u, 480u) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1030f + _wgslsmith_f_op_f32(669f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f) + _wgslsmith_f_op_f32(floor(-1056f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(-999f, 725f), _wgslsmith_f_op_f32(func_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 2759u, 1u)), !func_1(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(636f))), max(~1u, 0u))))));
    global0 = 317f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -2103f) + -264f) + -286f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-355f, -594f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(4945i, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-371f)))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(4294967295u, 11019u, 1u), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), _wgslsmith_f_op_f32(1000f * 2288f), countOneBits(4294967295u))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1742f + 2106f), _wgslsmith_f_op_f32(473f * 193f))))));
}

