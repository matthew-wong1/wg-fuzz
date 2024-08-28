struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f * _wgslsmith_f_op_f32(908f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1955f)), 548f)))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(123f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -886f), 1f)))));
    global0 = -1000f;
    let var_0 = Struct_1(u_input.b.x, select(!(!any(vec4<bool>(false, true, false, false))), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true), select(false, !all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))) || select(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), false));
    var var_1 = !var_0.c != !any(!vec3<bool>(var_0.c, var_0.c, false));
    return !select(vec3<bool>(all(!vec4<bool>(false, false, true, var_0.b)), all(select(vec4<bool>(var_0.c, var_0.c, var_0.b, var_0.c), vec4<bool>(var_0.b, false, var_0.b, true), var_0.b)), all(select(vec2<bool>(true, false), vec2<bool>(var_0.b, false), vec2<bool>(var_0.c, false)))), select(!select(vec3<bool>(var_0.c, var_0.b, var_0.b), vec3<bool>(false, var_0.c, true), false), vec3<bool>(true, any(vec4<bool>(false, var_0.c, false, var_0.c)), u_input.a != var_0.a), select(select(vec3<bool>(var_0.c, false, true), vec3<bool>(true, var_0.b, false), vec3<bool>(false, var_0.c, false)), !vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(true, true, true))), !(!select(vec3<bool>(true, var_0.c, true), vec3<bool>(true, true, var_0.c), vec3<bool>(true, var_0.c, true))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, 324f, -1232f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1198f, 203f, 266f), vec3<f32>(424f, -771f, -1991f), arg_0.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -440f, 584f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(395f, 1623f, arg_0.x)), _wgslsmith_div_f32(-664f, 1398f), _wgslsmith_f_op_f32(floor(668f))))), -u_input.b.x != _wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.a, select(-6304i, 2147483647i, true)), i32(-1i) * -3702i)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(959f, var_0.x, var_0.x))) - vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(-909f - var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -582f, -1010f), vec3<f32>(var_0.x, -716f, 1402f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(941f, 367f, var_0.x) + vec3<f32>(-174f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(429f, _wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(245f, -965f, var_0.x))), func_3())), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1214f, -1459f)), _wgslsmith_f_op_f32(round(-2291f)), _wgslsmith_f_op_f32(f32(-1f) * -666f)), vec3<f32>(-1432f, 1794f, -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-558f, 983f, var_0.x), vec3<f32>(var_0.x, var_0.x, -1922f))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, max(abs(vec4<i32>(u_input.b.x, 1i, u_input.a, u_input.e.x)), min(~vec4<i32>(-36350i, -5744i, 9159i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, 1i, u_input.b.x)))), false, !arg_0.x);
    var var_2 = u_input.d.wy;
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-472f * -378f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(528f, _wgslsmith_f_op_f32(-582f + _wgslsmith_f_op_f32(sign(-1165f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_1.c, false, true, arg_1.c), u_input.d.x)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-571f, _wgslsmith_f_op_f32(1000f - -1370f), 2007f))));
    let var_1 = u_input.d.x;
    var var_2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(abs(-30074i) | arg_1.a, (arg_0 << (var_1 % 32u)) >> (u_input.c % 32u)), arg_0), arg_1.c, true);
    global0 = var_0.x;
    var var_3 = Struct_1(-arg_0, _wgslsmith_mod_u32(u_input.c, 42098u) != 4294967295u, arg_1.c);
    return Struct_1(~(-(~var_3.a | arg_0)), !var_2.b, any(vec3<bool>(false, any(!vec4<bool>(true, arg_1.b, arg_1.b, false)), var_2.b)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(573f)), -1233f))));
    var var_1 = func_1(select(u_input.b.x, _wgslsmith_mult_i32(u_input.e.x, ~abs(arg_0.x)), func_3().x), arg_1);
    var_1 = arg_1;
    let var_2 = max(_wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.c, 4294967295u, u_input.d.x, 1u), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 12378u, u_input.c)), any(vec4<bool>(true, arg_2, arg_2, var_1.c))), ~(vec4<u32>(1u, u_input.c, 55116u, 4235u) & vec4<u32>(4294967295u, 4294967295u, u_input.c, 65442u))), ~_wgslsmith_add_vec4_u32(~select(u_input.d, vec4<u32>(33689u, u_input.c, 10756u, 49812u), vec4<bool>(true, true, false, true)), _wgslsmith_sub_vec4_u32(u_input.d, u_input.d) ^ ~u_input.d));
    global0 = var_0;
    return -17628i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f), 480f))))));
    var var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-3933i, 54801i, u_input.a, u_input.a), abs(u_input.b)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, 1i, u_input.e.x, -1i), u_input.b), vec4<i32>(u_input.b.x, 3987i, 54953i, -14956i) << (vec4<u32>(u_input.d.x, 1u, u_input.c, 4294967295u) % vec4<u32>(32u)), true)), func_4(_wgslsmith_sub_vec3_i32(~u_input.b.zzy, vec3<i32>(u_input.b.x, u_input.e.x, 0i)), func_1(~u_input.b.x, Struct_1(u_input.b.x, true, false)), false), ~_wgslsmith_div_i32(1i, u_input.a)), false, true);
    var var_1 = !select(!(!vec3<bool>(var_0.b, var_0.c, true)), vec3<bool>(true, !all(vec4<bool>(false, true, true, false)), select(var_0.b, any(vec4<bool>(true, var_0.b, var_0.b, var_0.c)), true)), func_3());
    var var_2 = var_0.b;
    var var_3 = func_1(-var_0.a, func_1(-14368i, Struct_1(u_input.e.x, var_1.x, var_1.x)));
    var_0 = func_1(-55882i, Struct_1(var_3.a, var_1.x, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1362f, ~u_input.d.ww);
}

