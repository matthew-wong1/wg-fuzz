struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = arg_1.b;
    var_0 = arg_1.b;
    var_0 = ~firstTrailingBit(~arg_1.c);
    var_0 = ~4294967295u;
    return abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(45374u, arg_1.c), 75798u, ~arg_1.b), vec3<u32>(arg_1.c, abs(arg_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_1.c, 27762u, 50227u), vec4<u32>(arg_1.b, 7406u, arg_1.c, arg_1.b)))), _wgslsmith_mult_vec3_u32(vec3<u32>(40886u, arg_1.c, arg_1.c) ^ vec3<u32>(0u, 0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(24901u, 51461u, arg_1.b) >> (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(arg_1.b, 6487u, arg_1.b))), select(~vec3<u32>(arg_1.b, 4294967295u, arg_1.c) & _wgslsmith_add_vec3_u32(vec3<u32>(47522u, arg_1.c, arg_1.c), vec3<u32>(arg_1.c, arg_1.b, 10186u)), firstLeadingBit(vec3<u32>(arg_1.c, arg_1.b, 34501u)) << (firstLeadingBit(vec3<u32>(35462u, arg_1.b, 4294967295u)) % vec3<u32>(32u)), !(!arg_1.e.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(u_input.a, u_input.a >> (~(~30010u) % 32u)), ~abs(-vec2<i32>(u_input.a, -59853i) | firstLeadingBit(vec2<i32>(u_input.a, -2147483647i))), 2147483647i);
    var var_1 = ~(~select(select(func_3(Struct_1(vec2<i32>(-2147483647i, 51710i), var_0.a, -8820i), Struct_4(vec4<i32>(var_0.a.x, -1i, var_0.c, var_0.c), 0u, 0u, Struct_1(vec2<i32>(var_0.c, 368i), var_0.a, -2405i), vec4<bool>(true, false, false, true)), vec4<i32>(u_input.a, u_input.a, var_0.c, 0i)), ~vec3<u32>(47264u, 63995u, 21426u), vec3<bool>(true, true, true)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(364f * 200f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(465f, 137f))));
    let var_3 = Struct_2(Struct_1(vec2<i32>(var_0.a.x, -2147483647i >> (_wgslsmith_add_u32(var_1.x, var_1.x) % 32u)), vec2<i32>(1i & -u_input.a, select(_wgslsmith_add_i32(3736i, u_input.a), 2147483647i, var_2.x < var_2.x)), (i32(-1i) * -1i) << (var_1.x % 32u)), Struct_1(~(~var_0.b), var_0.b, i32(-1i) * -5886i), Struct_1(var_0.a, ~(-vec2<i32>(50019i, u_input.a)) ^ var_0.b, var_0.c), _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.a, 2147483647i, u_input.a) << (vec3<u32>(var_1.x, var_1.x, 4294967295u) % vec3<u32>(32u))), vec3<i32>(var_0.b.x, min(_wgslsmith_clamp_i32(var_0.a.x, u_input.a, var_0.b.x), var_0.c), -u_input.a)));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-2053f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-var_2)));
    return Struct_1(-firstTrailingBit(select(var_0.a, vec2<i32>(var_0.a.x, 31945i), vec2<bool>(true, true))), vec2<i32>(2147483647i, 11730i), reverseBits(i32(-1i) * -1i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_4(select(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -17789i, 21008i, -50607i), vec4<i32>(var_0.b.b.x, 0i, arg_0.c.b.x, -1i), vec4<i32>(arg_2.b.c, arg_0.d.x, -2147483647i, -1i)), vec4<i32>(1i, 23864i, -16081i, var_0.d.x) >> (vec4<u32>(37269u, 4294967295u, 92649u, 0u) % vec4<u32>(32u)), arg_1), vec4<i32>(i32(-1i) * -u_input.a, -13734i, reverseBits(_wgslsmith_mod_i32(0i, 19333i)), -arg_2.b.c | -89117i), true), countOneBits(0u), ~4294967295u, Struct_1(vec2<i32>(-1i) * -vec2<i32>(0i, arg_0.d.x), vec2<i32>(func_1(arg_0, Struct_4(vec4<i32>(1i, arg_2.c.a.x, arg_0.a.c, u_input.a), 4294967295u, 82095u, Struct_1(vec2<i32>(-13125i, arg_0.b.b.x), arg_2.d.yx, u_input.a), vec4<bool>(arg_1, arg_1, arg_1, true)), vec2<f32>(2092f, 1006f), ~vec4<i32>(-40490i, 2147483647i, u_input.a, arg_2.b.b.x)).b.x, ~(-58164i)), -10704i), !(!select(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, true, arg_1, arg_1), arg_1), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, true, false, true), vec4<bool>(false, arg_1, arg_1, arg_1)), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, true, arg_1)))));
    var var_2 = vec3<bool>(!(var_1.c > firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, var_1.c, 1u), vec3<u32>(29558u, 56669u, var_1.c)))), !any(var_1.e), var_1.e.x);
    let var_3 = false;
    var var_4 = true;
    return var_1.d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.x)) + arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) * _wgslsmith_f_op_f32(-arg_1.a.x)) * 2052f) - 515f));
    var var_1 = func_1(arg_0, Struct_4(vec4<i32>(40669i, -25758i, firstTrailingBit(reverseBits(-30456i)), _wgslsmith_div_i32(1i, 31055i)), 1u, ~(~_wgslsmith_div_u32(3181u, 78042u)), func_4(arg_0, !all(vec2<bool>(arg_1.b, true)), arg_0), select(!(!vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b)), vec4<bool>(arg_1.a.x != 1000f, true, -528f < arg_1.a.x, arg_1.b != false), any(!vec2<bool>(arg_1.b, arg_1.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f + _wgslsmith_f_op_f32(arg_1.a.x - -1917f)) - _wgslsmith_f_op_f32(trunc(-230f))), arg_1.a.x), vec4<i32>(16181i << (1u % 32u), _wgslsmith_clamp_i32(arg_0.c.b.x, u_input.a, -1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), arg_0.b.a), arg_0.d.x >> (_wgslsmith_add_u32(1u, 1u) % 32u), ~u_input.a));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_1.a.x)));
    var var_2 = Struct_3(arg_1.a, all(!select(!vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_1.b, true, false), arg_1.a.x >= arg_1.a.x)));
    let var_3 = arg_0.a;
    return max(arg_0.d, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(Struct_1(vec2<i32>(1i, 1i), -_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.a, u_input.a)), -4540i ^ -u_input.a), func_4(Struct_2(func_1(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-29385i, 61176i), u_input.a), Struct_1(vec2<i32>(u_input.a, -19217i), vec2<i32>(1266i, u_input.a), u_input.a), Struct_1(vec2<i32>(u_input.a, 0i), vec2<i32>(1i, u_input.a), u_input.a), vec3<i32>(-20593i, u_input.a, u_input.a)), Struct_4(vec4<i32>(-13238i, u_input.a, u_input.a, 63869i), 1u, 0u, Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), u_input.a), vec4<bool>(false, true, true, false)), vec2<f32>(2348f, 692f), vec4<i32>(u_input.a, 6907i, u_input.a, u_input.a)), Struct_1(vec2<i32>(u_input.a, -15419i), vec2<i32>(2147483647i, u_input.a), u_input.a), Struct_1(vec2<i32>(8670i, u_input.a), vec2<i32>(-1171i, -60063i), 6302i), vec3<i32>(u_input.a, 0i, u_input.a)), true, Struct_2(Struct_1(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(7395i, -2147483647i), -1i), func_1(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i), -1i), Struct_1(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a), u_input.a), Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.a, u_input.a), u_input.a), vec3<i32>(u_input.a, -13496i, 7077i)), Struct_4(vec4<i32>(u_input.a, u_input.a, -58092i, u_input.a), 4294967295u, 27461u, Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i), u_input.a), vec4<bool>(false, true, true, true)), vec2<f32>(447f, -102f), vec4<i32>(u_input.a, u_input.a, 1806i, u_input.a)), func_2(), vec3<i32>(46598i, u_input.a, u_input.a))), Struct_1(vec2<i32>(u_input.a, -u_input.a), -_wgslsmith_sub_vec2_i32(vec2<i32>(12247i, -2147483647i), vec2<i32>(2147483647i, u_input.a)), _wgslsmith_clamp_i32(-48858i, func_2().a.x, firstLeadingBit(u_input.a))), ~abs(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1041f, -707f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, 209f) * vec2<f32>(1057f, 921f))) - vec2<f32>(-239f, -893f)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-438f, _wgslsmith_f_op_f32(433f * -1426f)) - vec2<f32>(-743f, _wgslsmith_f_op_f32(-1796f + -1218f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-846f, 326f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(907f, 417f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1290f, var_1.x) - vec2<f32>(-1302f, var_1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-665f, -357f), false)), vec2<bool>(true, true)))))) * vec2<f32>(1137f, -845f));
    let var_2 = 1i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 39760u), vec2<u32>(92912u, 0u)), reverseBits(484u)), vec4<u32>(_wgslsmith_mod_u32(2577u, 1u), 1u, _wgslsmith_mult_u32(0u, 18848u), ~51617u)) % 32u);
    let var_3 = select(all(vec3<bool>(true, true, false)), true, !all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(579f, var_1.x) * vec2<f32>(609f, _wgslsmith_f_op_f32(select(-584f, var_1.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1077f, -548f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1153f) - vec2<f32>(var_1.x, 656f)), vec2<f32>(384f, var_1.x), true))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x)), var_1.x)));
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_2(func_4(Struct_2(Struct_1(vec2<i32>(var_2, var_0.x), vec2<i32>(0i, var_0.x), var_0.x), Struct_1(var_0.xy, var_0.yz, 24689i), Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_2, -10179i), var_2), var_0), true, Struct_2(Struct_1(vec2<i32>(-45056i, var_0.x), var_0.zz, var_0.x), Struct_1(vec2<i32>(var_2, -2147483647i), vec2<i32>(var_2, 39415i), 2147483647i), Struct_1(vec2<i32>(14797i, var_0.x), vec2<i32>(var_2, -25868i), 8427i), var_0)), func_4(Struct_2(Struct_1(vec2<i32>(var_0.x, 2866i), vec2<i32>(var_2, 0i), -20102i), Struct_1(vec2<i32>(var_0.x, var_0.x), vec2<i32>(0i, -1i), 2147483647i), Struct_1(vec2<i32>(var_2, var_2), vec2<i32>(var_0.x, 35071i), u_input.a), var_0), all(vec3<bool>(false, var_3, var_3)), Struct_2(Struct_1(vec2<i32>(-15547i, 38442i), var_0.yx, var_0.x), Struct_1(var_0.xy, vec2<i32>(var_0.x, var_0.x), var_2), Struct_1(vec2<i32>(u_input.a, u_input.a), var_0.yx, u_input.a), vec3<i32>(var_0.x, u_input.a, 2147483647i))), func_4(Struct_2(Struct_1(vec2<i32>(var_2, 30805i), vec2<i32>(u_input.a, -1i), var_0.x), Struct_1(var_0.xz, var_0.xz, var_2), Struct_1(vec2<i32>(u_input.a, var_0.x), vec2<i32>(var_2, 8835i), var_0.x), var_0), true, Struct_2(Struct_1(var_0.zy, vec2<i32>(var_2, u_input.a), var_2), Struct_1(var_0.yz, vec2<i32>(31147i, -15196i), -2147483647i), Struct_1(vec2<i32>(var_2, -1i), vec2<i32>(4317i, u_input.a), u_input.a), var_0)), select(var_0, abs(var_0), var_3)), Struct_3(vec2<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, -759f)), !any(vec4<bool>(true, false, var_3, var_3)))).x, 36871u, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(-13941i, 2147483647i, var_0.x, u_input.a) | vec4<i32>(var_0.x, 2147483647i, var_0.x, 55143i)), vec4<i32>(func_4(Struct_2(Struct_1(vec2<i32>(var_2, var_2), vec2<i32>(var_0.x, 60204i), u_input.a), Struct_1(vec2<i32>(var_0.x, u_input.a), var_0.xy, 3631i), Struct_1(var_0.yz, var_0.yx, 0i), var_0), true, Struct_2(Struct_1(var_0.zz, var_0.xx, 0i), Struct_1(vec2<i32>(var_2, 20602i), vec2<i32>(var_2, -2147483647i), var_0.x), Struct_1(vec2<i32>(-30846i, var_0.x), vec2<i32>(var_2, -1i), -2147483647i), var_0)).b.x, var_2, 525i ^ u_input.a, 1i), ~(vec4<i32>(u_input.a, -41049i, u_input.a, var_2) | vec4<i32>(var_2, var_2, u_input.a, -15863i))), vec4<i32>(var_2 & _wgslsmith_div_i32(var_0.x, var_0.x), -45639i, var_2, min(1651i, -9626i) >> (1u % 32u))), ~countOneBits(~1u));
}

