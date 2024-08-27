struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-173f * -494f), _wgslsmith_f_op_f32(709f - 1079f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b + 1430f)))) * global0.a)));
    var var_1 = 1i;
    var var_2 = vec3<bool>(all(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 28u)] & true), select(vec3<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 28u)], true), select(false, false, true)), select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.d.x, 28u)], false), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(u_input.c.x, 28u)] || false))), all(select(select(!vec2<bool>(true, arg_0), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), arg_0), select(!vec2<bool>(false, arg_0), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec2<bool>(false, arg_0), vec2<bool>(global1[_wgslsmith_index_u32(69993u, 28u)], true)), !arg_0), true)), true);
    let var_3 = arg_1;
    return global0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-727f, global0.b);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(504f - _wgslsmith_f_op_f32(-global0.b)))), -1017f), 1859f);
    var_0 = var_1;
    global0 = Struct_1(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * var_1.a), _wgslsmith_f_op_f32(sign(global0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(63270u, 28u)], Struct_1(var_1.b, var_0.b)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.b, var_1.a)), _wgslsmith_f_op_f32(830f * var_0.b))))));
    global1 = array<bool, 28>();
    return var_1;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f * _wgslsmith_f_op_f32(round(-1030f))) - global0.b))), _wgslsmith_f_op_f32(round(-415f)));
    var var_0 = _wgslsmith_sub_i32(~arg_0, -24477i);
    let var_1 = func_2();
    var_0 = -countOneBits(8716i);
    var var_2 = var_1;
    return Struct_1(441f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(func_2().a, var_2.a)), _wgslsmith_f_op_f32(-global0.b)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = array<bool, 28>();
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.b))))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) * _wgslsmith_f_op_f32(max(-1780f, -428f))), _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(floor(352f)))))) != -885f;
    return Struct_1(global0.b, -1078f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 28u)];
    global0 = func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(-15284i, -1i), u_input.e.x), max(~(vec2<i32>(2147483647i, u_input.b.x) | vec2<i32>(u_input.a, 1i)), u_input.b.wz)), func_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, 0i), u_input.b.zy)), -38257i)), u_input.d.x ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.c.yz)), u_input.c.yy));
    let var_1 = false;
    global1 = array<bool, 28>();
    global0 = Struct_1(788f, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b)), func_2().b, !(global1[_wgslsmith_index_u32(91484u, 28u)] || global1[_wgslsmith_index_u32(u_input.c.x, 28u)])))));
    global1 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.a)), global0.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-189f, 1776f), vec2<f32>(-115f, global0.a))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f + -1024f))), u_input.d.yyw, ~u_input.d.x, vec2<u32>(~4294967295u ^ u_input.d.x, countOneBits(reverseBits(u_input.d.x)) ^ 59195u));
}

