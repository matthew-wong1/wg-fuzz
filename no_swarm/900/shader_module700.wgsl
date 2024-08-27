struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(259f, false, 1552f, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = -_wgslsmith_mod_i32(countOneBits(1i), ~(-_wgslsmith_add_i32(u_input.b.x, u_input.a.x)));
    var var_1 = global0.c;
    var var_2 = vec2<u32>(44940u, arg_1.d);
    var_1 = arg_0.a;
    let var_3 = u_input.b;
    return var_2.x;
}

fn func_2() -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))), all(select(vec2<bool>(u_input.b.x <= u_input.a.x, true), !(!vec2<bool>(true, global0.b)), vec2<bool>(true, true))), global0.a, select(~_wgslsmith_div_u32(4294967295u, func_3(Struct_1(431f, global0.b, global0.c, 4294967295u), Struct_1(global0.a, global0.b, global0.c, 30443u))), ~(~_wgslsmith_add_u32(global0.d, 0u)), any(vec2<bool>(global0.c < global0.c, false))));
    var var_0 = Struct_1(-769f, all(!(!vec2<bool>(global0.b, global0.b))), _wgslsmith_f_op_f32(floor(-552f)), global0.d);
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1236f)) - _wgslsmith_f_op_f32(-515f + global0.a))))), true, -1000f, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(75400u, var_0.d) ^ vec2<u32>(global0.d, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d, var_0.d), vec2<u32>(14483u, var_0.d), vec2<u32>(93539u, 4294967295u))), countOneBits(abs(vec2<u32>(71119u, global0.d)))));
    let var_1 = vec4<i32>(-38011i, -2147483647i, _wgslsmith_add_i32(abs(u_input.a.x), (abs(1i) << (0u % 32u)) | abs(u_input.a.x)), 1i | u_input.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) - global0.a))), true, -493f, 46102u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-540f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f - var_0.c))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1521f + 150f)))), global0.d);
    global0 = Struct_1(_wgslsmith_f_op_f32(617f - var_0.c), true, 1033f, var_0.d);
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))));
    var_1 = var_0;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(abs(0u), global0.d), _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(global0.d, 28269u, 0u))), (vec3<u32>(global0.d, 1u, 0u) ^ vec3<u32>(global0.d, global0.d, global0.d)) | _wgslsmith_div_vec3_u32(vec3<u32>(global0.d, global0.d, 0u), vec3<u32>(global0.d, global0.d, global0.d))), _wgslsmith_mod_u32(~1u, abs(4294967295u) & func_1(2147483647i, false, global0.c, true)), global0.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 1u, ~global0.d, global0.d), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(71514u, 17881u, global0.d, 9161u)), ~vec4<u32>(7958u, 0u, global0.d, global0.d)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(23607u, global0.d, global0.d, global0.d), vec4<u32>(6522u, global0.d, global0.d, 1u)) % vec4<u32>(32u)), vec4<u32>(abs(_wgslsmith_sub_u32(4294967295u, 1u)), ~global0.d << (global0.d % 32u), abs(reverseBits(1u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.d, global0.d), global0.d))));
    let var_1 = global0.d;
    let var_2 = true;
    var var_3 = -280f;
    global0 = Struct_1(global0.c, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(step(global0.a, global0.a)))))) + global0.a), global0.d);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(sign(global0.c)), true, _wgslsmith_f_op_f32(abs(global0.c)), firstTrailingBit(abs(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(min(521f, _wgslsmith_f_op_f32(-248f + 663f)))), 0u);
}

