struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: bool;

var<private> global3: Struct_2 = Struct_2(-1492f, 19319u);

var<private> global4: array<vec3<bool>, 9>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_4(vec3<i32>(arg_2, -1i, _wgslsmith_mod_i32(arg_2, 1i)));
    global0 = arg_0;
    global0 = vec3<u32>(~(~select(max(u_input.a, 31925u), ~arg_0.x, false)), ~arg_0.x | 21615u, arg_0.x ^ (~(~global0.x) ^ ~_wgslsmith_div_u32(u_input.a, arg_0.x)));
    let var_1 = vec3<i32>(abs(-2147483647i), _wgslsmith_mod_i32(arg_2, abs(min(-1i, -var_0.a.x))), min(-3288i, ~arg_2));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)));
    return global3.a;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    global1 = Struct_2(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a)))), u_input.a);
    let var_0 = -2147483647i != min(arg_0, i32(-1i) * -14983i);
    var var_1 = arg_1.yx;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_u32(select(vec3<u32>(39669u, u_input.a, global1.b), vec3<u32>(11014u, 39133u, global1.b), vec3<bool>(true, var_0, false)), vec3<u32>(global0.x, global1.b, u_input.a)), (-26867i | arg_0) > arg_0, _wgslsmith_dot_vec4_i32(-vec4<i32>(61473i, -1i, 21008i, arg_0), ~vec4<i32>(arg_0, arg_0, arg_0, 2147483647i)), vec2<bool>(true, true)))));
    let var_3 = countOneBits(vec3<u32>(_wgslsmith_mod_u32(~u_input.a, ~1u), u_input.a, global3.b)) ^ vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 38805u), vec4<u32>(global1.b, global3.b, 27186u, global0.x)) ^ ~u_input.a, ~global0.x, u_input.a);
    return Struct_2(global1.a, 1u);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = func_2(0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global3.a)), -1272f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_3) + _wgslsmith_f_op_f32(f32(-1f) * -695f)))));
    let var_1 = false;
    var var_2 = vec4<bool>(1u >= _wgslsmith_dot_vec3_u32(~select(vec3<u32>(39066u, arg_2, 1u), vec3<u32>(global3.b, 53497u, var_0.b), global4[_wgslsmith_index_u32(48866u, 9u)]), vec3<u32>(0u, _wgslsmith_div_u32(u_input.a, 0u), ~global1.b)), -arg_1.a <= _wgslsmith_div_i32(-17647i, 51567i), true, var_1);
    let var_3 = countOneBits(arg_2 & global0.x);
    global2 = all(!vec3<bool>(all(!var_2.yx), true, true));
    return -2450f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1965f, global3.a)), global1.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(814f, 1122f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, 486f) * vec2<f32>(global3.a, global1.a)))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(0u, Struct_1(32879i), 53008u, 575f)))), _wgslsmith_f_op_f32(-381f - _wgslsmith_f_op_f32(ceil(global3.a))))));
    global1 = func_2(17084i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -150f, 1077f), vec3<f32>(global1.a, global3.a, -1765f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, 409f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 263f, global3.a))) - vec3<f32>(-1155f, var_0.x, var_0.x)))));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(378f)) + 405f), global3.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(global0.x, Struct_1(65647i), u_input.a, 1510f)), -689f, -1000f, _wgslsmith_f_op_f32(step(-1013f, var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-1637f * global3.a), _wgslsmith_f_op_f32(-151f + var_1.a)))));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_u32(~vec3<u32>(global3.b, 0u, global3.b), _wgslsmith_add_vec3_u32(vec3<u32>(global1.b, global1.b, global3.b), vec3<u32>(4294967295u, 39006u, u_input.a))), true, reverseBits(_wgslsmith_mult_i32(2147483647i, 0i)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))) != var_1.a, true, select(true, !all(vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(1i, 1i)));
}

