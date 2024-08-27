struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> i32 {
    return select(~(-(~(-7734i))), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-23523i, ~1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-32162i, 0i), 1i), -16381i), !all(vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, true)), false)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_add_i32(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, ~arg_1, arg_1), 1i, 2147483647i), arg_1 << (~abs(u_input.a) % 32u));
    let var_1 = Struct_1(1u, min(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0.c.wxz, vec3<u32>(65376u, 45050u, arg_0.c.x)), ~16753u, 1638u & u_input.a), ~arg_0.e.x >> (17502u % 32u))), _wgslsmith_div_vec4_u32(arg_0.c, arg_0.c), arg_0.d, select(vec2<u32>(~23202u, _wgslsmith_dot_vec2_u32(max(arg_0.c.zw, vec2<u32>(u_input.a, arg_3)), ~arg_0.c.zz)), vec2<u32>(~(u_input.a | 26084u), u_input.a), true));
    var var_2 = _wgslsmith_f_op_f32(-835f - _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1003f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + -1217f))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -367f);
    let var_4 = ~reverseBits(~(vec4<u32>(arg_0.e.x, 9097u, 4294967295u, 12984u) >> (arg_0.c % vec4<u32>(32u))));
    return false;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = true;
    var_0 = any(!(!vec2<bool>(true, arg_1.x)));
    let var_1 = -380f;
    var_0 = func_3(arg_2, _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(func_2(Struct_1(1u, 4294967295u, vec4<u32>(u_input.a, arg_3, 59211u, 4294967295u), arg_2.d, vec2<u32>(u_input.a, arg_2.b)), -444f, arg_2.d.x), i32(-1i) * -54205i)), i32(-1i) * -19738i), -1296f, _wgslsmith_mod_u32(arg_2.c.x, 1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(753f, arg_2.d.x, arg_0, 837f), _wgslsmith_f_op_vec4_f32(vec4<f32>(384f, arg_0, var_1, -677f) * vec4<f32>(642f, var_1, var_1, -1299f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(449f, arg_2.d.x, -1320f, 1000f) * vec4<f32>(352f, var_1, -1807f, -1063f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1028f, -578f, var_1, 867f))))))));
    return -_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 16180i, 29051i), _wgslsmith_div_vec3_i32(vec3<i32>(-15487i, -2147483647i, 11844i), vec3<i32>(-1i, -1i, 2147483647i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, -40094i), ~(i32(-1i) * -6989i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstTrailingBit(1i), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1108f), !vec3<bool>(var_0, true, var_0), Struct_1(1u, u_input.a, vec4<u32>(u_input.a, 79883u, u_input.a, u_input.a), vec2<f32>(1074f, -812f), vec2<u32>(67102u, 0u)), u_input.a), 0i), reverseBits(18148i)), firstTrailingBit(43176i));
    var_1 = -2147483647i >> (u_input.a % 32u);
    var_1 = _wgslsmith_mod_i32(min(-25254i, -1i), firstTrailingBit(-firstLeadingBit(func_2(Struct_1(95075u, 1u, vec4<u32>(u_input.a, 18067u, 1u, u_input.a), vec2<f32>(376f, 861f), vec2<u32>(0u, u_input.a)), 919f, -308f))));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 41568u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, u_input.a, 0u)), max(vec3<u32>(0u, u_input.a, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 35352u), vec3<u32>(u_input.a, 41330u, 38536u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-191f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -724f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-205f, 116f)))))))), ~(~select(-1i, ~(-17018i), true)));
}

