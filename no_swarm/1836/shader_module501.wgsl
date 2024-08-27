struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = vec2<i32>(min(arg_2.a, arg_2.a), _wgslsmith_mod_i32(~u_input.a, firstTrailingBit(-arg_2.a))) & (select(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_2.a, u_input.a), vec2<i32>(-63569i, u_input.a)), countOneBits(vec2<i32>(arg_2.a, arg_2.a)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 13272i), vec2<i32>(-2147483647i, -14003i)), select(true, !arg_0, any(vec3<bool>(false, true, false)))) >> (arg_1 % vec2<u32>(32u)));
    var var_1 = Struct_1(0i);
    var var_2 = arg_2;
    var_0 = vec2<i32>(-max(_wgslsmith_add_i32(arg_2.a, 24977i) ^ abs(0i), 20866i), abs(-13618i));
    return -1i;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(select(-func_3(false, arg_0.zz, Struct_1(u_input.a)) | 24199i, u_input.a, all(vec3<bool>(true, any(vec2<bool>(true, true)), true))));
    return 485f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = vec4<bool>(false, false, select(true, any(vec2<bool>(true, true)), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), !(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) && true));
    var var_2 = -840f;
    let var_3 = arg_1;
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(max(firstLeadingBit(vec4<i32>(2147483647i, arg_1.a, arg_1.a, -21395i)) & ~vec4<i32>(u_input.a, var_3.a, -14975i, u_input.a), firstTrailingBit(vec4<i32>(0i, var_3.a, -41412i, 2147483647i))), -(~vec4<i32>(var_0.a, var_0.a, -1i, u_input.a))));
    return select(select(vec4<i32>(var_4.a & var_3.a, ~var_4.a, var_3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(14222i, -1i, -22946i, 2147483647i), vec4<i32>(19691i, -1i, 13263i, u_input.a))) ^ vec4<i32>(32858i, u_input.a << (arg_3.x % 32u), reverseBits(var_4.a), firstTrailingBit(arg_1.a)), vec4<i32>(-36842i, firstTrailingBit(-39574i), ~countOneBits(-2147483647i), var_0.a), vec4<bool>(any(var_1), !any(var_1.wyx), var_1.x, var_1.x)), -vec4<i32>(-31924i, var_0.a, ~arg_1.a, 24985i), vec4<bool>(var_1.x, var_1.x, true, all(vec4<bool>(true & var_1.x, any(vec3<bool>(var_1.x, true, true)), var_1.x, var_1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(firstTrailingBit(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))), Struct_1(_wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, 604f)), -597f)), arg_2.yy | vec2<u32>(arg_2.x, arg_2.x))), ~vec4<i32>(50423i, firstTrailingBit(u_input.a), 1i, u_input.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(abs(vec4<u32>(4294967295u, arg_2.x, 1u, 42874u) << (vec4<u32>(53478u, 3874u, arg_2.x, 1u) % vec4<u32>(32u))))))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
    let var_2 = Struct_1(u_input.a);
    let var_3 = Struct_1(var_0.x >> (~arg_2.x % 32u));
    let var_4 = vec2<u32>(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, ~arg_2.x), arg_2.x ^ ~(~1u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1334f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(select(533f, _wgslsmith_f_op_f32(-arg_0.x), var_4.x > var_4.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-291f, 434f)))))), -643f), -1715f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-710f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-448f, 533f)))), any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-237f, -891f, 1019f), vec3<f32>(1000f, 241f, -396f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-102f, 1637f, -1914f), vec3<f32>(-359f, 624f, -102f)))), _wgslsmith_f_op_f32(ceil(844f)) != _wgslsmith_div_f32(-1016f, -690f), ~vec3<u32>(1u, 1u, 1u))))), _wgslsmith_f_op_f32(func_1(vec3<f32>(-132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1235f, -1456f))), _wgslsmith_f_op_f32(ceil(-383f))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(81030u, 4294967295u, 1u, 1u)), ~vec4<u32>(4294967295u, 39332u, 38616u, 0u)) >= 1u, ~(~(~vec3<u32>(4294967295u, 4294967295u, 60756u))))));
    let var_1 = -718f > var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.zwx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wxy * var_0.www))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zzx - var_0.ywx)), vec3<bool>(all(select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, false, false, false), true)), _wgslsmith_f_op_f32(-1684f * var_0.x) <= _wgslsmith_f_op_f32(trunc(var_0.x)), true))));
    let var_3 = Struct_1(u_input.a);
    let var_4 = -(~((var_3.a & -1i) & var_3.a));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(var_3.a, u_input.a, u_input.a), vec3<i32>(var_4, var_3.a, var_3.a), vec3<bool>(false, var_1, var_1)), vec3<i32>(var_3.a, 0i, u_input.a)), ~func_4(var_0.x, Struct_1(u_input.a), -448f, vec2<u32>(1u, 0u)).yww), vec3<i32>(var_3.a, var_4, u_input.a)), 966f, 231f);
}

