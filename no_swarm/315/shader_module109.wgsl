struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = true;
    global0 = arg_0.x;
    global0 = _wgslsmith_dot_vec2_u32(~arg_0.yz, vec2<u32>(arg_0.x & u_input.b.x, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 29781u, arg_0.x, 78712u), arg_0), ~1u)));
    var var_1 = abs(_wgslsmith_clamp_u32(9050u, min(arg_0.x, ~0u) << (~1u % 32u), arg_0.x));
    let var_2 = var_0;
    return u_input.a.x;
}

fn func_2() -> f32 {
    global0 = max(_wgslsmith_div_u32(u_input.b.x, 1u), 58646u);
    global1 = (i32(-1i) * -68416i) < firstLeadingBit(~func_3(vec4<u32>(1u, u_input.b.x, 5461u, u_input.b.x)));
    let var_0 = Struct_3(true, Struct_1(vec4<f32>(1353f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1716f), _wgslsmith_f_op_f32(f32(-1f) * -568f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2007f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-555f + -1743f)))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, 0i), ~u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)) << (_wgslsmith_mult_vec2_u32(~u_input.b, u_input.b) % vec2<u32>(32u)), firstTrailingBit(~vec3<i32>(1i, u_input.a.x, -7426i)) & vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -1049i, 1i), vec2<i32>(u_input.a.x, -(~0i))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1725f), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -663f)))))));
    let var_1 = 1i <= firstLeadingBit(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f - var_0.b.a.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))))));
    return _wgslsmith_f_op_f32(-var_0.c.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = -11164i;
    global1 = all(select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), vec4<bool>(min(arg_2, var_0) < _wgslsmith_sub_i32(-79072i, arg_1), select(any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), -6323i > var_0), true, any(vec3<bool>(true, true, true))), !any(vec2<bool>(true, false)) || true));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(select(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u), u_input.b.x, all(vec3<bool>(true, true, false))), u_input.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(104216u, 29653u, u_input.b.x), vec3<u32>(29823u, 12467u, u_input.b.x))), ~vec2<u32>(26131u, _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u))) | ~(~vec2<u32>(15037u, u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) - _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, 946f))))), 2127f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x));
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    global1 = all(!vec2<bool>(any(vec2<bool>(true, true)), false));
    global0 = ~u_input.b.x ^ (~((u_input.b.x | u_input.b.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 44334u), u_input.b)) << (~max(~u_input.b.x, 0u) % 32u));
    global1 = true;
    let var_0 = vec3<bool>(!(!(u_input.a.x >= arg_1.b.x)), false, u_input.b.x != (min(u_input.b.x, 0u) << (~u_input.b.x % 32u)));
    global1 = !func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2()), 556f, arg_0), ~u_input.a.x, -arg_1.d.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.a.x, -667f, var_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(abs(arg_1.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-284f * 1068f), Struct_1(vec4<f32>(-1531f, 344f, -115f, -1420f), vec2<i32>(1i, -9917i), vec3<i32>(27336i, 16053i, 2147483647i), u_input.a)))) != -916f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-636f, -937f), 190f)) + _wgslsmith_f_op_f32(-679f * _wgslsmith_f_op_f32(f32(-1f) * -580f))) - -758f) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1667f, -770f))) - 461f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(126f)) * _wgslsmith_f_op_f32(func_1(-517f, Struct_1(vec4<f32>(1000f, 714f, 456f, 380f), vec2<i32>(u_input.a.x, 29175i), vec3<i32>(1i, u_input.a.x, u_input.a.x), u_input.a)))), -362f), all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), true))));
    let var_0 = vec2<u32>(firstTrailingBit(30668u), ~(abs(u_input.b.x ^ 1u) | ~(~u_input.b.x)));
    global1 = false;
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-327f)), 4294967295u);
}

