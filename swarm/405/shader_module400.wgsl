struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = vec3<u32>(max(~(~56831u), 22299u), ~(~u_input.d), ~countOneBits(~0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, u_input.d)) % 32u)));
    global0 = vec4<i32>(_wgslsmith_add_i32(global0.x, firstTrailingBit(_wgslsmith_div_i32(~global0.x, _wgslsmith_div_i32(-60464i, -2147483647i)))), global0.x, _wgslsmith_mult_i32(max(-(global0.x & u_input.b.x), global0.x), -20426i), -(~1i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1181f)) * -1177f)));
    let var_2 = true;
    let var_3 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), var_2), vec2<bool>(false, var_2)), vec2<bool>(select(true, true, true), -409f <= var_1.a), vec2<bool>(var_2, false)), vec2<bool>(select(true, all(vec3<bool>(var_2, false, var_2)), var_2), all(select(vec2<bool>(var_2, false), vec2<bool>(var_2, false), vec2<bool>(true, true)))), vec2<bool>(!(var_1.a > -1624f), any(!vec3<bool>(false, true, var_2)))), vec2<bool>(true, -1i != _wgslsmith_dot_vec4_i32(vec4<i32>(5266i, global0.x, global0.x, 2147483647i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(global0.x, 80066i, 2147483647i, -1i))), vec2<bool>(any(select(vec2<bool>(false, var_2), vec2<bool>(var_2, true), vec2<bool>(true, false))) == ((var_0.x <= var_0.x) & false), var_2 != false));
    return !(min(u_input.d, var_0.x) < u_input.c.x);
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(-1i);
    var_0 = -u_input.b.x;
    let var_1 = Struct_2(select(vec4<bool>(!func_3(), false, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), !vec4<bool>(any(vec4<bool>(true, true, false, true)), true, false, true), vec4<bool>(select(true, false, false), func_3(), true, all(vec2<bool>(false, false)))));
    let var_2 = var_1;
    var var_3 = min(global0.x, _wgslsmith_clamp_i32(global0.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), abs(1i)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1443f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-796f, _wgslsmith_f_op_f32(step(-810f, -513f)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f)))));
}

fn func_1(arg_0: i32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1736f)) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(715f, -269f)), -113f)))));
    var_0 = func_2();
    var var_1 = true;
    var var_2 = var_0.a <= var_0.a;
    global0 = vec4<i32>(abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(25312i, -2147483647i, -1i, 0i), vec4<i32>(29892i, u_input.b.x, arg_0, -2147483647i), all(vec3<bool>(false, false, false))), vec4<i32>(-arg_0, u_input.b.x | 0i, 63997i, arg_0))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.yz, ~vec2<i32>(0i, global0.x)) >> ((u_input.a.xy | u_input.a.yw) % vec2<u32>(32u)), -abs(~u_input.b)), u_input.b.x, _wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_mod_i32(50604i, _wgslsmith_clamp_i32(0i, -12986i, u_input.b.x) & 1i)));
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 535f) - 382f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) - var_0.a))), _wgslsmith_f_op_f32(-768f * 2111f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-774f)), -1414f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(597f - -686f), _wgslsmith_f_op_f32(963f * 852f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0.x)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(1633f, 130f)), vec2<f32>(1559f, _wgslsmith_div_f32(var_0.x, var_0.x))))));
    let var_1 = var_0.x;
    var var_2 = u_input.a;
    let var_3 = true;
    global0 = abs(vec4<i32>(select(abs(~global0.x), _wgslsmith_mult_i32(u_input.b.x, 2147483647i), true), -7051i, u_input.b.x, global0.x));
    var var_4 = ~u_input.a.xwx;
    var var_5 = _wgslsmith_sub_vec2_i32(u_input.b, ~vec2<i32>(_wgslsmith_mod_i32(global0.x, u_input.b.x), _wgslsmith_clamp_i32(2147483647i, 1i, -2147483647i))) << (vec2<u32>(var_2.x, u_input.c.x) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(576f, var_0.x) * vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(809f, 1086f)), vec2<f32>(var_0.x, var_0.x), var_3)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(929f, var_0.x))))), var_0.x), func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(687f, 1030f))), vec4<i32>(-global0.x, ~20876i, -(~firstLeadingBit(25824i)), -2147483647i));
}

