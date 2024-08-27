struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1973f * -124f);
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(21148u, 0u, 63513u), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 0u, 0u), select(vec3<u32>(4294967295u, 122259u, 21665u), vec3<u32>(85997u, 54793u, 82442u), vec3<bool>(false, false, true)))), 56874u), _wgslsmith_mult_vec2_u32(~countOneBits(countOneBits(vec2<u32>(u_input.a, 87941u))), abs(vec2<u32>(1u, ~105931u))));
    var var_2 = Struct_4(Struct_1(-firstTrailingBit(~(-35460i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1324f))))))), _wgslsmith_f_op_vec3_f32(-arg_0), Struct_2(_wgslsmith_f_op_f32(-var_0), var_1.x, ~select(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, -4152i), vec4<i32>(35473i, 30235i, 1i, -51984i)), true), 1873f, Struct_1(1i, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(ceil(-1188f))))), Struct_1(_wgslsmith_mult_i32(~(-2107i), _wgslsmith_clamp_i32(1i, 1i, -20371i)), 687f), vec4<bool>(select(true & select(true, false, false), !all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, false)) | (-854f >= arg_0.x)), select(!(u_input.a == 4273u), false, false), ((54234u == u_input.a) != true) & (min(-37141i, -1i) >= _wgslsmith_clamp_i32(2147483647i, 57036i, -16102i)), select(select(false, true, true), false, -19446i < (1i << (u_input.a % 32u)))));
    let var_3 = Struct_5(Struct_1(var_2.a.a, -867f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, var_2.d.b), _wgslsmith_f_op_f32(-var_0))), -652f, -868f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -2047f, 1f), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(max(arg_0.x, 1513f)))))), var_2.c.d, ~abs(34979u), _wgslsmith_add_u32(0u, ~_wgslsmith_add_u32(var_2.c.b, 114908u) ^ var_2.c.b));
    let var_4 = firstTrailingBit(1u);
    return reverseBits(~var_1.x);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~(~vec4<i32>(59117i, -75380i, -42695i, 28743i)));
    var var_1 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -430f) != _wgslsmith_f_op_f32(trunc(-342f)));
    var_0 = abs(0i >> (func_3(vec3<f32>(_wgslsmith_f_op_f32(939f + -271f), -1900f, 1f)) % 32u));
    var var_2 = -firstLeadingBit(_wgslsmith_sub_i32(1i, 1i));
    var var_3 = !all(var_1.yw);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_sub_u32(1u, 62251u >> (arg_0 % 32u)), -min(-_wgslsmith_clamp_i32(-12170i, 0i, 7527i), -reverseBits(-16965i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f - -779f) * _wgslsmith_f_op_f32(f32(-1f) * -1925f)) + 1f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(735f, -784f))))), Struct_1(-19861i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1560f)))) + -335f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = Struct_4(arg_0, vec3<f32>(arg_0.b, _wgslsmith_div_f32(arg_1.a.b, _wgslsmith_f_op_f32(trunc(552f))), _wgslsmith_div_f32(-1044f, 187f)), func_2(100031u), arg_1.a, vec4<bool>(true, all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true)), (any(vec2<bool>(false, false)) | false) | false));
    var var_1 = _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d.a, 1i, 2147483647i), select(~vec3<i32>(20465i, 2147483647i, var_0.a.a), vec3<i32>(arg_1.a.a, arg_0.a, arg_0.a), select(vec3<bool>(var_0.e.x, false, false), vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), var_0.e.xwz)), ~(-vec3<i32>(0i, arg_0.a, 14349i))), countOneBits(-(~(-vec3<i32>(arg_0.a, 0i, 1i)))));
    let var_2 = _wgslsmith_f_op_f32(arg_1.a.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-arg_0.b)), arg_0.b, any(vec2<bool>(true, true))))));
    let var_3 = var_0.c;
    let var_4 = arg_1;
    return var_1.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(!any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)) & true, true);
    let var_1 = ~(~_wgslsmith_clamp_i32(~8384i, -10129i, ~(-73555i)) | 2147483647i);
    var var_2 = ~func_1(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-98390i, var_1, var_1, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, var_1, var_1), vec4<i32>(-2147483647i, -7465i, var_1, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f + 618f) + _wgslsmith_f_op_f32(abs(755f)))), Struct_3(Struct_1(var_1 ^ 50607i, _wgslsmith_f_op_f32(round(1744f)))));
    var var_3 = Struct_5(func_2(min(_wgslsmith_div_u32(u_input.a, 17672u), u_input.a)).e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1138f, 1140f, 1074f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1396f, -192f) + vec3<f32>(-552f, 500f, 843f)))))), _wgslsmith_f_op_f32(-1228f + _wgslsmith_f_op_f32(select(-905f, _wgslsmith_f_op_f32(floor(1f)), var_0.x))), u_input.a, _wgslsmith_mult_u32(~_wgslsmith_add_u32(46928u, 46599u) ^ u_input.a, func_2(u_input.a).b));
    let var_4 = Struct_4(func_2(~(~(~4294967295u))).e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_3.b.x, -684f)))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(exp2(var_3.c))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~var_3.d), vec2<u32>(~var_3.e, ~var_3.d)), var_2.x, _wgslsmith_f_op_f32(-1309f - var_3.a.b), func_2(_wgslsmith_add_u32(func_3(vec3<f32>(var_3.a.b, var_3.b.x, var_3.c)), var_3.e)).e), Struct_1(2147483647i, -2206f), select(select(select(!vec4<bool>(var_0.x, false, false, false), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, true, false, false)), var_0.x), !(!vec4<bool>(false, var_0.x, var_0.x, false)), true), !(!select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), select(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, true, var_0.x)), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), all(select(vec2<bool>(false, true), var_0.zx, var_0.x)))));
    let var_5 = -1358f;
    let var_6 = _wgslsmith_mult_i32(var_2.x, var_2.x) >> (~(~min(_wgslsmith_sub_u32(var_3.d, var_4.c.b), u_input.a)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -44177i, 2147483647i), -571i), vec4<f32>(var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-201f, -878f), -950f))), var_3.c, _wgslsmith_f_op_f32(abs(-505f))), _wgslsmith_f_op_vec2_f32(select(var_3.b.zy, _wgslsmith_f_op_vec2_f32(var_4.b.zz - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_4.b.yy + vec2<f32>(var_5, -368f))))), false)), vec3<u32>(var_3.d, ~19095u, 3356u), vec3<u32>(_wgslsmith_div_u32(var_3.d << (func_2(0u).b % 32u), u_input.a ^ var_4.c.b), 5055u, _wgslsmith_mod_u32(abs(u_input.a) << (var_3.d % 32u), 2511u)));
}

