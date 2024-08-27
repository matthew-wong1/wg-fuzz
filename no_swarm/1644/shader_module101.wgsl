struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> bool {
    return true;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    let var_0 = max(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(76278u, arg_1.x), vec2<u32>(1u, 27386u))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), arg_1.x, _wgslsmith_mod_u32(arg_1.x, arg_1.x))), ~(arg_1.x ^ reverseBits(1u)), u_input.b, u_input.b), ~vec4<u32>(1654u, _wgslsmith_mult_u32(0u, u_input.c.x) & _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(41572u, arg_1.x, 47790u)), 0u, arg_1.x));
    let var_1 = vec2<u32>(_wgslsmith_add_u32(abs(52708u), _wgslsmith_sub_u32(_wgslsmith_div_u32(~0u, abs(1u)), ~21242u)), arg_1.x >> (23218u % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + -1186f))) + _wgslsmith_f_op_f32(f32(-1f) * -1166f)) * -1281f);
    var_2 = _wgslsmith_f_op_f32(floor(arg_2));
    var_2 = -1766f;
    return var_1.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(2147483647i, -5471i)), select(vec2<i32>(68935i, -2147483647i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, false))), vec2<i32>(-2147483647i, 1i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(11021i, u_input.a), vec2<i32>(-1i, 2147483647i))), -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), max(vec2<i32>(u_input.a, 25393i), vec2<i32>(-1i, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-220f + 404f)));
    var var_2 = !(!vec4<bool>(true, all(vec2<bool>(true, true)), firstLeadingBit(40464u) <= ~u_input.b, select(false, true, false) | all(vec4<bool>(true, false, true, false))));
    var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(-2147483647i, -1i), i32(-1i) * -1i), vec2<i32>(-1i, firstLeadingBit(-27252i))) | ~(~u_input.a);
    var_2 = !(!vec4<bool>(all(vec2<bool>(var_2.x, false)), func_2(), true, u_input.b > func_3(vec2<i32>(-22038i, 1i), vec3<u32>(arg_0, u_input.b, u_input.c.x), -2883f, vec3<f32>(-125f, 2455f, -431f))));
    return Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(58727u, u_input.c.x, 4294967295u), u_input.c | vec3<u32>(arg_0, 4294967295u, u_input.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-758f, 328f, 1583f), vec3<f32>(-1364f, -199f, 567f), vec3<bool>(true, true, var_2.x))))), vec3<f32>(_wgslsmith_f_op_f32(round(-491f)), _wgslsmith_div_f32(1000f, 1041f), _wgslsmith_f_op_f32(f32(-1f) * -158f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(false, !(_wgslsmith_f_op_f32(1000f - 299f) <= _wgslsmith_f_op_f32(trunc(2209f)))));
    let var_1 = true;
    let var_2 = func_1(~(u_input.b >> (_wgslsmith_mod_u32(min(5998u, 4294967295u), u_input.b) % 32u)));
    let var_3 = (abs(0u) ^ u_input.b) | u_input.c.x;
    var var_4 = var_2;
    var var_5 = firstLeadingBit(1u);
    let x = u_input.a;
    s_output = StorageBuffer(-925f);
}

