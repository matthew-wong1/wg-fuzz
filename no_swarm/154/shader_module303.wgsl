struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<i32, 15>();
    return arg_0.c;
}

fn func_3() -> f32 {
    global1 = array<i32, 15>();
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(-542f)), _wgslsmith_f_op_f32(-1444f + 697f), 1001f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -773f), _wgslsmith_f_op_f32(-1584f - global0.x), -882f)));
    var var_0 = firstLeadingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.b, 67597u, u_input.b), vec3<u32>(1u, 36556u, 86740u)), select(vec3<u32>(u_input.b, 4294967295u, 35216u), vec3<u32>(u_input.b, u_input.b, u_input.b), false)), vec3<u32>(1u ^ u_input.b, _wgslsmith_mod_u32(6132u, u_input.b), u_input.b << (1u % 32u))));
    global1 = array<i32, 15>();
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = vec4<bool>(false, all(vec3<bool>(any(vec2<bool>(arg_0.c, arg_0.c)), any(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, true), vec2<bool>(arg_0.c, arg_0.c))), true)), all(select(vec2<bool>(all(vec4<bool>(arg_0.c, true, arg_0.c, false)), all(vec4<bool>(true, arg_0.c, false, arg_0.c))), select(!vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, false), select(vec2<bool>(true, false), vec2<bool>(arg_0.c, true), true)), !all(vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c)))), all(select(!vec4<bool>(true, false, arg_0.c, arg_0.c), vec4<bool>(any(vec4<bool>(true, true, arg_0.c, arg_0.c)), true, all(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)), arg_0.c), 1u >= abs(u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(953f + -820f) + -1076f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -625f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -250f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1086f, 718f, var_1, var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1204f, var_1, -701f))) - vec4<f32>(global0.x, 1165f, 783f, global0.x))));
    global1 = array<i32, 15>();
    let var_3 = select(firstLeadingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(-43956i, 1i, -2147483647i, u_input.a.x), -vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(14927u, 15u)], -2147483647i, u_input.a.x))), vec4<i32>(~arg_1, _wgslsmith_add_i32(-2147483647i, u_input.a.x), 1i, u_input.a.x) & select(countOneBits(vec4<i32>(-2147483647i, -28674i, u_input.a.x, arg_1)), vec4<i32>(0i, global1[_wgslsmith_index_u32(arg_0.a.x, 15u)], u_input.a.x, -11i), !vec4<bool>(var_0.x, false, false, arg_0.c)), func_2(arg_0)) << (abs(select(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 22008u, u_input.b, arg_0.b), ~vec4<u32>(40559u, u_input.b, arg_0.a.x, 1u)), ~vec4<u32>(62748u, arg_0.a.x, 4294967295u, u_input.b) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 0u), vec4<u32>(1u, arg_0.a.x, 50761u, u_input.b)), !var_0)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2279f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x - -1062f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(u_input.b, u_input.b), 29087u, false), -34817i)) * _wgslsmith_f_op_f32(f32(-1f) * -753f)))), global0.x, _wgslsmith_f_op_f32(min(-2464f, _wgslsmith_f_op_f32(-376f + global0.x))));
    global1 = array<i32, 15>();
    var var_0 = false;
    var_0 = any(vec4<bool>(true, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), all(vec4<bool>(true, true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(651f)), -vec2<i32>(max(abs(global1[_wgslsmith_index_u32(0u, 15u)]), 1i), 0i));
}

