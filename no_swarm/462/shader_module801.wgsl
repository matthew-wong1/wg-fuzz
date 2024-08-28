struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = ~(vec3<u32>(1u, 1u, _wgslsmith_sub_u32(max(4294967295u, 34827u), 1u)) & vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(13231u, 43538u)), ~(~0u), ~firstTrailingBit(4294967295u)));
    var var_1 = -1i;
    return vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-213f, arg_0)))))));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = ~(_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 55742u, 59115u), max(1u, 4294967295u), select(1u, 0u, true))) << (min(~abs(1u), abs(1u)) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(-523f)).x;
    var_1 = 647f;
    var var_2 = vec2<i32>(u_input.a, -_wgslsmith_div_i32(u_input.a, ~u_input.a) | -1i);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(251f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1311f), true)) * arg_1);
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, var_2.x, u_input.a) >> (vec3<u32>(var_0, var_0, var_0) % vec3<u32>(32u)), ~(-vec3<i32>(u_input.a, var_2.x, u_input.a))), _wgslsmith_clamp_vec3_i32((vec3<i32>(var_2.x, 14189i, var_2.x) << (vec3<u32>(0u, var_0, 65u) % vec3<u32>(32u))) & countOneBits(vec3<i32>(-2147483647i, var_2.x, -20171i)), abs(vec3<i32>(u_input.a, -10546i, 1i) ^ vec3<i32>(var_2.x, 8668i, u_input.a)), vec3<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -2147483647i), -9875i))), -31129i, -1i);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = vec2<i32>(1i, arg_0);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(578f, arg_3) * vec2<f32>(arg_3, 329f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3, arg_3), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 676f)), vec2<bool>(arg_2, false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1485f) + vec2<f32>(arg_3, -623f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(abs(-905f))));
    let var_2 = -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_1, abs(arg_1)), firstTrailingBit(arg_1));
    let var_3 = true;
    var var_4 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(func_3(-136f, arg_3)), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 41764i, arg_0), arg_1.wyy)), -(~_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), var_0)), ~abs(arg_1.wz)), vec2<i32>(select(_wgslsmith_mult_i32(-3203i, u_input.a), _wgslsmith_mod_i32(u_input.a, ~(-14757i)), var_3), arg_1.x));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(827f, -135f, 712f), vec3<f32>(779f, 660f, 164f), vec3<bool>(false, true, false))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-613f, -1388f, -531f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(919f, -654f, 1033f) + vec3<f32>(-1607f, -208f, 563f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-443f, 131f, -1000f))) * vec3<f32>(-562f, 1649f, 280f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2015f))), var_0.x, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(823f, var_0.x, var_0.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-302f, -281f, var_0.x) + vec3<f32>(var_0.x, var_0.x, -374f)), _wgslsmith_f_op_vec3_f32(func_1(1414f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, var_0.x))))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), true), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false, all(vec2<bool>(true, true))), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(883f - 1317f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))))));
    let var_2 = vec2<u32>(abs(~7313u), 40454u);
    let var_3 = false & !func_2(abs(14038i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, -33449i, -44119i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(12825i, u_input.a, -18748i, 0i), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1i)), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) << (vec4<u32>(var_2.x, var_2.x, 77516u, var_2.x) % vec4<u32>(32u))), true, _wgslsmith_f_op_f32(-var_0.x));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -616f)), var_0.yx);
    var var_5 = var_2.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.x), var_4.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(71923u, _wgslsmith_div_u32(max(var_2.x, max(var_2.x, abs(31096u))), 8821u | (var_2.x >> (1u % 32u))), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(var_2.x, ~var_2.x)), _wgslsmith_mod_vec2_u32(select(~var_2, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 34183u), var_2, vec2<u32>(var_2.x, var_2.x)), !var_3), vec2<u32>(~8698u, _wgslsmith_dot_vec2_u32(var_2, var_2)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, var_4.x, var_4.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_4.x, var_4.x, false)), 532f, _wgslsmith_f_op_f32(-var_4.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(744f, 1192f, var_4.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1221f, -812f, var_4.x) * vec3<f32>(var_4.x, var_4.x, 662f))))));
}

