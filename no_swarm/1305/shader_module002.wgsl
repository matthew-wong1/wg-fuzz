struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = vec4<i32>(~19006i, firstTrailingBit(~(901i | _wgslsmith_clamp_i32(-1i, -4993i, 941i))), u_input.e, ~_wgslsmith_sub_i32(-8942i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.b.x, 9210i), vec4<i32>(u_input.d, u_input.d, u_input.c.x, arg_2.a.c.x)), -14758i)));
    var var_1 = _wgslsmith_f_op_f32(-arg_3);
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a) + -620f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)) - 1142f), all(vec4<bool>(true, arg_2.a.b.x, false, true != (true && arg_2.c)))));
    let var_2 = arg_0;
    var_0 = vec4<i32>(-1i) * -arg_0.a.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1198f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1354f)) + 462f))) + arg_3);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(520f * 1564f)));
    global0 = ~4294967295u;
    let var_1 = 0u;
    var var_2 = arg_0.wxw;
    global0 = 32824u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -1100f)) * _wgslsmith_f_op_f32(f32(-1f) * -1028f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, 227f)) + _wgslsmith_f_op_f32(sign(-1123f))), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 592f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = ~1321u;
    global0 = ~_wgslsmith_mod_u32(abs(4294967295u), 4294967295u);
    let var_0 = !select(!vec4<bool>(true, !arg_1.b.x, true, true), select(!(!vec4<bool>(false, true, false, arg_1.b.x)), select(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, false, false), select(vec4<bool>(arg_1.b.x, true, true, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true), true)), any(vec4<bool>(false, false, false, false)) | true), !((arg_1.a < arg_1.a) || true));
    var var_1 = ~(~_wgslsmith_mult_u32(~select(22534u, 4294967295u, var_0.x), 7256u));
    global0 = 1u;
    return arg_1.a;
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-165f, arg_0.a.a, arg_0.a.a, 1650f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, arg_0.a.a, 327f, arg_0.a.a) - vec4<f32>(arg_0.a.a, arg_0.a.a, 540f, arg_0.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.a, arg_0.a.a, 581f, 1535f), vec4<f32>(arg_0.a.a, arg_0.a.a, 283f, -209f), arg_0.a.b.x))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, arg_0.a.b.x, arg_0.a.b.x, true), vec2<bool>(arg_0.a.b.x, false)))))), arg_0.a));
    global0 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mult_u32(~0u, ~4294967295u)), firstLeadingBit(29269u)) | _wgslsmith_add_u32(~abs(~29917u), 1u);
    let var_1 = arg_0.a;
    return 169f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-895f, 154f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(-174f, vec2<bool>(false, true), vec4<i32>(-1i, 1097i, 5013i, u_input.e))), u_input.b, Struct_2(Struct_1(-409f, vec2<bool>(true, false), vec4<i32>(u_input.b.x, 1i, u_input.c.x, u_input.a)), Struct_1(257f, vec2<bool>(true, false), vec4<i32>(u_input.e, -1i, -2982i, 16661i)), false), _wgslsmith_f_op_f32(f32(-1f) * -1487f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(129f)) * _wgslsmith_f_op_f32(trunc(-1306f))), _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(-651f, vec2<bool>(false, false), vec4<i32>(u_input.a, 0i, -10970i, u_input.b.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-604f, -588f), vec2<f32>(-294f, 1251f), vec2<bool>(false, true)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-726f, 787f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -199f)), true)))));
    global0 = 57303u;
    global0 = 49785u;
    var var_1 = Struct_1(var_0.x, vec2<bool>(_wgslsmith_clamp_i32(1i, abs(u_input.d), u_input.c.x) <= u_input.b.x, true), min(~(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -7090i, -33110i), vec4<i32>(u_input.c.x, 1i, -2932i, u_input.c.x))), ~vec4<i32>(-u_input.e, -u_input.b.x, u_input.d, _wgslsmith_mod_i32(u_input.d, u_input.c.x))));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~1u), ~24123u);
    let var_3 = max(firstLeadingBit(~_wgslsmith_sub_vec3_i32(var_1.c.wzy, vec3<i32>(u_input.d, -2147483647i, 0i))) ^ ~(~vec3<i32>(-37763i, 0i, -2147483647i)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.c.x >> (8201u % 32u), -4188i, u_input.e), 2147483647i), var_1.c.x, _wgslsmith_mod_i32(abs(~u_input.a), firstLeadingBit(~var_1.c.x))));
    let var_4 = ~_wgslsmith_mult_i32(7151i, 1i);
    var var_5 = ~vec4<u32>(1u, 1u, 1u, 1u) | vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), true), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_mod_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(1542u, 4294967295u, 35554u)), 1u), ~firstTrailingBit(35597u)), min(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(7851u, 23880u), 790u)), (firstLeadingBit(20785u) << (1u % 32u)) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29548u, 0u, 1u, 84511u), vec4<u32>(0u, 100057u, 66543u, 1u)), 0u) % 32u));
    let var_6 = Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), true)), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(var_0.x, vec2<bool>(false, false), var_1.c)), vec2<i32>(u_input.b.x, -6788i), Struct_2(Struct_1(1405f, vec2<bool>(true, var_1.b.x), var_1.c), Struct_1(-754f, var_1.b, var_1.c), var_1.b.x), var_0.x))))), vec2<bool>(false, true), vec4<i32>(u_input.e, _wgslsmith_div_i32(1i, 48718i | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.e, 2147483647i), vec3<i32>(var_3.x, var_4, var_3.x))), ~var_4, reverseBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1107f, 1385f, var_1.a, var_6.a), vec4<f32>(1000f, -2021f, 114f, var_1.a), var_1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(257f, var_0.x, var_1.a, 137f), vec4<f32>(var_6.a, 926f, var_0.x, var_0.x)))))), vec3<u32>(106285u, 0u, 1u), var_0.x, firstTrailingBit(-(_wgslsmith_div_i32(u_input.e, 19662i) | _wgslsmith_mult_i32(1i, -21823i))));
}

