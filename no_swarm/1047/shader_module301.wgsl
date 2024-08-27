struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
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

var<private> global0: u32;

var<private> global1: array<bool, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = select(vec4<bool>(!arg_0.x, true, (true || any(arg_0)) == all(select(vec4<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(u_input.d, 10u)], true), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 10u)]), true)), all(select(arg_0.zz, vec2<bool>(false, true), all(arg_0)))), !select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(1793u, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], false)), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)], arg_0.x), !global1[_wgslsmith_index_u32(u_input.d, 10u)]), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(0u, 10u)]), !vec4<bool>(true, false, arg_0.x, arg_0.x), select(vec4<bool>(true, arg_0.x, true, global1[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.d, 10u)], false, arg_0.x), vec4<bool>(false, arg_0.x, false, true))), arg_0.x), !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(42113u, 10u)], arg_0.x, global1[_wgslsmith_index_u32(u_input.d, 10u)]))));
    let var_1 = Struct_1(-241f, false, true);
    let var_2 = var_1;
    global1 = array<bool, 10>();
    return _wgslsmith_f_op_f32(f32(-1f) * -2472f);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    global0 = reverseBits(u_input.d);
    global1 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_f32(func_3(!vec3<bool>(false, any(vec2<bool>(global1[_wgslsmith_index_u32(arg_2, 10u)], false)), false)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, 31829u), vec3<u32>(4294967295u, arg_2, u_input.d)), arg_2), vec2<u32>(1u | (u_input.c | 4294967295u), arg_2)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(35633u, u_input.d)), ~60456u), ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(20448u, arg_2), vec2<u32>(0u, 0u)), vec2<u32>(1u, 1u), vec2<u32>(arg_2, 4294967295u))), 1u, _wgslsmith_clamp_u32(~1u, reverseBits(53665u), abs(_wgslsmith_add_u32(arg_2, 18737u))));
    global1 = array<bool, 10>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * _wgslsmith_f_op_f32(step(1244f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 10u)], true)))))), true, false);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))) - _wgslsmith_f_op_f32(trunc(arg_0.a))), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(46698u, 21721u, u_input.d, arg_1) | vec4<u32>(1u, u_input.c, 1u, arg_1), ~vec4<u32>(56489u, 0u, u_input.d, 4294967295u)), arg_1) & (_wgslsmith_div_u32(u_input.c | u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(10750u, 18823u), vec2<u32>(arg_1, 1u))) >> (4294967295u % 32u)), 10u)], !(!(!any(vec4<bool>(false, global1[_wgslsmith_index_u32(6076u, 10u)], global1[_wgslsmith_index_u32(15581u, 10u)], false)))));
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    global0 = u_input.d;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(-1916f, -582f), _wgslsmith_f_op_f32(step(arg_0.a, 445f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 290f) * _wgslsmith_f_op_f32(f32(-1f) * -805f))))), arg_0.a, arg_1);
    return var_0;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2781f, 1000f, 863f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-728f, 1000f))))), 1885u), 81484u);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1417f, var_0.a, 206f) * vec3<f32>(var_0.a, -1395f, var_0.a)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, var_0.a, var_0.a), vec3<f32>(var_0.a, var_0.a, var_0.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, -1224f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, 513f, -1112f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -615f))), !(any(vec3<bool>(false, false, var_0.c)) != false))), _wgslsmith_dot_vec3_u32(~firstTrailingBit(arg_0), vec3<u32>(0u, 0u, u_input.d)));
    var var_2 = 0i;
    var var_3 = ~reverseBits(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(51282u, arg_0.x)) & arg_0.x);
    var var_4 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(vec3<u32>(1u, reverseBits(4294967295u) | (u_input.c & u_input.d), ~u_input.d)));
    global1 = array<bool, 10>();
    let var_1 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.d, u_input.c), ~92457u), _wgslsmith_mult_vec2_u32(~vec2<u32>(25775u, u_input.d), ~vec2<u32>(4294967295u, 4294967295u))));
    let var_2 = !select(!vec4<bool>(true, func_2(vec3<f32>(-235f, 237f, var_0.a), -1897f, 0u).b, false, true), vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u & var_1.x, 10u)], select(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], var_0.c, true)), true, global1[_wgslsmith_index_u32(0u, 10u)]), abs(u_input.a) < u_input.a, var_0.c), vec4<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 10u)], false, global1[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 10u)], false, global1[_wgslsmith_index_u32(0u, 10u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 10u)], var_0.c, global1[_wgslsmith_index_u32(0u, 10u)], var_0.c))), 4294967295u < _wgslsmith_mod_u32(var_1.x, u_input.c), true, any(select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 10u)], var_0.b, var_0.c), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], var_0.b, global1[_wgslsmith_index_u32(var_1.x, 10u)]), global1[_wgslsmith_index_u32(u_input.d, 10u)]))));
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

