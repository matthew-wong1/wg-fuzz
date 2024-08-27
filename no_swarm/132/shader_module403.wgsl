struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1332f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = -316f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -252f);
    let var_0 = Struct_1(true);
    var var_1 = var_0;
    var_1 = Struct_1(all(vec2<bool>(var_1.a, arg_0.x)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1010f, 1000f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    let var_0 = any(!(!select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, false), !vec3<bool>(arg_1.x, true, arg_1.x))));
    let var_1 = vec3<i32>(-2147483647i, (_wgslsmith_mod_i32(-u_input.a.x, ~u_input.b.x) << (~min(1u, 54196u) % 32u)) << (_wgslsmith_mult_u32(1u, select(1u, _wgslsmith_sub_u32(1u, 1u), all(arg_1))) % 32u), _wgslsmith_clamp_i32(55115i, u_input.b.x, ~58796i));
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14155u, 28785u), vec2<u32>(18416u, 16343u)), _wgslsmith_dot_vec3_u32(vec3<u32>(25269u, 0u, 0u), vec3<u32>(32438u, 1u, 4294967295u)), firstLeadingBit(3201u)), 1u), 0u), 1u, abs(~(~firstTrailingBit(0u))), ~0u);
    let var_3 = _wgslsmith_f_op_f32(func_2(vec2<bool>(all(!vec2<bool>(var_0, true)), arg_1.x)));
    var var_4 = ~var_1.zy;
    return arg_1.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(arg_3.yz, vec2<bool>(false, arg_3.x), arg_3.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(-arg_2)))) * 349f);
    let var_0 = arg_1;
    var var_1 = var_0.a;
    var var_2 = max(vec2<i32>(i32(-1i) * -_wgslsmith_add_i32(-14288i, arg_0.x), _wgslsmith_mult_i32(arg_0.x | arg_0.x, 4530i) | _wgslsmith_mod_i32(1i, -arg_0.x)), abs(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x << (39536u % 32u), -48028i, arg_0.x), _wgslsmith_clamp_i32(-1i, u_input.a.x, ~u_input.b.x))));
    var var_3 = _wgslsmith_dot_vec3_i32(arg_0, arg_0);
    return Struct_1(func_3(vec4<f32>(1f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) * -1706f), _wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(trunc(387f)))), arg_3.xy));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = arg_1.x;
    return _wgslsmith_add_u32(~(~reverseBits(~56899u)), ~(~abs(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -269f);
    let var_0 = Struct_1(~(~abs(4294967295u)) >= ~func_4(func_1(vec3<i32>(-1i, -1i, u_input.b.x), Struct_1(true), -241f, vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, 956f))));
    global0 = 607f;
    global0 = 1607f;
    var var_1 = vec3<i32>(2147483647i, u_input.a.x, max(~u_input.a.x, _wgslsmith_mod_i32(-firstTrailingBit(u_input.b.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), select(-25423i, -13541i, var_0.a)))));
    var var_2 = func_1(vec3<i32>(_wgslsmith_sub_i32(var_1.x, abs(u_input.a.x)), min(-var_1.x, _wgslsmith_clamp_i32(1i, -1i, -1138i)), -(var_1.x ^ -2147483647i)) ^ vec3<i32>(-40669i, _wgslsmith_sub_i32(20836i, min(u_input.b.x, 32547i)), 2135i), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-429f, 1372f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1031f, _wgslsmith_f_op_f32(trunc(-499f)))))))), !(!(!select(vec4<bool>(true, var_0.a, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.a, var_0.a, true)))));
    var_2 = func_1(~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, var_1.x), vec3<i32>(var_1.x, var_1.x, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 2147483647i, u_input.a.x), vec3<i32>(0i, -1i, var_1.x))), vec3<i32>(1i, -u_input.b.x, -2147483647i)), var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -593f))), vec4<bool>(all(select(!vec3<bool>(true, var_2.a, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_0.a), vec3<bool>(true, true, var_2.a)), !vec3<bool>(var_0.a, var_2.a, var_0.a))), !(!(var_0.a != true)), true, false));
    var var_3 = -394f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(990f * -627f), _wgslsmith_f_op_f32(-462f + -412f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-166f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1973f, 1289f)), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, var_0.a))), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_add_u32(15962u, 90685u), 4294967295u, abs(max(_wgslsmith_div_u32(169u, 17163u), ~1u))), vec3<i32>(~2147483647i, ~var_1.x, 10022i), abs(vec4<u32>(~2246u, ~9085u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(36358u, 4294967295u), vec2<u32>(4294967295u, 0u)))) & vec4<u32>(~4294967295u, 1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(4294967295u, 6952u, 4294967295u, 0u)))), ~firstTrailingBit(-13094i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(18254i, u_input.a.x, 1i, 29323i), vec4<i32>(0i, 16474i, -11797i, -9067i))), 38808i ^ (i32(-1i) * -u_input.b.x));
}

