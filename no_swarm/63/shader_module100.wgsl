struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = vec4<bool>(true, !(!(true || all(vec4<bool>(false, false, true, false)))), u_input.e > u_input.a, any(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)));
    var var_1 = Struct_1(~vec3<i32>(~u_input.b.x, 1i, ~_wgslsmith_sub_i32(u_input.b.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(501f - _wgslsmith_f_op_f32(trunc(-1203f))), arg_0, _wgslsmith_f_op_f32(-268f * _wgslsmith_f_op_f32(f32(-1f) * -1366f)))), _wgslsmith_sub_vec2_i32(vec2<i32>(max(u_input.d.x, -38810i), -2539i) ^ -(~u_input.b), -vec2<i32>(u_input.b.x, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-977f + 428f)))))));
    var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -25859i, 2147483647i) | max(var_1.a, vec3<i32>(var_1.a.x, 1i, -7528i)), vec3<i32>(u_input.b.x, ~7042i, u_input.c.x)) >> (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.e)), _wgslsmith_sub_u32(u_input.e, u_input.e), u_input.a) % vec3<u32>(32u)), var_1.b, u_input.b);
    var var_3 = Struct_1(select(abs(var_1.a), var_1.a, !var_0.x && all(var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, var_2)), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, u_input.b.x) | u_input.c, max(var_1.a.xy, vec2<i32>(var_1.c.x, 2147483647i)))));
    return ~vec3<i32>(firstTrailingBit(firstTrailingBit(var_3.c.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_3.c.x, var_3.a.x), vec3<i32>(-26463i, 0i, 1i)), 2147483647i);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(min(vec3<i32>(1i, -2147483647i, _wgslsmith_clamp_i32(-58740i, arg_1.x, u_input.d.x)), ~vec3<i32>(arg_1.x, 26029i, u_input.c.x) & vec3<i32>(u_input.b.x, -53743i, 2147483647i)), func_3(616f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-655f, 908f, -1302f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, 157f, 1000f)))))), firstTrailingBit(arg_1 ^ _wgslsmith_sub_vec2_i32(arg_1, arg_1)) << (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.a, arg_0), vec4<u32>(u_input.e, u_input.a, arg_0, arg_0)), max(firstLeadingBit(u_input.e), u_input.e >> (arg_0 % 32u))) % vec2<u32>(32u)));
    var var_1 = Struct_1(reverseBits(~(vec3<i32>(-1i) * -var_0.a)), var_0.b, select(~(firstTrailingBit(var_0.c) << (firstLeadingBit(vec2<u32>(51002u, 19545u)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(~var_0.a.x, _wgslsmith_dot_vec2_i32(var_0.a.xz, u_input.b)), -min(var_0.a.xx, var_0.a.zy)), vec2<bool>(true, true)));
    var var_2 = Struct_1(vec3<i32>(u_input.d.x, firstTrailingBit(_wgslsmith_add_i32(-1i, 0i)), abs(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, -arg_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(936f + 405f) + _wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x + -1146f), var_0.b.x, true)), _wgslsmith_f_op_f32(ceil(280f))) * var_1.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-(var_0.c.x >> (u_input.e % 32u)), -(i32(-1i) * -1i)), ~u_input.b));
    var var_3 = Struct_1(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.x, var_2.a.x, var_0.c.x), var_1.a), var_0.a, firstTrailingBit(var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_0.b.x, var_2.b.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - _wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(var_1.b.x, 251f, 649f))) * vec3<f32>(_wgslsmith_div_f32(var_2.b.x, var_1.b.x), -470f, 793f))), vec2<i32>(-6309i >> (arg_0 % 32u), 1i));
    var_1 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, var_3.a.x, u_input.c.x), func_3(_wgslsmith_f_op_f32(floor(491f))) ^ ~max(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(arg_1.x, var_2.c.x, -1i))), var_1.b, arg_1);
    return !vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true, true, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<bool>(any(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), true);
    var var_1 = all(var_0);
    var_1 = false;
    let var_2 = Struct_1(vec3<i32>(select(u_input.b.x, min(u_input.d.x, u_input.b.x), any(var_0)), firstLeadingBit(-1i), 1i), vec3<f32>(448f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f + 435f) + _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(max(526f, arg_1))))), _wgslsmith_sub_vec2_i32(-((vec2<i32>(-25469i, -17706i) & u_input.c) | abs(u_input.b)), vec2<i32>(i32(-1i) * -u_input.d.x, firstTrailingBit(u_input.d.x))));
    var_1 = any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), !select(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false)), !vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, false), var_0.x)), select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, false, false), true), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x), select(func_2(arg_0.x, var_2.a.yz), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x && false), true)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(u_input.e, u_input.e), u_input.e, u_input.e) << (max(~firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.e, u_input.a, 4294967295u))), vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), u_input.e, abs(15685u))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b.x, arg_0.b.x, -462f, arg_2.b.x)));
    let var_2 = arg_0.b.x;
    let var_3 = 1u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b) * func_1(vec2<u32>(~(var_0.x ^ var_0.x), _wgslsmith_add_u32(~var_0.x, var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(max(u_input.c.x, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(2147483647i, u_input.c.x))), ~u_input.b.x, ~select(abs(20353i), _wgslsmith_add_i32(u_input.b.x, u_input.c.x), all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<i32>(u_input.c.x, 94i, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -169f, 1941f) - vec3<f32>(896f, 1817f, -189f)), vec2<i32>(u_input.c.x, 2147483647i) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), func_1(~vec2<u32>(0u, 51348u), _wgslsmith_f_op_f32(1275f * 344f)), Struct_1(vec3<i32>(2147483647i, -16066i, -24600i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-671f, -561f, 1000f), vec3<f32>(1025f, 327f, 756f), vec3<bool>(true, true, true))), ~vec2<i32>(u_input.d.x, u_input.d.x))))), ~u_input.b);
    var var_1 = var_0;
    let var_2 = ~u_input.e;
    var_1 = Struct_1(reverseBits(min(~var_0.a, var_1.a & vec3<i32>(14805i, 1i, u_input.d.x))) << (vec3<u32>(~(0u >> (0u % 32u)), 65705u, 28399u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(-549f, 983f, var_1.b.x) * var_0.b)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) * var_0.b.x), _wgslsmith_f_op_f32(533f + var_1.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x + -1003f))))), var_0.c);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, -566f, var_3.b.x, var_1.b.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(265f, var_3.b.x, var_1.b.x, 131f)))))), abs(0i), -21291i);
}

