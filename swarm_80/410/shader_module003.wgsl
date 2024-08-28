struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -206f;

var<private> global1: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f + -152f) + _wgslsmith_f_op_f32(428f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1256f, 375f) - 1738f)))));
    return 4294967295u;
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-601f)) - _wgslsmith_f_op_f32(step(-608f, -784f))))));
    let var_0 = -abs(u_input.b);
    var var_1 = !(!select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)]), global1[_wgslsmith_index_u32(u_input.d, 2u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], false), vec2<bool>(true, true)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), any(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)], false, false))));
    var var_2 = any(vec3<bool>(!(!global1[_wgslsmith_index_u32(arg_0, 2u)]) & true, any(vec4<bool>(var_1.x, false | global1[_wgslsmith_index_u32(arg_1, 2u)], true, arg_1 <= 41665u)), all(select(select(vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(4799u, 2u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 2u)], false), vec2<bool>(var_1.x, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(17368u, 2u)]), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)])), global1[_wgslsmith_index_u32(firstLeadingBit(arg_1), 2u)]))));
    var_1 = vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)] & true, var_1.x)), false);
    return ~vec3<i32>(~(-12850i), ~36333i & (u_input.b.x >> (~arg_0 % 32u)), -_wgslsmith_dot_vec3_i32(u_input.b.wwz ^ var_0.zyw, vec3<i32>(-46176i, -2523i, u_input.b.x)));
}

fn func_2() -> bool {
    global1 = array<bool, 2>();
    let var_0 = -func_3(u_input.d & u_input.a.x, 15840u);
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(min(341f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-521f)))))))));
    return var_1 > 1052f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec4<u32>(min(~123960u, 3555u), ~(4294967295u ^ func_1()), ~(u_input.d & u_input.d), ~(~(~u_input.c.x))));
    var var_1 = !select(select(!select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 2u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], false, false), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 2u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], true, true), false)), all(!vec3<bool>(global1[_wgslsmith_index_u32(33255u, 2u)], true, true))), vec3<bool>(true, func_2(), any(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 2u)], true, false, true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], false, global1[_wgslsmith_index_u32(u_input.d, 2u)], global1[_wgslsmith_index_u32(83694u, 2u)])))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(938f - -305f), _wgslsmith_f_op_f32(round(-1000f)))) != -1398f);
    let var_2 = vec2<u32>(func_1(), u_input.d);
    var_0 = _wgslsmith_div_vec4_u32(u_input.c, u_input.c);
    var var_3 = !(!vec4<bool>(true, true, ~4294967295u == _wgslsmith_mod_u32(71497u, var_2.x), false));
    let var_4 = Struct_3(_wgslsmith_dot_vec4_i32(~u_input.b, firstTrailingBit(vec4<i32>(countOneBits(15181i), u_input.b.x << (u_input.c.x % 32u), u_input.b.x >> (3348u % 32u), 1i))), 1u, select(vec4<bool>(all(vec2<bool>(false, true)), all(select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 2u)], false), var_1.xz, vec2<bool>(false, false))), var_3.x, false), select(vec4<bool>(!var_1.x, var_1.x, var_1.x, !var_3.x), select(vec4<bool>(false, false, var_3.x, false), vec4<bool>(false, false, var_1.x, var_3.x), !vec4<bool>(true, var_1.x, true, global1[_wgslsmith_index_u32(u_input.a.x, 2u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(49742u, 2u)], false, var_1.x, var_3.x), !vec4<bool>(var_1.x, var_1.x, false, var_3.x), true)), select(select(vec4<bool>(var_3.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 2u)], true, global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(52544u, 2u)]), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, !global1[_wgslsmith_index_u32(u_input.c.x, 2u)], select(false, true, false)), vec4<bool>(false, any(var_3.xwz), true, true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), 859f, _wgslsmith_f_op_f32(select(-2438f, 430f, true)), -564f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_4.d.wyw));
}

