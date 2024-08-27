struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec3_i32(select(u_input.a, _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.x, 0i, 20872i), u_input.a), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), -u_input.a)), !all(vec2<bool>(true, true))), ~vec3<i32>(arg_1.a.x, -arg_0.a.x, 1i) ^ _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-u_input.a.x, ~arg_0.a.x, u_input.a.x | arg_0.a.x)));
    let var_1 = Struct_1(-arg_1.a, max(max(arg_1.b, vec2<u32>(14598u, arg_0.b.x >> (1u % 32u))), vec2<u32>(arg_1.b.x, 4294967295u)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1402f, _wgslsmith_f_op_f32(1421f * -1108f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f - 1343f) + 992f))), -2287f);
    var var_3 = u_input.b.yyx;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f + 398f));
    return vec4<i32>(~(-u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_0.a.x, arg_1.a.x, 0i) | vec4<i32>(5825i, var_1.a.x, arg_1.a.x, arg_0.a.x), abs(vec4<i32>(arg_0.a.x, u_input.a.x, var_1.a.x, var_1.a.x))), vec4<i32>(arg_0.a.x, arg_1.a.x, 17142i, -17930i) | (vec4<i32>(var_1.a.x, 2147483647i, u_input.a.x, arg_0.a.x) ^ vec4<i32>(var_1.a.x, -52407i, 51271i, 2626i))), -firstLeadingBit(vec4<i32>(arg_1.a.x, -151i, 0i, 1i))), -var_0, _wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(countOneBits(_wgslsmith_mult_i32(var_1.a.x, u_input.a.x)), ~arg_1.a.x)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = Struct_1(abs(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 36917i, -12410i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 45718i)) >> (1u % 32u))), countOneBits(~_wgslsmith_mod_vec2_u32(arg_2.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(9865u, 5855u), u_input.b.wx))));
    let var_1 = !(true & any(select(vec3<bool>(false, arg_1, false), select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, true), true), select(vec3<bool>(true, true, arg_1), vec3<bool>(true, true, arg_1), true))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1230f, arg_1))));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(arg_3));
    let var_4 = all(vec3<bool>(arg_1, all(select(vec3<bool>(false, arg_1, false), select(vec3<bool>(arg_1, var_1, var_1), vec3<bool>(false, false, true), vec3<bool>(var_1, arg_1, true)), select(vec3<bool>(var_1, arg_1, arg_1), vec3<bool>(true, var_1, arg_1), vec3<bool>(arg_1, var_1, false)))), !any(select(vec4<bool>(arg_1, var_1, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1), arg_1))));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(0i, min(1i, u_input.a.x & u_input.a.x), u_input.a.x)), u_input.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = max((-func_2(arg_1, Struct_1(arg_1.a, vec2<u32>(18082u, arg_1.b.x))) >> (vec4<u32>(u_input.b.x, _wgslsmith_add_u32(1u, 0u), arg_1.b.x, u_input.c.x) % vec4<u32>(32u))) & ((vec4<i32>(u_input.a.x, 1i, 11496i, 16719i) >> ((arg_0 | u_input.b) % vec4<u32>(32u))) | func_2(arg_1, Struct_1(vec2<i32>(arg_1.a.x, u_input.a.x), vec2<u32>(0u, arg_0.x)))), vec4<i32>(~(-2147483647i), func_3(~vec3<u32>(u_input.b.x, arg_1.b.x, 33590u), true, vec3<u32>(4294967295u, arg_1.b.x, u_input.b.x), vec2<f32>(815f, 2930f)) ^ ((u_input.a.x ^ -2147483647i) << (61460u % 32u)), 2147483647i, (~arg_1.a.x | -arg_1.a.x) & 26269i));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-315f, _wgslsmith_f_op_f32(round(105f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1829f))), true)) > 656f;
    return max(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(arg_0.x, countOneBits(70915u), arg_1.b.x, max(0u, arg_0.x)) | u_input.b), vec4<u32>(~0u, _wgslsmith_div_u32(~arg_0.x, _wgslsmith_mult_u32(~16508u, ~arg_0.x)), _wgslsmith_sub_u32(u_input.c.x, max(arg_0.x, arg_0.x)) & arg_0.x, arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = max(vec4<u32>(8369u, arg_1.x, ~(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(1u, 47076u)) << (1u % 32u)), 3841u), vec4<u32>(~(~_wgslsmith_div_u32(arg_0.b.x, 1u)), u_input.c.x, firstTrailingBit(max(45452u, u_input.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 6181u, u_input.b.x), vec3<u32>(4294967295u, 70791u, u_input.b.x))), ~arg_1.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(-10190i, u_input.a.x)), i32(-1i) * -u_input.a.x), u_input.c.zy), countOneBits(_wgslsmith_div_vec4_u32(~vec4<u32>(50478u, 1125u, u_input.b.x, 16462u), vec4<u32>(0u, 31247u, 4294967295u, 54590u)) | (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) | func_1(vec4<u32>(4294967295u, 1u, u_input.c.x, 21u), Struct_1(vec2<i32>(u_input.a.x, -2147483647i), vec2<u32>(u_input.b.x, u_input.b.x))))));
    let var_1 = -u_input.a.x;
    var_0 = func_4(func_4(Struct_1(select(abs(vec2<i32>(36128i, u_input.a.x)), max(vec2<i32>(1i, -64270i), vec2<i32>(var_0.a.x, 310i)), vec2<bool>(false, false)), abs(u_input.c.zy)), ~u_input.b), firstLeadingBit(u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-194f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1178f + -1423f), _wgslsmith_div_f32(1342f, 254f))), _wgslsmith_div_f32(-597f, _wgslsmith_f_op_f32(abs(-1625f))))), _wgslsmith_f_op_f32(abs(-1071f)), _wgslsmith_f_op_f32(-316f + 220f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1858f, -941f, -552f, -189f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1412f, 298f, 573f, 249f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, -810f, -1272f, -1466f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, -786f, 1332f, 465f)))))), vec4<bool>(!(var_1 < 33321i), any(vec2<bool>(all(vec2<bool>(false, true)), u_input.c.x > 0u)), true, true)));
    let var_3 = !vec3<bool>((u_input.c.x != _wgslsmith_add_u32(17859u, u_input.b.x)) | any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), false, any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))));
    var var_4 = ~_wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(-2528i, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~0u, select(81031u, 44677u, var_3.x), u_input.c.x, _wgslsmith_sub_u32(155702u, u_input.c.x))), 19392u, ~31911u), ~(-(~(~var_4.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, -867f, _wgslsmith_f_op_f32(-var_2.x)))))), u_input.c.x >> (~func_1(u_input.b, func_4(Struct_1(var_0.a, vec2<u32>(u_input.c.x, var_0.b.x)), vec4<u32>(1u, var_0.b.x, 0u, 49349u))).x % 32u), vec2<f32>(_wgslsmith_f_op_f32(-365f - _wgslsmith_f_op_f32(272f * var_2.x)), _wgslsmith_f_op_f32(-var_2.x)));
}

