struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(0i, false, Struct_1(false, vec3<bool>(true, true, false), 225f, vec2<i32>(-46262i, -48041i))), Struct_4(2147483647i, true, Struct_1(true, vec3<bool>(false, false, true), 482f, vec2<i32>(0i, 126i))), Struct_4(0i, true, Struct_1(true, vec3<bool>(false, false, false), 496f, vec2<i32>(-1i, 10988i))), Struct_4(i32(-2147483648), true, Struct_1(false, vec3<bool>(true, true, false), 1965f, vec2<i32>(2147483647i, 2147483647i))), Struct_4(i32(-2147483648), false, Struct_1(true, vec3<bool>(false, false, false), 1251f, vec2<i32>(69669i, 9397i))), Struct_4(1i, false, Struct_1(true, vec3<bool>(true, false, false), -1491f, vec2<i32>(i32(-2147483648), 11218i))), Struct_4(1i, false, Struct_1(false, vec3<bool>(false, true, false), -119f, vec2<i32>(1i, -54714i))), Struct_4(-39248i, true, Struct_1(true, vec3<bool>(false, true, true), -1503f, vec2<i32>(2147483647i, 2147483647i))), Struct_4(1i, true, Struct_1(false, vec3<bool>(false, true, false), 1736f, vec2<i32>(10020i, -12477i))), Struct_4(i32(-2147483648), false, Struct_1(false, vec3<bool>(false, false, false), 316f, vec2<i32>(-1i, -67326i))), Struct_4(63617i, false, Struct_1(true, vec3<bool>(true, true, false), -1005f, vec2<i32>(-1i, -5767i))), Struct_4(2147483647i, true, Struct_1(true, vec3<bool>(false, false, false), 826f, vec2<i32>(-1i, 0i))), Struct_4(0i, false, Struct_1(true, vec3<bool>(true, true, false), -374f, vec2<i32>(6150i, -3138i))), Struct_4(1i, true, Struct_1(false, vec3<bool>(true, false, true), -316f, vec2<i32>(-10906i, 2147483647i))), Struct_4(0i, true, Struct_1(false, vec3<bool>(false, false, true), -707f, vec2<i32>(-1i, i32(-2147483648)))), Struct_4(6453i, false, Struct_1(false, vec3<bool>(false, true, false), 369f, vec2<i32>(20674i, 0i))), Struct_4(i32(-2147483648), false, Struct_1(true, vec3<bool>(false, true, true), 1000f, vec2<i32>(47086i, 18261i))), Struct_4(45712i, false, Struct_1(true, vec3<bool>(true, false, true), -1068f, vec2<i32>(i32(-2147483648), -1i))), Struct_4(-22899i, false, Struct_1(false, vec3<bool>(true, true, true), -679f, vec2<i32>(23230i, 0i))), Struct_4(-10071i, false, Struct_1(false, vec3<bool>(true, false, false), -1713f, vec2<i32>(-42228i, 1i))), Struct_4(-63528i, true, Struct_1(false, vec3<bool>(true, true, true), 636f, vec2<i32>(i32(-2147483648), 1i))), Struct_4(-1i, true, Struct_1(false, vec3<bool>(true, false, false), -1000f, vec2<i32>(9037i, 21564i))), Struct_4(5180i, true, Struct_1(false, vec3<bool>(false, true, true), -157f, vec2<i32>(-30510i, 13096i))), Struct_4(37706i, true, Struct_1(false, vec3<bool>(false, false, false), -736f, vec2<i32>(i32(-2147483648), 11257i))), Struct_4(8552i, false, Struct_1(false, vec3<bool>(false, true, true), -579f, vec2<i32>(-875i, 8463i))), Struct_4(35003i, false, Struct_1(false, vec3<bool>(false, false, true), 231f, vec2<i32>(1i, 14197i))), Struct_4(30786i, false, Struct_1(false, vec3<bool>(false, true, false), 430f, vec2<i32>(2147483647i, -11955i))), Struct_4(2147483647i, false, Struct_1(false, vec3<bool>(false, false, true), -200f, vec2<i32>(730i, 50819i))), Struct_4(-1i, true, Struct_1(true, vec3<bool>(true, false, true), 110f, vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_4(i32(-2147483648), false, Struct_1(true, vec3<bool>(true, false, true), 1000f, vec2<i32>(i32(-2147483648), 46258i))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = 1u;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-304f)) + 1f), 1f, _wgslsmith_div_f32(1323f, 2208f)))));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_mult_i32(u_input.b.x, 2147483647i >> (_wgslsmith_sub_u32(~4294967295u, min(0u, 10984u)) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(426f, 352f))) + vec2<f32>(768f, -231f)))))));
    var var_2 = 63696u;
    let var_3 = u_input.c.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1391f - 662f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(753f + -1300f))), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true), ~vec2<u32>(u_input.a.x, 4294967295u), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(455f, 324f, -886f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(-455f, -266f, var_1.x))))))), !(!(!any(vec3<bool>(false, true, false))))));
    return _wgslsmith_f_op_vec2_f32(step(var_4.yx, _wgslsmith_f_op_vec2_f32(-var_4.xx)));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(594f, 824f)), 346f) * _wgslsmith_f_op_vec2_f32(func_2())) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1881f, -1042f) - vec2<f32>(-1000f, 1318f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-269f, 855f))))))));
    let var_2 = countOneBits(vec4<u32>(firstLeadingBit(u_input.c.x), u_input.c.x, 1u, 1u));
    let var_3 = abs(vec4<i32>(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(10844i, -1i), _wgslsmith_div_i32(-1i, u_input.b.x) | 1i), u_input.b.x, u_input.b.x, -12174i));
    global0 = array<Struct_4, 30>();
    return Struct_1(any(!select(!vec4<bool>(var_0, true, false, var_0), !vec4<bool>(var_0, var_0, false, true), any(vec4<bool>(true, var_0, true, var_0)))), vec3<bool>(var_0, var_0, 16822i > var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(395f, var_1.x)) + var_1.x), vec2<i32>(var_3.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(var_0.c - var_0.c), Struct_1(var_0.a, !func_1().b, _wgslsmith_f_op_f32(step(func_1().c, var_0.c)), vec2<i32>(firstLeadingBit(var_0.d.x), ~u_input.b.x >> (u_input.a.x % 32u))));
    var var_2 = u_input.b;
    var_1 = Struct_2(var_0.c, Struct_1(var_0.c < var_1.b.c, var_0.b, 478f, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, -1i), abs(var_0.d.x)), -(~var_1.b.d))));
    let var_3 = u_input.c.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c)) * _wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_f32(select(1265f, _wgslsmith_f_op_f32(select(1472f, 945f, true)), !var_1.b.a)))) + _wgslsmith_div_f32(-1213f, _wgslsmith_f_op_f32(374f * var_0.c)));
    let var_5 = _wgslsmith_mod_i32(0i, abs(var_1.b.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(~1i, var_0.d.x, _wgslsmith_div_i32(var_0.d.x | var_5, _wgslsmith_add_i32(19135i, var_2.x)))), min(vec4<i32>(var_1.b.d.x, 1i, abs(2147483647i), ~var_0.d.x), vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -8468i, u_input.b.x), u_input.b), min(-24967i, ~var_2.x))), var_1.b.d.x);
}

