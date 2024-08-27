struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    var var_0 = vec3<u32>(~87631u, (abs(1u) | u_input.d) & u_input.d, u_input.d);
    var_0 = vec3<u32>(~_wgslsmith_div_u32(~1u, ~(~var_0.x)), _wgslsmith_sub_u32(~(~var_0.x >> (~0u % 32u)), 1u), 0u);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    var var_0 = all(vec3<bool>(arg_0.b, !any(vec2<bool>(arg_0.b, true)), arg_1.x < _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(-643f, arg_1.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1));
    var var_2 = any(vec3<bool>(false, true, false));
    let var_3 = !select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(select(arg_0.b, true, arg_0.b), true), false), vec2<bool>(!arg_0.b, false), arg_0.b);
    var_0 = (_wgslsmith_f_op_f32(876f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1374f, -1356f, true))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(370f)) + 879f)) || all(vec3<bool>(true && arg_0.b, true, true));
    return arg_0.a.x;
}

fn func_2() -> f32 {
    let var_0 = true;
    let var_1 = vec4<u32>(func_4(Struct_1(select(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(24795u, 4294967295u, 26444u), vec3<bool>(var_0, var_0, false)) ^ vec3<u32>(8771u, u_input.d, 0u), func_3(), vec3<u32>(u_input.d, u_input.d, u_input.d), 1u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-913f, -322f, var_0)) * _wgslsmith_f_op_f32(781f + 1696f)), 1168f)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.d, ~u_input.d), _wgslsmith_mod_u32(u_input.d, min(1u, 37662u))), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, u_input.d)), ~(vec2<u32>(u_input.d, 63989u) | vec2<u32>(1u, u_input.d)), true)), 1u, 20045u);
    let var_2 = ~4072i;
    return _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(206f)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    var var_0 = -1606f;
    var_0 = _wgslsmith_f_op_f32(func_2());
    var_0 = _wgslsmith_f_op_f32(floor(1f));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = Struct_1(~firstTrailingBit(~vec3<u32>(1u, 15644u, u_input.d)), true, abs(~(vec3<u32>(92381u, 0u, 4294967295u) >> (vec3<u32>(73179u, arg_1.x, arg_0) % vec3<u32>(32u)))) << ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 7422u, 15531u, arg_0), vec4<u32>(47276u, 0u, u_input.d, arg_0)), arg_1.x, u_input.d) & vec3<u32>(1u, ~33832u, ~u_input.d)) % vec3<u32>(32u)), abs(arg_0));
    return -firstTrailingBit(~1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(func_1(_wgslsmith_mod_u32(u_input.d, u_input.d & u_input.d), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 1u), vec2<u32>(37382u, u_input.d) & vec2<u32>(u_input.d, u_input.d))), -1i);
    var var_1 = max(~(~vec2<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), u_input.d)), vec2<u32>(~28300u, u_input.d) & vec2<u32>(32236u, 4294967295u));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_mult_vec4_i32(select(~(~abs(vec4<i32>(0i, -53374i, u_input.a.x, var_0.x))), -vec4<i32>(var_0.x & 17807i, 49580i, 1i, abs(u_input.a.x)), select(vec4<bool>(func_3(), false, false, true), vec4<bool>(true, var_0.x > var_0.x, any(vec4<bool>(true, false, false, false)), true), true)), vec4<i32>(firstLeadingBit(u_input.b & _wgslsmith_sub_i32(var_0.x, 2147483647i)), _wgslsmith_div_i32(~var_0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, 37394i, u_input.b), vec3<i32>(u_input.b, 2147483647i, -2147483647i) << (vec3<u32>(4098u, var_1.x, 0u) % vec3<u32>(32u)))), _wgslsmith_mod_i32((-1i & var_0.x) ^ (u_input.a.x | var_0.x), var_0.x), abs(u_input.a.x) | var_0.x));
    var_2 = var_0.x;
    var_1 = vec2<u32>(48635u, _wgslsmith_add_u32(73068u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(27742u, 6476u)), vec2<u32>(u_input.d, 77814u))));
    let x = u_input.a;
    s_output = StorageBuffer(-35654i, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-559f))))), _wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(step(-988f, _wgslsmith_f_op_f32(-1172f - _wgslsmith_f_op_f32(select(-533f, 919f, true)))))), u_input.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, 1434f)), vec2<f32>(-1000f, 219f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1822f, -1817f), vec2<f32>(-1000f, -400f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, 486f) - vec2<f32>(-711f, 1799f))), !select(true, false, false))))), ~select(var_1.x, ~var_1.x, true));
}

