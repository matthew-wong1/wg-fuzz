struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(1i, -2821i, 9236i, -1i), vec4<i32>(-1i, 20108i, -1i, 0i), vec4<i32>(-1i, 2147483647i, 23218i, -6629i), vec4<i32>(-27235i, -58322i, i32(-2147483648), -1i), vec4<i32>(20087i, 2147483647i, -1i, -1i), vec4<i32>(46240i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, -1i, 2147483647i, -1i), vec4<i32>(1i, 2147483647i, 42049i, -1i), vec4<i32>(i32(-2147483648), -80135i, 1i, 1i), vec4<i32>(-1i, 1i, 74140i, 584i), vec4<i32>(-1923i, -1i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, 22497i, -1i), vec4<i32>(-23447i, 39480i, 59564i, 1i), vec4<i32>(-39337i, -1i, 4796i, 0i), vec4<i32>(705i, 1i, -18956i, 2147483647i));

var<private> global1: vec4<u32> = vec4<u32>(52117u, 10611u, 0u, 1u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global0 = array<vec4<i32>, 15>();
    return _wgslsmith_sub_vec4_u32(~(~select(select(vec4<u32>(global1.x, 1u, global1.x, 11897u), vec4<u32>(global1.x, 0u, 1u, 4294967295u), true), vec4<u32>(global1.x, global1.x, 89144u, 1u), vec4<bool>(true, true, true, true))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(33379u, global1.x, global1.x, global1.x), vec4<u32>(global1.x, 83916u, global1.x, global1.x)) ^ vec4<u32>(global1.x, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, global1.x, 0u, global1.x), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(18554u, global1.x, 83106u, 34047u)))));
}

fn func_2() -> Struct_1 {
    global1 = vec4<u32>(global1.x, _wgslsmith_mod_u32(~global1.x, ~global1.x) | 4294967295u, 7007u & global1.x, 0u) >> (~func_3() % vec4<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(-971f + -1000f))))), ~global1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 15>();
    var var_0 = false;
    var var_1 = vec3<bool>(true, arg_0.x, select(!(!(arg_0.x || true)), arg_2.a > arg_3.a, arg_0.x));
    global0 = array<vec4<i32>, 15>();
    let var_2 = _wgslsmith_clamp_u32(4206u, arg_1.x, 1u);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> u32 {
    global1 = vec4<u32>(55350u, ~select(76477u, 51372u, false) >> (~abs(global1.x) % 32u), arg_0.b, 53662u) & vec4<u32>(select(22482u, 1u, any(vec4<bool>(true, true, true, true))), 21667u, global1.x, 1u);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(step(func_2().a, arg_0.a))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-798f, arg_0.a)))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) * vec2<f32>(1461f, arg_0.a)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, -2205f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-305f, -539f)));
    let var_2 = Struct_1(-1405f, 4294967295u);
    let var_3 = !vec4<bool>(!all(vec3<bool>(true, true, true)), true, true, false);
    return select(var_2.b, ~reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, var_2.b), global1.yzz | global1.yzz)), var_3.x);
}

fn func_1() -> Struct_1 {
    global1 = vec4<u32>(global1.x >> (global1.x % 32u), _wgslsmith_div_u32(46830u, 11739u), global1.x, func_5(func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), false), max(global1.xwx, vec3<u32>(1u, 0u, 4294967295u)), func_2(), Struct_1(_wgslsmith_f_op_f32(sign(706f)), ~global1.x)), u_input.a));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f - func_4(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec3<u32>(45596u, global1.x, global1.x), Struct_1(-1000f, global1.x), Struct_1(-1000f, 15856u)).a)), global1.x);
    let var_1 = vec3<f32>(-1610f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1716f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.a, 830f))))) * _wgslsmith_f_op_f32(step(var_0.a, var_0.a))));
    var var_2 = var_0;
    var_2 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), func_3().x);
    var_0 = func_2();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(var_2.a, -1057f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2075f))))), _wgslsmith_sub_u32(min(var_0.b | global1.x, ~21459u) >> (_wgslsmith_sub_u32(73590u, var_0.b) % 32u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(global1.wz, vec2<u32>(53403u, var_1.b)), ~(vec2<u32>(global1.x, var_1.b) & vec2<u32>(84509u, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2().a, _wgslsmith_f_op_f32(max(var_2.a, -1145f)), _wgslsmith_f_op_f32(trunc(424f)))))), 4294967295u, u_input.a, abs(firstLeadingBit(abs(vec3<i32>(u_input.a, u_input.a, 2147483647i) ^ vec3<i32>(u_input.a, 13612i, -5814i)))));
}

