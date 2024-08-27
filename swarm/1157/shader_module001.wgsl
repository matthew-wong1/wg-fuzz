struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 13>();
    global0 = array<vec4<bool>, 13>();
    return _wgslsmith_f_op_f32(ceil(arg_1.d));
}

fn func_2() -> Struct_1 {
    return Struct_1(-103f, _wgslsmith_f_op_f32(trunc(927f)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1092f, _wgslsmith_div_f32(-1405f, -796f), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(-499f, 805f))), Struct_1(_wgslsmith_div_f32(162f, 555f), _wgslsmith_f_op_f32(340f - 281f), true, -905f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(632f))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2().a, 1334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f * func_2().d) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + 748f), _wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = Struct_1(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f)))), var_0.c, -730f);
    var var_3 = _wgslsmith_dot_vec3_i32(countOneBits(abs(vec3<i32>(u_input.b.x, min(u_input.a, u_input.a), _wgslsmith_mod_i32(1i, u_input.b.x)))), vec3<i32>(~(-3995i), i32(-1i) * -u_input.a, 1i) | (_wgslsmith_mult_vec3_i32(abs(u_input.c), -vec3<i32>(u_input.c.x, 2147483647i, -22792i)) ^ u_input.c));
    var_3 = -_wgslsmith_div_i32(-2147483647i, u_input.c.x);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    var var_0 = 0u;
    global0 = array<vec4<bool>, 13>();
    let var_1 = abs(~countOneBits(1u));
    global0 = array<vec4<bool>, 13>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-557f, arg_0.a, arg_0.c)) + -643f), _wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - arg_1) - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -600f, -871f, arg_1)) - vec4<f32>(1092f, arg_1, arg_0.a, arg_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 245f, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -352f, 867f, arg_1)), arg_0.c & false))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 194f, -349f))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 457f, var_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 941f, _wgslsmith_f_op_f32(abs(var_2.x))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(var_2.yyw)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1553f, 1241f), var_2.wwz))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-415f));
    let var_1 = true;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c) & 26033i, _wgslsmith_add_i32(u_input.c.x, abs(0i)));
    global0 = array<vec4<bool>, 13>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1495f - _wgslsmith_f_op_f32(max(-1000f, -478f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1547f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1062f - _wgslsmith_f_op_f32(abs(-1060f))) * _wgslsmith_f_op_f32(f32(-1f) * -1149f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(-1952f)))), -478f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, 432f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(529f), _wgslsmith_f_op_f32(step(979f, var_3.x))))), vec3<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(f32(-1f) * -325f)), -2235f), var_3.x), abs(55379u));
}

