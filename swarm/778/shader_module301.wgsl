struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    var var_0 = vec2<u32>(countOneBits(u_input.c.x), 0u);
    let var_1 = Struct_1(abs(-max(-u_input.b.x, min(u_input.b.x, u_input.b.x))));
    global0 = arg_1;
    var var_2 = ~max(vec3<u32>(arg_0.x, ~29345u, max(4294967295u, 0u)), arg_0.zxw);
    return _wgslsmith_mult_u32(u_input.c.x, ~0u);
}

fn func_1() -> u32 {
    let var_0 = false;
    global1 = 1i;
    var var_1 = abs(vec4<u32>(~(69491u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30997u, 0u), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x))), ~func_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) << (vec4<u32>(u_input.c.x, u_input.c.x, 11613u, u_input.c.x) % vec4<u32>(32u)), true), select(u_input.c.x, abs(u_input.c.x), false) ^ ~(~u_input.c.x), firstLeadingBit(9638u)));
    global1 = u_input.b.x;
    global0 = any(vec4<bool>(u_input.c.x >= ~65236u, !all(vec3<bool>(var_0, false, false)), any(vec2<bool>(var_0, false)), !all(!vec3<bool>(var_0, true, var_0))));
    return _wgslsmith_add_u32(7052u, u_input.c.x);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = !vec4<bool>(false && any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), all(vec4<bool>(true, false, true, true)), false, all(vec3<bool>(true, true, true)));
    var var_1 = arg_0.xyy;
    var_1 = vec3<u32>(22183u, ~countOneBits(arg_0.x), 20883u);
    global0 = true;
    let var_2 = all(var_0.xx);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), ~(~_wgslsmith_sub_u32(51283u, 1u)) < (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12786u, u_input.c.x, 87273u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 4294967295u, 55056u)), u_input.c.x) ^ _wgslsmith_mod_u32(4294967295u, func_1())));
    let var_1 = Struct_1(i32(-1i) * -31640i);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1187f), 648f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, -221f)) * vec2<f32>(-1000f, 1166f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1672f, -108f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2285f, -1806f) * vec2<f32>(-287f, 1032f)))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-333f, 1691f), _wgslsmith_f_op_f32(138f * 1430f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, -2580f)))));
    global1 = func_3(firstTrailingBit(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), firstTrailingBit(vec4<u32>(u_input.c.x, 0u, 26668u, 16235u))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(213f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 285f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_2.x))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(max(852f, _wgslsmith_f_op_f32(min(404f, var_2.x))))), _wgslsmith_div_f32(-1073f, -432f))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~func_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 36507u, 74677u), vec4<u32>(u_input.c.x, 42777u, u_input.c.x, u_input.c.x))), ~(-7373i)), ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 31685u, u_input.c.x), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)) >> (~u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -777f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x * var_2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x)))), 2147483647i);
}

