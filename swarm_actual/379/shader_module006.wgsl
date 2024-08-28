struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<bool> {
    return !vec3<bool>(true, false, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)) && !all(vec4<bool>(true, true, true, false)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1124f, -890f) + vec2<f32>(-1388f, -701f)), vec2<f32>(434f, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-310f)), _wgslsmith_f_op_f32(1716f + 166f))), arg_0)), -632f, func_3(), u_input.b.ww, ~2147483647i);
    return ~vec4<u32>(1u, 1u, 1u, 1u) | ~max(vec4<u32>(~1u, ~9721u, ~55245u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(96082u, 0u, 34811u, 4294967295u), true), firstTrailingBit(vec4<u32>(4294967295u, 11402u, 1u, 38100u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> vec2<f32> {
    var var_0 = abs(~(func_2(vec2<bool>(arg_2.x, arg_3), vec3<bool>(arg_2.x, arg_3, false)) << (firstLeadingBit(vec4<u32>(0u, 0u, 44505u, 1u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1359f, _wgslsmith_f_op_f32(450f + -1812f))), 912f)));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>((_wgslsmith_mod_u32(19852u, 4294967295u) << (var_0.x % 32u)) & (func_2(arg_2.yy, vec3<bool>(arg_3, arg_2.x, true)).x << (~1u % 32u)), ~var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.zy, vec2<u32>(var_0.x, 3635u)), select(vec2<u32>(var_0.x, 1u), vec2<u32>(var_0.x, 0u), func_3().x)), 38118u), ~vec4<u32>(1u, var_0.x, countOneBits(var_0.x) >> (49676u % 32u), var_0.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(752f, 1527f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, -1000f) * vec2<f32>(-1033f, 1071f)))))), _wgslsmith_f_op_f32(round(1038f)), select(select(arg_2.yxx, func_3(), func_3()), func_3(), vec3<bool>(arg_2.x, _wgslsmith_mod_i32(arg_1, u_input.a) <= _wgslsmith_mult_i32(u_input.a, u_input.a), (-29564i | arg_1) <= reverseBits(u_input.b.x))), select(-u_input.b.zw, vec2<i32>(1i, 7552i), -1i <= -abs(arg_1)), (~abs(arg_0.x) | u_input.b.x) | -28937i);
    return _wgslsmith_f_op_vec2_f32(var_4.a * var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(713f, 1f) + _wgslsmith_div_vec2_f32(vec2<f32>(-191f, 884f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(382f, -2332f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2059f)))), vec3<bool>(!(all(vec2<bool>(true, true)) || all(vec2<bool>(false, true))), !select(true, true, any(vec4<bool>(false, true, false, true))), true), -(~vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 2147483647i), -56767i)), -3370i);
    let var_1 = 1i;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, var_0.a.x))))), _wgslsmith_f_op_f32(-var_0.a.x), var_0.c, var_0.d, abs(_wgslsmith_mod_i32(reverseBits(var_1), 0i)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_add_vec3_i32(u_input.b.xwy, u_input.b.yxy), -11948i, !(!vec4<bool>(true, false, var_0.c.x, true)), var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -223f), select(select(var_0.c, vec3<bool>(true, true, true), func_3()), func_3(), select(var_0.c, !var_0.c, false)), ~(~vec2<i32>(var_1, var_1) | vec2<i32>(~(-1i), u_input.a)), -(~var_1));
    var var_2 = Struct_1(vec2<f32>(-332f, _wgslsmith_f_op_f32(f32(-1f) * -1259f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + -646f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-144f)))))), select(!vec3<bool>(true, true, 2409f < var_0.a.x), var_0.c, select(func_3(), vec3<bool>(true, !var_0.c.x, true), !var_0.c.x)), -vec2<i32>(var_0.d.x, 0i), _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(u_input.a, u_input.b.x) | var_0.d), -_wgslsmith_mult_vec2_i32(u_input.b.zy, var_0.d)));
    let var_3 = vec4<i32>(var_0.e, ~(~(-(~var_1))), -46060i, i32(-1i) * -32437i);
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -2583f) - vec2<f32>(var_0.b, var_2.a.x)) - var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a, var_2.a, var_2.c.zz)) * var_0.a), false))), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b, var_2.a.x), -534f)))), !select(vec3<bool>(var_2.c.x, all(var_0.c.zz), true), !select(vec3<bool>(false, var_0.c.x, var_2.c.x), vec3<bool>(var_0.c.x, true, var_0.c.x), false), false), var_3.xz, -2656i);
    var var_5 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_4.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a - var_4.a))))), _wgslsmith_f_op_f32(f32(-1f) * -123f), vec3<bool>(all(select(!var_2.c.yx, var_0.c.yx, var_4.c.yy)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * 1067f), _wgslsmith_f_op_f32(var_2.a.x - var_4.b)) >= _wgslsmith_f_op_f32(-var_2.a.x)), var_3.yz, var_3.x);
    var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-2249f)), var_0.a.x) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1779f), _wgslsmith_f_op_vec2_f32(func_1(u_input.b.xzw, u_input.b.x, vec4<bool>(var_2.c.x, var_5.c.x, false, false), true)).x), _wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_5.a.x, var_5.a.x))))))), 1f, vec3<bool>(!var_4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) + _wgslsmith_f_op_f32(min(-1000f, 516f))) == _wgslsmith_f_op_f32(abs(-448f)), !var_0.c.x), ~var_2.d, i32(-1i) * -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_sub_u32(~5535u, ~24785u)), _wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(34270u, 0u, 1u))), vec3<u32>(1u, 1u, 1u)), max(func_2(vec2<bool>(true, var_5.c.x), vec3<bool>(var_5.c.x, false, false)).x, _wgslsmith_mult_u32(32796u, 0u)) << (21417u % 32u)), ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(66826u, 39505u), vec2<u32>(29499u, 10009u), vec2<u32>(107410u, 5582u)))), select(var_5.d, _wgslsmith_clamp_vec2_i32(var_2.d | firstLeadingBit(var_4.d), -vec2<i32>(20768i, -1i), -var_4.d), !func_3().xy));
}

