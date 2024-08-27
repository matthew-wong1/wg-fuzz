struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = ~(-vec4<i32>(1i, 1i, 1i, 1i));
    let var_1 = _wgslsmith_mod_vec3_u32(abs(~(~(~u_input.a.wyz))), u_input.a.zxw);
    var var_2 = arg_2;
    var_2 = Struct_1(~select(_wgslsmith_div_vec2_u32(u_input.a.yy, ~vec2<u32>(1u, arg_2.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 46161u), arg_2.a) >> (reverseBits(vec2<u32>(arg_0, 11483u)) % vec2<u32>(32u)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_3 = arg_2;
    return (1u == firstLeadingBit(~_wgslsmith_dot_vec2_u32(var_2.a, var_2.a))) | true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(54316u, 31286u, 7091u, arg_3.x), vec4<u32>(arg_3.x, u_input.a.x, u_input.a.x, 14425u), vec4<u32>(arg_3.x, arg_3.x, 4294967295u, 1u))), 4294967295u), ~(arg_3.x & (u_input.a.x ^ arg_3.x))));
    var var_1 = arg_2.yzy;
    let var_2 = vec3<i32>(~arg_0.x, _wgslsmith_mult_i32(arg_0.x, arg_0.x), abs(arg_0.x));
    let var_3 = ~(~select(countOneBits(~vec3<u32>(var_0.a.x, var_0.a.x, 47317u)), max(arg_3.yzz, vec3<u32>(u_input.a.x, arg_3.x, 36780u)) ^ vec3<u32>(0u, 23112u, 1u), func_3(0u, _wgslsmith_f_op_f32(var_1.x - var_1.x), Struct_1(u_input.a.xx))));
    let var_4 = true;
    return Struct_1(arg_3.zz);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -6817i;
    var_0 = arg_0;
    let var_1 = !any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), arg_0 != -34620i));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(arg_1.x, arg_1.x), -271f, _wgslsmith_f_op_f32(-1000f * 1000f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, arg_1.x, arg_1.x, -630f) - vec4<f32>(-1891f, -183f, 583f, -1393f)))))));
    let var_3 = func_2(vec2<i32>(_wgslsmith_mult_i32(arg_0, _wgslsmith_sub_i32(74149i, ~(-1i))), arg_0 & 25504i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, -1337f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(-var_2)), var_2)), u_input.a);
    return Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 13691u), var_3.a));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<u32> {
    var var_0 = !arg_1;
    let var_1 = all(!var_0.xx);
    var_0 = select(select(vec4<bool>(!select(false, var_1, true), false, true, true), arg_1, select(arg_1, vec4<bool>(!var_0.x, var_1, !var_1, false), vec4<bool>(true, func_3(u_input.a.x, -343f, Struct_1(vec2<u32>(34817u, 0u))), any(vec4<bool>(false, var_1, true, false)), !arg_0))), vec4<bool>(false, true, _wgslsmith_f_op_f32(1000f + -724f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-130f)) * _wgslsmith_f_op_f32(sign(1149f))), false), vec4<bool>(true, true, var_0.x, arg_0 | all(select(var_0.wx, arg_1.zx, var_0.wz))));
    let var_2 = 9176u;
    var_0 = !(!arg_1);
    return ~abs(reverseBits(u_input.a.yyx));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = vec2<bool>(true, _wgslsmith_add_i32(arg_0, arg_0) >= arg_0);
    let var_1 = ~func_5((~0u != u_input.a.x) && !all(vec4<bool>(var_0.x, false, true, var_0.x)), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, var_0.x, all(vec3<bool>(false, var_0.x, var_0.x)), !var_0.x), false), func_4(22200i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(915f, -970f, -1914f) - vec3<f32>(-300f, -374f, 360f)))), func_2(vec2<i32>(-82076i, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(514f, -1639f)), _wgslsmith_div_vec4_f32(vec4<f32>(1610f, -126f, 703f, -547f), vec4<f32>(749f, 355f, 132f, -286f)), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(19277u, u_input.a.x, 1u, 1u))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, arg_0, 12421i), _wgslsmith_mod_vec3_i32(vec3<i32>(-41168i, arg_0, 2147483647i), ~vec3<i32>(-1i, 46264i, -2147483647i))));
    let var_2 = func_4(-7103i, vec3<f32>(-328f, 620f, -315f), Struct_1(vec2<u32>(_wgslsmith_div_u32(var_1.x, 1u), 4294967295u)));
    var var_3 = _wgslsmith_add_i32(-14677i, 59240i);
    let var_4 = !vec3<bool>(!any(!vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_0, arg_0, -1i), vec4<i32>(7229i, arg_0, arg_0, -2147483647i)) > -1i, true && var_0.x);
    return 1u & ~countOneBits(~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(~(~(~u_input.a.x)), func_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(11343i, 3009i), -48154i))));
    let var_1 = min(1u ^ (4294967295u ^ func_1(-31124i)), ~(var_0.a.x & countOneBits(u_input.a.x)));
    var var_2 = 1i;
    var_2 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -1239i, -26273i) >> (~u_input.a.xzx % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -18058i, -9374i >> (var_1 % 32u), 3723i)), _wgslsmith_div_vec3_i32(-firstLeadingBit(vec3<i32>(-2147483647i, 43948i, 66271i)), -(~vec3<i32>(-77301i, -37792i, 1i))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-809f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(196f, -593f) - _wgslsmith_f_op_f32(-214f + 1000f))))), -154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1161f))) - _wgslsmith_f_op_f32(f32(-1f) * -533f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-936f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -855f), -116f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-251f, var_3.x, 424f, -876f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(210f, -722f, 426f, -1603f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1558f, 1000f, var_3.x) - vec4<f32>(482f, var_3.x, 527f, var_3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1825f, -450f, var_3.x, var_3.x))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, var_3.x, var_3.x, -1011f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(~vec3<u32>(u_input.a.x, func_1(0i), firstLeadingBit(18064u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_3.x - 1811f)), var_3.wyw))), var_3.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.yxz) + var_3.xzx));
}

