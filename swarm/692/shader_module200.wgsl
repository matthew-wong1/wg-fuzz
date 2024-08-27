struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(14459u, 1u, 8964u), vec3<u32>(4294967295u, 52797u, 0u), vec3<u32>(0u, 3566u, 4294967295u), vec3<u32>(4294967295u, 26796u, 3875u), vec3<u32>(1u, 65968u, 4294967295u), vec3<u32>(1u, 1u, 22624u), vec3<u32>(55705u, 43629u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(980f, -2541f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-260f)), _wgslsmith_f_op_f32(trunc(-3231f)))));
    global0 = array<vec3<u32>, 7>();
    global0 = array<vec3<u32>, 7>();
    global0 = array<vec3<u32>, 7>();
    var var_1 = firstTrailingBit(~max(_wgslsmith_add_i32(38708i, min(0i, 2147483647i)), firstLeadingBit(~(-1252i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -685f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-547f, var_0))) * vec2<f32>(var_0, var_0))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    global0 = array<vec3<u32>, 7>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -228f) * _wgslsmith_f_op_f32(trunc(-1203f))), -1519f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2958f, 2263f))))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1 || select(true, false, arg_1), _wgslsmith_mod_u32(arg_0, ~55155u)))));
    let var_1 = Struct_2(Struct_1(true, 13350u));
    var var_2 = ~firstTrailingBit(vec4<i32>(-65608i, -abs(-2147483647i), ~(-9480i), abs(1i)));
    let var_3 = var_1.a;
    return Struct_2(var_3);
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 0u), arg_0), false);
    let var_1 = func_2(4465u, true).a;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-329f, -1116f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1029f) * vec2<f32>(1039f, 386f)))), !select(vec2<bool>(var_0.a.a, false), vec2<bool>(var_1.a, false), var_1.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1258f, arg_1) + vec2<f32>(arg_1, 1306f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-333f, 1000f) + arg_1), arg_1), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2064f, -1534f)) + _wgslsmith_f_op_f32(arg_1 * 514f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1220f)) - _wgslsmith_f_op_f32(select(arg_1, 132f, true)))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-588f)), _wgslsmith_f_op_f32(round(arg_1)), arg_1);
    let var_4 = vec4<bool>(true || any(vec3<bool>(!var_0.a.a, select(var_1.a, var_1.a, var_0.a.a), true)), func_2(~(~var_1.b | var_0.a.b), !var_0.a.a).a.a, select(!all(select(vec4<bool>(var_1.a, var_0.a.a, var_1.a, var_0.a.a), vec4<bool>(true, var_1.a, true, false), var_0.a.a)), var_0.a.a, var_1.a == var_0.a.a), func_2(firstLeadingBit(~arg_0 << (1u % 32u)), any(!select(vec3<bool>(true, var_0.a.a, true), vec3<bool>(var_1.a, false, var_0.a.a), vec3<bool>(false, var_0.a.a, false)))).a.a);
    return func_2(_wgslsmith_clamp_u32(7214u, u_input.a.x, _wgslsmith_mod_u32(arg_0, ~abs(u_input.a.x))), true).a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = -472f;
    let var_1 = var_0;
    let var_2 = true;
    var var_3 = Struct_1(true, arg_2.b);
    let var_4 = vec3<u32>(~func_1(arg_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_2.a, 4294967295u))).x))).b, _wgslsmith_add_u32(~_wgslsmith_div_u32(arg_3.b, u_input.b) ^ (arg_3.b | 1u), arg_3.b), _wgslsmith_div_u32(~(~arg_3.b), firstTrailingBit(100068u)));
    return func_2(1u, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = func_4(u_input.a, func_1(max(54543u, 13584u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-478f, -348f))))), Struct_1(true, u_input.b), func_1(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(u_input.a.x, u_input.a.x)), reverseBits(4294967295u)), 476f));
    var var_2 = select(vec4<bool>(var_1.a.a || (true | all(vec3<bool>(true, true, var_1.a.a))), !all(vec2<bool>(true, var_1.a.a)), any(vec3<bool>(false, true, true)), var_1.a.a), !vec4<bool>(!var_1.a.a, !(var_1.a.b >= 65905u), func_2(24700u, true).a.b <= u_input.b, false), !vec4<bool>(false, var_1.a.a, all(!vec2<bool>(true, var_1.a.a)), !var_1.a.a && !var_1.a.a));
    var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(~(-vec3<i32>(-1i, 637i, 0i))), reverseBits(-vec3<i32>(1i, 1i, 1i))), -firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-30653i, 32160i), reverseBits(-36802i))));
    var var_3 = all(vec2<bool>(true, var_2.x));
    var_3 = false;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(~var_1.a.b, true).a.b, -1263f);
}

