struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, ~arg_2);
    let var_1 = Struct_1(vec2<f32>(624f, _wgslsmith_div_f32(arg_0, 927f)), -5719i);
    var var_2 = -1009f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_0));
    var_2 = -816f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - 1902f), -446f))) + var_1.a.x), arg_0));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2412f - 1470f)), _wgslsmith_f_op_f32(func_3(129f, Struct_1(vec2<f32>(-380f, 1000f), -23357i), 1i, 8743u)))), _wgslsmith_clamp_i32(u_input.a.x << (u_input.c % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~22304i, 2147483647i, -31047i), vec4<i32>(-41297i, arg_0.x & 2147483647i, u_input.a.x, -28625i)), arg_0.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(676f, var_0.a.x), _wgslsmith_f_op_vec2_f32(-var_0.a))))), u_input.a.x >> (u_input.d.x % 32u));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = func_2(vec3<i32>(min(u_input.a.x, -56795i), i32(-1i) * -2986i, arg_0) | vec3<i32>(-firstLeadingBit(arg_0), arg_0, u_input.a.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(u_input.a.x ^ _wgslsmith_div_i32(u_input.a.x >> (u_input.d.x % 32u), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)));
    var var_1 = var_0;
    let var_2 = func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(~1i, 12874i, u_input.a.x), vec3<i32>(u_input.a.x, ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2.a - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.x))))), _wgslsmith_div_f32(-1095f, var_2.a.x)));
    let var_4 = _wgslsmith_f_op_f32(step(var_2.a.x, 398f));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.a)) * vec2<f32>(-581f, var_3.x)) * var_2.a) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, var_3.x), var_2.a, vec2<bool>(false, var_0))))))));
    let var_5 = func_2(select(vec3<i32>(40971i, 2147483647i, -2147483647i), vec3<i32>(_wgslsmith_mod_i32(min(u_input.a.x, u_input.a.x), select(var_2.b, 0i, var_0)), u_input.a.x, abs(-u_input.a.x)), any(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), true)))).a;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, _wgslsmith_f_op_f32(abs(306f)), 1300f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-536f, var_5.x, var_4))))))), vec4<f32>(_wgslsmith_f_op_f32(func_3(-1169f, var_2, var_2.b, _wgslsmith_mult_u32(1u >> (u_input.b % 32u), _wgslsmith_mod_u32(u_input.d.x, u_input.b)))), -2361f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1183f, -182f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f * _wgslsmith_f_op_f32(-var_5.x)) * var_2.a.x)), -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(56184i, var_2.b, -2147483647i, 1i) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(u_input.a.x, var_2.b, 18179i, var_2.b))), u_input.c);
}

