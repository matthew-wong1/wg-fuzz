struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = !(all(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x), true)) && true);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-268f)) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * -1267f)))), 320f));
    let var_2 = Struct_2(arg_1.b.x);
    var var_3 = 177f;
    var var_4 = u_input.c;
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(floor(1513f));
    let var_1 = ~firstLeadingBit(u_input.c);
    var var_2 = _wgslsmith_add_vec3_u32(select(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.a, 22296u, 16557u)), ~vec3<u32>(arg_1, u_input.a, arg_0.a)), ~(~vec3<u32>(40u, arg_1, arg_0.a)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(85418u, u_input.a, arg_0.a)), min(~vec3<u32>(6752u, arg_1, 4294967295u), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(arg_0.a, 0u, 25819u), vec3<bool>(true, false, false))))) ^ vec3<u32>(arg_0.a << (_wgslsmith_div_u32(max(arg_1, 50361u), max(u_input.a, 1u)) % 32u), ~u_input.a, arg_0.a ^ _wgslsmith_clamp_u32(~1u, select(arg_0.a, 3227u, true), _wgslsmith_div_u32(u_input.a, 90358u)));
    let var_3 = ~vec3<i32>(_wgslsmith_mult_i32(~(-2147483647i), min(u_input.d ^ -9032i, 2147483647i)), u_input.d, _wgslsmith_div_i32(u_input.b, (var_1.x ^ var_1.x) | (var_1.x ^ -43971i)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-167f + _wgslsmith_div_f32(744f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(var_0 * -908f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.x, var_0, 414f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -522f, var_4.x))) - vec3<f32>(-300f, _wgslsmith_f_op_f32(step(var_4.x, var_0)), _wgslsmith_f_op_f32(abs(1018f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -462f))), _wgslsmith_f_op_f32(-279f - var_0), var_0)));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_3(~arg_1, (27934i <= -_wgslsmith_dot_vec3_i32(vec3<i32>(-22499i, arg_1, -2147483647i), u_input.c)) & all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), all(vec2<bool>(true, true)))), u_input.d);
    let var_1 = true;
    let var_2 = var_0.b;
    let var_3 = vec4<bool>(true, var_2, true, -_wgslsmith_dot_vec2_i32(~u_input.c.xz, _wgslsmith_add_vec2_i32(vec2<i32>(20535i, u_input.b), u_input.c.yx)) <= var_0.a);
    let var_4 = any(vec3<bool>(var_0.b, -(-1i ^ u_input.d) < u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -43312i, -2147483647i) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, 0i, u_input.d)) <= (~arg_1 >> (4294967295u % 32u))));
    return select(var_3.yx, !vec2<bool>(var_3.x | true, !(!var_2)), var_0.b);
}

fn func_1() -> f32 {
    let var_0 = Struct_3(u_input.c.x, func_2(abs(_wgslsmith_mod_i32(u_input.c.x, u_input.d)), Struct_1(vec3<i32>(u_input.c.x, -1i, -39268i), countOneBits(vec4<u32>(25577u, 15842u, u_input.a, u_input.a)), _wgslsmith_mult_i32(u_input.c.x, 1i), vec2<bool>(true, true))) & (!any(vec4<bool>(true, false, false, false)) & (2147483647i == u_input.d)), _wgslsmith_mod_i32(-u_input.d, ~2147483647i));
    var var_1 = Struct_1(vec3<i32>(0i, ~2147483647i, -18946i), abs(vec4<u32>(38384u, u_input.a ^ 64447u, 0u, ~u_input.a) << (vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), ~u_input.a, ~71433u, 4294967295u) % vec4<u32>(32u))), 6278i, func_4(_wgslsmith_f_op_f32(-1352f + _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(step(332f, -316f)), !var_0.b))), i32(-1i) * -_wgslsmith_mod_i32(var_0.a, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1148f, -219f, -754f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(u_input.a), 4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, 1791f, 1704f) + vec3<f32>(407f, 865f, 1265f))))));
    var_1 = Struct_1(var_1.a, var_1.b, var_0.a, !func_4(_wgslsmith_f_op_f32(f32(-1f) * -249f), u_input.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(222f, -1163f, -1778f)))));
    var var_2 = -max(vec3<i32>(min(var_1.c, 2147483647i) >> (1352u % 32u), 1i, var_1.c & u_input.d), var_1.a);
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1450f + 192f)))) + _wgslsmith_f_op_f32(f32(-1f) * -853f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = vec2<f32>(_wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1554f, var_0, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), 1855f)));
    var var_2 = _wgslsmith_div_f32(-611f, _wgslsmith_f_op_f32(floor(var_1.x)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -2314f));
    let var_3 = 16320i;
    var_2 = 750f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(max(1u << (~u_input.a % 32u), reverseBits(u_input.a)), ~1u), max(~abs(var_3), _wgslsmith_mult_i32(u_input.d, ~(-46895i))), firstTrailingBit(firstTrailingBit(_wgslsmith_sub_i32(-10696i, -var_3))), u_input.a);
}

