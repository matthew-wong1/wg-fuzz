struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, true, false, true), vec3<f32>(-1000f, -719f, -405f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    global0 = array<vec4<bool>, 25>();
    var var_0 = Struct_3(select(global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<bool>(any(select(global1.a.zyz, vec3<bool>(global1.a.x, global1.a.x, true), false)), all(select(global1.a.yzw, vec3<bool>(global1.a.x, false, global1.a.x), global1.a.x)), true, true), select(!vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), select(vec4<bool>(true, false, global1.a.x, true), vec4<bool>(global1.a.x, false, true, true), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x)), any(vec4<bool>(false, false, global1.a.x, false)))), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b.x)) - -780f)))));
    global1 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, _wgslsmith_f_op_f32(round(-434f)), global1.b.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 706f, global1.b.x), vec3<f32>(global1.b.x, 2277f, var_0.b.x)) + global1.b)) + _wgslsmith_f_op_vec3_f32(-var_0.b)));
    return !select(!(var_0.b.x == _wgslsmith_div_f32(-1000f, var_0.b.x)), 73724u >= _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 74144u, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(13968u, 4294967295u, u_input.a))), true);
}

fn func_2() -> vec3<f32> {
    global1 = Struct_3(!(!vec4<bool>(func_3(), all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false)), !global1.a.x, true)), vec3<f32>(_wgslsmith_div_f32(global1.b.x, -1083f), global1.b.x, _wgslsmith_f_op_f32(-global1.b.x)));
    let var_0 = -969f;
    global1 = Struct_3(select(!vec4<bool>(global1.a.x, true, all(global1.a.yyx), true), select(vec4<bool>(false == global1.a.x, global1.a.x, true, true), global1.a, vec4<bool>(global1.a.x, all(vec4<bool>(false, global1.a.x, global1.a.x, true)), global1.a.x, func_3())), vec4<bool>(!global1.a.x, true, (global1.a.x && global1.a.x) | (global1.a.x & global1.a.x), global1.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), -959f, _wgslsmith_f_op_f32(global1.b.x + 223f)), global1.b)));
    var var_1 = Struct_2(var_0, global1.b);
    global1 = Struct_3(!(!global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(-2426f)), var_1.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_1.b, vec3<f32>(var_1.a, var_0, -670f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + global1.b.x)), -396f, var_0)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(_wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(-var_0), -1118f)) + global1.b), _wgslsmith_div_vec3_f32(vec3<f32>(277f, _wgslsmith_f_op_f32(-1901f - _wgslsmith_f_op_f32(trunc(1000f))), var_1.a), vec3<f32>(var_0, var_1.a, _wgslsmith_f_op_f32(floor(var_0))))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-739f - _wgslsmith_f_op_f32(-758f - global1.b.x)));
    var var_1 = ~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x ^ 0u, _wgslsmith_sub_u32(1u, u_input.a), _wgslsmith_mult_u32(arg_1, arg_1))), _wgslsmith_mod_vec3_u32(~vec3<u32>(12323u, 32083u, arg_1) << (vec3<u32>(60627u, 29792u, u_input.a) % vec3<u32>(32u)), vec3<u32>(35339u, ~74048u, ~arg_1)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    var_1 = vec3<u32>(_wgslsmith_div_u32(6755u, ~_wgslsmith_mod_u32(u_input.a, 114710u)) << (arg_1 % 32u), 0u, 4294967295u);
    let var_3 = !((true && !any(vec4<bool>(true, global1.a.x, true, false))) && global1.a.x);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-248f, -962f, var_2.x, var_0), vec4<f32>(arg_0.b.x, var_0, -1418f, var_2.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1102f, arg_0.a, -481f, arg_0.a))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + arg_0) + arg_0)))) - arg_0);
    var var_1 = u_input.b.x;
    var var_2 = global1.a.x;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2()).x)), vec3<f32>(arg_0.x, -1064f, arg_0.x));
    var var_4 = arg_0.zzx;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(478f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1482f)))), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(global1.b.x, vec3<f32>(1000f, global1.b.x, global1.b.x)), u_input.b.x)), global1.b.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(select(var_0.x, 104f, global1.a.x))), _wgslsmith_f_op_f32(-968f - _wgslsmith_f_op_f32(round(global1.b.x))), true | global1.a.x)), global1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f - 495f) - 358f), global1.a.x && select(false, true, global1.a.x)))));
    global0 = array<vec4<bool>, 25>();
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(round(global1.b))), vec3<f32>(-606f, _wgslsmith_f_op_f32(f32(-1f) * -369f), var_0.x));
    global1 = Struct_3(!vec4<bool>(true, all(!vec2<bool>(false, global1.a.x)), 701f >= _wgslsmith_f_op_f32(exp2(var_0.x)), false), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 1528f)))));
    global1 = Struct_3(select(select(!(!global0[_wgslsmith_index_u32(4078u, 25u)]), global1.a, true && any(vec3<bool>(false, global1.a.x, false))), !select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 3282u), 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], vec4<bool>(false, true, true, global1.a.x)), !global0[_wgslsmith_index_u32(abs(u_input.b.x), 25u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(339f, -321f, -749f) - global1.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-307f, var_0.x, var_0.x) * vec3<f32>(445f, var_0.x, 991f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -839f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(12213i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-1i, -1i))), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(2147483647i, 1i, 2147483647i, -2147483647i)))), reverseBits(max(select(vec2<u32>(27528u, 0u), u_input.b, global1.a.x), u_input.b)) << (max(vec2<u32>(select(17921u, u_input.b.x, false), 0u), ~countOneBits(vec2<u32>(u_input.b.x, 57171u))) % vec2<u32>(32u)), _wgslsmith_clamp_u32(u_input.b.x, u_input.a, ~countOneBits(~20573u)), ~vec4<u32>(~abs(u_input.a), u_input.b.x, max(37139u, _wgslsmith_add_u32(u_input.a, 1u)), 13331u), -759f);
}

