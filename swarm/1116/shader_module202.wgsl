struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(~arg_0.a, -137f, arg_0.b, arg_0.d);
    var var_1 = arg_0.d;
    let var_2 = ~reverseBits(1u);
    var_1 = ~(-1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, arg_0.c, arg_0.c), vec3<f32>(822f, -212f, var_0.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_0.c, arg_0.b))), vec3<f32>(-1000f, -1175f, -216f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.c, arg_0.c) - vec3<f32>(1093f, -398f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.b, 175f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-240f, 1000f, _wgslsmith_f_op_f32(arg_0.b + -112f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.b, arg_0.b), vec3<f32>(arg_0.b, arg_0.b, var_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, var_0.c, arg_0.b) * vec3<f32>(1240f, -403f, arg_0.c)))))));
    return ~43384u;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(arg_2.a, ~(arg_2.a | arg_2.a)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -211f))), _wgslsmith_div_i32(~(_wgslsmith_sub_i32(arg_2.d, arg_2.d) >> (1u % 32u)), arg_2.d));
    var var_1 = ~(u_input.a ^ 29070u);
    return vec2<f32>(1510f, _wgslsmith_f_op_f32(f32(-1f) * -227f));
}

fn func_3(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = u_input.b.x;
    var var_1 = countOneBits(_wgslsmith_mult_vec3_i32(~(-(vec3<i32>(0i, 0i, 43920i) << (vec3<u32>(1u, var_0, 4294967295u) % vec3<u32>(32u)))), -vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -4726i, -5417i, 2147483647i), vec4<i32>(0i, 39310i, -12110i, 1i)), -1i)));
    var var_2 = abs(~(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 78921u, 0u, u_input.a)))));
    var var_3 = Struct_1(~(~var_2.yyz), _wgslsmith_f_op_f32(1263f * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)), -var_1.x);
    let var_4 = !select(vec2<bool>(select(false, true, all(vec4<bool>(true, false, false, true))), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    return StorageBuffer(0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(2484u, ~(~_wgslsmith_add_u32(70706u, func_1(Struct_1(vec3<u32>(u_input.a, 4294967295u, 70325u), -656f, 1458f, 55712i)))), 36297u);
    var var_1 = all(vec3<bool>(false, !(!all(vec4<bool>(false, true, true, false))), !(~28323u >= select(u_input.b.x, var_0.x, true))));
    let var_2 = Struct_1(var_0, 394f, -504f, 34013i);
    var_1 = any(!vec3<bool>(any(vec2<bool>(false, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true & any(vec4<bool>(false, false, true, true))));
    var_1 = true;
    var var_3 = _wgslsmith_f_op_f32(-890f - var_2.b);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(223f, 458f, -1101f, -403f)))))));
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_vec2_f32(func_2(var_2.a.x, vec3<bool>(true, var_2.d > var_2.d, var_2.d < _wgslsmith_mod_i32(var_2.d, var_2.d)), Struct_1(vec3<u32>(4294967295u, 0u, 1u) << (var_2.a % vec3<u32>(32u)), var_4.x, -1033f, var_2.d), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))));
}

