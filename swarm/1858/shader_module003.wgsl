struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = !select(arg_0.x, arg_0.x, !arg_0.x);
    let var_1 = _wgslsmith_mult_i32(-_wgslsmith_sub_i32(abs(0i), -42203i), 33966i);
    var var_2 = Struct_4(Struct_2(~(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), min(-(~(~(-79164i))), 2147483647i), select(select(true, true, var_0), false, select(true, arg_0.x, true)), -843f);
    let var_3 = Struct_1(vec4<bool>(arg_0.x, any(vec4<bool>(var_0, arg_0.x, true, false)), var_0, false), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, var_2.d, _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(805f - var_2.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(step(var_2.d, -1771f)), var_2.d, -589f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2045f, var_2.d, 1000f, 1626f))), all(vec4<bool>(!var_2.c, false, true, any(vec3<bool>(var_2.c, false, var_2.c)))))));
    let var_4 = var_3.c.xx;
    return (1u ^ ~u_input.a.x) < var_2.a.a;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec4<bool>(320f != _wgslsmith_f_op_f32(select(776f, 1788f, arg_0)), false, true, arg_0), func_3(vec2<bool>(true, true)), vec4<f32>(-559f, _wgslsmith_f_op_f32(f32(-1f) * -1392f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f - 128f) + 1000f))), !(!any(vec2<bool>(true, true))), _wgslsmith_clamp_i32(reverseBits(abs(-1i)), abs(firstTrailingBit(_wgslsmith_mod_i32(-1i, -21571i))), 0i));
    var var_1 = u_input.a.x;
    var_0 = Struct_3(Struct_1(vec4<bool>(true, var_0.c > ~var_0.c, false, any(!var_0.a.a.yxy)), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(-var_0.a.c.x), -908f)))), any(vec4<bool>(true, arg_0 | false, false, all(var_0.a.a.xw))), 0i << (0u % 32u));
    let var_2 = (i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.c, var_0.c, -31244i), -1i >> (0u % 32u), 2147483647i)) << (0u % 32u);
    let var_3 = var_0.b;
    return Struct_2(u_input.a.x << (~2793u % 32u));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-407f))) + _wgslsmith_f_op_f32(max(-971f, _wgslsmith_div_f32(arg_0.d, 1031f)))), _wgslsmith_f_op_f32(597f - _wgslsmith_f_op_f32(max(arg_0.d, 542f))), arg_0.d));
    let var_1 = ~vec3<i32>(-1i, -1i, _wgslsmith_add_i32(arg_0.b, -5102i));
    let var_2 = 1136f;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(step(arg_0.d, arg_0.d)), -2425f) - var_0) - var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.d, -477f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 218f, 1717f, var_0.x))))), vec4<bool>(!(!(!arg_0.c)), func_3(vec2<bool>(4294967295u > arg_0.a.a, arg_0.c)), arg_0.c, arg_0.c)));
    let var_4 = _wgslsmith_f_op_f32(-var_3.x);
    return Struct_1(vec4<bool>(all(vec4<bool>(any(vec2<bool>(arg_0.c, false)), false, all(vec3<bool>(arg_0.c, arg_0.c, false)), arg_0.c)), false, _wgslsmith_mult_u32(arg_0.a.a, ~0u) <= arg_0.a.a, !func_3(vec2<bool>(true, true))), any(!(!select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, arg_0.c), false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(var_4, -821f, var_0.x, 1002f), vec4<f32>(var_4, -680f, 1040f, var_3.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 1265f, var_3.x, 1031f)))))), select(select(vec4<bool>(true, arg_0.c, true, true), !vec4<bool>(true, false, arg_0.c, false), arg_0.c), select(select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), vec4<bool>(false, arg_0.c, true, false), vec4<bool>(true, arg_0.c, true, false)), select(vec4<bool>(false, arg_0.c, false, false), vec4<bool>(arg_0.c, arg_0.c, true, true), vec4<bool>(arg_0.c, false, arg_0.c, true)), arg_0.c), any(vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c)) | !arg_0.c))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_3(func_4(Struct_4(func_2(true), 16887i, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-100f + -903f))))), true, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-47995i, -1i), vec2<i32>(19461i, 2147483647i) << (u_input.a % vec2<u32>(32u))), max(vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(1i, 1i)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~abs(~vec4<u32>(0u, arg_0.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(28120u, 1u, 0u), u_input.a.x, 0u >> (0u % 32u)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 38852u)), ~4294967295u, 1183u, 1u << (arg_0.x % 32u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a.x, ~51285u, _wgslsmith_mult_u32(u_input.a.x, arg_0.x), ~arg_0.x) | ~vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, u_input.a.x), ~reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)) & vec4<u32>(0u, 1u, ~29453u, ~4294967295u)), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(40487u, 29485u), vec2<u32>(14507u, u_input.a.x))) << (vec4<u32>(firstLeadingBit(1u), 1u, min(1u, reverseBits(arg_0.x)), u_input.a.x) % vec4<u32>(32u)));
    var_1 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.x, 1u, 4294967295u, 38442u), vec4<u32>(_wgslsmith_div_u32(arg_0.x, arg_0.x), 1u, arg_0.x, arg_0.x & 20046u), vec4<u32>(52809u & u_input.a.x, arg_0.x, u_input.a.x ^ u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), var_0.a.c.x, var_0.a.c.x) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.c.x + var_0.a.c.x), -923f, _wgslsmith_f_op_f32(sign(124f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(839f, var_0.a.c.x, -431f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x) - vec3<f32>(-1113f, -1603f, 1142f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(min(430f, var_0.a.c.x)))), !(!var_0.b | true))));
    let var_3 = 0i;
    return Struct_3(var_0.a, var_0.c < -1i, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-1i, var_3)), vec2<i32>(_wgslsmith_div_i32(var_0.c, var_3), -50756i << (u_input.a.x % 32u))) & -_wgslsmith_mod_i32(var_0.c, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.x);
    var var_1 = ~(~reverseBits(vec2<i32>(1i, _wgslsmith_mod_i32(26818i, 1i))));
    let var_2 = Struct_4(Struct_2(~1u), var_1.x, min(1i, 2147483647i) == var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-465f)) * _wgslsmith_div_f32(331f, -1777f)))));
    let var_3 = func_1(vec2<u32>(~(~_wgslsmith_add_u32(var_0.a, var_0.a)), 4995u));
    var var_4 = ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, var_2.a.a, 4294967295u) >> (vec3<u32>(u_input.a.x, var_2.a.a, 0u) % vec3<u32>(32u))), abs(~vec3<u32>(1u, 1u, 4294967295u))) <= 4294967295u;
    var var_5 = var_2.a;
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-(~var_3.c), 1i, var_2.b, func_1(vec2<u32>(var_0.a, u_input.a.x)).c), select(firstTrailingBit(29417u), 34895u, var_6), vec3<u32>(63432u, ~4294967295u, (66142u & (var_0.a & var_2.a.a)) | 1u), _wgslsmith_f_op_vec4_f32(round(var_3.a.c)));
}

