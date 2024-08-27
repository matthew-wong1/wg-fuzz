struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> u32 {
    return arg_0.x >> (arg_0.x % 32u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 15918u), vec4<u32>(1u, 0u, 4294967295u, 1u)) % 32u), 1u, func_3(reverseBits(vec3<u32>(53484u, 44045u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1015f), Struct_4(Struct_1(44998i, true))), ~65766u), vec4<u32>(0u, 31009u, ~4294967295u, 4294967295u)), abs(0u));
    var var_1 = _wgslsmith_f_op_f32(step(202f, _wgslsmith_f_op_f32(f32(-1f) * -2155f)));
    var var_2 = ~(~(~select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, -2147483647i)), ~vec3<i32>(u_input.a, -2147483647i, u_input.a), arg_1.a)));
    var var_3 = Struct_1(23371i, select(abs(var_0) == ~_wgslsmith_clamp_u32(6395u, 33626u, var_0), true | all(arg_1.a.zy), arg_0.x));
    let var_4 = Struct_4(Struct_1(_wgslsmith_mult_i32(_wgslsmith_div_i32(~29875i, _wgslsmith_mult_i32(var_2.x, 58686i)), _wgslsmith_sub_i32(max(var_3.a, -52357i), 0i)), !(!var_3.b)));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-143f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(157f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(275f, -522f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -167f))), -784f)));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = true;
    var_0 = !arg_3.b & (u_input.a > (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), -vec3<i32>(66260i, arg_0.x, 0i)) | -1i));
    var_0 = all(!(!vec4<bool>(!arg_3.b, false, true, true)));
    let var_1 = select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(19580u, _wgslsmith_div_u32(72277u, 2481u)), vec2<u32>(1u, 1u)), arg_3.b) | vec2<u32>(1u, 0u);
    var var_2 = ~countOneBits(4294967295u);
    return ~arg_0.x;
}

fn func_1() -> i32 {
    var var_0 = func_4(~vec2<i32>(_wgslsmith_mult_i32(u_input.a, -67291i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, 794f, _wgslsmith_f_op_f32(ceil(-860f)), _wgslsmith_div_f32(650f, 1332f)) - _wgslsmith_f_op_vec4_f32(func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), false), Struct_3(vec3<bool>(true, true, true), false))))), Struct_1(u_input.a, false));
    var var_1 = ~firstLeadingBit(vec2<u32>(1u, 1u));
    let var_2 = Struct_4(Struct_1(u_input.a, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(167f, -1000f)), _wgslsmith_f_op_f32(sign(766f))))) + -564f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1943f) + -1555f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2206f * -760f), -1574f))) + -1399f), -2053f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    var var_4 = true;
    return max(-2147483647i, abs(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = Struct_4(Struct_1(u_input.a, true));
    var var_2 = Struct_1(-func_1(), false);
    let x = u_input.a;
    s_output = StorageBuffer(16532i, vec3<i32>(var_0, -1i, i32(-1i) * -3111i), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-168f)))))), 737f));
}

