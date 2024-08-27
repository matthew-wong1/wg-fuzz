struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -1476f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1459f))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2276f, var_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -2542f))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(915f, 833f) * vec2<f32>(901f, var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)))))), true || all(vec4<bool>(false, false, arg_0 || arg_1, all(vec4<bool>(true, arg_0, arg_1, arg_1)))));
    let var_2 = false;
    let var_3 = -1217f;
    var var_4 = vec4<f32>(1394f, _wgslsmith_f_op_f32(f32(-1f) * -1137f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(499f, var_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -480f)) * 338f), _wgslsmith_f_op_f32(-var_0));
    return true;
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = -259i;
    let var_1 = ~_wgslsmith_add_u32(~0u & firstTrailingBit(~0u), _wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(4294967295u, 1685u, 12986u), vec3<u32>(61754u, 9650u, 89035u), vec3<bool>(true, false, false))), firstTrailingBit(~vec3<u32>(31697u, 4294967295u, 1u))));
    let var_2 = vec2<i32>(18607i, 36958i);
    global0 = array<vec4<f32>, 7>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(503f, _wgslsmith_f_op_f32(arg_0 + arg_0))) * _wgslsmith_f_op_f32(trunc(arg_0))) + -1307f));
    return Struct_4(Struct_1(0u, var_3.x, vec3<bool>(true, true, true), ~_wgslsmith_mod_i32(~u_input.b.x, var_2.x)), Struct_1(var_1, -654f, select(vec3<bool>(func_3(true, true), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true), false & any(vec4<bool>(true, true, true, false))), ~3725i), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, countOneBits(47088u)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(26513u, 4294967295u), vec2<u32>(var_1, 34133u)), vec2<u32>(836u, var_1), ~vec2<u32>(4294967295u, 22253u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(var_1, var_1)))), Struct_3(Struct_1(~abs(1u), 685f, !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), -8836i), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1437f, 499f) + var_3)), -306f < arg_0), 753f, true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = func_2(-442f).d.b;
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    global1 = -max(max(_wgslsmith_dot_vec2_i32(vec2<i32>(35450i, 0i), u_input.b), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_0.a.d, 33491i, -1i, 0i))) & ~arg_0.a.d, -11492i);
    var var_1 = Struct_1(_wgslsmith_div_u32(~firstLeadingBit(_wgslsmith_mult_u32(24115u, arg_1.b.a)), 6794u), -1081f, arg_0.b.c, -(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-21904i, arg_1.a.d), min(u_input.a.yw, vec2<i32>(859i, arg_0.a.d)))));
    return ~(~(~(~(vec4<u32>(1u, 1u, arg_0.d.a.a, 1u) & vec4<u32>(var_1.a, 0u, arg_0.a.a, 168862u)))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    var var_0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, ~56308u, 1u, firstTrailingBit(1u))), ~countOneBits(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~24891u), 0u, ~countOneBits(46920u), 20952u), vec4<u32>(115045u, _wgslsmith_div_u32(55579u, _wgslsmith_div_u32(4294967295u, 23579u)), _wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32(1u, 1u)), ~1u), _wgslsmith_add_vec4_u32(func_4(func_2(1702f), func_2(475f)), max(~vec4<u32>(1u, 4294967295u, 48688u, 4294967295u), vec4<u32>(4294967295u, 39531u, 1u, 17082u)))));
    let var_1 = -1294f;
    var var_2 = abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(~42850u, firstTrailingBit(var_0.x))), vec2<u32>(_wgslsmith_div_u32(1u, var_0.x) << (0u % 32u), var_0.x)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(972f, -345f) - vec2<f32>(var_1, -114f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-640f, var_1) + vec2<f32>(var_1, 658f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 760f)))), any(vec4<bool>(false, !func_2(var_1).b.c.x, true, any(vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(~(~abs(4294967295u)), -1547f, !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), ~(~0i)), func_1(), -1640f, any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), true)));
    var var_1 = ~(func_2(189f).a.a >> (~var_0.a.a % 32u));
    let var_2 = Struct_3(var_0.a, func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-var_0.c)).d.c * -919f) * var_0.a.b), !var_0.b.b);
    let var_3 = Struct_3(func_2(-272f).b, func_2(_wgslsmith_f_op_f32(sign(var_2.a.b))).d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-541f, _wgslsmith_f_op_f32(func_2(955f).b.b - _wgslsmith_f_op_f32(var_2.c + var_2.a.b)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.b.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -531f))), var_2.a.c.x);
    var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(2349u, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 40544i, -1i, var_0.a.d << (30044u % 32u)), vec4<i32>(var_0.a.d, u_input.a.x, -2147483647i, var_3.a.d)), var_2.b.a.x, ~vec3<i32>(var_2.a.d, var_2.a.d, 4074i) & vec3<i32>(abs(u_input.a.x), -1i, _wgslsmith_dot_vec2_i32(countOneBits(u_input.b), u_input.a.yx)));
}

