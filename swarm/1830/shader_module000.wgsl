struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-817f, -1154f)) * _wgslsmith_f_op_f32(320f * -206f))) > _wgslsmith_f_op_f32(min(202f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1568f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -420f)))), !(!vec3<bool>(global1.a, global1.c.x, !global1.c.x)), false);
    global1 = Struct_1(all(vec2<bool>(false, all(vec2<bool>(var_0.b, false)))) & (_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, u_input.b)), -vec2<i32>(-28179i, 1i)) > abs(1i)), all(!global1.c), global1.c, true);
    global1 = Struct_1(global1.d, true, vec3<bool>(global1.a, 44159i > _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 12063i))), global1.d), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-358f, -872f), -622f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(181f, -743f)) - -664f), -915f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -372f, 150f, 892f))), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(677f, -1000f, -348f, -1431f), vec4<f32>(538f, 360f, -1364f, -181f), global0[_wgslsmith_index_u32(u_input.c, 25u)])) + vec4<f32>(835f, 146f, 120f, 1607f)))));
    var_0 = Struct_1(false, !any(select(global1.c, select(vec3<bool>(true, true, false), vec3<bool>(var_0.c.x, global1.a, true), global1.c), any(vec3<bool>(global1.b, false, true)))), vec3<bool>(2147483647i == _wgslsmith_mult_i32(i32(-1i) * -1i, u_input.b & u_input.b), false, any(!select(var_0.c.yx, vec2<bool>(true, false), var_0.a))), true);
    return var_0.c;
}

fn func_2() -> vec2<f32> {
    global1 = Struct_1(all(!select(global0[_wgslsmith_index_u32(~54598u, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 1u), 25u)], global0[_wgslsmith_index_u32(u_input.c << (69338u % 32u), 25u)])), global1.d, global1.c, all(select(global1.c, select(func_3(), !global1.c, false || global1.d), global1.d)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -428f), -1466f))));
    var var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), ~abs(u_input.b), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(29145i, 1i, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-2147483647i, 0i, u_input.b, 33832i), vec4<i32>(2147483647i, u_input.b, 40655i, u_input.b) << (vec4<u32>(u_input.a.x, 29554u, 4294967295u, u_input.a.x) % vec4<u32>(32u))));
    global2 = _wgslsmith_f_op_f32(-703f * -1944f);
    let var_1 = !select(!vec3<bool>(all(vec4<bool>(global1.d, global1.c.x, true, false)), 14044i > var_0.x, any(global1.c.yx)), !global1.c, vec3<bool>(true, any(vec3<bool>(global1.d, true, true)), true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-455f - 270f), _wgslsmith_div_f32(-173f, -1067f))) * vec2<f32>(2151f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-267f, -1000f)))))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(true, global1.a, vec3<bool>(!global1.b, false, global1.a), any(select(global0[_wgslsmith_index_u32(4294967295u, 25u)], select(vec4<bool>(true, global1.b, global1.c.x, false), vec4<bool>(false, true, true, true), !global1.c.x), all(vec4<bool>(false, true, global1.b, true)) || (false == global1.c.x))));
    global0 = array<vec4<bool>, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    global0 = array<vec4<bool>, 25>();
    global1 = var_0;
    return _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1350f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(func_1());
    let var_0 = !(!(!global1.a));
    global0 = array<vec4<bool>, 25>();
    let var_1 = select(!vec4<bool>(true, (u_input.b | 8961i) < (i32(-1i) * -47058i), global1.d, true), global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(~0u, 25u)]);
    var var_2 = u_input.a;
    global0 = array<vec4<bool>, 25>();
    let var_3 = Struct_1(var_1.x | !(!any(vec3<bool>(false, var_0, var_1.x))), true, global1.c, func_3().x);
    global0 = array<vec4<bool>, 25>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1591f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-u_input.b, i32(-1i) * -23568i), min(u_input.b & -2147483647i, abs(-23922i))), firstLeadingBit(vec2<i32>(u_input.b, ~48189i)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -15844i), vec2<i32>(-15486i, -3821i)), u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -3765i), ~vec2<i32>(2147483647i, 15730i)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1030f, -586f, 529f))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(982f, -1000f, 239f)))))), u_input.c | 6392u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f * 547f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))), all(vec4<bool>(false, any(vec4<bool>(var_1.x, false, var_1.x, true)), true, true)))), countOneBits(~vec2<i32>(u_input.b, abs(u_input.b))));
}

