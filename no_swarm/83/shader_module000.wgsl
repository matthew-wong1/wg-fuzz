struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(~abs(abs(arg_2.c.zy) << (~u_input.c.wx % vec2<u32>(32u))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c.x, 0u), select(vec2<u32>(43301u, arg_2.c.x), u_input.e, vec2<bool>(false, false)), u_input.c.wx)), countOneBits(_wgslsmith_clamp_vec2_u32(arg_2.c.yy, arg_2.c.zw & vec2<u32>(u_input.b.x, arg_2.c.x), vec2<u32>(u_input.e.x >> (0u % 32u), 0u))));
    var var_1 = _wgslsmith_dot_vec3_i32(select(abs(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a, 2147483647i, -24661i), vec3<i32>(-4491i, 0i, arg_0))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-27740i, -25975i), u_input.a.x), -1i, (i32(-1i) * -35236i) ^ abs(u_input.a.x)), vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), !any(vec3<bool>(true, true, true)), false)), vec3<i32>(arg_0, ~(-1i), -(firstTrailingBit(1i) << ((var_0.x ^ 0u) % 32u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b.x))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-479f)))));
    let var_3 = ~abs(firstLeadingBit(max(_wgslsmith_mult_u32(u_input.b.x, var_0.x), u_input.c.x)));
    var var_4 = arg_2;
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d.x * -973f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2234f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(456f)), 431f)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec3_u32(arg_0.c.ywy, countOneBits(_wgslsmith_add_vec3_u32(abs(abs(vec3<u32>(u_input.e.x, 39970u, 1u))), ~(vec3<u32>(arg_0.c.x, 61133u, 13300u) >> (vec3<u32>(arg_0.c.x, 68361u, arg_0.c.x) % vec3<u32>(32u))))));
    var var_1 = select(u_input.a, vec2<i32>(_wgslsmith_mod_i32(~arg_0.a, arg_1), 19427i), arg_2.x);
    var var_2 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) == -423f, true, arg_2.x), vec3<bool>(true && any(vec2<bool>(false, arg_2.x)), arg_2.x, false && (true || any(vec2<bool>(arg_2.x, true)))), vec3<bool>(true, (firstTrailingBit(-17350i) != -arg_0.a) & !arg_2.x, arg_2.x));
    var var_3 = arg_0;
    var var_4 = ~arg_0.c;
    return arg_0.c;
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = ~(firstLeadingBit(arg_0.x) | ~4294967295u);
    var_0 = ~36920u;
    let var_1 = Struct_1(1i << (~(u_input.c.x >> (arg_0.x % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1234f, 100f) - vec2<f32>(-1000f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-578f, -282f), vec2<f32>(-595f, -671f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(391f, -854f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-195f, -653f), vec2<f32>(-715f, 1568f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(234f + -452f), _wgslsmith_f_op_f32(step(276f, -513f)))))), func_4(Struct_1(_wgslsmith_mod_i32(~(-8493i), u_input.d), _wgslsmith_f_op_vec2_f32(func_3(firstLeadingBit(13688i), ~2147483647i, Struct_1(u_input.d, vec2<f32>(-193f, -1037f), vec4<u32>(arg_0.x, arg_0.x, u_input.b.x, arg_0.x), vec4<f32>(729f, 1810f, 1000f, 1409f)))), vec4<u32>(_wgslsmith_mult_u32(1u, arg_0.x), ~u_input.c.x, _wgslsmith_div_u32(arg_0.x, arg_0.x), 59456u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-815f, -846f, 1707f, 1022f), vec4<f32>(1130f, -1000f, -1585f, -459f))))), 1i, select(vec2<bool>(true, all(vec4<bool>(true, false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), true), Struct_1(max(-37654i, 0i) & abs(u_input.d), vec2<f32>(-883f, _wgslsmith_f_op_f32(floor(183f))), ~(~u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -831f, 543f, 1048f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, -102f, 526f, -1555f) * vec4<f32>(-1322f, 1041f, -1000f, -231f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-481f, 237f, -123f, 228f), vec4<f32>(1000f, -1000f, -656f, 748f), vec4<bool>(true, true, true, true)))))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(select(-1i, ~var_1.a, false) | u_input.d, _wgslsmith_mult_i32(1i, u_input.a.x), Struct_1(12469i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.x, var_1.d.x))) + _wgslsmith_f_op_vec2_f32(var_1.d.wz - vec2<f32>(var_1.d.x, -1104f))), ~firstLeadingBit(vec4<u32>(0u, 4294967295u, 4294967295u, 83375u)), var_1.d))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x))), _wgslsmith_f_op_vec2_f32(func_3(~_wgslsmith_mod_i32(var_1.a, reverseBits(1i)), 1i, Struct_1(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x))), ~(~vec4<u32>(u_input.b.x, u_input.e.x, var_1.c.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(var_1.d.x, var_1.b.x, var_1.d.x, var_1.b.x))))).x);
    var_0 = u_input.e.x;
    return -select(-vec2<i32>(0i, 2147483647i), vec2<i32>(38050i, ~1019i), vec2<bool>(true, true)) ^ countOneBits(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(21946i, var_1.a)), ~firstTrailingBit(u_input.a)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = -func_2(vec3<u32>(reverseBits(29297u) & arg_3.c.x, arg_2.c.x, ~1u));
    var var_1 = reverseBits(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, 17203i, -2147483647i), vec4<i32>(-6370i, u_input.a.x, -9583i, arg_3.a)), _wgslsmith_mult_i32(-1i, u_input.a.x), true)), 1i, 0i >> (arg_1.x % 32u)));
    var var_2 = vec2<bool>(!any(!vec4<bool>(false, arg_0, false, true)) | arg_0, !arg_0 || all(select(vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(arg_0, false, false, true), !arg_0)));
    var var_3 = _wgslsmith_f_op_vec4_f32(arg_3.d * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_3.d.x, _wgslsmith_f_op_f32(-arg_3.d.x), arg_3.b.x) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2623f), arg_2.b.x, _wgslsmith_f_op_f32(-arg_3.d.x), 322f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x - 815f), _wgslsmith_f_op_f32(trunc(-570f)), _wgslsmith_f_op_vec2_f32(func_3(var_0.x, 15523i, Struct_1(arg_3.a, arg_3.d.zw, vec4<u32>(arg_2.c.x, u_input.e.x, arg_2.c.x, 46848u), arg_3.d))).x, -1243f))));
    var var_4 = arg_2;
    return !(!(!select(vec4<bool>(true, arg_0, arg_0, arg_0), select(vec4<bool>(false, arg_0, var_2.x, false), vec4<bool>(var_2.x, arg_0, arg_0, true), vec4<bool>(false, var_2.x, true, false)), select(false, false, arg_0))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_1(u_input.d, vec2<f32>(arg_3.x, arg_3.x), vec4<u32>(arg_2.x << (arg_1 % 32u), func_4(Struct_1(-1793i, vec2<f32>(arg_3.x, 1354f), u_input.c, vec4<f32>(-594f, arg_3.x, arg_3.x, 1201f)), -u_input.a.x, select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)), Struct_1(u_input.d, vec2<f32>(arg_3.x, 1437f), u_input.c, vec4<f32>(arg_3.x, -1000f, arg_3.x, arg_3.x))).x << (u_input.e.x % 32u), max(arg_1, 0u), _wgslsmith_mod_u32(countOneBits(~79850u), 4294967295u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1491f, 960f, -1380f)));
    var var_1 = Struct_1(-1i << (arg_1 % 32u), var_0.d.wx, vec4<u32>(u_input.e.x, _wgslsmith_add_u32(arg_2.x, ~arg_1), min(firstLeadingBit(~arg_2.x), func_4(Struct_1(u_input.d, vec2<f32>(var_0.d.x, -427f), u_input.c, vec4<f32>(-572f, 109f, 2036f, -648f)), 0i, !vec2<bool>(false, arg_0), Struct_1(28598i, vec2<f32>(-1267f, arg_3.x), vec4<u32>(4294967295u, 1u, u_input.b.x, 36855u), vec4<f32>(arg_3.x, 1383f, -1000f, var_0.b.x))).x), 4294967295u), var_0.d);
    let var_2 = !(!vec4<bool>(_wgslsmith_f_op_f32(-var_0.d.x) != -485f, !(arg_0 != arg_0), arg_0, 1i == -u_input.d));
    let var_3 = Struct_1(18010i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1343f, _wgslsmith_f_op_f32(round(927f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.d.xy)) + arg_3.zy)))), var_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.x, 1647f, -1890f, 600f), var_0.d))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2014f, 2772f, var_0.b.x, 161f) - vec4<f32>(var_1.b.x, var_0.b.x, 1457f, -879f)))), var_2)), vec4<f32>(var_1.d.x, -1006f, -1082f, _wgslsmith_f_op_f32(-197f - _wgslsmith_div_f32(313f, -1139f)))));
    var var_4 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(260f - -2316f), var_0.b.x, 353f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-var_3.b.x)), var_1.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2315f, var_1.b.x), var_3.b.x, true)))), var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.c);
    let var_1 = _wgslsmith_add_vec4_i32(select(firstTrailingBit(vec4<i32>(u_input.a.x, 1i, -51400i, -11502i)), vec4<i32>(-1i, 1i, u_input.a.x, u_input.a.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))) ^ vec4<i32>(u_input.d, u_input.a.x, u_input.d, firstTrailingBit(-2147483647i)), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.d, u_input.a.x, u_input.d, 2147483647i)))) & vec4<i32>(_wgslsmith_add_i32(u_input.a.x << (abs(var_0.x) % 32u), u_input.d), ~u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(~u_input.a.x, ~u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(any(func_1(true, vec3<u32>(var_0.x, 0u, var_0.x), Struct_1(var_1.x, vec2<f32>(-411f, -1378f), u_input.c, vec4<f32>(871f, -932f, 523f, -1000f)), Struct_1(2147483647i, vec2<f32>(165f, 672f), u_input.c, vec4<f32>(469f, 567f, 340f, 330f)))), 112830u, var_0.wz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-837f, -220f, 375f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-2005f)), _wgslsmith_f_op_f32(-279f * 1153f), -2340f)), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), true))));
    var var_3 = Struct_1(~16533i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(trunc(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x)))), firstLeadingBit(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.e.x, 0u), vec4<u32>(1u, 27843u, 20422u, 0u)), ~u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1384f, var_2.x, 568f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 151f, var_2.x, var_2.x) * vec4<f32>(var_2.x, var_2.x, var_2.x, -755f))))));
    var var_4 = vec2<u32>(1u, 1u);
    var var_5 = Struct_1(var_3.a, var_2.zy, var_3.c, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_5(all(vec4<bool>(false, false, false, true)) | false, ~4424u, select(u_input.c.zw, vec2<u32>(1u, var_0.x), true) | (var_3.c.xy ^ var_0.yz), _wgslsmith_div_vec3_f32(var_3.d.xzw, var_3.d.yxz))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) - 1f))), -934f, _wgslsmith_f_op_f32(111f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - var_2.x))))));
    var var_6 = Struct_1(~_wgslsmith_mod_i32(-2147483647i >> (func_4(Struct_1(var_3.a, vec2<f32>(1160f, -926f), vec4<u32>(1u, var_3.c.x, 0u, 1u), vec4<f32>(-855f, 2278f, var_5.b.x, var_5.d.x)), -43317i, vec2<bool>(false, true), Struct_1(var_3.a, var_3.b, var_0, var_5.d)).x % 32u), u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.d.zz * var_2.yz))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.d.x - var_2.x), _wgslsmith_div_f32(-309f, 602f)), vec2<f32>(_wgslsmith_f_op_f32(step(103f, 698f)), _wgslsmith_f_op_f32(round(-1138f))))), ~(~select(select(vec4<u32>(0u, var_5.c.x, 4294967295u, 60432u), u_input.c, true), max(vec4<u32>(var_0.x, u_input.c.x, 16083u, 4294967295u), vec4<u32>(var_3.c.x, var_5.c.x, 1u, var_5.c.x)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_3.d), _wgslsmith_f_op_vec4_f32(-var_3.d))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(633f, var_2.x, -291f, var_5.b.x), vec4<f32>(var_5.d.x, var_5.d.x, var_2.x, -1724f), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yz, -vec3<i32>(~(~1i), -countOneBits(u_input.a.x), _wgslsmith_add_i32(1i, -var_1.x)), vec4<u32>(var_6.c.x, max(67366u, 19008u), max(var_0.x | 4294967295u, ~0u), _wgslsmith_sub_u32(reverseBits(var_5.c.x), 1u)), min(_wgslsmith_clamp_vec3_i32(var_1.wwz, var_1.ywy, select(var_1.zzx, vec3<i32>(-2147483647i, -1i, -26587i), vec3<bool>(true, false, false))) << (~(~vec3<u32>(u_input.c.x, 42511u, 63451u)) % vec3<u32>(32u)), ~var_1.xzz), var_6.b.x);
}

