struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = !(!vec3<bool>(arg_0.b.c.x, any(arg_0.b.c), any(vec2<bool>(true, true))));
    let var_1 = Struct_2(~arg_0.a, Struct_1(arg_0.b.d, abs(_wgslsmith_mod_vec4_i32(arg_0.b.b, vec4<i32>(1i, arg_0.b.b.x, u_input.c.x, u_input.c.x))), arg_0.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, arg_0.e.x, arg_0.c, arg_0.b.d.x))) * arg_0.b.a), arg_0.b.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.d.x)))))), arg_0.d, arg_0.e);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(var_2.c));
    let var_4 = select(vec4<bool>(true, select(any(vec3<bool>(arg_0.b.c.x, true, var_0.x)), true | !var_0.x, !var_1.b.c.x), false, true), var_1.b.c, select(!vec4<bool>(!var_2.b.c.x, select(true, true, false), true, any(vec3<bool>(true, false, true))), vec4<bool>(var_0.x, false, true, var_0.x), 1168f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-722f)) + _wgslsmith_f_op_f32(round(var_3)))));
    return -1235f;
}

fn func_2() -> vec3<f32> {
    global0 = vec2<i32>(u_input.c.x, ~global0.x) & firstLeadingBit(countOneBits(vec2<i32>(20096i, 37523i)));
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(4294967295u, u_input.d, u_input.a), Struct_1(vec4<f32>(1476f, 860f, -316f, -673f), vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x), vec4<bool>(true, true, false, false), vec4<f32>(1860f, -103f, 2119f, -1748f), global0.x), -909f, vec4<u32>(u_input.a, u_input.b.x, 1u, 44627u), vec3<f32>(530f, -352f, 233f)), 1u)))), -468f, _wgslsmith_f_op_f32(1945f + -403f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2121f, 145f, true)) - _wgslsmith_f_op_f32(max(1129f, -213f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -339f, -672f, 357f)))))), firstLeadingBit(-vec4<i32>(u_input.c.x, _wgslsmith_add_i32(2147483647i, u_input.c.x), i32(-1i) * -2147483647i, u_input.c.x)), vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), false), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, 141f, -1000f, 1059f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1000f, -1000f, -769f)))), vec4<f32>(465f, _wgslsmith_f_op_f32(max(-414f, 490f)), _wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(sign(-1000f))), true)))), u_input.c.x);
    let var_1 = false;
    var var_2 = vec3<bool>(false, all(!var_0.c), var_1);
    var_2 = var_0.c.xxx;
    return var_0.d.yyz;
}

fn func_1(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = u_input.b;
    let var_1 = 0u;
    global0 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-2105f, -605f)), _wgslsmith_f_op_f32(sign(142f)), _wgslsmith_f_op_f32(select(1056f, -670f, true))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1683f, 1000f, 1525f) * vec3<f32>(912f, 483f, 121f)), any(vec4<bool>(true, false, true, true)))))));
    let var_3 = ~1i;
    return any(select(vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, true, false)), true, !any(vec2<bool>(true, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true, true), !(true || (u_input.c.x == -2147483647i))));
}

fn func_4(arg_0: bool) -> StorageBuffer {
    global0 = vec2<i32>(~abs(u_input.c.x) >> (~u_input.a % 32u), countOneBits(0i));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1701f, 346f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(116f, -1630f), vec2<f32>(702f, 539f), vec2<bool>(arg_0, false))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1369f, 483f) - vec2<f32>(-386f, 137f))) - vec2<f32>(1f, -279f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(867f, -952f))))));
    let var_1 = u_input.c.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2021f, 602f, -1889f, _wgslsmith_div_f32(2287f, var_0.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 1045f, var_0.x, var_0.x))))), _wgslsmith_mod_vec4_i32(~(~countOneBits(vec4<i32>(2147483647i, -31572i, u_input.c.x, var_1))), ~(~vec4<i32>(86348i, 19808i, var_1, 2141i))), select(select(vec4<bool>(true, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), false && arg_0, select(true, arg_0, arg_0)), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, false, arg_0, arg_0)), all(vec2<bool>(arg_0, arg_0))), vec4<bool>(true, true, !(!arg_0), true), any(vec2<bool>(false, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(var_0.x + -468f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(floor(var_0.x))), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(430f - 1652f)))), -_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(1i, -21346i)));
    let var_3 = var_2.b.x;
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(~(select(var_2.b.xxy, vec3<i32>(-5371i, var_1, global0.x), var_2.c.yyw) & vec3<i32>(-36328i, var_3, 15995i)), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(var_2.b.wyz, var_2.b.yzz) ^ abs(var_3), var_1), vec3<i32>(var_2.b.x, firstTrailingBit(1i), _wgslsmith_div_i32(u_input.c.x, firstTrailingBit(var_3)))), ~var_2.b.yyz | min(~(var_2.b.yxw & var_2.b.xzx), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 48100i, global0.x), var_2.b.xxw)), 1u, select(~select(~4294967295u, ~u_input.d, true), abs(u_input.a ^ 45357u), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(abs(reverseBits(7959i)), 102223u));
}

