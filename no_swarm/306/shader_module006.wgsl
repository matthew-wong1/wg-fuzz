struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    let var_0 = -405f;
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, arg_2)))), -265f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.x, 598f)), 2674f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(607f, -1553f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 700f)) + _wgslsmith_f_op_f32(f32(-1f) * -1760f))));
    return _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, 44592i)) | _wgslsmith_add_i32(~9289i, ~_wgslsmith_mod_i32(0i, u_input.a.x ^ -9696i));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = 57535u;
    let var_1 = abs(firstTrailingBit(~(~vec3<u32>(var_0, var_0, var_0))) & vec3<u32>(~1u, var_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 22180u, 8100u, var_0), vec4<u32>(var_0, 8716u, 9992u, 0u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(step(-247f, 115f)), -1273f, -366f, -485f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1631f, 637f, 867f, -1647f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(894f, 205f, 1313f, 1530f)))))));
    let var_3 = select(vec3<i32>(-(u_input.a.x << (~25912u % 32u)), i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.a.x, func_3(vec4<f32>(-1669f, var_2.a.x, var_2.a.x, -1000f), var_1.x, 212f, firstLeadingBit(vec2<i32>(28250i, u_input.a.x))))), vec3<i32>(11220i, u_input.a.x, ~(-u_input.a.x)), false || arg_0);
    var var_4 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + 374f), -1359f, _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1000f, 1313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-198f, -1955f)) + _wgslsmith_f_op_f32(floor(arg_1)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 238f, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, arg_1, -196f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1256f, arg_1, arg_1) - vec4<f32>(arg_1, 1269f, 591f, arg_1)) - _wgslsmith_f_op_vec4_f32(func_2(true))), vec4<bool>(true, select(true, false, true), false, false)))));
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(0u), ~arg_0.x, _wgslsmith_add_u32(arg_0.x, arg_0.x), 27648u), vec4<u32>(0u, 70345u ^ arg_0.x, arg_0.x, 0u)), arg_0.x);
    let var_2 = var_0;
    return ~arg_0.x ^ ~(arg_0.x | var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    let var_0 = !global0[_wgslsmith_index_u32(~firstTrailingBit(5418u), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec4<u32>(8784u, max(func_1(vec2<u32>(16832u, 0u), 482f), _wgslsmith_sub_u32(4294967295u, 1u)), _wgslsmith_mod_u32(2506u, max(46605u, 0u)), 1u), ~_wgslsmith_mult_u32(9137u, abs(1u)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(7058u, 16123u, 6283u), select(vec3<u32>(1u, 1u, 11683u), vec3<u32>(6519u, 0u, 69794u), vec3<bool>(true, var_0.x, var_0.x))) % 32u), abs(2147483647i));
}

