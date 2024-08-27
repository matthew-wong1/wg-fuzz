struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = vec4<i32>((abs(u_input.d) & -1i) >> (_wgslsmith_add_u32(19690u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, u_input.c)), 44434u) % 32u), reverseBits(~(-min(u_input.b, u_input.b))), -8859i, ~(~u_input.d));
    var_0 = -vec4<i32>(abs(max(min(u_input.b, -6759i), var_0.x)), u_input.b, -1017i, 24170i);
    let var_1 = Struct_1(vec4<u32>(reverseBits(u_input.c), u_input.a, _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(1u, u_input.c, u_input.a)), ~vec3<u32>(u_input.a, u_input.c, u_input.c)), 44545u & _wgslsmith_sub_u32(u_input.a & 1322u, ~58031u)));
    var_0 = vec4<i32>(u_input.d, ~671i, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, u_input.d, 0i), vec4<i32>(u_input.d, 2982i, -25654i, u_input.b)) | u_input.d), _wgslsmith_mult_i32(max(25445i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -1i, -41903i, -2147483647i), vec4<i32>(u_input.d, u_input.b, var_0.x, u_input.b))), abs(~1i))) ^ (vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.b), vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x)), abs(u_input.d), abs(_wgslsmith_clamp_i32(40410i, 6387i, 14626i))) ^ ~(~vec4<i32>(-12178i, u_input.b, 1i, u_input.b)));
    var_0 = select(vec4<i32>(_wgslsmith_mult_i32(1i, -u_input.b), -(~u_input.d), var_0.x, -9945i), ~(-(~vec4<i32>(u_input.d, -1i, -2147483647i, 2147483647i))), !(!vec4<bool>(arg_0.b, all(vec2<bool>(arg_0.b, true)), any(vec4<bool>(arg_0.b, arg_0.b, false, true)), arg_0.b)));
    return var_1.a;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_1(~func_3(Struct_2(_wgslsmith_f_op_f32(-1699f + 254f), true)));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1361f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1446f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(383f, 1839f, 174f), vec3<f32>(-1000f, 1430f, 180f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1889f, -369f, -320f), vec3<f32>(-356f, -2274f, -372f), false)))), vec3<f32>(-121f, -1154f, _wgslsmith_f_op_f32(-985f - 2066f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1016f, -114f, -966f), vec3<f32>(480f, -458f, 618f))), vec3<f32>(-1279f, -1784f, 276f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, 156f, 1541f)))))));
    let var_3 = var_2.x;
    var var_4 = reverseBits(vec3<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.a, 4294967295u), 0u), u_input.c)) & vec3<u32>(~var_0.a.x, _wgslsmith_sub_u32(~(~4294967295u), 1u), _wgslsmith_sub_u32(u_input.c, countOneBits(u_input.c)));
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1510f, _wgslsmith_div_f32(-762f, var_3), false))), -869f)), !(var_3 == 580f));
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    let var_0 = 1268f;
    let var_1 = func_2(_wgslsmith_clamp_i32(-15235i, _wgslsmith_mod_i32(u_input.b, -(i32(-1i) * -1493i)), _wgslsmith_div_i32(-u_input.d, u_input.b)));
    var var_2 = func_2(1i);
    let var_3 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(~_wgslsmith_add_i32(1i, -u_input.d), abs(~_wgslsmith_div_i32(u_input.b, 0i))));
    var_2 = var_1;
    return StorageBuffer(vec4<f32>(var_0, _wgslsmith_f_op_f32(max(var_0, var_1.a)), 754f, _wgslsmith_f_op_f32(-var_1.a)), u_input.c & ((u_input.c | (u_input.a & u_input.a)) ^ 43664u), ~(~vec3<u32>(u_input.a, 104978u, _wgslsmith_mod_u32(u_input.c, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!vec2<bool>(true, !any(vec2<bool>(false, true))));
}

